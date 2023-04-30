// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vhier.h for the primary calling header

#ifndef VERILATED_VHIER___024ROOT_H_
#define VERILATED_VHIER___024ROOT_H_  // guard

#include "verilated_heavy.h"

//==========

class Vhier__Syms;

//----------

VL_MODULE(Vhier___024root) {
  public:

    // PORTS
    VL_IN8(clk,0,0);
    VL_IN8(rst_n,0,0);
    VL_IN8(cfg,2,0);
    VL_IN8(wd,7,0);
    VL_OUT8(out,7,0);

    // LOCAL SIGNALS
    CData/*2:0*/ ctrl__DOT__cfg_reg = 1U;
    CData/*7:0*/ ctrl__DOT__secure_reg_u0__DOT__data;

    // LOCAL VARIABLES
    CData/*0:0*/ __Vclklast__TOP__clk;

    // INTERNAL VARIABLES
    Vhier__Syms* vlSymsp;  // Symbol table

    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(Vhier___024root);  ///< Copying not allowed
  public:
    Vhier___024root(const char* name);
    ~Vhier___024root();

    // INTERNAL METHODS
    void __Vconfigure(Vhier__Syms* symsp, bool first);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
