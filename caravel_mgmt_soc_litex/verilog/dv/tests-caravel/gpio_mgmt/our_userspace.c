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

void loadMemory() {
	float *base_address; // address variable

	// load V tables into memory
	base_address = (float *)0x30000100

	*base_address = (float) 0xc1400000; 
	base_address = base_address + 1;
    *base_address = (float) 0xc1339ce7; 
	base_address = base_address + 1;
    *base_address = (float) 0xc12739ce 
	base_address = base_address + 1;
    *base_address = (float) 0xc11ad6b6; 
	base_address = base_address + 1;
    *base_address = (float) 0xc10e739d; 
	base_address = base_address + 1;
    *base_address = (float) 0xc1021084; 
	base_address = base_address + 1;
    *base_address = (float) 0xc0eb5ad7; 
	base_address = base_address + 1;
    *base_address = (float) 0xc0d294a5; 
	base_address = base_address + 1;
    *base_address = (float) 0xc0b9ce74; 
	base_address = base_address + 1;
    *base_address = (float) 0xc0a10842; 
	base_address = base_address + 1;
    *base_address = (float) 0xc0884211; 
	base_address = base_address + 1;
    *base_address = (float) 0xc05ef7be; 
	base_address = base_address + 1;
    *base_address = (float) 0xc02d6b5b; 
	base_address = base_address + 1;
    *base_address = (float) 0xbff7bdef; 
	base_address = base_address + 1;
    *base_address = (float) 0xbf94a529; 
	base_address = base_address + 1;
    *base_address = (float) 0xbec6318c; 
	base_address = base_address + 1;
    *base_address = (float) 0x3ec6318c; 
	base_address = base_address + 1;
    *base_address = (float) 0x3f94a529; 
	base_address = base_address + 1;
    *base_address = (float) 0x3ff7bdef; 
	base_address = base_address + 1;
    *base_address = (float) 0x402d6b5b; 
	base_address = base_address + 1;
    *base_address = (float) 0x405ef7be; 
	base_address = base_address + 1;
    *base_address = (float) 0x40884211; 
	base_address = base_address + 1;
    *base_address = (float) 0x40a10842; 
	base_address = base_address + 1;
    *base_address = (float) 0x40b9ce74; 
	base_address = base_address + 1;
    *base_address = (float) 0x40d294a5; 
	base_address = base_address + 1;
    *base_address = (float) 0x40eb5ad7; 
	base_address = base_address + 1;
    *base_address = (float) 0x41021084; 
	base_address = base_address + 1;
    *base_address = (float) 0x410e739d; 
	base_address = base_address + 1;
    *base_address = (float) 0x411ad6b6; 
	base_address = base_address + 1;
    *base_address = (float) 0x412739ce; 
	base_address = base_address + 1;
    *base_address = (float) 0x41339ce7; 
	base_address = base_address + 1;
    *base_address = (float) 0x41400000; 
    
    // load m tables into memory
	base_address = (float *)0x30000200;

    *base_address = (float) 0x2d0300f8; 
	base_address = base_address + 1;
    *base_address = (float) 0x2d4060f1; 
	base_address = base_address + 1;
    *base_address = (float) 0x2d8d106e; 
	base_address = base_address + 1;
    *base_address = (float) 0x2dce77a8; 
	base_address = base_address + 1;
    *base_address = (float) 0x2e16a99c; 
	base_address = base_address + 1;
    *base_address = (float) 0x2e5af5bd;  
	base_address = base_address + 1;
    *base_address = (float) 0x2e9e2423; 
	base_address = base_address + 1;
    *base_address = (float) 0x2ee26e13;  
	base_address = base_address + 1;
    *base_address = (float) 0x2f2013fd; 
	base_address = base_address + 1;
    *base_address = (float) 0x2f5e5c5d; 
	base_address = base_address + 1;
    *base_address = (float) 0x2f96b166;  
	base_address = base_address + 1;
    *base_address = (float) 0x2fc5978a; 
	base_address = base_address + 1;
    *base_address = (float) 0x2ff82098; 
	base_address = base_address + 1;
    *base_address = (float) 0x30139b48; 
	base_address = base_address + 1;
    *base_address = (float) 0x3024bece;  
	base_address = base_address + 1;
    *base_address = (float) 0x302b4298;  
	base_address = base_address + 1;
    *base_address = (float) 0x30255ee9; 
	base_address = base_address + 1;
    *base_address = (float) 0x3014b0d0; 
	base_address = base_address + 1;
    *base_address = (float) 0x2ffab81f;  
	base_address = base_address + 1;
    *base_address = (float) 0x2fc8292a;  
	base_address = base_address + 1;
    *base_address = (float) 0x2f98f436; 
	base_address = base_address + 1;
    *base_address = (float) 0x2f62086a; 
	base_address = base_address + 1;
    *base_address = (float) 0x2f22e602; 
	base_address = base_address + 1;
    *base_address = (float) 0x2ee69932; 
	base_address = base_address + 1;
    *base_address = (float) 0x2ea123f7; 
	base_address = base_address + 1;
    *base_address = (float) 0x2e5f329a;  
	base_address = base_address + 1;
    *base_address = (float) 0x2e199e6b; 
	base_address = base_address + 1;
    *base_address = (float) 0x2dd28e83;  
	base_address = base_address + 1;
    *base_address = (float) 0x2d8fe039; 
	base_address = base_address + 1;
    *base_address = (float) 0x2d443acf; 
	base_address = base_address + 1;
    *base_address = (float) 0x2d05a248;  
	base_address = base_address + 1;
    *base_address = (float) 0x2cb5d776; 
	base_address = base_address + 1;
   
    // load b tables into memory
	base_address = (float *)0x30000300;

    *base_address = (float) 0x2edf6c30; 
	base_address = base_address + 1;
    *base_address = (float) 0x2f1ac5d1; 
	base_address = base_address + 1;
    *base_address = (float) 0x2f556648; 
	base_address = base_address + 1;
    *base_address = (float) 0x2f924217; 
	base_address = base_address + 1;
    *base_address = (float) 0x2fc70ab8; 
	base_address = base_address + 1;
    *base_address = (float) 0x3006386d; 
	base_address = base_address + 1;
    *base_address = (float) 0x3032f513;  
	base_address = base_address + 1;
    *base_address = (float) 0x306b2160;  
	base_address = base_address + 1;
    *base_address = (float) 0x30979427; 
	base_address = base_address + 1;
    *base_address = (float) 0x30bec1ae; 
	base_address = base_address + 1;
    *base_address = (float) 0x30e8d17e; 
	base_address = base_address + 1;
    *base_address = (float) 0x3108d53a; 
	base_address = base_address + 1;
    *base_address = (float) 0x3119f322; 
	base_address = base_address + 1;
    *base_address = (float) 0x3125576a;  
	base_address = base_address + 1;
    *base_address = (float) 0x312a5136;  
	base_address = base_address + 1;
    *base_address = (float) 0x312af29c;  
	base_address = base_address + 1;
    *base_address = (float) 0x312b8484; 
	base_address = base_address + 1;
    *base_address = (float) 0x31305c39;  
	base_address = base_address + 1;
    *base_address = (float) 0x313ba643;  
	base_address = base_address + 1;
    *base_address = (float) 0x314cc62b;  
	base_address = base_address + 1;
    *base_address = (float) 0x316154f8;  
	base_address = base_address + 1;
    *base_address = (float) 0x317696c7; 
	base_address = base_address + 1;
    *base_address = (float) 0x3185390f; 
	base_address = base_address + 1;
    *base_address = (float) 0x318ddc1f; 
	base_address = base_address + 1;
    *base_address = (float) 0x3195006f; 
	base_address = base_address + 1;
    *base_address = (float) 0x319ab1ea; 
	base_address = base_address + 1;
    *base_address = (float) 0x319f1d22; 
	base_address = base_address + 1;
    *base_address = (float) 0x31a279e8; 
	base_address = base_address + 1;
    *base_address = (float) 0x31a4ff34;  
	base_address = base_address + 1;
    *base_address = (float) 0x31a6dd7b;  
	base_address = base_address + 1;
    *base_address = (float) 0x31a83cd3;  
	base_address = base_address + 1;
    *base_address = (float) 0x31a93d1a; 
	base_address = base_address + 1;
}

// Sets up the config files for the DMA 
// (Control register, length register, src address, dst address)
void dma_config(uint32_t control_value, uint32_t length_value, uint32_t from_value, uint32_t to_value) {
		uint32_t *length = (uint32_t *)0x4000000c;
		uint32_t *to = (uint32_t *)0x40000008;
		uint32_t *from = (uint32_t *)0x40000004;
		uint32_t *control = (uint32_t *)0x40000000;

        // Write to the Length Register
        *length = length_value;

        // Write to the Destination Register    
        *to = to_value;   
        
        // Write to the Source Register
        *from = from_value; 
        
        // Write to the Control Register
        *control =  control_value;

		//arbitrary longggg delay until implement interrupt to ensure transfer
		for(j = 0; j < 5; j++) {
		// Slow blink for demonstration board 
			for (i = 0; i < 500000; i++) {
				reg_gpio_out = 1;
			}
			for (i = 0; i < 500000; i++) {
				reg_gpio_out = 0;
			}
		}
	}
}

void lut_function1(float input, float *memory){
	//access calculations
	float *LUT_func1 = (float *)0x50001000; //LUT function 1 address
	*LUT_func1 = input;		//load lut input
	float func1_result = *LUT_func1;	//read result
	*memory = func1_result;	//write to memory

	//arbitrary longggg delay to read display
	for(j = 0; j < 10; j++) {
	// Slow blink for demonstration board 
		for (i = 0; i < 500000; i++) {
			reg_gpio_out = 1;
		}
		for (i = 0; i < 500000; i++) {
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

	int i;

	reg_gpio_out = 0;
    reg_gpio_ien = 1;
	reg_gpio_oe = 1;

	debug_oeb_out_write(1);

	(*(volatile uint32_t*) CSR_DEBUG_MODE_OUT_ADDR ) = 1; // enable debug mode 

	//begin our userspace stuff below:

	loadMemory();

	//load values into first lut function
	dma_config((uint32_t) 0x00000000,(uint32_t) 0x00000080,(uint32_t) 0x30000100,(uint32_t) 0x50001100); //Load V Table
    dma_config((uint32_t)0x00000000,(uint32_t) 0x00000080,(uint32_t) 0x30000200,(uint32_t) 0x50001200); //Load M Table
    dma_config((uint32_t)0x00000000,(uint32_t) 0x00000080,(uint32_t) 0x30000300,(uint32_t) 0x50001300); //Load B table

	while(1){
		//perform calculations and write to memory
		lut_function1((float) 0xbe9a2681, (float *) 0x30000600);
		lut_function1((float) 0x40a00000, (float *) 0x30000604);
		lut_function1((float) 0xc13773a1, (float *) 0x30000608);
		lut_function1((float) 0x40c00000, (float *) 0x3000060c);
	}

}
