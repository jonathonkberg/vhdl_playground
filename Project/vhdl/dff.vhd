library ieee;
use ieee.std_logic_1164.ALL;

entity dff is
    port(
        D, CLK: in bit; Q, Q_n: out bit
        );
end dff;


architecture algorithm of dff is
    begin
        process(CLK, D)
        begin
            if CLK'event and CLK = '1' then
                Q <= D;
                Q_n <= not D;
            end if;
        end process;
end algorithm;