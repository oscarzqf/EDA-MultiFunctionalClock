`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/29 19:18:30
// Design Name: 
// Module Name: clocktriger
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


module clocktriger(
    input en,
    input [23:0] cnt,
    input clk,
    input rst,
    output reg beepen    
    );
    reg [23:0] set;
    always@(posedge clk)
    begin
        if(~rst)
            set<=24'd0;
        else
        begin
            if(en)
                set<=cnt;
             else
             begin
                if(cnt==set)
                    begin
                    beepen <= 1;
                    end
                else beepen<=0;
             end
        end
    end
endmodule
