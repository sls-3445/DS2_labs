------------------------------------------------------------------------------
-- This is a 4x4-bit Sequential Shift Left Multiplier (SSLM).
-- The data path is described structurally.
-- The control unit is described behaviorally.
-- Dorin Patru April 2020.
------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.dxp_package.all;
------------------------------------------------------------------------------
entity dxp_SSLM_vhdl is
	port (Md_val, mr_val : in 		std_logic_vector(3 downto 0);
			START, Clock 	: in 		std_logic;
			FP 				: out 	std_logic_vector(7 downto 0);
			DONE 				: buffer std_logic);
end dxp_SSLM_vhdl;

architecture mixed of dxp_SSLM_vhdl is
------------------------------------------------------------------------------
signal MdSDoutR, MdSDoutL, mrSDoutR, mrSDoutL, FPSDoutR, FPSDoutL : std_logic;
signal MdDout, MuxDout, PP_val, FPDout, Md_val_ext : std_logic_vector(7 downto 0);
signal mrDout : std_logic_vector(3 downto 0);
signal LD_Md, MdShL, LD_mr, mrShR, RST_FP, LD_FP : std_logic;
signal MC : std_logic_vector(1 downto 0) := "00";
signal n : std_logic_vector(2 downto 0) := "100";
				--Above: n is equal to the width of the multiplier
begin
------------------------------------------------------------------------------
-- Strucutral description of the data path (DP)	
------------------------------------------------------------------------------
	Md_val_ext <= ("0000" & Md_val);
Md_Reg :	dxp_nBitSFR_vhdl 	generic map (n => 8) 
	port map (Md_val_ext, '0', '0', Clock, '0', LD_Md, '0', MdShL, MdSDoutR, MdSDoutL, MdDout);
mr_Reg :	dxp_nBitSFR_vhdl 	generic map (n => 4) 
	port map (mr_val, '0', '0', Clock, '0', LD_mr, mrShR, '0', mrSDoutR, mrSDoutL, mrDout);
M_mux	 :	dxp_nbit2to1mux_vhdl generic map (n => 8) 
	port map (mrSDoutR, "00000000", MdDout, MuxDout);
FP_Reg :	dxp_nBitSFR_vhdl	generic map (n => 8) 
	port map (PP_val, '0', '0', Clock, RST_FP, LD_FP, '0', '0', FPSDoutR, FPSDoutL, FPDout);
		
PP_val <= MuxDout + FPDout; --You have to instantiate your adder here!!!
	
FP <= FPDout;

-------------------------------------------------------------------------------	
-- Behavioral description of the control unit (CU)	
-------------------------------------------------------------------------------
process
	begin WAIT UNTIL Clock'EVENT AND Clock = '1';
		if (MC = "00") then --Initialization
			LD_Md <= '1'; MdShL <= '0'; --Md_reg control signals
			LD_mr <= '1'; mrShR <= '0'; --mr_reg control signals
			RST_FP <= '1'; LD_FP <= '0'; --FP_reg control signals
			n <= "100"; --Initialize the iteration counter value
			DONE <= '0'; --Reset the user control output DONE
			if (START = '1') then MC <= "01"; else MC <= "00"; end if;
				--Above: Decide which MC is to be executed next
		elsif (MC = "01") then --Add
			LD_Md <= '0'; MdShL <= '0'; --Md_reg control signals
			LD_mr <= '0'; mrShR <= '0'; --mr_reg control signals
			RST_FP <= '0'; LD_FP <= '1'; --FP_reg control signals
			n <= n; --n doesn't change in this MC
			DONE <= '0'; --DONE doesn't change in this MC
			MC <= "10";  --Proceed unconditionally to MC2
		elsif (MC = "10") then --Shift
			LD_Md <= '0'; MdShL <= '1'; --Md_reg control signals
			LD_mr <= '0'; mrShR <= '1'; --mr_reg control signals
			RST_FP <= '0'; LD_FP <= '0'; --FP_reg control signals
			n <= n - '1'; --Decrement n
			DONE <= '0'; --DONE doesn't change in this MC
			if (n = "000") then MC <= "11"; else MC <= "01"; end if;
				--Above: Decide which MC is to be executed next
		elsif (MC = "11") then --Done
			LD_Md <= '0'; MdShL <= '0'; --Md_reg control signals
			LD_mr <= '0'; mrShR <= '0'; --mr_reg control signals
			RST_FP <= '0'; LD_FP <= '0'; --FP_reg control signals
			n <= n; --n doesn't change in this MC
			DONE <= '1'; --Assert DONE to indicate the end of the multiplication
			MC <= "00";  --Return to MC0
		end if;
	end process;
------------------------------------------------------------------------------
end mixed;
