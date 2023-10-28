`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
//
//  FILL IN THE FOLLOWING INFORMATION:
//  STUDENT A NAME: 
//  STUDENT B NAME:
//  STUDENT C NAME: 
//  STUDENT D NAME:  
//
//////////////////////////////////////////////////////////////////////////////////
// output rgb_cs, rgb_sdin, rgb_sclk, rgb_d_cn, rgb_resn, rgb_vccen, rgb_pmoden,
//output JC[7:0]
/**input btnL, btnR, btnU, btnD, btnC**/
module show_grid (input CLOCK, output reg [15:0] oled_grid,
             input [12:0] pix_index);  
    /************ OLED **********************************************************/
    reg oled_reset = 0;
    wire [12:0] row, col; //0 to 8191
    wire [12:0] cur_pixel, cur_row, cur_col, g_row, g_col, rev_row; //stores the current pixel index
    reg [12:0] sel_row = 0, sel_col = 0;
    get_coords coords_0(.pixels(pix_index), .row(col), .col(rev_row));//PORTRAIT MODE
    assign row = 95-rev_row;
    //               Left 
    // FPGA    Bot |     |Top          
    //              Right    
//    get_coords coords_1(.pixels(cur_pixel), .row(cur_row), .col(cur_col));
//    sel_pixel sel_pix_0(.row(sel_row), .col(sel_col), .pix_index(cur_pixel));
    oled_to_grid_coords(.row(row), .col(col), .g_row(g_row), .g_col(g_col));
//    reg [15:0] oled_D = 16'h07E0;  
    reg [15:0] green = 16'b00000_111111_00000, red = 16'b11111_000000_00000, blue = 16'b00000_000000_11111,
                black = 16'b00000_000000_00000, cur_colour = 16'b00000_000000_11111, grey = 16'b00100_000100_00100;
   
    
   /************ ALWAYS LOOP ***********************************************/
    //40 by 80 grid; ie 10 by 20 blocks
    always @ (posedge CLOCK) begin  
        
    
    
     
        if(g_row % 2 == 1 && g_col % 2 == 1) //odd odd = grey
            oled_grid <= green;
        else if(g_row % 2 == 1 && g_col % 2 == 0)
            oled_grid <= blue;
        else if(g_row % 2 == 0 && g_col % 2 == 1)
            oled_grid <= blue;
        else if(g_row % 2 == 0 && g_col % 2 == 0)
            oled_grid <= green;
            
        if(g_col <= 2 || g_col >= 13)
            oled_grid <= red;
    end  
  
                     
endmodule