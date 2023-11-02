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
    wire [12:0] block_pos; 
    wire [12:0] block_posy; 
    wire cnt_4Hz;
    reg current_flag = 0;
   // slow_drop drop0(.CLOCK(CLOCK), .cnt_2Hz(cnt_4Hz));
    
    reg [12:0] t_g_col = 8, t_g_row = 2;                // col from 3 to 12 , row from 2 to 21,
    reg [1:0] t_rotation = 0;
    reg [2:0] t_block = 0; //7 = no block
    wire [2:0] t_future;
    

//    block_spawn spawn0(.curr(current_flag), .curr_blk(t_block), .next_blk(t_future));
    
    
    wire [12:0] blk1_yyxx, blk2_yyxx, blk3_yyxx, blk4_yyxx; //grid rows and cols
    tetrimino un0(.posx(t_g_col), .posy(t_g_row), .rotation(t_rotation), .block(t_block),  // temp output L
                    .blk1(blk1_yyxx), .blk2(blk2_yyxx), .blk3(blk3_yyxx), .blk4(blk4_yyxx)); //position is in yyxx form 
     
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
    

    */

    yyxx_to_grid_coords yyxx_convert1(.yyxx(blk1_yyxx), .g_row(blk1_g_row), .g_col(blk1_g_col));
    yyxx_to_grid_coords yyxx_convert2(.yyxx(blk2_yyxx), .g_row(blk2_g_row), .g_col(blk2_g_col));
    yyxx_to_grid_coords yyxx_convert3(.yyxx(blk3_yyxx), .g_row(blk3_g_row), .g_col(blk3_g_col));
    yyxx_to_grid_coords yyxx_convert4(.yyxx(blk4_yyxx), .g_row(blk4_g_row), .g_col(blk4_g_col));
           
           
           //to do: detect when block has reached bottom, and show next tetrimino
    reg [12:0] p_blk1_g_row, p_blk2_g_row, p_blk3_g_row, p_blk4_g_row,
                           p_blk1_g_col, p_blk2_g_col, p_blk3_g_col, p_blk4_g_col;
    reg [12:0] p_t_g_row, p_t_g_col;
//   reg [1:0] n_t_rotation = 0;
//       reg [2:0] n_t_block;
//   wire [12:0] n_blk1_yyxx, n_blk2_yyxx, n_blk3_yyxx, n_blk4_yyxx; //grid rows and cols
//   tetrimino un1(.posx(n_t_g_col), .posy(n_t_g_row), .rotation(n_t_rotation), .block(n_t_block),  // temp output L
//                       .blk1(n_blk1_yyxx), .blk2(n_blk2_yyxx), .blk3(n_blk3_yyxx), .blk4(n_blk4_yyxx)); //position is in yyxx form 
    
    reg [15:0] occupied [23:0]; //22 x 10 = 220v
    reg [2315:0] occupied2 = 0;
    reg [8:0] i, j;
    reg fallen = 0;
    reg [13:0] cnt = 0;
    reg started = 0;
    reg dead = 0; 
    always @ (posedge CLOCK) begin
        if(!started) begin
            for(i=0; i<24; i=i+1) begin // i is row, j is col
                for(j=0; j<16; j=j+1) begin 
                    //  $display (i*100 + j); 
                    if(i>22) begin
                        occupied[i][j] <= 1'b1;
                        occupied2[i*100+j] <= 1'b1;
                    end else if(j<=2 || j>=13) begin
                        occupied[i][j] <= 1'b1;
                        occupied2[i*100+j] <= 1'b1;
                    end else begin //tetris grid: row: 1 to 22, col: 3 to 12
                        occupied[i][j] <= 1'b0;
                        occupied2[i*100+j] <= 1'b0;
                    end
                //   $display (occupied[i][j]);
                end
            end  
            started <= 1;
        end
        
//        if(dead) begin
//            t_block <= 3;
//            t_g_col <= 8;
//            t_g_row <= 2;
//            dead <= 0; 
//        end  
        if(CLK_4Hz && !fallen) begin
            t_g_row <= t_g_row+1;
            fallen <= 1;  
        end
        if(!CLK_4Hz && fallen) begin
            fallen <= 0;
        end
        
        
//        if(CLK_10Hz && !shifted && sw[0]) begin
//            t_g_col <= t_g_col - 1;
//        end
//        if(!
    //store new posy temporarily    
//        if(t_block == 7) begin
////            t_block <= {$random} % 7; 
//        end
 
        //next state is out of bounds/collides --> curr tetrimino is dead, generate next tetrimino
//        if(blk1_g_row > 22 || blk2_g_row > 22 || blk3_g_row > 22 || blk4_g_row > 22 ||
//           occupied[blk1_g_row][blk1_g_col] == 1 || occupied[blk2_g_row][blk2_g_col] == 1 ||
//           occupied[blk3_g_row][blk3_g_col] == 1 || occupied[blk4_g_row][blk4_g_col] == 1 )
//        begin  
//            occupied[p_blk1_g_row][p_blk1_g_col] <= 1;
//            occupied[p_blk2_g_row][p_blk2_g_col] <= 1;
//            occupied[p_blk3_g_row][p_blk3_g_col] <= 1;
//            occupied[p_blk4_g_row][p_blk4_g_col] <= 1; 
//            t_g_row <= p_t_g_row;
//            t_g_col <= p_t_g_col;
//           // t_rotation <= (t_rotation >= 4) ? 0 : t_rotation+1;
//            t_block <= (t_block == 7) ? t_block-1 : t_block+1;
//            //at this instant, block_spawner generates a new block.   
//            dead <= 1;
//        end 

///////////////////////////////////////////////
//        n_t_g_col <= t_g_col;
//        n_t_g_row <= t_g_row;
//        n_t_rotation <= t_rotation;
//        n_t_block <= t_block;
//        //A
//        if(key[x] && cnt_8Hz)
//            n_t_g_col <= (n_t_g_col == 0) ? 0 : n_t_g_col-1; 
        
//        //D
//        if(key[x] && cnt_8Hz)
//            n_t_g_col <= (n_t_g_col == 9) ? 9 : n_t_g_col+1;
        
//        //W = rotate clockwise
//        if(key[x] && !rotated) begin 
//            n_t_rotation <= t_rotation+1; 
//            rotated <= 1;
//        end  
//        if(!key[x] && rotated) begin
//            rotated <= 0;
//        end
        
//        //S = drop at double speed = 16Hz 
//        if(key[x] && cnt_16Hz) begin  ///
//            n_t_g_row <= (n_t_g_row == 21) ? 21 : n_t_g_row+1;
//        end
         
      if (t_block != 7 && ((g_row == blk1_g_row && g_col == blk1_g_col) || 
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
