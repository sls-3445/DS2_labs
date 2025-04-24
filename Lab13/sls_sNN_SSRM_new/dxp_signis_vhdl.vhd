LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
USE work.dxp_package.all;
------------------------------------------------------------------------------
entity dxp_signis_vhdl is
	port (mstate : in std_logic_vector(3 downto 0);
			Reset, Clock : in std_logic;
			olnout4, olnout3, olnout2, olnout1 : std_logic_vector(7 downto 0);
			signis : out std_logic_vector(7 downto 0));
end dxp_signis_vhdl;
------------------------------------------------------------------------------
architecture mixed of dxp_signis_vhdl is
------------------------------------------------------------------------------
signal n12gen34, n3gen4, n1gen2 : std_logic;
signal olnout12, olnout34, olnout1234 : std_logic_vector(7 downto 0);
signal nmax : std_logic_vector(2 downto 0);
------------------------------------------------------------------------------
begin
------------------------------------------------------------------------------
-- Comparing the first and second olnout, and passing the greater value to 
-- the next comparator. The output of the comparator will also be used in the 
-- procedural block below.
------------------------------------------------------------------------------
comp12 : dxp_signed_comparator port map (olnout1, olnout2, n1gen2);
mux12	: dxp_nbit_mux2to1_vhdl port map (olnout1, olnout2, n1gen2, olnout12);
------------------------------------------------------------------------------
-- Comparing the third and fourth olnout, and passing the greater value to 
-- the next comparator. The output of the comparator will also be used in the 
-- procedural block below.
------------------------------------------------------------------------------
comp34 : dxp_signed_comparator port map (olnout3, olnout4, n3gen4);
mux34	: dxp_nbit_mux2to1_vhdl port map (olnout3, olnout4, n3gen4, olnout34);
------------------------------------------------------------------------------
-- Comparing the greater two olnout values.The output of the comparator will 
-- also be used in the procedural block below.
------------------------------------------------------------------------------
comp1234 : dxp_signed_comparator port map (olnout12, olnout34, n12gen34);
mux1234	: dxp_nbit_mux2to1_vhdl port map (olnout12, olnout34, n12gen34, olnout1234);
nmax <= (n12gen34 & n3gen4 & n1gen2);
------------------------------------------------------------------------------
-- Procedural Block to determine the inferred signis in ASCII Code, 
-- using the comparator outputs above.
------------------------------------------------------------------------------
signisproc : process begin WAIT UNTIL Clock'EVENT AND Clock = '1';
	-- Initialize signis
	if (Reset = '1') then 
		signis <= "00111111";
	end if; 
------------------------------------------------------------------------------
	if (mstate = "1011") then 
		case (nmax) is
			when "000" => signis <= "01111000"; -- -
			when "001" => signis <= "01111000"; -- -
			when "010" => signis <= "00101111"; -- +
			when "011" => signis <= "00101111"; -- +
			when "100" => signis <= "00101011"; -- /
			when "101" => signis <= "00101101"; -- x
			when "110" => signis <= "00101011"; -- /
			when "111" => signis <= "00101101"; -- x
			when others => signis <= "00111111"; -- ?
		end case;
	end if;
end process;
end mixed;
