`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.10.2023 13:28:07
// Design Name: 
// Module Name: piano
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


module piano(
    input clock,
    input [15:0]sw,
    input chosen,
    output gain,
    output shutdown,
    output sound,
    output reg [15:0]led = 0,
    output reg [6:0]seg,
    output reg [3:0]an,
    output reg dp
    );

    assign gain = 1;
    assign shutdown = 1;
    
    wire c3, cS3, d3, dS3, e3, f3, fS3, g3, gS3, a3, aS3, b3;
    
    //Octave 3 :SW13
    flexible_clock xC_3 (.clock(clock), .mvalue(382232), .myclk(c3));
    flexible_clock xcS_3 (.clock(clock), .mvalue(360775), .myclk(cS3));
    flexible_clock xd_3 (.clock(clock), .mvalue(340528), .myclk(d3));
    flexible_clock xdS_3 (.clock(clock), .mvalue(321418), .myclk(dS3));
    flexible_clock xe_3 (.clock(clock), .mvalue(303378), .myclk(e3));
    flexible_clock xf_3 (.clock(clock), .mvalue(286351), .myclk(f3));
    flexible_clock xfS_3 (.clock(clock), .mvalue(270269), .myclk(fS3));
    flexible_clock xg_3 (.clock(clock), .mvalue(255101), .myclk(g3));
    flexible_clock xgS_3 (.clock(clock), .mvalue(240788), .myclk(gS3));
    flexible_clock xa_3 (.clock(clock), .mvalue(227271), .myclk(a3)); 
    flexible_clock xaS_3 (.clock(clock), .mvalue(214517), .myclk(aS3));
    flexible_clock xb_3 (.clock(clock), .mvalue(202477), .myclk(b3));

    wire c, cS, d, dS, e, f, fS, g, gS, a, aS, b;

    //Octave 4 :SW14
    c_261hz fa0(.clock(clock), .c_261hz(c));
    csharp fa1 (.clock(clock), .csharp(cS));
    d_293hz fa2(.clock(clock), .d_293hz(d));
    dsharp fa3 (.clock(clock), .dsharp(dS));
    e_329hz fa4(.clock(clock), .e_329hz(e));
    f_349hz fa5(.clock(clock), .f_349hz(f));
    fsharp fa6 (.clock(clock), .fsharp(fS));
    g_392hz fa7(.clock(clock), .g_392hz(g));
    gsharp fa8 (.clock(clock), .gsharp(gS));
    a_440hz fa9(.clock(clock), .a_440hz(a));
    asharp fa10(.clock(clock), .asharp(aS));
    b_493hz fa11(.clock(clock), .b_493hz(b));

    wire c5, cS5, d5, dS5, e5, f5, fS5, g5, gS5, a5, aS5, b5;
    
    //Octave 5 :SW15
    flexible_clock xC_5 (.clock(clock), .mvalue(95555), .myclk(c5));
    flexible_clock xcS_5 (.clock(clock), .mvalue(90191), .myclk(cS5));
    flexible_clock xd_5 (.clock(clock), .mvalue(85130), .myclk(d5));
    flexible_clock xdS_5 (.clock(clock), .mvalue(80352), .myclk(dS5));
    flexible_clock xe_5 (.clock(clock), .mvalue(75841), .myclk(e5));
    flexible_clock xf_5 (.clock(clock), .mvalue(71585), .myclk(f5));
    flexible_clock xfS_5 (.clock(clock), .mvalue(67566), .myclk(fS5));
    flexible_clock xg_5 (.clock(clock), .mvalue(63775), .myclk(g5));
    flexible_clock xgS_5 (.clock(clock), .mvalue(60195), .myclk(gS5));
    flexible_clock xa_5 (.clock(clock), .mvalue(56817), .myclk(a5));
    flexible_clock xaS_5 (.clock(clock), .mvalue(53628), .myclk(aS5));
    flexible_clock xb_5 (.clock(clock), .mvalue(50618), .myclk(b5));  
    
    //State for which octave
    reg [31:0] octave = "0";
    
    reg [6:0] seg_octave;
    
    //Octave controller & LED
    always @ (posedge clock)
    begin

        if ( sw[13] == 1  || sw[14] == 1 || sw[15] == 1) begin
        
            if( sw[13] == 1 ) begin //Octave 3
            seg_octave <= 7'b0110000;
            led[3] <= 1;
            led[4] <= 0;
            led[5] <= 0;
            octave <= "3";
            end
            
            else if( sw[14] == 1) begin //Octave 4
            seg_octave <= 7'b0011001;
            led[3] <= 0;
            led[4] <= 1;
            led[5] <= 0;
            octave <= "4";
            end
            
            else if( sw[15] == 1) begin //Octave 5
            seg_octave <= 7'b0010010;
            led[3] <= 0;
            led[4] <= 0;
            led[5] <= 1;
            octave <= "5";
            end
            
        end //end if statement
        
        else begin
        led[15:0] <= 0;
        octave <= "0";
        end
    end //end always statement  
    
    //Note Display on 7-segment
    reg [6:0] note_display;
    
    always @ (posedge clock)
    begin
        if ( sw[11:0] >= 1'd1 ) begin
            if (sw[0] == 1)
            begin
            note_display <= 7'b0100111;
            end
            if (sw[0] == 0 && sw[1] == 1)
            begin
            note_display <= 7'b0100111;
            end
            if (sw[1:0] == 0 && sw[2] == 1)
            begin
            note_display <= 7'b0100001;
            end
            if (sw[2:0] == 0 && sw[3] == 1)
            begin
            note_display <= 7'b0100001;
            end
            if (sw[3:0] == 0 && sw[4] == 1)
            begin
            note_display <= 7'b0000110;
            end
            if (sw[4:0] == 0 && sw[5] == 1)
            begin
            note_display <= 7'b0001110;
            end
            if (sw[5:0] == 0 && sw[6] == 1)
            begin
            note_display <= 7'b0001110;
            end
            if (sw[6:0] == 0 && sw[7] == 1)
            begin
            note_display <= 7'b0010000;
            end
            if (sw[7:0] == 0 && sw[8] == 1)
            begin
            note_display <= 7'b0010000;
            end
            if (sw[8:0] == 0 && sw[9] == 1)
            begin
            note_display <= 7'b0001000;
            end
            if (sw[9:0] == 0 && sw[10] == 1)
            begin
            note_display <= 7'b0001000;
            end
            if (sw[10:0] == 0 && sw[11] == 1)
            begin
            note_display <= 7'b0000011;
            end
        end //end for if sw
    
        else begin 
        //reset if no notes played
            note_display <= 7'b1111111;
        end
    end
    
    
    wire slowclock;
    reg [1:0] seg_cycle = 0; //need to be reset

    flexible_clock slow (.clock(clock), .mvalue(49999), .myclk(slowclock));

    always @ (posedge slowclock) begin
    if (chosen == 1)
    begin
    //Allow anodes to turn on
        if ( sw[13] == 1  || sw[14] == 1 || sw[15] == 1) begin
            case(seg_cycle)
                2'b00: begin //AN[0]
                //rightmost anode
                   seg_cycle <= seg_cycle + 1;
                   an[3:0] <= 4'b1110; 
                   seg[6:0] <= seg_octave;
                   dp <= 1;
                end
                2'b01: begin //AN[1]
                //Note display
                    seg_cycle <= seg_cycle + 1;
                    an[3:0] <= 4'b1101;
                    seg[6:0] <= note_display;
                    dp <= 1;
                end
                2'b10: begin //AN[2]
                    seg_cycle <= seg_cycle + 2; //reset and skip AN[3]
                    if ((sw[1] || sw[3] || sw[6] ||sw[8] || sw[10]) && 
                    !sw[0] && !sw[2] && !sw[4] && !sw[5] && !sw[7] && !sw[9] && !sw[11]) 
                    begin
                    an[3:0] <= 4'b1011;
                    seg[6:0] <= 7'b0010010; //sharp (S)
                    dp <= 1;
                    end
                end
            endcase
        end
       
        else begin
        an[3:0] <= 4'b1111;
        seg[6:0] <= 7'b1111111;
        dp <= 1;
        end
    
    end //end for if chosen
    
    else begin
    an[3:0] <= 4'b1111;
    seg[6:0] <= 7'b1111111;
    dp <= 1;
    end
    
    end //always block
    
    //Tune controller
    assign sound = 
            //Octave 3
            ( octave == "3" && sw[0] ) ? c3 : 
            ( octave == "3" && sw[1] ) ? cS3 :
            ( octave == "3" && sw[2] ) ? d3 :
            ( octave == "3" && sw[3] ) ? dS3 :
            ( octave == "3" && sw[4] ) ? e3 :
            ( octave == "3" && sw[5] ) ? f3 :
            ( octave == "3" && sw[6] ) ? fS3 :
            ( octave == "3" && sw[7] ) ? g3 :
            ( octave == "3" && sw[8] ) ? gS3 :
            ( octave == "3" && sw[9] ) ? a3 :
            ( octave == "3" && sw[10] ) ? aS3 :
            ( octave == "3" && sw[11] ) ? b3 :
            //Octave 4
            ( octave == "4" && sw[0] ) ? c : 
            ( octave == "4" && sw[1] ) ? cS :
            ( octave == "4" && sw[2] ) ? d :
            ( octave == "4" && sw[3] ) ? dS :
            ( octave == "4" && sw[4] ) ? e :
            ( octave == "4" && sw[5] ) ? f :
            ( octave == "4" && sw[6] ) ? fS :
            ( octave == "4" && sw[7] ) ? g :
            ( octave == "4" && sw[8] ) ? gS :
            ( octave == "4" && sw[9] ) ? a :
            ( octave == "4" && sw[10] ) ? aS :
            ( octave == "4" && sw[11] ) ? b :
            //Octave 5
            ( octave == "5" && sw[0] ) ? c5 : 
            ( octave == "5" && sw[1] ) ? cS5 :
            ( octave == "5" && sw[2] ) ? d5 :
            ( octave == "5" && sw[3] ) ? dS5 :
            ( octave == "5" && sw[4] ) ? e5 :
            ( octave == "5" && sw[5] ) ? f5 :
            ( octave == "5" && sw[6] ) ? fS5 :
            ( octave == "5" && sw[7] ) ? g5 :
            ( octave == "5" && sw[8] ) ? gS5 :
            ( octave == "5" && sw[9] ) ? a5 :
            ( octave == "5" && sw[10] ) ? aS5 :
            ( octave == "5" && sw[11] ) ? b5 : 0;
    
endmodule
