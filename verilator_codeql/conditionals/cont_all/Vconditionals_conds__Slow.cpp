// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vconditionals.h for the primary calling header

#include "Vconditionals_conds.h"
#include "Vconditionals__Syms.h"

//==========


void Vconditionals_conds___ctor_var_reset(Vconditionals_conds* vlSelf);

Vconditionals_conds::Vconditionals_conds(const char* _vcname__)
    : VerilatedModule(_vcname__)
 {
    // Reset structure values
    Vconditionals_conds___ctor_var_reset(this);
}

void Vconditionals_conds::__Vconfigure(Vconditionals__Syms* _vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->vlSymsp = _vlSymsp;
}

Vconditionals_conds::~Vconditionals_conds() {
}

void Vconditionals_conds___settle__TOP__conds__1(Vconditionals_conds* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vconditionals__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+  Vconditionals_conds___settle__TOP__conds__1\n"); );
    // Body
    vlSelf->out_assign_ternary = ((IData)(vlSelf->en)
                                   ? (IData)(vlSelf->__PVT__temp)
                                   : 0U);
    vlSelf->out_always_case = ((IData)(vlSelf->en) ? (IData)(vlSelf->__PVT__temp)
                                : 0U);
    vlSelf->out_always_ifelse = ((IData)(vlSelf->en)
                                  ? (IData)(vlSelf->__PVT__temp)
                                  : 0U);
}

void Vconditionals_conds___ctor_var_reset(Vconditionals_conds* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vconditionals__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+  Vconditionals_conds___ctor_var_reset\n"); );
    // Body
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->reset_n = VL_RAND_RESET_I(1);
    vlSelf->en = VL_RAND_RESET_I(1);
    vlSelf->data = VL_RAND_RESET_I(8);
    vlSelf->out_assign_ternary = VL_RAND_RESET_I(8);
    vlSelf->out_always_ternary = VL_RAND_RESET_I(8);
    vlSelf->out_always_ifelse = VL_RAND_RESET_I(8);
    vlSelf->out_always_case = VL_RAND_RESET_I(8);
    vlSelf->__PVT__temp = VL_RAND_RESET_I(8);
    vlSelf->__Vdly__temp = VL_RAND_RESET_I(8);
}
