// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vconditionals.h for the primary calling header

#include "Vconditionals___024root.h"
#include "Vconditionals__Syms.h"

//==========


void Vconditionals___024root___ctor_var_reset(Vconditionals___024root* vlSelf);

Vconditionals___024root::Vconditionals___024root(const char* _vcname__)
    : VerilatedModule(_vcname__)
 {
    // Reset structure values
    Vconditionals___024root___ctor_var_reset(this);
}

void Vconditionals___024root::__Vconfigure(Vconditionals__Syms* _vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->vlSymsp = _vlSymsp;
}

Vconditionals___024root::~Vconditionals___024root() {
}

void Vconditionals___024root___eval_initial(Vconditionals___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vconditionals__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vconditionals___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vclklast__TOP__clk = vlSelf->clk;
}

void Vconditionals___024root___settle__TOP__2(Vconditionals___024root* vlSelf);

void Vconditionals___024root___eval_settle(Vconditionals___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vconditionals__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vconditionals___024root___eval_settle\n"); );
    // Body
    Vconditionals___024root___settle__TOP__2(vlSelf);
}

void Vconditionals___024root___final(Vconditionals___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vconditionals__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vconditionals___024root___final\n"); );
}

void Vconditionals___024root___ctor_var_reset(Vconditionals___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vconditionals__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vconditionals___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->reset_n = VL_RAND_RESET_I(1);
    vlSelf->en = VL_RAND_RESET_I(1);
    vlSelf->data = VL_RAND_RESET_I(8);
    vlSelf->out_assign_ternary = VL_RAND_RESET_I(8);
    vlSelf->out_always_ternary = VL_RAND_RESET_I(8);
    vlSelf->out_always_ifelse = VL_RAND_RESET_I(8);
    vlSelf->out_always_case = VL_RAND_RESET_I(8);
    vlSelf->conds__DOT__temp = VL_RAND_RESET_I(8);
}
