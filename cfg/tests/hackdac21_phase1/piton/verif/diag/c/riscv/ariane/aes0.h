// See LICENSE for license details.

#ifndef _RISCV_AES_H
#define _RISCV_AES_H

#include <stdint.h>

extern volatile uint64_t* aes;


#define AES0_ENCRYPT_ID 0
#define AES0_DECRYPT_ID 1


#define AES0_REG_TXFIFO		2
#define AES0_REG_RXFIFO		1
#define AES0_REG_TXCTRL		2
#define AES0_REG_RXCTRL		3
#define AES0_REG_DIV		4

#define AES0_TXEN		 0x1
#define AES0_RXEN		 0x1


#define AES0_START_DELAY 1
#define AES0_DONE_DELAY 4

// peripheral registers
#define AES0_NO_KEYS 3
#define AES0_PT_BITS   128
#define AES0_ST_BITS   128
#define AES0_KEY_BITS   192
#define AES0_CT_BITS   128
#define AES0_START_WORDS  1
#define AES0_DONE_WORDS   1
#define AES0_PT_WORDS  (AES0_PT_BITS / BITS_PER_WORD)
#define AES0_ST_WORDS  (AES0_ST_BITS / BITS_PER_WORD)
#define AES0_KEY_WORDS (AES0_KEY_BITS / BITS_PER_WORD)
#define AES0_CT_WORDS  (AES0_CT_BITS / BITS_PER_WORD)


#define AES0_START   0
#define AES0_PT_BASE   ( AES0_START     + AES0_START_WORDS )
#define AES0_KEY0_BASE ( AES0_PT_BASE   + AES0_PT_WORDS )
#define AES0_DONE      ( AES0_KEY0_BASE + AES0_KEY_WORDS )
#define AES0_CT_BASE   ( AES0_DONE      + AES0_DONE_WORDS )
#define AES0_ST_BASE   ( AES0_CT_BASE   + AES0_CT_WORDS )
#define AES0_KEY1_BASE ( AES0_ST_BASE   + AES0_ST_WORDS )
#define AES0_KEY2_BASE ( AES0_KEY1_BASE + AES0_KEY_WORDS )
#define AES0_KEY_SEL   ( AES0_KEY2_BASE + AES0_KEY_WORDS )


int aes_start_encrypt(uint32_t *pt, uint32_t *st, uint32_t key_sel); 
int aes_wait(); 
int aes_data_out(uint32_t *ct); 
int aes_encrypt(uint32_t *pt, uint32_t *st, uint32_t *ct, uint32_t key_sel);

#endif
