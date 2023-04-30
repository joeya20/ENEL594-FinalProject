// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vconditionals_case.h for the primary calling header

#include "Vconditionals_case___024root.h"
#include "Vconditionals_case__Syms.h"

//==========


void Vconditionals_case___024root___ctor_var_reset(Vconditionals_case___024root* vlSelf);

Vconditionals_case___024root::Vconditionals_case___024root(const char* _vcname__)
    : VerilatedModule(_vcname__)
 {
    // Reset structure values
    Vconditionals_case___024root___ctor_var_reset(this);
}

void Vconditionals_case___024root::__Vconfigure(Vconditionals_case__Syms* _vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->vlSymsp = _vlSymsp;
}

Vconditionals_case___024root::~Vconditionals_case___024root() {
}

void Vconditionals_case___024root___eval_initial(Vconditionals_case___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vconditionals_case__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vconditionals_case___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vclklast__TOP__clk = vlSelf->clk;
}

void Vconditionals_case___024root___settle__TOP__2(Vconditionals_case___024root* vlSelf);

void Vconditionals_case___024root___eval_settle(Vconditionals_case___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vconditionals_case__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vconditionals_case___024root___eval_settle\n"); );
    // Body
    Vconditionals_case___024root___settle__TOP__2(vlSelf);
}

void Vconditionals_case___024root___final(Vconditionals_case___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vconditionals_case__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vconditionals_case___024root___final\n"); );
}

void Vconditionals_case___024root___ctor_var_reset(Vconditionals_case___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vconditionals_case__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vconditionals_case___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->reset_n = VL_RAND_RESET_I(1);
    vlSelf->en = VL_RAND_RESET_I(1);
    vlSelf->data = VL_RAND_RESET_I(8);
    vlSelf->out_always_case = VL_RAND_RESET_I(8);
    vlSelf->conds__DOT__temp = VL_RAND_RESET_I(8);
}
