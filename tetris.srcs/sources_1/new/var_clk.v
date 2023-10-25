`timescale 1ns / 1ps


module var_clk(
    input clock,
    input [31:0]m,
    output reg out_clk = 0
    );
    
    reg [31:0] count = 0;
    
    always @ (posedge clock) begin
        count <= (count == m) ? 0 : count + 1;
        out_clk <= (count == 0)? ~out_clk : out_clk;
    end
    
    
    
endmodule
