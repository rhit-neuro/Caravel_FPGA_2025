module SDInterface
(
    input Clock,


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
   input CLK_I,
    

    output irq
    );
endmodule