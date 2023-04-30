// See LICENSE for license details.

#include <string.h>
#include "../piton/verif/diag/c/riscv/ariane/aes1.h"
#include "../piton/verif/diag/c/riscv/ariane/common_driver_fn.h"

#include "../piton/verif/diag/c/riscv/ariane/common_driver_fn.c"

volatile uint64_t* aes1 = 0xfff5201000 ;


int aes1_read_data(uint32_t *result)
{
    readMultiFromAddress((uint64_t *)aes1, AES1_RES_BASE, result, AES1_RES_WORDS); 
    return 0; 
}

int aes1_write_data(uint32_t *block, uint32_t key_sel)
{

    // Write the inputs
    writeMultiToAddress((uint64_t *)aes1, AES1_BLK_BASE, block, AES1_BLK_WORDS); 
    writeToAddress((uint64_t *)aes1, AES1_KEY_SEL, key_sel);

    return 0; 

}

int aes1_read_config(uint32_t *config_o)
{
    *config_o = readFromAddress((uint64_t *)aes1, AES1_STATUS_BASE); 
    return 0; 
}

int aes1_write_config(uint32_t config_i)
{
    writeToAddress((uint64_t *)aes1, AES1_ENC_DEC, config_i % 2);
    writeToAddress((uint64_t *)aes1, AES1_CTRL_BASE, (config_i/2) % 4);
    return 0; 

}

int aes1_encrypt(uint32_t *pt, uint32_t *ct, uint32_t key_sel)
{
    aes1_write_data(pt, key_sel); 
    aes1_write_config(1);
    aes1_write_config(3);
    aes1_write_config(1);
    aes1_write_config(5);
    aes1_write_config(1);

    do_delay(300); 

    aes1_read_data(ct); 
    return 0; 
}

int check_aes1()
{
    //// Give a test input and verify AES1 enryption
    printf("    Verifying AES1 crypto engine ...\n") ;
   
    // Input for AES1 encyption
    uint32_t pt[4]  = {0x6bc1bee2, 0x2e409f96, 0xe93d7e11, 0x7393172a};
    uint32_t key[8] = {0x2b7e1516, 0x28aed2a6, 0xabf71588, 0x09cf4f3c, 0x00000000, 0x00000000, 0x00000000, 0x00000000};
    uint32_t ct[AES1_RES_WORDS];
    uint32_t pt_deciphered[AES1_BLK_WORDS];
    uint32_t expectedCt[AES1_RES_WORDS] = {0x3ad77bb4, 0x0d7a3660, 0xa89ecaf3, 0x2466ef97};

    uint32_t key_sel = 0; 

    int aes1_working; 

    // Write the AES1 key 
    writeMultiToAddress((uint64_t *)aes1, AES1_KEY0_BASE, key, AES1_KEY_WORDS); 
    writeToAddress((uint64_t *)aes1, AES1_KEY0_LEN, 0);

    // call the aes1 encryption function
    aes1_encrypt(pt, ct, key_sel); 

    printf("encrypted data : %x %x %x %x\n", ct[0], ct[1], ct[2], ct[3]); 

    // Verify the Encrypted data
    aes1_working = verifyMulti(expectedCt, ct, AES1_RES_WORDS); 

    if (aes1_working)
        printf("    AES1 engine encryption successfully verified\n"); 
    else
        printf("    AES1 engine failed, disabling the crypto engine !\n");

    return aes1_working ;  
    
}

int main ()
{
    check_aes1(); 
    return 0; 
}
