

#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>

void main()
{

   uint32_t* base_addr = (uint32_t *) 0x30000100; 

   *base_addr = 0xdeadbeef;  

   uint32_t x = *base_addr;
   uint32_t* temp_addr = (uint32_t *) 0x30000200;

   *temp_addr = x; 
   

   
}
