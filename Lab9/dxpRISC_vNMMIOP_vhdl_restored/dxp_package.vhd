library ieee ;
use ieee.std_logic_1164.all ;

package dxp_package is
-- Component declarations:
component dxp_nbit_reg_vhdl is
	generic (n : integer := 8);
	port (d : in std_logic_vector(n-1 downto 0);
	ld, reset, clock : in std_logic;
	q : buffer std_logic_vector(n-1 downto 0));
end component;

component dxp_nbit_cntup_vhdl is
	generic (n : integer := 8);
	port (d : in std_logic_vector(n-1 downto 0);
	ld, reset, cntup, clock : in std_logic;
	q : buffer std_logic_vector(n-1 downto 0));
end component;

component dxp_nbit_mux4to1_vhdl is 
	generic (n : integer := 8);
	port (d3, d2, d1, d0 : in std_logic_vector(n-1 downto 0);
	s : in std_logic_vector(1 downto 0);
	f : out std_logic_vector(n-1 downto 0));
end component;

component dxp_nbit_mux2to1_vhdl is 
	generic (n : integer := 8);
	port (d1, d0 : in std_logic_vector(n-1 downto 0);
	s : in std_logic;
	f : out std_logic_vector(n-1 downto 0));
end component;

component dxp_8bit_alu_beh_vhdl is
	port (	
			Func_Sel					:	in	std_logic_vector(3 downto 0);
			Operand_X, Operand_Y	:	in	std_logic_vector(7 downto 0);
			Const_K					:	in	std_logic_vector(1 downto 0);
			ALU_Result				:	out std_logic_vector(7 downto 0);
			ALU_CNVZ					: 	out std_logic_vector(3 downto 0));
end component;

component dxp_MM_vNMMIOP_vhdl IS
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
end component;

component dxpRISC_vNMMIOP_DP_vhdl is
	port (Reset, Clock, PB1,  
	RST_PC, LD_PC, CNT_PC, LD_IR, LD_R0, LD_R1, LD_R2, LD_R3,
	LD_TXR, LD_TYR, LD_TK, LD_SR, LD_MABR, LD_MAXR, LD_MAR, RW, MMASel,
	LD_IPDR, LD_OPDR, push, pop, ipstksel : in std_logic;
	RF_OS, IB_SEL : in std_logic_vector(1 downto 0);
	SW, ALU_FS : in std_logic_vector(3 downto 0);
	LEDs, IW : out std_logic_vector(7 downto 0);
	SR_CNVZ : out std_logic_vector(3 downto 0);
	MARout : out std_logic_vector(9 downto 0));
end component;

component dxpRISC_vNMMIOP_CU_vhdl is
	port (Reset, Clock : in std_logic;  
	IW : in std_logic_vector(7 downto 0);
	SR_CNVZ : in std_logic_vector(3 downto 0);
	MARout : in std_logic_vector(9 downto 0);
	RST_PC, LD_PC, CNT_PC, LD_IR, LD_R0, LD_R1, LD_R2, LD_R3,
	LD_TXR, LD_TYR, LD_TK, LD_SR, LD_MABR, LD_MAXR, LD_MAR, RW, MMASel, 
	LD_IPDR, LD_OPDR, push, pop, ipstksel : out std_logic;
	RF_OS, IB_SEL : out std_logic_vector(1 downto 0); 
	ALU_FS : out std_logic_vector(3 downto 0);
	crtMCis : out std_logic_vector(2 downto 0));
end component;

component dxp_IW2ASCII_vhdl is 
	port(IW : in std_logic_vector(7 downto 0);
	Reset, Clock : in std_logic;
	ICis : out std_logic_vector(95 downto 0));
end component;

component dxp_8bit_4loc_stack_vhdl is 
	port(push, pop, Reset, Clock : in std_logic;
	din : in std_logic_vector(7 downto 0);
	dout : out std_logic_vector(7 downto 0));
end component;

end package;
