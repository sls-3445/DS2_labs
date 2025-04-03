library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use work.sls_package.all;
use work.sls_alu_package.all;

entity sls_8bit_alu_struc_vhdl is
	port (	
			Func_Sel					:	in	std_logic_vector(3 downto 0);
			Operand_X, Operand_Y	:	in	std_logic_vector(7 downto 0);
			Const_K					:	in	std_logic_vector(1 downto 0);
			Cin						: 	in std_logic;
			ALU_Result				:	out std_logic_vector(7 downto 0);
			ALU_CNVZ					: 	out std_logic_vector(3 downto 0));
end sls_8bit_alu_struc_vhdl ;
-- ----------------------------------------------------------------------------
-- Above: The four status bit outputs, i.e. Carryout (C), Negative (N), 
-- Overflow (V), and Zero (Z), are combined into a 4-bit bus.
-- ALU_CNVZ = {Carryout, Negative, Overflow, Zero}
-- ----------------------------------------------------------------------------
architecture sls_struc of sls_8bit_alu_struc_vhdl is	
-- ----------------------------------------------------------------------------
-- Internal signals declarations
-- ----------------------------------------------------------------------------
signal 	Arith_Result, Logic_Result, SR_Result, Const_Result : std_logic_vector(7 downto 0);
signal 	Arith_CNVZ, Logic_CNVZ, SR_CNVZ, Const_CNVZ 	: std_logic_vector(3 downto 0);
-- ----------------------------------------------------------------------------
-- The top-level 4to1muxes which select the ALU_Result and ALU_CNVZ
-- ----------------------------------------------------------------------------
begin
	result_mux : sls_nbit_mux4to1_vhdl port map (d3 => Const_Result, d2 => SR_Result, 
						d1 => Logic_Result, d0 => Arith_Result, s => Func_Sel(3 downto 2), f => ALU_Result);
						
						
	cnvz_mux : sls_nbit_mux4to1_vhdl generic map (n => 4) port map (d3 => Const_CNVZ, d2 => SR_CNVZ, 
								d1 => Logic_CNVZ, d0 => Arith_CNVZ, s => Func_Sel(3 downto 2), f => ALU_CNVZ);
-- ----------------------------------------------------------------------------
-- The arithmetic unit instance
-------------------------------------------------------------------------------	
	arith_unit : sls_8bit_arith_unit_vhdl port map (Func_Sel => Func_Sel(1 downto 0), Operand_X => Operand_x, Operand_Y => Operand_Y, 
																	Const_K => Const_K, Arith_Result => Arith_Result, Arith_CNVZ => Arith_CNVZ);
-------------------------------------------------------------------------------
-- The logic unit instance	
-------------------------------------------------------------------------------
	logic_unit : sls_8bit_logic_unit_vhdl port map (Func_Sel => Func_Sel(1 downto 0), Operand_X => Operand_x, Operand_Y => Operand_Y, 
													Const_K => Const_K, Logic_Result => Logic_Result, Logic_CNVZ => Logic_CNVZ);
-------------------------------------------------------------------------------
-- The shift-rotate unit instance	
-------------------------------------------------------------------------------
		
	sr_unit : sls_8bit_sr_unit_vhdl port map (Func_Sel => Func_Sel(1 downto 0), Operand_X => Operand_X,
												C_in => Cin, Operand_Y => Operand_Y, Const_K => Const_K, SR_Result => SR_Result, SR_CNVZ => SR_CNVZ);
-------------------------------------------------------------------------------
-- The constant output unit instance
-------------------------------------------------------------------------------
	const_unit : sls_8bit_const_unit_vhdl port map (Func_sel => Func_Sel(1 downto 0), 
																	Const_Result => Const_Result, Const_CNVZ => Const_CNVZ);
-------------------------------------------------------------------------------

end sls_struc ;
