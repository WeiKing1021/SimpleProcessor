-- LIBRARY
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- ENTITY AND PORT
ENTITY Dec2To4 IS
	PORT (
		ENABLE : IN STD_LOGIC;
		DATA_IN : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		DATA_OUT : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END Dec2To4;

ARCHITECTURE dataflow OF Dec2To4 IS
BEGIN
	DATA_OUT <= "0000" WHEN ENABLE = '0' ELSE
			"0001" WHEN DATA_IN = "00" ELSE
			"0010" WHEN DATA_IN = "01" ELSE
			"0100" WHEN DATA_IN = "10" ELSE
			"1000";			
END dataflow;