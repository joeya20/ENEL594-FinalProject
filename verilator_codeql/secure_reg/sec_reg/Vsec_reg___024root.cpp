// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vsec_reg.h for the primary calling header

#include "Vsec_reg___024root.h"
#include "Vsec_reg__Syms.h"

//==========

VL_INLINE_OPT void Vsec_reg___024root___sequent__TOP__1(Vsec_reg___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vsec_reg__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsec_reg___024root___sequent__TOP__1\n"); );
    // Variables
    CData/*2:0*/ __Vdly__sec_reg__DOT__cfg;
    // Body
    __Vdly__sec_reg__DOT__cfg = vlSelf->sec_reg__DOT__cfg;
    if (vlSelf->reset_n) {
        if ((1U & (~ ((IData)(vlSelf->sec_reg__DOT__cfg) 
                      >> 2U)))) {
            __Vdly__sec_reg__DOT__cfg = (((IData)(vlSelf->lock_i) 
                                          << 2U) | 
                                         (((IData)(vlSelf->re_i) 
                                           << 1U) | (IData)(vlSelf->we_i)));
        }
        if ((1U & (IData)(vlSelf->sec_reg__DOT__cfg))) {
            vlSelf->sec_reg__DOT__data = vlSelf->data_i;
        }
    } else {
        vlSelf->sec_reg__DOT__data = 0U;
        __Vdly__sec_reg__DOT__cfg = 0U;
    }
    vlSelf->sec_reg__DOT__cfg = __Vdly__sec_reg__DOT__cfg;
    vlSelf->out_o = ((2U & (IData)(vlSelf->sec_reg__DOT__cfg))
                      ? (IData)(vlSelf->sec_reg__DOT__data)
                      : 0U);
}

void Vsec_reg___024root___eval(Vsec_reg___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vsec_reg__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsec_reg___024root___eval\n"); );
    // Body
    if ((((IData)(vlSelf->clk) & (~ (IData)(vlSelf->__Vclklast__TOP__clk))) 
         | ((~ (IData)(vlSelf->reset_n)) & (IData)(vlSelf->__Vclklast__TOP__reset_n)))) {
        Vsec_reg___024root___sequent__TOP__1(vlSelf);
    }
    // Final
    vlSelf->__Vclklast__TOP__clk = vlSelf->clk;
    vlSelf->__Vclklast__TOP__reset_n = vlSelf->reset_n;
}

QData Vsec_reg___024root___change_request_1(Vsec_reg___024root* vlSelf);

VL_INLINE_OPT QData Vsec_reg___024root___change_request(Vsec_reg___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vsec_reg__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsec_reg___024root___change_request\n"); );
    // Body
    return (Vsec_reg___024root___change_request_1(vlSelf));
}

VL_INLINE_OPT QData Vsec_reg___024root___change_request_1(Vsec_reg___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vsec_reg__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsec_reg___024root___change_request_1\n"); );
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void Vsec_reg___024root___eval_debug_assertions(Vsec_reg___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vsec_reg__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsec_reg___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY((vlSelf->reset_n & 0xfeU))) {
        Verilated::overWidthError("reset_n");}
    if (VL_UNLIKELY((vlSelf->lock_i & 0xfeU))) {
        Verilated::overWidthError("lock_i");}
    if (VL_UNLIKELY((vlSelf->re_i & 0xfeU))) {
        Verilated::overWidthError("re_i");}
    if (VL_UNLIKELY((vlSelf->we_i & 0xfeU))) {
        Verilated::overWidthError("we_i");}
}
#endif  // VL_DEBUG
