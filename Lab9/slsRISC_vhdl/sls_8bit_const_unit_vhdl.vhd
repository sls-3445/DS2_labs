library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use work.sls_package.all;
use work.sls_alu_package.all;

entity sls_8bit_const_unit_vhdl is
	port (	
			Func_Sel					:	in	std_logic_vector(1 downto 0);
			Const_Result :	out std_logic_vector(7 downto 0);
			Const_CNVZ	:	out std_logic_vector(3 downto 0));
end sls_8bit_const_unit_vhdl ;

architecture sls_8bit_const_struc of sls_8bit_const_unit_vhdl is	
	signal norInt : std_logic;
	signal Int_Result :	std_logic_vector(7 downto 0);
begin
 ------------------------------------------------------------------------------
 -- The const_mux instance
 ------------------------------------------------------------------------------
	const_mux : sls_nbit_mux4to1_vhdl port map	
		(d3 => "11111111", d2 => "10101010", d1 => "01010101", d0 => "00000000", s => Func_Sel(1 downto 0), f => Int_Result);
 ------------------------------------------------------------------------------
	Const_Result <= Int_result;
	with Int_Result select
		norInt <= '1' when "00000000",
					 '0' when others;
					 
	Const_CNVZ <= ('0' & Int_Result(7) & '0' & norInt);
 ------------------------------------------------------------------------------
end sls_8bit_const_struc;
