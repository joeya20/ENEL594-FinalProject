// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vctrl.h for the primary calling header

#include "Vctrl___024root.h"
#include "Vctrl__Syms.h"

//==========


void Vctrl___024root___ctor_var_reset(Vctrl___024root* vlSelf);

Vctrl___024root::Vctrl___024root(const char* _vcname__)
    : VerilatedModule(_vcname__)
 {
    // Reset structure values
    Vctrl___024root___ctor_var_reset(this);
}

void Vctrl___024root::__Vconfigure(Vctrl__Syms* _vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->vlSymsp = _vlSymsp;
}

Vctrl___024root::~Vctrl___024root() {
}

void Vctrl___024root___settle__TOP__2(Vctrl___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vctrl__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vctrl___024root___settle__TOP__2\n"); );
    // Body
    if ((1U & (IData)(vlSelf->ctrl__DOT__cfg_reg))) {
        vlSelf->out = vlSelf->ctrl__DOT__secure_reg_u0__DOT__data;
        vlSelf->out = vlSelf->ctrl__DOT__secure_reg_u1__DOT__data;
        vlSelf->out = vlSelf->ctrl__DOT__secure_reg_u2__DOT__data;
    } else {
        vlSelf->out = 0U;
        vlSelf->out = 0U;
        vlSelf->out = 0U;
    }
}

void Vctrl___024root___eval_initial(Vctrl___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vctrl__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vctrl___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vclklast__TOP__clk = vlSelf->clk;
}

void Vctrl___024root___eval_settle(Vctrl___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vctrl__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vctrl___024root___eval_settle\n"); );
    // Body
    Vctrl___024root___settle__TOP__2(vlSelf);
}

void Vctrl___024root___final(Vctrl___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vctrl__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vctrl___024root___final\n"); );
}

void Vctrl___024root___ctor_var_reset(Vctrl___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vctrl__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vctrl___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->rst_n = VL_RAND_RESET_I(1);
    vlSelf->cfg = VL_RAND_RESET_I(3);
    vlSelf->wd = VL_RAND_RESET_I(8);
    vlSelf->out = VL_RAND_RESET_I(8);
    vlSelf->ctrl__DOT__cfg_reg = VL_RAND_RESET_I(3);
    vlSelf->ctrl__DOT__secure_reg_u0__DOT__data = VL_RAND_RESET_I(8);
    vlSelf->ctrl__DOT__secure_reg_u1__DOT__data = VL_RAND_RESET_I(8);
    vlSelf->ctrl__DOT__secure_reg_u2__DOT__data = VL_RAND_RESET_I(8);
}
