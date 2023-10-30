`timescale 1ns / 1ps

module main(
    input CLOCK,
    input PS2Clk,
    input PS2Data,
    output [15:0]led
    );
    
    wire [15:0] receive_keycode;
    //Instantiate keyboard module.
    keyboard_out unit1(.clk(CLOCK), .PS2Clk(PS2Clk), .PS2Data(PS2Data), .act_keycode(receive_keycode));
    
    reg [18:12] keys = 0;
    //testing space.
    always @ (posedge CLOCK) begin

    end
    
    assign led[15:9] = keys;
    
endmodule
