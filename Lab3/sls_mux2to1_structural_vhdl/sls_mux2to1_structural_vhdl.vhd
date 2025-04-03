library ieee;
use ieee.std_logic_1164.all;

entity sls_mux2to1_structural_vhdl is
	port (x1, x0, s :	in 	std_logic ;
				f		 : out 	std_logic );
end sls_mux2to1_structural_vhdl;


architecture sls_structural of sls_mux2to1_structural_vhdl is
	
	component sls_not is
	port (x	: in		std_logic;
			f  : out 	std_logic);
	end component;
	
	component sls_and2 is
	port (x1, x0 : in 	std_logic;
				f	 : out 	std_logic);
	end component;
	
	component sls_or2 is
	port (x1, x0 : in 	std_logic;
				f	 : out 	std_logic);
	end component;
	
	signal k, g, h : std_logic;
	
	begin
		stage0 : sls_not port map (s, k);
		stage1 : sls_and2 port map (k, x0, g);
		stage2 : sls_and2 port map (s, x1, h);
		stage3 : sls_or2 port map (g, h, f);
end sls_structural;