library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.sls_PSRM_package.all;

entity sls_PSRM_vhdl is
	port (Md_val, mr_val : in 		std_logic_vector(3 downto 0);
			Reset, Clock 	: in 		std_logic;
			FP 				: out 	std_logic_vector(7 downto 0));
end sls_PSRM_vhdl;

architecture pipe of sls_PSRM_vhdl is
signal Md_us, mr_us				 				 	 : std_logic_vector(3 downto 0);
signal Md_Dout0, Md_Dout1, Md_Dout2, Md_Dout3 : std_logic_vector(3 downto 0);
signal mr_Dout0, mr_Dout1, mr_Dout2, mr_Dout3 : std_logic_vector(3 downto 0);
signal PP_Dout0, PP_Dout1, PP_Dout2, PP_Dout3 : std_logic_vector(4 downto 0);
signal mr_Din0, mr_Din1, mr_Din2, mr_Din3 	 : std_logic_vector(3 downto 0);
signal PP_Din0, PP_Din1, PP_Din2, PP_Din3 	 : std_logic_vector(3 downto 0);
signal Md_final, mr_final, PP_final 			 : std_logic_vector(3 downto 0);
signal twosc, twosc_R, twosc_L				 	 : std_logic;
signal FP_us 											 : std_logic_vector(7 downto 0);
signal twosc_out										 : std_logic_vector(4 downto 0);

begin


mr_Din0 <= (PP_Dout0(0) & mr_Dout0(3 downto 1));
mr_Din1 <= (PP_Dout1(0) & mr_Dout1(3 downto 1));
mr_Din2 <= (PP_Dout2(0) & mr_Dout2(3 downto 1));
mr_Din3 <= (PP_Dout3(0) & mr_Dout3(3 downto 1));
PP_Din0 <= PP_Dout0(4 downto 1);
PP_Din1 <= PP_Dout1(4 downto 1);
PP_Din2 <= PP_Dout2(4 downto 1);
PP_Din3 <= PP_Dout3(4 downto 1);

Md_2sc 	: sls_nbit_2sc_in_vhdl generic map (n => 4)
	port map (Din => Md_val, Dout => Md_us);
mr_2sc 	: sls_nbit_2sc_in_vhdl generic map (n => 4)
	port map (Din => mr_val, Dout => mr_us);
	
stage0 	: sls_PSRM_stage_vhdl
	port map (Md_Din => Md_us, mr_Din => mr_us, PR_Din => "0000", Clock => Clock,
				 Reset => Reset, LD_ALL => '1', Md_Dout => Md_Dout0, mr_Dout => mr_Dout0, PP_Dout => PP_Dout0);
			
stage1 	: sls_PSRM_stage_vhdl
	port map (Md_Din => Md_Dout0, mr_Din => mr_Din0, PR_Din => PP_Din0,
				 Clock => Clock, Reset => Reset, LD_ALL => '1', Md_Dout => Md_Dout1, mr_Dout => mr_Dout1, PP_Dout => PP_Dout1);

stage2 	: sls_PSRM_stage_vhdl
	port map (Md_Din => Md_Dout1, mr_Din => mr_Din1, PR_Din => PP_Din1,
				 Clock => Clock, Reset => Reset, LD_ALL => '1', Md_Dout => Md_Dout2, mr_Dout => mr_Dout2, PP_Dout => PP_Dout2);
	
stage3 	: sls_PSRM_stage_vhdl
	port map (Md_Din => Md_Dout2, mr_Din => mr_Din2, PR_Din => PP_Din2,
				 Clock => Clock, Reset => Reset, LD_ALL => '1', Md_Dout => Md_Dout3, mr_Dout => mr_Dout3, PP_Dout => PP_Dout3);	

MD_Reg	: sls_nbit_reg_vhdl generic map (n => 4)
	port map (Din => Md_Dout3, Ld => '1', Clock => Clock, Reset => Reset, Dout => Md_final);

PP_Reg 	: sls_nbit_reg_vhdl generic map (n => 4)
	port map (Din => PP_Din3, Ld => '1', Clock => Clock, Reset => Reset, Dout => PP_final);
	
mr_Reg 	: sls_nbit_reg_vhdl generic map (n => 4)
	port map (Din => mr_Din3, Ld => '1', Clock => Clock, Reset => Reset, Dout => mr_final);

twosc <= Md_val(3) XOR mr_val(3);
	
twosc_Reg : sls_nBitSFR_vhdl generic map (n => 5)
	port map (Din => "00000", SDinL => twosc, SDinR => '0', Clock => Clock, Reset => Reset, Load => '0', ShR => '1',
				 ShL => '0', SDoutR => twosc_R, SDoutL => twosc_L, Dout => twosc_out);
	
	FP_us <= PP_final & mr_final;
f_2sc		: sls_nbit_2sc_out_vhdl generic map (n => 8)
	port map (twosc_in => twosc_R, Din => FP_us, Dout => FP);

end pipe;
