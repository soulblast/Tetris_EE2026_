`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2023 03:41:25
// Design Name: 
// Module Name: tetrimino
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: \
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tetrimino(
    input [4:0] t_col,//0 to 9  (0 to 15)
    input [5:0] t_row,//0 to 21  (0 to 23)
    input [1:0] rotation,
    input [2:0] block,
    output reg [4:0] blk1_col,
                      blk2_col,
                      blk3_col,
                      blk4_col,
    output reg [5:0]  blk1_row,
                       blk2_row,
                       blk3_row,
                       blk4_row 
    );
     
   always @ (*)
    begin
        case (block)
        0: begin  // I
           case (rotation)
           0: begin //horizontal    //    #X##
              blk1_row = t_row;
              blk2_row = t_row;
              blk3_row = t_row;
              blk4_row = t_row;
              blk1_col = t_col;
              blk2_col = t_col+1;
              blk3_col = t_col+2;
              blk4_col = t_col+3;
           end
                                       //   #
                                       //   X
                                       //   #
                                       //   #
           1: begin // vertical    
               blk1_row = t_row;
               blk2_row = t_row+1;
               blk3_row = t_row+2;
               blk4_row = t_row+3;
               blk1_col = t_col;
               blk2_col = t_col;
               blk3_col = t_col;
               blk4_col = t_col;   
           end
           
           2: begin // horizontal        //   #X##
                blk1_row = t_row;
                blk2_row = t_row;
                blk3_row = t_row;
                blk4_row = t_row;
                blk1_col = t_col;
                blk2_col = t_col+1;
                blk3_col = t_col+2;
                blk4_col = t_col+3;
           end
                  
           3: begin // vertical               //    #
               blk1_row = t_row;
               blk2_row = t_row+1;
               blk3_row = t_row+2;
               blk4_row = t_row+3;
               blk1_col = t_col;
               blk2_col = t_col;
               blk3_col = t_col;
               blk4_col = t_col; 
           end
           endcase
        end       
        
        1: begin // square
            blk1_row = t_row; blk1_col = t_col;
            blk2_row = t_row+1; blk2_col = t_col;
            blk3_row = t_row; blk3_col = t_col+1;
            blk4_row = t_row+1; blk4_col = t_col+1;
        end
        
        2: begin   // T
           case (rotation)           //      # 
           0: begin                 //      #X#
                blk1_row = t_row; blk1_col = t_col;
                blk2_row = t_row-1; blk2_col = t_col;
                blk3_row = t_row; blk3_col = t_col+1;
                blk4_row = t_row; blk4_col = t_col-1;
           end 
                                   //     #      
                                   //     X#            
           1: begin                //     #
                blk1_row = t_row; blk1_col = t_col;
                blk2_row = t_row-1; blk2_col = t_col;
                blk3_row = t_row+1; blk3_col = t_col;
                blk4_row = t_row; blk4_col = t_col+1;
           end  
                                   //     #X#          
           2: begin                //      #
                blk1_row = t_row; blk1_col = t_col;
                blk2_row = t_row+1; blk2_col = t_col;
                blk3_row = t_row; blk3_col = t_col+1;
                blk4_row = t_row; blk4_col = t_col-1;
           end
           
           3: begin              
//     #
//    #X
//     #
                blk1_row = t_row; blk1_col = t_col;
                blk2_row = t_row-1; blk2_col = t_col;
                blk3_row = t_row+1; blk3_col = t_col;
                blk4_row = t_row; blk4_col = t_col-1;
           end
           endcase
        end
           
        3: begin // L
           case (rotation)       //         #
           0: begin              //       #X#  
                blk1_row = t_row; blk1_col = t_col;
                blk2_row = t_row-1; blk2_col = t_col+1;
                blk3_row = t_row; blk3_col = t_col+1;
                blk4_row = t_row; blk4_col = t_col-1;
           end
           
           1: begin               
//      # 
//      X
//      ## 
                blk1_row = t_row; blk1_col = t_col;
                blk2_row = t_row-1; blk2_col = t_col;
                blk3_row = t_row+1; blk3_col = t_col;
                blk4_row = t_row+1; blk4_col = t_col+1;        
           end
           
           2: begin                   
//   #X#
//   #
            blk1_row = t_row; blk1_col = t_col;
            blk2_row = t_row+1; blk2_col = t_col-1;
            blk3_row = t_row; blk3_col = t_col+1;
            blk4_row = t_row; blk4_col = t_col-1;  
           end
               
           3: begin                   
//      ##
//       X
//       #
                blk1_row = t_row; blk1_col = t_col;
                blk2_row = t_row+1; blk2_col = t_col;
                blk3_row = t_row-1; blk3_col = t_col;
                blk4_row = t_row-1; blk4_col = t_col-1;
           end
           endcase
        end
           
        4: begin // J
           case (rotation)
           0: begin                 
//   #
//   #x#
                blk1_row = t_row; blk1_col = t_col;
                blk2_row = t_row-1; blk2_col = t_col-1;
                blk3_row = t_row; blk3_col = t_col+1;
                blk4_row = t_row; blk4_col = t_col-1;  
           end
           
           1: begin                  
//     ##
//     x
//     #
                blk1_row = t_row; blk1_col = t_col;
                blk2_row = t_row-1; blk2_col = t_col;
                blk3_row = t_row+1; blk3_col = t_col;
                blk4_row = t_row-1; blk4_col = t_col+1;          
           end
           
           2: begin                 
//   #x#
//     # 
                blk1_row = t_row; blk1_col = t_col;
                blk2_row = t_row+1; blk2_col = t_col+1;
                blk3_row = t_row; blk3_col = t_col+1;
                blk4_row = t_row; blk4_col = t_col-1;          
           end
           
           3: begin
//      #
//      x
//     ##
                blk1_row = t_row; blk1_col = t_col;
                blk2_row = t_row-1; blk2_col = t_col;
                blk3_row = t_row+1; blk3_col = t_col;
                blk4_row = t_row+1; blk4_col = t_col-1;      
           end                               
           endcase 
        end 

        5: begin // Z
           case (rotation)
           0: begin                 
//   ##
//    X#
                blk1_row = t_row; blk1_col = t_col;
                blk2_row = t_row-1; blk2_col = t_col;
                blk3_row = t_row; blk3_col = t_col+1;
                blk4_row = t_row-1; blk4_col = t_col-1;      
           end
           
           1: begin                 
//           #
//          X#
//          #
                blk1_row = t_row; blk1_col = t_col;
                blk2_row = t_row+1; blk2_col = t_col;
                blk3_row = t_row; blk3_col = t_col+1;
                blk4_row = t_row-1; blk4_col = t_col+1;   
           end
           
           2: begin                 
//   #X
//    ## 
                blk1_row = t_row; blk1_col = t_col;
                blk2_row = t_row+1; blk2_col = t_col;
                blk3_row = t_row+1; blk3_col = t_col+1;
                blk4_row = t_row; blk4_col = t_col-1;    
           end
           
           3: begin
//        #
//       #X
//       #
                blk1_row = t_row; blk1_col = t_col;
                blk2_row = t_row-1; blk2_col = t_col;
                blk3_row = t_row; blk3_col = t_col-1;
                blk4_row = t_row+1; blk4_col = t_col-1;      
           end                               
           endcase 
        end 

        6: begin // S
           case (rotation)
           0: begin                 
//     ##
//    #X
                blk1_row = t_row; blk1_col = t_col;
                blk2_row = t_row-1; blk2_col = t_col;
                blk3_row = t_row; blk3_col = t_col-1;
                blk4_row = t_row-1; blk4_col = t_col+1;          
           end
           
           1: begin                   
//      #         
//      X#  
//       #
                blk1_row = t_row; blk1_col = t_col;
                blk2_row = t_row-1; blk2_col = t_col;
                blk3_row = t_row; blk3_col = t_col+1;
                blk4_row = t_row+1; blk4_col = t_col+1;         
           end
           
           2: begin                 
//     X#
//    ## 
                blk1_row = t_row; blk1_col = t_col;
                blk2_row = t_row+1; blk2_col = t_col;
                blk3_row = t_row; blk3_col = t_col+1;
                blk4_row = t_row+1; blk4_col = t_col-1;         
           end
           
           3: begin
//      #
//      #X
//       #
            blk1_row = t_row; blk1_col = t_col;
            blk2_row = t_row+1; blk2_col = t_col;
            blk3_row = t_row; blk3_col = t_col-1;
            blk4_row = t_row-1; blk4_col = t_col-1;       
           end                               
           endcase 
        end 

        endcase     
    end 
endmodule
