// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vconditionals_ifelse.h for the primary calling header

#ifndef VERILATED_VCONDITIONALS_IFELSE___024ROOT_H_
#define VERILATED_VCONDITIONALS_IFELSE___024ROOT_H_  // guard

#include "verilated_heavy.h"

//==========

class Vconditionals_ifelse__Syms;

//----------

VL_MODULE(Vconditionals_ifelse___024root) {
  public:

    // PORTS
    VL_IN8(clk,0,0);
    VL_IN8(reset_n,0,0);
    VL_IN8(en,0,0);
    VL_IN8(data,7,0);
    VL_OUT8(out_always_ifelse,7,0);

    // LOCAL SIGNALS
    CData/*7:0*/ conds__DOT__temp;

    // LOCAL VARIABLES
    CData/*0:0*/ __Vclklast__TOP__clk;

    // INTERNAL VARIABLES
    Vconditionals_ifelse__Syms* vlSymsp;  // Symbol table

    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(Vconditionals_ifelse___024root);  ///< Copying not allowed
  public:
    Vconditionals_ifelse___024root(const char* name);
    ~Vconditionals_ifelse___024root();

    // INTERNAL METHODS
    void __Vconfigure(Vconditionals_ifelse__Syms* symsp, bool first);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
