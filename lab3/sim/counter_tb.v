`timescale 1ns/1ns

//`define SECOND 1000
//`define MS 1000000
//`define CYCLES_PER_SECOND = 125_000_000

module counter_tb();
    reg clock = 0;
    reg [3:0] buttons;
    wire [3:0] LEDS;

    counter #(10) ctr (

        .clk(clock),
        .buttons(buttons),
        .leds(LEDS)
    );

    // Notice that this code causes the `clock` signal to constantly
    // switch up and down every 4 time steps.
    always #(4) clock <= ~clock;

    initial begin
        `ifdef IVERILOG
            $dumpfile("counter_tb.fst");
            $dumpvars(0, counter_tb);
        `endif
        `ifndef IVERILOG
            $vcdpluson;
        `endif

        // TODO: Change input values and step forward in time to test
        // your counter and its clock enable/disable functionality.
	buttons = 4'd1;
    repeat (1) @(posedge clock) #1;
	assert(LEDS[3:0] == 4'd1);

    buttons = 4'd0;
	repeat (1) @(posedge clock);

	buttons = 4'd1;
	repeat (1) @(posedge clock);
	assert(LEDS[3:0] == 4'd2);


    buttons = 4'd0;
	repeat (1) @(posedge clock);


    buttons = 4'd1;
    repeat (1) @(posedge clock)
    assert(LEDS[3:0] == 4'd3);

    buttons = 4'd0;
	repeat (1) @(posedge clock);

    buttons = 4'd4;
    repeat (10) @(posedge clock) #1;

    buttons = 4'd0;
    repeat (10) @(posedge clock) #1;
    //#(2);
    assert (LEDS[3:0] == 4'd4);
    repeat (10) @(posedge clock) #1;
    assert(LEDS[3:0] == 4'd5);
    repeat (10) @(posedge clock) #1;
    assert(LEDS[3:0] == 4'd6);

    buttons = 4'd4;
    repeat (1) @(posedge clock) #1;
    buttons = 4'd0;
    repeat (10) @(posedge clock) #10;
    assert (LEDS[3:0] == 4'd6);

    buttons = 4'd0;
    repeat (1) @(posedge clock)

    buttons = 4'd2; 
    repeat (1) @(posedge clock)
    assert(LEDS[3:0] == 4'd5);

    //buttons = 4'd0;
	//repeat (1) @(posedge clock);


    //buttons = 4'd2;
    //repeat (1) @(posedge clock)
    //assert(LEDS[3:0] == 4'd4);

        `ifndef IVERILOG
            $vcdplusoff;
        `endif
        $finish();
    end
endmodule
