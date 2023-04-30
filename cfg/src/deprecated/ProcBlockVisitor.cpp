#include "ProcBlockVisitor.hpp"

ProcBlockVisitor::ProcBlockVisitor(
    std::vector<const ast::Symbol*>& inputPorts,
    std::vector<const ast::Symbol*>& outputPorts,
    std::array<std::unordered_map<const ast::Symbol*, std::unordered_set<std::shared_ptr<CfgNode>>>, 3>& symTabs,
    std::vector<std::shared_ptr<CfgNode>>& procRoots
    ) : inputPorts(inputPorts), outputPorts(outputPorts), symTabs(symTabs), procRoots(procRoots) {
        stmtVisitor = std::make_shared<StmtVisitor>(symTabs, procRoots);
}

// extract ports for module
void ProcBlockVisitor::handle(const ast::PortSymbol& portSymbol) {
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
    visitDefault(portSymbol);
}

void ProcBlockVisitor::addEventToBlock(const ast::SignalEventControl& event, std::shared_ptr<CfgNode> node) {
    int index = 2;
    const ast::Symbol *res;
    NamedValueVisitor namedValueVisitor(symTabs, procRoots, res, index);
    event.visit(namedValueVisitor);
}

// handler for continuous assign statements
// treat as processes with a 1 stmt basicblock
// TODO: add stmt/expr to basic block node
void ProcBlockVisitor::handle(const ast::ContinuousAssignSymbol& contAssignStmt) {
    std::shared_ptr<CfgNode> root = std::make_shared<CfgNode>(CfgNode::Kind::procStart);
    std::shared_ptr<CfgNode> basicBlock = std::make_shared<CfgNode>(CfgNode::Kind::basicBlock);
    std::shared_ptr<CfgNode> procEnd = std::make_shared<CfgNode>(CfgNode::Kind::procEnd);        
    procRoots.push_back(root);
    root->addEdge(basicBlock);
    basicBlock->addEdge(procEnd);
    procRoots.back()->end = procEnd;
    // control goes back to the start of the procBlock at the end
    procEnd->addEdge(root, false);
    // populate read/write symbol table
    stmtVisitor->lastNode = basicBlock;
    contAssignStmt.getAssignment().visit(*stmtVisitor);
    // copy read symbol table to sens list
    root->sensList = root->readVars;
    for(auto & sens : root->sensList) {
        symTabs[2][sens].insert(root);
    }
}

// main handler to kickstart CFG construction for each process
void ProcBlockVisitor::handle(const ast::ProceduralBlockSymbol& procBlock) {
    // a timed block is one with an explicit sensitivity list (i.e always, always_ff)
    // a block is one with no sensitivity list (i.e., always_comb)
    if(procBlock.getBody().kind == ast::StatementKind::Timed ||
    procBlock.getBody().kind == ast::StatementKind::Block) {
        //create root node and add to CFG
        std::shared_ptr root = std::make_shared<CfgNode>(&(procBlock.getBody()));
        procRoots.push_back(root);
        stmtVisitor->lastNode = root;
        bool implicitSens = false;

        if(procBlock.getBody().kind == ast::StatementKind::Timed) {
            // add sens list to root node
            if(procBlock.getBody().as<ast::TimedStatement>().timing.kind == ast::TimingControlKind::EventList) {
                for (const ast::TimingControl *event : procBlock.getBody().as<ast::TimedStatement>().timing.as<ast::EventListControl>().events) {
                    if(event->kind == ast::TimingControlKind::SignalEvent) {
                        addEventToBlock(event->as<ast::SignalEventControl>(), root);
                    }
                    else {
                        std::cerr << "Error: unknown TimingControl kind: " << procBlock.getBody().as<ast::TimedStatement>().timing.kind << std::endl; 
                    }
                }
            }
            else if(procBlock.getBody().as<ast::TimedStatement>().timing.kind == ast::TimingControlKind::SignalEvent) {
                addEventToBlock(procBlock.getBody().as<ast::TimedStatement>().timing.as<ast::SignalEventControl>(), root);
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
        procBlock.visit(*stmtVisitor);
        // handle implicit sens list from list of read variables
        if(implicitSens) {
            // copy assignment (I think)
            procRoots.back()->sensList = procRoots.back()->readVars;
            for(auto & sens : root->sensList) {
                symTabs[2][sens].insert(root);
            }
        }
        //add end node
        std::shared_ptr<CfgNode> procEnd = std::make_shared<CfgNode>(CfgNode::Kind::procEnd);
        stmtVisitor->lastNode->addEdge(procEnd);
        procRoots.back()->end = procEnd;
        // treat like a loop
        // control goes back to the start of the procBlock at the end
        procEnd->addEdge(root, false);
    }
    else {
        std::cerr << "Error: unknown procBlock Body kind: " << procBlock.getBody().kind << std::endl; 
    }
    visitDefault(procBlock);
}

/************************* Deprecated *******************************/

// // creates the cfg by traversing downwards to stmts
// // ignores blocks and lists
// std::shared_ptr<CfgNode> addToCfg(std::shared_ptr<CfgNode> curr, std::shared_ptr<CfgNode> next) {
//     if(next->stmt->kind == ast::StatementKind::Block) {
//         std::shared_ptr<CfgNode> body = std::make_shared<CfgNode>(&(next->stmt->as<ast::BlockStatement>().body));
//         return addToCfg(curr, body);
//     }
//     else if(next->stmt->kind == ast::StatementKind::List) {
//         std::shared_ptr<CfgNode> node = std::make_shared<CfgNode>(next->stmt->as<ast::StatementList>().list[0]);
//         auto terminalStmtNode = addToCfg(curr, node);

//         for(size_t i = 1; i < next->stmt->as<ast::StatementList>().list.size(); i++) {
//             std::shared_ptr<CfgNode> nextNode = std::make_shared<CfgNode>(next->stmt->as<ast::StatementList>().list[i]);
//             terminalStmtNode = addToCfg(terminalStmtNode, nextNode);
//         }
//         return terminalStmtNode;
//     }
//     else if(next->stmt->kind == ast::StatementKind::ExpressionStatement || 
//         next->stmt->kind == ast::StatementKind::Empty) {
//         curr->addEdge(next);
//         return next;
//     }
//     else if(next->stmt->kind == ast::StatementKind::Conditional) {
//         //create end node that all branches will converge to
//         auto endStmt = std::make_shared<CfgNode>(CfgNode::Kind::condEnd);

//         //add conditional node to CFG
//         curr->addEdge(next);

//         //add mandatory if True branch to CFG
//         std::shared_ptr<CfgNode> ifTrue = std::make_shared<CfgNode>(&(next->stmt->as<ast::ConditionalStatement>().ifTrue));
//         auto ifTrueTerminalStmt = addToCfg(next, ifTrue);
//         ifTrueTerminalStmt->addEdge(endStmt);

//         // handle optional else branch
//         if(next->stmt->as<ast::ConditionalStatement>().ifFalse != nullptr) {
//             std::shared_ptr<CfgNode> ifFalse = std::make_shared<CfgNode>(next->stmt->as<ast::ConditionalStatement>().ifFalse);
//             auto ifFalseTerminalStmt = addToCfg(next, ifFalse);
//             ifFalseTerminalStmt->addEdge(endStmt);
//         }
//         // or add direct edge from conditional to end stmt
//         else {
//             next->addEdge(endStmt);
//         }
//         return endStmt;
//     }
//     else if(next->stmt->kind == ast::StatementKind::Case) {
//         //create end node that all branches will converge to
//         auto endStmt = std::make_shared<CfgNode>(CfgNode::Kind::condEnd);
        
//         // add case node to CFG
//         curr->addEdge(next);

//         // add each branch to CFG
//         for(auto & itemGroup : next->stmt->as<ast::CaseStatement>().items) {
//             std::shared_ptr<CfgNode> item = std::make_shared<CfgNode>(itemGroup.stmt);
//             auto itemTerminalStmt = addToCfg(next, item);
//             itemTerminalStmt->addEdge(endStmt);
//         }
//         // handle optional default branch
//         if(next->stmt->as<ast::CaseStatement>().defaultCase != nullptr) {
//             std::shared_ptr<CfgNode> defaultStmt = std::make_shared<CfgNode>(next->stmt->as<ast::CaseStatement>().defaultCase);
//             auto defaultTerminalStmt = addToCfg(next, defaultStmt);
//             defaultTerminalStmt->addEdge(endStmt);
//         }
//         // else add direct branch from conditional to end stmt
//         else {
//             next->addEdge(endStmt);
//         }
//         return endStmt;
//     }
//     else {
//         throw std::invalid_argument(fmt::format("Invalid statement kind in addToCfg: {}.", next->stmt->syntax->toString()));
//     }
// }

// recursive function to add stmts to CFG
// is it better to do that later when constructing DFG?
// void addToCfg(std::shared_ptr<CfgNode> currStmt, std::shared_ptr<CfgNode> nextStmt) {
//     if(nextStmt->stmt->kind == ast::StatementKind::Block) {
//         std::shared_ptr<CfgNode> next = make_shared<CfgNode>(&(nextStmt->as<ast::BlockStatement>().body));
//         addToCfg(currStmt, next);
//     }
//     else if(nextStmt->kind == ast::StatementKind::List) {
//         addToCfg(currStmt, nextStmt->as<ast::StatementList>().list[0]);

//         for(size_t i = 0; i < nextStmt->as<ast::StatementList>().list.size()-1; i++) {
//             if(nextStmt->as<ast::StatementList>().list[i]->kind == ast::StatementKind::Conditional) {
//                 addToCfg(
//                     getTerminal(
//                         &(nextStmt->as<ast::StatementList>().list[i]
//                         ->as<ast::ConditionalStatement>().ifTrue)
//                     ),
//                     nextStmt->as<ast::StatementList>().list[i+1]
//                 );
                    
//                 if(nextStmt->as<ast::StatementList>().list[i]->as<ast::ConditionalStatement>().ifFalse != nullptr) {
//                     addToCfg(
//                         getTerminal(
//                             nextStmt->as<ast::StatementList>().list[i]
//                             ->as<ast::ConditionalStatement>().ifFalse
//                         ), 
//                         nextStmt->as<ast::StatementList>().list[i+1]
//                     );
//                 }
//             }
//             else if(nextStmt->as<ast::StatementList>().list[i]->kind == ast::StatementKind::Case) {                    
//                 for(auto & itemGroup : nextStmt->as<ast::StatementList>().list[i]->as<ast::CaseStatement>().items) {
//                     addToCfg(
//                         getTerminal(itemGroup.stmt), 
//                         nextStmt->as<ast::StatementList>().list[i+1]
//                     );
//                 }
//                 if(nextStmt->as<ast::StatementList>().list[i]->as<ast::CaseStatement>().defaultCase != nullptr) {
//                     addToCfg(
//                         getTerminal(
//                             nextStmt->as<ast::StatementList>().list[i]
//                             ->as<ast::CaseStatement>().defaultCase
//                         ),
//                         nextStmt->as<ast::StatementList>().list[i+1]
//                     );
//                 }
//             }
//             else {
//                 addToCfg(nextStmt->as<ast::StatementList>().list[i], nextStmt->as<ast::StatementList>().list[i+1]);
//             }
//         }
//     }
//     else if(nextStmt->kind == ast::StatementKind::Conditional) {
//         // add conditional and mandatory if branch
//         cfg[currStmt].push_back(nextStmt);
//         addToCfg(nextStmt, &(nextStmt->as<ast::ConditionalStatement>().ifTrue));

//         // add else branch if it exists
//         if(nextStmt->as<ast::ConditionalStatement>().ifFalse != nullptr) {
//             addToCfg(nextStmt, nextStmt->as<ast::ConditionalStatement>().ifFalse);
//         }
//     }
//     else if(nextStmt->kind == ast::StatementKind::Case) {
//         cfg[currStmt].push_back(nextStmt);
//         for(auto & itemGroup : nextStmt->as<ast::CaseStatement>().items) {
//             addToCfg(nextStmt, itemGroup.stmt);
//             // cfg[getTerminal(itemGroup.stmt)].push_back(nextStmt);
//         }
//         if(nextStmt->as<ast::CaseStatement>().defaultCase != nullptr) {
//             addToCfg(nextStmt, nextStmt->as<ast::CaseStatement>().defaultCase);
//             // cfg[getTerminal(nextStmt->as<ast::CaseStatement>().defaultCase)].push_back(nextStmt);
//         }
//     }
//     // terminal 
//     else if(nextStmt->stmt->kind == ast::StatementKind::ExpressionStatement) {
//         auto adjNode = currStmt->addEdge(nextStmt);
//     }
//     // // terminal 
//     // else if(nextStmt->kind == ast::StatementKind::Empty) {
//     //     cfg[currStmt].push_back(nextStmt);
//     // }
//     // terminal
//     else {
//         std::cout << "unknown stmt kind: " << nextStmt->kind << std::endl;
//         if(nextStmt->syntax != nullptr)
//             std::cout << "unknown stmt syntax: " << nextStmt->syntax->toString() << std::endl;
//     }
// }

// recursive function to get the last stmt 
// of a sequence of stmts within a block or list
// const ast::Statement* getTerminal(const ast::Statement* curr) {
//     if(curr->kind == ast::StatementKind::Block) {
//         return getTerminal(&(curr->as<ast::BlockStatement>().body));
//     }
//     else if(curr->kind == ast::StatementKind::List) {
//         return getTerminal(curr->as<ast::StatementList>().list[curr->as<ast::StatementList>().list.size()-1]);
//     }
//     // terminal 
//     else if(
//         curr->kind == ast::StatementKind::ExpressionStatement ||
//         // need to fix for case and conditional
//         // ideally we have an "end" node that all branches would point to
//         curr->kind == ast::StatementKind::Case ||
//         curr->kind == ast::StatementKind::Conditional) {
//         return curr;
//     }
//     // terminal
//     else if(curr->kind == ast::StatementKind::Empty) {
//         return curr;
//     }
//     // terminal
//     else {
//         std::cout << "unknown stmt kind in getTerminal: " << curr->kind << std::endl;
//         return curr;
//     }
// }

// void handle(const ast::CaseStatement& caseStmt) {
//     std::cout << caseStmt.expr.syntax->toString() << std::endl;
//     for(auto & ItemGroup : caseStmt.items) {
//         std::cout << ItemGroup.stmt.get()->kind << std::endl;
//     }
//     std::cout << caseStmt.defaultCase->syntax->toString() << std::endl;
//     visitDefault(caseStmt);
// }

// void handle(const ast::Statement& stmt) {
//     if(stmt->kind == ast::StatementKind::Conditional) {
        
//     }
//     else if(stmt->kind == ast::StatementKind::ExpressionStatement) {
//         cfg[&(stmt->as<ast::ExpressionStatement>().expr)] = 
//     }
//     else {
//         std::cout << "error: statement kind: " << stmt->kind << std::endl;
//     }
// }

// void handle(const ast::PortSymbol& t) {
// } 

// void handle(const ast::BlockStatement& t) {
//     std::cout << "block: " << t.kind << std::endl;
//     visitDefault(t);
// }

// void handle(const ast::ContinuousAssignSymbol& t) {        
//     std::cout << "l: " << t.getAssignment().as<ast::AssignmentExpression>().left().syntax->toString() << "; kind: " << t.getAssignment().as<ast::AssignmentExpression>().left().kind << std::endl;
//     std::cout << "rkind: " << t.getAssignment().as<ast::AssignmentExpression>().right().kind << std::endl;
//     depGraph[&(t.getAssignment().as<ast::AssignmentExpression>().left())].push_back(&(t.getAssignment().as<ast::AssignmentExpression>().right()));
//     visitDefault(t);
// }