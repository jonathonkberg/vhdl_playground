
-- 
-- Definition of  bit_placer
-- 
--      Thu Mar 23 15:34:37 2023
--      
--      LeonardoSpectrum Level 3, 2011a.4
-- 

library ieee, adk; use ieee.std_logic_1164.all, use ieee.std_logic_signed.all, adk.adk_components.all;

entity bit_placer is
   port (
      sig_in : IN std_logic_vector (1 DOWNTO 0) ;
      sig_out : OUT std_logic_vector (3 DOWNTO 0)) ;
end bit_placer ;

architecture with_arch of bit_placer is
   signal nx85: std_logic ;

begin
   ix15 : inv01 port map ( Y=>sig_out(3), A=>nx85);
   ix86 : nand02 port map ( Y=>nx85, A0=>sig_in(1), A1=>sig_in(0));
   ix5 : nor02 port map ( Y=>sig_out(0), A0=>sig_in(1), A1=>sig_in(0));
   ix13 : nor02ii port map ( Y=>sig_out(2), A0=>sig_in(0), A1=>sig_in(1));
   ix9 : nor02ii port map ( Y=>sig_out(1), A0=>sig_in(1), A1=>sig_in(0));

end with_arch ;

