library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.sls_PSRM_package.all;
------------------------------------------------------------------------------
entity sls_PSRM_stage_vhdl is
	port (Md_Din, mr_Din, PR_Din 			   :	in		std_logic_vector(7 downto 0);
			Clock, Reset, LD_All				  	:	in 	std_logic;
			Md_Dout, mr_Dout						:	out	std_logic_vector(7 downto 0);
			PP_Dout									: 	out 	std_logic_vector(8 downto 0));
end sls_PSRM_stage_vhdl;

architecture structural of sls_PSRM_stage_vhdl is	
------------------------------------------------------------------------------			
signal Md_Dout_sig, mr_Dout_sig, and_out, PR_Dout : std_logic_vector(7 downto 0);
signal mrSDoutR, mrSDoutL, MdSDoutR, MdSDoutL, FPSDoutR, FPSDoutL, adder_v : std_logic;
begin

Md_reg	: sls_nbit_reg_vhdl generic map (n => 8)
	port map (Din => Md_Din, Ld => LD_ALL, Clock => Clock, Reset => Reset, Dout => Md_Dout_sig);

Md_Dout <= Md_Dout_sig;	

P_reg 	: sls_nbit_reg_vhdl generic map (n => 8)
	port map (Din => PR_Din, Ld => LD_ALL, Clock => Clock, Reset => Reset, Dout => PR_Dout);

mr_reg 	: sls_nbit_reg_vhdl generic map (n => 8)
	port map (Din => mr_Din, Ld => LD_ALL, Clock => Clock, Reset => Reset, Dout => mr_Dout_sig);
	
mr_Dout <= mr_Dout_sig;
	and_out <= (mr_Dout_sig(0) & mr_Dout_sig(0) & mr_Dout_sig(0) & mr_Dout_sig(0) & 
					mr_Dout_sig(0) & mr_Dout_sig(0) & mr_Dout_sig(0) & mr_Dout_sig(0)) and Md_Dout_sig;
	
adder 	: sls_nbit_add_sub_vhdl generic map (n => 8)
	port map (x => and_out, y => PR_Dout, cin => '0', sum => PP_Dout (7 downto 0), cout => PP_Dout(8), overflow => adder_v);
end structural;