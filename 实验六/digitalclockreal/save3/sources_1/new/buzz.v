`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/30 10:36:23
// Design Name: 
// Module Name: buzz
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


module buzz(
    input beepen,
    output b_eep,
    input clk50mhz,
    input clk1hz
    );
    reg beep = 0;
    reg [2:0] timecnt;
    reg timecnten;
    reg [31:0] cnt=32'd0;
    parameter      MIN_DO = 18'd190800,//(50_000_000/262)
                    MIN_RE = 18'd170050,//(50_000_000/294)
                    MIN_MI = 18'd151500,//(50_000_000/330)
                    MIN_FA = 18'd143250,//(50_000_000/349)
                    MIN_SO = 18'd127550,//(50_000_000/392)
                    MIN_LA = 18'd113600,//(50_000_000/440)
                    MIN_XI = 18'd101200;//(50_000_000/494)
//÷–“Ù
    parameter      MID_DO = 17'd95600,//(50_000_000/523)
                    MID_RE = 17'd85150,//(50_000_000/587)
                    MID_MI = 17'd75850,//(50_000_000/659)
                    MID_FA = 17'd71600,//(50_000_000/698)
                    MID_SO = 17'd63750,//(50_000_000/784)
                    MID_LA = 17'd56800,//(50_000_000/880)
                    MID_XI = 17'd50600;//(50_000_000/988)
//∏ﬂ“Ù    
    parameter  MAX_DO = 16'd47755,//(50_000_000/1047)
                MAX_RE = 16'd42553,//(50_000_000/1175)
                MAX_MI = 16'd37907,//(50_000_000/1319)
                MAX_FA = 16'd35790,//(50_000_000/1397)
                MAX_SO = 16'd31887,//(50_000_000/1568)
                MAX_LA = 16'd28409,//(50_000_000/1760)
                MAX_XI = 16'd25419;//(50_000_000/1967)
    parameter  TIME_300ms = 24'd14_999_999,//300ms,∞Î≈ƒ
                TIME_500ms = 25'd24_999_999;//500ms,“ª≈ƒ
    always@(posedge beepen or posedge clk1hz)
    begin
        if(beepen == 1)
        timecnten<=1;
        else timecnten<=0;
    end
    always@(posedge clk1hz or posedge timecnten)
    begin
    if(timecnten==1) timecnt<=3'd7;
    else if(timecnt!=0) timecnt<=timecnt-1;
    else ;
    end
    always@(posedge clk50mhz)
    begin
    
       
        
        if(timecnt==0) ;
        else
        begin
            case(timecnt)
            3'd7:begin 
        
            if(cnt>= MIN_LA)  begin cnt<=32'd0;beep<=~beep;end
            else cnt<=cnt+32'd1;
            end
            3'd6:begin
        
            if(cnt>=  MIN_XI)  begin cnt<=32'd0;beep<=~beep;end
            else cnt<=cnt+32'd1;
            end
            3'd5:begin
           
            if(cnt>=  MID_DO)  begin cnt<=32'd0;beep<=~beep;end
            else cnt<=cnt+32'd1;
            end
            3'd4:begin
     
            if(cnt>=  MID_RE)  begin cnt<=32'd0;beep<=~beep;end
            else cnt<=cnt+32'd1;
            end
            3'd3:begin 
     
            if(cnt>= MID_MI)  begin cnt<=32'd0;beep<=~beep;end
            else cnt<=cnt+32'd1;
            end
            3'd2:begin 
       
            if(cnt>= MID_MI)  begin cnt<=32'd0;beep<=~beep;end
            else cnt<=cnt+32'd1;
            end
            3'd1:begin 
    
            if(cnt>=  MID_XI)  begin cnt<=32'd0;beep<=~beep;end
            else cnt<=cnt+32'd1;
            end
            3'd0:begin 

            if(cnt>=  MID_LA)  begin cnt<=32'd0;beep<=~beep;end
            else cnt<=cnt+32'd1;
            end
            default:;
            endcase
        end
    end
    assign b_eep=beep;
endmodule
