library ieee;
use ieee.std_logic_1164.all;

entity sls_nbit_2sc_out_vhdl is
	generic (n : integer := 8);
	port (M_msb, mp_msb : in  std_logic;
		  Din 			: in 	std_logic_vector(n-1 downto 0);
		  Dout 			: out std_logic_vector(n-1 downto 0));
end sls_nbit_2sc_out_vhdl;

architecture beh of sls_nbit_2sc_out_vhdl is
signal c : std_logic_vector(n downto 0);
begin
process (Din, M_msb, mp_msb)
	begin
		if ((M_msb xor mp_msb) = '0') then Dout <= Din;
		else
			c(0) <= '1';
			for k in 0 to n-1 loop
				if (Din(k) = '0') then
					if (c(k) = '0') then dout(k) <= '1'; c(k+1) <= '0';
					elsif (c(k) <= '1') then dout (k) <= '0'; c(k+1) <= '1';
					end if;
				elsif (Din(k) = '1') then
					c(k+1) <= '0';
					if (c(k) = '0') then dout(k) <= '0';
					elsif (c(k) = '1') then dout(k) <= '1';
					end if;
				end if;
			end loop;	
		end if;
end process;
end beh;
