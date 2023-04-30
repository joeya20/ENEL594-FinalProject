// page 206 of the LRM has control flow types within proc block
#pragma once

#include <slang/ast/ASTVisitor.h>
#include <slang/ast/Expression.h>
#include <slang/ast/Symbol.h>
#include <slang/ast/Statements.h>

#include <cstdio>
#include <iostream>
#include <type_traits>
#include <algorithm>
#include <vector>
#include <unordered_map>
#include <unordered_set>
#include <string>
#include <stdexcept>
#include <fmt/core.h>

#include "CfgNode.hpp"

struct CfgConstructor : public ast::ASTVisitor<CfgConstructor, true, true> {
    std::vector<const ast::Symbol*>& inputPorts;
    std::vector<const ast::Symbol*>& outputPorts;
    // some utility symbol symbolTables
    // stores every procStart node that reads the symbol at table[symbol][0]
    // stores every basicBlock node that reads the symbol at table[symbol][1]
    std::unordered_map<
        const ast::Symbol*,
        std::unordered_set<std::shared_ptr<CfgNode>>>& readSymbolTable;
    // stores every procStart node that writes to the symbol at table[symbol][0]
    // stores every basicBlock node that writes to the symbol at table[symbol][1]
    std::unordered_map<
        const ast::Symbol*,
        std::unordered_set<std::shared_ptr<CfgNode>>>& writeSymbolTable;
    std::unordered_map<
        const ast::Symbol*,
        std::unordered_set<std::shared_ptr<CfgNode>>>& sensSymbolTable;
    std::vector<std::shared_ptr<CfgNode>>& procRoots;

    std::shared_ptr<CfgNode> lastNode;
    int symTabIndex;    // 0 to update read table, 1 to update write table

    std::vector<std::vector<std::string>> assignmentCondsStack;
    std::vector<const ast::Symbol*> assignmentLhs;
    std::vector<const ast::Expression*> assignmentRhs;
    
    CfgConstructor(
        std::vector<const ast::Symbol*>& inputPorts,
        std::vector<const ast::Symbol*>& outputPorts,
        std::unordered_map<
            const ast::Symbol*,
            std::unordered_set<std::shared_ptr<CfgNode>>>& readSymbolTable,
        std::unordered_map<
            const ast::Symbol*,
            std::unordered_set<std::shared_ptr<CfgNode>>>& writeSymbolTable,
        std::unordered_map<
            const ast::Symbol*, 
            std::unordered_set<std::shared_ptr<CfgNode>>>& sensSymbolTable,
        std::vector<std::shared_ptr<CfgNode>>& procRoots
    );
    void handle(const ast::UninstantiatedDefSymbol& unInstSymbol);
    void handle(const ast::PortSymbol& portSymbol);
    void handle(const ast::ContinuousAssignSymbol& contAssignStmt);
    void handle(const ast::InstanceSymbol& instSymbol);
    void handle(const ast::ProceduralBlockSymbol& procBlock);
    void handle(const ast::NamedValueExpression& namedValExpr);
    void handle(const ast::ConditionalExpression& condExpr);
    void handle(const ast::AssignmentExpression& assignExpr);
    void handle(const ast::ConditionalStatement& condStmt);
    void handle(const ast::CaseStatement& caseStmt);
    void handle(const ast::EmptyStatement& emptyStmt);
    void addEventToProcSens(
        const ast::SignalEventControl&,
        std::shared_ptr<CfgNode>
    );
    std::vector<std::string> mergeConds();
};