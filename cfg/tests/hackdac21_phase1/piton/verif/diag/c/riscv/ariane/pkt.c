// See LICENSE for license details.

#include <string.h>
#include "../piton/verif/diag/c/riscv/ariane/pkt.h"
#include "../piton/verif/diag/c/riscv/ariane/reglk.h"
#include "../piton/verif/diag/c/riscv/ariane/aes1.h"
#include "../piton/verif/diag/c/riscv/ariane/common_driver_fn.h"

#include "../piton/verif/diag/c/riscv/ariane/common_driver_fn.c"

volatile uint64_t* pkt = 0xfff5204000;


//volatile uint64_t* aes1;
volatile uint64_t* aes1 = 0xfff5201000 ;
volatile uint64_t* reglk;

int pkt_copy_fuse_data(int aes0_working, int aes1_working, int sha256_working, int hmac_working)
{
    int i, j;
    volatile uint32_t rdata, wdata, data; 
    volatile uint64_t waddr; 
    char reglk_bytes[REGLK_BYTES]; 
    reglk_blk reglk_blk_data; 


    //---------------------------------------------------
    // Check if the crypto engines are working properly
    //---------------------------------------------------
      if (!aes0_working) {
          reglk_bytes[AES0_ID]  =  0xff; // lock all registers 
      }

      if (!aes1_working) 
          reglk_bytes[AES1_ID]  =  0xff; // lock all registers 

      if (!sha256_working) {
          reglk_bytes[SHA256_ID]  =  0xff; // lock all registers 
      }

      if (!hmac_working) 
          reglk_bytes[HMAC_ID]  =  0xff; // lock all registers 



    printf("    Setting the FUSE data\n");  

    // Enable the fuse request
    wdata = 0x1; 
    writeToAddress(pkt, PKT_FUSE_REQ, wdata);   

    // Set the Access Control Registers
    for (int acct_word=PKT_ACCT_BASE_INDX; acct_word<(PKT_ACCT_BASE_INDX+PKT_ACCT_WORDS); acct_word++)
    {
        wdata = acct_word ; 
        writeToAddress(pkt, PKT_FUSE_RADDR, wdata);   
        asm volatile ("nop \n\t") ;  // 1 cycle gap to allow data to be loaded
        waddr = readFromAddress(pkt, PKT_WADDR_MSB);
        waddr = (waddr << 32) | readFromAddress(pkt, PKT_WADDR_LSB);
        wdata = readFromAddress(pkt, PKT_FUSE_RDATA);  
        //writeToAddress(0, waddr/4, wdata); 
        writeToAddress((uint64_t *)waddr, 0,  wdata); 
    } 

    // Set the AES keys only if it is working
    if (aes0_working)
    {
      for (int aes_word=PKT_AES0_BASE_INDX; aes_word<(PKT_AES0_BASE_INDX+(AES0_NO_KEYS*PKT_AES0_WORDS)); aes_word++)
      {
          wdata = aes_word ; 
          writeToAddress((uint64_t *)pkt, PKT_FUSE_RADDR, wdata);   
          asm volatile ("nop \n\t") ;  // 1 cycle gap to allow data to be loaded
          waddr = readFromAddress(pkt, PKT_WADDR_MSB);
          waddr = (waddr << 32) | readFromAddress(pkt, PKT_WADDR_LSB);
          wdata = readFromAddress(pkt, PKT_FUSE_RDATA);  
          //writeToAddress(0, waddr/4, wdata); 
          writeToAddress((uint64_t *)waddr, 0,  wdata); 
      }
    }  
    if (aes1_working)
    {
      for (int aes_word=PKT_AES1_BASE_INDX; aes_word<(PKT_AES1_BASE_INDX+(AES1_NO_KEYS*PKT_AES1_WORDS)); aes_word++)
      {
          wdata = aes_word ; 
          writeToAddress((uint64_t *)pkt, PKT_FUSE_RADDR, wdata);   
          asm volatile ("nop \n\t") ;  // 1 cycle gap to allow data to be loaded
          waddr = readFromAddress(pkt, PKT_WADDR_MSB);
          waddr = (waddr << 32) | readFromAddress(pkt, PKT_WADDR_LSB);
          wdata = readFromAddress(pkt, PKT_FUSE_RDATA);  
          //writeToAddress(0, waddr/4, wdata); 
          writeToAddress((uint64_t *)waddr, 0,  wdata); 
      }
      writeToAddress(aes1, AES1_KEY0_LEN, 0);
      writeToAddress(aes1, AES1_KEY1_LEN, 1);
      writeToAddress(aes1, AES1_KEY2_LEN, 1);
    }  
    if (hmac_working)
    {
      for (int hmac_word=PKT_HMAC_KEY_BASE_INDX; hmac_word<(PKT_HMAC_KEY_BASE_INDX+PKT_HMAC_KEY_WORDS); hmac_word++)
      {
          wdata = hmac_word ; 
          writeToAddress(pkt, PKT_FUSE_RADDR, wdata);   
          asm volatile ("nop \n\t") ;  // 1 cycle gap to allow data to be loaded
          waddr = readFromAddress(pkt, PKT_WADDR_MSB);
          waddr = (waddr << 32) | readFromAddress(pkt, PKT_WADDR_LSB);
          wdata = readFromAddress(pkt, PKT_FUSE_RDATA);  
          //writeToAddress(0, waddr/4, wdata); 
          writeToAddress((uint64_t *)waddr, 0,  wdata); 
      }
      for (int hmac_word=PKT_HMAC_iKEY_BASE_INDX; hmac_word<(PKT_HMAC_iKEY_BASE_INDX+PKT_HMAC_KEY_WORDS); hmac_word++)
      {
          wdata = hmac_word ; 
          writeToAddress(pkt, PKT_FUSE_RADDR, wdata);   
          asm volatile ("nop \n\t") ;  // 1 cycle gap to allow data to be loaded
          waddr = readFromAddress(pkt, PKT_WADDR_MSB);
          waddr = (waddr << 32) | readFromAddress(pkt, PKT_WADDR_LSB);
          wdata = readFromAddress(pkt, PKT_FUSE_RDATA);  
          //writeToAddress(0, waddr/4, wdata); 
          writeToAddress((uint64_t *)waddr, 0,  wdata); 
      }
      for (int hmac_word=PKT_HMAC_oKEY_BASE_INDX; hmac_word<(PKT_HMAC_oKEY_BASE_INDX+PKT_HMAC_KEY_WORDS); hmac_word++)
      {
          wdata = hmac_word ; 
          writeToAddress(pkt, PKT_FUSE_RADDR, wdata);   
          asm volatile ("nop \n\t") ;  // 1 cycle gap to allow data to be loaded
          waddr = readFromAddress(pkt, PKT_WADDR_MSB);
          waddr = (waddr << 32) | readFromAddress(pkt, PKT_WADDR_LSB);
          wdata = readFromAddress(pkt, PKT_FUSE_RDATA);  
          //writeToAddress(0, waddr/4, wdata); 
          writeToAddress((uint64_t *)waddr, 0,  wdata); 
      }
    }  

    // Disable the fuse request
    wdata = 0x0; 
    writeToAddress(pkt, PKT_FUSE_REQ, wdata);   


  //---------------------------------------------------
  // Set the Register locks
  //---------------------------------------------------
    printf("    Setting the register locks\n");

    for (int reglk_word=0; reglk_word<REGLK_BYTES; reglk_word++)
    {
        reglk_bytes[reglk_word] = 0; // by default no locks are set
    }
    reglk_bytes[HMAC_ID]  =  hmac_working ? REGLK_HMAC : 0xff; 
    reglk_bytes[REGLK_ID] =  REGLK_REGLK; 
    reglk_bytes[ACCT_ID] =  REGLK_ACCT; 
    reglk_bytes[PKT_ID] =  REGLK_PKT; 
    reglk_bytes[SHA256_ID]  =  sha256_working ? REGLK_SHA256 : 0xff; 
    reglk_bytes[AES1_ID]  =  aes1_working ? REGLK_AES1 : 0xff; 
    reglk_bytes[AES0_ID]  =  aes0_working ? REGLK_AES0 : 0xff; 
    
    for (int reglk_word=0; reglk_word<REGLK_WORDS; reglk_word++)
    {
        reglk_blk_data.slave_byte.s0 = reglk_bytes[reglk_word*4+0]; 
        reglk_blk_data.slave_byte.s1 = reglk_bytes[reglk_word*4+1]; 
        reglk_blk_data.slave_byte.s2 = reglk_bytes[reglk_word*4+2]; 
        reglk_blk_data.slave_byte.s3 = reglk_bytes[reglk_word*4+3]; 
        writeToAddress(reglk,  reglk_word, reglk_blk_data.word);   
    } 
   
    return 0; 
}
 
int main ()
{
    pkt_copy_fuse_data(1,1,1,1); 
    return 0; 
}
