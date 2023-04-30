// See LICENSE for license details.

#include <string.h>
#include "../piton/verif/diag/c/riscv/ariane/aes2.h"
#include "../piton/verif/diag/c/riscv/ariane/common_driver_fn.h"

#include "../piton/verif/diag/c/riscv/ariane/common_driver_fn.c"

volatile uint64_t* aes2 = 0xfff5209000 ;


int aes2_read_data(uint32_t *result)
{
    readMultiFromAddress((uint64_t *)aes2, AES2_RES_BASE, result, AES2_RES_WORDS); 
    return 0; 
}

int aes2_write_data(uint32_t *block, uint32_t key_sel)
{

    // Write the inputs
    writeMultiToAddress((uint64_t *)aes2, AES2_BLK_BASE, block, AES2_BLK_WORDS); 
    writeToAddress((uint64_t *)aes2, AES2_KEY_SEL, key_sel);

    return 0; 

}

int aes2_read_config(uint32_t *config_o)
{
    *config_o = readFromAddress((uint64_t *)aes2, AES2_STATUS_BASE); 
    return 0; 
}

int aes2_write_config(uint32_t config_i)
{
    writeToAddress((uint64_t *)aes2, AES2_ENC_DEC, config_i % 2);
    writeToAddress((uint64_t *)aes2, AES2_CTRL_BASE, (config_i/2) % 4);
    return 0; 

}

int aes2_encrypt(uint32_t *pt, uint32_t *ct, uint32_t key_sel)
{
    aes2_write_data(pt, key_sel); 
    aes2_write_config(1);
    aes2_write_config(3);
    aes2_write_config(1);
    aes2_write_config(5);
    aes2_write_config(1);

    do_delay(300); 

    aes2_read_data(ct); 
    return 0; 
}

int check_aes2()
{
    //// Give a test input and verify AES2 enryption
    printf("    Verifying AES2 crypto engine ...\n") ;
   
    // Input for AES2 encyption
    uint32_t pt[4]  = {0x6bc1bee2, 0x2e409f96, 0xe93d7e11, 0x7393172a};
    uint32_t key[8] = {0x2b7e1516, 0x28aed2a6, 0xabf71588, 0x09cf4f3c, 0x00000000, 0x00000000, 0x00000000, 0x00000000};
    uint32_t ct[AES2_RES_WORDS];
    uint32_t pt_deciphered[AES2_BLK_WORDS];
    uint32_t expectedCt[AES2_RES_WORDS] = {0x3ad77bb4, 0x0d7a3660, 0xa89ecaf3, 0x2466ef97};

    uint32_t key_sel = 0; 

    int aes2_working; 

    // Write the AES2 key 
    writeMultiToAddress((uint64_t *)aes2, AES2_KEY0_BASE, key, AES2_KEY_WORDS); 
    writeToAddress((uint64_t *)aes2, AES2_KEY0_LEN, 0);

    // call the aes2 encryption function
    aes2_encrypt(pt, ct, key_sel); 

    printf("encrypted data : %x %x %x %x\n", ct[0], ct[1], ct[2], ct[3]); 

    // Verify the Encrypted data
    aes2_working = verifyMulti(expectedCt, ct, AES2_RES_WORDS); 

    if (aes2_working)
        printf("    AES2 engine encryption successfully verified\n"); 
    else
        printf("    AES2 engine failed, disabling the crypto engine !\n");

    return aes2_working ;  
    
}

int main ()
{
    check_aes2(); 
    return 0; 
}
