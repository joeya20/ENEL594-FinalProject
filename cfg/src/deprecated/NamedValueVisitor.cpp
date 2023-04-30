#include "NamedValueVisitor.hpp"

NamedValueVisitor::NamedValueVisitor(
    std::array<std::unordered_map<const ast::Symbol*, std::unordered_set<std::shared_ptr<CfgNode>>>, 3>& symTabs,
    std::vector<std::shared_ptr<CfgNode>>& procRoots,
    const ast::Symbol* &res,
    int& symTabIndex
    ) : symTabs(symTabs), procRoots(procRoots), res(res), symTabIndex(symTabIndex) {}

void NamedValueVisitor::handle(const ast::NamedValueExpression& namedValExpr) {
    if(namedValExpr.symbol.kind == ast::SymbolKind::Variable ||
    namedValExpr.symbol.kind == ast::SymbolKind::Net) {
        symTabs[symTabIndex][&(namedValExpr.symbol)].insert(procRoots.back());
        if(symTabIndex == 0) {
            procRoots.back()->readVars.insert(&(namedValExpr.symbol));
        }
        else if (symTabIndex == 1){
            procRoots.back()->writeVars.insert(&(namedValExpr.symbol));
        }
        else if(symTabIndex == 2){            
            procRoots.back()->sensList.insert(&(namedValExpr.symbol));
        }
        res = &(namedValExpr.symbol);
    }
    // else if(namedValExpr.symbol.kind == ast::SymbolKind::)
    // else {
    //     std::cerr << "unknown NamedValueKind" << std::endl;
    // }
}

void NamedValueVisitor::handle(const ast::ConditionalExpression& condExpr) {
    std::cout << "here" << std::endl;
    std::cout << condExpr.syntax->toString() << std::endl;
    for(auto & cond : condExpr.conditions) {
        std::cout << "cond: " << cond.expr->syntax->toString() << std::endl;
    }
    std::cout << "left: " << condExpr.left().syntax->toString() << std::endl;
    std::cout << "right: " << condExpr.right().syntax->toString() << std::endl;
    visitDefault(condExpr);
}