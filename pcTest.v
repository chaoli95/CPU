`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:31:55 11/22/2016
// Design Name:   PC
// Module Name:   C:/projects/CPU/pcTest.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pcTest;

	// Inputs
	reg clk;
	reg reset;
	reg we;
	reg [8:0] newAddr;

	// Outputs
	wire [8:0] address;

	// Instantiate the Unit Under Test (UUT)
	PC uut (
		.clk(clk), 
		.reset(reset), 
		.we(we), 
		.newAddr(newAddr), 
		.address(address)
	);
	
	always begin
		#5 clk = clk+1;
	end
	
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		we = 0;
		newAddr = 0;
		
		#20 reset = 1;
		#7 we = 1;
		newAddr = 9'b101010101;
		#10 we = 0;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

