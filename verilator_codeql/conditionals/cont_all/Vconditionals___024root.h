// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vconditionals.h for the primary calling header

#ifndef VERILATED_VCONDITIONALS___024ROOT_H_
#define VERILATED_VCONDITIONALS___024ROOT_H_  // guard

#include "verilated_heavy.h"

//==========

class Vconditionals__Syms;

//----------

VL_MODULE(Vconditionals___024root) {
  public:

    // PORTS
    VL_IN8(clk,0,0);
    VL_IN8(reset_n,0,0);
    VL_IN8(en,0,0);
    VL_IN8(data,7,0);
    VL_OUT8(out_assign_ternary,7,0);
    VL_OUT8(out_always_ternary,7,0);
    VL_OUT8(out_always_ifelse,7,0);
    VL_OUT8(out_always_case,7,0);

    // LOCAL SIGNALS
    CData/*7:0*/ conds__DOT__temp;

    // LOCAL VARIABLES
    CData/*0:0*/ __Vclklast__TOP__clk;

    // INTERNAL VARIABLES
    Vconditionals__Syms* vlSymsp;  // Symbol table

    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(Vconditionals___024root);  ///< Copying not allowed
  public:
    Vconditionals___024root(const char* name);
    ~Vconditionals___024root();

    // INTERNAL METHODS
    void __Vconfigure(Vconditionals__Syms* symsp, bool first);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
