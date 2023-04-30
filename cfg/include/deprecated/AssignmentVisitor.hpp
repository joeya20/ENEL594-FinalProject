#include <slang/syntax/SyntaxTree.h>
#include <slang/syntax/SyntaxNode.h>
#include <slang/syntax/SyntaxVisitor.h>
#include <slang/syntax/AllSyntax.h>
#include <slang/ast/ASTVisitor.h>

#include <string>
#include <iostream>
#include <filesystem>
#include <vector>
#include <algorithm>
#include <stdio.h>

#include "util.hpp"

extern std::unordered_map<const syntax::SyntaxNode*, std::vector<const syntax::SyntaxNode*>> dependencyGraph;

class AssignmentVisitor : public syntax::SyntaxVisitor<AssignmentVisitor> {
public:
    void handle(const syntax::BinaryExpressionSyntax& t) {
        if(t.isKind(syntax::SyntaxKind::AssignmentExpression)) {
            addToGraph(t.left, t.right);
        }
    }

    // add dependency to graph
    void addToGraph(const syntax::SyntaxNode *left, const  syntax::SyntaxNode *right) {
        if(std::find(dependencyGraph[left].begin(), dependencyGraph[left].end(), right) ==  dependencyGraph[left].end()) {
            //add to graph
            dependencyGraph[left].push_back(right);
            std::cout << "added: " << left->toString() << " and " << right->toString() << std::endl;
            std::cout << "l-kind: " << left->kind << "; r-kind: " << right->kind << std::endl;

            //check if there are any sub-dependencies to add
            for(size_t i = 0; i < left->getChildCount(); i++) {
                auto child = left->childNode(i);
                if(child != NULL) {
                    addToGraph(left, child);
                }
            }
            for(size_t i = 0; i < right->getChildCount(); i++) {
                auto child = right->childNode(i);
                if(child != NULL) {
                    addToGraph(right, child);
                }
            }
        }
    }
};