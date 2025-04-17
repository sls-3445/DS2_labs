------------------------------------------------------------------------------
-- This is a 4x4-bit Pipelined Shift Left Multiplier (PSLM).
-- The data path is described structurally.
-- Ordinarily there would be a control unit, but because in this case there 
-- are only two control signals necessary, it is not implemented. The 
-- assumption is that the higher hierarchical module in which this will be 
-- embedded will generate these two signals.
-- Dorin Patru April 2020.
------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.dxp_package.all;
------------------------------------------------------------------------------
entity dxp_PSLM_vhdl is
	port (Md_val, mr_val : in 		std_logic_vector(3 downto 0);
			Reset, Clock 	: in 		std_logic;
			FP 				: out 	std_logic_vector(7 downto 0));
end dxp_PSLM_vhdl;

architecture pipe of dxp_PSLM_vhdl is
------------------------------------------------------------------------------
signal mr_shr_out_0, mr_shr_out_1, mr_shr_out_2, 
				mr_shr_out_3 : std_logic_vector(3 downto 0);
signal Md_shl_out_0, Md_shl_out_1, Md_shl_out_2, 
				Md_shl_out_3 : std_logic_vector(7 downto 0);
signal PP_out_0, PP_out_1, PP_out_2, PP_out_3 : std_logic_vector(7 downto 0);
signal Md_val_ext : std_logic_vector(7 downto 0);
signal LD_All : std_logic;
------------------------------------------------------------------------------
begin
------------------------------------------------------------------------------
-- Strucutral description of the pipeline data path (DP)	
------------------------------------------------------------------------------
	Md_val_ext <= ("0000" & Md_val);
	LD_All <= not Reset;

	stage0 : dxp_PSLM_stage_vhdl 
		port map (mr_val, Md_val_ext, "00000000", Clock, Reset, 
										LD_All, mr_shr_out_0, Md_shl_out_0, PP_out_0);
	stage1 : dxp_PSLM_stage_vhdl 
		port map (mr_shr_out_0, Md_shl_out_0, PP_out_0, Clock, Reset, 
										LD_All, mr_shr_out_1, Md_shl_out_1, PP_out_1);
	stage2 : dxp_PSLM_stage_vhdl 
		port map (mr_shr_out_1, Md_shl_out_1, PP_out_1, Clock, Reset, 
										LD_All, mr_shr_out_2, Md_shl_out_2, PP_out_2);
	stage3 : dxp_PSLM_stage_vhdl 
		port map (mr_shr_out_2, Md_shl_out_2, PP_out_2, Clock, Reset, 
										LD_All, mr_shr_out_3, Md_shl_out_3, PP_out_3);
	FP <= PP_out_3;
------------------------------------------------------------------------------
end pipe;
