`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.10.2023 17:42:10
// Design Name: 
// Module Name: rng_block
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


module rng_block( input next, output reg [2:0] nextblock);

always @ (*)
    begin

    if (next == 0) 
        begin
          nextblock <= {$random} % 7;   
        
        end
    end
endmodule