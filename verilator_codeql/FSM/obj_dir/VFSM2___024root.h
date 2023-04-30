// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VFSM2.h for the primary calling header

#ifndef VERILATED_VFSM2___024ROOT_H_
#define VERILATED_VFSM2___024ROOT_H_  // guard

#include "verilated_heavy.h"

//==========

class VFSM2__Syms;

//----------

VL_MODULE(VFSM2___024root) {
  public:

    // PORTS
    VL_IN8(rst_n,0,0);
    VL_IN8(clk,0,0);
    VL_OUT8(out,1,0);

    // LOCAL SIGNALS
    CData/*1:0*/ buggy_FSM__DOT__current_state;

    // LOCAL VARIABLES
    CData/*0:0*/ __Vclklast__TOP__clk;
    CData/*0:0*/ __Vclklast__TOP__rst_n;

    // INTERNAL VARIABLES
    VFSM2__Syms* vlSymsp;  // Symbol table

    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(VFSM2___024root);  ///< Copying not allowed
  public:
    VFSM2___024root(const char* name);
    ~VFSM2___024root();

    // INTERNAL METHODS
    void __Vconfigure(VFSM2__Syms* symsp, bool first);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
