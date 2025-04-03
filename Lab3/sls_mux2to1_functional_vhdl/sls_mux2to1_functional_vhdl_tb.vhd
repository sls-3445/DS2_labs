library ieee;
use ieee.std_logic_1164.all;

entity sls_mux2to1_behavioral_vhdl_tb is
end sls_mux2to1_behavioral_vhdl_tb;

architecture sls_behavioral_tb of sls_mux2to1_behavioral_vhdl_tb is
	component sls_mux2to1_behavioral_vhdl
	port (x1, x0, s : in  	std_logic;
					f   : out	std_logic);
	end component;
	
	signal x1_tb, x0_tb, s_tb, f_tb : std_logic;
begin
cuv: sls_mux2to1_behavioral_vhdl
			port map (x1_tb, x0_tb, s_tb, f_tb);
tb	: process
	constant period : time := 20 ns;
	begin
	
	x1_tb <= '0'; x0_tb <= '0'; s_tb <= '0'; wait for period;
	assert (f_tb = '0')
	report "test failed for input combination 000" severity error;
	
	x1_tb <= '0'; x0_tb <= '0'; s_tb <= '1'; wait for period;
	assert (f_tb = '0')
	report "test failed for input combination 001" severity error;
	
	x1_tb <= '0'; x0_tb <= '1'; s_tb <= '0'; wait for period;
	assert (f_tb = '1')
	report "test failed for input combination 010" severity error;
	
	x1_tb <= '0'; x0_tb <= '1'; s_tb <= '1'; wait for period;
	assert (f_tb = '0')
	report "test failed for input combination 011" severity error;
	
	x1_tb <= '1'; x0_tb <= '0'; s_tb <= '0'; wait for period;
	assert (f_tb = '0')
	report "test failed for input combination 100" severity error;
	
	x1_tb <= '1'; x0_tb <= '0'; s_tb <= '1'; wait for period;
	assert (f_tb = '1')
	report "test failed for input combination 101" severity error;
	
	x1_tb <= '1'; x0_tb <= '1'; s_tb <= '0'; wait for period;
	assert (f_tb = '1')
	report "test failed for input combination 110" severity error;
	
	x1_tb <= '1'; x0_tb <= '1'; s_tb <= '1'; wait for period;
	assert (f_tb = '1')
	report "test failed for input combination 111" severity error;
		wait;
	end process;
end sls_behavioral_tb;
	