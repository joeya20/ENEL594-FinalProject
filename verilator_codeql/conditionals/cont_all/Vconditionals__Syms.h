// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VCONDITIONALS__SYMS_H_
#define VERILATED_VCONDITIONALS__SYMS_H_  // guard

#include "verilated_heavy.h"

// INCLUDE MODEL CLASS

#include "Vconditionals.h"

// INCLUDE MODULE CLASSES
#include "Vconditionals___024root.h"

// SYMS CLASS (contains all model state)
class Vconditionals__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    Vconditionals* const __Vm_modelp;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    Vconditionals___024root        TOP;

    // CONSTRUCTORS
    Vconditionals__Syms(VerilatedContext* contextp, const char* namep, Vconditionals* modelp);
    ~Vconditionals__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
