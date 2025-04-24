------------------------------------------------------------------------------
-- This is the structural description of a neuron for either the hidden or
-- output layers. There is no output activation (rectification) function, but 
-- one like the sigmoid function could be added.
-- (C) April 2019 by Dorin Patru
------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
USE work.dxp_package.all;
use work.sls_SSRM_package.all;
------------------------------------------------------------------------------
entity dxp_simpleneuron_vhdl is
	port (Reset, Clock, Fast_Clock, LDmulin, LDmacin, LDz, mul_start : in std_logic;
			DinA, DinB, biasin : in std_logic_vector(7 downto 0);
			neuronout : out std_logic_vector(7 downto 0);
			mul_done  : out std_logic);
end dxp_simpleneuron_vhdl;
------------------------------------------------------------------------------
architecture structural of dxp_simpleneuron_vhdl is
------------------------------------------------------------------------------
-- Internal signals declarations;
------------------------------------------------------------------------------
	signal DmulinA, DmulinB : std_logic_vector(7 downto 0);
	signal DaddinA, DaddinB, mac, Dmacout, zin, zout : std_logic_vector(15 downto 0);
	signal product : std_logic_vector(15 downto 0);
	signal cout1, vout1, cout2, vout2 : std_logic;
------------------------------------------------------------------------------
begin

------------------------------------------------------------------------------
-- The two input registers
------------------------------------------------------------------------------
	mulinA : dxp_nbit_reg_vhdl generic map (n => 8)
						port map (Reset, Clock, LDmulin, DinA, DmulinA);
	mulinB : dxp_nbit_reg_vhdl generic map (n => 8)
						port map (Reset, Clock, LDmulin, DinB, DmulinB);
------------------------------------------------------------------------------
-- This a 16-bit multiplier, i.e. the input operands are each 8-bits wide and 
-- the product 16-bits wide.
-- Replace this with your own multiplier. To match your operand widths, adapt 
-- DmulinA and DmulinB by discarding the most significant bits. To output a 
-- 16-bit product, sign extend your signed product.
------------------------------------------------------------------------------
--	mul : dxp_16bit_signed_mult_vhdl port map (DmulinA, DmulinB, product);
	mul : sls_SSRM_vhdl port map (M_val => DmulinA, mp_val => DmulinB, FP => product, 
											DONE => mul_done, Clock => Fast_Clock, START => '1');
	
------------------------------------------------------------------------------
-- The MAC accumulator and output register
------------------------------------------------------------------------------
	macinA : dxp_nbit_reg_vhdl generic map (n => 16)
						port map (Reset, Clock, LDmacin, product, DaddinA);
	macinB : dxp_nbit_reg_vhdl generic map (n => 16)
						port map (Reset, Clock, LDmacin, mac, DaddinB);
------------------------------------------------------------------------------
-- The MAC adder
------------------------------------------------------------------------------
	add1 : dxp_16bit_signed_add_vhdl port map (DaddinA, DaddinB, cout1, vout1, mac);
------------------------------------------------------------------------------
-- The MAC accumulator
------------------------------------------------------------------------------
	macinC : dxp_nbit_reg_vhdl generic map (n => 16)
						port map (Reset, Clock, LDmacin, mac, Dmacout);
------------------------------------------------------------------------------
-- The BIAS adder
------------------------------------------------------------------------------
--	biasinadjusted <= (biasin(15) & biasin(15) & biasin(15) & biasin(15) & 
--						biasin(15) & biasin(15) & biasin(15) & biasin(15) &
	--						biasin & "00000000"); 
	add2 : dxp_16bit_signed_add_vhdl 
						port map (Dmacout, "0000000000000000", cout2, vout2, zin);
------------------------------------------------------------------------------
-- The RAW value output register
------------------------------------------------------------------------------
	zreg : dxp_nbit_reg_vhdl generic map (n => 16)
						port map (Reset, Clock, LDz, zin, zout);
------------------------------------------------------------------------------
-- No activation function (rectification/sigmoid) is used.
------------------------------------------------------------------------------
	neuronout <= zout(7 downto 0);
------------------------------------------------------------------------------
end structural;