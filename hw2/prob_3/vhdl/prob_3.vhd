LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity tollbooth is
  port(C, P: in bit; L: out bit; S1, S0, N1, N0: inout bit);
end tollbooth;

architecture tollbolts of tollbooth is
  signal S1N, S0N, PN: bit;
  begin
	S1N <= NOT S1;
	S0N <= NOT S0;
	PN <= NOT P;
	N1 <= (S1N AND S0 AND P) OR (S1 AND S0N AND C);
	N0 <= S1N AND ((S0N AND C) OR (S0 AND PN));
	L <= S1 AND S0N;
	S1 <= TRANSPORT N1 AFTER 10 ns;
	S0 <= TRANSPORT N0 AFTER 10 ns;
  end tollbolts;
    