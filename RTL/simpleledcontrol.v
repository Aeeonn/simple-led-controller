module simpleledcontrol(
    input wire [9:0] sw,
    input wire btn,
    output reg [9:0] led
);
    always @(*) begin
        if (btn)
            led = ~sw;      // Invert switches when button is pressed
        else
            led = sw;       // Otherwise, LEDs follow switches
    end
endmodule
