`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2023 17:36:44
// Design Name: 
// Module Name: flexibleclock
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


module flexible_clock(
    input clock,
    input [31:0] mvalue,
    output reg myclk = 0
    );
    
    reg [31:0] count = 0;
    
    always @(posedge clock)
    begin
        count <= (count == mvalue) ? 0 : count + 1;
        myclk <= (count == 0) ? ~myclk : myclk ;
    end
endmodule