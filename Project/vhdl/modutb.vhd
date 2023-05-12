Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;
--component for the Unit Under Test

ENTITY modutb is 
  
END modutb;
Architecture behavior of modutb is

COMPONENT modu 
PORT ( 
a: IN STD_LOGIC_VECTOR (14 downto 0); 
clk : IN STD_LOGIC;
 remin: OUT STD_LOGIC_VECTOR (7 downto 0));
END COMPONENT;
---inputs
signal a : STD_LOGIC_VECTOR (14 downto 0);
signal clk : STD_LOGIC;

---outputs
signal remin : STD_LOGIC_VECTOR (7 downto 0);

 
BEGIN
  
uut: modu PORT MAP ( a, clk, remin) ;
  
clock: process
begin
clk <= '0', '1' after 10 ns;
wait for 20 ns;
end process; 
 
stim_proc: process
begin 
  
 a <= "000000000000000";

 wait for 100 ns;
 a <= "001000000001100";

 wait for 300 ns;
 a <= "000010000001111";
 
 wait for 300 ns;
 a <= "100000001111000";

 wait for 300 ns;
 a <= "011010101010101";
 
  wait for 300 ns;
 a <= "111101100101110";

 wait ;

end process;

END;

