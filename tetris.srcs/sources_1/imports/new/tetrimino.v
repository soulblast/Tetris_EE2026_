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
    input [12:0] posx,//0 to 9  (0 to 15)
    input [12:0] posy,//0 to 21  (0 to 23)
    input [1:0] rotation,
    input [2:0] block,
    output reg [12:0] blk1,// divide 100 to get posy; %100 to get posx;
    output reg [12:0] blk2,
    output reg [12:0] blk3,
    output reg [12:0] blk4
    );
    
    
    wire [12:0] posxy; 
    assign posxy = 100 * posy + posx; //ROW ROW COL COL
    
   always @ (*)
    begin
        case (block)
        0: begin  // I
           case (rotation)
           0: begin //horizontal    //    #X##
              blk1 = posxy - 1; 
              blk2 = posxy;
              blk3 = posxy + 1;
              blk4 = posxy + 2;
           end
                                       
           1: begin // vertical                 //   #
              blk1 = posxy + 1 -  100;         //   X
              blk2 = posxy;                    //   #
              blk3 = posxy - 1 + 100;          //   #
              blk4 = posxy - 2 + 200;
           end
           
           2: begin // horizontal        //   #X##
                    blk1 = posxy - 1; 
                    blk2 = posxy;
                    blk3 = posxy + 1;
                    blk4 = posxy + 2;
           end
                  
           3: begin // vertical               //    #
                blk1 = posxy + 1 -  100;         //   X
                blk2 = posxy;                    //   #
                blk3 = posxy - 1 + 100;          //   #
                blk4 = posxy - 2 + 200;
           end
           endcase
        end       
        
        1: begin // square
             blk1 = posxy;
             blk2 = posxy + 1;
             blk3 = posxy + 100; 
             blk4 = posxy + 101;
        end
        
        2: begin   // T
           case (rotation)           //      # 
           0: begin                 //      #X#
              blk1 = posxy;
              blk2 = posxy - 100;
              blk3 = posxy - 1;
              blk4 = posxy + 1;
           end 
                                   //     #      
                                   //     X#            
           1: begin                //     #
              blk1 = posxy;
              blk2 = posxy - 100;
              blk3 = posxy + 100;
              blk4 = posxy + 1;
           end  
                                   //     #X#          
           2: begin                //      #
              blk1 = posxy;        
              blk2 = posxy + 100;
              blk3 = posxy + 1;
              blk4 = posxy - 1;
           end
           
           3: begin               //      #
              blk1 = posxy;       //     #X
              blk2 = posxy - 100;   //    #
              blk3 = posxy + 100;
              blk4 = posxy - 1;
           end
           endcase
        end
           
        3: begin // L
           case (rotation)       //         #
           0: begin              //       #X#  
              blk1 = posxy;
              blk2 = posxy - 1;
              blk3 = posxy + 1;
              blk4 = posxy - 100 + 1;
           end
           
           1: begin               //       # 
              blk1 = posxy;       //       X
              blk2 = posxy - 100;  //      ## 
              blk3 = posxy + 100;
              blk4 = posxy + 100 + 1;            
           end
           
           2: begin                   //   #X#
              blk1 = posxy;           //   #
              blk2 = posxy - 1;
              blk3 = posxy + 1;
              blk4 = posxy - 1 + 100;
           end
               
           3: begin                   //      ##
              blk1 = posxy;           //       X
              blk2 = posxy - 100;      //      #
              blk3 = posxy - 100 - 1;
              blk4 = posxy + 100;
           end
           endcase
        end
           
        4: begin // J
           case (rotation)
           0: begin                 //   #
              blk1 = posxy;         //   #x#
              blk2 = posxy - 1;         
              blk3 = posxy + 1;
              blk4 = posxy - 100 - 1;          
           end
           
           1: begin                  //      ##
              blk1 = posxy;          //      x
              blk2 = posxy - 100;     //     #
              blk3 = posxy - 100;
              blk4 = posxy - 100 + 1;          
           end
           
           2: begin                 //   #x#
              blk1 = posxy;         //     # 
              blk2 = posxy - 1;
              blk3 = posxy + 1;
              blk4 = posxy + 100 + 1;          
           end
           
           3: begin
              blk1 = posxy;          //      #
              blk2 = posxy - 100;    //      x
              blk3 = posxy + 100;    //     ##
              blk4 = posxy + 100 - 1;           
           end                               
           endcase 
        end 

        5: begin // Z
           case (rotation)
           0: begin                 //   ##
              blk1 = posxy;         //    X#
              blk2 = posxy + 1;         
              blk3 = posxy - 100;
              blk4 = posxy - 100 - 1;          
           end
           
           1: begin                  //           #
              blk1 = posxy;          //          X#
              blk2 = posxy - 100 + 1;      //    #
              blk3 = posxy + 1;
              blk4 = posxy + 100;          
           end
           
           2: begin                 //   #X
              blk1 = posxy;         //    ## 
              blk2 = posxy + 100;
              blk3 = posxy - 1;
              blk4 = posxy + 100 + 1;          
           end
           
           3: begin
              blk1 = posxy;          //        #
              blk2 = posxy - 100;    //       #X
              blk3 = posxy - 1;      //       #
              blk4 = posxy + 100 - 1;        
           end                               
           endcase 
        end 

        6: begin // S
           case (rotation)
           0: begin                 //     ##
              blk1 = posxy;         //    #X
              blk2 = posxy - 100;         
              blk3 = posxy - 1;
              blk4 = posxy - 100 + 1;          
           end
           
           1: begin                   //      #
              blk1 = posxy;           //      X#
              blk2 = posxy - 100;     //       #
              blk3 = posxy + 1;
              blk4 = posxy + 100 + 1;          
           end
           
           2: begin                 //     X#
              blk1 = posxy;         //    ## 
              blk2 = posxy + 100;
              blk3 = posxy + 1;
              blk4 = posxy + 100 - 1;          
           end
           
           3: begin
              blk1 = posxy;          //      #
              blk2 = posxy + 100;    //      #X
              blk3 = posxy - 1;      //       #
              blk4 = posxy - 100 - 1;          
           end                               
           endcase 
        end 

        endcase     
    end 
endmodule
