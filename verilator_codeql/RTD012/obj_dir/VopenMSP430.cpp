// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "VopenMSP430.h"
#include "VopenMSP430__Syms.h"

//============================================================
// Constructors

VopenMSP430::VopenMSP430(VerilatedContext* _vcontextp__, const char* _vcname__)
    : vlSymsp{new VopenMSP430__Syms(_vcontextp__, _vcname__, this)}
    , dbg_freeze{vlSymsp->TOP.dbg_freeze}
    , dbg_i2c_sda_out{vlSymsp->TOP.dbg_i2c_sda_out}
    , dbg_uart_txd{vlSymsp->TOP.dbg_uart_txd}
    , dmem_addr{vlSymsp->TOP.dmem_addr}
    , dmem_cen{vlSymsp->TOP.dmem_cen}
    , dmem_din{vlSymsp->TOP.dmem_din}
    , dmem_wen{vlSymsp->TOP.dmem_wen}
    , irq_acc{vlSymsp->TOP.irq_acc}
    , mclk{vlSymsp->TOP.mclk}
    , dma_dout{vlSymsp->TOP.dma_dout}
    , dma_ready{vlSymsp->TOP.dma_ready}
    , dma_resp{vlSymsp->TOP.dma_resp}
    , per_addr{vlSymsp->TOP.per_addr}
    , per_din{vlSymsp->TOP.per_din}
    , per_en{vlSymsp->TOP.per_en}
    , per_we{vlSymsp->TOP.per_we}
    , pmem_addr{vlSymsp->TOP.pmem_addr}
    , pmem_cen{vlSymsp->TOP.pmem_cen}
    , pmem_din{vlSymsp->TOP.pmem_din}
    , pmem_wen{vlSymsp->TOP.pmem_wen}
    , puc_rst{vlSymsp->TOP.puc_rst}
    , aclk{vlSymsp->TOP.aclk}
    , aclk_en{vlSymsp->TOP.aclk_en}
    , cpu_en_s{vlSymsp->TOP.cpu_en_s}
    , cpu_mclk{vlSymsp->TOP.cpu_mclk}
    , dma_mclk{vlSymsp->TOP.dma_mclk}
    , dbg_clk{vlSymsp->TOP.dbg_clk}
    , dbg_en_s{vlSymsp->TOP.dbg_en_s}
    , dbg_rst{vlSymsp->TOP.dbg_rst}
    , dco_enable{vlSymsp->TOP.dco_enable}
    , per_dout{vlSymsp->TOP.per_dout}
    , por{vlSymsp->TOP.por}
    , puc_pnd_set{vlSymsp->TOP.puc_pnd_set}
    , smclk{vlSymsp->TOP.smclk}
    , smclk_en{vlSymsp->TOP.smclk_en}
    , dbg_i2c_addr{vlSymsp->TOP.dbg_i2c_addr}
    , dbg_i2c_broadcast{vlSymsp->TOP.dbg_i2c_broadcast}
    , dbg_i2c_scl{vlSymsp->TOP.dbg_i2c_scl}
    , dbg_i2c_sda_in{vlSymsp->TOP.dbg_i2c_sda_in}
    , dbg_uart_rxd{vlSymsp->TOP.dbg_uart_rxd}
    , dmem_dout{vlSymsp->TOP.dmem_dout}
    , irq{vlSymsp->TOP.irq}
    , dma_addr{vlSymsp->TOP.dma_addr}
    , dma_din{vlSymsp->TOP.dma_din}
    , dma_en{vlSymsp->TOP.dma_en}
    , dma_priority{vlSymsp->TOP.dma_priority}
    , dma_we{vlSymsp->TOP.dma_we}
    , dma_wkup{vlSymsp->TOP.dma_wkup}
    , nmi{vlSymsp->TOP.nmi}
    , pmem_dout{vlSymsp->TOP.pmem_dout}
    , reset_n{vlSymsp->TOP.reset_n}
    , scan_enable{vlSymsp->TOP.scan_enable}
    , scan_mode{vlSymsp->TOP.scan_mode}
    , wkup{vlSymsp->TOP.wkup}
    , rootp{&(vlSymsp->TOP)}
{
}

VopenMSP430::VopenMSP430(const char* _vcname__)
    : VopenMSP430(nullptr, _vcname__)
{
}

//============================================================
// Destructor

VopenMSP430::~VopenMSP430() {
    delete vlSymsp;
}

//============================================================
// Evaluation loop

void VopenMSP430___024root___eval_initial(VopenMSP430___024root* vlSelf);
void VopenMSP430___024root___eval_settle(VopenMSP430___024root* vlSelf);
void VopenMSP430___024root___eval(VopenMSP430___024root* vlSelf);
QData VopenMSP430___024root___change_request(VopenMSP430___024root* vlSelf);
#ifdef VL_DEBUG
void VopenMSP430___024root___eval_debug_assertions(VopenMSP430___024root* vlSelf);
#endif  // VL_DEBUG
void VopenMSP430___024root___final(VopenMSP430___024root* vlSelf);

static void _eval_initial_loop(VopenMSP430__Syms* __restrict vlSymsp) {
    vlSymsp->__Vm_didInit = true;
    VopenMSP430___024root___eval_initial(&(vlSymsp->TOP));
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial loop\n"););
        VopenMSP430___024root___eval_settle(&(vlSymsp->TOP));
        VopenMSP430___024root___eval(&(vlSymsp->TOP));
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = VopenMSP430___024root___change_request(&(vlSymsp->TOP));
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("src/openMSP430.v", 51, "",
                "Verilated model didn't DC converge\n"
                "- See https://verilator.org/warn/DIDNOTCONVERGE");
        } else {
            __Vchange = VopenMSP430___024root___change_request(&(vlSymsp->TOP));
        }
    } while (VL_UNLIKELY(__Vchange));
}

void VopenMSP430::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VopenMSP430::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    VopenMSP430___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    // Initialize
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) _eval_initial_loop(vlSymsp);
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Clock loop\n"););
        VopenMSP430___024root___eval(&(vlSymsp->TOP));
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = VopenMSP430___024root___change_request(&(vlSymsp->TOP));
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("src/openMSP430.v", 51, "",
                "Verilated model didn't converge\n"
                "- See https://verilator.org/warn/DIDNOTCONVERGE");
        } else {
            __Vchange = VopenMSP430___024root___change_request(&(vlSymsp->TOP));
        }
    } while (VL_UNLIKELY(__Vchange));
}

//============================================================
// Invoke final blocks

void VopenMSP430::final() {
    VopenMSP430___024root___final(&(vlSymsp->TOP));
}

//============================================================
// Utilities

VerilatedContext* VopenMSP430::contextp() const {
    return vlSymsp->_vm_contextp__;
}

const char* VopenMSP430::name() const {
    return vlSymsp->name();
}
