module structural_adder (
    input [13:0] a,
    input [13:0] b,
    output [14:0] sum
);

//    assign sum = 15'd0;
	genvar i;
	wire [13:0] cout; 
	full_adder first(a[0],b[0], 0, sum[0], cout[0]); 
	generate
		for(i=1; i<14; i=i+1) begin:ripple
			full_adder fa(a[i], b[i], cout[i-1], sum[i], cout[i]);
		end
	endgenerate
	assign sum[14] = cout[13];
endmodule
