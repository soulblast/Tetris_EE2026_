`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2023 02:14:31 PM
// Design Name: 
// Module Name: oled_to_grid_coords
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

//assuming a PORTRAIT LAYOUT
module oled_to_grid_coords(input [12:0] row, col, output [12:0] g_row, g_col);
    assign g_col = col/4;
    assign g_row = row/4;
endmodule
