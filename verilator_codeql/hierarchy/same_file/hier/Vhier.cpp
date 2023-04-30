// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "Vhier.h"
#include "Vhier__Syms.h"

//============================================================
// Constructors

Vhier::Vhier(VerilatedContext* _vcontextp__, const char* _vcname__)
    : vlSymsp{new Vhier__Syms(_vcontextp__, _vcname__, this)}
    , clk{vlSymsp->TOP.clk}
    , rst_n{vlSymsp->TOP.rst_n}
    , cfg{vlSymsp->TOP.cfg}
    , wd{vlSymsp->TOP.wd}
    , out{vlSymsp->TOP.out}
    , rootp{&(vlSymsp->TOP)}
{
}

Vhier::Vhier(const char* _vcname__)
    : Vhier(nullptr, _vcname__)
{
}

//============================================================
// Destructor

Vhier::~Vhier() {
    delete vlSymsp;
}

//============================================================
// Evaluation loop

void Vhier___024root___eval_initial(Vhier___024root* vlSelf);
void Vhier___024root___eval_settle(Vhier___024root* vlSelf);
void Vhier___024root___eval(Vhier___024root* vlSelf);
QData Vhier___024root___change_request(Vhier___024root* vlSelf);
#ifdef VL_DEBUG
void Vhier___024root___eval_debug_assertions(Vhier___024root* vlSelf);
#endif  // VL_DEBUG
void Vhier___024root___final(Vhier___024root* vlSelf);

static void _eval_initial_loop(Vhier__Syms* __restrict vlSymsp) {
    vlSymsp->__Vm_didInit = true;
    Vhier___024root___eval_initial(&(vlSymsp->TOP));
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial loop\n"););
        Vhier___024root___eval_settle(&(vlSymsp->TOP));
        Vhier___024root___eval(&(vlSymsp->TOP));
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = Vhier___024root___change_request(&(vlSymsp->TOP));
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("hier.sv", 1, "",
                "Verilated model didn't DC converge\n"
                "- See https://verilator.org/warn/DIDNOTCONVERGE");
        } else {
            __Vchange = Vhier___024root___change_request(&(vlSymsp->TOP));
        }
    } while (VL_UNLIKELY(__Vchange));
}

void Vhier::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vhier::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    Vhier___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    // Initialize
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) _eval_initial_loop(vlSymsp);
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Clock loop\n"););
        Vhier___024root___eval(&(vlSymsp->TOP));
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = Vhier___024root___change_request(&(vlSymsp->TOP));
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("hier.sv", 1, "",
                "Verilated model didn't converge\n"
                "- See https://verilator.org/warn/DIDNOTCONVERGE");
        } else {
            __Vchange = Vhier___024root___change_request(&(vlSymsp->TOP));
        }
    } while (VL_UNLIKELY(__Vchange));
}

//============================================================
// Invoke final blocks

void Vhier::final() {
    Vhier___024root___final(&(vlSymsp->TOP));
}

//============================================================
// Utilities

VerilatedContext* Vhier::contextp() const {
    return vlSymsp->_vm_contextp__;
}

const char* Vhier::name() const {
    return vlSymsp->name();
}
