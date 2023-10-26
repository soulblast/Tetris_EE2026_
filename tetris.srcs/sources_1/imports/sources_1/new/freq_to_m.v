`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2023 04:28:24 PM
// Design Name: 
// Module Name: freq_to_m
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
// m = 0.5 * new_period / 10ns - 1
//freq is from 1 to 2 billion.
module freq_to_m(input [31:0] freq, output [31:0] m);
assign m = 1000_000_000 / freq / 10 / 2 - 1;
endmodule
