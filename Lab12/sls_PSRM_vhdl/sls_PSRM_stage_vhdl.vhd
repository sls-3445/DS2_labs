library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.sls_PSRM_package.all;
------------------------------------------------------------------------------
entity sls_PSLM_stage_vhdl is
	port (Md_Din, mr_Din, PP_Din 				:	in		std_logic_vector(3 downto 0);
			Clock, Reset, LD_All, PP_cin  	:	in 	std_logic;
			Md_Dout, PP_Dout						:	out	std_logic_vector(3 downto 0)
			PP_cout 									: 	out 	std_logic);
end sls_PSLM_stage_vhdl;

architecture structural of sls_PSLM_stage_vhdl is	
------------------------------------------------------------------------------			
signal and_out, Md_Dout, FP_Dout : std_logic_vector(7 downto 0);
signal mr_Dout : std_logic_vector(3 downto 0);
signal mrSDoutR, mrSDoutL, MdSDoutR, MdSDoutL, FPSDoutR, FPSDoutL : std_logic;
begin
------------------------------------------------------------------------------
-- The registers
------------------------------------------------------------------------------

Md_reg	: sls_nBitSFR_vhdl generic map (n => 4)
	port map (Din => Md_Din, SDinL => '0', SDinR => '0', Clock => Clock, Reset => Reset, Load => LD_ALL, 
				 ShR => '0', ShL => '0', SDoutR => MdSDoutR, SDoutL => MdSDoutL, Dout => Md_Dout);

mr_reg 	: sls_nBitSFR_vhdl generic map (n => 4)
	port map (Din => mr_Din, SDinL => PP_cin, SDinR => '0', Clock => Clock, Reset => Reset, Load => LD_ALL,
				 ShR => 
				 
-------------------------------------------------------------------------------
-- Instead of the MUX in the SSLM, I use here a BIT-WISE AND. The left operand 
-- is generated by using the replication operator, i.e. it replicates 
-- mr_Dout[0] 8 times.
-------------------------------------------------------------------------------
	and_out <= (mr_Dout(0) & mr_Dout(0) & mr_Dout(0) & mr_Dout(0) & 
				mr_Dout(0) & mr_Dout(0) & mr_Dout(0) & mr_Dout(0)) and Md_Dout;
-------------------------------------------------------------------------------
-- The stage output assignments
-------------------------------------------------------------------------------
	PP_out <= and_out + FP_Dout; --You have to instantiate your adder here!!!
	mr_shr_out <= ('0' & mr_Dout(3 downto 1));
	Md_shl_out <= (Md_Dout(6 downto 0) & '0');
-------------------------------------------------------------------------------
end structural;
