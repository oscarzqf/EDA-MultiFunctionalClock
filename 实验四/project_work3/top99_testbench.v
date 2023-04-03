`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:44:09 02/06/2003
// Design Name:   top99
// Module Name:   C:/2020020910019/project_work3/top99_testbench.v
// Project Name:  project_work3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top99
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module top99_testbench;

	// Inputs
	reg clk_50mhz;
	reg en;
	reg rst;

	// Outputs
	wire [3:0] sel;
	wire [6:0] seg;

	// Instantiate the Unit Under Test (UUT)
	top99 uut (
		.clk_50mhz(clk_50mhz), 
		.en(en), 
		.rst(rst), 
		.sel(sel), 
		.seg(seg)
	);

	initial begin
		// Initialize Inputs
		clk_50mhz = 0;
		en = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#20;
		rst=1;
		en=1;
		
        
		// Add stimulus here

	end
	always
	begin
	#10;
	clk_50mhz=~clk_50mhz;
	end
      
endmodule

