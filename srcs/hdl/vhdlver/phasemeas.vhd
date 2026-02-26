library ieee;
use ieee.std_logic_1164.all;
use ieee.NUMERIC_STD.all;

library work;
use work.gencores_pkg.all;

entity dmtd_phase_meas is
  generic (
    g_deglitcher_threshold: integer;
    g_counter_bits        : integer := 14
    );

  port (
    rst_sys_n_i  : in std_logic;
    rst_dmtd_n_i : in std_logic;
    clk_sys_i  : in std_logic;
    clk_a_i    : in std_logic;
    clk_b_i    : in std_logic;
    clk_dmtd_i : in std_logic;
    en_i : in std_logic;
    navg_i         : in  std_logic_vector(11 downto 0);

    phase_meas_o   : out std_logic_vector(31 downto 0);
    phase_meas_p_o : out std_logic
    );

end dmtd_phase_meas;

architecture syn of dmtd_phase_meas is

  type t_pd_state is (PD_WAIT_TAG, PD_WAIT_A, PD_WAIT_B);

  signal tag_a : std_logic_vector(g_counter_bits-1 downto 0);
  signal tag_b : std_logic_vector(g_counter_bits-1 downto 0);

  signal tag_a_p : std_logic;
  signal tag_b_p : std_logic;

  signal acc     : unsigned(31 downto 0);
  signal avg_cnt : unsigned(11 downto 0);

  signal phase_raw_p : std_logic;
  signal phase_raw   : unsigned(g_counter_bits-1 downto 0);
  signal pd_state    : t_pd_state;
  
  signal phase_hi, phase_lo : std_logic;
  signal ph_acq_valid       : std_logic;


  signal stored_sign   : std_logic;
  signal preserve_sign : std_logic;

begin

  DMTD_A : entity work.dmtd_with_deglitcher
    generic map (
      g_counter_bits => g_counter_bits)
    port map (
      rst_n_dmtdclk_i       => rst_dmtd_n_i,
      rst_n_sysclk_i        => rst_sys_n_i,
      clk_dmtd_i            => clk_dmtd_i,
      clk_sys_i             => clk_sys_i,
      clk_in_i              => clk_a_i,

      r_deglitch_threshold_i => std_logic_vector(to_unsigned(g_deglitcher_threshold, 16)),

      tag_o                 => tag_a,
      tag_stb_p1_o          => tag_a_p);

  DMTD_B : entity work.dmtd_with_deglitcher
    generic map (
      g_counter_bits => g_counter_bits)
    port map (
      rst_n_dmtdclk_i       => rst_dmtd_n_i,
      rst_n_sysclk_i        => rst_sys_n_i,
      clk_dmtd_i            => clk_dmtd_i,
      clk_sys_i             => clk_sys_i,
      clk_in_i              => clk_b_i,

      r_deglitch_threshold_i => std_logic_vector(to_unsigned(g_deglitcher_threshold, 16)),

      tag_o                 => tag_b,
      tag_stb_p1_o          => tag_b_p);

  collect_tags : process (clk_sys_i)
  begin
    if rising_edge(clk_sys_i) then
      if(rst_sys_n_i = '0' or en_i = '0') then
        phase_raw    <= (others => '0');
        phase_raw_p  <= '0';
        ph_acq_valid <= '0';
        pd_state     <= PD_WAIT_TAG;

      else

        case pd_state is
          when PD_WAIT_TAG =>

            if(tag_a_p = '1' and tag_b_p = '1') then
              phase_raw   <= unsigned(tag_a) - unsigned(tag_b);
              phase_raw_p <= '1';
            
            elsif(tag_a_p = '1') then
              phase_raw   <= unsigned(tag_a);
              phase_raw_p <= '0';
              pd_state    <= PD_WAIT_B;

            elsif (tag_b_p = '1') then
              phase_raw   <= (not unsigned(tag_b)) + 1;
              phase_raw_p <= '0';
              pd_state    <= PD_WAIT_A;

            else
              phase_raw_p <= '0';
            end if;

          when PD_WAIT_A =>
            if(tag_a_p = '1') then
              phase_raw   <= phase_raw + unsigned(tag_a);
              phase_raw_p <= '1';
              pd_state    <= PD_WAIT_TAG;
            end if;

          when PD_WAIT_B =>
            if(tag_b_p = '1') then
              phase_raw   <= phase_raw - unsigned(tag_b);
              phase_raw_p <= '1';
              pd_state    <= PD_WAIT_TAG;
            end if;

          when others => null;
        end case;
      end if;
    end if;
  end process;

calc_error : process (clk_sys_i)
  begin
    if rising_edge(clk_sys_i) then
      if(rst_sys_n_i = '0' or en_i = '0') then
        acc            <= (others => '0');
        avg_cnt        <= (others => '0');
        phase_meas_p_o <= '0';
        phase_meas_o   <= (others => '0');
        stored_sign    <= '0';
      else
        

        if(phase_raw_p = '1') then
          if(avg_cnt = to_unsigned(0, avg_cnt'length)) then
            acc <= resize(phase_raw, acc'length);

            if(phase_lo = '1') then
              preserve_sign <= '1';
              stored_sign   <= '0';
            elsif(phase_hi = '1') then
              preserve_sign <= '1';
              stored_sign   <= '1';
            else
              preserve_sign <= '0';
            end if;

            avg_cnt        <= avg_cnt + 1;
            phase_meas_p_o <= '0';
          elsif (avg_cnt = unsigned(navg_i)) then
            avg_cnt        <= (others => '0');
            phase_meas_o   <= std_logic_vector(acc);
            phase_meas_p_o <= '1';
          else
            avg_cnt        <= avg_cnt + 1;
            phase_meas_p_o <= '0';



            if(preserve_sign = '1') then
              if(phase_lo = '1' and stored_sign = '1') then
                --       report "preserve_sign1";
                acc <= acc + resize(phase_raw, acc'length) + to_unsigned(2**g_counter_bits, acc'length);
              elsif (phase_hi = '1' and stored_sign = '0') then

                --report "preserve_sign0";
                acc <= acc + resize(phase_raw, acc'length) - to_unsigned(2**g_counter_bits, acc'length);
              else
                acc <= acc + resize(phase_raw, acc'length);
              end if;
            else
              acc <= acc + resize(phase_raw, acc'length);
            end if;
          end if;
        else
          phase_meas_p_o <= '0';
        end if;
      end if;
    end if;
  end process calc_error;


end syn;

