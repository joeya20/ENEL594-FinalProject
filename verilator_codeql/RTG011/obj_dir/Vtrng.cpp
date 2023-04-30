// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "Vtrng.h"
#include "Vtrng__Syms.h"

//============================================================
// Constructors

Vtrng::Vtrng(VerilatedContext* _vcontextp__, const char* _vcname__)
    : vlSymsp{new Vtrng__Syms(_vcontextp__, _vcname__, this)}
    , clk{vlSymsp->TOP.clk}
    , reset_n{vlSymsp->TOP.reset_n}
    , avalanche_noise{vlSymsp->TOP.avalanche_noise}
    , cs{vlSymsp->TOP.cs}
    , we{vlSymsp->TOP.we}
    , address{vlSymsp->TOP.address}
    , write_data{vlSymsp->TOP.write_data}
    , read_data{vlSymsp->TOP.read_data}
    , error{vlSymsp->TOP.error}
    , debug{vlSymsp->TOP.debug}
    , debug_update{vlSymsp->TOP.debug_update}
    , security_error{vlSymsp->TOP.security_error}
    , rootp{&(vlSymsp->TOP)}
{
}

Vtrng::Vtrng(const char* _vcname__)
    : Vtrng(nullptr, _vcname__)
{
}

//============================================================
// Destructor

Vtrng::~Vtrng() {
    delete vlSymsp;
}

//============================================================
// Evaluation loop

void Vtrng___024root___eval_initial(Vtrng___024root* vlSelf);
void Vtrng___024root___eval_settle(Vtrng___024root* vlSelf);
void Vtrng___024root___eval(Vtrng___024root* vlSelf);
QData Vtrng___024root___change_request(Vtrng___024root* vlSelf);
#ifdef VL_DEBUG
void Vtrng___024root___eval_debug_assertions(Vtrng___024root* vlSelf);
#endif  // VL_DEBUG
void Vtrng___024root___final(Vtrng___024root* vlSelf);

static void _eval_initial_loop(Vtrng__Syms* __restrict vlSymsp) {
    vlSymsp->__Vm_didInit = true;
    Vtrng___024root___eval_initial(&(vlSymsp->TOP));
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial loop\n"););
        Vtrng___024root___eval_settle(&(vlSymsp->TOP));
        Vtrng___024root___eval(&(vlSymsp->TOP));
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = Vtrng___024root___change_request(&(vlSymsp->TOP));
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("/home/joey/Desktop/test/RTG011/src/trng.v", 42, "",
                "Verilated model didn't DC converge\n"
                "- See https://verilator.org/warn/DIDNOTCONVERGE");
        } else {
            __Vchange = Vtrng___024root___change_request(&(vlSymsp->TOP));
        }
    } while (VL_UNLIKELY(__Vchange));
}

void Vtrng::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vtrng::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    Vtrng___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    // Initialize
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) _eval_initial_loop(vlSymsp);
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Clock loop\n"););
        Vtrng___024root___eval(&(vlSymsp->TOP));
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = Vtrng___024root___change_request(&(vlSymsp->TOP));
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("/home/joey/Desktop/test/RTG011/src/trng.v", 42, "",
                "Verilated model didn't converge\n"
                "- See https://verilator.org/warn/DIDNOTCONVERGE");
        } else {
            __Vchange = Vtrng___024root___change_request(&(vlSymsp->TOP));
        }
    } while (VL_UNLIKELY(__Vchange));
}

//============================================================
// Invoke final blocks

void Vtrng::final() {
    Vtrng___024root___final(&(vlSymsp->TOP));
}

//============================================================
// Utilities

VerilatedContext* Vtrng::contextp() const {
    return vlSymsp->_vm_contextp__;
}

const char* Vtrng::name() const {
    return vlSymsp->name();
}
