`timescale 1ns / 1ps
module tb_simpleledcontrol();

    reg [9:0] sw;
    reg btn;
    wire [9:0] led;

    simpleledcontrol dut (
        .sw(sw),
        .btn(btn),
        .led(led)
    );

    initial begin
        sw = 10'b0000000000; btn = 0;
        #50 sw = 10'b1111111111;
        #50 btn = 1;
        #50 btn = 0;
        #50 sw = 10'b1010101010;
        #50 btn = 1;
        #50 $finish;
    end

    initial begin
        $monitor("Time=%0t | SW=%b | BTN=%b | LED=%b", $time, sw, btn, led);
    end

endmodule
