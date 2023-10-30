`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2023 11:31:45 PM
// Design Name: 
// Module Name: grid_to_pix_coords
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


module grid_to_pix_coords(input [12:0] g_row, g_col, output [12:0] row, col);
    assign col = col*4;
    assign row = row*4;
endmodule

