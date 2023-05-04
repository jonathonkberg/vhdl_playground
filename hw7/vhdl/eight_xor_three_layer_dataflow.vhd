library ieee;
use ieee.std_logic_1164.ALL;

-- entity takes two 40 bit vectors and XORs them to produce 40 bit output
entity eight_input_xor is
    port(
        in_vect : in bit_vector(7 downto 0);
        xor_out : out bit
       -- clk : in std_ulogic
    );
end eight_input_xor;

architecture three_layer_dataflow of eight_input_xor is
    signal i, j, k, l, m, n : bit;
    begin

        process(in_vect) --, clk
        begin
          --if (clk'event and clk = '1') then
            if not (in_vect(7) = in_vect(6)) then
                i <= '1' after 2 ps;
              else
                i <= '0' after 2 ps;
            end if;
            if not (in_vect(5) = in_vect(4)) then
                j <= '1' after 2 ps;
              else
                j <= '0' after 2 ps;
            end if;
            if not (in_vect(3) = in_vect(2)) then
                k <= '1' after 2 ps;
              else
                k <= '0' after 2 ps;
            end if;
            if not (in_vect(1) = in_vect(0)) then
                l <= '1' after 2 ps;
              else
                l <= '0' after 2 ps;
            end if;
          --end if;
        end process;

        process(i, j, k, l) --, clk
          begin
          --if (clk'event and clk = '1') then
            if not (i = j) then
                m <= '1' after 2 ps;
              else
                m <= '0' after 2 ps;
            end if;
            if not (k = l) then
                n <= '1' after 2 ps;
              else
                n <= '0' after 2 ps;
            end if;
          --end if;
        end process;

        process(m, n) --, clk
          begin
          --if (clk'event and clk = '1') then
            if not (m = n) then
                xor_out <= '1' after 2 ps;
              else
                xor_out <= '0' after 2 ps;
            end if;
          --end if;
        end process;

    end three_layer_dataflow;
