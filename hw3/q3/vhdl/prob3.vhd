library ieee;
use ieee.std_logic_1164.ALL;

entity full_add is
    port(a,b,c:in std_ulogic; co,s:out std_ulogic);
end full_add;

architecture logic of full_add is
begin
    adding:process(a,b,c)
    begin
      if a='1' or  b='1' or c='1' then
        if (a='0' and b='0') or (a='0' and c='0') or (b='0' and c='0') then
          co <= '0' after 5 ns;
          s <= '1' after 5 ns;
        elsif (a='0') or (b='0') or (c='0') then
          co <= '1' after 5 ns;
          s <= '0' after 5 ns;
        else
          co <= '1' after 5 ns;
          s <= '1' after 5 ns;
        end if;
      elsif a='0' and b='0' and c='0' then
        co <= '0' after 5 ns;
        s <= '0' after 5 ns;
      end if;
    end process adding;
  end logic;