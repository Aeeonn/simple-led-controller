`timescale 1ns / 1ps
module tb_simpleledcontrol();

    reg [9:0] sw;
    reg btn;
    wire [9:0] led;

    // Instantiate DUT
    simpleledcontrol dut (
        .sw(sw),
        .btn(btn),
        .led(led)
    );

    // Test stimulus
    initial begin
        sw = 10'b0000000000; btn = 0;
        #50 sw = 10'b1111111111; // all ON
        #50 btn = 1;             // invert ON
        #50 btn = 0;             // back to normal
        #50 sw = 10'b1010101010; // alternating pattern
        #50 btn = 1;             // invert pattern
        #50 $finish;
    end

    // Monitor for console debug
    initial begin
        $monitor("Time=%0t | SW=%b | BTN=%b | LED=%b", $time, sw, btn, led);
    end

endmodule
