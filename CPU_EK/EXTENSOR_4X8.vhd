-----------------------------------------------------------
-- COMPONENTE: EXTENSOR_4X8
-- DESCRIÇÃO: 
--     EXTENDE UM SINAL DE 4 BITS PARA 1 BYTE
-----------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY EXTENSOR_4X8 IS
	PORT(
		A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		S : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END EXTENSOR_4X8;

ARCHITECTURE BEHAVIOR OF EXTENSOR_4X8 IS
BEGIN
	S(7) <= '0';
	S(6) <= '0';
	S(5) <= '0';
	S(4) <= '0';
	S(3) <= A(3);
	S(2) <= A(2);
	S(1) <= A(1);
	S(0) <= A(0);
END;