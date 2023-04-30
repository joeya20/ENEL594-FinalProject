// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VFSM1.h for the primary calling header

#include "VFSM1___024root.h"
#include "VFSM1__Syms.h"

//==========

VL_INLINE_OPT void VFSM1___024root___sequent__TOP__1(VFSM1___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM1___024root___sequent__TOP__1\n"); );
    // Body
    vlSelf->buggy_FSM__DOT__current_state = ((IData)(vlSelf->rst_n)
                                              ? (IData)(vlSelf->buggy_FSM__DOT__ns)
                                              : 0U);
    if ((0U == (IData)(vlSelf->buggy_FSM__DOT__current_state))) {
        vlSelf->buggy_FSM__DOT__ns = 1U;
    } else if ((1U == (IData)(vlSelf->buggy_FSM__DOT__current_state))) {
        vlSelf->buggy_FSM__DOT__ns = 2U;
    } else if ((2U == (IData)(vlSelf->buggy_FSM__DOT__current_state))) {
        vlSelf->buggy_FSM__DOT__ns = 0U;
    }
    vlSelf->out = vlSelf->buggy_FSM__DOT__current_state;
}

void VFSM1___024root___eval(VFSM1___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM1___024root___eval\n"); );
    // Body
    if ((((IData)(vlSelf->clk) & (~ (IData)(vlSelf->__Vclklast__TOP__clk))) 
         | ((~ (IData)(vlSelf->rst_n)) & (IData)(vlSelf->__Vclklast__TOP__rst_n)))) {
        VFSM1___024root___sequent__TOP__1(vlSelf);
    }
    // Final
    vlSelf->__Vclklast__TOP__clk = vlSelf->clk;
    vlSelf->__Vclklast__TOP__rst_n = vlSelf->rst_n;
}

QData VFSM1___024root___change_request_1(VFSM1___024root* vlSelf);

VL_INLINE_OPT QData VFSM1___024root___change_request(VFSM1___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM1___024root___change_request\n"); );
    // Body
    return (VFSM1___024root___change_request_1(vlSelf));
}

VL_INLINE_OPT QData VFSM1___024root___change_request_1(VFSM1___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM1___024root___change_request_1\n"); );
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void VFSM1___024root___eval_debug_assertions(VFSM1___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM1__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM1___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->rst_n & 0xfeU))) {
        Verilated::overWidthError("rst_n");}
    if (VL_UNLIKELY((vlSelf->clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
}
#endif  // VL_DEBUG
