`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2023 04:17:57 PM
// Design Name: 
// Module Name: sim_block_spawn
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


module sim_block_spawn(

    );
    reg current_flag = 0;
    wire [2:0] t_block, t_future;
      block_spawn spawn0(.curr(current_flag), .curr_blk(t_block), .next_blk(t_future));
    initial begin 
        #5 current_flag <= 0;
        #5 current_flag <= 1;
        #5 current_flag <= 0;
        #5 current_flag <= 1;
        #5 current_flag <= 0;
        #5 current_flag <= 1;
    end
endmodule
