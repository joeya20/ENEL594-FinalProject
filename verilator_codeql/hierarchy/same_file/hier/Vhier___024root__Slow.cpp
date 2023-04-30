// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vhier.h for the primary calling header

#include "Vhier___024root.h"
#include "Vhier__Syms.h"

//==========


void Vhier___024root___ctor_var_reset(Vhier___024root* vlSelf);

Vhier___024root::Vhier___024root(const char* _vcname__)
    : VerilatedModule(_vcname__)
 {
    // Reset structure values
    Vhier___024root___ctor_var_reset(this);
}

void Vhier___024root::__Vconfigure(Vhier__Syms* _vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->vlSymsp = _vlSymsp;
}

Vhier___024root::~Vhier___024root() {
}

void Vhier___024root___settle__TOP__2(Vhier___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhier__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhier___024root___settle__TOP__2\n"); );
    // Body
    vlSelf->out = ((1U & (IData)(vlSelf->ctrl__DOT__cfg_reg))
                    ? (IData)(vlSelf->ctrl__DOT__secure_reg_u0__DOT__data)
                    : 0U);
}

void Vhier___024root___eval_initial(Vhier___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhier__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhier___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vclklast__TOP__clk = vlSelf->clk;
}

void Vhier___024root___eval_settle(Vhier___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhier__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhier___024root___eval_settle\n"); );
    // Body
    Vhier___024root___settle__TOP__2(vlSelf);
}

void Vhier___024root___final(Vhier___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhier__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhier___024root___final\n"); );
}

void Vhier___024root___ctor_var_reset(Vhier___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhier__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhier___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->rst_n = VL_RAND_RESET_I(1);
    vlSelf->cfg = VL_RAND_RESET_I(3);
    vlSelf->wd = VL_RAND_RESET_I(8);
    vlSelf->out = VL_RAND_RESET_I(8);
    vlSelf->ctrl__DOT__cfg_reg = VL_RAND_RESET_I(3);
    vlSelf->ctrl__DOT__secure_reg_u0__DOT__data = VL_RAND_RESET_I(8);
}
