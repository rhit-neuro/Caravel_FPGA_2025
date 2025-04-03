`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Team 8
// Engineer: Josh Schrock
// 
// Create Date: 11/04/2024 05:57:36 PM
// Module Name: Memory_Unit
// Description: Stores 32 values
//
// 
//////////////////////////////////////////////////////////////////////////////////


module MainMemory #(parameter DataWidth=32, MemorySize=128, AddressWidth=8)
(input wire reset, clock, write, strobe,
input wire [AddressWidth-1:0] address,
input wire [DataWidth-1:0] din,
output wire [DataWidth-1:0] dout,
output wire ack);

reg[DataWidth-1:0] memory [MemorySize-1:0]; 

always@(posedge clock)
	if(reset==1) begin
	memory[0]<= 32'h00008000;
	memory[1]<= 32'h00090000;
	memory[2]<= 32'h000000ff;
	memory[3]<= 32'h00000000;
	memory[4]<= 32'h00048040;
	memory[5]<= 1;
	memory[6]<= 1;
	memory[7]<= 1;
	memory[8]<= 1;
	memory[9]<= 1;
	memory[10]<= 32'hbe9a2681;
	memory[11]<= 32'h40a00000;
	memory[12]<= 32'hc13773a1;
	memory[13]<= 32'h40c00000;
	memory[14]<= 1;
	memory[15]<= 1;
	memory[16]<= 1;
	memory[17]<= 1;
	memory[18]<= 1;
	memory[19]<= 1;
	memory[20]<= 1;
	memory[21]<= 1;
	memory[22]<= 1;
	memory[23]<= 1;
	memory[24]<= 1;
    memory[25]<= 1;
	memory[26]<= 1;
	memory[27]<= 1;
	memory[28]<= 1;
	memory[29]<= 1;
	memory[30]<= 1;
	memory[31]<= 1;
	memory[32]<= 32'hc1400000;
	memory[33]<= 32'hc1339ce7;
	memory[34]<= 32'hc12739ce;
	memory[35]<= 32'hc11ad6b6;
	memory[36]<= 32'hc10e739d;
	memory[37]<= 32'hc1021084;
	memory[38]<= 32'hc0eb5ad7;
	memory[39]<= 32'hc0d294a5;
	memory[40]<= 32'hc0b9ce74;
	memory[41]<= 32'hc0a10842;
	memory[42]<= 32'hc0884211;
	memory[43]<= 32'hc05ef7be;
	memory[44]<= 32'hc02d6b5b;
	memory[45]<= 32'hbff7bdef;
	memory[46]<= 32'hbf94a529;
	memory[47]<= 32'hbec6318c;
	memory[48]<= 32'h3ec6318c;
	memory[49]<= 32'h3f94a529;
	memory[50]<= 32'h3ff7bdef;
	memory[51]<= 32'h402d6b5b;
	memory[52]<= 32'h405ef7be;
	memory[53]<= 32'h40884211;
	memory[54]<= 32'h40a10842;
	memory[55]<= 32'h40b9ce74;
	memory[56]<= 32'h40d294a5;
    memory[57]<= 32'h40eb5ad7;
	memory[58]<= 32'h41021084;
	memory[59]<= 32'h410e739d;
	memory[60]<= 32'h411ad6b6;
	memory[61]<= 32'h412739ce;
	memory[62]<= 32'h41339ce7;
	memory[63]<= 32'h41400000;
    memory[64]<= 32'h2d0300f8;
	memory[65]<= 32'h2d4060f1;
	memory[66]<= 32'h2d8d106e;
	memory[67]<= 32'h2dce77a8;
	memory[68]<= 32'h2e16a99c;
	memory[69]<= 32'h2e5af5bd;
	memory[70]<= 32'h2e9e2423;
	memory[71]<= 32'h2ee26e13;
	memory[72]<= 32'h2f2013fd;
	memory[73]<= 32'h2f5e5c5d;
	memory[74]<= 32'h2f96b166;
	memory[75]<= 32'h2fc5978a;
	memory[76]<= 32'h2ff82098;
	memory[77]<= 32'h30139b48;
	memory[78]<= 32'h3024bece;
	memory[79]<= 32'h302b4298;
	memory[80]<= 32'h30255ee9;
	memory[81]<= 32'h3014b0d0;
	memory[82]<= 32'h2ffab81f;
	memory[83]<= 32'h2fc8292a;
	memory[84]<= 32'h2f98f436;
	memory[85]<= 32'h2f62086a;
	memory[86]<= 32'h2f22e602;
	memory[87]<= 32'h2ee69932;
	memory[88]<= 32'h2ea123f7;
    memory[89]<= 32'h2e5f329a;
	memory[90]<= 32'h2e199e6b;
	memory[91]<= 32'h2dd28e83;
	memory[92]<= 32'h2d8fe039;
	memory[93]<= 32'h2d443acf;
	memory[94]<= 32'h2d05a248;
	memory[95]<= 32'h2cb5d776;
	memory[96]<= 32'h2edf6c30;
	memory[97]<= 32'h2f1ac5d1;
	memory[98]<= 32'h2f556648;
	memory[99]<= 32'h2f924217;
	memory[100]<= 32'h2fc70ab8;
	memory[101]<= 32'h3006386d;
	memory[102]<= 32'h3032f513;
	memory[103]<= 32'h306b2160;
	memory[104]<= 32'h30979427;
	memory[105]<= 32'h30bec1ae;
	memory[106]<= 32'h30e8d17e;
	memory[107]<= 32'h3108d53a;
	memory[108]<= 32'h3119f322;
	memory[109]<= 32'h3125576a;
	memory[110]<= 32'h312a5136;
	memory[111]<= 32'h312af29c;
	memory[112]<= 32'h312b8484;
	memory[113]<= 32'h31305c39;
	memory[114]<= 32'h313ba643;
	memory[115]<= 32'h314cc62b;
	memory[116]<= 32'h316154f8;
	memory[117]<= 32'h317696c7;
	memory[118]<= 32'h3185390f;
	memory[119]<= 32'h318ddc1f;
	memory[120]<= 32'h3195006f;
    memory[121]<= 32'h319ab1ea;
	memory[122]<= 32'h319f1d22;
	memory[123]<= 32'h31a279e8;
	memory[124]<= 32'h31a4ff34;
	memory[125]<= 32'h31a6dd7b;
	memory[126]<= 32'h31a83cd3;
	memory[127]<= 32'h31a93d1a;
	end 
	else
		if (write==1 && strobe==1) memory[address] <= din; 
		else  memory[address]<= memory[address];
		
assign dout = strobe ? memory[address] : 32'hz;
assign ack = strobe ? 1'b1 : 1'bz;
endmodule