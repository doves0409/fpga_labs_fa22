module fsm #(
    parameter CYCLES_PER_SECOND = 125_000_000,
    parameter WIDTH = $clog2(CYCLES_PER_SECOND)
)(
    input clk,
    input rst,
    input [2:0] buttons,
    output reg[3:0] leds,
    output reg[23:0] fcw,
    output reg[1:0] leds_state
);
   // assign leds = 0;
   // assign fcw = 0;
   // assign leds_state = 0;

    reg [1:0] addr;
    reg wr_en, rd_en;
    reg [23:0] d_in;
	wire [23:0] d_out;

    fcw_ram notes (
        .clk(clk),
        .rst(rst),
        .rd_en(rd_en),
        .wr_en(wr_en),
        .addr(addr),
        .d_in(d_in),
        .d_out(d_out)
    );

	parameter REGULAR_PLAY = 2'd0,
		  REVERSE_PLAY = 2'd1,
		  PAUSED = 2'd2,
		  EDIT= 2'd3;
	reg[1:0] CurrentState;
	reg[1:0] NextState ;
	reg[1:0] next_addr;


	reg[WIDTH-1:0] cycles = 0;
	
	always @(posedge clk) begin
		if(rst) begin
			CurrentState <= REGULAR_PLAY;
			addr <= 0;
			cycles <= 0;
		end
		else begin
			CurrentState <= NextState;
			addr <= next_addr;
			cycles <= cycles + 1;
			if(cycles == CYCLES_PER_SECOND-1) begin
				cycles <= 0;
			end
		end
	end
	always @(*) begin
		NextState = CurrentState;
		next_addr = addr;
		d_in = d_out;
		case (CurrentState)
			REGULAR_PLAY: begin
				rd_en = 1;
				wr_en = 0;
				leds = 4'd1;
				fcw = d_out;
				if(buttons[0]) begin
					NextState = PAUSED;
				end
				if (buttons[1]) begin
					NextState = REVERSE_PLAY;
				end
				if(cycles == CYCLES_PER_SECOND-1) begin
					next_addr = addr + 2'd1;
					//rd_en = 1;
					//fcw = d_out;
				end
			end
			REVERSE_PLAY: begin
				rd_en = 1;
				wr_en = 0;
				leds = 4'd2;
				fcw = d_out;
				if(buttons[0]) begin
					NextState = PAUSED;
				end
				if(buttons[1]) begin
					NextState = REGULAR_PLAY;
					next_addr = 0;
				end
				if(cycles == CYCLES_PER_SECOND-1) begin
					next_addr = addr - 2'd1;
					rd_en = 1;
					fcw = d_out;
				end
			end
			PAUSED: begin
				rd_en = 0;
				wr_en = 0;
				fcw = 0;
				leds = 4'd3;
				if(buttons[0]) begin
					NextState = REGULAR_PLAY;
					next_addr = 0;
				end
				if(buttons[2]) begin
					NextState = EDIT;
				end 
				

			end
			EDIT: begin
				rd_en = 1;
				wr_en = 1;
				leds = 4'd4;
				fcw = d_out;
				//d_in = d_out;
				if(buttons[0]) begin
					d_in = d_out - 1000;
					//rd_en = 1;
					//wr_en = 0;
					//fcw = d_out;
					//NextState = EDIT;
				end
				if(buttons[1]) begin
					d_in = d_out + 1000;
					//rd_en = 1;
					//wr_en = 0;
					//fcw = d_out;
				end 
				if(buttons[2]) begin
					NextState = PAUSED;
				end
			end
		endcase

		leds_state = CurrentState;
	end



endmodule
