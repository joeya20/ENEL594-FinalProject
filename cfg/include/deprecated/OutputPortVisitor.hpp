#include <slang/syntax/SyntaxTree.h>
#include <slang/syntax/SyntaxNode.h>
#include <slang/syntax/SyntaxVisitor.h>
#include <slang/syntax/AllSyntax.h>
#include <slang/ast/ASTVisitor.h>

#include <string>
#include <iostream>
#include <filesystem>
#include <vector>

#include "util.hpp"

extern std::queue<const syntax::SyntaxNode*> jobQ;

class OutputPortVisitor : public syntax::SyntaxVisitor<OutputPortVisitor> {
public:
    void handle(const syntax::ImplicitAnsiPortSyntax& t) {
        std::string portHeader = t.header->toString();
        std::cout << "ImplicitAnsiPortSyntax: " << portHeader << ", " << t.declarator->toString() << ", " << portHeader.size() << std::endl;

        // if output port declared using verilog-2001 (i think) syntax
        if(portHeader.find("output") != std::string::npos) {
            jobQ.push(&t);
        }
    }

    // void handle(const syntax::ContinuousAssignSyntax& t) {
    //     std::cout << "parent " << t.toString() << std::endl;
    //     printChildren(t);
    // }

    // void handle(const syntax::PortDeclarationSyntax& t) {
    //     std::string portHeader = t.header->toString();
    //     if(portHeader.find("output") != std::string::npos) {
    //         auto declarators = t.declarators.elems();

    //         for(auto & declarator : declarators) {
    //             if(declarator.isToken()) {
    //                 std::cout << "Declarator: " << declarator.node()->toString() << std::endl;
    //             }
    //             else {
    //                 std::cout << "Declarator: " << declarator.token().toString() << std::endl;
    //             }
    //         }
    //         // outputPorts.push_back(&t);
    //     }
    //     // std::cout << "PortDeclaration: " << portHeader << std::endl;
    // }

    // void printOutputPorts() {
    //     for(auto & port : outputPorts) {
    //         std::cout << port->header->toString() << std::endl;
    //         std::cout << port->declarator->toString() << std::endl; 
    //     }
    // }
};