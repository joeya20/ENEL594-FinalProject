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
#include "StmtVisitor.hpp"

struct ProcBlockVisitor : public ast::ASTVisitor<ProcBlockVisitor, true, true> {
    std::vector<const ast::Symbol*>& inputPorts;
    std::vector<const ast::Symbol*>& outputPorts;
    std::array<std::unordered_map<const ast::Symbol*, std::unordered_set<std::shared_ptr<CfgNode>>>, 3>& symTabs;
    std::vector<std::shared_ptr<CfgNode>>& procRoots;

    // helpers for constructing cfg
    std::shared_ptr<StmtVisitor> stmtVisitor;

    ProcBlockVisitor(
        std::vector<const ast::Symbol*>& inputPorts,
        std::vector<const ast::Symbol*>& outputPorts,
        std::array<std::unordered_map<const ast::Symbol*, std::unordered_set<std::shared_ptr<CfgNode>>>, 3>& symTabs,
        std::vector<std::shared_ptr<CfgNode>>& procRoots
    );

    // extract ports for module
    void handle(const ast::PortSymbol& portSymbol);

    void addEventToBlock(const ast::SignalEventControl& event, std::shared_ptr<CfgNode> node);

    // handler for continuous assign statements
    // treat as processes with a 1 stmt basicblock
    // TODO: add stmt/expr to basic block node
    void handle(const ast::ContinuousAssignSymbol& contAssignStmt);

    // main handler to kickstart CFG construction for each process
    void handle(const ast::ProceduralBlockSymbol& procBlock);
};