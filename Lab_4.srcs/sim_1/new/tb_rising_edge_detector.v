`timescale 1ns / 1ps


module tb_rising_edge_detector;

    reg clk;
    reg signal;
    reg reset;
    
    wire outedge;
    
    rising_edge_detector ul (
        .clk(clk),
        .signal(signal),
        .reset(reset),
        .outedge(outedge)
    );
    
    initial
    begin
    
    clk = 0;
    signal = 0;
    reset = 0;
    
    #10;
    
    signal = 1;
    
    #10;
    
    signal = 0;
    
    #10;
    
    signal = 1;
    
    #10;
    
    signal = 0;
    
    #10;
    
    signal = 1;
    
    #10;
    
    signal = 0;
    
    #10;
    
    signal = 0;
    
    end
    
    always
    #5 clk = ~clk;

endmodule
