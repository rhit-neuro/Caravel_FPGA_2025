`timescale 100ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Team 8 Neuroprocessor
// Engineer: Josh Schrock
// 
// Create Date: 10/30/2024 12:31:58 AM
// Module Name: NPUTopLevel_tb
// Description: Test I/O functionality of Neuro Processor TopLevel
//
// Revision:
// Revision 0.01 - File Created
// 
//////////////////////////////////////////////////////////////////////////////////


module NPUTopLevel_tb;

    // Wishbone Slave ports (WB MI A)
    reg wb_clk_i,  wb_rst_i, wbs_stb_i, wbs_cyc_i, wbs_we_i;
    reg [3:0] wbs_sel_i;
    reg [31:0] wbs_dat_i;
    reg [31:0] wbs_adr_i;
    wire wbs_ack_o;
    wire [31:0] wbs_dat_o;

    // Logic Analyzer Signals
    reg [127:0] la_data_in;
    wire [127:0] la_data_out;
    reg  [127:0] la_oenb;

    // IOs
    reg  [`MPRJ_IO_PADS-1:0] io_in;
    wire [`MPRJ_IO_PADS-1:0] io_out;
    wire [`MPRJ_IO_PADS-1:0] io_oeb;

    // Independent clock (on independent integer divider)
    reg   user_clock2;

    // User maskable interrupt signals
    wire [2:0] user_irq;  

//80 MHz 
initial begin
      wb_clk_i = 1'b0;
      forever begin
        #62.5 wb_clk_i = ~user_clock2;
      end
end

//200 MHz 
initial begin
      user_clock2 = 1'b0;
      forever begin
        #25 user_clock2 = ~user_clock2;
      end
end
    
initial begin
//Reset
wb_rst_i = 1; wbs_stb_i = 0; wbs_cyc_i = 0; wbs_we_i = 0; #125
wb_rst_i = 0;

//Write
//Controller grabs bus to initiate transfer cycle
wbs_cyc_i = 1; 
//Wishbone Handshake, peripheral should respond asynchronously with ACK once ready
wbs_stb_i = 1;
//Write Address
wbs_adr_i = 8'h30000000;
//Write Data
wbs_dat_i = 8'hdeadbeef;
//Write Enable
wbs_we_i = 1;
//All 4 bits valid
wbs_sel_i = 4'b1111; #125

//wait
wbs_stb_i = 0; wbs_cyc_i = 0; wbs_we_i = 0; wbs_adr_i = 0; wbs_dat_i = 0; wbs_sel_i = 0; #125

//read
wbs_cyc_i = 1; 
wbs_stb_i = 1;
wbs_adr_i = 8'h30000000;
wbs_we_i = 0;
wbs_sel_i = 4'b1111; #125
$stop;
end
    
endmodule
