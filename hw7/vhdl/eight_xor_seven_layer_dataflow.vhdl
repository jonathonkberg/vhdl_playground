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
            end process;

            process(in_vect, i)
            begin
                if not (in_vect(5) = i)
                    j <= '1';
                end if;
            end process;

            process(in_vect, j)
            begin
                if not (in_vect(4) = j)
                    k <= '1';
                end if;
            end process;

            process(in_vect, k)
            begin
                if not (in_vect(3) = k)
                    l <= '1';
                end if;
            end process;

            process(in_vect, l)
            begin
                if not (in_vect(2) = l)
                    m <= '1';
                end if;
            end process;

            process(in_vect, m)
            begin
                if not (in_vect(1) = m)
                    n <= '1';
                end if;
            end process;

            process(in_vect, n)
            begin
                if not (in_vect(0) = n)
                    xor_out <= '1';
                end if;
            end process;
    
        end three_layer_dataflow;