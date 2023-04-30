// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vctrl.h for the primary calling header

#include "Vctrl___024root.h"
#include "Vctrl__Syms.h"

//==========

VL_INLINE_OPT void Vctrl___024root___sequent__TOP__1(Vctrl___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vctrl__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vctrl___024root___sequent__TOP__1\n"); );
    // Body
    if (vlSelf->rst_n) {
        if ((1U & (IData)(vlSelf->ctrl__DOT__cfg_reg))) {
            vlSelf->ctrl__DOT__secure_reg_u2__DOT__data 
                = vlSelf->wd;
        }
    } else {
        vlSelf->ctrl__DOT__secure_reg_u2__DOT__data = 0U;
    }
    if (vlSelf->rst_n) {
        if ((1U & (IData)(vlSelf->ctrl__DOT__cfg_reg))) {
            vlSelf->ctrl__DOT__secure_reg_u1__DOT__data 
                = vlSelf->wd;
        }
    } else {
        vlSelf->ctrl__DOT__secure_reg_u1__DOT__data = 0U;
    }
    if (vlSelf->rst_n) {
        if ((1U & (IData)(vlSelf->ctrl__DOT__cfg_reg))) {
            vlSelf->ctrl__DOT__secure_reg_u0__DOT__data 
                = vlSelf->wd;
        }
    } else {
        vlSelf->ctrl__DOT__secure_reg_u0__DOT__data = 0U;
    }
    if (vlSelf->rst_n) {
        if ((1U & (~ ((IData)(vlSelf->ctrl__DOT__cfg_reg) 
                      >> 2U)))) {
            vlSelf->ctrl__DOT__cfg_reg = vlSelf->cfg;
        }
    } else {
        vlSelf->ctrl__DOT__cfg_reg = 0U;
    }
    if ((1U & (IData)(vlSelf->ctrl__DOT__cfg_reg))) {
        vlSelf->out = vlSelf->ctrl__DOT__secure_reg_u0__DOT__data;
        vlSelf->out = vlSelf->ctrl__DOT__secure_reg_u1__DOT__data;
        vlSelf->out = vlSelf->ctrl__DOT__secure_reg_u2__DOT__data;
    } else {
        vlSelf->out = 0U;
        vlSelf->out = 0U;
        vlSelf->out = 0U;
    }
}

void Vctrl___024root___eval(Vctrl___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vctrl__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vctrl___024root___eval\n"); );
    // Body
    if (((IData)(vlSelf->clk) & (~ (IData)(vlSelf->__Vclklast__TOP__clk)))) {
        Vctrl___024root___sequent__TOP__1(vlSelf);
    }
    // Final
    vlSelf->__Vclklast__TOP__clk = vlSelf->clk;
}

QData Vctrl___024root___change_request_1(Vctrl___024root* vlSelf);

VL_INLINE_OPT QData Vctrl___024root___change_request(Vctrl___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vctrl__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vctrl___024root___change_request\n"); );
    // Body
    return (Vctrl___024root___change_request_1(vlSelf));
}

VL_INLINE_OPT QData Vctrl___024root___change_request_1(Vctrl___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vctrl__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vctrl___024root___change_request_1\n"); );
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void Vctrl___024root___eval_debug_assertions(Vctrl___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vctrl__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vctrl___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY((vlSelf->rst_n & 0xfeU))) {
        Verilated::overWidthError("rst_n");}
    if (VL_UNLIKELY((vlSelf->cfg & 0xf8U))) {
        Verilated::overWidthError("cfg");}
}
#endif  // VL_DEBUG
