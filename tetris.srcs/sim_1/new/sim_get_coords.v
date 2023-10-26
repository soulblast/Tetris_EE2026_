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


module sim_get_coords(  );
    reg [12:0] pixels=0;
    wire [12:0] row, col;
    get_coords unit_0(.pixels(pixels), .row(row), .col(col));

    initial begin
        pixels <= 5500; #5
        pixels <= 4666; #5;
        pixels <= 7554; #5;
        pixels <= 3667; #5;
    end
endmodule
