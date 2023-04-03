`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/02 20:01:48
// Design Name: 
// Module Name: save
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


module save(
    input en,//链接mode[3]
    input [23:0] cntin,
    input button,//链接bout3
    input readen,//链接一个拨码开关
    input rst,//链接一个拨码开关
     output reg [23:0] cntout
    );
    reg [23:0] savecnt [7:0];
    reg [2:0] i;
    always@(negedge button or posedge rst or posedge readen)
    begin
        if(en)
        begin
            if(rst)
                begin 
                savecnt[7] = 24'd0;
                savecnt[6] = 24'd0;
                savecnt[5] = 24'd0;
                savecnt[4] = 24'd0;
                savecnt[3] = 24'd0;
                savecnt[2] = 24'd0;
                savecnt[1] = 24'd0;
                savecnt[0] = 24'd0;
                i= 3'd0;
                end
                else
                begin
                    if(~readen)
                    begin
                        if(button==0) 
                        begin
                            i<=i+1;
                            case(i)
                            3'd0:savecnt[0]<=cntin;
                            3'd1:savecnt[1]<=cntin;
                            3'd2:savecnt[2]<=cntin;
                            3'd3:savecnt[3]<=cntin;
                            3'd4:savecnt[4]<=cntin;
                            3'd5:savecnt[5]<=cntin;
                            3'd6:savecnt[6]<=cntin;
                            3'd7:savecnt[7]<=cntin;
                            default:;
                            endcase
                        end
                    end
                    else
                    begin
                     if(button==0) 
                        begin
                            i<=i+1;
                            case(i)
                            3'd0:cntout<=savecnt[0];
                            3'd1:cntout<=savecnt[1];
                            3'd2:cntout<=savecnt[2];
                            3'd3:cntout<=savecnt[3];
                            3'd4:cntout<=savecnt[4];
                            3'd5:cntout<=savecnt[5];
                            3'd6:cntout<=savecnt[6];
                            3'd7:cntout<=savecnt[7];
                            default:;
                            endcase
                        end
                        else i<=0;
                    end
                end
        end
    end
endmodule
