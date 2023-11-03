`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2023 16:35:59
// Design Name: 
// Module Name: rando
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


module rando(input E,
    output reg [2:0] number0, number1
    );
    reg count;
    reg seed0;
    reg seed1;
    reg [31:0] random = 215463165;
    always @ (posedge E)
    begin
        
        seed0 <= (seed0 < 100) ? (seed0 + 2562) : (825329 * seed0 + 23903243);
        number0 <= seed0 % 7;
    end 
    
    always @ (negedge E)
    begin
        seed1 <= (seed1 < 100) ? (seed1 + 6346) : (329769 * seed1 + 345923453);
        number1 <= seed1 % 7;
    end 
endmodule
