module mem_controller #(
  parameter FIFO_WIDTH = 8
) (
  input clk,
  input rst,
  input rx_fifo_empty,
  input tx_fifo_full,
  input [FIFO_WIDTH-1:0] din,

  output rx_fifo_rd_en,
  output tx_fifo_wr_en,
  output reg [FIFO_WIDTH-1:0] dout,
  output [5:0] state_leds
);

  localparam MEM_WIDTH = 8;   /* Width of each mem entry (word) */
  localparam MEM_DEPTH = 256; /* Number of entries */
  localparam NUM_BYTES_PER_WORD = MEM_WIDTH/8;
  localparam MEM_ADDR_WIDTH = $clog2(MEM_DEPTH); 

  reg [NUM_BYTES_PER_WORD-1:0] mem_we = 0;
  reg [MEM_ADDR_WIDTH-1:0] mem_addr;
  reg [MEM_WIDTH-1:0] mem_din;
  wire [MEM_WIDTH-1:0] mem_dout;

  memory #(
    .MEM_WIDTH(MEM_WIDTH),
    .DEPTH(MEM_DEPTH)
  ) mem(
    .clk(clk),
    .en(1'b1),
    .we(mem_we),
    .addr(mem_addr),
    .din(mem_din),
    .dout(mem_dout)
  );

  localparam 
    IDLE = 3'd0,
    READ_CMD = 3'd1,
    READ_ADDR = 3'd2,
    READ_DATA = 3'd3,
    READ_MEM_VAL = 3'd4,
    ECHO_VAL = 3'd5,
    WRITE_MEM_VAL = 3'd6;

  reg [2:0] curr_state;
  reg [2:0] next_state;

  always @(posedge clk) begin

    /* state reg update */
    if(rst) curr_state <= IDLE;
    else curr_state <= next_state;

  end

  reg [2:0] pkt_rd_cnt;
  reg [MEM_WIDTH-1:0] cmd;
  reg [MEM_WIDTH-1:0] addr;
  reg [MEM_WIDTH-1:0] data;
  reg handshake;


  always @(*) begin
    
    /* initial values to avoid latch synthesis */
    next_state = curr_state; //default next state

    case (curr_state)

      /* next state logic */
      IDLE: begin 
        if(!rx_fifo_empty) next_state = READ_CMD;

      end

      READ_CMD: begin
        if(!rx_fifo_empty) next_state = READ_ADDR;

      end

      READ_ADDR: begin
        // in seq block: add addr = din
        //read command
        if(cmd == 8'd48) next_state = READ_MEM_VAL;
        //write command
        if(cmd == 8'd49 && !rx_fifo_empty) next_state = READ_DATA;

      end

      READ_DATA: begin
        next_state = WRITE_MEM_VAL;
      end

      READ_MEM_VAL: begin
		next_state = ECHO_VAL;
      end

      ECHO_VAL: begin
		//if(!rx_fifo_empty) next_state = READ_CMD;
		//else 
    next_state = IDLE;

      end

      WRITE_MEM_VAL: begin
		//if(!rx_fifo_empty) next_state = READ_CMD;
		//else 
    next_state = IDLE;
      end

    endcase

  end

  always @(*) begin
    
    /* initial values to avoid latch synthesis */
	//if(rst) begin
		mem_we = 0;
		mem_addr = 0;
		mem_din = 0;
		dout= 0;
	//end else begin
  
    	case (curr_state)

      /* output and mem signal logic */
			READ_MEM_VAL: begin
				mem_addr = addr;
			end
			WRITE_MEM_VAL: begin
				mem_addr = addr;
				mem_din = data;
				mem_we = 1;
			end
			ECHO_VAL: begin 
				if(!tx_fifo_full) dout=mem_dout;
			end
      
    	endcase

  //end
end

  always @(posedge clk) begin

    /* byte reading and packet counting */
	case(curr_state)
		READ_CMD: begin
			cmd <= din;
		end
		READ_ADDR: begin
			addr <= din;
		end
		READ_DATA: begin
			data <= din;
		end
	endcase
		

  end

  /* TODO: MODIFY THIS */
  //assign state_leds = 'd0;

  /* TODO: MODIFY/REMOVE THIS */
  assign rx_fifo_rd_en = (next_state == READ_CMD) || (next_state == READ_ADDR) || (next_state == READ_DATA); // || (curr_state == IDLE);

  assign tx_fifo_wr_en = curr_state == ECHO_VAL;
  //assign dout = 'd0;

endmodule
