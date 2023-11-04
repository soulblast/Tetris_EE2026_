`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2023 05:59:00 PM
// Design Name: 
// Module Name: collision_check
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
 /**
 ADD TO MAIN TO USE
     reg [4:0] nt_col = 8; reg [5:0] nt_row = 2;              
 reg [1:0] nt_rotation = 0;
 reg [2:0] nt_block = 2; //7 = no block 
 reg collision = 0;
 collision_wall_floor colli0(  
         .nt_col(nt_col),
         .nt_row(nt_row),
         .nt_rotation(nt_rotation),
         .nt_block(nt_block),
         .collision(collision)  
  );
 
 **/
module collision_wall_floor(  
        input  [4:0] nt_col,
        input  [5:0] nt_row,
        input  [1:0] nt_rotation,
        input  [2:0] nt_block,
        output collision
                       
 );
 
 wire [4:0] b1_col,
             b2_col,
             b3_col,
             b4_col;
 wire [5:0] b1_row,
             b2_row,
             b3_row,
             b4_row;         
 
  tetrimino tetri_n(
     .t_col(nt_col),//0 to 9  (0 to 15)
     .t_row(nt_row),//0 to 21  (0 to 23)
     .rotation(nt_rotation),
     .block(nt_block),//0 to 6
     .blk1_col(b1_col),
     .blk2_col(b2_col),
     .blk3_col(b3_col),
     .blk4_col(b4_col),
     .blk1_row(b1_row),
     .blk2_row(b2_row),
     .blk3_row(b3_row),
     .blk4_row(b4_row));  
    assign collision  =  (b1_row > 22 || b2_row > 22 || b3_row > 22 || b4_row > 22 ||  //Floor
                            b1_col < 3  || b2_col < 3  || b3_col < 3  || b4_col < 3  ||  //Left wall
                            b1_col > 12 || b2_col > 12 || b3_col > 12 || b4_col > 12  //Right wall
                              );
endmodule
