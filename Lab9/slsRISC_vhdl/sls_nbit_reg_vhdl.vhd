library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use work.sls_package.all;

entity sls_nbit_reg_vhdl is
	generic (n : integer := 8);
	port (d : in std_logic_vector(n-1 downto 0);
	ld, reset, clock : in std_logic;
	q : buffer std_logic_vector(n-1 downto 0));
end sls_nbit_reg_vhdl;

architecture sls_nbit_reg_beh of sls_nbit_reg_vhdl is
begin
process begin
	WAIT UNTIL clock'EVENT AND clock ='1';
			if (reset = '1') then q <= (others => '0');
			elsif (ld = '1') then q <= d;
			else q <= q; 
			end if;
		end process;
end sls_nbit_reg_beh;