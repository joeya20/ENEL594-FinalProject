// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "VFSM5.h"
#include "VFSM5__Syms.h"

//============================================================
// Constructors

VFSM5::VFSM5(VerilatedContext* _vcontextp__, const char* _vcname__)
    : vlSymsp{new VFSM5__Syms(_vcontextp__, _vcname__, this)}
    , clk{vlSymsp->TOP.clk}
    , rst_n{vlSymsp->TOP.rst_n}
    , secure{vlSymsp->TOP.secure}
    , secure_state{vlSymsp->TOP.secure_state}
    , out{vlSymsp->TOP.out}
    , rootp{&(vlSymsp->TOP)}
{
}

VFSM5::VFSM5(const char* _vcname__)
    : VFSM5(nullptr, _vcname__)
{
}

//============================================================
// Destructor

VFSM5::~VFSM5() {
    delete vlSymsp;
}

//============================================================
// Evaluation loop

void VFSM5___024root___eval_initial(VFSM5___024root* vlSelf);
void VFSM5___024root___eval_settle(VFSM5___024root* vlSelf);
void VFSM5___024root___eval(VFSM5___024root* vlSelf);
QData VFSM5___024root___change_request(VFSM5___024root* vlSelf);
#ifdef VL_DEBUG
void VFSM5___024root___eval_debug_assertions(VFSM5___024root* vlSelf);
#endif  // VL_DEBUG
void VFSM5___024root___final(VFSM5___024root* vlSelf);

static void _eval_initial_loop(VFSM5__Syms* __restrict vlSymsp) {
    vlSymsp->__Vm_didInit = true;
    VFSM5___024root___eval_initial(&(vlSymsp->TOP));
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial loop\n"););
        VFSM5___024root___eval_settle(&(vlSymsp->TOP));
        VFSM5___024root___eval(&(vlSymsp->TOP));
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = VFSM5___024root___change_request(&(vlSymsp->TOP));
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("FSM5.v", 1, "",
                "Verilated model didn't DC converge\n"
                "- See https://verilator.org/warn/DIDNOTCONVERGE");
        } else {
            __Vchange = VFSM5___024root___change_request(&(vlSymsp->TOP));
        }
    } while (VL_UNLIKELY(__Vchange));
}

void VFSM5::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VFSM5::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    VFSM5___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    // Initialize
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) _eval_initial_loop(vlSymsp);
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Clock loop\n"););
        VFSM5___024root___eval(&(vlSymsp->TOP));
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = VFSM5___024root___change_request(&(vlSymsp->TOP));
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("FSM5.v", 1, "",
                "Verilated model didn't converge\n"
                "- See https://verilator.org/warn/DIDNOTCONVERGE");
        } else {
            __Vchange = VFSM5___024root___change_request(&(vlSymsp->TOP));
        }
    } while (VL_UNLIKELY(__Vchange));
}

//============================================================
// Invoke final blocks

void VFSM5::final() {
    VFSM5___024root___final(&(vlSymsp->TOP));
}

//============================================================
// Utilities

VerilatedContext* VFSM5::contextp() const {
    return vlSymsp->_vm_contextp__;
}

const char* VFSM5::name() const {
    return vlSymsp->name();
}
