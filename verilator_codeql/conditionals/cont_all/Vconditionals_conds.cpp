// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vconditionals.h for the primary calling header

#include "Vconditionals_conds.h"
#include "Vconditionals__Syms.h"

//==========

VL_INLINE_OPT void Vconditionals_conds___sequent__TOP__conds__2(Vconditionals_conds* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vconditionals__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+  Vconditionals_conds___sequent__TOP__conds__2\n"); );
    // Body
    vlSelf->__Vdly__temp = vlSelf->__PVT__temp;
    vlSelf->__Vdly__temp = (0xffU & ((IData)(vlSelf->reset_n)
                                      ? ((IData)(1U) 
                                         + (IData)(vlSelf->__PVT__temp))
                                      : 0U));
    vlSelf->__PVT__temp = vlSelf->__Vdly__temp;
}

VL_INLINE_OPT void Vconditionals_conds___combo__TOP__conds__3(Vconditionals_conds* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vconditionals__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+  Vconditionals_conds___combo__TOP__conds__3\n"); );
    // Body
    vlSelf->out_assign_ternary = ((IData)(vlSelf->en)
                                   ? (IData)(vlSelf->__PVT__temp)
                                   : 0U);
    vlSelf->out_always_case = ((IData)(vlSelf->en) ? (IData)(vlSelf->__PVT__temp)
                                : 0U);
    vlSelf->out_always_ifelse = ((IData)(vlSelf->en)
                                  ? (IData)(vlSelf->__PVT__temp)
                                  : 0U);
}
