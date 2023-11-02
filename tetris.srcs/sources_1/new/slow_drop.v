`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2023 18:05:46
// Design Name: 
// Module Name: slow_drop
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


module slow_drop(
    input CLOCK, current,
    output reg [12:0] block_posy
    );
    wire clock2hz;
    flexi_clock_D(CLOCK, 500000000, clock2hz); // drops by 1 block every second
    
    always @ (posedge clock2hz)
        begin 
            if (current && block_posy >= 2 && block_posy <= 21)
            begin
                block_posy <= (block_posy == 21) ? 21 : block_posy + 1;
            end
            
            if(!current)
            begin
                block_posy <= 2;
            end
        end
    
endmodule
