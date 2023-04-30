// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "VopenMSP430__Syms.h"
#include "VopenMSP430.h"
#include "VopenMSP430___024root.h"

// FUNCTIONS
VopenMSP430__Syms::~VopenMSP430__Syms()
{
}

VopenMSP430__Syms::VopenMSP430__Syms(VerilatedContext* contextp, const char* namep,VopenMSP430* modelp)
    : VerilatedSyms{contextp}
    // Setup internal state of the Syms class
    , __Vm_modelp(modelp)
    // Setup module instances
    , TOP(namep)
{
    // Configure time unit / time precision
    _vm_contextp__->timeunit(-9);
    _vm_contextp__->timeprecision(-12);
    // Setup each module's pointers to their submodules
    // Setup each module's pointer back to symbol table (for public functions)
    TOP.__Vconfigure(this, true);
}
