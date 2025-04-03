library ieee;
use ieee.std_logic_1164.all;

entity sls_nbit_add_sub_vhdl_tb is end sls_nbit_add_sub_vhdl_tb;

architecture sls_behavioral_tb of sls_nbit_add_sub_vhdl_tb is
	component sls_nbit_add_sub_vhdl is
		port ( x, y 	: in  std_logic_vector(7 downto 0);
					cin	: in  std_logic;
					sum 	: out std_logic_vector(7 downto 0);
					cout 	: out std_logic);
	end component;
	
	signal cin_tb, cout_tb : std_logic;
	signal x_tb, y_tb, sum_tb : std_logic_vector(7 downto 0);
	
begin

cuv: sls_nbit_add_sub_vhdl
		port map (x_tb, y_tb, cin_tb, sum_tb, cout_tb);
		
tb		: process
		constant period : time := 20 ns;
		begin
		
		x_tb <= "00000000"; y_tb <= "00000000"; cin_tb <= '0'; wait for period;
		assert ((sum_tb = "00000000") AND (cout_tb = '0'))
		report "Failed for test 1" severity error;
		
		x_tb <= "11111111"; y_tb <= "11111111"; cin_tb <= '0'; wait for period;
		assert ((sum_tb = "11111110") AND (cout_tb = '1'))
		report "Failed for test 2" severity error;

		x_tb <= "01010101"; y_tb <= "01010101"; cin_tb <= '0'; wait for period;
		assert ((sum_tb = "10101010") AND (cout_tb = '0'))
		report "Failed for test 3" severity error;
		
		x_tb <= "10101010"; y_tb <= "10101010"; cin_tb <= '0'; wait for period;
		assert ((sum_tb = "01010100") AND (cout_tb = '1'))
		report "Failed for test 4" severity error;
		
		x_tb <= "01010101"; y_tb <= "10101010"; cin_tb <= '0'; wait for period;
		assert ((sum_tb = "11111111") AND (cout_tb = '0'))
		report "Failed for test 5" severity error;
		
		
		x_tb <= "00000000"; y_tb <= "00000000"; cin_tb <= '1'; wait for period;
		assert ((sum_tb = "00000000") AND (cout_tb = '1'))
		report "Failed for test 6" severity error;
		
		x_tb <= "11111111"; y_tb <= "11111111"; cin_tb <= '1'; wait for period;
		assert ((sum_tb = "00000000") AND (cout_tb = '1'))
		report "Failed for test 7" severity error;
		
		x_tb <= "01010101"; y_tb <= "01010101"; cin_tb <= '1'; wait for period;
		assert ((sum_tb = "00000000") AND (cout_tb = '1'))
		report "Failed for test 8" severity error;
		
		x_tb <= "10101010"; y_tb <= "10101010"; cin_tb <= '1'; wait for period;
		assert ((sum_tb = "00000000") AND (cout_tb = '1'))
		report "Failed for test 9" severity error;
		
		x_tb <= "01010101"; y_tb <= "10101010"; cin_tb <= '1'; wait for period;
		assert ((sum_tb = "10101011") AND (cout_tb = '0'))
		report "Failed for test 10" severity error;
		
			wait;
		end process;
end sls_behavioral_tb;