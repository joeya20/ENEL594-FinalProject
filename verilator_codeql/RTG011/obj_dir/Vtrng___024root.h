// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vtrng.h for the primary calling header

#ifndef VERILATED_VTRNG___024ROOT_H_
#define VERILATED_VTRNG___024ROOT_H_  // guard

#include "verilated_heavy.h"

//==========

class Vtrng__Syms;

//----------

VL_MODULE(Vtrng___024root) {
  public:

    // PORTS
    VL_IN8(clk,0,0);
    VL_IN8(reset_n,0,0);
    VL_IN8(avalanche_noise,0,0);
    VL_IN8(cs,0,0);
    VL_IN8(we,0,0);
    VL_OUT8(error,0,0);
    VL_OUT8(debug,7,0);
    VL_IN8(debug_update,0,0);
    VL_OUT8(security_error,0,0);
    VL_IN16(address,11,0);
    VL_IN(write_data,31,0);
    VL_OUT(read_data,31,0);

    // LOCAL SIGNALS
    // Anonymous structures to workaround compiler member-count bugs
    struct {
        CData/*0:0*/ trng__DOT__discard_reg;
        CData/*0:0*/ trng__DOT__discard_new;
        CData/*7:0*/ trng__DOT__debug_out_reg;
        CData/*0:0*/ trng__DOT__debug_out_we;
        CData/*2:0*/ trng__DOT__debug_mux_reg;
        CData/*2:0*/ trng__DOT__debug_mux_new;
        CData/*0:0*/ trng__DOT__debug_mux_we;
        CData/*0:0*/ trng__DOT__debug_delay_we;
        CData/*0:0*/ trng__DOT__trng_api_cs;
        CData/*0:0*/ trng__DOT__trng_api_we;
        CData/*0:0*/ trng__DOT__mixer_api_cs;
        CData/*0:0*/ trng__DOT__mixer_api_we;
        CData/*0:0*/ trng__DOT__csprng_api_cs;
        CData/*0:0*/ trng__DOT__csprng_api_we;
        CData/*7:0*/ trng__DOT__tmp_debug;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block00_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block01_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block02_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block03_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block04_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block05_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block06_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block07_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block08_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block09_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block10_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block11_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block12_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block13_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block14_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block15_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block16_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block17_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block18_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block19_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block20_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block21_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block22_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block23_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block24_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block25_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block26_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block27_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block28_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block29_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block30_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__block31_we;
        CData/*4:0*/ trng__DOT__mixer_inst__DOT__word_ctr_reg;
        CData/*4:0*/ trng__DOT__mixer_inst__DOT__word_ctr_new;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__word_ctr_we;
        CData/*3:0*/ trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_reg;
        CData/*3:0*/ trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_new;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__entropy_collect_ctrl_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__entropy_timeout_ctr_inc;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__entropy_timeout_ctr_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__entropy_timeout_we;
        CData/*3:0*/ trng__DOT__mixer_inst__DOT__mixer_ctrl_reg;
        CData/*3:0*/ trng__DOT__mixer_inst__DOT__mixer_ctrl_new;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__mixer_ctrl_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__seed_syn_reg;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__seed_syn_new;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__seed_syn_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__init_done_reg;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__init_done_new;
    };
    struct {
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__init_done_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__enable_reg;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__enable_new;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__enable_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__restart_reg;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__restart_new;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__a_h_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__H_we;
        CData/*6:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__round_ctr_reg;
        CData/*6:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__round_ctr_new;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__round_ctr_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__ready_reg;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__ready_new;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__ready_we;
        CData/*1:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_reg;
        CData/*1:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_new;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__sha512_ctrl_we;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem_we;
        CData/*6:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_reg;
        CData/*6:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_new;
        CData/*0:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_ctr_we;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__cipher_key_we;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__cipher_iv_we;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__cipher_ctr_we;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__cipher_block_we;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__block_ctr_rst;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__block_ctr_we;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__block_ctr_max;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__ready_reg;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__more_seed_reg;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__more_seed_new;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__seed_ack_reg;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__seed_ack_new;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__enable_reg;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__enable_new;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__enable_we;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__seed_reg;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__seed_new;
        CData/*4:0*/ trng__DOT__csprng_inst__DOT__num_rounds_reg;
        CData/*4:0*/ trng__DOT__csprng_inst__DOT__num_rounds_new;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__num_rounds_we;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__num_blocks_low_we;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__num_blocks_high_we;
        CData/*3:0*/ trng__DOT__csprng_inst__DOT__csprng_ctrl_reg;
        CData/*3:0*/ trng__DOT__csprng_inst__DOT__csprng_ctrl_new;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__csprng_ctrl_we;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__cipher_init;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__cipher_next;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__fifo_discard;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__rnd_ack;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__fifo_cipher_data_valid;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_we;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_reg;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_new;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr_ctr_we;
        CData/*3:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__dr_ctr_reg;
        CData/*3:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__dr_ctr_new;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__dr_ctr_we;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block0_ctr_we;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block1_ctr_we;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__ready_reg;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__ready_new;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__ready_we;
        CData/*2:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_reg;
    };
    struct {
        CData/*2:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_new;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__chacha_ctrl_we;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__update_state;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__update_output;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_mem_we;
        CData/*3:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__mux_data_ptr_reg;
        CData/*3:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__mux_data_ptr_new;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__mux_data_ptr_we;
        CData/*1:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_reg;
        CData/*1:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_new;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_rst;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ptr_we;
        CData/*1:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__wr_ptr_reg;
        CData/*1:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__wr_ptr_new;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__wr_ptr_we;
        CData/*1:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_ctr_reg;
        CData/*1:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_ctr_new;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_ctr_inc;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_ctr_rst;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_ctr_we;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_full;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rnd_syn_reg;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rnd_syn_new;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rnd_syn_we;
        CData/*2:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_reg;
        CData/*2:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_new;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rd_ctrl_we;
        CData/*2:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__wr_ctrl_reg;
        CData/*2:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__wr_ctrl_new;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__wr_ctrl_we;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__more_data_reg;
        CData/*0:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__more_data_new;
        IData/*31:0*/ trng__DOT__debug_delay_ctr_reg;
        IData/*31:0*/ trng__DOT__debug_delay_ctr_new;
        IData/*31:0*/ trng__DOT__debug_delay_reg;
        IData/*31:0*/ trng__DOT__debug_delay_new;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block00_reg;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block01_reg;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block02_reg;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block03_reg;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block04_reg;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block05_reg;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block06_reg;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block07_reg;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block08_reg;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block09_reg;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block10_reg;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block11_reg;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block12_reg;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block13_reg;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block14_reg;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block15_reg;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block16_reg;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block17_reg;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block18_reg;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block19_reg;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block20_reg;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block21_reg;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block22_reg;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block23_reg;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block24_reg;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block25_reg;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block26_reg;
    };
    struct {
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block27_reg;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block28_reg;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block29_reg;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block30_reg;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__block31_reg;
        IData/*23:0*/ trng__DOT__mixer_inst__DOT__entropy_timeout_ctr_reg;
        IData/*23:0*/ trng__DOT__mixer_inst__DOT__entropy_timeout_ctr_new;
        IData/*23:0*/ trng__DOT__mixer_inst__DOT__entropy_timeout_reg;
        IData/*23:0*/ trng__DOT__mixer_inst__DOT__entropy_timeout_new;
        IData/*31:0*/ trng__DOT__mixer_inst__DOT__muxed_entropy;
        VlWide<8>/*255:0*/ trng__DOT__csprng_inst__DOT__cipher_key_reg;
        VlWide<8>/*255:0*/ trng__DOT__csprng_inst__DOT__cipher_key_new;
        VlWide<16>/*511:0*/ trng__DOT__csprng_inst__DOT__cipher_block_reg;
        VlWide<16>/*511:0*/ trng__DOT__csprng_inst__DOT__cipher_block_new;
        IData/*31:0*/ trng__DOT__csprng_inst__DOT__num_blocks_low_reg;
        IData/*31:0*/ trng__DOT__csprng_inst__DOT__num_blocks_low_new;
        IData/*31:0*/ trng__DOT__csprng_inst__DOT__num_blocks_high_reg;
        IData/*31:0*/ trng__DOT__csprng_inst__DOT__num_blocks_high_new;
        VlWide<16>/*511:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_reg;
        VlWide<16>/*511:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_new;
        IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block0_ctr_reg;
        IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block0_ctr_new;
        IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block1_ctr_reg;
        IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__block1_ctr_new;
        IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__internal_a_prim;
        IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__internal_b_prim;
        IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__internal_c_prim;
        IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr0__DOT__internal_d_prim;
        IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__internal_a_prim;
        IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__internal_b_prim;
        IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__internal_c_prim;
        IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr1__DOT__internal_d_prim;
        IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__internal_a_prim;
        IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__internal_b_prim;
        IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__internal_c_prim;
        IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr2__DOT__internal_d_prim;
        IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__internal_a_prim;
        IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__internal_b_prim;
        IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__internal_c_prim;
        IData/*31:0*/ trng__DOT__csprng_inst__DOT__cipher_inst__DOT__qr3__DOT__internal_d_prim;
        IData/*31:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__rnd_data_reg;
        IData/*31:0*/ trng__DOT__csprng_inst__DOT__fifo_inst__DOT__muxed_data;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__a_reg;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__a_new;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__b_reg;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__b_new;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__c_reg;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__c_new;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__d_reg;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__d_new;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__e_reg;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__e_new;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__f_reg;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__f_new;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__g_reg;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__g_new;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__h_reg;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__h_new;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__H0_reg;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__H0_new;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__H1_reg;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__H1_new;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__H2_reg;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__H2_new;
    };
    struct {
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__H3_reg;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__H3_new;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__H4_reg;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__H4_new;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__H5_reg;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__H5_new;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__H6_reg;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__H6_new;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__H7_reg;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__H7_new;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem00_new;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem01_new;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem02_new;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem03_new;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem04_new;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem05_new;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem06_new;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem07_new;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem08_new;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem09_new;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem10_new;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem11_new;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem12_new;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem13_new;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem14_new;
        QData/*63:0*/ trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem15_new;
        QData/*63:0*/ trng__DOT__csprng_inst__DOT__cipher_iv_reg;
        QData/*63:0*/ trng__DOT__csprng_inst__DOT__cipher_iv_new;
        QData/*63:0*/ trng__DOT__csprng_inst__DOT__cipher_ctr_reg;
        QData/*63:0*/ trng__DOT__csprng_inst__DOT__cipher_ctr_new;
        QData/*63:0*/ trng__DOT__csprng_inst__DOT__block_ctr_reg;
        QData/*63:0*/ trng__DOT__csprng_inst__DOT__block_ctr_new;
        VlUnpacked<QData/*63:0*/, 16> trng__DOT__mixer_inst__DOT__hash_inst__DOT__w_mem_inst__DOT__w_mem;
        VlUnpacked<IData/*31:0*/, 16> trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_reg;
        VlUnpacked<IData/*31:0*/, 16> trng__DOT__csprng_inst__DOT__cipher_inst__DOT__state_new;
        VlUnpacked<IData/*31:0*/, 16> trng__DOT__csprng_inst__DOT__cipher_inst__DOT__init_state_word;
        VlUnpacked<IData/*31:0*/, 16> trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__msb_block_state;
        VlUnpacked<IData/*31:0*/, 16> trng__DOT__csprng_inst__DOT__cipher_inst__DOT__data_out_logic__DOT__lsb_block_state;
        VlUnpacked<VlWide<16>/*511:0*/, 4> trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_mem;
    };

    // LOCAL VARIABLES
    CData/*0:0*/ __Vclklast__TOP__clk;
    CData/*0:0*/ __Vclklast__TOP__reset_n;
    CData/*0:0*/ __Vchglast__TOP__trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_ctr_inc;
    CData/*0:0*/ __Vchglast__TOP__trng__DOT__csprng_inst__DOT__fifo_inst__DOT__fifo_ctr_rst;

    // INTERNAL VARIABLES
    Vtrng__Syms* vlSymsp;  // Symbol table

    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(Vtrng___024root);  ///< Copying not allowed
  public:
    Vtrng___024root(const char* name);
    ~Vtrng___024root();

    // INTERNAL METHODS
    void __Vconfigure(Vtrng__Syms* symsp, bool first);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
