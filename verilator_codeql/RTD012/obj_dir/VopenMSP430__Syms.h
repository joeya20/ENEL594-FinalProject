// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VOPENMSP430__SYMS_H_
#define VERILATED_VOPENMSP430__SYMS_H_  // guard

#include "verilated_heavy.h"

// INCLUDE MODEL CLASS

#include "VopenMSP430.h"

// INCLUDE MODULE CLASSES
#include "VopenMSP430___024root.h"

// SYMS CLASS (contains all model state)
class VopenMSP430__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    VopenMSP430* const __Vm_modelp;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    VopenMSP430___024root          TOP;

    // CONSTRUCTORS
    VopenMSP430__Syms(VerilatedContext* contextp, const char* namep, VopenMSP430* modelp);
    ~VopenMSP430__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
