`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:00:49 11/26/2022 
// Design Name: 
// Module Name:    miaobiaotop 
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
module miaobiaotop(
clk_50mhz,
switch0,
switch1,
switch2,
btn0,
rclk,
sclk,
dio
    );
	 //端口
	 input switch0,switch1,switch2,btn0;//使能、复位、读取显示、存储\读取
	 input clk_50mhz;
	 output  rclk;//外扩数码管接口
	 output sclk;
	 output  dio;	 
	 
	 
	 
	 //分频
	 wire clk100hz;
	 wire clk1mhz;
	 wire clk1khz;
	 div100hz clk0(
	 .clk_50mhz(clk_50mhz),
	 .clk100hz(clk100hz)
	 );
	 div1mhz clk1(
		.clk_50mhz(clk_50mhz),
		.clk1mhz(clk1mhz)
	 );
	 div1khz clk2(
		.clk_50mhz(clk_50mhz),
		.clk1khz(clk1khz)
	 );
	
	 //计数
	 wire [3:0] q0; 
	 wire [3:0] q1;
	 wire [3:0] q2;
	 wire [3:0] q3;
	 wire [3:0] q4;
	 wire [3:0] q5;
	 
	 wire carry_out1;
	 wire carry_out2;
	 wire carry_out3;
	 wire carry_out4;
	 wire carry_out5;
	 wire over;
	 counter10 u1(
		.clk100hz(clk100hz),
		.rst(switch1),
		.en(switch0),
		.cnt(q0),
		.carry_out(carry_out1)
	 );
	 counter10 u2(
	 .clk100hz(carry_out1),
	 .rst(switch1),
	 .en(switch0),
	 .cnt(q1),
	 .carry_out(carry_out2)
	 );
	  counter10 u3(
	 .clk100hz(carry_out2),
	 .rst(switch1),
	 .en(switch0),
	 .cnt(q2),
	 .carry_out(carry_out3)
	 );
	 counter6 u4(
	 .clk100hz(carry_out3),
	 .rst(switch1),
	 .en(switch0),
	 .cnt(q3),
	 .carry_out(carry_out4)
	 );
	  counter10 u5(
	 .clk100hz(carry_out4),
	 .rst(switch1),
	 .en(switch0),
	 .cnt(q4),
	 .carry_out(carry_out5)
	 );
	 counter6 u6(
	 .clk100hz(carry_out5),
	 .rst(switch1),
	 .en(switch0),
	 .cnt(q5),
	 .carry_out(over)
	 );
	 
	 
	 //存储
reg [23:0]data_memory0=0;
reg [23:0]data_memory1=0;
reg [23:0]data_memory2=0;
reg [23:0]memory=0;
reg [2:0] cnt_mem=0;

wire key_xd;
xiaodou x0(
.clk100hz(clk100hz),
.btn0(btn0),
.key_out(key_xd)
);

always@(negedge key_xd or posedge switch2)
begin
if(switch2==1)begin
cnt_mem<=2;
end
else if(cnt_mem==0)
cnt_mem<=2;
else
cnt_mem<=cnt_mem-1;
end


//移位
always@(negedge key_xd)
begin
if(switch2==1)
begin
data_memory0<={q5,q4,q3,q2,q1,q0};
data_memory1<=data_memory0;
data_memory2<=data_memory1;
end
end
	 
	      
	 //数码管动态显示

	wire [23:0] dispnum;
	reg[23:0] disnum_tmp;
	assign dispnum=disnum_tmp;
	always@(posedge rclk)
	begin
	if(switch2==1)
		disnum_tmp<={q5,q4,q3,q2,q1,q0};
	else
		case(cnt_mem)
			0:disnum_tmp<=data_memory0;
			1:disnum_tmp<=data_memory1;
			2:disnum_tmp<=data_memory2;
		endcase
	end
	
	 leddisplaynew d0(
	 .rclk(rclk),
	 .sclk(sclk),
	 .clk1mhz(clk1mhz),
	 .clk1khz(clk1khz),
	 .dio(dio),
	 .dispnum(dispnum)
	 );
	 
	 
	 

endmodule
