library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_signed.ALL;

entity dff is
    port(
        D, CLK_ff: in std_ulogic; Q, Q_n: out: std_ulogic
        );
end dff;

entity counter_sixteen is
    port(
        CLK: in std_ulogic;
        o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12, o13, o14, o15: out std_ulogic
        );
    end counter_sixteen;


architecture algorithm of dff is
    begin
        process(CLK, D)
        begin
            if CLK'event and CLK = '1' then
                Q <= D;
                Q_n <= not D'
            end if;
        end process
end algorithm;


architecture hierchical_design of counter_sixteen is

component dff is
    port(
        D, CLK: in std_ulogic; Q, Q_n: out: std_ulogic
        );
end component;

signal i0, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15: std_ulogic;

begin

    dff0 : dff
    port map
    (
        i0 -> D
        Q -> o0
        CLK -> CLK_ff
        Q_n -> i0
    );

    dff1 : dff
    port map
    (
        i1 -> D
        Q -> o1
        CLK -> CLK_ff
        Q_n -> i1
    );

    dff2 : dff
    port map
    (
        i2 -> D
        Q -> o2
        CLK -> CLK_ff
        Q_n -> i2
    );

    dff3 : dff
    port map
    (
        i3 -> D
        Q -> o3
        CLK -> CLK_ff
        Q_n -> i3
    );

    dff4 : dff
    port map
    (
        i4 -> D
        Q -> o4
        CLK -> CLK_ff
        Q_n -> i4
    );

    dff5 : dff
    port map
    (
        i5 -> D
        Q -> o5
        CLK -> CLK_ff
        Q_n -> i5
    );

    dff6 : dff
    port map
    (
        i6 -> D
        Q -> o6
        CLK -> CLK_ff
        Q_n -> i6
    );

    dff7 : dff
    port map
    (
        i7 -> D
        Q -> o7
        CLK -> CLK_ff
        Q_n -> i7
    );

    dff8 : dff
    port map
    (
        i8 -> D
        Q -> o8
        CLK -> CLK_ff
        Q_n -> i8
    );

    dff9 : dff
    port map
    (
        i9 -> D
        Q -> o9
        CLK -> CLK_ff
        Q_n -> i9
    );

    dff10 : dff
    port map
    (
        i10 -> D
        Q -> o10
        CLK -> CLK_ff
        Q_n -> i10
    );

    dff11 : dff
    port map
    (
        i11 -> D
        Q -> o11
        CLK -> CLK_ff
        Q_n -> i11
    );

    dff12 : dff
    port map
    (
        i12 -> D
        Q -> o12
        CLK -> CLK_ff
        Q_n -> i12
    );

    dff13 : dff
    port map
    (
        i13 -> D
        Q -> o13
        CLK -> CLK_ff
        Q_n -> i13
    );

    dff14 : dff
    port map
    (
        i14 -> D
        Q -> o14
        CLK -> CLK_ff
        Q_n -> i14
    );

    dff15 : dff
    port map
    (
        i15 -> D
        Q -> o15
        CLK -> CLK_ff
        Q_n -> i15
    );

end architecture;