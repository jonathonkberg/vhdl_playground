LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity comb_b is
  port(A, B: in bit; G, P: out bit);
end comb_b;

architecture bbolts of comb_b is
  signal W, GN, PN: bit;
  begin
	GN <= A NAND B;
	W <= A OR B;
	PN <= GN NAND W;
	P <= NOT PN;
	G <= NOT GN;
  end bbolts;
    
    