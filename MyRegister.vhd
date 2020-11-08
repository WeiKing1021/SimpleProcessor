LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

ENTITY MyRegister IS 
	GENERIC (
		REGISTER_SIZE : INTEGER
	);
	PORT ( 
		CLOCK : IN STD_LOGIC;
		RESET : IN STD_LOGIC;
		DATA_IN : IN STD_LOGIC_VECTOR(REGISTER_SIZE - 1 DOWNTO 0);
		R_IN : IN STD_LOGIC; 
		DATA_OUT : OUT STD_LOGIC_VECTOR(REGISTER_SIZE - 1 DOWNTO 0)
	);
END MyRegister;

ARCHITECTURE behavior OF MyRegister IS 
	SIGNAL DATA : STD_LOGIC_VECTOR(REGISTER_SIZE - 1 DOWNTO 0);
BEGIN
	DATA_OUT <= DATA;

	PROCESS (CLOCK) 
	BEGIN 
		IF (RESET = '1') THEN
			DATA <= CONV_STD_LOGIC_VECTOR(0, REGISTER_SIZE);
		ELSIF (RISING_EDGE(CLOCK)) THEN
			IF (R_IN = '1') THEN
				DATA <= DATA_IN;
			END IF;
		END IF; 
	END PROCESS; 
END behavior;