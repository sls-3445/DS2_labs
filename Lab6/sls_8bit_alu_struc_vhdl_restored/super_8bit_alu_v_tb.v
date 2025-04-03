//Lab 5 and 6 8-bit ALU super testbench ver. 2.0
//Created by Alberto Tabares-Galarza
module super_8bit_alu_v_tb;
reg [3:0] FuncSel_tb;
reg [7:0] OperandX_tb, OperandY_tb;
reg [1:0] Const_K_tb;
reg Cin_tb;
wire [7:0] ALU_Result_tb;
wire [3:0] ALU_CNVZ_tb;
//Put your IDN below
reg [7:0] IDN = 79;
sls_8bit_alu_struc_vhdl muv (.Func_Sel(FuncSel_tb), .Operand_X(OperandX_tb), .Operand_Y(OperandY_tb), 
						.Const_K(Const_K_tb), .Cin(Cin_tb),  .ALU_Result(ALU_Result_tb), .ALU_CNVZ(ALU_CNVZ_tb));
// ----------------------------------------------------------------------------
// In this testbench we use one task to generate stimuli
// for all FuncSel combination and four pairs of operand values
// ----------------------------------------------------------------------------
initial begin
	$display("Starting 8-bit ALU tests for IDN = %b",IDN);
// ----------------------------------------------------------------------------
// Test all functions for A=0 and B=0 and K=1 and Cin=0
// ----------------------------------------------------------------------------
	alu_test_vector(4'b0000, 0, 0, 1, 0, 8'b00000000, 4'b0001);
	alu_test_vector(4'b0001, 0, 0, 1, 0, 8'b00000000, 4'b1001);
	alu_test_vector(4'b0010, 0, 0, 1, 0, 8'b00000001, 4'b0000);
	alu_test_vector(4'b0011, 0, 0, 1, 0, 8'b11111111, 4'b0100);
	alu_test_vector(4'b0100, 0, 0, 1, 0, 8'b00000000, 4'b0001);
	alu_test_vector(4'b0101, 0, 0, 1, 0, 8'b00000000, 4'b0001);
	alu_test_vector(4'b0110, 0, 0, 1, 0, 8'b00000000, 4'b0001);
	alu_test_vector(4'b0111, 0, 0, 1, 0, 8'b00000000, 4'b0001);
	alu_test_vector(4'b1000, 0, 0, 1, 0, 8'b00000000, 4'b0001);
	
	if (IDN[5] == 1)begin
	//Test SHLL
		alu_test_vector(4'b1001, 0, 0, 1, 0, 8'b00000000, 4'b0001);
	end
	else begin
	//Test SHRL
		alu_test_vector(4'b1001, 0, 0, 1, 0, 8'b00000000, 4'b0001);
	end
	
	if (IDN[6] == 1)begin
	//Test RLC
		alu_test_vector(4'b1010, 0, 0, 1, 0, 8'b00000000, 4'b0001);
	end
	else begin
	//Test RRC
		alu_test_vector(4'b1010, 0, 0, 1, 0, 8'b00000000, 4'b0001);
	end
	
	alu_test_vector(4'b1011, 0, 0, 1, 0, 8'b00000000, 4'b0001);
// ----------------------------------------------------------------------------
// Test all functions for A=42 and B=42 and K=1 and Cin=1
// ----------------------------------------------------------------------------
	alu_test_vector(4'b0000, 42, 42, 1, 1, 8'b01010100, 4'b0000);
	alu_test_vector(4'b0001, 42, 42, 1, 1, 8'b00000000, 4'b1001);
	alu_test_vector(4'b0010, 42, 42, 1, 1, 8'b00101011, 4'b0000);
	alu_test_vector(4'b0011, 42, 42, 1, 1, 8'b00101001, 4'b1000);
	alu_test_vector(4'b0100, 42, 42, 1, 1, 8'b00000000, 4'b0001);
	alu_test_vector(4'b0101, 42, 42, 1, 1, 8'b00101010, 4'b0000);
	alu_test_vector(4'b0110, 42, 42, 1, 1, 8'b00101010, 4'b0000);
	alu_test_vector(4'b0111, 42, 42, 1, 1, 8'b00101010, 4'b0000);
	alu_test_vector(4'b1000, 42, 42, 1, 1, 8'b00010101, 4'b0000);
	
	if (IDN[5] == 1)begin
	//Test SHLL
		alu_test_vector(4'b1001, 42, 42, 1, 1, 8'b01010100, 4'b0000);
	end
	else begin
	//Test SHRL
		alu_test_vector(4'b1001, 42, 42, 1, 1, 8'b00010101, 4'b0000);
	end
	
	if (IDN[6] == 1)begin
	//Test RLC
		alu_test_vector(4'b1010, 42, 42, 1, 1, 8'b01010101, 4'b0000);
	end
	else begin
	//Test RRC
		alu_test_vector(4'b1010, 42, 42, 1, 1, 8'b10010101, 4'b0100);
	end

	alu_test_vector(4'b1011, 42, 42, 1, 1, 8'b00101010, 4'b0000);
// ----------------------------------------------------------------------------
// Test all functions for A=85 and B=85 and K=1 and Cin=0
// ----------------------------------------------------------------------------
	alu_test_vector(4'b0000, 85, 85, 1, 1, 8'b10101010, 4'b0110);
	alu_test_vector(4'b0001, 85, 85, 1, 1, 8'b00000000, 4'b1001);
	alu_test_vector(4'b0010, 85, 85, 1, 1, 8'b01010110, 4'b0000);
	alu_test_vector(4'b0011, 85, 85, 1, 1, 8'b01010100, 4'b1000);
	alu_test_vector(4'b0100, 85, 85, 1, 1, 8'b00000000, 4'b0001);
	alu_test_vector(4'b0101, 85, 85, 1, 1, 8'b01010101, 4'b0000);
	alu_test_vector(4'b0110, 85, 85, 1, 1, 8'b01010101, 4'b0000);
	alu_test_vector(4'b0111, 85, 85, 1, 1, 8'b01010101, 4'b0000);
	alu_test_vector(4'b1000, 85, 85, 1, 1, 8'b00101010, 4'b0000);
	
	if (IDN[5] == 1)begin
	//Test SHLL
		alu_test_vector(4'b1001, 85, 85, 1, 1, 8'b10101010, 4'b0100);
	end
	else begin
	//Test SHRL
		alu_test_vector(4'b1001, 85, 85, 1, 1, 8'b00101010, 4'b0000);
	end
	
	if (IDN[6] == 1)begin
	//Test RLC
		alu_test_vector(4'b1010, 85, 85, 1, 1, 8'b10101011, 4'b0100);
	end
	else begin
	//Test RRC
		alu_test_vector(4'b1010, 85, 85, 1, 1, 8'b10101010, 4'b1100);
	end
	
	alu_test_vector(4'b1011, 85, 85, 1, 1, 8'b01010101, 4'b0000);
// ----------------------------------------------------------------------------
// Test all functions for A=127 and B=127 and K=1 and Cin=1
// ----------------------------------------------------------------------------
	alu_test_vector(4'b0000, 127, 127, 1, 1, 8'b11111110, 4'b0110);
	alu_test_vector(4'b0001, 127, 127, 1, 1, 8'b00000000, 4'b1001);
	alu_test_vector(4'b0010, 127, 127, 1, 1, 8'b10000000, 4'b0110);
	alu_test_vector(4'b0011, 127, 127, 1, 1, 8'b01111110, 4'b1000);
	alu_test_vector(4'b0100, 127, 127, 1, 1, 8'b00000000, 4'b0001);
	alu_test_vector(4'b0101, 127, 127, 1, 1, 8'b01111111, 4'b0000);
	alu_test_vector(4'b0110, 127, 127, 1, 1, 8'b01111111, 4'b0000);
	alu_test_vector(4'b0111, 127, 127, 1, 1, 8'b01111111, 4'b0000);
	alu_test_vector(4'b1000, 127, 127, 1, 1, 8'b00111111, 4'b0000);
	
	if (IDN[5] == 1)begin
	//Test SHLL
		alu_test_vector(4'b1001, 127, 127, 1, 1, 8'b11111110, 4'b0100);
	end
	else begin
	//Test SHRL
		alu_test_vector(4'b1001, 127, 127, 1, 1, 8'b00111111, 4'b0000);
	end
	
	if (IDN[6] == 1)begin
	//Test RLC
		alu_test_vector(4'b1010, 127, 127, 1, 1, 8'b11111111, 4'b0100);
	end
	else begin
	//Test RRC
		alu_test_vector(4'b1010, 127, 127, 1, 1, 8'b10111111, 4'b1100);
	end
	
	alu_test_vector(4'b1011, 127, 127, 1, 1, 8'b01111111, 4'b0000);
// ----------------------------------------------------------------------------
	$display("All tests have been passed, congrats!");
end

task alu_test_vector;
// ----------------------------------------------------------------------------
// input values passed to the task
// ----------------------------------------------------------------------------
	input [3:0] FuncSel_int; 
	input [7:0] OperandX_int, OperandY_int;
	input [1:0] Const_K_int;
	input Cin_int;
	input [7:0] Result;
	input [3:0] CNVZ;
	begin
		FuncSel_tb = FuncSel_int;
		OperandX_tb = OperandX_int;
		OperandY_tb = OperandY_int;
		Const_K_tb = Const_K_int;
		Cin_tb = Cin_int;
		#20000;
		if (ALU_Result_tb !== Result)begin
		$display("Result for Function %b is %b, expected %b",FuncSel_tb, ALU_Result_tb, Result);
		$stop;
		end
		if (ALU_CNVZ_tb !== CNVZ)begin
		$display("CNVZ for Function %b is %b, expected %b",FuncSel_tb, ALU_CNVZ_tb, CNVZ);
		$stop;
		end
	end
endtask

endmodule
