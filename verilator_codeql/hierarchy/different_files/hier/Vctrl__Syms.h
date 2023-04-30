// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VCTRL__SYMS_H_
#define VERILATED_VCTRL__SYMS_H_  // guard

#include "verilated_heavy.h"

// INCLUDE MODEL CLASS

#include "Vctrl.h"

// INCLUDE MODULE CLASSES
#include "Vctrl___024root.h"

// SYMS CLASS (contains all model state)
class Vctrl__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    Vctrl* const __Vm_modelp;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    Vctrl___024root                TOP;

    // CONSTRUCTORS
    Vctrl__Syms(VerilatedContext* contextp, const char* namep, Vctrl* modelp);
    ~Vctrl__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
