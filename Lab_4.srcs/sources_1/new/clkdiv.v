`timescale 1ns / 1ps

module clkdiv(
    input clk,
    input reset,
    output clk_out
);
    
    reg [1:0] COUNT = 0; //needs to be changed for simulation vs board
    
    assign clk_out = COUNT[0];
    
    always @(posedge clk)
        begin
            if (reset)
                COUNT = 0;
            else
                COUNT = COUNT + 1;
        end
endmodule
