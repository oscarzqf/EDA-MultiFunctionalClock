`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/27 12:36:28
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
input clk50mhz,
    input en,
    input stop,
    input readen,
    input rst_s,
    input  [3:0] btn_in,
    output [9:0] led,
    output [5:0] dig,//低有效
    output [7:0] seg,
    output beepen,
    output beep
    );
    wire clk10khz;
    wire clk100hz;
    wire clk1hz;
    wire clk5hz;
    wire [3:0] cnt1,cnt2,cnt3,cnt4,cnt5,cnt6;//记录生成的时间
    wire [23:0] cnts;//记录save的时间
    wire [3:0] cnt1r,cnt2r,cnt3r,cnt4r,cnt5r,cnt6r;//送入显示模块的时间
    wire [3:0] mode;//0001 24小时计时  0010调时间  0100闹钟设置  1000秒表
    wire [3:0] btnout;
    wire [5:0] sel;
    wire [23:0] tempcnt;
    timecreator tc(
    .clk50mhz(clk50mhz),
    .en(en),
    .clk10khz(clk10khz),
    .clk100hz(clk100hz),
    .clk1hz(clk1hz),
    .clk5hz(clk5hz)
    );
    cntcontrol c1(
    .mode(mode),//00 24小时计时  01调时间  10闹钟设置  11秒表
    .en(en),
    .clk50mhz(clk50mhz),
    .btnin(btn_in),
    .btnout(btnout)//3控制模式 2和1 控制左右选位  0表示调节按钮
    );
    ledrun lr1(
    .mode(mode),
    .sel(sel),
    .led(led)
    );
    cntmaker cm1(
    .clk100hz(clk100hz),
    .clk1hz(clk1hz),
    .mode(mode),
    .en(en),
    .rst_s(rst_s),
    .stop(stop),
    .sel1(sel),
    .btnout(btnout),
   .cnt_1(cnt1),.cnt_2(cnt2),.cnt_3(cnt3),.cnt_4(cnt4),.cnt_5(cnt5),.cnt_6(cnt6)
    );

    assign tempcnt = {cnt6,cnt5,cnt4,cnt3,cnt2,cnt1};
    clocktriger ct1(
    .en(mode[2]),
    .cnt(tempcnt),
    .clk(clk100hz),
    .rst(en),
    .beepen(beepen)    
    );
    buzz b1(
    .beepen(beepen),
    .b_eep(beep),
    .clk50mhz(clk50mhz),
    .clk1hz(clk5hz)
    );
    save s1(
    .en(mode[3]),//链接mode[3]
    .cntin(tempcnt),
    .button(btnout[0]),//链接bout0
    .readen(readen),//链接一个拨码开关
    .rst(rst_s),//链接一个拨码开关
    .cntout(cnts)
    );
    assign cnt1r=(mode[3]&&readen)?cnts[3:0]:cnt1;
    assign cnt2r=(mode[3]&&readen)?cnts[7:4]:cnt2;
    assign cnt3r=(mode[3]&&readen)?cnts[11:8]:cnt3;
    assign cnt4r=(mode[3]&&readen)?cnts[15:12]:cnt4;
    assign cnt5r=(mode[3]&&readen)?cnts[19:16]:cnt5;
    assign cnt6r=(mode[3]&&readen)?cnts[23:20]:cnt6;
    segmaker sm1(
    .cnt1(cnt1r),.cnt2(cnt2r),.cnt3(cnt3r),.cnt4(cnt4r),.cnt5(cnt5r),.cnt6(cnt6r),
    .clk10khz(clk10khz),
    .dig(dig),//低有效
    .seg(seg)
    );
endmodule
