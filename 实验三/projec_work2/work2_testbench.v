`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:05:12 02/06/2003
// Design Name:   work_2
// Module Name:   C:/2020020910019/projec_work2/work2_testbench.v
// Project Name:  projec_work2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: work_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module work2_testbench;

	// Inputs
	reg clk_50mhz;
	reg btn0;

	// Outputs
	wire [6:0] seg;
	wire [3:0] key0;

	// Instantiate the Unit Under Test (UUT)
	work_2 uut (
		.clk_50mhz(clk_50mhz), 
		.btn0(btn0), 
		.seg(seg), 
		.key0(key0)
	);

	initial begin
		// Initialize Inputs
		clk_50mhz = 0;
			btn0 = 0;
		// Wait 100 ns for global reset to finish
		  
		// Add stimulus here

	end
	always#10 clk_50mhz=~clk_50mhz;
	
   always
		begin    
		#500000000;
       btn0=~btn0;
		end
endmodule

