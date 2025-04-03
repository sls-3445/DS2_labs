library ieee;
use ieee.std_logic_1164.all;

entity sls_8bit_add_sub_vhdl is
	generic (n: integer := 8);
	port ( x, y 		: in  std_logic_vector(n-1 downto 0);
				cin		: in  std_logic;
				sum 		: out std_logic_vector(n-1 downto 0);
				cout 		: out std_logic;
				overflow : out std_logic);
end sls_8bit_add_sub_vhdl;

architecture sls_8bit_add_sub_func of sls_8bit_add_sub_vhdl is
	signal c : std_logic_vector (n downto 0);
	begin
		
		c(0) <= cin;

		level1gen : for k in 0 to n-1 generate
		sum(k) <= (y(k) XOR cin) XOR x(k) XOR c(k);
		c(k+1) <= (x(k) AND (y(k) XOR cin)) OR (x(k) AND c(k)) OR (c(k) AND (y(k) XOR cin));
		end generate;
		
		cout <= c(n);
		overflow <= c(n) XOR c(n-1);
		
end sls_8bit_add_sub_func;