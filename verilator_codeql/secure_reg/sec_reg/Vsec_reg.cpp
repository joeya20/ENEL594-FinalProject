// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "Vsec_reg.h"
#include "Vsec_reg__Syms.h"

//============================================================
// Constructors

Vsec_reg::Vsec_reg(VerilatedContext* _vcontextp__, const char* _vcname__)
    : vlSymsp{new Vsec_reg__Syms(_vcontextp__, _vcname__, this)}
    , clk{vlSymsp->TOP.clk}
    , reset_n{vlSymsp->TOP.reset_n}
    , lock_i{vlSymsp->TOP.lock_i}
    , re_i{vlSymsp->TOP.re_i}
    , we_i{vlSymsp->TOP.we_i}
    , data_i{vlSymsp->TOP.data_i}
    , out_o{vlSymsp->TOP.out_o}
    , rootp{&(vlSymsp->TOP)}
{
}

Vsec_reg::Vsec_reg(const char* _vcname__)
    : Vsec_reg(nullptr, _vcname__)
{
}

//============================================================
// Destructor

Vsec_reg::~Vsec_reg() {
    delete vlSymsp;
}

//============================================================
// Evaluation loop

void Vsec_reg___024root___eval_initial(Vsec_reg___024root* vlSelf);
void Vsec_reg___024root___eval_settle(Vsec_reg___024root* vlSelf);
void Vsec_reg___024root___eval(Vsec_reg___024root* vlSelf);
QData Vsec_reg___024root___change_request(Vsec_reg___024root* vlSelf);
#ifdef VL_DEBUG
void Vsec_reg___024root___eval_debug_assertions(Vsec_reg___024root* vlSelf);
#endif  // VL_DEBUG
void Vsec_reg___024root___final(Vsec_reg___024root* vlSelf);

static void _eval_initial_loop(Vsec_reg__Syms* __restrict vlSymsp) {
    vlSymsp->__Vm_didInit = true;
    Vsec_reg___024root___eval_initial(&(vlSymsp->TOP));
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial loop\n"););
        Vsec_reg___024root___eval_settle(&(vlSymsp->TOP));
        Vsec_reg___024root___eval(&(vlSymsp->TOP));
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = Vsec_reg___024root___change_request(&(vlSymsp->TOP));
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("sec_reg.v", 1, "",
                "Verilated model didn't DC converge\n"
                "- See https://verilator.org/warn/DIDNOTCONVERGE");
        } else {
            __Vchange = Vsec_reg___024root___change_request(&(vlSymsp->TOP));
        }
    } while (VL_UNLIKELY(__Vchange));
}

void Vsec_reg::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vsec_reg::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    Vsec_reg___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    // Initialize
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) _eval_initial_loop(vlSymsp);
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Clock loop\n"););
        Vsec_reg___024root___eval(&(vlSymsp->TOP));
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = Vsec_reg___024root___change_request(&(vlSymsp->TOP));
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("sec_reg.v", 1, "",
                "Verilated model didn't converge\n"
                "- See https://verilator.org/warn/DIDNOTCONVERGE");
        } else {
            __Vchange = Vsec_reg___024root___change_request(&(vlSymsp->TOP));
        }
    } while (VL_UNLIKELY(__Vchange));
}

//============================================================
// Invoke final blocks

void Vsec_reg::final() {
    Vsec_reg___024root___final(&(vlSymsp->TOP));
}

//============================================================
// Utilities

VerilatedContext* Vsec_reg::contextp() const {
    return vlSymsp->_vm_contextp__;
}

const char* Vsec_reg::name() const {
    return vlSymsp->name();
}
