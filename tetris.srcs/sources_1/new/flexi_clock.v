`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/15/2023 04:02:09 PM
// Design Name: 
// Module Name: slow_blinky
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
// 1 / F_des = T_des =  m * (10ns) * 2
// m = 1 / F_des / (10ns) / 2
// T_des = m * (10ns)
// 10 MHz, 5 MHz, 2.5 MHz
// T = 100ns, 50ns, 25ns
// Toggle = 10, 5, 2.5

//on Basys: CLOCK is an inbuilt clock signal, 100 MHz, T = 10ns, toggle every 
// m = 0.5 * new_period / 10ns - 1
// 1 Hz, T = 1s) n = 0.5 * 10^9 / 10  - 1 = 5 * 10^7 - 1 = 50_000_000 - 1 = 49_999_999
// 1.33Hz, T = 0.75s) n = 0.5 * 0.75 * 10^9 / 10 - 1 = 0.375 * 10^8 - 1 = 375 * 10^5 - 1 = 37_500_000 - 1 = 37_499_999
// 10Hz, T = 0.1s) n = 0.5 * 10^8 / 10  - 1 = 5 * 10^6 - 1 = 50_000_00 - 1 = 4_999_999
// 100Hz, T = 0.01s) n = 0.5 * 10^7 / 10  - 1 = 5 * 10^5 - 1 = 5_000_00 - 1 = 499_999
// 2Hz, T = 0.5s,) 0.5 * 0.5 * 10^9/10 -1 = 25 000 000 -1 = 24_999_999
// 20Hz, T = 0.05s,) 0.5 * 0.05 * 10^9/10 -1 = 2_499_999;
//200 Hz, T = 0.005s) 249_999
// 6.25 Mhz, T = 160 ns) 0.5 * 160/ 10 - 1 = 7 
module flexi_clock_D(input CLOCK, input [31:0] Tns, output reg NEW_CLK); 
    wire [31:0] m;
   // freq_to_m f_0 (freq, m);
    T_to_m t_0(Tns, m);
    reg [31:0] COUNT = 0; 
    initial 
    begin
        NEW_CLK = 0; 
    end
    //this loop should run every 10ns
    always @ (posedge CLOCK) begin  
        //NEW_CLK <= (COUNT == n) ? ~NEW_CLK : NEW_CLK; //continuous
        //COUNT <= (COUNT == n) ? 0 : COUNT + 1;
        NEW_CLK <= (COUNT == m) ? ~NEW_CLK : NEW_CLK; //continuous
        COUNT <= (COUNT == m) ? 0 : COUNT + 1;
       //COUNT <= COUNT + 1;
    end
    //PERIOD of slow clock = n * 2 * 10ns 
endmodule
