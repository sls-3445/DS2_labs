library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use work.sls_RISC_package.all;
--=============================================================================
-- Entity, and input and output ports declarations
--=============================================================================
entity slsRISC_vhdl is
	port (Reset, Clock, PB1 : in std_logic;
			SW : in std_logic_vector(3 downto 0);
			LEDs : buffer std_logic_vector(7 downto 0);
			ICis : out std_logic_vector(95 downto 0);
			crtMCis : out std_logic_vector(2 downto 0));
end slsRISC_vhdl;
--=============================================================================
-- The Architecture
--=============================================================================
architecture slsRISC_struc of slsRISC_vhdl is
--=============================================================================
-- Internal signals declarations
--=============================================================================
signal IW : std_logic_vector(7 downto 0);
signal MAR_din, MARout : std_logic_vector(9 downto 0);
signal SR_CNVZ, ALU_FS : std_logic_vector(3 downto 0);
signal RST_PC, LD_PC, CNT_PC, LD_IR, LD_R0, LD_R1, LD_R2, LD_R3,
	LD_TXR, LD_TYR, LD_TK, LD_SR, LD_MABR, LD_MAXR, LD_MAR, RW, MMASel,  
	LD_IPDR, LD_OPDR, push, pop, ipstksel : std_logic;
signal RF_SD_OS, RF_S_OS, WB_SEL : std_logic_vector(1 downto 0);
begin
--=============================================================================
-- The DP instance - described structuraly at the lower hierarchical level.
--=============================================================================
DP : slsRISC_DP_vhdl port map 
	(Reset => Reset, Clock => Clock, PB1 => PB1,  
	RST_PC => RST_PC, LD_PC => LD_PC, CNT_PC => CNT_PC, LD_IR => LD_IR, LD_R0 => LD_R0, LD_R1 => LD_R1, LD_R2 => LD_R2, LD_R3 => LD_R3,
	LD_SR => LD_SR, LD_MABR => LD_MABR, LD_MAXR => LD_MAXR, LD_MAR => LD_MAR, RW => RW, MMASel => MMASel, 
	LD_IPDR => LD_IPDR, LD_OPDR => LD_OPDR, push => push, pop => pop, ipstksel => ipstksel, 
	RF_SD_OS => RF_SD_OS, RF_S_OS => RF_S_OS, WB_SEL => WB_SEL, SW => SW, ALU_FS => ALU_FS, LEDs => LEDs,
	IW => IW, SR_CNVZ => SR_CNVZ, MAR_din => MAR_din, MARout => MARout);
--=============================================================================
-- The CU instance - described behavioraly at the lower hierarchical level.
--=============================================================================
CU : slsRISC_CU_vhdl port map 
	(Reset => Reset, Clock => Clock, IW => IW, SR_CNVZ => SR_CNVZ, MAR_din => MAR_din, MARout => MARout, 
	RST_PC => RST_PC, LD_PC => LD_PC, CNT_PC => CNT_PC, LD_IR => LD_IR, LD_R0 => LD_R0, LD_R1 => LD_R1, LD_R2 => LD_R2, LD_R3 => LD_R3,
	LD_SR => LD_SR, LD_MABR => LD_MABR, LD_MAXR => LD_MAXR, LD_MAR => LD_MAR, RW => RW, MMASel => MMASel, 
	LD_IPDR => LD_IPDR, LD_OPDR => LD_OPDR, push => push, pop => pop, 
	ipstksel => ipstksel, RF_SD_OS => RF_SD_OS, RF_S_OS => RF_S_OS, WB_SEL => WB_SEL, ALU_FS => ALU_FS, crtMCis => crtMCis);
--=============================================================================
-- This instance is converting the IW information into a string of ASCII 
-- characters. This is ONLY needed for debugging purposes. It should be 
-- commented out or eliminated when compiling/ synthesizing for FPGA 
-- implementation. It is described behaviorally at the lower hierarchical level.
--=============================================================================	
ICdecode : sls_IW2ASCII_vhdl port map (IW => IW, Reset => Reset, Clock => Clock, ICis => ICis);

end slsRISC_struc;
