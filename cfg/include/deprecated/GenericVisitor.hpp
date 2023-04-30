#pragma once

#include <slang/syntax/SyntaxTree.h>
#include <slang/syntax/SyntaxVisitor.h>
#include <slang/syntax/SyntaxNode.h>
#include <slang/syntax/AllSyntax.h>
#include <slang/ast/ASTVisitor.h>
#include <slang/ast/Expression.h>
#include <slang/ast/Symbol.h>
#include <slang/ast/Statements.h>
#include <slang/ast/Scope.h>

#include <cstdio>
#include <iostream>
#include <type_traits>
#include <algorithm>
#include <vector>
#include <unordered_map>

struct GenericVisitor : public slang::ast::ASTVisitor<GenericVisitor, true, true> {    
    template<typename T>
    void handle(const T& t) {
        if constexpr (std::is_base_of_v<slang::ast::Expression, T>) {
            if(t.syntax != nullptr)
                std::cout << "expr: " << t.syntax->toString() << " kind: " << t.kind << std::endl;
            else
                std::cout << "expr: " << t.kind << std::endl;

        }
        else if constexpr (std::is_base_of_v<slang::ast::Statement, T>) {
            if(t.syntax != nullptr)
                std::cout << "stmt: " << t.syntax->toString() << " kind: " << t.kind << std::endl;
            else
                std::cout << "stmt: " << t.kind << std::endl;
        }
        else if constexpr (std::is_base_of_v<slang::ast::Symbol, T>) {
            std::cout << "sym: " << t.kind << "; name: " << t.name << std::endl;
        }
        else if constexpr (std::is_base_of_v<slang::ast::TimingControl, T>) {
            std::cout << "TimingControl: " << t.kind << std::endl;
        }
        visitDefault(t);
    }
};
