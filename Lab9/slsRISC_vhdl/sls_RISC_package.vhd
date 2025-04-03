library ieee;
use ieee.std_logic_1164.all;

package sls_RISC_package is

	COMPONENT sls_MM_vhdl IS
		PORT
		(
			address		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			wren		: IN STD_LOGIC ;
			q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
	END COMPONENT;

	component sls_8bit_4loc_stack_vhdl is 
		port(push, pop, Reset, Clock : in std_logic;
		din : in std_logic_vector(7 downto 0);
		dout : out std_logic_vector(7 downto 0));
	end component;
	
	component slsRISC_CU_vhdl is
		port 
		(
			Reset, Clock : in std_logic;  
			IW : in std_logic_vector(7 downto 0);
			SR_CNVZ : in std_logic_vector(3 downto 0);
			MARout : in std_logic_vector(9 downto 0);
			RST_PC, LD_PC, CNT_PC, LD_IR, LD_R0, LD_R1, LD_R2, LD_R3,
			LD_TXR, LD_TYR, LD_TK, LD_SR, LD_MABR, LD_MAXR, LD_MAR, RW, MMASel, 
			LD_IPDR, LD_OPDR, push, pop, ipstksel : out std_logic;
			RF_OS, WB_SEL : out std_logic_vector(1 downto 0); 
			ALU_FS : out std_logic_vector(3 downto 0);
			crtMCis : out std_logic_vector(2 downto 0));
	end component;

	component slsRISC_DP_vhdl is
			port
			(
				Reset, Clock, PB1,  
				RST_PC, LD_PC, CNT_PC, LD_IR, LD_R0, LD_R1, LD_R2, LD_R3,
				LD_TXR, LD_TYR, LD_TK, LD_SR, LD_MABR, LD_MAXR, LD_MAR, RW, MMASel,
				LD_IPDR, LD_OPDR, push, pop, ipstksel : in std_logic;
				RF_SD_OS, RF_S_OS, wb_sel 					: in std_logic_vector(1 downto 0);
				SW, ALU_FS 										: in std_logic_vector(3 downto 0);
				LEDs, IW 										: out std_logic_vector(7 downto 0);
				SR_CNVZ 											: out std_logic_vector(3 downto 0);
				MAR_din, MARout 											: out std_logic_vector(9 downto 0));
	end component;
	
	component sls_IW2ASCII_vhdl is 
		port(
			IW : in std_logic_vector(7 downto 0) := "00000000";
			Reset, Clock : in std_logic;
			ICis : out std_logic_vector(95 downto 0));
	end component;

end sls_RISC_package;
