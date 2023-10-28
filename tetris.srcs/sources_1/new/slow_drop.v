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
    input CLOCK,
    output reg block_posx
    );
    wire clock1hz;
    flexi_clock_D(CLOCK, 1000000000, clock1hz); // drops by 1 block every second
    
    always @ (posedge clock1hz)
        begin
            block_posx <= block_posx + 1;
        end
    
endmodule
