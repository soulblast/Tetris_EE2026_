`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2023 03:51:06 PM
// Design Name: 
// Module Name: sim_rng
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


module sim_rng(  );
    wire [2:0] nxt_blk;
    reg CLK = 0;
    rng_block unit0(.CLOCK(CLK), .next(0), .nextblock(nxt_blk));
    initial begin
        CLK <= 0;
    end
   
    always begin
        #5 CLK <= ~CLK;
    end

endmodule
 