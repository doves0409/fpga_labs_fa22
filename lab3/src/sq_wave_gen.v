module sq_wave_gen (
    input clk,
    input next_sample,
    output [9:0] code
);
    //assign code = 0;

reg [9:0] code_value = 462;
integer i = 0;
always @(posedge clk) begin
    if(next_sample == 1) begin
        i = i+1;
        if(i == 139) begin 
            i <= 0;
            if(code_value == 462) begin
                code_value <= 562;
            end
            else begin
                code_value <= 462;
            end
        end
    end
end
assign code = code_value;
endmodule
