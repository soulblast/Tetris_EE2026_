`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2023 20:19:47
// Design Name: 
// Module Name: block_color
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


module block_color(
    input [2:0] block,
    output reg [15:0] color
    );
     
    always @ (*)
        begin
            case(block)
                0: begin // light blue
                   color = 16'b00110_110111_11111;
                end
                
                1: begin // yellow
                   color = 16'b11111_111111_00110;
                end   
                
                2: begin // purple
                   color = 16'b11100_001101_11111;
                end
                
                3: begin // orange
                   color = 16'b11111_101010_00000;
                end
                
                4: begin // darj_blue
                   color = 16'b00000_000000_11010;
                end

                5: begin // red
                   color = 16'b11111_000000_00000;
                end

                6: begin // green
                   color = 16'b00000_111111_00000;  
                end  

            endcase
        end
    
endmodule
