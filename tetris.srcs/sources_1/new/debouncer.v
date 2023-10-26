`timescale 1ns / 1ps



module own_debouncer(
    input clk,
    input key_press,
    output reg key_out
    );
    
    parameter count_max = 9_999_999;
    reg [31:0]count = 0;
    reg stable = 0;
    
    always @ (posedge clk) begin
        if (key_press == stable) begin
            if (count == count_max) begin
                key_out <= key_press;
            end
            else 
                count <= count + 1;
        end
        else begin
            count <= 0;
            stable <= key_press;
        end
    end
    
    
    
    
endmodule
