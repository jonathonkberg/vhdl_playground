library ieee;
use ieee.std_logic_1164.ALL;

-- entity takes two 40 bit vectors and XORs them to produce 40 bit output
entity eight_input_xor is
    port(
        in_vect : in bit_vector(7 downto 0);
        xor_out : out bit
    );
end eight_input_xor;


    architecture seven_layer_dataflow of eight_input_xor is
        signal i, j, k, l, m, n : bit;
        begin
    
            process(in_vect)
            begin
                if not (in_vect(7) = in_vect(6)) then
                    i <= '1';
                  else
                    i <= '0';
                end if;
            end process;

            process(in_vect, i)
            begin
                if not (in_vect(5) = i) then
                    j <= '1';
                  else
                    j <= '0';
                end if;
            end process;

            process(in_vect, j)
            begin
                if not (in_vect(4) = j) then
                    k <= '1';
                  else
                    k <= '0';
                end if;
            end process;

            process(in_vect, k)
            begin
                if not (in_vect(3) = k) then
                    l <= '1';
                  else
                    l <= '0';
                end if;
            end process;

            process(in_vect, l)
            begin
                if not (in_vect(2) = l) then
                    m <= '1';
                  else
                    m <= '0';
                end if;
            end process;

            process(in_vect, m)
            begin
                if not (in_vect(1) = m) then
                    n <= '1';
                  else
                    n <= '0';
                end if;
            end process;

            process(in_vect, n)
            begin
                if not (in_vect(0) = n) then
                    xor_out <= '1';
                  else
                    xor_out <= '0';
                end if;
            end process;
    
        end seven_layer_dataflow;