library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use work.sls_package.all;
use work.sls_alu_package.all;

entity sls_8bit_logic_unit_vhdl is
	port (	
			Func_Sel					:	in	std_logic_vector(1 downto 0);
			Operand_X, Operand_Y	:	in	std_logic_vector(7 downto 0);
			Const_K					:	in	std_logic_vector(1 downto 0);
			Logic_Result :	out std_logic_vector(7 downto 0); 
			Logic_CNVZ	:	out std_logic_vector(3 downto 0));
end sls_8bit_logic_unit_vhdl ;

architecture sls_8bit_logic_struc of sls_8bit_logic_unit_vhdl is	
------------------------------------------------------------------------------------
-- Internal signals declarations
------------------------------------------------------------------------------------
	signal or_result, and_result, xor_result, Int_Result : std_logic_vector(7 downto 0);
	signal norInt : std_logic;
------------------------------------------------------------------------------------
-- The logic_mux instance
------------------------------------------------------------------------------------
begin
	logic_mux : sls_nbit_mux4to1_vhdl port map (d3 => Operand_X, d2 => or_result, 
					d1 => and_result, d0 => xor_result, s => Func_Sel(1 downto 0), f => Int_Result);
------------------------------------------------------------------------------------
-- The outputs calculations
------------------------------------------------------------------------------------
	xor_result <= Operand_X XOR Operand_Y;
	and_result <= Operand_X AND Operand_Y;
	or_result <= Operand_X OR Operand_Y;
------------------------------------------------------------------------------------	
	Logic_result <= Int_Result;
	
	with Int_Result select
		norInt <= '1' when "00000000",
					 '0' when others;
					 
	Logic_CNVZ <= ('0' & Int_Result(7) & '0' & norInt);
------------------------------------------------------------------------------------
end sls_8bit_logic_struc;
