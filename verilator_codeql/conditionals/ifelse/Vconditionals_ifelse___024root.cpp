// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vconditionals_ifelse.h for the primary calling header

#include "Vconditionals_ifelse___024root.h"
#include "Vconditionals_ifelse__Syms.h"

//==========

VL_INLINE_OPT void Vconditionals_ifelse___024root___sequent__TOP__1(Vconditionals_ifelse___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vconditionals_ifelse__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vconditionals_ifelse___024root___sequent__TOP__1\n"); );
    // Body
    vlSelf->conds__DOT__temp = ((IData)(vlSelf->reset_n)
                                 ? (0xffU & ((IData)(1U) 
                                             + (IData)(vlSelf->conds__DOT__temp)))
                                 : 0U);
}

VL_INLINE_OPT void Vconditionals_ifelse___024root___settle__TOP__2(Vconditionals_ifelse___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vconditionals_ifelse__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vconditionals_ifelse___024root___settle__TOP__2\n"); );
    // Body
    vlSelf->out_always_ifelse = ((IData)(vlSelf->en)
                                  ? (IData)(vlSelf->conds__DOT__temp)
                                  : 0U);
}

void Vconditionals_ifelse___024root___eval(Vconditionals_ifelse___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vconditionals_ifelse__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vconditionals_ifelse___024root___eval\n"); );
    // Body
    if (((IData)(vlSelf->clk) & (~ (IData)(vlSelf->__Vclklast__TOP__clk)))) {
        Vconditionals_ifelse___024root___sequent__TOP__1(vlSelf);
    }
    Vconditionals_ifelse___024root___settle__TOP__2(vlSelf);
    // Final
    vlSelf->__Vclklast__TOP__clk = vlSelf->clk;
}

QData Vconditionals_ifelse___024root___change_request_1(Vconditionals_ifelse___024root* vlSelf);

VL_INLINE_OPT QData Vconditionals_ifelse___024root___change_request(Vconditionals_ifelse___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vconditionals_ifelse__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vconditionals_ifelse___024root___change_request\n"); );
    // Body
    return (Vconditionals_ifelse___024root___change_request_1(vlSelf));
}

VL_INLINE_OPT QData Vconditionals_ifelse___024root___change_request_1(Vconditionals_ifelse___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vconditionals_ifelse__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vconditionals_ifelse___024root___change_request_1\n"); );
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void Vconditionals_ifelse___024root___eval_debug_assertions(Vconditionals_ifelse___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vconditionals_ifelse__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vconditionals_ifelse___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY((vlSelf->reset_n & 0xfeU))) {
        Verilated::overWidthError("reset_n");}
    if (VL_UNLIKELY((vlSelf->en & 0xfeU))) {
        Verilated::overWidthError("en");}
}
#endif  // VL_DEBUG
