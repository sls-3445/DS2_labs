module sls_mux2to1_behavioral_v_tb;
	reg x1_tb, x0_tb, s_tb;
	wire f_tb;
	
sls_mux2to1_behavioral_v muv (x1_tb, x0_tb, s_tb, f_tb);

initial begin

	s_tb = 0; x1_tb = 0; x0_tb = 0; # 20000
	if (f_tb !== 0) begin $display("Sum is wrong for combination 000"); $finish; end
	
	s_tb = 0; x1_tb = 0; x0_tb = 1; # 20000
	if (f_tb !== 1) begin $display("Sum is wrong for combination 001"); $finish; end
	
	s_tb = 0; x1_tb = 1; x0_tb = 0; # 20000
	if (f_tb !== 0) begin $display("Sum is wrong for combination 000"); $finish; end
	
	s_tb = 0; x1_tb = 1; x0_tb = 1; # 20000
	if (f_tb !== 1) begin $display("Sum is wrong for combination 000"); $finish; end
	
	s_tb = 1; x1_tb = 0; x0_tb = 0; # 20000
	if (f_tb !== 0) begin $display("Sum is wrong for combination 000"); $finish; end
	
	s_tb = 1; x1_tb = 0; x0_tb = 1; # 20000
	if (f_tb !== 0) begin $display("Sum is wrong for combination 000"); $finish; end
	
	s_tb = 1; x1_tb = 1; x0_tb = 0; # 20000
	if (f_tb !== 1) begin $display("Sum is wrong for combination 000"); $finish; end
	
	s_tb = 1; x1_tb = 1; x0_tb = 1; # 20000
	if (f_tb !== 1) begin $display("Sum is wrong for combination 000"); $finish; end
	
	end
endmodule
