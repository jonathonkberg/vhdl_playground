library ieee;
use ieee.std_logic_1164.ALL;

-- entity takes two 40 bit vectors and XORs them to produce 40 bit output
entity eight_input_xor is
    port(
        in_vect : in std_ulogic_vector(7 downto 0);
        xor_out : out std_ulogic;
    );
end eight_input_xor;


    architecture eight_layer_structural of eight_input_xor is
        signal i, j, k, l, m, n : std_ulogic;
        begin
            i = in_vect(7) xor in_vect(6);
            j = in_vect(5) xor i;
            k = in_vect(4) xor j;
            l = in_vect(3) xor k;
            m = in_vect(2) xor l;
            n = in_vect(1) xor m;
            xor_out = in_vect(0) xor k;
    end eight_layer_structural;

