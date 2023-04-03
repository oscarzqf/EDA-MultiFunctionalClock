`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:28:15 02/06/2003
// Design Name:   fpq_led8
// Module Name:   C:/2020020910019/project_2_01/fpq_led8_testbench.v
// Project Name:  project_2_01
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fpq_led8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fpq_led8_testbench;

	// Inputs
	reg clk_50mhz;
	reg start;

	// Outputs
	wire clk_1hz;
	wire [7:0] led;

	// Instantiate the Unit Under Test (UUT)
	fpq_led8 uut (
		.clk_50mhz(clk_50mhz), 
		.start(start), 
		.clk_1hz(clk_1hz), 
		.led(led)
	);

	initial  
	begin
		// Initialize Inputs
		clk_50mhz = 0;
		start=0;
		#50;
		start = 1;
	end 
      always
begin
#10;
clk_50mhz=~clk_50mhz;
end
      
endmodule

