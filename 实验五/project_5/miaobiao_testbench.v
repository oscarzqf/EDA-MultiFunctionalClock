`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:29:37 11/27/2022
// Design Name:   miaobiaotop
// Module Name:   E:/2020020910019/project_5/miaobiao_testbench.v
// Project Name:  project_5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: miaobiaotop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module miaobiao_testbench;

	// Inputs
	reg clk_50mhz;
	reg switch0;
	reg switch1;
	reg switch2;
	reg btn0;

	// Outputs
	wire rclk;
	wire sclk;
	wire dio;

	// Instantiate the Unit Under Test (UUT)
	miaobiaotop uut (
		.clk_50mhz(clk_50mhz), 
		.switch0(switch0), 
		.switch1(switch1), 
		.switch2(switch2), 
		.btn0(btn0), 
		.rclk(rclk), 
		.sclk(sclk), 
		.dio(dio)
	);

	initial begin
		// Initialize Inputs
		clk_50mhz = 0;
		switch0 = 0;
		switch1 = 0;
		switch2 = 0;
		btn0 = 0;
		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
		switch0=1;
		switch1=1;
		switch2=1;
	end
	always
	begin
	#10;
	clk_50mhz=~clk_50mhz;
	end
      
endmodule

