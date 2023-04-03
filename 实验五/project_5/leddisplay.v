`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:22:48 11/27/2022 
// Design Name: 
// Module Name:    leddisplay 
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
module leddisplay(
q0,
q1,
q2,
q3,
q4,
q5,
rclk,
sclk,
dio,
clk1mhz,
clk1khz,
);
input[3:0] q0,q1,q2,q3,q4,q5;
output reg rclk;
output reg sclk;
output reg dio;
input clk1mhz;
input clk1khz;

//数码管动态显示
	 reg[7:0] dig;
	 reg[7:0] seg;
	 reg[2:0] count1=0;
	 always@(posedge clk1khz)
	 begin
	 if(count1>=5)
		count1=0;
		else 
		count1=count1+1;
	 end
	 
	 always@(count1)
	 begin
	 case(count1)
	 0: dig=8'b00000001;//00000001
	 1: dig=8'b00000010;//00000010
	 2: dig=8'b00000100;//00000100
	 3: dig=8'b00001000;//00001000
	 4: dig=8'b00010000;
	 5: dig=8'b00100000;
		default: dig=8'b00000000;
	 endcase
	 end
	 
	 reg[3:0] disp_data;
	 always@(count1)
	 begin
		case(count1)
		0: disp_data=q0;
	   1: disp_data=q1;
	   2: disp_data=q2;
	   3: disp_data=q3;
	   4: disp_data=q4;
	   5: disp_data=q5;
		default: disp_data=0;
	 endcase
	 end
	 
	 
	 always@(disp_data)
	 begin
	 case(disp_data)
		0: seg<=8'b00000011;
		1:	seg<=8'b10011111;
		2: seg<=8'b00100101;
		3:	seg<=8'b00001101;
		4:	seg<=8'b10011001;
		5:	seg<=8'b01001001;
		6:	seg<=8'b01000001;
		7:	seg<=8'b00011111;
		8:	seg<=8'b00000001;
		9: seg<=8'b00011001;
		default: seg<=8'b11111111;
		endcase
	 end
	 
	 
	 //外扩数码管并串转换
	 assign sclk=clk1mhz;
	 reg[3:0] cnt1=0;
	 always@(negedge clk1mhz)
	 begin
	 if(cnt1==15)
		begin
		cnt1<=0;
		rclk<=1'b1;
		end
	 else
	    begin
		 cnt1<=cnt1+1;
		 rclk<=1'b0;
		 end
	 end
	 
	 always@(cnt1)
	 begin
	 case(cnt1)
		0:dio<=seg[0];
		1:dio<=seg[1];
		2:dio<=seg[2];
		3:dio<=seg[3];
		4:dio<=seg[4];
		5:dio<=seg[5];
		6:dio<=seg[6];
		7:dio<=seg[7];
		8:dio<=dig[7];
		9:dio<=dig[6];
		10:dio<=dig[5];
		11:dio<=dig[4];
		12:dio<=dig[3];
		13:dio<=dig[2];
		14:dio<=dig[1];
		15:dio<=dig[0];
		default: dio<=0;
	 endcase
	 end
	
	  

endmodule
