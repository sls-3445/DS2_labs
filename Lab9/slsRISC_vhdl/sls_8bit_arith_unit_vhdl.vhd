library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use work.sls_package.all;
use work.sls_alu_package.all;


entity sls_8bit_arith_unit_vhdl is
	port (	
			Func_Sel					:	in 	std_logic_vector(1 downto 0);
			Operand_X, Operand_Y	:	in 	std_logic_vector(7 downto 0);
			Const_K					:	in		std_logic_vector(1 downto 0);
			Arith_Result			:	out 	std_logic_vector(7 downto 0);
			Arith_CNVZ				:	out 	std_logic_vector(3 downto 0));
end sls_8bit_arith_unit_vhdl ;

architecture sls_8bit_arith_struc of sls_8bit_arith_unit_vhdl is	
------------------------------------------------------------------------------------
-- Internal signals declarations
------------------------------------------------------------------------------------
	signal Int_Result : std_logic_vector(7 downto 0);
	signal yselect, k8bits : std_logic_vector(7 downto 0);
	signal overflow, cout, norInt : std_logic;
begin
------------------------------------------------------------------------------------
-- Need these internal signals because VHDL does NOT allow
-- (concatentation) infix notation in a port map
------------------------------------------------------------------------------------
	k8bits <= ("000000" & Const_K);
------------------------------------------------------------------------------------
-- The adder-subtractor and the yselect mux
------------------------------------------------------------------------------------
	adder : sls_8bit_add_sub_vhdl port map	
		(cin => Func_Sel(0), x => Operand_X, y => yselect, sum => Int_Result, cout => cout, overflow => overflow);
	
	
	yselect_mux : sls_nbit_mux2to1_vhdl port map
		(d1 => k8bits, d0 => Operand_Y, s=> Func_Sel(1), f => yselect);
------------------------------------------------------------------------------------
-- The final outputs assignments
------------------------------------------------------------------------------------
	Arith_Result <= Int_Result(7 downto 0);
	with Int_Result select
		norInt <= '1' when "00000000",
					 '0' when others;
	
	Arith_CNVZ <= (cout, Int_Result(7), overflow, norInt);
------------------------------------------------------------------------------------
end sls_8bit_arith_struc;
