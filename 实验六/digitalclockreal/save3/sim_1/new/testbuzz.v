`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/02 16:52:11
// Design Name: 
// Module Name: testbuzz
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


module testbuzz(

    );
    reg beepen;
    wire beep;
    reg clk50mhz;
    reg clk1hz;
    buzz b1(
    .beepen(beepen),
    .b_eep(beep),
    .clk50mhz(clk50mhz),
    .clk1hz(clk1hz)
    );
    initial begin  clk50mhz=0;clk1hz=0;beepen=0; end
    always begin
    #1 clk50mhz=~clk50mhz;
    end
     always begin
    #50000000 clk1hz=~clk1hz;
    end
     always begin
     #1000 beepen = 1; #100 beepen = 0;#1000000000; end
endmodule
