// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VFSM2.h for the primary calling header

#include "VFSM2___024root.h"
#include "VFSM2__Syms.h"

//==========

VL_INLINE_OPT void VFSM2___024root___sequent__TOP__1(VFSM2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM2___024root___sequent__TOP__1\n"); );
    // Variables
    CData/*1:0*/ __Vdly__buggy_FSM__DOT__current_state;
    // Body
    __Vdly__buggy_FSM__DOT__current_state = vlSelf->buggy_FSM__DOT__current_state;
    if (vlSelf->rst_n) {
        if ((0U == (IData)(vlSelf->buggy_FSM__DOT__current_state))) {
            __Vdly__buggy_FSM__DOT__current_state = 1U;
        } else if ((1U == (IData)(vlSelf->buggy_FSM__DOT__current_state))) {
            __Vdly__buggy_FSM__DOT__current_state = 2U;
        } else if ((2U == (IData)(vlSelf->buggy_FSM__DOT__current_state))) {
            __Vdly__buggy_FSM__DOT__current_state = 0U;
        }
    } else {
        __Vdly__buggy_FSM__DOT__current_state = 0U;
    }
    vlSelf->buggy_FSM__DOT__current_state = __Vdly__buggy_FSM__DOT__current_state;
    vlSelf->out = vlSelf->buggy_FSM__DOT__current_state;
}

void VFSM2___024root___eval(VFSM2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM2___024root___eval\n"); );
    // Body
    if ((((IData)(vlSelf->clk) & (~ (IData)(vlSelf->__Vclklast__TOP__clk))) 
         | ((~ (IData)(vlSelf->rst_n)) & (IData)(vlSelf->__Vclklast__TOP__rst_n)))) {
        VFSM2___024root___sequent__TOP__1(vlSelf);
    }
    // Final
    vlSelf->__Vclklast__TOP__clk = vlSelf->clk;
    vlSelf->__Vclklast__TOP__rst_n = vlSelf->rst_n;
}

QData VFSM2___024root___change_request_1(VFSM2___024root* vlSelf);

VL_INLINE_OPT QData VFSM2___024root___change_request(VFSM2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM2___024root___change_request\n"); );
    // Body
    return (VFSM2___024root___change_request_1(vlSelf));
}

VL_INLINE_OPT QData VFSM2___024root___change_request_1(VFSM2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM2___024root___change_request_1\n"); );
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void VFSM2___024root___eval_debug_assertions(VFSM2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM2___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->rst_n & 0xfeU))) {
        Verilated::overWidthError("rst_n");}
    if (VL_UNLIKELY((vlSelf->clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
}
#endif  // VL_DEBUG
