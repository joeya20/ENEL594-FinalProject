CXX := g++
CXXFLAGS := -Wall -std=c++17
LDFLAGS := -lsvlang -lfmt -I/home/joey/Desktop/cdfg/include

BUILD_DIR := build
SRC_DIR := src
BIN_DIR := bin
INC_DIR := include

# DEPS :=  $(SRC_DIR)/ProcBlockVisitor.hpp $(SRC_DIR)/StmtVisitor.hpp $(SRC_DIR)/NamedValueVisitor.hpp $(SRC_DIR)/SensListVisitor.hpp 

$(BIN_DIR)/cdfg: $(BUILD_DIR)/util.o $(BUILD_DIR)/CfgNode.o $(BUILD_DIR)/CfgConstructor.o $(BUILD_DIR)/Cfg.o $(BUILD_DIR)/Scanner.o $(SRC_DIR)/main.cpp $(SRC_DIR)/main.cpp
	$(CXX) $(CXXFLAGS) -o $@ $^ $(LDFLAGS)

$(BUILD_DIR)/Scanner.o: $(SRC_DIR)/Scanner.cpp $(SRC_DIR)/Scanner.hpp
	$(CXX) $(CXXFLAGS) -o $@ -c $< $(LDFLAGS)

$(BUILD_DIR)/CfgConstructor.o: $(SRC_DIR)/CfgConstructor.cpp $(SRC_DIR)/CfgConstructor.hpp
	$(CXX) $(CXXFLAGS) -o $@ -c $< $(LDFLAGS)

$(BUILD_DIR)/Cfg.o: $(SRC_DIR)/Cfg.cpp $(SRC_DIR)/Cfg.hpp $(DEPS)
	$(CXX) $(CXXFLAGS) -o $@ -c $< $(LDFLAGS)

$(BUILD_DIR)/CfgNode.o: $(SRC_DIR)/CfgNode.cpp $(SRC_DIR)/CfgNode.hpp $(DEPS)
	$(CXX) $(CXXFLAGS) -o $@ -c $< $(LDFLAGS)

$(BUILD_DIR)/util.o: $(SRC_DIR)/util.cpp $(SRC_DIR)/util.hpp $(DEPS)
	$(CXX) $(CXXFLAGS) -o $@ -c $< $(LDFLAGS)

$(BUILD_DIR)/ProcBlockVisitor.o: $(SRC_DIR)/ProcBlockVisitor.cpp $(SRC_DIR)/ProcBlockVisitor.hpp $(DEPS)
	$(CXX) $(CXXFLAGS) -o $@ -c $< $(LDFLAGS)

$(BUILD_DIR)/StmtVisitor.o: $(SRC_DIR)/StmtVisitor.cpp $(SRC_DIR)/StmtVisitor.hpp $(DEPS)
	$(CXX) $(CXXFLAGS) -o $@ -c $< $(LDFLAGS)

$(BUILD_DIR)/NamedValueVisitor.o: $(SRC_DIR)/NamedValueVisitor.cpp $(SRC_DIR)/NamedValueVisitor.hpp $(DEPS)
	$(CXX) $(CXXFLAGS) -o $@ -c $< $(LDFLAGS)

.PHONY: clean
clean:
	-rm $(BIN_DIR)/cdfg $(BUILD_DIR)/*.o