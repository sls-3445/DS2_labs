module sls_mux2to1_functional_v (x1, x0, s, f);

input x1, x0, s;
output f;

assign f = (s & x1) | (~s & x0);

endmodule
