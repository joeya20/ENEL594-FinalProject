// See LICENSE for license details.

#include <string.h>
#include "../piton/verif/diag/c/riscv/ariane/aes.h"
#include "../piton/verif/diag/c/riscv/ariane/common_driver_fn.h"

#include "../piton/verif/diag/c/riscv/ariane/common_driver_fn.c"

volatile uint64_t* aes = 0xfff5200000 ;


int aes_start_encrypt(uint32_t *pt, uint32_t *st, uint32_t key_sel)
{

    // Write the inputs
    writeToAddress((uint64_t *)aes, AES_KEY_SEL, key_sel); 
    writeMultiToAddress((uint64_t *)aes, AES_PT_BASE, pt, AES_PT_WORDS); 
    writeMultiToAddress((uint64_t *)aes, AES_ST_BASE, st, AES_ST_WORDS); 

    // Start the AES encryption
    writeToAddress((uint64_t *)aes, AES_START, 0x0);
    writeToAddress((uint64_t *)aes, AES_START, 0x1);

    // Wait to see that START has been asserted to make sure DONE has a valid value
    while (readFromAddress((uint64_t *)aes, AES_START) == 0) {
        do_delay(AES_START_DELAY); 
    }
    writeToAddress((uint64_t *)aes, AES_START, 0x0);
    return 0; 

}

int aes_wait()
{
     // Wait for valid output
    while (readFromAddress((uint64_t *)aes, AES_DONE) == 0) {
        do_delay(AES_DONE_DELAY); 
    }

    return 0; 

}

int aes_data_out(uint32_t *ct)
{
    // Read the Encrypted data
    readMultiFromAddress((uint64_t *)aes, AES_CT_BASE, ct, AES_CT_WORDS);

    return 0; 
}


int aes_encrypt(uint32_t *pt, uint32_t *st, uint32_t *ct, uint32_t key_sel)
{
    aes_start_encrypt(pt, st,key_sel); 
    //aes_wait();
    aes_data_out(ct); 
    return 0; 
}

int check_aes()
{
    //// Give a test input and verify AES enryption
    printf("    Verifying AES crypto engine ...\n") ;
   
    // Input for AES encyption
    uint32_t pt[4]  = {0x00001111, 0x22223333, 0x44445555, 0x66667777};
    uint32_t st[4]  = {0x3243f6a8, 0x885a308d, 0x313198a2, 0xe0370734};
    uint32_t key[6] = {0x2b7e1516, 0x28aed2a6, 0xabf71588, 0x09cf4f3c, 0x2b7e1516, 0x28aed2a6};
    uint32_t ct[AES_CT_WORDS];
    uint32_t pt_deciphered[AES_PT_WORDS];
    uint32_t expectedCt[AES_CT_WORDS] = {0x4fcb9ca9, 0x75a691f2, 0xff338e2b, 0xb85460db};

    uint32_t key_sel = 0; 

    int aes_working; 

    // Write the AES key 
    writeMultiToAddress((uint64_t *)aes, AES_KEY0_BASE, key, AES_KEY_WORDS); 

    // call the aes encryption function
    aes_encrypt(pt, st, ct, key_sel); 

    printf("encrypted data : %x %x %x %x\n", ct[0], ct[1], ct[2], ct[3]); 

    // Verify the Encrypted data
    aes_working = verifyMulti(expectedCt, ct, AES_CT_WORDS); 

    if (aes_working)
        printf("    AES engine encryption successfully verified\n"); 
    else
        printf("    AES engine failed, disabling the crypto engine !\n");

    return aes_working ;  
    
}

int main ()
{
    check_aes(); 
    return 0; 
}
