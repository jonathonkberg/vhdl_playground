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

--__________________________________________________________________________--
    --Test Bench Signals - not part of model
    -- input signals
    signal packet_input, random_num_input : std_logic_vector(7 downto 0);
    signal clk : std_logic;
    -- output signals
    signal mult_out : std_logic_vector(7 downto 0);
--__________________________________________________________________________--



    --intermediary signals part of model
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


--___________________________________________________________________________--
    --Test Bench Process Input Cycle

        clock : process
        begin
          clk <= '0', '1' after 25 ns; -- may need to adjust clk speed!!!
          wait for 50 ns; -- see comment above!!!
        end process;
        

        stimulus_process : process
        begin
          packet_input <= "10010011";
          random_num_input <= "01011001";
          
          wait for 200 ns;
          
          packet_input <= "10101010";
          random_num_input <= "01010101";
          
          wait for 200 ns;
          
        end process;
--___________________________________________________________________________--



end multiply_hierchical;