// LED blinker

module blinker(
    input clk,
    input rst_n,
    output led);

logic [15:0] counter;

always@(posedge clk or negedge rst_n)
begin
  if(!rst_n) counter <= 0;
  if(clk) counter <= counter + 1;
end

assign led = counter[15];

endmodule

