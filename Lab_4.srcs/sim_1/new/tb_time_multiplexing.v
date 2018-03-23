`timescale 1ns / 1ps

module tb_time_multiplexing;
    
    reg clk;
    reg reset;
    reg [15:0] sw;
    
    wire [3:0] an;
    wire [6:0] sseg;
    
    time_multiplexing_main ul (
        .clk(clk),
        .reset(reset),
        .sw(sw),
        .an(an),
        .sseg(sseg)
    );
    
    initial
    begin
    
    clk = 0;
    reset = 0;
    sw = 0;
    
    #10;
    
    sw = 15'b0100001100100001;
    
    #20;
    
    
    
    
    end
    
    
    
    
    
    
    
    
    
    always
    #5 clk = ~clk;

endmodule
