`timescale 1ns / 1ps


module tb_time_multiplexing_main;

    reg clk;
    reg reset;
    reg [15:0] sw;
    
    wire [3:0] an;
    wire [6:0] sseg;


    time_multiplexing_main ul(
        .clk(clk),
        .reset(reset),
        .sw(sw[15:0]),
        .an(an[3:0]),
        .sseg(sseg[6:0])
    );

    initial
    begin
    
    clk = 0;
    reset = 1;
    sw = 0;
    #40
    
    reset = 0;
    
    //an0 = 5
    sw[0] = 1;
    sw[1] = 0;
    sw[2] = 1;
    sw[3] = 0;
    sw[4] = 0;
    sw[5] = 0;
    sw[6] = 0;
    sw[7] = 0;
    sw[8] = 0;
    sw[9] = 0;    
    sw[10] = 0;
    sw[11] = 0;
    sw[12] = 0;
    sw[13] = 0;
    sw[14] = 0;
    sw[15] = 0;
    #40

    //an1 = 3
    sw[0] = 0;
    sw[1] = 0;
    sw[2] = 0;
    sw[3] = 0;
    sw[4] = 1;
    sw[5] = 1;
    sw[6] = 0;
    sw[7] = 0;
    sw[8] = 0;
    sw[9] = 0;    
    sw[10] = 0;
    sw[11] = 0;
    sw[12] = 0;
    sw[13] = 0;
    sw[14] = 0;
    sw[15] = 0;
    #40

    //an2 = 9
    sw[0] = 0;
    sw[1] = 0;
    sw[2] = 0;
    sw[3] = 0;
    sw[4] = 0;
    sw[5] = 0;
    sw[6] = 0;
    sw[7] = 0;
    sw[8] = 1;
    sw[9] = 0;    
    sw[10] = 0;
    sw[11] = 1;
    sw[12] = 0;
    sw[13] = 0;
    sw[14] = 0;
    sw[15] = 0;
    #40

    //an3 = A
    sw[0] = 0;
    sw[1] = 0;
    sw[2] = 0;
    sw[3] = 0;
    sw[4] = 0;
    sw[5] = 0;
    sw[6] = 0;
    sw[7] = 0;
    sw[8] = 0;
    sw[9] = 0;    
    sw[10] = 0;
    sw[11] = 0;
    sw[12] = 0;
    sw[13] = 1;
    sw[14] = 0;
    sw[15] = 1;
    #40      
    
    //should always reset
    reset = 1;

    //an0 = 5
    sw[0] = 1;
    sw[1] = 0;
    sw[2] = 1;
    sw[3] = 0;
    sw[4] = 0;
    sw[5] = 0;
    sw[6] = 0;
    sw[7] = 0;
    sw[8] = 0;
    sw[9] = 0;    
    sw[10] = 0;
    sw[11] = 0;
    sw[12] = 0;
    sw[13] = 0;
    sw[14] = 0;
    sw[15] = 0;
    #40

    //an1 = 3
    sw[0] = 0;
    sw[1] = 0;
    sw[2] = 0;
    sw[3] = 0;
    sw[4] = 1;
    sw[5] = 1;
    sw[6] = 0;
    sw[7] = 0;
    sw[8] = 0;
    sw[9] = 0;    
    sw[10] = 0;
    sw[11] = 0;
    sw[12] = 0;
    sw[13] = 0;
    sw[14] = 0;
    sw[15] = 0;
    #40

    //an2 = 9
    sw[0] = 0;
    sw[1] = 0;
    sw[2] = 0;
    sw[3] = 0;
    sw[4] = 0;
    sw[5] = 0;
    sw[6] = 0;
    sw[7] = 0;
    sw[8] = 1;
    sw[9] = 0;    
    sw[10] = 0;
    sw[11] = 1;
    sw[12] = 0;
    sw[13] = 0;
    sw[14] = 0;
    sw[15] = 0;
    #40

    //an3 = A
    sw[0] = 0;
    sw[1] = 0;
    sw[2] = 0;
    sw[3] = 0;
    sw[4] = 0;
    sw[5] = 0;
    sw[6] = 0;
    sw[7] = 0;
    sw[8] = 0;
    sw[9] = 0;    
    sw[10] = 0;
    sw[11] = 0;
    sw[12] = 0;
    sw[13] = 1;
    sw[14] = 0;
    sw[15] = 1;

    end
        
    always
        #5 clk = ~clk;    
    
endmodule
