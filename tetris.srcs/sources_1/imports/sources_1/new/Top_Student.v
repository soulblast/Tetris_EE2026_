`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
//
//  FILL IN THE FOLLOWING INFORMATION:
//  STUDENT A NAME: 
//  STUDENT B NAME:
//  STUDENT C NAME: 
//  STUDENT D NAME:  
//
//////////////////////////////////////////////////////////////////////////////////


module Top_Student (
    input clock,
    output sound,
    output gain,
    output shutdown
    );
    
    assign gain = 1;
    assign shutdown = 1;
    
    wire c, cS, d, dS, e, f, fS, g, gS, a, aS, b;

    //Octave 4
    c_261hz ca0(.clock(clock), .c_261hz(c));
    csharp ca1 (.clock(clock), .csharp(cS));
    d_293hz ca2(.clock(clock), .d_293hz(d));
    dsharp ca3 (.clock(clock), .dsharp(dS));
    e_329hz ca4(.clock(clock), .e_329hz(e));
    f_349hz ca5(.clock(clock), .f_349hz(f));
    fsharp ca6 (.clock(clock), .fsharp(fS));
    g_392hz ca7(.clock(clock), .g_392hz(g));
    gsharp ca8 (.clock(clock), .gsharp(gS));
    a_440hz ca9(.clock(clock), .a_440hz(a));
    asharp ca10(.clock(clock), .asharp(aS));
    b_493hz ca11(.clock(clock), .b_493hz(b));
    
    wire c3, cS3, d3, dS3, e3, f3, fS3, g3, gS3, a3, aS3, b3;
    
    //Octave 3
    flexible_clock C_3 (.clock(clock), .mvalue(382232), .myclk(c3));
    flexible_clock cS_3 (.clock(clock), .mvalue(360775), .myclk(cS3));
    flexible_clock d_3 (.clock(clock), .mvalue(340528), .myclk(d3));
    flexible_clock dS_3 (.clock(clock), .mvalue(321418), .myclk(dS3));
    flexible_clock e_3 (.clock(clock), .mvalue(303378), .myclk(e3));
    flexible_clock f_3 (.clock(clock), .mvalue(286351), .myclk(f3));
    flexible_clock fS_3 (.clock(clock), .mvalue(270269), .myclk(fS3));
    flexible_clock g_3 (.clock(clock), .mvalue(255101), .myclk(g3));
    flexible_clock gS_3 (.clock(clock), .mvalue(240788), .myclk(gS3));
    flexible_clock a_3 (.clock(clock), .mvalue(227271), .myclk(a3)); //using a3
    flexible_clock aS_3 (.clock(clock), .mvalue(214517), .myclk(aS3));
    flexible_clock b_3 (.clock(clock), .mvalue(202477), .myclk(b3)); //using b3

    //Song Note Delays
    reg [26:0] D_250ms = 25_000_000;  //0.25s
    reg [26:0] D_500ms = 50_000_000;  //0.5s
    reg [26:0] D_850ms = 850_000_000; //0.85s
    reg [26:0] CLK_FREQ = 1_000_000_000; //1 second
    //Note Break Delay
    reg [26:0] D_break = 3_500_000;  //0.05s

    //Registers for delays: count == flagbreak
    reg [31:0] count = 0;
    reg counter_clear = 1'b0;
    reg flag_250ms = 1'b0;
    reg flag_500ms = 1'b0;
    reg flag_850ms = 1'b0;
    reg flag_1000ms = 1'b0;
    reg flag_break = 1'b0;

    //State machine
    reg [31:0] state = "0";


    always @ (posedge clock)
    begin
        if (counter_clear)
        begin
        count <= 31'b0;
        counter_clear <= 1'b0; //counter set to 0 which triggers !counter_clear
        flag_250ms = 1'b0;
        flag_500ms = 1'b0;
        flag_850ms = 1'b0;
        flag_1000ms = 1'b0;
        flag_break = 1'b0;
        end // end if (counter_clear)
        
        if(!counter_clear) //check for count == delay, flag = 1
        begin
        count <= count + 1;
        if(count == D_break) begin    //count increasing every posedge when a state is reached
            flag_break <= 1'b1;       //following which when the count == D_ [the delay] --> flag is triggered and state is switched
        end
        if(count == D_250ms) begin
            flag_250ms <= 1'b1;
        end        
        if(count == D_500ms) begin
            flag_500ms <= 1'b1;
        end
        if(count == D_850ms) begin
            flag_850ms <= 1'b1;
        end
        if(count == CLK_FREQ) begin
            flag_1000ms <= 1'b1;
        end
        
        end // end if (!counter_clear)
   
   case(state)
   
    "0" :begin
       state <= "1";
       counter_clear <= 1'b1;
   end 
   
   "1" :begin
       if (flag_500ms) begin
           state <= "2";
           counter_clear <= 1'b1;
       end
   end    
   
   "2" :begin
       if (flag_break) begin
           state <= "3";
           counter_clear <= 1'b1;
       end  
   end     
   
    "3" :begin
       if (flag_250ms) begin
           state <= "4";
           counter_clear <= 1'b1;
       end
   end
  
   "4" :begin
       if (flag_break) begin
           state <= "5";
           counter_clear <= 1'b1;
       end 
   end   
   
   "5" :begin 
       if (flag_250ms) begin
           state <= "6";
           counter_clear <= 1'b1;
       end 
   end  
   
   "6" :begin
       if (flag_break) begin
           state <= "7";
           counter_clear <= 1'b1;
       end 
   end
   
   "7" :begin
       if (flag_500ms) begin
           state <= "8";
           counter_clear <= 1'b1;
       end
   end   
   
   "8" :begin
       if (flag_break) begin
           state <= "9";
           counter_clear <= 1'b1;
       end
   end    
   
    "9" :begin
       if (flag_250ms) begin
           state <= "10";
           counter_clear <= 1'b1;
       end
   end
   
   "10" :begin
       if (flag_break) begin
           state <= "11";
           counter_clear <= 1'b1;
       end
   end   
   
   "11" :begin
       if (flag_250ms) begin
           state <= "12";
           counter_clear <= 1'b1;
       end
   end   
   
    "12" :begin
       if (flag_break) begin
           state <= "13";
           counter_clear <= 1'b1;
       end
   end
   
   //Repeat
   
   "13" :begin
       if (flag_500ms) begin
           state <= "14";
           counter_clear <= 1'b1;
       end
   end    
   
   "14" :begin
       if (flag_break) begin
           state <= "15";
           counter_clear <= 1'b1;
       end  
   end     
   
    "15" :begin
       if (flag_250ms) begin
           state <= "16";
           counter_clear <= 1'b1;
       end
   end
  
   "16" :begin
       if (flag_break) begin
           state <= "17";
           counter_clear <= 1'b1;
       end 
   end   
   
   "17" :begin 
       if (flag_250ms) begin
           state <= "18";
           counter_clear <= 1'b1;
       end 
   end  
   
   "18" :begin
       if (flag_break) begin
           state <= "19";
           counter_clear <= 1'b1;
       end 
   end
   
   "19" :begin
        state <= "20";
    end
   
   "20" :begin
       if (flag_500ms) begin
           state <= "21";
           counter_clear <= 1'b1;
       end
   end   
   
   "21" :begin
       if (flag_break) begin
           state <= "22";
           counter_clear <= 1'b1;
       end
   end    
   
    "22" :begin
       if (flag_250ms) begin
           state <= "23";
           counter_clear <= 1'b1;
       end
   end
   
   "23" :begin
       if (flag_break) begin
           state <= "24";
           counter_clear <= 1'b1;
       end
   end   
   
   "24" :begin
       if (flag_250ms) begin
           state <= "25";
           counter_clear <= 1'b1;
       end
   end   
   
    "25" :begin
       if (flag_break) begin
           state <= "26";
           counter_clear <= 1'b1;
       end
   end
   
   //Continue
   
    "26" :begin
      if (flag_1000ms) begin
          state <= "27";
          counter_clear <= 1'b1;
      end 
  end 
  
  "27" :begin
      if (flag_break) begin
          state <= "28";
          counter_clear <= 1'b1;
      end 
  end    
  
  "28" :begin
      if (flag_250ms) begin
          state <= "29";
          counter_clear <= 1'b1;
      end 
  end 
  
  "29" :begin
      if (flag_break) begin
          state <= "30";
          counter_clear <= 1'b1;
      end 
  end 
  
  "30" :begin
      if (flag_500ms) begin
          state <= "31";
          counter_clear <= 1'b1;
      end 
  end     
  
  "31" :begin
      if (flag_break) begin
          state <= "32";
          counter_clear <= 1'b1;
      end 
  end      
  
   "32" :begin
      if (flag_500ms) begin
          state <= "33";
          counter_clear <= 1'b1;
      end 
  end 
  
  "33" :begin
      if (flag_break) begin
          state <= "34";
          counter_clear <= 1'b1;
      end 
  end     
   
   //Continue 
   
   "34" :begin
       if (flag_500ms) begin
           state <= "35";
           counter_clear <= 1'b1;
       end
   end  
   
   "35" :begin
       if (flag_break) begin
           state <= "36";
           counter_clear <= 1'b1;
       end
   end    
   
   "36" :begin
       if (flag_500ms) begin
           state <= "37";
           counter_clear <= 1'b1;
       end
   end
  
   "37" :begin
       if (flag_break) begin
           state <= "38";
           counter_clear <= 1'b1;
       end  
   end   
   
   "38" :begin
       if (flag_250ms) begin
           state <= "39";
           counter_clear <= 1'b1;
       end
   end   
   
    "39" :begin
       if (flag_break) begin
           state <= "40";
           counter_clear <= 1'b1;
       end
   end
   
   "40" :begin
       if (flag_500ms) begin
           state <= "41";
           counter_clear <= 1'b1;
       end
   end  

   "41" :begin
       if (flag_break) begin
           state <= "42";
           counter_clear <= 1'b1;
       end
   end
   
   "42" :begin
      if (flag_250ms) begin
          state <= "43";
          counter_clear <= 1'b1;
      end
  end
  
  "43" :begin
      if (flag_break) begin
         state <= "44";
          counter_clear <= 1'b1;
      end
  end   
  
  "44" :begin
      if (flag_250ms) begin
          state <= "45";
          counter_clear <= 1'b1;
      end
  end   
  
  "45" :begin
      if (flag_break) begin
          state <= "46";
          counter_clear <= 1'b1;
      end
  end
  
  //Continue
  
   "46" :begin
      if (flag_850ms) begin
          state <= "47";
          counter_clear <= 1'b1;
      end
  end  

  "47" :begin
      if (flag_break) begin
          state <= "48";
          counter_clear <= 1'b1;
      end
  end
  
  "48" :begin
     if (flag_250ms) begin
         state <= "49";
         counter_clear <= 1'b1;
     end
  end
 
  "49" :begin
     if (flag_break) begin
        state <= "50";
         counter_clear <= 1'b1;
     end
  end   
 
  "50" :begin
     if (flag_500ms) begin
         state <= "51";
         counter_clear <= 1'b1;
     end
  end   
 
  "51" :begin
     if (flag_break) begin
         state <= "52";
         counter_clear <= 1'b1;
     end
  end

  "52" :begin
     if (flag_250ms) begin
         state <= "53";
         counter_clear <= 1'b1;
     end
  end   
 
  "53" :begin
     if (flag_break) begin
         state <= "54";
         counter_clear <= 1'b1;
     end
  end
 
  "54" :begin
     if (flag_250ms) begin
         state <= "55";
         counter_clear <= 1'b1;
     end
  end   
 
 "55" :begin
     if (flag_break) begin
         state <= "56";
         counter_clear <= 1'b1;
     end
 end 
 
    //Repeat

   "56" :begin
       if (flag_850ms) begin
           state <= "57";
           counter_clear <= 1'b1;
       end
   end  
 
   "57" :begin
       if (flag_break) begin
           state <= "58";
           counter_clear <= 1'b1;
       end
   end
   
   "58" :begin
      if (flag_250ms) begin
          state <= "59";
          counter_clear <= 1'b1;
      end
   end
  
   "59" :begin
      if (flag_break) begin
         state <= "60";
          counter_clear <= 1'b1;
      end
   end   
  
   "60" :begin
      if (flag_500ms) begin
          state <= "61";
          counter_clear <= 1'b1;
      end
   end   
  
   "61" :begin
      if (flag_break) begin
          state <= "62";
          counter_clear <= 1'b1;
      end
   end
 
   "62" :begin
      if (flag_250ms) begin
          state <= "63";
          counter_clear <= 1'b1;
      end
   end   
  
   "63" :begin
      if (flag_break) begin
          state <= "64";
          counter_clear <= 1'b1;
      end
   end
  
   "64" :begin
      if (flag_250ms) begin
          state <= "65";
          counter_clear <= 1'b1;
      end
   end   
  
  "65" :begin
      if (flag_break) begin
          state <= "66";
          counter_clear <= 1'b1;
      end
  end 
  
  //Continue
  
    "66" :begin
        if (flag_500ms) begin
            state <= "67";
            counter_clear <= 1'b1;
        end 
    end 

    "67" :begin
        if (flag_break) begin
            state <= "68";
            counter_clear <= 1'b1;
        end 
    end    
    
    "68" :begin
        if (flag_250ms) begin
            state <= "69";
            counter_clear <= 1'b1;
        end 
    end 
    
    "69" :begin
        if (flag_break) begin
            state <= "70";
            counter_clear <= 1'b1;
        end 
    end 
    
    "70" :begin
        if (flag_250ms) begin
            state <= "71";
            counter_clear <= 1'b1;
        end 
    end     
    
    "71" :begin
        if (flag_break) begin
            state <= "72";
            counter_clear <= 1'b1;
        end 
    end      
    
     "72" :begin
        if (flag_500ms) begin
            state <= "73";
            counter_clear <= 1'b1;
        end 
    end 
    
    "73" :begin
        if (flag_break) begin
            state <= "74";
            counter_clear <= 1'b1;
        end 
    end     
     
     
     "74" :begin
         if (flag_500ms) begin
             state <= "75";
             counter_clear <= 1'b1;
         end
     end  
     
     "75" :begin
         if (flag_break) begin
             state <= "76";
             counter_clear <= 1'b1;
         end
     end    

   //BREAK

     "76" :begin
         if (flag_500ms) begin
             state <= "77";
             counter_clear <= 1'b1;
         end
     end

     "77" :begin
         if (flag_break) begin
             state <= "78";
             counter_clear <= 1'b1;
         end
     end

     "78" :begin
         if (flag_500ms) begin
             state <= "79";
             counter_clear <= 1'b1;
         end
     end
     
     "79" :begin
         if (flag_break) begin
             state <= "80";
             counter_clear <= 1'b1;
         end
     end

     "80" :begin
         if (flag_500ms) begin
             state <= "81";
             counter_clear <= 1'b1;
         end
     end

     "81" :begin
         if (flag_break) begin
             state <= "82";
             counter_clear <= 1'b1;
         end
     end

     "82" :begin
         if (flag_500ms) begin
             state <= "1";
             counter_clear <= 1'b1;
         end
     end
   endcase
   end

     assign sound = (state == "13" || state == "15" || state == "36" || state == "38" || state == "40" || state == "78" || state == "80" ) ? a3 : 
                  (state == "3" || state == "11" || state == "26" || state == "42" || state == "66" || state == "68" ) ? b3 :
                  (state == "5" || state == "9" || state == "17" || state == "24" || state == "28" || state == "34" || state == "44" || state == "58" || state == "64" || state == "70" || state == "76" ) ? c :
                  (state == "7" || state == "22" || state == "30" || state == "46" || state == "62" || state == "72" ) ? d :
                  (state == "1" || state == "20" || state == "32" || state == "56" || state == "60" || state == "74") ? e :
                  (state == "48" || state == "54" ) ? f:
                  (state == "52") ? g:
                  ( state == "50") ? a : 0;


endmodule
