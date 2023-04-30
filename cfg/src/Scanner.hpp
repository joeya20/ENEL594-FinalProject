#pragma once

#include <slang/ast/ASTVisitor.h>
#include <unordered_map>
#include <unordered_set>
#include <vector>

#include "Cfg.hpp"

using namespace slang::ast;

struct Scanner {
    // root of the design in its entirety
    const RootSymbol& root;
    const Cfg& cfg;
    // this vector will store all assignments in the first pass
    std::vector<const AssignmentExpression*> allAssignments;
    // this vector will store the clustered assignments based on *some* similarity metric
    std::vector<std::unordered_set<const AssignmentExpression*>> clusteredAssignments;

    Scanner(const RootSymbol& root, const Cfg& cfg);

    void gatherAssignments();
    void clusterAssignments();
    void refineClusters();
    void validateClusteredAssignments();
    void getAstNodeCount();
    void getAstDepth();
    
    bool assignmentLhsAreSimilar(const Expression*, const Expression*);
    template<typename T>
    typename T::size_type levenshteinDistance(const T &source, const T &target);
    int getDepthFromEnd(const AssignmentExpression*);
};
