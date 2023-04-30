// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VFSM4.h for the primary calling header

#include "VFSM4___024root.h"
#include "VFSM4__Syms.h"

//==========


void VFSM4___024root___ctor_var_reset(VFSM4___024root* vlSelf);

VFSM4___024root::VFSM4___024root(const char* _vcname__)
    : VerilatedModule(_vcname__)
 {
    // Reset structure values
    VFSM4___024root___ctor_var_reset(this);
}

void VFSM4___024root::__Vconfigure(VFSM4__Syms* _vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->vlSymsp = _vlSymsp;
}

VFSM4___024root::~VFSM4___024root() {
}

void VFSM4___024root___settle__TOP__2(VFSM4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM4___024root___settle__TOP__2\n"); );
    // Body
    if ((0U == (IData)(vlSelf->buggy_FSM__DOT__current_state))) {
        vlSelf->buggy_FSM__DOT__ns = 1U;
    } else if ((1U == (IData)(vlSelf->buggy_FSM__DOT__current_state))) {
        vlSelf->buggy_FSM__DOT__ns = 2U;
    } else if ((2U == (IData)(vlSelf->buggy_FSM__DOT__current_state))) {
        vlSelf->buggy_FSM__DOT__ns = 0U;
    }
    vlSelf->out = ((IData)(vlSelf->buggy_FSM__DOT__current_state) 
                   | (IData)(vlSelf->buggy_FSM__DOT__ns));
}

void VFSM4___024root___eval_initial(VFSM4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM4___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vclklast__TOP__clk = vlSelf->clk;
    vlSelf->__Vclklast__TOP__rst_n = vlSelf->rst_n;
}

void VFSM4___024root___eval_settle(VFSM4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM4___024root___eval_settle\n"); );
    // Body
    VFSM4___024root___settle__TOP__2(vlSelf);
}

void VFSM4___024root___final(VFSM4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM4___024root___final\n"); );
}

void VFSM4___024root___ctor_var_reset(VFSM4___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM4__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM4___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->rst_n = VL_RAND_RESET_I(1);
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->out = VL_RAND_RESET_I(2);
    vlSelf->buggy_FSM__DOT__current_state = VL_RAND_RESET_I(2);
    vlSelf->buggy_FSM__DOT__ns = VL_RAND_RESET_I(2);
}
