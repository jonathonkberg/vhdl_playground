library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_signed.ALL;

entity bit_placer is
    PORT   (sig_in  : IN bit_vector(1 downto 0);
            sig_out : OUT bit_vector(3 downto 0);
            CLK : inout bit
    );
end bit_placer;

architecture lat_arch of bit_placer is
    
    begin
      
        CLK <= not CLK after 10 ns;
      
        process(sig_in, clk)
        begin
            if (sig_in = "00") then
              if CLK = '1' then
                sig_out <= "0001";
              end if;
            elsif (sig_in = "01")then
              if CLK = '1' then
                sig_out <= "0010";
              end if;
            elsif (sig_in = "10") then
              if CLK = '1' then
                sig_out <= "0100";
              end if;
            elsif (sig_in = "11") then
              if CLK = '1' then
                sig_out <= "1000";
              end if;
            end if;
        end process;
    end lat_arch;