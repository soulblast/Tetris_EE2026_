`timescale 1ns / 1ps

module grp_paint(
    input clock,
    inout PS2Clk,
    inout PS2Data,
    output reg [15:0]led,
    output reg [6:0]seg = 0,
    output reg [3:0]an= 1,
    output reg dp = 0,
//    output [0:7] JC
    output [15:0] oled_data_paint,
    input [12:0] pix_in,
    input chosen
    );
    
    //CLOCK--------------
    wire clk_5;
    flexi_clock_D clk_5Hz(.CLOCK(clock), .Tns(200_000_000), .NEW_CLK(clk_5));
     
    //Initialisation of mouse
    wire [11:0]xpos_m;
    wire [11:0]ypos_m;
    wire [3:0] zpos_m;
    wire left, mid, right, new_eve;
     
    wire reset_paint;
    assign reset_paint = (chosen == 0 || right);
    /**
    reg reset_paint = 0;
    **/
    
    MouseCtl mouse(.clk(clock),
    .rst(0), .value(0), .setx(0), .sety(0), .setmax_x(0), .setmax_y(0), 
    .xpos(xpos_m), .ypos(ypos_m),
    .zpos(zpos_m), .left(left), .middle(mid), .right(right), 
    .new_event(new_eve), .ps2_clk(PS2Clk), .ps2_data(PS2Data) );
      //LEDs 13 to 15 will blink when clicked.
//        assign led[15] = left;
//        assign led[14] = mid;
//        assign led[13] = right;
    
    wire [6:0]paint_seg; 
    wire [15:0] led_p;
    
    paint paint_mod(.clk_100M(clock), .mouse_l(left), .reset(reset_paint), 
    .enable(1), .mouse_x(xpos_m), .mouse_y(ypos_m), .pixel_index(pix_in), .led(led_p),
    .seg(paint_seg), .colour_chooser(oled_data_paint));
     
    reg [1:0]seg_cycle = 0; //needs to be reseted
    wire thousand_clk;
    flexi_clock one_th(.clock(clock), .m(49999), .output_clk(thousand_clk));
    reg cnt = 0;
    always @ (posedge clk_5) begin
        if(cnt)
            led[15:0] <= led_p[15:0];
        else
            led[15:0] <= 0;
        //.if(!reset_paint) led[14] <= 1; 
        cnt <= cnt + 1;
    end
    always @ (posedge thousand_clk) begin
        /**
        if(!chosen || right) begin
            reset_paint <= 1;
        end else begin
            reset_paint <= 0;
        end
        **/
        case(seg_cycle)
            2'b00: begin //rightmost anode
               seg_cycle <= seg_cycle + 1;
               an <= 4'b1110; 
               seg <= paint_seg;
               dp <= 1;
            end
            2'b01: begin //3rd anode
                seg_cycle <= seg_cycle + 1;
                an <= 4'b1101;
                seg <= 7'b1000111;
                dp <= 0;
            end
            2'b10: begin //2nd anode
                seg_cycle <= seg_cycle + 1;
                an <= 4'b1011;
                seg <= 7'b0001000;
                dp <= 1;
            end
            2'b11: begin //1st anode
                seg_cycle <= seg_cycle + 1;
                an <= 4'b0111;
                seg <= 7'b1000001;
                dp <= 1;
                
            end
        endcase
    end
    
    
    
    
    
    
    
    
endmodule