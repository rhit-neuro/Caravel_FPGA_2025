`timescale 1ns / 1ps


module MainMemory#(parameter DataWidth=7, MemorySize=100, AddressBits=7)
(
    input Reset, Clock, WriteOrRead,
    
    
    //Management Space WB
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
    
    
    //User Space WB (Device)
    input [31:0] ADR_I,
    input [31:0] DAT_I,
    output [31:0] DAT_O,
    input WE_I,
    input [31:0] SEL_I,//check this width
    input STB_I,
    output ACK_O,
    input CYC_I,
   //for us to define as part of wb
   output TAGN_O,
   input TAGN_I,
   //SYSCON?
   input RST_I,
   input CLK_I
    );
    
    
    
endmodule