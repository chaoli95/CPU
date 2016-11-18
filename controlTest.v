`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:17:45 11/01/2016
// Design Name:   Control
// Module Name:   C:/projects/CPU/controlTest.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module controlTest;

	// Inputs
	reg clk;
	reg reset;

	// Instantiate the Unit Under Test (UUT)
	Control uut (
		.clk(clk),
		.reset(reset)
	);
	
	always begin
		#5 clk = clk + 1;
	end

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		
		#7 reset = 1;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

