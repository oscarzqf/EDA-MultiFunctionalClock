`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/27 12:51:02
// Design Name: 
// Module Name: timecreator
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


module timecreator(
    input clk50mhz,
    input en,
    input rst_s,
    output reg clk10khz,
    output reg clk100hz,
    output reg clk1hz,
    output reg clk5hz
    );
    reg [27:0] cnt1,cnt2,cnt3,cnt4;
    always@(posedge clk50mhz)
    begin
        if(~en)
        begin
        cnt1<=28'd0;clk10khz<=1'b0;
        end
        else
        begin
        if(cnt1<2499)
        cnt1<=cnt1+1;
        else
        begin
        clk10khz<=~clk10khz;
        cnt1<=28'd0;           
        end
        end
    end

       always@(posedge clk50mhz)
    begin
        if(~en)
        begin
            cnt2<=28'd0;clk100hz<=1'b0;
        end
        else
        begin
        if(cnt2<249999)
        begin
        cnt2<=cnt2+1;clk100hz<=1'b0;
        end
        else
        begin
        clk100hz<=1;
        cnt2<=28'd0;           

        end
        end
    end
       always@(posedge clk50mhz)
    begin
        if(~en)
        begin
            cnt3<=28'd0;clk1hz<=1'b0;
        end
        else
        begin   
        if(cnt3<24999999)
        cnt3<=cnt3+1;
        else
        begin
        clk1hz<=~clk1hz;
        cnt3<=28'd0;           
        end
        end 
    end
    always@(posedge clk50mhz)
    begin
        if(~en)
        begin
        cnt4<=28'd0;clk5hz<=1'b0;
        end
        else
        begin
        if(cnt4<4999999)
        cnt4<=cnt4+1;
        else
        begin
        clk5hz<=~clk5hz;
        cnt4<=28'd0;           
        end
        end
    end
endmodule
