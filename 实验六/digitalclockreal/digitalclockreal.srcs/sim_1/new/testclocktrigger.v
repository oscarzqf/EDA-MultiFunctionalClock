`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/02 16:25:05
// Design Name: 
// Module Name: testclocktrigger
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


module testclocktrigger(

    );
    reg mode;
    reg [23:0] tempcnt;
    reg clk100hz;
    reg en;
    wire beepen;
    clocktriger ct1(
    .en(mode),
    .cnt(tempcnt),
    .clk(clk100hz),
    .rst(en),
    .beepen(beepen)  
    );
    initial begin
    mode=0;en=0;tempcnt=24'b000000010010001100100011;clk100hz=0;
    end
    always begin #10 clk100hz=~clk100hz;end
    always begin
    en=1;
    #100 mode=1;
    #100 mode = 0; 
    #100 tempcnt=24'd0;
    #1000 tempcnt=24'b000000010010001100100011;
    #100 tempcnt=24'd0;  
    #100 mode=1;
    #100 mode = 0; 
    #100 tempcnt=24'b000000010010001100100011;
    
    end
endmodule
