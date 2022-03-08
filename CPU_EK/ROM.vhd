-----------------------------------------------------------
-- COMPONENTE: MEMÓRIA ROM
-- DESCRIÇÃO: 
--     RESPONSÁVEL POR ARMAZENAR O PROGRAMA A SER EXECUTADO
--		 UTILIZANDO DA SEGUINTE SINTAXE:
--     TIPO R:
--		     | OPCODE "XXXX" | RS "XX" | RT "XX" |
--		 TIPO I:
--		     | OPCODE "XXXX" | RS "XX" | VALOR "XX |
--		 TIPO J:
--			  | OPCODE "XXXX" | ENDEREÇO "XXXX" |
--		 ESSAS INSTRUÇÕES DO PROGRAMA SÃO ARMAZENADAS NOS 256
--     BYTES DE MEMÓRIA DISPONÍVEIS
-----------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

ENTITY ROM IS
    PORT(
        CLOCK : IN STD_LOGIC;
        A     : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        S     : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE BEHAVIOR OF ROM IS
	TYPE MEM_T IS ARRAY (0 TO 255) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
	CONSTANT MEM : MEM_T := (
-- PARA EXECUTAR OS TESTES É SÓ TIRAR O COMENTÁRIO
	
-- TESTE DE SUB E SUBI
--		0 => "00010011", -- ADDI S0 3
--		1 => "00010101", -- ADDI S1 1
--		2 => "00110001", -- SUBI S0 1
--		3 => "00100001", -- SUB S0 S1

-- TESTE DE ADD E ADDI
--		0 => "00010011", -- ADDI S0 3
--		1 => "00010111", -- ADDI S1 3
--		2 => "00000001", -- ADD S0 S1
		
-- TESTE BEQ
--		0 => "00010010", -- LI S0 2
--		1 => "00010110", -- LI S1 2
--		2 => "10000001", -- IF S0 == S1
--		3 => "01110101", -- BEQ S0 == S1 JUMP 0101
--		4 => "00010001", -- ADDI S0 1
--		5 => "00010010", -- ADDI S0 2

-- TESTE LI
--		0 => "01100010", -- LI S0 2
--		1 => "00010001", -- ADDI S0 1

		
-- TESTE FIBONACCI
--		0 => "00010000", -- ADDI S0 0
--		1 => "01010000", -- SW S0
--		2 => "00010001", -- ADDI S0 1
--		3 => "00010101", -- ADDI S1 1
--		4 => "01001100", -- LW S3 00
--		5 => "00001101", -- ADD S3 S1
--		6 => "00000100", -- ADD S2 S1
--		7 => "01000000", -- LW S0 00
--		8 => "00000011", -- ADD S0 S3
--		9 => "10010100", -- J 0100

      OTHERS => "11111111"
    );
BEGIN
    PROCESS(CLOCK, A)
    BEGIN
        S <= MEM(CONV_INTEGER(UNSIGNED(A)));
    END PROCESS;
END;