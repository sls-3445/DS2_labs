library ieee;
use ieee.std_logic_1164.all;

entity sls_fa_structural_vhdl_tb is
end sls_fa_structural_vhdl_tb;

architecture sls_behavioral_tb of sls_fa_structural_vhdl_tb is
	component sls_fa_structural_vhdl
	port (cin, x, y : in 	std_logic;
			sum, cout : out 	std_logic);
	end component;
	
	signal cin_tb, x_tb, y_tb, sum_tb, cout_tb : std_logic;
begin

cuv: sls_fa_structural_vhdl
		port map (cin_tb, x_tb, y_tb, sum_tb, cout_tb);
		
tb : 	process
	constant period : time := 20 ns;
	begin
	
	cin_tb <= '0'; x_tb <= '0'; y_tb <= '0'; wait for period;
	assert ((sum_tb = '0') and (cout_tb = '0'))
	report "test failed for input combination 000" severity error;
	
	cin_tb <= '0'; x_tb <= '0'; y_tb <= '1'; wait for period;
	assert ((sum_tb = '1') and (cout_tb = '0'))
	report "test failed for input combination 001" severity error;
	
	cin_tb <= '0'; x_tb <= '1'; y_tb <= '0'; wait for period;
	assert ((sum_tb = '1') and (cout_tb = '0'))
	report "test failed for input combination 010" severity error;
	
	cin_tb <= '0'; x_tb <= '1'; y_tb <= '1'; wait for period;
	assert ((sum_tb = '0') and (cout_tb = '1'))
	report "test failed for input combination 011" severity error;
	
	cin_tb <= '1'; x_tb <= '0'; y_tb <= '0'; wait for period;
	assert ((sum_tb = '1') and (cout_tb = '0'))
	report "test failed for input combination 100" severity error;
	
	cin_tb <= '1'; x_tb <= '0'; y_tb <= '1'; wait for period;
	assert ((sum_tb = '0') and (cout_tb = '1'))
	report "test failed for input combination 101" severity error;
	
	cin_tb <= '1'; x_tb <= '1'; y_tb <= '0'; wait for period;
	assert ((sum_tb = '0') and (cout_tb = '1'))
	report "test failed for input combination 110" severity error;
	
	cin_tb <= '1'; x_tb <= '1'; y_tb <= '1'; wait for period;
	assert ((sum_tb = '1') and (cout_tb = '1'))
	report "test failed for input combination 111" severity error;
		wait;
	end process;
end sls_behavioral_tb;
	