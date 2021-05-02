// LED blinker

module blinker(
    input CLK,
    output LED,
    output USBPU);

    assign USBPU = 0;

    reg [25:0] counter;
    wire [31:0] pattern = 32'b101010001110111011100010101;

    always@(posedge CLK) begin
        if(CLK) counter <= counter + 1;
    end

    assign LED = pattern[counter[25:21]];

endmodule

