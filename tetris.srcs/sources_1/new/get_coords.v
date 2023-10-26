`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2023 06:40:02 AM
// Design Name: 
// Module Name: get_x_y
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

//64 rows, 96 columns
//first row / col is numbered 0
//pixels: 0 to 6143
//ROWS WORK!

module get_coords(input [12:0] pixels, output [12:0] row, col);
//no. of full rows above 
assign col = pixels % 96;
assign row = pixels / 96;

endmodule
