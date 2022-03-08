-----------------------------------------------------------
-- COMPONENTE: BRANCH HELPER
-- DESCRIÇÃO: 
--     SERVE DE FLAG PARA INSTRUÇÕES DO TIPO J
-----------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY BRANCH_HELPER IS
    PORT(
        A : IN STD_LOGIC;
        S : OUT STD_LOGIC
    );
END BRANCH_HELPER;

ARCHITECTURE BEHAVIOR OF BRANCH_HELPER IS
BEGIN
    S <= A;
END;