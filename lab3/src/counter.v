module counter #(
    parameter CYCLES_PER_SECOND = 125_000_000
)(
    input clk,
    input [3:0] buttons,
    output [3:0] leds
);
    reg [3:0] counter = 0;
    assign leds = counter;
    reg increment = 0;
    reg [32:0] cycles_counter = 0;
    always @(posedge clk) begin
        if (buttons[0])
            counter <= counter + 4'd1;
        else if (buttons[1])
            counter <= counter - 4'd1;
        else if (buttons[3])
            counter <= 4'd0;
        else if(buttons[2])
            //only increment counter if 1 second elapsed and boolean 
            //increment is true 
            increment <= !increment;
        else
            counter <= counter;


        if (increment) begin

	    if(cycles_counter < CYCLES_PER_SECOND-1) begin
	       cycles_counter <= cycles_counter + 4'd1;
	    end
           // if we surpass 1 second, reset cycles_counter to 1
       	   else begin
           	 cycles_counter <= 0;
	        counter <= counter + 4'd1;
       	     end
    end
end
endmodule

