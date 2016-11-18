`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:34:15 11/01/2016 
// Design Name: 
// Module Name:    PC 
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
module PC(clk, reset, we, newAddr, address);
	 input clk;
	 input reset;
	 input we;
	 input [8:0] newAddr;
    output reg[8:0] address = 9'b0;
	 
always @(posedge clk)
begin
	if (!reset)
	begin
		address<=9'b0;
	end
	else
	begin
		if(we) begin
			address <= newAddr; 
		end
		else begin
			address <= address + 4;
		end
	end
end

endmodule
