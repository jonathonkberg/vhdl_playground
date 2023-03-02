library ieee;
use ieee.std_logic_1164.ALL;

entity custom_circuit is
    port(in_a, in_b, in_c, in_d : in std_ulogic; out_e : out std_ulogic);
end custom_circuit;

architecture arch_1 of custom_circuit is
    signal net1, net2, net3, net4, net5 : std_ulogic;
    begin
        net2 <= in_b or in_c;
        net3 <= not net2;
        net1 <= in_a and net3;
        net4 <= not in_d;
        net5 <= net2 and net4;
        out_e <= net1 and net5;
    end arch_1;
    

        