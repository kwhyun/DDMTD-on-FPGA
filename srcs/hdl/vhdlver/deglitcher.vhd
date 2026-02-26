library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.gencores_pkg.all;

entity dmtd_with_deglitcher is
  generic (
    g_counter_bits : natural := 17
  );
  port (
    r_deglitch_threshold_i : in  std_logic_vector(15 downto 0);

    rst_n_dmtdclk_i : in  std_logic;
    rst_n_sysclk_i  : in  std_logic;
    clk_in_i        : in  std_logic;
    clk_dmtd_i      : in  std_logic;
    clk_sys_i       : in  std_logic;

    tag_o        : out std_logic_vector(g_counter_bits-1 downto 0);
    tag_stb_p1_o : out std_logic
  );
end dmtd_with_deglitcher;

architecture rtl of dmtd_with_deglitcher is

  type t_state is (WAIT_STABLE_0, WAIT_EDGE, GOT_EDGE);

  signal state : t_state;

  signal stab_cntr : unsigned(15 downto 0);
  signal free_cntr : unsigned(g_counter_bits-1 downto 0);

  signal clk_sampled : std_logic;

  signal new_edge_p_dmtdclk : std_logic;
  signal new_edge_p_sysclk  : std_logic;

  signal tag_int : unsigned(g_counter_bits-1 downto 0);

  signal tag_latched_dmtdclk : std_logic_vector(g_counter_bits-1 downto 0);
  signal tag_latched_sysclk  : std_logic_vector(g_counter_bits-1 downto 0);

  signal new_edge_p_sysclk_d0 : std_logic;

begin

  -- DMTD sampler (internal)
  U_Sampler : entity work.dmtd_sampler
    port map (
      clk_in_i      => clk_in_i,
      en_i          => '1',
      clk_dmtd_i    => clk_dmtd_i,
      clk_sampled_o => clk_sampled
    );

  -- free-running counter (clk_dmtd_i domain)
  p_free_counter : process(clk_dmtd_i)
  begin
    if rising_edge(clk_dmtd_i) then
      if rst_n_dmtdclk_i = '0' then
        free_cntr <= (others => '0');
      else
        free_cntr <= free_cntr + 1;
      end if;
    end if;
  end process;

  -- deglitch FSM (clk_dmtd_i domain)
  p_deglitch : process(clk_dmtd_i)
  begin
    if rising_edge(clk_dmtd_i) then
      if rst_n_dmtdclk_i = '0' then
        stab_cntr          <= (others => '0');
        state              <= WAIT_STABLE_0;
        new_edge_p_dmtdclk <= '0';
      else
        new_edge_p_dmtdclk <= '0';

        case state is

          when WAIT_STABLE_0 =>
            if clk_sampled /= '0' then
              stab_cntr <= (others => '0');
            else
              stab_cntr <= stab_cntr + 1;
            end if;

            if stab_cntr = unsigned(r_deglitch_threshold_i) then
              state     <= WAIT_EDGE;
              stab_cntr <= (others => '0');
            end if;

          when WAIT_EDGE =>
            if clk_sampled /= '0' then
              state     <= GOT_EDGE;
              tag_int   <= free_cntr;
              stab_cntr <= (others => '0');
            end if;

          when GOT_EDGE =>
            if clk_sampled = '0' then
              tag_int <= tag_int + 1;
            end if;

            if stab_cntr = unsigned(r_deglitch_threshold_i) then
              state               <= WAIT_STABLE_0;
              new_edge_p_dmtdclk  <= '1';
              tag_latched_dmtdclk <= std_logic_vector(tag_int);
              stab_cntr           <= (others => '0');

            elsif clk_sampled = '0' then
              stab_cntr <= (others => '0');
            else
              stab_cntr <= stab_cntr + 1;
            end if;

        end case;
      end if;
    end if;
  end process;

  -- tag sync to sys clock
  U_sync_tag : entity work.gc_sync_register
    generic map (
      g_width => g_counter_bits
    )
    port map (
      clk_i     => clk_sys_i,
      rst_n_a_i => rst_n_sysclk_i,
      d_i       => tag_latched_dmtdclk,
      q_o       => tag_latched_sysclk
    );

  -- strobe sync to sys clock
  U_sync_tag_strobe : entity work.gc_pulse_synchronizer2
    port map (
      clk_in_i    => clk_dmtd_i,
      rst_in_n_i  => rst_n_dmtdclk_i,
      clk_out_i   => clk_sys_i,
      rst_out_n_i => rst_n_sysclk_i,
      d_p_i       => new_edge_p_dmtdclk,
      q_p_o       => new_edge_p_sysclk
    );

  -- sys-domain outputs
  p_tag_output : process(clk_sys_i)
  begin
    if rising_edge(clk_sys_i) then
      if rst_n_sysclk_i = '0' then
        tag_stb_p1_o <= '0';
      else
        new_edge_p_sysclk_d0 <= new_edge_p_sysclk;

        if new_edge_p_sysclk_d0 = '1' then
          tag_o        <= tag_latched_sysclk;
          tag_stb_p1_o <= '1';
        else
          tag_stb_p1_o <= '0';
        end if;
      end if;
    end if;
  end process;

end rtl;
