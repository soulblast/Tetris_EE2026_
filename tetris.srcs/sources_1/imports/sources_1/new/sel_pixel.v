`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2023 03:53:47 PM
// Design Name: 
// Module Name: sel_pixel
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

//row, col are 0-indexed
module sel_pixel(input [12:0] row, col, output [12:0] pix_index);
    assign pix_index = row * 96 - 1 + col;
endmodule
