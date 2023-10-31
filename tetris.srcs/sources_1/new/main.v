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
  //COORDS
  //pix_index --> row, col
    wire [12:0] v_row, v_col, blk1_g_row, blk2_g_row ,blk3_g_row, blk4_g_row,
                blk1_g_col, blk2_g_col ,blk3_g_col, blk4_g_col;
    
    reg [12:0] g_row, g_col; 
    pix_to_vertical_rowcol vert0(.pixels(pix_index), .vrow(v_row), .vcol(v_col));
    oled_to_grid_coords blockgrid0(.row(v_row), .col(v_col), .g_row(g_row), .g_col(g_col));
  
  //GRID>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..
    wire [15:0] oled_grid; 
    show_grid grid_0(.CLOCK(CLOCK), .oled_grid(oled_grid), .pix_index(pix_index)); 
  //BLOCK>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..
    wire [15:0] block_color;
    wire [12:0] block_pos; 
    wire block_posy; 
    slow_drop drop0(.CLOCK(CLOCK), .block_pos(block_posy));
    
    reg [12:0] t_posx = 0, t_posy = 0;
    reg [1:0] t_rotation = 0;
    reg [2:0] t_block = 0; 
    wire [12:0] blk1_yyx, blk2_yyx, blk3_yyx, blk4_yyx; //grid rows and cols
    tetrimino un0(.posx(t_posx), .posy(t_posy), .rotation(t_rotation), .block(t_block), 
                    .blk1(blk1_yyx), .blk2(blk2_yyx), .blk3(blk3_yyx), .blk4(blk4_yyx)); //position is in yyx form 
    
    yyx_to_grid_coords yyx_convert1(.yyx(blk1_yyx), .g_row(blk1_g_row), .g_col(blk1_g_col));
    yyx_to_grid_coords yyx_convert2(.yyx(blk2_yyx), .g_row(blk2_g_row), .g_col(blk2_g_col));
    yyx_to_grid_coords yyx_convert3(.yyx(blk3_yyx), .g_row(blk3_g_row), .g_col(blk3_g_col));
    yyx_to_grid_coords yyx_convert4(.yyx(blk4_yyx), .g_row(blk4_g_row), .g_col(blk4_g_col));
     
    block_color color0(.block(t_block), .color(block_color)); 
        
    always @ (posedge CLOCK) begin
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
