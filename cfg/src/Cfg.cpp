#include "Cfg.hpp"
#include "util.hpp"
#include "boost/algorithm/string.hpp"
#include <sstream>

void Cfg::makeCfg() {
    std::cerr << "1" << std::endl;
    this->astRoot.visit(*CfgConstr);
    std::cerr << "2" << std::endl;
    modStart = std::make_shared<CfgNode>(CfgNode::Kind::modStart);
    auto modEnd = std::make_shared<CfgNode>(CfgNode::Kind::modEnd);
    // modEnd->addEdge(modStart, false);
    modStart->end = modEnd;
    modEnd->addEdge(modStart, false);
    // printCfg(procRoots);
    for (auto & procStart : procRoots) {
        this->globalSetofDefinitions.insert(globalSetofDefinitions.end(), procStart->definitions.begin(), procStart->definitions.end());
        
        // check if it depends on an input port
        for (auto &sens : procStart->sensList) {
            if (std::find(inputPorts.begin(), inputPorts.end(), sens) != inputPorts.end()) {
                modStart->addEdge(procStart);
                break;
            }
        }
        // add edge to another block if it reads
        // from a variable written to in this block
        for (auto & writtenSymbol : procStart->writtenSymbols) {
            for (auto & depProc : sensSymbolTable[writtenSymbol]) {
                // dont add edge back to yourself
                if (depProc != procStart) {
                    if(procStart->kind == CfgNode::Kind::procStart) {
                        procStart->end->addEdge(depProc);
                    }
                    else {
                        procStart->addEdge(depProc);
                    }
                }
            }

            if (std::find(outputPorts.begin(), outputPorts.end(), writtenSymbol) != outputPorts.end()) {
                if(procStart->kind == CfgNode::Kind::procStart) {
                    procStart->end->addEdge(modEnd);
                }
                else {
                    procStart->addEdge(modEnd);
                }
            }
        }
    }
    propagateShortestPathFromStart();
    propagateShortestPathFromEnd();
}

void Cfg::getStats() {
    std::queue<CfgNode*> jobQ;
    std::unordered_set<CfgNode*> visited;
    int nodeCount = 0;
    int basicBlockCount = 0;
    int condCount = 0;
    int condBranchCount = 0;
    int edgeCount = 0;
    int assignmentCount = 0;

    jobQ.push(modStart.get());
    while(jobQ.size() > 0) {
        auto currNode = jobQ.front();
        jobQ.pop();
        // visited.insert(currNode);
        nodeCount++;
        if(currNode->kind == CfgNode::Kind::basicBlock) {
            basicBlockCount++;
            assignmentCount += currNode->assignmentsInBasicBlock.size();
        }
        else if (currNode->kind == CfgNode::Kind::condStart) {
            condCount++;
            condBranchCount += currNode->successors.size();
        }
        edgeCount += currNode->successors.size();

        for(auto & successor : currNode->successors) {
            if(visited.find(successor.get()) == visited.end()) {
                visited.insert(successor.get());
                jobQ.push(successor.get());
            }
        }
    }
    std::cout << fmt::format("nodes: {}, edges: {}, basic blocks: {}, assignments: {}, conds: {}, branches: {}\n", nodeCount, edgeCount, basicBlockCount, assignmentCount, condCount, condBranchCount);
}

void Cfg::propagateShortestPathFromEnd() {
    std::queue<CfgNode*> jobQ;
    std::unordered_set<CfgNode*> visited;
    int depth = 0;
    jobQ.push(modStart->end.get());
    while(jobQ.size() > 0) {
        int levelCount = jobQ.size();
        while(levelCount > 0) {
            auto currNode = jobQ.front();
            jobQ.pop();
            visited.insert(currNode);

            currNode->shortestPathFromEnd = depth;

            for(auto & predecessor : currNode->predecessors) {
                if(visited.find(predecessor.get()) == visited.end()) {
                    jobQ.push(predecessor.get());
                }
            }
            levelCount--;
        }
        depth++;
    }
}

void Cfg::propagateShortestPathFromStart() {
    std::queue<CfgNode*> jobQ;
    std::unordered_set<CfgNode*> visited;
    int depth = 0;
    jobQ.push(modStart.get());
    while(jobQ.size() > 0) {
        int levelCount = jobQ.size();
        while(levelCount > 0) {
            auto currNode = jobQ.front();
            jobQ.pop();
            visited.insert(currNode);

            currNode->shortestPathFromStart = depth;

            for(auto & successor : currNode->successors) {
                if(visited.find(successor.get()) == visited.end()) {
                    jobQ.push(successor.get());
                }
            }
            levelCount--;
        }
        depth++;
    }
}

// traverses the graph to find an issue?
// void Cfg::scan() {
//     if(modStart == nullptr) {
//         std::cerr << "Error: construct CFG before scanning\n";
//         return;
//     }
//     std::array<std::string, 1> lockKeywords = { "lock" }; 
//     std::array<std::string, 2> dbgKeywords = {"debug", "dbg"}; 
    
//     // set <symbol> to store variables of interest
//     // prime set with variables that are in our list of keywords
//     std::unordered_set<const ast::Symbol*> lockVars;
//     std::unordered_set<const ast::Symbol*> dbgVars;

//     std::vector<const CfgNode*> jobQ;
//     std::unordered_set<const CfgNode*> visited;

//     // start at modstart
//     // jobQ.push_back(this->modStart.get());

//     // we also initially check input ports 
//     for(auto & inputPort : this->inputPorts) {
//         for(auto & lockKW : lockKeywords) {
//             if(inputPort->name.find(lockKW) != std::string::npos) {
//                 lockVars.insert(inputPort);
//                 std::cout << "found input port " << inputPort->name << " as lock KW\n";
//             }
//         }
//         for(auto & dbgKW : dbgKeywords) {
//             if(inputPort->name.find(dbgKW) != std::string::npos) {
//                 dbgVars.insert(inputPort);
//                 std::cout << "found input port " << inputPort->name << " as dbg KW\n";
//             }
//         }
//     }

//     while(jobQ.size() > 0) {
//         auto currNode = jobQ.back();
//         jobQ.pop_back();
//         visited.insert(currNode);

//         if(currNode->kind == CfgNode::Kind::basicBlock) {
//             for(auto & assignExpr : currNode->assignmentsInBasicBlock) {
//                 assignExpr->right().visit(slang::ast::makeVisitor(
//                     [&](const NamedValueExpression &namedValExpr) {
//                         if(namedValExpr.symbol.name.find(lockKW) != std::string::npos)
//                     }
//                 ));
//             }
//         }
//         else if(currNode->kind == CfgNode::Kind::condStart) {

//         }
//         else if(currNode->kind == CfgNode::Kind::condEnd) {

//         }
//     }

// }

// populates the data flow sets after the cfg is constructed
void Cfg::populateDataflowSets() {
    // q of nodes
    std::queue<std::shared_ptr<CfgNode>> jobQ;
    // set of nodes already visited
    std::unordered_set<std::shared_ptr<CfgNode>> visited;

    jobQ.push(modStart);
    while (jobQ.size() > 0) {
        auto curr = jobQ.front();
        jobQ.pop();
        visited.insert(curr);

        // do action
        switch (curr->kind)
        {
        case CfgNode::Kind::procStart:
            curr->genSet = curr->end->genSet;
            break;
        case CfgNode::Kind::basicBlock:
            for (auto & gen : curr->genSet) {
                for(auto & def : gen.second) {
                    for(auto & globDef : this->globalSetofDefinitions) {
                        if(globDef.first == gen.first && def != globDef.second) {
                            curr->killSet[gen.first].push_back(globDef.second);
                        }
                    }
                    std::stringstream ss;
                    ss  << "generated definition ";
                    if(def->syntax == nullptr) ss << def->kind;
                    else ss << def->syntax->toString();
                    ss  << "  for symbol "
                        << gen.first->name
                        << "\n";
                    std::cout << ss.str();
                }
            }
            for (auto & kill : curr->killSet) {
                for(auto & def : kill.second) {
                    std::stringstream ss;
                    ss  << "killed definition ";
                    if(def->syntax == nullptr) ss << def->kind;
                    else ss << def->syntax->toString();
                    ss  << "  for symbol "
                        << kill.first->name
                        << "\n";
                    std::cout << ss.str();
                }
            }
            break;
        case CfgNode::Kind::condStart:
            
            break;
        case CfgNode::Kind::condEnd:
            
            break;
        default:
            break;
        }

        for (auto &neighbour : curr->successors) {
            if(visited.find(neighbour) == visited.end()) {
                jobQ.push(neighbour);
            }
        }
    }
}

// creates a .graphml file
void Cfg::toGraphML(const std::string& filename) {
    std::string graphTemplate = 
        R"(
            <graph id="g" edgedefault="directed">{}{}
            </graph>)";

    // three fields: id, key, and label
    std::string nodeTemplate = 
        R"(
                <node id="n{}">
                    <data key="{}">{}</data>
                </node>)";

    // five fields: id, source, target, key, and label
    std::string edgeTemplate = 
        R"(
                <edge id="e{}" source="n{}" target="n{}" />)";
        // R"(
        //     <edge id="e{}" source="n{}" target="n{}">
        //         <data key="{}">{}</data>
        //     </edge>)";

    // four fields: id, for, name, type
    std::string keyTemplate = 
        R"(
            <key id="{}" for="{}" attr.name="{}" attr.type="{}" />)";

    // four fields: graphTemplate, keyTemplate, nodeTemplate, edgeTemplate
    std::string boilerplate = 
        R"(<?xml version="1.0" encoding="UTF-8"?>
        <graphml xmlns="http://graphml.graphdrawing.org/xmlns"  
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://graphml.graphdrawing.org/xmlns
            http://graphml.graphdrawing.org/xmlns/1.0/graphml.xsd">{}{}
        </graphml>
        )";

    std::ofstream outFile;
    outFile.open(filename, std::fstream::out);

    if(outFile.bad()) {
        throw std::runtime_error("Error creating graphml output file!");
    }

    // q of nodes
    std::queue<std::shared_ptr<CfgNode>> printQueue;
    // set of nodes already visited
    std::unordered_set<std::shared_ptr<CfgNode>> visited;

    printQueue.push(this->modStart);
    std::string nodes;
    std::string edges;
    int edgeIndex = 0;
    while(printQueue.size() > 0) {
        auto curr = printQueue.front();
        printQueue.pop();

        //first add the node element if needed
        if(visited.find(curr) == visited.end()) {
            nodes += fmt::format(nodeTemplate, curr->id, "label", CfgNode::kindToString[curr->kind]);
            visited.insert(curr);// then add the edges

            for(auto & neighbour : curr->successors) {
                edges += fmt::format(edgeTemplate, edgeIndex++, curr->id, neighbour->id, "", "");
                if(visited.find(neighbour) == visited.end()) {
                    printQueue.push(neighbour);
                }
            }
        }
    }
    std::string keys;    
    keys += fmt::format(keyTemplate, "label", "node", "label", "string");
    auto graph = fmt::format(graphTemplate, nodes, edges);
    outFile << fmt::format(boilerplate, keys, graph);
    outFile.close();
}

// creates a .dot file to visualize graph using graphviz
void Cfg::toDot(const std::string& filename) {
    std::string graphTemplate = R"(digraph CFG {{{}
}})";

    // three fields: id, key, and label
    std::string edgeTemplate = R"(
    {} -> {};)";

    std::ofstream outFile;
    outFile.open(filename, std::fstream::out);

    if(outFile.bad()) {
        throw std::runtime_error("Error creating graphviz output file!");
    }

    // q of nodes
    std::queue<std::shared_ptr<CfgNode>> printQueue;

    // set of nodes already visited
    std::unordered_set<std::shared_ptr<CfgNode>> visited;

    printQueue.push(this->modStart);
    std::string edges;
    while(printQueue.size() > 0) {
        auto curr = printQueue.front();
        printQueue.pop();

        //first add the node element if needed
        if(visited.find(curr) == visited.end()) {
            auto currNode = CfgNode::kindToString[curr->kind] + std::to_string(curr->id);
            visited.insert(curr);// then add the edges

            for(auto & neighbour : curr->successors) {
                auto currNeighbour = CfgNode::kindToString[neighbour->kind] + std::to_string(neighbour->id);
                edges += fmt::format(edgeTemplate, currNode, currNeighbour);
                if(visited.find(neighbour) == visited.end()) {
                    printQueue.push(neighbour);
                }
            }
        }
    }
    auto graph = fmt::format(graphTemplate, edges);
    outFile << graph;
    outFile.close();
}