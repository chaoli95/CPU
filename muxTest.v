`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:24:29 11/22/2016
// Design Name:   DataSelector
// Module Name:   C:/projects/CPU/muxTest.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DataSelector
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module muxTest;

	// Inputs
	reg [31:0] S;
	reg [31:0] T;
	reg Ctrl;

	// Outputs
	wire [31:0] Res;

	// Instantiate the Unit Under Test (UUT)
	DataSelector uut (
		.S(S), 
		.T(T), 
		.Ctrl(Ctrl), 
		.Res(Res)
	);
	
	always begin
		#5
		Ctrl = Ctrl + 1'b1;
	end

	initial begin
		// Initialize Inputs
		S = 32'hffff;
		T = 32'h5555;
		Ctrl = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

