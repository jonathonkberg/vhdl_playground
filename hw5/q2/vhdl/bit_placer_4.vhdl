library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_signed.ALL;

entity bit_placer is
    (PORT   sig_in  : in bit_vector(1 downto 0);
            sig_out : OUT bit_vector(3 downto 0) 
    );
end bit_placer;

architecture with_arch of bit_placer is
    begin
        with sig_in select
            sig_out <=  '0001' when '00',
                        '0010' when '01',
                        '0100' when '10',
                        '1000' when '11';
    end with_arch;