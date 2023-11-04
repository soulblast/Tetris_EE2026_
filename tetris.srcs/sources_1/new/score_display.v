`timescale 1ns / 1ps


module score_display(
    input CLOCK,
    //input [3:0]row_clear,
    //input rst,
    output reg [15:0]led,
    output reg[3:0]an,
    output reg[6:0]seg
    );
    
    reg[3:0] row_clear = 4'b0001;
    
    reg b2b = 0;    //flag for backtoback clears.
    reg [31:0]score = 0;

    parameter single = 10;
    parameter double = 25;
    parameter triple = 45;
    parameter tetris = 90;
    
    always @ (posedge CLOCK /* || posedge rst*/) begin   //always @ (row_clear)
        /*
        if (rst) begin
            score <= 0;
        end 
        else begin
        */
            case (row_clear) 
            4'b0000: b2b <= 0;
            
            4'b0001: begin
                b2b <= 1;
                if (b2b) begin
                    score <= score + ((single * 3) >> 1);
                end
                else score <= score + single;
            end
            
            4'b0010: begin
                b2b <= 1;
                if (b2b) begin
                    score <= score + ((double * 3) >> 1);
                end
                else score <= score + double;
            end
            
            4'b0100: begin
                b2b <= 1;
                if (b2b) begin
                    score <= score + ((triple * 3) >> 1);
                end
                else score <= score + triple;
            end
            
            4'b1000: begin
                b2b <= 1;
                if ( b2b) begin
                    score <= score + ((tetris * 3) >> 1);
                end
                else score <= score + tetris;
            end
            endcase
        //end
    
    end

    
    reg [1:0]seg_cycle = 0;
    wire thousand_clk;
    var_clk th(.clock(CLOCK), .m(49999), .out_clk(thousand_clk));
    
    wire [6:0]d0;
    wire [6:0]d1;
    wire [6:0]d2;
    wire [6:0]d3;
    seven_segment_encoder u2(.clk(CLOCK), .digit((score % 10)), .seg(d0));
    seven_segment_encoder u3(.clk(CLOCK), .digit((score/10) %10), .seg(d1));
    seven_segment_encoder u4(.clk(CLOCK), .digit((score/100) % 10), .seg(d2));
    seven_segment_encoder unit5(.clk(CLOCK), .digit((score/1000) % 10), .seg(d3));
    always @ (posedge thousand_clk) begin
        case (seg_cycle) 
            2'b00: begin //rightmost digit.
                seg_cycle <= seg_cycle + 1;
                an <= 4'b1110;
                seg <= d0;
            end
            2'b01: begin
                seg_cycle <= seg_cycle + 1;
                an <= 4'b1101;
                seg <= d1;
            end
            2'b10: begin
                seg_cycle <= seg_cycle + 1;
                an <= 4'b1011;
                seg <= d2;
            end
            2'b11: begin
                seg_cycle <= seg_cycle + 1;
                an <= 4'b0111;
                seg <= d3;
            end
        endcase
    end
endmodule
