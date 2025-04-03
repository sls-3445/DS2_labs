library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use work.sls_package.all;
use work.sls_alu_package.all;

entity sls_8bit_sr_unit_vhdl is
	port (	
			Func_Sel					:	in	std_logic_vector(1 downto 0);
			Operand_X, Operand_Y	:	in	std_logic_vector(7 downto 0);
			Const_K					:	in	std_logic_vector(1 downto 0);
			C_in						: 	in std_logic;
			SR_Result :	out std_logic_vector(7 downto 0);
			SR_CNVZ	:	out std_logic_vector(3 downto 0));
end sls_8bit_sr_unit_vhdl;

architecture sls_8bit_sr_struc of sls_8bit_sr_unit_vhdl is	
-------------------------------------------------------------------------------
-- Internal signals declarations
-------------------------------------------------------------------------------
	signal shra, shra1, shra2, shra3 : std_logic_vector(7 downto 0);
	signal shrl, shrl1, shrl2, shrl3 : std_logic_vector(7 downto 0);
	signal rlc, rlc1, rlc2, rlc3 : std_logic_vector(7 downto 0);
	signal Int_Result : std_logic_vector(7 downto 0);
	signal norInt : std_logic;
	signal rlc_cout : std_logic;
begin
-------------------------------------------------------------------------------
-- The sr_mux instance
-------------------------------------------------------------------------------
	sr_mux : sls_nbit_mux4to1_vhdl port map
		(d3 => Operand_Y, d2 => rlc, d1 => shrl, d0 => shra, s => Func_Sel(1 downto 0), f => Int_Result);

			
---- SHRA
	shra3 <= (Operand_X(7) & Operand_X(7) & Operand_X(7) & Operand_X(7 downto 3));
	shra2 <= (Operand_X(7) & Operand_X(7) & Operand_X(7 downto 2));
	shra1 <= (Operand_X(7) & Operand_X(7 downto 1));
	
---- SHRL
	shrl3 <= ("000" & Operand_X(7 downto 3));
	shrl2 <= ("00" & Operand_X(7 downto 2));
	shrl1 <= ('0' & Operand_X(7 downto 1));
	
---- RLC
	rlc3 <= (Operand_X(4 downto 0) & C_in & Operand_X(7 downto 6)); 
	rlc2 <= (Operand_X(5 downto 0) & C_in & Operand_X(7));
	rlc1 <= (Operand_X(6 downto 0) & C_in);
	
-------------------------------------------------------------------------------
-- Using the VHDL Select Signal Assignment to calculate shra.
-- You will need to do the same for shll or shrl and rlc or rrc!
-------------------------------------------------------------------------------
	with Const_K select
				shra <= 	Operand_X when "00",
							shra1 when "01",
							shra2 when "10",
							shra3 when others;
							
	with Const_K select
				shrl <= 	Operand_X when "00",
							shra1 	 when "01",
							shra2 	 when "10",
							shra3		 when others;
							
	with Const_K select
				rlc  <= 	Operand_X when "00",
							rlc1	 	 when "01",
							rlc2	 	 when "10",
							rlc3		 when others;
							
	with Const_K select
			rlc_cout <= C_in 				when "00",
							Operand_X(7)	when "01",
							Operand_X(6)	when "10",
							Operand_X(5)	when others;
							
	with Func_Sel select
		SR_CNVZ(3) 	<= '0' 		when "00",
							'0' 		when "01",
							rlc_cout when "10",
							'0' 		when others;	
-------------------------------------------------------------------------------
	SR_Result <= Int_Result;
	with Int_Result select
		norInt <= '1' when "00000000",
					 '0' when others;
					 
	SR_CNVZ(2 downto 0) <= (Int_Result(7) & '0' & norInt);
-------------------------------------------------------------------------------
end sls_8bit_sr_struc;
