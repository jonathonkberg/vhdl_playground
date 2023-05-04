
library ieee;
use ieee.std_logic_1164.ALL;

entity dff is
    port(
        D_initial, D, CLK: in bit; 
        Q, Q_n: out bit;
        reset : in bit
        );
end dff;


architecture algorithm of dff is
    begin
        process(CLK, D)
        begin
            if CLK'event and CLK = '1' then
              if reset = '1' then
                Q <= D_initial after 2 ps;
                Q_n <= not D_initial after 2 ps;
              else
                Q <= D after 2 ps;
                Q_n <= not D after 2 ps;
              end if;
            end if;
        end process;
end algorithm;