`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:53:42 11/01/2016 
// Design Name: 
// Module Name:    ImmExtender 
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
module ImmExtender(
    input [15:0] Imm,
    input Ctr,
    output [31:0] Res
    );

assign Res = Ctr ? (Imm[15]==1? {16'hffff, Imm} : {16'h0000, Imm}) : {16'h0000, Imm};


endmodule
