library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_signed.ALL;

entity sixteen_bit_adder_alg is
    port(   input_a, input_b : in std_logic_vector(15 downto 0);
            sum : out std_logic_vector(15 downto 0));
end sixteen_bit_adder_alg;

architecture algorithmic of sixteen_bit_adder_alg is
begin
    add : process(input_a, input_b)
    begin
        sum <= input_a + input_b;
    end process add;
end algorithmic;