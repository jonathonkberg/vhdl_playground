-- 
-- Blink example
-- 
-- Using the button 0 (V_BT(0)) as a reset, this 
-- code makes the first LED (G_LED(0)) blink
-- 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity blink is
    port (
        G_CLOCK_50: in std_logic; --50MHz
        V_BT: in std_logic_vector (0 downto 0);
        G_LED: out std_logic_vector (9 downto 0);
        HEX1, HEX2: out std_logic_vector (6 downto 0);
        SW : in std_logic_vector (9 downto 0)
    );
end;

architecture behav of blink is
    signal count : unsigned(32 downto 0) := (others => '0');
    signal brightness : std_logic_vector(9 downto 0);
    signal reset : std_logic;
    signal clk1 : std_logic;
    signal Hex1_val, HEX2_val : std_logic_vector (6 downto 0);
    signal hex_dig_1, hex_dig_2 : std_logic_vector (3 downto 0);
    
    signal input_a, input_b : std_logic_vector(7 downto 0);
    signal add_out : std_logic_vector(7 downto 0);
    
begin
    G_LED <= brightness;
    reset <= not V_BT(0);
    HEX1 <= HEX1_val;
    HEX2 <= HEX2_val;

    process(G_CLOCK_50, reset)
    begin
        if rising_edge(G_CLOCK_50) then
            count <= count + 1;
            if count(26) = '1' then
                brightness <= "1111111111";
            --    HEX1_val <= "1000100";
            else
                brightness <= "0000000000" ;
            --    HEX1_val <= "1000000";
            end if;
        end if; -- end of sync

        if reset = '1' then
            count <= (others => '0');
            brightness <= "0000000000";
        end if;
        
    end process;
    
    
    process(G_CLOCK_50)
        begin
            if rising_edge(G_CLOCK_50) then
                if (count(28) = '1') then
                    clk1 <= '1';
                    hex_dig_1 <= "1100";
                    hex_dig_2 <= "1101";
                else
                    clk1 <= '0';
                    hex_dig_1 <= "1110";
                    hex_dig_2 <= "1111";
                end if;
            end if;
        end process;
    
    process(clk1)
      begin
        if(clk1 = '1') then
          for i in 7 downto 0 loop
            add_out(i) <= input_a(i) xor input_b(i);
          end loop;
        end if;
      end process; 
      
     -- process(add_out)
     -- begin
        --for i in 3 downto 0 loop
            --hex_dig_1(i) <= add_out(i);
            --hex_dig_2(i) <= add_out(i+4);
     --   end loop;
      -- end process;
       
       process(hex_dig_1)
       begin
        if (hex_dig_1 = "0000") then
            HEX1_val <= "1000000";
        elsif (hex_dig_1 = "0001") then
            HEX1_val <= "1111001";
        elsif (hex_dig_1 = "0010") then
            HEX1_val <= "0100100";
        elsif (hex_dig_1 = "0011") then
            HEX1_val <= "0110000";
        elsif (hex_dig_1 = "0100") then
            HEX1_val <= "0011001";
        elsif (hex_dig_1 = "0101") then
            HEX1_val <= "0010010";
        elsif (hex_dig_1 = "0110") then
            HEX1_val <= "0000010";
        elsif (hex_dig_1 = "0111") then
            HEX1_val <= "1111000";
        elsif (hex_dig_1 = "1000") then
            HEX1_val <= "0000000";
        elsif (hex_dig_1 = "1001") then
            HEX1_val <= "0011000";
        elsif (hex_dig_1 = "1010") then
            HEX1_val <= "0001000";
        elsif (hex_dig_1 = "1011") then
            HEX1_val <= "0000011";
        elsif (hex_dig_1 = "1100") then
            HEX1_val <= "1000110";
        elsif (hex_dig_1 = "1101") then
            HEX1_val <= "0100001";
        elsif (hex_dig_1 = "1110") then
            HEX1_val <= "0000110";
        elsif (hex_dig_1 = "1111") then
            HEX1_val <= "0001110";
        end if;
    end process;
    
       process(hex_dig_2)
       begin
        if (hex_dig_2 = "0000") then
            HEX2_val <= "1000000";
        elsif (hex_dig_2 = "0001") then
            HEX2_val <= "1111001";
        elsif (hex_dig_2 = "0010") then
            HEX2_val <= "0100100";
        elsif (hex_dig_2 = "0011") then
            HEX2_val <= "0110000";
        elsif (hex_dig_2 = "0100") then
            HEX2_val <= "0011001";
        elsif (hex_dig_2 = "0101") then
            HEX2_val <= "0010010";
        elsif (hex_dig_2 = "0110") then
            HEX2_val <= "0000010";
        elsif (hex_dig_2 = "0111") then
            HEX2_val <= "1111000";
        elsif (hex_dig_2 = "1000") then
            HEX2_val <= "0000000";
        elsif (hex_dig_2 = "1001") then
            HEX2_val <= "0011000";
        elsif (hex_dig_2 = "1010") then
            HEX2_val <= "0001000";
        elsif (hex_dig_2 = "1011") then
            HEX2_val <= "0000011";
        elsif (hex_dig_2 = "1100") then
            HEX2_val <= "1000110";
        elsif (hex_dig_2 = "1101") then
            HEX2_val <= "0100001";
        elsif (hex_dig_2 = "1110") then
            HEX2_val <= "0000110";
        elsif (hex_dig_2 = "1111") then
            HEX2_val <= "0001110";
        end if;
    end process;
    
end behav;

