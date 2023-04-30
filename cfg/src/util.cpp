#include "util.hpp"

void toGraphML(std::shared_ptr<CfgNode> start) {
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
    outFile.open("cfg.graphml", std::fstream::out);

    if(outFile.bad()) {
        throw std::runtime_error("Error creating graphml output file!");
    }

    // q of nodes
    std::queue<std::shared_ptr<CfgNode>> printQueue;

    // set of nodes already visited
    std::unordered_set<std::shared_ptr<CfgNode>> visited;

    printQueue.push(start);
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

void toDot(std::shared_ptr<CfgNode> start, const std::string& filename) {
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

    printQueue.push(start);
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

void printCfg(std::vector<std::shared_ptr<CfgNode>> cfg) {
    std::queue<std::shared_ptr<CfgNode>> printQueue;
    std::unordered_set<std::shared_ptr<CfgNode>> visited;    
    std::string sep (10, '*');

    for(auto root : cfg) {
        // std::cout << "read vars: " << std::endl;
        // for(auto & rVar : root->readVars) {
        //     std::cout << "var name: " << rVar->name << std::endl;
        // }
        // std::cout << "write vars: " << std::endl;
        // for(auto & wVar : root->writeVars) {
        //     std::cout << "var name: " << wVar->name << std::endl;
        // }
        
        if(visited.find(root) == visited.end()) {
            printQueue.push(root);
            visited.insert(root);
        }

        //print control flow
        while(printQueue.size() > 0) {
            auto curr = printQueue.front();
            printQueue.pop();
            
            std::cout << "current type: " << CfgNode::kindToString[curr->kind] << std::endl;
            std::cout << "current index: " << curr->id << std::endl;
            std::cout << "children: ";

            for(auto node : curr->successors) {
                std::cout << node->id << "\t";
                if(visited.find(node) == visited.end()) {
                    printQueue.push(node);
                    visited.insert(node);
                }
            }
            std::cout << std::endl;
            // std::cout << CfgNode::kindToString[curr->kind] << std::endl;
            // if(curr->kind == CfgNode::Kind::basicBlock) {
            //     for(size_t i = 0; i < curr->exprs.size(); i++) {
            //         std::cout << curr->exprs[i]->syntax->toString() << std::endl;
            //     }
            // }
            // else if(curr->kind == CfgNode::Kind::procStart) {
            //     for(size_t i = 0; i < curr->sensList.size(); i++) {
            //         std::cout << curr->sensList[i]->expr->syntax->toString() << std::endl;
            //     }
            // }
            // else if(curr->kind == CfgNode::Kind::condStart) {
            //     if(curr->stmt->kind == ast::StatementKind::Case) {
            //         std::cout << curr->stmt->as<ast::CaseStatement>().expr.syntax->toString() << std::endl;
            //     }
            //     else {
            //         for(size_t i = 0; i < curr->stmt->as<ast::ConditionalStatement>().conditions.size(); i++) {
            //             std::cout << curr->stmt->as<ast::ConditionalStatement>().conditions[i].expr->syntax->toString() << std::endl;
            //         }
            //     }
            // }
        }
        std::cout << sep << std::endl;
    }
}