LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

PACKAGE dxp_package IS
	component dxp_nbitAddSubCNVZ_v is
-- ----------------------------------------------------------------------------
-- This genric (value) selects the width of the databusses:
-- ----------------------------------------------------------------------------
	generic (n : integer := 4);
-- ----------------------------------------------------------------------------
-- AddSubSelectCtrl is a control input selects addition or subtraction and 
-- also serves as the carry into the least significand bit position (LSb):
-- ----------------------------------------------------------------------------
	port 	(AddSubSelectCtrl	: in std_logic;
			OperandA, OperandB : in std_logic_vector(n-1 downto 0);
			Result				: buffer std_logic_vector(n-1 downto 0);
			Carryout, Negative, Overflow, Zero	: buffer std_logic);
-- ----------------------------------------------------------------------------
-- The last four outputs above are the four status bit outputs.
-- ----------------------------------------------------------------------------
	end component;
	component dxp_nbit2to1mux_vhdl is
-- --------------------------------------------------------
-- This generic (value) selects the width of the databusses:
-- --------------------------------------------------------
	generic (n : integer := 4);
	port (SelectCtrl	: in std_logic;
			DataInput0, DataInput1	: in std_logic_vector(n-1 downto 0);
			DataOutput	: out std_logic_vector(n-1 downto 0));
end component;
	component dxp_nbit4to1mux_vhdl is
-- --------------------------------------------------------
-- This generic (value) selects the width of the databusses:
-- --------------------------------------------------------
	generic (n : integer := 4);
	port (SelectCtrl	: in std_logic_vector(1 downto 0);
			DataInput0, DataInput1, DataInput2, DataInput3	: 
								in std_logic_vector(n-1 downto 0);
			DataOutput	: out std_logic_vector(n-1 downto 0));
end component;
-- ----------------------------------------------------------------------------
-- The components below will be used in later labs.
-- ----------------------------------------------------------------------------
	COMPONENT dxp_8bit_upcnt_vhdl -- 8bit up counter
	PORT (D		:	IN		STD_LOGIC_VECTOR(7 DOWNTO 0);
			Resetn, Clock	:	IN STD_LOGIC;
			Cnt_EN, LD_EN	:	IN STD_LOGIC;
			Q		:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0));
	END COMPONENT ;

	COMPONENT dxp_4bit_reg_vhdl -- 4bit register
	PORT (D		:	IN		STD_LOGIC_VECTOR(3 DOWNTO 0);
			Resetn, Clock, LD_EN	:	IN STD_LOGIC;
			Q		:	OUT	STD_LOGIC_VECTOR(3 DOWNTO 0));
	END COMPONENT ;

	COMPONENT dxp_rom_vhdl -- my ROM
	PORT (address	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			q			: OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
	END component ;

	COMPONENT dxp_ram_vhdl -- my RAM
	PORT (address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
	END component ;

	Component dxp_nBitSFR_vhdl is
	generic (n : integer := 4);
	port (Din : in std_logic_vector (n-1 downto 0); -- This is the input parallel data bus
			SDinL, SDinR : in std_logic; -- This is the one-bit serial input data used during ShR
			Clock, Reset, Load, ShR, ShL : in std_logic; -- These are the control signals
			SDoutR, SDoutL : buffer std_logic; -- This is the one-bit serial output data used during ShR
			Dout : buffer std_logic_vector (n-1 downto 0)); -- This is the output parallel data bus
	end component;

END dxp_package ;
