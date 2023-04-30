// See LICENSE for license details.

#include <string.h>
#include "../piton/verif/diag/c/riscv/ariane/dma.h"
//#include "../piton/verif/diag/c/riscv/ariane/common_driver_fn.h"

#include "../piton/verif/diag/c/riscv/ariane/common_driver_fn.c"


volatile uint64_t* dma = 0xfff5207000 ;
volatile uint64_t* aes = 0xfff5200000 ;


int dma_transfer(uint32_t sAddress_lsb, uint32_t sAddress_msb, uint32_t dAddress_lsb, uint32_t dAddress_msb, uint32_t length, uint32_t wait) {
    
    uint32_t rdata; 

    // get the lock
    writeToAddress(dma, DMA_LOCK, 2); 
    while (readFromAddress(dma, DMA_LOCK) != 2) {
        do_delay(DMA_WAIT_DELAY); 
        writeToAddress(dma, DMA_LOCK, 2); 
    }

    // Configure the DMA
    writeToAddress(dma, DMA_SRC_ADDR_LSB, sAddress_lsb);  
    writeToAddress(dma, DMA_SRC_ADDR_MSB, sAddress_msb);  
    writeToAddress(dma, DMA_DST_ADDR_LSB, dAddress_lsb);  
    writeToAddress(dma, DMA_DST_ADDR_MSB, dAddress_msb);  
    writeToAddress(dma, DMA_LENGTH, length); 

    // State the DMA
    writeToAddress(dma, DMA_START, 0x01); 
    writeToAddress(dma, DMA_LOCK, 0); 

    // If wait == 1, wait till transfer is done
    if (wait) {
        while (readFromAddress(dma, DMA_DONE) != 1) {
            do_delay(DMA_WAIT_DELAY); 
        }
    }

    writeToAddress(dma, DMA_END, 1); 

    return 0; 
}

int main() {

    int data[44] = {0x12345670, 0xabcdef12, 0xdeadbeef, 0xaedcb489}; 
    dma_transfer(data, (((uint64_t)data)>>32), (uint64_t )aes, (((uint64_t)aes)>>32), 16,1);
    return 0; 
}
