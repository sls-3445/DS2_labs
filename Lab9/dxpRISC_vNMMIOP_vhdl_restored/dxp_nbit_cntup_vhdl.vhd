library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use work.dxp_package.all;

entity dxp_nbit_cntup_vhdl is
	generic (n : integer := 8);
	port (d : in std_logic_vector(n-1 downto 0);
	ld, reset, cntup, clock : in std_logic;
	q : buffer std_logic_vector(n-1 downto 0));
end dxp_nbit_cntup_vhdl;

architecture dxp_nbit_cntup_beh of dxp_nbit_cntup_vhdl is
-- n-bit register
begin
process begin
------------------------------------------------------------------------------
-- The WAIT UNTIL statement excludes/replaces the sensitivity list.  The 
-- 	process is not entered until a clock rising edge is detected.
------------------------------------------------------------------------------
	WAIT UNTIL clock'EVENT AND clock ='1';
			if (reset = '1') then q <= (others => '0');
			elsif (ld = '1') then q <= d;
			elsif (cntup = '1') then q <= q + '1';
			else q <= q;
			end if; 
		end process;
end dxp_nbit_cntup_beh;
