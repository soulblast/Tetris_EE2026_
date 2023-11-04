`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2023 19:54:36
// Design Name: 
// Module Name: e_329hz
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


module e_329hz(
    input clock,
    output reg e_329hz = 0
    );
    
    reg [31:0] count = 0;
    
    always @(posedge clock)
    begin
        count <= (count == 31'd151684) ? 0 : count + 1;
        e_329hz <= (count == 0) ? ~e_329hz : e_329hz ;
    end
    endmodule
