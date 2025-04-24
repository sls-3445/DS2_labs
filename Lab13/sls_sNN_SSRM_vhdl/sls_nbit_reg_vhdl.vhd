library ieee;
use ieee.std_logic_1164.all;

entity sls_nbit_reg_vhdl is
	generic (n : integer := 4);
	port (Reset, Clock, Ld 	: in  std_logic;
			Din 					: in  std_logic_vector(n-1 downto 0);
			Dout 					: out std_logic_vector(n-1 downto 0));
end sls_nbit_reg_vhdl;

architecture beh of sls_nbit_reg_vhdl is
begin
	process (Clock)
	begin
		if Clock'event and Clock = '1' then
			if 	(Reset = '1') then Dout <= (others => '0');
			elsif (Ld = '1') then Dout <= Din;
			end if;
		end if;
	end process;
end beh;