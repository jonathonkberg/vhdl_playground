
-- 
-- Definition of  invert_circuit
-- 
--      Thu Mar 23 15:39:45 2023
--      
--      LeonardoSpectrum Level 3, 2011a.4
-- 

library ieee, adk; use ieee.std_logic_1164.all, use ieee.std_logic_signed.all, adk.adk_components.all;

entity invert_circuit is
   port (
      A_IN : IN std_logic ;
      A_OUT : OUT std_logic) ;
end invert_circuit ;

architecture sig_ex of invert_circuit is
begin
   ix59 : inv01 port map ( Y=>A_OUT, A=>A_IN);
end sig_ex ;

