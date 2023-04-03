`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/27 13:20:45
// Design Name: 
// Module Name: cntcontrol
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


module cntcontrol(
    input [3:0] btnin,
    input clk50mhz,
    input en,
    output [3:0] btnout,
    output reg [3:0] mode
    );
    wire [3:0] btn_out;
    assign btnout = btn_out;
    ajxd ajxd1(
    .clk50mhz(clk50mhz),
    .btn_in(btnin),//3控制模式 2和1 控制左右选位  0表示调节按钮
    .btn_out(btn_out),
    .rst_n(en)
    );
    always@(posedge btn_out[3] or negedge en)
    begin
        if(~en)
            mode<=4'b0001;
        else
        begin
                mode[3:1]<=mode[2:0];
                mode[0]<=mode[3];
        end
    end
    
endmodule
