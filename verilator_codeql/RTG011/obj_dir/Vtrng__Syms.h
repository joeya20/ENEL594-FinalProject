// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VTRNG__SYMS_H_
#define VERILATED_VTRNG__SYMS_H_  // guard

#include "verilated_heavy.h"

// INCLUDE MODEL CLASS

#include "Vtrng.h"

// INCLUDE MODULE CLASSES
#include "Vtrng___024root.h"

// SYMS CLASS (contains all model state)
class Vtrng__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    Vtrng* const __Vm_modelp;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    Vtrng___024root                TOP;

    // CONSTRUCTORS
    Vtrng__Syms(VerilatedContext* contextp, const char* namep, Vtrng* modelp);
    ~Vtrng__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
