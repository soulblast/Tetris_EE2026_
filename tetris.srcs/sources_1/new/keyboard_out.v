`timescale 1ns / 1ps


module keyboard_out(
    input clk,
    input PS2Clk,
    input PS2Data,
    output reg [15:0]act_keycode = 0 //verified keycode
    );
    
//------------------------------------------------------//
    //making a 50Mhz clock.
    reg clk50Mhz = 0;
    always @ (posedge clk) begin
        clk50Mhz <= ~clk50Mhz;
    end
//-----------------------------------------------------//

    wire [15:0] keycode;
    reg break = 0;
    wire oflag;
        
    //Receive keycode from PS2 keyboard input to be processed. 
    //from file: keyboard_receiver
    
    PS2Receive unit1(.clk(clk50Mhz), .PS2Clk(PS2Clk), 
    .PS2Data(PS2Data), .keycode(keycode), .out_flag(oflag));
    
    always @ (keycode) begin //whenever there is a key press/release
        if (keycode[7:0] == 8'hf0) begin //indicating a break code (key release)
            break <= 1'b0;
        end
        else if (keycode[15:8] == 8'hf0) begin
            break <= keycode != act_keycode; //detection of extended breakcode. (arrow key)
        end
        else begin
            break <= ((keycode[7:0] != act_keycode[7:0]) || (act_keycode[15:8] == 8'hf0));
        end
    end
    
    always @ (posedge clk) begin //output the keycode if it is not a different code
        if (oflag == 1'b1 && break == 1'b1) begin
            act_keycode <= keycode;
        end
    end
    
    
endmodule
