`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:35:54 11/26/2022 
// Design Name: 
// Module Name:    div100hz 
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
module div100hz(
clk_50mhz,
clk100hz
    );
	 input clk_50mhz;
	 output reg clk100hz=0;
	 integer cnt2=1;
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


endmodule
