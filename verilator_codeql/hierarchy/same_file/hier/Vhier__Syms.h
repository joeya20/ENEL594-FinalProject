// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VHIER__SYMS_H_
#define VERILATED_VHIER__SYMS_H_  // guard

#include "verilated_heavy.h"

// INCLUDE MODEL CLASS

#include "Vhier.h"

// INCLUDE MODULE CLASSES
#include "Vhier___024root.h"

// SYMS CLASS (contains all model state)
class Vhier__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    Vhier* const __Vm_modelp;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    Vhier___024root                TOP;

    // CONSTRUCTORS
    Vhier__Syms(VerilatedContext* contextp, const char* namep, Vhier* modelp);
    ~Vhier__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
