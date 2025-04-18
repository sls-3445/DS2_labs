library ieee ;
use ieee.std_logic_1164.all;

package sls_alu_package is
-- Component declarations:
	component sls_8bit_add_sub_vhdl is
	port ( 	cin : in std_logic;
				x, y : in std_logic_vector(7 downto 0);
				sum  : out std_logic_vector(7 downto 0);
				cout, overflow : out std_logic);
	end component;
	
	component sls_8bit_arith_unit_vhdl is
	port (	
			Func_Sel					:	in	std_logic_vector(1 downto 0);
			Operand_X, Operand_Y	:	in	std_logic_vector(7 downto 0);
			Const_K					:	in	std_logic_vector(1 downto 0);
			Arith_CNVZ				: out std_logic_vector(3 downto 0);
			Arith_Result	:	out std_logic_vector(7 downto 0));
	end component;
	
	component sls_8bit_logic_unit_vhdl is
	port (	
			Func_Sel					:	in	std_logic_vector(1 downto 0);
			Operand_X, Operand_Y	:	in	std_logic_vector(7 downto 0);
			Const_K					:	in	std_logic_vector(1 downto 0);
			Logic_Result :	out std_logic_vector(7 downto 0);
			Logic_CNVZ	:	out std_logic_vector(3 downto 0));
	end component;
	
	component sls_8bit_sr_unit_vhdl is
	port (	
			Func_Sel					:	in	std_logic_vector(1 downto 0);
			Operand_X, Operand_Y	:	in	std_logic_vector(7 downto 0);
			Const_K					:	in	std_logic_vector(1 downto 0);
			C_in						: in std_logic;
			SR_Result :	out std_logic_vector(7 downto 0);
			SR_CNVZ	:	out std_logic_vector(3 downto 0));
	end component;
	
	component sls_8bit_const_unit_vhdl is
	port (	
			Func_Sel					:	in	std_logic_vector(1 downto 0);
			Const_Result :	out std_logic_vector(7 downto 0);
			Const_CNVZ	:	out std_logic_vector(3 downto 0));
	end component;
	
	component sls_8bit_alu_struc_vhdl is
	port (	
			Func_Sel					:	in	std_logic_vector(3 downto 0);
			Operand_X, Operand_Y	:	in	std_logic_vector(7 downto 0);
			Const_K					:	in	std_logic_vector(1 downto 0);
			Cin						: 	in std_logic;
			ALU_Result				:	out std_logic_vector(7 downto 0);
			ALU_CNVZ					: 	out std_logic_vector(3 downto 0));
	end component ;
	
-- End of component declarations;
end sls_alu_package ;
