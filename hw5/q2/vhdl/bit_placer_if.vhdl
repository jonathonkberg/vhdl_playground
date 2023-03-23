library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_signed.ALL;

entity bit_placer is
    PORT   (sig_in  : IN bit_vector(1 downto 0);
            sig_out : OUT bit_vector(3 downto 0) 
    );
end bit_placer;

architecture if_arch of bit_placer is
    begin
        process(sig_in)
        begin
            if sig_in = "00" then
                sig_out <= "0001";
            elsif sig_in = "01" then
                sig_out <= "0010";
            elsif sig_in = "10" then
                sig_out <= "0100";
            elsif sig_in = "11" then
                sig_out <= "1000";
            end if;
        end process;
    end if_arch;