`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2023 12:58:59 PM
// Design Name: 
// Module Name: main
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


module old_main(input CLOCK, input [15:0] sw, 
                   output [0:7] JC,//  
                    input btnL, btnR, btnU, btnD, btnC,
                    //paint vars:
                    inout PS2Clk, PS2Data, output reg [15:0] led = 0, output reg [6:0] seg, output reg [3:0] an, output reg dp 
                    ); 
    //CLOCK >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..
    wire CLK_6p25M;
        flexi_clock_D clock0 (.CLOCK(CLOCK), .Tns(160), .NEW_CLK(CLK_6p25M));    
    
    //OLED DISPLAY >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..
      reg oled_reset = 0;
       wire [12:0] pix_index;
       reg [15:0] oled_data;
       
     Oled_Display oled_0(
        .clk(CLK_6p25M), //input
        .reset(oled_reset),  //input
        .frame_begin(),  //output
        .sending_pixels(), //output
        .sample_pixel(),  //output
        .pixel_index(pix_index),  //output
        .pixel_data(oled_data), //input
        .cs(JC[0]), 
        .sdin(JC[1]), 
        .sclk(JC[3]), 
        .d_cn(JC[4]), 
        .resn(JC[5]), 
        .vccen(JC[6]),
        .pmoden(JC[7]));
  
    wire [15:0] oled_A, oled_B, oled_C, oled_D, oled_paint;
    reg [4:0] run; //GDCBA
     
    Top_Student_A unit_A(.clock(CLOCK), .btnC(btnC), .btnU(btnU), .clk_6p25m(CLK_6p25M), .oled_data_A(oled_A),
                         .pix_in(pix_index), .chosen(run[0])); 
    Top_Student_B unit_B (.clock(CLOCK), .btnL_B(btnL),.btnR_B(btnR), .oled_clk(CLK_6p25M), .oled_data_B(oled_B),
                        .pix_in(pix_index), .chosen(run[1]));
    Top_StudentC unit_C(.clock(CLOCK), .btnC(btnC), .clk_625(CLK_6p25M), .pixel_index(pix_index),
                         .oled_data(oled_C), .chosen(run[2]));
    TaskD unit_D (.CLOCK(CLOCK), .btnL(btnL), .btnR(btnR), .btnC(btnC), .CLK_6p25MHz(CLK_6p25M), 
                    .pix_index(pix_index), .oled_D(oled_D), .chosen(run[3]));
    
    wire [15:0] led_p; 
    wire [6:0] seg_p;
    wire [3:0] an_p; 
    wire dp_p;
    
    grp_paint unit_paint(.clock(CLOCK),.PS2Clk(PS2Clk), .PS2Data(PS2Data), .led(led_p), .seg(seg_p), .an(an_p),
                                         .dp(dp_p), .oled_data_paint(oled_paint), .pix_in(pix_index), .chosen(run[4])); 
                                         
    always @ (posedge CLOCK) begin
        if(sw[3:0] == 4'b0001)
            run <= 5'b00001;
        else if(sw[3:0] == 4'b0010)
            run <= 5'b00010;
        else if(sw[3:0] == 4'b0100)
            run <= 5'b00100;
        else if(sw[3:0] == 4'b1000)
            run <= 5'b01000;
        else if(sw[3:0] == 4'b0000)
            run <= 5'b10000; 
            
        if(run == 5'b00001) begin
            oled_data <= oled_A; 
            led <= run;
            led[15:4] <= 0;
        end else if(run == 5'b00010) begin
            oled_data <= oled_B;
            led <= run;
            led[15:4] <= 0;
        end else if(run == 5'b00100) begin
            oled_data <= oled_C;
            led <= run;
            led[15:4] <= 0;
        end else if(run == 5'b01000) begin
            oled_data <= oled_D;
            led <= run;
            led[15:4] <= 0;
        end else if(run == 5'b10000) begin
            oled_data <= oled_paint;
            led <= led_p;
            an <= an_p;
            seg <= seg_p; 
            dp <= dp_p;
        end
        
        if(run != 5'b10000) begin //when paint not in use, reset segment display
            an <= 4'b1111;
            seg <= 7'b1111_111;
            dp <= 1;
        end
        
    end
    
    
endmodule
