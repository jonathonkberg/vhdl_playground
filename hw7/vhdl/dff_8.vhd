library ieee;
use ieee.std_logic_1164.ALL;

entity dff_8 is
    port(
        D : in bit_vector (7 downto 0);
        CLK: in bit; 
        Q, Q_n: out bit_vector (7 downto 0)
        );
end dff_8;


architecture algorithm of dff_8 is
    begin
        process(CLK, D)
        begin
          if CLK'event and CLK = '1' then
            for i in 7 downto 0 loop
                  Q(i) <= D(i) after 2 ps;
                  Q_n(i) <= not D(i) after 2 ps;
            end loop;
          end if;
        end process;
end algorithm;
