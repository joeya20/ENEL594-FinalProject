// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary model header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef VERILATED_VOPENMSP430_H_
#define VERILATED_VOPENMSP430_H_  // guard

#include "verilated_heavy.h"

class VopenMSP430__Syms;
class VopenMSP430___024root;

// This class is the main interface to the Verilated model
class VopenMSP430 VL_NOT_FINAL {
  private:
    // Symbol table holding complete model state (owned by this class)
    VopenMSP430__Syms* const vlSymsp;

  public:

    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_OUT8(&dbg_freeze,0,0);
    VL_OUT8(&dbg_i2c_sda_out,0,0);
    VL_OUT8(&dbg_uart_txd,0,0);
    VL_OUT16(&dmem_addr,8,0);
    VL_OUT8(&dmem_cen,0,0);
    VL_OUT16(&dmem_din,15,0);
    VL_OUT8(&dmem_wen,1,0);
    VL_OUT16(&irq_acc,13,0);
    VL_OUT8(&mclk,0,0);
    VL_OUT16(&dma_dout,15,0);
    VL_OUT8(&dma_ready,0,0);
    VL_OUT8(&dma_resp,0,0);
    VL_OUT16(&per_addr,13,0);
    VL_OUT16(&per_din,15,0);
    VL_OUT8(&per_en,0,0);
    VL_OUT8(&per_we,1,0);
    VL_OUT16(&pmem_addr,10,0);
    VL_OUT8(&pmem_cen,0,0);
    VL_OUT16(&pmem_din,15,0);
    VL_OUT8(&pmem_wen,1,0);
    VL_OUT8(&puc_rst,0,0);
    VL_IN8(&aclk,0,0);
    VL_IN8(&aclk_en,0,0);
    VL_IN8(&cpu_en_s,0,0);
    VL_IN8(&cpu_mclk,0,0);
    VL_IN8(&dma_mclk,0,0);
    VL_IN8(&dbg_clk,0,0);
    VL_IN8(&dbg_en_s,0,0);
    VL_IN8(&dbg_rst,0,0);
    VL_IN8(&dco_enable,0,0);
    VL_IN8(&per_dout,0,0);
    VL_IN8(&por,0,0);
    VL_IN8(&puc_pnd_set,0,0);
    VL_IN8(&smclk,0,0);
    VL_IN8(&smclk_en,0,0);
    VL_IN8(&dbg_i2c_addr,6,0);
    VL_IN8(&dbg_i2c_broadcast,6,0);
    VL_IN8(&dbg_i2c_scl,0,0);
    VL_IN8(&dbg_i2c_sda_in,0,0);
    VL_IN8(&dbg_uart_rxd,0,0);
    VL_IN16(&dmem_dout,15,0);
    VL_IN16(&irq,13,0);
    VL_IN16(&dma_addr,15,1);
    VL_IN16(&dma_din,15,0);
    VL_IN8(&dma_en,0,0);
    VL_IN8(&dma_priority,0,0);
    VL_IN8(&dma_we,1,0);
    VL_IN8(&dma_wkup,0,0);
    VL_IN8(&nmi,0,0);
    VL_IN16(&pmem_dout,15,0);
    VL_IN8(&reset_n,0,0);
    VL_IN8(&scan_enable,0,0);
    VL_IN8(&scan_mode,0,0);
    VL_IN8(&wkup,0,0);

    // CELLS
    // Public to allow access to /* verilator public */ items.
    // Otherwise the application code can consider these internals.

    // Root instance pointer to allow access to model internals,
    // including inlined /* verilator public_flat_* */ items.
    VopenMSP430___024root* const rootp;

    // CONSTRUCTORS
    /// Construct the model; called by application code
    /// If contextp is null, then the model will use the default global context
    /// If name is "", then makes a wrapper with a
    /// single model invisible with respect to DPI scope names.
    explicit VopenMSP430(VerilatedContext* contextp, const char* name = "TOP");
    explicit VopenMSP430(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    virtual ~VopenMSP430();
  private:
    VL_UNCOPYABLE(VopenMSP430);  ///< Copying not allowed

  public:
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval() { eval_step(); }
    /// Evaluate when calling multiple units/models per time step.
    void eval_step();
    /// Evaluate at end of a timestep for tracing, when using eval_step().
    /// Application must call after all eval() and before time changes.
    void eval_end_step() {}
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    /// Return current simulation context for this model.
    /// Used to get to e.g. simulation time via contextp()->time()
    VerilatedContext* contextp() const;
    /// Retrieve name of this model instance (as passed to constructor).
    const char* name() const;
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
