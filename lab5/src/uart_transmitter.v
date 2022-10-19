module uart_transmitter #(
    parameter CLOCK_FREQ = 125_000_000,
    parameter BAUD_RATE = 115_200)
(
    input clk,
    input reset,

    input [7:0] data_in,
    input data_in_valid,
    output data_in_ready,

    output reg serial_out
);
    // See diagram in the lab guide
    localparam  SYMBOL_EDGE_TIME    =   CLOCK_FREQ / BAUD_RATE;
    localparam  CLOCK_COUNTER_WIDTH =   $clog2(SYMBOL_EDGE_TIME);

    // Remove these assignments when implementing this module
    //assign serial_out = 1'b0;
    //assign data_in_ready = 1'b0;




    reg [9:0] tx_shift;
	wire tx_running;
	wire start;
    reg [3:0] bit_counter;
    reg [CLOCK_COUNTER_WIDTH-1:0] clock_counter;

    assign symbol_edge = clock_counter == (SYMBOL_EDGE_TIME - 1);

    assign data_in_ready = bit_counter == 4'd0; //ready to receive data when not transmitting


//receiver based implementation  
    // Goes high when it is time to start transm a new character
    assign start = data_in_valid && data_in_ready;

    // Goes high while we are transmitting a character
    assign tx_running = bit_counter != 4'd0;


    //--|Counters|----------------------------------------------------------------

    // Counts cycles until a single symbol is done
    always @ (posedge clk) begin
        clock_counter <= (start || reset || symbol_edge) ? 0 : clock_counter + 1;
    end

    // Counts down from 10 bits for every character
    always @ (posedge clk) begin
        if (reset) begin
            bit_counter <= 0;
			//serial_out <=1;
			tx_shift <= 0;
        end else if (start) begin
            bit_counter <= 10;
			//serial_out <=0;
			tx_shift[0] <= 0;
			tx_shift[9] <= 1;
			tx_shift[8:1] <= data_in;
			
        end else if (symbol_edge && tx_running) begin
            bit_counter <= bit_counter - 1;
			tx_shift <= tx_shift >> 1;
        end
    end

	always @(*) begin
		if(tx_running) begin
			serial_out = tx_shift[0];
		end else begin //stop writing after 10 bits. includes IDLE state
			serial_out = 1;
		end 
end

    //--|Shift Register|----------------------------------------------------------
    //always @(posedge clk) begin
	//	if(symbol_edge) begin
	//		tx_shift <= tx_shift >> 1;
	//		serial_out <= tx_shift[0];
	//	end
       // if (sample && tx_running) tx_shift <= {1, tx_shift[7:1]};
  //  end




//original implementation 
    // Counts cycles until a single symbol is done
    //always @ (posedge clk) begin
     //   clock_counter <= (reset || symbol_edge) ? 0 : clock_counter + 1;
    //end

    //set data_in ready to 0 when about to write
    // Counts to 10 bits for every character

	//setting bit counter
//    always @ (posedge clk) begin
//        if (reset) begin
//            bit_counter <= 0;
//			tx_shift <= 0;
 //       end else if (data_in_ready && data_in_valid) begin
 //           bit_counter <= 1;
//			tx_shift[0] <= 0;
//			tx_shift[9] <= 1;
//			tx_shift[8:1] <= data_in;
//        end else if (symbol_edge) begin
//			if (bit_counter <= 4'd9) begin 		
// 				bit_counter <= bit_counter + 4'd1;
//			end else begin
//            	bit_counter <= 4'd0;
//			end
//        end
//    end

//setting serial_out
//    always @(posedge clk) begin 
	//for idle state, serial_out is 1 by default
//    	if (!bit_counter) begin 
//        	serial_out <= 1;
//    	end 
//    	else if (bit_counter == 4'd9) begin 
//        	serial_out <= 0;
//    	end
//    	else begin
		//send one bit out 
//			serial_out <= tx_shift[0]; 
//    	end 
//    end 

    //--|Shift Register|----------------------------------------------------------
//    always @(posedge clk) begin
//        if (symbol_edge) begin 
//            tx_shift <= tx_shift >> 1;
//        end 
//    end



endmodule
