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
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tetrimino(
    input [12:0] posx,
    input [12:0] posy,
    input [1:0] rotation,
    input [2:0] block,
    output reg [12:0] blk1,
    output reg [12:0] blk2,
    output reg [12:0] blk3,
    output reg [12:0] blk4);
    
    parameter I = 0;
    parameter O = 1;
    parameter J = 2;
    parameter L = 3;
    parameter T = 4;
    
    wire [12:0] posxy;
    assign posxy = posx + 10 * posy;
    
   always @ (*)
    begin
        case (block)
        I: begin
           case (rotation)
           0: begin //horizontal
              blk1 = posxy;
              blk2 = posxy + 1;
              blk3 = posxy + 2;
              blk4 = posxy + 3;
           end
              
           1: begin // vertical
              blk1 = posxy;
              blk2 = posxy - 10;
              blk3 = posxy - 20;
              blk4 = posxy - 30;
           end
           
           2: begin // horizontal
              blk1 = posxy;
              blk2 = posxy + 1;
              blk3 = posxy + 2;
              blk4 = posxy + 3;
           end
                  
           3: begin // vertical
              blk1 = posxy;
              blk2 = posxy - 10;
              blk3 = posxy - 20;
              blk4 = posxy - 30;
           end
           endcase
        end       
        
        
        O: begin // square
             blk1 = posxy;
             blk2 = posxy + 1;
             blk3 = posxy - 9;
             blk4 = posxy - 10;
        end
        
        T: begin   
           case (rotation)           //      # 
           0: begin                 //      ###
              blk1 = posxy;
              blk2 = posxy + 1;
              blk3 = posxy - 1;
              blk4 = posxy - 10;
           end 
                                   //     #      
                                   //     ##            
           1: begin                //     #
              blk1 = posxy;
              blk2 = posxy + 1;
              blk3 = posxy - 10;
              blk4 = posxy + 10;
           end  
                                   //     ###          
           2: begin                //      #
              blk1 = posxy;        
              blk2 = posxy - 1;
              blk3 = posxy + 1;
              blk4 = posxy + 10;
           end
           
           3: begin               //      #
              blk1 = posxy;       //     ##
              blk2 = posxy - 1;   //      #
              blk3 = posxy - 10;
              blk4 = posxy + 10;
           end
           endcase
        end
           
        L: begin
           case (rotation)       //         #
           0: begin              //       ###  
              blk1 = posxy;
              blk2 = posxy - 1;
              blk3 = posxy + 1;
              blk4 = posxy - 9;
           end
           
           1: begin               //      # 
              blk1 = posxy;       //      #
              blk2 = posxy - 10;  //      ## 
              blk3 = posxy + 10;
              blk4 = posxy + 11;            
           end
           
           2: begin                   //   ###
              blk1 = posxy;           //   #
              blk2 = posxy - 1;
              blk3 = posxy + 1;
              blk4 = posxy + 9;
           end
               
           3: begin                   //     ##
              blk1 = posxy;           //      #
              blk2 = posxy - 10;      //      #
              blk3 = posxy - 11;
              blk4 = posxy + 10;    
           end
           endcase
        end
           
        J: begin
           case (rotation)
           0: begin                 //   #
              blk1 = posxy;         //   ###
              blk2 = posxy - 1;         
              blk3 = posxy - 11;
              blk4 = posxy + 1;          
           end
           
           1: begin                  //     ##
              blk1 = posxy;          //     #
              blk2 = posxy - 10;     //     #
              blk3 = posxy - 9;
              blk4 = posxy + 10;          
           end
           
           2: begin                 //   ###
              blk1 = posxy;         //     # 
              blk2 = posxy - 1;
              blk3 = posxy + 1;
              blk4 = posxy + 11;          
           end
           
           3: begin
              blk1 = posxy;         //        #
              blk2 = posxy - 10;    //        #
              blk3 = posxy + 10;    //       ##
              blk4 = posxy + 9;           
           end                               
           endcase 
        end 
        endcase     
    end 
endmodule
