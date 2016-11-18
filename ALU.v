`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:10:22 11/01/2016 
// Design Name: 
// Module Name:    ALU 
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
module ALU(S, T, Result, Ctr);
    input [31:0] S;
    input [31:0] T;
    output reg [31:0] Result = 32'b0;
    input [2:0] Ctr;
	 
	 reg [31:0] subRes;
	 
always @(S or T or Ctr) 
begin
	case(Ctr)
		3'b000: Result = 32'b1;
		3'b001: Result = S + T;
		3'b010: Result = S - T;
		3'b011: Result = S & T;
		3'b100: Result = S | T;
		3'b101: begin
			subRes = S - T;
			if(subRes[31]) Result = 32'b1;
			else Result = 32'b0;
		end
		3'b110: Result = (S == T) ? 32'b1: 32'b0;
		3'b111: Result = 32'b1;
	endcase
end

endmodule
