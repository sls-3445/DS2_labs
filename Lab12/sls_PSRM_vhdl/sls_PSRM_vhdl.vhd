library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.sls_PSRM_package.all;

entity sls_PSLM_vhdl is
	port (Md_val, mr_val : in 		std_logic_vector(3 downto 0);
			Reset, Clock 	: in 		std_logic;
			FP 				: out 	std_logic_vector(7 downto 0));
end sls_PSLM_vhdl;

architecture pipe of sls_PSLM_vhdl is

signal mr_shr_out_0, mr_shr_out_1, mr_shr_out_2, 
				mr_shr_out_3 : std_logic_vector(3 downto 0);
signal PP_out_0, PP_out_1, PP_out_2, PP_out_3 : std_logic_vector(7 downto 0);
signal Md_val_ext : std_logic_vector(7 downto 0);
signal LD_All : std_logic;


begin

	Md_2sc 	: sls_nbit_2sc_in_vhdl generic map (n => 4)
		port map (Din => Md_val, Dout => Md_us);
	mr_2sc 	: sls_nbit_2sc_in_vhdl generic map (n => 4)
		port map (Din => mr_val, Dout => mr_us);
	
	stage0 	: sls_PSRM_stage_vhdl
		port map (
		
		
end pipe;