// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VFSM1.h for the primary calling header

#include "VFSM1___024root.h"
#include "VFSM1__Syms.h"

//==========


void VFSM1___024root___ctor_var_reset(VFSM1___024root* vlSelf);

VFSM1___024root::VFSM1___024root(const char* _vcname__)
    : VerilatedModule(_vcname__)
 {
    // Reset structure values
    VFSM1___024root___ctor_var_reset(this);
}

void VFSM1___024root::__Vconfigure(VFSM1__Syms* _vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->vlSymsp = _vlSymsp;
}

VFSM1___024root::~VFSM1___024root() {
}

void VFSM1___024root___settle__TOP__2(VFSM1___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM1___024root___settle__TOP__2\n"); );
    // Body
    if ((0U == (IData)(vlSelf->buggy_FSM__DOT__current_state))) {
        vlSelf->buggy_FSM__DOT__ns = 1U;
    } else if ((1U == (IData)(vlSelf->buggy_FSM__DOT__current_state))) {
        vlSelf->buggy_FSM__DOT__ns = 2U;
    } else if ((2U == (IData)(vlSelf->buggy_FSM__DOT__current_state))) {
        vlSelf->buggy_FSM__DOT__ns = 0U;
    }
    vlSelf->out = vlSelf->buggy_FSM__DOT__current_state;
}

void VFSM1___024root___eval_initial(VFSM1___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM1___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vclklast__TOP__clk = vlSelf->clk;
    vlSelf->__Vclklast__TOP__rst_n = vlSelf->rst_n;
}

void VFSM1___024root___eval_settle(VFSM1___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM1___024root___eval_settle\n"); );
    // Body
    VFSM1___024root___settle__TOP__2(vlSelf);
}

void VFSM1___024root___final(VFSM1___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM1___024root___final\n"); );
}

void VFSM1___024root___ctor_var_reset(VFSM1___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM1___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->rst_n = VL_RAND_RESET_I(1);
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->out = VL_RAND_RESET_I(2);
    vlSelf->buggy_FSM__DOT__current_state = VL_RAND_RESET_I(2);
    vlSelf->buggy_FSM__DOT__ns = VL_RAND_RESET_I(2);
}
