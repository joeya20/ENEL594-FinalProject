// See LICENSE for license details.

#ifndef _RISCV_REGLK_H
#define _RISCV_REGLK_H

#include <stdint.h>

extern volatile uint64_t* reglk = 0xfff5206000;

// REGLK peripheral
#define REGLK_WORDS 6
#define REGLK_BYTES (REGLK_WORDS*BYTES_PER_WORD)

#define REGLK_HMAC 0x00
#define REGLK_REGLK 0xcf
#define REGLK_ACCT 0x3f
#define REGLK_PKT 0xcf
#define REGLK_SHA256 0x00
#define REGLK_AES1 0x2c
#define REGLK_AES0 0x20

void query_reglk(uintptr_t dtb);

#endif
