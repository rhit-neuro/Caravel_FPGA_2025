/*
 * SPDX-FileCopyrightText: 2020 Efabless Corporation
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * SPDX-License-Identifier: Apache-2.0
 */

 #include <defs.h>   

 // --------------------------------------------------------
 
 /*
  *	Management SoC GPIO Pin Test
  *		Tests writing to the GPIO pin.
  */

#define LUT1  (*(uint32_t *)0x30501000) //LUT function 1 address
#define memory1  (*(uint32_t *)0x30000600)
#define memory2  (*(uint32_t *)0x30000604)
#define memory3  (*(uint32_t *)0x30000608)
#define memory4  (*(uint32_t *)0x3000060c)
 
 void loadMemory() {
     uint32_t *base_address; // address variable
 
     // load V tables into memory
     base_address = (uint32_t *) 0x30501100;
 
     *base_address = (uint32_t) 0xc1400000; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0xc1339ce7; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0xc12739ce; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0xc11ad6b6; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0xc10e739d; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0xc1021084; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0xc0eb5ad7; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0xc0d294a5; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0xc0b9ce74; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0xc0a10842; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0xc0884211; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0xc05ef7be; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0xc02d6b5b; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0xbff7bdef; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0xbf94a529; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0xbec6318c; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x3ec6318c; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x3f94a529; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x3ff7bdef; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x402d6b5b; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x405ef7be; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x40884211; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x40a10842; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x40b9ce74; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x40d294a5; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x40eb5ad7; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x41021084; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x410e739d; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x411ad6b6; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x412739ce; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x41339ce7; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x41400000; 
     
     // load m tables into memory
     base_address = (uint32_t *)0x30501200;
 
     *base_address = (uint32_t) 0x2d0300f8; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x2d4060f1; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x2d8d106e; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x2dce77a8; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x2e16a99c; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x2e5af5bd;  
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x2e9e2423; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x2ee26e13;  
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x2f2013fd; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x2f5e5c5d; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x2f96b166;  
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x2fc5978a; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x2ff82098; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x30139b48; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x3024bece;  
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x302b4298;  
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x30255ee9; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x3014b0d0; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x2ffab81f;  
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x2fc8292a;  
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x2f98f436; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x2f62086a; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x2f22e602; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x2ee69932; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x2ea123f7; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x2e5f329a;  
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x2e199e6b; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x2dd28e83;  
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x2d8fe039; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x2d443acf; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x2d05a248;  
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x2cb5d776; 
    
     // load b tables into memory
     base_address = (uint32_t *)0x30501300;
 
     *base_address = (uint32_t) 0x2edf6c30; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x2f1ac5d1; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x2f556648; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x2f924217; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x2fc70ab8; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x3006386d; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x3032f513;  
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x306b2160;  
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x30979427; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x30bec1ae; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x30e8d17e; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x3108d53a; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x3119f322; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x3125576a;  
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x312a5136;  
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x312af29c;  
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x312b8484; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x31305c39;  
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x313ba643;  
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x314cc62b;  
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x316154f8;  
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x317696c7; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x3185390f; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x318ddc1f; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x3195006f; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x319ab1ea; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x319f1d22; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x31a279e8; 
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x31a4ff34;  
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x31a6dd7b;  
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x31a83cd3;  
     base_address = base_address + 1;
     *base_address = (uint32_t) 0x31a93d1a;
 }
 
 // Sets up the config files for the DMA 
 // (Control register, length register, src address, dst address)
 void dma_config(uint32_t control_value, uint32_t length_value, uint32_t from_value, uint32_t to_value) {
          uint32_t *length = (uint32_t *)0x3040000c;
          int32_t *to = (uint32_t *)0x30400008;
          uint32_t *from = (uint32_t *)0x30400004;
          uint32_t *control = (uint32_t *)0x30400000;
 
         // Write to the Length Register
         *length = length_value;
 
         // Write to the Destination Register    
         *to = to_value;   
         
         // Write to the Source Register
         *from = from_value; 
         
         // Write to the Control Register
         *control =  control_value;
 
         //arbitrary longggg delay until implement interrupt to ensure transfer
         for(int j = 0; j < 5; j++) {
         // Slow blink for demonstration board 
             for (int i = 0; i < 500000; i++) {
                 reg_gpio_out = 1;
             }
             for (int i = 0; i < 500000; i++) {
                 reg_gpio_out = 0;
             }
         }
     }
 
 
 void lut_function1(uint32_t input, uint32_t *memory){
     //access calculations
     LUT1 = input; //load lut input
        for(int j = 0; j < 3; j++) {
        // Slow blink for demonstration board 
            for (int i = 0; i < 100000; i++) {
                reg_gpio_out = 1;
            }
            for (int i = 0; i < 100000; i++) {
                reg_gpio_out = 0;
            }
        }
     *memory = LUT1;	//write to memory
 
     //arbitrary longggg delay to read display
     for(int j = 0; j < 3; j++) {
     // Slow blink for demonstration board 
         for (int i = 0; i < 100000; i++) {
             reg_gpio_out = 1;
         }
         for (int i = 0; i < 100000; i++) {
             reg_gpio_out = 0;
         }
     }
 }
 
 
 void main()
 {
     reg_gpio_mode1 = 1;
     reg_gpio_mode0 = 1;
 
     reg_gpio_ien = 1;
     reg_gpio_oe = 1;
 
     reg_gpio_out = 1;
     reg_gpio_out = 0;
 
     reg_gpio_out = 0;
     reg_gpio_ien = 1;
     reg_gpio_oe = 1;

     // enable wishbone
     reg_wb_enable = 1;
 
    //  debug_oeb_out_write(1);
 
    //  (*(volatile uint32_t*) CSR_DEBUG_MODE_OUT_ADDR ) = 1; // enable debug mode 
 
     //begin our userspace stuff below
 
     //load values into first lut function
    //  dma_config((uint32_t) 0x00000000,(uint32_t) 0x00000080,(uint32_t) 0x30000100,(uint32_t) 0x30501100); //Load V Table
    //  dma_config((uint32_t) 0x00000000,(uint32_t) 0x00000080,(uint32_t) 0x30000200,(uint32_t) 0x30501200); //Load M Table
    //  dma_config((uint32_t) 0x00000000,(uint32_t) 0x00000080,(uint32_t) 0x30000300,(uint32_t) 0x30501300); //Load B table
    loadMemory();
    while(1){
        loadMemory();
        lut_function1(0x40c00000, &memory4);
        loadMemory();
        lut_function1(0xbe9a2681, &memory1);
        loadMemory();
        lut_function1(0x40a00000, &memory2);
        loadMemory();
        lut_function1(0xc13773a1, &memory3);
    }
 
}
 