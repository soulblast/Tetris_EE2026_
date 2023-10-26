`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2023 03:05:42 PM
// Design Name: 
// Module Name: sim_oled_to_grid_coords
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


module sim_oled_to_grid_coords(  );
    reg [12:0] row = 0, col = 0;
    wire [12:0] g_row, g_col;
    oled_to_grid_coords unit_0(.row(row), .col(col), .g_row(g_row), .g_col(g_col));

    initial begin
        row <= 0; col <= 0; #5
        row <= 10; col <= 14; #5;
        row <= 22; col <= 63; #5;
        row <= 60; col <= 55; #5;
    end
endmodule
