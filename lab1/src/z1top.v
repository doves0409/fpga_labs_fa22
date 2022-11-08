`timescale 1ns / 1ps

module z1top(
  input CLK_125MHZ_FPGA,
  input [3:0] BUTTONS,
  input [1:0] SWITCHES,
  output [5:0] LEDS
);
   wire a, b, c;
   and(LEDS[0], BUTTONS[0], SWITCHES[0]);
   //my 4 input logic function
   and(a, BUTTONS[0], BUTTONS[1]);
   and(b, a, BUTTONS[2]);
   and(c, b, BUTTONS[3]);
   assign LEDS[1] = c;
   assign LEDS[5:2] = 0;
 // assign LEDS[5:1] = 0;
endmodule
