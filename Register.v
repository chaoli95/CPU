`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:09:31 11/01/2016 
// Design Name: 
// Module Name:    Register 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Register(clk, reset, write, dAddr, data, sAddr, tAddr, sData, tData);
	 input clk;
    input [31:0] data;
    input reset;
    input write;
	 input [4:0] dAddr;
	 input [4:0] sAddr;
	 input [4:0] tAddr;
	 output [31:0] sData;
    output [31:0] tData;
	 
	 reg [31:0] regs [0:31];
	 integer i = 0;
	 
	 assign sData = (sAddr == 5'b0) ? 32'b0 : regs[sAddr];
	 assign tData = (tAddr == 5'b0) ? 32'b0 : regs[tAddr];
	 
	 always @(negedge clk) begin
		if (!reset) begin
			for(i = 0; i <32; i=i+1)
			begin
				regs[i] <= i;
			end
			i=0;
		end 
		else
			begin
				if(write) begin
					regs[dAddr] <= data;
					end
			end	
	end

endmodule
