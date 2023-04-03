`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/27 13:53:36
// Design Name: 
// Module Name: cntmaker
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


module cntmaker(
    input clk100hz,
    input clk1hz,
    input en,
    input stop,
    input [3:0] mode,
    input [3:0] btnout,
    output [5:0] sel1,
    output [3:0] cnt_1,cnt_2,cnt_3,cnt_4,cnt_5,cnt_6
    );
    reg [5:0] sel;
    wire cout1,cout2,cout3,cout4,cout5,flag;
    assign sel1=sel;
    always@(posedge btnout[1] or negedge en)
    begin
        if(~en)
            sel<=6'b000001;
        else
        begin
                sel[5:1]<=sel[4:0];
                sel[0]<=sel[5];
        end
    end
    cnt1 cnt1
    (
    .clk1(clk1hz),
    .clk2(clk100hz),
    .en(en),
    .stop(stop),
    .mode(mode),
    .sel(sel[0]),
    .button(btnout[0]),
    .cntout(cnt_1),
    .upper(cout1)
    );
    cnt2 cnt2
    (
    .clk1(cout1),
    .en(en),
    .stop(stop),
    .mode(mode),
    .sel(sel[1]),
    .button(btnout[0]),
    .cntout(cnt_2),
    .upper(cout2)
    );
    cnt3 cnt3
    (
    .clk1(cout2),
    .en(en),
    .stop(stop),
    .mode(mode),
    .sel(sel[2]),
    .button(btnout[0]),
    .cntout(cnt_3),
    .upper(cout3)
    );
        cnt4 cnt4
    (
    .clk1(cout3),
    .en(en),
    .stop(stop),
    .mode(mode),
    .sel(sel[3]),
    .button(btnout[0]),
    .cntout(cnt_4),
    .upper(cout4)
    );
    cnt5 cnt5
    (
    .clk1(cout4),
    .en(en),
    .flag(flag),
    .stop(stop),
    .mode(mode),
    .sel(sel[4]),
    .button(btnout[0]),
    .cntout(cnt_5),
    .upper(cout5)
    );
    cnt6 cnt6
    (
    .clk1(cout5),
    .en(en),
    .stop(stop),
    .mode(mode),
    .sel(sel[5]),
    .button(btnout[0]),
    .cntout(cnt_6),
    .upper(flag)
    );
endmodule
