library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_signed.ALL;

entity bit_placer is
    (PORT   sig_in  : in bit_vector(1 downto 0);
            sig_out : OUT bit_vector(3 downto 0) 
    );
end bit_placer;

architecture case_arch of bit_placer is
    begin
        process(sig_in)
        begin
            CASE sig_in is
                when "00" => sig_out <= "0001";
                when "01" => sig_out <= "0010";
                when "10" => sig_out <= "0100";
                when "11" => sig_out <= "1000";
            end case;
        end process;
    end case_arch;