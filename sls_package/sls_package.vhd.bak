library ieee ;
use ieee.std_logic_1164.all;

package sls_package is
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
	
	component sls_nbit_mux4to1_vhdl is
	generic (n : integer := 8);
	port ( d3, d2, d1, d0 : std_logic_vector(n-1 downto 0);
			s : in std_logic_vector(1 downto 0); 	
			f : out std_logic_vector(n-1 downto 0)); 	
	end component;
	
	component sls_nbit_mux2to1_vhdl is 			
	generic (n : integer := 8);
	port ( d1, d0 : in std_logic_vector(n-1 downto 0); 
			s : in std_logic; 	
			f : out std_logic_vector(n-1 downto 0)); 	
	end component;
	
	component sls_4bit_reg_vhdl is
	PORT( D		:	IN		STD_LOGIC_VECTOR(3 DOWNTO 0);
				Reset, Clock, LD_EN	:	IN STD_LOGIC;
				Q		:	OUT	STD_LOGIC_VECTOR(3 DOWNTO 0));
	end component;

	component sls_8bit_upcnt_vhdl is
		PORT( D		:	IN		STD_LOGIC_VECTOR(7 DOWNTO 0);
				Reset, Clock	:	IN STD_LOGIC;
				Cnt_EN, LD_EN	:	IN STD_LOGIC;
				Q		:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0));
	end component;
	
	component sls_rom_vhdl is
		PORT
		(address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			q		: OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
	end component;
	
	component sls_ram_vhdl is
		PORT
		(address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			data		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			wren		: IN STD_LOGIC ;
			q		: OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
	end component;
	
	component sls_mem_vhdl is
		port (Clock, Cnt_EN, LD_EN_upcnt, Reset : in  std_logic;
				LD_EN_L, LD_EN_H, LD_EN_M, WR_EN  : in  std_logic;
				Din_upcnt								 : in  std_logic_vector (7 downto 0);
				Q_out 									 : out std_logic_vector (7 downto 0));
	end component;
		
	component sls_mem_cu_vhdl is
	generic (n : integer := 40);
	PORT( Reset, Clock : in STD_LOGIC;
			Cnt_EN, LD_EN_upcnt, LD_EN_H, 
			LD_EN_L, LD_EN_M, WR_EN	: out	STD_LOGIC);
	end component;
	
-- End of component declarations;
end sls_package ;
