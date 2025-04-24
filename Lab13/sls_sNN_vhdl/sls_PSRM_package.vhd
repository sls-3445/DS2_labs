library ieee;
use ieee.std_logic_1164.all;

package sls_PSRM_package is

	component sls_xor2 is 
		port (x1, x2 : in  std_logic;
					 f 	  : out std_logic);
	end component;

	component sls_and2 is 
		port (x1, x2 : in  std_logic;
				 f 	  : out std_logic);
	end component;

	component sls_not is
		port (x 		: in  std_logic;
				 f : out std_logic);
	end component;
--
--	component sls_nbit_mux2to1_vhdl is 			
--	generic (n : integer := 8);
--	port ( d1, d0 : in std_logic_vector(n-1 downto 0); 
--			s : in std_logic; 	
--			f : out std_logic_vector(n-1 downto 0)); 	
--	end component;


	component sls_nbit_2sc_in_vhdl is
		generic (n : integer := 8);
		port(Din 	: in 	std_logic_vector(n-1 downto 0);
			  Dout 	: out std_logic_vector(n-1 downto 0));
	end component;

	component sls_nbit_2sc_out_vhdl is
		generic (n : integer := 8);
		port (twosc_in	   : in  std_logic;
			  Din 			: in 	std_logic_vector(n-1 downto 0);
			  Dout 			: out std_logic_vector(n-1 downto 0));
	end component;

	component sls_nbit_add_sub_vhdl is
		generic (n: integer := 8);
		port ( x, y 		: in  std_logic_vector(n-1 downto 0);
					cin		: in  std_logic;
					sum 		: out std_logic_vector(n-1 downto 0);
					cout 		: out std_logic;
					overflow : out std_logic);
	end component;

	component sls_nBitSFR_vhdl is
		generic (n : integer := 4);
		port (Din : in std_logic_vector (n-1 downto 0); -- This is the input parallel data bus
				SDinL, SDinR : in std_logic; -- This is the one-bit serial input data used during ShR
				Clock, Reset, Load, ShR, ShL : in std_logic; -- These are the control signals
				SDoutR, SDoutL : buffer std_logic; -- This is the one-bit serial output data used during ShR
				Dout : buffer std_logic_vector (n-1 downto 0)); -- This is the output parallel data bus
	end component;

--	component sls_nbit_reg_vhdl is
--		generic (n : integer := 4);
--		port (Din 					: in  std_logic_vector(n-1 downto 0);
--				Ld, Clock, Reset 	: in  std_logic;
--				Dout 					: out std_logic_vector(n-1 downto 0));
--	end component;

	component sls_PSRM_stage_vhdl is
		port (Md_Din, mr_Din, PR_Din 			   :	in		std_logic_vector(3 downto 0);
				Clock, Reset, LD_All				  	:	in 	std_logic;
				Md_Dout, mr_Dout						:	out	std_logic_vector(3 downto 0);
				PP_Dout									: 	out 	std_logic_vector(4 downto 0));
	end component;

	component sls_PSRM_vhdl is
		port (Md_val, mr_val : in 		std_logic_vector(3 downto 0);
				Reset, Clock 	: in 		std_logic;
				FP 				: out 	std_logic_vector(7 downto 0));
	end component;


end sls_PSRM_package;