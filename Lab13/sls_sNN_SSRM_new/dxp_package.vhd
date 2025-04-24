LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

PACKAGE dxp_package IS
	component slow_clock_generator is
	port (Reset, Fast_Clock : in  std_logic;
			Slow_Clock 			: out std_logic);
	end component;
-- ----------------------------------------------------------------------------
	component dxp_sNN_vhdl is
	generic (hlnmax : integer := 4; olnmax : integer := 4);
-- Above: Total number of hidden and output layers neurons; Below: I/O-Ps
 	port (Reset, Fast_Clock 	: in 		std_logic;
			signis			: out		std_logic_vector(7 downto 0));
	end component;
-- ----------------------------------------------------------------------------
	component dxp_sNN_DP_vhdl is
	generic (hlnmax : integer := 4; olnmax : integer := 4);
-- Above: Total number of hidden and output layers neurons; Below: I/O-Ps
 	port (Reset, Clock, Fast_Clock 	: in 		std_logic;
			mstate : in std_logic_vector(3 downto 0);
			hlac_clk_en, hlsclr, hlReset, hlLDmulin, hlLDmacin, hlLDz, 
			oldwren, olac_clk_en, olsclr, olReset, olLDmulin, olLDmacin, 
			olLDz, mul_start : in std_logic;
			hlAddrs : buffer std_logic_vector(7 downto 0);
			olAddrs : buffer std_logic_vector(3 downto 0);
			signis	: out	std_logic_vector(7 downto 0);
			mul_done : out std_logic);
	end component;
-- ----------------------------------------------------------------------------
	component dxp_sNN_CU_vhdl is
 	port (Reset, Clock, mul_done	: in 		std_logic;
			hlAddrs : in std_logic_vector(7 downto 0);
			olAddrs : in std_logic_vector(3 downto 0);
			hlac_clk_en, hlsclr, hlReset, hlLDmulin, hlLDmacin, hlLDz, 
			oldwren, olac_clk_en, olsclr, olReset, olLDmulin, olLDmacin, 
			olLDz, mul_start : out std_logic;
			mstate : buffer std_logic_vector(3 downto 0));
	end component;
-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------
	component hlAddrsCnt_vhdl IS
	PORT
	(
		clk_en		: IN STD_LOGIC ;
		clock		: IN STD_LOGIC ;
		sclr		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
	END component;
-- ----------------------------------------------------------------------------
	component olAddrsCnt_vhdl IS
	PORT
	(
		clk_en		: IN STD_LOGIC ;
		clock		: IN STD_LOGIC ;
		sclr		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
	END component;
-- ----------------------------------------------------------------------------
	component dxp_nbit_mux2to1_vhdl is 
	generic (n : integer := 8);
	port (d1, d0 : in std_logic_vector(n-1 downto 0);
	s : in std_logic;
	f : out std_logic_vector(n-1 downto 0));
	end component;
-- ----------------------------------------------------------------------------
	component dxp_nbit_mux4to1_vhdl is 
	generic (n : integer := 8);
	port (d3, d2, d1, d0 : in std_logic_vector(n-1 downto 0);
	s : in std_logic_vector(1 downto 0);
	f : out std_logic_vector(n-1 downto 0));
	end component;
-- ----------------------------------------------------------------------------
	component hlw_rom_vhdl IS
	generic (hlw_init_file  : string := ""); -- Line added by Dorin Patru
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
	end component;
-- ----------------------------------------------------------------------------
	component olw_rom_vhdl IS
	generic (olw_init_file  : string := ""); -- Line added by Dorin Patru
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
	end component;
-- ----------------------------------------------------------------------------
	component dxp_signed_comparator IS
	PORT
	(
		dataa		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		datab		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		ageb		: OUT STD_LOGIC 
	);
	end component;
-- ----------------------------------------------------------------------------
	component dxp_16bit_signed_mult_vhdl IS
	PORT
	(
		dataa		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		datab		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
	end component;
-- ----------------------------------------------------------------------------
	component dxp_16bit_signed_add_vhdl IS
	PORT
	(
		dataa		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		datab		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		cout		: OUT STD_LOGIC ;
		overflow		: OUT STD_LOGIC ;
		result		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
	end component;
-- ----------------------------------------------------------------------------
	component dxp_simpleneuron_vhdl is
	port (Reset, Clock, Fast_Clock, LDmulin, LDmacin, LDz, mul_start : in std_logic;
			DinA, DinB, biasin : in std_logic_vector(7 downto 0);
			neuronout : out std_logic_vector(7 downto 0);
			mul_done  : out std_logic);
	end component;
-- ----------------------------------------------------------------------------
	component dxp_signis_vhdl is
	port (mstate : in std_logic_vector(3 downto 0);
			Reset, Clock : in std_logic;
			olnout4, olnout3, olnout2, olnout1 : std_logic_vector(7 downto 0);
			signis : out std_logic_vector(7 downto 0));
	end component;
-- ----------------------------------------------------------------------------
	component dxp_nbit_reg_vhdl IS
	generic (n : integer := 4);
	PORT( Reset, Clock, LD_EN	:	IN STD_LOGIC;
			D		:	IN		STD_LOGIC_VECTOR(n-1 DOWNTO 0);
			Q		:	OUT	STD_LOGIC_VECTOR(n-1 DOWNTO 0));
	end component;
-- ----------------------------------------------------------------------------
	component pixData_rom_vhdl IS
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
	end component;
-- ----------------------------------------------------------------------------
	component oldatain_ram_vhdl IS
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
	end component;
-- ----------------------------------------------------------------------------

END dxp_package ;
