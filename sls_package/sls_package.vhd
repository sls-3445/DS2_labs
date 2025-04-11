library ieee ;
use ieee.std_logic_1164.all;

package sls_package is
-- Component declarations:

--***************** GATES *****************
--	component sls_nbit_and is
--	generic (n : integer := 2);
--	port map (x : in 	std_logic_vector(n-1 downto 0);
--				 f : out	std_logic);
--	end component;
--	
--	component sls_nbit_or is
--	generic (n : integer := 2);
--	port map (x : in 	std_logic_vector(n-1 downto 0);
--				 f : out	std_logic);
--	end component;

	component sls_xor2 is 
	port (x1, x2 : in  std_logic;
				 f 	  : out std_logic);
	end component;

	component sls_and2 is 
	port (x1, x2 : in  std_logic;
				 f 	  : out std_logic);
	end component;

	component sls_not is
	port (x : in  std_logic;
				 f : out std_logic);
	end component;
--***************** MUXES *****************
	component sls_nbit_mux2to1_vhdl is 			
	generic (n : integer := 8);
	port ( d1, d0 : in std_logic_vector(n-1 downto 0); 
			s : in std_logic; 	
			f : out std_logic_vector(n-1 downto 0)); 	
	end component;
	
	component sls_nbit_mux4to1_vhdl is
	generic (n : integer := 8);
	port ( d3, d2, d1, d0 : std_logic_vector(n-1 downto 0);
			s : in std_logic_vector(1 downto 0); 	
			f : out std_logic_vector(n-1 downto 0)); 	
	end component;

		
--***************** Other stuff *****************

	component sls_nbit_reg_vhdl is
		generic (n : integer := 8);
		port (d 						: in std_logic_vector(n-1 downto 0);
				ld, reset, clock 	: in std_logic;
				q	 					: buffer std_logic_vector(n-1 downto 0));
	end component;
	
	component sls_nbit_upcnt_vhdl is
		generic (n: integer := 8);
		PORT( D		:	IN		std_logic_vector(n-1 downto 0);
				Reset, Clock	:	in std_logic;
				Cnt_EN, LD_EN	:	in std_logic;
				Q		:	OUT	std_logic_vector(n-1 downto 0));
	end component;
	
	component sls_4bit_reg_vhdl is
	PORT( D		:	IN		STD_LOGIC_VECTOR(3 DOWNTO 0);
				Reset, Clock, LD_EN	:	IN STD_LOGIC;
				Q		:	OUT	STD_LOGIC_VECTOR(3 DOWNTO 0));
	end component;

	component sls_8bit_upcnt_vhdl is
		PORT( D		:	IN		STD_LOGIC_VECTOR(7 DOWNTO 0);
				Reset, Clock	:	IN STD_LOGIC;
				Cnt_EN, LD_EN	:	IN STD_LOGIC;
				Q		:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0));
	end component;
	
	component sls_rom_vhdl is
		PORT
		(address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			q		: OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
	end component;
	
	component sls_ram_vhdl is
		PORT
		(address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			data		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			wren		: IN STD_LOGIC ;
			q		: OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
	end component;
	
	component sls_mem_vhdl is
		port (Clock, Cnt_EN, LD_EN_upcnt, Reset : in  std_logic;
				LD_EN_L, LD_EN_H, LD_EN_M, WR_EN  : in  std_logic;
				Din_upcnt								 : in  std_logic_vector (7 downto 0);
				Q_out 									 : out std_logic_vector (7 downto 0));
	end component;
		
	component sls_mem_cu_vhdl is
	generic (n : integer := 40);
	PORT( Reset, Clock : in STD_LOGIC;
			Cnt_EN, LD_EN_upcnt, LD_EN_H, 
			LD_EN_L, LD_EN_M, WR_EN	: out	STD_LOGIC);
	end component;
	
	component sls_nBitSFR_vhdl is
	generic (n : integer := 4);
	port (Din : in std_logic_vector (n-1 downto 0);
			SDinL, SDinR : in std_logic;
			Clock, Reset, Load, ShR, ShL : in std_logic;
			SDoutR, SDoutL : buffer std_logic;
			Dout : buffer std_logic_vector (n-1 downto 0));
	end component;
	
	component sls_8bit_add_sub_vhdl is
	generic (n: integer := 8);
	port ( x, y 		: in  std_logic_vector(n-1 downto 0);
				cin		: in  std_logic;
				sum 		: out std_logic_vector(n-1 downto 0);
				cout 		: out std_logic;
				overflow : out std_logic);
	end component;
	
	component sls_nbit_2sc_struc_vhdl is
	generic (n : integer := 8);
	port(Din 	: in 	std_logic_vector(n-1 downto 0);
		  Dout 	: out std_logic_vector(n-1 downto 0));
	end component;
	
	component sls_nbit_2sc_beh_vhdl is
	generic (n : integer := 8);
	port(Din 	: in 	std_logic_vector(n-1 downto 0);
		  Dout 	: out std_logic_vector(n-1 downto 0));
	end component;

	
	
	
-- End of component declarations;
end sls_package ;
