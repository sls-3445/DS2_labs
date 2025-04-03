LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.sls_package.all;

ENTITY sls_mem_cu_vhdl IS
	generic (n : integer := 34);
	PORT( Reset, Clock : in STD_LOGIC;
			Cnt_EN, LD_EN_upcnt, LD_EN_H, 
			LD_EN_L, LD_EN_M, WR_EN	: out	STD_LOGIC);
END sls_mem_cu_vhdl;

ARCHITECTURE behavioral OF sls_mem_cu_vhdl IS

-- Declare internal signals
	SIGNAL intcnt : STD_LOGIC_VECTOR(5 DOWNTO 0);
	SIGNAL state : STD_LOGIC_VECTOR(2 DOWNTO 0);
	BEGIN
process begin 
	wait until (Clock'EVENT AND Clock = '1');
	 if (Reset = '1') then 
		Cnt_EN <= '0'; LD_EN_upcnt <= '0'; LD_EN_H <= '0'; 
		LD_EN_L <= '0'; LD_EN_M <= '0'; WR_EN <= '0';
		intcnt <= "000000"; state <= "000"; 
	elsif (state = "000") then 
		Cnt_EN <= '0'; LD_EN_upcnt <= '0'; LD_EN_H <= '0'; 
		LD_EN_L <= '0'; LD_EN_M <= '0'; WR_EN <= '0';
		intcnt <= "000000"; state <= "001"; 
	elsif (state = "001") then 
		Cnt_EN <= '0'; LD_EN_upcnt <= '1'; LD_EN_H <= '0'; 
		LD_EN_L <= '0'; LD_EN_M <= '0'; WR_EN <= '0';
		intcnt <= "000000"; state <= "010"; 
	elsif (state = "010") then 
		Cnt_EN <= '1'; LD_EN_upcnt <= '0'; LD_EN_H <= '0'; 
		LD_EN_L <= '0'; LD_EN_M <= '1'; WR_EN <= '1';
		if (intcnt > n) then intcnt <= "000000"; state <= "011"; 
		else intcnt <= intcnt + '1'; state <= "010"; 
		end if;
	elsif (state = "011") then 
		Cnt_EN <= '0'; LD_EN_upcnt <= '1'; LD_EN_H <= '0'; 
		LD_EN_L <= '0'; LD_EN_M <= '0'; WR_EN <= '0';
		intcnt <= "000000"; state <= "100"; 
	elsif (state = "100") then 
		Cnt_EN <= '1'; LD_EN_upcnt <= '0'; LD_EN_H <= '1'; 
		LD_EN_L <= '0'; LD_EN_M <= '0'; WR_EN <= '0';
		intcnt <= intcnt; state <= "101";
	elsif (state = "101") then 
		Cnt_EN <= '1'; LD_EN_upcnt <= '0'; LD_EN_H <= '0'; 
		LD_EN_L <= '1'; LD_EN_M <= '0'; WR_EN <= '0';
		if (intcnt > (n/2)) then intcnt <= "000000"; state <= "000"; 
		else intcnt <= intcnt + '1'; state <= "100"; 
		end if;
	else  
		Cnt_EN <= '0'; LD_EN_upcnt <= '0'; LD_EN_H <= '0'; 
		LD_EN_L <= '0'; LD_EN_M <= '0'; WR_EN <= '0';
		intcnt <= "000000"; state <= "000"; 
	end if;
end process;	
END behavioral;