`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2023 19:43:00
// Design Name: 
// Module Name: b_493hz
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


module b_493hz(
    input clock,
    output reg b_493hz = 0
    );
    
    reg [31:0] count = 0;
    
    always @(posedge clock)
    begin
        count <= (count == 31'd101238) ? 0 : count + 1;
        b_493hz <= (count == 0) ? ~b_493hz : b_493hz ;
    end
    endmodule
