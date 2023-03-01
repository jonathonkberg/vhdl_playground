library ieee;
use ieee.std_logic_1164.ALL;

entity sixteen_bit_adder is
    port(   input_a, input_b in : std_ulogic_vector(0 to 15);
            sum out : std_ulogic_vector(0 to 15);
        );
end sixteen_bit_adder;

architecture algorithmic of sixteen_bit_adder is
begin
    add : process(input_a, input_b)
    begin
        sum <= input_a + input_b;
    end process add;
end algorithmic;