library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_signed.ALL;

entity sixteen_bit_adder_df is
    port(   input_a, input_b : in std_logic_vector(0 to 15);
            sum : out std_logic_vector(0 to 15));
end sixteen_bit_adder_df;

architecture dataflow of sixteen_bit_adder_df is
begin
    sum <= input_a + input_b;
end dataflow;


