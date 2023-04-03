`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/03 12:58:43
// Design Name: 
// Module Name: testsave
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


module testsave(

    );
    reg mode;
    reg [23:0] tempcnt;
    reg btnout;
    reg readen;
    reg rst_s;
    wire [23:0] cnts;
     save s1(
    .en(mode),//链接mode[3]
    .cntin(tempcnt),
    .button(btnout),//链接bout0
    .readen(readen),//链接一个拨码开关
    .rst(rst_s),//链接一个拨码开关
    .cntout(cnts)
    );
    initial begin   mode = 1;  rst_s = 1;  tempcnt = 24'h012345; btnout = 1; readen = 0;
    end
    always
    begin
        #10 rst_s = 0;
        #200 btnout = 0;
        #20 btnout = 1;
          #200 btnout = 0;
        #20 btnout = 1;
          #200 btnout = 0;
        #20 btnout = 1;
          #200 btnout = 0;
        #20 btnout = 1;
                #20 btnout = 1;
      
                 #200 btnout = 0;
        #20 btnout = 1;
          #200 btnout = 0;
        #20 btnout = 1;
          #200 btnout = 0;
        #20 btnout = 1;
          #200 btnout = 0;
        #20 btnout = 1;
        #20 readen = 1;
        
    end
endmodule
