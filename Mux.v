`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:03:41 11/01/2016 
// Design Name: 
// Module Name:    DataSelector 
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
module DataSelector(
    input [31:0] S,
    input [31:0] T,
    input Ctrl,
    output [31:0] Res
    );
	 
assign Res = Ctrl ? S : T;


endmodule
