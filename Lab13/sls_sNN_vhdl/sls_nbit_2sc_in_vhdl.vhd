library ieee;
use ieee.std_logic_1164.all;
use work.sls_PSRM_package.all;

entity sls_nbit_2sc_in_vhdl is
	generic (n : integer := 8);
	port(Din 	: in 	std_logic_vector(n-1 downto 0);
		  Dout 	: out std_logic_vector(n-1 downto 0));
end sls_nbit_2sc_in_vhdl;

architecture struc of sls_nbit_2sc_in_vhdl is
signal c 	  : std_logic_vector(n downto 0);
signal inv 	  : std_logic_vector(n-1 downto 0);
signal D_temp : std_logic_vector(n-1 downto 0);
begin
	c(0) <= '1';
	twosc : for k in 0 to n-1 generate
		stage0 : sls_not port map (x => Din(k), f => inv(k));
		stage1 : sls_xor2 port map (x1 => inv(k), x2 => c(k), f => D_Temp(k));
		stage2 : sls_and2 port map (x1 => inv(k), x2 => c(k), f => c(k+1));
	end generate;
	Dout <= D_temp when (Din(n-1) = '1') else Din;
--	mux : sls_nbit_mux2to1_vhdl generic map (n => n) port map (d1 => D_temp, d0 => Din, s => Din(n-1), f => Dout);
end struc;
