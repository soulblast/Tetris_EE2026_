`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2023 03:17:05 PM
// Design Name: 
// Module Name: sim_slow_drop
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


module sim_slow_drop( );
    reg CLK = 0, curr = 1;
    wire [12:0] blk_pos_y;
   slow_drop slow_drop0(.CLOCK(CLK), .current(curr), .block_posy(blk_pos_y));
   initial begin
        CLK <= 0;
   end
   
   always begin
        CLK <= ~CLK; #5;
   end
   
endmodule
