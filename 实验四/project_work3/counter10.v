`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:25:43 02/06/2003 
// Design Name: 
// Module Name:    counter10 
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
module counter10(
rst,
clk100hz,
carry_in,
cnt,
carry_out
    );
	 input rst,clk100hz,carry_in;
	 output reg carry_out;
	 output reg[3:0] cnt=0;
	 
	 always@(posedge clk100hz or negedge rst)
	 begin
	 
	 if(!rst)
	 begin
	 cnt=0;
	 carry_out=0;
	 end 
	 else if(carry_in)
	 begin
	 if(cnt==9)
		begin
		cnt=0;
		carry_out=1;
		end
		else 
		begin
		cnt=cnt+1;
		carry_out=0;
		end
	 end
	 
	 end
	 



endmodule
