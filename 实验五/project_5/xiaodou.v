`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:52:59 11/26/2022 
// Design Name: 
// Module Name:    xiaodou 
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
module xiaodou(
clk100hz,
btn0,
key_out
    );
	 input btn0;
	 input clk100hz;
	 output key_out;
	  reg tmp1,tmp2;
	 always @(posedge clk100hz) begin
     tmp1 <= btn0;
     tmp2 <= tmp1;
	end
	assign key_out = tmp1 | tmp2;

endmodule
