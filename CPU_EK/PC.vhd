-----------------------------------------------------------
-- COMPONENTE: PROGRAM COUNTER (PC)
-- DESCRIÇÃO: 
--     ARMAZENA O ENDEREÇO DA INSTRUÇÃO A SER LIDA NA
--     MEMÓRIA
-----------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY PC IS
    PORT (
        CLOCK       : IN STD_LOGIC;
        ADDRESS_IN  : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        ADDRESS_OUT : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
    );
END PC;

ARCHITECTURE BEHAVIOR OF PC IS
BEGIN
    PROCESS(CLOCK)
    BEGIN
        IF RISING_EDGE(CLOCK) THEN
            ADDRESS_OUT <= ADDRESS_IN;
        END IF;
    END PROCESS;
END;