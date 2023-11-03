`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/15/2023 04:02:09 PM
// Design Name: 
// Module Name: slow_blinky
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
//basys clock: 100 MHz means 5ns high, 5ns low, 10ns between each pair of posedges 
module flexi_clock(input CLOCK, input [31:0] Tns, output reg NEW_CLK); 
    wire [31:0] m; 
    T_to_m t_0(Tns, m);
    reg [31:0] COUNT = 0; 
    initial begin
        NEW_CLK = 0; 
    end 
    always @ (posedge CLOCK) begin   //runs every 10ns
        NEW_CLK <= (COUNT == m) ? ~NEW_CLK : NEW_CLK; //continuous
        COUNT <= (COUNT == m) ? 0 : COUNT + 1; 
    end 
endmodule
