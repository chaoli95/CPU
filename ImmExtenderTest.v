`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:55:29 11/01/2016
// Design Name:   ImmExtender
// Module Name:   C:/projects/CPU/ImmExtenderTest.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ImmExtender
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ImmExtenderTest;

	// Inputs
	reg [15:0] Imm;
	reg Ctr;

	// Outputs
	wire [31:0] Res;

	// Instantiate the Unit Under Test (UUT)
	ImmExtender uut (
		.Imm(Imm), 
		.Ctr(Ctr), 
		.Res(Res)
	);
	
	always begin
		#20
		Ctr = Ctr + 1;
	end	

	initial begin
		// Initialize Inputs
		Imm = 16'h0fff;
		Ctr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

