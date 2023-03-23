library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_signed.ALL;

entity bit_placer is
    (PORT   sig_in  : IN bit_vector(1 downto 0);
            sig_out : OUT bit_vector(3 downto 0);
            CLK : IN bit 
    );
end bit_placer;

architecture lat_arch of bit_placer is
    
    CLK <= not CLK after 5 ns;
    
    begin
        process(sig_in)
        begin
            if sig_in = '00' and clk = '1' then
                sig_out <= '0001';
            elsif sig_in = '01' and clk = '1' then
                sig_out <= '0010';
            elsif sig_in = '10' and clk = '1' then
                sig_out <= '0100' and clk = '1';
            elsif sig_in = '11' and clk = '1' then
                sig_out <= '1000';
            end if;
        end process;
    end lat_arch;