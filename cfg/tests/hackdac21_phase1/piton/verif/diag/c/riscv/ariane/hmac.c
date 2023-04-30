// See LICENSE for license details.

#include <string.h>
#include "../piton/verif/diag/c/riscv/ariane/hmac.h"
#include "../piton/verif/diag/c/riscv/ariane/common_driver_fn.h"

#include "../piton/verif/diag/c/riscv/ariane/common_driver_fn.c"

volatile uint64_t* hmac = 0xfff5203000 ;

int hmac_hashString(char *pString, uint32_t *hash, uint32_t use_key_hash)
{
    char *ptr = pString;
     

    // Send the message
    while (readFromAddress(hmac, HMAC_READY) == 0) {
        do_delay(HMAC_READY_DELAY); 
    }

    writeMulticharToAddress(hmac, HMAC_TEXT_BASE, pString, HMAC_TEXT_BYTES); 

    //strobeInit();
    if (use_key_hash) {
        writeToAddress(hmac, HMAC_NEXT_INIT, 0x5); 
        writeToAddress(hmac, HMAC_NEXT_INIT, 0x4); 
    } else {
        writeToAddress(hmac, HMAC_NEXT_INIT, 0x1); 
        writeToAddress(hmac, HMAC_NEXT_INIT, 0x0); 
    }

    // wait for HMAC to start
    do_delay(20); 

    // wait for valid output
    while (readFromAddress(hmac, HMAC_VALID) == 0) {
        do_delay(HMAC_VALID_DELAY); 
    }

    // Read the Hash
    readMultiFromAddress(hmac, HMAC_HASH_BASE, hash, HMAC_HASH_WORDS); 

    return 0; 

}


int check_hmac()
{
    //// Give a test input and verify AES enryption
    printf("    Verifying HMAC crypto engine ...\n") ;
   
    // Input for HMAC encyption
    char inputText[65] = "----> this is the message to test hmac mod for hackadac'20 <----";
    //char inputText[500] = "abc";
    uint32_t hash[HMAC_HASH_WORDS];
    uint32_t expectedHash[HMAC_HASH_WORDS] = {0xe2fcbb9f,0xe426e269,0xc1a1ade9,0xc9d53cb7,0xa086fbf3,0x75836f93,0xd5761d02,0x0ecd9fe8};
    uint32_t key[8] = {0x2b7e1516, 0x28aed2a6, 0xabf71588, 0x09cf4f3c, 0x2b7e1516, 0x28aed2a6, 0x2b7e1516, 0x28aed2a6};
    
    int hmac_working; 
    int use_key_hash = 0; 

    writeMultiToAddress(hmac, HMAC_KEY_BASE, key, HMAC_KEY_WORDS); 

    // call the hmac hashing function
    hmac_hashString(inputText, hash, use_key_hash);
    printf("encrypted data : %x %x %x %x\n", hash[0], hash[1], hash[2], hash[3]); 
    printf("encrypted data : %x %x %x %x\n", hash[4], hash[5], hash[6], hash[7]); 

    // Verify the Hash 
    hmac_working = verifyMulti(expectedHash, hash, HMAC_HASH_WORDS); 
    
    if (hmac_working)
        printf("    HMAC engine hashing successfully verified\n"); 
    else
        printf("    HMAC engine failed, disabling the crypto engine !\n");

    return hmac_working ;  
}

int main ()
{
    check_hmac(); 
    return 0; 
}
