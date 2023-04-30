// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "Vconditionals_cont_tern.h"
#include "Vconditionals_cont_tern__Syms.h"

//============================================================
// Constructors

Vconditionals_cont_tern::Vconditionals_cont_tern(VerilatedContext* _vcontextp__, const char* _vcname__)
    : vlSymsp{new Vconditionals_cont_tern__Syms(_vcontextp__, _vcname__, this)}
    , clk{vlSymsp->TOP.clk}
    , reset_n{vlSymsp->TOP.reset_n}
    , en{vlSymsp->TOP.en}
    , data{vlSymsp->TOP.data}
    , out_assign_ternary{vlSymsp->TOP.out_assign_ternary}
    , rootp{&(vlSymsp->TOP)}
{
}

Vconditionals_cont_tern::Vconditionals_cont_tern(const char* _vcname__)
    : Vconditionals_cont_tern(nullptr, _vcname__)
{
}

//============================================================
// Destructor

Vconditionals_cont_tern::~Vconditionals_cont_tern() {
    delete vlSymsp;
}

//============================================================
// Evaluation loop

void Vconditionals_cont_tern___024root___eval_initial(Vconditionals_cont_tern___024root* vlSelf);
void Vconditionals_cont_tern___024root___eval_settle(Vconditionals_cont_tern___024root* vlSelf);
void Vconditionals_cont_tern___024root___eval(Vconditionals_cont_tern___024root* vlSelf);
QData Vconditionals_cont_tern___024root___change_request(Vconditionals_cont_tern___024root* vlSelf);
#ifdef VL_DEBUG
void Vconditionals_cont_tern___024root___eval_debug_assertions(Vconditionals_cont_tern___024root* vlSelf);
#endif  // VL_DEBUG
void Vconditionals_cont_tern___024root___final(Vconditionals_cont_tern___024root* vlSelf);

static void _eval_initial_loop(Vconditionals_cont_tern__Syms* __restrict vlSymsp) {
    vlSymsp->__Vm_didInit = true;
    Vconditionals_cont_tern___024root___eval_initial(&(vlSymsp->TOP));
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial loop\n"););
        Vconditionals_cont_tern___024root___eval_settle(&(vlSymsp->TOP));
        Vconditionals_cont_tern___024root___eval(&(vlSymsp->TOP));
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = Vconditionals_cont_tern___024root___change_request(&(vlSymsp->TOP));
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("conditionals_cont_tern.sv", 1, "",
                "Verilated model didn't DC converge\n"
                "- See https://verilator.org/warn/DIDNOTCONVERGE");
        } else {
            __Vchange = Vconditionals_cont_tern___024root___change_request(&(vlSymsp->TOP));
        }
    } while (VL_UNLIKELY(__Vchange));
}

void Vconditionals_cont_tern::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vconditionals_cont_tern::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    Vconditionals_cont_tern___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    // Initialize
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) _eval_initial_loop(vlSymsp);
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Clock loop\n"););
        Vconditionals_cont_tern___024root___eval(&(vlSymsp->TOP));
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = Vconditionals_cont_tern___024root___change_request(&(vlSymsp->TOP));
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("conditionals_cont_tern.sv", 1, "",
                "Verilated model didn't converge\n"
                "- See https://verilator.org/warn/DIDNOTCONVERGE");
        } else {
            __Vchange = Vconditionals_cont_tern___024root___change_request(&(vlSymsp->TOP));
        }
    } while (VL_UNLIKELY(__Vchange));
}

//============================================================
// Invoke final blocks

void Vconditionals_cont_tern::final() {
    Vconditionals_cont_tern___024root___final(&(vlSymsp->TOP));
}

//============================================================
// Utilities

VerilatedContext* Vconditionals_cont_tern::contextp() const {
    return vlSymsp->_vm_contextp__;
}

const char* Vconditionals_cont_tern::name() const {
    return vlSymsp->name();
}
