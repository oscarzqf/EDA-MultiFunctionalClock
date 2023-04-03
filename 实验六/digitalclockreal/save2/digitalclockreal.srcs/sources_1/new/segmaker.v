`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/27 13:50:35
// Design Name: 
// Module Name: segmaker
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


module segmaker(
    input [3:0] cnt1,cnt2,cnt3,cnt4,cnt5,cnt6,
    input clk10khz,
    output reg [5:0] dig,//µÕ”––ß
    output reg [7:0] seg
    );
    reg [2:0] flag;
    initial flag=3'b000;
    always@(posedge clk10khz)
    begin
    if(flag==3'd5)
    flag<=3'd0;
    else
    flag<=flag+1;
    end
    always@(flag)
    begin
    case(flag)
    3'd0:
    begin
        dig<=6'b111110;
    	case(cnt1)
		4'h0: seg=8'h3f;// DP,GFEDCBA
		4'h1: seg=8'h06;
		4'h2: seg=8'h5b;
		4'h3: seg=8'h4f;
		4'h4: seg=8'h66;
		4'h5: seg=8'h6d;
		4'h6: seg=8'h7d;
		4'h7: seg=8'h07;
		4'h8: seg=8'h7f;
		4'h9: seg=8'h6f;
		default: seg=0;
		endcase
    end
    3'b1:
    begin
         dig<=6'b111101;
        case(cnt2)
		4'h0: seg=8'h3f;// DP,GFEDCBA
		4'h1: seg=8'h06;
		4'h2: seg=8'h5b;
		4'h3: seg=8'h4f;
		4'h4: seg=8'h66;
		4'h5: seg=8'h6d;
		4'h6: seg=8'h7d;
		4'h7: seg=8'h07;
		4'h8: seg=8'h7f;
		4'h9: seg=8'h6f;
		default: seg=0;
		endcase
    end
    3'd2:
    begin
     dig<=6'b111011;
     case(cnt3)
		4'h0: seg=8'hbf;// DP,GFEDCBA
		4'h1: seg=8'h86;
		4'h2: seg=8'hdb;
		4'h3: seg=8'hcf;
		4'h4: seg=8'he6;
		4'h5: seg=8'hed;
		4'h6: seg=8'hfd;
		4'h7: seg=8'h87;
		4'h8: seg=8'hff;
		4'h9: seg=8'hef;
		default: seg=0;
		endcase
    end
    3'd3:
    begin
     dig<=6'b110111;
     case(cnt4)
		4'h0: seg=8'h3f;// DP,GFEDCBA
		4'h1: seg=8'h06;
		4'h2: seg=8'h5b;
		4'h3: seg=8'h4f;
		4'h4: seg=8'h66;
		4'h5: seg=8'h6d;
		4'h6: seg=8'h7d;
		4'h7: seg=8'h07;
		4'h8: seg=8'h7f;
		4'h9: seg=8'h6f;
		default: seg=0;
		endcase
    end
    3'd4:
    begin
     dig<=6'b101111;
    case(cnt5)
		4'h0: seg=8'hbf;// DP,GFEDCBA
		4'h1: seg=8'h86;
		4'h2: seg=8'hdb;
		4'h3: seg=8'hcf;
		4'h4: seg=8'he6;
		4'h5: seg=8'hed;
		4'h6: seg=8'hfd;
		4'h7: seg=8'h87;
		4'h8: seg=8'hff;
		4'h9: seg=8'hef;
		default: seg=0;
		endcase
    end
    3'd5:
    begin
     dig<=6'b011111;
    case(cnt6)
		4'h0: seg=8'h3f;// DP,GFEDCBA
		4'h1: seg=8'h06;
		4'h2: seg=8'h5b;
		4'h3: seg=8'h4f;
		4'h4: seg=8'h66;
		4'h5: seg=8'h6d;
		4'h6: seg=8'h7d;
		4'h7: seg=8'h07;
		4'h8: seg=8'h7f;
		4'h9: seg=8'h6f;
		default: seg=0;
		endcase
    end
    default:;
    endcase
    end
endmodule
