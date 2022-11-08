module counter (
  input clk,
  input ce,
  output [3:0] LEDS
);
    // Some initial code has been provided for you
    // You can change this code if needed
    reg [3:0] led_cnt_value = 4'd0;
    assign LEDS = led_cnt_value;

    // TODO: Instantiate a reg net to count the number of cycles
    // required to reach one second. Note that our clock period is 8ns.
    // Think about how many bits are needed for your reg.

	reg[26:0] required_cycles = 27'd0; //125000000 cycles = 1 sec
  always @(posedge clk) begin
        // TODO: update the reg if clock is enabled (ce is 1).
        // Once the requisite number of cycles is reached, increment the count.
  if(ce == 1) begin
	  if(required_cycles == 27'd125000) begin
		  led_cnt_value <= led_cnt_value + 1;
		  required_cycles <= 0; //reset to 0
		end
	  if(led_cnt_value == 4'd15) begin
		  required_cycles <= 0;
		end
	  else begin
		  required_cycles <= required_cycles + 1;
		end
	end
  end
endmodule

