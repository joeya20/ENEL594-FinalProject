// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vctrl.h for the primary calling header

#ifndef VERILATED_VCTRL___024ROOT_H_
#define VERILATED_VCTRL___024ROOT_H_  // guard

#include "verilated_heavy.h"

//==========

class Vctrl__Syms;

//----------

VL_MODULE(Vctrl___024root) {
  public:

    // PORTS
    VL_IN8(clk,0,0);
    VL_IN8(rst_n,0,0);
    VL_IN8(cfg,2,0);
    VL_IN8(wd,7,0);
    VL_OUT8(out,7,0);

    // LOCAL SIGNALS
    CData/*2:0*/ ctrl__DOT__cfg_reg;
    CData/*7:0*/ ctrl__DOT__secure_reg_u0__DOT__data;
    CData/*7:0*/ ctrl__DOT__secure_reg_u1__DOT__data;
    CData/*7:0*/ ctrl__DOT__secure_reg_u2__DOT__data;

    // LOCAL VARIABLES
    CData/*0:0*/ __Vclklast__TOP__clk;

    // INTERNAL VARIABLES
    Vctrl__Syms* vlSymsp;  // Symbol table

    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(Vctrl___024root);  ///< Copying not allowed
  public:
    Vctrl___024root(const char* name);
    ~Vctrl___024root();

    // INTERNAL METHODS
    void __Vconfigure(Vctrl__Syms* symsp, bool first);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
