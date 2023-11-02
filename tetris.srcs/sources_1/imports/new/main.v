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
    wire CLK_4Hz;
        flexi_clock_D clock1(.CLOCK(CLOCK), .Tns(250_000_000), .NEW_CLK(CLK_4Hz));
    wire CLK_20Hz;                                                                 
        flexi_clock_D clock2(.CLOCK(CLOCK), .Tns(50_000_000), .NEW_CLK(CLK_20Hz));
    //COLOURS>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..
     reg [15:0] green = 16'b00000_111111_00000, red = 16'b11111_000000_00000, blue = 16'b00000_000000_11111,
                black = 16'b00000_000000_00000, cur_colour = 16'b00000_000000_11111, grey = 16'b00100_000100_00100,
                light_grey = 16'b01000_001000_01000;
   
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
    reg [12:0] t_g_col = 8, t_g_row = 2;               // col from 3 to 12 , row from 2 to 21,
    reg [1:0] t_rotation = 0;
    reg [2:0] t_block = 2; //7 = no block
    wire [2:0] t_future;
    wire [12:0] blk1_yyxx, blk2_yyxx, blk3_yyxx, blk4_yyxx; //grid rows and cols
    
    tetrimino un0(.posx(t_g_col), .posy(t_g_row), .rotation(t_rotation), .block(t_block),  // temp output L
                    .blk1(blk1_yyxx), .blk2(blk2_yyxx), .blk3(blk3_yyxx), .blk4(blk4_yyxx)); //position is in yyxx form 
     
    block_color color0(.block(t_block), .color(block_color));
    
    yyxx_to_grid_coords yyxx_convert1(.yyxx(blk1_yyxx), .g_row(blk1_g_row), .g_col(blk1_g_col));
    yyxx_to_grid_coords yyxx_convert2(.yyxx(blk2_yyxx), .g_row(blk2_g_row), .g_col(blk2_g_col));
    yyxx_to_grid_coords yyxx_convert3(.yyxx(blk3_yyxx), .g_row(blk3_g_row), .g_col(blk3_g_col));
    yyxx_to_grid_coords yyxx_convert4(.yyxx(blk4_yyxx), .g_row(blk4_g_row), .g_col(blk4_g_col));
 
    reg fallen = 0; 
    reg started = 0;
    reg [15:0] occupied [23:0]; //22 x 10 = 220v 
    reg [8:0] i, j;
    always @ (posedge CLOCK) begin
    //INITIALISE>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..
        if(!started) begin
            for(i=0; i<24; i=i+1) begin // i is row, j is col
                for(j=0; j<16; j=j+1) begin 
                    //  $display (i*100 + j); 
                    if(i>22) begin
                        occupied[i][j] <= 1'b1; 
                    end else if(j<=2 || j>=13) begin
                        occupied[i][j] <= 1'b1; 
                    end else begin //tetris grid: row: 1 to 22, col: 3 to 12
                        occupied[i][j] <= 1'b0; 
                    end
                //   $display (occupied[i][j]);
                end
            end  
            started <= 1;
            
        end 
      //NEW BLOCK>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
  
      //MOVE DOWN >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

      
      //DISPLAY TETRIMINO>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
      if (((g_row == blk1_g_row && g_col == blk1_g_col) || 
            (g_row == blk2_g_row && g_col == blk2_g_col) ||
            (g_row == blk3_g_row && g_col == blk3_g_col) || 
            (g_row == blk4_g_row && g_col == blk4_g_col)) )
        begin
            oled_data <= block_color;   
        end 
      if (occupied[g_row][g_col] == 1) 
        begin
            oled_data <= light_grey;
        end
      else 
        begin  
            oled_data <= oled_grid;
        end 
    end
    
endmodule
