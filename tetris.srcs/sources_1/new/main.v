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
  
 //
 // I = 0;
 // O = 1;
 // T = 2;  // swapped T and J  index
 // L = 3;
 // J = 4;
 // Z = 5;
 // S = 6;
  
  //GRID>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..
    wire [15:0] oled_grid; 
    show_grid grid_0(.CLOCK(CLOCK), .oled_grid(oled_grid), .pix_index(pix_index)); 
  //BLOCK>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..
    wire [15:0] block_color;
    wire [12:0] block_pos; 
    wire block_posy; 
    slow_drop drop0(.CLOCK(CLOCK), .block_pos(block_posy));
    
    reg [12:0] t_g_col = 0, t_g_row = 0;
    reg [1:0] t_rotation = 0;
    reg [2:0] t_block = 0; 
    wire [12:0] blk1_yyx, blk2_yyx, blk3_yyx, blk4_yyx; //grid rows and cols
    tetrimino un0(.posx(t_g_col), .posy(t_g_row), .rotation(t_rotation), .block(t_block), 
                    .blk1(blk1_yyx), .blk2(blk2_yyx), .blk3(blk3_yyx), .blk4(blk4_yyx)); //position is in yyx form 
    reg [12:0] n_t_g_col = 0, n_t_g_row = 0;
    reg [1:0] n_t_rotation = 0;
    reg [2:0] n_t_block = 0; 
    wire [12:0] n_blk1_yyx, n_blk2_yyx, n_blk3_yyx, n_blk4_yyx; //grid rows and cols
    tetrimino un1(.posx(n_t_g_col), .posy(n_t_g_row), .rotation(n_t_rotation), .block(n_t_block), 
                     .blk1(n_blk1_yyx), .blk2(n_blk2_yyx), .blk3(n_blk3_yyx), .blk4(n_blk4_yyx)); //position is in yyx form 
    
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
        
        oled_data <= oled_grid;
    end
    
    
endmodule
