// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vconditionals_always_tern.h for the primary calling header

#include "Vconditionals_always_tern___024root.h"
#include "Vconditionals_always_tern__Syms.h"

//==========

VL_INLINE_OPT void Vconditionals_always_tern___024root___sequent__TOP__1(Vconditionals_always_tern___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vconditionals_always_tern__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vconditionals_always_tern___024root___sequent__TOP__1\n"); );
    // Body
    vlSelf->conds__DOT__temp = ((IData)(vlSelf->reset_n)
                                 ? (0xffU & ((IData)(1U) 
                                             + (IData)(vlSelf->conds__DOT__temp)))
                                 : 0U);
}

VL_INLINE_OPT void Vconditionals_always_tern___024root___settle__TOP__2(Vconditionals_always_tern___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vconditionals_always_tern__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vconditionals_always_tern___024root___settle__TOP__2\n"); );
    // Body
    vlSelf->out_always_ternary = ((IData)(vlSelf->en)
                                   ? (IData)(vlSelf->conds__DOT__temp)
                                   : 0U);
}

void Vconditionals_always_tern___024root___eval(Vconditionals_always_tern___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vconditionals_always_tern__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vconditionals_always_tern___024root___eval\n"); );
    // Body
    if (((IData)(vlSelf->clk) & (~ (IData)(vlSelf->__Vclklast__TOP__clk)))) {
        Vconditionals_always_tern___024root___sequent__TOP__1(vlSelf);
    }
    Vconditionals_always_tern___024root___settle__TOP__2(vlSelf);
    // Final
    vlSelf->__Vclklast__TOP__clk = vlSelf->clk;
}

QData Vconditionals_always_tern___024root___change_request_1(Vconditionals_always_tern___024root* vlSelf);

VL_INLINE_OPT QData Vconditionals_always_tern___024root___change_request(Vconditionals_always_tern___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vconditionals_always_tern__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vconditionals_always_tern___024root___change_request\n"); );
    // Body
    return (Vconditionals_always_tern___024root___change_request_1(vlSelf));
}

VL_INLINE_OPT QData Vconditionals_always_tern___024root___change_request_1(Vconditionals_always_tern___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vconditionals_always_tern__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vconditionals_always_tern___024root___change_request_1\n"); );
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void Vconditionals_always_tern___024root___eval_debug_assertions(Vconditionals_always_tern___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vconditionals_always_tern__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vconditionals_always_tern___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY((vlSelf->reset_n & 0xfeU))) {
        Verilated::overWidthError("reset_n");}
    if (VL_UNLIKELY((vlSelf->en & 0xfeU))) {
        Verilated::overWidthError("en");}
}
#endif  // VL_DEBUG
