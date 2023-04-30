#pragma once

#include <slang/syntax/SyntaxTree.h>
// #include <slang/syntax/SyntaxPrinter.h>
// #include <slang/syntax/SyntaxVisitor.h>

#include <slang/ast/Compilation.h>
#include <slang/diagnostics/Diagnostics.h>
#include <slang/diagnostics/DiagnosticClient.h>

#include <cstdlib>
#include <string>
#include <vector>
#include <queue>
#include <unordered_map>
#include <unordered_set>
#include <algorithm>
#include <filesystem>

#include "util.hpp"
#include "Cfg.hpp"