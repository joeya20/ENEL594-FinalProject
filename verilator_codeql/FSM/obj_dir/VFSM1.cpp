// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "VFSM1.h"
#include "VFSM1__Syms.h"

//============================================================
// Constructors

VFSM1::VFSM1(VerilatedContext* _vcontextp__, const char* _vcname__)
    : vlSymsp{new VFSM1__Syms(_vcontextp__, _vcname__, this)}
    , rst_n{vlSymsp->TOP.rst_n}
    , clk{vlSymsp->TOP.clk}
    , out{vlSymsp->TOP.out}
    , rootp{&(vlSymsp->TOP)}
{
}

VFSM1::VFSM1(const char* _vcname__)
    : VFSM1(nullptr, _vcname__)
{
}

//============================================================
// Destructor

VFSM1::~VFSM1() {
    delete vlSymsp;
}

//============================================================
// Evaluation loop

void VFSM1___024root___eval_initial(VFSM1___024root* vlSelf);
void VFSM1___024root___eval_settle(VFSM1___024root* vlSelf);
void VFSM1___024root___eval(VFSM1___024root* vlSelf);
QData VFSM1___024root___change_request(VFSM1___024root* vlSelf);
#ifdef VL_DEBUG
void VFSM1___024root___eval_debug_assertions(VFSM1___024root* vlSelf);
#endif  // VL_DEBUG
void VFSM1___024root___final(VFSM1___024root* vlSelf);

static void _eval_initial_loop(VFSM1__Syms* __restrict vlSymsp) {
    vlSymsp->__Vm_didInit = true;
    VFSM1___024root___eval_initial(&(vlSymsp->TOP));
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial loop\n"););
        VFSM1___024root___eval_settle(&(vlSymsp->TOP));
        VFSM1___024root___eval(&(vlSymsp->TOP));
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = VFSM1___024root___change_request(&(vlSymsp->TOP));
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("FSM1.v", 1, "",
                "Verilated model didn't DC converge\n"
                "- See https://verilator.org/warn/DIDNOTCONVERGE");
        } else {
            __Vchange = VFSM1___024root___change_request(&(vlSymsp->TOP));
        }
    } while (VL_UNLIKELY(__Vchange));
}

void VFSM1::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VFSM1::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    VFSM1___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    // Initialize
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) _eval_initial_loop(vlSymsp);
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Clock loop\n"););
        VFSM1___024root___eval(&(vlSymsp->TOP));
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = VFSM1___024root___change_request(&(vlSymsp->TOP));
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("FSM1.v", 1, "",
                "Verilated model didn't converge\n"
                "- See https://verilator.org/warn/DIDNOTCONVERGE");
        } else {
            __Vchange = VFSM1___024root___change_request(&(vlSymsp->TOP));
        }
    } while (VL_UNLIKELY(__Vchange));
}

//============================================================
// Invoke final blocks

void VFSM1::final() {
    VFSM1___024root___final(&(vlSymsp->TOP));
}

//============================================================
// Utilities

VerilatedContext* VFSM1::contextp() const {
    return vlSymsp->_vm_contextp__;
}

const char* VFSM1::name() const {
    return vlSymsp->name();
}
