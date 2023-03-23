library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_signed.ALL;

entity invert_circuit is
    PORT   (A_IN  : in bit;
            A_OUT : OUT bit 
    );
end invert_circuit;

architecture sig_ex of invert_circuit is
    
    signal A_MID : bit;
    
    begin
        process(A_IN)
        begin
            A_MID <= not A_IN;
            A_OUT <= A_MID;
        end process;
    end sig_ex;
