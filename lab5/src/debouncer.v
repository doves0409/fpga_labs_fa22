module debouncer #(
    parameter WIDTH              = 1,
    parameter SAMPLE_CNT_MAX     = 62500,
    parameter PULSE_CNT_MAX      = 200,
    parameter WRAPPING_CNT_WIDTH = $clog2(SAMPLE_CNT_MAX),
    parameter SAT_CNT_WIDTH      = $clog2(PULSE_CNT_MAX) + 1
) (
    input clk,
    input [WIDTH-1:0] glitchy_signal,
    output [WIDTH-1:0] debounced_signal
);
    // TODO: fill in neccesary logic to implement the wrapping counter and the saturating counters
    // Some initial code has been provided to you, but feel free to change it however you like
    // One wrapping counter is required
    // One saturating counter is needed for each bit of glitchy_signal
    // You need to think of the conditions for reseting, clock enable, etc. those registers
    // Refer to the block diagram in the spec

    // Remove this line once you have created your debouncer

    reg [SAT_CNT_WIDTH-1:0] saturating_counter [WIDTH-1:0];
    integer j;
    initial begin
        for(j=0; j<WIDTH; j=j+1) 
                saturating_counter[j] = 0;
    end

    reg [WRAPPING_CNT_WIDTH:0] wrapper = 0; 
    reg [WIDTH-1:0] store_output;
    integer i;
        always @ (posedge clk) begin
            wrapper = wrapper + 1;

            for(i = 0; i<WIDTH; i=i+1) begin

                if(wrapper == SAMPLE_CNT_MAX) begin
                    wrapper <= 0;
                    if(glitchy_signal[i] && saturating_counter[i] < PULSE_CNT_MAX) begin
                        saturating_counter[i] <= saturating_counter[i] + 1;
                    end 
                end

                if (~glitchy_signal[i]) begin
                    saturating_counter[i] <= 0;
                end
                store_output[i] <= saturating_counter[i] == PULSE_CNT_MAX;

            end
    end
        assign debounced_signal = store_output;
;

endmodule
