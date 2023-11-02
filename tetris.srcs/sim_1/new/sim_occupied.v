`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2023 08:00:03 PM
// Design Name: 
// Module Name: sim_occupied
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


module sim_occupied( );
    reg [15:0] occupied [23:0];
    reg [8:0] i = 0, j = 0;
    initial begin  
            for(i=0; i<=23; i=i+1) 
                occupied[i] <= 16'b00000_00000_00000_0;
                
            for(i=0; i<=23; i=i+1) begin // i is row, j is col
                for(j=0; j<=15; j=j+1) begin 
                 //   $display (i*100 + j); 
                    if(i<1 || i>22)
                        occupied[i][j] <= 1'b1;
                    else if(j<3 || j>12)
                        occupied[i][j] <= 1'b1;
                    else //tetris grid: row: 1 to 22, col: 3 to 12
                        occupied[i][j] <= 1'b0;
                    $display (occupied[i][j]);
                end
            end  
        end
endmodule
