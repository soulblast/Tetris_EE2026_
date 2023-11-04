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


module main(input CLOCK, 
            input [15:0] sw, 
            output [0:7] JC,
            output [0:7] JA); 
   // CLOCK >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..
    wire CLK_6p25M;
        flexi_clock clock0 (.CLOCK(CLOCK), .Tns(160), .NEW_CLK(CLK_6p25M));    
    wire CLK_4Hz;
        flexi_clock clock1(.CLOCK(CLOCK), .Tns(250_000_000), .NEW_CLK(CLK_4Hz));
    wire CLK_1_5Hz;                                                                 
        flexi_clock clock2(.CLOCK(CLOCK), .Tns(666_666_667), .NEW_CLK(CLK_1_5Hz));
    //COLOURS>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..
     reg [15:0] green = 16'b00000_111111_00000, red = 16'b11111_000000_00000, blue = 16'b00000_000000_11111,
                black = 16'b00000_000000_00000, cur_colour = 16'b00000_000000_11111, grey = 16'b00100_000100_00100,
                light_grey = 16'b01000_001000_01000;
   
    //OLED DISPLAY >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..
       reg oled_reset = 0;
       wire [12:0] pix_index, pix_indexB;
       reg [15:0] oled_data, oled_dataB;
       
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


    // OLED A
     Oled_Display oled_1(
        .clk(CLK_6p25M), //input
        .reset(oled_reset),  //input
        .frame_begin(),  //output
        .sending_pixels(), //output
        .sample_pixel(),  //output
        .pixel_index(pix_indexB),  //output
        .pixel_data(oled_dataB), //input
        .cs(JA[0]), 
        .sdin(JA[1]), 
        .sclk(JA[3]), 
        .d_cn(JA[4]), 
        .resn(JA[5]), 
        .vccen(JA[6]),
        .pmoden(JA[7]));    
   
//  //COORDS 
    
    wire [12:0]  blk1_g_row, blk2_g_row ,blk3_g_row, blk4_g_row,
                blk1_g_col, blk2_g_col ,blk3_g_col, blk4_g_col;
    
    wire [12:0] g_row, g_col;
    wire [12:0] v_row, v_col;
    pix_to_vertical_rowcol vert0(.pixels(pix_index), .vrow(v_row), .vcol(v_col));
    oled_to_grid_coords blockgrid0(.row(v_row), .col(v_col), .g_row(g_row), .g_col(g_col));
  
    // OLED B Stuff
    wire [5:0]  b1_b_row, b2_b_row ,b3_b_row, b4_b_row,
                 b1_b_col, b2_b_col ,b3_b_col, b4_b_col;

    wire [12:0] h_row, h_col, b_row, b_col;
    pix_to_vertical_rowcol hori0(.pixels(pix_indexB), .vrow(h_col), .vcol(h_row));
    oledB_to_grid_coords blockgrid1(.row(h_row), .col(h_col), .g_row(b_row), .g_col(b_col));
    
//  //GRID>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..
//   // col from 3 to 12 , row from 2 to 21,
    wire [15:0] oled_grid; 
    show_grid grid_0(.CLOCK(CLOCK), .oled_grid(oled_grid), .pix_index(pix_index));
     
 // RANDOM>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..   
    reg [31:0] rand = 210463105;
    reg r_below_10 = 0;
    reg n_below_10 = 0;
    reg [31:0] new = 521046310;
    reg [2:0] new_block = 0;
    //next_block_display nbd0(.next_block(2), .CLOCK(CLOCK), .JB(JB));

//  //BLOCK>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..
   
    reg [4:0] t_col = 8; reg [5:0] t_row = 2;              
    reg [1:0] t_rotation = 0;
    reg [2:0] t_block = 0; //7 = no block 
    wire [4:0] b1_col,
                b2_col,
                b3_col,
                b4_col;
    wire [5:0] b1_row,
                b2_row,
                b3_row,
                b4_row;         
    
    tetrimino next_tetri0(
       .t_col(2),//0 to 9  (0 to 15)
       .t_row(2),//0 to 21  (0 to 23)
       .rotation(0),
       .block(new_block),//0 to 6
       .blk1_col(b1_b_col),
       .blk2_col(b2_b_col),
       .blk3_col(b3_b_col),
       .blk4_col(b4_b_col),
       .blk1_row(b1_b_row),
       .blk2_row(b2_b_row),
       .blk3_row(b3_b_row),
       .blk4_row(b4_b_row));
    
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

    reg [4:0] pt_col = 8; reg [5:0] pt_row = 2;              
    reg [1:0] pt_rotation = 0;
    reg [2:0] pt_block = 2; //7 = no block 
    wire [4:0] pb1_col,
                pb2_col,
                pb3_col,
                pb4_col;
    wire [5:0] pb1_row,
                pb2_row,
                pb3_row,
                pb4_row;         
    
     tetrimino tetri_p(
        .t_col(pt_col),//0 to 9  (0 to 15)
        .t_row(pt_row),//0 to 21  (0 to 23)
        .rotation(pt_rotation),
        .block(pt_block),//0 to 6
        .blk1_col(pb1_col),
        .blk2_col(pb2_col),
        .blk3_col(pb3_col),
        .blk4_col(pb4_col),
        .blk1_row(pb1_row),
        .blk2_row(pb2_row),
        .blk3_row(pb3_row),
        .blk4_row(pb4_row));
        
    wire [15:0] block_color, next_color;  
    block_color color0(.block(t_block), .color(block_color)); 
    block_color color1(.block(new_block), .color(next_color)); 
      
    reg fallen = 0; 
    reg started = 0;
    reg [15:0] occupied [23:0]; //22 x 10 = 220v 
    reg [8:0] i, j; 
    
    reg [2315:0] cnt = 0; 
    reg dead = 0;
    reg rotated = 0;
    reg shiftedL = 0, shiftedR = 0;
    
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
            //GENERATE RANDOM TETRIMINO>>>>>>>>>>>>>>>>>>>>>>
            t_block <= 3;
            new_block <= 5;

        end
        //FALL DOWN>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        

        if(CLK_4Hz && !fallen) begin
            if(!dead) begin
                t_row <= t_row+1;
                fallen <= 1;
//                E <= 0;
                //DEAD CONDITION: a block directly below any of 4 parts is an obstacle
                if(occupied[b1_row+1][b1_col] == 1 || occupied[b1_row+1][b2_col] == 1 || 
                   occupied[b3_row+1][b3_col] == 1 || occupied[b4_row+1][b4_col] == 1 ) begin
                   //DEAD=1 will take effect at next CLK_4Hz == 1
                    dead <= 1;
                  //  spawn <= 0;
                end 
            end else begin   
                occupied[b1_row][b1_col] <= 1;
                occupied[b2_row][b2_col] <= 1;
                occupied[b3_row][b3_col] <= 1;
                occupied[b4_row][b4_col] <= 1;
                //RESET TO START POS
                t_row <= 2;
                t_col <= 8;
            // t_block update    
                case (r_below_10)
                    0: begin
                        t_block <= rand % 10;
                        rand <= rand / 10;
                    end
                    
                    1: begin
                        rand <= 210463105;
                        
                    end
                    endcase
                if (rand <= 10) begin
                    r_below_10 <= 1;  
                end    
                  
                else r_below_10 <= 0;
            // new block update
                case (n_below_10)
                    0: begin
                        new_block <= new % 10;
                        new <= new / 10;
                    end
                    
                    1: begin
                        new <= 521046310;
                        
                    end
                    endcase
                if (new <= 10) begin
                    n_below_10 <= 1;  
                end    
                  
                else n_below_10 <= 0;
               
                dead <= 0;
            end
        end
        if(!CLK_4Hz && fallen) begin
            fallen <= 0;
        end
//        if(g_row == cnt/100 && g_col == cnt%100) begin
//            oled_data <= red;
//        end else
//            oled_data <= black;
        
//        if(g_row == b1_row && g_col == b1_col) begin
//            oled_data <= blue;
//        end
      //NEW BLOCK>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 

      //  SHIFT LEFT/RIGHT >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        if(sw[0] && CLK_1_5Hz) begin
             if(!shiftedL) begin
                t_col <= t_col-1;
                shiftedL <= 1;
             end  
        end else if(sw[1] && CLK_1_5Hz) begin
            if(!shiftedR) begin
                t_col <= t_col+1;
             end
        end
        if(!CLK_1_5Hz) begin
            shiftedL <= 0;
        end 
        if(sw[2] && CLK_1_5Hz) begin
            if(!rotated) begin
                t_rotation <= t_rotation+1;
                rotated <= 1;
            end
            
            
        end else if (sw[3] && CLK_1_5Hz) begin
            if (!rotated) begin
                if (t_rotation == 0) begin
                    t_rotation <= 4;
                    rotated <= 1;
                end
                else begin
                    t_rotation <= t_rotation - 1;
                    rotated <= 1;
                end
            end
        end else if (!sw[2]) begin
            rotated <= 0;
        end
        
   //  CHECK COLLISION
   //Stop at Obstacles (May/may not be Dead yet)
        if(b1_row > 22 || b2_row > 22 || b3_row > 22 || b4_row > 22 ||  //Floor
           b1_col < 3  || b2_col < 3  || b3_col < 3  || b4_col < 3  ||  //Left wall
           b1_col > 12 || b2_col > 12 || b3_col > 12 || b4_col > 12 || //Right wall
           occupied[b1_row][b1_col] == 1 || occupied[b1_row][b2_col] == 1 || //Obstacles
           occupied[b3_row][b3_col] == 1 || occupied[b4_row][b4_col] == 1 ) begin
           //Back to previous pos
           t_row <= pt_row; 
           t_col <= pt_col;
           t_rotation <= pt_rotation;
        end  
         
      
     // DISPLAY TETRIMINO>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
      if ((g_row == b1_row && g_col == b1_col) || 
            (g_row == b2_row && g_col == b2_col) ||
            (g_row == b3_row && g_col == b3_col) || 
            (g_row == b4_row && g_col == b4_col)) begin
            oled_data <= block_color;   
      end else if (occupied[g_row][g_col] == 1) begin
            oled_data <= blue;
      end else begin  
            oled_data <= oled_grid;
      end 
      
      pt_row <= t_row;
      pt_col <= pt_col;
      pt_rotation <= t_rotation; 
      // Display Next Block>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        if ((b_row == b1_b_row && b_col == b1_b_col) || 
            (b_row == b2_b_row && b_col == b2_b_col) ||
            (b_row == b3_b_row && b_col == b3_b_col) || 
            (b_row == b4_b_row && b_col == b4_b_col)) begin
                oled_dataB <= next_color;
        end else oled_dataB <= black;
        
    end //end of always block
    
endmodule
