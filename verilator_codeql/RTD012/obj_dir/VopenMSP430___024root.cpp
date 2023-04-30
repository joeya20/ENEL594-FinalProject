// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VopenMSP430.h for the primary calling header

#include "VopenMSP430___024root.h"
#include "VopenMSP430__Syms.h"

//==========

VL_INLINE_OPT void VopenMSP430___024root___combo__TOP__2(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___combo__TOP__2\n"); );
    // Body
    vlSelf->mclk = vlSelf->dma_mclk;
    vlSelf->openMSP430__DOT__multiplier_0__DOT__mclk_reslo 
        = ((IData)(vlSelf->dma_mclk) & (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__clock_gate_reslo__DOT__enable_latch));
    vlSelf->openMSP430__DOT__multiplier_0__DOT__mclk_reshi 
        = ((IData)(vlSelf->dma_mclk) & (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__clock_gate_reshi__DOT__enable_latch));
    if ((1U & (~ (IData)(vlSelf->dma_mclk)))) {
        vlSelf->openMSP430__DOT__multiplier_0__DOT__clock_gate_op2__DOT__enable_latch 
            = (1U & (((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__reg_wr) 
                      >> 8U) | (IData)(vlSelf->scan_enable)));
    }
    if ((1U & (~ (IData)(vlSelf->dma_mclk)))) {
        vlSelf->openMSP430__DOT__multiplier_0__DOT__clock_gate_op1__DOT__enable_latch 
            = (1U & ((IData)((0U != (0x55U & (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__reg_wr)))) 
                     | (IData)(vlSelf->scan_enable)));
    }
    if ((1U & (~ (IData)(vlSelf->cpu_mclk)))) {
        vlSelf->openMSP430__DOT__frontend_0__DOT__clock_gate_irq_num__DOT__enable_latch 
            = ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__irq_detect) 
               | (IData)(vlSelf->scan_enable));
    }
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r4 
        = ((IData)(vlSelf->cpu_mclk) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r4__DOT__enable_latch));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r5 
        = ((IData)(vlSelf->cpu_mclk) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r5__DOT__enable_latch));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r6 
        = ((IData)(vlSelf->cpu_mclk) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r6__DOT__enable_latch));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r7 
        = ((IData)(vlSelf->cpu_mclk) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r7__DOT__enable_latch));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r8 
        = ((IData)(vlSelf->cpu_mclk) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r8__DOT__enable_latch));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r9 
        = ((IData)(vlSelf->cpu_mclk) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r9__DOT__enable_latch));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r10 
        = ((IData)(vlSelf->cpu_mclk) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r10__DOT__enable_latch));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r11 
        = ((IData)(vlSelf->cpu_mclk) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r11__DOT__enable_latch));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r12 
        = ((IData)(vlSelf->cpu_mclk) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r12__DOT__enable_latch));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r13 
        = ((IData)(vlSelf->cpu_mclk) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r13__DOT__enable_latch));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r14 
        = ((IData)(vlSelf->cpu_mclk) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r14__DOT__enable_latch));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r15 
        = ((IData)(vlSelf->cpu_mclk) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r15__DOT__enable_latch));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r1 
        = ((IData)(vlSelf->cpu_mclk) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r1__DOT__enable_latch));
    vlSelf->openMSP430__DOT__frontend_0__DOT__mclk_inst_sext 
        = ((IData)(vlSelf->cpu_mclk) & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__clock_gate_inst_sext__DOT__enable_latch));
    vlSelf->openMSP430__DOT__multiplier_0__DOT__mclk_op2 
        = ((IData)(vlSelf->dma_mclk) & (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__clock_gate_op2__DOT__enable_latch));
    vlSelf->openMSP430__DOT__multiplier_0__DOT__mclk_op1 
        = ((IData)(vlSelf->dma_mclk) & (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__clock_gate_op1__DOT__enable_latch));
    vlSelf->openMSP430__DOT__frontend_0__DOT__mclk_irq_num 
        = ((IData)(vlSelf->cpu_mclk) & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__clock_gate_irq_num__DOT__enable_latch));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__4(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__4\n"); );
    // Body
    vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtcnt_clr_sync_dly 
        = (1U & ((~ (IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdt_rst)) 
                 & ((IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__sync_cell_wdtcnt_clr__DOT__data_sync) 
                    >> 1U)));
    if (vlSelf->openMSP430__DOT__watchdog_0__DOT__wdt_rst) {
        vlSelf->openMSP430__DOT__watchdog_0__DOT__sync_cell_wdtcnt_clr__DOT__data_sync = 0U;
        vlSelf->openMSP430__DOT__watchdog_0__DOT__sync_cell_wdtcnt_incr__DOT__data_sync = 0U;
    } else {
        vlSelf->openMSP430__DOT__watchdog_0__DOT__sync_cell_wdtcnt_clr__DOT__data_sync 
            = ((2U & ((IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__sync_cell_wdtcnt_clr__DOT__data_sync) 
                      << 1U)) | (IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtcnt_clr_toggle));
        vlSelf->openMSP430__DOT__watchdog_0__DOT__sync_cell_wdtcnt_incr__DOT__data_sync 
            = ((2U & ((IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__sync_cell_wdtcnt_incr__DOT__data_sync) 
                      << 1U)) | (1U & ((~ ((IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtctl) 
                                           >> 7U)) 
                                       & (~ (IData)(vlSelf->dbg_freeze)))));
    }
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__6(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__6\n"); );
    // Body
    vlSelf->openMSP430__DOT__watchdog_0__DOT__sync_reset_por__DOT__data_sync 
        = ((IData)(vlSelf->puc_rst) ? 3U : (2U & ((IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__sync_reset_por__DOT__data_sync) 
                                                  << 1U)));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__7(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__7\n"); );
    // Variables
    CData/*1:0*/ __Vdly__openMSP430__DOT__sfr_0__DOT__sync_cell_nmi__DOT__data_sync;
    CData/*0:0*/ __Vdly__openMSP430__DOT__watchdog_0__DOT__wdtcnt_clr_toggle;
    CData/*1:0*/ __Vdly__openMSP430__DOT__multiplier_0__DOT__cycle;
    // Body
    __Vdly__openMSP430__DOT__sfr_0__DOT__sync_cell_nmi__DOT__data_sync 
        = vlSelf->openMSP430__DOT__sfr_0__DOT__sync_cell_nmi__DOT__data_sync;
    __Vdly__openMSP430__DOT__multiplier_0__DOT__cycle 
        = vlSelf->openMSP430__DOT__multiplier_0__DOT__cycle;
    __Vdly__openMSP430__DOT__watchdog_0__DOT__wdtcnt_clr_toggle 
        = vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtcnt_clr_toggle;
    __Vdly__openMSP430__DOT__sfr_0__DOT__sync_cell_nmi__DOT__data_sync 
        = ((IData)(vlSelf->puc_rst) ? 0U : ((2U & ((IData)(vlSelf->openMSP430__DOT__sfr_0__DOT__sync_cell_nmi__DOT__data_sync) 
                                                   << 1U)) 
                                            | (IData)(vlSelf->openMSP430__DOT__sfr_0__DOT__nmi_capture)));
    vlSelf->openMSP430__DOT__mem_backbone_0__DOT__dma_ready_dly 
        = ((~ (IData)(vlSelf->puc_rst)) & (IData)(vlSelf->dma_ready));
    vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtifg_clr_reg 
        = ((IData)(vlSelf->puc_rst) | (IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtifg_clr));
    vlSelf->openMSP430__DOT__watchdog_0__DOT__wdt_evt_toggle_sync_dly 
        = (1U & ((~ (IData)(vlSelf->puc_rst)) & ((IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__sync_cell_wdt_evt__DOT__data_sync) 
                                                 >> 1U)));
    vlSelf->openMSP430__DOT__watchdog_0__DOT__sync_cell_wdt_evt__DOT__data_sync 
        = ((IData)(vlSelf->puc_rst) ? 0U : ((2U & ((IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__sync_cell_wdt_evt__DOT__data_sync) 
                                                   << 1U)) 
                                            | (IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdt_evt_toggle)));
    vlSelf->openMSP430__DOT__sfr_0__DOT__nmi_capture_rst 
        = (1U & ((IData)(vlSelf->puc_rst) | (((IData)(vlSelf->openMSP430__DOT__sfr_0__DOT__reg_lo_wr) 
                                              >> 2U) 
                                             & (~ ((IData)(vlSelf->per_din) 
                                                   >> 4U)))));
    __Vdly__openMSP430__DOT__multiplier_0__DOT__cycle 
        = ((IData)(vlSelf->puc_rst) ? 0U : ((2U & ((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__cycle) 
                                                   << 1U)) 
                                            | (1U & 
                                               ((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__reg_wr) 
                                                >> 8U))));
    if (vlSelf->puc_rst) {
        __Vdly__openMSP430__DOT__watchdog_0__DOT__wdtcnt_clr_toggle = 0U;
    } else if ((1U & ((IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__reg_wr) 
                      & ((IData)(vlSelf->per_din) >> 3U)))) {
        __Vdly__openMSP430__DOT__watchdog_0__DOT__wdtcnt_clr_toggle 
            = (1U & (~ (IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtcnt_clr_toggle)));
    }
    if (vlSelf->puc_rst) {
        vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_din_sel = 0U;
        vlSelf->openMSP430__DOT__mem_backbone_0__DOT__per_dout_val = 0U;
        vlSelf->openMSP430__DOT__mem_backbone_0__DOT__eu_mdb_in_sel = 0U;
    } else {
        vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_din_sel 
            = (((IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_pmem_en) 
                << 1U) | (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_per_en));
        vlSelf->openMSP430__DOT__mem_backbone_0__DOT__per_dout_val 
            = (0xffffU & (((((IData)(vlSelf->per_dout) 
                             | (IData)(vlSelf->openMSP430__DOT__per_dout_clk)) 
                            | (((((((IData)(vlSelf->openMSP430__DOT__sfr_0__DOT__nmie) 
                                    << 4U) | (IData)(vlSelf->openMSP430__DOT__wdtie)) 
                                  & (- (IData)((1U 
                                                & (IData)(vlSelf->openMSP430__DOT__sfr_0__DOT__reg_rd))))) 
                                 | ((((IData)(vlSelf->openMSP430__DOT__sfr_0__DOT__nmiifg) 
                                      << 4U) | (IData)(vlSelf->openMSP430__DOT__wdtifg)) 
                                    & (- (IData)((1U 
                                                  & ((IData)(vlSelf->openMSP430__DOT__sfr_0__DOT__reg_rd) 
                                                     >> 2U)))))) 
                                | (0x20bU & (- (IData)(
                                                       (1U 
                                                        & ((IData)(vlSelf->openMSP430__DOT__sfr_0__DOT__reg_rd) 
                                                           >> 4U)))))) 
                               | (0x1011U & (- (IData)(
                                                       (1U 
                                                        & ((IData)(vlSelf->openMSP430__DOT__sfr_0__DOT__reg_rd) 
                                                           >> 6U))))))) 
                           | ((0x6920U | (IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtctl)) 
                              & (- (IData)(((0U == 
                                             (2U & 
                                              ((IData)(vlSelf->per_addr) 
                                               << 1U))) 
                                            & ((~ (IData)(
                                                          (0U 
                                                           != (IData)(vlSelf->per_we)))) 
                                               & (IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__reg_sel))))))) 
                          | ((((((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__op1) 
                                 & (- (IData)((IData)(
                                                      (0U 
                                                       != 
                                                       (0x55U 
                                                        & (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__reg_rd))))))) 
                                | ((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__op2) 
                                   & (- (IData)((1U 
                                                 & ((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__reg_rd) 
                                                    >> 8U)))))) 
                               | (((2U & (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__cycle))
                                    ? (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__result_nxt)
                                    : (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__reslo)) 
                                  & (- (IData)((1U 
                                                & ((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__reg_rd) 
                                                   >> 0xaU)))))) 
                              | (((2U & (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__cycle))
                                   ? (IData)((vlSelf->openMSP430__DOT__multiplier_0__DOT__result_nxt 
                                              >> 0x10U))
                                   : (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__reshi)) 
                                 & (- (IData)((1U & 
                                               ((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__reg_rd) 
                                                >> 0xcU)))))) 
                             | (((2U & (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__cycle))
                                  ? ((0xfffcU & ((- (IData)(
                                                            (1U 
                                                             & ((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__sumext_s_nxt) 
                                                                >> 1U)))) 
                                                 << 2U)) 
                                     | (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__sumext_s_nxt))
                                  : ((0xfffcU & ((- (IData)(
                                                            (1U 
                                                             & ((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__sumext_s) 
                                                                >> 1U)))) 
                                                 << 2U)) 
                                     | (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__sumext_s))) 
                                & (- (IData)((1U & 
                                              ((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__reg_rd) 
                                               >> 0xeU))))))));
        vlSelf->openMSP430__DOT__mem_backbone_0__DOT__eu_mdb_in_sel 
            = (((IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__eu_pmem_en) 
                << 1U) | (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__eu_per_en));
    }
    if (vlSelf->puc_rst) {
        vlSelf->openMSP430__DOT__mem_backbone_0__DOT__pmem_dout_bckup_sel = 0U;
    } else if (vlSelf->openMSP430__DOT__mem_backbone_0__DOT__fe_pmem_save) {
        vlSelf->openMSP430__DOT__mem_backbone_0__DOT__pmem_dout_bckup_sel = 1U;
    } else if ((((IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__fe_pmem_en) 
                 & (~ (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__fe_pmem_en_dly))) 
                | (IData)(vlSelf->openMSP430__DOT__cpu_halt_st))) {
        vlSelf->openMSP430__DOT__mem_backbone_0__DOT__pmem_dout_bckup_sel = 0U;
    }
    vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtcnt_clr_toggle 
        = __Vdly__openMSP430__DOT__watchdog_0__DOT__wdtcnt_clr_toggle;
    if (vlSelf->puc_rst) {
        vlSelf->openMSP430__DOT__multiplier_0__DOT__sumext_s = 0U;
    } else if ((0x100U & (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__reg_wr))) {
        vlSelf->openMSP430__DOT__multiplier_0__DOT__sumext_s = 0U;
    } else if ((0U != (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__cycle))) {
        vlSelf->openMSP430__DOT__multiplier_0__DOT__sumext_s 
            = vlSelf->openMSP430__DOT__multiplier_0__DOT__sumext_s_nxt;
    }
    if (vlSelf->puc_rst) {
        vlSelf->openMSP430__DOT__wdtie = 0U;
    } else if ((1U & (IData)(vlSelf->openMSP430__DOT__sfr_0__DOT__reg_lo_wr))) {
        vlSelf->openMSP430__DOT__wdtie = (1U & (IData)(vlSelf->per_din));
    }
    if (vlSelf->puc_rst) {
        vlSelf->openMSP430__DOT__sfr_0__DOT__nmie = 0U;
    } else if ((1U & (IData)((vlSelf->openMSP430__DOT__frontend_0__DOT__irq_acc_all 
                              >> 0x3eU)))) {
        vlSelf->openMSP430__DOT__sfr_0__DOT__nmie = 0U;
    } else if ((1U & (IData)(vlSelf->openMSP430__DOT__sfr_0__DOT__reg_lo_wr))) {
        vlSelf->openMSP430__DOT__sfr_0__DOT__nmie = 
            (1U & ((IData)(vlSelf->per_din) >> 4U));
    }
    if (vlSelf->puc_rst) {
        vlSelf->openMSP430__DOT__sfr_0__DOT__nmiifg = 0U;
    } else if ((1U & ((~ (IData)(vlSelf->openMSP430__DOT__sfr_0__DOT__nmi_dly)) 
                      & ((IData)(vlSelf->openMSP430__DOT__sfr_0__DOT__sync_cell_nmi__DOT__data_sync) 
                         >> 1U)))) {
        vlSelf->openMSP430__DOT__sfr_0__DOT__nmiifg = 1U;
    } else if ((4U & (IData)(vlSelf->openMSP430__DOT__sfr_0__DOT__reg_lo_wr))) {
        vlSelf->openMSP430__DOT__sfr_0__DOT__nmiifg 
            = (1U & ((IData)(vlSelf->per_din) >> 4U));
    }
    vlSelf->openMSP430__DOT__mem_backbone_0__DOT__fe_pmem_en_dly 
        = ((~ (IData)(vlSelf->puc_rst)) & (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__fe_pmem_en));
    vlSelf->openMSP430__DOT__multiplier_0__DOT__cycle 
        = __Vdly__openMSP430__DOT__multiplier_0__DOT__cycle;
    vlSelf->openMSP430__DOT__sfr_0__DOT__nmi_dly = 
        (1U & ((~ (IData)(vlSelf->puc_rst)) & ((IData)(vlSelf->openMSP430__DOT__sfr_0__DOT__sync_cell_nmi__DOT__data_sync) 
                                               >> 1U)));
    vlSelf->openMSP430__DOT__sfr_0__DOT__sync_cell_nmi__DOT__data_sync 
        = __Vdly__openMSP430__DOT__sfr_0__DOT__sync_cell_nmi__DOT__data_sync;
}

extern const VlUnpacked<IData/*24:0*/, 64> VopenMSP430__ConstPool__TABLE_8aa91d64_0;

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__8(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__8\n"); );
    // Variables
    CData/*0:0*/ openMSP430__DOT__dbg_0__DOT__mem_access;
    CData/*5:0*/ __Vtableidx1;
    CData/*3:0*/ __Vdly__openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_bit;
    CData/*1:0*/ __Vdly__openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__sync_cell_uart_rxd__DOT__data_sync;
    SData/*15:0*/ __Vdly__openMSP430__DOT__dbg_0__DOT__mem_addr;
    SData/*15:0*/ __Vdly__openMSP430__DOT__dbg_0__DOT__mem_cnt;
    SData/*15:0*/ __Vdly__openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_cnt;
    IData/*18:0*/ __Vdly__openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__sync_cnt;
    // Body
    __Vdly__openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__sync_cell_uart_rxd__DOT__data_sync 
        = vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__sync_cell_uart_rxd__DOT__data_sync;
    __Vdly__openMSP430__DOT__dbg_0__DOT__mem_cnt = vlSelf->openMSP430__DOT__dbg_0__DOT__mem_cnt;
    __Vdly__openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_cnt 
        = vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_cnt;
    __Vdly__openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_bit 
        = vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_bit;
    __Vdly__openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__sync_cnt 
        = vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__sync_cnt;
    __Vdly__openMSP430__DOT__dbg_0__DOT__mem_addr = vlSelf->openMSP430__DOT__dbg_0__DOT__mem_addr;
    if (vlSelf->dbg_rst) {
        __Vdly__openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__sync_cell_uart_rxd__DOT__data_sync = 0U;
        vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__rxd_buf = 3U;
        vlSelf->openMSP430__DOT__dbg_0__DOT__cpu_stat = 0U;
        vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_stat = 0U;
    } else {
        __Vdly__openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__sync_cell_uart_rxd__DOT__data_sync 
            = ((2U & ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__sync_cell_uart_rxd__DOT__data_sync) 
                      << 1U)) | (1U & (~ (IData)(vlSelf->dbg_uart_rxd))));
        vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__rxd_buf 
            = ((2U & ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__rxd_buf) 
                      << 1U)) | (1U & (~ ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__sync_cell_uart_rxd__DOT__data_sync) 
                                          >> 1U))));
        vlSelf->openMSP430__DOT__dbg_0__DOT__cpu_stat 
            = ((8U & vlSelf->openMSP430__DOT__dbg_0__DOT__reg_wr)
                ? (((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__cpu_stat) 
                    & (~ ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_din) 
                          >> 2U))) | (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__cpu_stat_set))
                : ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__cpu_stat) 
                   | (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__cpu_stat_set)));
        vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_stat 
            = ((0x200U & vlSelf->openMSP430__DOT__dbg_0__DOT__reg_wr)
                ? (((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_stat) 
                    & (~ (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_din))) 
                   | (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_stat_set))
                : ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_stat) 
                   | (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_stat_set)));
    }
    if (vlSelf->dbg_rst) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__dbg_bw = 0U;
    } else if (vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__cmd_valid) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__dbg_bw 
            = (1U & (vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_buf_nxt 
                     >> 0x11U));
    }
    vlSelf->openMSP430__DOT__dbg_0__DOT__mem_start 
        = (1U & ((~ (IData)(vlSelf->dbg_rst)) & ((vlSelf->openMSP430__DOT__dbg_0__DOT__reg_wr 
                                                  >> 4U) 
                                                 & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_din))));
    __Vdly__openMSP430__DOT__dbg_0__DOT__mem_cnt = 
        ((IData)(vlSelf->dbg_rst) ? 0U : (0xffffU & 
                                          ((0x80U & vlSelf->openMSP430__DOT__dbg_0__DOT__reg_wr)
                                            ? (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_din)
                                            : ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_cnt) 
                                               + (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_cnt_dec)))));
    if (vlSelf->dbg_rst) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__cpu_ctl = 6U;
    } else if ((4U & vlSelf->openMSP430__DOT__dbg_0__DOT__reg_wr)) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__cpu_ctl 
            = (0xfU & ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_din) 
                       >> 3U));
    }
    if (vlSelf->dbg_rst) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_addr = 0U;
    } else if (vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__cmd_valid) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_addr 
            = (0x3fU & (vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_buf_nxt 
                        >> 0xbU));
    }
    vlSelf->openMSP430__DOT__dbg_0__DOT__mem_startb 
        = ((~ (IData)(vlSelf->dbg_rst)) & (((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_burst) 
                                            & ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_wr) 
                                               | (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_rd))) 
                                           | (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_burst_rd)));
    if (vlSelf->dbg_rst) {
        __Vdly__openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_cnt = 0U;
    } else if (((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__rx_active) 
                & ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__rxd_maj) 
                   ^ (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__rxd_maj_nxt)))) {
        __Vdly__openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_cnt 
            = (0x7fffU & (vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__sync_cnt 
                          >> 4U));
    } else if (((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__txd_start) 
                | (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_bit_inc))) {
        __Vdly__openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_cnt 
            = (0xffffU & (vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__sync_cnt 
                          >> 3U));
    } else if ((0U != (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_cnt))) {
        __Vdly__openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_cnt 
            = (0xffffU & ((IData)(0xffffU) + (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_cnt)));
    }
    if (vlSelf->dbg_rst) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_addr1 = 0U;
    } else if ((0x800U & vlSelf->openMSP430__DOT__dbg_0__DOT__reg_wr)) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_addr1 
            = vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_din;
    }
    if (vlSelf->dbg_rst) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_addr0 = 0U;
    } else if ((0x400U & vlSelf->openMSP430__DOT__dbg_0__DOT__reg_wr)) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_addr0 
            = vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_din;
    }
    if (vlSelf->dbg_rst) {
        __Vdly__openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_bit = 0U;
    } else if (((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__txd_start) 
                | (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__rxd_start))) {
        __Vdly__openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_bit = 1U;
    } else if (vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_done) {
        __Vdly__openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_bit = 0U;
    } else if (vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_bit_inc) {
        __Vdly__openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_bit 
            = (0xfU & ((IData)(1U) + (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_bit)));
    }
    if (vlSelf->dbg_rst) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_ctl = 0U;
    } else if ((0x100U & vlSelf->openMSP430__DOT__dbg_0__DOT__reg_wr)) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_ctl 
            = (0x1fU & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_din));
    }
    if (vlSelf->dbg_rst) {
        __Vdly__openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__sync_cnt = 0x7fff8U;
    } else if ((1U & ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__sync_busy) 
                      | (vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__sync_cnt 
                         >> 2U)))) {
        __Vdly__openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__sync_cnt 
            = (0x7ffffU & ((IData)(1U) + vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__sync_cnt));
    }
    vlSelf->openMSP430__DOT__dbg_0__DOT__inc_step = 
        ((IData)(vlSelf->dbg_rst) ? 0U : ((((vlSelf->openMSP430__DOT__dbg_0__DOT__reg_wr 
                                             >> 2U) 
                                            & ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_din) 
                                               >> 2U)) 
                                           & (IData)(vlSelf->openMSP430__DOT__cpu_halt_st))
                                           ? 3U : (2U 
                                                   & ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__inc_step) 
                                                      << 1U))));
    if (vlSelf->dbg_rst) {
        vlSelf->dbg_uart_txd = 1U;
    } else if (((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_bit_inc) 
                & ((4U == (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__uart_state)) 
                   | (5U == (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__uart_state))))) {
        vlSelf->dbg_uart_txd = (1U & vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_buf);
    }
    __Vdly__openMSP430__DOT__dbg_0__DOT__mem_addr = 
        ((IData)(vlSelf->dbg_rst) ? 0U : (0xffffU & 
                                          ((0x20U & vlSelf->openMSP430__DOT__dbg_0__DOT__reg_wr)
                                            ? (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_din)
                                            : ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_addr) 
                                               + ((0U 
                                                   == (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_cnt))
                                                   ? 0U
                                                   : 
                                                  ((((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_burst) 
                                                     & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_mem_acc)) 
                                                    & (~ 
                                                       ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_ctl) 
                                                        >> 2U)))
                                                    ? 2U
                                                    : 
                                                   (((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_burst) 
                                                     & ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_mem_acc) 
                                                        | (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_reg_acc)))
                                                     ? 1U
                                                     : 0U)))))));
    if (vlSelf->dbg_rst) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__mem_data = 0U;
    } else if ((0x40U & vlSelf->openMSP430__DOT__dbg_0__DOT__reg_wr)) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__mem_data 
            = vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_din;
    } else if (vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_reg_rd) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__mem_data 
            = vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_dest;
    } else if (vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_mem_rd_dly) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__mem_data 
            = ((4U & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_ctl))
                ? ((1U & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_addr))
                    ? (0xffU & ((IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_din) 
                                >> 8U)) : (0xffU & (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_din)))
                : (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_din));
    }
    if (vlSelf->dbg_rst) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__halt_flag = 0U;
    } else if (((((vlSelf->openMSP430__DOT__dbg_0__DOT__reg_wr 
                   >> 2U) & ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_din) 
                             >> 1U)) & (IData)(vlSelf->openMSP430__DOT__cpu_halt_st)) 
                | ((2U == (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_state)) 
                   & (0U == (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_state_nxt))))) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__halt_flag = 0U;
    } else if (vlSelf->openMSP430__DOT__dbg_0__DOT__halt_flag_set) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__halt_flag = 1U;
    }
    vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__sync_cell_uart_rxd__DOT__data_sync 
        = __Vdly__openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__sync_cell_uart_rxd__DOT__data_sync;
    vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_cnt 
        = __Vdly__openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_cnt;
    vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_bit 
        = __Vdly__openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_bit;
    vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__sync_cnt 
        = __Vdly__openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__sync_cnt;
    vlSelf->openMSP430__DOT__dbg_0__DOT__mem_cnt = __Vdly__openMSP430__DOT__dbg_0__DOT__mem_cnt;
    vlSelf->openMSP430__DOT__dbg_0__DOT__mem_addr = __Vdly__openMSP430__DOT__dbg_0__DOT__mem_addr;
    vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__rxd_maj 
        = ((IData)(vlSelf->dbg_rst) | (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__rxd_maj_nxt));
    if (vlSelf->dbg_rst) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__sync_busy = 0U;
    } else if (((0U == (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__uart_state)) 
                & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__rxd_fe))) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__sync_busy = 1U;
    } else if (((0U == (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__uart_state)) 
                & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__rxd_re))) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__sync_busy = 0U;
    }
    if (vlSelf->dbg_rst) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_buf = 0U;
    } else if (vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_rd_rdy) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_buf 
            = (0x80200U | ((0x7f800U & ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_dout) 
                                        << 3U)) | (0x1feU 
                                                   & ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_dout) 
                                                      << 1U))));
    } else if (vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_bit_inc) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_buf 
            = vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_buf_nxt;
    }
    vlSelf->openMSP430__DOT__dbg_0__DOT__mem_state 
        = ((IData)(vlSelf->dbg_rst) ? 0U : (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_state_nxt));
    vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__rxd_maj_nxt 
        = (1U & (((~ ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__sync_cell_uart_rxd__DOT__data_sync) 
                      >> 1U)) & ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__rxd_buf) 
                                 | ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__rxd_buf) 
                                    >> 1U))) | ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__rxd_buf) 
                                                & ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__rxd_buf) 
                                                   >> 1U))));
    vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_bit_inc 
        = ((0U != (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_bit)) 
           & (0xffffU == (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_cnt)));
    vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__rxd_fe 
        = ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__rxd_maj) 
           & (~ (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__rxd_maj_nxt)));
    vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__rxd_re 
        = ((~ (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__rxd_maj)) 
           & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__rxd_maj_nxt));
    if (vlSelf->dbg_rst) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__uart_state = 0U;
    } else if (((((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_done) 
                  | (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__sync_done)) 
                 | (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_burst_wr)) 
                | (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_burst_rd))) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__uart_state 
            = vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__uart_state_nxt;
    }
    vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_buf_nxt 
        = (((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__rxd_maj) 
            << 0x13U) | (0x7ffffU & (vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_buf 
                                     >> 1U)));
    vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_rd_rdy 
        = ((~ (IData)(vlSelf->dbg_rst)) & (((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_burst) 
                                            | (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_burst_rd))
                                            ? ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_reg_rd) 
                                               | (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_mem_rd_dly))
                                            : (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_rd)));
    openMSP430__DOT__dbg_0__DOT__mem_access = ((3U 
                                                == (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_state)) 
                                               | (2U 
                                                  == (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_state)));
    vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__sync_done 
        = (((0U == (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__uart_state)) 
            & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__rxd_re)) 
           & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__sync_busy));
    vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__rxd_start 
        = (((0U == (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_bit)) 
            & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__rxd_fe)) 
           & (0U != (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__uart_state)));
    vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__rx_active 
        = (((2U == (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__uart_state)) 
            | (3U == (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__uart_state))) 
           | (1U == (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__uart_state)));
    if (vlSelf->dbg_rst) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__mem_burst = 0U;
    } else if (vlSelf->openMSP430__DOT__dbg_0__DOT__mem_burst_start) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__mem_burst = 1U;
    } else if (vlSelf->openMSP430__DOT__dbg_0__DOT__mem_burst_end) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__mem_burst = 0U;
    }
    vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_mem_rd_dly 
        = ((~ (IData)(vlSelf->dbg_rst)) & ((IData)(vlSelf->openMSP430__DOT__dbg_mem_en) 
                                           & (~ (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_ctl))));
    vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_done 
        = ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__rx_active)
            ? (0xaU == (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_bit))
            : (0xbU == (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_bit)));
    vlSelf->openMSP430__DOT__dbg_0__DOT__mem_burst_start 
        = ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_start) 
           & (0U != (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_cnt)));
    vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__txd_start 
        = ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_rd_rdy) 
           | ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_done) 
              & (4U == (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__uart_state))));
    vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__cmd_valid 
        = ((1U == (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__uart_state)) 
           & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_done));
    vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_wr = ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_done) 
                                                   & (3U 
                                                      == (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__uart_state)));
    __Vtableidx1 = ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_burst)
                     ? 6U : (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_addr));
    vlSelf->openMSP430__DOT__dbg_0__DOT__reg_dec = 
        VopenMSP430__ConstPool__TABLE_8aa91d64_0[__Vtableidx1];
    if (vlSelf->dbg_rst) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__mem_ctl = 0U;
    } else if ((0x10U & vlSelf->openMSP430__DOT__dbg_0__DOT__reg_wr)) {
        vlSelf->openMSP430__DOT__dbg_0__DOT__mem_ctl 
            = (7U & ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_din) 
                     >> 1U));
    }
    vlSelf->openMSP430__DOT__dbg_0__DOT__mem_burst_end 
        = (((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_wr) 
            | (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_rd_rdy)) 
           & (~ (IData)((0U != (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_cnt)))));
    vlSelf->openMSP430__DOT__dbg_0__DOT__reg_wr = (vlSelf->openMSP430__DOT__dbg_0__DOT__reg_dec 
                                                   & (- (IData)((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_wr))));
    vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_reg_rd 
        = (((IData)(openMSP430__DOT__dbg_0__DOT__mem_access) 
            & (~ (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_ctl))) 
           & ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_ctl) 
              >> 1U));
    vlSelf->openMSP430__DOT__dbg_0__DOT__mem_burst_wr 
        = ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_burst_start) 
           & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_ctl));
    vlSelf->openMSP430__DOT__dbg_0__DOT__mem_burst_rd 
        = ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_burst_start) 
           & (~ (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_ctl)));
    vlSelf->openMSP430__DOT__dbg_mem_en = ((IData)(openMSP430__DOT__dbg_0__DOT__mem_access) 
                                           & (~ ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_ctl) 
                                                 >> 1U)));
    vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_din = 
        ((1U & ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_burst)
                 ? ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_ctl) 
                    >> 2U) : (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__dbg_bw)))
          ? (0xffU & (vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_buf_nxt 
                      >> 0xbU)) : ((0xff00U & (vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_buf_nxt 
                                               >> 3U)) 
                                   | (0xffU & (vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_buf_nxt 
                                               >> 2U))));
    vlSelf->openMSP430__DOT__dbg_mem_dout = ((4U & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_ctl))
                                              ? ((1U 
                                                  & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_addr))
                                                  ? 
                                                 (0xff00U 
                                                  & ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_data) 
                                                     << 8U))
                                                  : 
                                                 (0xffU 
                                                  & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_data)))
                                              : (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_data));
    vlSelf->openMSP430__DOT__dbg_reg_wr = (((IData)(openMSP430__DOT__dbg_0__DOT__mem_access) 
                                            & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_ctl)) 
                                           & ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_ctl) 
                                              >> 1U));
    vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_rd = ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_burst)
                                                    ? 
                                                   ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_done) 
                                                    & (5U 
                                                       == (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__uart_state)))
                                                    : 
                                                   (((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__cmd_valid) 
                                                     & (~ 
                                                        (vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_buf_nxt 
                                                         >> 0x12U))) 
                                                    | (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_burst_rd)));
    vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__uart_state_nxt 
        = ((4U & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__uart_state))
            ? ((2U & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__uart_state))
                ? 1U : ((1U & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__uart_state))
                         ? (((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_burst) 
                             & (~ (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_burst_end)))
                             ? ((4U & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_ctl))
                                 ? 5U : 4U) : 1U) : 5U))
            : ((2U & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__uart_state))
                ? ((1U & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__uart_state))
                    ? (((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_burst) 
                        & (~ (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_burst_end)))
                        ? ((4U & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_ctl))
                            ? 3U : 2U) : 1U) : 3U) : 
               ((1U & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__uart_state))
                 ? ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_burst_wr)
                     ? ((4U & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_ctl))
                         ? 3U : 2U) : ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_burst_rd)
                                        ? ((4U & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_ctl))
                                            ? 5U : 4U)
                                        : ((0x40000U 
                                            & vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_buf_nxt)
                                            ? ((0x20000U 
                                                & vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_buf_nxt)
                                                ? 3U
                                                : 2U)
                                            : ((0x20000U 
                                                & vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_uart_0__DOT__xfer_buf_nxt)
                                                ? 5U
                                                : 4U))))
                 : 1U)));
    vlSelf->openMSP430__DOT__dbg_mem_wr = ((- (IData)(
                                                      ((IData)(vlSelf->openMSP430__DOT__dbg_mem_en) 
                                                       & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_ctl)))) 
                                           & ((4U & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_ctl))
                                               ? ((1U 
                                                   & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_addr))
                                                   ? 2U
                                                   : 1U)
                                               : 3U));
    vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_reg_acc 
        = ((IData)(vlSelf->openMSP430__DOT__dbg_reg_wr) 
           | ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_rd_rdy) 
              & ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_ctl) 
                 >> 1U)));
    vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_mem_acc 
        = ((0U != (IData)(vlSelf->openMSP430__DOT__dbg_mem_wr)) 
           | ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_rd_rdy) 
              & (~ ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_ctl) 
                    >> 1U))));
    vlSelf->openMSP430__DOT__dbg_0__DOT__mem_cnt_dec 
        = ((0U == (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_cnt))
            ? 0U : (((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_burst) 
                     & ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_mem_acc) 
                        | (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_reg_acc)))
                     ? 0xffffU : 0U));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__9(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__9\n"); );
    // Body
    vlSelf->openMSP430__DOT__frontend_0__DOT__pmem_busy 
        = ((~ (IData)(vlSelf->puc_rst)) & ((IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__fe_pmem_en) 
                                           & (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__eu_pmem_en)));
    if (vlSelf->puc_rst) {
        vlSelf->openMSP430__DOT__frontend_0__DOT__exec_dext_rdy = 0U;
    } else if ((9U == (IData)(vlSelf->openMSP430__DOT__e_state))) {
        vlSelf->openMSP430__DOT__frontend_0__DOT__exec_dext_rdy = 0U;
    } else if (vlSelf->openMSP430__DOT__frontend_0__DOT__inst_dext_rdy) {
        vlSelf->openMSP430__DOT__frontend_0__DOT__exec_dext_rdy = 1U;
    }
    if (vlSelf->puc_rst) {
        vlSelf->openMSP430__DOT__execution_unit_0__DOT__mab_lsb = 0U;
    } else if (vlSelf->openMSP430__DOT__eu_mb_en) {
        vlSelf->openMSP430__DOT__execution_unit_0__DOT__mab_lsb 
            = (1U & vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_add);
    }
    if (vlSelf->puc_rst) {
        vlSelf->openMSP430__DOT__execution_unit_0__DOT__mdb_in_buf_valid = 0U;
    } else if ((0xbU == (IData)(vlSelf->openMSP430__DOT__e_state))) {
        vlSelf->openMSP430__DOT__execution_unit_0__DOT__mdb_in_buf_valid = 0U;
    } else if (vlSelf->openMSP430__DOT__execution_unit_0__DOT__mdb_in_buf_en) {
        vlSelf->openMSP430__DOT__execution_unit_0__DOT__mdb_in_buf_valid = 1U;
    }
    vlSelf->openMSP430__DOT__cpu_halt_st = ((~ (IData)(vlSelf->puc_rst)) 
                                            & ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__cpu_halt_req) 
                                               & (5U 
                                                  == (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__i_state_nxt))));
    if (vlSelf->puc_rst) {
        vlSelf->openMSP430__DOT__inst_bw = 0U;
    } else if (vlSelf->openMSP430__DOT__frontend_0__DOT__decode) {
        vlSelf->openMSP430__DOT__inst_bw = (1U & ((
                                                   (((IData)(vlSelf->openMSP430__DOT__fe_mdb_in) 
                                                     >> 6U) 
                                                    & (~ 
                                                       ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_type_nxt) 
                                                        >> 1U))) 
                                                   & (~ (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__irq_detect))) 
                                                  & (~ (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__cpu_halt_req))));
    }
    if (vlSelf->puc_rst) {
        vlSelf->openMSP430__DOT__inst_irq_rst = 1U;
    } else if (vlSelf->openMSP430__DOT__exec_done) {
        vlSelf->openMSP430__DOT__inst_irq_rst = 0U;
    }
    vlSelf->openMSP430__DOT__frontend_0__DOT__i_state 
        = ((IData)(vlSelf->puc_rst) ? 0U : (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__i_state_nxt));
    if (vlSelf->puc_rst) {
        vlSelf->openMSP430__DOT__frontend_0__DOT__exec_dst_wr = 0U;
    } else if ((9U == (IData)(vlSelf->openMSP430__DOT__e_state))) {
        vlSelf->openMSP430__DOT__frontend_0__DOT__exec_dst_wr = 1U;
    } else if ((0xaU == (IData)(vlSelf->openMSP430__DOT__e_state))) {
        vlSelf->openMSP430__DOT__frontend_0__DOT__exec_dst_wr = 0U;
    }
    if (vlSelf->puc_rst) {
        vlSelf->openMSP430__DOT__frontend_0__DOT__exec_src_wr = 0U;
    } else if (((IData)(vlSelf->openMSP430__DOT__inst_type) 
                & (6U == (IData)(vlSelf->openMSP430__DOT__e_state)))) {
        vlSelf->openMSP430__DOT__frontend_0__DOT__exec_src_wr = 1U;
    } else if (((7U == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                | (0xaU == (IData)(vlSelf->openMSP430__DOT__e_state)))) {
        vlSelf->openMSP430__DOT__frontend_0__DOT__exec_src_wr = 0U;
    }
    if (vlSelf->puc_rst) {
        vlSelf->openMSP430__DOT__frontend_0__DOT__exec_jmp = 0U;
    } else if ((((((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_ad_nxt) 
                   & (0U == (0xfU & (IData)(vlSelf->openMSP430__DOT__fe_mdb_in)))) 
                  | ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_type_nxt) 
                     >> 1U)) | ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_so_nxt) 
                                >> 6U)) & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__decode))) {
        vlSelf->openMSP430__DOT__frontend_0__DOT__exec_jmp = 1U;
    } else if ((0xcU == (IData)(vlSelf->openMSP430__DOT__e_state))) {
        vlSelf->openMSP430__DOT__frontend_0__DOT__exec_jmp = 0U;
    }
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__mdb_in_buf_en 
        = ((~ (IData)(vlSelf->puc_rst)) & (6U == (IData)(vlSelf->openMSP430__DOT__e_state)));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__10(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__10\n"); );
    // Body
    vlSelf->openMSP430__DOT__multiplier_0__DOT__reslo 
        = ((IData)(vlSelf->puc_rst) ? 0U : (0xffffU 
                                            & ((0x400U 
                                                & (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__reg_wr))
                                                ? (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__per_din_msk)
                                                : ((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__result_clr)
                                                    ? 0U
                                                    : (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__result_nxt)))));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__11(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__11\n"); );
    // Body
    vlSelf->openMSP430__DOT__multiplier_0__DOT__reshi 
        = ((IData)(vlSelf->puc_rst) ? 0U : (0xffffU 
                                            & ((0x1000U 
                                                & (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__reg_wr))
                                                ? (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__per_din_msk)
                                                : ((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__result_clr)
                                                    ? 0U
                                                    : (IData)(
                                                              (vlSelf->openMSP430__DOT__multiplier_0__DOT__result_nxt 
                                                               >> 0x10U))))));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__12(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__12\n"); );
    // Body
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r4 
        = ((IData)(vlSelf->puc_rst) ? 0U : ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r4_wr)
                                             ? (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_dest_val_in)
                                             : (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_incr_val)));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__13(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__13\n"); );
    // Body
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r5 
        = ((IData)(vlSelf->puc_rst) ? 0U : ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r5_wr)
                                             ? (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_dest_val_in)
                                             : (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_incr_val)));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__14(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__14\n"); );
    // Body
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r6 
        = ((IData)(vlSelf->puc_rst) ? 0U : ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r6_wr)
                                             ? (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_dest_val_in)
                                             : (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_incr_val)));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__15(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__15\n"); );
    // Body
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r7 
        = ((IData)(vlSelf->puc_rst) ? 0U : ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r7_wr)
                                             ? (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_dest_val_in)
                                             : (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_incr_val)));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__16(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__16\n"); );
    // Body
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r8 
        = ((IData)(vlSelf->puc_rst) ? 0U : ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r8_wr)
                                             ? (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_dest_val_in)
                                             : (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_incr_val)));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__17(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__17\n"); );
    // Body
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r9 
        = ((IData)(vlSelf->puc_rst) ? 0U : ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r9_wr)
                                             ? (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_dest_val_in)
                                             : (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_incr_val)));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__18(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__18\n"); );
    // Body
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r10 
        = ((IData)(vlSelf->puc_rst) ? 0U : ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r10_wr)
                                             ? (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_dest_val_in)
                                             : (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_incr_val)));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__19(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__19\n"); );
    // Body
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r11 
        = ((IData)(vlSelf->puc_rst) ? 0U : ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r11_wr)
                                             ? (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_dest_val_in)
                                             : (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_incr_val)));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__20(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__20\n"); );
    // Body
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r12 
        = ((IData)(vlSelf->puc_rst) ? 0U : ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r12_wr)
                                             ? (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_dest_val_in)
                                             : (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_incr_val)));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__21(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__21\n"); );
    // Body
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r13 
        = ((IData)(vlSelf->puc_rst) ? 0U : ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r13_wr)
                                             ? (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_dest_val_in)
                                             : (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_incr_val)));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__22(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__22\n"); );
    // Body
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r14 
        = ((IData)(vlSelf->puc_rst) ? 0U : ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r14_wr)
                                             ? (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_dest_val_in)
                                             : (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_incr_val)));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__23(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__23\n"); );
    // Body
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r15 
        = ((IData)(vlSelf->puc_rst) ? 0U : ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r15_wr)
                                             ? (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_dest_val_in)
                                             : (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_incr_val)));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__24(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__24\n"); );
    // Body
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r1 
        = ((IData)(vlSelf->puc_rst) ? 0U : ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r1_wr)
                                             ? (0xfffeU 
                                                & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_dest_val_in))
                                             : ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_sp_wr)
                                                 ? 
                                                (0xfffeU 
                                                 & vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_add)
                                                 : 
                                                (0xfffeU 
                                                 & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_incr_val)))));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__25(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__25\n"); );
    // Body
    vlSelf->openMSP430__DOT__inst_sext = ((IData)(vlSelf->puc_rst)
                                           ? 0U : (
                                                   ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__decode) 
                                                    & (0U 
                                                       != 
                                                       (0x3fU 
                                                        & ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_as_nxt) 
                                                           >> 7U))))
                                                    ? 
                                                   ((0x80U 
                                                     & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_as_nxt))
                                                     ? 4U
                                                     : 
                                                    ((0x100U 
                                                      & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_as_nxt))
                                                      ? 8U
                                                      : 
                                                     ((0x200U 
                                                       & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_as_nxt))
                                                       ? 0U
                                                       : 
                                                      ((0x400U 
                                                        & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_as_nxt))
                                                        ? 1U
                                                        : 
                                                       ((0x800U 
                                                         & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_as_nxt))
                                                         ? 2U
                                                         : 
                                                        ((0x1000U 
                                                          & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_as_nxt))
                                                          ? 0xffffU
                                                          : 0U))))))
                                                    : 
                                                   (((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__decode) 
                                                     & ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_type_nxt) 
                                                        >> 1U))
                                                     ? 
                                                    ((0xf800U 
                                                      & ((- (IData)(
                                                                    (1U 
                                                                     & ((IData)(vlSelf->openMSP430__DOT__fe_mdb_in) 
                                                                        >> 9U)))) 
                                                         << 0xbU)) 
                                                     | (0x7feU 
                                                        & ((IData)(vlSelf->openMSP430__DOT__fe_mdb_in) 
                                                           << 1U)))
                                                     : (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__ext_nxt))));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__26(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__26\n"); );
    // Body
    vlSelf->openMSP430__DOT__multiplier_0__DOT__op2 
        = ((IData)(vlSelf->puc_rst) ? 0U : (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__per_din_msk));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__27(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__27\n"); );
    // Body
    vlSelf->openMSP430__DOT__multiplier_0__DOT__acc_sel 
        = (1U & ((~ (IData)(vlSelf->puc_rst)) & (IData)(
                                                        (0U 
                                                         != 
                                                         (0x50U 
                                                          & (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__reg_wr))))));
    vlSelf->openMSP430__DOT__multiplier_0__DOT__op1 
        = ((IData)(vlSelf->puc_rst) ? 0U : (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__per_din_msk));
    vlSelf->openMSP430__DOT__multiplier_0__DOT__sign_sel 
        = (1U & ((~ (IData)(vlSelf->puc_rst)) & (IData)(
                                                        (0U 
                                                         != 
                                                         (0x44U 
                                                          & (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__reg_wr))))));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__28(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__28\n"); );
    // Variables
    CData/*5:0*/ __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout;
    QData/*62:0*/ __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all;
    // Body
    __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
        = ((((QData)((IData)(vlSelf->openMSP430__DOT__nmi_pnd)) 
             << 0x3eU) | ((QData)((IData)(vlSelf->irq)) 
                          << 0x30U)) | ((QData)((IData)(vlSelf->openMSP430__DOT__wdt_irq)) 
                                        << 0x3aU));
    __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x3fU;
    if ((1U & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                       >> 0x3eU)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x3eU;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x3dU)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x3dU;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x3cU)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x3cU;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x3bU)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x3bU;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x3aU)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x3aU;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x39U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x39U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x38U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x38U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x37U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x37U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x36U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x36U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x35U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x35U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x34U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x34U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x33U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x33U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x32U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x32U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x31U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x31U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x30U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x30U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x2fU)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x2fU;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x2eU)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x2eU;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x2dU)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x2dU;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x2cU)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x2cU;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x2bU)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x2bU;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x2aU)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x2aU;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x29U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x29U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x28U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x28U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x27U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x27U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x26U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x26U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x25U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x25U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x24U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x24U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x23U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x23U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x22U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x22U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x21U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x21U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x20U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x20U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x1fU)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x1fU;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x1eU)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x1eU;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x1dU)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x1dU;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x1cU)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x1cU;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x1bU)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x1bU;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x1aU)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x1aU;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x19U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x19U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x18U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x18U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x17U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x17U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x16U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x16U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x15U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x15U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x14U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x14U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x13U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x13U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x12U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x12U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x11U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x11U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0x10U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0x10U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0xfU)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0xfU;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0xeU)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0xeU;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0xdU)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0xdU;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0xcU)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0xcU;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0xbU)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0xbU;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 0xaU)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0xaU;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 9U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 9U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 8U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 8U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 7U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 7U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 6U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 6U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 5U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 5U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 4U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 4U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 3U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 3U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 2U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 2U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)((__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all 
                    >> 1U)))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 1U;
    }
    if (((0x3fU == (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout)) 
         & (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__irq_all))) {
        __Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout = 0U;
    }
    vlSelf->openMSP430__DOT__frontend_0__DOT__irq_num 
        = ((IData)(vlSelf->puc_rst) ? 0x3fU : (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__get_irq_num__0__Vfuncout));
}

VL_INLINE_OPT void VopenMSP430___024root___combo__TOP__29(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___combo__TOP__29\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->smclk)))) {
        vlSelf->openMSP430__DOT__watchdog_0__DOT__clock_gate_wdtcnt__DOT__enable_latch 
            = (1U & (((IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtcnt_clr) 
                      | ((IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__sync_cell_wdtcnt_incr__DOT__data_sync) 
                         >> 1U)) | (IData)(vlSelf->scan_enable)));
    }
    vlSelf->openMSP430__DOT__watchdog_0__DOT__wakeup_cell_wdog__DOT__wkup_rst 
        = ((IData)(vlSelf->scan_mode) ? (IData)(vlSelf->puc_rst)
            : (IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtifg_clr_reg));
    vlSelf->openMSP430__DOT__eu_mdb_in = ((2U & (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__eu_mdb_in_sel))
                                           ? (IData)(vlSelf->pmem_dout)
                                           : ((1U & (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__eu_mdb_in_sel))
                                               ? (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__per_dout_val)
                                               : (IData)(vlSelf->dmem_dout)));
    vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_din 
        = ((2U & (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_din_sel))
            ? (IData)(vlSelf->pmem_dout) : ((1U & (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_din_sel))
                                             ? (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__per_dout_val)
                                             : (IData)(vlSelf->dmem_dout)));
    vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_en 
        = ((IData)(vlSelf->openMSP430__DOT__dbg_mem_en) 
           | (IData)(vlSelf->dma_en));
    if (vlSelf->openMSP430__DOT__dbg_mem_en) {
        vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_addr 
            = (0x7fffU & ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_addr) 
                          >> 1U));
        vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_dout 
            = vlSelf->openMSP430__DOT__dbg_mem_dout;
        vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_wr 
            = vlSelf->openMSP430__DOT__dbg_mem_wr;
    } else {
        vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_addr 
            = (0x7fffU & (IData)(vlSelf->dma_addr));
        vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_dout 
            = vlSelf->dma_din;
        vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_wr 
            = vlSelf->dma_we;
    }
    vlSelf->dbg_freeze = ((IData)(vlSelf->openMSP430__DOT__cpu_halt_st) 
                          & (((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__cpu_ctl) 
                              >> 1U) | (~ (IData)(vlSelf->cpu_en_s))));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_bit8_msk 
        = (1U & ((0xbU != (IData)(vlSelf->openMSP430__DOT__e_state)) 
                 | (~ (IData)(vlSelf->openMSP430__DOT__inst_bw))));
    vlSelf->openMSP430__DOT__exec_done = ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__exec_jmp)
                                           ? (0xcU 
                                              == (IData)(vlSelf->openMSP430__DOT__e_state))
                                           : ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__exec_dst_wr)
                                               ? (0xaU 
                                                  == (IData)(vlSelf->openMSP430__DOT__e_state))
                                               : ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__exec_src_wr)
                                                   ? 
                                                  (7U 
                                                   == (IData)(vlSelf->openMSP430__DOT__e_state))
                                                   : 
                                                  (0xbU 
                                                   == (IData)(vlSelf->openMSP430__DOT__e_state)))));
    if ((1U & (~ (IData)(vlSelf->cpu_mclk)))) {
        vlSelf->openMSP430__DOT__execution_unit_0__DOT__clock_gate_mdb_in_buf__DOT__enable_latch 
            = ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__mdb_in_buf_en) 
               | (IData)(vlSelf->scan_enable));
    }
    vlSelf->openMSP430__DOT__multiplier_0__DOT__result_clr 
        = (1U & (((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__reg_wr) 
                  >> 8U) & (~ (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__acc_sel))));
    vlSelf->openMSP430__DOT__watchdog_0__DOT__wdt_clk_cnt 
        = ((IData)(vlSelf->smclk) & (IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__clock_gate_wdtcnt__DOT__enable_latch));
    vlSelf->dma_dout = ((IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_din) 
                        & (- (IData)((IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__dma_ready_dly))));
    vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_dmem_sel 
        = ((0x100U <= (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_addr)) 
           & (0x300U > (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_addr)));
    vlSelf->pmem_din = vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_dout;
    vlSelf->openMSP430__DOT__decode_noirq = ((2U == (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__i_state)) 
                                             & ((IData)(vlSelf->openMSP430__DOT__exec_done) 
                                                | (0xdU 
                                                   == (IData)(vlSelf->openMSP430__DOT__e_state))));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__mclk_mdb_in_buf 
        = ((IData)(vlSelf->cpu_mclk) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__clock_gate_mdb_in_buf__DOT__enable_latch));
    if ((1U & (~ (IData)(vlSelf->dma_mclk)))) {
        vlSelf->openMSP430__DOT__multiplier_0__DOT__clock_gate_reslo__DOT__enable_latch 
            = (1U & (((((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__reg_wr) 
                        >> 0xaU) | (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__result_clr)) 
                      | (0U != (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__cycle))) 
                     | (IData)(vlSelf->scan_enable)));
    }
    if ((1U & (~ (IData)(vlSelf->dma_mclk)))) {
        vlSelf->openMSP430__DOT__multiplier_0__DOT__clock_gate_reshi__DOT__enable_latch 
            = (1U & (((((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__reg_wr) 
                        >> 0xcU) | (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__result_clr)) 
                      | (0U != (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__cycle))) 
                     | (IData)(vlSelf->scan_enable)));
    }
    vlSelf->dma_resp = (((~ (IData)(vlSelf->openMSP430__DOT__dbg_mem_en)) 
                         & (~ (((IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_dmem_sel) 
                                | (0x7800U <= (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_addr))) 
                               | (0x100U > (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_addr))))) 
                        & (IData)(vlSelf->dma_en));
    vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_swbrk 
        = (((0x4343U == (IData)(vlSelf->openMSP430__DOT__fe_mdb_in)) 
            & (IData)(vlSelf->openMSP430__DOT__decode_noirq)) 
           & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__cpu_ctl));
    vlSelf->openMSP430__DOT__frontend_0__DOT__decode 
        = ((IData)(vlSelf->openMSP430__DOT__decode_noirq) 
           | (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__irq_detect));
    vlSelf->openMSP430__DOT__dbg_0__DOT__cpu_stat_set 
        = (((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_swbrk) 
            << 1U) | (IData)(vlSelf->puc_pnd_set));
    if ((1U & (~ (IData)(vlSelf->cpu_mclk)))) {
        vlSelf->openMSP430__DOT__frontend_0__DOT__clock_gate_decode__DOT__enable_latch 
            = ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__decode) 
               | (IData)(vlSelf->scan_enable));
    }
    vlSelf->openMSP430__DOT__frontend_0__DOT__mclk_decode 
        = ((IData)(vlSelf->cpu_mclk) & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__clock_gate_decode__DOT__enable_latch));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__30(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__30\n"); );
    // Body
    if (vlSelf->por) {
        vlSelf->openMSP430__DOT__wdtifg = 0U;
    } else if (vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtifg_set) {
        vlSelf->openMSP430__DOT__wdtifg = 1U;
    } else if (vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtifg_clr) {
        vlSelf->openMSP430__DOT__wdtifg = 0U;
    }
}

extern const VlUnpacked<CData/*1:0*/, 16> VopenMSP430__ConstPool__TABLE_045b1749_0;

VL_INLINE_OPT void VopenMSP430___024root___multiclk__TOP__31(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___multiclk__TOP__31\n"); );
    // Variables
    CData/*3:0*/ __Vtableidx2;
    // Body
    __Vtableidx2 = (((((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_start) 
                       & (~ (IData)((0U != (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_cnt))))) 
                      | (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_startb)) 
                     << 3U) | (((IData)(vlSelf->openMSP430__DOT__cpu_halt_st) 
                                << 2U) | (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_state)));
    vlSelf->openMSP430__DOT__dbg_0__DOT__mem_state_nxt 
        = VopenMSP430__ConstPool__TABLE_045b1749_0[__Vtableidx2];
    vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_dout = 
        (((((((((0x20bU & (- (IData)((1U & vlSelf->openMSP430__DOT__dbg_0__DOT__reg_dec)))) 
                | (0x1011U & (- (IData)((1U & (vlSelf->openMSP430__DOT__dbg_0__DOT__reg_dec 
                                               >> 1U)))))) 
               | (((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__cpu_ctl) 
                   << 3U) & (- (IData)((1U & (vlSelf->openMSP430__DOT__dbg_0__DOT__reg_dec 
                                              >> 2U)))))) 
              | ((((IData)((0U != (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_stat))) 
                   << 4U) | (((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__cpu_stat) 
                              << 2U) | (IData)(vlSelf->openMSP430__DOT__cpu_halt_st))) 
                 & (- (IData)((1U & (vlSelf->openMSP430__DOT__dbg_0__DOT__reg_dec 
                                     >> 3U)))))) | 
             (((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_ctl) 
               << 1U) & (- (IData)((1U & (vlSelf->openMSP430__DOT__dbg_0__DOT__reg_dec 
                                          >> 4U)))))) 
            | ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_data) 
               & (- (IData)((1U & (vlSelf->openMSP430__DOT__dbg_0__DOT__reg_dec 
                                   >> 6U)))))) | ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_addr) 
                                                  & (- (IData)(
                                                               (1U 
                                                                & (vlSelf->openMSP430__DOT__dbg_0__DOT__reg_dec 
                                                                   >> 5U)))))) 
          | ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_cnt) 
             & (- (IData)((1U & (vlSelf->openMSP430__DOT__dbg_0__DOT__reg_dec 
                                 >> 7U)))))) | (((((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_ctl) 
                                                   & (- (IData)(
                                                                (1U 
                                                                 & (vlSelf->openMSP430__DOT__dbg_0__DOT__reg_dec 
                                                                    >> 8U))))) 
                                                  | ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_stat) 
                                                     & (- (IData)(
                                                                  (1U 
                                                                   & (vlSelf->openMSP430__DOT__dbg_0__DOT__reg_dec 
                                                                      >> 9U)))))) 
                                                 | ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_addr0) 
                                                    & (- (IData)(
                                                                 (1U 
                                                                  & (vlSelf->openMSP430__DOT__dbg_0__DOT__reg_dec 
                                                                     >> 0xaU)))))) 
                                                | ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_addr1) 
                                                   & (- (IData)(
                                                                (1U 
                                                                 & (vlSelf->openMSP430__DOT__dbg_0__DOT__reg_dec 
                                                                    >> 0xbU)))))));
}

VL_INLINE_OPT void VopenMSP430___024root___multiclk__TOP__32(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___multiclk__TOP__32\n"); );
    // Body
    vlSelf->openMSP430__DOT__multiplier_0__DOT__product 
        = (0x3ffffffU & VL_MULS_III(26,26,26, (0x3ffffffU 
                                               & VL_EXTENDS_II(26,17, 
                                                               ((0xffff0000U 
                                                                 & (((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__sign_sel) 
                                                                     << 0x10U) 
                                                                    & ((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__op1) 
                                                                       << 1U))) 
                                                                | (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__op1)))), 
                                    (0x3ffffffU & VL_EXTENDS_II(26,9, 
                                                                ((1U 
                                                                  & (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__cycle))
                                                                  ? 
                                                                 ((0x1ffff00U 
                                                                   & (((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__sign_sel) 
                                                                       << 8U) 
                                                                      & ((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__op2) 
                                                                         >> 7U))) 
                                                                  | (0xffU 
                                                                     & ((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__op2) 
                                                                        >> 8U)))
                                                                  : 
                                                                 (0xffU 
                                                                  & (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__op2)))))));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__33(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__33\n"); );
    // Body
    vlSelf->openMSP430__DOT__nmi_pnd = ((IData)(vlSelf->openMSP430__DOT__sfr_0__DOT__nmiifg) 
                                        & (IData)(vlSelf->openMSP430__DOT__sfr_0__DOT__nmie));
}

VL_INLINE_OPT void VopenMSP430___024root___multiclk__TOP__34(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___multiclk__TOP__34\n"); );
    // Variables
    CData/*5:0*/ __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot64__1__binary;
    QData/*63:0*/ __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot64__1__Vfuncout;
    // Body
    __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot64__1__binary 
        = vlSelf->openMSP430__DOT__frontend_0__DOT__irq_num;
    __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot64__1__Vfuncout = 0ULL;
    __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot64__1__Vfuncout 
        = (__Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot64__1__Vfuncout 
           | ((QData)((IData)(1U)) << (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot64__1__binary)));
    vlSelf->openMSP430__DOT__frontend_0__DOT__irq_acc_all 
        = (__Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot64__1__Vfuncout 
           & (- (QData)((IData)((0U == (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__i_state))))));
    vlSelf->irq_acc = (0x3fffU & (IData)((vlSelf->openMSP430__DOT__frontend_0__DOT__irq_acc_all 
                                          >> 0x30U)));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__35(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__35\n"); );
    // Variables
    CData/*0:0*/ __Vdly__openMSP430__DOT__watchdog_0__DOT__wdt_evt_toggle;
    // Body
    __Vdly__openMSP430__DOT__watchdog_0__DOT__wdt_evt_toggle 
        = vlSelf->openMSP430__DOT__watchdog_0__DOT__wdt_evt_toggle;
    if (vlSelf->openMSP430__DOT__watchdog_0__DOT__wdt_rst) {
        __Vdly__openMSP430__DOT__watchdog_0__DOT__wdt_evt_toggle = 0U;
    } else if (vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtqn_edge) {
        __Vdly__openMSP430__DOT__watchdog_0__DOT__wdt_evt_toggle 
            = (1U & (~ (IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdt_evt_toggle)));
    }
    vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtqn_edge_reg 
        = ((~ (IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdt_rst)) 
           & (IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtqn_edge));
    if (vlSelf->openMSP430__DOT__watchdog_0__DOT__wdt_rst) {
        vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtcnt = 0U;
        vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtisx_ss = 0U;
    } else {
        vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtcnt 
            = ((IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtcnt_clr)
                ? 0U : (IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtcnt_nxt));
        vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtisx_ss 
            = vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtisx_s;
    }
    vlSelf->openMSP430__DOT__watchdog_0__DOT__wdt_evt_toggle 
        = __Vdly__openMSP430__DOT__watchdog_0__DOT__wdt_evt_toggle;
    vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtcnt_nxt 
        = (0xffffU & ((IData)(1U) + (IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtcnt)));
    vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtisx_s 
        = ((IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdt_rst)
            ? 0U : (3U & (IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtctl)));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__36(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__36\n"); );
    // Body
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__mdb_in_buf 
        = ((IData)(vlSelf->puc_rst) ? 0U : (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__mdb_in_bw));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__37(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__37\n"); );
    // Variables
    CData/*7:0*/ __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot8__3__Vfuncout;
    CData/*2:0*/ __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot8__3__binary;
    CData/*3:0*/ __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__7__binary;
    CData/*3:0*/ __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__8__binary;
    SData/*15:0*/ __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__7__Vfuncout;
    SData/*15:0*/ __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__8__Vfuncout;
    // Body
    vlSelf->openMSP430__DOT__frontend_0__DOT__inst_sz 
        = ((IData)(vlSelf->puc_rst) ? 0U : (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_sz_nxt));
    vlSelf->openMSP430__DOT__inst_mov = (1U & ((~ (IData)(vlSelf->puc_rst)) 
                                               & ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_to_1hot) 
                                                  >> 4U)));
    if (vlSelf->puc_rst) {
        vlSelf->openMSP430__DOT__frontend_0__DOT__inst_jmp_bin = 0U;
        vlSelf->openMSP430__DOT__frontend_0__DOT__inst_src_bin = 0U;
        vlSelf->openMSP430__DOT__inst_ad = 0U;
        vlSelf->openMSP430__DOT__inst_alu = 0U;
        vlSelf->openMSP430__DOT__frontend_0__DOT__inst_dest_bin = 0U;
        vlSelf->openMSP430__DOT__inst_as = 0U;
        vlSelf->openMSP430__DOT__inst_type = 0U;
        vlSelf->openMSP430__DOT__inst_so = 0U;
    } else {
        vlSelf->openMSP430__DOT__frontend_0__DOT__inst_jmp_bin 
            = (7U & ((IData)(vlSelf->openMSP430__DOT__fe_mdb_in) 
                     >> 0xaU));
        vlSelf->openMSP430__DOT__frontend_0__DOT__inst_src_bin 
            = (0xfU & ((IData)(vlSelf->openMSP430__DOT__fe_mdb_in) 
                       >> 8U));
        vlSelf->openMSP430__DOT__inst_ad = vlSelf->openMSP430__DOT__frontend_0__DOT__inst_ad_nxt;
        vlSelf->openMSP430__DOT__inst_alu = vlSelf->openMSP430__DOT__frontend_0__DOT__inst_alu_nxt;
        vlSelf->openMSP430__DOT__frontend_0__DOT__inst_dest_bin 
            = (0xfU & (IData)(vlSelf->openMSP430__DOT__fe_mdb_in));
        vlSelf->openMSP430__DOT__inst_as = (((IData)(
                                                     (0U 
                                                      != 
                                                      (0x3fU 
                                                       & ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_as_nxt) 
                                                          >> 7U)))) 
                                             << 7U) 
                                            | (0x7fU 
                                               & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_as_nxt)));
        vlSelf->openMSP430__DOT__inst_type = vlSelf->openMSP430__DOT__frontend_0__DOT__inst_type_nxt;
        vlSelf->openMSP430__DOT__inst_so = vlSelf->openMSP430__DOT__frontend_0__DOT__inst_so_nxt;
    }
    vlSelf->openMSP430__DOT__frontend_0__DOT__is_sext 
        = (IData)((0U != (0x72U & (IData)(vlSelf->openMSP430__DOT__inst_as))));
    __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot8__3__binary 
        = vlSelf->openMSP430__DOT__frontend_0__DOT__inst_jmp_bin;
    __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot8__3__Vfuncout = 0U;
    __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot8__3__Vfuncout 
        = ((IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot8__3__Vfuncout) 
           | (0xffU & ((IData)(1U) << (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot8__3__binary))));
    vlSelf->openMSP430__DOT__inst_jmp = ((IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot8__3__Vfuncout) 
                                         & (- (IData)(
                                                      (1U 
                                                       & ((IData)(vlSelf->openMSP430__DOT__inst_type) 
                                                          >> 1U)))));
    __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__8__binary 
        = vlSelf->openMSP430__DOT__frontend_0__DOT__inst_dest_bin;
    __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__8__Vfuncout = 0U;
    __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__8__Vfuncout 
        = ((IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__8__Vfuncout) 
           | (0xffffU & ((IData)(1U) << (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__8__binary))));
    __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__7__binary 
        = vlSelf->openMSP430__DOT__frontend_0__DOT__inst_src_bin;
    __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__7__Vfuncout = 0U;
    __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__7__Vfuncout 
        = ((IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__7__Vfuncout) 
           | (0xffffU & ((IData)(1U) << (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__7__binary))));
    vlSelf->openMSP430__DOT__inst_src = ((4U & (IData)(vlSelf->openMSP430__DOT__inst_type))
                                          ? (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__7__Vfuncout)
                                          : ((0x40U 
                                              & (IData)(vlSelf->openMSP430__DOT__inst_so))
                                              ? 2U : 
                                             ((0x80U 
                                               & (IData)(vlSelf->openMSP430__DOT__inst_so))
                                               ? 1U
                                               : ((1U 
                                                   & (IData)(vlSelf->openMSP430__DOT__inst_type))
                                                   ? (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__8__Vfuncout)
                                                   : 0U))));
}

VL_INLINE_OPT void VopenMSP430___024root___multiclk__TOP__38(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___multiclk__TOP__38\n"); );
    // Body
    vlSelf->openMSP430__DOT__multiplier_0__DOT__result_nxt 
        = (0x1ffffffffULL & ((QData)((IData)((((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__reshi) 
                                               << 0x10U) 
                                              | (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__reslo)))) 
                             + (QData)((IData)(((1U 
                                                 & (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__cycle))
                                                 ? 
                                                (vlSelf->openMSP430__DOT__multiplier_0__DOT__product 
                                                 << 8U)
                                                 : 
                                                (((- (IData)(
                                                             ((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__sign_sel) 
                                                              & (vlSelf->openMSP430__DOT__multiplier_0__DOT__product 
                                                                 >> 0x17U)))) 
                                                  << 0x18U) 
                                                 | (0xffffffU 
                                                    & vlSelf->openMSP430__DOT__multiplier_0__DOT__product)))))));
    vlSelf->openMSP430__DOT__multiplier_0__DOT__sumext_s_nxt 
        = (3U & ((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__sign_sel)
                  ? (- (IData)((1U & (IData)((vlSelf->openMSP430__DOT__multiplier_0__DOT__result_nxt 
                                              >> 0x1fU)))))
                  : (1U & ((IData)((vlSelf->openMSP430__DOT__multiplier_0__DOT__result_nxt 
                                    >> 0x20U)) | (IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__sumext_s)))));
}

VL_INLINE_OPT void VopenMSP430___024root___combo__TOP__39(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___combo__TOP__39\n"); );
    // Variables
    CData/*3:0*/ openMSP430__DOT__frontend_0__DOT__src_reg;
    CData/*7:0*/ __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot8__2__Vfuncout;
    CData/*2:0*/ __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot8__2__binary;
    CData/*3:0*/ __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__4__binary;
    SData/*15:0*/ __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__4__Vfuncout;
    // Body
    if (vlSelf->scan_mode) {
        vlSelf->openMSP430__DOT__watchdog_0__DOT__wakeup_cell_wdog__DOT__wkup_clk 
            = vlSelf->dma_mclk;
        vlSelf->openMSP430__DOT__watchdog_0__DOT__wdt_rst 
            = (1U & (IData)(vlSelf->puc_rst));
    } else {
        vlSelf->openMSP430__DOT__watchdog_0__DOT__wakeup_cell_wdog__DOT__wkup_clk 
            = vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtqn_edge_reg;
        vlSelf->openMSP430__DOT__watchdog_0__DOT__wdt_rst 
            = (1U & ((IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__sync_reset_por__DOT__data_sync) 
                     >> 1U));
    }
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__mdb_in_bw 
        = (0xffffU & ((IData)(vlSelf->openMSP430__DOT__inst_bw)
                       ? ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__mab_lsb)
                           ? ((0xff00U & (IData)(vlSelf->openMSP430__DOT__eu_mdb_in)) 
                              | (0xffU & ((IData)(vlSelf->openMSP430__DOT__eu_mdb_in) 
                                          >> 8U))) : (IData)(vlSelf->openMSP430__DOT__eu_mdb_in))
                       : (IData)(vlSelf->openMSP430__DOT__eu_mdb_in)));
    vlSelf->openMSP430__DOT__frontend_0__DOT__inst_type_nxt 
        = ((((0U != (3U & ((IData)(vlSelf->openMSP430__DOT__fe_mdb_in) 
                           >> 0xeU))) << 2U) | (((1U 
                                                  == 
                                                  (7U 
                                                   & ((IData)(vlSelf->openMSP430__DOT__fe_mdb_in) 
                                                      >> 0xdU))) 
                                                 << 1U) 
                                                | (0U 
                                                   == 
                                                   (7U 
                                                    & ((IData)(vlSelf->openMSP430__DOT__fe_mdb_in) 
                                                       >> 0xdU))))) 
           & (- (IData)((1U & (~ (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__irq_detect))))));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_incr 
        = ((((IData)(vlSelf->openMSP430__DOT__exec_done) 
             & ((IData)(vlSelf->openMSP430__DOT__inst_as) 
                >> 3U)) | ((6U == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                           & ((IData)(vlSelf->openMSP430__DOT__inst_so) 
                              >> 6U))) | ((0xbU == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                                          & ((IData)(vlSelf->openMSP430__DOT__inst_so) 
                                             >> 6U)));
    if ((1U & (~ (IData)(vlSelf->cpu_mclk)))) {
        vlSelf->openMSP430__DOT__execution_unit_0__DOT__clock_gate_mdb_out_nxt__DOT__enable_latch 
            = (((9U == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                | ((((0xbU == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                     & (~ ((IData)(vlSelf->openMSP430__DOT__inst_so) 
                           >> 5U))) | (2U == (IData)(vlSelf->openMSP430__DOT__e_state))) 
                   | (0U == (IData)(vlSelf->openMSP430__DOT__e_state)))) 
               | (IData)(vlSelf->scan_enable));
    }
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__mb_wr_det 
        = (((((1U == (IData)(vlSelf->openMSP430__DOT__e_state)) 
              & (~ (IData)(vlSelf->openMSP430__DOT__inst_irq_rst))) 
             | ((3U == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                & (~ (IData)(vlSelf->openMSP430__DOT__inst_irq_rst)))) 
            | ((0xaU == (IData)(vlSelf->openMSP430__DOT__e_state)) 
               & (~ ((IData)(vlSelf->openMSP430__DOT__inst_so) 
                     >> 6U)))) | (7U == (IData)(vlSelf->openMSP430__DOT__e_state)));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_dest_wr 
        = (((0xbU == (IData)(vlSelf->openMSP430__DOT__e_state)) 
            & ((((((IData)(vlSelf->openMSP430__DOT__inst_type) 
                   >> 2U) & (IData)(vlSelf->openMSP430__DOT__inst_ad)) 
                 & (~ ((IData)(vlSelf->openMSP430__DOT__inst_alu) 
                       >> 0xbU))) | (((IData)(vlSelf->openMSP430__DOT__inst_type) 
                                      & (IData)(vlSelf->openMSP430__DOT__inst_as)) 
                                     & (~ (IData)((0U 
                                                   != 
                                                   (0x70U 
                                                    & (IData)(vlSelf->openMSP430__DOT__inst_so))))))) 
               | ((IData)(vlSelf->openMSP430__DOT__inst_type) 
                  >> 1U))) | (IData)(vlSelf->openMSP430__DOT__dbg_reg_wr));
    if ((1U & (~ (IData)(vlSelf->cpu_mclk)))) {
        vlSelf->openMSP430__DOT__frontend_0__DOT__clock_gate_inst_dext__DOT__enable_latch 
            = ((((3U == (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__i_state)) 
                 & (~ (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__is_sext))) 
                | (4U == (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__i_state))) 
               | (IData)(vlSelf->scan_enable));
    }
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_sp_wr 
        = ((((((1U == (IData)(vlSelf->openMSP430__DOT__e_state)) 
               | (3U == (IData)(vlSelf->openMSP430__DOT__e_state))) 
              & (~ (IData)(vlSelf->openMSP430__DOT__inst_irq_rst))) 
             | ((9U == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                & (((IData)((0U != (0x30U & (IData)(vlSelf->openMSP430__DOT__inst_so)))) 
                    & (~ ((IData)(vlSelf->openMSP430__DOT__inst_as) 
                          >> 1U))) & (~ ((IData)((0U 
                                                  != 
                                                  (0xcU 
                                                   & (IData)(vlSelf->openMSP430__DOT__inst_as)))) 
                                         & ((IData)(vlSelf->openMSP430__DOT__inst_src) 
                                            >> 1U)))))) 
            | ((5U == (IData)(vlSelf->openMSP430__DOT__e_state)) 
               & ((IData)((0U != (0x30U & (IData)(vlSelf->openMSP430__DOT__inst_so)))) 
                  & ((IData)(vlSelf->openMSP430__DOT__inst_as) 
                     >> 1U)))) | ((6U == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                                  & ((IData)((0U != 
                                              (0x30U 
                                               & (IData)(vlSelf->openMSP430__DOT__inst_so)))) 
                                     & ((IData)((0U 
                                                 != 
                                                 (0xcU 
                                                  & (IData)(vlSelf->openMSP430__DOT__inst_as)))) 
                                        & ((IData)(vlSelf->openMSP430__DOT__inst_src) 
                                           >> 1U)))));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__inst_src_in 
        = ((0U == (IData)(vlSelf->openMSP430__DOT__e_state))
            ? 4U : (IData)(vlSelf->openMSP430__DOT__inst_src));
    __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__4__binary 
        = (0xfU & ((IData)(vlSelf->openMSP430__DOT__fe_mdb_in) 
                   >> 0xcU));
    __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__4__Vfuncout = 0U;
    __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__4__Vfuncout 
        = ((IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__4__Vfuncout) 
           | (0xffffU & ((IData)(1U) << (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__4__binary))));
    vlSelf->openMSP430__DOT__frontend_0__DOT__inst_to_1hot 
        = ((IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__4__Vfuncout) 
           & (- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_type_nxt) 
                               >> 2U)))));
    __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot8__2__binary 
        = (7U & ((IData)(vlSelf->openMSP430__DOT__fe_mdb_in) 
                 >> 7U));
    __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot8__2__Vfuncout = 0U;
    __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot8__2__Vfuncout 
        = ((IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot8__2__Vfuncout) 
           | (0xffU & ((IData)(1U) << (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot8__2__binary))));
    vlSelf->openMSP430__DOT__frontend_0__DOT__inst_so_nxt 
        = ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__irq_detect)
            ? 0x80U : ((IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot8__2__Vfuncout) 
                       & (- (IData)((1U & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_type_nxt))))));
    vlSelf->openMSP430__DOT__frontend_0__DOT__inst_ad_nxt 
        = ((4U & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_type_nxt))
            ? ((2U == (0xfU & (IData)(vlSelf->openMSP430__DOT__fe_mdb_in)))
                ? ((0x80U & (IData)(vlSelf->openMSP430__DOT__fe_mdb_in))
                    ? 0x40U : 1U) : ((0U == (0xfU & (IData)(vlSelf->openMSP430__DOT__fe_mdb_in)))
                                      ? ((0x80U & (IData)(vlSelf->openMSP430__DOT__fe_mdb_in))
                                          ? 0x10U : 1U)
                                      : ((0x80U & (IData)(vlSelf->openMSP430__DOT__fe_mdb_in))
                                          ? 2U : 1U)))
            : 0U);
    openMSP430__DOT__frontend_0__DOT__src_reg = (0xfU 
                                                 & ((1U 
                                                     & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_type_nxt))
                                                     ? (IData)(vlSelf->openMSP430__DOT__fe_mdb_in)
                                                     : 
                                                    ((IData)(vlSelf->openMSP430__DOT__fe_mdb_in) 
                                                     >> 8U)));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__mclk_mdb_out_nxt 
        = ((IData)(vlSelf->cpu_mclk) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__clock_gate_mdb_out_nxt__DOT__enable_latch));
    vlSelf->openMSP430__DOT__eu_mb_en = (((((6U == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                                            & (~ ((IData)(vlSelf->openMSP430__DOT__inst_as) 
                                                  >> 5U))) 
                                           | ((0xbU 
                                               == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                                              & ((IData)(vlSelf->openMSP430__DOT__inst_so) 
                                                 >> 6U))) 
                                          | (((9U == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                                              & (~ (IData)(vlSelf->openMSP430__DOT__inst_type))) 
                                             & (~ (IData)(vlSelf->openMSP430__DOT__inst_mov)))) 
                                         | ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__mb_wr_det) 
                                            & (~ ((IData)(vlSelf->openMSP430__DOT__inst_alu) 
                                                  >> 0xbU))));
    vlSelf->openMSP430__DOT__frontend_0__DOT__mclk_inst_dext 
        = ((IData)(vlSelf->cpu_mclk) & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__clock_gate_inst_dext__DOT__enable_latch));
    vlSelf->openMSP430__DOT__frontend_0__DOT__inst_alu_nxt 
        = (((IData)((0U != (0xa00U & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_to_1hot)))) 
            << 0xbU) | (((IData)((0U != (5U & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_so_nxt)))) 
                         << 0xaU) | ((0x200U & ((IData)(
                                                        ((0U 
                                                          != 
                                                          (0xcfe0U 
                                                           & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_to_1hot))) 
                                                         | (0U 
                                                            != 
                                                            (0xdU 
                                                             & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_so_nxt))))) 
                                                << 9U)) 
                                     | ((0x100U & (
                                                   ((IData)(
                                                            (0U 
                                                             != 
                                                             (0x8800U 
                                                              & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_to_1hot)))) 
                                                    << 8U) 
                                                   | (0xffffff00U 
                                                      & ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_so_nxt) 
                                                         << 5U)))) 
                                        | ((0x80U & 
                                            ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_to_1hot) 
                                             >> 3U)) 
                                           | ((0x40U 
                                               & ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_to_1hot) 
                                                  >> 8U)) 
                                              | ((0x20U 
                                                  & ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_to_1hot) 
                                                     >> 8U)) 
                                                 | (((IData)(
                                                             (0U 
                                                              != 
                                                              (0x9800U 
                                                               & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_to_1hot)))) 
                                                     << 4U) 
                                                    | ((8U 
                                                        & ((((IData)(
                                                                     (0U 
                                                                      != 
                                                                      (0x3e0U 
                                                                       & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_to_1hot)))) 
                                                             << 3U) 
                                                            | (0xfffffff8U 
                                                               & ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_type_nxt) 
                                                                  << 2U))) 
                                                           | (0x1ffffff8U 
                                                              & ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_so_nxt) 
                                                                 >> 3U)))) 
                                                       | (((IData)(
                                                                   (0U 
                                                                    != 
                                                                    (0x4c0U 
                                                                     & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_to_1hot)))) 
                                                           << 2U) 
                                                          | (((IData)(
                                                                      (0U 
                                                                       != 
                                                                       (0x300U 
                                                                        & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_to_1hot)))) 
                                                              << 1U) 
                                                             | (IData)(
                                                                       (0U 
                                                                        != 
                                                                        (0x1380U 
                                                                         & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_to_1hot)))))))))))))));
    vlSelf->openMSP430__DOT__frontend_0__DOT__inst_as_nxt 
        = ((2U & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_type_nxt))
            ? 1U : ((3U == (IData)(openMSP430__DOT__frontend_0__DOT__src_reg))
                     ? ((3U == (3U & ((IData)(vlSelf->openMSP430__DOT__fe_mdb_in) 
                                      >> 4U))) ? 0x1000U
                         : ((2U == (3U & ((IData)(vlSelf->openMSP430__DOT__fe_mdb_in) 
                                          >> 4U))) ? 0x800U
                             : ((1U == (3U & ((IData)(vlSelf->openMSP430__DOT__fe_mdb_in) 
                                              >> 4U)))
                                 ? 0x400U : 0x200U)))
                     : ((2U == (IData)(openMSP430__DOT__frontend_0__DOT__src_reg))
                         ? ((3U == (3U & ((IData)(vlSelf->openMSP430__DOT__fe_mdb_in) 
                                          >> 4U))) ? 0x100U
                             : ((2U == (3U & ((IData)(vlSelf->openMSP430__DOT__fe_mdb_in) 
                                              >> 4U)))
                                 ? 0x80U : ((1U == 
                                             (3U & 
                                              ((IData)(vlSelf->openMSP430__DOT__fe_mdb_in) 
                                               >> 4U)))
                                             ? 0x40U
                                             : 1U)))
                         : ((0U == (IData)(openMSP430__DOT__frontend_0__DOT__src_reg))
                             ? ((3U == (3U & ((IData)(vlSelf->openMSP430__DOT__fe_mdb_in) 
                                              >> 4U)))
                                 ? 0x20U : ((2U == 
                                             (3U & 
                                              ((IData)(vlSelf->openMSP430__DOT__fe_mdb_in) 
                                               >> 4U)))
                                             ? 4U : 
                                            ((1U == 
                                              (3U & 
                                               ((IData)(vlSelf->openMSP430__DOT__fe_mdb_in) 
                                                >> 4U)))
                                              ? 0x10U
                                              : 1U)))
                             : ((3U == (3U & ((IData)(vlSelf->openMSP430__DOT__fe_mdb_in) 
                                              >> 4U)))
                                 ? 8U : ((2U == (3U 
                                                 & ((IData)(vlSelf->openMSP430__DOT__fe_mdb_in) 
                                                    >> 4U)))
                                          ? 4U : ((1U 
                                                   == 
                                                   (3U 
                                                    & ((IData)(vlSelf->openMSP430__DOT__fe_mdb_in) 
                                                       >> 4U)))
                                                   ? 2U
                                                   : 1U)))))));
    if ((1U & (~ (IData)(vlSelf->cpu_mclk)))) {
        vlSelf->openMSP430__DOT__frontend_0__DOT__clock_gate_inst_sext__DOT__enable_latch 
            = ((((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__decode) 
                 & ((0U != (0x3fU & ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_as_nxt) 
                                     >> 7U))) | ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_type_nxt) 
                                                 >> 1U))) 
                | ((3U == (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__i_state)) 
                   & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__is_sext))) 
               | (IData)(vlSelf->scan_enable));
    }
    vlSelf->openMSP430__DOT__frontend_0__DOT__inst_sz_nxt 
        = (3U & ((IData)((0U != (0x72U & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_as_nxt)))) 
                 + (1U & ((IData)((0U != (0x52U & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_ad_nxt)))) 
                          & (~ (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_type_nxt))))));
}

VL_INLINE_OPT void VopenMSP430___024root___multiclk__TOP__40(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___multiclk__TOP__40\n"); );
    // Body
    vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtqn_edge 
        = (1U & (((0U == (IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtisx_ss))
                   ? (1U & (((IData)(1U) + (IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtcnt)) 
                            >> 0xfU)) : ((1U == (IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtisx_ss))
                                          ? (7U & (
                                                   ((IData)(1U) 
                                                    + (IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtcnt)) 
                                                   >> 0xdU))
                                          : ((2U == (IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtisx_ss))
                                              ? (0x7fU 
                                                 & (((IData)(1U) 
                                                     + (IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtcnt)) 
                                                    >> 9U))
                                              : (0x3ffU 
                                                 & (((IData)(1U) 
                                                     + (IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtcnt)) 
                                                    >> 6U))))) 
                 & ((IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__sync_cell_wdtcnt_incr__DOT__data_sync) 
                    >> 1U)));
    vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtcnt_clr 
        = (1U & ((((IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__sync_cell_wdtcnt_clr__DOT__data_sync) 
                   >> 1U) ^ (IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtcnt_clr_sync_dly)) 
                 | (IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtqn_edge)));
}

VL_INLINE_OPT void VopenMSP430___024root___multiclk__TOP__41(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___multiclk__TOP__41\n"); );
    // Variables
    CData/*3:0*/ __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__5__binary;
    CData/*3:0*/ __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__6__binary;
    SData/*15:0*/ __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__5__Vfuncout;
    SData/*15:0*/ __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__6__Vfuncout;
    // Body
    __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__6__binary 
        = vlSelf->openMSP430__DOT__frontend_0__DOT__inst_dest_bin;
    __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__6__Vfuncout = 0U;
    __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__6__Vfuncout 
        = ((IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__6__Vfuncout) 
           | (0xffffU & ((IData)(1U) << (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__6__binary))));
    __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__5__binary 
        = (0xfU & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_addr));
    __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__5__Vfuncout = 0U;
    __Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__5__Vfuncout 
        = ((IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__5__Vfuncout) 
           | (0xffffU & ((IData)(1U) << (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__5__binary))));
    vlSelf->openMSP430__DOT__inst_dest = ((IData)(vlSelf->openMSP430__DOT__cpu_halt_st)
                                           ? (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__5__Vfuncout)
                                           : ((2U & (IData)(vlSelf->openMSP430__DOT__inst_type))
                                               ? 1U
                                               : ((IData)(
                                                          (0U 
                                                           != 
                                                           (0xb0U 
                                                            & (IData)(vlSelf->openMSP430__DOT__inst_so))))
                                                   ? 2U
                                                   : (IData)(__Vfunc_openMSP430__DOT__frontend_0__DOT__one_hot16__6__Vfuncout))));
}

VL_INLINE_OPT void VopenMSP430___024root___multiclk__TOP__42(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___multiclk__TOP__42\n"); );
    // Body
    vlSelf->openMSP430__DOT__frontend_0__DOT__inst_dext_rdy 
        = (((3U == (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__i_state)) 
            & (~ (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__is_sext))) 
           | (4U == (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__i_state)));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__44(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__44\n"); );
    // Body
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__mdb_out_nxt 
        = ((IData)(vlSelf->puc_rst) ? 0U : (0xffffU 
                                            & ((9U 
                                                == (IData)(vlSelf->openMSP430__DOT__e_state))
                                                ? (IData)(vlSelf->openMSP430__DOT__pc_nxt)
                                                : vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_out_nxt)));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__45(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__45\n"); );
    // Body
    vlSelf->openMSP430__DOT__inst_dext = ((IData)(vlSelf->puc_rst)
                                           ? 0U : (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__ext_nxt));
}

VL_INLINE_OPT void VopenMSP430___024root___combo__TOP__46(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___combo__TOP__46\n"); );
    // Body
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r4_wr 
        = (((IData)(vlSelf->openMSP430__DOT__inst_dest) 
            >> 4U) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_dest_wr));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r5_wr 
        = (((IData)(vlSelf->openMSP430__DOT__inst_dest) 
            >> 5U) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_dest_wr));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r6_wr 
        = (((IData)(vlSelf->openMSP430__DOT__inst_dest) 
            >> 6U) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_dest_wr));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r7_wr 
        = (((IData)(vlSelf->openMSP430__DOT__inst_dest) 
            >> 7U) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_dest_wr));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r8_wr 
        = (((IData)(vlSelf->openMSP430__DOT__inst_dest) 
            >> 8U) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_dest_wr));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r9_wr 
        = (((IData)(vlSelf->openMSP430__DOT__inst_dest) 
            >> 9U) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_dest_wr));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r10_wr 
        = (((IData)(vlSelf->openMSP430__DOT__inst_dest) 
            >> 0xaU) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_dest_wr));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r11_wr 
        = (((IData)(vlSelf->openMSP430__DOT__inst_dest) 
            >> 0xbU) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_dest_wr));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r12_wr 
        = (((IData)(vlSelf->openMSP430__DOT__inst_dest) 
            >> 0xcU) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_dest_wr));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r13_wr 
        = (((IData)(vlSelf->openMSP430__DOT__inst_dest) 
            >> 0xdU) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_dest_wr));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r14_wr 
        = (((IData)(vlSelf->openMSP430__DOT__inst_dest) 
            >> 0xeU) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_dest_wr));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r15_wr 
        = (((IData)(vlSelf->openMSP430__DOT__inst_dest) 
            >> 0xfU) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_dest_wr));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r1_wr 
        = (((IData)(vlSelf->openMSP430__DOT__inst_dest) 
            >> 1U) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_dest_wr));
    vlSelf->openMSP430__DOT__pc_sw_wr = (((IData)(vlSelf->openMSP430__DOT__inst_dest) 
                                          & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_dest_wr)) 
                                         | (((0xbU 
                                              == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                                             & ((IData)(vlSelf->openMSP430__DOT__inst_so) 
                                                >> 5U)) 
                                            | ((0xaU 
                                                == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                                               & ((IData)(vlSelf->openMSP430__DOT__inst_so) 
                                                  >> 6U))));
    if ((1U & (~ (IData)(vlSelf->cpu_mclk)))) {
        vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r3__DOT__enable_latch 
            = ((((IData)(vlSelf->openMSP430__DOT__inst_dest) 
                 >> 3U) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_dest_wr)) 
               | (IData)(vlSelf->scan_enable));
    }
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r2_wr 
        = ((((IData)(vlSelf->openMSP430__DOT__inst_dest) 
             >> 2U) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_dest_wr)) 
           | ((9U == (IData)(vlSelf->openMSP430__DOT__e_state)) 
              & ((IData)(vlSelf->openMSP430__DOT__inst_so) 
                 >> 6U)));
    if ((1U & (~ (IData)(vlSelf->cpu_mclk)))) {
        vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r4__DOT__enable_latch 
            = (((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r4_wr) 
                | (((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__inst_src_in) 
                    >> 4U) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_incr))) 
               | (IData)(vlSelf->scan_enable));
    }
    if ((1U & (~ (IData)(vlSelf->cpu_mclk)))) {
        vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r5__DOT__enable_latch 
            = (((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r5_wr) 
                | (((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__inst_src_in) 
                    >> 5U) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_incr))) 
               | (IData)(vlSelf->scan_enable));
    }
    if ((1U & (~ (IData)(vlSelf->cpu_mclk)))) {
        vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r6__DOT__enable_latch 
            = (((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r6_wr) 
                | (((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__inst_src_in) 
                    >> 6U) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_incr))) 
               | (IData)(vlSelf->scan_enable));
    }
    if ((1U & (~ (IData)(vlSelf->cpu_mclk)))) {
        vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r7__DOT__enable_latch 
            = (((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r7_wr) 
                | (((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__inst_src_in) 
                    >> 7U) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_incr))) 
               | (IData)(vlSelf->scan_enable));
    }
    if ((1U & (~ (IData)(vlSelf->cpu_mclk)))) {
        vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r8__DOT__enable_latch 
            = (((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r8_wr) 
                | (((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__inst_src_in) 
                    >> 8U) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_incr))) 
               | (IData)(vlSelf->scan_enable));
    }
    if ((1U & (~ (IData)(vlSelf->cpu_mclk)))) {
        vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r9__DOT__enable_latch 
            = (((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r9_wr) 
                | (((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__inst_src_in) 
                    >> 9U) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_incr))) 
               | (IData)(vlSelf->scan_enable));
    }
    if ((1U & (~ (IData)(vlSelf->cpu_mclk)))) {
        vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r10__DOT__enable_latch 
            = (((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r10_wr) 
                | (((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__inst_src_in) 
                    >> 0xaU) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_incr))) 
               | (IData)(vlSelf->scan_enable));
    }
    if ((1U & (~ (IData)(vlSelf->cpu_mclk)))) {
        vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r11__DOT__enable_latch 
            = (((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r11_wr) 
                | (((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__inst_src_in) 
                    >> 0xbU) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_incr))) 
               | (IData)(vlSelf->scan_enable));
    }
    if ((1U & (~ (IData)(vlSelf->cpu_mclk)))) {
        vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r12__DOT__enable_latch 
            = (((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r12_wr) 
                | (((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__inst_src_in) 
                    >> 0xcU) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_incr))) 
               | (IData)(vlSelf->scan_enable));
    }
    if ((1U & (~ (IData)(vlSelf->cpu_mclk)))) {
        vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r13__DOT__enable_latch 
            = (((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r13_wr) 
                | (((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__inst_src_in) 
                    >> 0xdU) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_incr))) 
               | (IData)(vlSelf->scan_enable));
    }
    if ((1U & (~ (IData)(vlSelf->cpu_mclk)))) {
        vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r14__DOT__enable_latch 
            = (((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r14_wr) 
                | (((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__inst_src_in) 
                    >> 0xeU) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_incr))) 
               | (IData)(vlSelf->scan_enable));
    }
    if ((1U & (~ (IData)(vlSelf->cpu_mclk)))) {
        vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r15__DOT__enable_latch 
            = (((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r15_wr) 
                | (((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__inst_src_in) 
                    >> 0xfU) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_incr))) 
               | (IData)(vlSelf->scan_enable));
    }
    if ((1U & (~ (IData)(vlSelf->cpu_mclk)))) {
        vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r1__DOT__enable_latch 
            = ((((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r1_wr) 
                 | (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_sp_wr)) 
                | (((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__inst_src_in) 
                    >> 1U) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_incr))) 
               | (IData)(vlSelf->scan_enable));
    }
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r3 
        = ((IData)(vlSelf->cpu_mclk) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r3__DOT__enable_latch));
    if ((1U & (~ (IData)(vlSelf->cpu_mclk)))) {
        vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r2__DOT__enable_latch 
            = ((((0U != (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_stat_wr)) 
                 | (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r2_wr)) 
                | (0U == (IData)(vlSelf->openMSP430__DOT__e_state))) 
               | (IData)(vlSelf->scan_enable));
    }
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r2 
        = ((IData)(vlSelf->cpu_mclk) & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r2__DOT__enable_latch));
}

VL_INLINE_OPT void VopenMSP430___024root___multiclk__TOP__47(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___multiclk__TOP__47\n"); );
    // Body
    vlSelf->openMSP430__DOT__eu_mdb_out = (0xffffU 
                                           & ((IData)(vlSelf->openMSP430__DOT__inst_bw)
                                               ? ((0xff00U 
                                                   & ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__mdb_out_nxt) 
                                                      << 8U)) 
                                                  | (0xffU 
                                                     & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__mdb_out_nxt)))
                                               : (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__mdb_out_nxt)));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__48(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__48\n"); );
    // Body
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r3 
        = ((IData)(vlSelf->puc_rst) ? 0U : (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_dest_val_in));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__49(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__49\n"); );
    // Body
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r2 
        = ((IData)(vlSelf->puc_rst) ? 0U : ((0U == (IData)(vlSelf->openMSP430__DOT__e_state))
                                             ? 0U : 
                                            (0x1ffU 
                                             & ((0x100U 
                                                 & (((8U 
                                                      & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_stat_wr))
                                                      ? 
                                                     ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_stat) 
                                                      >> 3U)
                                                      : 
                                                     ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_dest_val_in) 
                                                      >> 8U)) 
                                                    << 8U)) 
                                                | (((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r2_nxt) 
                                                    << 3U) 
                                                   | ((4U 
                                                       & (((4U 
                                                            & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_stat_wr))
                                                            ? 
                                                           ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_stat) 
                                                            >> 2U)
                                                            : 
                                                           ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_dest_val_in) 
                                                            >> 2U)) 
                                                          << 2U)) 
                                                      | ((2U 
                                                          & (((2U 
                                                               & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_stat_wr))
                                                               ? 
                                                              ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_stat) 
                                                               >> 1U)
                                                               : 
                                                              ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_dest_val_in) 
                                                               >> 1U)) 
                                                             << 1U)) 
                                                         | (1U 
                                                            & ((1U 
                                                                & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_stat_wr))
                                                                ? (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_stat)
                                                                : (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_dest_val_in))))))))));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__status 
        = ((8U & ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r2) 
                  >> 5U)) | (7U & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r2)));
}

VL_INLINE_OPT void VopenMSP430___024root___combo__TOP__50(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___combo__TOP__50\n"); );
    // Variables
    CData/*0:0*/ openMSP430__DOT__cpuoff;
    CData/*1:0*/ openMSP430__DOT__eu_mb_wr;
    CData/*4:0*/ openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_dadd0;
    CData/*4:0*/ openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_dadd1;
    CData/*4:0*/ openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_dadd2;
    CData/*4:0*/ openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_dadd3;
    CData/*0:0*/ openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_shift_msb;
    CData/*0:0*/ openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__N;
    CData/*0:0*/ openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__Z;
    CData/*0:0*/ openMSP430__DOT__mem_backbone_0__DOT__eu_dmem_en;
    CData/*0:0*/ openMSP430__DOT__sfr_0__DOT__reg_sel;
    CData/*0:0*/ openMSP430__DOT__multiplier_0__DOT__reg_sel;
    CData/*0:0*/ openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__equ_d_addr0;
    CData/*0:0*/ openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__equ_d_addr1;
    CData/*0:0*/ openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__equ_d_range;
    CData/*4:0*/ __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__9__Vfuncout;
    CData/*3:0*/ __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__9__X;
    CData/*3:0*/ __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__9__Y;
    CData/*0:0*/ __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__9__C_;
    CData/*4:0*/ __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__9__Z_;
    CData/*4:0*/ __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__10__Vfuncout;
    CData/*3:0*/ __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__10__X;
    CData/*3:0*/ __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__10__Y;
    CData/*0:0*/ __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__10__C_;
    CData/*4:0*/ __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__10__Z_;
    CData/*4:0*/ __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__11__Vfuncout;
    CData/*3:0*/ __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__11__X;
    CData/*3:0*/ __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__11__Y;
    CData/*0:0*/ __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__11__C_;
    CData/*4:0*/ __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__11__Z_;
    CData/*4:0*/ __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__12__Vfuncout;
    CData/*3:0*/ __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__12__X;
    CData/*3:0*/ __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__12__Y;
    CData/*0:0*/ __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__12__C_;
    CData/*4:0*/ __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__12__Z_;
    SData/*15:0*/ openMSP430__DOT__execution_unit_0__DOT__op_dst;
    SData/*15:0*/ openMSP430__DOT__execution_unit_0__DOT__op_src;
    SData/*15:0*/ openMSP430__DOT__execution_unit_0__DOT__reg_src;
    SData/*15:0*/ openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_src_inv;
    SData/*15:0*/ openMSP430__DOT__sfr_0__DOT__reg_dec;
    SData/*15:0*/ openMSP430__DOT__multiplier_0__DOT__reg_dec;
    IData/*16:0*/ openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_src_in;
    IData/*16:0*/ openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_dst_in;
    IData/*16:0*/ openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_short;
    // Body
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_stat_wr 
        = ((((IData)(vlSelf->openMSP430__DOT__inst_alu) 
             >> 9U) & (0xbU == (IData)(vlSelf->openMSP430__DOT__e_state)))
            ? 0xfU : 0U);
    openMSP430__DOT__execution_unit_0__DOT__reg_src 
        = (((((((((((((((((IData)(vlSelf->openMSP430__DOT__pc) 
                          & (- (IData)((1U & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__inst_src_in))))) 
                         | ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r1) 
                            & (- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__inst_src_in) 
                                                >> 1U)))))) 
                        | ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r2) 
                           & (- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__inst_src_in) 
                                               >> 2U)))))) 
                       | ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r3) 
                          & (- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__inst_src_in) 
                                              >> 3U)))))) 
                      | ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r4) 
                         & (- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__inst_src_in) 
                                             >> 4U)))))) 
                     | ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r5) 
                        & (- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__inst_src_in) 
                                            >> 5U)))))) 
                    | ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r6) 
                       & (- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__inst_src_in) 
                                           >> 6U)))))) 
                   | ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r7) 
                      & (- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__inst_src_in) 
                                          >> 7U)))))) 
                  | ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r8) 
                     & (- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__inst_src_in) 
                                         >> 8U)))))) 
                 | ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r9) 
                    & (- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__inst_src_in) 
                                        >> 9U)))))) 
                | ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r10) 
                   & (- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__inst_src_in) 
                                       >> 0xaU)))))) 
               | ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r11) 
                  & (- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__inst_src_in) 
                                      >> 0xbU)))))) 
              | ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r12) 
                 & (- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__inst_src_in) 
                                     >> 0xcU)))))) 
             | ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r13) 
                & (- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__inst_src_in) 
                                    >> 0xdU)))))) | 
            ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r14) 
             & (- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__inst_src_in) 
                                 >> 0xeU)))))) | ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r15) 
                                                  & (- (IData)(
                                                               (1U 
                                                                & ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__inst_src_in) 
                                                                   >> 0xfU))))));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_dest 
        = (((((((((((((((((IData)(vlSelf->openMSP430__DOT__pc) 
                          & (- (IData)((1U & (IData)(vlSelf->openMSP430__DOT__inst_dest))))) 
                         | ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r1) 
                            & (- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__inst_dest) 
                                                >> 1U)))))) 
                        | ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r2) 
                           & (- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__inst_dest) 
                                               >> 2U)))))) 
                       | ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r3) 
                          & (- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__inst_dest) 
                                              >> 3U)))))) 
                      | ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r4) 
                         & (- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__inst_dest) 
                                             >> 4U)))))) 
                     | ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r5) 
                        & (- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__inst_dest) 
                                            >> 5U)))))) 
                    | ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r6) 
                       & (- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__inst_dest) 
                                           >> 6U)))))) 
                   | ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r7) 
                      & (- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__inst_dest) 
                                          >> 7U)))))) 
                  | ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r8) 
                     & (- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__inst_dest) 
                                         >> 8U)))))) 
                 | ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r9) 
                    & (- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__inst_dest) 
                                        >> 9U)))))) 
                | ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r10) 
                   & (- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__inst_dest) 
                                       >> 0xaU)))))) 
               | ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r11) 
                  & (- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__inst_dest) 
                                      >> 0xbU)))))) 
              | ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r12) 
                 & (- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__inst_dest) 
                                     >> 0xcU)))))) 
             | ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r13) 
                & (- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__inst_dest) 
                                    >> 0xdU)))))) | 
            ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r14) 
             & (- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__inst_dest) 
                                 >> 0xeU)))))) | ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r15) 
                                                  & (- (IData)(
                                                               (1U 
                                                                & ((IData)(vlSelf->openMSP430__DOT__inst_dest) 
                                                                   >> 0xfU))))));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_incr_val 
        = (0xffffU & ((IData)(openMSP430__DOT__execution_unit_0__DOT__reg_src) 
                      + (((IData)(vlSelf->openMSP430__DOT__inst_bw) 
                          & (~ ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__inst_src_in) 
                                >> 1U))) ? 1U : 2U)));
    openMSP430__DOT__execution_unit_0__DOT__op_dst 
        = ((IData)(vlSelf->openMSP430__DOT__cpu_halt_st)
            ? (IData)(vlSelf->openMSP430__DOT__dbg_mem_dout)
            : ((((6U == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                 & (IData)((0U != (0x52U & (IData)(vlSelf->openMSP430__DOT__inst_as))))) 
                | ((7U == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                   & (IData)((0U != (0x52U & (IData)(vlSelf->openMSP430__DOT__inst_as))))))
                ? (IData)(vlSelf->openMSP430__DOT__inst_sext)
                : ((((0xaU == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                     & ((IData)(vlSelf->openMSP430__DOT__inst_so) 
                        >> 6U)) | (((0xbU == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                                    & (~ (((IData)(vlSelf->openMSP430__DOT__inst_ad) 
                                           | ((IData)(vlSelf->openMSP430__DOT__inst_type) 
                                              >> 1U)) 
                                          | (IData)(vlSelf->openMSP430__DOT__inst_type)))) 
                                   & (~ ((IData)(vlSelf->openMSP430__DOT__inst_so) 
                                         >> 6U)))) ? (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__mdb_in_bw)
                    : (((((9U == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                          & (~ (IData)(((0U != (0x70U 
                                                & (IData)(vlSelf->openMSP430__DOT__inst_so))) 
                                        | (0U != (0x40U 
                                                  & (IData)(vlSelf->openMSP430__DOT__inst_ad))))))) 
                         | ((0xaU == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                            & (~ ((IData)(vlSelf->openMSP430__DOT__inst_ad) 
                                  >> 6U)))) | (((0xbU 
                                                 == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                                                & (((IData)(vlSelf->openMSP430__DOT__inst_ad) 
                                                    | ((IData)(vlSelf->openMSP430__DOT__inst_type) 
                                                       >> 1U)) 
                                                   | (IData)(vlSelf->openMSP430__DOT__inst_type))) 
                                               & (~ 
                                                  ((IData)(vlSelf->openMSP430__DOT__inst_so) 
                                                   >> 6U))))
                        ? (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_dest)
                        : (((((((2U == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                                | (1U == (IData)(vlSelf->openMSP430__DOT__e_state))) 
                               | (3U == (IData)(vlSelf->openMSP430__DOT__e_state))) 
                              | (((9U == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                                  & (IData)((0U != 
                                             (0x30U 
                                              & (IData)(vlSelf->openMSP430__DOT__inst_so))))) 
                                 & (~ ((IData)(vlSelf->openMSP430__DOT__inst_so) 
                                       >> 6U)))) | 
                             (((5U == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                               & (IData)((0U != (0x30U 
                                                 & (IData)(vlSelf->openMSP430__DOT__inst_so))))) 
                              & ((IData)(vlSelf->openMSP430__DOT__inst_as) 
                                 >> 1U))) | ((((6U 
                                                == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                                               & (IData)(
                                                         (0U 
                                                          != 
                                                          (0x30U 
                                                           & (IData)(vlSelf->openMSP430__DOT__inst_so))))) 
                                              & (IData)(
                                                        (0U 
                                                         != 
                                                         (0xcU 
                                                          & (IData)(vlSelf->openMSP430__DOT__inst_as))))) 
                                             & ((IData)(vlSelf->openMSP430__DOT__inst_src) 
                                                >> 1U)))
                            ? 0xfffeU : 0U)))));
    openMSP430__DOT__execution_unit_0__DOT__op_src 
        = ((((((2U == (IData)(vlSelf->openMSP430__DOT__e_state)) 
               | (0U == (IData)(vlSelf->openMSP430__DOT__e_state))) 
              | ((6U == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                 & (~ ((IData)(vlSelf->openMSP430__DOT__inst_as) 
                       >> 6U)))) | ((7U == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                                    & (~ ((IData)(vlSelf->openMSP430__DOT__inst_as) 
                                          >> 6U)))) 
            | (((0xbU == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                & (IData)(vlSelf->openMSP430__DOT__inst_as)) 
               & (~ ((IData)(vlSelf->openMSP430__DOT__inst_type) 
                     >> 1U)))) ? (IData)(openMSP430__DOT__execution_unit_0__DOT__reg_src)
            : (((((1U == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                  | (3U == (IData)(vlSelf->openMSP430__DOT__e_state))) 
                 | ((9U == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                    & (IData)((0U != (0x30U & (IData)(vlSelf->openMSP430__DOT__inst_so)))))) 
                | (((5U == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                    & (IData)((0U != (0x30U & (IData)(vlSelf->openMSP430__DOT__inst_so))))) 
                   & ((IData)(vlSelf->openMSP430__DOT__inst_as) 
                      >> 1U))) ? (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__reg_dest)
                : ((((9U == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                     & ((IData)(vlSelf->openMSP430__DOT__inst_so) 
                        >> 6U)) | ((0xbU == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                                   & (IData)((0U != 
                                              (0x5eU 
                                               & (IData)(vlSelf->openMSP430__DOT__inst_as))))))
                    ? ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__mdb_in_buf_valid)
                        ? (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__mdb_in_buf)
                        : (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__mdb_in_bw))
                    : ((((9U == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                         & (~ (IData)((0U != (0x30U 
                                              & (IData)(vlSelf->openMSP430__DOT__inst_so)))))) 
                        | ((0xaU == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                           & (~ (IData)((0U != (0x70U 
                                                & (IData)(vlSelf->openMSP430__DOT__inst_so)))))))
                        ? (IData)(vlSelf->openMSP430__DOT__inst_dext)
                        : (((0xbU == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                            & (((((IData)(vlSelf->openMSP430__DOT__inst_type) 
                                  >> 1U) | ((IData)(vlSelf->openMSP430__DOT__inst_as) 
                                            >> 5U)) 
                                | ((IData)(vlSelf->openMSP430__DOT__inst_as) 
                                   >> 7U)) | ((IData)(vlSelf->openMSP430__DOT__inst_so) 
                                              >> 6U)))
                            ? (IData)(vlSelf->openMSP430__DOT__inst_sext)
                            : 0U)))));
    openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_dst_in 
        = ((0xff00U & ((IData)(openMSP430__DOT__execution_unit_0__DOT__op_dst) 
                       & ((- (IData)((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_bit8_msk))) 
                          << 8U))) | (0xffU & (IData)(openMSP430__DOT__execution_unit_0__DOT__op_dst)));
    openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_shift_msb 
        = (1U & ((1U & (IData)(vlSelf->openMSP430__DOT__inst_so))
                  ? (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__status)
                  : ((IData)(vlSelf->openMSP430__DOT__inst_bw)
                      ? ((IData)(openMSP430__DOT__execution_unit_0__DOT__op_src) 
                         >> 7U) : ((IData)(openMSP430__DOT__execution_unit_0__DOT__op_src) 
                                   >> 0xfU))));
    openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_src_inv 
        = (0xffffU & ((- (IData)(((0xbU == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                                  & (IData)(vlSelf->openMSP430__DOT__inst_alu)))) 
                      ^ (IData)(openMSP430__DOT__execution_unit_0__DOT__op_src)));
    openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_src_in 
        = ((0xff00U & ((IData)(openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_src_inv) 
                       & ((- (IData)((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_bit8_msk))) 
                          << 8U))) | (0xffU & (IData)(openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_src_inv)));
    openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_short 
        = ((((((((- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__inst_alu) 
                                   >> 4U)))) & (openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_src_in 
                                                & openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_dst_in)) 
                | ((- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__inst_alu) 
                                     >> 5U)))) & (openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_src_in 
                                                  | openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_dst_in))) 
               | ((- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__inst_alu) 
                                    >> 6U)))) & (openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_src_in 
                                                 ^ openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_dst_in))) 
              | ((- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__inst_alu) 
                                   >> 0xaU)))) & (((IData)(openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_shift_msb) 
                                                   << 0xfU) 
                                                  | ((0x7f00U 
                                                      & ((IData)(openMSP430__DOT__execution_unit_0__DOT__op_src) 
                                                         >> 1U)) 
                                                     | ((0x80U 
                                                         & (((IData)(vlSelf->openMSP430__DOT__inst_bw)
                                                              ? (IData)(openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_shift_msb)
                                                              : 
                                                             ((IData)(openMSP430__DOT__execution_unit_0__DOT__op_src) 
                                                              >> 8U)) 
                                                            << 7U)) 
                                                        | (0x7fU 
                                                           & ((IData)(openMSP430__DOT__execution_unit_0__DOT__op_src) 
                                                              >> 1U))))))) 
             | ((- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__inst_so) 
                                  >> 1U)))) & ((0xff00U 
                                                & ((IData)(openMSP430__DOT__execution_unit_0__DOT__op_src) 
                                                   << 8U)) 
                                               | (0xffU 
                                                  & ((IData)(openMSP430__DOT__execution_unit_0__DOT__op_src) 
                                                     >> 8U))))) 
            | ((- (IData)((1U & ((IData)(vlSelf->openMSP430__DOT__inst_so) 
                                 >> 3U)))) & ((0xff00U 
                                               & ((- (IData)(
                                                             (1U 
                                                              & ((IData)(openMSP430__DOT__execution_unit_0__DOT__op_src) 
                                                                 >> 7U)))) 
                                                  << 8U)) 
                                              | (0xffU 
                                                 & (IData)(openMSP430__DOT__execution_unit_0__DOT__op_src))))) 
           | ((- (IData)((1U & (~ (IData)(((0U != (0x470U 
                                                   & (IData)(vlSelf->openMSP430__DOT__inst_alu))) 
                                           | (0U != 
                                              (0xaU 
                                               & (IData)(vlSelf->openMSP430__DOT__inst_so))))))))) 
              & openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_src_in));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_add 
        = (0x1ffffU & ((openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_src_in 
                        & (- (IData)((1U & (~ (((((
                                                   ((((IData)(vlSelf->openMSP430__DOT__inst_jmp) 
                                                      >> 6U) 
                                                     & (~ 
                                                        (((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__status) 
                                                          >> 3U) 
                                                         ^ 
                                                         ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__status) 
                                                          >> 2U)))) 
                                                    | (((IData)(vlSelf->openMSP430__DOT__inst_jmp) 
                                                        >> 5U) 
                                                       & (((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__status) 
                                                           >> 3U) 
                                                          ^ 
                                                          ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__status) 
                                                           >> 2U)))) 
                                                   | (((IData)(vlSelf->openMSP430__DOT__inst_jmp) 
                                                       >> 4U) 
                                                      & (~ 
                                                         ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__status) 
                                                          >> 2U)))) 
                                                  | (((IData)(vlSelf->openMSP430__DOT__inst_jmp) 
                                                      >> 3U) 
                                                     & (~ (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__status)))) 
                                                 | (((IData)(vlSelf->openMSP430__DOT__inst_jmp) 
                                                     >> 2U) 
                                                    & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__status))) 
                                                | (((IData)(vlSelf->openMSP430__DOT__inst_jmp) 
                                                    >> 1U) 
                                                   & (~ 
                                                      ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__status) 
                                                       >> 1U)))) 
                                               | ((IData)(vlSelf->openMSP430__DOT__inst_jmp) 
                                                  & ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__status) 
                                                     >> 1U)))))))) 
                       + openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_dst_in));
    __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__9__C_ 
        = (1U & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__status));
    __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__9__Y 
        = (0xfU & openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_dst_in);
    __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__9__X 
        = (0xfU & openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_src_in);
    __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__9__Z_ 
        = (0x1fU & (((IData)(__Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__9__X) 
                     + (IData)(__Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__9__Y)) 
                    + (IData)(__Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__9__C_)));
    __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__9__Vfuncout 
        = (0x1fU & ((0xaU > (IData)(__Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__9__Z_))
                     ? (IData)(__Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__9__Z_)
                     : ((IData)(6U) + (IData)(__Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__9__Z_))));
    openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_dadd0 
        = __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__9__Vfuncout;
    openMSP430__DOT__mem_backbone_0__DOT__eu_dmem_en 
        = ((IData)(vlSelf->openMSP430__DOT__eu_mb_en) 
           & ((0x100U <= (0x7fffU & (vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_add 
                                     >> 1U))) & (0x300U 
                                                 > 
                                                 (0x7fffU 
                                                  & (vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_add 
                                                     >> 1U)))));
    vlSelf->openMSP430__DOT__mem_backbone_0__DOT__eu_per_en 
        = ((IData)(vlSelf->openMSP430__DOT__eu_mb_en) 
           & (0x100U > (0x7fffU & (vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_add 
                                   >> 1U))));
    openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__equ_d_addr0 
        = (((IData)(vlSelf->openMSP430__DOT__eu_mb_en) 
            & ((0xffffU & vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_add) 
               == (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_addr0))) 
           & (~ ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_ctl) 
                 >> 4U)));
    openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__equ_d_addr1 
        = (((IData)(vlSelf->openMSP430__DOT__eu_mb_en) 
            & ((0xffffU & vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_add) 
               == (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_addr1))) 
           & (~ ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_ctl) 
                 >> 4U)));
    openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__equ_d_range 
        = (((IData)(vlSelf->openMSP430__DOT__eu_mb_en) 
            & (((0xffffU & vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_add) 
                >= (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_addr0)) 
               & ((0xffffU & vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_add) 
                  <= (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_addr1)))) 
           & ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_ctl) 
              >> 4U));
    openMSP430__DOT__eu_mb_wr = ((- (IData)((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__mb_wr_det))) 
                                 & ((0x800U & (IData)(vlSelf->openMSP430__DOT__inst_alu))
                                     ? 0U : ((IData)(vlSelf->openMSP430__DOT__inst_bw)
                                              ? ((1U 
                                                  & vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_add)
                                                  ? 2U
                                                  : 1U)
                                              : 3U)));
    __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__10__C_ 
        = (1U & ((IData)(openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_dadd0) 
                 >> 4U));
    __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__10__Y 
        = (0xfU & (openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_dst_in 
                   >> 4U));
    __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__10__X 
        = (0xfU & (openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_src_in 
                   >> 4U));
    __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__10__Z_ 
        = (0x1fU & (((IData)(__Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__10__X) 
                     + (IData)(__Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__10__Y)) 
                    + (IData)(__Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__10__C_)));
    __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__10__Vfuncout 
        = (0x1fU & ((0xaU > (IData)(__Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__10__Z_))
                     ? (IData)(__Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__10__Z_)
                     : ((IData)(6U) + (IData)(__Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__10__Z_))));
    openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_dadd1 
        = __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__10__Vfuncout;
    vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_dmem_en 
        = (((IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_en) 
            & (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_dmem_sel)) 
           & (~ (IData)(openMSP430__DOT__mem_backbone_0__DOT__eu_dmem_en)));
    vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_per_en 
        = (((IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_en) 
            & (0x100U > (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_addr))) 
           & (~ (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__eu_per_en)));
    vlSelf->openMSP430__DOT__mem_backbone_0__DOT__eu_pmem_en 
        = (((IData)(vlSelf->openMSP430__DOT__eu_mb_en) 
            & (~ (IData)((0U != (IData)(openMSP430__DOT__eu_mb_wr))))) 
           & (0x7800U <= (0x7fffU & (vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_add 
                                     >> 1U))));
    vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_stat_set 
        = ((0xffffffe0U & (((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_ctl) 
                            << 4U) & ((((IData)(openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__equ_d_range) 
                                        & (~ ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_ctl) 
                                              >> 3U))) 
                                       & (0U != (IData)(openMSP430__DOT__eu_mb_wr))) 
                                      << 5U))) | ((
                                                   ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_ctl) 
                                                    << 4U) 
                                                   & (((((IData)(openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__equ_d_range) 
                                                         & (~ 
                                                            ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_ctl) 
                                                             >> 3U))) 
                                                        & (~ (IData)(
                                                                     (0U 
                                                                      != (IData)(openMSP430__DOT__eu_mb_wr))))) 
                                                       << 4U) 
                                                      | (0xfffffff0U 
                                                         & (((((IData)(vlSelf->openMSP430__DOT__decode_noirq) 
                                                               & (((IData)(vlSelf->openMSP430__DOT__pc) 
                                                                   >= (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_addr0)) 
                                                                  & ((IData)(vlSelf->openMSP430__DOT__pc) 
                                                                     <= (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_addr1)))) 
                                                              << 4U) 
                                                             & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_ctl)) 
                                                            & ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_ctl) 
                                                               << 1U))))) 
                                                  | ((0xfffffff8U 
                                                      & (((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_ctl) 
                                                          << 2U) 
                                                         & ((((IData)(openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__equ_d_addr1) 
                                                              & (~ 
                                                                 ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_ctl) 
                                                                  >> 3U))) 
                                                             & (0U 
                                                                != (IData)(openMSP430__DOT__eu_mb_wr))) 
                                                            << 3U))) 
                                                     | ((((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_ctl) 
                                                          << 2U) 
                                                         & (((((IData)(openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__equ_d_addr1) 
                                                               & (~ 
                                                                  ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_ctl) 
                                                                   >> 3U))) 
                                                              & (~ (IData)(
                                                                           (0U 
                                                                            != (IData)(openMSP430__DOT__eu_mb_wr))))) 
                                                             << 2U) 
                                                            | (0x7ffffffcU 
                                                               & (((((IData)(vlSelf->openMSP430__DOT__decode_noirq) 
                                                                     & ((IData)(vlSelf->openMSP430__DOT__pc) 
                                                                        == (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_addr1))) 
                                                                    & (~ 
                                                                       ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_ctl) 
                                                                        >> 4U))) 
                                                                   << 2U) 
                                                                  & ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_ctl) 
                                                                     >> 1U))))) 
                                                        | ((0xfffffffeU 
                                                            & ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_ctl) 
                                                               & ((((IData)(openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__equ_d_addr0) 
                                                                    & (~ 
                                                                       ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_ctl) 
                                                                        >> 3U))) 
                                                                   & (0U 
                                                                      != (IData)(openMSP430__DOT__eu_mb_wr))) 
                                                                  << 1U))) 
                                                           | ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_ctl) 
                                                              & ((((IData)(openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__equ_d_addr0) 
                                                                   & (~ 
                                                                      ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_ctl) 
                                                                       >> 3U))) 
                                                                  & (~ (IData)(
                                                                               (0U 
                                                                                != (IData)(openMSP430__DOT__eu_mb_wr))))) 
                                                                 | ((((IData)(vlSelf->openMSP430__DOT__decode_noirq) 
                                                                      & ((IData)(vlSelf->openMSP430__DOT__pc) 
                                                                         == (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_addr0))) 
                                                                     & (~ 
                                                                        ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_ctl) 
                                                                         >> 4U))) 
                                                                    & ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_ctl) 
                                                                       >> 3U)))))))));
    __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__11__C_ 
        = (1U & ((IData)(openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_dadd1) 
                 >> 4U));
    __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__11__Y 
        = (0xfU & (openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_dst_in 
                   >> 8U));
    __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__11__X 
        = (0xfU & (openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_src_in 
                   >> 8U));
    __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__11__Z_ 
        = (0x1fU & (((IData)(__Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__11__X) 
                     + (IData)(__Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__11__Y)) 
                    + (IData)(__Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__11__C_)));
    __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__11__Vfuncout 
        = (0x1fU & ((0xaU > (IData)(__Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__11__Z_))
                     ? (IData)(__Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__11__Z_)
                     : ((IData)(6U) + (IData)(__Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__11__Z_))));
    openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_dadd2 
        = __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__11__Vfuncout;
    vlSelf->dmem_cen = (1U & (~ ((IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_dmem_en) 
                                 | (IData)(openMSP430__DOT__mem_backbone_0__DOT__eu_dmem_en))));
    if (vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_dmem_en) {
        vlSelf->dmem_wen = (3U & (~ (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_wr)));
        vlSelf->dmem_addr = (0x1ffU & ((IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_addr) 
                                       - (IData)(0x100U)));
        vlSelf->dmem_din = vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_dout;
    } else {
        vlSelf->dmem_wen = (3U & (~ (IData)(openMSP430__DOT__eu_mb_wr)));
        vlSelf->dmem_addr = (0x1ffU & ((0x7fffU & (vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_add 
                                                   >> 1U)) 
                                       - (IData)(0x100U)));
        vlSelf->dmem_din = vlSelf->openMSP430__DOT__eu_mdb_out;
    }
    vlSelf->per_we = ((IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_per_en)
                       ? (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_wr)
                       : (IData)(openMSP430__DOT__eu_mb_wr));
    vlSelf->per_en = ((IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_per_en) 
                      | (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__eu_per_en));
    vlSelf->per_addr = (0xffU & ((IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_per_en)
                                  ? (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_addr)
                                  : (vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_add 
                                     >> 1U)));
    vlSelf->openMSP430__DOT__dbg_0__DOT__halt_flag_set 
        = (1U & (((((((vlSelf->openMSP430__DOT__dbg_0__DOT__reg_wr 
                       >> 2U) & (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_din)) 
                     & (~ (IData)(vlSelf->openMSP430__DOT__cpu_halt_st))) 
                    | ((((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__cpu_ctl) 
                         >> 2U) & (IData)(vlSelf->dbg_en_s)) 
                       & (IData)(vlSelf->puc_pnd_set))) 
                   | (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_swbrk)) 
                  | ((0U == (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_state)) 
                     & (1U == (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__mem_state_nxt)))) 
                 | (((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_ctl) 
                     >> 2U) & (0U != (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__dbg_hwbr_0__DOT__brk_stat_set)))));
    __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__12__C_ 
        = (1U & ((IData)(openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_dadd2) 
                 >> 4U));
    __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__12__Y 
        = (0xfU & (openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_dst_in 
                   >> 0xcU));
    __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__12__X 
        = (0xfU & (openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_src_in 
                   >> 0xcU));
    __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__12__Z_ 
        = (0x1fU & (((IData)(__Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__12__X) 
                     + (IData)(__Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__12__Y)) 
                    + (IData)(__Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__12__C_)));
    __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__12__Vfuncout 
        = (0x1fU & ((0xaU > (IData)(__Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__12__Z_))
                     ? (IData)(__Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__12__Z_)
                     : ((IData)(6U) + (IData)(__Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__12__Z_))));
    openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_dadd3 
        = __Vfunc_openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__bcd_add__12__Vfuncout;
    openMSP430__DOT__multiplier_0__DOT__reg_dec = (
                                                   (((((((1U 
                                                          & (- (IData)(
                                                                       (0U 
                                                                        == 
                                                                        (0xeU 
                                                                         & ((IData)(vlSelf->per_addr) 
                                                                            << 1U)))))) 
                                                         | (4U 
                                                            & (- (IData)(
                                                                         (2U 
                                                                          == 
                                                                          (0xeU 
                                                                           & ((IData)(vlSelf->per_addr) 
                                                                              << 1U))))))) 
                                                        | (0x10U 
                                                           & (- (IData)(
                                                                        (4U 
                                                                         == 
                                                                         (0xeU 
                                                                          & ((IData)(vlSelf->per_addr) 
                                                                             << 1U))))))) 
                                                       | (0x40U 
                                                          & (- (IData)(
                                                                       (6U 
                                                                        == 
                                                                        (0xeU 
                                                                         & ((IData)(vlSelf->per_addr) 
                                                                            << 1U))))))) 
                                                      | (0x100U 
                                                         & (- (IData)(
                                                                      (8U 
                                                                       == 
                                                                       (0xeU 
                                                                        & ((IData)(vlSelf->per_addr) 
                                                                           << 1U))))))) 
                                                     | (0x400U 
                                                        & (- (IData)(
                                                                     (0xaU 
                                                                      == 
                                                                      (0xeU 
                                                                       & ((IData)(vlSelf->per_addr) 
                                                                          << 1U))))))) 
                                                    | (0x1000U 
                                                       & (- (IData)(
                                                                    (0xcU 
                                                                     == 
                                                                     (0xeU 
                                                                      & ((IData)(vlSelf->per_addr) 
                                                                         << 1U))))))) 
                                                   | (0x4000U 
                                                      & (- (IData)(
                                                                   (0xeU 
                                                                    == 
                                                                    (0xeU 
                                                                     & ((IData)(vlSelf->per_addr) 
                                                                        << 1U)))))));
    openMSP430__DOT__multiplier_0__DOT__reg_sel = ((IData)(vlSelf->per_en) 
                                                   & (0x13U 
                                                      == 
                                                      (0x7ffU 
                                                       & ((IData)(vlSelf->per_addr) 
                                                          >> 3U))));
    openMSP430__DOT__sfr_0__DOT__reg_dec = (((((1U 
                                                & (- (IData)(
                                                             (0U 
                                                              == 
                                                              (7U 
                                                               & (IData)(vlSelf->per_addr)))))) 
                                               | (4U 
                                                  & (- (IData)(
                                                               (1U 
                                                                == 
                                                                (7U 
                                                                 & (IData)(vlSelf->per_addr))))))) 
                                              | (0x10U 
                                                 & (- (IData)(
                                                              (2U 
                                                               == 
                                                               (7U 
                                                                & (IData)(vlSelf->per_addr))))))) 
                                             | (0x40U 
                                                & (- (IData)(
                                                             (3U 
                                                              == 
                                                              (7U 
                                                               & (IData)(vlSelf->per_addr))))))) 
                                            | (0x100U 
                                               & (- (IData)(
                                                            (4U 
                                                             == 
                                                             (7U 
                                                              & (IData)(vlSelf->per_addr)))))));
    openMSP430__DOT__sfr_0__DOT__reg_sel = ((IData)(vlSelf->per_en) 
                                            & (0U == 
                                               (0x7ffU 
                                                & ((IData)(vlSelf->per_addr) 
                                                   >> 3U))));
    vlSelf->openMSP430__DOT__watchdog_0__DOT__reg_sel 
        = ((IData)(vlSelf->per_en) & (0x48U == (0x1fffU 
                                                & ((IData)(vlSelf->per_addr) 
                                                   >> 1U))));
    vlSelf->openMSP430__DOT__frontend_0__DOT__cpu_halt_req 
        = (1U & (((((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__halt_flag) 
                    | (IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__halt_flag_set)) 
                   & (~ ((IData)(vlSelf->openMSP430__DOT__dbg_0__DOT__inc_step) 
                         >> 1U))) | ((IData)(vlSelf->dma_en) 
                                     & (IData)(vlSelf->dma_priority))) 
                 | (~ (IData)(vlSelf->cpu_en_s))));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_out_nxt 
        = (0x1ffffU & ((1U & ((((IData)(vlSelf->openMSP430__DOT__inst_so) 
                                >> 7U) | (IData)(vlSelf->openMSP430__DOT__cpu_halt_st)) 
                              | ((IData)(vlSelf->openMSP430__DOT__inst_alu) 
                                 >> 3U))) ? (vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_add 
                                             + ((0xbU 
                                                 == (IData)(vlSelf->openMSP430__DOT__e_state)) 
                                                & ((((IData)(vlSelf->openMSP430__DOT__inst_alu) 
                                                     >> 2U) 
                                                    & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__status)) 
                                                   | ((IData)(vlSelf->openMSP430__DOT__inst_alu) 
                                                      >> 1U))))
                        : ((0x80U & (IData)(vlSelf->openMSP430__DOT__inst_alu))
                            ? (((IData)(openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_dadd3) 
                                << 0xcU) | ((0xf00U 
                                             & ((IData)(openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_dadd2) 
                                                << 8U)) 
                                            | ((0xf0U 
                                                & ((IData)(openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_dadd1) 
                                                   << 4U)) 
                                               | (0xfU 
                                                  & (IData)(openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_dadd0)))))
                            : openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_short)));
    vlSelf->openMSP430__DOT__multiplier_0__DOT__reg_wr 
        = ((IData)(openMSP430__DOT__multiplier_0__DOT__reg_dec) 
           & (- (IData)(((0U != (IData)(vlSelf->per_we)) 
                         & (IData)(openMSP430__DOT__multiplier_0__DOT__reg_sel)))));
    vlSelf->openMSP430__DOT__multiplier_0__DOT__reg_rd 
        = ((IData)(openMSP430__DOT__multiplier_0__DOT__reg_dec) 
           & (- (IData)(((~ (IData)((0U != (IData)(vlSelf->per_we)))) 
                         & (IData)(openMSP430__DOT__multiplier_0__DOT__reg_sel)))));
    vlSelf->openMSP430__DOT__sfr_0__DOT__reg_rd = ((IData)(openMSP430__DOT__sfr_0__DOT__reg_dec) 
                                                   & (- (IData)(
                                                                ((~ (IData)(
                                                                            (0U 
                                                                             != (IData)(vlSelf->per_we)))) 
                                                                 & (IData)(openMSP430__DOT__sfr_0__DOT__reg_sel)))));
    vlSelf->openMSP430__DOT__sfr_0__DOT__reg_lo_wr 
        = ((IData)(openMSP430__DOT__sfr_0__DOT__reg_dec) 
           & (- (IData)(((IData)(vlSelf->per_we) & (IData)(openMSP430__DOT__sfr_0__DOT__reg_sel)))));
    vlSelf->openMSP430__DOT__watchdog_0__DOT__reg_wr 
        = (1U & ((- (IData)((0U == (2U & ((IData)(vlSelf->per_addr) 
                                          << 1U))))) 
                 & (- (IData)(((0U != (IData)(vlSelf->per_we)) 
                               & (IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__reg_sel))))));
    if (vlSelf->openMSP430__DOT__inst_bw) {
        openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__N 
            = (1U & (vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_out_nxt 
                     >> 7U));
        openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__Z 
            = (0U == (0xffU & vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_out_nxt));
        vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_dest_val_in 
            = (0xffffU & (0xffU & vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_out_nxt));
    } else {
        openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__N 
            = (1U & (vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_out_nxt 
                     >> 0xfU));
        openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__Z 
            = (0U == (0xffffU & vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_out_nxt));
        vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_dest_val_in 
            = (0xffffU & vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_out_nxt);
    }
    if ((1U & (~ (IData)(vlSelf->dma_mclk)))) {
        vlSelf->openMSP430__DOT__watchdog_0__DOT__clock_gate_wdtctl__DOT__enable_latch 
            = (1U & ((IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__reg_wr) 
                     | (IData)(vlSelf->scan_enable)));
    }
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_stat 
        = ((0x400U & (IData)(vlSelf->openMSP430__DOT__inst_alu))
            ? (((IData)(openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__N) 
                << 2U) | (((IData)(openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__Z) 
                           << 1U) | (1U & openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_src_in)))
            : ((0x100U & (IData)(vlSelf->openMSP430__DOT__inst_alu))
                ? (((IData)(openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__N) 
                    << 2U) | (((IData)(openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__Z) 
                               << 1U) | (1U & (~ (IData)(openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__Z)))))
                : ((0x40U & (IData)(vlSelf->openMSP430__DOT__inst_alu))
                    ? ((8U & (((IData)(vlSelf->openMSP430__DOT__inst_bw)
                                ? ((openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_src_in 
                                    & openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_dst_in) 
                                   >> 7U) : ((openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_src_in 
                                              & openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_dst_in) 
                                             >> 0xfU)) 
                              << 3U)) | (((IData)(openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__N) 
                                          << 2U) | 
                                         (((IData)(openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__Z) 
                                           << 1U) | 
                                          (1U & (~ (IData)(openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__Z))))))
                    : ((8U & (((IData)(vlSelf->openMSP430__DOT__inst_bw)
                                ? ((((~ (openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_src_in 
                                         >> 7U)) & 
                                     (~ (openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_dst_in 
                                         >> 7U))) & 
                                    (vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_out_nxt 
                                     >> 7U)) | (((openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_src_in 
                                                  & openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_dst_in) 
                                                 >> 7U) 
                                                & (~ 
                                                   (vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_out_nxt 
                                                    >> 7U))))
                                : ((((~ (openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_src_in 
                                         >> 0xfU)) 
                                     & (~ (openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_dst_in 
                                           >> 0xfU))) 
                                    & (vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_out_nxt 
                                       >> 0xfU)) | 
                                   (((openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_src_in 
                                      & openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__op_dst_in) 
                                     >> 0xfU) & (~ 
                                                 (vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_out_nxt 
                                                  >> 0xfU))))) 
                              << 3U)) | (((IData)(openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__N) 
                                          << 2U) | 
                                         (((IData)(openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__Z) 
                                           << 1U) | 
                                          (1U & ((IData)(vlSelf->openMSP430__DOT__inst_bw)
                                                  ? 
                                                 (vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_out_nxt 
                                                  >> 8U)
                                                  : 
                                                 (vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_out_nxt 
                                                  >> 0x10U)))))))));
    vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r2_nxt 
        = (0x1fU & ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r2_wr)
                     ? ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_dest_val_in) 
                        >> 3U) : ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r2) 
                                  >> 3U)));
    vlSelf->openMSP430__DOT__watchdog_0__DOT__mclk_wdtctl 
        = ((IData)(vlSelf->dma_mclk) & (IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__clock_gate_wdtctl__DOT__enable_latch));
    openMSP430__DOT__cpuoff = (1U & (((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r2) 
                                      >> 4U) | (((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r2_nxt) 
                                                 >> 1U) 
                                                & (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r2_wr))));
    vlSelf->openMSP430__DOT__frontend_0__DOT__i_state_nxt 
        = ((4U & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__i_state))
            ? ((2U & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__i_state))
                ? 0U : ((1U & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__i_state))
                         ? (((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__irq_detect) 
                             & (~ (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__cpu_halt_req)))
                             ? 0U : ((1U & ((~ (IData)(openMSP430__DOT__cpuoff)) 
                                            & (~ (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__cpu_halt_req))))
                                      ? 2U : 5U)) : 2U))
            : ((2U & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__i_state))
                ? ((1U & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__i_state))
                    ? ((IData)(vlSelf->openMSP430__DOT__pc_sw_wr)
                        ? 2U : ((1U != (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_sz))
                                 ? 4U : 2U)) : ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__irq_detect)
                                                 ? 0U
                                                 : 
                                                ((((IData)(openMSP430__DOT__cpuoff) 
                                                   | (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__cpu_halt_req)) 
                                                  & (IData)(vlSelf->openMSP430__DOT__exec_done))
                                                  ? 5U
                                                  : 
                                                 (((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__cpu_halt_req) 
                                                   & (0xdU 
                                                      == (IData)(vlSelf->openMSP430__DOT__e_state)))
                                                   ? 5U
                                                   : 
                                                  ((IData)(vlSelf->openMSP430__DOT__pc_sw_wr)
                                                    ? 2U
                                                    : 
                                                   (((~ (IData)(vlSelf->openMSP430__DOT__exec_done)) 
                                                     & (0xdU 
                                                        != (IData)(vlSelf->openMSP430__DOT__e_state)))
                                                     ? 2U
                                                     : 
                                                    ((0U 
                                                      != (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_sz_nxt))
                                                      ? 3U
                                                      : 2U)))))))
                : ((1U & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__i_state))
                    ? 2U : 1U)));
    vlSelf->openMSP430__DOT__frontend_0__DOT__e_first_state 
        = ((1U & ((~ (IData)(vlSelf->openMSP430__DOT__cpu_halt_st)) 
                  & ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_so_nxt) 
                     >> 7U))) ? 2U : (((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__cpu_halt_req) 
                                       | (5U == (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__i_state)))
                                       ? 0xdU : ((IData)(openMSP430__DOT__cpuoff)
                                                  ? 0xdU
                                                  : 
                                                 ((IData)(
                                                          (0U 
                                                           != 
                                                           (0x52U 
                                                            & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_as_nxt))))
                                                   ? 5U
                                                   : 
                                                  ((1U 
                                                    & ((IData)(
                                                               (0U 
                                                                != 
                                                                (0x2cU 
                                                                 & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_as_nxt)))) 
                                                       | ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_so_nxt) 
                                                          >> 6U)))
                                                    ? 6U
                                                    : 
                                                   ((IData)(
                                                            (0U 
                                                             != 
                                                             (0x52U 
                                                              & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_ad_nxt))))
                                                     ? 8U
                                                     : 
                                                    ((1U 
                                                      & (IData)(
                                                                ((0U 
                                                                  != 
                                                                  (2U 
                                                                   & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_ad_nxt))) 
                                                                 | (0U 
                                                                    != 
                                                                    (0x70U 
                                                                     & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_so_nxt))))))
                                                      ? 9U
                                                      : 0xbU)))))));
    vlSelf->openMSP430__DOT__frontend_0__DOT__ext_nxt 
        = (0xffffU & ((IData)(vlSelf->openMSP430__DOT__fe_mdb_in) 
                      + (((((3U == (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__i_state)) 
                            & ((IData)(vlSelf->openMSP430__DOT__inst_as) 
                               >> 4U)) | ((4U == (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__i_state)) 
                                          & ((IData)(vlSelf->openMSP430__DOT__inst_ad) 
                                             >> 4U))) 
                          | ((((3U == (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__i_state)) 
                               & (~ ((IData)(vlSelf->openMSP430__DOT__inst_as) 
                                     >> 4U))) & (4U 
                                                 != (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__i_state_nxt))) 
                             & ((IData)(vlSelf->openMSP430__DOT__inst_ad) 
                                >> 4U))) ? 0xfffeU : 0U)));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__51(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__51\n"); );
    // Body
    vlSelf->openMSP430__DOT__e_state = ((IData)(vlSelf->puc_rst)
                                         ? 1U : (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__e_state_nxt));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__52(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__52\n"); );
    // Body
    vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtctl 
        = ((IData)(vlSelf->puc_rst) ? 0U : (0xd3U & (IData)(vlSelf->per_din)));
}

VL_INLINE_OPT void VopenMSP430___024root___combo__TOP__53(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___combo__TOP__53\n"); );
    // Variables
    CData/*0:0*/ openMSP430__DOT__watchdog_0__DOT__wdtpw_error;
    // Body
    vlSelf->openMSP430__DOT__frontend_0__DOT__e_state_nxt 
        = ((8U & (IData)(vlSelf->openMSP430__DOT__e_state))
            ? ((4U & (IData)(vlSelf->openMSP430__DOT__e_state))
                ? ((2U & (IData)(vlSelf->openMSP430__DOT__e_state))
                    ? 2U : (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__e_first_state))
                : ((2U & (IData)(vlSelf->openMSP430__DOT__e_state))
                    ? ((1U & (IData)(vlSelf->openMSP430__DOT__e_state))
                        ? ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__exec_dst_wr)
                            ? 0xaU : ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__exec_jmp)
                                       ? 0xcU : ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__exec_src_wr)
                                                  ? 7U
                                                  : (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__e_first_state))))
                        : ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__exec_jmp)
                            ? 0xcU : (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__e_first_state)))
                    : ((1U & (IData)(vlSelf->openMSP430__DOT__e_state))
                        ? 0xbU : (((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__inst_dext_rdy) 
                                   | (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__exec_dext_rdy))
                                   ? 9U : 8U)))) : 
           ((4U & (IData)(vlSelf->openMSP430__DOT__e_state))
             ? ((2U & (IData)(vlSelf->openMSP430__DOT__e_state))
                 ? ((1U & (IData)(vlSelf->openMSP430__DOT__e_state))
                     ? (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__e_first_state)
                     : ((IData)((0U != (0x52U & (IData)(vlSelf->openMSP430__DOT__inst_ad))))
                         ? 8U : ((1U & (IData)(((0U 
                                                 != 
                                                 (2U 
                                                  & (IData)(vlSelf->openMSP430__DOT__inst_ad))) 
                                                | (0U 
                                                   != 
                                                   (0x70U 
                                                    & (IData)(vlSelf->openMSP430__DOT__inst_so))))))
                                  ? 9U : 0xbU))) : 
                ((1U & (IData)(vlSelf->openMSP430__DOT__e_state))
                  ? (((3U == (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__i_state)) 
                      & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__is_sext))
                      ? 6U : 5U) : 0xbU)) : ((2U & (IData)(vlSelf->openMSP430__DOT__e_state))
                                              ? ((1U 
                                                  & (IData)(vlSelf->openMSP430__DOT__e_state))
                                                  ? 4U
                                                  : 1U)
                                              : ((1U 
                                                  & (IData)(vlSelf->openMSP430__DOT__e_state))
                                                  ? 0U
                                                  : 3U))));
    vlSelf->per_din = ((IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_per_en)
                        ? (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_dout)
                        : (IData)(vlSelf->openMSP430__DOT__eu_mdb_out));
    vlSelf->openMSP430__DOT__sfr_0__DOT__wakeup_cell_nmi__DOT__wkup_clk 
        = (1U & ((IData)(vlSelf->scan_mode) ? (IData)(vlSelf->dma_mclk)
                  : ((IData)(vlSelf->nmi) ^ ((IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtctl) 
                                             >> 6U))));
    vlSelf->openMSP430__DOT__frontend_0__DOT__fetch 
        = ((~ ((2U == (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__i_state)) 
               & (~ ((IData)(vlSelf->openMSP430__DOT__exec_done) 
                     | (0xdU == (IData)(vlSelf->openMSP430__DOT__e_state)))))) 
           & (0xdU != (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__e_state_nxt)));
    vlSelf->openMSP430__DOT__multiplier_0__DOT__per_din_msk 
        = ((IData)(vlSelf->per_din) & (0xffU | (0xff00U 
                                                & ((- (IData)(
                                                              (1U 
                                                               & ((IData)(vlSelf->per_we) 
                                                                  >> 1U)))) 
                                                   << 8U))));
    vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtifg_clr 
        = (1U & ((((IData)(vlSelf->irq_acc) >> 0xaU) 
                  & ((IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtctl) 
                     >> 4U)) | (((IData)(vlSelf->openMSP430__DOT__sfr_0__DOT__reg_lo_wr) 
                                 >> 2U) & (~ (IData)(vlSelf->per_din)))));
    openMSP430__DOT__watchdog_0__DOT__wdtpw_error = 
        ((IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__reg_wr) 
         & (0x5aU != (0xffU & ((IData)(vlSelf->per_din) 
                               >> 8U))));
    if ((1U & (~ (IData)(vlSelf->cpu_mclk)))) {
        vlSelf->openMSP430__DOT__frontend_0__DOT__clock_gate_pc__DOT__enable_latch 
            = (((((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__fetch) 
                  | (IData)(vlSelf->openMSP430__DOT__pc_sw_wr)) 
                 | (0U == (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__i_state))) 
                | (1U == (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__i_state))) 
               | (IData)(vlSelf->scan_enable));
    }
    vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtifg_set 
        = (1U & ((((IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdt_evt_toggle_sync_dly) 
                   ^ ((IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__sync_cell_wdt_evt__DOT__data_sync) 
                      >> 1U)) | (IData)(openMSP430__DOT__watchdog_0__DOT__wdtpw_error)) 
                 | (((IData)(vlSelf->openMSP430__DOT__sfr_0__DOT__reg_lo_wr) 
                     >> 2U) & (IData)(vlSelf->per_din))));
    vlSelf->openMSP430__DOT__frontend_0__DOT__mclk_pc 
        = ((IData)(vlSelf->cpu_mclk) & (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__clock_gate_pc__DOT__enable_latch));
}

VL_INLINE_OPT void VopenMSP430___024root___multiclk__TOP__54(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___multiclk__TOP__54\n"); );
    // Body
    vlSelf->openMSP430__DOT__wdt_irq = ((((IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtctl) 
                                          >> 4U) & (IData)(vlSelf->openMSP430__DOT__wdtifg)) 
                                        & (IData)(vlSelf->openMSP430__DOT__wdtie));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__55(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__55\n"); );
    // Body
    vlSelf->openMSP430__DOT__sfr_0__DOT__nmi_capture 
        = (1U & (~ (IData)(vlSelf->openMSP430__DOT__sfr_0__DOT__wakeup_cell_nmi__DOT__wkup_rst)));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__56(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__56\n"); );
    // Body
    vlSelf->openMSP430__DOT__pc = ((IData)(vlSelf->puc_rst)
                                    ? 0U : (IData)(vlSelf->openMSP430__DOT__pc_nxt));
}

VL_INLINE_OPT void VopenMSP430___024root___combo__TOP__57(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___combo__TOP__57\n"); );
    // Body
    vlSelf->openMSP430__DOT__frontend_0__DOT__irq_detect 
        = (((((IData)(vlSelf->openMSP430__DOT__nmi_pnd) 
              | (((0U != (IData)(vlSelf->irq)) | (IData)(vlSelf->openMSP430__DOT__wdt_irq)) 
                 & ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__r2) 
                    >> 3U))) & (~ (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__cpu_halt_req))) 
            & (~ (IData)(vlSelf->openMSP430__DOT__cpu_halt_st))) 
           & ((IData)(vlSelf->openMSP430__DOT__exec_done) 
              | (5U == (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__i_state))));
    vlSelf->openMSP430__DOT__sfr_0__DOT__wakeup_cell_nmi__DOT__wkup_rst 
        = ((IData)(vlSelf->scan_mode) ? (IData)(vlSelf->puc_rst)
            : (IData)(vlSelf->openMSP430__DOT__sfr_0__DOT__nmi_capture_rst));
    vlSelf->openMSP430__DOT__pc_nxt = (0xffffU & ((IData)(vlSelf->openMSP430__DOT__pc_sw_wr)
                                                   ? (IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__reg_dest_val_in)
                                                   : 
                                                  ((0U 
                                                    == (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__i_state))
                                                    ? 
                                                   (0xff80U 
                                                    | ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__irq_num) 
                                                       << 1U))
                                                    : 
                                                   ((1U 
                                                     == (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__i_state))
                                                     ? (IData)(vlSelf->openMSP430__DOT__fe_mdb_in)
                                                     : 
                                                    ((IData)(vlSelf->openMSP430__DOT__pc) 
                                                     + 
                                                     ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__fetch) 
                                                      << 1U))))));
    vlSelf->openMSP430__DOT__mem_backbone_0__DOT__fe_pmem_en 
        = ((((((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__fetch) 
               | (IData)(vlSelf->openMSP430__DOT__pc_sw_wr)) 
              | (0U == (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__i_state))) 
             | (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__pmem_busy)) 
            | ((IData)(vlSelf->openMSP430__DOT__cpu_halt_st) 
               & (~ (IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__cpu_halt_req)))) 
           & (0x7800U <= (0x7fffU & ((IData)(vlSelf->openMSP430__DOT__pc_nxt) 
                                     >> 1U))));
    vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_pmem_en 
        = ((((IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_en) 
             & (0x7800U <= (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_addr))) 
            & (~ (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__eu_pmem_en))) 
           & (~ (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__fe_pmem_en)));
    vlSelf->openMSP430__DOT__mem_backbone_0__DOT__fe_pmem_save 
        = (((~ (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__fe_pmem_en)) 
            & (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__fe_pmem_en_dly)) 
           & (~ (IData)(vlSelf->openMSP430__DOT__cpu_halt_st)));
    vlSelf->pmem_wen = ((IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_pmem_en)
                         ? (3U & (~ (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_wr)))
                         : 3U);
    vlSelf->pmem_cen = (1U & (~ (((IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__fe_pmem_en) 
                                  | (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__eu_pmem_en)) 
                                 | (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_pmem_en))));
    vlSelf->dma_ready = ((~ (IData)(vlSelf->openMSP430__DOT__dbg_mem_en)) 
                         & ((((IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_dmem_en) 
                              | (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_pmem_en)) 
                             | (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_per_en)) 
                            | (IData)(vlSelf->dma_resp)));
    vlSelf->pmem_addr = (0x7ffU & ((IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_pmem_en)
                                    ? (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__ext_mem_addr)
                                    : ((IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__eu_pmem_en)
                                        ? (0x7fffU 
                                           & (vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_0__DOT__alu_add 
                                              >> 1U))
                                        : (0x7fffU 
                                           & ((IData)(vlSelf->openMSP430__DOT__pc_nxt) 
                                              >> 1U)))));
    if ((1U & (~ (IData)(vlSelf->dma_mclk)))) {
        vlSelf->openMSP430__DOT__mem_backbone_0__DOT__clock_gate_bckup__DOT__enable_latch 
            = ((IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__fe_pmem_save) 
               | (IData)(vlSelf->scan_enable));
    }
    vlSelf->openMSP430__DOT__mem_backbone_0__DOT__mclk_bckup_gated 
        = ((IData)(vlSelf->dma_mclk) & (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__clock_gate_bckup__DOT__enable_latch));
}

VL_INLINE_OPT void VopenMSP430___024root___sequent__TOP__58(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___sequent__TOP__58\n"); );
    // Body
    vlSelf->openMSP430__DOT__mem_backbone_0__DOT__pmem_dout_bckup 
        = ((IData)(vlSelf->puc_rst) ? 0U : (IData)(vlSelf->pmem_dout));
}

VL_INLINE_OPT void VopenMSP430___024root___combo__TOP__59(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___combo__TOP__59\n"); );
    // Body
    vlSelf->openMSP430__DOT__fe_mdb_in = ((IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__pmem_dout_bckup_sel)
                                           ? (IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__pmem_dout_bckup)
                                           : (IData)(vlSelf->pmem_dout));
}

void VopenMSP430___024root___eval(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___eval\n"); );
    // Body
    VopenMSP430___024root___combo__TOP__2(vlSelf);
    if ((((IData)(vlSelf->__VinpClk__TOP__openMSP430__DOT__watchdog_0__DOT__wdt_rst) 
          & (~ (IData)(vlSelf->__Vclklast__TOP____VinpClk__TOP__openMSP430__DOT__watchdog_0__DOT__wdt_rst))) 
         | ((IData)(vlSelf->smclk) & (~ (IData)(vlSelf->__Vclklast__TOP__smclk))))) {
        VopenMSP430___024root___sequent__TOP__4(vlSelf);
    }
    if ((((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))) 
         | ((IData)(vlSelf->smclk) & (~ (IData)(vlSelf->__Vclklast__TOP__smclk))))) {
        VopenMSP430___024root___sequent__TOP__6(vlSelf);
    }
    if ((((IData)(vlSelf->dma_mclk) & (~ (IData)(vlSelf->__Vclklast__TOP__dma_mclk))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__7(vlSelf);
    }
    if ((((IData)(vlSelf->dbg_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__dbg_clk))) 
         | ((IData)(vlSelf->dbg_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__dbg_rst))))) {
        VopenMSP430___024root___sequent__TOP__8(vlSelf);
    }
    if ((((IData)(vlSelf->cpu_mclk) & (~ (IData)(vlSelf->__Vclklast__TOP__cpu_mclk))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__9(vlSelf);
    }
    if ((((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__mclk_reslo) 
          & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__multiplier_0__DOT__mclk_reslo))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__10(vlSelf);
    }
    if ((((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__mclk_reshi) 
          & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__multiplier_0__DOT__mclk_reshi))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__11(vlSelf);
    }
    if ((((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r4) 
          & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r4))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__12(vlSelf);
    }
    if ((((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r5) 
          & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r5))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__13(vlSelf);
    }
    if ((((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r6) 
          & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r6))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__14(vlSelf);
    }
    if ((((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r7) 
          & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r7))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__15(vlSelf);
    }
    if ((((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r8) 
          & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r8))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__16(vlSelf);
    }
    if ((((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r9) 
          & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r9))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__17(vlSelf);
    }
    if ((((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r10) 
          & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r10))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__18(vlSelf);
    }
    if ((((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r11) 
          & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r11))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__19(vlSelf);
    }
    if ((((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r12) 
          & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r12))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__20(vlSelf);
    }
    if ((((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r13) 
          & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r13))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__21(vlSelf);
    }
    if ((((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r14) 
          & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r14))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__22(vlSelf);
    }
    if ((((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r15) 
          & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r15))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__23(vlSelf);
    }
    if ((((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r1) 
          & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r1))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__24(vlSelf);
    }
    if ((((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__mclk_inst_sext) 
          & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__frontend_0__DOT__mclk_inst_sext))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__25(vlSelf);
    }
    if ((((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__mclk_op2) 
          & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__multiplier_0__DOT__mclk_op2))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__26(vlSelf);
    }
    if ((((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__mclk_op1) 
          & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__multiplier_0__DOT__mclk_op1))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__27(vlSelf);
    }
    if ((((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__mclk_irq_num) 
          & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__frontend_0__DOT__mclk_irq_num))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__28(vlSelf);
    }
    VopenMSP430___024root___combo__TOP__29(vlSelf);
    if ((((IData)(vlSelf->dma_mclk) & (~ (IData)(vlSelf->__Vclklast__TOP__dma_mclk))) 
         | ((IData)(vlSelf->por) & (~ (IData)(vlSelf->__Vclklast__TOP__por))))) {
        VopenMSP430___024root___sequent__TOP__30(vlSelf);
    }
    if ((((((IData)(vlSelf->cpu_mclk) & (~ (IData)(vlSelf->__Vclklast__TOP__cpu_mclk))) 
           | ((IData)(vlSelf->dbg_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__dbg_clk)))) 
          | ((IData)(vlSelf->dbg_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__dbg_rst)))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___multiclk__TOP__31(vlSelf);
    }
    if ((((((IData)(vlSelf->dma_mclk) & (~ (IData)(vlSelf->__Vclklast__TOP__dma_mclk))) 
           | ((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__mclk_op1) 
              & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__multiplier_0__DOT__mclk_op1)))) 
          | ((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__mclk_op2) 
             & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__multiplier_0__DOT__mclk_op2)))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___multiclk__TOP__32(vlSelf);
    }
    if ((((IData)(vlSelf->dma_mclk) & (~ (IData)(vlSelf->__Vclklast__TOP__dma_mclk))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__33(vlSelf);
    }
    if (((((IData)(vlSelf->cpu_mclk) & (~ (IData)(vlSelf->__Vclklast__TOP__cpu_mclk))) 
          | ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__mclk_irq_num) 
             & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__frontend_0__DOT__mclk_irq_num)))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___multiclk__TOP__34(vlSelf);
    }
    if ((((IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdt_clk_cnt) 
          & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__watchdog_0__DOT__wdt_clk_cnt))) 
         | ((IData)(vlSelf->__VinpClk__TOP__openMSP430__DOT__watchdog_0__DOT__wdt_rst) 
            & (~ (IData)(vlSelf->__Vclklast__TOP____VinpClk__TOP__openMSP430__DOT__watchdog_0__DOT__wdt_rst))))) {
        VopenMSP430___024root___sequent__TOP__35(vlSelf);
    }
    if ((((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__mclk_mdb_in_buf) 
          & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__mclk_mdb_in_buf))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__36(vlSelf);
    }
    if ((((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__mclk_decode) 
          & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__frontend_0__DOT__mclk_decode))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__37(vlSelf);
    }
    if ((((((((IData)(vlSelf->dma_mclk) & (~ (IData)(vlSelf->__Vclklast__TOP__dma_mclk))) 
             | ((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__mclk_op1) 
                & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__multiplier_0__DOT__mclk_op1)))) 
            | ((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__mclk_op2) 
               & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__multiplier_0__DOT__mclk_op2)))) 
           | ((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__mclk_reshi) 
              & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__multiplier_0__DOT__mclk_reshi)))) 
          | ((IData)(vlSelf->openMSP430__DOT__multiplier_0__DOT__mclk_reslo) 
             & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__multiplier_0__DOT__mclk_reslo)))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___multiclk__TOP__38(vlSelf);
    }
    VopenMSP430___024root___combo__TOP__39(vlSelf);
    if (((((IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__wdt_clk_cnt) 
           & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__watchdog_0__DOT__wdt_clk_cnt))) 
          | ((IData)(vlSelf->__VinpClk__TOP__openMSP430__DOT__watchdog_0__DOT__wdt_rst) 
             & (~ (IData)(vlSelf->__Vclklast__TOP____VinpClk__TOP__openMSP430__DOT__watchdog_0__DOT__wdt_rst)))) 
         | ((IData)(vlSelf->smclk) & (~ (IData)(vlSelf->__Vclklast__TOP__smclk))))) {
        VopenMSP430___024root___multiclk__TOP__40(vlSelf);
    }
    if (((((((IData)(vlSelf->cpu_mclk) & (~ (IData)(vlSelf->__Vclklast__TOP__cpu_mclk))) 
            | ((IData)(vlSelf->dbg_clk) & (~ (IData)(vlSelf->__Vclklast__TOP__dbg_clk)))) 
           | ((IData)(vlSelf->dbg_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__dbg_rst)))) 
          | ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__mclk_decode) 
             & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__frontend_0__DOT__mclk_decode)))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___multiclk__TOP__41(vlSelf);
    }
    if (((((IData)(vlSelf->cpu_mclk) & (~ (IData)(vlSelf->__Vclklast__TOP__cpu_mclk))) 
          | ((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__mclk_decode) 
             & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__frontend_0__DOT__mclk_decode)))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___multiclk__TOP__42(vlSelf);
    }
    if ((((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__mclk_mdb_out_nxt) 
          & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__mclk_mdb_out_nxt))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__44(vlSelf);
    }
    if ((((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__mclk_inst_dext) 
          & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__frontend_0__DOT__mclk_inst_dext))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__45(vlSelf);
    }
    VopenMSP430___024root___combo__TOP__46(vlSelf);
    if (((((IData)(vlSelf->cpu_mclk) & (~ (IData)(vlSelf->__Vclklast__TOP__cpu_mclk))) 
          | ((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__mclk_mdb_out_nxt) 
             & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__mclk_mdb_out_nxt)))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___multiclk__TOP__47(vlSelf);
    }
    if ((((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r3) 
          & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r3))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__48(vlSelf);
    }
    if ((((IData)(vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r2) 
          & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r2))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__49(vlSelf);
    }
    VopenMSP430___024root___combo__TOP__50(vlSelf);
    if ((((IData)(vlSelf->cpu_mclk) & (~ (IData)(vlSelf->__Vclklast__TOP__cpu_mclk))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__51(vlSelf);
    }
    if ((((IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__mclk_wdtctl) 
          & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__watchdog_0__DOT__mclk_wdtctl))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__52(vlSelf);
    }
    VopenMSP430___024root___combo__TOP__53(vlSelf);
    if ((((((IData)(vlSelf->dma_mclk) & (~ (IData)(vlSelf->__Vclklast__TOP__dma_mclk))) 
           | ((IData)(vlSelf->openMSP430__DOT__watchdog_0__DOT__mclk_wdtctl) 
              & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__watchdog_0__DOT__mclk_wdtctl)))) 
          | ((IData)(vlSelf->por) & (~ (IData)(vlSelf->__Vclklast__TOP__por)))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___multiclk__TOP__54(vlSelf);
    }
    if ((((IData)(vlSelf->openMSP430__DOT__sfr_0__DOT__wakeup_cell_nmi__DOT__wkup_clk) 
          & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__sfr_0__DOT__wakeup_cell_nmi__DOT__wkup_clk))) 
         | ((IData)(vlSelf->__VinpClk__TOP__openMSP430__DOT__sfr_0__DOT__wakeup_cell_nmi__DOT__wkup_rst) 
            & (~ (IData)(vlSelf->__Vclklast__TOP____VinpClk__TOP__openMSP430__DOT__sfr_0__DOT__wakeup_cell_nmi__DOT__wkup_rst))))) {
        VopenMSP430___024root___sequent__TOP__55(vlSelf);
    }
    if ((((IData)(vlSelf->openMSP430__DOT__frontend_0__DOT__mclk_pc) 
          & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__frontend_0__DOT__mclk_pc))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__56(vlSelf);
    }
    VopenMSP430___024root___combo__TOP__57(vlSelf);
    if ((((IData)(vlSelf->openMSP430__DOT__mem_backbone_0__DOT__mclk_bckup_gated) 
          & (~ (IData)(vlSelf->__Vclklast__TOP__openMSP430__DOT__mem_backbone_0__DOT__mclk_bckup_gated))) 
         | ((IData)(vlSelf->puc_rst) & (~ (IData)(vlSelf->__Vclklast__TOP__puc_rst))))) {
        VopenMSP430___024root___sequent__TOP__58(vlSelf);
    }
    VopenMSP430___024root___combo__TOP__59(vlSelf);
    // Final
    vlSelf->__Vclklast__TOP____VinpClk__TOP__openMSP430__DOT__watchdog_0__DOT__wdt_rst 
        = vlSelf->__VinpClk__TOP__openMSP430__DOT__watchdog_0__DOT__wdt_rst;
    vlSelf->__Vclklast__TOP__smclk = vlSelf->smclk;
    vlSelf->__Vclklast__TOP__dma_mclk = vlSelf->dma_mclk;
    vlSelf->__Vclklast__TOP__por = vlSelf->por;
    vlSelf->__Vclklast__TOP__puc_rst = vlSelf->puc_rst;
    vlSelf->__Vclklast__TOP__dbg_clk = vlSelf->dbg_clk;
    vlSelf->__Vclklast__TOP__dbg_rst = vlSelf->dbg_rst;
    vlSelf->__Vclklast__TOP__cpu_mclk = vlSelf->cpu_mclk;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__multiplier_0__DOT__mclk_reslo 
        = vlSelf->openMSP430__DOT__multiplier_0__DOT__mclk_reslo;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__multiplier_0__DOT__mclk_reshi 
        = vlSelf->openMSP430__DOT__multiplier_0__DOT__mclk_reshi;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r4 
        = vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r4;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r5 
        = vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r5;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r6 
        = vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r6;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r7 
        = vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r7;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r8 
        = vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r8;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r9 
        = vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r9;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r10 
        = vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r10;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r11 
        = vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r11;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r12 
        = vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r12;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r13 
        = vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r13;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r14 
        = vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r14;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r15 
        = vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r15;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r1 
        = vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r1;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__frontend_0__DOT__mclk_inst_sext 
        = vlSelf->openMSP430__DOT__frontend_0__DOT__mclk_inst_sext;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__multiplier_0__DOT__mclk_op2 
        = vlSelf->openMSP430__DOT__multiplier_0__DOT__mclk_op2;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__multiplier_0__DOT__mclk_op1 
        = vlSelf->openMSP430__DOT__multiplier_0__DOT__mclk_op1;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__frontend_0__DOT__mclk_irq_num 
        = vlSelf->openMSP430__DOT__frontend_0__DOT__mclk_irq_num;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__watchdog_0__DOT__wdt_clk_cnt 
        = vlSelf->openMSP430__DOT__watchdog_0__DOT__wdt_clk_cnt;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__mclk_mdb_in_buf 
        = vlSelf->openMSP430__DOT__execution_unit_0__DOT__mclk_mdb_in_buf;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__frontend_0__DOT__mclk_decode 
        = vlSelf->openMSP430__DOT__frontend_0__DOT__mclk_decode;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__watchdog_0__DOT__wakeup_cell_wdog__DOT__wkup_clk 
        = vlSelf->openMSP430__DOT__watchdog_0__DOT__wakeup_cell_wdog__DOT__wkup_clk;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__watchdog_0__DOT__wakeup_cell_wdog__DOT__wkup_rst 
        = vlSelf->openMSP430__DOT__watchdog_0__DOT__wakeup_cell_wdog__DOT__wkup_rst;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__mclk_mdb_out_nxt 
        = vlSelf->openMSP430__DOT__execution_unit_0__DOT__mclk_mdb_out_nxt;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__frontend_0__DOT__mclk_inst_dext 
        = vlSelf->openMSP430__DOT__frontend_0__DOT__mclk_inst_dext;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r3 
        = vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r3;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r2 
        = vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__mclk_r2;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__watchdog_0__DOT__mclk_wdtctl 
        = vlSelf->openMSP430__DOT__watchdog_0__DOT__mclk_wdtctl;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__sfr_0__DOT__wakeup_cell_nmi__DOT__wkup_clk 
        = vlSelf->openMSP430__DOT__sfr_0__DOT__wakeup_cell_nmi__DOT__wkup_clk;
    vlSelf->__Vclklast__TOP____VinpClk__TOP__openMSP430__DOT__sfr_0__DOT__wakeup_cell_nmi__DOT__wkup_rst 
        = vlSelf->__VinpClk__TOP__openMSP430__DOT__sfr_0__DOT__wakeup_cell_nmi__DOT__wkup_rst;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__frontend_0__DOT__mclk_pc 
        = vlSelf->openMSP430__DOT__frontend_0__DOT__mclk_pc;
    vlSelf->__Vclklast__TOP__openMSP430__DOT__mem_backbone_0__DOT__mclk_bckup_gated 
        = vlSelf->openMSP430__DOT__mem_backbone_0__DOT__mclk_bckup_gated;
    vlSelf->__VinpClk__TOP__openMSP430__DOT__watchdog_0__DOT__wdt_rst 
        = vlSelf->openMSP430__DOT__watchdog_0__DOT__wdt_rst;
    vlSelf->__VinpClk__TOP__openMSP430__DOT__sfr_0__DOT__wakeup_cell_nmi__DOT__wkup_rst 
        = vlSelf->openMSP430__DOT__sfr_0__DOT__wakeup_cell_nmi__DOT__wkup_rst;
}

QData VopenMSP430___024root___change_request_1(VopenMSP430___024root* vlSelf);

VL_INLINE_OPT QData VopenMSP430___024root___change_request(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___change_request\n"); );
    // Body
    return (VopenMSP430___024root___change_request_1(vlSelf));
}

VL_INLINE_OPT QData VopenMSP430___024root___change_request_1(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___change_request_1\n"); );
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    __req |= ((vlSelf->openMSP430__DOT__e_state ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__e_state)
         | (vlSelf->openMSP430__DOT__fe_mdb_in ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__fe_mdb_in)
         | (vlSelf->openMSP430__DOT__pc ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__pc)
         | (vlSelf->openMSP430__DOT__frontend_0__DOT__irq_detect ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__frontend_0__DOT__irq_detect)
         | (vlSelf->openMSP430__DOT__frontend_0__DOT__clock_gate_inst_sext__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__frontend_0__DOT__clock_gate_inst_sext__DOT__enable_latch)
         | (vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_stat_wr ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__alu_stat_wr)
         | (vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r1__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r1__DOT__enable_latch)
         | (vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r4__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r4__DOT__enable_latch)
         | (vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r5__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r5__DOT__enable_latch)
         | (vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r6__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r6__DOT__enable_latch)
        || (vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r7__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r7__DOT__enable_latch)
         | (vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r8__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r8__DOT__enable_latch)
         | (vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r9__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r9__DOT__enable_latch)
         | (vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r10__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r10__DOT__enable_latch)
         | (vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r11__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r11__DOT__enable_latch)
         | (vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r12__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r12__DOT__enable_latch)
         | (vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r13__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r13__DOT__enable_latch)
         | (vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r14__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r14__DOT__enable_latch)
         | (vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r15__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r15__DOT__enable_latch)
         | (vlSelf->openMSP430__DOT__sfr_0__DOT__wakeup_cell_nmi__DOT__wkup_rst ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__sfr_0__DOT__wakeup_cell_nmi__DOT__wkup_rst)
        || (vlSelf->openMSP430__DOT__watchdog_0__DOT__wdt_rst ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__watchdog_0__DOT__wdt_rst)
         | (vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtcnt_clr ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__watchdog_0__DOT__wdtcnt_clr)
         | (vlSelf->openMSP430__DOT__multiplier_0__DOT__reg_wr ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__multiplier_0__DOT__reg_wr)
         | (vlSelf->openMSP430__DOT__multiplier_0__DOT__clock_gate_reslo__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__multiplier_0__DOT__clock_gate_reslo__DOT__enable_latch)
         | (vlSelf->openMSP430__DOT__multiplier_0__DOT__clock_gate_reshi__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__multiplier_0__DOT__clock_gate_reshi__DOT__enable_latch));
    VL_DEBUG_IF( if(__req && ((vlSelf->openMSP430__DOT__e_state ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__e_state))) VL_DBG_MSGF("        CHANGE: src/openMSP430.v:229: openMSP430.e_state\n"); );
    VL_DEBUG_IF( if(__req && ((vlSelf->openMSP430__DOT__fe_mdb_in ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__fe_mdb_in))) VL_DBG_MSGF("        CHANGE: src/openMSP430.v:255: openMSP430.fe_mdb_in\n"); );
    VL_DEBUG_IF( if(__req && ((vlSelf->openMSP430__DOT__pc ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__pc))) VL_DBG_MSGF("        CHANGE: src/openMSP430.v:261: openMSP430.pc\n"); );
    VL_DEBUG_IF( if(__req && ((vlSelf->openMSP430__DOT__frontend_0__DOT__irq_detect ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__frontend_0__DOT__irq_detect))) VL_DBG_MSGF("        CHANGE: /home/joey/Desktop/test/RTD012/src/omsp_frontend.v:246: openMSP430.frontend_0.irq_detect\n"); );
    VL_DEBUG_IF( if(__req && ((vlSelf->openMSP430__DOT__frontend_0__DOT__clock_gate_inst_sext__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__frontend_0__DOT__clock_gate_inst_sext__DOT__enable_latch))) VL_DBG_MSGF("        CHANGE: /home/joey/Desktop/test/RTD012/src/omsp_clock_gate.v:76: openMSP430.frontend_0.clock_gate_inst_sext.enable_latch\n"); );
    VL_DEBUG_IF( if(__req && ((vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_stat_wr ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__alu_stat_wr))) VL_DBG_MSGF("        CHANGE: /home/joey/Desktop/test/RTD012/src/omsp_execution_unit.v:142: openMSP430.execution_unit_0.alu_stat_wr\n"); );
    VL_DEBUG_IF( if(__req && ((vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r1__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r1__DOT__enable_latch))) VL_DBG_MSGF("        CHANGE: /home/joey/Desktop/test/RTD012/src/omsp_clock_gate.v:76: openMSP430.execution_unit_0.register_file_0.clock_gate_r1.enable_latch\n"); );
    VL_DEBUG_IF( if(__req && ((vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r4__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r4__DOT__enable_latch))) VL_DBG_MSGF("        CHANGE: /home/joey/Desktop/test/RTD012/src/omsp_clock_gate.v:76: openMSP430.execution_unit_0.register_file_0.clock_gate_r4.enable_latch\n"); );
    VL_DEBUG_IF( if(__req && ((vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r5__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r5__DOT__enable_latch))) VL_DBG_MSGF("        CHANGE: /home/joey/Desktop/test/RTD012/src/omsp_clock_gate.v:76: openMSP430.execution_unit_0.register_file_0.clock_gate_r5.enable_latch\n"); );
    VL_DEBUG_IF( if(__req && ((vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r6__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r6__DOT__enable_latch))) VL_DBG_MSGF("        CHANGE: /home/joey/Desktop/test/RTD012/src/omsp_clock_gate.v:76: openMSP430.execution_unit_0.register_file_0.clock_gate_r6.enable_latch\n"); );
    VL_DEBUG_IF( if(__req && ((vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r7__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r7__DOT__enable_latch))) VL_DBG_MSGF("        CHANGE: /home/joey/Desktop/test/RTD012/src/omsp_clock_gate.v:76: openMSP430.execution_unit_0.register_file_0.clock_gate_r7.enable_latch\n"); );
    VL_DEBUG_IF( if(__req && ((vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r8__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r8__DOT__enable_latch))) VL_DBG_MSGF("        CHANGE: /home/joey/Desktop/test/RTD012/src/omsp_clock_gate.v:76: openMSP430.execution_unit_0.register_file_0.clock_gate_r8.enable_latch\n"); );
    VL_DEBUG_IF( if(__req && ((vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r9__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r9__DOT__enable_latch))) VL_DBG_MSGF("        CHANGE: /home/joey/Desktop/test/RTD012/src/omsp_clock_gate.v:76: openMSP430.execution_unit_0.register_file_0.clock_gate_r9.enable_latch\n"); );
    VL_DEBUG_IF( if(__req && ((vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r10__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r10__DOT__enable_latch))) VL_DBG_MSGF("        CHANGE: /home/joey/Desktop/test/RTD012/src/omsp_clock_gate.v:76: openMSP430.execution_unit_0.register_file_0.clock_gate_r10.enable_latch\n"); );
    VL_DEBUG_IF( if(__req && ((vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r11__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r11__DOT__enable_latch))) VL_DBG_MSGF("        CHANGE: /home/joey/Desktop/test/RTD012/src/omsp_clock_gate.v:76: openMSP430.execution_unit_0.register_file_0.clock_gate_r11.enable_latch\n"); );
    VL_DEBUG_IF( if(__req && ((vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r12__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r12__DOT__enable_latch))) VL_DBG_MSGF("        CHANGE: /home/joey/Desktop/test/RTD012/src/omsp_clock_gate.v:76: openMSP430.execution_unit_0.register_file_0.clock_gate_r12.enable_latch\n"); );
    VL_DEBUG_IF( if(__req && ((vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r13__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r13__DOT__enable_latch))) VL_DBG_MSGF("        CHANGE: /home/joey/Desktop/test/RTD012/src/omsp_clock_gate.v:76: openMSP430.execution_unit_0.register_file_0.clock_gate_r13.enable_latch\n"); );
    VL_DEBUG_IF( if(__req && ((vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r14__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r14__DOT__enable_latch))) VL_DBG_MSGF("        CHANGE: /home/joey/Desktop/test/RTD012/src/omsp_clock_gate.v:76: openMSP430.execution_unit_0.register_file_0.clock_gate_r14.enable_latch\n"); );
    VL_DEBUG_IF( if(__req && ((vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r15__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r15__DOT__enable_latch))) VL_DBG_MSGF("        CHANGE: /home/joey/Desktop/test/RTD012/src/omsp_clock_gate.v:76: openMSP430.execution_unit_0.register_file_0.clock_gate_r15.enable_latch\n"); );
    VL_DEBUG_IF( if(__req && ((vlSelf->openMSP430__DOT__sfr_0__DOT__wakeup_cell_nmi__DOT__wkup_rst ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__sfr_0__DOT__wakeup_cell_nmi__DOT__wkup_rst))) VL_DBG_MSGF("        CHANGE: /home/joey/Desktop/test/RTD012/src/omsp_wakeup_cell.v:84: openMSP430.sfr_0.wakeup_cell_nmi.wkup_rst\n"); );
    VL_DEBUG_IF( if(__req && ((vlSelf->openMSP430__DOT__watchdog_0__DOT__wdt_rst ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__watchdog_0__DOT__wdt_rst))) VL_DBG_MSGF("        CHANGE: /home/joey/Desktop/test/RTD012/src/omsp_watchdog.v:266: openMSP430.watchdog_0.wdt_rst\n"); );
    VL_DEBUG_IF( if(__req && ((vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtcnt_clr ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__watchdog_0__DOT__wdtcnt_clr))) VL_DBG_MSGF("        CHANGE: /home/joey/Desktop/test/RTD012/src/omsp_watchdog.v:310: openMSP430.watchdog_0.wdtcnt_clr\n"); );
    VL_DEBUG_IF( if(__req && ((vlSelf->openMSP430__DOT__multiplier_0__DOT__reg_wr ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__multiplier_0__DOT__reg_wr))) VL_DBG_MSGF("        CHANGE: /home/joey/Desktop/test/RTD012/src/omsp_multiplier.v:146: openMSP430.multiplier_0.reg_wr\n"); );
    VL_DEBUG_IF( if(__req && ((vlSelf->openMSP430__DOT__multiplier_0__DOT__clock_gate_reslo__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__multiplier_0__DOT__clock_gate_reslo__DOT__enable_latch))) VL_DBG_MSGF("        CHANGE: /home/joey/Desktop/test/RTD012/src/omsp_clock_gate.v:76: openMSP430.multiplier_0.clock_gate_reslo.enable_latch\n"); );
    VL_DEBUG_IF( if(__req && ((vlSelf->openMSP430__DOT__multiplier_0__DOT__clock_gate_reshi__DOT__enable_latch ^ vlSelf->__Vchglast__TOP__openMSP430__DOT__multiplier_0__DOT__clock_gate_reshi__DOT__enable_latch))) VL_DBG_MSGF("        CHANGE: /home/joey/Desktop/test/RTD012/src/omsp_clock_gate.v:76: openMSP430.multiplier_0.clock_gate_reshi.enable_latch\n"); );
    // Final
    vlSelf->__Vchglast__TOP__openMSP430__DOT__e_state 
        = vlSelf->openMSP430__DOT__e_state;
    vlSelf->__Vchglast__TOP__openMSP430__DOT__fe_mdb_in 
        = vlSelf->openMSP430__DOT__fe_mdb_in;
    vlSelf->__Vchglast__TOP__openMSP430__DOT__pc = vlSelf->openMSP430__DOT__pc;
    vlSelf->__Vchglast__TOP__openMSP430__DOT__frontend_0__DOT__irq_detect 
        = vlSelf->openMSP430__DOT__frontend_0__DOT__irq_detect;
    vlSelf->__Vchglast__TOP__openMSP430__DOT__frontend_0__DOT__clock_gate_inst_sext__DOT__enable_latch 
        = vlSelf->openMSP430__DOT__frontend_0__DOT__clock_gate_inst_sext__DOT__enable_latch;
    vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__alu_stat_wr 
        = vlSelf->openMSP430__DOT__execution_unit_0__DOT__alu_stat_wr;
    vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r1__DOT__enable_latch 
        = vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r1__DOT__enable_latch;
    vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r4__DOT__enable_latch 
        = vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r4__DOT__enable_latch;
    vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r5__DOT__enable_latch 
        = vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r5__DOT__enable_latch;
    vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r6__DOT__enable_latch 
        = vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r6__DOT__enable_latch;
    vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r7__DOT__enable_latch 
        = vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r7__DOT__enable_latch;
    vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r8__DOT__enable_latch 
        = vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r8__DOT__enable_latch;
    vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r9__DOT__enable_latch 
        = vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r9__DOT__enable_latch;
    vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r10__DOT__enable_latch 
        = vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r10__DOT__enable_latch;
    vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r11__DOT__enable_latch 
        = vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r11__DOT__enable_latch;
    vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r12__DOT__enable_latch 
        = vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r12__DOT__enable_latch;
    vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r13__DOT__enable_latch 
        = vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r13__DOT__enable_latch;
    vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r14__DOT__enable_latch 
        = vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r14__DOT__enable_latch;
    vlSelf->__Vchglast__TOP__openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r15__DOT__enable_latch 
        = vlSelf->openMSP430__DOT__execution_unit_0__DOT__register_file_0__DOT__clock_gate_r15__DOT__enable_latch;
    vlSelf->__Vchglast__TOP__openMSP430__DOT__sfr_0__DOT__wakeup_cell_nmi__DOT__wkup_rst 
        = vlSelf->openMSP430__DOT__sfr_0__DOT__wakeup_cell_nmi__DOT__wkup_rst;
    vlSelf->__Vchglast__TOP__openMSP430__DOT__watchdog_0__DOT__wdt_rst 
        = vlSelf->openMSP430__DOT__watchdog_0__DOT__wdt_rst;
    vlSelf->__Vchglast__TOP__openMSP430__DOT__watchdog_0__DOT__wdtcnt_clr 
        = vlSelf->openMSP430__DOT__watchdog_0__DOT__wdtcnt_clr;
    vlSelf->__Vchglast__TOP__openMSP430__DOT__multiplier_0__DOT__reg_wr 
        = vlSelf->openMSP430__DOT__multiplier_0__DOT__reg_wr;
    vlSelf->__Vchglast__TOP__openMSP430__DOT__multiplier_0__DOT__clock_gate_reslo__DOT__enable_latch 
        = vlSelf->openMSP430__DOT__multiplier_0__DOT__clock_gate_reslo__DOT__enable_latch;
    vlSelf->__Vchglast__TOP__openMSP430__DOT__multiplier_0__DOT__clock_gate_reshi__DOT__enable_latch 
        = vlSelf->openMSP430__DOT__multiplier_0__DOT__clock_gate_reshi__DOT__enable_latch;
    return __req;
}

#ifdef VL_DEBUG
void VopenMSP430___024root___eval_debug_assertions(VopenMSP430___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VopenMSP430__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VopenMSP430___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->aclk & 0xfeU))) {
        Verilated::overWidthError("aclk");}
    if (VL_UNLIKELY((vlSelf->aclk_en & 0xfeU))) {
        Verilated::overWidthError("aclk_en");}
    if (VL_UNLIKELY((vlSelf->cpu_en_s & 0xfeU))) {
        Verilated::overWidthError("cpu_en_s");}
    if (VL_UNLIKELY((vlSelf->cpu_mclk & 0xfeU))) {
        Verilated::overWidthError("cpu_mclk");}
    if (VL_UNLIKELY((vlSelf->dma_mclk & 0xfeU))) {
        Verilated::overWidthError("dma_mclk");}
    if (VL_UNLIKELY((vlSelf->dbg_clk & 0xfeU))) {
        Verilated::overWidthError("dbg_clk");}
    if (VL_UNLIKELY((vlSelf->dbg_en_s & 0xfeU))) {
        Verilated::overWidthError("dbg_en_s");}
    if (VL_UNLIKELY((vlSelf->dbg_rst & 0xfeU))) {
        Verilated::overWidthError("dbg_rst");}
    if (VL_UNLIKELY((vlSelf->dco_enable & 0xfeU))) {
        Verilated::overWidthError("dco_enable");}
    if (VL_UNLIKELY((vlSelf->per_dout & 0xfeU))) {
        Verilated::overWidthError("per_dout");}
    if (VL_UNLIKELY((vlSelf->por & 0xfeU))) {
        Verilated::overWidthError("por");}
    if (VL_UNLIKELY((vlSelf->puc_pnd_set & 0xfeU))) {
        Verilated::overWidthError("puc_pnd_set");}
    if (VL_UNLIKELY((vlSelf->smclk & 0xfeU))) {
        Verilated::overWidthError("smclk");}
    if (VL_UNLIKELY((vlSelf->smclk_en & 0xfeU))) {
        Verilated::overWidthError("smclk_en");}
    if (VL_UNLIKELY((vlSelf->dbg_i2c_addr & 0x80U))) {
        Verilated::overWidthError("dbg_i2c_addr");}
    if (VL_UNLIKELY((vlSelf->dbg_i2c_broadcast & 0x80U))) {
        Verilated::overWidthError("dbg_i2c_broadcast");}
    if (VL_UNLIKELY((vlSelf->dbg_i2c_scl & 0xfeU))) {
        Verilated::overWidthError("dbg_i2c_scl");}
    if (VL_UNLIKELY((vlSelf->dbg_i2c_sda_in & 0xfeU))) {
        Verilated::overWidthError("dbg_i2c_sda_in");}
    if (VL_UNLIKELY((vlSelf->dbg_uart_rxd & 0xfeU))) {
        Verilated::overWidthError("dbg_uart_rxd");}
    if (VL_UNLIKELY((vlSelf->irq & 0xc000U))) {
        Verilated::overWidthError("irq");}
    if (VL_UNLIKELY((vlSelf->dma_addr & 0x8000U))) {
        Verilated::overWidthError("dma_addr");}
    if (VL_UNLIKELY((vlSelf->dma_en & 0xfeU))) {
        Verilated::overWidthError("dma_en");}
    if (VL_UNLIKELY((vlSelf->dma_priority & 0xfeU))) {
        Verilated::overWidthError("dma_priority");}
    if (VL_UNLIKELY((vlSelf->dma_we & 0xfcU))) {
        Verilated::overWidthError("dma_we");}
    if (VL_UNLIKELY((vlSelf->dma_wkup & 0xfeU))) {
        Verilated::overWidthError("dma_wkup");}
    if (VL_UNLIKELY((vlSelf->nmi & 0xfeU))) {
        Verilated::overWidthError("nmi");}
    if (VL_UNLIKELY((vlSelf->reset_n & 0xfeU))) {
        Verilated::overWidthError("reset_n");}
    if (VL_UNLIKELY((vlSelf->scan_enable & 0xfeU))) {
        Verilated::overWidthError("scan_enable");}
    if (VL_UNLIKELY((vlSelf->scan_mode & 0xfeU))) {
        Verilated::overWidthError("scan_mode");}
    if (VL_UNLIKELY((vlSelf->wkup & 0xfeU))) {
        Verilated::overWidthError("wkup");}
}
#endif  // VL_DEBUG
