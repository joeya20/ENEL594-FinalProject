
#pragma once

#include <slang/ast/ASTVisitor.h>
#include <slang/ast/Expression.h>
#include <slang/ast/Symbol.h>
#include <slang/ast/Statements.h>
#include <slang/syntax/AllSyntax.h>

#include <vector>
#include <unordered_map>
#include <unordered_set>
#include <iostream>

#include "CfgNode.hpp"

using namespace slang;

struct NamedValueVisitor : ast::ASTVisitor<NamedValueVisitor, true, true> {
    std::array<std::unordered_map<const ast::Symbol*, std::unordered_set<std::shared_ptr<CfgNode>>>, 3>& symTabs;
    std::vector<std::shared_ptr<CfgNode>>& procRoots;
    const ast::Symbol* &res;
    int& symTabIndex;

    NamedValueVisitor(
        std::array<std::unordered_map<const ast::Symbol*, std::unordered_set<std::shared_ptr<CfgNode>>>, 3>& symTabs,
        std::vector<std::shared_ptr<CfgNode>>& procRoots,
        const ast::Symbol* &res,
        int& symTabIndex
    );
    void handle(const ast::NamedValueExpression& namedValExpr);
    void handle(const ast::ConditionalExpression& condExpr);
};