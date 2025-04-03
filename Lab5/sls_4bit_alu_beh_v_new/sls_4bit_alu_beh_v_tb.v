module sls_4bit_alu_beh_v_tb;
reg [3:0] FuncSel_tb;
reg [7:0] OperandX_tb, OperandY_tb;
reg [1:0] Const_K_tb;
reg C_in_tb;
wire [7:0] ALU_Result_tb;
wire [3:0] ALU_CNVZ_tb;
integer i;

sls_4bit_alu_beh_v muv (FuncSel_tb, OperandX_tb, OperandY_tb, 
						Const_K_tb, C_in_tb, ALU_Result_tb, ALU_CNVZ_tb);
// ----------------------------------------------------------------------------
// In this testbench we use one task to generate stimuli
// for all FuncSel combination and four pairs of operand values
// ----------------------------------------------------------------------------
initial begin
	// A, B, K
	begin for (i=0; i<16; i=i+1) alu_test_vector(i, 0, 0, 1); end
	begin for (i=0; i<16; i=i+1) alu_test_vector(i, 42, 42, 1); end
	begin for (i=0; i<16; i=i+1) alu_test_vector(i, 85, 85, 1); end
	begin for (i=0; i<16; i=i+1) alu_test_vector(i, 127, 127, 1); end
// ----------------------------------------------------------------------------
// Test all functions for A=5 and B=5 and K=1
// ----------------------------------------------------------------------------
	begin	for (i=0; i<16; i=i+1) alu_test_vector(i, 5, 5, 1); end
// ----------------------------------------------------------------------------
// Test all functions for A=A and B=A and K=1
// ----------------------------------------------------------------------------
	begin	for (i=0; i<16; i=i+1) alu_test_vector(i, 10, 10, 1); end
// ----------------------------------------------------------------------------
// Test all functions for A=F and B=F and K=1
// ----------------------------------------------------------------------------
	begin	for (i=0; i<16; i=i+1) alu_test_vector(i, 15, 15, 1); end
// ----------------------------------------------------------------------------
// Test all functions for A=5 and B=4 and K=1
// ----------------------------------------------------------------------------
	begin	for (i=0; i<16; i=i+1) alu_test_vector(i, 5, 4, 1); end
// ----------------------------------------------------------------------------
// Test all functions for A=0 and B=0 and K=2
// ----------------------------------------------------------------------------
	begin	for (i=0; i<16; i=i+1) alu_test_vector(i, 0, 0, 2); end
// ----------------------------------------------------------------------------
// Test all functions for A=5 and B=5 and K=2
// ----------------------------------------------------------------------------
	begin	for (i=0; i<16; i=i+1) alu_test_vector(i, 5, 5, 2); end
// ----------------------------------------------------------------------------
// Test all functions for A=A and B=A and K=2
// ----------------------------------------------------------------------------
	begin	for (i=0; i<16; i=i+1) alu_test_vector(i, 10, 10, 2); end
// ----------------------------------------------------------------------------
// Test all functions for A=F and B=F and K=2
// ----------------------------------------------------------------------------
	begin	for (i=0; i<16; i=i+1) alu_test_vector(i, 15, 15, 2); end
// ----------------------------------------------------------------------------
// Test all functions for A=5 and B=4 and K=2
// ----------------------------------------------------------------------------
	begin	for (i=0; i<16; i=i+1) alu_test_vector(i, 5, 4, 2); end
end

task alu_test_vector;
// ----------------------------------------------------------------------------
// input values passed to the task
// ----------------------------------------------------------------------------
	input [3:0] FuncSel_int;
	input [7:0] OperandX_int, OperandY_int;
	input [1:0] Const_K_int;
	begin
		FuncSel_tb = FuncSel_int;
		OperandX_tb = OperandX_int;
		OperandY_tb = OperandY_int;
		Const_K_tb = Const_K_int;
		C_in_tb = 0;
		#20000;
	end
endtask

endmodule
