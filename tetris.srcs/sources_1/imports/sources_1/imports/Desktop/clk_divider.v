`timescale 1ns / 1ps

module clk_divider (input CLOCK , [31:0] my_m_value, output reg clk_output = 0);    
    reg[31:0] count = 0;    
    always @ (posedge CLOCK)
    begin
        count <= (count == my_m_value) ? 0 : count + 1;
        clk_output <= (count == 0) ? ~clk_output : clk_output;
    end
endmodule

module clock_count_div(output reg clk_s, input clk, input [31:0] div);
    // div indicate the clk speed such as clk/2^div
    reg [31:0] clk_count = 32'b0;
    always @ (posedge clk) begin
        clk_count <= clk_count + 1;
        clk_s <= clk_count[div-1];
    end    
endmodule

module clk_freq_divider (input CLOCK , [31:0] my_freq, output reg clk_fdiv = 0);    
    reg[31:0] f_count = 0;
    wire [31:0] m_value = (100_000_000 / (2*my_freq)) - 1;
    
    always @ (posedge CLOCK)
    begin
        f_count <= (f_count == m_value) ? 0 : f_count + 1;
        clk_fdiv <= (f_count == 0) ? ~clk_fdiv : clk_fdiv;
    end

endmodule