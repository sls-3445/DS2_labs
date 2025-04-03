--=============================================================================
-- This is the behavioral control unit (CU) module for the dxpRISC_HMMIOP.
-- Specifications: one internal bus, von Neumann, memory mapped I/O-Ps.
-- (C) Dorin Patru March 2021.
--=============================================================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use work.dxp_package.all;
--=============================================================================
-- Entity, and input and output ports declarations
--=============================================================================
entity dxpRISC_vNMMIOP_CU_vhdl is
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
end dxpRISC_vNMMIOP_CU_vhdl;
--=============================================================================
-- Architecture
--=============================================================================
architecture dxpRISC_CU_beh of dxpRISC_vNMMIOP_CU_vhdl is
--=============================================================================
-- Internal signals declarations
--=============================================================================
signal Rsd, Rs2 : std_logic_vector(1 downto 0);
signal MC : std_logic_vector(2 downto 0);
signal OpCode, IW_CNVZ : std_logic_vector(3 downto 0);
signal carry, negative, overflow, zero : std_logic;
--=============================================================================
-- Machine cycles and instruction cycles parameters declarations:
-- Associate labels to each OpCode.  Cannot use the mnemonics alone because
-- 	some are VHDL keywords (AND, OR, NOT, etc.).  The use of these labels
-- 	later on in the code will increase its readability.
--=============================================================================
constant MC0	: STD_LOGIC_VECTOR(2 DOWNTO 0) := "000"; 
constant MC1	: STD_LOGIC_VECTOR(2 DOWNTO 0) := "001"; 
constant MC2	: STD_LOGIC_VECTOR(2 DOWNTO 0) := "010"; 
constant MC3	: STD_LOGIC_VECTOR(2 DOWNTO 0) := "011"; 
constant MC4	: STD_LOGIC_VECTOR(2 DOWNTO 0) := "100";
constant MC5	: STD_LOGIC_VECTOR(2 DOWNTO 0) := "101";
------------------------------------------------------------------------------
constant ADD_IC 	: STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
constant SUB_IC 	: STD_LOGIC_VECTOR(3 DOWNTO 0) := "0001"; 
constant INC_IC 	: STD_LOGIC_VECTOR(3 DOWNTO 0) := "0010";
constant DEC_IC	: STD_LOGIC_VECTOR(3 DOWNTO 0) := "0011"; 
constant XOR_IC	: STD_LOGIC_VECTOR(3 DOWNTO 0) := "0100"; 
constant AND_IC	: STD_LOGIC_VECTOR(3 DOWNTO 0) := "0101"; 
constant OR_IC		: STD_LOGIC_VECTOR(3 DOWNTO 0) := "0110"; 
constant CPY_IC	: STD_LOGIC_VECTOR(3 DOWNTO 0) := "0111"; 
constant SHRA_IC	: STD_LOGIC_VECTOR(3 DOWNTO 0) := "1000"; 
constant SHXL_IC	: STD_LOGIC_VECTOR(3 DOWNTO 0) := "1001"; 
constant RXC_IC	: STD_LOGIC_VECTOR(3 DOWNTO 0) := "1010"; 
constant LD_IC		: STD_LOGIC_VECTOR(3 DOWNTO 0) := "1011"; 
constant ST_IC		: STD_LOGIC_VECTOR(3 DOWNTO 0) := "1100"; 
constant JUMP_IC	: STD_LOGIC_VECTOR(3 DOWNTO 0) := "1101"; 
constant POP_IC		: STD_LOGIC_VECTOR(3 DOWNTO 0) := "1110"; 
constant PUSH_IC	: STD_LOGIC_VECTOR(3 DOWNTO 0) := "1111";
--=============================================================================
-- The CU is responsible for the generation of all necessary control signals. 
-- It is implemented here using behavioral description. Each executed cycle is
-- uniquely identified by two pieces of information: the current instruction 
-- cycle (_IC) and current machine cycle (MCx).
-- Although it lengthens the code, I choose to repeat ALL control signals
-- for every relevant combination. In this way, the design is simply a 
-- copy/paste of the information captured in the CST and eventually ASM
-- Chart - see lectures.
--=============================================================================
begin
process begin
------------------------------------------------------------------------------
-- The WAIT UNTIL statement excludes/replaces the sensitivity list.  The 
-- 	process is not entered until a clock rising edge is detected.
------------------------------------------------------------------------------
	WAIT UNTIL Clock'EVENT AND Clock ='1';
------------------------------------------------------------------------------
OpCode  <= IW(7 downto 4); Rsd  <= IW(3 downto 2); Rs2  <= IW(1 downto 0);
IW_CNVZ  <= IW(3 downto 0); carry  <= SR_CNVZ(3); negative  <= SR_CNVZ(2); 
overflow  <= SR_CNVZ(1); zero  <= SR_CNVZ(0);

if (Reset = '1') then 
	RST_PC  <= '1'; LD_PC  <= '0'; CNT_PC  <= '0'; LD_IR  <= '0'; 
	LD_R0  <= '0'; LD_R1  <= '0'; LD_R2  <= '0'; LD_R3  <= '0';
	LD_TXR  <= '0'; LD_TYR  <= '0'; LD_TK  <= '0'; LD_SR  <= '0'; ALU_FS  <= "0000";
	LD_MABR  <= '0'; LD_MAXR  <= '0'; LD_MAR  <= '0'; RW  <= '0'; MMASel <= '0';
	LD_IPDR  <= '0'; LD_OPDR  <= '0';
	RF_OS  <= "00"; IB_SEL  <= "00";
	crtMCis  <= MC0; MC  <= MC0;
else 
	case (MC) is
--=============================================================================
		when MC0 => 
	RST_PC <= '0'; LD_PC <= '0'; CNT_PC <= '1'; LD_IR <= '1'; 
	LD_R0 <= '0'; LD_R1 <= '0'; LD_R2 <= '0'; LD_R3 <= '0';
	LD_TXR <= '0'; LD_TYR <= '0'; LD_TK <= '0'; LD_SR <= '0'; ALU_FS <= "0000"; 
	LD_MABR <= '0'; LD_MAXR <= '0'; LD_MAR <= '0'; RW <= '0'; MMASel <= '0';
	LD_IPDR <= '0'; LD_OPDR <= '0'; push <= '0'; pop <= '0'; ipstksel <= '0';
	RF_OS <= "00"; IB_SEL <= "00";
	crtMCis <= MC0; MC <= MC1;
--=============================================================================
-- Need this to transfer the IW to the CU!
--=============================================================================
		when MC1 => 
	RST_PC <= '0'; LD_PC <= '0'; CNT_PC <= '0'; LD_IR <= '0'; 
	LD_R0 <= '0'; LD_R1 <= '0'; LD_R2 <= '0'; LD_R3 <= '0';
	LD_TXR <= '0'; LD_TYR <= '0'; LD_TK <= '0'; LD_SR <= '0'; ALU_FS <= "0000";
	LD_MABR <= '0'; LD_MAXR <= '0'; LD_MAR <= '0'; RW <= '0'; MMASel <= '0';
	LD_IPDR <= '0'; LD_OPDR <= '0'; push <= '0'; pop <= '0'; ipstksel <= '0';
	RF_OS <= "00"; IB_SEL <= "00";
	crtMCis <= MC1; MC <= MC2;
--=============================================================================
		when MC2 => 
			case (IW(7 downto 4)) is
-------------------------------------------------------------------------------
		when ADD_IC | SUB_IC | INC_IC | DEC_IC | XOR_IC | AND_IC | OR_IC | 
		SHRA_IC | SHXL_IC | RXC_IC => 
	RST_PC <= '0'; LD_PC <= '0'; CNT_PC <= '0'; LD_IR <= '0'; 
	LD_R0 <= '0'; LD_R1 <= '0'; LD_R2 <= '0'; LD_R3 <= '0';
	LD_TXR <= '1'; LD_TYR <= '0'; LD_TK <= '1'; LD_SR <= '0'; ALU_FS <= "0000";
	LD_MABR <= '0'; LD_MAXR <= '0'; LD_MAR <= '0'; RW <= '0'; MMASel <= '0';
	LD_IPDR <= '0'; LD_OPDR <= '0'; push <= '0'; pop <= '0'; ipstksel <= '0';
	RF_OS <= IW(3 downto 2); IB_SEL <= "00";
	crtMCis <= MC2; MC <= MC3; 
-------------------------------------------------------------------------------
		when CPY_IC  => 
	RST_PC <= '0'; LD_PC <= '0'; CNT_PC <= '0'; LD_IR <= '0'; 
	LD_R0 <= '0'; LD_R1 <= '0'; LD_R2 <= '0'; LD_R3 <= '0';
	LD_TXR <= '1'; LD_TYR <= '0'; LD_TK <= '1'; LD_SR <= '0'; ALU_FS <= "0000";
	LD_MABR <= '0'; LD_MAXR <= '0'; LD_MAR <= '0'; RW <= '0'; MMASel <= '0';
	LD_IPDR <= '0'; LD_OPDR <= '0'; push <= '0'; pop <= '0'; ipstksel <= '0';
	RF_OS <= IW(1 downto 0); IB_SEL <= "00";
	crtMCis <= MC2; MC <= MC3; 
-------------------------------------------------------------------------------
		when LD_IC | ST_IC | JUMP_IC  => 
	RST_PC <= '0'; LD_PC <= '0'; CNT_PC <= '1'; LD_IR <= '0'; 
	LD_R0 <= '0'; LD_R1 <= '0'; LD_R2 <= '0'; LD_R3 <= '0';
	LD_TXR <= '0'; LD_TYR <= '0'; LD_TK <= '1'; LD_SR <= '0'; ALU_FS <= "0000";
	LD_MABR <= '1'; LD_MAXR <= '1'; LD_MAR <= '0'; RW <= '0'; MMASel <= '0';
	LD_IPDR <= '0'; LD_OPDR <= '0'; push <= '0'; pop <= '0'; ipstksel <= '0';
	RF_OS <= IW(1 downto 0); IB_SEL <= "00";
	crtMCis <= MC2; MC <= MC3; 
-------------------------------------------------------------------------------
		when POP_IC  => 
	RST_PC <= '0'; LD_PC <= '0'; CNT_PC <= '0'; LD_IR <= '0'; 
				case (IW(3 downto 2)) is 
	when "00"  => LD_R0 <= '1'; LD_R1 <= '0'; LD_R2 <= '0'; LD_R3 <= '0'; 
	when "01"  => LD_R0 <= '0'; LD_R1 <= '1'; LD_R2 <= '0'; LD_R3 <= '0'; 
	when "10"  => LD_R0 <= '0'; LD_R1 <= '0'; LD_R2 <= '1'; LD_R3 <= '0'; 
	when "11"  => LD_R0 <= '0'; LD_R1 <= '0'; LD_R2 <= '0'; LD_R3 <= '1'; 
	when others => LD_R0 <= '0'; LD_R1 <= '0'; LD_R2 <= '0'; LD_R3 <= '0'; 
				end case;
	LD_TXR <= '0'; LD_TYR <= '0'; LD_TK <= '0'; LD_SR <= '0'; ALU_FS <= "0000";
	LD_MABR <= '0'; LD_MAXR <= '0'; LD_MAR <= '0'; RW <= '0'; MMASel <= '0';
	LD_IPDR <= '1'; LD_OPDR <= '0'; push <= '0'; pop <= '1'; ipstksel <= '1';
	RF_OS <= IW(3 downto 2); IB_SEL <= "11";
	crtMCis <= MC2; MC <= MC0; 
-------------------------------------------------------------------------------
		when PUSH_IC  => 
	RST_PC <= '0'; LD_PC <= '0'; CNT_PC <= '0'; LD_IR <= '0'; 
	LD_R0 <= '0'; LD_R1 <= '0'; LD_R2 <= '0'; LD_R3 <= '0';
	LD_TXR <= '0'; LD_TYR <= '0'; LD_TK <= '0'; LD_SR <= '0'; ALU_FS <= "0000";
	LD_MABR <= '0'; LD_MAXR <= '0'; LD_MAR <= '0'; RW <= '0'; MMASel <= '0';
	LD_IPDR <= '0'; LD_OPDR <= '1'; push <= '1'; pop <= '0'; ipstksel <= '0';
	RF_OS <= IW(3 downto 2); IB_SEL <= "00";
	crtMCis <= MC2; MC <= MC0; 
-------------------------------------------------------------------------------
		when others => 
	RST_PC <= '0'; LD_PC <= '0'; CNT_PC <= '0'; LD_IR <= '0'; 
	LD_R0 <= '0'; LD_R1 <= '0'; LD_R2 <= '0'; LD_R3 <= '0';
	LD_TXR <= '0'; LD_TYR <= '0'; LD_TK <= '0'; LD_SR <= '0'; ALU_FS <= "0000";
	LD_MABR <= '0'; LD_MAXR <= '0'; LD_MAR <= '0'; RW <= '0'; MMASel <= '0';
	LD_IPDR <= '0'; LD_OPDR <= '0'; push <= '0'; pop <= '0'; ipstksel <= '0';
	RF_OS <= "00"; IB_SEL <= "00";
	crtMCis <= MC2; MC <= MC0; 
			end case;
--=============================================================================
		when MC3 => 
			case (OpCode) is
		when ADD_IC | SUB_IC | XOR_IC | AND_IC | OR_IC  => 
	RST_PC <= '0'; LD_PC <= '0'; CNT_PC <= '0'; LD_IR <= '0'; 
	LD_R0 <= '0'; LD_R1 <= '0'; LD_R2 <= '0'; LD_R3 <= '0';
	LD_TXR <= '0'; LD_TYR <= '1'; LD_TK <= '0'; LD_SR <= '0'; ALU_FS <= "0000";
	LD_MABR <= '0'; LD_MAXR <= '0'; LD_MAR <= '0'; RW <= '0'; MMASel <= '0';
	LD_IPDR <= '0'; LD_OPDR <= '0'; push <= '0'; pop <= '0'; ipstksel <= '0';
	RF_OS <= Rs2; IB_SEL <= "00";
	crtMCis <= MC3; MC <= MC4; 
-------------------------------------------------------------------------------
		when INC_IC | DEC_IC | CPY_IC | SHRA_IC | SHXL_IC | RXC_IC => 
	RST_PC <= '0'; LD_PC <= '0'; CNT_PC <= '0'; LD_IR <= '0'; 
				case (Rsd) is 
	when "00"  => LD_R0 <= '1'; LD_R1 <= '0'; LD_R2 <= '0'; LD_R3 <= '0'; 
	when "01"  => LD_R0 <= '0'; LD_R1 <= '1'; LD_R2 <= '0'; LD_R3 <= '0'; 
	when "10"  => LD_R0 <= '0'; LD_R1 <= '0'; LD_R2 <= '1'; LD_R3 <= '0'; 
	when "11"  => LD_R0 <= '0'; LD_R1 <= '0'; LD_R2 <= '0'; LD_R3 <= '1'; 
	when others => LD_R0 <= '0'; LD_R1 <= '0'; LD_R2 <= '0'; LD_R3 <= '0'; 
				end case;
	LD_TXR <= '0'; LD_TYR <= '0'; LD_TK <= '0'; LD_SR <= '1'; ALU_FS <= OpCode;
	LD_MABR <= '0'; LD_MAXR <= '0'; LD_MAR <= '0'; RW <= '0'; MMASel <= '0';
	LD_IPDR <= '0'; LD_OPDR <= '0'; push <= '0'; pop <= '0'; ipstksel <= '0';
	RF_OS <= Rsd; IB_SEL <= "01";
	crtMCis <= MC3; MC <= MC0; 
-------------------------------------------------------------------------------
		when LD_IC  => 
	RST_PC <= '0'; LD_PC <= '0'; CNT_PC <= '0'; LD_IR <= '0'; 
	LD_R0 <= '0'; LD_R1 <= '0'; LD_R2 <= '0'; LD_R3 <= '0';
	LD_TXR <= '0'; LD_TYR <= '0'; LD_TK <= '0'; LD_SR <= '0'; ALU_FS <= "0000";
	LD_MABR <= '0'; LD_MAXR <= '0'; LD_MAR <= '1'; RW <= '0'; MMASel <= '0';
	LD_IPDR <= '0'; LD_OPDR <= '0'; push <= '0'; pop <= '0'; ipstksel <= '0';
	RF_OS <= Rsd; IB_SEL <= "10";
	crtMCis <= MC3; MC <= MC4; 
-------------------------------------------------------------------------------
		when ST_IC | JUMP_IC  => 
	RST_PC <= '0'; LD_PC <= '0'; CNT_PC <= '0'; LD_IR <= '0'; 
	LD_R0 <= '0'; LD_R1 <= '0'; LD_R2 <= '0'; LD_R3 <= '0';
	LD_TXR <= '0'; LD_TYR <= '0'; LD_TK <= '0'; LD_SR <= '0'; ALU_FS <= "0000";
	LD_MABR <= '0'; LD_MAXR <= '0'; LD_MAR <= '1'; RW <= '0'; MMASel <= '0';
	LD_IPDR <= '0'; LD_OPDR <= '0'; push <= '0'; pop <= '0'; ipstksel <= '0';
	RF_OS <= Rsd; IB_SEL <= "00";
	crtMCis <= MC3; MC <= MC4; 
-------------------------------------------------------------------------------

		when others => 
	RST_PC <= '0'; LD_PC <= '0'; CNT_PC <= '0'; LD_IR <= '0'; 
	LD_R0 <= '0'; LD_R1 <= '0'; LD_R2 <= '0'; LD_R3 <= '0';
	LD_TXR <= '0'; LD_TYR <= '0'; LD_TK <= '0'; LD_SR <= '0'; ALU_FS <= "0000";
	LD_MABR <= '0'; LD_MAXR <= '0'; LD_MAR <= '0'; RW <= '0'; 
	LD_IPDR <= '0'; LD_OPDR <= '0'; push <= '0'; pop <= '0'; ipstksel <= '0';
	RF_OS <= "00"; IB_SEL <= "00";
	crtMCis <= MC3; MC <= MC0; 
			end case;
--=============================================================================
		when MC4 => 
			case (OpCode) is 
		when ADD_IC | SUB_IC | XOR_IC | AND_IC | OR_IC  => 
	RST_PC <= '0'; LD_PC <= '0'; CNT_PC <= '0'; LD_IR <= '0'; 
				case (Rsd) is 
	when "00"  => LD_R0 <= '1'; LD_R1 <= '0'; LD_R2 <= '0'; LD_R3 <= '0'; 
	when "01"  => LD_R0 <= '0'; LD_R1 <= '1'; LD_R2 <= '0'; LD_R3 <= '0'; 
	when "10"  => LD_R0 <= '0'; LD_R1 <= '0'; LD_R2 <= '1'; LD_R3 <= '0'; 
	when "11"  => LD_R0 <= '0'; LD_R1 <= '0'; LD_R2 <= '0'; LD_R3 <= '1'; 
	when others => LD_R0 <= '0'; LD_R1 <= '0'; LD_R2 <= '0'; LD_R3 <= '0'; 
				end case;
	LD_TXR <= '0'; LD_TYR <= '0'; LD_TK <= '0'; LD_SR <= '1'; ALU_FS <= OpCode;
	LD_MABR <= '0'; LD_MAXR <= '0'; LD_MAR <= '0'; RW <= '0'; MMASel <= '0';
	LD_IPDR <= '0'; LD_OPDR <= '0'; push <= '0'; pop <= '0'; ipstksel <= '0';
	RF_OS <= Rsd; IB_SEL <= "01";
	crtMCis <= MC4; MC <= MC0; 
-------------------------------------------------------------------------------
		when LD_IC  => 
	RST_PC <= '0'; LD_PC <= '0'; CNT_PC <= '0'; LD_IR <= '0'; 
				case (Rsd) is
	when "00"  => LD_R0 <= '1'; LD_R1 <= '0'; LD_R2 <= '0'; LD_R3 <= '0'; 
	when "01"  => LD_R0 <= '0'; LD_R1 <= '1'; LD_R2 <= '0'; LD_R3 <= '0'; 
	when "10"  => LD_R0 <= '0'; LD_R1 <= '0'; LD_R2 <= '1'; LD_R3 <= '0'; 
	when "11"  => LD_R0 <= '0'; LD_R1 <= '0'; LD_R2 <= '0'; LD_R3 <= '1'; 
	when others => LD_R0 <= '0'; LD_R1 <= '0'; LD_R2 <= '0'; LD_R3 <= '0'; 
				end case;
	LD_TXR <= '0'; LD_TYR <= '0'; LD_TK <= '0'; LD_SR <= '0'; ALU_FS <= "0000";
	LD_MABR <= '0'; LD_MAXR <= '0'; LD_MAR <= '0'; RW <= '0'; MMASel <= '1';
	LD_IPDR <= '0'; LD_OPDR <= '0'; push <= '0'; pop <= '0'; ipstksel <= '0';
	RF_OS <= Rsd; 
	if (MARout > x"3FD") then IB_SEL <= "11"; else IB_SEL <= "10"; end if;
	crtMCis <= MC4; MC <= MC0; 
-------------------------------------------------------------------------------
		when ST_IC  => 
	RST_PC <= '0'; LD_PC <= '0'; CNT_PC <= '0'; LD_IR <= '0'; 
	LD_R0 <= '0'; LD_R1 <= '0'; LD_R2 <= '0'; LD_R3 <= '0';
	LD_TXR <= '0'; LD_TYR <= '0'; LD_TK <= '1'; LD_SR <= '0'; ALU_FS <= "0000";
	LD_MABR <= '0'; LD_MAXR <= '0'; LD_MAR <= '0'; MMASel <= '1'; 
	LD_IPDR <= '0'; push <= '0'; pop <= '0'; ipstksel <= '0';
	RF_OS <= Rsd; IB_SEL <= "00";
		if (MARout > x"3FD") 	then RW <= '0'; LD_OPDR <= '1'; 
		else 							RW <= '1'; LD_OPDR <= '0'; end if;
	crtMCis <= MC4; MC <= MC0; 
-------------------------------------------------------------------------------
		when JUMP_IC  => 
			case (IW_CNVZ) is 
when "0000"  =>  LD_PC <= '1'; 
when "1000"  =>  if (carry    = '1') then LD_PC <= '1'; else LD_PC <= '0'; end if;
when "0100"  =>  if (negative = '1') then LD_PC <= '1'; else LD_PC <= '0'; end if;
when "0010"  =>  if (overflow = '1') then LD_PC <= '1'; else LD_PC <= '0'; end if;
when "0001"  =>  if (zero     = '1') then LD_PC <= '1'; else LD_PC <= '0'; end if;
when others => LD_PC <= '0'; 
			end case;
	RST_PC <= '0'; CNT_PC <= '0'; LD_IR <= '0'; 
	LD_R0 <= '0'; LD_R1 <= '0'; LD_R2 <= '0'; LD_R3 <= '0';
	LD_TXR <= '0'; LD_TYR <= '0'; LD_TK <= '1'; LD_SR <= '0'; ALU_FS <= "0000";
	LD_MABR <= '0'; LD_MAXR <= '0'; LD_MAR <= '0'; RW <= '0'; MMASel <= '0';
	LD_IPDR <= '0'; LD_OPDR <= '0'; push <= '0'; pop <= '0'; ipstksel <= '0';
	RF_OS <= Rsd; IB_SEL <= "00";
	crtMCis <= MC4; MC <= MC0; 
-------------------------------------------------------------------------------
		when others => 
	RST_PC <= '0'; LD_PC <= '0'; CNT_PC <= '0'; LD_IR <= '0'; 
	LD_R0 <= '0'; LD_R1 <= '0'; LD_R2 <= '0'; LD_R3 <= '0';
	LD_TXR <= '0'; LD_TYR <= '0'; LD_TK <= '0'; LD_SR <= '0'; ALU_FS <= "0000";
	LD_MABR <= '0'; LD_MAXR <= '0'; LD_MAR <= '0'; RW <= '0'; MMASel <= '0';
	LD_IPDR <= '0'; LD_OPDR <= '0'; push <= '0'; pop <= '0'; ipstksel <= '0';
	RF_OS <= "00"; IB_SEL <= "00";
	crtMCis <= MC4; MC <= MC0; 
			end case;
-------------------------------------------------------------------------------
		when others => 
	RST_PC <= '0'; LD_PC <= '0'; CNT_PC <= '0'; LD_IR <= '0'; 
	LD_R0 <= '0'; LD_R1 <= '0'; LD_R2 <= '0'; LD_R3 <= '0';
	LD_TXR <= '0'; LD_TYR <= '0'; LD_TK <= '0'; LD_SR <= '0'; ALU_FS <= "0000";
	LD_MABR <= '0'; LD_MAXR <= '0'; LD_MAR <= '0'; RW <= '0'; MMASel <= '0';
	LD_IPDR <= '0'; LD_OPDR <= '0'; push <= '0'; pop <= '0'; ipstksel <= '0';
	RF_OS <= "00"; IB_SEL <= "00";
	crtMCis <= MC5; MC <= MC0; 
		end case; 
	end if;
end process;
end dxpRISC_CU_beh;
