// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vsec_reg.h for the primary calling header

#include "Vsec_reg___024root.h"
#include "Vsec_reg__Syms.h"

//==========


void Vsec_reg___024root___ctor_var_reset(Vsec_reg___024root* vlSelf);

Vsec_reg___024root::Vsec_reg___024root(const char* _vcname__)
    : VerilatedModule(_vcname__)
 {
    // Reset structure values
    Vsec_reg___024root___ctor_var_reset(this);
}

void Vsec_reg___024root::__Vconfigure(Vsec_reg__Syms* _vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->vlSymsp = _vlSymsp;
}

Vsec_reg___024root::~Vsec_reg___024root() {
}

void Vsec_reg___024root___settle__TOP__2(Vsec_reg___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vsec_reg__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsec_reg___024root___settle__TOP__2\n"); );
    // Body
    vlSelf->out_o = ((2U & (IData)(vlSelf->sec_reg__DOT__cfg))
                      ? (IData)(vlSelf->sec_reg__DOT__data)
                      : 0U);
}

void Vsec_reg___024root___eval_initial(Vsec_reg___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vsec_reg__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsec_reg___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vclklast__TOP__clk = vlSelf->clk;
    vlSelf->__Vclklast__TOP__reset_n = vlSelf->reset_n;
}

void Vsec_reg___024root___eval_settle(Vsec_reg___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vsec_reg__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsec_reg___024root___eval_settle\n"); );
    // Body
    Vsec_reg___024root___settle__TOP__2(vlSelf);
}

void Vsec_reg___024root___final(Vsec_reg___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vsec_reg__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsec_reg___024root___final\n"); );
}

void Vsec_reg___024root___ctor_var_reset(Vsec_reg___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vsec_reg__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsec_reg___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->reset_n = VL_RAND_RESET_I(1);
    vlSelf->lock_i = VL_RAND_RESET_I(1);
    vlSelf->re_i = VL_RAND_RESET_I(1);
    vlSelf->we_i = VL_RAND_RESET_I(1);
    vlSelf->data_i = VL_RAND_RESET_I(8);
    vlSelf->out_o = VL_RAND_RESET_I(8);
    vlSelf->sec_reg__DOT__data = VL_RAND_RESET_I(8);
    vlSelf->sec_reg__DOT__cfg = VL_RAND_RESET_I(3);
}
