// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VFSM3.h for the primary calling header

#ifndef VERILATED_VFSM3___024ROOT_H_
#define VERILATED_VFSM3___024ROOT_H_  // guard

#include "verilated_heavy.h"

//==========

class VFSM3__Syms;

//----------

VL_MODULE(VFSM3___024root) {
  public:

    // TYPEDEFS
    // That were declared public
    enum buggy_FSM__DOT__state {
        S0 = 0U,
        S1 = 1U,
        S2 = 2U,
        S3 = 3U
    };

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
    VFSM3__Syms* vlSymsp;  // Symbol table

    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(VFSM3___024root);  ///< Copying not allowed
  public:
    VFSM3___024root(const char* name);
    ~VFSM3___024root();

    // INTERNAL METHODS
    void __Vconfigure(VFSM3__Syms* symsp, bool first);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
