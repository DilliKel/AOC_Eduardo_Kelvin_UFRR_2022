-----------------------------------------------------------
-- COMPONENTE: SOMADOR DE 8 BITS
-- DESCRIÇÃO: 
--     SOMA DOIS VALORES DE 8 BITS, RETORNANDO UM OUTRO
--     VALOR DE 8 BITS
-----------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY SOMADOR_8BITS IS
    PORT(
        A,B      : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        CIN      : IN STD_LOGIC;
        COUT     : OUT STD_LOGIC;
        S        : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END ENTITY SOMADOR_8BITS;

ARCHITECTURE BEHAVIOR OF SOMADOR_8BITS IS 
BEGIN
    PROCESS(A, B, CIN)
    VARIABLE TMP: STD_LOGIC_VECTOR(7 DOWNTO 0);
    VARIABLE C: STD_LOGIC;
    BEGIN
        C := CIN;
        TMP(0) := A(0) XOR B(0) XOR C;
        C := (A(0) AND B(0)) OR ((A(0) XOR B(0)) AND C);
        TMP(1) := A(1) XOR B(1) XOR C;
        C := (A(1) AND B(1)) OR ((A(1) XOR B(1)) AND C);
        TMP(2) := A(2) XOR B(2) XOR C;
        C := (A(2) AND B(2)) OR ((A(2) XOR B(2)) AND C);
        TMP(3) := A(3) XOR B(3) XOR C;
        C := (A(3) AND B(3)) OR ((A(3) XOR B(3)) AND C);
        TMP(4) := A(4) XOR B(4) XOR C;
        C := (A(4) AND B(4)) OR ((A(4) XOR B(4)) AND C);
        TMP(5) := A(5) XOR B(5) XOR C;
        C := (A(5) AND B(5)) OR ((A(5) XOR B(5)) AND C);
        TMP(6) := A(6) XOR B(6) XOR C;
        C := (A(6) AND B(6)) OR ((A(6) XOR B(6)) AND C);
        TMP(7) := A(7) XOR B(7) XOR C;
        C := (A(7) AND B(7)) OR ((A(7) XOR B(7)) AND C);

        COUT <= C;
        S <= TMP;
    END PROCESS;
END;