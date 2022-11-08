module nco(
    input clk,
    input rst,
    input [23:0] fcw,
    input next_sample,
    output [9:0] code
);
//    assign code = 0;
	reg[23:0] counter;
	//256 10-bit registers
	reg [9:0] sine_lut [0:255];
	initial begin
   		 $readmemb("sine.bin", sine_lut);
	end

	always @(posedge clk) begin
		if(rst) begin
			counter <= 0;
		end
		else if (next_sample  ) begin
			counter <= counter + fcw;
		end
	end
	assign code = sine_lut[counter[23:16]];




			
endmodule
