library ieee;
use ieee.std_logic_1164.all;
library sls_package;
use sls_package.sls_package.all;

entity sls_SSRM_vhdl is
	port (M_val, m_val : in std_logic_vector(7 downto 0);
			START, Clock 	: in std_logic;
			FP					: out std_logic_vector(15 downto 0);
			DONE				: buffer std_logic);
end sls_SSRM_vhdl;

architecture mixed of sls_SSRM_vhdl is
signal LD_M, M_outR, M_outL, m_lsb, adder_cout, adder_v, Rst_C, LD_C, c_dff_out, Rst_ph, LD_ph,
		 shr_out_ph, shl_out_ph, Rst_mpl, LD_mpl, ShR_mpl_ph, shr_out_mpl, shl_out_mpl: std_logic;
signal usM_val, usm_val, M_out, ph_out, M_mux_out, adder_out, ph_out, mpl_out: std_logic_vector(7 downto 0);
signal MC : std_logic_vector(1 downto 0) := "00";
signal n : std_logic_vector(2 downto 0) := "100";
begin

-- DP
M_2sc 	: sls_nbit2sc_vhdl generic map (n => 8) port map (Din => M_val, Dout => usM_val);
m_2sc 	: sls_nbit2sc_vhdl generic map (n => 8) port map (Din => m_val, Dout => usm_val);
M_Reg 	: sls_nbitSFR_vhdl generic map (n => 8)
		port map (Din => usM_val, SDinL => '0', SDinR => '0', Clock => Clock, Reset => '0', Load => LD_M, 
						 ShR => '0', ShL => '0', SDoutR => M_outR, SDoutL => M_outL, Dout => M_out);
M_Mux 	: sls_nbit_mux2to1_vhdl generic map (n => 8)
		port map (d1 => M_out, d0 => "00000000", s => m_lsb, f=> M_mux_out);
adder 	: sls_nbit_add_sub_vhdl generic map (n => 8)
		port map (x => ph_out, y => M_mux_out, cin => '0', sum => adder_out, cout => adder_cout,
						 overflow => adder_v);
c_dff 	: sls_dff_vhdl port map (d => adder_cout, Clock => Clock, Reset => Rst_C, LD => LD_C, q => c_dff_out);
ph_reg 	: sls_nbitSFR_vhdl generic map (n => 8)
		port map (Din => adder_out, SDinL => c_dff_out, SDinR => '0', Clock => Clock, Reset => Rst_ph,
					 Load => LD_ph, ShR => ShR_mpl_ph, ShL => '0', SDoutR => shr_out_ph, SDoutL => shl_out_ph, Dout => ph_out);
mPL_Reg : sls_nbitSFR_vhdl generic map (n => 8)
		port map (Din => usm_val, SDinL => shr_out_ph, SDinR => '0', Clock => Clock, Reset => Rst_mpl, Load => LD_mpl, 
					 ShR => ShR_mpl_ph, ShL => '0', SDoutR => shr_out_mpl, SDoutL => shl_out_mpl, Dout => mpl_out);----
FP <= ph_out & mpl_out;


-- CU
process
	begin wait until Clock'event and Clock = '1';
		if (MC = "00") then 
			LD_M <= '1'; LD_mpl <= '1'; Rst_C <= '1';

end mixed;