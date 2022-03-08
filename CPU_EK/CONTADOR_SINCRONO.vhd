-----------------------------------------------------------
-- COMPONENTE: CONTADOR SINCRONO
-- DESCRIÇÃO: 
--     REALIZA UMA CONTAGEM SÍNCRONA A PARTIR DOS CICLOS DE
--     CLOCK
-----------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY CONTADOR_SINCRONO IS
    PORT(
        CLOCK : IN STD_LOGIC;
        A     : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        S     : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END CONTADOR_SINCRONO;

ARCHITECTURE BEHAVIOR OF CONTADOR_SINCRONO IS
BEGIN
    PROCESS(CLOCK, A)
    BEGIN
        S <= A + '1';
    END PROCESS;
END;