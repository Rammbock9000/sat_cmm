library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
entity test_tb is
end entity;
architecture test_tb of test_tb is
  constant W_out: integer := 26;
  signal x_0: std_logic_vector(15 downto 0);
  signal x_1: std_logic_vector(15 downto 0);
  signal y_0: std_logic_vector(W_out-1 downto 0);
  signal y_1: std_logic_vector(W_out-1 downto 0);
  signal config_select: std_logic_vector(3 downto 0);
  signal clk: std_logic := '0';
  signal x_0_int: signed(15 downto 0);
  signal x_1_int: signed(15 downto 0);
  signal y_0_int: signed(W_out-1 downto 0);
  signal y_0_ref: signed(W_out-1 downto 0);
  signal y_0_ref_0: signed(W_out-1 downto 0);
  signal y_0_ref_1: signed(W_out-1 downto 0);
  signal y_0_ref_2: signed(W_out-1 downto 0);
  signal y_1_int: signed(W_out-1 downto 0);
  signal y_1_ref: signed(W_out-1 downto 0);
  signal y_1_ref_0: signed(W_out-1 downto 0);
  signal y_1_ref_1: signed(W_out-1 downto 0);
  signal y_1_ref_2: signed(W_out-1 downto 0);
    signal ok: std_logic;
begin
  process
    variable seed1: positive;
    variable seed2: positive;
    variable rnd: real;
    variable rnd_int: integer;
    variable num_tests: integer := 0;
  begin
    if num_tests >= 69422 then
      wait; -- finished
    end if;
    wait for 1 ns;
    uniform(seed1, seed2, rnd);
    rnd_int := integer(floor(rnd * 65536.0))-32768;
    x_0 <= std_logic_vector(to_signed(rnd_int, 16));
    uniform(seed1, seed2, rnd);
    rnd_int := integer(floor(rnd * 65536.0))-32768;
    x_1 <= std_logic_vector(to_signed(rnd_int, 16));
    uniform(seed1, seed2, rnd);
    rnd_int := integer(floor(rnd * 9.0));
    config_select <= std_logic_vector(to_unsigned(rnd_int, 4));
    wait for 1 ns;
    if y_0_int = y_0_ref_2 and y_1_int = y_1_ref_2 then
      ok <= '1';
    else
      ok <= '0';
    end if;
    if num_tests >= 2 then
      assert (y_0_int = y_0_ref_2 and y_1_int = y_1_ref_2) report "ERROR IN SIMULATION DETECTED!" severity FAILURE;
    end if;
    num_tests := num_tests + 1;
    wait for 1 ns;
    clk <= '1';
    wait for 3 ns;
    clk <= '0';
  end process;
  DUT: entity work.const_mul
    port map(
      config_select => config_select,
      x_0 => x_0,
      x_1 => x_1,
      y_0 => y_0,
      y_1 => y_1,
      clk => clk
    );
  x_0_int <= signed(x_0);
  x_1_int <= signed(x_1);
  y_0_int <= signed(y_0);
  y_1_int <= signed(y_1);
  with config_select select y_0_ref <= 
    resize((512)*x_0_int + (0)*x_1_int, W_out) when "0000",
    resize((512)*x_0_int + (-1)*x_1_int, W_out) when "0001",
    resize((512)*x_0_int + (-2)*x_1_int, W_out) when "0010",
    resize((512)*x_0_int + (-3)*x_1_int, W_out) when "0011",
    resize((512)*x_0_int + (-4)*x_1_int, W_out) when "0100",
    resize((512)*x_0_int + (-5)*x_1_int, W_out) when "0101",
    resize((512)*x_0_int + (-6)*x_1_int, W_out) when "0110",
    resize((512)*x_0_int + (-7)*x_1_int, W_out) when "0111",
    resize((512)*x_0_int + (-8)*x_1_int, W_out) when others;
  y_0_ref_0 <= y_0_ref;
  process(clk)
  begin
    if rising_edge(clk) then
      y_0_ref_1 <= y_0_ref_0;
      y_0_ref_2 <= y_0_ref_1;
    end if;
  end process;
  with config_select select y_1_ref <= 
    resize((512)*x_1_int + (0)*x_0_int, W_out) when "0000",
    resize((512)*x_1_int + (1)*x_0_int, W_out) when "0001",
    resize((512)*x_1_int + (2)*x_0_int, W_out) when "0010",
    resize((512)*x_1_int + (3)*x_0_int, W_out) when "0011",
    resize((512)*x_1_int + (4)*x_0_int, W_out) when "0100",
    resize((512)*x_1_int + (5)*x_0_int, W_out) when "0101",
    resize((512)*x_1_int + (6)*x_0_int, W_out) when "0110",
    resize((512)*x_1_int + (7)*x_0_int, W_out) when "0111",
    resize((512)*x_1_int + (8)*x_0_int, W_out) when others;
  y_1_ref_0 <= y_1_ref;
  process(clk)
  begin
    if rising_edge(clk) then
      y_1_ref_1 <= y_1_ref_0;
      y_1_ref_2 <= y_1_ref_1;
    end if;
  end process;
end architecture;
