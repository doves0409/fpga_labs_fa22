module edge_detector #(
    parameter WIDTH = 1
)(
    input clk,
    input [WIDTH-1:0] signal_in,
    output [WIDTH-1:0] edge_detect_pulse
);
    // TODO: implement a multi-bit edge detector that detects a rising edge of 'signal_in[x]'
    // and outputs a one-cycle pulse 'edge_detect_pulse[x]' at the next clock edge
    // Feel free to use as many number of registers you like

    // Remove this line once you create your edge detector
    reg [WIDTH-1:0] delayed_signal = 1'b0;
    reg [WIDTH-1:0] pulse_signal; 

    genvar i;
    generate 
    for(i=0; i<WIDTH; i=i+1)
        always @(posedge clk) begin
        delayed_signal <= signal_in;
        if (delayed_signal[i] == 1'b0 && signal_in[i] == 1'b1) 
            pulse_signal[i] <= 1'b1;
        
        else 
            pulse_signal[i] <= 1'b0;
        
    end
    endgenerate 
    assign edge_detect_pulse = pulse_signal;
endmodule
