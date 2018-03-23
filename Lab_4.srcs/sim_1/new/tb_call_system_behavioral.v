`timescale 1ns / 1ps

module tb_call_system_behavioral;

    reg clk;
    reg call_button;
    reg cancel_button;
    
    wire light_state;
    
//    call_system_behavioral ul (
    call_system_dataflow ul (
        .clk(clk),
        .call_button(call_button),
        .cancel_button(cancel_button),
        .light_state(light_state)
    );
        
    initial
    begin
    
    clk = 0;
    call_button = 0;
    cancel_button = 0;
    
    #10;
    
    call_button = 1;
    cancel_button = 0;

    #10;
    
    call_button = 0;
    cancel_button = 1;

    #10;
    
    call_button = 1;
    cancel_button = 1;
    
    #10;
    
    call_button = 0;
    cancel_button = 0;
    
    #10;
    
    cancel_button = 1;
    
    #20;
    
    cancel_button = 1;
    
    #20;
    
    cancel_button = 0;

    #20;
    
    call_button = 0;
    cancel_button = 1;
    
    #20;
    
    call_button = 0;
    cancel_button = 0;
    
    end
    
    always
    #5 clk = ~clk;
    
endmodule
