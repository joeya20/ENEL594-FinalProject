// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VFSM5.h for the primary calling header

#include "VFSM5___024root.h"
#include "VFSM5__Syms.h"

//==========


void VFSM5___024root___ctor_var_reset(VFSM5___024root* vlSelf);

VFSM5___024root::VFSM5___024root(const char* _vcname__)
    : VerilatedModule(_vcname__)
 {
    // Reset structure values
    VFSM5___024root___ctor_var_reset(this);
}

void VFSM5___024root::__Vconfigure(VFSM5__Syms* _vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->vlSymsp = _vlSymsp;
}

VFSM5___024root::~VFSM5___024root() {
}

void VFSM5___024root___eval_initial(VFSM5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM5___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vclklast__TOP__clk = vlSelf->clk;
    vlSelf->__Vclklast__TOP__rst_n = vlSelf->rst_n;
}

void VFSM5___024root___settle__TOP__2(VFSM5___024root* vlSelf);

void VFSM5___024root___eval_settle(VFSM5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM5___024root___eval_settle\n"); );
    // Body
    VFSM5___024root___settle__TOP__2(vlSelf);
}

void VFSM5___024root___final(VFSM5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM5___024root___final\n"); );
}

void VFSM5___024root___ctor_var_reset(VFSM5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM5___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->rst_n = VL_RAND_RESET_I(1);
    vlSelf->secure = VL_RAND_RESET_I(1);
    vlSelf->secure_state = VL_RAND_RESET_I(2);
    vlSelf->out = VL_RAND_RESET_I(2);
    vlSelf->buggy_FSM__DOT__current_state = VL_RAND_RESET_I(2);
    vlSelf->buggy_FSM__DOT__ns = VL_RAND_RESET_I(2);
}
