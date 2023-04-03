`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:19:30 02/06/2003 
// Design Name: 
// Module Name:    work_2 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module work_2(
clk_50mhz,
btn0,
seg,
key0
    );
	 input clk_50mhz;
	 input btn0;
	 output reg [6:0] seg;
	 output [3:0] key0;
	 assign key0=4'b0111;
	
	 
	 integer cnt2=1;
	 reg clk100hz;
	
	 reg[3:0] cnt=0;
	 //100hz
	always@(posedge clk_50mhz)
	begin
		if(cnt2==250000)//25000000
		begin
		cnt2=1;
		clk100hz=~clk100hz;
		end
		else
			cnt2=cnt2+1; 
	end 
	
	 wire key_out;
	 reg tmp1,tmp2;
	 always @(posedge clk100hz) begin
     tmp1 <= btn0;
     tmp2 <= tmp1;
	end
	assign key_out = tmp1 | tmp2;

	
	//moshi
	always@(posedge key_out)
	begin
		if(cnt==9)
			cnt=0;
		else
			cnt=cnt+1;
	end 
   
	
	always@(cnt)
	begin
	  case(cnt)
		0: seg<=7'b0000001;
		1:	seg<=7'b1001111;
		2: seg<=7'b0010010;
		3:	seg<=7'b0000110;
		4:	seg<=7'b1001100;
		5:	seg<=7'b0100100;
		6:	seg<=7'b1100000;
		7:	seg<=7'b0001111;
		8:	seg<=7'b0000000;
		9: seg<=7'b0001100;
		default: seg<=7'b1111111;
		endcase
	end
	
	
endmodule
