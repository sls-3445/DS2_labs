module sls_fa_structural_v_tb;

	reg cin_tb, x_tb, y_tb;
	wire sum_tb, cout_tb;
	
sls_fa_structural_v muv (cin_tb, x_tb, y_tb, sum_tb, cout_tb);

initial begin

	cin_tb = 0; x_tb = 0; y_tb = 0; # 20000
	if (sum_tb !== 0) begin $display("Sum is wrong for combination 000"); $finish; end
	else if (cout_tb !== 0) begin $display("Cout is wrong for combination 000"); $finish; end
	
	cin_tb = 0; x_tb = 0; y_tb = 1; # 20000
	if (sum_tb !== 1) begin $display("Sum is wrong for combination 001"); $finish; end
	else if (cout_tb !== 0) begin $display("Cout is wrong for combination 001"); $finish; end
	
	cin_tb = 0; x_tb = 1; y_tb = 0; # 20000
	if (sum_tb !== 1) begin $display("Sum is wrong for combination 010"); $finish; end
	else if (cout_tb !== 0) begin $display("Cout is wrong for combination 010"); $finish; end
	
	cin_tb = 0; x_tb = 1; y_tb = 1; # 20000
	if (sum_tb !== 0) begin $display("Sum is wrong for combination 011"); $finish; end
	else if (cout_tb !== 1) begin $display("Cout is wrong for combination 011"); $finish; end
	
	cin_tb = 1; x_tb = 0; y_tb = 0; # 20000
	if (sum_tb !== 1) begin $display("Sum is wrong for combination 100"); $finish; end
	else if (cout_tb !== 0) begin $display("Cout is wrong for combination 100"); $finish; end
	
	cin_tb = 1; x_tb = 0; y_tb = 1; # 20000
	if (sum_tb !== 0) begin $display("Sum is wrong for combination 101"); $finish; end
	else if (cout_tb !== 1) begin $display("Cout is wrong for combination 101"); $finish; end
	
	cin_tb = 1; x_tb = 1; y_tb = 0; # 20000
	if (sum_tb !== 0) begin $display("Sum is wrong for combination 110"); $finish; end
	else if (cout_tb !== 1) begin $display("Cout is wrong for combination 110"); $finish; end
	
	cin_tb = 1; x_tb = 1; y_tb = 1; # 20000
	if (sum_tb !== 1) begin $display("Sum is wrong for combination 111"); $finish; end
	else if (cout_tb !== 1) begin $display("Cout is wrong for combination 111"); $finish; end
	
	end
endmodule
