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
    input clk1,
    input stop,
    input en,
    input [3:0] mode,
    input sel,
    input button,
    output [3:0] cntout,
    output reg upper
    );
    reg [3:0] cnttemp;
    reg clk;
    assign cntout = cnttemp;
    always@(clk1,button)
    begin
        case(mode)
        4'b0001:clk<=clk1;
        4'b0010:clk<=button;
        4'b0100:clk<=button;
        4'b1000:clk<=clk1;
        default:;
        endcase
    end
    always@(posedge clk or negedge en)
    begin
        if(~en)
        begin
            upper<=1'b0;cnttemp<=4'd0;
        end
        else
        begin
            if(stop)
            ;
            else
                begin        
                    case(mode)
                    4'b0001:begin
                                if(cnttemp==4'd5) begin cnttemp<=4'd0; upper<=1'b1;end
                                else begin cnttemp<=cnttemp+1;upper<=1'b0; end
                    end
                    4'b0010:begin
                        if(sel)
                        begin
                                upper<=1'b0;
                                if(cnttemp==4'd5) begin cnttemp<=4'd0; end
                                else begin cnttemp<=cnttemp+1;upper<=1'b0; end
                        end
                    end
                    4'b0100:begin
                                if(sel)                                                       
                                begin                                                         
                                        upper<=1'b0;        
                                        if(cnttemp==4'd5) begin cnttemp<=4'd0;end
                                        else begin cnttemp<=cnttemp+1;upper<=1'b0; end                                                            
                                end                                                             
                    end
                    4'b1000:begin                  

                                if(cnttemp==4'd9) begin cnttemp<=4'd0; upper<=1'b1;end
                                else begin cnttemp<=cnttemp+1;upper<=1'b0; end

                    end
                    default:;
                    endcase
                end
          end
    end
endmodule
