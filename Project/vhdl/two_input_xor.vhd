library ieee;
use ieee.std_logic_1164.ALL;

-- entity takes two 40 bit vectors and XORs them to produce 40 bit output
entity two_input_xor is
    port(
        input_1, input_2 : in std_ulogic;
        xor_out : out std_ulogic;
    );
end two_input_xor;

architecture xor_basic of two_input_xor is
    begin
        xor_out <= input_1 XOR input_2;
end xor_basic;