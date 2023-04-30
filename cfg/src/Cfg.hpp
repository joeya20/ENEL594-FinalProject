#pragma once

#include <memory>
#include <fmt/format.h>
#include <string>
#include <iostream>
#include <fstream>
#include <exception>
#include <vector>
#include <unordered_map>
#include <unordered_set>
#include <queue>
#include <array>
#include <slang/ast/symbols/CompilationUnitSymbols.h>
#include <slang/syntax/AllSyntax.h>

#include "CfgNode.hpp"
#include "CfgConstructor.hpp"

class Cfg {
private:
    std::unique_ptr<CfgConstructor> CfgConstr;
    void populateDataflowSets();

public:
    // root symbol of AST
    const ast::RootSymbol& astRoot;
    // start of module CFG
    std::shared_ptr<CfgNode> modStart = nullptr;
    // input and output ports of module
    std::vector<const ast::Symbol*> inputPorts;
    std::vector<const ast::Symbol*> outputPorts;

    // some utility symbol symbolTables
    // stores every procStart node that reads the symbol at table[symbol][0]
    // stores every basicBlock node that reads the symbol at table[symbol][1]
    std::unordered_map<
        const ast::Symbol*,
        std::unordered_set<std::shared_ptr<CfgNode>>> readSymbolTable;
    // stores every procStart node that writes to the symbol at table[symbol][0]
    // stores every basicBlock node that writes to the symbol at table[symbol][1]
    std::unordered_map<
        const ast::Symbol*, 
        std::unordered_set<std::shared_ptr<CfgNode>>> writeSymbolTable;
    std::unordered_map<
        const ast::Symbol*, 
        std::unordered_set<std::shared_ptr<CfgNode>>> sensSymbolTable;
    std::vector<std::pair<const ast::Symbol *, const ast::Expression *>> globalSetofDefinitions;
    // a list of CFGs for each process within the module
    std::vector<std::shared_ptr<CfgNode>> procRoots;

    // ctor
    Cfg(const ast::RootSymbol& root) : astRoot(root) {
        CfgConstr = std::make_unique<CfgConstructor>(inputPorts, outputPorts, readSymbolTable, writeSymbolTable, sensSymbolTable, procRoots);
    }

    // create CFG
    void makeCfg();
    void getStats();
    // scan cfg after construction
    void scan();
    // create GraphML file for viz
    void toGraphML(const std::string& filename);
    void toDot(const std::string& filename);
    void propagateShortestPathFromStart();
    void propagateShortestPathFromEnd();
    // TODO: operator<<
};