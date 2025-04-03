library ieee;
use ieee.std_logic_1164.all;

entity sls_nbit_mux4to1_vhdl_tb is end sls_nbit_mux4to1_vhdl_tb;

architecture sls_behavioral_tb of sls_nbit_mux4to1_vhdl_tb is
	component sls_nbit_mux4to1_vhdl is
		port (d3, d2, d1, d0 : in 	std_logic_vector(3 downto 0);
						s1, s0 	: in 	std_logic;
								f 	: out std_logic_vector(3 downto 0));
	end component;
	
	signal s1_tb, s0_tb : std_logic;
	signal d3_tb, d2_tb, d1_tb, d0_tb, f_tb : std_logic_vector(3 downto 0);
	
begin

cuv: sls_nbit_mux4to1_vhdl
		port map (d3_tb, d2_tb, d1_tb, d0_tb, s1_tb, s0_tb, f_tb);
		
tb		: process
		constant period : time := 20 ns;
		begin
		
		d3_tb <= "0000"; d2_tb <= "1111"; d1_tb <= "0000"; d0_tb <= "1111"; s1_tb <= '0'; s0_tb <= '0'; wait for period;
		assert (f_tb = "1111")
		report "Failed for test 1" severity error;
		
		d3_tb <= "0000"; d2_tb <= "1111"; d1_tb <= "0000"; d0_tb <= "1111"; s1_tb <= '0'; s0_tb <= '1'; wait for period;
		assert (f_tb = "0000")
		report "Failed for test 2" severity error;
		
		d3_tb <= "0101"; d2_tb <= "1010"; d1_tb <= "0101"; d0_tb <= "1010"; s1_tb <= '1'; s0_tb <= '0'; wait for period;
		assert (f_tb = "1010")
		report "Failed for test 3" severity error;
		
		d3_tb <= "0101"; d2_tb <= "1010"; d1_tb <= "0101"; d0_tb <= "1010"; s1_tb <= '1'; s0_tb <= '1'; wait for period;
		assert (f_tb = "0101")
		report "Failed for test 4" severity error;
		
		d3_tb <= "0000"; d2_tb <= "1111"; d1_tb <= "0101"; d0_tb <= "1010"; s1_tb <= '0'; s0_tb <= '0'; wait for period;
		assert (f_tb = "1010")
		report "Failed for test 5" severity error;
		
		d3_tb <= "0000"; d2_tb <= "1111"; d1_tb <= "0101"; d0_tb <= "1010"; s1_tb <= '1'; s0_tb <= '1'; wait for period;
		assert (f_tb = "0000")
		report "Failed for test 6" severity error;
		
			wait;
		end process;
end sls_behavioral_tb;