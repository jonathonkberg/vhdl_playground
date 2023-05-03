library ieee;
use ieee.std_logic_1164.ALL;

-- entity takes two 40 bit vectors and XORs them to produce 40 bit output
entity eight_input_xor is
    port(
        in_vect : in std_ulogic_vector(7 downto 0);
        xor_out : out std_ulogic;
    );
end eight_input_xor;

architecture three_layer_dataflow of eight_input_xor is
    signal i, j, k, l, m, n : std_ulogic;
    begin

        process(in_vect)
        begin
            if not (in_vect(7) = in_vect(6))
                i <= '1';
            end if;
            if not (in_vect(5) = in_vect(4))
                j <= '1';
            end if;
            if not (in_vect(3) = in_vect(2))
                k <= '1';
            end if;
            if not (in_vect(1) = in_vect(0))
                l <= '1';
            end if;
        end process;

        process(i, j, k, l)
            if not (i = j)
                m <= '1';
            end if;
            if not (k, l)
                n <= '1';
            end if;

            if not (in_vect(7) = in_vect(6))
                xor_out <= '1';
            end if;
        end process

        process(m, n)
            if not (m = n)
                xor_out = '1';
            end if;
        end process;

    end three_layer_dataflow;
