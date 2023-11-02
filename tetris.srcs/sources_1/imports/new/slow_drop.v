`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2023 18:05:46
// Design Name: 
// Module Name: slow_drop
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


module slow_drop(
    input CLOCK,
    output reg cnt_2Hz
    );
    wire clock2hz;
    flexi_clock_D clk0(CLOCK, 500_000_000, clock2hz); // drops by 1 block every second
    
    reg [12:0] posy = 2;
  //  assign block_posy = posy;
    initial begin
        cnt_2Hz <= 0;
    end
    always @ (posedge clock2hz)
        begin  
            cnt_2Hz <= ~cnt_2Hz;
          //  if (current)
           // begin
               // posy <= (posy == 21) ? 2 : posy + 1; 
            //end
            
//            if(!current)
//            begin
//                posy <= 2;
//            end
        end
    
endmodule
