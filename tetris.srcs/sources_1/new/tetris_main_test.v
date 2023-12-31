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


module tetris_main(
            input CLOCK,
            input [15:0] sw,
            
            //Keyboard
            input PS2Clk,
            input PS2Data,
            
            input chosen,
            
            //No label - JC;
            input [12:0] pix_index, pix_indexB,  //JC, JA 
            output reg [15:0] oled_data,
                               oled_dataB); 
   // CLOCK >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..
    wire CLK_6p25M;
        flexi_clock clock0 (.CLOCK(CLOCK), .Tns(160), .NEW_CLK(CLK_6p25M));     
    //COLOURS>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..
     reg [15:0] green = 16'b00000_111111_00000, red = 16'b11111_000000_00000, blue = 16'b00000_000000_11111,
                black = 16'b00000_000000_00000, cur_colour = 16'b00000_000000_11111, grey = 16'b00100_000100_00100,
                light_grey = 16'b01000_001000_01000, purple = 16'b00111_000000_00111;
   //Keyboard Input
   wire [31:0] key_output;
   selected_key_press kb(.clk(CLOCK), .PS2Clk(PS2Clk), .PS2Data(PS2Data), .keys(key_output));
     

//  //COORDS 
    wire [12:0]  blk1_g_row, blk2_g_row ,blk3_g_row, blk4_g_row,
                blk1_g_col, blk2_g_col ,blk3_g_col, blk4_g_col;
    
    wire [12:0] g_row, g_col;
    wire [12:0] v_row, v_col;
    pix_to_vertical_rowcol vert0(.pixels(pix_index), .vrow(v_row), .vcol(v_col));
    oled_to_grid_coords blockgrid0(.row(v_row), .col(v_col), .g_row(g_row), .g_col(g_col));
// OLED A STUFF>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
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
    reg below_10 = 0;
    reg n_below_10 = 0;
    reg [31:0] new = 521046310;
    reg [2:0] new_block = 0;
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
    reg reset = 0;
    reg [15:0] occupied [23:0]; //22 x 10 = 220v 
    reg [15:0] n_occupied [23:0]; 
    reg [15:0] colour [0:23][0:15];
    reg [15:0] n_colour [0:23][0:15];
    
    reg [15:0] wall [23:0]; //22 x 10 = 220v  
    reg [8:0] i, j, ni, nj;
    reg [5:0] total_rclears;
     
    reg dead = 0;
    reg game_over = 0;
    reg rotatedCW = 0, rotatedACW = 0;
    reg shiftedL = 0, shiftedR = 0; 
    
    //SHIFT LEFT/RIGHT >>>>>>>>>>>>>>>>>>>>>>>>
    //should be the same as t_col 
    reg [31:0] shift_counter = 0; //0 to 66_666_666
    reg [31:0] fall_counter = 0; //0 to 24 999 999
  
    reg [31:0] score = 0;
    
    reg [2:0] clear_count = 0;
    parameter max_clear = 4;
    always @ (posedge CLOCK) begin //every loop is 10ns
    //INITIALISE>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..
        //SPACEBAR - RESET
        if (key_output[15]) begin
            started <= 0;
            game_over <= 0;
        end 
        
        if(game_over) begin
            oled_dataB <= 16'b0000_0000_0000_0000;
        end else begin //GAME ON-GOING
        
            if(!started) begin
                for(i=0; i<24; i=i+1) begin // i is row, j is col
                    for(j=0; j<16; j=j+1) begin  
                        occupied[i][j] <= 0;
                        if(i>22) begin //BOTTOM 
                            wall[i][j] <= 1'b1; 
                            occupied[i][j] <= 1;
                        end else if(j<=2 || j>=13) begin //LEFT/RIGHT WALLS
                            wall[i][j] <= 1'b1; 
                            occupied[i][j] <= 0;
                        end else begin //tetris grid: row: 1 to 22, col: 3 to 12
                            wall[i][j] <= 1'b0;
                        end 
                    end
                end   //end of outer for loop
                started <= 1;
                //GENERATE RANDOM TETRIMINO>>>>>>>>>>>>>>>>>>>>>>
                t_block <= 2; 
                new_block <= 5;
                pt_block <= t_block;
            end
            
            //FALL DOWN (4Hz/2Hz) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>         
            fall_counter <= (fall_counter == 33_333_333) ? 0 : fall_counter+1;
            if(fall_counter == 0) begin 
                t_row <= (t_row==23) ? 22 : t_row+1;  
                pt_row <= t_row;
                pt_col <= pt_col;
                pt_rotation <= t_rotation;  
                pt_block <= t_block;
            end  
             
                //RESET TO START POS
              
    //                t_block <= rand % 10;    
    //                if (rand <= 10) begin
    //                    rand <= 210463105;  
    //                end           
    //                rand <= rand / 10;
                    //rand <= (rand <= 100) ? 210463105 : rand;
                    
    //                new_block <= new % 10;
                        
    //                if (new <= 100) begin
    //                    new <= 521046310;  
    //                end           
    //                else new <= new / 10;   
          //NEW BLOCK>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
    
          //  SHIFT LEFT/RIGHT (3Hz) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            shift_counter <= (shift_counter == 33_333_333) ? 0 : shift_counter+1; 
            if(key_output[18] && shift_counter == 0) begin 
                t_col <= (t_col == 3) ? 3 : t_col-1;  
            end else if(key_output[16] && shift_counter == 0) begin 
                t_col <= (t_col == 12) ? 12 : t_col+1;
            end 
           //ROTATE clockWISE >>>>>>>>>>>>>>>>>>>>>>....
           //W - ROTATE CW
            if(key_output[19] == 2'b01 && !rotatedCW) begin 
                t_rotation <= t_rotation+1;
                rotatedCW <= 1; 
            end
            if(!key_output[19] && rotatedCW) begin
                rotatedCW <= 0;
            end
            //ROTATE ANTI clockWISE >>>>>>>>>>>>>>>>>>>>>>....
            if (key_output[13] == 2'b10 && !rotatedACW) begin 
                t_rotation <= (t_rotation == 0) ? 3 : t_rotation-1;
                rotatedACW <= 1; 
            end
            if (!key_output[13] && rotatedACW) begin
                rotatedACW <= 0;
            end
            
       //  CHECK COLLISION 
        //DEAD CONDITION: the new position is invalid and previously was on top of dead blocks
        // i.e. the tetrimino has remained above deadblocks and had remained stationery on top of them 
        // Check if the current piece has landed (by reaching the bottom or other blocks)
        if (b1_row == 22 || b2_row == 22 || b3_row == 22 || b4_row == 22 ||
            occupied[b1_row+1][b1_col] == 1 || occupied[b2_row+1][b2_col] == 1 || 
            occupied[b3_row+1][b3_col] == 1 || occupied[b4_row+1][b4_col] == 1) begin
            // Lock the current piece in place
            occupied[b1_row][b1_col] <= 1;
            occupied[b2_row][b2_col] <= 1;
            occupied[b3_row][b3_col] <= 1;
            occupied[b4_row][b4_col] <= 1;
            colour[b1_row][b1_col] <= block_color;
            colour[b2_row][b2_col] <= block_color;
            colour[b3_row][b3_col] <= block_color;
            colour[b4_row][b4_col] <= block_color;
                t_row <= 2;
                t_col <= 8;
                pt_row <= 2; 
                pt_col <= 8;  
                t_rotation <= 0;
                pt_rotation <= 0;
                //GENERATE NEW RANDOM TETRIMINO>>>>>>>>>>
                case (below_10)
                    0: begin
                        t_block <= rand % 10;
                        rand <= rand / 10;
                    end
                    
                    1: begin
                        rand <= 210463105; 
                    end
                endcase
                if (rand <= 10) begin
                    below_10 <= 1;  
                end     
                else below_10 <= 0;
                // SHOW RAND NEXT BLOCK>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
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
                
                //CHECK IF GAME OVER = CAN'T PLACE NEW BLOCK
                if(occupied[b1_row][b1_col] == 1 || occupied[b2_row][b2_col] == 1 || //Obstacles
                   occupied[b3_row][b3_col] == 1 || occupied[b4_row][b4_col] == 1) begin
                        game_over <= 1; 
                end
      
            //Stop at Obstacles (May/may not be Dead yet)
            end else if(
               b1_row > 22 || b2_row > 22 || b3_row > 22 || b4_row > 22 ||  //Floor
               b1_col < 3  || b2_col < 3  || b3_col < 3  || b4_col < 3  ||  //Left wall
               b1_col > 12 || b2_col > 12 || b3_col > 12 || b4_col > 12 || //Right wall
               occupied[b1_row][b1_col] == 1 || occupied[b2_row][b2_col] == 1 || //Obstacles
               occupied[b3_row][b3_col] == 1 || occupied[b4_row][b4_col] == 1 ) begin
               //Back to previous pos
               t_row <= pt_row; 
               t_col <= pt_col;
               t_rotation <= pt_rotation;
            end   
         
            clear_count <= 0;
            for (i = 1; i <=22; i = i + 1) begin
                if (occupied[i] == 16'b0001_1111_1111_1000) begin
                    clear_count = clear_count + 1;
                end
            end
            
            if (clear_count > 0) begin
                for (i = 1; i <= 22 - clear_count; i = i + 1) begin
                    if (i + clear_count <= 22) begin
                        occupied[i+clear_count] <= occupied[i];
                        occupied[i] <= 16'b0000_0000_0000_0000;
                    end 
                end 
            end
            
    
         //end of edit
         // DISPLAY TETRIMINO>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
          if   ((g_row == b1_row && g_col == b1_col) || 
                (g_row == b2_row && g_col == b2_col) ||
                (g_row == b3_row && g_col == b3_col) || 
                (g_row == b4_row && g_col == b4_col)) begin
                oled_data <= block_color;
          end else if(wall[g_row][g_col] == 1) begin
                oled_data <= light_grey;   
          end else if (occupied[g_row][g_col] == 1) begin 
                oled_data <= colour[g_row][g_col];
          end else begin  
                oled_data <= oled_grid;
          end 
          
          pt_row <= t_row;
          pt_col <= pt_col;
          pt_rotation <= t_rotation;  
          pt_block <= t_block;
          // Display Next Block>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            if ((b_row == b1_b_row && b_col == b1_b_col) || 
                (b_row == b2_b_row && b_col == b2_b_col) ||
                (b_row == b3_b_row && b_col == b3_b_col) || 
                (b_row == b4_b_row && b_col == b4_b_col)) begin
                    oled_dataB <= next_color;
            end else oled_dataB <= black;
        end //end of game ongoing
    end //end of always block
    
endmodule