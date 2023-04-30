// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vhier.h for the primary calling header

#include "Vhier___024root.h"
#include "Vhier__Syms.h"

//==========

VL_INLINE_OPT void Vhier___024root___sequent__TOP__1(Vhier___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhier__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhier___024root___sequent__TOP__1\n"); );
    // Variables
    CData/*2:0*/ __Vdly__ctrl__DOT__cfg_reg;
    // Body
    __Vdly__ctrl__DOT__cfg_reg = vlSelf->ctrl__DOT__cfg_reg;
    if (vlSelf->rst_n) {
        if ((1U & (~ ((IData)(vlSelf->ctrl__DOT__cfg_reg) 
                      >> 2U)))) {
            __Vdly__ctrl__DOT__cfg_reg = vlSelf->cfg;
        }
    } else {
        __Vdly__ctrl__DOT__cfg_reg = 0U;
    }
    if (vlSelf->rst_n) {
        if ((1U & (IData)(vlSelf->ctrl__DOT__cfg_reg))) {
            vlSelf->ctrl__DOT__secure_reg_u0__DOT__data 
                = vlSelf->wd;
        }
    } else {
        vlSelf->ctrl__DOT__secure_reg_u0__DOT__data = 0U;
    }
    vlSelf->ctrl__DOT__cfg_reg = __Vdly__ctrl__DOT__cfg_reg;
    vlSelf->out = ((1U & (IData)(vlSelf->ctrl__DOT__cfg_reg))
                    ? (IData)(vlSelf->ctrl__DOT__secure_reg_u0__DOT__data)
                    : 0U);
}

void Vhier___024root___eval(Vhier___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhier__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhier___024root___eval\n"); );
    // Body
    if (((IData)(vlSelf->clk) & (~ (IData)(vlSelf->__Vclklast__TOP__clk)))) {
        Vhier___024root___sequent__TOP__1(vlSelf);
    }
    // Final
    vlSelf->__Vclklast__TOP__clk = vlSelf->clk;
}

QData Vhier___024root___change_request_1(Vhier___024root* vlSelf);

VL_INLINE_OPT QData Vhier___024root___change_request(Vhier___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhier__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhier___024root___change_request\n"); );
    // Body
    return (Vhier___024root___change_request_1(vlSelf));
}

VL_INLINE_OPT QData Vhier___024root___change_request_1(Vhier___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhier__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhier___024root___change_request_1\n"); );
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void Vhier___024root___eval_debug_assertions(Vhier___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhier__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhier___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY((vlSelf->rst_n & 0xfeU))) {
        Verilated::overWidthError("rst_n");}
    if (VL_UNLIKELY((vlSelf->cfg & 0xf8U))) {
        Verilated::overWidthError("cfg");}
}
#endif  // VL_DEBUG
