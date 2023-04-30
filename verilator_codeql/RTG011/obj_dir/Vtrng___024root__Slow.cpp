// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtrng.h for the primary calling header

#include "Vtrng___024root.h"
#include "Vtrng__Syms.h"

//==========


void Vtrng___024root___ctor_var_reset(Vtrng___024root* vlSelf);

Vtrng___024root::Vtrng___024root(const char* _vcname__)
    : VerilatedModule(_vcname__)
 {
    // Reset structure values
    Vtrng___024root___ctor_var_reset(this);
}

void Vtrng___024root::__Vconfigure(Vtrng__Syms* _vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->vlSymsp = _vlSymsp;
}

Vtrng___024root::~Vtrng___024root() {
}

extern const VlUnpacked<QData/*63:0*/, 128> Vtrng__ConstPool__TABLE_8cab5d11_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_d95110ea_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_feca7fb7_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_6b41a0b1_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_789506b8_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_8374a27f_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_e998598e_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_e61e15f2_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_d148b0cd_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_bf7c545a_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_e97e2919_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_201f54b4_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_cf3f3a95_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_407e6a90_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_91a04253_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_abf15944_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_73b8f5c2_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_de2a2e64_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_7d24de6f_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_5820b2b1_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_cdcc9215_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_1a3c4a61_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_86eb9332_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_1bbcd680_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_3fe4f469_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_bd23b2e8_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_c8c5ee83_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_f30c04eb_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_ca197355_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_1d9b73b0_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_ca2b747b_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_9fb7ce7f_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_cb45fd05_0;
extern const VlUnpacked<CData/*1:0*/, 32> Vtrng__ConstPool__TABLE_0cb92ae5_0;
extern const VlUnpacked<CData/*0:0*/, 32> Vtrng__ConstPool__TABLE_94dff415_0;
extern const VlUnpacked<CData/*0:0*/, 32> Vtrng__ConstPool__TABLE_4bd3539f_0;
extern const VlUnpacked<CData/*0:0*/, 32> Vtrng__ConstPool__TABLE_47d4dcd7_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_5c83090b_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_86a6e9aa_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_7c6ffbb2_0;
extern const VlUnpacked<CData/*2:0*/, 64> Vtrng__ConstPool__TABLE_30d988cd_0;
extern const VlUnpacked<CData/*0:0*/, 64> Vtrng__ConstPool__TABLE_f5b0e673_0;

void Vtrng___024root___settle__TOP__1(Vtrng___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtrng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtrng___024root___settle__TOP__1\n"); );
    // Variables
    CData/*0:0*/ trng__DOT__trng_api_error;
    CData/*0:0*/ trng__DOT__csprng_debug_update;
    CData/*0:0*/ trng__DOT__tmp_error;
    CData/*0:0*/ trng__DOT__mixer_inst__DOT__word_ctr_inc;
    CData/*0:0*/ trng__DOT__mixer_inst__DOT__word_ctr_rst;
    CData/*0:0*/ trng__DOT__mixer_inst__DOT__entropy_timeout_ctr_rst;
    CData/*0:0*/ trng__DOT__mixer_inst__DOT__collect_block;
    CData/*0:0*/ trng__DOT__mixer_inst__DOT__update_block;
    CData/*0:0*/ trng__DOT__mixer_inst__DOT__block_done;
    CData/*0:0*/ trng__DOT__mixer_inst__DOT__hash_init;
    CData/*0:0*/ trng__DOT__mixer_inst__DOT__hash_next;
    CData/*0:0*/ trng__DOT__mixer_inst__DOT__tmp_error;
    CData/*0:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__round_ctr_inc;
    CData/*0:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__round_ctr_rst;
    CData/*0:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__digest_init;
    CData/*0:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__digest_update;
    CData/*0:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__state_init;
    CData/*0:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__state_update;
    CData/*0:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__first_block;
    CData/*0:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_init;
    CData/*0:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_next;
    CData/*0:0*/ trng__DOT__csprng_inst__DOT__block_ctr_inc;
    CData/*0:0*/ trng__DOT__csprng_inst__DOT__tmp_error;
    CData/*0:0*/ trng__DOT__csprng_inst__DOT__muxed_rnd_ack;
    CData/*0:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_inc;
    CData/*0:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_rst;
    CData/*0:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__dr_ctr_inc;
    CData/*0:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__dr_ctr_rst;
    CData/*0:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block_ctr_inc;
    CData/*0:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block_ctr_set;
    CData/*0:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__mux_data_ptr_inc;
    CData/*0:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__mux_data_ptr_rst;
    CData/*0:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_inc;
    CData/*0:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__wr_ptr_inc;
    CData/*0:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__wr_ptr_rst;
    CData/*0:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_ctr_dec;
    CData/*0:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_empty;
    CData/*5:0*/ __Vtableidx1;
    CData/*6:0*/ __Vtableidx2;
    CData/*4:0*/ __Vtableidx3;
    CData/*5:0*/ __Vtableidx4;
    IData/*31:0*/ trng__DOT__trng_api_read_data;
    IData/*31:0*/ trng__DOT__tmp_read_data;
    VlWide<32>/*1023:0*/ trng__DOT__mixer_inst__DOT__hash_block;
    VlWide<16>/*511:0*/ trng__DOT__mixer_inst__DOT__hash_digest;
    IData/*31:0*/ trng__DOT__mixer_inst__DOT__tmp_read_data;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__tmp_read_data;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0_a;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0_b;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0_c;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0_d;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1_a;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1_b;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1_c;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1_d;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2_a;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2_b;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2_c;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2_d;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3_a;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3_b;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3_c;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3_d;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_logic__DOT__key0;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_logic__DOT__key1;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_logic__DOT__key2;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_logic__DOT__key3;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_logic__DOT__key4;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_logic__DOT__key5;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_logic__DOT__key6;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_logic__DOT__key7;
    VlWide<16>/*511:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__a0;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__a1;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__b0;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__b1;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__b2;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__b3;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__c0;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__c1;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__d0;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__d1;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__d2;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__d3;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__a0;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__a1;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__b0;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__b1;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__b2;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__b3;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__c0;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__c1;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__d0;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__d1;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__d2;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__d3;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__a0;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__a1;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__b0;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__b1;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__b2;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__b3;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__c0;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__c1;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__d0;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__d1;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__d2;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__d3;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__a0;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__a1;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__b0;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__b1;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__b2;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__b3;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__c0;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__c1;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__d0;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__d1;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__d2;
    IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__d3;
    VlWide<16>/*511:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__output_data_mux__DOT__fifo_rd_data;
    IData/*31:0*/ __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__0__Vfuncout;
    IData/*31:0*/ __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__0__op;
    IData/*31:0*/ __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__1__Vfuncout;
    IData/*31:0*/ __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__1__op;
    IData/*31:0*/ __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__2__Vfuncout;
    IData/*31:0*/ __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__2__op;
    IData/*31:0*/ __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__3__Vfuncout;
    IData/*31:0*/ __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__3__op;
    IData/*31:0*/ __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__4__Vfuncout;
    IData/*31:0*/ __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__4__op;
    IData/*31:0*/ __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__5__Vfuncout;
    IData/*31:0*/ __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__5__op;
    IData/*31:0*/ __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__6__Vfuncout;
    IData/*31:0*/ __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__6__op;
    IData/*31:0*/ __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__7__Vfuncout;
    IData/*31:0*/ __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__7__op;
    IData/*31:0*/ __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__8__Vfuncout;
    IData/*31:0*/ __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__8__op;
    IData/*31:0*/ __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__9__Vfuncout;
    IData/*31:0*/ __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__9__op;
    IData/*31:0*/ __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout;
    IData/*31:0*/ __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op;
    QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__t1;
    QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__t2;
    QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__t1_logic__DOT__sum1;
    QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__t1_logic__DOT__ch;
    QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__t2_logic__DOT__sum0;
    QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__t2_logic__DOT__maj;
    QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__k_constants_inst__DOT__tmp_K;
    QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_new;
    QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem_update_logic__DOT__w_0;
    QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem_update_logic__DOT__w_1;
    QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem_update_logic__DOT__w_9;
    QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem_update_logic__DOT__w_14;
    QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem_update_logic__DOT__d0;
    QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem_update_logic__DOT__d1;
    // Body
    vlSelf->security_error = 0U;
    vlSelf->trng__DOT__mixer_inst__DOT__entropy_timeout_ctr_inc = 0U;
    vlSelf->trng__DOT__trng_api_we = 0U;
    if ((1U & (~ ((IData)(vlSelf->address) >> 0xbU)))) {
        if ((1U & (~ ((IData)(vlSelf->address) >> 0xaU)))) {
            if ((1U & (~ ((IData)(vlSelf->address) 
                          >> 9U)))) {
                if ((1U & (~ ((IData)(vlSelf->address) 
                              >> 8U)))) {
                    vlSelf->trng__DOT__trng_api_we 
                        = vlSelf->we;
                }
            }
        }
    }
    vlSelf->trng__DOT__trng_api_cs = 0U;
    if ((1U & (~ ((IData)(vlSelf->address) >> 0xbU)))) {
        if ((1U & (~ ((IData)(vlSelf->address) >> 0xaU)))) {
            if ((1U & (~ ((IData)(vlSelf->address) 
                          >> 9U)))) {
                if ((1U & (~ ((IData)(vlSelf->address) 
                              >> 8U)))) {
                    vlSelf->trng__DOT__trng_api_cs 
                        = vlSelf->cs;
                }
            }
        }
    }
    vlSelf->trng__DOT__mixer_api_we = 0U;
    if ((0x800U & (IData)(vlSelf->address))) {
        if ((1U & (~ ((IData)(vlSelf->address) >> 0xaU)))) {
            if ((0x200U & (IData)(vlSelf->address))) {
                if ((1U & (~ ((IData)(vlSelf->address) 
                              >> 8U)))) {
                    vlSelf->trng__DOT__mixer_api_we 
                        = vlSelf->we;
                }
            }
        }
    }
    vlSelf->trng__DOT__mixer_api_cs = 0U;
    if ((0x800U & (IData)(vlSelf->address))) {
        if ((1U & (~ ((IData)(vlSelf->address) >> 0xaU)))) {
            if ((0x200U & (IData)(vlSelf->address))) {
                if ((1U & (~ ((IData)(vlSelf->address) 
                              >> 8U)))) {
                    vlSelf->trng__DOT__mixer_api_cs 
                        = vlSelf->cs;
                }
            }
        }
    }
    vlSelf->trng__DOT__csprng_api_we = 0U;
    if ((0x800U & (IData)(vlSelf->address))) {
        if ((1U & (~ ((IData)(vlSelf->address) >> 0xaU)))) {
            if ((0x200U & (IData)(vlSelf->address))) {
                if ((0x100U & (IData)(vlSelf->address))) {
                    vlSelf->trng__DOT__csprng_api_we 
                        = vlSelf->we;
                }
            }
        }
    }
    vlSelf->trng__DOT__csprng_api_cs = 0U;
    if ((0x800U & (IData)(vlSelf->address))) {
        if ((1U & (~ ((IData)(vlSelf->address) >> 0xaU)))) {
            if ((0x200U & (IData)(vlSelf->address))) {
                if ((0x100U & (IData)(vlSelf->address))) {
                    vlSelf->trng__DOT__csprng_api_cs 
                        = vlSelf->cs;
                }
            }
        }
    }
    vlSelf->debug = vlSelf->trng__DOT__debug_out_reg;
    vlSelf->trng__DOT__debug_out_we = (vlSelf->trng__DOT__debug_delay_ctr_reg 
                                       == vlSelf->trng__DOT__debug_delay_reg);
    vlSelf->trng__DOT__debug_delay_ctr_new = ((vlSelf->trng__DOT__debug_delay_ctr_reg 
                                               == vlSelf->trng__DOT__debug_delay_reg)
                                               ? 0U
                                               : ((IData)(1U) 
                                                  + vlSelf->trng__DOT__debug_delay_ctr_reg));
    vlSelf->trng__DOT__tmp_debug = 0U;
    if ((4U & (IData)(vlSelf->trng__DOT__debug_mux_reg))) {
        if ((1U & (~ ((IData)(vlSelf->trng__DOT__debug_mux_reg) 
                      >> 1U)))) {
            if ((1U & (~ (IData)(vlSelf->trng__DOT__debug_mux_reg)))) {
                vlSelf->trng__DOT__tmp_debug = (0xffU 
                                                & vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rnd_data_reg);
            }
        }
    } else if ((2U & (IData)(vlSelf->trng__DOT__debug_mux_reg))) {
        vlSelf->trng__DOT__tmp_debug = ((1U & (IData)(vlSelf->trng__DOT__debug_mux_reg))
                                         ? 0x55U : 0x42U);
    } else if ((1U & (IData)(vlSelf->trng__DOT__debug_mux_reg))) {
        vlSelf->trng__DOT__tmp_debug = 0xaaU;
    }
    vlSelf->trng__DOT__mixer_inst__DOT__muxed_entropy = 0U;
    if ((0U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
        if ((1U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
            if ((2U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
                if ((3U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
                    if (vlSelf->trng__DOT__mixer_inst__DOT__enable_reg) {
                        vlSelf->trng__DOT__mixer_inst__DOT__muxed_entropy = 0x11223344U;
                    }
                } else if ((4U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
                    if ((5U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
                        if (vlSelf->trng__DOT__mixer_inst__DOT__enable_reg) {
                            vlSelf->trng__DOT__mixer_inst__DOT__muxed_entropy = 0xaa55aa55U;
                        }
                    }
                }
            }
        }
    }
    vlSelf->trng__DOT__mixer_inst__DOT__init_done_we = 0U;
    if ((0U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
        if (vlSelf->trng__DOT__csprng_inst__DOT__more_seed_reg) {
            vlSelf->trng__DOT__mixer_inst__DOT__init_done_we = 1U;
        }
    } else if ((1U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
        if ((2U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
            if ((3U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
                if ((4U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
                    if ((5U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
                        if ((1U & (~ (IData)(vlSelf->trng__DOT__discard_reg)))) {
                            if (vlSelf->trng__DOT__csprng_inst__DOT__more_seed_reg) {
                                vlSelf->trng__DOT__mixer_inst__DOT__init_done_we = 1U;
                            }
                        }
                    }
                }
            }
        }
    }
    vlSelf->trng__DOT__mixer_inst__DOT__init_done_new = 0U;
    if ((0U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
        if (vlSelf->trng__DOT__csprng_inst__DOT__more_seed_reg) {
            vlSelf->trng__DOT__mixer_inst__DOT__init_done_new = 0U;
        }
    } else if ((1U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
        if ((2U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
            if ((3U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
                if ((4U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
                    if ((5U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
                        if ((1U & (~ (IData)(vlSelf->trng__DOT__discard_reg)))) {
                            if (vlSelf->trng__DOT__csprng_inst__DOT__more_seed_reg) {
                                vlSelf->trng__DOT__mixer_inst__DOT__init_done_new = 1U;
                            }
                        }
                    }
                }
            }
        }
    }
    vlSelf->trng__DOT__mixer_inst__DOT__seed_syn_we = 0U;
    if ((0U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
        if ((1U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
            if ((2U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
                if ((3U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
                    if ((1U & (~ (IData)(vlSelf->trng__DOT__discard_reg)))) {
                        if (vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__ready_reg) {
                            vlSelf->trng__DOT__mixer_inst__DOT__seed_syn_we = 1U;
                        }
                    }
                } else if ((4U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
                    if ((1U & (~ (IData)(vlSelf->trng__DOT__discard_reg)))) {
                        if (vlSelf->trng__DOT__csprng_inst__DOT__seed_ack_reg) {
                            vlSelf->trng__DOT__mixer_inst__DOT__seed_syn_we = 1U;
                        }
                    }
                }
            }
        }
    }
    vlSelf->trng__DOT__mixer_inst__DOT__seed_syn_new = 0U;
    if ((0U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
        if ((1U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
            if ((2U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
                if ((3U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
                    if ((1U & (~ (IData)(vlSelf->trng__DOT__discard_reg)))) {
                        if (vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__ready_reg) {
                            vlSelf->trng__DOT__mixer_inst__DOT__seed_syn_new = 1U;
                        }
                    }
                } else if ((4U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
                    if ((1U & (~ (IData)(vlSelf->trng__DOT__discard_reg)))) {
                        if (vlSelf->trng__DOT__csprng_inst__DOT__seed_ack_reg) {
                            vlSelf->trng__DOT__mixer_inst__DOT__seed_syn_new = 0U;
                        }
                    }
                }
            }
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_iv_we = 0U;
    if (((((((((0U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)) 
               | (1U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
              | (2U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
             | (3U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
            | (4U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
           | (5U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
          | (6U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
         | (7U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)))) {
        if ((0U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            if ((1U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                if ((2U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                    if ((3U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                        if ((1U & (~ ((~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg)) 
                                      | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg))))) {
                            if (vlSelf->trng__DOT__mixer_inst__DOT__seed_syn_reg) {
                                vlSelf->trng__DOT__csprng_inst__DOT__cipher_iv_we = 1U;
                            }
                        }
                    }
                }
            }
        }
    } else if ((8U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
        if ((0xfU == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_iv_we = 1U;
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__seed_ack_new = 0U;
    if (((((((((0U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)) 
               | (1U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
              | (2U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
             | (3U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
            | (4U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
           | (5U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
          | (6U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
         | (7U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)))) {
        if ((0U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            if ((1U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                if ((1U & (~ ((~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg)) 
                              | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg))))) {
                    if (vlSelf->trng__DOT__mixer_inst__DOT__seed_syn_reg) {
                        vlSelf->trng__DOT__csprng_inst__DOT__seed_ack_new = 1U;
                    }
                }
            } else if ((2U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                if ((3U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                    if ((1U & (~ ((~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg)) 
                                  | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg))))) {
                        if (vlSelf->trng__DOT__mixer_inst__DOT__seed_syn_reg) {
                            vlSelf->trng__DOT__csprng_inst__DOT__seed_ack_new = 1U;
                        }
                    }
                }
            }
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_we = 0U;
    if (((((((((0U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)) 
               | (1U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
              | (2U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
             | (3U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
            | (4U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
           | (5U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
          | (6U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
         | (7U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)))) {
        if ((0U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            if ((1U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                if ((2U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                    if ((3U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                        if ((1U & (~ ((~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg)) 
                                      | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg))))) {
                            if (vlSelf->trng__DOT__mixer_inst__DOT__seed_syn_reg) {
                                vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_we = 1U;
                            }
                        }
                    }
                }
            }
        }
    } else if ((8U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
        if ((0xfU == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_we = 1U;
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_ctr_we = 0U;
    if (((((((((0U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)) 
               | (1U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
              | (2U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
             | (3U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
            | (4U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
           | (5U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
          | (6U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
         | (7U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)))) {
        if ((0U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            if ((1U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                if ((2U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                    if ((3U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                        if ((1U & (~ ((~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg)) 
                                      | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg))))) {
                            if (vlSelf->trng__DOT__mixer_inst__DOT__seed_syn_reg) {
                                vlSelf->trng__DOT__csprng_inst__DOT__cipher_ctr_we = 1U;
                            }
                        }
                    }
                }
            }
        }
    } else if ((8U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
        if ((0xfU == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_ctr_we = 1U;
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_we = 0U;
    if (((((((((0U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)) 
               | (1U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
              | (2U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
             | (3U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
            | (4U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
           | (5U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
          | (6U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
         | (7U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)))) {
        if ((0U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            if ((1U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                if ((1U & (~ ((~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg)) 
                              | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg))))) {
                    if (vlSelf->trng__DOT__mixer_inst__DOT__seed_syn_reg) {
                        vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_we = 1U;
                    }
                }
            }
        }
    } else if ((8U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
        if ((0xfU == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_we = 1U;
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_we = 0U;
    if (((((((((0U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)) 
               | (1U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
              | (2U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
             | (3U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
            | (4U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
           | (5U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
          | (6U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
         | (7U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)))) {
        if ((0U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            if (vlSelf->trng__DOT__csprng_inst__DOT__enable_reg) {
                if (vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__more_data_reg) {
                    vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_we = 1U;
                }
            } else {
                vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_we = 1U;
            }
        } else if ((1U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            if ((1U & ((~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg)) 
                       | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg)))) {
                vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_we = 1U;
            } else if (vlSelf->trng__DOT__mixer_inst__DOT__seed_syn_reg) {
                vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_we = 1U;
            }
        } else if ((2U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_we = 1U;
        } else if ((3U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            if ((1U & ((~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg)) 
                       | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg)))) {
                vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_we = 1U;
            } else if (vlSelf->trng__DOT__mixer_inst__DOT__seed_syn_reg) {
                vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_we = 1U;
            }
        } else if ((4U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_we = 1U;
        } else if ((5U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            if ((1U & ((~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg)) 
                       | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg)))) {
                vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_we = 1U;
            } else if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__ready_reg) {
                vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_we = 1U;
            }
        } else if ((6U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_we = 1U;
        } else if ((1U & ((~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg)) 
                          | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg)))) {
            vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_we = 1U;
        } else if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__ready_reg) {
            vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_we = 1U;
        }
    } else if ((8U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
        if ((1U & ((~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg)) 
                   | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg)))) {
            vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_we = 1U;
        } else if (vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__more_data_reg) {
            vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_we = 1U;
        }
    } else if ((0xfU == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
        vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_we = 1U;
    }
    trng__DOT__csprng_inst__DOT__fifo_inst__DOT__output_data_mux__DOT__fifo_rd_data[0U] 
        = vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_mem
        [vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_reg][0U];
    trng__DOT__csprng_inst__DOT__fifo_inst__DOT__output_data_mux__DOT__fifo_rd_data[1U] 
        = vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_mem
        [vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_reg][1U];
    trng__DOT__csprng_inst__DOT__fifo_inst__DOT__output_data_mux__DOT__fifo_rd_data[2U] 
        = vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_mem
        [vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_reg][2U];
    trng__DOT__csprng_inst__DOT__fifo_inst__DOT__output_data_mux__DOT__fifo_rd_data[3U] 
        = vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_mem
        [vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_reg][3U];
    trng__DOT__csprng_inst__DOT__fifo_inst__DOT__output_data_mux__DOT__fifo_rd_data[4U] 
        = vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_mem
        [vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_reg][4U];
    trng__DOT__csprng_inst__DOT__fifo_inst__DOT__output_data_mux__DOT__fifo_rd_data[5U] 
        = vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_mem
        [vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_reg][5U];
    trng__DOT__csprng_inst__DOT__fifo_inst__DOT__output_data_mux__DOT__fifo_rd_data[6U] 
        = vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_mem
        [vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_reg][6U];
    trng__DOT__csprng_inst__DOT__fifo_inst__DOT__output_data_mux__DOT__fifo_rd_data[7U] 
        = vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_mem
        [vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_reg][7U];
    trng__DOT__csprng_inst__DOT__fifo_inst__DOT__output_data_mux__DOT__fifo_rd_data[8U] 
        = vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_mem
        [vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_reg][8U];
    trng__DOT__csprng_inst__DOT__fifo_inst__DOT__output_data_mux__DOT__fifo_rd_data[9U] 
        = vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_mem
        [vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_reg][9U];
    trng__DOT__csprng_inst__DOT__fifo_inst__DOT__output_data_mux__DOT__fifo_rd_data[0xaU] 
        = vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_mem
        [vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_reg][0xaU];
    trng__DOT__csprng_inst__DOT__fifo_inst__DOT__output_data_mux__DOT__fifo_rd_data[0xbU] 
        = vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_mem
        [vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_reg][0xbU];
    trng__DOT__csprng_inst__DOT__fifo_inst__DOT__output_data_mux__DOT__fifo_rd_data[0xcU] 
        = vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_mem
        [vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_reg][0xcU];
    trng__DOT__csprng_inst__DOT__fifo_inst__DOT__output_data_mux__DOT__fifo_rd_data[0xdU] 
        = vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_mem
        [vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_reg][0xdU];
    trng__DOT__csprng_inst__DOT__fifo_inst__DOT__output_data_mux__DOT__fifo_rd_data[0xeU] 
        = vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_mem
        [vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_reg][0xeU];
    trng__DOT__csprng_inst__DOT__fifo_inst__DOT__output_data_mux__DOT__fifo_rd_data[0xfU] 
        = vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_mem
        [vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_reg][0xfU];
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__muxed_data 
        = (((0U == (0x1fU & ((IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__mux_data_ptr_reg) 
                             << 5U))) ? 0U : (trng__DOT__csprng_inst__DOT__fifo_inst__DOT__output_data_mux__DOT__fifo_rd_data[
                                              (((IData)(0x1fU) 
                                                + (0x1ffU 
                                                   & ((IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__mux_data_ptr_reg) 
                                                      << 5U))) 
                                               >> 5U)] 
                                              << ((IData)(0x20U) 
                                                  - 
                                                  (0x1fU 
                                                   & ((IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__mux_data_ptr_reg) 
                                                      << 5U))))) 
           | (trng__DOT__csprng_inst__DOT__fifo_inst__DOT__output_data_mux__DOT__fifo_rd_data[
              (0xfU & (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__mux_data_ptr_reg))] 
              >> (0x1fU & ((IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__mux_data_ptr_reg) 
                           << 5U))));
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_rst = 0U;
    if ((0U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_reg))) {
        if ((1U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_reg))) {
            if ((7U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_reg))) {
                vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_rst = 1U;
            }
        }
    }
    trng__DOT__mixer_inst__DOT__hash_inst__DOT__round_ctr_inc = 0U;
    if ((0U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_reg))) {
        if ((1U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_reg))) {
            trng__DOT__mixer_inst__DOT__hash_inst__DOT__round_ctr_inc = 1U;
        }
    }
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__dr_ctr_rst = 0U;
    if ((1U & (~ ((IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg) 
                  >> 2U)))) {
        if ((1U & (~ ((IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg) 
                      >> 1U)))) {
            if ((1U & (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg))) {
                trng__DOT__csprng_inst__DOT__cipher_inst__DOT__dr_ctr_rst = 1U;
            }
        }
    }
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_rst = 0U;
    if ((1U & (~ ((IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg) 
                  >> 2U)))) {
        if ((1U & (~ ((IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg) 
                      >> 1U)))) {
            if ((1U & (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg))) {
                trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_rst = 1U;
            }
        }
    }
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_inc = 0U;
    if ((1U & (~ ((IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg) 
                  >> 2U)))) {
        if ((2U & (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg))) {
            if ((1U & (~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg)))) {
                trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_inc = 1U;
            }
        }
    }
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__dr_ctr_inc = 0U;
    if ((1U & (~ ((IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg) 
                  >> 2U)))) {
        if ((2U & (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg))) {
            if ((1U & (~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg)))) {
                if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
                    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__dr_ctr_inc = 1U;
                }
            }
        }
    }
    trng__DOT__mixer_inst__DOT__word_ctr_inc = 0U;
    if ((0U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
        if ((1U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
            if ((2U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
                if (vlSelf->trng__DOT__mixer_inst__DOT__enable_reg) {
                    if ((0x1fU != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__word_ctr_reg))) {
                        trng__DOT__mixer_inst__DOT__word_ctr_inc = 1U;
                    }
                }
            } else if ((3U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
                if ((4U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
                    if (vlSelf->trng__DOT__mixer_inst__DOT__enable_reg) {
                        if ((0x1fU != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__word_ctr_reg))) {
                            trng__DOT__mixer_inst__DOT__word_ctr_inc = 1U;
                        }
                    }
                } else if ((5U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
                    if ((6U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
                        if (vlSelf->trng__DOT__mixer_inst__DOT__enable_reg) {
                            if ((0x1fU != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__word_ctr_reg))) {
                                trng__DOT__mixer_inst__DOT__word_ctr_inc = 1U;
                            }
                        }
                    }
                }
            }
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__block_ctr_rst = 0U;
    if (((((((((0U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)) 
               | (1U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
              | (2U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
             | (3U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
            | (4U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
           | (5U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
          | (6U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
         | (7U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)))) {
        if ((0U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            if ((1U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                if ((2U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                    if ((3U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                        if ((4U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                            if ((1U & (~ ((~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg)) 
                                          | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg))))) {
                                vlSelf->trng__DOT__csprng_inst__DOT__block_ctr_rst = 1U;
                            }
                        }
                    }
                }
            }
        }
    } else if ((8U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
        if ((0xfU == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            vlSelf->trng__DOT__csprng_inst__DOT__block_ctr_rst = 1U;
        }
    }
    trng__DOT__csprng_inst__DOT__block_ctr_inc = 0U;
    if (((((((((0U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)) 
               | (1U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
              | (2U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
             | (3U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
            | (4U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
           | (5U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
          | (6U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
         | (7U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)))) {
        if ((0U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            if ((1U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                if ((2U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                    if ((3U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                        if ((4U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                            if ((5U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                                if ((6U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                                    if ((1U & (~ ((~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg)) 
                                                  | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg))))) {
                                        if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__ready_reg) {
                                            trng__DOT__csprng_inst__DOT__block_ctr_inc = 1U;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    trng__DOT__mixer_inst__DOT__hash_inst__DOT__t2_logic__DOT__sum0 
        = (((((QData)((IData)((0xfffffffU & (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__a_reg)))) 
              << 0x24U) | (vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__a_reg 
                           >> 0x1cU)) ^ ((vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__a_reg 
                                          << 0x1eU) 
                                         | (QData)((IData)(
                                                           (0x3fffffffU 
                                                            & (IData)(
                                                                      (vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__a_reg 
                                                                       >> 0x22U))))))) 
           ^ ((vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__a_reg 
               << 0x19U) | (QData)((IData)((0x1ffffffU 
                                            & (IData)(
                                                      (vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__a_reg 
                                                       >> 0x27U)))))));
    trng__DOT__mixer_inst__DOT__hash_inst__DOT__t2_logic__DOT__maj 
        = (((vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__a_reg 
             & vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__b_reg) 
            ^ (vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__a_reg 
               & vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__c_reg)) 
           ^ (vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__b_reg 
              & vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__c_reg));
    trng__DOT__mixer_inst__DOT__hash_inst__DOT__t2 
        = (trng__DOT__mixer_inst__DOT__hash_inst__DOT__t2_logic__DOT__sum0 
           + trng__DOT__mixer_inst__DOT__hash_inst__DOT__t2_logic__DOT__maj);
    trng__DOT__mixer_inst__DOT__block_done = 0U;
    if ((0U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
        if ((1U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
            if ((2U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
                if (vlSelf->trng__DOT__mixer_inst__DOT__enable_reg) {
                    if ((0x1fU == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__word_ctr_reg))) {
                        trng__DOT__mixer_inst__DOT__block_done = 1U;
                    }
                }
            } else if ((3U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
                if ((4U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
                    if (vlSelf->trng__DOT__mixer_inst__DOT__enable_reg) {
                        if ((0x1fU == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__word_ctr_reg))) {
                            trng__DOT__mixer_inst__DOT__block_done = 1U;
                        }
                    }
                } else if ((5U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
                    if ((6U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
                        if (vlSelf->trng__DOT__mixer_inst__DOT__enable_reg) {
                            if ((0x1fU == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__word_ctr_reg))) {
                                trng__DOT__mixer_inst__DOT__block_done = 1U;
                            }
                        }
                    }
                }
            }
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__block_ctr_max = 0U;
    if (((vlSelf->trng__DOT__csprng_inst__DOT__block_ctr_reg 
          == (((QData)((IData)(vlSelf->trng__DOT__csprng_inst__DOT__num_blocks_high_reg)) 
               << 0x20U) | (QData)((IData)(vlSelf->trng__DOT__csprng_inst__DOT__num_blocks_low_reg)))) 
         | (0x1000000000000000ULL == vlSelf->trng__DOT__csprng_inst__DOT__block_ctr_reg))) {
        vlSelf->trng__DOT__csprng_inst__DOT__block_ctr_max = 1U;
    }
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state = 0U;
    if ((1U & (~ ((IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg) 
                  >> 2U)))) {
        if ((1U & (~ ((IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg) 
                      >> 1U)))) {
            if ((1U & (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg))) {
                vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state = 1U;
            }
        }
    }
    trng__DOT__mixer_inst__DOT__hash_digest[0U] = (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H7_reg);
    trng__DOT__mixer_inst__DOT__hash_digest[1U] = (IData)(
                                                          (vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H7_reg 
                                                           >> 0x20U));
    trng__DOT__mixer_inst__DOT__hash_digest[2U] = (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H6_reg);
    trng__DOT__mixer_inst__DOT__hash_digest[3U] = (IData)(
                                                          (vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H6_reg 
                                                           >> 0x20U));
    trng__DOT__mixer_inst__DOT__hash_digest[4U] = (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H5_reg);
    trng__DOT__mixer_inst__DOT__hash_digest[5U] = (IData)(
                                                          (vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H5_reg 
                                                           >> 0x20U));
    trng__DOT__mixer_inst__DOT__hash_digest[6U] = (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H4_reg);
    trng__DOT__mixer_inst__DOT__hash_digest[7U] = (IData)(
                                                          (vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H4_reg 
                                                           >> 0x20U));
    trng__DOT__mixer_inst__DOT__hash_digest[8U] = (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H3_reg);
    trng__DOT__mixer_inst__DOT__hash_digest[9U] = (IData)(
                                                          (vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H3_reg 
                                                           >> 0x20U));
    trng__DOT__mixer_inst__DOT__hash_digest[0xaU] = (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H2_reg);
    trng__DOT__mixer_inst__DOT__hash_digest[0xbU] = (IData)(
                                                            (vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H2_reg 
                                                             >> 0x20U));
    trng__DOT__mixer_inst__DOT__hash_digest[0xcU] = (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H1_reg);
    trng__DOT__mixer_inst__DOT__hash_digest[0xdU] = (IData)(
                                                            (vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H1_reg 
                                                             >> 0x20U));
    trng__DOT__mixer_inst__DOT__hash_digest[0xeU] = (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H0_reg);
    trng__DOT__mixer_inst__DOT__hash_digest[0xfU] = (IData)(
                                                            (vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H0_reg 
                                                             >> 0x20U));
    __Vtableidx2 = vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__round_ctr_reg;
    trng__DOT__mixer_inst__DOT__hash_inst__DOT__k_constants_inst__DOT__tmp_K 
        = Vtrng__ConstPool__TABLE_8cab5d11_0[__Vtableidx2];
    trng__DOT__mixer_inst__DOT__hash_inst__DOT__digest_update = 0U;
    if ((0U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_reg))) {
        if ((1U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_reg))) {
            if ((2U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_reg))) {
                trng__DOT__mixer_inst__DOT__hash_inst__DOT__digest_update = 1U;
            }
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_cipher_data_valid = 0U;
    if (((((((((0U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)) 
               | (1U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
              | (2U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
             | (3U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
            | (4U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
           | (5U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
          | (6U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
         | (7U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)))) {
        if ((0U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            if ((1U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                if ((2U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                    if ((3U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                        if ((4U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                            if ((5U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                                if ((6U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                                    if ((1U & (~ ((~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg)) 
                                                  | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg))))) {
                                        if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__ready_reg) {
                                            vlSelf->trng__DOT__csprng_inst__DOT__fifo_cipher_data_valid = 1U;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    trng__DOT__mixer_inst__DOT__hash_inst__DOT__state_update = 0U;
    if ((0U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_reg))) {
        if ((1U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_reg))) {
            trng__DOT__mixer_inst__DOT__hash_inst__DOT__state_update = 1U;
        }
    }
    trng__DOT__mixer_inst__DOT__collect_block = 0U;
    if ((0U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
        if (vlSelf->trng__DOT__csprng_inst__DOT__more_seed_reg) {
            trng__DOT__mixer_inst__DOT__collect_block = 1U;
        }
    } else if ((1U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
        if ((2U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
            if ((3U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
                if ((4U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
                    if ((5U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
                        if ((1U & (~ (IData)(vlSelf->trng__DOT__discard_reg)))) {
                            if (vlSelf->trng__DOT__csprng_inst__DOT__more_seed_reg) {
                                trng__DOT__mixer_inst__DOT__collect_block = 1U;
                            }
                        }
                    }
                }
            }
        }
    }
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__0__op 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_reg[7U];
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__0__Vfuncout 
        = ((__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__0__op 
            << 0x18U) | ((0xff0000U & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__0__op 
                                       << 8U)) | ((0xff00U 
                                                   & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__0__op 
                                                      >> 8U)) 
                                                  | (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__0__op 
                                                     >> 0x18U))));
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_logic__DOT__key0 
        = __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__0__Vfuncout;
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__1__op 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_reg[6U];
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__1__Vfuncout 
        = ((__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__1__op 
            << 0x18U) | ((0xff0000U & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__1__op 
                                       << 8U)) | ((0xff00U 
                                                   & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__1__op 
                                                      >> 8U)) 
                                                  | (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__1__op 
                                                     >> 0x18U))));
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_logic__DOT__key1 
        = __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__1__Vfuncout;
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__2__op 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_reg[5U];
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__2__Vfuncout 
        = ((__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__2__op 
            << 0x18U) | ((0xff0000U & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__2__op 
                                       << 8U)) | ((0xff00U 
                                                   & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__2__op 
                                                      >> 8U)) 
                                                  | (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__2__op 
                                                     >> 0x18U))));
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_logic__DOT__key2 
        = __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__2__Vfuncout;
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__3__op 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_reg[4U];
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__3__Vfuncout 
        = ((__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__3__op 
            << 0x18U) | ((0xff0000U & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__3__op 
                                       << 8U)) | ((0xff00U 
                                                   & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__3__op 
                                                      >> 8U)) 
                                                  | (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__3__op 
                                                     >> 0x18U))));
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_logic__DOT__key3 
        = __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__3__Vfuncout;
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__4__op 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_reg[3U];
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__4__Vfuncout 
        = ((__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__4__op 
            << 0x18U) | ((0xff0000U & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__4__op 
                                       << 8U)) | ((0xff00U 
                                                   & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__4__op 
                                                      >> 8U)) 
                                                  | (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__4__op 
                                                     >> 0x18U))));
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_logic__DOT__key4 
        = __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__4__Vfuncout;
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__5__op 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_reg[2U];
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__5__Vfuncout 
        = ((__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__5__op 
            << 0x18U) | ((0xff0000U & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__5__op 
                                       << 8U)) | ((0xff00U 
                                                   & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__5__op 
                                                      >> 8U)) 
                                                  | (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__5__op 
                                                     >> 0x18U))));
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_logic__DOT__key5 
        = __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__5__Vfuncout;
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__6__op 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_reg[1U];
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__6__Vfuncout 
        = ((__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__6__op 
            << 0x18U) | ((0xff0000U & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__6__op 
                                       << 8U)) | ((0xff00U 
                                                   & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__6__op 
                                                      >> 8U)) 
                                                  | (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__6__op 
                                                     >> 0x18U))));
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_logic__DOT__key6 
        = __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__6__Vfuncout;
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__7__op 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_reg[0U];
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__7__Vfuncout 
        = ((__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__7__op 
            << 0x18U) | ((0xff0000U & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__7__op 
                                       << 8U)) | ((0xff00U 
                                                   & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__7__op 
                                                      >> 8U)) 
                                                  | (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__7__op 
                                                     >> 0x18U))));
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_logic__DOT__key7 
        = __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__7__Vfuncout;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word[4U] 
        = trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_logic__DOT__key0;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word[5U] 
        = trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_logic__DOT__key1;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word[6U] 
        = trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_logic__DOT__key2;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word[7U] 
        = trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_logic__DOT__key3;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word[0xcU] 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block0_ctr_reg;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word[0xdU] 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block1_ctr_reg;
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__8__op 
        = (IData)((vlSelf->trng__DOT__csprng_inst__DOT__cipher_iv_reg 
                   >> 0x20U));
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__8__Vfuncout 
        = ((__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__8__op 
            << 0x18U) | ((0xff0000U & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__8__op 
                                       << 8U)) | ((0xff00U 
                                                   & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__8__op 
                                                      >> 8U)) 
                                                  | (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__8__op 
                                                     >> 0x18U))));
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word[0xeU] 
        = __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__8__Vfuncout;
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__9__op 
        = (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_iv_reg);
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__9__Vfuncout 
        = ((__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__9__op 
            << 0x18U) | ((0xff0000U & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__9__op 
                                       << 8U)) | ((0xff00U 
                                                   & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__9__op 
                                                      >> 8U)) 
                                                  | (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__9__op 
                                                     >> 0x18U))));
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word[0xfU] 
        = __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__9__Vfuncout;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word[0U] = 0x61707865U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word[1U] = 0x3320646eU;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word[2U] = 0x79622d32U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word[3U] = 0x6b206574U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word[8U] 
        = trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_logic__DOT__key4;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word[9U] 
        = trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_logic__DOT__key5;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word[0xaU] 
        = trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_logic__DOT__key6;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word[0xbU] 
        = trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_logic__DOT__key7;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_next = 0U;
    if (((((((((0U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)) 
               | (1U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
              | (2U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
             | (3U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
            | (4U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
           | (5U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
          | (6U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
         | (7U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)))) {
        if ((0U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            if ((1U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                if ((2U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                    if ((3U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                        if ((4U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                            if ((5U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                                if ((6U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                                    if ((1U & (~ ((~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg)) 
                                                  | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg))))) {
                                        vlSelf->trng__DOT__csprng_inst__DOT__cipher_next = 1U;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    trng__DOT__mixer_inst__DOT__update_block = 0U;
    if ((0U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
        if ((1U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
            if ((2U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
                if ((3U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
                    if (vlSelf->trng__DOT__mixer_inst__DOT__enable_reg) {
                        trng__DOT__mixer_inst__DOT__update_block = 1U;
                    }
                } else if ((4U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
                    if ((5U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
                        if (vlSelf->trng__DOT__mixer_inst__DOT__enable_reg) {
                            trng__DOT__mixer_inst__DOT__update_block = 1U;
                        }
                    }
                }
            }
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_init = 0U;
    if (((((((((0U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)) 
               | (1U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
              | (2U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
             | (3U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
            | (4U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
           | (5U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
          | (6U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
         | (7U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)))) {
        if ((0U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            if ((1U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                if ((2U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                    if ((3U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                        if ((4U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                            if ((1U & (~ ((~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg)) 
                                          | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg))))) {
                                vlSelf->trng__DOT__csprng_inst__DOT__cipher_init = 1U;
                            }
                        }
                    }
                }
            }
        }
    }
    trng__DOT__mixer_inst__DOT__hash_block[0U] = vlSelf->trng__DOT__mixer_inst__DOT__block31_reg;
    trng__DOT__mixer_inst__DOT__hash_block[1U] = vlSelf->trng__DOT__mixer_inst__DOT__block30_reg;
    trng__DOT__mixer_inst__DOT__hash_block[2U] = vlSelf->trng__DOT__mixer_inst__DOT__block29_reg;
    trng__DOT__mixer_inst__DOT__hash_block[3U] = vlSelf->trng__DOT__mixer_inst__DOT__block28_reg;
    trng__DOT__mixer_inst__DOT__hash_block[4U] = vlSelf->trng__DOT__mixer_inst__DOT__block27_reg;
    trng__DOT__mixer_inst__DOT__hash_block[5U] = vlSelf->trng__DOT__mixer_inst__DOT__block26_reg;
    trng__DOT__mixer_inst__DOT__hash_block[6U] = vlSelf->trng__DOT__mixer_inst__DOT__block25_reg;
    trng__DOT__mixer_inst__DOT__hash_block[7U] = vlSelf->trng__DOT__mixer_inst__DOT__block24_reg;
    trng__DOT__mixer_inst__DOT__hash_block[8U] = vlSelf->trng__DOT__mixer_inst__DOT__block23_reg;
    trng__DOT__mixer_inst__DOT__hash_block[9U] = vlSelf->trng__DOT__mixer_inst__DOT__block22_reg;
    trng__DOT__mixer_inst__DOT__hash_block[0xaU] = vlSelf->trng__DOT__mixer_inst__DOT__block21_reg;
    trng__DOT__mixer_inst__DOT__hash_block[0xbU] = vlSelf->trng__DOT__mixer_inst__DOT__block20_reg;
    trng__DOT__mixer_inst__DOT__hash_block[0xcU] = vlSelf->trng__DOT__mixer_inst__DOT__block19_reg;
    trng__DOT__mixer_inst__DOT__hash_block[0xdU] = vlSelf->trng__DOT__mixer_inst__DOT__block18_reg;
    trng__DOT__mixer_inst__DOT__hash_block[0xeU] = vlSelf->trng__DOT__mixer_inst__DOT__block17_reg;
    trng__DOT__mixer_inst__DOT__hash_block[0xfU] = vlSelf->trng__DOT__mixer_inst__DOT__block16_reg;
    trng__DOT__mixer_inst__DOT__hash_block[0x10U] = vlSelf->trng__DOT__mixer_inst__DOT__block15_reg;
    trng__DOT__mixer_inst__DOT__hash_block[0x11U] = vlSelf->trng__DOT__mixer_inst__DOT__block14_reg;
    trng__DOT__mixer_inst__DOT__hash_block[0x12U] = vlSelf->trng__DOT__mixer_inst__DOT__block13_reg;
    trng__DOT__mixer_inst__DOT__hash_block[0x13U] = vlSelf->trng__DOT__mixer_inst__DOT__block12_reg;
    trng__DOT__mixer_inst__DOT__hash_block[0x14U] = vlSelf->trng__DOT__mixer_inst__DOT__block11_reg;
    trng__DOT__mixer_inst__DOT__hash_block[0x15U] = vlSelf->trng__DOT__mixer_inst__DOT__block10_reg;
    trng__DOT__mixer_inst__DOT__hash_block[0x16U] = vlSelf->trng__DOT__mixer_inst__DOT__block09_reg;
    trng__DOT__mixer_inst__DOT__hash_block[0x17U] = vlSelf->trng__DOT__mixer_inst__DOT__block08_reg;
    trng__DOT__mixer_inst__DOT__hash_block[0x18U] = vlSelf->trng__DOT__mixer_inst__DOT__block07_reg;
    trng__DOT__mixer_inst__DOT__hash_block[0x19U] = vlSelf->trng__DOT__mixer_inst__DOT__block06_reg;
    trng__DOT__mixer_inst__DOT__hash_block[0x1aU] = vlSelf->trng__DOT__mixer_inst__DOT__block05_reg;
    trng__DOT__mixer_inst__DOT__hash_block[0x1bU] = vlSelf->trng__DOT__mixer_inst__DOT__block04_reg;
    trng__DOT__mixer_inst__DOT__hash_block[0x1cU] = vlSelf->trng__DOT__mixer_inst__DOT__block03_reg;
    trng__DOT__mixer_inst__DOT__hash_block[0x1dU] = vlSelf->trng__DOT__mixer_inst__DOT__block02_reg;
    trng__DOT__mixer_inst__DOT__hash_block[0x1eU] = (IData)(
                                                            (((QData)((IData)(vlSelf->trng__DOT__mixer_inst__DOT__block00_reg)) 
                                                              << 0x20U) 
                                                             | (QData)((IData)(vlSelf->trng__DOT__mixer_inst__DOT__block01_reg))));
    trng__DOT__mixer_inst__DOT__hash_block[0x1fU] = (IData)(
                                                            ((((QData)((IData)(vlSelf->trng__DOT__mixer_inst__DOT__block00_reg)) 
                                                               << 0x20U) 
                                                              | (QData)((IData)(vlSelf->trng__DOT__mixer_inst__DOT__block01_reg))) 
                                                             >> 0x20U));
    trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_next = 0U;
    if ((0U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_reg))) {
        if ((1U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_reg))) {
            trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_next = 1U;
        }
    }
    trng__DOT__mixer_inst__DOT__hash_next = 0U;
    if ((0U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
        if ((1U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
            if ((2U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
                if ((1U & (~ (IData)(vlSelf->trng__DOT__discard_reg)))) {
                    if (vlSelf->trng__DOT__mixer_inst__DOT__init_done_reg) {
                        trng__DOT__mixer_inst__DOT__hash_next = 1U;
                    }
                }
            }
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_discard = 0U;
    if ((1U & (~ ((((((((0U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)) 
                        | (1U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
                       | (2U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
                      | (3U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
                     | (4U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
                    | (5U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
                   | (6U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
                  | (7U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)))))) {
        if ((8U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            if ((0xfU == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                vlSelf->trng__DOT__csprng_inst__DOT__fifo_discard = 1U;
            }
        }
    }
    trng__DOT__mixer_inst__DOT__hash_init = 0U;
    if ((0U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
        if ((1U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
            if ((2U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
                if ((1U & (~ (IData)(vlSelf->trng__DOT__discard_reg)))) {
                    if ((1U & (~ (IData)(vlSelf->trng__DOT__mixer_inst__DOT__init_done_reg)))) {
                        trng__DOT__mixer_inst__DOT__hash_init = 1U;
                    }
                }
            }
        }
    }
    trng__DOT__csprng_debug_update = 0U;
    if ((4U & (IData)(vlSelf->trng__DOT__debug_mux_reg))) {
        if ((1U & (~ ((IData)(vlSelf->trng__DOT__debug_mux_reg) 
                      >> 1U)))) {
            if ((1U & (~ (IData)(vlSelf->trng__DOT__debug_mux_reg)))) {
                trng__DOT__csprng_debug_update = vlSelf->debug_update;
            }
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__update_state = 0U;
    if ((1U & (~ ((IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg) 
                  >> 2U)))) {
        if ((2U & (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg))) {
            if ((1U & (~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg)))) {
                vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__update_state = 1U;
            }
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__update_output = 0U;
    if ((1U & (~ ((IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg) 
                  >> 2U)))) {
        if ((2U & (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg))) {
            if ((1U & (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg))) {
                vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__update_output = 1U;
            }
        }
    }
    trng__DOT__trng_api_error = 0U;
    if (vlSelf->trng__DOT__trng_api_cs) {
        if (vlSelf->trng__DOT__trng_api_we) {
            if ((0x10U != (0xffU & (IData)(vlSelf->address)))) {
                if ((0x12U != (0xffU & (IData)(vlSelf->address)))) {
                    if ((0x13U != (0xffU & (IData)(vlSelf->address)))) {
                        trng__DOT__trng_api_error = 1U;
                    }
                }
            }
        } else if ((0U != (0xffU & (IData)(vlSelf->address)))) {
            if ((1U != (0xffU & (IData)(vlSelf->address)))) {
                if ((2U != (0xffU & (IData)(vlSelf->address)))) {
                    if ((0x10U != (0xffU & (IData)(vlSelf->address)))) {
                        if ((0x11U != (0xffU & (IData)(vlSelf->address)))) {
                            if ((0x12U != (0xffU & (IData)(vlSelf->address)))) {
                                if ((0x13U != (0xffU 
                                               & (IData)(vlSelf->address)))) {
                                    trng__DOT__trng_api_error = 1U;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    vlSelf->trng__DOT__debug_delay_we = 0U;
    if (vlSelf->trng__DOT__trng_api_cs) {
        if (vlSelf->trng__DOT__trng_api_we) {
            if ((0x10U != (0xffU & (IData)(vlSelf->address)))) {
                if ((0x12U != (0xffU & (IData)(vlSelf->address)))) {
                    if ((0x13U == (0xffU & (IData)(vlSelf->address)))) {
                        vlSelf->trng__DOT__debug_delay_we = 1U;
                    }
                }
            }
        }
    }
    vlSelf->trng__DOT__debug_mux_we = 0U;
    if (vlSelf->trng__DOT__trng_api_cs) {
        if (vlSelf->trng__DOT__trng_api_we) {
            if ((0x10U != (0xffU & (IData)(vlSelf->address)))) {
                if ((0x12U == (0xffU & (IData)(vlSelf->address)))) {
                    vlSelf->trng__DOT__debug_mux_we = 1U;
                }
            }
        }
    }
    vlSelf->trng__DOT__debug_delay_new = 0U;
    if (vlSelf->trng__DOT__trng_api_cs) {
        if (vlSelf->trng__DOT__trng_api_we) {
            if ((0x10U != (0xffU & (IData)(vlSelf->address)))) {
                if ((0x12U != (0xffU & (IData)(vlSelf->address)))) {
                    if ((0x13U == (0xffU & (IData)(vlSelf->address)))) {
                        vlSelf->trng__DOT__debug_delay_new 
                            = vlSelf->write_data;
                    }
                }
            }
        }
    }
    vlSelf->trng__DOT__discard_new = 0U;
    if (vlSelf->trng__DOT__trng_api_cs) {
        if (vlSelf->trng__DOT__trng_api_we) {
            if ((0x10U == (0xffU & (IData)(vlSelf->address)))) {
                vlSelf->trng__DOT__discard_new = (1U 
                                                  & vlSelf->write_data);
            }
        }
    }
    vlSelf->trng__DOT__debug_mux_new = 0U;
    trng__DOT__trng_api_read_data = 0U;
    if (vlSelf->trng__DOT__trng_api_cs) {
        if (vlSelf->trng__DOT__trng_api_we) {
            if ((0x10U != (0xffU & (IData)(vlSelf->address)))) {
                if ((0x12U == (0xffU & (IData)(vlSelf->address)))) {
                    vlSelf->trng__DOT__debug_mux_new 
                        = (7U & vlSelf->write_data);
                }
            }
        } else if ((0U == (0xffU & (IData)(vlSelf->address)))) {
            trng__DOT__trng_api_read_data = 0x74726e67U;
        } else if ((1U == (0xffU & (IData)(vlSelf->address)))) {
            trng__DOT__trng_api_read_data = 0x20202020U;
        } else if ((2U == (0xffU & (IData)(vlSelf->address)))) {
            trng__DOT__trng_api_read_data = 0x302e3031U;
        } else if ((0x10U != (0xffU & (IData)(vlSelf->address)))) {
            if ((0x11U != (0xffU & (IData)(vlSelf->address)))) {
                if ((0x12U == (0xffU & (IData)(vlSelf->address)))) {
                    trng__DOT__trng_api_read_data = vlSelf->trng__DOT__debug_mux_new;
                } else if ((0x13U == (0xffU & (IData)(vlSelf->address)))) {
                    trng__DOT__trng_api_read_data = vlSelf->trng__DOT__debug_delay_reg;
                }
            }
        }
    }
    trng__DOT__mixer_inst__DOT__tmp_error = 0U;
    if (vlSelf->trng__DOT__mixer_api_cs) {
        if (vlSelf->trng__DOT__mixer_api_we) {
            if ((0x10U != (0xffU & (IData)(vlSelf->address)))) {
                if ((0x20U != (0xffU & (IData)(vlSelf->address)))) {
                    trng__DOT__mixer_inst__DOT__tmp_error = 1U;
                }
            }
        } else if ((0x10U != (0xffU & (IData)(vlSelf->address)))) {
            if ((0x11U != (0xffU & (IData)(vlSelf->address)))) {
                if ((0x20U != (0xffU & (IData)(vlSelf->address)))) {
                    trng__DOT__mixer_inst__DOT__tmp_error = 1U;
                }
            }
        }
    }
    vlSelf->trng__DOT__mixer_inst__DOT__entropy_timeout_we = 0U;
    if (vlSelf->trng__DOT__mixer_api_cs) {
        if (vlSelf->trng__DOT__mixer_api_we) {
            if ((0x10U != (0xffU & (IData)(vlSelf->address)))) {
                if ((0x20U == (0xffU & (IData)(vlSelf->address)))) {
                    vlSelf->trng__DOT__mixer_inst__DOT__entropy_timeout_we = 1U;
                }
            }
        }
    }
    vlSelf->trng__DOT__mixer_inst__DOT__enable_we = 0U;
    if (vlSelf->trng__DOT__mixer_api_cs) {
        if (vlSelf->trng__DOT__mixer_api_we) {
            if ((0x10U == (0xffU & (IData)(vlSelf->address)))) {
                vlSelf->trng__DOT__mixer_inst__DOT__enable_we = 1U;
            }
        }
    }
    vlSelf->trng__DOT__mixer_inst__DOT__entropy_timeout_new = 0U;
    if (vlSelf->trng__DOT__mixer_api_cs) {
        if (vlSelf->trng__DOT__mixer_api_we) {
            if ((0x10U != (0xffU & (IData)(vlSelf->address)))) {
                if ((0x20U == (0xffU & (IData)(vlSelf->address)))) {
                    vlSelf->trng__DOT__mixer_inst__DOT__entropy_timeout_new 
                        = (0xffffffU & vlSelf->write_data);
                }
            }
        }
    }
    vlSelf->trng__DOT__mixer_inst__DOT__restart_new = 0U;
    if (vlSelf->trng__DOT__mixer_api_cs) {
        if (vlSelf->trng__DOT__mixer_api_we) {
            if ((0x10U == (0xffU & (IData)(vlSelf->address)))) {
                vlSelf->trng__DOT__mixer_inst__DOT__restart_new 
                    = (1U & (vlSelf->write_data >> 1U));
            }
        }
    }
    vlSelf->trng__DOT__mixer_inst__DOT__enable_new = 0U;
    if (vlSelf->trng__DOT__mixer_api_cs) {
        if (vlSelf->trng__DOT__mixer_api_we) {
            if ((0x10U == (0xffU & (IData)(vlSelf->address)))) {
                vlSelf->trng__DOT__mixer_inst__DOT__enable_new 
                    = (1U & vlSelf->write_data);
            }
        }
    }
    trng__DOT__mixer_inst__DOT__tmp_read_data = 0U;
    if (vlSelf->trng__DOT__mixer_api_cs) {
        if ((1U & (~ (IData)(vlSelf->trng__DOT__mixer_api_we)))) {
            if ((0x10U == (0xffU & (IData)(vlSelf->address)))) {
                trng__DOT__mixer_inst__DOT__tmp_read_data 
                    = (((IData)(vlSelf->trng__DOT__mixer_inst__DOT__restart_reg) 
                        << 1U) | (IData)(vlSelf->trng__DOT__mixer_inst__DOT__enable_reg));
            } else if ((0x11U == (0xffU & (IData)(vlSelf->address)))) {
                trng__DOT__mixer_inst__DOT__tmp_read_data = 0U;
            } else if ((0x20U == (0xffU & (IData)(vlSelf->address)))) {
                trng__DOT__mixer_inst__DOT__tmp_read_data 
                    = vlSelf->trng__DOT__mixer_inst__DOT__entropy_timeout_reg;
            }
        }
    }
    trng__DOT__csprng_inst__DOT__tmp_error = 0U;
    if (vlSelf->trng__DOT__csprng_api_cs) {
        if (vlSelf->trng__DOT__csprng_api_we) {
            if ((0x10U != (0xffU & (IData)(vlSelf->address)))) {
                if ((0x40U != (0xffU & (IData)(vlSelf->address)))) {
                    if ((0x41U != (0xffU & (IData)(vlSelf->address)))) {
                        if ((0x42U != (0xffU & (IData)(vlSelf->address)))) {
                            trng__DOT__csprng_inst__DOT__tmp_error = 1U;
                        }
                    }
                }
            }
        } else if ((0x10U != (0xffU & (IData)(vlSelf->address)))) {
            if ((0x11U != (0xffU & (IData)(vlSelf->address)))) {
                if ((0x20U != (0xffU & (IData)(vlSelf->address)))) {
                    if ((0x40U != (0xffU & (IData)(vlSelf->address)))) {
                        if ((0x41U != (0xffU & (IData)(vlSelf->address)))) {
                            if ((0x42U != (0xffU & (IData)(vlSelf->address)))) {
                                trng__DOT__csprng_inst__DOT__tmp_error = 1U;
                            }
                        }
                    }
                }
            }
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__rnd_ack = 0U;
    if (vlSelf->trng__DOT__csprng_api_cs) {
        if ((1U & (~ (IData)(vlSelf->trng__DOT__csprng_api_we)))) {
            if ((0x10U != (0xffU & (IData)(vlSelf->address)))) {
                if ((0x11U != (0xffU & (IData)(vlSelf->address)))) {
                    if ((0x20U == (0xffU & (IData)(vlSelf->address)))) {
                        vlSelf->trng__DOT__csprng_inst__DOT__rnd_ack = 1U;
                    }
                }
            }
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__num_blocks_high_we = 0U;
    if (vlSelf->trng__DOT__csprng_api_cs) {
        if (vlSelf->trng__DOT__csprng_api_we) {
            if ((0x10U != (0xffU & (IData)(vlSelf->address)))) {
                if ((0x40U != (0xffU & (IData)(vlSelf->address)))) {
                    if ((0x41U != (0xffU & (IData)(vlSelf->address)))) {
                        if ((0x42U == (0xffU & (IData)(vlSelf->address)))) {
                            vlSelf->trng__DOT__csprng_inst__DOT__num_blocks_high_we = 1U;
                        }
                    }
                }
            }
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__num_blocks_low_we = 0U;
    if (vlSelf->trng__DOT__csprng_api_cs) {
        if (vlSelf->trng__DOT__csprng_api_we) {
            if ((0x10U != (0xffU & (IData)(vlSelf->address)))) {
                if ((0x40U != (0xffU & (IData)(vlSelf->address)))) {
                    if ((0x41U == (0xffU & (IData)(vlSelf->address)))) {
                        vlSelf->trng__DOT__csprng_inst__DOT__num_blocks_low_we = 1U;
                    }
                }
            }
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__num_rounds_we = 0U;
    if (vlSelf->trng__DOT__csprng_api_cs) {
        if (vlSelf->trng__DOT__csprng_api_we) {
            if ((0x10U != (0xffU & (IData)(vlSelf->address)))) {
                if ((0x40U == (0xffU & (IData)(vlSelf->address)))) {
                    vlSelf->trng__DOT__csprng_inst__DOT__num_rounds_we = 1U;
                }
            }
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__enable_we = 0U;
    if (vlSelf->trng__DOT__csprng_api_cs) {
        if (vlSelf->trng__DOT__csprng_api_we) {
            if ((0x10U == (0xffU & (IData)(vlSelf->address)))) {
                vlSelf->trng__DOT__csprng_inst__DOT__enable_we = 1U;
            }
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__num_blocks_high_new = 0U;
    if (vlSelf->trng__DOT__csprng_api_cs) {
        if (vlSelf->trng__DOT__csprng_api_we) {
            if ((0x10U != (0xffU & (IData)(vlSelf->address)))) {
                if ((0x40U != (0xffU & (IData)(vlSelf->address)))) {
                    if ((0x41U != (0xffU & (IData)(vlSelf->address)))) {
                        if ((0x42U == (0xffU & (IData)(vlSelf->address)))) {
                            vlSelf->trng__DOT__csprng_inst__DOT__num_blocks_high_new 
                                = vlSelf->write_data;
                        }
                    }
                }
            }
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__num_blocks_low_new = 0U;
    if (vlSelf->trng__DOT__csprng_api_cs) {
        if (vlSelf->trng__DOT__csprng_api_we) {
            if ((0x10U != (0xffU & (IData)(vlSelf->address)))) {
                if ((0x40U != (0xffU & (IData)(vlSelf->address)))) {
                    if ((0x41U == (0xffU & (IData)(vlSelf->address)))) {
                        vlSelf->trng__DOT__csprng_inst__DOT__num_blocks_low_new 
                            = vlSelf->write_data;
                    }
                }
            }
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__num_rounds_new = 0U;
    if (vlSelf->trng__DOT__csprng_api_cs) {
        if (vlSelf->trng__DOT__csprng_api_we) {
            if ((0x10U != (0xffU & (IData)(vlSelf->address)))) {
                if ((0x40U == (0xffU & (IData)(vlSelf->address)))) {
                    vlSelf->trng__DOT__csprng_inst__DOT__num_rounds_new 
                        = (0x1fU & vlSelf->write_data);
                }
            }
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__seed_new = 0U;
    if (vlSelf->trng__DOT__csprng_api_cs) {
        if (vlSelf->trng__DOT__csprng_api_we) {
            if ((0x10U == (0xffU & (IData)(vlSelf->address)))) {
                vlSelf->trng__DOT__csprng_inst__DOT__seed_new 
                    = (1U & (vlSelf->write_data >> 1U));
            }
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__enable_new = 0U;
    if (vlSelf->trng__DOT__csprng_api_cs) {
        if (vlSelf->trng__DOT__csprng_api_we) {
            if ((0x10U == (0xffU & (IData)(vlSelf->address)))) {
                vlSelf->trng__DOT__csprng_inst__DOT__enable_new 
                    = (1U & vlSelf->write_data);
            }
        }
    }
    trng__DOT__csprng_inst__DOT__tmp_read_data = 0U;
    if (vlSelf->trng__DOT__csprng_api_cs) {
        if ((1U & (~ (IData)(vlSelf->trng__DOT__csprng_api_we)))) {
            if ((0x10U == (0xffU & (IData)(vlSelf->address)))) {
                trng__DOT__csprng_inst__DOT__tmp_read_data 
                    = (((IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg) 
                        << 1U) | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg));
            } else if ((0x11U == (0xffU & (IData)(vlSelf->address)))) {
                trng__DOT__csprng_inst__DOT__tmp_read_data 
                    = (((IData)(vlSelf->trng__DOT__csprng_inst__DOT__ready_reg) 
                        << 1U) | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rnd_syn_reg));
            } else if ((0x20U == (0xffU & (IData)(vlSelf->address)))) {
                trng__DOT__csprng_inst__DOT__tmp_read_data 
                    = vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rnd_data_reg;
            } else if ((0x40U == (0xffU & (IData)(vlSelf->address)))) {
                trng__DOT__csprng_inst__DOT__tmp_read_data 
                    = vlSelf->trng__DOT__csprng_inst__DOT__num_rounds_reg;
            } else if ((0x41U == (0xffU & (IData)(vlSelf->address)))) {
                trng__DOT__csprng_inst__DOT__tmp_read_data 
                    = vlSelf->trng__DOT__csprng_inst__DOT__num_blocks_low_reg;
            } else if ((0x42U == (0xffU & (IData)(vlSelf->address)))) {
                trng__DOT__csprng_inst__DOT__tmp_read_data 
                    = vlSelf->trng__DOT__csprng_inst__DOT__num_blocks_high_reg;
            }
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_we = 0U;
    if (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_rst) {
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_we = 1U;
    }
    if (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_inc) {
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_we = 1U;
    }
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_new = 0U;
    if (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_rst) {
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_new = 0U;
    }
    if (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_inc) {
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_new 
            = (1U & ((IData)(1U) + (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg)));
    }
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__dr_ctr_we = 0U;
    if (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__dr_ctr_rst) {
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__dr_ctr_we = 1U;
    }
    if (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__dr_ctr_inc) {
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__dr_ctr_we = 1U;
    }
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__dr_ctr_new = 0U;
    if (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__dr_ctr_rst) {
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__dr_ctr_new = 0U;
    }
    if (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__dr_ctr_inc) {
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__dr_ctr_new 
            = (0xfU & ((IData)(1U) + (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__dr_ctr_reg)));
    }
    vlSelf->trng__DOT__csprng_inst__DOT__block_ctr_we = 0U;
    if (vlSelf->trng__DOT__csprng_inst__DOT__block_ctr_rst) {
        vlSelf->trng__DOT__csprng_inst__DOT__block_ctr_we = 1U;
    }
    if (trng__DOT__csprng_inst__DOT__block_ctr_inc) {
        vlSelf->trng__DOT__csprng_inst__DOT__block_ctr_we = 1U;
    }
    vlSelf->trng__DOT__csprng_inst__DOT__block_ctr_new = 0ULL;
    if (vlSelf->trng__DOT__csprng_inst__DOT__block_ctr_rst) {
        vlSelf->trng__DOT__csprng_inst__DOT__block_ctr_new = 0ULL;
    }
    if (trng__DOT__csprng_inst__DOT__block_ctr_inc) {
        vlSelf->trng__DOT__csprng_inst__DOT__block_ctr_new 
            = (1ULL + vlSelf->trng__DOT__csprng_inst__DOT__block_ctr_reg);
    }
    vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_we = 0U;
    if ((0U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
        if (vlSelf->trng__DOT__csprng_inst__DOT__more_seed_reg) {
            vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_we = 1U;
        }
    } else if ((1U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
        if (vlSelf->trng__DOT__discard_reg) {
            vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_we = 1U;
        } else if (trng__DOT__mixer_inst__DOT__block_done) {
            vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_we = 1U;
        }
    } else if ((2U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
        vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_we = 1U;
    } else if ((3U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
        if (vlSelf->trng__DOT__discard_reg) {
            vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_we = 1U;
        } else if (vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__ready_reg) {
            vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_we = 1U;
        }
    } else if ((4U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
        if (vlSelf->trng__DOT__discard_reg) {
            vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_we = 1U;
        } else if (vlSelf->trng__DOT__csprng_inst__DOT__seed_ack_reg) {
            vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_we = 1U;
        }
    } else if ((5U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
        if (vlSelf->trng__DOT__discard_reg) {
            vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_we = 1U;
        } else if (vlSelf->trng__DOT__csprng_inst__DOT__more_seed_reg) {
            vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_we = 1U;
        }
    }
    vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_new = 0U;
    if ((0U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
        if (vlSelf->trng__DOT__csprng_inst__DOT__more_seed_reg) {
            vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_new = 1U;
        }
    } else if ((1U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
        if (vlSelf->trng__DOT__discard_reg) {
            vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_new = 0U;
        } else if (trng__DOT__mixer_inst__DOT__block_done) {
            vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_new = 2U;
        }
    } else if ((2U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
        vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_new 
            = ((IData)(vlSelf->trng__DOT__discard_reg)
                ? 0U : 3U);
    } else if ((3U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
        if (vlSelf->trng__DOT__discard_reg) {
            vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_new = 0U;
        } else if (vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__ready_reg) {
            vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_new = 4U;
        }
    } else if ((4U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
        if (vlSelf->trng__DOT__discard_reg) {
            vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_new = 0U;
        } else if (vlSelf->trng__DOT__csprng_inst__DOT__seed_ack_reg) {
            vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_new = 5U;
        }
    } else if ((5U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg))) {
        if (vlSelf->trng__DOT__discard_reg) {
            vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_new = 0U;
        } else if (vlSelf->trng__DOT__csprng_inst__DOT__more_seed_reg) {
            vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_new = 1U;
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__more_seed_new = 0U;
    if (((((((((0U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)) 
               | (1U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
              | (2U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
             | (3U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
            | (4U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
           | (5U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
          | (6U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
         | (7U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)))) {
        if ((0U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            if (vlSelf->trng__DOT__csprng_inst__DOT__enable_reg) {
                if (vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__more_data_reg) {
                    vlSelf->trng__DOT__csprng_inst__DOT__more_seed_new = 1U;
                }
            }
        } else if ((1U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            if ((2U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                if ((1U & (~ ((~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg)) 
                              | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg))))) {
                    vlSelf->trng__DOT__csprng_inst__DOT__more_seed_new = 1U;
                }
            } else if ((3U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                if ((1U & (~ ((~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg)) 
                              | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg))))) {
                    if ((1U & (~ (IData)(vlSelf->trng__DOT__mixer_inst__DOT__seed_syn_reg)))) {
                        vlSelf->trng__DOT__csprng_inst__DOT__more_seed_new = 1U;
                    }
                }
            }
        }
    } else if ((8U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
        if ((1U & (~ ((~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg)) 
                      | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg))))) {
            if (vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__more_data_reg) {
                if (vlSelf->trng__DOT__csprng_inst__DOT__block_ctr_max) {
                    vlSelf->trng__DOT__csprng_inst__DOT__more_seed_new = 1U;
                }
            }
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_new = 0U;
    if (((((((((0U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)) 
               | (1U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
              | (2U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
             | (3U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
            | (4U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
           | (5U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
          | (6U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
         | (7U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)))) {
        if ((0U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            if (vlSelf->trng__DOT__csprng_inst__DOT__enable_reg) {
                if (vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__more_data_reg) {
                    vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_new = 1U;
                }
            } else {
                vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_new = 0xfU;
            }
        } else if ((1U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            if ((1U & ((~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg)) 
                       | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg)))) {
                vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_new = 0xfU;
            } else if (vlSelf->trng__DOT__mixer_inst__DOT__seed_syn_reg) {
                vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_new = 2U;
            }
        } else if ((2U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_new 
                = ((1U & ((~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg)) 
                          | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg)))
                    ? 0xfU : 3U);
        } else if ((3U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            if ((1U & ((~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg)) 
                       | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg)))) {
                vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_new = 0xfU;
            } else if (vlSelf->trng__DOT__mixer_inst__DOT__seed_syn_reg) {
                vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_new = 4U;
            }
        } else if ((4U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_new 
                = ((1U & ((~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg)) 
                          | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg)))
                    ? 0xfU : 5U);
        } else if ((5U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            if ((1U & ((~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg)) 
                       | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg)))) {
                vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_new = 0xfU;
            } else if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__ready_reg) {
                vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_new = 6U;
            }
        } else if ((6U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_new 
                = ((1U & ((~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg)) 
                          | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg)))
                    ? 0xfU : 7U);
        } else if ((1U & ((~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg)) 
                          | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg)))) {
            vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_new = 0xfU;
        } else if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__ready_reg) {
            vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_new = 8U;
        }
    } else if ((8U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
        if ((1U & ((~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg)) 
                   | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg)))) {
            vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_new = 0xfU;
        } else if (vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__more_data_reg) {
            vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_new 
                = ((IData)(vlSelf->trng__DOT__csprng_inst__DOT__block_ctr_max)
                    ? 1U : 6U);
        }
    } else if ((0xfU == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
        vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_new = 0U;
    }
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_new[0U] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_new[1U] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_new[2U] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_new[3U] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_new[4U] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_new[5U] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_new[6U] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_new[7U] = 0U;
    if (((((((((0U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)) 
               | (1U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
              | (2U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
             | (3U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
            | (4U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
           | (5U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
          | (6U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
         | (7U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)))) {
        if ((0U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            if ((1U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                if ((2U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                    if ((3U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                        if ((1U & (~ ((~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg)) 
                                      | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg))))) {
                            if (vlSelf->trng__DOT__mixer_inst__DOT__seed_syn_reg) {
                                vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_new[0U] 
                                    = trng__DOT__mixer_inst__DOT__hash_digest[0U];
                                vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_new[1U] 
                                    = trng__DOT__mixer_inst__DOT__hash_digest[1U];
                                vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_new[2U] 
                                    = trng__DOT__mixer_inst__DOT__hash_digest[2U];
                                vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_new[3U] 
                                    = trng__DOT__mixer_inst__DOT__hash_digest[3U];
                                vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_new[4U] 
                                    = trng__DOT__mixer_inst__DOT__hash_digest[4U];
                                vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_new[5U] 
                                    = trng__DOT__mixer_inst__DOT__hash_digest[5U];
                                vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_new[6U] 
                                    = trng__DOT__mixer_inst__DOT__hash_digest[6U];
                                vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_new[7U] 
                                    = trng__DOT__mixer_inst__DOT__hash_digest[7U];
                            }
                        }
                    }
                }
            }
        }
    } else if ((8U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
        if ((0xfU == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_new[0U] = 0U;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_new[1U] = 0U;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_new[2U] = 0U;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_new[3U] = 0U;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_new[4U] = 0U;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_new[5U] = 0U;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_new[6U] = 0U;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_new[7U] = 0U;
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_iv_new = 0ULL;
    if (((((((((0U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)) 
               | (1U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
              | (2U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
             | (3U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
            | (4U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
           | (5U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
          | (6U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
         | (7U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)))) {
        if ((0U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            if ((1U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                if ((2U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                    if ((3U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                        if ((1U & (~ ((~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg)) 
                                      | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg))))) {
                            if (vlSelf->trng__DOT__mixer_inst__DOT__seed_syn_reg) {
                                vlSelf->trng__DOT__csprng_inst__DOT__cipher_iv_new 
                                    = (((QData)((IData)(
                                                        trng__DOT__mixer_inst__DOT__hash_digest[9U])) 
                                        << 0x20U) | (QData)((IData)(
                                                                    trng__DOT__mixer_inst__DOT__hash_digest[8U])));
                            }
                        }
                    }
                }
            }
        }
    } else if ((8U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
        if ((0xfU == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_iv_new = 0ULL;
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_ctr_new = 0ULL;
    if (((((((((0U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)) 
               | (1U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
              | (2U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
             | (3U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
            | (4U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
           | (5U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
          | (6U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
         | (7U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)))) {
        if ((0U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            if ((1U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                if ((2U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                    if ((3U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                        if ((1U & (~ ((~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg)) 
                                      | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg))))) {
                            if (vlSelf->trng__DOT__mixer_inst__DOT__seed_syn_reg) {
                                vlSelf->trng__DOT__csprng_inst__DOT__cipher_ctr_new 
                                    = (((QData)((IData)(
                                                        trng__DOT__mixer_inst__DOT__hash_digest[0xbU])) 
                                        << 0x20U) | (QData)((IData)(
                                                                    trng__DOT__mixer_inst__DOT__hash_digest[0xaU])));
                            }
                        }
                    }
                }
            }
        }
    } else if ((8U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
        if ((0xfU == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_ctr_new = 0ULL;
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[0U] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[1U] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[2U] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[3U] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[4U] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[5U] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[6U] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[7U] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[8U] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[9U] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[0xaU] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[0xbU] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[0xcU] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[0xdU] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[0xeU] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[0xfU] = 0U;
    if (((((((((0U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)) 
               | (1U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
              | (2U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
             | (3U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
            | (4U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
           | (5U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
          | (6U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) 
         | (7U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg)))) {
        if ((0U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            if ((1U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
                if ((1U & (~ ((~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__enable_reg)) 
                              | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__seed_reg))))) {
                    if (vlSelf->trng__DOT__mixer_inst__DOT__seed_syn_reg) {
                        vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[0U] 
                            = trng__DOT__mixer_inst__DOT__hash_digest[0U];
                        vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[1U] 
                            = trng__DOT__mixer_inst__DOT__hash_digest[1U];
                        vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[2U] 
                            = trng__DOT__mixer_inst__DOT__hash_digest[2U];
                        vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[3U] 
                            = trng__DOT__mixer_inst__DOT__hash_digest[3U];
                        vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[4U] 
                            = trng__DOT__mixer_inst__DOT__hash_digest[4U];
                        vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[5U] 
                            = trng__DOT__mixer_inst__DOT__hash_digest[5U];
                        vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[6U] 
                            = trng__DOT__mixer_inst__DOT__hash_digest[6U];
                        vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[7U] 
                            = trng__DOT__mixer_inst__DOT__hash_digest[7U];
                        vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[8U] 
                            = trng__DOT__mixer_inst__DOT__hash_digest[8U];
                        vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[9U] 
                            = trng__DOT__mixer_inst__DOT__hash_digest[9U];
                        vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[0xaU] 
                            = trng__DOT__mixer_inst__DOT__hash_digest[0xaU];
                        vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[0xbU] 
                            = trng__DOT__mixer_inst__DOT__hash_digest[0xbU];
                        vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[0xcU] 
                            = trng__DOT__mixer_inst__DOT__hash_digest[0xcU];
                        vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[0xdU] 
                            = trng__DOT__mixer_inst__DOT__hash_digest[0xdU];
                        vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[0xeU] 
                            = trng__DOT__mixer_inst__DOT__hash_digest[0xeU];
                        vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[0xfU] 
                            = trng__DOT__mixer_inst__DOT__hash_digest[0xfU];
                    }
                }
            }
        }
    } else if ((8U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
        if ((0xfU == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg))) {
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[0U] = 0U;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[1U] = 0U;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[2U] = 0U;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[3U] = 0U;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[4U] = 0U;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[5U] = 0U;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[6U] = 0U;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[7U] = 0U;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[8U] = 0U;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[9U] = 0U;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[0xaU] = 0U;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[0xbU] = 0U;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[0xcU] = 0U;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[0xdU] = 0U;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[0xeU] = 0U;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new[0xfU] = 0U;
        }
    }
    vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_we = 0U;
    if ((0U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
        if (trng__DOT__mixer_inst__DOT__collect_block) {
            vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_we = 1U;
        }
    } else if ((1U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
        vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_we = 1U;
    } else if ((2U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
        vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_we = 1U;
    } else if ((3U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
        vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_we = 1U;
    } else if ((4U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
        vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_we = 1U;
    } else if ((5U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
        vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_we = 1U;
    } else if ((6U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
        vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_we = 1U;
    }
    vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_new = 0U;
    if ((0U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
        if (trng__DOT__mixer_inst__DOT__collect_block) {
            vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_new = 1U;
        }
    } else if ((1U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
        vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_new 
            = ((IData)(vlSelf->trng__DOT__mixer_inst__DOT__enable_reg)
                ? 3U : 0U);
    } else if ((2U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
        vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_new 
            = ((IData)(vlSelf->trng__DOT__mixer_inst__DOT__enable_reg)
                ? ((0x1fU == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__word_ctr_reg))
                    ? 0U : 3U) : 0U);
    } else if ((3U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
        vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_new 
            = ((IData)(vlSelf->trng__DOT__mixer_inst__DOT__enable_reg)
                ? 4U : 0U);
    } else if ((4U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
        vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_new 
            = ((IData)(vlSelf->trng__DOT__mixer_inst__DOT__enable_reg)
                ? ((0x1fU == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__word_ctr_reg))
                    ? 0U : 5U) : 0U);
    } else if ((5U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
        vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_new 
            = ((IData)(vlSelf->trng__DOT__mixer_inst__DOT__enable_reg)
                ? 6U : 0U);
    } else if ((6U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
        vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_new 
            = ((IData)(vlSelf->trng__DOT__mixer_inst__DOT__enable_reg)
                ? ((0x1fU == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__word_ctr_reg))
                    ? 0U : 1U) : 0U);
    }
    trng__DOT__mixer_inst__DOT__word_ctr_rst = 0U;
    if ((0U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
        if (trng__DOT__mixer_inst__DOT__collect_block) {
            trng__DOT__mixer_inst__DOT__word_ctr_rst = 1U;
        }
    } else if ((1U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
        if ((1U & (~ (IData)(vlSelf->trng__DOT__mixer_inst__DOT__enable_reg)))) {
            trng__DOT__mixer_inst__DOT__word_ctr_rst = 1U;
        }
    } else if ((2U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
        if ((1U & (~ (IData)(vlSelf->trng__DOT__mixer_inst__DOT__enable_reg)))) {
            trng__DOT__mixer_inst__DOT__word_ctr_rst = 1U;
        }
    } else if ((3U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
        if ((1U & (~ (IData)(vlSelf->trng__DOT__mixer_inst__DOT__enable_reg)))) {
            trng__DOT__mixer_inst__DOT__word_ctr_rst = 1U;
        }
    } else if ((4U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
        if ((1U & (~ (IData)(vlSelf->trng__DOT__mixer_inst__DOT__enable_reg)))) {
            trng__DOT__mixer_inst__DOT__word_ctr_rst = 1U;
        }
    } else if ((5U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
        if ((1U & (~ (IData)(vlSelf->trng__DOT__mixer_inst__DOT__enable_reg)))) {
            trng__DOT__mixer_inst__DOT__word_ctr_rst = 1U;
        }
    } else if ((6U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
        if ((1U & (~ (IData)(vlSelf->trng__DOT__mixer_inst__DOT__enable_reg)))) {
            trng__DOT__mixer_inst__DOT__word_ctr_rst = 1U;
        }
    }
    trng__DOT__mixer_inst__DOT__entropy_timeout_ctr_rst = 0U;
    if ((0U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
        if (trng__DOT__mixer_inst__DOT__collect_block) {
            trng__DOT__mixer_inst__DOT__entropy_timeout_ctr_rst = 1U;
        }
    } else if ((1U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg))) {
        if (vlSelf->trng__DOT__mixer_inst__DOT__enable_reg) {
            trng__DOT__mixer_inst__DOT__entropy_timeout_ctr_rst = 1U;
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state[0U] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
           [0U] + vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
           [0U]);
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state
        [0U];
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout 
        = ((__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
            << 0x18U) | ((0xff0000U & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                       << 8U)) | ((0xff00U 
                                                   & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                      >> 8U)) 
                                                  | (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                     >> 0x18U))));
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state[0U] 
        = __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state[1U] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
           [1U] + vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
           [1U]);
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state
        [1U];
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout 
        = ((__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
            << 0x18U) | ((0xff0000U & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                       << 8U)) | ((0xff00U 
                                                   & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                      >> 8U)) 
                                                  | (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                     >> 0x18U))));
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state[1U] 
        = __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state[2U] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
           [2U] + vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
           [2U]);
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state
        [2U];
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout 
        = ((__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
            << 0x18U) | ((0xff0000U & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                       << 8U)) | ((0xff00U 
                                                   & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                      >> 8U)) 
                                                  | (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                     >> 0x18U))));
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state[2U] 
        = __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state[3U] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
           [3U] + vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
           [3U]);
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state
        [3U];
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout 
        = ((__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
            << 0x18U) | ((0xff0000U & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                       << 8U)) | ((0xff00U 
                                                   & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                      >> 8U)) 
                                                  | (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                     >> 0x18U))));
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state[3U] 
        = __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state[4U] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
           [4U] + vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
           [4U]);
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state
        [4U];
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout 
        = ((__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
            << 0x18U) | ((0xff0000U & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                       << 8U)) | ((0xff00U 
                                                   & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                      >> 8U)) 
                                                  | (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                     >> 0x18U))));
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state[4U] 
        = __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state[5U] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
           [5U] + vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
           [5U]);
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state
        [5U];
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout 
        = ((__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
            << 0x18U) | ((0xff0000U & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                       << 8U)) | ((0xff00U 
                                                   & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                      >> 8U)) 
                                                  | (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                     >> 0x18U))));
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state[5U] 
        = __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state[6U] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
           [6U] + vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
           [6U]);
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state
        [6U];
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout 
        = ((__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
            << 0x18U) | ((0xff0000U & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                       << 8U)) | ((0xff00U 
                                                   & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                      >> 8U)) 
                                                  | (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                     >> 0x18U))));
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state[6U] 
        = __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state[7U] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
           [7U] + vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
           [7U]);
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state
        [7U];
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout 
        = ((__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
            << 0x18U) | ((0xff0000U & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                       << 8U)) | ((0xff00U 
                                                   & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                      >> 8U)) 
                                                  | (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                     >> 0x18U))));
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state[7U] 
        = __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state[8U] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
           [8U] + vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
           [8U]);
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state
        [8U];
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout 
        = ((__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
            << 0x18U) | ((0xff0000U & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                       << 8U)) | ((0xff00U 
                                                   & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                      >> 8U)) 
                                                  | (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                     >> 0x18U))));
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state[8U] 
        = __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state[9U] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
           [9U] + vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
           [9U]);
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state
        [9U];
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout 
        = ((__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
            << 0x18U) | ((0xff0000U & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                       << 8U)) | ((0xff00U 
                                                   & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                      >> 8U)) 
                                                  | (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                     >> 0x18U))));
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state[9U] 
        = __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state[0xaU] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
           [0xaU] + vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
           [0xaU]);
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state
        [0xaU];
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout 
        = ((__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
            << 0x18U) | ((0xff0000U & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                       << 8U)) | ((0xff00U 
                                                   & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                      >> 8U)) 
                                                  | (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                     >> 0x18U))));
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state[0xaU] 
        = __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state[0xbU] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
           [0xbU] + vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
           [0xbU]);
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state
        [0xbU];
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout 
        = ((__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
            << 0x18U) | ((0xff0000U & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                       << 8U)) | ((0xff00U 
                                                   & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                      >> 8U)) 
                                                  | (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                     >> 0x18U))));
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state[0xbU] 
        = __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state[0xcU] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
           [0xcU] + vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
           [0xcU]);
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state
        [0xcU];
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout 
        = ((__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
            << 0x18U) | ((0xff0000U & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                       << 8U)) | ((0xff00U 
                                                   & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                      >> 8U)) 
                                                  | (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                     >> 0x18U))));
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state[0xcU] 
        = __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state[0xdU] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
           [0xdU] + vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
           [0xdU]);
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state
        [0xdU];
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout 
        = ((__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
            << 0x18U) | ((0xff0000U & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                       << 8U)) | ((0xff00U 
                                                   & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                      >> 8U)) 
                                                  | (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                     >> 0x18U))));
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state[0xdU] 
        = __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state[0xeU] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
           [0xeU] + vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
           [0xeU]);
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state
        [0xeU];
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout 
        = ((__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
            << 0x18U) | ((0xff0000U & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                       << 8U)) | ((0xff00U 
                                                   & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                      >> 8U)) 
                                                  | (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                     >> 0x18U))));
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state[0xeU] 
        = __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state[0xfU] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
           [0xfU] + vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
           [0xfU]);
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state
        [0xfU];
    __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout 
        = ((__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
            << 0x18U) | ((0xff0000U & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                       << 8U)) | ((0xff00U 
                                                   & (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                      >> 8U)) 
                                                  | (__Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__op 
                                                     >> 0x18U))));
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state[0xfU] 
        = __Vfunc_trng__DOT__csprng_inst__DOT__cipher_inst__DOT__l2b__10__Vfuncout;
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[0U] 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state
        [0xfU];
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[1U] 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state
        [0xeU];
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[2U] 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state
        [0xdU];
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[3U] 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state
        [0xcU];
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[4U] 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state
        [0xbU];
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[5U] 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state
        [0xaU];
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[6U] 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state
        [9U];
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[7U] 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state
        [8U];
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[8U] 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state
        [7U];
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[9U] 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state
        [6U];
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[0xaU] 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state
        [5U];
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[0xbU] 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state
        [4U];
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[0xcU] 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state
        [3U];
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[0xdU] 
        = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state
        [2U];
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[0xeU] 
        = (IData)((((QData)((IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state
                                    [0U])) << 0x20U) 
                   | (QData)((IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state
                                     [1U]))));
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[0xfU] 
        = (IData)(((((QData)((IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state
                                     [0U])) << 0x20U) 
                    | (QData)((IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state
                                      [1U]))) >> 0x20U));
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_new[0U] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_reg[0U] 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[0U]);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_new[1U] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_reg[1U] 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[1U]);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_new[2U] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_reg[2U] 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[2U]);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_new[3U] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_reg[3U] 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[3U]);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_new[4U] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_reg[4U] 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[4U]);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_new[5U] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_reg[5U] 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[5U]);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_new[6U] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_reg[6U] 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[6U]);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_new[7U] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_reg[7U] 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[7U]);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_new[8U] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_reg[8U] 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[8U]);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_new[9U] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_reg[9U] 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[9U]);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_new[0xaU] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_reg[0xaU] 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[0xaU]);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_new[0xbU] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_reg[0xbU] 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[0xbU]);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_new[0xcU] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_reg[0xcU] 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[0xcU]);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_new[0xdU] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_reg[0xdU] 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[0xdU]);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_new[0xeU] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_reg[0xeU] 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[0xeU]);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_new[0xfU] 
        = (vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_reg[0xfU] 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__block_state[0xfU]);
    __Vtableidx1 = (((IData)(vlSelf->trng__DOT__mixer_inst__DOT__word_ctr_reg) 
                     << 1U) | (IData)(trng__DOT__mixer_inst__DOT__update_block));
    vlSelf->trng__DOT__mixer_inst__DOT__block00_we 
        = Vtrng__ConstPool__TABLE_d95110ea_0[__Vtableidx1];
    vlSelf->trng__DOT__mixer_inst__DOT__block01_we 
        = Vtrng__ConstPool__TABLE_feca7fb7_0[__Vtableidx1];
    vlSelf->trng__DOT__mixer_inst__DOT__block02_we 
        = Vtrng__ConstPool__TABLE_6b41a0b1_0[__Vtableidx1];
    vlSelf->trng__DOT__mixer_inst__DOT__block03_we 
        = Vtrng__ConstPool__TABLE_789506b8_0[__Vtableidx1];
    vlSelf->trng__DOT__mixer_inst__DOT__block04_we 
        = Vtrng__ConstPool__TABLE_8374a27f_0[__Vtableidx1];
    vlSelf->trng__DOT__mixer_inst__DOT__block05_we 
        = Vtrng__ConstPool__TABLE_e998598e_0[__Vtableidx1];
    vlSelf->trng__DOT__mixer_inst__DOT__block06_we 
        = Vtrng__ConstPool__TABLE_e61e15f2_0[__Vtableidx1];
    vlSelf->trng__DOT__mixer_inst__DOT__block07_we 
        = Vtrng__ConstPool__TABLE_d148b0cd_0[__Vtableidx1];
    vlSelf->trng__DOT__mixer_inst__DOT__block08_we 
        = Vtrng__ConstPool__TABLE_bf7c545a_0[__Vtableidx1];
    vlSelf->trng__DOT__mixer_inst__DOT__block09_we 
        = Vtrng__ConstPool__TABLE_e97e2919_0[__Vtableidx1];
    vlSelf->trng__DOT__mixer_inst__DOT__block10_we 
        = Vtrng__ConstPool__TABLE_201f54b4_0[__Vtableidx1];
    vlSelf->trng__DOT__mixer_inst__DOT__block11_we 
        = Vtrng__ConstPool__TABLE_cf3f3a95_0[__Vtableidx1];
    vlSelf->trng__DOT__mixer_inst__DOT__block12_we 
        = Vtrng__ConstPool__TABLE_407e6a90_0[__Vtableidx1];
    vlSelf->trng__DOT__mixer_inst__DOT__block13_we 
        = Vtrng__ConstPool__TABLE_91a04253_0[__Vtableidx1];
    vlSelf->trng__DOT__mixer_inst__DOT__block14_we 
        = Vtrng__ConstPool__TABLE_abf15944_0[__Vtableidx1];
    vlSelf->trng__DOT__mixer_inst__DOT__block15_we 
        = Vtrng__ConstPool__TABLE_73b8f5c2_0[__Vtableidx1];
    vlSelf->trng__DOT__mixer_inst__DOT__block16_we 
        = Vtrng__ConstPool__TABLE_de2a2e64_0[__Vtableidx1];
    vlSelf->trng__DOT__mixer_inst__DOT__block17_we 
        = Vtrng__ConstPool__TABLE_7d24de6f_0[__Vtableidx1];
    vlSelf->trng__DOT__mixer_inst__DOT__block18_we 
        = Vtrng__ConstPool__TABLE_5820b2b1_0[__Vtableidx1];
    vlSelf->trng__DOT__mixer_inst__DOT__block19_we 
        = Vtrng__ConstPool__TABLE_cdcc9215_0[__Vtableidx1];
    vlSelf->trng__DOT__mixer_inst__DOT__block20_we 
        = Vtrng__ConstPool__TABLE_1a3c4a61_0[__Vtableidx1];
    vlSelf->trng__DOT__mixer_inst__DOT__block21_we 
        = Vtrng__ConstPool__TABLE_86eb9332_0[__Vtableidx1];
    vlSelf->trng__DOT__mixer_inst__DOT__block22_we 
        = Vtrng__ConstPool__TABLE_1bbcd680_0[__Vtableidx1];
    vlSelf->trng__DOT__mixer_inst__DOT__block23_we 
        = Vtrng__ConstPool__TABLE_3fe4f469_0[__Vtableidx1];
    vlSelf->trng__DOT__mixer_inst__DOT__block24_we 
        = Vtrng__ConstPool__TABLE_bd23b2e8_0[__Vtableidx1];
    vlSelf->trng__DOT__mixer_inst__DOT__block25_we 
        = Vtrng__ConstPool__TABLE_c8c5ee83_0[__Vtableidx1];
    vlSelf->trng__DOT__mixer_inst__DOT__block26_we 
        = Vtrng__ConstPool__TABLE_f30c04eb_0[__Vtableidx1];
    vlSelf->trng__DOT__mixer_inst__DOT__block27_we 
        = Vtrng__ConstPool__TABLE_ca197355_0[__Vtableidx1];
    vlSelf->trng__DOT__mixer_inst__DOT__block28_we 
        = Vtrng__ConstPool__TABLE_1d9b73b0_0[__Vtableidx1];
    vlSelf->trng__DOT__mixer_inst__DOT__block29_we 
        = Vtrng__ConstPool__TABLE_ca2b747b_0[__Vtableidx1];
    vlSelf->trng__DOT__mixer_inst__DOT__block30_we 
        = Vtrng__ConstPool__TABLE_9fb7ce7f_0[__Vtableidx1];
    vlSelf->trng__DOT__mixer_inst__DOT__block31_we 
        = Vtrng__ConstPool__TABLE_cb45fd05_0[__Vtableidx1];
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__ready_we = 0U;
    if ((4U & (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg))) {
        if ((1U & (~ ((IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg) 
                      >> 1U)))) {
            if ((1U & (~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg)))) {
                if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_init) {
                    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__ready_we = 1U;
                } else if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_next) {
                    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__ready_we = 1U;
                }
            }
        }
    } else if ((2U & (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg))) {
        if ((1U & (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg))) {
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__ready_we = 1U;
        }
    } else if ((1U & (~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg)))) {
        if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_init) {
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__ready_we = 1U;
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__ready_new = 0U;
    if ((4U & (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg))) {
        if ((1U & (~ ((IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg) 
                      >> 1U)))) {
            if ((1U & (~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg)))) {
                if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_init) {
                    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__ready_new = 0U;
                } else if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_next) {
                    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__ready_new = 0U;
                }
            }
        }
    } else if ((2U & (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg))) {
        if ((1U & (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg))) {
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__ready_new = 1U;
        }
    } else if ((1U & (~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg)))) {
        if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_init) {
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__ready_new = 0U;
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_new = 0U;
    if ((4U & (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg))) {
        if ((1U & (~ ((IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg) 
                      >> 1U)))) {
            if ((1U & (~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg)))) {
                if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_init) {
                    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_new = 1U;
                } else if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_next) {
                    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_new = 1U;
                }
            }
        }
    } else if ((2U & (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg))) {
        if ((1U & (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg))) {
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_new = 4U;
        } else if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
            if (((IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__dr_ctr_reg) 
                 == ((0xfU & ((IData)(vlSelf->trng__DOT__csprng_inst__DOT__num_rounds_reg) 
                              >> 1U)) - (IData)(1U)))) {
                vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_new = 3U;
            }
        }
    } else if ((1U & (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg))) {
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_new = 2U;
    } else if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_init) {
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_new = 1U;
    }
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_we = 0U;
    if ((4U & (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg))) {
        if ((1U & (~ ((IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg) 
                      >> 1U)))) {
            if ((1U & (~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg)))) {
                if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_init) {
                    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_we = 1U;
                } else if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_next) {
                    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_we = 1U;
                }
            }
        }
    } else if ((2U & (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg))) {
        if ((1U & (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg))) {
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_we = 1U;
        } else if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
            if (((IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__dr_ctr_reg) 
                 == ((0xfU & ((IData)(vlSelf->trng__DOT__csprng_inst__DOT__num_rounds_reg) 
                              >> 1U)) - (IData)(1U)))) {
                vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_we = 1U;
            }
        }
    } else if ((1U & (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg))) {
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_we = 1U;
    } else if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_init) {
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_we = 1U;
    }
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block_ctr_set = 0U;
    if ((4U & (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg))) {
        if ((1U & (~ ((IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg) 
                      >> 1U)))) {
            if ((1U & (~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg)))) {
                if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_init) {
                    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block_ctr_set = 1U;
                }
            }
        }
    } else if ((1U & (~ ((IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg) 
                         >> 1U)))) {
        if ((1U & (~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg)))) {
            if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_init) {
                trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block_ctr_set = 1U;
            }
        }
    }
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block_ctr_inc = 0U;
    if ((4U & (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg))) {
        if ((1U & (~ ((IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg) 
                      >> 1U)))) {
            if ((1U & (~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg)))) {
                if ((1U & (~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_init)))) {
                    if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_next) {
                        trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block_ctr_inc = 1U;
                    }
                }
            }
        }
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__ready_new = 0U;
    if ((0U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_reg))) {
        if (trng__DOT__mixer_inst__DOT__hash_init) {
            vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__ready_new = 0U;
        }
        if (trng__DOT__mixer_inst__DOT__hash_next) {
            vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__ready_new = 0U;
        }
    } else if ((1U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_reg))) {
        if ((2U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_reg))) {
            vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__ready_new = 1U;
        }
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__ready_we = 0U;
    if ((0U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_reg))) {
        if (trng__DOT__mixer_inst__DOT__hash_init) {
            vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__ready_we = 1U;
        }
        if (trng__DOT__mixer_inst__DOT__hash_next) {
            vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__ready_we = 1U;
        }
    } else if ((1U != (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_reg))) {
        if ((2U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_reg))) {
            vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__ready_we = 1U;
        }
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_new = 0U;
    if ((0U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_reg))) {
        if (trng__DOT__mixer_inst__DOT__hash_init) {
            vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_new = 1U;
        }
        if (trng__DOT__mixer_inst__DOT__hash_next) {
            vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_new = 1U;
        }
    } else if ((1U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_reg))) {
        if ((0x4fU == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__round_ctr_reg))) {
            vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_new = 2U;
        }
    } else if ((2U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_reg))) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_new = 0U;
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_we = 0U;
    if ((0U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_reg))) {
        if (trng__DOT__mixer_inst__DOT__hash_init) {
            vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_we = 1U;
        }
        if (trng__DOT__mixer_inst__DOT__hash_next) {
            vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_we = 1U;
        }
    } else if ((1U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_reg))) {
        if ((0x4fU == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__round_ctr_reg))) {
            vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_we = 1U;
        }
    } else if ((2U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_reg))) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_we = 1U;
    }
    trng__DOT__mixer_inst__DOT__hash_inst__DOT__round_ctr_rst = 0U;
    if ((0U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_reg))) {
        if (trng__DOT__mixer_inst__DOT__hash_init) {
            trng__DOT__mixer_inst__DOT__hash_inst__DOT__round_ctr_rst = 1U;
        }
        if (trng__DOT__mixer_inst__DOT__hash_next) {
            trng__DOT__mixer_inst__DOT__hash_inst__DOT__round_ctr_rst = 1U;
        }
    }
    trng__DOT__mixer_inst__DOT__hash_inst__DOT__digest_init = 0U;
    if ((0U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_reg))) {
        if (trng__DOT__mixer_inst__DOT__hash_init) {
            trng__DOT__mixer_inst__DOT__hash_inst__DOT__digest_init = 1U;
        }
    }
    trng__DOT__mixer_inst__DOT__hash_inst__DOT__first_block = 0U;
    if ((0U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_reg))) {
        if (trng__DOT__mixer_inst__DOT__hash_init) {
            trng__DOT__mixer_inst__DOT__hash_inst__DOT__first_block = 1U;
        }
    }
    trng__DOT__mixer_inst__DOT__hash_inst__DOT__state_init = 0U;
    if ((0U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_reg))) {
        if (trng__DOT__mixer_inst__DOT__hash_init) {
            trng__DOT__mixer_inst__DOT__hash_inst__DOT__state_init = 1U;
        }
        if (trng__DOT__mixer_inst__DOT__hash_next) {
            trng__DOT__mixer_inst__DOT__hash_inst__DOT__state_init = 1U;
        }
    }
    trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_init = 0U;
    if ((0U == (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_reg))) {
        if (trng__DOT__mixer_inst__DOT__hash_init) {
            trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_init = 1U;
        }
        if (trng__DOT__mixer_inst__DOT__hash_next) {
            trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_init = 1U;
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_we = 0U;
    if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state) {
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_we = 1U;
    }
    if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__update_state) {
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_we = 1U;
    }
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2_a = 0U;
    if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__update_state) {
        if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
            if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
                trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2_a 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                    [2U];
            }
        } else {
            trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2_a 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                [2U];
        }
    }
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1_d = 0U;
    if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__update_state) {
        if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
            if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
                trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1_d 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                    [0xcU];
            }
        } else {
            trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1_d 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                [0xdU];
        }
    }
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1_c = 0U;
    if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__update_state) {
        if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
            if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
                trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1_c 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                    [0xbU];
            }
        } else {
            trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1_c 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                [9U];
        }
    }
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1_b = 0U;
    if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__update_state) {
        if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
            if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
                trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1_b 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                    [6U];
            }
        } else {
            trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1_b 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                [5U];
        }
    }
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1_a = 0U;
    if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__update_state) {
        if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
            if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
                trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1_a 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                    [1U];
            }
        } else {
            trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1_a 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                [1U];
        }
    }
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0_d = 0U;
    if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__update_state) {
        if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
            if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
                trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0_d 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                    [0xfU];
            }
        } else {
            trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0_d 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                [0xcU];
        }
    }
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0_c = 0U;
    if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__update_state) {
        if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
            if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
                trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0_c 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                    [0xaU];
            }
        } else {
            trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0_c 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                [8U];
        }
    }
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0_b = 0U;
    if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__update_state) {
        if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
            if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
                trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0_b 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                    [5U];
            }
        } else {
            trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0_b 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                [4U];
        }
    }
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0_a = 0U;
    if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__update_state) {
        if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
            if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
                trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0_a 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                    [0U];
            }
        } else {
            trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0_a 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                [0U];
        }
    }
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2_b = 0U;
    if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__update_state) {
        if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
            if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
                trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2_b 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                    [7U];
            }
        } else {
            trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2_b 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                [6U];
        }
    }
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2_c = 0U;
    if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__update_state) {
        if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
            if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
                trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2_c 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                    [8U];
            }
        } else {
            trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2_c 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                [0xaU];
        }
    }
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2_d = 0U;
    if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__update_state) {
        if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
            if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
                trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2_d 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                    [0xdU];
            }
        } else {
            trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2_d 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                [0xeU];
        }
    }
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3_a = 0U;
    if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__update_state) {
        if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
            if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
                trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3_a 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                    [3U];
            }
        } else {
            trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3_a 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                [3U];
        }
    }
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3_b = 0U;
    if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__update_state) {
        if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
            if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
                trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3_b 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                    [4U];
            }
        } else {
            trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3_b 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                [7U];
        }
    }
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3_c = 0U;
    if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__update_state) {
        if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
            if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
                trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3_c 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                    [9U];
            }
        } else {
            trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3_c 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                [0xbU];
        }
    }
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3_d = 0U;
    if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__update_state) {
        if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
            if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
                trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3_d 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                    [0xeU];
            }
        } else {
            trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3_d 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg
                [0xfU];
        }
    }
    trng__DOT__tmp_error = 0U;
    if ((0x800U & (IData)(vlSelf->address))) {
        if ((1U & (~ ((IData)(vlSelf->address) >> 0xaU)))) {
            if ((0x200U & (IData)(vlSelf->address))) {
                trng__DOT__tmp_error = ((0x100U & (IData)(vlSelf->address))
                                         ? (IData)(trng__DOT__csprng_inst__DOT__tmp_error)
                                         : (IData)(trng__DOT__mixer_inst__DOT__tmp_error));
            }
        }
    } else if ((0x400U & (IData)(vlSelf->address))) {
        if ((0x200U & (IData)(vlSelf->address))) {
            if ((1U & (~ ((IData)(vlSelf->address) 
                          >> 8U)))) {
                trng__DOT__tmp_error = 0U;
            }
        } else if ((0x100U & (IData)(vlSelf->address))) {
            trng__DOT__tmp_error = 0U;
        }
    } else if ((1U & (~ ((IData)(vlSelf->address) >> 9U)))) {
        if ((1U & (~ ((IData)(vlSelf->address) >> 8U)))) {
            trng__DOT__tmp_error = trng__DOT__trng_api_error;
        }
    }
    trng__DOT__csprng_inst__DOT__muxed_rnd_ack = ((IData)(vlSelf->trng__DOT__csprng_inst__DOT__rnd_ack) 
                                                  | (IData)(trng__DOT__csprng_debug_update));
    trng__DOT__tmp_read_data = 0U;
    if ((0x800U & (IData)(vlSelf->address))) {
        if ((1U & (~ ((IData)(vlSelf->address) >> 0xaU)))) {
            if ((0x200U & (IData)(vlSelf->address))) {
                trng__DOT__tmp_read_data = ((0x100U 
                                             & (IData)(vlSelf->address))
                                             ? trng__DOT__csprng_inst__DOT__tmp_read_data
                                             : trng__DOT__mixer_inst__DOT__tmp_read_data);
            }
        }
    } else if ((0x400U & (IData)(vlSelf->address))) {
        if ((0x200U & (IData)(vlSelf->address))) {
            if ((1U & (~ ((IData)(vlSelf->address) 
                          >> 8U)))) {
                trng__DOT__tmp_read_data = 0U;
            }
        } else if ((0x100U & (IData)(vlSelf->address))) {
            trng__DOT__tmp_read_data = 0U;
        }
    } else if ((1U & (~ ((IData)(vlSelf->address) >> 9U)))) {
        if ((1U & (~ ((IData)(vlSelf->address) >> 8U)))) {
            trng__DOT__tmp_read_data = trng__DOT__trng_api_read_data;
        }
    }
    vlSelf->trng__DOT__mixer_inst__DOT__word_ctr_we = 0U;
    if (trng__DOT__mixer_inst__DOT__word_ctr_rst) {
        vlSelf->trng__DOT__mixer_inst__DOT__word_ctr_we = 1U;
    }
    if (trng__DOT__mixer_inst__DOT__word_ctr_inc) {
        vlSelf->trng__DOT__mixer_inst__DOT__word_ctr_we = 1U;
    }
    vlSelf->trng__DOT__mixer_inst__DOT__word_ctr_new = 0U;
    if (trng__DOT__mixer_inst__DOT__word_ctr_rst) {
        vlSelf->trng__DOT__mixer_inst__DOT__word_ctr_new = 0U;
    }
    if (trng__DOT__mixer_inst__DOT__word_ctr_inc) {
        vlSelf->trng__DOT__mixer_inst__DOT__word_ctr_new 
            = (0x1fU & ((IData)(1U) + (IData)(vlSelf->trng__DOT__mixer_inst__DOT__word_ctr_reg)));
    }
    vlSelf->trng__DOT__mixer_inst__DOT__entropy_timeout_ctr_new = 0U;
    if ((vlSelf->trng__DOT__mixer_inst__DOT__entropy_timeout_ctr_reg 
         == vlSelf->trng__DOT__mixer_inst__DOT__entropy_timeout_reg)) {
        vlSelf->trng__DOT__mixer_inst__DOT__entropy_timeout_ctr_new = 0U;
    }
    if (trng__DOT__mixer_inst__DOT__entropy_timeout_ctr_rst) {
        vlSelf->trng__DOT__mixer_inst__DOT__entropy_timeout_ctr_new = 0U;
    }
    vlSelf->trng__DOT__mixer_inst__DOT__entropy_timeout_ctr_we = 0U;
    if ((vlSelf->trng__DOT__mixer_inst__DOT__entropy_timeout_ctr_reg 
         == vlSelf->trng__DOT__mixer_inst__DOT__entropy_timeout_reg)) {
        vlSelf->trng__DOT__mixer_inst__DOT__entropy_timeout_ctr_we = 1U;
    }
    if (trng__DOT__mixer_inst__DOT__entropy_timeout_ctr_rst) {
        vlSelf->trng__DOT__mixer_inst__DOT__entropy_timeout_ctr_we = 1U;
    }
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block0_ctr_we = 0U;
    if (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block_ctr_set) {
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block0_ctr_we = 1U;
    }
    if (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block_ctr_inc) {
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block0_ctr_we = 1U;
    }
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block1_ctr_we = 0U;
    if (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block_ctr_set) {
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block1_ctr_we = 1U;
    }
    if (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block_ctr_inc) {
        if ((0xffffffffU == vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block0_ctr_reg)) {
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block1_ctr_we = 1U;
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block0_ctr_new = 0U;
    if (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block_ctr_set) {
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block0_ctr_new 
            = (IData)(vlSelf->trng__DOT__csprng_inst__DOT__cipher_ctr_reg);
    }
    if (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block_ctr_inc) {
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block0_ctr_new 
            = ((IData)(1U) + vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block0_ctr_reg);
    }
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block1_ctr_new = 0U;
    if (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block_ctr_set) {
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block1_ctr_new 
            = (IData)((vlSelf->trng__DOT__csprng_inst__DOT__cipher_ctr_reg 
                       >> 0x20U));
    }
    if (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block_ctr_inc) {
        if ((0xffffffffU == vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block0_ctr_reg)) {
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block1_ctr_new 
                = ((IData)(1U) + vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block1_ctr_reg);
        }
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__round_ctr_we = 0U;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__round_ctr_rst) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__round_ctr_we = 1U;
    }
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__round_ctr_inc) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__round_ctr_we = 1U;
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__round_ctr_new = 0U;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__round_ctr_rst) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__round_ctr_new = 0U;
    }
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__round_ctr_inc) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__round_ctr_new 
            = (0x7fU & ((IData)(1U) + (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__round_ctr_reg)));
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H_we = 0U;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__digest_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H_we = 1U;
    }
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__digest_update) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H_we = 1U;
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H0_new = 0ULL;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__digest_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H0_new = 0x6a09e667f3bcc908ULL;
    }
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__digest_update) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H0_new 
            = (vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H0_reg 
               + vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__a_reg);
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H1_new = 0ULL;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__digest_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H1_new = 0xbb67ae8584caa73bULL;
    }
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__digest_update) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H1_new 
            = (vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H1_reg 
               + vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__b_reg);
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H2_new = 0ULL;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__digest_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H2_new = 0x3c6ef372fe94f82bULL;
    }
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__digest_update) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H2_new 
            = (vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H2_reg 
               + vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__c_reg);
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H3_new = 0ULL;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__digest_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H3_new = 0xa54ff53a5f1d36f1ULL;
    }
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__digest_update) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H3_new 
            = (vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H3_reg 
               + vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__d_reg);
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H4_new = 0ULL;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__digest_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H4_new = 0x510e527fade682d1ULL;
    }
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__digest_update) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H4_new 
            = (vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H4_reg 
               + vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__e_reg);
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H5_new = 0ULL;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__digest_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H5_new = 0x9b05688c2b3e6c1fULL;
    }
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__digest_update) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H5_new 
            = (vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H5_reg 
               + vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__f_reg);
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H6_new = 0ULL;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__digest_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H6_new = 0x1f83d9abfb41bd6bULL;
    }
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__digest_update) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H6_new 
            = (vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H6_reg 
               + vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__g_reg);
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H7_new = 0ULL;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__digest_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H7_new = 0x5be0cd19137e2179ULL;
    }
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__digest_update) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H7_new 
            = (vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H7_reg 
               + vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__h_reg);
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__a_h_we = 0U;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__state_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__a_h_we = 1U;
    }
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__state_update) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__a_h_we = 1U;
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__b_new = 0ULL;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__state_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__b_new 
            = ((IData)(trng__DOT__mixer_inst__DOT__hash_inst__DOT__first_block)
                ? 0xbb67ae8584caa73bULL : vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H1_reg);
    }
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__state_update) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__b_new 
            = vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__a_reg;
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__c_new = 0ULL;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__state_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__c_new 
            = ((IData)(trng__DOT__mixer_inst__DOT__hash_inst__DOT__first_block)
                ? 0x3c6ef372fe94f82bULL : vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H2_reg);
    }
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__state_update) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__c_new 
            = vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__b_reg;
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__d_new = 0ULL;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__state_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__d_new 
            = ((IData)(trng__DOT__mixer_inst__DOT__hash_inst__DOT__first_block)
                ? 0xa54ff53a5f1d36f1ULL : vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H3_reg);
    }
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__state_update) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__d_new 
            = vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__c_reg;
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__f_new = 0ULL;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__state_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__f_new 
            = ((IData)(trng__DOT__mixer_inst__DOT__hash_inst__DOT__first_block)
                ? 0x9b05688c2b3e6c1fULL : vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H5_reg);
    }
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__state_update) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__f_new 
            = vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__e_reg;
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__g_new = 0ULL;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__state_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__g_new 
            = ((IData)(trng__DOT__mixer_inst__DOT__hash_inst__DOT__first_block)
                ? 0x1f83d9abfb41bd6bULL : vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H6_reg);
    }
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__state_update) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__g_new 
            = vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__f_reg;
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__h_new = 0ULL;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__state_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__h_new 
            = ((IData)(trng__DOT__mixer_inst__DOT__hash_inst__DOT__first_block)
                ? 0x5be0cd19137e2179ULL : vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H7_reg);
    }
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__state_update) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__h_new 
            = vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__g_reg;
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_we = 0U;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_we = 1U;
    }
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_next) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_we = 1U;
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem_we = 0U;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem_we = 1U;
    }
    if (((IData)(trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_next) 
         & (0xfU < (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_reg)))) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem_we = 1U;
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_new = 0U;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_new = 0U;
    }
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_next) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_new 
            = (0x7fU & ((IData)(1U) + (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_reg)));
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem12_new = 0ULL;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem12_new 
            = (((QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[7U])) 
                << 0x20U) | (QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[6U])));
    }
    if (((IData)(trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_next) 
         & (0xfU < (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_reg)))) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem12_new 
            = vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem
            [0xdU];
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem11_new = 0ULL;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem11_new 
            = (((QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[9U])) 
                << 0x20U) | (QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[8U])));
    }
    if (((IData)(trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_next) 
         & (0xfU < (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_reg)))) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem11_new 
            = vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem
            [0xcU];
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem10_new = 0ULL;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem10_new 
            = (((QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[0xbU])) 
                << 0x20U) | (QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[0xaU])));
    }
    if (((IData)(trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_next) 
         & (0xfU < (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_reg)))) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem10_new 
            = vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem
            [0xbU];
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem09_new = 0ULL;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem09_new 
            = (((QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[0xdU])) 
                << 0x20U) | (QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[0xcU])));
    }
    if (((IData)(trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_next) 
         & (0xfU < (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_reg)))) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem09_new 
            = vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem
            [0xaU];
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem08_new = 0ULL;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem08_new 
            = (((QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[0xfU])) 
                << 0x20U) | (QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[0xeU])));
    }
    if (((IData)(trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_next) 
         & (0xfU < (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_reg)))) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem08_new 
            = vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem
            [9U];
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem07_new = 0ULL;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem07_new 
            = (((QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[0x11U])) 
                << 0x20U) | (QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[0x10U])));
    }
    if (((IData)(trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_next) 
         & (0xfU < (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_reg)))) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem07_new 
            = vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem
            [8U];
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem06_new = 0ULL;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem06_new 
            = (((QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[0x13U])) 
                << 0x20U) | (QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[0x12U])));
    }
    if (((IData)(trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_next) 
         & (0xfU < (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_reg)))) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem06_new 
            = vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem
            [7U];
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem05_new = 0ULL;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem05_new 
            = (((QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[0x15U])) 
                << 0x20U) | (QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[0x14U])));
    }
    if (((IData)(trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_next) 
         & (0xfU < (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_reg)))) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem05_new 
            = vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem
            [6U];
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem04_new = 0ULL;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem04_new 
            = (((QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[0x17U])) 
                << 0x20U) | (QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[0x16U])));
    }
    if (((IData)(trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_next) 
         & (0xfU < (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_reg)))) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem04_new 
            = vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem
            [5U];
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem03_new = 0ULL;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem03_new 
            = (((QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[0x19U])) 
                << 0x20U) | (QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[0x18U])));
    }
    if (((IData)(trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_next) 
         & (0xfU < (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_reg)))) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem03_new 
            = vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem
            [4U];
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem02_new = 0ULL;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem02_new 
            = (((QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[0x1bU])) 
                << 0x20U) | (QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[0x1aU])));
    }
    if (((IData)(trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_next) 
         & (0xfU < (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_reg)))) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem02_new 
            = vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem
            [3U];
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem01_new = 0ULL;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem01_new 
            = (((QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[0x1dU])) 
                << 0x20U) | (QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[0x1cU])));
    }
    if (((IData)(trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_next) 
         & (0xfU < (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_reg)))) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem01_new 
            = vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem
            [2U];
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem00_new = 0ULL;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem00_new 
            = (((QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[0x1fU])) 
                << 0x20U) | (QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[0x1eU])));
    }
    if (((IData)(trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_next) 
         & (0xfU < (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_reg)))) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem00_new 
            = vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem
            [1U];
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem13_new = 0ULL;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem13_new 
            = (((QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[5U])) 
                << 0x20U) | (QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[4U])));
    }
    if (((IData)(trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_next) 
         & (0xfU < (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_reg)))) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem13_new 
            = vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem
            [0xeU];
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem14_new = 0ULL;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem14_new 
            = (((QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[3U])) 
                << 0x20U) | (QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[2U])));
    }
    if (((IData)(trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_next) 
         & (0xfU < (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_reg)))) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem14_new 
            = vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem
            [0xfU];
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem15_new = 0ULL;
    trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem_update_logic__DOT__w_0 
        = vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem
        [0U];
    trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem_update_logic__DOT__w_1 
        = vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem
        [1U];
    trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem_update_logic__DOT__w_9 
        = vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem
        [9U];
    trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem_update_logic__DOT__w_14 
        = vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem
        [0xeU];
    trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem_update_logic__DOT__d0 
        = (((((QData)((IData)((1U & (IData)(trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem_update_logic__DOT__w_1)))) 
              << 0x3fU) | (trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem_update_logic__DOT__w_1 
                           >> 1U)) ^ (((QData)((IData)(
                                                       (0xffU 
                                                        & (IData)(trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem_update_logic__DOT__w_1)))) 
                                       << 0x38U) | 
                                      (trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem_update_logic__DOT__w_1 
                                       >> 8U))) ^ (trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem_update_logic__DOT__w_1 
                                                   >> 7U));
    trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem_update_logic__DOT__d1 
        = (((((QData)((IData)((0x7ffffU & (IData)(trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem_update_logic__DOT__w_14)))) 
              << 0x2dU) | (trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem_update_logic__DOT__w_14 
                           >> 0x13U)) ^ ((trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem_update_logic__DOT__w_14 
                                          << 3U) | (QData)((IData)(
                                                                   (7U 
                                                                    & (IData)(
                                                                              (trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem_update_logic__DOT__w_14 
                                                                               >> 0x3dU))))))) 
           ^ (trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem_update_logic__DOT__w_14 
              >> 6U));
    trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_new 
        = (((trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem_update_logic__DOT__w_0 
             + trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem_update_logic__DOT__d0) 
            + trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem_update_logic__DOT__w_9) 
           + trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem_update_logic__DOT__d1);
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem15_new 
            = (((QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[1U])) 
                << 0x20U) | (QData)((IData)(trng__DOT__mixer_inst__DOT__hash_block[0U])));
    }
    if (((IData)(trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_next) 
         & (0xfU < (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_reg)))) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem15_new 
            = trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_new;
    }
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__a0 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1_a 
           + trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1_b);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__d0 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1_d 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__a0);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__d1 
        = ((trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__d0 
            << 0x10U) | (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__d0 
                         >> 0x10U));
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__c0 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1_c 
           + trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__d1);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__b0 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1_b 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__c0);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__b1 
        = ((trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__b0 
            << 0xcU) | (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__b0 
                        >> 0x14U));
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__a1 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__a0 
           + trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__b1);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__d2 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__d1 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__a1);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__d3 
        = ((trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__d2 
            << 8U) | (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__d2 
                      >> 0x18U));
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__c1 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__c0 
           + trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__d3);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__b2 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__b1 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__c1);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__b3 
        = ((trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__b2 
            << 7U) | (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__b2 
                      >> 0x19U));
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__internal_a_prim 
        = trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__a1;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__internal_b_prim 
        = trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__b3;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__internal_c_prim 
        = trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__c1;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__internal_d_prim 
        = trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__qr__DOT__d3;
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__a0 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0_a 
           + trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0_b);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__d0 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0_d 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__a0);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__d1 
        = ((trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__d0 
            << 0x10U) | (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__d0 
                         >> 0x10U));
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__c0 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0_c 
           + trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__d1);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__b0 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0_b 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__c0);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__b1 
        = ((trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__b0 
            << 0xcU) | (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__b0 
                        >> 0x14U));
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__a1 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__a0 
           + trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__b1);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__d2 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__d1 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__a1);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__d3 
        = ((trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__d2 
            << 8U) | (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__d2 
                      >> 0x18U));
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__c1 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__c0 
           + trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__d3);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__b2 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__b1 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__c1);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__b3 
        = ((trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__b2 
            << 7U) | (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__b2 
                      >> 0x19U));
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__internal_a_prim 
        = trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__a1;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__internal_b_prim 
        = trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__b3;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__internal_c_prim 
        = trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__c1;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__internal_d_prim 
        = trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__qr__DOT__d3;
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__a0 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2_a 
           + trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2_b);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__d0 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2_d 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__a0);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__d1 
        = ((trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__d0 
            << 0x10U) | (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__d0 
                         >> 0x10U));
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__c0 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2_c 
           + trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__d1);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__b0 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2_b 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__c0);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__b1 
        = ((trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__b0 
            << 0xcU) | (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__b0 
                        >> 0x14U));
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__a1 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__a0 
           + trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__b1);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__d2 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__d1 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__a1);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__d3 
        = ((trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__d2 
            << 8U) | (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__d2 
                      >> 0x18U));
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__c1 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__c0 
           + trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__d3);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__b2 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__b1 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__c1);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__b3 
        = ((trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__b2 
            << 7U) | (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__b2 
                      >> 0x19U));
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__internal_a_prim 
        = trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__a1;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__internal_b_prim 
        = trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__b3;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__internal_c_prim 
        = trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__c1;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__internal_d_prim 
        = trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__qr__DOT__d3;
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__a0 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3_a 
           + trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3_b);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__d0 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3_d 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__a0);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__d1 
        = ((trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__d0 
            << 0x10U) | (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__d0 
                         >> 0x10U));
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__c0 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3_c 
           + trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__d1);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__b0 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3_b 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__c0);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__b1 
        = ((trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__b0 
            << 0xcU) | (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__b0 
                        >> 0x14U));
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__a1 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__a0 
           + trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__b1);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__d2 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__d1 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__a1);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__d3 
        = ((trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__d2 
            << 8U) | (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__d2 
                      >> 0x18U));
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__c1 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__c0 
           + trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__d3);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__b2 
        = (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__b1 
           ^ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__c1);
    trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__b3 
        = ((trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__b2 
            << 7U) | (trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__b2 
                      >> 0x19U));
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__internal_a_prim 
        = trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__a1;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__internal_b_prim 
        = trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__b3;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__internal_c_prim 
        = trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__c1;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__internal_d_prim 
        = trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__qr__DOT__d3;
    vlSelf->error = trng__DOT__tmp_error;
    trng__DOT__csprng_inst__DOT__fifo_inst__DOT__mux_data_ptr_rst = 0U;
    if ((0U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_reg))) {
        if ((1U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_reg))) {
            if ((1U & (~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_discard)))) {
                if (trng__DOT__csprng_inst__DOT__muxed_rnd_ack) {
                    if ((0xfU == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__mux_data_ptr_reg))) {
                        trng__DOT__csprng_inst__DOT__fifo_inst__DOT__mux_data_ptr_rst = 1U;
                    }
                }
            }
        }
    }
    trng__DOT__csprng_inst__DOT__fifo_inst__DOT__mux_data_ptr_inc = 0U;
    if ((0U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_reg))) {
        if ((1U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_reg))) {
            if ((1U & (~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_discard)))) {
                if (trng__DOT__csprng_inst__DOT__muxed_rnd_ack) {
                    if ((0xfU != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__mux_data_ptr_reg))) {
                        trng__DOT__csprng_inst__DOT__fifo_inst__DOT__mux_data_ptr_inc = 1U;
                    }
                }
            }
        }
    }
    trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_inc = 0U;
    if ((0U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_reg))) {
        if ((1U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_reg))) {
            if ((1U & (~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_discard)))) {
                if (trng__DOT__csprng_inst__DOT__muxed_rnd_ack) {
                    if ((0xfU == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__mux_data_ptr_reg))) {
                        trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_inc = 1U;
                    }
                }
            }
        }
    }
    vlSelf->read_data = trng__DOT__tmp_read_data;
    trng__DOT__mixer_inst__DOT__hash_inst__DOT__t1_logic__DOT__sum1 
        = (((((QData)((IData)((0x3fffU & (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__e_reg)))) 
              << 0x32U) | (vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__e_reg 
                           >> 0xeU)) ^ (((QData)((IData)(
                                                         (0x3ffffU 
                                                          & (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__e_reg)))) 
                                         << 0x2eU) 
                                        | (vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__e_reg 
                                           >> 0x12U))) 
           ^ ((vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__e_reg 
               << 0x17U) | (QData)((IData)((0x7fffffU 
                                            & (IData)(
                                                      (vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__e_reg 
                                                       >> 0x29U)))))));
    trng__DOT__mixer_inst__DOT__hash_inst__DOT__t1_logic__DOT__ch 
        = ((vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__e_reg 
            & vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__f_reg) 
           ^ ((~ vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__e_reg) 
              & vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__g_reg));
    trng__DOT__mixer_inst__DOT__hash_inst__DOT__t1 
        = ((((vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__h_reg 
              + trng__DOT__mixer_inst__DOT__hash_inst__DOT__t1_logic__DOT__sum1) 
             + trng__DOT__mixer_inst__DOT__hash_inst__DOT__t1_logic__DOT__ch) 
            + trng__DOT__mixer_inst__DOT__hash_inst__DOT__k_constants_inst__DOT__tmp_K) 
           + ((0x10U > (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_reg))
               ? vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem
              [(0xfU & (IData)(vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_reg))]
               : trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_new));
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[0U] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[1U] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[2U] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[3U] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[4U] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[5U] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[6U] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[7U] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[8U] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[9U] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[0xaU] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[0xbU] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[0xcU] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[0xdU] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[0xeU] = 0U;
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[0xfU] = 0U;
    if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state) {
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[0U] 
            = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
            [0U];
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[1U] 
            = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
            [1U];
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[2U] 
            = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
            [2U];
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[3U] 
            = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
            [3U];
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[4U] 
            = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
            [4U];
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[5U] 
            = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
            [5U];
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[6U] 
            = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
            [6U];
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[7U] 
            = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
            [7U];
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[8U] 
            = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
            [8U];
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[9U] 
            = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
            [9U];
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[0xaU] 
            = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
            [0xaU];
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[0xbU] 
            = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
            [0xbU];
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[0xcU] 
            = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
            [0xcU];
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[0xdU] 
            = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
            [0xdU];
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[0xeU] 
            = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
            [0xeU];
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[0xfU] 
            = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word
            [0xfU];
    }
    if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__update_state) {
        if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
            if (vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg) {
                vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[0U] 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__internal_a_prim;
                vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[5U] 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__internal_b_prim;
                vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[0xaU] 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__internal_c_prim;
                vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[0xfU] 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__internal_d_prim;
                vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[1U] 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__internal_a_prim;
                vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[6U] 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__internal_b_prim;
                vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[0xbU] 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__internal_c_prim;
                vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[0xcU] 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__internal_d_prim;
                vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[2U] 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__internal_a_prim;
                vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[7U] 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__internal_b_prim;
                vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[8U] 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__internal_c_prim;
                vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[0xdU] 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__internal_d_prim;
                vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[3U] 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__internal_a_prim;
                vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[4U] 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__internal_b_prim;
                vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[9U] 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__internal_c_prim;
                vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[0xeU] 
                    = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__internal_d_prim;
            }
        } else {
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[0U] 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__internal_a_prim;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[4U] 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__internal_b_prim;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[8U] 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__internal_c_prim;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[0xcU] 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__internal_d_prim;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[1U] 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__internal_a_prim;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[5U] 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__internal_b_prim;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[9U] 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__internal_c_prim;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[0xdU] 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__internal_d_prim;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[2U] 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__internal_a_prim;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[6U] 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__internal_b_prim;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[0xaU] 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__internal_c_prim;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[0xeU] 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__internal_d_prim;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[3U] 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__internal_a_prim;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[7U] 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__internal_b_prim;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[0xbU] 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__internal_c_prim;
            vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[0xfU] 
                = vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__internal_d_prim;
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__mux_data_ptr_we = 0U;
    if (trng__DOT__csprng_inst__DOT__fifo_inst__DOT__mux_data_ptr_rst) {
        vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__mux_data_ptr_we = 1U;
    }
    if (trng__DOT__csprng_inst__DOT__fifo_inst__DOT__mux_data_ptr_inc) {
        vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__mux_data_ptr_we = 1U;
    }
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__mux_data_ptr_new = 0U;
    if (trng__DOT__csprng_inst__DOT__fifo_inst__DOT__mux_data_ptr_rst) {
        vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__mux_data_ptr_new = 0U;
    }
    if (trng__DOT__csprng_inst__DOT__fifo_inst__DOT__mux_data_ptr_inc) {
        vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__mux_data_ptr_new 
            = (0xfU & ((IData)(1U) + (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__mux_data_ptr_reg)));
    }
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_new = 0U;
    if (trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_inc) {
        if ((3U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_reg))) {
            vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_new 
                = (3U & ((IData)(1U) + (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_reg)));
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_we = 0U;
    if (vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_rst) {
        vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_we = 1U;
    }
    if (trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_inc) {
        vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_we = 1U;
    }
    trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_ctr_dec = 0U;
    if (trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_inc) {
        trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_ctr_dec = 1U;
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__a_new = 0ULL;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__state_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__a_new 
            = ((IData)(trng__DOT__mixer_inst__DOT__hash_inst__DOT__first_block)
                ? 0x6a09e667f3bcc908ULL : vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H0_reg);
    }
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__state_update) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__a_new 
            = (trng__DOT__mixer_inst__DOT__hash_inst__DOT__t1 
               + trng__DOT__mixer_inst__DOT__hash_inst__DOT__t2);
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__e_new = 0ULL;
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__state_init) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__e_new 
            = ((IData)(trng__DOT__mixer_inst__DOT__hash_inst__DOT__first_block)
                ? 0x510e527fade682d1ULL : vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H4_reg);
    }
    if (trng__DOT__mixer_inst__DOT__hash_inst__DOT__state_update) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__e_new 
            = (vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__d_reg 
               + trng__DOT__mixer_inst__DOT__hash_inst__DOT__t1);
    }
    __Vtableidx3 = (((IData)(trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_ctr_dec) 
                     << 4U) | (((IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_ctr_inc) 
                                << 3U) | (((IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_ctr_rst) 
                                           << 2U) | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_ctr_reg))));
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_ctr_new 
        = Vtrng__ConstPool__TABLE_0cb92ae5_0[__Vtableidx3];
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_ctr_we 
        = Vtrng__ConstPool__TABLE_94dff415_0[__Vtableidx3];
    trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_empty 
        = Vtrng__ConstPool__TABLE_4bd3539f_0[__Vtableidx3];
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_full 
        = Vtrng__ConstPool__TABLE_47d4dcd7_0[__Vtableidx3];
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_we = 0U;
    if ((0U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_reg))) {
        if (vlSelf->trng__DOT__csprng_inst__DOT__fifo_discard) {
            vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_we = 1U;
        } else if ((1U & (~ (IData)(trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_empty)))) {
            vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_we = 1U;
        }
    } else if ((1U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_reg))) {
        if (vlSelf->trng__DOT__csprng_inst__DOT__fifo_discard) {
            vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_we = 1U;
        } else if (trng__DOT__csprng_inst__DOT__muxed_rnd_ack) {
            vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_we = 1U;
        }
    } else if ((7U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_reg))) {
        vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_we = 1U;
    }
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_new = 0U;
    if ((0U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_reg))) {
        if (vlSelf->trng__DOT__csprng_inst__DOT__fifo_discard) {
            vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_new = 7U;
        } else if ((1U & (~ (IData)(trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_empty)))) {
            vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_new = 1U;
        }
    } else if ((1U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_reg))) {
        if (vlSelf->trng__DOT__csprng_inst__DOT__fifo_discard) {
            vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_new = 7U;
        } else if (trng__DOT__csprng_inst__DOT__muxed_rnd_ack) {
            vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_new = 0U;
        }
    } else if ((7U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_reg))) {
        vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_new = 0U;
    }
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rnd_syn_we = 0U;
    if ((0U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_reg))) {
        if ((1U & (~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_discard)))) {
            if ((1U & (~ (IData)(trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_empty)))) {
                vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rnd_syn_we = 1U;
            }
        }
    } else if ((1U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_reg))) {
        if ((1U & (~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_discard)))) {
            if (trng__DOT__csprng_inst__DOT__muxed_rnd_ack) {
                vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rnd_syn_we = 1U;
            }
        }
    } else if ((7U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_reg))) {
        vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rnd_syn_we = 1U;
    }
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rnd_syn_new = 0U;
    if ((0U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_reg))) {
        if ((1U & (~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_discard)))) {
            if ((1U & (~ (IData)(trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_empty)))) {
                vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rnd_syn_new = 1U;
            }
        }
    } else if ((1U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_reg))) {
        if ((1U & (~ (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_discard)))) {
            if (trng__DOT__csprng_inst__DOT__muxed_rnd_ack) {
                vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rnd_syn_new = 0U;
            }
        }
    } else if ((7U == (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_reg))) {
        vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rnd_syn_new = 0U;
    }
    __Vtableidx4 = (((IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_cipher_data_valid) 
                     << 5U) | (((IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_full) 
                                << 4U) | (((IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_discard) 
                                           << 3U) | (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__wr_ctrl_reg))));
    trng__DOT__csprng_inst__DOT__fifo_inst__DOT__wr_ptr_inc 
        = Vtrng__ConstPool__TABLE_5c83090b_0[__Vtableidx4];
    trng__DOT__csprng_inst__DOT__fifo_inst__DOT__wr_ptr_rst 
        = Vtrng__ConstPool__TABLE_86a6e9aa_0[__Vtableidx4];
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_mem_we 
        = Vtrng__ConstPool__TABLE_5c83090b_0[__Vtableidx4];
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_ctr_inc 
        = Vtrng__ConstPool__TABLE_5c83090b_0[__Vtableidx4];
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_ctr_rst 
        = Vtrng__ConstPool__TABLE_86a6e9aa_0[__Vtableidx4];
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__more_data_new 
        = Vtrng__ConstPool__TABLE_7c6ffbb2_0[__Vtableidx4];
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__wr_ctrl_new 
        = Vtrng__ConstPool__TABLE_30d988cd_0[__Vtableidx4];
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__wr_ctrl_we 
        = Vtrng__ConstPool__TABLE_f5b0e673_0[__Vtableidx4];
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__wr_ptr_new = 0U;
    if (trng__DOT__csprng_inst__DOT__fifo_inst__DOT__wr_ptr_inc) {
        if ((3U != (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__wr_ptr_reg))) {
            vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__wr_ptr_new 
                = (3U & ((IData)(1U) + (IData)(vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__wr_ptr_reg)));
        }
    }
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__wr_ptr_we = 0U;
    if (trng__DOT__csprng_inst__DOT__fifo_inst__DOT__wr_ptr_rst) {
        vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__wr_ptr_we = 1U;
    }
    if (trng__DOT__csprng_inst__DOT__fifo_inst__DOT__wr_ptr_inc) {
        vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__wr_ptr_we = 1U;
    }
}

void Vtrng___024root___eval_initial(Vtrng___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtrng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtrng___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vclklast__TOP__clk = vlSelf->clk;
    vlSelf->__Vclklast__TOP__reset_n = vlSelf->reset_n;
}

void Vtrng___024root___eval_settle(Vtrng___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtrng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtrng___024root___eval_settle\n"); );
    // Body
    Vtrng___024root___settle__TOP__1(vlSelf);
}

void Vtrng___024root___final(Vtrng___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtrng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtrng___024root___final\n"); );
}

void Vtrng___024root___ctor_var_reset(Vtrng___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtrng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtrng___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->reset_n = VL_RAND_RESET_I(1);
    vlSelf->avalanche_noise = VL_RAND_RESET_I(1);
    vlSelf->cs = VL_RAND_RESET_I(1);
    vlSelf->we = VL_RAND_RESET_I(1);
    vlSelf->address = VL_RAND_RESET_I(12);
    vlSelf->write_data = VL_RAND_RESET_I(32);
    vlSelf->read_data = VL_RAND_RESET_I(32);
    vlSelf->error = VL_RAND_RESET_I(1);
    vlSelf->debug = VL_RAND_RESET_I(8);
    vlSelf->debug_update = VL_RAND_RESET_I(1);
    vlSelf->security_error = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__discard_reg = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__discard_new = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__debug_out_reg = VL_RAND_RESET_I(8);
    vlSelf->trng__DOT__debug_out_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__debug_mux_reg = VL_RAND_RESET_I(3);
    vlSelf->trng__DOT__debug_mux_new = VL_RAND_RESET_I(3);
    vlSelf->trng__DOT__debug_mux_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__debug_delay_ctr_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__debug_delay_ctr_new = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__debug_delay_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__debug_delay_new = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__debug_delay_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__trng_api_cs = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__trng_api_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_api_cs = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_api_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_api_cs = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_api_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__tmp_debug = VL_RAND_RESET_I(8);
    vlSelf->trng__DOT__mixer_inst__DOT__block00_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block00_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__block01_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block01_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__block02_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block02_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__block03_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block03_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__block04_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block04_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__block05_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block05_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__block06_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block06_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__block07_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block07_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__block08_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block08_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__block09_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block09_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__block10_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block10_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__block11_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block11_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__block12_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block12_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__block13_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block13_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__block14_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block14_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__block15_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block15_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__block16_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block16_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__block17_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block17_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__block18_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block18_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__block19_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block19_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__block20_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block20_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__block21_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block21_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__block22_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block22_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__block23_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block23_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__block24_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block24_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__block25_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block25_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__block26_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block26_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__block27_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block27_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__block28_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block28_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__block29_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block29_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__block30_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block30_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__block31_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__block31_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__word_ctr_reg = VL_RAND_RESET_I(5);
    vlSelf->trng__DOT__mixer_inst__DOT__word_ctr_new = VL_RAND_RESET_I(5);
    vlSelf->trng__DOT__mixer_inst__DOT__word_ctr_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg = VL_RAND_RESET_I(4);
    vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_new = VL_RAND_RESET_I(4);
    vlSelf->trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__entropy_timeout_ctr_reg = VL_RAND_RESET_I(24);
    vlSelf->trng__DOT__mixer_inst__DOT__entropy_timeout_ctr_new = VL_RAND_RESET_I(24);
    vlSelf->trng__DOT__mixer_inst__DOT__entropy_timeout_ctr_inc = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__entropy_timeout_ctr_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__entropy_timeout_reg = VL_RAND_RESET_I(24);
    vlSelf->trng__DOT__mixer_inst__DOT__entropy_timeout_new = VL_RAND_RESET_I(24);
    vlSelf->trng__DOT__mixer_inst__DOT__entropy_timeout_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_reg = VL_RAND_RESET_I(4);
    vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_new = VL_RAND_RESET_I(4);
    vlSelf->trng__DOT__mixer_inst__DOT__mixer_ctrl_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__seed_syn_reg = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__seed_syn_new = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__seed_syn_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__init_done_reg = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__init_done_new = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__init_done_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__enable_reg = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__enable_new = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__enable_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__restart_reg = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__restart_new = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__muxed_entropy = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__a_reg = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__a_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__b_reg = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__b_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__c_reg = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__c_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__d_reg = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__d_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__e_reg = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__e_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__f_reg = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__f_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__g_reg = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__g_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__h_reg = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__h_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__a_h_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H0_reg = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H0_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H1_reg = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H1_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H2_reg = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H2_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H3_reg = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H3_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H4_reg = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H4_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H5_reg = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H5_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H6_reg = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H6_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H7_reg = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H7_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__H_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__round_ctr_reg = VL_RAND_RESET_I(7);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__round_ctr_new = VL_RAND_RESET_I(7);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__round_ctr_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__ready_reg = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__ready_new = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__ready_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_reg = VL_RAND_RESET_I(2);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_new = VL_RAND_RESET_I(2);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_we = VL_RAND_RESET_I(1);
    for (int __Vi0=0; __Vi0<16; ++__Vi0) {
        vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem[__Vi0] = VL_RAND_RESET_Q(64);
    }
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem00_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem01_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem02_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem03_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem04_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem05_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem06_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem07_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem08_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem09_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem10_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem11_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem12_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem13_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem14_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem15_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_reg = VL_RAND_RESET_I(7);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_new = VL_RAND_RESET_I(7);
    vlSelf->trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_we = VL_RAND_RESET_I(1);
    VL_RAND_RESET_W(256, vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_reg);
    VL_RAND_RESET_W(256, vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_new);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_key_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_iv_reg = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_iv_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_iv_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_ctr_reg = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_ctr_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_ctr_we = VL_RAND_RESET_I(1);
    VL_RAND_RESET_W(512, vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_reg);
    VL_RAND_RESET_W(512, vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_new);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_block_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__block_ctr_reg = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__csprng_inst__DOT__block_ctr_new = VL_RAND_RESET_Q(64);
    vlSelf->trng__DOT__csprng_inst__DOT__block_ctr_rst = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__block_ctr_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__block_ctr_max = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__ready_reg = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__more_seed_reg = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__more_seed_new = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__seed_ack_reg = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__seed_ack_new = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__enable_reg = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__enable_new = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__enable_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__seed_reg = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__seed_new = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__num_rounds_reg = VL_RAND_RESET_I(5);
    vlSelf->trng__DOT__csprng_inst__DOT__num_rounds_new = VL_RAND_RESET_I(5);
    vlSelf->trng__DOT__csprng_inst__DOT__num_rounds_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__num_blocks_low_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__csprng_inst__DOT__num_blocks_low_new = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__csprng_inst__DOT__num_blocks_low_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__num_blocks_high_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__csprng_inst__DOT__num_blocks_high_new = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__csprng_inst__DOT__num_blocks_high_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_reg = VL_RAND_RESET_I(4);
    vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_new = VL_RAND_RESET_I(4);
    vlSelf->trng__DOT__csprng_inst__DOT__csprng_ctrl_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_init = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_next = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_discard = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__rnd_ack = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_cipher_data_valid = VL_RAND_RESET_I(1);
    for (int __Vi0=0; __Vi0<16; ++__Vi0) {
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg[__Vi0] = VL_RAND_RESET_I(32);
    }
    for (int __Vi0=0; __Vi0<16; ++__Vi0) {
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new[__Vi0] = VL_RAND_RESET_I(32);
    }
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_we = VL_RAND_RESET_I(1);
    VL_RAND_RESET_W(512, vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_reg);
    VL_RAND_RESET_W(512, vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_new);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_new = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__dr_ctr_reg = VL_RAND_RESET_I(4);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__dr_ctr_new = VL_RAND_RESET_I(4);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__dr_ctr_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block0_ctr_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block0_ctr_new = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block0_ctr_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block1_ctr_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block1_ctr_new = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block1_ctr_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__ready_reg = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__ready_new = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__ready_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg = VL_RAND_RESET_I(3);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_new = VL_RAND_RESET_I(3);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_we = VL_RAND_RESET_I(1);
    for (int __Vi0=0; __Vi0<16; ++__Vi0) {
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word[__Vi0] = VL_RAND_RESET_I(32);
    }
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__update_state = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__update_output = VL_RAND_RESET_I(1);
    for (int __Vi0=0; __Vi0<16; ++__Vi0) {
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state[__Vi0] = VL_RAND_RESET_I(32);
    }
    for (int __Vi0=0; __Vi0<16; ++__Vi0) {
        vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state[__Vi0] = VL_RAND_RESET_I(32);
    }
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__internal_a_prim = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__internal_b_prim = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__internal_c_prim = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__internal_d_prim = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__internal_a_prim = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__internal_b_prim = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__internal_c_prim = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__internal_d_prim = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__internal_a_prim = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__internal_b_prim = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__internal_c_prim = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__internal_d_prim = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__internal_a_prim = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__internal_b_prim = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__internal_c_prim = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__internal_d_prim = VL_RAND_RESET_I(32);
    for (int __Vi0=0; __Vi0<4; ++__Vi0) {
        VL_RAND_RESET_W(512, vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_mem[__Vi0]);
    }
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_mem_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__mux_data_ptr_reg = VL_RAND_RESET_I(4);
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__mux_data_ptr_new = VL_RAND_RESET_I(4);
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__mux_data_ptr_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_reg = VL_RAND_RESET_I(2);
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_new = VL_RAND_RESET_I(2);
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_rst = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__wr_ptr_reg = VL_RAND_RESET_I(2);
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__wr_ptr_new = VL_RAND_RESET_I(2);
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__wr_ptr_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_ctr_reg = VL_RAND_RESET_I(2);
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_ctr_new = VL_RAND_RESET_I(2);
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_ctr_inc = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_ctr_rst = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_ctr_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_full = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rnd_data_reg = VL_RAND_RESET_I(32);
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rnd_syn_reg = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rnd_syn_new = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rnd_syn_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_reg = VL_RAND_RESET_I(3);
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_new = VL_RAND_RESET_I(3);
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__wr_ctrl_reg = VL_RAND_RESET_I(3);
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__wr_ctrl_new = VL_RAND_RESET_I(3);
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__wr_ctrl_we = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__more_data_reg = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__more_data_new = VL_RAND_RESET_I(1);
    vlSelf->trng__DOT__csprng_inst__DOT__fifo_inst__DOT__muxed_data = VL_RAND_RESET_I(32);
    vlSelf->__Vchglast__TOP__trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_ctr_inc = VL_RAND_RESET_I(1);
    vlSelf->__Vchglast__TOP__trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_ctr_rst = VL_RAND_RESET_I(1);
}
