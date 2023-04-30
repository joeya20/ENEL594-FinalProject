// See LICENSE for license details.

#ifndef _RISCV_AES2_H
#define _RISCV_AES2_H

#include <stdint.h>

extern volatile uint64_t* aes2;


#define AES2_ENCRYPT_ID 0
#define AES2_DECRYPT_ID 1


#define AES2_REG_TXFIFO		2
#define AES2_REG_RXFIFO		1
#define AES2_REG_TXCTRL		2
#define AES2_REG_RXCTRL		3
#define AES2_REG_DIV		4

#define AES2_TXEN		 0x1
#define AES2_RXEN		 0x1


#define AES2_START_DELAY 1
#define AES2_DONE_DELAY 4

// peripheral registers
#define AES2_NO_KEYS 3
#define AES2_BLK_BITS   128
#define AES2_RES_BITS   128
#define AES2_KEY_BITS   128
#define AES2_ENC_DEC_WORDS 1
#define AES2_KEY_LEN_WORDS 1
#define AES2_BLK_WORDS (AES2_BLK_BITS / BITS_PER_WORD)
#define AES2_RES_WORDS (AES2_RES_BITS / BITS_PER_WORD)
#define AES2_KEY_WORDS (AES2_KEY_BITS / BITS_PER_WORD)

#define AES2_CTRL_BASE  8
#define AES2_STATUS_BASE  9
#define AES2_ENC_DEC   10
#define AES2_KEY0_LEN   ( AES2_ENC_DEC      + AES2_ENC_DEC_WORDS )
#define AES2_KEY1_LEN   ( AES2_KEY0_LEN     + AES2_KEY_LEN_WORDS )
#define AES2_KEY2_LEN   ( AES2_KEY1_LEN     + AES2_KEY_LEN_WORDS )
#define AES2_KEY_SEL    ( AES2_KEY2_LEN     + AES2_KEY_LEN_WORDS )

#define AES2_KEY0_BASE 16
#define AES2_KEY1_BASE 32
#define AES2_KEY2_BASE 48
#define AES2_BLK_BASE  64
#define AES2_RES_BASE  80


int aes2_read_data(uint32_t *result); 
int aes2_write_data(uint32_t *block, uint32_t key_sel); 
int aes2_read_config(uint32_t *config_o);
int aes2_write_config(uint32_t config_i);
int aes2_encrypt(uint32_t *pt, uint32_t *ct, uint32_t key_sel);
int check_aes2();

#endif
