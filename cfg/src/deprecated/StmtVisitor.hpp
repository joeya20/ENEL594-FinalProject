#pragma once

#include <slang/ast/ASTVisitor.h>
#include <slang/ast/Expression.h>
#include <slang/ast/Symbol.h>
#include <slang/ast/Statements.h>
#include <slang/syntax/AllSyntax.h>
#include "slang/parsing/Parser.h"
#include "slang/parsing/Preprocessor.h"

#include <iostream>
#include <vector>
#include <unordered_map>
#include <unordered_set>
#include <boost/algorithm/string.hpp>
#include <fmt/format.h>

#include "NamedValueVisitor.hpp"
#include "CfgNode.hpp"

using LF = parsing::LexerFacts;

struct StmtVisitor : ast::ASTVisitor<StmtVisitor, true, true> {
    std::array<std::unordered_map<const ast::Symbol*, std::unordered_set<std::shared_ptr<CfgNode>>>, 3>& symTabs;
    std::vector<std::shared_ptr<CfgNode>>& procRoots;
    std::shared_ptr<CfgNode> lastNode;

    // visitor to get namedValues
    std::shared_ptr<NamedValueVisitor> namedValVisitor;
    int symTabIndex;
    std::vector<std::vector<std::string>> assignmentCondsStack;
    const ast::Symbol *res;

    StmtVisitor(
        std::array<std::unordered_map<const ast::Symbol*, std::unordered_set<std::shared_ptr<CfgNode>>>, 3>& symTabs,
        std::vector<std::shared_ptr<CfgNode>>& procRoots
    );

    void handle(const ast::AssignmentExpression& assignExpr);
    void handle(const ast::ConditionalStatement& condStmt);
    void handle(const ast::CaseStatement& caseStmt);
    void handle(const ast::ExpressionStatement& exprStmt);
    // void handle(const ast::EmptyStatement& emptyStmt);
};