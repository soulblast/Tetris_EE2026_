`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 03:01:45 PM
// Design Name: 
// Module Name: block_control
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


module block_spawn(input curr, output [2:0] curr_blk, next_blk);

wire next;
wire [2:0] temp_next, temp_curr;
currentblock curr0(.curr(curr), .curr_blk(temp_curr), .next_blk(temp_next), .next(next));
nextblock next0(.next(next), .next_blk(temp_next));

assign curr_blk = temp_curr;
assign next_blk = temp_next;
endmodule