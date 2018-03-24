`timescale 1ns / 1ps


module tb_rising_edge_detector;

    reg clk;
    reg signal;
    reg reset;
    
    wire outedge;
    
    rising_edge_detector ul(
    .clk(clk),
    .signal(signal),
    .reset(reset),
    .outedge(outedge)
    );
    
    //gonna test the states
    
initial 
    
    begin
    
    clk = 0;
    reset = 0;
    signal = 0;
    #40
    
    //setting it to the initial state 
    reset = 1;
    signal = 0;
    #40
    
    reset = 0;
    signal = 0;
    #40
    
    //from inital state 00 
    //should go to 01, outputs 1 
    signal = 1;
    #40
    
    //from 01 should go back to 00 
    signal = 0;
    #40    

    //from 00 should go to 01, outputs 1
    signal = 1;
    #40
    
    //from 01 should go to 10, outputs 0
    signal = 1;
    #40    
    
    //stays at 10 outputs 0 
    signal = 1;
    #40    
    
    //from 10 should go to 00, outputs 0        
    signal = 0; 
    #40
    
    //should not output anything
    reset = 1;
    
    signal = 1;
    #40
    
    signal = 0;
    #40
    
    signal = 1;
    #40
    
    signal = 1;
    #40
    
    signal = 1;
    #40
    
    signal = 0;   
              
    end
    
always
    #5 clk = ~clk;

endmodule
