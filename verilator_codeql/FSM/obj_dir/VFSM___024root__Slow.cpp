// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VFSM.h for the primary calling header

#include "VFSM___024root.h"
#include "VFSM__Syms.h"

//==========


void VFSM___024root___ctor_var_reset(VFSM___024root* vlSelf);

VFSM___024root::VFSM___024root(const char* _vcname__)
    : VerilatedModule(_vcname__)
 {
    // Reset structure values
    VFSM___024root___ctor_var_reset(this);
}

void VFSM___024root::__Vconfigure(VFSM__Syms* _vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->vlSymsp = _vlSymsp;
}

VFSM___024root::~VFSM___024root() {
}

void VFSM___024root___settle__TOP__2(VFSM___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM___024root___settle__TOP__2\n"); );
    // Body
    vlSelf->out = vlSelf->buggy_FSM__DOT__current_state;
}

void VFSM___024root___eval_initial(VFSM___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vclklast__TOP__clk = vlSelf->clk;
    vlSelf->__Vclklast__TOP__rst_n = vlSelf->rst_n;
}

void VFSM___024root___eval_settle(VFSM___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM___024root___eval_settle\n"); );
    // Body
    VFSM___024root___settle__TOP__2(vlSelf);
}

void VFSM___024root___final(VFSM___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM___024root___final\n"); );
}

void VFSM___024root___ctor_var_reset(VFSM___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->rst_n = VL_RAND_RESET_I(1);
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->out = VL_RAND_RESET_I(2);
    vlSelf->buggy_FSM__DOT__current_state = VL_RAND_RESET_I(2);
}
