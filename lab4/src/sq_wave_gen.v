module sq_wave_gen #(
    parameter STEP = 10
)(
    input clk,
    input rst,
    input next_sample,
    input [2:0] buttons,
    output [9:0] code,
    output [3:0] leds
);
//    assign code = 0;
//    assign leds = 0;
	integer counter = 0;
	reg[0:0] mode;
	reg[9:0] code_value;
	reg[11:0] dac_samples;
	reg[3:0] led_zero;
	always @(posedge clk) begin
			if(rst) begin
				mode <= 0; //linear 
				dac_samples <= 139;
				counter <= 0;
				code_value <= 462;
				led_zero <= 0; 
			end
			if(buttons[0]) begin
				if(!mode) begin
						if(dac_samples - STEP/2  <= 6) begin
						dac_samples <= 6;
						end
						else begin
						dac_samples <= dac_samples - STEP/2;
						end
				end
				else begin
						
						if(dac_samples >> 1 <= 6) begin
							dac_samples <= 6;
						end
						else begin 
						dac_samples <= dac_samples >> 1;
						end
				end
			end
			else if (buttons[1]) begin
				if(!mode) begin
						if(dac_samples + STEP/2 >= 3052) begin
							dac_samples <= 3052;
						end
						else begin 
						dac_samples <= dac_samples + STEP/2;
						end

				end
				else begin
						if(dac_samples << 1 >= 3052) begin
							dac_samples <= 3052;
						end
						else begin 
						dac_samples <= dac_samples << 1;
						end

					end
			end
			else if (buttons[2]) begin
				if(!mode) begin
					mode <= 1;
					led_zero <= 1; //exp
				end 
				else begin
					led_zero <= 0; //linear
					mode <= 0;
				end
			end

			if(next_sample == 1 ) begin
				counter <= counter + 1;
				if(counter == dac_samples) begin
					counter <= 0;
					if(dac_samples >= 6 && dac_samples <= 3052) begin
						if(code_value == 462) begin
							code_value <= 562;
						end
						else begin
							code_value <= 462;
						end 
					end
				end
			end
	end
	assign code = code_value;
	assign leds = led_zero;

				
endmodule
