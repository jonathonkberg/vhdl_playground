LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity full_adder is
  port(A, B, C: in bit; Co, S: out bit);
end full_adder;

architecture adding_bolts_2 of full_adder is
  signal W: bit;
  begin
    W <= A XOR B;
	Co <= (A AND B) OR (W AND C);
	S <= W XOR C;
  end adding_bolts_2;
    
    