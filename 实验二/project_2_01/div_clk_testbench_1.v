`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:03:19 02/06/2003
// Design Name:   div_clk
// Module Name:   C:/2020020910019/project_2_01/div_clk_testbench_1.v
// Project Name:  project_2_01
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: div_clk
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module div_clk_testbench_1;

	// Inputs
	reg clk_50mhz;

	// Outputs
	wire clk1hz;
	wire clk100hz;
	wire clk1khz;
	wire clk1mhz;

	// Instantiate the Unit Under Test (UUT)
	div_clk uut (
		.clk_50mhz(clk_50mhz), 
		.clk1hz(clk1hz), 
		.clk100hz(clk100hz), 
		.clk1khz(clk1khz), 
		.clk1mhz(clk1mhz)
	);

	initial begin
		// Initialize Inputs
		clk_50mhz = 0;

		// Wait 100 ns for global reset to finis
	end
	always
	begin
	#10
	clk_50mhz=~clk_50mhz;
    end
endmodule

