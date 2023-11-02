`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2023 11:53:49 PM
// Design Name: 
// Module Name: yyx_to_grid_coords
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


module yyxx_to_grid_coords(input [12:0] yyxx, output [12:0] g_row, g_col);
    assign g_row = yyxx / 100;
    assign g_col = yyxx % 100;
endmodule
