// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "VFSM1__Syms.h"
#include "VFSM1.h"
#include "VFSM1___024root.h"

// FUNCTIONS
VFSM1__Syms::~VFSM1__Syms()
{
}

VFSM1__Syms::VFSM1__Syms(VerilatedContext* contextp, const char* namep,VFSM1* modelp)
    : VerilatedSyms{contextp}
    // Setup internal state of the Syms class
    , __Vm_modelp(modelp)
    // Setup module instances
    , TOP(namep)
{
    // Configure time unit / time precision
    _vm_contextp__->timeunit(-12);
    _vm_contextp__->timeprecision(-12);
    // Setup each module's pointers to their submodules
    // Setup each module's pointer back to symbol table (for public functions)
    TOP.__Vconfigure(this, true);
}
