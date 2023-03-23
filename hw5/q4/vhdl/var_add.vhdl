library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_signed.ALL;

entity invert_circuit is
    (PORT   A_IN  : in bit;
            A_OUT : OUT bit 
    );
end invert_circuit;

architecture var_ex of half_add is
    begin
        process(A_IN, A_OUT)
        variable A_MID : bit;
        begin
            A_MID := not A_IN;
            A_OUT := A_MID;
            wait on A_IN
        end process
    end var_ex;