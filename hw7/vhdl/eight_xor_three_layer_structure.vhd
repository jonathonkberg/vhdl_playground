library ieee;
use ieee.std_logic_1164.ALL;

-- entity takes two 40 bit vectors and XORs them to produce 40 bit output
entity eight_input_xor is
    port(
        in_vect : in bit_vector(7 downto 0);
        xor_out : out bit
    );
end eight_input_xor;



architecture three_layer_structural of eight_input_xor is
    signal i, j, k, l, m, n : bit;
    begin
        i <= in_vect(7) xor in_vect(6);
        j <= in_vect(5) xor in_vect(4);
        k <= in_vect(3) xor in_vect(2);
        l <= in_vect(1) xor in_vect(0);
        m <= i xor j;
        n <= k xor l;
        xor_out <= m xor n;
end three_layer_structural;