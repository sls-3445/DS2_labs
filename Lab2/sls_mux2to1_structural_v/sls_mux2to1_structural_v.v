module sls_mux2to1_structural_v (x1, x0, s, f);

input x1, x0, s;
output f;
wire k, g, h;

	not (k, s);
	and (g, k , x0);
	and (h, s, x1);
	or (f, g, h);
	
endmodule
