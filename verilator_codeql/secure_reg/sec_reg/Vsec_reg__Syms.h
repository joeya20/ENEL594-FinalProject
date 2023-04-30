// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VSEC_REG__SYMS_H_
#define VERILATED_VSEC_REG__SYMS_H_  // guard

#include "verilated_heavy.h"

// INCLUDE MODEL CLASS

#include "Vsec_reg.h"

// INCLUDE MODULE CLASSES
#include "Vsec_reg___024root.h"

// SYMS CLASS (contains all model state)
class Vsec_reg__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    Vsec_reg* const __Vm_modelp;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    Vsec_reg___024root             TOP;

    // CONSTRUCTORS
    Vsec_reg__Syms(VerilatedContext* contextp, const char* namep, Vsec_reg* modelp);
    ~Vsec_reg__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
