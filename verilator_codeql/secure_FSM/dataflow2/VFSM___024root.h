// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VFSM.h for the primary calling header

#ifndef VERILATED_VFSM___024ROOT_H_
#define VERILATED_VFSM___024ROOT_H_  // guard

#include "verilated_heavy.h"

//==========

class VFSM__Syms;

//----------

VL_MODULE(VFSM___024root) {
  public:

    // PORTS
    VL_IN8(clk,0,0);
    VL_IN8(rst_n,0,0);
    VL_IN8(secure,0,0);
    VL_OUT8(out,0,0);

    // LOCAL SIGNALS
    CData/*1:0*/ FSM__DOT__current_state;
    CData/*1:0*/ FSM__DOT__ns;
    CData/*0:0*/ FSM__DOT__data;

    // LOCAL VARIABLES
    CData/*0:0*/ __Vclklast__TOP__clk;
    CData/*0:0*/ __Vclklast__TOP__rst_n;

    // INTERNAL VARIABLES
    VFSM__Syms* vlSymsp;  // Symbol table

    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(VFSM___024root);  ///< Copying not allowed
  public:
    VFSM___024root(const char* name);
    ~VFSM___024root();

    // INTERNAL METHODS
    void __Vconfigure(VFSM__Syms* symsp, bool first);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
