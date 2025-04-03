library ieee;
use ieee.std_logic_1164.all;

entity sls_fa_structural_vhdl is
	port (cin, x, y : in 	std_logic;
			sum, cout : out 	std_logic);
end sls_fa_structural_vhdl;

architecture sls_structural of sls_fa_structural_vhdl is

	component sls_not is
	port (x	: in		std_logic;
			f  : out 	std_logic);
	end component;
	
	component sls_and2 is
	port (x1, x0 : in 	std_logic;
				f	 : out 	std_logic);
	end component;
	
	component sls_or3 is
	port (x2, x1, x0 : in 	std_logic;
				f	 	  : out 	std_logic);
	end component;
	
	component sls_xor3 is
	port (x2, x1, x0 : in 	std_logic;
				f 		  : out 	std_logic);
	end component;
	
	signal z1, z2, z3 : std_logic;
	
	begin
		stage0 : sls_xor3 port map (cin, x, y, sum);
		stage1 : sls_and2 port map (cin, x, z1);
		stage2 : sls_and2 port map (cin, y, z2);
		stage3 : sls_and2 port map (x, y, z3);
		stage4 : sls_or3 port map (z1, z2, z3, cout);
end sls_structural;