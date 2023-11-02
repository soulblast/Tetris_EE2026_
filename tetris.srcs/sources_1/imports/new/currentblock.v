`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 03:01:45 PM
// Design Name: 
// Module Name: currentblock
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


module currentblock(input curr, input [2:0] next_blk, output reg [2:0] curr_blk, output reg next);

always @ (*)
  begin
    if (curr == 0)
        begin
            curr_blk = next_blk;
            next = 0;
        end
  end

endmodule
