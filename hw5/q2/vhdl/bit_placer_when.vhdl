library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_signed.ALL;

entity bit_placer is
    PORT   (sig_in  : in bit_vector(1 downto 0);
            sig_out : OUT bit_vector(3 downto 0)
    );
end bit_placer;

architecture when_arch of bit_placer is
    begin
        sig_out <=  "0001" when sig_in = "00" else
                    "0010" when sig_in = "01" else
                    "0100" when sig_in = "10" else
                    "1000" when sig_in = "11";
    end when_arch;