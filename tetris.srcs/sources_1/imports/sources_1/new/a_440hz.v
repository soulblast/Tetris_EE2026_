`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2023 19:27:31
// Design Name: 
// Module Name: a_440hz
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


module a_440hz(
    input clock,
    output reg a_440hz = 0
    );

    reg [31:0] count = 0;
    
    always @(posedge clock)
    begin
        count <= (count == 31'd113635) ? 0 : count + 1;
        a_440hz <= (count == 0) ? ~a_440hz : a_440hz ;
    end
    endmodule
