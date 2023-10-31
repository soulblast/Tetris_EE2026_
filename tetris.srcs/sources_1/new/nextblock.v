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


module nextblock(input next, output reg [2:0] next_blk);

wire [2:0] temp_blk;

rng_block u0(.next(next), .nextblock(temp_blk));

always @ (*)
  begin

    if (next == 0)
        begin
            next_blk = temp_blk;
        end


  end

endmodule