`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:27:24 02/06/2003 
// Design Name: 
// Module Name:    apq_led8 
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
module  fpq_led8 (clk_50mhz, start, clk_1hz, led);   input clk_50mhz;
	input start;
	output clk_1hz;
	output[7:0]led;
	reg clk_1hz=0;
	reg[7:0]led;
	integer cnt=1;
	
	always@(posedge clk_50mhz)
	begin
		if(cnt==3)//25000000
		begin
		cnt=1;
		clk_1hz=~clk_1hz;
		end
		else
			cnt=cnt+1; 
	end   
	
	always@(posedge clk_1hz or negedge start) 
	begin
		if(start==1'b0)
		led<=8'b00000001;
		else
		begin
		led[7:1]<=led[6:0];
		led[0]<=led[7];
		end
	end
	
endmodule
