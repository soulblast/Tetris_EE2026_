`timescale 1ns / 1ps

module ps2_rx(
    input wire clk, reset,
    input wire ps2d, ps2c, rx_en, //ps2data and ps2clock. rx_en means receive_enabled
    output reg rx_done_tick, //ps2 receive done tick
    output wire [7:0] rx_data //data received
    );
    
    parameter idle = 1'b0;
    parameter rx = 1'b1;
    
    reg state_reg, state_nxt;   //state register
    reg [7:0]filter_reg;         
    wire [7:0]filter_nxt;
    reg f_val_reg;
    wire f_val_nxt;
    reg [3:0]n_reg, n_nxt;
    reg [10:0] d_reg, d_nxt;
    wire neg_edge;
    
    always @(posedge clk, posedge reset) begin
        
    end


    
endmodule
