#pragma once

#include <cstdlib>
#include <iostream>
#include <unordered_map>
#include <vector>
#include <type_traits>
#include <memory>
#include <vector>
#include <queue>
#include <unordered_set>
#include <fmt/format.h>
#include <fstream>

#include <slang/syntax/AllSyntax.h>
#include <slang/syntax/SyntaxNode.h>
#include <slang/ast/Statements.h>
#include <slang/ast/Symbol.h>
#include <slang/ast/symbols/PortSymbols.h>
#include <slang/parsing/Preprocessor.h>

#include "CfgNode.hpp"

void printCfg(std::vector<std::shared_ptr<CfgNode>> cfg);
void toGraphML(std::shared_ptr<CfgNode> start);
void toDot(std::shared_ptr<CfgNode> start, const std::string& filename);