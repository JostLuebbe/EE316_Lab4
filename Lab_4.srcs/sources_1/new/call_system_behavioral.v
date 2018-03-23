`timescale 1ns / 1ps

module call_system_behavioral(
    input wire clk,
    input wire call_button,
    input wire cancel_button,
    output reg light_state
    );
    
    initial
    begin
    
    light_state = 0;
    
    end
    
    reg next_state;
    
    always @(*) begin
        case({call_button, cancel_button, light_state})
            3'b000: next_state = 1'b0;
            3'b001: next_state = 1'b1;
            3'b010: next_state = 1'b0;
            3'b011: next_state = 1'b0;
            3'b100: next_state = 1'b1;
            3'b101: next_state = 1'b1;
            3'b110: next_state = 1'b1;
            3'b111: next_state = 1'b1;
            default : next_state = 1'b0;
            endcase
    end
    
    always @( posedge clk) begin
        light_state <= next_state;
    end
    
endmodule
