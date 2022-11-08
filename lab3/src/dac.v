module dac #(
    parameter CYCLES_PER_WINDOW = 1024,
    parameter CODE_WIDTH = $clog2(CYCLES_PER_WINDOW)
)(
    input clk,
    input [CODE_WIDTH-1:0] code,
    output next_sample,
    output reg pwm
);
	reg next_sample = 0;
    reg [CODE_WIDTH-1:0] counter = 4'd0; //how many cycles have elapsed


 always @(posedge clk) begin
	counter <= counter + 4'd1;
	next_sample <= 4'd0;

    if(counter == CYCLES_PER_WINDOW - 2) begin
		next_sample <= 1;
	end
 end
 always @(*) begin
    if(code == 0) begin
            pwm = 0;
    end
    else begin
        if (counter < code || counter == code) begin
            pwm = 1;
        end

        else  begin
            pwm = 0;
        end
   end
  end

 // assign pwm = pwm_output;
 // assign next_sample = next_sample_output;
//end
endmodule
