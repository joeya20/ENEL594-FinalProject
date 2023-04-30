// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VFSM5.h for the primary calling header

#include "VFSM5___024root.h"
#include "VFSM5__Syms.h"

//==========

VL_INLINE_OPT void VFSM5___024root___sequent__TOP__1(VFSM5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM5___024root___sequent__TOP__1\n"); );
    // Body
    vlSelf->buggy_FSM__DOT__current_state = ((IData)(vlSelf->rst_n)
                                              ? (IData)(vlSelf->buggy_FSM__DOT__ns)
                                              : 0U);
}

VL_INLINE_OPT void VFSM5___024root___settle__TOP__2(VFSM5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM5___024root___settle__TOP__2\n"); );
    // Body
    if ((0U == (IData)(vlSelf->buggy_FSM__DOT__current_state))) {
        vlSelf->buggy_FSM__DOT__ns = ((IData)(vlSelf->secure)
                                       ? (IData)(vlSelf->secure_state)
                                       : 1U);
    } else if ((1U == (IData)(vlSelf->buggy_FSM__DOT__current_state))) {
        vlSelf->buggy_FSM__DOT__ns = 2U;
    } else if ((2U == (IData)(vlSelf->buggy_FSM__DOT__current_state))) {
        vlSelf->buggy_FSM__DOT__ns = 0U;
    }
    vlSelf->out = ((IData)(vlSelf->buggy_FSM__DOT__current_state) 
                   | (IData)(vlSelf->buggy_FSM__DOT__ns));
}

void VFSM5___024root___eval(VFSM5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM5___024root___eval\n"); );
    // Body
    if ((((IData)(vlSelf->clk) & (~ (IData)(vlSelf->__Vclklast__TOP__clk))) 
         | ((~ (IData)(vlSelf->rst_n)) & (IData)(vlSelf->__Vclklast__TOP__rst_n)))) {
        VFSM5___024root___sequent__TOP__1(vlSelf);
    }
    VFSM5___024root___settle__TOP__2(vlSelf);
    // Final
    vlSelf->__Vclklast__TOP__clk = vlSelf->clk;
    vlSelf->__Vclklast__TOP__rst_n = vlSelf->rst_n;
}

QData VFSM5___024root___change_request_1(VFSM5___024root* vlSelf);

VL_INLINE_OPT QData VFSM5___024root___change_request(VFSM5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM5___024root___change_request\n"); );
    // Body
    return (VFSM5___024root___change_request_1(vlSelf));
}

VL_INLINE_OPT QData VFSM5___024root___change_request_1(VFSM5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM5___024root___change_request_1\n"); );
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void VFSM5___024root___eval_debug_assertions(VFSM5___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM5__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM5___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY((vlSelf->rst_n & 0xfeU))) {
        Verilated::overWidthError("rst_n");}
    if (VL_UNLIKELY((vlSelf->secure & 0xfeU))) {
        Verilated::overWidthError("secure");}
    if (VL_UNLIKELY((vlSelf->secure_state & 0xfcU))) {
        Verilated::overWidthError("secure_state");}
}
#endif  // VL_DEBUG
