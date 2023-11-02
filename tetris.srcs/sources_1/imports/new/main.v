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
   
  //COORDS 
    wire [12:0]  blk1_g_row, blk2_g_row ,blk3_g_row, blk4_g_row,
                blk1_g_col, blk2_g_col ,blk3_g_col, blk4_g_col;
    
    wire [12:0] g_row, g_col; 
    wire [12:0] v_row, v_col;
    pix_to_vertical_rowcol vert0(.pixels(pix_index), .vrow(v_row), .vcol(v_col));
    oled_to_grid_coords blockgrid0(.row(v_row), .col(v_col), .g_row(g_row), .g_col(g_col));
  
  //GRID>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..
   // col from 3 to 12 , row from 2 to 21,
    wire [15:0] oled_grid; 
    show_grid grid_0(.CLOCK(CLOCK), .oled_grid(oled_grid), .pix_index(pix_index)); 
  //BLOCK>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..
   
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
        
    wire [15:0] block_color;  
    block_color color0(.block(t_block), .color(block_color)); 
   
    reg fallen = 0; 
    reg started = 0;
    reg [15:0] occupied [23:0]; //22 x 10 = 220v 
    reg [8:0] i, j; 
    
    reg [2315:0] cnt = 0; 
    always @ (posedge CLOCK) begin
    //INITIALISE>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..
        if(!started) begin
            for(i=0; i<24; i=i+1) begin // i is row, j is col
                for(j=0; j<16; j=j+1) begin  
                    if(i>22) begin
                        occupied[i][j] <= 1'b1; 
                    end else if(j<=2 || j>=13) begin
                        occupied[i][j] <= 1'b1; 
                    end else begin //tetris grid: row: 1 to 22, col: 3 to 12
                        occupied[i][j] <= 1'b0; 
                    end 
                end
            end  
            started <= 1;
        end
        if(CLK_4Hz && !fallen) begin
            cnt <= cnt+1;
            fallen <= 1;
        end
        if(!CLK_4Hz && fallen) begin
            fallen <= 0;
        end
        if(g_row == cnt/100 && g_col == cnt%100) begin
            oled_data <= red;
        end else
            oled_data <= black;
        
        if(g_row == b1_row && g_col == b1_col) begin
            oled_data <= blue;
        end
      //NEW BLOCK>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
  
      //MOVE DOWN >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

      //DISPLAY TETRIMINO>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
//      if ((g_row == b1_row && g_col == b1_col) || 
//            (g_row == b2_row && g_col == b2_col) ||
//            (g_row == b3_row && g_col == b3_col) || 
//            (g_row == b4_row && g_col == b4_col)) begin
//            oled_data <= block_color;   
//      end 
//      if (occupied[g_row][g_col] == 1) begin
//            oled_data <= block_color;
//      end else begin  
//            oled_data <= oled_grid;
//      end 
      
    end //end of always block
    
endmodule
