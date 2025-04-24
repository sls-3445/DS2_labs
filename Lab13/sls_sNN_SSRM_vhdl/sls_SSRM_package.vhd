library ieee ;
use ieee.std_logic_1164.all;

package sls_SSRM_package is

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
		port(M_msb, mp_msb : in  std_logic;
			  Din 			: in 	std_logic_vector(n-1 downto 0);
			  Dout 			: out std_logic_vector(n-1 downto 0));
	end component;

	component sls_nBitSFR_vhdl is
	generic (n : integer := 8);
	port (Din : in std_logic_vector (n-1 downto 0);
			SDinL, SDinR : in std_logic;
			Clock, Reset, Load, ShR, ShL : in std_logic;
			SDoutR, SDoutL : buffer std_logic;
			Dout : buffer std_logic_vector (n-1 downto 0));
	end component;
	
	component sls_nbit_add_sub_vhdl is
	generic (n: integer := 8);
	port ( x, y 		: in  std_logic_vector(n-1 downto 0);
				cin		: in  std_logic;
				sum 		: out std_logic_vector(n-1 downto 0);
				cout 		: out std_logic;
				overflow : out std_logic);
	end component;
	
	component sls_dff_vhdl is 
	port (d, Clock, Reset, LD : in 	std_logic;
				 q 				  : out std_logic);
	end component;
	
	component sls_SSRM_vhdl is
	port (M_val, mp_val : in std_logic_vector(7 downto 0);
			START, Clock 	: in std_logic;
			FP					: out std_logic_vector(15 downto 0);
			DONE				: buffer std_logic);
	end component;
	

end sls_SSRM_package;