`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:40:05 02/06/2003 
// Design Name: 
// Module Name:    top99 
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
module top99(
clk_50mhz,
en,
rst,
sel,
seg
    );
	 
	 input clk_50mhz;
	 input rst;
	 input en;
	 output reg[3:0] sel=0;
	 output reg[6:0] seg=0;
	 wire[3:0] q0,q1;
	 wire carry_out;
	 wire over;
	 
	 //100hz
	 reg clk100hz=0;
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
	
	 counter10 u0(
		.clk100hz(clk100hz),
		.rst(rst),
		.carry_in(en),
		.cnt(q0),
		.carry_out(carry_out)
	 );
	counter10 u1(
	.clk100hz(carry_out),
	.rst(rst),
	.carry_in(en),
	.cnt(q1),
	.carry_out(over)
	); 
	
	//1khz
	reg clk1khz=0;
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
	
	reg count=0;
	always@(posedge clk1khz)
	begin
	count=~count;
	end
	
	always@(count)
	begin
	case(count)
	0:sel=4'b1110;
	1: sel=4'b1101;
	default:sel=4'b1111;
	endcase
	end
	
	reg[3:0] disp_data;
	always@(count)
	begin
		case(count)
			0:disp_data=q0;
			1:disp_data=q1;
			default: disp_data=0;
		endcase
	end
	
	always@(disp_data)
	begin
	  case(disp_data)
		0: seg<=7'b0000001;
		1:	seg<=7'b1001111;
		2: seg<=7'b0010010;
		3:	seg<=7'b0000110;
		4:	seg<=7'b1001100;
		5:	seg<=7'b0100100;
		6:	seg<=7'b0100000;
		7:	seg<=7'b0001111;
		8:	seg<=7'b0000000;
		9: seg<=7'b0001100;
		default: seg<=7'b1111111;
		endcase
	end
	
	
	
	

endmodule
