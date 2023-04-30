#include <string.h>
#include "common_driver_fn.h"

//RRR
#ifdef SPIKE_RUN 
#include "mtrap.h" 
#endif


inline uint64_t readFromAddress(volatile uint64_t *base_addr, uint32_t offset) {
    volatile uint64_t *pAddress = base_addr + offset; 

    //RRR
    #ifndef SPIKE_RUN    
        return *((volatile uint64_t *)pAddress);
    #else
        //printf("reading from location %x \n",pAddress ); 
        return 1; 
    #endif


}

inline void writeToAddress(volatile uint64_t *base_addr, uint32_t offset, uint32_t pData) {
    volatile uint64_t *pAddress = base_addr + offset; 

    //RRR
    #ifndef SPIKE_RUN    
    *((volatile uint64_t *)pAddress) = pData;
    #else
        //printf("writing to %x, data = %x\n",pAddress, pData );
    #endif
}


inline void readMultiFromAddress(volatile uint64_t *base_addr, uint32_t offset, uint32_t *pData, int block_size) {
    volatile uint64_t *pAddress = base_addr + offset; 
    for(unsigned int i = 0; i < block_size; ++i) 
        pData[(block_size - 1) - i] = readFromAddress(pAddress, i);
}

inline void writeMultiToAddress(volatile uint64_t *base_addr, uint32_t offset, uint32_t *pData, int block_size) {
    volatile uint64_t *pAddress = base_addr + offset; 
    for(unsigned int i = 0; i < block_size; ++i) 
        writeToAddress(pAddress, ((block_size - 1) - i), pData[i]);
}

inline void writeMulticharToAddress(volatile uint64_t *base_addr, uint32_t offset, char *pData, int block_byte_size) {
    
    volatile uint64_t *pAddress = base_addr + offset; 
    uint32_t wdata; 
    int block_ptr = 0; 
    int block_size = block_byte_size / BYTES_PER_WORD ; 

    wdata = 0; 
    for(int i = (block_byte_size-1); i >= 0; i--) {
        wdata = ( wdata << 8 ) | ((*pData++) & 0xFF);
        
        if (i % BYTES_PER_WORD == 0)  {
            writeToAddress(pAddress, ((block_size - 1) - block_ptr) , wdata);
            block_ptr++; 
        }
    }
}

void do_delay(int wait_cycles) {
    for (int i=0; i<wait_cycles; i++)
        asm volatile ("nop \n\t") ;   
}


int verifyMulti(uint32_t *expectedData, uint32_t *receivedData, int block_size) {
    int match = 1; 
   
    for (int i=0; i<block_size; i++)
    {
        if (expectedData[i] != receivedData[i])
            return 0; 
    }

    return match; 
}

