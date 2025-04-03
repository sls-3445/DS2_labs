module sls_fa_functional_v (cin, x, y, sum, cout);
	input cin, x, y;
	output sum, cout;
	
	assign sum = x ^ y ^ cin;
	assign cout = (x & y) | (x & cin) | (y & cin);
	
endmodule
