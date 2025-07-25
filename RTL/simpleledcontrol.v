module simpleledcontrol(
    input wire [9:0] sw,
    input wire btn,
    output reg [9:0] led
);

    always @(*) begin
		//On button click, invert switch LED outputs
        if (btn)
            led = ~sw;
        else
            led = sw;
    end
endmodule
