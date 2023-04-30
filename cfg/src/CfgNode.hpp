#pragma once

#include <slang/ast/Expression.h>
#include <slang/ast/Statements.h>
#include <slang/ast/expressions/AssignmentExpressions.h>

#include <array>
#include <memory>
#include <unordered_map>
#include <unordered_set>
#include <vector>

using namespace slang;
using namespace slang::ast;

struct CfgNode : public std::enable_shared_from_this<CfgNode> {
  typedef enum Kind {
    modStart,
    modEnd,
    procStart, // start of local procedure
    procEnd,   // end of local procedure
    condStart, // start of conditional
    condEnd,   // end of conditional
    basicBlock, // expression(s)
    modInst,
  } Kind;

  static const std::array<const std::string, 8> kindToString;
  static int idSeed;
  int id;
  Kind kind;
  // pointer to the matching end node, if applicable, else nullptr
  std::shared_ptr<CfgNode> end = nullptr;
  // store stmt of current edge, if applicable, else nullptr
  const ast::Statement *stmt = nullptr;
  // list of ptrs to sucessor edges
  std::unordered_set<std::shared_ptr<CfgNode>> successors;
  // list of ptrs to predecessor edges
  std::unordered_set<std::shared_ptr<CfgNode>> predecessors;

  // set of symbols read in this process
  // only populated for procStart nodes
  std::unordered_set<const ast::Symbol *> readSymbols;
  // set of symbols read in this process
  // only populated for procStart nodes
  std::unordered_set<const ast::Symbol *> writtenSymbols;
  // list of symbols in sens list of this process
  // only populated for procStart nodes
  std::unordered_set<const ast::Symbol *> sensList;

  // // map of symbols read to the basicBlocks containing the read
  // // only filled for procStart node
  // std::unordered_map<const ast::Symbol*,
  // std::unordered_set<std::shared_ptr<CfgNode>>> readVars;
  // // map of symbols written to the basicBlocks containing the write
  // // only filled for procStart node
  // std::unordered_map<const ast::Symbol*,
  // std::unordered_set<std::shared_ptr<CfgNode>>> writeVars;

  // this map stores every definition for a given symbol and the conditions that
  // guard the definition this will probably change after
  std::unordered_map<
      const ast::Symbol *,
      std::unordered_map<const ast::Expression *, std::vector<std::string>>>
      varDefs;

  std::vector<std::pair<const ast::Symbol *, const ast::Expression *>> definitions;

  // dataflow sets at the basic block level
  std::unordered_map<const ast::Symbol *,
                     std::vector<const ast::Expression *>>
      killSet;
  std::unordered_map<const ast::Symbol *,
                     std::vector<const ast::Expression *>>
      genSet;
  std::unordered_map<const ast::Symbol *,
                     std::unordered_set<const ast::Expression *>>
      inSet;
  std::unordered_map<const ast::Symbol *,
                     std::unordered_set<const ast::Expression *>>
      outSet;

  std::vector<const AssignmentExpression*> assignmentsInBasicBlock;
  int shortestPathFromStart;
  int shortestPathFromEnd;

  CfgNode(const ast::Statement *stmt);
  CfgNode(Kind newNodeKind);
  ~CfgNode();
  std::shared_ptr<CfgNode> addEdge(const ast::Statement *stmt,
                                   bool addPredecessor = true);
  std::shared_ptr<CfgNode> addEdge(CfgNode::Kind kind,
                                   bool addPredecessor = true);
  void addEdge(std::shared_ptr<CfgNode> node, bool addPredecessor = true);
};

// TODO: finish to string method
std::ostream &operator<<(std::ostream &os, const CfgNode &node);

std::ostream &operator<<(std::ostream &os, const CfgNode::Kind kind);