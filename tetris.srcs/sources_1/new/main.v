`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2023 12:58:59 PM
// Design Name: 
// Module Name: main
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


module main(input CLOCK, output [0:7] JC); 
    //CLOCK >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..
    wire CLK_6p25M;
        flexi_clock_D clock0 (.CLOCK(CLOCK), .Tns(160), .NEW_CLK(CLK_6p25M));    
    wire CLK_8Hz;
        flexi_clock_D clock1(.CLOCK(CLOCK), .Tns(125_000_000), .NEW_CLK(CLK_8Hz));
    wire CLK_16Hz;                                                                 
        flexi_clock_D clock2(.CLOCK(CLOCK), .Tns(62_500_000), .NEW_CLK(CLK_16Hz));
    //OLED DISPLAY >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..
      reg oled_reset = 0;
       wire [12:0] pix_index;
       reg [15:0] oled_data;
       
     Oled_Display oled_0(
        .clk(CLK_6p25M), //input
        .reset(oled_reset),  //input
        .frame_begin(),  //output
        .sending_pixels(), //output
        .sample_pixel(),  //output
        .pixel_index(pix_index),  //output
        .pixel_data(oled_data), //input
        .cs(JC[0]), 
        .sdin(JC[1]), 
        .sclk(JC[3]), 
        .d_cn(JC[4]), 
        .resn(JC[5]), 
        .vccen(JC[6]),
        .pmoden(JC[7]));
  
 // I = 0;
 // O = 1;
 // T = 2;
 // L = 3;
 // J = 4;
 // Z = 5;
 // S = 6;
  //COORDS
  //pix_index --> row, col
    wire [12:0] v_row, v_col, blk1_g_row, blk2_g_row ,blk3_g_row, blk4_g_row,
                blk1_g_col, blk2_g_col ,blk3_g_col, blk4_g_col;
    
    wire [12:0] g_row, g_col; 
    pix_to_vertical_rowcol vert0(.pixels(pix_index), .vrow(v_row), .vcol(v_col));
    oled_to_grid_coords blockgrid0(.row(v_row), .col(v_col), .g_row(g_row), .g_col(g_col));
  
  //GRID>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..
    wire [15:0] oled_grid; 
    show_grid grid_0(.CLOCK(CLOCK), .oled_grid(oled_grid), .pix_index(pix_index)); 
  //BLOCK>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..
    wire [15:0] block_color;
    wire [12:0] block_pos; 
    wire [12:0] block_posy; 
    reg current_flag = 0;
    slow_drop drop0(.CLOCK(CLOCK), .current(current_flag), .block_posy(block_posy));
    
    reg [12:0] t_g_col = 8, t_g_row = 2;                // col from 3 to 12 , row from 2 to 21,
    reg [1:0] t_rotation = 0;
    wire [2:0] t_block;
    wire [2:0] t_future;
    

    block_spawn spawn0(.curr(current_flag), .curr_blk(t_block), .next_blk(t_future));
    
    
    wire [12:0] blk1_yyx, blk2_yyx, blk3_yyx, blk4_yyx; //grid rows and cols
    tetrimino un0(.posx(t_g_col), .posy(t_g_row), .rotation(t_rotation), .block(t_block),  // temp output L
                    .blk1(blk1_yyx), .blk2(blk2_yyx), .blk3(blk3_yyx), .blk4(blk4_yyx)); //position is in yyx form 
   
    reg [12:0] n_t_g_col = 0, n_t_g_row = 0;
    reg [1:0] n_t_rotation = 0;
    reg [2:0] n_t_block = 0; 
    wire [12:0] n_blk1_yyx, n_blk2_yyx, n_blk3_yyx, n_blk4_yyx; //grid rows and cols
    tetrimino un1(.posx(n_t_g_col), .posy(n_t_g_row), .rotation(n_t_rotation), .block(n_t_block), 
                     .blk1(n_blk1_yyx), .blk2(n_blk2_yyx), .blk3(n_blk3_yyx), .blk4(n_blk4_yyx)); //position is in yyx form 
  
    block_color color0(.block(t_block), .color(block_color));
  
  /*  
    wire [32:0] key;
    reg cnt_8Hz = 0;
    always @ (posedge CLK_8Hz) begin
        cnt_8Hz <= ~cnt_8Hz;
    end   
    reg cnt_16Hz = 0;
        always @ (posedge CLK_16Hz) begin
            cnt_8Hz <= ~cnt_16Hz;
        end   
    reg x = 0, rotated = 0;
    reg [219:0] obstacle; //22 x 10 = 220
    always @ (posedge CLOCK) begin
        n_t_g_col <= t_g_col;
        n_t_g_row <= t_g_row;
        n_t_rotation <= t_rotation;
        n_t_block <= t_block;
        //A
        if(key[x] && cnt_8Hz)
            n_t_g_col <= (n_t_g_col == 0) ? 0 : n_t_g_col-1; 
        
        //D
        if(key[x] && cnt_8Hz)
            n_t_g_col <= (n_t_g_col == 9) ? 9 : n_t_g_col+1;
        
        //W = rotate clockwise
        if(key[x] && !rotated) begin 
            n_t_rotation <= t_rotation+1; 
            rotated <= 1;
        end  
        if(!key[x] && rotated) begin
            rotated <= 0;
        end
        
        //S = drop at double speed = 16Hz 
        if(key[x] && cnt_16Hz) begin  ///
            n_t_g_row <= (n_t_g_row == 21) ? 21 : n_t_g_row+1;
        end
        
        //collision check
        if(n_t_g_row == 
    */
   
    yyx_to_grid_coords yyx_convert1(.yyx(blk1_yyx), .g_row(blk1_g_row), .g_col(blk1_g_col));
    yyx_to_grid_coords yyx_convert2(.yyx(blk2_yyx), .g_row(blk2_g_row), .g_col(blk2_g_col));
    yyx_to_grid_coords yyx_convert3(.yyx(blk3_yyx), .g_row(blk3_g_row), .g_col(blk3_g_col));
    yyx_to_grid_coords yyx_convert4(.yyx(blk4_yyx), .g_row(blk4_g_row), .g_col(blk4_g_col));
           
           
           //to do: detect when block has reached bottom, and show next tetrimino
    reg [12:0] n_blk1_g_row, n_blk2_g_row, n_blk3_g_row, n_blk4_g_row,
                           n_blk1_g_col, n_blk2_g_col, n_blk3_g_col, n_blk4_g_col;
    reg dead_block = 0;
    always @ (posedge CLOCK) begin
      t_g_row <= block_posy;  
      
        n_blk1_g_col <= blk1_g_col;
        n_blk1_g_row <= blk1_g_row;
        n_blk2_g_col <= blk2_g_col;
        n_blk2_g_row <= blk2_g_row;
        n_blk3_g_col <= blk3_g_col;
        n_blk3_g_row <= blk3_g_row;
        n_blk4_g_col <= blk4_g_col;
        n_blk4_g_row <= blk4_g_row;
        
        if(n_blk1_g_col >= 21 || n_blk2_g_col >= 21 || n_blk3_g_col >= 21 || n_blk4_g_col >= 21)
        begin
            dead_block <= 1;
            current_flag <= 0;
        end
        
        

      if ((g_row == blk1_g_row && g_col == blk1_g_col) || (g_row == blk2_g_row && g_col == blk2_g_col) ||
          (g_row == blk3_g_row && g_col == blk3_g_col) || (g_row == blk4_g_row && g_col == blk4_g_col))
        begin
            oled_data <= block_color;   
        end
      else
        begin  
            oled_data <= oled_grid;
        end
      
    end
    
endmodule
