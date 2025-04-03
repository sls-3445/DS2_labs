module sls_8bit_alu_struc_v (Func_Sel, Operand_X, Operand_Y, Const_K, Cin, 
				ALU_Result, ALU_CNVZ);
//----------------------------------------------------------------------------------
// Input and output ports declarations
//----------------------------------------------------------------------------------
	input [7:0] Func_Sel, Operand_X, Operand_Y;
	input [1:0] Const_K;
	input Cin;
	output [7:0] ALU_Result;
	output [3:0] ALU_CNVZ;
//----------------------------------------------------------------------------------
// Internal signals declarations
//----------------------------------------------------------------------------------
	wire [7:0] Arith_Result, Logic_Result, SR_Result, Const_Result;
	wire [3:0] Arith_CNVZ, Logic_CNVZ, SR_CNVZ, Const_CNVZ;
//----------------------------------------------------------------------------------
// The top-level 4to1muxes which select the ALU_Result and ALU_CNVZ
//----------------------------------------------------------------------------------
	sls_nbit_mux4to1_v 	result_mux	(.d3(Const_Result), .d2(SR_Result), .d1(Logic_Result), 
		.d0(Arith_Result), .s(Func_Sel[3:2]), .f(ALU_Result));
		
	assign ALU_CNVZ = Func_Sel[3] ? (Func_Sel[2] ? Const_CNVZ : SR_CNVZ) : (Func_Sel[2] ? Logic_CNVZ : Arith_CNVZ);
//----------------------------------------------------------------------------------
// The arithmetic unit instance
//----------------------------------------------------------------------------------	
	sls_8bit_arith_unit_v	arith_unit (.Func_Sel(Func_Sel[1:0]), .Operand_X(Operand_X), .Operand_Y(Operand_Y), .Const_K(Const_K), 
				.Arith_Result(Arith_Result), .Arith_CNVZ(Arith_CNVZ));
//----------------------------------------------------------------------------------
// The logic unit instance	
//----------------------------------------------------------------------------------
	sls_8bit_logic_unit_v	logic_unit (.sel(Func_Sel[1:0]), .X(Operand_X), .Y(Operand_Y), .K(Const_K), 
				.Result(Logic_Result), .CNVZ(Logic_CNVZ));
//----------------------------------------------------------------------------------
// The shift-rotate unit instance	
//----------------------------------------------------------------------------------
		
	sls_8bit_sr_unit_v	sr_unit (.sel(Func_Sel[1:0]), .X(Operand_X), .Y(Operand_Y), .K(Const_K), 
				.Result(SR_Result), .CNVZ(SR_CNVZ), .Cin(Cin));
//----------------------------------------------------------------------------------
// The constant output unit instance
//----------------------------------------------------------------------------------
	sls_8bit_const_unit_v const_unit (Func_Sel[1:0], Const_Result, Const_CNVZ);
//----------------------------------------------------------------------------------

endmodule
