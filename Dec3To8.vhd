-- LIBRARY
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- ENTITY AND PORT
ENTITY Dec3To8 IS
	PORT (
		ENABLE : IN STD_LOGIC;
		DATA_IN : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		DATA_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END Dec3To8;

ARCHITECTURE dataflow OF Dec3To8 IS
BEGIN
	DATA_OUT <=
			"00000000" WHEN ENABLE = '0' ELSE
			"00000001" WHEN DATA_IN = "000" ELSE
			"00000010" WHEN DATA_IN = "001" ELSE
			"00000100" WHEN DATA_IN = "010" ELSE
			"00001000" WHEN DATA_IN = "011" ELSE
			"00010000" WHEN DATA_IN = "100" ELSE
			"00100000" WHEN DATA_IN = "101" ELSE
			"01000000" WHEN DATA_IN = "110" ELSE
			"10000000";			
END dataflow;