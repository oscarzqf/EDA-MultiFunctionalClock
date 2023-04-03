`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:38:51 11/26/2022 
// Design Name: 
// Module Name:    div1khz 
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
module div1khz(
clk_50mhz,
clk1khz
    );
	 input clk_50mhz;
	 output reg clk1khz=0;
	 integer cnt3=1;
	 always@(posedge clk_50mhz)
	begin
		if(cnt3==25000)//25000000
		begin
		cnt3=1;
		clk1khz=~clk1khz;
		end
		else
			cnt3=cnt3+1; 
	end 


endmodule
