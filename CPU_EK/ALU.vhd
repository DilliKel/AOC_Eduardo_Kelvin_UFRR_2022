-----------------------------------------------------------
-- COMPONENTE: ALU
-- DESCRIÇÃO: 
--     RESPONSÁVEL POR EXECUTAR AS INSTRUÇÕES:
--		  ------------------------
--      | CODIGO | NOME | TIPO |
--      |--------|------|------|
--		  | 0000   | ADD	|	R   |
-- 	  | 0001   | ADDI	|  I   |
-- 	  | 0010   | SUB	|  R   |
-- 	  | 0011   | SUBI |  I   |
-- 	  | 0100   | LW	|  I   |
-- 	  | 0101   | SW	|  I   |
-- 	  | 0110   | LI	|  I   |
-- 	  | 0111   | BEQ	|  J   |
-- 	  | 1000   | IF	|  J   |
-- 	  | 1001   | J		|  J   |
-----------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY ALU IS
	PORT(
			CLOCK		      : IN STD_LOGIC;
			OP 		      : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			A,B		      : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			S		         : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			Z,OVERFLOW     : OUT STD_LOGIC
		);
END ENTITY;
	
ARCHITECTURE BEHAVIOR OF ALU IS
SIGNAL SOMA,SUBTRACAO                     : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL OVERFLOW_SOMA,OVERFLOW_SUBTRACAO   : STD_LOGIC;
SIGNAL IN_BRANCH_HELPER,OUT_BRANCH_HELPER : STD_LOGIC;

COMPONENT SOMADOR_8BITS IS
	PORT(
		A,B  : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		CIN  : IN STD_LOGIC;
		COUT : OUT STD_LOGIC;
		S    : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT SUBTRATOR_8BITS IS
	PORT(
		A,B  : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		COUT : OUT STD_LOGIC;
		S    : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT BRANCH_HELPER IS
	PORT (
	  A : IN STD_LOGIC;
	  S : OUT STD_LOGIC
	);
END COMPONENT; 

BEGIN
	BH  : BRANCH_HELPER PORT MAP(IN_BRANCH_HELPER, OUT_BRANCH_HELPER);
	OP1 : SOMADOR_8BITS PORT MAP(A, B, '0', OVERFLOW_SOMA, SOMA);
	OP2 : SUBTRATOR_8BITS PORT MAP(A, B, OVERFLOW_SUBTRACAO, SUBTRACAO);
	
	PROCESS(CLOCK,OP,A,B,SOMA,SUBTRACAO,OVERFLOW_SOMA,OVERFLOW_SUBTRACAO,IN_BRANCH_HELPER,OUT_BRANCH_HELPER)
	BEGIN
		CASE OP IS
			-- SOMA
			WHEN "0000" =>
				S        <= SOMA;
				OVERFLOW <= OVERFLOW_SOMA;
			-- SOMA IMEDIATA
			WHEN "0001" =>
				S        <= SOMA;
				OVERFLOW <= OVERFLOW_SOMA;
			-- SUBTRAÇÃO
			WHEN "0010" =>
				S        <= SUBTRACAO;
				OVERFLOW <= OVERFLOW_SUBTRACAO;
			-- SUBTRAÇÃO IMEDIATA
			WHEN "0011" =>
				S        <= SUBTRACAO;
				OVERFLOW <= OVERFLOW_SUBTRACAO;
			-- LW
			WHEN "0100" =>
				S        <= A;
				OVERFLOW <= '0';
			-- SW
			WHEN "0101" =>
				S        <= A;
				OVERFLOW <= '0';
			-- LI
			WHEN "0110" =>
				S        <= B;
				OVERFLOW <= '0';
			-- BEQ
			WHEN "0111" =>
				IF OUT_BRANCH_HELPER = '1' THEN
					Z     <= '1';
				ELSE
					Z     <= '0';
				END IF;
				S        <= "00000000";
				OVERFLOW <= '0';
			-- IF
			WHEN "1000" =>
				IF A = B THEN
					IN_BRANCH_HELPER <= '1';
				ELSE
					IN_BRANCH_HELPER <= '0';
				END IF;
				S <= "00000000";
				OVERFLOW <= '0';
			-- J
			WHEN OTHERS =>
				S        <= "00000000";
				OVERFLOW <= '0';
		END CASE;
	END PROCESS;
END;