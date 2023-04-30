// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "Vtrng__Syms.h"
#include "Vtrng.h"
#include "Vtrng___024root.h"

// FUNCTIONS
Vtrng__Syms::~Vtrng__Syms()
{
}

Vtrng__Syms::Vtrng__Syms(VerilatedContext* contextp, const char* namep,Vtrng* modelp)
    : VerilatedSyms{contextp}
    // Setup internal state of the Syms class
    , __Vm_modelp(modelp)
    // Setup module instances
    , TOP(namep)
{
    // Configure time unit / time precision
    _vm_contextp__->timeunit(-9);
    _vm_contextp__->timeprecision(-10);
    // Setup each module's pointers to their submodules
    // Setup each module's pointer back to symbol table (for public functions)
    TOP.__Vconfigure(this, true);
}
