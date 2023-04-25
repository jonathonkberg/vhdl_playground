--- 15 bit Shift Register - SIPO ---


library ieee;
use ieee.std_logic_1164.ALL;


---------------------- ENTITY DECLARATION ------------------------

entity shift_register_15 is
    port(
        CLK, shift_in: in std_ulogic;
        b : inout std_ulogic_vector(14 downto 0)
        shift_out : out std_ulogic;
        );
    end shift_register_15;



------------------------- ARCHITECTURE ----------------------------

architecture hierchical_design of shift_register_15 is



--- COMPONENT DECLARATIONS ---

component dff is
    port(
        D, CLK: in std_ulogic; 
        Q, Q_n: out std_ulogic
        );
end component;


--- ARCHITECTURE CONTENT ---

begin

    dff15 : dff
    port map
    (
        D => b(16),
        Q => b(15),
        CLK => CLK,
    );
    dff14 : dff
    port map
    (
        D => b(15),
        Q => b(14),
        CLK => CLK,
    );
    dff13 : dff
    port map
    (
        D => b(14),
        Q => b(13),
        CLK => CLK,
    );
    dff12 : dff
    port map
    (
        D => b(13),
        Q => b(12),
        CLK => CLK,
    );
    dff11 : dff
    port map
    (
        D => b(12),
        Q => b(11),
        CLK => CLK,
    );
    dff10 : dff
    port map
    (
        D => b(11),
        Q => b(10),
        CLK => CLK,
    );
    dff9 : dff
    port map
    (
        D => b(10),
        Q => b(9),
        CLK => CLK,
    );
    dff8 : dff
    port map
    (
        D => b(9),
        Q => b(8),
        CLK => CLK,
    );
    dff7 : dff
    port map
    (
        D => b(8),
        Q => b(7),
        CLK => CLK,
    );
    dff6 : dff
    port map
    (
        D => b(7),
        Q => b(6),
        CLK => CLK,
    );
    dff5 : dff
    port map
    (
        D => b(6),
        Q => b(5),
        CLK => CLK,
    );
    dff4 : dff
    port map
    (
        D => b(5),
        Q => b(4),
        CLK => CLK,
    );
    dff3 : dff
    port map
    (
        D => b(4),
        Q => b(3),
        CLK => CLK,
    );
    dff2 : dff
    port map
    (
        D => b(3),
        Q => b(2),
        CLK => CLK,
    );
    dff1 : dff
    port map
    (
        D => b(2),
        Q => b(1),
        CLK => CLK,
    );
    dff0 : dff
    port map
    (
        D => b(1),
        Q => b(0),
        CLK => CLK,
    );

end architecture;