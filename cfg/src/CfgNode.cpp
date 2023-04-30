#include "CfgNode.hpp"
#include <iostream>

const std::array<const std::string, 8> CfgNode::kindToString = {
    "modStart",
    "modEnd",
    "procStart",      // start of local procedure
    "procEnd",        // end of local procedure
    "condStart",      // start of conditional
    "condEnd",        // end of conditional
    "basicBlock",      // expression
    "modInst"
};
int CfgNode::idSeed = 0;

// create new CFG node from stmt
CfgNode::CfgNode(const ast::Statement *stmt) {
    this->stmt = stmt;
    this->id = idSeed++;
    if(stmt->kind == ast::StatementKind::Block ||
    stmt->kind == ast::StatementKind::Timed) {
        this->kind = Kind::procStart;
    }
    else if(stmt->kind == ast::StatementKind::Case || 
    stmt->kind == ast::StatementKind::Conditional) {
        this->kind = Kind::condStart;
    }
    else if(stmt->kind == ast::StatementKind::ExpressionStatement) {
        this->kind = Kind::basicBlock;
    }
    // nodes of kind conditionalEnd cannot be created with this constructed here
}

// create new CFG node from kind
CfgNode::CfgNode(Kind newNodeKind) {
    this->id = idSeed++;
    this->stmt = nullptr;
    this->kind = newNodeKind;
}

// add edge to node
std::shared_ptr<CfgNode> CfgNode::addEdge(const ast::Statement *stmt, bool addPredecessor) {
    auto node = std::make_shared<CfgNode>(stmt);
    addEdge(node, addPredecessor);
    return node;
}

// add edge to node
std::shared_ptr<CfgNode> CfgNode::addEdge(CfgNode::Kind kind, bool addPredecessor) {
    auto node = std::make_shared<CfgNode>(kind);
    addEdge(node, addPredecessor);
    return node;
}

// add edge to node
// addPredecessor is true by default but must be false for terminal nodes
void CfgNode::addEdge(std::shared_ptr<CfgNode> node, bool addPredecessor) {
    bool add = true;
    for(auto & successor : successors) {
        if(successor.get() == node.get()) {
            add = false;
        }
    }
    if(add) {
        this->successors.insert(node);
        if(addPredecessor) {
            node->predecessors.insert(shared_from_this());
        }
    }
}

CfgNode::~CfgNode() {
    // std::cout << "deleting " << this->id << std::endl;
}

std::ostream& operator<<(std::ostream& os, const CfgNode& node) {
    return os;
}

std::ostream& operator<<(std::ostream& os, const CfgNode::Kind kind) {
    os << CfgNode::kindToString[kind];
    return os;
}
