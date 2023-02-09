LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity dataline is
  port(A1, A0: in bit; WORD0, WORD1, WORD2, WORD3: out bit);
end dataline;

architecture dataline_bolts of dataline is
  signal A1_N, A1_NN, A0_N, A0_NN: bit;
  begin
	A1_N <= NOT A1;
	A1_NN <= NOT A1_N;
	A0_N <= NOT A0;
	A0_NN <= NOT A0_N;
	WORD0 <= A1_N AND A0_N;
	WORD1 <= A1_N AND A0_NN;
	WORD2 <= A1_NN AND A0_N;
	WORD3 <= A1_NN AND A0_NN;
  end dataline_bolts;
    
 