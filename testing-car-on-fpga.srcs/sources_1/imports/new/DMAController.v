module DMAController(
    input Clock,
    
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
    
    
    //User Space WB (Controller)
        //USING DEFS BASED ON OPENCORES WHITE PAPER, MAY BE UPDATED LATER
   output [31:0] ADR_O,
   input  [31:0] DAT_I,
   output [31:0] DAT_O,
   output WE_O,
   output [31:0] SEL_O, //check this width
   output STB_O,
   input ACK_I,
   output CYN_O,
   //for us to define as part of wb
   output TAGN_O,
   input TAGN_I,
   //SYSCON?
   input RST_I,
   input CLK_I
    
    

    );
endmodule