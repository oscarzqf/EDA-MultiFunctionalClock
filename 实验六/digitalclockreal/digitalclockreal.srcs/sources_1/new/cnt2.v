`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/28 14:51:50
// Design Name: 
// Module Name: cnt2
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


module cnt2(
    input clk1,clk2,
    input stop,
    input en,
    input [3:0] mode,
    input rst_s,
    input sel,
    input button,
    output reg [3:0] cntout,
    output reg upper1,upper2
    );
    reg [3:0] cnttemp1,cnttemp2,cnttemp3;
    reg clk;
    always@(clk1,button)
    begin
        case(mode)
        4'b0001:clk<=clk1;
        4'b0010:clk<=~button;
        default:clk<=clk1;
        endcase
    end
    always@(mode)
    begin
        case(mode)
        4'b0100:cntout<=cnttemp2;
        4'b1000:cntout<=cnttemp3;
        default:cntout<=cnttemp1;
        endcase
    end
    always@(posedge clk or negedge en)//时钟与调整时间
    begin
        if(~en)
        begin
            upper1<=1'b0;cnttemp1<=4'd0;
        end
        else
        begin
            if(stop)
            ;
            else
                begin        
                    case(mode)
                    4'b0010:begin
                        if(sel)
                        begin
                                upper1<=1'b0;
                                if(cnttemp1==4'd5) begin cnttemp1<=4'd0; end
                                else begin cnttemp1<=cnttemp1+1;end
                        end
                    end
                   
                    default:begin
                                if(cnttemp1==4'd5) begin cnttemp1<=4'd0; upper1<=1'b1;end
                                else begin cnttemp1<=cnttemp1+1;upper1<=1'b0; end
                    end
                    endcase
                end
          end
    end
    always@(posedge button or negedge en)
     begin
        if(~en)
        begin
            cnttemp2<=4'd0;
        end
        else
        begin
            if(stop)
            ;
            else
                begin        
                    case(mode)
                    4'b0100:begin
                                if(sel)                                                       
                                begin                            
                                        if(cnttemp2==4'd5) begin cnttemp2<=4'd0; end
                                        else begin cnttemp2<=cnttemp2+1; end     
                                                        
                                end                                                             
                    end
                   
                    default:;
                    endcase
                end
          end
    end
    always@(posedge clk2 or negedge en or posedge rst_s)
     begin
        if(~en)
        begin
            cnttemp3<=4'd0;upper2<=0;
        end
        else
        begin
        if(rst_s) begin cnttemp3=4'd0;upper2=1'd0;end 
        else                                                              
        begin                                         
            if(stop)
            ;
            else
                begin        
                    case(mode)
                    4'b1000:begin              
                                     if(cnttemp3==4'd9) begin cnttemp3<=4'd0; upper2<=1'b1;end
                                     else begin cnttemp3<=cnttemp3+1;upper2<=1'b0; end
                    end

                    default:;
                    endcase
                end
          end
          end
    end
endmodule
