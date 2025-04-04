`timescale 1ns / 1ps
`define HALF_CYCLE 5
//////////////////////////////////////////////////////////////////////////////////
// Company: Team 08
// Engineer: Josh Schrock
// 
// Create Date: 03/11/2025 11:09:20 PM
// Module Name: TopLevel_tb.v
// Description: Testbench for TopLevel userspace with all exchanges.
//
//////////////////////////////////////////////////////////////////////////////////


module TopLevel_tb();

reg wb_clk_i, wb_rst_i;
reg wbs_stb_i, wbs_cyc_i, wbs_we_i;
reg [3:0] wbs_sel_i;
reg [31:0] wbs_dat_i;
reg [31:0] wbs_adr_i;
wire wbs_ack_o;
wire [31:0] wbs_dat_o;
reg [127:0] la_data_in;
wire [127:0] la_data_out;
reg [127:0] la_oenb;
reg [37:0] io_in;
wire [37:0] io_out;
wire [37:0] io_oeb;
wire [28:0] analog_io;
reg user_clock2;
wire [2:0] user_irq;


TopLevel UUT(
    .wb_clk_i(wb_clk_i),
    .wb_rst_i(wb_rst_i),
    .wbs_stb_i(wbs_stb_i),
    .wbs_cyc_i(wbs_cyc_i),
    .wbs_we_i(wbs_we_i),
    .wbs_sel_i(wbs_sel_i),
    .wbs_dat_i(wbs_dat_i),
    .wbs_adr_i(wbs_adr_i),
    .wbs_ack_o(wbs_ack_o),
    .wbs_dat_o(wbs_dat_o),
    .la_data_in(la_data_in),
    .la_data_out(la_data_out),
    .la_oenb(la_oenb),
    .io_in(io_in),
    .io_out(io_out),
    .io_oeb(io_oeb),
    .analog_io(analog_io),
    .user_clock2(user_clock2),
    .user_irq(user_irq)
);


always #(`HALF_CYCLE) wb_clk_i=~wb_clk_i;

initial begin
    #0// Initialize Inputs
    wb_clk_i = 0;
    wb_rst_i = 1;
    wbs_cyc_i = 0;
    wbs_stb_i = 0;
    wbs_we_i = 0;
    wbs_adr_i = 0;
    wbs_dat_i = 0;
    wbs_sel_i = 0;
    
    //
    la_data_in = 0; //no logic analyzer input
    la_oenb = 0;
    
    //set unused io to 0
    io_in[2:0] = 0;
    io_in[37:6] = 0;
    user_clock2 = 0;
    
    //SD spi inputs
    io_in[3] = 1; //i_miso
    io_in[4] = 0; //SD i_card_detect
    io_in[5] = 0; //SD i_bus_grant
    
    #(`HALF_CYCLE + 1) //artificial delay
    
    #(`HALF_CYCLE*30)
    wb_rst_i = 0;
    io_in[4] = 1; //SD i_card_detect
    io_in[5] = 1; //SD i_bus_grant
    #(`HALF_CYCLE*2)
    wbs_cyc_i = 1;
    
    Initialize_Memory(); //Input data into main memory, will be replaced by SD interface
    #(`HALF_CYCLE*12)

    // Load First LUT Function
    B3_dma_config(32'h00000000, 32'h00000080, 32'h30000100, 32'h30501100); //Load V Table
    #(`HALF_CYCLE*240)
    B3_dma_config(32'h00000000, 32'h00000080, 32'h30000200, 32'h30501200); //Load M Table
    #(`HALF_CYCLE*240)
    B3_dma_config(32'h00000000, 32'h00000080, 32'h30000300, 32'h30501300); //Load B table
    #(`HALF_CYCLE*240)
    
    // Load Second LUT function
    B3_dma_config(32'h00000000, 32'h00000080, 32'h30000100, 32'h30502100); //Load V Table
    #(`HALF_CYCLE*240)
    B3_dma_config(32'h00000000, 32'h00000080, 32'h30000200, 32'h30502200); //Load M Table
    #(`HALF_CYCLE*240)
    B3_dma_config(32'h00000000, 32'h00000080, 32'h30000300, 32'h30502300); //Load B Table
    #(`HALF_CYCLE*240)
    
    //Load Third LUT Function
    B3_dma_config(32'h00000000, 32'h00000080, 32'h30000100, 32'h30503100); //Load V Table
    #(`HALF_CYCLE*240)
    B3_dma_config(32'h00000000, 32'h00000080, 32'h30000200, 32'h30503200); //Load M Table
    #(`HALF_CYCLE*240)
    B3_dma_config(32'h00000000, 32'h00000080, 32'h30000300, 32'h30503300); //Load B Table
    #(`HALF_CYCLE*240)
    
    
    //Testing Table 1
    wb_send_LUT(32'h30501000, 32'hbe9a2681);
    #(`HALF_CYCLE*6)
    wb_send_LUT(32'h30501000, 32'h40a00000);
    #(`HALF_CYCLE*6)
    wb_send_LUT(32'h30501000, 32'hc13773a1);
    #(`HALF_CYCLE*6)
    wb_send_LUT(32'h30501000, 32'h40c00000);
    #(`HALF_CYCLE*6)
    
    //Testing Table 2
    wb_send_LUT(32'h30502000, 32'hbe9a2681);
    #(`HALF_CYCLE*6)
    wb_send_LUT(32'h30502000, 32'h40a00000);
    #(`HALF_CYCLE*6)
    wb_send_LUT(32'h30502000, 32'hc13773a1);
    #(`HALF_CYCLE*6)
    wb_send_LUT(32'h30502000, 32'h40c00000);
    #(`HALF_CYCLE*6)
    
    //Testing Table 3
    wb_send_LUT(32'h30502000, 32'hbe9a2681);
    #(`HALF_CYCLE*6)
    wb_send_LUT(32'h30502000, 32'h40a00000);
    #(`HALF_CYCLE*6)
    wb_send_LUT(32'h30502000, 32'hc13773a1);
    #(`HALF_CYCLE*6)
    wb_send_LUT(32'h30502000, 32'h40c00000);
    #(`HALF_CYCLE*6)
    
    // Testing Table 1 over DMA
    B3_dma_config(32'h00000000, 32'h00000004, 32'h30000400, 32'h30501000); //Write to LUT
    #(`HALF_CYCLE*30)
    B3_dma_config(32'h00000000, 32'h00000004, 32'h30501000, 32'h30000700); // Read From LUT
    #(`HALF_CYCLE*30)
    
    B3_dma_config(32'h00000000, 32'h00000004, 32'h30000404, 32'h30501000); // Write to LUT
    #(`HALF_CYCLE*30)
    B3_dma_config(32'h00000000, 32'h00000004, 32'h30501000, 32'h30000704); // Read From LUT
    #(`HALF_CYCLE*30)

    B3_dma_config(32'h00000000, 32'h00000004, 32'h30000408, 32'h30501000); // Write To LUT
    #(`HALF_CYCLE*30)
    B3_dma_config(32'h00000000, 32'h00000004, 32'h30501000, 32'h30000708); // Read From LUT
    #(`HALF_CYCLE*30)
    
    B3_dma_config(32'h00000000, 32'h00000004, 32'h3000040c, 32'h30501000); // Write To LUT
    #(`HALF_CYCLE*30)
    B3_dma_config(32'h00000000, 32'h00000004, 32'h30501000, 32'h3000070c); // Read From LUT
    #(`HALF_CYCLE*30)
    
    //Begin SD initialization Test
    B3_dma_config(32'h00000000, 32'h00000008, 32'h30000500, 32'h30600000);
    #(`HALF_CYCLE*30)

//    B3_dma_config(32'h00000000, 32'h00000004, 32'h30000504, 32'h60000004);
//    #150
    B3_dma_config(32'h00000000, 32'h00000008, 32'h30000508, 32'h30600000);
    #(`HALF_CYCLE*30)
//    B3_dma_config(32'h00000000, 32'h00000004, 32'h3000050c, 32'h60000004);
//    #150
    B3_dma_config(32'h00000000, 32'h00000004, 32'h30000510, 32'h30600000);
    #(`HALF_CYCLE*30)
    
    #(`HALF_CYCLE*200)
    
    wbs_stb_i = 1; wbs_adr_i = 32'h30000700; wbs_we_i= 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 0;#(`HALF_CYCLE*4)
    
    wbs_stb_i = 1; wbs_adr_i = 32'h30000704; wbs_we_i= 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 0;#(`HALF_CYCLE*4)
    
    wbs_stb_i = 1; wbs_adr_i = 32'h30000708; wbs_we_i= 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 0;#(`HALF_CYCLE*4)
    
    wbs_stb_i = 1; wbs_adr_i = 32'h3000070c; wbs_we_i= 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 0; #(`HALF_CYCLE*4)
    
    
    $stop;
    
end

// Sets up the config files for the DMA 
// (Control register, length register, src address, dst address)
task wb_send(input [31:0] addr, input [31:0] data);
    begin
        // Start Wishbone cycle
        wbs_stb_i = 1;
        wbs_we_i = 1; // Write operation
        wbs_sel_i = 4'b1111; // 32 bits activated 
        wbs_adr_i = addr; // address
        wbs_dat_i = data; // data
        #(`HALF_CYCLE*2); // Wait for the transaction to complete

        // End Wishbone Cycle
        wbs_stb_i = 0;
        wbs_we_i = 0;
        wbs_sel_i = 4'b0000;
        #(`HALF_CYCLE*2);
    end
endtask

task wb_send_LUT(input [31:0] addr, input [31:0] data);
    begin
        // Start Wishbone cycle
        wbs_stb_i = 1;
        wbs_we_i = 1; // Write operation
        wbs_sel_i = 4'b1111; // 32 bits activated 
        wbs_adr_i = addr; // address
        wbs_dat_i = data; // data
        #(`HALF_CYCLE*4); // Wait for the transaction to complete
        wbs_stb_i = 0;
        
        #(`HALF_CYCLE*10); // Wait 
        
        wbs_stb_i = 1;
        //Read result
        wbs_we_i = 0; // Read operation
        wbs_sel_i = 4'b1111; // 32 bits activated 
        wbs_adr_i = addr; // address
        wbs_dat_i = 32'b0; // data
        #(`HALF_CYCLE*4);

        // End Wishbone Cycle
        wbs_stb_i = 0;
        wbs_we_i = 0;
        wbs_sel_i = 4'b0000;
        #(`HALF_CYCLE*2);
    end
endtask

// Sets up the config files for the DMA 
// (Control register, length register, src address, dst address)
task B3_dma_config(input [31:0] control_value, input [31:0] length_value, input [31:0] from_value, input [31:0] to_value);
    begin

        // Write to the Length Register
        wb_send(32'h3040000c, length_value);

        // Write to the Destination Register    
        wb_send(32'h30400008, to_value);   
        
        // Write to the Source Register
        wb_send(32'h30400004, from_value); 
        
        // Write to the Control Register
        wb_send(32'h30400000, control_value);
        
    end
endtask

// Initialized RAM
task Initialize_Memory();
    begin
    wbs_sel_i = 4'hf;

    wbs_stb_i = 1; wbs_adr_i = 32'h30000100;wbs_we_i= 1; wbs_dat_i = 32'hc1400000; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000104;wbs_we_i= 1; wbs_dat_i = 32'hc1339ce7; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000108;wbs_we_i= 1; wbs_dat_i = 32'hc12739ce; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h3000010c;wbs_we_i= 1; wbs_dat_i = 32'hc11ad6b6; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000110;wbs_we_i= 1; wbs_dat_i = 32'hc10e739d; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000114;wbs_we_i= 1; wbs_dat_i = 32'hc1021084; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000118;wbs_we_i= 1; wbs_dat_i = 32'hc0eb5ad7; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h3000011c;wbs_we_i= 1; wbs_dat_i = 32'hc0d294a5; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000120;wbs_we_i= 1; wbs_dat_i = 32'hc0b9ce74; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000124;wbs_we_i= 1; wbs_dat_i = 32'hc0a10842; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000128;wbs_we_i= 1; wbs_dat_i = 32'hc0884211; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h3000012c;wbs_we_i= 1; wbs_dat_i = 32'hc05ef7be; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000130;wbs_we_i= 1; wbs_dat_i = 32'hc02d6b5b; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000134;wbs_we_i= 1; wbs_dat_i = 32'hbff7bdef; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000138;wbs_we_i= 1; wbs_dat_i = 32'hbf94a529; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h3000013c;wbs_we_i= 1; wbs_dat_i = 32'hbec6318c; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000140;wbs_we_i= 1; wbs_dat_i = 32'h3ec6318c; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000144;wbs_we_i= 1; wbs_dat_i = 32'h3f94a529; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000148;wbs_we_i= 1; wbs_dat_i = 32'h3ff7bdef; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h3000014c;wbs_we_i= 1; wbs_dat_i = 32'h402d6b5b; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000150;wbs_we_i= 1; wbs_dat_i = 32'h405ef7be; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000154;wbs_we_i= 1; wbs_dat_i = 32'h40884211; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000158;wbs_we_i= 1; wbs_dat_i = 32'h40a10842; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h3000015c;wbs_we_i= 1; wbs_dat_i = 32'h40b9ce74; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000160;wbs_we_i= 1; wbs_dat_i = 32'h40d294a5; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000164;wbs_we_i= 1; wbs_dat_i = 32'h40eb5ad7; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000168;wbs_we_i= 1; wbs_dat_i = 32'h41021084; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h3000016c;wbs_we_i= 1; wbs_dat_i = 32'h410e739d; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000170;wbs_we_i= 1; wbs_dat_i = 32'h411ad6b6; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000174;wbs_we_i= 1; wbs_dat_i = 32'h412739ce; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000178;wbs_we_i= 1; wbs_dat_i = 32'h41339ce7; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h3000017c;wbs_we_i= 1; wbs_dat_i = 32'h41400000; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    
    //initialize m table
    wbs_stb_i = 1; wbs_adr_i = 32'h30000200;wbs_we_i= 1; wbs_dat_i = 32'h2d0300f8; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000204;wbs_we_i= 1; wbs_dat_i = 32'h2d4060f1; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000208;wbs_we_i= 1; wbs_dat_i = 32'h2d8d106e; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h3000020c;wbs_we_i= 1; wbs_dat_i = 32'h2dce77a8; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000210;wbs_we_i= 1; wbs_dat_i = 32'h2e16a99c; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000214;wbs_we_i= 1; wbs_dat_i = 32'h2e5af5bd; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000218;wbs_we_i= 1; wbs_dat_i = 32'h2e9e2423; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h3000021c;wbs_we_i= 1; wbs_dat_i = 32'h2ee26e13; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000220;wbs_we_i= 1; wbs_dat_i = 32'h2f2013fd; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000224;wbs_we_i= 1; wbs_dat_i = 32'h2f5e5c5d; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000228;wbs_we_i= 1; wbs_dat_i = 32'h2f96b166; #(`HALF_CYCLE*4)
   // wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h3000022c;wbs_we_i= 1; wbs_dat_i = 32'h2fc5978a; #(`HALF_CYCLE*4)
   // wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000230;wbs_we_i= 1; wbs_dat_i = 32'h2ff82098; #(`HALF_CYCLE*4)
   // wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000234;wbs_we_i= 1; wbs_dat_i = 32'h30139b48; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000238;wbs_we_i= 1; wbs_dat_i = 32'h3024bece; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h3000023c;wbs_we_i= 1; wbs_dat_i = 32'h302b4298; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000240;wbs_we_i= 1; wbs_dat_i = 32'h30255ee9; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000244;wbs_we_i= 1; wbs_dat_i = 32'h3014b0d0; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000248;wbs_we_i= 1; wbs_dat_i = 32'h2ffab81f; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h3000024c;wbs_we_i= 1; wbs_dat_i = 32'h2fc8292a; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000250;wbs_we_i= 1; wbs_dat_i = 32'h2f98f436; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000254;wbs_we_i= 1; wbs_dat_i = 32'h2f62086a; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000258;wbs_we_i= 1; wbs_dat_i = 32'h2f22e602; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h3000025c;wbs_we_i= 1; wbs_dat_i = 32'h2ee69932; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000260;wbs_we_i= 1; wbs_dat_i = 32'h2ea123f7; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000264;wbs_we_i= 1; wbs_dat_i = 32'h2e5f329a; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000268;wbs_we_i= 1; wbs_dat_i = 32'h2e199e6b; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h3000026c;wbs_we_i= 1; wbs_dat_i = 32'h2dd28e83; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000270;wbs_we_i= 1; wbs_dat_i = 32'h2d8fe039; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000274;wbs_we_i= 1; wbs_dat_i = 32'h2d443acf; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000278;wbs_we_i= 1; wbs_dat_i = 32'h2d05a248; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h3000027c;wbs_we_i= 1; wbs_dat_i = 32'h2cb5d776; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
   
    //initialize b table
    wbs_stb_i = 1; wbs_adr_i = 32'h30000300;wbs_we_i= 1; wbs_dat_i = 32'h2edf6c30; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000304;wbs_we_i= 1; wbs_dat_i = 32'h2f1ac5d1; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000308;wbs_we_i= 1; wbs_dat_i = 32'h2f556648; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h3000030c;wbs_we_i= 1; wbs_dat_i = 32'h2f924217; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000310;wbs_we_i= 1; wbs_dat_i = 32'h2fc70ab8; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000314;wbs_we_i= 1; wbs_dat_i = 32'h3006386d; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000318;wbs_we_i= 1; wbs_dat_i = 32'h3032f513; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h3000031c;wbs_we_i= 1; wbs_dat_i = 32'h306b2160; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000320;wbs_we_i= 1; wbs_dat_i = 32'h30979427; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000324;wbs_we_i= 1; wbs_dat_i = 32'h30bec1ae; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000328;wbs_we_i= 1; wbs_dat_i = 32'h30e8d17e; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h3000032c;wbs_we_i= 1; wbs_dat_i = 32'h3108d53a; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000330;wbs_we_i= 1; wbs_dat_i = 32'h3119f322; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000334;wbs_we_i= 1; wbs_dat_i = 32'h3125576a; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000338;wbs_we_i= 1; wbs_dat_i = 32'h312a5136; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h3000033c;wbs_we_i= 1; wbs_dat_i = 32'h312af29c; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000340;wbs_we_i= 1; wbs_dat_i = 32'h312b8484; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000344;wbs_we_i= 1; wbs_dat_i = 32'h31305c39; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000348;wbs_we_i= 1; wbs_dat_i = 32'h313ba643; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h3000034c;wbs_we_i= 1; wbs_dat_i = 32'h314cc62b; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000350;wbs_we_i= 1; wbs_dat_i = 32'h316154f8; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000354;wbs_we_i= 1; wbs_dat_i = 32'h317696c7; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000358;wbs_we_i= 1; wbs_dat_i = 32'h3185390f; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h3000035c;wbs_we_i= 1; wbs_dat_i = 32'h318ddc1f; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000360;wbs_we_i= 1; wbs_dat_i = 32'h3195006f; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000364;wbs_we_i= 1; wbs_dat_i = 32'h319ab1ea; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000368;wbs_we_i= 1; wbs_dat_i = 32'h319f1d22; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h3000036c;wbs_we_i= 1; wbs_dat_i = 32'h31a279e8; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000370;wbs_we_i= 1; wbs_dat_i = 32'h31a4ff34; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000374;wbs_we_i= 1; wbs_dat_i = 32'h31a6dd7b; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000378;wbs_we_i= 1; wbs_dat_i = 32'h31a83cd3; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h3000037c;wbs_we_i= 1; wbs_dat_i = 32'h31a93d1a; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    
    //initialize check variables
    wbs_stb_i = 1; wbs_adr_i = 32'h30000400;wbs_we_i= 1; wbs_dat_i = 32'hbe9a2681; #(`HALF_CYCLE*4)
    wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000404;wbs_we_i= 1; wbs_dat_i = 32'h40a00000; #(`HALF_CYCLE*4)
    wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000408;wbs_we_i= 1; wbs_dat_i = 32'hc13773a1; #(`HALF_CYCLE*4)
    wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h3000040c;wbs_we_i= 1; wbs_dat_i = 32'h40c00000; #(`HALF_CYCLE*4)
    wbs_stb_i = 0;
    
    //initialize SD variables
    wbs_stb_i = 1; wbs_adr_i = 32'h30000500;wbs_we_i= 1; wbs_dat_i = 32'h00008000; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000504;wbs_we_i= 1; wbs_dat_i = 32'h00090000; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000508;wbs_we_i= 1; wbs_dat_i = 32'h000000ff; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h3000050c;wbs_we_i= 1; wbs_dat_i = 32'h00000000; #(`HALF_CYCLE*4)
    //wbs_stb_i = 0; #(`HALF_CYCLE*4)
    wbs_stb_i = 1; wbs_adr_i = 32'h30000510;wbs_we_i= 1; wbs_dat_i = 32'h00048040; #(`HALF_CYCLE*4)
    wbs_stb_i = 0;
    
    wbs_sel_i = 4'hf;
        
    end
endtask

endmodule
