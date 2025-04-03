library ieee ;
use ieee.std_logic_1164.all ;

entity sls_fpga_emulation is
port (pb : in std_logic_vector (1 downto 0);
		sw : in std_logic_vector (3 downto 0);
		leds : out std_logic_vector (7 downto 0));
end sls_fpga_emulation;

architecture sls_struc of sls_fpga_emulation is
-- Need to declare the component to be instantiated:
component sls_8bit_alu_struc_vhdl is
	port (	
			Func_Sel					:	in	std_logic_vector(3 downto 0);
			Operand_X, Operand_Y	:	in	std_logic_vector(7 downto 0);
			Const_K					:	in	std_logic_vector(1 downto 0);
			ALU_Result				:	out std_logic_vector(7 downto 0);
			ALU_CNVZ					: 	out std_logic_vector(3 downto 0));
end component;
-- Need these internal signals because VHDL does
-- NOT allow concatenation inside a port map.
-- You will need to extend the size of your x_int and y_int to 8-bits
signal x_int, y_int : std_logic_vector(7 downto 0);
-- You will need the signal below to connect the most 
-- significant 4-bits of your ALU_Result
-- signal res_int : std_logic_vector(3 downto 0);

begin
	x_int <= (pb & pb & pb & pb); -- you'll need to extend this to 8-bits
	y_int <= (pb & pb & pb & pb); -- you'll need to extend this to 8-bits
-- The CUV instance using named or explicit port mapping.
	cut : sls_8bit_alu_struc_vhdl
	port map (Func_Sel => sw, Operand_X => x_int, 
	Operand_Y => y_int, Const_K => "01", 
	ALU_Result(3 downto 0) => leds(3 downto 0),
	ALU_CNVZ => leds(7 downto 4));
end sls_struc;
