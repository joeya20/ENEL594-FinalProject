// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vconditionals.h for the primary calling header

#ifndef VERILATED_VCONDITIONALS_CONDS_H_
#define VERILATED_VCONDITIONALS_CONDS_H_  // guard

#include "verilated_heavy.h"

//==========

class Vconditionals__Syms;

//----------

VL_MODULE(Vconditionals_conds) {
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
    CData/*7:0*/ __PVT__temp;

    // LOCAL VARIABLES
    CData/*7:0*/ __Vdly__temp;

    // INTERNAL VARIABLES
    Vconditionals__Syms* vlSymsp;  // Symbol table

    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(Vconditionals_conds);  ///< Copying not allowed
  public:
    Vconditionals_conds(const char* name);
    ~Vconditionals_conds();

    // INTERNAL METHODS
    void __Vconfigure(Vconditionals__Syms* symsp, bool first);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
