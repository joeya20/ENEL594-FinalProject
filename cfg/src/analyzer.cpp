#include <filesystem>
#include <slang/syntax/AllSyntax.h>
#include <fmt/core.h>
#include <iostream>
#include <stdlib.h>

namespace fs = std::filesystem;

struct FileStat {
    const std::string path;
    int LoC;
    int numOfNodes;
    int numofExprs;
    int numofStmts;
    int numofSymbols;
    int depthOfAst;
};

std::vector<FileStat> results;

void analyzeFile(const std::string& filePath) {

}

int main(int argc, char* argv[]) {
    if(argc != 2) {
        std::cerr << "invalid number of input arguments. Exiting...\n";
        return EXIT_FAILURE;
    }
    if(fs::exists(argv[1]) && fs::is_directory(argv[1])) {
        std::vector<std::string> dirs { argv[1] };

        while(dirs.size() > 0) {
            auto currDir = dirs.back();
            dirs.pop_back();
            
            fs::path inputPath {  argv[1] };

            for(auto & dirEntry : fs::directory_iterator{ inputPath }) {
                if(dirEntry.is_directory()) {
                    dirs.push_back(dirEntry.path().string());
                }
                else if(dirEntry.is_regular_file() && 
                (dirEntry.path().extension() == ".sv" ||
                dirEntry.path().extension() == ".svh" ||
                dirEntry.path().extension() == ".sva" ||
                dirEntry.path().extension() == ".v" ||
                dirEntry.path().extension() == ".vh")) {
                    // process file
                    analyzeFile(dirEntry.path());
                }
            }
        }
    }
}