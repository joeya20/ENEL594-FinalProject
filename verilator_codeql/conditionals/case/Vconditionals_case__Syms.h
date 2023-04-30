// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VCONDITIONALS_CASE__SYMS_H_
#define VERILATED_VCONDITIONALS_CASE__SYMS_H_  // guard

#include "verilated_heavy.h"

// INCLUDE MODEL CLASS

#include "Vconditionals_case.h"

// INCLUDE MODULE CLASSES
#include "Vconditionals_case___024root.h"

// SYMS CLASS (contains all model state)
class Vconditionals_case__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    Vconditionals_case* const __Vm_modelp;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    Vconditionals_case___024root   TOP;

    // CONSTRUCTORS
    Vconditionals_case__Syms(VerilatedContext* contextp, const char* namep, Vconditionals_case* modelp);
    ~Vconditionals_case__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
