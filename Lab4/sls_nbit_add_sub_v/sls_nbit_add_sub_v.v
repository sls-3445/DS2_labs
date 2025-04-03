module sls_nbit_add_sub_v (cin, x, y, sum, cout);

	parameter n = 8;
	input cin;
	input [n-1:0] x, y;
	output [n-1:0] sum;
	output cout;
	wire [n:0] c;
	wire [n-1:0] y1;
	genvar k;
	
	assign c[0] = cin;
	generate
		for (k = 0; k < n; k = k + 1) begin : fa
			assign y1[k] = y[k] ^ cin;
			assign sum[k] = y1[k] ^ x[k] ^ c[k];
			assign c[k+1] = (x[k] & y1[k]) | (x[k] & c[k]) | (y1[k] & c[k]);
		end
	endgenerate
	assign cout = c[n];
endmodule