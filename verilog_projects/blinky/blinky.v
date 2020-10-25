module blinky
  (input i_Clk,
   output io_1,
   output io_7);
       
  // create a binary counter
  reg [31:0] cnt;
  always @(posedge i_Clk) cnt <= cnt+1;

  assign i_io_1 = i_Clk;    // output the clock signal
  assign io_7 = cnt[22];    // blink an LED at a few Hz
   
endmodule

