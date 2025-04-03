library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use work.sls_RISC_package.all;

entity slsRISC_CU_vhdl is
	port (Reset, Clock : in std_logic;  
	IW : in std_logic_vector(7 downto 0);
	SR_CNVZ : in std_logic_vector(3 downto 0);
	MARout : in std_logic_vector(9 downto 0);
	RST_PC, LD_PC, CNT_PC, LD_IR, LD_R0, LD_R1, LD_R2, LD_R3,
	LD_SR, LD_MABR, LD_MAXR, LD_MAR, RW, MMASel, 
	LD_IPDR, LD_OPDR, push, pop, ipstksel : out std_logic;
	RF_SD_OS, RF_S_OS, WB_SEL : out std_logic_vector(1 downto 0); 
	ALU_FS : out std_logic_vector(3 downto 0);
	crtMCis : out std_logic_vector(2 downto 0));
end slsRISC_CU_vhdl;

architecture slsRISC_CU_beh of slsRISC_CU_vhdl is

signal Rsd, Rs2 : std_logic_vector(1 downto 0);
signal MC : std_logic_vector(2 downto 0);
signal opCode, IW_CNVZ : std_logic_vector(3 downto 0);
signal carry, negative, overflow, zero : std_logic;

constant MC0	: STD_LOGIC_VECTOR(2 DOWNTO 0) := "000"; 
constant MC1	: STD_LOGIC_VECTOR(2 DOWNTO 0) := "001"; 
constant MC2	: STD_LOGIC_VECTOR(2 DOWNTO 0) := "010"; 
constant MC3	: STD_LOGIC_VECTOR(2 DOWNTO 0) := "011"; 
constant MC4	: STD_LOGIC_VECTOR(2 DOWNTO 0) := "100";
constant MC5	: STD_LOGIC_VECTOR(2 DOWNTO 0) := "101";
------------------------------------------------------------------------------
constant ADD_IC 	: STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
constant SUB_IC 	: STD_LOGIC_VECTOR(3 DOWNTO 0) := "0001"; 
constant INC_IC 	: STD_LOGIC_VECTOR(3 DOWNTO 0) := "0010";
constant DEC_IC	: STD_LOGIC_VECTOR(3 DOWNTO 0) := "0011"; 
constant XOR_IC	: STD_LOGIC_VECTOR(3 DOWNTO 0) := "0100"; 
constant AND_IC	: STD_LOGIC_VECTOR(3 DOWNTO 0) := "0101"; 
constant OR_IC		: STD_LOGIC_VECTOR(3 DOWNTO 0) := "0110"; 
constant CPY_IC	: STD_LOGIC_VECTOR(3 DOWNTO 0) := "0111"; 
constant SHRA_IC	: STD_LOGIC_VECTOR(3 DOWNTO 0) := "1000"; 
constant SHRL_IC	: STD_LOGIC_VECTOR(3 DOWNTO 0) := "1001"; 
constant RLC_IC	: STD_LOGIC_VECTOR(3 DOWNTO 0) := "1010"; 
constant LD_IC		: STD_LOGIC_VECTOR(3 DOWNTO 0) := "1011"; 
constant ST_IC		: STD_LOGIC_VECTOR(3 DOWNTO 0) := "1100"; 
constant JUMP_IC	: STD_LOGIC_VECTOR(3 DOWNTO 0) := "1101"; 
constant POP_IC		: STD_LOGIC_VECTOR(3 DOWNTO 0) := "1110"; 
constant PUSH_IC	: STD_LOGIC_VECTOR(3 DOWNTO 0) := "1111";

begin
process begin

	WAIT UNTIL Clock'EVENT AND Clock ='1';
------------------------------------------------------------------------------
opCode  <= IW(7 downto 4); Rsd  <= IW(3 downto 2); Rs2  <= IW(1 downto 0);
IW_CNVZ  <= IW(3 downto 0); carry  <= SR_CNVZ(3); negative  <= SR_CNVZ(2); 
overflow  <= SR_CNVZ(1); zero  <= SR_CNVZ(0);

if (Reset = '1') then 
	RST_PC  <= '1'; LD_PC  <= '0'; CNT_PC  <= '0'; LD_IR  <= '0'; 
	LD_R0  <= '0'; LD_R1  <= '0'; LD_R2  <= '0'; LD_R3  <= '0';
	LD_SR  <= '0'; ALU_FS  <= "0000";
	LD_MABR  <= '0'; LD_MAXR  <= '0'; LD_MAR  <= '0'; RW  <= '0'; MMASel <= '0';
	LD_IPDR  <= '0'; LD_OPDR  <= '0';
	RF_SD_OS  <= "00"; RF_S_OS <= "00"; WB_SEL  <= "00";
	crtMCis  <= MC0; MC  <= MC0;
else 

	if 	(MC = MC0) then
	CNT_PC <= '1'; LD_IR <= '1';
	crtMCis <= MC0; MC <= MC1;
	
	elsif (MC = MC1) then
	CNT_PC <= '0'; LD_IR <= '0'; 
	crtMCis <= MC1; MC <= MC2;
	
	elsif (MC = MC2) then
		if (opCode = ADD_IC | SUB_IC | INC_IC | DEC_IC | XOR_IC | AND_IC |
                     CPY_IC | SHRA_IC | SHRL_IC | RLC_IC) then
            if      (Rsd = "00")    then LD_R0 = '1'; LD_R1 = '0' LD_R2 = '0'; LD_R3 = '0';
            elsif   (Rsd = "01")    then LD_R0 = '0'; LD_R1 = '1' LD_R2 = '0'; LD_R3 = '0';
            elsif   (Rsd = "10")    then LD_R0 = '0'; LD_R1 = '0' LD_R2 = '1'; LD_R3 = '0';
            elsif   (Rsd = "11")    then LD_R0 = '0'; LD_R1 = '0' LD_R2 = '0'; LD_R3 = '1';
            else                    then LD_R0 = '0'; LD_R1 = '0' LD_R2 = '0'; LD_R3 = '0';
            end if

            LD_SR <= '1'; ALU_FS <= opCode; WB_SEL <= "01";
            crtMCis <= MC2; MC <= MC0;

        elsif (opCode = LD_IC | ST_IC) then
            LD_MABR <= '1'; CNT_PC <= '1'; LD_MAXR <= '1';
            crtMCis <= MC2; MC <= MC3;

        elsif (opCode = JUMP_IC) then
            LD_MABR <= '1'; CNT_PC <= '1'; LD_MAXR <= '1'; 
            crtMCis <= MC2; MC <= MC3;

        elsif (opCode = POP_IC) then
            if      (Rsd = "00")    then LD_R0 = '1'; LD_R1 = '0' LD_R2 = '0'; LD_R3 = '0';
            elsif   (Rsd = "01")    then LD_R0 = '0'; LD_R1 = '1' LD_R2 = '0'; LD_R3 = '0';
            elsif   (Rsd = "10")    then LD_R0 = '0'; LD_R1 = '0' LD_R2 = '1'; LD_R3 = '0';
            elsif   (Rsd = "11")    then LD_R0 = '0'; LD_R1 = '0' LD_R2 = '0'; LD_R3 = '1';
            else                         LD_R0 = '0'; LD_R1 = '0' LD_R2 = '0'; LD_R3 = '0';
            end if;
            push <= '1'; ipstksel <= '1'; WB_SEL = "11";
            crtMCis <= MC2; MC <= MC0;

        elsif (opCode = PUSH_IC) then
            --LD_IPDR <= '1';
            pop <= '1'; RF_SD_OS <= Rsd;
            crtMCis <= MC2; MC <= MC0;
        end if;

    elsif (MC = MC3) then
        -- Reset
        LD_SR <= '0'; ALU_FS <= "0000"; LD_MABR <= '0'; LD_MAXR <= '0';
        CNT_PC <= '0'; push <= '0'; pop <= '0';
        -- Load Main Memory Address
        LD_MAR = '1';
        crtMCis <= MC3; MC <= MC4;

        if (opCode = LD_IC) then
            LD_MAR <= '1';
        
        elsif (opCode = ST_IC) then
            RF_SD_OS <= Rsd; LD_OPDR <= '1';

    elsif (MC = MC4) then
        -- Reset
        LD_MAR <= '0'; LD_OPDR <= '0';
        if      (Rsd = "00")    then LD_R0 = '1'; LD_R1 = '0' LD_R2 = '0'; LD_R3 = '0';
        elsif   (Rsd = "01")    then LD_R0 = '0'; LD_R1 = '1' LD_R2 = '0'; LD_R3 = '0';
        elsif   (Rsd = "10")    then LD_R0 = '0'; LD_R1 = '0' LD_R2 = '1'; LD_R3 = '0';
        elsif   (Rsd = "11")    then LD_R0 = '0'; LD_R1 = '0' LD_R2 = '0'; LD_R3 = '1';
        else                         LD_R0 = '0'; LD_R1 = '0' LD_R2 = '0'; LD_R3 = '0';
        end if;

        if (opCode = LD_IC) then
            if (MARout > x"3FD") then 
                ipstksel <= '0';
                WB_SEL <= "11"';
            else
                MMASel <= '1';
                WB_SEL <= "10";
            end if;
        
        elsif (opCode = ST_IC) then
            if (MARout > x"3FD") then
               -- op[max[1:0]] <- OPDR
            else
                RW <= '1';
            end if;

        elsif (opCode = JUMP_IC) then
            if      ((IW_CNVZ = "0001") and (SR_CNVZ(0) = '1')) then LD_PC <= '1';
            elsif   ((IW_CNVZ = "0010") and (SR_CNVZ(1) = '1')) then LD_PC <= '1';    
            elsif   ((IW_CNVZ = "0100") and (SR_CNVZ(2) = '1')) then LD_PC <= '1';    
            elsif   ((IW_CNVZ = "1000") and (SR_CNVZ(3) = '1')) then LD_PC <= '1';    
            elsif   (IW_CNVZ = "0000") then LD_PC <= '1';    
            else LD_PC <= '0';
        end if;
        crMCis <= MC4; MC <= MC0;

end process;
end slsRISC_CU_beh;









