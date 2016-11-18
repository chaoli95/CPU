`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:36:03 11/01/2016
// Design Name:   ALU
// Module Name:   C:/projects/CPU/ALUTest.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALUTest;

	// Inputs
	reg [31:0] S;
	reg [31:0] T;
	reg [2:0] Ctr;

	// Outputs
	wire [31:0] Result;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.S(S), 
		.T(T), 
		.Result(Result), 
		.Ctr(Ctr)
	);
	
	always begin
		#5
		Ctr = Ctr + 1'b1;
	end

	initial begin
		// Initialize Inputs
		S = 32'hffffffff;
		T = 32'h7fffffff;
		Ctr = 3'b001;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

