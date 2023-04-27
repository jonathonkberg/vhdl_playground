
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- modulo
ENTITY modu IS
 PORT ( 
 a: IN STD_LOGIC_VECTOR (14 downto 0); 
 clk: IN STD_LOGIC;
 remin: OUT STD_LOGIC_VECTOR (7 downto 0));
END modu;

ARCHITECTURE behavioral OF modu IS
  signal int1 : std_logic_vector (14 downto 0):= "000000000000000" ;
  signal int2 : std_logic_vector (14 downto 0):= "000000000000000";
  signal int3 : std_logic_vector (14 downto 0):= "000000000000000" ;
  signal int4 : std_logic_vector (14 downto 0):= "000000000000000";
  signal int5 : std_logic_vector (14 downto 0):= "000000000000000" ;
  signal int6 : std_logic_vector (14 downto 0):= "000000000000000";
  signal int7 : std_logic_vector (14 downto 0):= "000000000000000" ;
  signal int8 : std_logic_vector (14 downto 0):= "000000000000000";
  signal int9 : std_logic_vector (14 downto 0):= "000000000000000" ;
  signal int10 : std_logic_vector (14 downto 0):= "000000000000000";
  signal int11 : std_logic_vector (14 downto 0):= "000000000000000" ;
  signal int12 : std_logic_vector (14 downto 0):= "000000000000000";
  signal int13 : std_logic_vector (14 downto 0):= "000000000000000" ;
  signal int14 : std_logic_vector (14 downto 0):= "000000000000000";
  signal rst : std_logic := '0';
  signal flg1 : std_logic := '0';
  signal flg2 : std_logic := '0';
  signal flg3 : std_logic := '0';
  signal flg4 : std_logic := '0';
  signal flg5 : std_logic := '0';
  signal flg6 : std_logic := '0';
  signal flg7 : std_logic := '0';
  signal flg : std_logic := '0';
  signal Shift_value1 : integer := 0;
  signal Shift_value2 : integer := 0;
  signal Shift_value3 : integer := 0;
  signal Shift_value4 : integer := 0;
  signal Shift_value5 : integer := 0;
  signal Shift_value6 : integer := 0;
  signal Shift_value7 : integer := 0;
  signal remin_index  : std_logic_vector (6 downto 0):= "0000000";
BEGIN


check1: process(a,clk)
   
    begin
      
      if (clk'event and clk='1') then
    for i in 14 downto 8 loop
      if a(i) = '1' then 
        flg1 <= '1' ; 
        Shift_value1 <= 14-i ;
        exit ;
     else null  ;
     end if ; 
  end loop ;
 end if; 
end process ; 

Irp_shift1: process (shift_value1)
variable Irp : std_logic_vector (14 downto 0):= "100011011000000" ;

begin 
  int1 <= "000000000000000" ;

  if flg1='1' then
        for i in 14 downto shift_value1 loop
       
        int1(i-shift_value1) <= irp(i) ;
      
  end loop ;
end if;
end process; 

XOR_irp1 :process (int1) 
      
    begin 
   if flg1='1'  then
   for i in 14 downto 0 loop
   int2(i) <= a(i) xor int1(i);
    
end loop;
end if;
end process; 

check2: process(int2,clk)
   
    begin
      if (clk'event and clk='1') then
    for i in 14 downto 8 loop
      if int2(i) = '1' then 
        flg2 <= '1' ;
        Shift_value2 <= 14-i ;
        exit ;
     else flg2 <= '0' ; 
     end if ; 
  end loop ;
end if;
end process ; 

Irp_shift2: process (Shift_value2)
variable Irp : std_logic_vector (14 downto 0):= "100011011000000" ;

begin 
  int3 <= "000000000000000" ;
  --flg1 <= '0';
  --if (clk'event and clk='1') then
  if flg2='1' then
        for i in 14 downto shift_value2 loop
       
        int3(i-shift_value2) <= irp(i) ;
      
  end loop ;
  
end if;
end process; 

XOR_irp2 :process (int3) 
      
    begin 
  --if (clk'event and clk='1') and  
   if flg2='1' then
   for i in 14 downto 0 loop
   int4(i) <= int2(i) xor int3(i);
    
end loop;
end if;
end process;

check3: process(int4,clk)
   
    begin
     if (clk'event and clk='1') then 
    for i in 14 downto 8 loop
      if int4(i) = '1' then 
        flg3 <= '1' ;
        Shift_value3 <= 14-i ;
        exit ;
     else flg3 <= '0' ; 
     end if ; 
  end loop ;
end if;
end process ; 

Irp_shift3: process (Shift_value3)
variable Irp : std_logic_vector (14 downto 0):= "100011011000000" ;

begin 
  int5 <= "000000000000000" ;
 -- if (clk'event and clk='1') then
    if flg3='1' then
        for i in 14 downto shift_value3 loop
       
        int5(i-shift_value3) <= irp(i) ;
      
  end loop ;
  
end if;
end process; 

XOR_irp3 :process (int5) 
      
    begin 
   --if (clk'event and clk='1') and
    if flg3='1'  then
   for i in 14 downto 0 loop
   int6(i) <= int4(i) xor int5(i);
    
end loop;
end if;
end process; 

check4: process(int6,clk)
   
    begin
    if (clk'event and clk='1') then  
    for i in 14 downto 8 loop
      if int6(i) = '1' then 
        flg4 <= '1' ;
        Shift_value4 <= 14-i ;
        exit ;
     else flg4 <= '0' ;
     end if ; 
  end loop ;
end if;
end process ; 

Irp_shift4: process (Shift_value4)
variable Irp : std_logic_vector (14 downto 0):= "100011011000000" ;

begin 
  int7 <= "000000000000000" ;
  --if (clk'event and clk='1') then
     if flg4='1' then
        for i in 14 downto shift_value4 loop
       
        int7(i-shift_value4) <= irp(i) ;
      
  end loop ;
 
end if;
end process; 

XOR_irp4 :process (int7) 
      
    begin 
   --if (clk'event and clk='1') and 
   if flg4='1'  then
   for i in 14 downto 0 loop
   int8(i) <= int6(i) xor int7(i);
    
end loop;
end if;
end process;

check5: process(int8,clk)
   
    begin
      if (clk'event and clk='1') then
    for i in 14 downto 8 loop
      if int8(i) = '1' then 
        flg5 <= '1' ;
        Shift_value5 <= 14-i ;
        exit ;
     else flg5 <= '0' ; 
     end if ; 
  end loop ;
end if;
end process ; 

Irp_shift5: process (Shift_value5)
variable Irp : std_logic_vector (14 downto 0):= "100011011000000" ;

begin 
  int9 <= "000000000000000" ;
  --if (clk'event and clk='1') then
     if flg5='1' then
        for i in 14 downto shift_value5 loop
       
        int9(i-shift_value5) <= irp(i) ;
      
  end loop ;
 
end if;
end process; 

XOR_irp5 :process (int9) 
      
    begin 
  -- if (clk'event and clk='1') and
   if flg5='1'  then
   for i in 14 downto 0 loop
   int10(i) <= int8(i) xor int9(i);
    
end loop;
end if;
end process;
check6: process(int10,clk)
   
    begin
     if (clk'event and clk='1') then 
    for i in 14 downto 8 loop
      if int10(i) = '1' then 
        flg6 <= '1' ;
        Shift_value6 <= 14-i ;
        exit ;
     else flg6 <= '0' ; 
     end if ; 
  end loop ;
end if;
end process ; 

Irp_shift6: process (Shift_value6)
variable Irp : std_logic_vector (14 downto 0):= "100011011000000" ;

begin 
  int11 <= "000000000000000" ;
  --if (clk'event and clk='1') then
     if flg6='1' then
        for i in 14 downto shift_value6 loop
       
        int11(i-shift_value6) <= irp(i) ;
      
  end loop ;
  
end if;
end process; 

XOR_irp6 :process (int11) 
      
    begin 
   --if (clk'event and clk='1') and
   if flg6='1'  then
   for i in 14 downto 0 loop
   int12(i) <= int10(i) xor int11(i);
    
end loop;
end if;
end process; 


 check7: process(int12,clk)
   
    begin
     if (clk'event and clk='1') then 
    for i in 14 downto 8 loop
      if int12(i) = '1' then 
        flg7 <= '1' ;
        Shift_value7 <= 14-i ;
        exit ;
     else flg7 <= '0' ; 
     end if ; 
  end loop ;
end if;
end process ; 

Irp_shift7: process (Shift_value7)
variable Irp : std_logic_vector (14 downto 0):= "100011011000000" ;

begin 
  int13 <= "000000000000000" ;
  --if (clk'event and clk='1') then
     if flg7='1' then
        for i in 14 downto shift_value7 loop
       
        int13(i-shift_value7) <= irp(i) ;
      
  end loop ;
  
end if;
end process; 

XOR_irp7 :process (int13) 
      
    begin 
   --if (clk'event and clk='1') and 
   if flg7='1'  then
   for i in 14 downto 0 loop
   int14(i) <= int12(i) xor int13(i);
    
end loop;
end if;
end process; 

concat :process (clk) 
      
    begin 
      remin_index  <=  flg1 & flg2 & flg3 & flg4 & flg5 & flg6 & flg7  ;

end process; 

Reminder :process (remin_index) 
      
    begin 

 case remin_index is
            when "0000000" =>
                remin <= a(7 downto 0); 
            when "1000000" =>
                remin <= int2(7 downto 0);
            when "1100000" =>
                remin <= int4(7 downto 0);
            when "1110000" =>
                remin <= int6(7 downto 0);
            when "1111000" =>
                 remin <= int8(7 downto 0);
            when "1111100" =>
                 remin <= int10(7 downto 0);
            when "1111110" =>
                 remin <= int12(7 downto 0);
            when others => -- 'U', 'X', '-', etc.
                remin <= int14(7 downto 0) ;
        end case;
 

end process; 



 
END behavioral;