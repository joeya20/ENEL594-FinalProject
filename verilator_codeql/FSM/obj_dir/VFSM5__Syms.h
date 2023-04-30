// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VFSM5__SYMS_H_
#define VERILATED_VFSM5__SYMS_H_  // guard

#include "verilated_heavy.h"

// INCLUDE MODEL CLASS

#include "VFSM5.h"

// INCLUDE MODULE CLASSES
#include "VFSM5___024root.h"

// SYMS CLASS (contains all model state)
class VFSM5__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    VFSM5* const __Vm_modelp;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    VFSM5___024root                TOP;

    // CONSTRUCTORS
    VFSM5__Syms(VerilatedContext* contextp, const char* namep, VFSM5* modelp);
    ~VFSM5__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
