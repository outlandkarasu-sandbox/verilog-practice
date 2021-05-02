`timescale 1ns / 1ps

module blinker_test;

parameter STEP = 10;
parameter DURATION = 19;

reg TEST_CLK;
wire TEST_USBPU;
wire TEST_LED;

initial
  begin
    $dumpfile("blinker.vcd");
    $dumpvars(0, blinker_1);
    $monitor("LED: %d", TEST_LED);
  end

initial
  begin
    TEST_CLK = 1'b1;
    forever
      begin
        #(STEP / 2) TEST_CLK = ~TEST_CLK;
      end
  end

initial
  begin
    repeat (DURATION) @(posedge TEST_CLK);
    $finish;
  end

blinker blinker_1(
  .CLK(TEST_CLK),
  .LED(TEST_LED),
  .USBPU(TEST_USBPU)
);

endmodule

