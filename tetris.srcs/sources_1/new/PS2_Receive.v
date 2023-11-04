`timescale 1ns / 1ps

//Receive and decode data from PS/2 keyboard input. 
//common to have 2 byes hence need store prev and curr
module PS2Receive(
    input clk, //slower clock, around 50MHz?  maybe.
    input PS2Clk, //clock signal from PS/2 connection
    input PS2Data, //data from PS/2 connection
    output reg [15:0] keycode = 0, 
    output reg out_flag //whole keycode has been sent and new 1 is avail
    );
    
    wire key_Clk, key_Data; //debounced PS/2 clk and data
    reg [7:0] data_curr = 0; //Current data being read
    reg [7:0] data_prev = 0; //Prev data being read
    reg [3:0] count = 0;
    reg complete = 0; //show if complete keycode has been received
    
    own_debouncer # (.count_max(20)) db_clk(.clk(clk), .key_press(PS2Clk), .key_out(key_Clk));
    own_debouncer # (.count_max(20)) db_data(.clk(clk), .key_press(PS2Data), .key_out(key_Data));
    
    //reading data 
    always @ (negedge key_Clk) begin //PS2 inputs comes with negedge
        if (count <= 9) begin
            count <= count + 1;
        end
        else if (count == 10) begin
            count <= 0;
        end
        case(count)
            //0 is start bit, so skip first count.
            1: data_curr[0] <= key_Data;
            2: data_curr[1] <= key_Data;
            3: data_curr[2] <= key_Data;
            4: data_curr[3] <= key_Data;
            5: data_curr[4] <= key_Data;
            6: data_curr[5] <= key_Data;
            7: data_curr[6] <= key_Data;
            8: data_curr[7] <= key_Data;
            9: complete <= 1'b1;
            10: complete <= 1'b0;
        endcase
    end
    
    reg prev = 0; 
    always @ (posedge clk) begin
        if (complete == 1'b1 && prev == 1'b0) begin
            keycode <= {data_prev, data_curr};
            out_flag <= 1'b1;
            data_prev <= data_curr;
        end
        else begin
            out_flag <= 1'b0;
        end
        prev <= complete;
    end
    
    
endmodule
