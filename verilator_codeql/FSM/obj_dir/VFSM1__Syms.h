// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VFSM1__SYMS_H_
#define VERILATED_VFSM1__SYMS_H_  // guard

#include "verilated_heavy.h"

// INCLUDE MODEL CLASS

#include "VFSM1.h"

// INCLUDE MODULE CLASSES
#include "VFSM1___024root.h"

// SYMS CLASS (contains all model state)
class VFSM1__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    VFSM1* const __Vm_modelp;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    VFSM1___024root                TOP;

    // CONSTRUCTORS
    VFSM1__Syms(VerilatedContext* contextp, const char* namep, VFSM1* modelp);
    ~VFSM1__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
