-- --------------------------------------------------------
-- This is a generic description of a 
-- n-bit 2to1mux.
-- Dorin Patru February 2020.
-- --------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity dxp_nbit2to1mux_vhdl is
-- --------------------------------------------------------
-- This generic (value) selects the width of the databusses:
-- --------------------------------------------------------
	generic (n : integer := 4);
	port (SelectCtrl	: in std_logic;
			DataInput0, DataInput1	: in std_logic_vector(n-1 downto 0);
			DataOutput	: out std_logic_vector(n-1 downto 0));
end dxp_nbit2to1mux_vhdl;
-- --------------------------------------------------------
-- And the architecture is: 
-- --------------------------------------------------------
architecture behavioral of dxp_nbit2to1mux_vhdl is
	begin
-- --------------------------------------------------------
-- This implementation uses a binary if-else construct
-- inside a procedural always block.
-- --------------------------------------------------------
	process (SelectCtrl, DataInput0, DataInput1)
		begin
			if (SelectCtrl = '0') then DataOutput <= DataInput0;
			else 						DataOutput <= DataInput1;
			end if;
		end process;
end behavioral;
