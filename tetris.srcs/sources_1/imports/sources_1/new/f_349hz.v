`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2023 00:56:40
// Design Name: 
// Module Name: f_349hz
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

module f_349hz(
    input clock,
    output reg f_349hz = 0
    );
    
    reg [31:0] count = 0;
    
    always @(posedge clock)
    begin
        count <= (count == 31'd143171) ? 0 : count + 1;
        f_349hz <= (count == 0) ? ~f_349hz : f_349hz ;
    end
    endmodule
