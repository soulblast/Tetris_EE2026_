`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2023 02:51:25
// Design Name: 
// Module Name: asharp
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


module asharp(
    input clock,
    output reg asharp = 0
    );
    
    reg [31:0] count = 0;
    
    always @(posedge clock)
    begin
        count <= (count == 31'd111788) ? 0 : count + 1;
        asharp <= (count == 0) ? ~asharp : asharp ;
    end
    endmodule
