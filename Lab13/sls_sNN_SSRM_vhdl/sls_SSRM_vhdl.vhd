library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.sls_package.all;
use work.sls_SSRM_package.all;

entity sls_SSRM_vhdl is
	port (M_val, mp_val : in std_logic_vector(7 downto 0);
			START, Clock 	: in std_logic;
			FP					: out std_logic_vector(15 downto 0);
			DONE				: buffer std_logic);
end sls_SSRM_vhdl;

architecture mixed of sls_SSRM_vhdl is
signal LD_M, M_outR, M_outL, adder_cout, adder_v, Rst_C, LD_C, c_dff_out, Rst_ph, LD_ph, LD_mpl_dff, mpl_dff_out,
		 Rst_mpl_dff, shr_out_ph, shl_out_ph, Rst_mpl, LD_mpl, ShR_mpl_ph, shr_out_mpl, shl_out_mpl: std_logic;
signal MC : std_logic_vector(1 downto 0) := "00";
signal n : std_logic_vector(2 downto 0) := "111";
signal usM_val, usmp_val, M_out, ph_out, M_mux_out, adder_out, mpl_out: std_logic_vector(7 downto 0);
signal FP_us : std_logic_vector(15 downto 0);
begin

-- DP
M_2sc 	: sls_nbit_2sc_in_vhdl generic map (n => 8) port map (Din => M_val, Dout => usM_val);
mp_2sc 	: sls_nbit_2sc_in_vhdl generic map (n => 8) port map (Din => mp_val, Dout => usmp_val);
M_Reg 	: sls_nbitSFR_vhdl generic map (n => 8)
		port map (Din => usM_val, SDinL => '0', SDinR => '0', Clock => Clock, Reset => '0', Load => LD_M, 
						 ShR => '0', ShL => '0', SDoutR => M_outR, SDoutL => M_outL, Dout => M_out);
M_Mux 	: sls_nbit_mux2to1_vhdl generic map (n => 8)
		port map (d1 => M_out, d0 => "00000000", s => shr_out_mpl, f=> M_mux_out);
adder 	: sls_nbit_add_sub_vhdl generic map (n => 8)
		port map (x => ph_out, y => M_mux_out, cin => '0', sum => adder_out, cout => adder_cout,
						 overflow => adder_v);
c_dff 	: sls_dff_vhdl port map (d => adder_cout, Clock => Clock, Reset => Rst_C, LD => LD_C, q => c_dff_out);
ph_reg 	: sls_nbitSFR_vhdl generic map (n => 8)
		port map (Din => adder_out, SDinL => c_dff_out, SDinR => '0', Clock => Clock, Reset => Rst_ph,
					 Load => LD_ph, ShR => ShR_mpl_ph, ShL => '0', SDoutR => shr_out_ph, SDoutL => shl_out_ph, Dout => ph_out);
mPL_Reg : sls_nbitSFR_vhdl generic map (n => 8)
		port map (Din => usmp_val, SDinL => shr_out_ph, SDinR => '0', Clock => Clock, Reset => Rst_mpl, Load => LD_mpl, 
					 ShR => ShR_mpl_ph, ShL => '0', SDoutR => shr_out_mpl, SDoutL => shl_out_mpl, Dout => mpl_out);
mPL_dff : sls_dff_vhdl port map (d => shr_out_mpl, Clock => Clock, Reset => Rst_mpl_dff, LD => LD_mPL_dff, q => mpl_dff_out);
FP_us <= ph_out & mpl_out;
FP_2sc  : sls_nbit_2sc_out_vhdl generic map (n => 16)
		port map (M_msb => M_val(7), mp_msb => mp_val(7), Din => FP_us, Dout => FP);


-- CU
process
	begin wait until Clock'event and Clock = '1';
		DONE <= '0'; LD_M <= '0'; Rst_C <= '0'; Rst_mpl <= '0'; Rst_ph <= '0'; LD_mpl_dff <= '0'; Rst_mpl_dff <= '0';
		LD_C <= '0'; LD_ph <= '0'; Rst_mpl <= '0'; LD_mpl <= '0'; ShR_mpl_ph <= '0';
		if (MC = "00") then 
			LD_M <= '1'; LD_mpl <= '1'; Rst_C <= '1'; n <= "111";
			Rst_PH <= '1'; Rst_mpl <= '1'; Rst_mpl_dff <= '1';
			if (START = '1') then 
				MC <= "01";
				Rst_mpl <= '0';
				end if;
		
		elsif (MC = "01") then
			if (n = "111") then LD_mpl <= '1'; end if;
			LD_ph <= '1'; LD_C <= '1'; LD_mpl_dff <= '1'; MC <= "10";
		
		elsif (MC = "10") then
			ShR_mpl_ph <= '1';
			LD_mpl_dff <= '0';
			n <= n - '1';
			
			if (n = "000") then MC <= "11";
			else MC <= "01";
			end if;
		
		elsif (MC = "11") then
			DONE <= '1';
			MC <= "00";
		end if;
end process;
end mixed;








