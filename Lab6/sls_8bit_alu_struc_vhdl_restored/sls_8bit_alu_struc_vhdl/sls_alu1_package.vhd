library ieee;
use ieee.std_logic_1164.all;

package sls_alu1_package is


	component sls_8bit_alu_struc_vhdl is
		port (	
				Func_Sel					:	in	std_logic_vector(3 downto 0);
				Operand_X, Operand_Y	:	in	std_logic_vector(7 downto 0);
				Const_K					:	in	std_logic_vector(1 downto 0);
				Cin						: 	in std_logic;
				ALU_Result				:	out std_logic_vector(7 downto 0);
				ALU_CNVZ					: 	out std_logic_vector(3 downto 0));
		end component ;
		
end sls_alu1_package;