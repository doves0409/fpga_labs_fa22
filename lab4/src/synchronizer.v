module synchronizer #(parameter WIDTH = 1) (
    input [WIDTH-1:0] async_signal,
    input clk,
    output [WIDTH-1:0] sync_signal
);
    // TODO: Create your 2 flip-flop synchronizer here
    // This module takes in a vector of WIDTH-bit asynchronous
    // (from different clock domain or not clocked, such as button press) signals
    // and should output a vector of WIDTH-bit synchronous signals
    // that are synchronized to the input clk

    // Remove this line once you create your synchronizer
    reg [WIDTH-1:0] mid_signal = 1'b0;
    reg [WIDTH-1:0] out_signal = 1'b0;
    always@(posedge clk) begin
	mid_signal <= async_signal;
    out_signal <= mid_signal;
	//sync_signal <= mid_signal;
	end
    ///output is of wire type. Must be continuous assignment (can't do inside always block)
   assign sync_signal = out_signal;
endmodule
