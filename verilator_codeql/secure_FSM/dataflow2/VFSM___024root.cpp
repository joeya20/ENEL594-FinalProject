// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VFSM.h for the primary calling header

#include "VFSM___024root.h"
#include "VFSM__Syms.h"

//==========

VL_INLINE_OPT void VFSM___024root___sequent__TOP__1(VFSM___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM___024root___sequent__TOP__1\n"); );
    // Body
    if (vlSelf->rst_n) {
        vlSelf->FSM__DOT__current_state = vlSelf->FSM__DOT__ns;
        vlSelf->FSM__DOT__data = (((IData)(1U) + (IData)(vlSelf->FSM__DOT__data)) 
                                  & 1U);
    } else {
        vlSelf->FSM__DOT__current_state = 0U;
        vlSelf->FSM__DOT__data = 0U;
    }
}

extern const VlUnpacked<CData/*0:0*/, 16> VFSM__ConstPool__TABLE_d969aa0a_0;
extern const VlUnpacked<CData/*1:0*/, 16> VFSM__ConstPool__TABLE_9339ba7e_0;

VL_INLINE_OPT void VFSM___024root___settle__TOP__2(VFSM___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM___024root___settle__TOP__2\n"); );
    // Variables
    CData/*3:0*/ __Vtableidx1;
    // Body
    __Vtableidx1 = (((IData)(vlSelf->secure) << 3U) 
                    | (((IData)(vlSelf->FSM__DOT__data) 
                        << 2U) | (IData)(vlSelf->FSM__DOT__current_state)));
    vlSelf->out = VFSM__ConstPool__TABLE_d969aa0a_0
        [__Vtableidx1];
    vlSelf->FSM__DOT__ns = VFSM__ConstPool__TABLE_9339ba7e_0
        [__Vtableidx1];
}

void VFSM___024root___eval(VFSM___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM___024root___eval\n"); );
    // Body
    if ((((IData)(vlSelf->clk) & (~ (IData)(vlSelf->__Vclklast__TOP__clk))) 
         | ((~ (IData)(vlSelf->rst_n)) & (IData)(vlSelf->__Vclklast__TOP__rst_n)))) {
        VFSM___024root___sequent__TOP__1(vlSelf);
    }
    VFSM___024root___settle__TOP__2(vlSelf);
    // Final
    vlSelf->__Vclklast__TOP__clk = vlSelf->clk;
    vlSelf->__Vclklast__TOP__rst_n = vlSelf->rst_n;
}

QData VFSM___024root___change_request_1(VFSM___024root* vlSelf);

VL_INLINE_OPT QData VFSM___024root___change_request(VFSM___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM___024root___change_request\n"); );
    // Body
    return (VFSM___024root___change_request_1(vlSelf));
}

VL_INLINE_OPT QData VFSM___024root___change_request_1(VFSM___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM___024root___change_request_1\n"); );
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void VFSM___024root___eval_debug_assertions(VFSM___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFSM__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFSM___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY((vlSelf->rst_n & 0xfeU))) {
        Verilated::overWidthError("rst_n");}
    if (VL_UNLIKELY((vlSelf->secure & 0xfeU))) {
        Verilated::overWidthError("secure");}
}
#endif  // VL_DEBUG
