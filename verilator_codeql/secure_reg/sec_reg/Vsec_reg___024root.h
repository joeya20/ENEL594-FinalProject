// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vsec_reg.h for the primary calling header

#ifndef VERILATED_VSEC_REG___024ROOT_H_
#define VERILATED_VSEC_REG___024ROOT_H_  // guard

#include "verilated_heavy.h"

//==========

class Vsec_reg__Syms;

//----------

VL_MODULE(Vsec_reg___024root) {
  public:

    // PORTS
    VL_IN8(clk,0,0);
    VL_IN8(reset_n,0,0);
    VL_IN8(lock_i,0,0);
    VL_IN8(re_i,0,0);
    VL_IN8(we_i,0,0);
    VL_IN8(data_i,7,0);
    VL_OUT8(out_o,7,0);

    // LOCAL SIGNALS
    CData/*7:0*/ sec_reg__DOT__data;
    CData/*2:0*/ sec_reg__DOT__cfg;

    // LOCAL VARIABLES
    CData/*0:0*/ __Vclklast__TOP__clk;
    CData/*0:0*/ __Vclklast__TOP__reset_n;

    // INTERNAL VARIABLES
    Vsec_reg__Syms* vlSymsp;  // Symbol table

    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(Vsec_reg___024root);  ///< Copying not allowed
  public:
    Vsec_reg___024root(const char* name);
    ~Vsec_reg___024root();

    // INTERNAL METHODS
    void __Vconfigure(Vsec_reg__Syms* symsp, bool first);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
