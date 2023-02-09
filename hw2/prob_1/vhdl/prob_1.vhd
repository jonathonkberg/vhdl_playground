LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity full_adder is
  port(A, B, C: in bit; Co, S: out bit);
end full_adder;

architecture adding_bolts of full_adder is
  signal W1, W2, W3, W4: bit;
  begin
    W1 <= A XOR B after 10ns;
    W2 <= B AND C after 10ns;
    W3 <= A AND C after 10ns;
    W4 <= A AND B after 10ns;
    Co <= W2 OR W3 OR W4 after 10ns;
    S <= W1 XOR C after 10ns;
  end adding_bolts;
    
    