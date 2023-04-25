library ieee;
use ieee.std_logic_1164.ALL;

-- entity takes two 40 bit vectors and XORs them to produce 40 bit output
entity galois_adder is
    port(
        add_in_1, add_in_2 : in std_ulogic_vector(7 downto 0);
        add_out : out std_ulogic_vector(7 downto 0);
    );
end galois_adder;

architecture xor_basic of galois_adder is
    begin
        add_out(7) <= add_in_1(7) XOR add_in_2(7);
        add_out(6) <= add_in_1(6) XOR add_in_2(6);
        add_out(5) <= add_in_1(5) XOR add_in_2(5);
        add_out(4) <= add_in_1(4) XOR add_in_2(4);
        add_out(3) <= add_in_1(3) XOR add_in_2(3);
        add_out(2) <= add_in_1(2) XOR add_in_2(2);
        add_out(1) <= add_in_1(1) XOR add_in_2(1);
        add_out(0) <= add_in_1(0) XOR add_in_2(0);
end architecture;