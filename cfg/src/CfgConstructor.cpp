#include "CfgConstructor.hpp"
#include "boost/algorithm/string.hpp"
#include "slang/syntax/AllSyntax.h"
#include <slang/ast/expressions/AssignmentExpressions.h>

CfgConstructor::CfgConstructor(
    std::vector<const ast::Symbol*>& inputPorts,
    std::vector<const ast::Symbol*>& outputPorts,
    std::unordered_map<
        const ast::Symbol*,
        std::unordered_set<std::shared_ptr<CfgNode>>
    >& readSymbolTable,
    std::unordered_map<
        const ast::Symbol*,
        std::unordered_set<std::shared_ptr<CfgNode>>
    >& writeSymbolTable,
    std::unordered_map<
        const ast::Symbol*, 
        std::unordered_set<std::shared_ptr<CfgNode>>
    >& sensSymbolTable,
    std::vector<std::shared_ptr<CfgNode>>& procRoots
):
    inputPorts(inputPorts),
    outputPorts(outputPorts),
    readSymbolTable(readSymbolTable),
    writeSymbolTable(writeSymbolTable),
    sensSymbolTable(sensSymbolTable),
    procRoots(procRoots) 
    {}

// TODO: update to store the expression itself, not a string
std::vector<std::string> CfgConstructor::mergeConds() {
    std::vector<std::string> res;
    for(auto & conds : assignmentCondsStack) {
        res.insert(res.end(), conds.begin(), conds.end());
    }
    return res;
}

void CfgConstructor::addEventToProcSens(const ast::SignalEventControl& event, std::shared_ptr<CfgNode> node) {
    symTabIndex = 2;
    event.visit(*this);
}

void CfgConstructor::handle(const ast::UninstantiatedDefSymbol& unInstSymbol) {
    auto modInstNode = std::make_shared<CfgNode>(CfgNode::Kind::modInst);
    procRoots.push_back(modInstNode);
    for(auto & portConnection : unInstSymbol.getPortConnections()) {        
        symTabIndex = 3;
        portConnection->as_if<SimpleAssertionExpr>()->expr.visit(*this);
        symTabIndex = 4;
        portConnection->as_if<SimpleAssertionExpr>()->expr.visit(*this);
    }
}

// handle module instantiation
void CfgConstructor::handle(const ast::InstanceSymbol& instSymbol) {
    if(instSymbol.isModule()) {
        auto modInstNode = std::make_shared<CfgNode>(CfgNode::Kind::modInst);
        if(instSymbol.getPortConnections().size() == 0) {
            visitDefault(instSymbol);
        }
        else {
            procRoots.push_back(modInstNode);
            for(auto & connection : instSymbol.getPortConnections()) {
                auto portSymbol = connection->port.as_if<PortSymbol>();
                if(portSymbol != nullptr) {
                    if(portSymbol->direction == ArgumentDirection::In) {
                        // visit expr
                        symTabIndex = 3;
                        connection->getExpression()->visit(*this);
                    }
                    else if(portSymbol->direction == ArgumentDirection::Out) {
                        // visit expr
                        symTabIndex = 4;
                        connection->getExpression()->as_if<AssignmentExpression>()->left().visit(*this);
                    }
                    // likely an interface
                    else {
                        std::cerr << fmt::format("Unknown port direction in type - name: {}\n", instSymbol.name);
                    }
                }
                else {
                    std::cerr << fmt::format("Unknown connection type for instance {}", instSymbol.name) << "type: " << connection->port.kind;
                }
            }
        }
    }
    else {
        std::cerr << fmt::format("Unknown instance type - name: {}\n", instSymbol.name);
    }
}

// extract ports for module
void CfgConstructor::handle(const ast::PortSymbol& portSymbol) {
    if(portSymbol.direction == ast::ArgumentDirection::In) {
        if(portSymbol.internalSymbol != nullptr) {
            inputPorts.push_back(portSymbol.internalSymbol);
        }
    }
    else if (portSymbol.direction == ast::ArgumentDirection::Out) {
        if(portSymbol.internalSymbol != nullptr) {
            outputPorts.push_back(portSymbol.internalSymbol);
        }
    }
    else {
        std::cerr << fmt::format("Unknown port direction - Port name: {}, direction: ", portSymbol.name) << portSymbol.direction << "\n";
    }
}

void CfgConstructor::handle(const ast::ContinuousAssignSymbol& contAssignStmt) {
    // first, create all the cfg nodes needed
    std::shared_ptr<CfgNode> procStart = std::make_shared<CfgNode>(CfgNode::Kind::procStart);
    std::shared_ptr<CfgNode> basicBlock = std::make_shared<CfgNode>(CfgNode::Kind::basicBlock);
    std::shared_ptr<CfgNode> procEnd = std::make_shared<CfgNode>(CfgNode::Kind::procEnd);

    // then, add add edges, etc.
    procRoots.push_back(procStart);
    procStart->addEdge(basicBlock);
    basicBlock->addEdge(procEnd);
    procRoots.back()->end = procEnd;
    // control goes back to the start of the procBlock at the end
    procEnd->addEdge(procStart, false);

    // populate read/write symbol table
    lastNode = basicBlock;
    contAssignStmt.getAssignment().visit(*this);
    lastNode->addEdge(procEnd);

    // copy read symbol table to sens list symbol table
    for(auto & readSymbol : procStart->readSymbols) {
        procStart->sensList.insert(readSymbol);
        this->sensSymbolTable[readSymbol].insert(procStart);
    }
}

void CfgConstructor::handle(const ast::ProceduralBlockSymbol& procBlock) {
    // a timed block is one with an explicit sensitivity list (i.e always, always_ff)
    // a block is one with no sensitivity list (i.e., always_comb)
    if(procBlock.getBody().kind == ast::StatementKind::Timed ||
    procBlock.getBody().kind == ast::StatementKind::Block) {
        //create root node and add to CFG
        std::shared_ptr procStart = std::make_shared<CfgNode>(&(procBlock.getBody()));
        std::shared_ptr<CfgNode> procEnd = std::make_shared<CfgNode>(CfgNode::Kind::procEnd);
        procStart->end = procEnd;
        procEnd->addEdge(procStart, false);
        procRoots.push_back(procStart);
        lastNode = procStart;
        bool implicitSens = false;

        if(procBlock.getBody().kind == ast::StatementKind::Timed) {
            // add sens list to root node
            if(procBlock.getBody().as<ast::TimedStatement>().timing.kind == ast::TimingControlKind::EventList) {
                for (const ast::TimingControl *event : procBlock.getBody().as<ast::TimedStatement>().timing.as<ast::EventListControl>().events) {
                    if(event->kind == ast::TimingControlKind::SignalEvent) {
                        addEventToProcSens(event->as<ast::SignalEventControl>(), procStart);
                    }
                    else {
                        std::cerr << "Error: unknown TimingControl kind: " << procBlock.getBody().as<ast::TimedStatement>().timing.kind << std::endl; 
                    }
                }
            }
            else if(procBlock.getBody().as<ast::TimedStatement>().timing.kind == ast::TimingControlKind::SignalEvent) {
                addEventToProcSens(procBlock.getBody().as<ast::TimedStatement>().timing.as<ast::SignalEventControl>(), procStart);
            }
            // implicit events (e.g.  "@ *") get handled later
            else if(procBlock.getBody().as<ast::TimedStatement>().timing.kind == ast::TimingControlKind::ImplicitEvent) {
                implicitSens = true;
            }
            else {                    
                std::cerr << "Error: unknown TimingControl kind: " << procBlock.getBody().as<ast::TimedStatement>().timing.kind  << std::endl; 
            }
        }
        else {
            // implicit sens gets handled later; e.g. always_comb
            implicitSens = true;
        }

        // do CFG construction
        visitDefault(procBlock);
        
        //add edge to end node
        lastNode->addEdge(procEnd);

        // handle implicit sens list from list of read variables
        if(implicitSens) {
            // copy read symbol table to sens list symbol table
            for(auto & readSymbol : procStart->readSymbols) {
                procStart->sensList.insert(readSymbol);
                this->sensSymbolTable[readSymbol].insert(procStart);
            }
        }
    }
    else {
        std::cerr 
            << fmt::format("Unknown procBlockKind - {}, kind: \n", procBlock.getSyntax()->toString()) 
            << procBlock.kind << "\n";
    }
}

void CfgConstructor::handle(const ast::ConditionalStatement& condStmt) {
    auto condStart = lastNode->addEdge(&condStmt);
    auto condEnd = std::make_shared<CfgNode>(CfgNode::Kind::condEnd);
    condStart->end = condEnd;

    // create new entry of assignmentConditions
    assignmentCondsStack.emplace_back();
    auto& assignmentConds = assignmentCondsStack.back();

    // extract identifiers from condition expressions
    for(auto & cond : condStmt.conditions) {
        symTabIndex = 0;
        cond.expr->visit(*this);
        auto cleanCond = "(" + boost::trim_copy(cond.expr->syntax->toString()) + ") == 1";
        // add every expression in the condition to the assignment conditions set
        assignmentConds.push_back(cleanCond);
    }

    //update last node
    lastNode = condStart;
    //do cfg construction for mandatory true branch
    condStmt.ifTrue.visit(*this);
    lastNode->addEdge(condEnd);

    //do cfg construction for false branch if it exists
    //else create edge directly to endNode
    if(condStmt.ifFalse != nullptr) {
        //update last node
        lastNode = condStart;
        for(auto & cond : assignmentConds) {
            cond.replace(cond.end()-1, cond.end(), "0");
        }
        condStmt.ifFalse->visit(*this);
        lastNode->addEdge(condEnd);
    }
    else {
        condStart->addEdge(condEnd);
    }
    // cleanup
    assignmentCondsStack.pop_back();
    lastNode = condEnd;
}

void CfgConstructor::handle(const ast::CaseStatement& caseStmt) {
    // add edge from previous last node to case node
    auto caseStart = lastNode->addEdge(&caseStmt);
    //create end node that all branches will converge to
    auto caseEnd = std::make_shared<CfgNode>(CfgNode::Kind::condEnd);

    // update read table
    symTabIndex = 0;
    caseStmt.expr.visit(*this);
    std::string caseExpr;
    if(caseStmt.expr.syntax != nullptr) {
        caseExpr = boost::trim_copy(caseStmt.expr.syntax->toString());
    }
    // add each branch to CFG
    for(auto & itemGroup : caseStmt.items) {
        //update last node
        lastNode = caseStart;
        // update condition stack
        if(caseStmt.expr.syntax != nullptr) {
            assignmentCondsStack.emplace_back();
            auto& assignmentConds = assignmentCondsStack.back();
            auto exprTemplate = "(" + caseExpr + " == {}) &&";
            std::string completeExpr;
            for(auto & expr : itemGroup.expressions) {
                if(expr->syntax != nullptr)
                    completeExpr += fmt::format(exprTemplate, boost::trim_copy(expr->syntax->toString()));
            }
            if(completeExpr.size() > 2) {
                completeExpr.pop_back(); completeExpr.pop_back();   // remove last two && characters
                assignmentConds.push_back(completeExpr);
            }
        }
        itemGroup.stmt->visit(*this);
        lastNode->addEdge(caseEnd);
        if(caseStmt.expr.syntax != nullptr) {
            assignmentCondsStack.pop_back();
        }
    }
    //update last node
    lastNode = caseStart;
    // handle optional default branch
    if(caseStmt.defaultCase != nullptr) {
        assignmentCondsStack.emplace_back();
        assignmentCondsStack.back().push_back("default case");
        //do cfg construction for mandatory true branch
        caseStmt.defaultCase->visit(*this);
        assignmentCondsStack.pop_back();
    }
    lastNode->addEdge(caseEnd);

    // update last node to be the end of this conditional
    lastNode = caseEnd;
}

// this may not be necessary since an emtpy statement is semantically equivalent to no basic block
void CfgConstructor::handle(const ast::EmptyStatement& emptyStmt) {
    if(lastNode->kind != CfgNode::Kind::basicBlock) {
        auto basicBlockNode = std::make_shared<CfgNode>(CfgNode::Kind::basicBlock);
        lastNode->addEdge(basicBlockNode);
        lastNode = basicBlockNode;
    }
}

// // gets namedValues from LHS and RHS of assignments
void CfgConstructor::handle(const ast::AssignmentExpression& assignExpr) {
    // construct basic block if needed
    if(lastNode->kind != CfgNode::Kind::basicBlock) {
        auto basicBlockNode = std::make_shared<CfgNode>(CfgNode::Kind::basicBlock);
        lastNode->addEdge(basicBlockNode);
        lastNode = basicBlockNode;
    }
    // these should be empty at this point and get populated as we traverse the lhs and rhs
    // assert(assignmentLhs.empty());
    // assert(assignmentRhs.empty());

    // keep track of this assignment expression
    lastNode->assignmentsInBasicBlock.push_back(&assignExpr);

    // the order is important if we encounter conditionalOp expressions later
    symTabIndex = 1;
    assignExpr.left().visit(*this);
    symTabIndex = 0;
    assignExpr.right().visit(*this);

    // its slightly more complicated if the rhs is a cond op and handled downstream
    // TODO: this is fragile, try to do better
    if(lastNode->kind == CfgNode::Kind::basicBlock) {
        for(auto & lhs : assignmentLhs) {
            auto conds = mergeConds();
            procRoots.back()->varDefs[lhs][&assignExpr.right()].insert(procRoots.back()->varDefs[lhs][&assignExpr.right()].end(), conds.begin(), conds.end());
            lastNode->varDefs[lhs][&assignExpr.right()].insert(lastNode->varDefs[lhs][&assignExpr.right()].end(), conds.begin(), conds.end());

            // this will help build up the global set of definitions later
            auto definition = std::pair{lhs, &assignExpr.right()};
            lastNode->definitions.push_back(definition);

            // partially generating kill set
            for(auto & gen : lastNode->genSet[lhs]) {
                lastNode->killSet[lhs].push_back(gen);
            }
            // generating gen set
            lastNode->genSet[lhs].push_back(&assignExpr.right());
        }
    }
    assignmentLhs.clear();
    assignmentRhs.clear();
}

void CfgConstructor::handle(const ast::ConditionalExpression& condExpr) {
    // start and end node for conditional
    auto condStart = std::make_shared<CfgNode>(CfgNode::Kind::condStart);
    auto condEnd = std::make_shared<CfgNode>(CfgNode::Kind::condEnd);
    std::shared_ptr<CfgNode> left = std::make_shared<CfgNode>(CfgNode::Kind::basicBlock);
    std::shared_ptr<CfgNode> right = std::make_shared<CfgNode>(CfgNode::Kind::basicBlock);

    condStart->end = condEnd;
    
    for(auto assignExpr : lastNode->assignmentsInBasicBlock) {
        left->assignmentsInBasicBlock.push_back(assignExpr);
        right->assignmentsInBasicBlock.push_back(assignExpr);
    }

    // if the last node was not a basic block we just continue as usual
    if(lastNode->kind != CfgNode::Kind::basicBlock || lastNode->varDefs.size() > 0) {
        // add edge from previous last node to new conditional node
        lastNode->addEdge(condStart);
        lastNode = condStart;
    }
    // if it was a basic block, we need to add insert the condStart node before it
    // and delete it
    else {
        for(auto & pred : lastNode->predecessors) {
            // add new edge to condStart node
            pred->addEdge(condStart);
            // erase existing edges
            pred->successors.erase(lastNode);
        }
        lastNode->predecessors.clear();
        lastNode = condStart;
    }

    // at this point, we can assume that any re-structuring necessary has been done
    condStart->addEdge(left);
    condStart->addEdge(right);
    // add conditions to condition stack
    assignmentCondsStack.emplace_back();
    auto& assignmentConds = assignmentCondsStack.back();

    // update the read table for all of these
    symTabIndex = 0;
    assert(lastNode->kind != CfgNode::Kind::basicBlock);
    // extract identifiers from condition expressions
    for(auto & cond : condExpr.conditions) {
        cond.expr->visit(*this);
        auto cleanCond = "(" + boost::trim_copy(cond.expr->syntax->toString()) + ") == 1";
        // add every expression in the condition to the assignment conditions set
        assignmentConds.push_back(cleanCond);
    }
    // visit the true expr
    lastNode = left;
    condExpr.left().visit(*this);
    lastNode->addEdge(condEnd);
    if(condExpr.left().kind != ast::ExpressionKind::ConditionalOp) {
        for(auto & lhs : assignmentLhs) {
            auto conds = mergeConds();
            procRoots.back()->varDefs[lhs][&condExpr.left()].insert(procRoots.back()->varDefs[lhs][&condExpr.left()].end(), conds.begin(), conds.end());
            lastNode->varDefs[lhs][&condExpr.left()].insert(lastNode->varDefs[lhs][&condExpr.left()].end(), conds.begin(), conds.end());

            auto definition = std::pair{lhs, &condExpr.left()};
            lastNode->definitions.push_back(definition);
            for(auto & gen : lastNode->genSet[lhs]) {
                lastNode->killSet[lhs].push_back(gen);
            }
            lastNode->genSet[lhs].push_back(&condExpr.left());
        }
    }
    // flip the conditions
    for(auto & cond : assignmentConds) {
        cond.replace(cond.end()-1, cond.end(), "0");
    }
    // visit the false expr
    lastNode = right;
    condExpr.right().visit(*this);
    if(condExpr.right().kind != ast::ExpressionKind::ConditionalOp) {
        for(auto & lhs : assignmentLhs) {
            auto conds = mergeConds();
            procRoots.back()->varDefs[lhs][&condExpr.right()].insert(procRoots.back()->varDefs[lhs][&condExpr.right()].end(), conds.begin(), conds.end());
            lastNode->varDefs[lhs][&condExpr.right()].insert(lastNode->varDefs[lhs][&condExpr.right()].end(), conds.begin(), conds.end());

            auto definition = std::pair{lhs, &condExpr.right()};
            lastNode->definitions.push_back(definition);
            for(auto & gen : lastNode->genSet[lhs]) {
                lastNode->killSet[lhs].push_back(gen);
            }
            lastNode->genSet[lhs].push_back(&condExpr.right());
        }
    }
    // clean up
    lastNode->addEdge(condEnd);
    lastNode = condEnd;
    assignmentCondsStack.pop_back();
}

void CfgConstructor::handle(const ast::NamedValueExpression& namedValExpr) {
    if(namedValExpr.symbol.kind == ast::SymbolKind::Variable ||
    namedValExpr.symbol.kind == ast::SymbolKind::Net) {
        if(symTabIndex == 0) {
            auto test = procRoots.back();
            readSymbolTable[&(namedValExpr.symbol)].insert(procRoots.back());
            procRoots.back()->readSymbols.insert(&(namedValExpr.symbol));
            if(lastNode->kind == CfgNode::Kind::basicBlock) {
                assignmentRhs.push_back(&namedValExpr);
            }
        }
        else if (symTabIndex == 1){
            writeSymbolTable[&(namedValExpr.symbol)].insert(procRoots.back());
            procRoots.back()->writtenSymbols.insert(&(namedValExpr.symbol));
            if(lastNode->kind == CfgNode::Kind::basicBlock) {
                assignmentLhs.push_back(&namedValExpr.symbol);
            }
        }
        else if(symTabIndex == 2){
            sensSymbolTable[&(namedValExpr.symbol)].insert(procRoots.back());
            procRoots.back()->sensList.insert(&(namedValExpr.symbol));
        }
        // input port for modInstance
        else if(symTabIndex == 3){
            readSymbolTable[&(namedValExpr.symbol)].insert(procRoots.back());
            procRoots.back()->sensList.insert(&(namedValExpr.symbol));
            procRoots.back()->readSymbols.insert(&(namedValExpr.symbol));
        }
        // output port for modInstance
        else if(symTabIndex == 4){
            writeSymbolTable[&(namedValExpr.symbol)].insert(procRoots.back());
            procRoots.back()->writtenSymbols.insert(&(namedValExpr.symbol));
        }
        else {
            // this should never happen
            throw std::exception();
        }
    }
    else {
        std::cerr
            << fmt::format("Unknown named value symbol kind {}, kind: ", namedValExpr.syntax->toString()) 
            << namedValExpr.symbol.kind << "\n";
    }
}