`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:50:52 11/26/2022 
// Design Name: 
// Module Name:    counter6 
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
module counter6(
rst,
clk100hz,
en,
cnt,
carry_out
    );
	 input rst,clk100hz,en;
	 output reg carry_out;
	 output reg[3:0] cnt=0;
	 
	 always@(posedge clk100hz or negedge rst)
	 begin
	 
	 if(!rst)
	 begin
	 cnt=0;
	 carry_out=0;
	 end 
	 else if(en)
	 begin
	 if(cnt==5)
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
