-- LIBRARY
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.all ;
USE IEEE.STD_LOGIC_SIGNED.ALL;

-- ENTITY AND PORT
ENTITY AsciiDecoder IS
	GENERIC (
		SIZE : INTEGER;
	);
	PORT (
		ASCII_CODE : IN STD_LOGIC_VECTOR(SIZE * 4 - 1 DOWNTO 0);
		BIT_CODE : OUT STD_LOGIC_VECTOR(SIZE * 8 - 1 DOWNTO 0)
	);
END AsciiDecoder;

ARCHITECTURE behavior OF AsciiDecoder IS
BEGIN
	LOOP_DECODE : FOR INDEX IN 0 TO SIZE - 1 GENERATE
		WITH (ASCII_CODE(INDEX * 4 + 3 DOWNTO INDEX * 4)) SELECT BIT_CODE(INDEX * 8 + 7 DOWNTO INDEX * 8) <=
			"0000" WHEN x"30" ELSE
			"0001" WHEN x"31" ELSE
			"0010" WHEN x"32" ELSE
			"0011" WHEN x"33" ELSE
			"0100" WHEN x"34" ELSE
			"0101" WHEN x"35" ELSE
			"0110" WHEN x"36" ELSE
			"0111" WHEN x"37" ELSE
			"1000" WHEN x"38" ELSE
			"1001" WHEN x"39" ELSE
			"1010" WHEN x"61" ELSE
			"1011" WHEN x"62" ELSE
			"1100" WHEN x"63" ELSE
			"1101" WHEN x"64" ELSE
			"1110" WHEN x"65" ELSE
			"1111" WHEN x"66" ELSE
			"0000";
	END GENERATE LOOP_DECODE;
END behavior;