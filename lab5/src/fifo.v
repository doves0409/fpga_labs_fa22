module fifo #(
    parameter WIDTH = 8,
    parameter DEPTH = 32,
    parameter POINTER_WIDTH = $clog2(DEPTH)
) (
    input clk, rst,

    // Write side
    input wr_en,
    input [WIDTH-1:0] din,
    output full,

    // Read side
    input rd_en,
    output reg [WIDTH-1:0] dout,
    output empty


);
    //assign full = 1'b1;
    //assign empty = 1'b0;
    //assign dout = 0;
	
	//internal signals 
	reg [WIDTH-1:0] entries; //number of entries in FIFO
	reg [POINTER_WIDTH-1:0] wr_ptr;
	reg [POINTER_WIDTH-1:0] rd_ptr;
	reg [WIDTH-1:0] mem [0:DEPTH-1]; //memory has DEPTH elements, each with WIDTH bits
	always @(posedge clk) begin
		if(rst) begin //FIFO is empty, rd/wr pts are  equal
			wr_ptr <= 0;
			rd_ptr <= 0;
			dout <= 0;
			entries <= 0;
		end else begin
			if (rd_en && wr_en && !empty && !full) begin //net change in entries = 0
				mem[wr_ptr] <= din;
				dout<= mem[rd_ptr];
				wr_ptr <= wr_ptr + 1;
				rd_ptr <= rd_ptr + 1;
			end else if(wr_en && !full) begin
				mem[wr_ptr] <= din;
				wr_ptr <= wr_ptr + 1;
				entries <= entries + 1;
			end else if(rd_en && !empty) begin
				dout <= mem[rd_ptr];
				rd_ptr <= rd_ptr + 1;
				entries <= entries - 1; 
			end 
		end
	end
	assign full = (entries == DEPTH)? 1 : 0;
	assign empty = (entries == 0) ? 1 : 0;
	


endmodule
