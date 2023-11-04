`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2023 02:43:27
// Design Name: 
// Module Name: dsharp
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


module dsharp(
    input clock,
    output reg dsharp = 0
    );
    
    reg [31:0] count = 0;
    
    always @(posedge clock)
    begin
        count <= (count == 31'd161672) ? 0 : count + 1;
        dsharp <= (count == 0) ? ~dsharp : dsharp ;
    end
    endmodule
