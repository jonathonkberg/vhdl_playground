-- Galois Multiplier Hierchical Design
-- 1. Expand
-- 2. Modulo
--_______________________________________________________________________________--

entity galois_multiplier is
    port(
        packet_input, random_num_input : in std_logic_vector(7 downto 0);
        mult_out : out std_logic_vector(7 downto 0);
        clk : in std_logic;
    );
end galois_multiplier;


architecture multiply_hierchical of galois_multiplier is
    begin
        
    -- Expands in multiplication process
    component galois_expand is
        port(
            clk : in std_logic;
            packet_input, random_num_input : in std_logic_vector(7 downto 0);
            exp_out : out std_logic_vector(14 downto 0);
            finish : out std_logic;
        );
    end component;

    -- Modulo operation to complete multiplication
    component galois_modulo is
        port(
            clk : in std_logic;
            expanded_mult : in std_logic_vector(14 downto 0);
            mod_out : out std_logic_vector(14 downto 0);
        );
    end component;

    --expanded signals
    signal : expanded_sig : std_logic(14 downto 0);

    begin

        expansion_1 : galois_expand
        port map
        (
            packet_input => packet_input,
            random_num_input => random_num_input,
            exp_out => expanded_sig,
            CLK => CLK
        );
        modulo_1 : galois_modulo
        port map
        (
            expanded_mult => expanded_sig,
            mod_out => mult_out,
            CLK => CLK
        );


end multiply_hierchical;