`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/27 13:34:32
// Design Name: 
// Module Name: ledrun
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


module ledrun(
    input [3:0] mode,
    input [5:0] sel,
    output [9:0] led
    );
    assign led[3:0]=mode;
    assign led[9:4]=sel;
endmodule
