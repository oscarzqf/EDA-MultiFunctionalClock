`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:42:21 02/06/2003 
// Design Name: 
// Module Name:    div_clk 
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
module div_clk(
clk_50mhz,clk1hz,clk100hz,clk1khz,clk1mhz
    );
	 input clk_50mhz;
	 output reg clk1hz=0;
	 output reg clk100hz=0;
	 output reg clk1khz=0;
	 output reg clk1mhz=0;
	 integer cnt1=1;
	 integer cnt2=1;
	 integer cnt3=1;
	 integer cnt4=1;
	always@(posedge clk_50mhz)
	begin
		if(cnt1==25000000)//25000000
		begin
		cnt1=1;
		clk1hz=~clk1hz;
		end
		else
			cnt1=cnt1+1; 
	end 
	 
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
