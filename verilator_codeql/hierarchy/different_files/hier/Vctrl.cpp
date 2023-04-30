// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "Vctrl.h"
#include "Vctrl__Syms.h"

//============================================================
// Constructors

Vctrl::Vctrl(VerilatedContext* _vcontextp__, const char* _vcname__)
    : vlSymsp{new Vctrl__Syms(_vcontextp__, _vcname__, this)}
    , clk{vlSymsp->TOP.clk}
    , rst_n{vlSymsp->TOP.rst_n}
    , cfg{vlSymsp->TOP.cfg}
    , wd{vlSymsp->TOP.wd}
    , out{vlSymsp->TOP.out}
    , rootp{&(vlSymsp->TOP)}
{
}

Vctrl::Vctrl(const char* _vcname__)
    : Vctrl(nullptr, _vcname__)
{
}

//============================================================
// Destructor

Vctrl::~Vctrl() {
    delete vlSymsp;
}

//============================================================
// Evaluation loop

void Vctrl___024root___eval_initial(Vctrl___024root* vlSelf);
void Vctrl___024root___eval_settle(Vctrl___024root* vlSelf);
void Vctrl___024root___eval(Vctrl___024root* vlSelf);
QData Vctrl___024root___change_request(Vctrl___024root* vlSelf);
#ifdef VL_DEBUG
void Vctrl___024root___eval_debug_assertions(Vctrl___024root* vlSelf);
#endif  // VL_DEBUG
void Vctrl___024root___final(Vctrl___024root* vlSelf);

static void _eval_initial_loop(Vctrl__Syms* __restrict vlSymsp) {
    vlSymsp->__Vm_didInit = true;
    Vctrl___024root___eval_initial(&(vlSymsp->TOP));
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial loop\n"););
        Vctrl___024root___eval_settle(&(vlSymsp->TOP));
        Vctrl___024root___eval(&(vlSymsp->TOP));
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = Vctrl___024root___change_request(&(vlSymsp->TOP));
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("ctrl.sv", 1, "",
                "Verilated model didn't DC converge\n"
                "- See https://verilator.org/warn/DIDNOTCONVERGE");
        } else {
            __Vchange = Vctrl___024root___change_request(&(vlSymsp->TOP));
        }
    } while (VL_UNLIKELY(__Vchange));
}

void Vctrl::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vctrl::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    Vctrl___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    // Initialize
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) _eval_initial_loop(vlSymsp);
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Clock loop\n"););
        Vctrl___024root___eval(&(vlSymsp->TOP));
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = Vctrl___024root___change_request(&(vlSymsp->TOP));
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("ctrl.sv", 1, "",
                "Verilated model didn't converge\n"
                "- See https://verilator.org/warn/DIDNOTCONVERGE");
        } else {
            __Vchange = Vctrl___024root___change_request(&(vlSymsp->TOP));
        }
    } while (VL_UNLIKELY(__Vchange));
}

//============================================================
// Invoke final blocks

void Vctrl::final() {
    Vctrl___024root___final(&(vlSymsp->TOP));
}

//============================================================
// Utilities

VerilatedContext* Vctrl::contextp() const {
    return vlSymsp->_vm_contextp__;
}

const char* Vctrl::name() const {
    return vlSymsp->name();
}
