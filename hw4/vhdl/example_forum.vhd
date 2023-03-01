LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_signed.ALL;

ENTITY ALU IS
   PORT(data1     : IN  std_logic_vector(15 DOWNTO 0);
        data2     : IN  std_logic_vector(15 DOWNTO 0);
        operation : IN  std_logic;
        result    : OUT std_logic_vector (15 DOWNTO 0);
        overflow  : OUT std_logic
   );        
END ALU;

ARCHITECTURE Behavioral OF ALU IS
    SIGNAL result_temp : std_logic_vector(15 DOWNTO 0);
BEGIN
    result_temp <= (data1 + data2) WHEN (operation = '0') ELSE (data1 - data2);
    overflow    <= '1' WHEN (operation='0' AND data1(15)=data2(15) AND result_temp(15)/=data1(15)) or
                            (operation='1' AND data1(15)/=data2(15) AND result_temp(15)/=data1(15)) ELSE '0';
    result      <= result_temp;
END Behavioral;