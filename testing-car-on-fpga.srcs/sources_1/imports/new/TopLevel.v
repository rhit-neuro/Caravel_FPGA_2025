`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2024 10:00:13 AM
// Design Name: 
// Module Name: TopLevel
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TopLevel #(
    parameter BITS = 32
)(


//Part of Actual Userspace Def, not needed for our implementation
//`ifdef USE_POWER_PINS
//    inout vdda1,	// User area 1 3.3V supply
//    inout vdda2,	// User area 2 3.3V supply
//    inout vssa1,	// User area 1 analog ground
//    inout vssa2,	// User area 2 analog ground
//    inout vccd1,	// User area 1 1.8V supply
//    inout vccd2,	// User area 2 1.8v supply
//    inout vssd1,	// User area 1 digital ground
//    inout vssd2,	// User area 2 digital ground
//`endif

    // Wishbone Device ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals - TEMP COMMENTED OUT
//    input  [127:0] la_data_in,
//    output [127:0] la_data_out,
//    input  [127:0] la_oenb,





// TODO- Understand and implement these
//    // IOs
//    input  [`MPRJ_IO_PADS-1:0] io_in,
//    output [`MPRJ_IO_PADS-1:0] io_out,
//    output [`MPRJ_IO_PADS-1:0] io_oeb,

    // Analog (direct connection to GPIO pad---use with caution)
    // Note that analog I/O is not available on the 7 lowest-numbered
    // GPIO pads, and so the analog_io indexing is offset from the
    // GPIO indexing by 7 (also upper 2 GPIOs do not have analog_io).
//    inout [`MPRJ_IO_PADS-10:0] analog_io,


//Temp def of IOs, REPLACE WITH ABOVE
    //TODO

    // Independent clock (on independent integer divider)
    input   user_clock2,

    // User maskable interrupt signals
    output [2:0] user_irq
);


   wire US_WB_CLK;
   wire US_WB_RST;
   wire [31:0] US_WB_ADR;
   wire [31:0] US_WB_DAT_I;
   wire [31:0] US_WB_DAT_O;
   wire US_WB_WE;
   wire [31:0] US_WB_SEL; //check width
   wire US_WB_STB;
   wire US_WB_ACK;
   wire US_WB_CYN;
   wire US_WB_TAGN_O;
   wire US_WB_TAGN_I;
   
   



//Internal Module Defs


UserSpaceWBSYSCON SYSCON(
    .CLK_IN(user_clock2),
    .Reset(US_WB_RST),
    .WB_CLK(US_WB_CLK)
);





//DMAController DMA(.Clock(user_clock2),

////Management Space WB
//.wb_clk_i(wb_clk_i), .wb_rst_i(wb_rst_i), .wbs_stb_i(wbs_stb_i), .wbs_cyc_i(wbs_cyc_i), 
//.wbs_we_i(wbs_we_i), .wbs_dat_i(wbs_dat_i), .wbs_adr_i(wbs_adr_i), .wbs_ack_o(wbs_ack_o),
//.wbs_dat_o(wbs_dat_o), .wbs_sel_i(wbs_sel_i),

////User Space WB
//   .ADR_O(US_WB_ADR),
//   .DAT_I(US_WB_DAT_I),
//   .DAT_O(US_WB_DAT_O),
//   .WE_O(US_WB_WE),
//   .SEL_O(US_WB_SEL),
//   .STB_O(US_WB_STB),
//   .ACK_I(US_WB_ACK),
//   .CYN_O(US_WB_CYN),
//   .TAGN_O(US_WB_TAGN_O),
//   .TAGN_I(US_WB_TAGN_I),
//   .RST_I(US_WB_RST),
//   .CLK_I(US_WB_CLK)
//);


//MainMemory Mem(.Clock(user_clock2), 

////Management Space WB
//.wb_clk_i(wb_clk_i), .wb_rst_i(wb_rst_i), .wbs_stb_i(wbs_stb_i), .wbs_cyc_i(wbs_cyc_i), 
//.wbs_we_i(wbs_we_i), .wbs_dat_i(wbs_dat_i), .wbs_adr_i(wbs_adr_i), .wbs_ack_o(wbs_ack_o),
//.wbs_dat_o(wbs_dat_o), .wbs_sel_i(wbs_sel_i),


////User Space WB
//    .ADR_I(US_WB_ADR),
//    .DAT_I(US_WB_DAT_O),
//    .DAT_O(US_WB_DAT_I),
//    .WE_I(US_WB_WE),
//    .SEL_I(US_WB_SEL),
//    .STB_I(US_WB_STB),
//    .ACK_O(US_WB_ACK),
//    .CYC_I(US_WB_CYN),
//    .TAGN_O(US_WB_TAGN_I),
//    .TAGN_I(US_WB_TAGN_O),
//   .RST_I(US_WB_RST),
//   .CLK_I(US_WB_CLK)
//);


//SDInterface SD(.Clock(user_clock2), .irq(user_irq[0]),


////User Space WB
//    .ADR_I(US_WB_ADR),
//    .DAT_I(US_WB_DAT_O),
//    .DAT_O(US_WB_DAT_I),
//    .WE_I(US_WB_WE),
//    .SEL_I(US_WB_SEL),
//    .STB_I(US_WB_STB),
//    .ACK_O(US_WB_ACK),
//    .CYC_I(US_WB_CYN),
//    .TAGN_O(US_WB_TAGN_I),
//    .TAGN_I(US_WB_TAGN_O),
//   .RST_I(US_WB_RST),
//   .CLK_I(US_WB_CLK)
//);


//SynapticModule SynMod(.Clock(user_clock2),  .irq(user_irq[1]),



////User Space WB
//    .ADR_I(US_WB_ADR),
//    .DAT_I(US_WB_DAT_O),
//    .DAT_O(US_WB_DAT_I),
//    .WE_I(US_WB_WE),
//    .SEL_I(US_WB_SEL),
//    .STB_I(US_WB_STB),
//    .ACK_O(US_WB_ACK),
//    .CYC_I(US_WB_CYN),
//    .TAGN_O(US_WB_TAGN_I),
//    .TAGN_I(US_WB_TAGN_O),
//   .RST_I(US_WB_RST),
//   .CLK_I(US_WB_CLK)
//);


//LUT LUTAccel(.Clock(user_clock2),

////Management Space WB
//.wb_clk_i(wb_clk_i), .wb_rst_i(wb_rst_i), .wbs_stb_i(wbs_stb_i), .wbs_cyc_i(wbs_cyc_i), 
//.wbs_we_i(wbs_we_i), .wbs_dat_i(wbs_dat_i), .wbs_adr_i(wbs_adr_i), .wbs_ack_o(wbs_ack_o),
//.wbs_dat_o(wbs_dat_o), .wbs_sel_i(wbs_sel_i),



////User Space WB
//    .ADR_I(US_WB_ADR),
//    .DAT_I(US_WB_DAT_O),
//    .DAT_O(US_WB_DAT_I),
//    .WE_I(US_WB_WE),
//    .SEL_I(US_WB_SEL),
//    .STB_I(US_WB_STB),
//    .ACK_O(US_WB_ACK),
//    .CYC_I(US_WB_CYN),
//    .TAGN_O(US_WB_TAGN_I),
//    .TAGN_I(US_WB_TAGN_O),
//   .RST_I(US_WB_RST),
//   .CLK_I(US_WB_CLK)
//);







endmodule
