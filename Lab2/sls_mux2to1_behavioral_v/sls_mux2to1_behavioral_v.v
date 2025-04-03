module sls_mux2to1_behavioral_v (x1, x0, s, f);

input x1, x0, s;
output reg f;

	always @(x1, x0, s)
		begin
			if (s ==1)
				f = x1;
			else
				f = x0;
		end
		
endmodule
