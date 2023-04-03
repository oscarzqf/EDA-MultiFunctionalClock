`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:41:04 11/26/2022 
// Design Name: 
// Module Name:    div1mhz 
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
module div1mhz(
clk_50mhz,
clk1mhz
    );
	 input clk_50mhz;
	 output reg clk1mhz=0;
	 integer cnt4=1;
	always@(posedge clk_50mhz)
	begin
		if(cnt4==25)//25000000
		begin
		cnt4=1;
		clk1mhz=~clk1mhz;
		end
		else
			cnt4=cnt4+1; 
	end 

endmodule
