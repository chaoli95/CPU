`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:43:14 11/01/2016
// Design Name:   Register
// Module Name:   C:/projects/CPU/RegTest.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RegTest;

	// Inputs
	reg clk;
	reg reset;
	reg write;
	reg [4:0] dAddr;
	reg [31:0] data;
	reg [4:0] sAddr;
	reg [4:0] tAddr;

	// Outputs
	wire [31:0] sData;
	wire [31:0] tData;

	// Instantiate the Unit Under Test (UUT)
	Register uut (
		.clk(clk), 
		.reset(reset), 
		.write(write), 
		.dAddr(dAddr), 
		.data(data), 
		.sAddr(sAddr), 
		.tAddr(tAddr), 
		.sData(sData), 
		.tData(tData)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		write = 0;
		dAddr = 5'b1;
		data = 32'hffffffff;
		sAddr = 5'b0;
		tAddr = 5'b11111;
		
		
		
		#10 reset = 1;
		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
	end

	always begin
		#5 clk = clk+1;
		tAddr = tAddr-1;
		sAddr = sAddr+1;
	end
   
	always begin
		#4.5 write = write + 1;
	end;
	
	always begin
		#3 dAddr = dAddr+1;
	end
	
	
	
endmodule

