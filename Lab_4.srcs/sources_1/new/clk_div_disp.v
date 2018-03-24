`timescale 1ns / 1ps

module clk_div_disp(
    input clk,
    input reset,
    output slow_clk
);
    
    reg [1:0] COUNT; //needs to be changed for simulation vs board
    
    assign slow_clk = COUNT[1];
   
    always @(posedge clk)
        begin
            if (reset)
                COUNT = 0;
            else
                COUNT = COUNT + 1;
        end
endmodule
