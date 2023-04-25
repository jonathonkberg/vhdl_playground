library ieee;
use ieee.std_logic_1164.ALL;

-- The sixteen bit counter is not necessary but may be used as a system timer

entity counter_sixteen is
    port(
        CLK: in bit;
        o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12, o13, o14, o15: out bit
        );
    end counter_sixteen;


architecture hierchical_design of counter_sixteen is

component dff is
    port(
        D, CLK: in bit; Q, Q_n: out bit
        );
end component;

signal i0, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15: bit;

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
    (c
        D => i1,
        Q => o1,
        CLK => i0,
        Q_n => i1
    );

    dff2 : dff
    port map
    (
        D => i2,
        Q => o2,
        CLK => i1,
        Q_n => i2
    );

    dff3 : dff
    port map
    (
        D => i3,
        Q => o3,
        CLK => i2,
        Q_n => i3
    );

    dff4 : dff
    port map
    (
        D => i4,
        Q => o4,
        CLK => i3,
        Q_n => i4
    );

    dff5 : dff
    port map
    (
        D => i5,
        Q => o5,
        CLK => i4,
        Q_n => i5
    );

    dff6 : dff
    port map
    (
        D => i6,
        Q => o6,
        CLK => i5,
        Q_n => i6
    );

    dff7 : dff
    port map
    (
        D => i7,
        Q => o7,
        CLK => i6,
        Q_n => i7
    );

    dff8 : dff
    port map
    (
        D => i8,
        Q => o8,
        CLK => i7,
        Q_n => i8
    );

    dff9 : dff
    port map
    (
        D => i9,
        Q => o9,
        CLK => i8,
        Q_n => i9
    );

    dff10 : dff
    port map
    (
        D => i10,
        Q => o10,
        CLK => i9,
        Q_n => i10
    );

    dff11 : dff
    port map
    (
        D => i11,
        Q => o11,
        CLK => i10,
        Q_n => i11
    );

    dff12 : dff
    port map
    (
        D => i12,
        Q => o12,
        CLK => i11,
        Q_n => i12
    );

    dff13 : dff
    port map
    (
        D => i13,
        Q => o13,
        CLK => i12,
        Q_n => i13
    );

    dff14 : dff
    port map
    (
        D => i14,
        Q => o14,
        CLK => i13,
        Q_n => i14
    );

    dff15 : dff
    port map
    (
        D => i15,
        Q => o15,
        CLK => i14,
        Q_n => i15
    );

end architecture;