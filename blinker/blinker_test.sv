`timescale 1ns / 1ps

module blinker_test;

parameter STEP = 10;
parameter DURATION = 19;

logic test_clk;
logic test_rst_n;
wire test_led;

initial
  begin
    $dumpfile("blinker.vcd");
    $dumpvars(0, blinker_1);
    $monitor("LED: %d", test_led);
  end

initial
  begin
    test_clk = 1'b1;
    forever
      begin
        #(STEP / 2) test_clk = ~test_clk;
      end
  end

initial
  begin
    repeat (DURATION) @(posedge test_clk);
    $finish;
  end

blinker blinker_1(
  .clk(test_clk),
  .rst_n(test_rst_n),
  .led(test_led)
);

endmodule

