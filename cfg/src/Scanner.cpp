#include "Scanner.hpp"
#include <iostream>
#include <algorithm>
#include <exception>
#include <slang/ast/Statements.h>
#include <fstream>

using AssignExprSet = std::unordered_set<const AssignmentExpression*>;

Scanner::Scanner(const RootSymbol &root, const Cfg &cfg) : root(root), cfg(cfg) {}

void Scanner::gatherAssignments() {
    root.visit(slang::ast::makeVisitor(
        [&](const AssignmentExpression &assignExpr) {
            allAssignments.push_back(&assignExpr);
        }
    ));
};

struct CountVisitor : public ASTVisitor<CountVisitor, true, true> {
    int totalCount = 0;
    int stmtCount = 0;
    int exprCount = 0;
    int symCount = 0;
    int miscCount = 0;
    int assignCount = 0;
    int condCount = 0;
    int condBranchCount = 0;
    template<typename T>
    void handle(const T& t) {
        if constexpr (std::is_base_of_v<Statement, T>) {
            stmtCount++;
             if constexpr (std::is_same_v<ConditionalStatement, T>) {
                condCount++;
                condBranchCount++;
                if(t.ifFalse != nullptr) condBranchCount++;
            }
            else if constexpr (std::is_same_v<CaseStatement, T>) {
                condCount++;
                condBranchCount += t.items.size();
                if(t.defaultCase != nullptr) condBranchCount++;
            }
        }
        else if constexpr (std::is_base_of_v<Expression, T>) {
            exprCount++;
            if constexpr (std::is_same_v<AssignmentExpression, T>) {
                assignCount++;
            }
            if constexpr (std::is_same_v<ConditionalExpression, T>) {
                condCount++;
                condBranchCount += 2;
            }
        }
        else if constexpr (std::is_base_of_v<Symbol, T>) {
            symCount++;
        }
        else {
            miscCount++;
        }
        totalCount++;
        visitDefault(t);
    }
};

void Scanner::getAstNodeCount() {
    CountVisitor counter;
    root.visit(counter);
    std::cout 
        << fmt::format("total: {}, stmts: {}, exprs: {}, symbols: {}, misc: {}\n", 
        counter.totalCount, counter.stmtCount, counter.exprCount, counter.symCount, counter.miscCount)
        << fmt::format("assignments: {}, conditionals: {}, branches: {}\n", 
        counter.assignCount, counter.condCount, counter.condBranchCount);
}

struct DepthVisitor : public ASTVisitor<DepthVisitor, true, true> {
    size_t currDepth = 0;
    size_t maxDepth = 0;
    std::vector<size_t> countPerDepth;
    std::vector<size_t> exprCountPerDepth;
    std::vector<size_t> stmtCountPerDepth;
    std::vector<size_t> symCountPerDepth;

    template<typename T>
    void handle(const T& t) {
        if(currDepth > maxDepth) {
            maxDepth = currDepth;
        }
        while(countPerDepth.size() <= currDepth) {
            countPerDepth.push_back(0);
            exprCountPerDepth.push_back(0);
            stmtCountPerDepth.push_back(0);
            symCountPerDepth.push_back(0);
        }

        countPerDepth[currDepth]++;

        if constexpr (std::is_base_of_v<Statement, T>) {
            stmtCountPerDepth[currDepth]++;
        }
        else if constexpr (std::is_base_of_v<Expression, T>) {
            exprCountPerDepth[currDepth]++;
        }
        else if constexpr (std::is_base_of_v<Symbol, T>) {
            symCountPerDepth[currDepth]++;
        }
        currDepth++;
        visitDefault(t);
        currDepth--;
    }
};

void Scanner::getAstDepth() {
    DepthVisitor depth;
    root.visit(depth);
    std::cout << "height: " << depth.maxDepth << std::endl;
    for(size_t i = 0; i < depth.countPerDepth.size(); i++) {
        std::cout 
        << fmt::format("depth: {}, count: {}, stmt count: {}, expr count: {}, symbol count: {}\n", 
        i, 
        depth.countPerDepth[i], 
        depth.stmtCountPerDepth[i], 
        depth.exprCountPerDepth[i], 
        depth.symCountPerDepth[i]);
    }

    std::ofstream resFile;
    resFile.open ("results.csv");
    resFile << "Depth,Total,Statements,Expressions,Symbols\n";
    for(size_t i = 0; i < depth.countPerDepth.size(); i++) {
        resFile
        << fmt::format("{},{},{},{},{}\n", 
        i, 
        depth.countPerDepth[i], 
        depth.stmtCountPerDepth[i], 
        depth.exprCountPerDepth[i], 
        depth.symCountPerDepth[i]);
    }
    resFile.close();
    }

void Scanner::clusterAssignments() {
    // some bookkeeping variables to be able to redirect to clusters
    std::unordered_map<const AssignmentExpression*, AssignExprSet*> hist;
    clusteredAssignments.reserve(allAssignments.size());

    // we stop at the second last element
    for(size_t i = 0; i < allAssignments.size()-1; i++) {
        AssignExprSet cluster;
        cluster.insert(allAssignments[i]);

        for(size_t j = i+1; j < allAssignments.size(); j++) {
            if(assignmentLhsAreSimilar(&allAssignments[i]->left(), &allAssignments[j]->left())) {
                // if that assignment is already in a cluster, just redirect to the existing cluster
                // note: this is more "conservative" as assignments with up to 2 times our "metric" may be clustered together
                if(hist.find(allAssignments[i]) != hist.end()) {
                    hist[allAssignments[i]]->insert(allAssignments[j]);
                }
                else {
                    cluster.insert(allAssignments[j]);
                }
            }
        }
        // if we have more than 1 element (itself) then add a new cluster
        if(cluster.size() > 1) {
            clusteredAssignments.push_back(cluster);
            for(auto expr : cluster) {
                hist[expr] = &clusteredAssignments.back();
            }
        }
    }
    clusteredAssignments.shrink_to_fit();
}

// it probably makes sense to handle these in seperate functions in the future
// mainly so we can tweat the "similarity factor" depending on the expression kind
bool Scanner::assignmentLhsAreSimilar(const Expression* tree1, const Expression* tree2) {
    // first check node kinds
    if(tree1->kind != tree2->kind) {
        return false;
    }
    // now enumerate the possible expression kinds
    switch (tree1->kind)
    {
    case ExpressionKind::IntegerLiteral:
        // check value and size
        return 
            tree1->as<IntegerLiteral>().getValue() == tree2->as<IntegerLiteral>().getValue()
            && tree1->as<IntegerLiteral>().getEffectiveWidthImpl() == tree2->as<IntegerLiteral>().getEffectiveWidthImpl();
    break;
    // TODO: how can we tweak this?
    case ExpressionKind::NamedValue: {
        auto sym1 = &tree1->as<NamedValueExpression>().symbol;
        auto sym2 = &tree2->as<NamedValueExpression>().symbol;
        if(sym1->kind != sym2->kind) {
            return false;
        }
        auto dist = levenshteinDistance(sym1->name, sym2->name);
        if(dist > 2  || dist == 0) {
            return false;
        }
        return true;
    }
    break;
    case ExpressionKind::ElementSelect:
        return 
            assignmentLhsAreSimilar(&tree1->as<ElementSelectExpression>().value(), &tree2->as<ElementSelectExpression>().value())
            && assignmentLhsAreSimilar(&tree1->as<ElementSelectExpression>().selector(), &tree2->as<ElementSelectExpression>().selector());
    break;
    case ExpressionKind::RangeSelect:
        return 
            assignmentLhsAreSimilar(&tree1->as<RangeSelectExpression>().value(), &tree2->as<RangeSelectExpression>().value())
            && assignmentLhsAreSimilar(&tree1->as<RangeSelectExpression>().left(), &tree2->as<RangeSelectExpression>().left())
            && assignmentLhsAreSimilar(&tree1->as<RangeSelectExpression>().right(), &tree2->as<RangeSelectExpression>().right());
    break;
    case ExpressionKind::Replication:
        return 
            assignmentLhsAreSimilar(&tree1->as<ReplicationExpression>().count(), &tree2->as<ReplicationExpression>().count())
            && assignmentLhsAreSimilar(&tree1->as<ReplicationExpression>().concat(), &tree2->as<ReplicationExpression>().concat());
    break;
    case ExpressionKind::Concatenation: {
        bool res = true;
        if(tree1->as<ConcatenationExpression>().operands().size() != tree2->as<ConcatenationExpression>().operands().size()) {
            return false;
        }
        for(size_t i = 0; i < tree1->as<ConcatenationExpression>().operands().size(); i++) {
            if(!res) return false; // stop checking if we already know they aren't the same
            res = res 
            & assignmentLhsAreSimilar(tree1->as<ConcatenationExpression>().operands()[i], tree2->as<ConcatenationExpression>().operands()[i]);
        }
        return res;
    }
    break;
    // case ExpressionKind::Assignment:
    //     return true;
    // break;
    // TODO: think about how this is handled...
    // case ExpressionKind::ConditionalOp:
    //     return true;
    // break;
    // case ExpressionKind::UnaryOp:
    //     if(tree1->as<UnaryExpression>().op != tree2->as<UnaryExpression>().op) {
    //         return false;
    //     }
    //     else {
    //         return lhsAreSimilar(&(tree1->as<UnaryExpression>().operand()), &(tree2->as<UnaryExpression>().operand()));
    //     }
    // break;
    // case ExpressionKind::BinaryOp:
    //     if(tree1->as<BinaryExpression>().op != tree2->as<BinaryExpression>().op) {
    //         return false;
    //     }
    //     else {
    //         return 
    //             lhsAreSimilar(&(tree1->as<BinaryExpression>().left()), &(tree2->as<BinaryExpression>().left()))
    //             && lhsAreSimilar(&(tree1->as<BinaryExpression>().right()), &(tree2->as<BinaryExpression>().right()));
    //     }
    // break;
    // case ExpressionKind::Conversion:
    //     return 
    //         tree1->as<ConversionExpression>().conversionKind == tree2->as<ConversionExpression>().conversionKind
    //         && lhsAreSimilar(&tree1->as<ConversionExpression>().operand(), &tree2->as<ConversionExpression>().operand());
    // break;
    // case ExpressionKind::
    default:
        std::cerr << "unsupported expression kind: " 
        << tree1->kind << "; returning true\n";
        return true;
    break;
    }
}

// from https://en.wikibooks.org/wiki/Algorithm_Implementation/Strings/Levenshtein_distance#C++
template<typename T>
typename T::size_type Scanner::levenshteinDistance(const T &source, const T &target) {
    if (source.size() > target.size()) {
        return levenshteinDistance(target, source);
    }

    using TSizeType = typename T::size_type;
    const TSizeType min_size = source.size(), max_size = target.size();
    std::vector<TSizeType> lev_dist(min_size + 1);

    for (TSizeType i = 0; i <= min_size; ++i) {
        lev_dist[i] = i;
    }

    for (TSizeType j = 1; j <= max_size; ++j) {
        TSizeType previous_diagonal = lev_dist[0], previous_diagonal_save;
        ++lev_dist[0];

        for (TSizeType i = 1; i <= min_size; ++i) {
            previous_diagonal_save = lev_dist[i];
            if (source[i - 1] == target[j - 1]) {
                lev_dist[i] = previous_diagonal;
            } else {
                lev_dist[i] = std::min(std::min(lev_dist[i - 1], lev_dist[i]), previous_diagonal) + 1;
            }
            previous_diagonal = previous_diagonal_save;
        }
    }

    return lev_dist[min_size];
}

void Scanner::refineClusters() {
  // check 1: depth from modEnd
    for(auto & cluster : clusteredAssignments) {
        // first get the depths of each assignment
        std::unordered_map<int, const AssignmentExpression*> depthFromModStart;
        for(auto & assignExpr : cluster) {
            depthFromModStart[getDepthFromEnd(assignExpr)] = assignExpr;
        }
        /* compare depths */
        // currently we filter out anything that is not the most common depth
        // but we could probably (and should) split up the cluster by depths

        // 1. get counts of each depth value
        // use memoization to get o(n) time complexity
        // {depth: count}
        std::unordered_map<int, int> depthCount;
        int mostCommonDepth;
        int maxCount = 0;
        for(auto & depth: depthFromModStart) {
            depthCount[depth.first]++;
        }
        // extract most common depth
        for(auto & count : depthCount) {
            if(count.second > maxCount) {
                mostCommonDepth = count.first;
            }
        }
        // 2. second iterate over the map to find assignment expressions to remove
        for(auto & depth : depthFromModStart) {
            // look for max distance of 1
            if(abs(depth.first-mostCommonDepth) > 1) {
                cluster.erase(depth.second);
            }
        }
    }
}

// breadth first search algorithm from modEnd
int Scanner::getDepthFromEnd(const AssignmentExpression* assignExpr) {
    std::queue<std::shared_ptr<CfgNode>> jobQ;
    std::unordered_set<std::shared_ptr<CfgNode>> visited;
    jobQ.push(cfg.modStart->end);

    while(jobQ.size() > 0) {
        auto currNode = jobQ.front();
        jobQ.pop();
        visited.insert(currNode);

        if(std::find(currNode->assignmentsInBasicBlock.begin(), currNode->assignmentsInBasicBlock.end(), assignExpr) != currNode->assignmentsInBasicBlock.end()) {
            return currNode->shortestPathFromEnd;
        }

        for(auto & successor : currNode->predecessors) {
            if(visited.find(successor) == visited.end()) {
                jobQ.push(successor);
            }
        }
    }

    throw std::invalid_argument(fmt::format("Could not find assignment expression {}", assignExpr->syntax->toString()));
}

// void Scanner::validateClusteredAssignments() {
//     for(auto & cluster : clusteredAssignments) {
//         Expression* exprs[cluster.size()];
//     }
// }