library ieee;
use ieee.std_logic_1164.ALL;

entity counter_sixteen is
    port(
        CLK: in std_ulogic;
        o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12, o13, o14, o15: out std_ulogic
        );
    end counter_sixteen;


architecture hierchical_design of counter_sixteen is

component dff is
    port(
        D, CLK: in std_ulogic; Q, Q_n: out std_ulogic
        );
end component;

signal i0, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15: std_ulogic;

begin

    dff0 : dff
    port map
    (
        D => i0,
        Q => o0,
        CLK => CLK,
        Q_n => i0
    );

    dff1 : dff
    port map
    (
        D => i1,
        Q => o1,
        CLK => CLK,
        Q_n => i1
    );

    dff2 : dff
    port map
    (
        D => i2,
        Q => o2,
        CLK => CLK,
        Q_n => i2
    );

    dff3 : dff
    port map
    (
        D => i3,
        Q => o3,
        CLK => CLK,
        Q_n => i3
    );

    dff4 : dff
    port map
    (
        D => i4,
        Q => o4,
        CLK => CLK,
        Q_n => i4
    );

    dff5 : dff
    port map
    (
        D => i5,
        Q => o5,
        CLK => CLK,
        Q_n => i5
    );

    dff6 : dff
    port map
    (
        D => i6,
        Q => o6,
        CLK => CLK,
        Q_n => i6
    );

    dff7 : dff
    port map
    (
        D => i7,
        Q => o7,
        CLK => CLK,
        Q_n => i7
    );

    dff8 : dff
    port map
    (
        D => i8,
        Q => o8,
        CLK => CLK,
        Q_n => i8
    );

    dff9 : dff
    port map
    (
        D => i9,
        Q => o9,
        CLK => CLK,
        Q_n => i9
    );

    dff10 : dff
    port map
    (
        D => i10,
        Q => o10,
        CLK => CLK,
        Q_n => i10
    );

    dff11 : dff
    port map
    (
        D => i11,
        Q => o11,
        CLK => CLK,
        Q_n => i11
    );

    dff12 : dff
    port map
    (
        D => i12,
        Q => o12,
        CLK => CLK,
        Q_n => i12
    );

    dff13 : dff
    port map
    (
        D => i13,
        Q => o13,
        CLK => CLK,
        Q_n => i13
    );

    dff14 : dff
    port map
    (
        D => i14,
        Q => o14,
        CLK => CLK,
        Q_n => i14
    );

    dff15 : dff
    port map
    (
        D => i15,
        Q => o15,
        CLK => CLK,
        Q_n => i15
    );

end architecture;