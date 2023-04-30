#include "main.hpp"
#include "slang/diagnostics/DiagnosticClient.h"
#include "slang/diagnostics/DiagnosticEngine.h"
#include "slang/diagnostics/TextDiagnosticClient.h"
#include "slang/text/SourceManager.h"
#include "span.hpp"
#include <string_view>
#include <filesystem>
#include "Scanner.hpp"

using namespace slang::syntax;
using namespace slang::ast;
namespace fs = std::filesystem;

int main(int argc, char const *argv[]) {
  Compilation compilation;
  std::vector<std::string> fileVec;
  for (int i = 1; i < argc; ++i) {
    auto inputFile = argv[i];
    if (fs::exists(inputFile)) {
      if (fs::is_directory(inputFile)) {
        for (const auto &entry : fs::directory_iterator(inputFile)) {
          if (entry.path().extension().string() == ".sv"  ||
              entry.path().extension().string() == ".svh" ||
              entry.path().extension().string() == ".v"   ||
              entry.path().extension().string() == ".vh") {
            fileVec.push_back(entry.path().string());
          }
        }
      } else {
        fileVec.push_back(inputFile);
      }
    } else {
      std::cerr << "input file " << inputFile << " does not exist, ignoring..."
                << std::endl;
    }
  }
  std::vector<std::string_view> fileSVVec;
  for(auto & file : fileVec) {
    fileSVVec.push_back(file);
  }
  span<const std::string_view> finalList = fileSVVec;
  for(auto & entry : finalList) {
    std::cout << entry << std::endl;
  }
  auto tree = SyntaxTree::fromFiles(finalList);
  compilation.addSyntaxTree(tree);
  compilation.getRoot();
  auto &diags = compilation.getAllDiagnostics();
  DiagnosticEngine diagEngine(*compilation.getSourceManager());
  auto client = std::make_shared<TextDiagnosticClient>();
  diagEngine.addClient(client);

  for (const Diagnostic &diag : diags) {
    diagEngine.issue(diag);
  }

  std::string report = client->getString();
  std::cerr << report << std::endl;
  std::cerr << "here" << std::endl;
  Cfg cfg(compilation.getRoot());
  cfg.makeCfg();
  std::cerr << "here" << std::endl;
  // cfg.scan();
  cfg.toDot("cfg.dot");
  cfg.getStats();
  Scanner scanner(compilation.getRoot(), cfg);
  scanner.getAstNodeCount();
  scanner.getAstDepth();
  // scanner.gatherAssignments();
  // for(auto & assignment : scanner.allAssignments) {
  //   if(assignment->syntax != nullptr) {
  //     std::cout << "assignment: " << assignment->syntax->toString() << "\n";
  //   }
  //   else {
  //     std::cout << "implicit assignment\n";
  //   }
  // }
  scanner.clusterAssignments();
  for(size_t i = 0; i < scanner.clusteredAssignments.size(); i++) {
    std::cout << "cluster: " << i+1 << "\n";
    for(auto & a : scanner.clusteredAssignments[i]) {
    std::cout << "assignment: " << a->syntax->toString() << "\n";
    }
  }
  // now do CFG check
  scanner.refineClusters();
  for(size_t i = 0; i < scanner.clusteredAssignments.size(); i++) {
    std::cout << "cluster: " << i+1 << "\n";
    for(auto & a : scanner.clusteredAssignments[i]) {
    std::cout << "assignment: " << a->syntax->toString() << "\n";
    }
  }
  
  // compilation.getRoot().visit(slang::ast::makeVisitor(
  //     [&](const slang::ast::PortSymbol& t) {
  //         if(t.direction == ast::ArgumentDirection::In) {
  //             if(t.internalSymbol == nullptr) {
  //                 std::cerr << "port does not have internal symbol: " <<
  //                 t.name << std::endl; exit(EXIT_FAILURE);
  //             }
  //             inputPorts.push_back(t.internalSymbol);
  //         }
  //         else if(t.direction == ast::ArgumentDirection::Out) {
  //             if(t.internalSymbol == nullptr) {
  //                 std::cerr << "port does not have internal symbol: " <<
  //                 t.name << std::endl; exit(EXIT_FAILURE);
  //             }
  //             outputPorts.push_back(t.internalSymbol);
  //         }
  //     }
  // ));

  return 0;
}