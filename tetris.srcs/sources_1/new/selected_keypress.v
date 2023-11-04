`timescale 1ns / 1ps


module selected_key_press(
    input clk,
    input PS2Data,
    input PS2Clk,
    output reg[31:0]keys = 0
    );
    
    wire [15:0]receive_keycode;
    keyboard_out unit(.clk(clk), .PS2Clk(PS2Clk), .PS2Data(PS2Data), .act_keycode(receive_keycode));
    
    always @ (posedge clk) begin
            if (receive_keycode == 16'hf005) begin
                keys[0] <= 0;
            end
            else if (receive_keycode[7:0] == 8'h05) begin //F1 key
                keys[0] <= 1;
            end
            
            if (receive_keycode == 16'hf006) begin
                keys[1] <= 0;
            end
            else if(receive_keycode[7:0] == 8'h06) begin //F2 key
                keys[1] <= 1;
            end
            
            if (receive_keycode == 16'hf004) begin
                keys[2] <= 0;
            end
            else if(receive_keycode[7:0] == 8'h04) begin //F3 key
                keys[2] <= 1;
            end
            
            if (receive_keycode == 16'hf00c) begin
                keys[3] <= 0;
            end
            else if(receive_keycode[7:0] == 8'h0c) begin //F4 key
                keys[3] <= 1;
            end
            
            if (receive_keycode == 16'hf003) begin 
                keys[4] <= 0;
            end
            else if(receive_keycode[7:0] == 8'h03) begin //F5 key
                keys[4] <= 1;
            end
            
            if (receive_keycode == 16'hf00b) begin
                keys[5] <= 0;
            end
            else if(receive_keycode[7:0] == 8'h0b) begin //F6 Key
                keys[5] <= 1;
            end
            
            if (receive_keycode == 16'hf083) begin
                keys[6] <= 0;
            end
            else if(receive_keycode[7:0] == 8'h83) begin //F7 key
                keys[6] <= 1;
            end
            
            if (receive_keycode == 16'hf00a) begin
                keys[7] <= 0;
            end
            else if(receive_keycode[7:0] == 8'h0a) begin //F8 key
                keys[7] <= 1;
            end
            
            if (receive_keycode == 16'hf001) begin
                keys[8] <= 0;
            end
            else if(receive_keycode[7:0] == 8'h01) begin //F9
                keys[8] <= 1;
            end
            
            if (receive_keycode == 16'hf009) begin
                keys[9] <= 0;
            end
            else if(receive_keycode[7:0] == 8'h09) begin //F10
                keys[9] <= 1;
            end
            
            if (receive_keycode == 16'hf078) begin
                keys[10] <= 0;
            end
            else if (receive_keycode[7:0] == 8'h78) begin //F11
                keys[10] <= 1;
            end
            
            if (receive_keycode == 16'hf007) begin
                keys[11] <= 0;
            end
            else if (receive_keycode[7:0] == 8'h07) begin //F12
                keys[11] <= 1;
            end
                    if (receive_keycode == 16'hf031) begin
                keys[12] <= 0;
            end
            else if(receive_keycode[7:0] == 8'h31) begin //N key
                keys[12] <= 1;
            end
            
            if (receive_keycode == 16'hf03a) begin
                keys[13] <= 0;
            end
            else if(receive_keycode[7:0] == 8'h3a) begin //M key
                keys[13] <= 1;
            end
            
            if (receive_keycode == 16'hf041) begin
                keys[14] <= 0;
            end
            else if(receive_keycode[7:0] == 8'h41) begin //, key
                keys[14] <= 1;
            end
            
            if (receive_keycode == 16'hf029) begin
                keys[15] <= 0;
            end
            else if (receive_keycode[7:0] == 8'h29) begin //Spacebar
                keys[15] <= 1;
            end
            
            if (receive_keycode == 16'hf01c) begin
                keys[16] <= 0;
            end
            else if (receive_keycode[7:0] == 8'h1c) begin //A key
                keys[16] <= 1;
            end
            
            if (receive_keycode == 16'hf01b) begin
                keys[17] <= 0;
            end
            else if(receive_keycode[7:0] == 8'h1b) begin //S key
                keys[17] <= 1;
            end
            
            if (receive_keycode == 16'hf023) begin
                keys[18] <= 0;
            end
            else if(receive_keycode[7:0] == 8'h23) begin //D key
                keys[18] <= 1;
            end
            
            if (receive_keycode == 16'hf01d) begin
                keys[19] <= 0;
            end
            else if(receive_keycode[7:0] == 8'h1d)begin
                keys[19] <= 1;
            end 
        end
    
endmodule
