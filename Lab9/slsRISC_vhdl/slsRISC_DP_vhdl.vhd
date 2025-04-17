library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use work.sls_package.all;
use work.sls_RISC_package.all;
use work.sls_alu_package.all;

entity slsRISC_DP_vhdl is
	port (Reset, Clock, PB1,  
	RST_PC, LD_PC, CNT_PC, LD_IR, LD_R0, LD_R1, LD_R2, LD_R3,
	LD_SR, LD_MABR, LD_MAXR, LD_MAR, RW, MMASel,
	LD_IPDR, LD_OPDR, push, pop, ipstksel : in std_logic;
	RF_SD_OS, RF_S_OS, wb_sel 					: in std_logic_vector(1 downto 0);
	SW, ALU_FS 										: in std_logic_vector(3 downto 0);
	IW	 												: out std_logic_vector(7 downto 0);
	LEDs 												: out std_logic_vector(7 downto 0);
	SR_CNVZ 											: out std_logic_vector(3 downto 0);
   MAR_din, MARout 								: out std_logic_vector(9 downto 0));
end slsRISC_DP_vhdl;

architecture slsRISC_DP_struc of slsRISC_DP_vhdl is
signal MAR_out, PC_out, MABR_in, MAXR_in, MABR_out, MAXR_out, intMAR_out,  
			MMA_in, MAR_in : std_logic_vector (9 downto 0);
signal sd_bus, s_bus, wb_bus, r0out, r1out, r2out, r3out, ALU_result, 
			IPDR_in, IPDR_out, OPDR_in, MM_out, IR_out, 
			TOS_out, IPSTK_out, intLEDs: std_logic_vector(7 downto 0);
signal ALU_CNVZ, SR_out: std_logic_vector(3 downto 0);
signal notClock : std_logic;		 

begin
	notClock <= not Clock;
	-- MUX controlling writeback bus
	wbBusMux: sls_nbit_mux4to1_vhdl generic map (8)
		port map (d3 => IPSTK_out, d2 => MM_out, d1 => ALU_Result, d0 => (others => '0'), s => wb_sel, f => wb_bus);
		
	-- RF Registers
	r0 : sls_nbit_reg_vhdl generic map (8)
				port map (d => wb_bus, ld => LD_R0, reset => Reset, clock => Clock, q => r0out);
	r1 : sls_nbit_reg_vhdl generic map (8)
				port map (d => wb_bus, ld => LD_R1, reset => Reset, clock => Clock, q => r1out);
	r2 : sls_nbit_reg_vhdl generic map (8)
				port map (d => wb_bus, ld => LD_R2, reset => Reset, clock => Clock, q => r2out);
	r3 : sls_nbit_reg_vhdl generic map (8)
				port map (d => wb_bus, ld => LD_R3, reset => Reset, clock => Clock, q => r3out);			
	rfout_sd_mux : sls_nbit_mux4to1_vhdl generic map (8)
				port map (d3 => r3out, d2 => r2out, d1 => r1out, d0 => r0out, s => RF_SD_OS, f => sd_bus);
	rfout_s_mux  : sls_nbit_mux4to1_vhdl generic map (8)
				port map (d3 => r3out, d2 => r2out, d1 => r1out, d0 => r0out, s => RF_S_OS, f => s_bus);
	
	-- ALU
	ALU : sls_8bit_alu_struc_vhdl
				port map (Operand_X => sd_bus, Operand_Y => s_bus, Const_K => IR_OUT(1 downto 0), Func_Sel => ALU_FS,
						Cin => '0', ALU_Result => ALU_result, ALU_CNVZ => ALU_CNVZ);
	SR  : sls_nbit_reg_vhdl generic map (4)
				port map (d => ALU_CNVZ, ld => LD_SR, reset => Reset, clock => Clock, q => SR_out);
	SR_CNVZ <= SR_out;
	
	-- MM
	PC 	: sls_nbit_upcnt_vhdl generic map (10)
				port map (D => MAR_out, Reset => Reset, Clock => Clock, Cnt_EN => CNT_PC , LD_EN => LD_PC, Q => PC_out);
	IR		: sls_nbit_reg_vhdl generic map (8)
				port map (d => MM_out, ld => LD_IR, reset => Reset, clock => Clock, q => IR_out);
	IW <= IR_out;

   MABR_in <= (MM_out(7) & MM_out(7) & MM_out) when (IR_out(7 downto 4) = "1101") else (MM_out & "00");
	
   MAXR_in <= PC_out when (IR_out(7 downto 4) = "1101") else (s_bus(7) & s_bus(7) & s_bus);
	MABR	: sls_nbit_reg_vhdl generic map (10)
				port map (d => MABR_in, ld => LD_MABR, reset => Reset, clock => Clock, q => MABR_out);
	MAXR 	: sls_nbit_reg_vhdl generic map (10)
				port map (d => MAXR_in, ld => LD_MAXR, reset => Reset, clock => Clock, q => MAXR_out);
	MAR_in <= MABR_out + MAXR_out;
   MAR_din <= MAR_in;
	MAR	: sls_nbit_reg_vhdl generic map (10)
				port map (d => MAR_in, ld => LD_MAR, reset => Reset, clock => Clock, q => MAR_out);
	MMA_in <= MAR_out when (MMASel = '1') else PC_out;
	MM		: sls_MM_vhdl port map (address => MMA_in, data => sd_bus, clock => notClock, wren => RW, q => MM_out);
	
	-- Peripherals
	IPDR_in <= ("000" & PB1 & SW);
	IPDR 	: sls_nbit_reg_vhdl generic map (8)
				port map (d => IPDR_in, ld => LD_IPDR, reset => Reset, clock => Clock, q => IPDR_out);
	OPDR 	: sls_nbit_reg_vhdl generic map (8)
				port map (d => OPDR_in, ld => LD_OPDR, reset => Reset, clock => Clock, q => intLEDs);
	LEDs <= intLEDs;
	
	-- Stack 
	stack : sls_8bit_4loc_stack_vhdl port map (push => push, pop => pop, reset => Reset, 
				clock => Clock, din => sd_bus, dout => TOS_out);
	stack_mux : sls_nbit_mux2to1_vhdl generic map (8)
				port map (d1 => TOS_out, d0 => IPDR_out, s => ipstksel, f => IPSTK_out);
end slsRisc_DP_struc;
