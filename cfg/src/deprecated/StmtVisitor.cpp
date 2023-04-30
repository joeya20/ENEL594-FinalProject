#include "StmtVisitor.hpp"

StmtVisitor::StmtVisitor(
    std::array<std::unordered_map<const ast::Symbol*, std::unordered_set<std::shared_ptr<CfgNode>>>, 3>& symTabs,
    std::vector<std::shared_ptr<CfgNode>>& procRoots
    ) : symTabs(symTabs), procRoots(procRoots) {
    symTabIndex = 0;
    namedValVisitor = std::make_shared<NamedValueVisitor>(symTabs, procRoots, res, symTabIndex);
}

// TODO: update to store the expression itself not a string
void mergeConds(std::vector<std::string>& res, std::vector<std::vector<std::string>> condsStack) {
    for(auto & conds : condsStack) {
        res.insert(res.end(), conds.begin(), conds.end());
    }
}

// gets namedValues from LHS and RHS of assignments
void StmtVisitor::handle(const ast::AssignmentExpression& assignExpr) {
    if(lastNode->kind == CfgNode::Kind::basicBlock) {
        symTabIndex = 0;
        std::cout << assignExpr.right().kind << std::endl;
        assignExpr.right().visit(*namedValVisitor);
        symTabIndex = 1;
        assignExpr.left().visit(*namedValVisitor);
        // update global set of definitions
        procRoots.back()->varDefs[res].insert(&assignExpr);
        // record conditions of the assignment; COPY assignment so not super inefficient
        mergeConds(procRoots.back()->varDefconds[&assignExpr], assignmentCondsStack);
        // update gen set of basic block
        // lastNode->dataflowSets[0][res].insert(&assignExpr);
    }
    else {
        std::cerr << "invalid last node for assignment expression" << std::endl;
    }
}

void StmtVisitor::handle(const ast::ConditionalStatement& condStmt) {
    // add edge from previous last node to conditional node
    auto condNode = lastNode->addEdge(&condStmt);
    //create "end" node that will join all branches
    auto endNode = std::make_shared<CfgNode>(CfgNode::Kind::condEnd);
    // create new entry of assignmentConditions
    assignmentCondsStack.emplace_back();
    auto& assignmentConds = assignmentCondsStack.back();
    // extract identifiers from condition expressions
    for(auto & cond : condStmt.conditions) {
        symTabIndex = 0;
        cond.expr->visit(*namedValVisitor);
        auto cleanCond = "(" + boost::trim_copy(cond.expr->syntax->toString()) + ") == 1";
        // add every expression in the condition to the assignment conditions set
        assignmentConds.push_back(cleanCond);
    }
    //update last node
    lastNode = condNode;
    //do cfg construction for mandatory true branch
    condStmt.ifTrue.visit(*this);
    lastNode->addEdge(endNode);

    //update last node
    lastNode = condNode;
    //do cfg construction for false branch if it exists
    //else create edge directly to endNode
    if(condStmt.ifFalse != nullptr) {
        for(auto & cond : assignmentConds) {
            cond.replace(cond.end()-1, cond.end(), "0");
        }
        condStmt.ifFalse->visit(*this);
    }
    // remove conditions from stack
    assignmentCondsStack.pop_back();

    lastNode->addEdge(endNode);

    // update last node to be the end of this conditional
    lastNode = endNode;
}

void StmtVisitor::handle(const ast::CaseStatement& caseStmt) {
    // add edge from previous last node to case node
    auto caseNode = lastNode->addEdge(&caseStmt);
    //create end node that all branches will converge to
    auto endNode = std::make_shared<CfgNode>(CfgNode::Kind::condEnd);

    // update read table
    symTabIndex = 0;
    caseStmt.expr.visit(*namedValVisitor);
    std::string caseExpr;
    if(caseStmt.expr.syntax != nullptr) {
        caseExpr = boost::trim_copy(caseStmt.expr.syntax->toString());
    }
    // add each branch to CFG
    for(auto & itemGroup : caseStmt.items) {
        //update last node
        lastNode = caseNode;
        // update condition stack
        if(caseStmt.expr.syntax != nullptr) {
            assignmentCondsStack.emplace_back();
            auto& assignmentConds = assignmentCondsStack.back();
            auto exprTemplate = "(" + caseExpr + " == {}) &&";
            std::string completeExpr;
            for(auto & expr : itemGroup.expressions) {
                completeExpr += fmt::format(exprTemplate, boost::trim_copy(expr->syntax->toString()));
            }
            completeExpr.pop_back(); completeExpr.pop_back();   // remove last two && characters
            assignmentConds.push_back(completeExpr);
        }
        //do cfg construction for mandatory true branch
        itemGroup.stmt->visit(*this);
        lastNode->addEdge(endNode);
        if(caseStmt.expr.syntax != nullptr) {
            assignmentCondsStack.pop_back();
        }
    }
    //update last node
    lastNode = caseNode;
    // handle optional default branch
    if(caseStmt.defaultCase != nullptr) {
        assignmentCondsStack.emplace_back();
        assignmentCondsStack.back().push_back("default case");
        //do cfg construction for mandatory true branch
        caseStmt.defaultCase->visit(*this);
        assignmentCondsStack.pop_back();
    }
    lastNode->addEdge(endNode);

    // update last node to be the end of this conditional
    lastNode = endNode;
}

void StmtVisitor::handle(const ast::ExpressionStatement& exprStmt) {
    // add expr to basic block node
    if(lastNode->kind == CfgNode::Kind::basicBlock) {
        lastNode->exprs.push_back(&exprStmt.expr);
    }
    // construct basic block, add edge, and update last node
    else {
        auto basicBlockNode = std::make_shared<CfgNode>(CfgNode::Kind::basicBlock);
        basicBlockNode->exprs.push_back(&exprStmt.expr);
        lastNode->addEdge(basicBlockNode);
        lastNode = basicBlockNode;
    }
    visitDefault(exprStmt);
}

// void handle(const ast::EmptyStatement& emptyStmt) {
//     // add expr to basic block node
//     if(lastNode->kind == CfgNode::Kind::basicBlock) {
//         // lastNode->exprs.push_back(emptyStmt);
//     }
//     // construct basic block, add edge, and update last node
//     else {
//         auto basicBlockNode = std::make_shared<CfgNode>(CfgNode::Kind::basicBlock);
//         // basicBlockNode->exprs.push_back(&exprStmt.expr);
//         lastNode->addEdge(basicBlockNode);
//         lastNode = basicBlockNode;
//     }
// }