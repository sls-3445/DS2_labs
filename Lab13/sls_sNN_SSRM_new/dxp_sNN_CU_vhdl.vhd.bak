------------------------------------------------------------------------------
-- This is the custom implementation of a simple NN Control Unit (CU).
-- (C) April 2021 by Dorin Patru
------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
USE work.dxp_package.all;
------------------------------------------------------------------------------
entity dxp_sNN_CU_vhdl is
 	port (Reset, Clock 	: in 		std_logic;
			hlAddrs : in std_logic_vector(7 downto 0);
			olAddrs : in std_logic_vector(3 downto 0);
			hlac_clk_en, hlsclr, hlReset, hlLDmulin, hlLDmacin, hlLDz, 
			oldwren, olac_clk_en, olsclr, olReset, olLDmulin, olLDmacin, 
			olLDz : out std_logic;
			mstate : buffer std_logic_vector(3 downto 0));
end dxp_sNN_CU_vhdl;
------------------------------------------------------------------------------
architecture behavioral of dxp_sNN_CU_vhdl is
------------------------------------------------------------------------------
begin
--============================================================================
-- Procedural/Behavioral CU
--============================================================================
CU: process begin WAIT UNTIL Clock'EVENT AND Clock = '1';
------------------------------------------------------------------------------
-- Initialize control signals and counters to 0
------------------------------------------------------------------------------
	 	if (Reset = '1') then hlac_clk_en <= '1'; hlsclr <= '1'; 
			hlReset <= '1'; hlLDmulin <= '0'; hlLDmacin <= '0'; hlLDz <= '0'; 
			oldwren <= '0'; olac_clk_en <= '1'; olsclr <= '1'; olReset <= '1'; 
			olLDmulin <= '0'; olLDmacin <= '0'; olLDz <= '0'; mstate <= "0000";
------------------------------------------------------------------------------
-- Do nothing here
------------------------------------------------------------------------------
		elsif (mstate = "0000") then hlac_clk_en <= '0'; hlsclr <= '0'; 
			hlReset <= '0'; hlLDmulin <= '0'; hlLDmacin <= '0'; hlLDz <= '0'; 
			oldwren <= '0'; olac_clk_en <= '0'; olsclr <= '0'; olReset <= '0'; 
			olLDmulin <= '0'; olLDmacin <= '0'; olLDz <= '0'; mstate <= "0001";
------------------------------------------------------------------------------
-- Read and multiply accumulate all 9 weight-pixel pairs
------------------------------------------------------------------------------
		elsif (mstate = "0001") then hlac_clk_en <= '1'; hlsclr <= '0'; 
			hlReset <= '0'; hlLDmulin <= '1'; hlLDmacin <= '1'; hlLDz <= '1';
			oldwren <= '0'; olac_clk_en <= '0'; olsclr <= '0'; olReset <= '0'; 
			olLDmulin <= '0'; olLDmacin <= '0'; olLDz <= '0';
			if (hlAddrs(3 downto 0) = 10#9#) then mstate <= "0010";
														else mstate <= "0001"; end if;
------------------------------------------------------------------------------
-- Last MAC of the hidden layer
------------------------------------------------------------------------------
		elsif (mstate = "0010") then hlac_clk_en <= '1'; hlsclr <= '0'; 
			hlReset <= '0'; hlLDmulin <= '0'; hlLDmacin <= '1'; hlLDz <= '1';
			oldwren <= '0'; olac_clk_en <= '0'; olsclr <= '0'; olReset <= '0'; 
			olLDmulin <= '0'; olLDmacin <= '0'; olLDz <= '0'; mstate <= "0011";
------------------------------------------------------------------------------
-- Final value of z in the hidden layer
------------------------------------------------------------------------------
		elsif (mstate = "0011") then hlac_clk_en <= '0'; hlsclr <= '0'; 
			hlReset <= '0'; hlLDmulin <= '0'; hlLDmacin <= '0'; hlLDz <= '1';
			oldwren <= '0'; olac_clk_en <= '0'; olsclr <= '0'; olReset <= '0'; 
			olLDmulin <= '0'; olLDmacin <= '0'; olLDz <= '0'; mstate <= "0100";
------------------------------------------------------------------------------
-- Write hidden layer outputs into RAM; count with the output
-- layer counter
------------------------------------------------------------------------------
		elsif (mstate = "0100") then hlac_clk_en <= '0'; hlsclr <= '0'; 
			hlReset <= '0'; hlLDmulin <= '0'; hlLDmacin <= '0'; hlLDz <= '0';
			oldwren <= '1'; olac_clk_en <= '1'; olsclr <= '0'; olReset <= '0'; 
			olLDmulin <= '0'; olLDmacin <= '0'; olLDz <= '0';
			if (olAddrs = 10#2#) then mstate <= "0101"; 
											else mstate <= "0100"; end if;
------------------------------------------------------------------------------
-- Reset for a cycle the output layer address counter
------------------------------------------------------------------------------
		elsif (mstate = "0101") then hlac_clk_en <= '0'; hlsclr <= '0'; 
			hlReset <= '0'; hlLDmulin <= '0'; hlLDmacin <= '0'; hlLDz <= '0';
			oldwren <= '0'; olac_clk_en <= '1'; olsclr <= '1'; olReset <= '0'; 
			olLDmulin <= '0'; olLDmacin <= '0'; olLDz <= '0'; mstate <= "0110";
------------------------------------------------------------------------------
-- Read the first output layer weight - input pair
------------------------------------------------------------------------------
		elsif (mstate = "0110") then hlac_clk_en <= '0'; hlsclr <= '0'; 
			hlReset <= '0'; hlLDmulin <= '0'; hlLDmacin <= '0'; hlLDz <= '0';
			oldwren <= '0'; olac_clk_en <= '1'; olsclr <= '0'; olReset <= '0'; 
			olLDmulin <= '1'; olLDmacin <= '1'; olLDz <= '0'; mstate <= "0111";
------------------------------------------------------------------------------
-- Read and multiply accumulate all remaining output layer weight - input pairs
------------------------------------------------------------------------------
		elsif (mstate = "0111") then hlac_clk_en <= '0'; hlsclr <= '0'; 
			hlReset <= '0'; hlLDmulin <= '0'; hlLDmacin <= '0'; hlLDz <= '0';
			oldwren <= '0'; olac_clk_en <= '1'; olsclr <= '0'; olReset <= '0'; 
			olLDmulin <= '1'; olLDmacin <= '1'; olLDz <= '0';
		if (olAddrs = 10#4#) then mstate <= "1000"; else mstate <= "0111"; end if;
------------------------------------------------------------------------------
-- Last MAC value of the output layer
------------------------------------------------------------------------------
		elsif (mstate = "1000") then hlac_clk_en <= '0'; hlsclr <= '0'; 
			hlReset <= '0'; hlLDmulin <= '0'; hlLDmacin <= '0'; hlLDz <= '0';
			oldwren <= '0'; olac_clk_en <= '1'; olsclr <= '1'; olReset <= '0'; 
			olLDmulin <= '0'; olLDmacin <= '1'; olLDz <= '0'; mstate <= "1001";
------------------------------------------------------------------------------
-- Final value of z in the output layer
------------------------------------------------------------------------------
		elsif (mstate = "1001") then hlac_clk_en <= '0'; hlsclr <= '0'; 
			hlReset <= '0'; hlLDmulin <= '0'; hlLDmacin <= '0'; hlLDz <= '0';
			oldwren <= '0'; olac_clk_en <= '1'; olsclr <= '1'; olReset <= '0'; 
			olLDmulin <= '0'; olLDmacin <= '0'; olLDz <= '1'; mstate <= "1010";
------------------------------------------------------------------------------
-- Keep output the last infered/tested image until hlAddrs = 0xe
------------------------------------------------------------------------------
		elsif (mstate = "1010") then hlac_clk_en <= '1'; hlsclr <= '0'; 
			hlReset <= '0'; hlLDmulin <= '0'; hlLDmacin <= '0'; hlLDz <= '0';
			oldwren <= '0'; olac_clk_en <= '1'; olsclr <= '1'; olReset <= '0'; 
			olLDmulin <= '0'; olLDmacin <= '0'; olLDz <= '0';
			if (hlAddrs(3 downto 0) = 16#e#) then mstate <= "1011"; 
														else mstate <= "1010"; end if;
------------------------------------------------------------------------------
-- Reset registers and output layer counter before returning to mstate = 0
-- Upon return infer/test the next image
------------------------------------------------------------------------------
		elsif (mstate = "1011") then hlac_clk_en <= '1'; hlsclr <= '0'; 
			hlReset <= '1'; hlLDmulin <= '0'; hlLDmacin <= '0'; hlLDz <= '0';
			oldwren <= '0'; olac_clk_en <= '0'; olsclr <= '1'; olReset <= '1'; 
			olLDmulin <= '0'; olLDmacin <= '0'; olLDz <= '0';
			if (hlAddrs(3 downto 0) = 16#f#) then mstate <= "0000"; 
														else mstate <= "1011"; end if;
		end if;
	end process;
------------------------------------------------------------------------------
end behavioral;
