`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2023 11:54:34 PM
// Design Name: 
// Module Name: sim_tetri
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


module sim_tetri(

    );
    reg [4:0] t_col = 8; reg [5:0] t_row = 2;              
    reg [1:0] t_rotation = 0;
    reg [2:0] t_block = 2; //7 = no block 
    wire [4:0] b1_col,
                b2_col,
                b3_col,
                b4_col;
    wire [5:0] b1_row,
                b2_row,
                b3_row,
                b4_row;    

         tetrimino tetri0(
       .t_col(t_col),//0 to 9  (0 to 15)
       .t_row(t_row),//0 to 21  (0 to 23)
       .rotation(t_rotation),
       .block(t_block),//0 to 6
       .blk1_col(b1_col),
       .blk2_col(b2_col),
       .blk3_col(b3_col),
       .blk4_col(b4_col),
       .blk1_row(b1_row),
       .blk2_row(b2_row),
       .blk3_row(b3_row),
       .blk4_row(b4_row));
       
endmodule
