library ieee;
use ieee.std_logic_1164.ALL;

entity sixteen_bit_adder is
    port(   input_a, input_b in : std_ulogic_vector(0 to 15);
            sum out : std_ulogic_vector(0 to 15);
        );
end sixteen_bit_adder;

architecture dataflow of sixteen_bit_adder is
begin
    sum <= input_a + input_b;
end dataflow;

