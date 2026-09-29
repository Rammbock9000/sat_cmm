library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
entity test_tb is
end entity;
architecture test_tb of test_tb is
  signal x_0: std_logic_vector(15 downto 0);
  signal y_0: std_logic_vector(23 downto 0);
  signal y_1: std_logic_vector(23 downto 0);
  signal y_2: std_logic_vector(23 downto 0);
  signal y_3: std_logic_vector(23 downto 0);
  signal y_4: std_logic_vector(23 downto 0);
  signal config_select: std_logic_vector(0 downto 0);
  signal clk: std_logic := '0';
  signal x_0_int: signed(15 downto 0);
  signal y_0_int: signed(23 downto 0);
  signal y_0_ref: signed(23 downto 0);
  constant c_0_0_0: signed := "010100001";
  constant c_0_0_1: signed := "010010111";
  signal y_0_ref_0: signed(23 downto 0);
  signal y_0_ref_1: signed(23 downto 0);
  signal y_0_ref_2: signed(23 downto 0);
  signal y_1_int: signed(23 downto 0);
  signal y_1_ref: signed(23 downto 0);
  constant c_1_0_0: signed := "010100111";
  constant c_1_0_1: signed := "01110010";
  signal y_1_ref_0: signed(23 downto 0);
  signal y_1_ref_1: signed(23 downto 0);
  signal y_1_ref_2: signed(23 downto 0);
  signal y_2_int: signed(23 downto 0);
  signal y_2_ref: signed(23 downto 0);
  constant c_2_0_0: signed := "010101100";
  constant c_2_0_1: signed := "01001100";
  signal y_2_ref_0: signed(23 downto 0);
  signal y_2_ref_1: signed(23 downto 0);
  signal y_2_ref_2: signed(23 downto 0);
  signal y_3_int: signed(23 downto 0);
  signal y_3_ref: signed(23 downto 0);
  constant c_3_0_0: signed := "01010010";
  constant c_3_0_1: signed := "010001111";
  signal y_3_ref_0: signed(23 downto 0);
  signal y_3_ref_1: signed(23 downto 0);
  signal y_3_ref_2: signed(23 downto 0);
  signal y_4_int: signed(23 downto 0);
  signal y_4_ref: signed(23 downto 0);
  constant c_4_0_0: signed := "010000101";
  constant c_4_0_1: signed := "01110";
  signal y_4_ref_0: signed(23 downto 0);
  signal y_4_ref_1: signed(23 downto 0);
  signal y_4_ref_2: signed(23 downto 0);
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
    rnd_int := integer(floor(rnd * 2.0));
    config_select <= std_logic_vector(to_unsigned(rnd_int, 1));
    wait for 1 ns;
    if y_0_int = y_0_ref_2 and y_1_int = y_1_ref_2 and y_2_int = y_2_ref_2 and y_3_int = y_3_ref_2 and y_4_int = y_4_ref_2 then
      ok <= '1';
    else
      ok <= '0';
    end if;
    if num_tests >= 2 then
      assert (y_0_int = y_0_ref_2 and y_1_int = y_1_ref_2 and y_2_int = y_2_ref_2 and y_3_int = y_3_ref_2 and y_4_int = y_4_ref_2) report "ERROR IN SIMULATION DETECTED!" severity FAILURE;
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
      y_0 => y_0,
      y_1 => y_1,
      y_2 => y_2,
      y_3 => y_3,
      y_4 => y_4,
      clk => clk
    );
  x_0_int <= signed(x_0);
  y_0_int <= signed(y_0);
  y_1_int <= signed(y_1);
  y_2_int <= signed(y_2);
  y_3_int <= signed(y_3);
  y_4_int <= signed(y_4);
  with config_select select y_0_ref <= 
    resize((c_0_0_0)*x_0_int, 24) when "0",
    resize((c_0_0_1)*x_0_int, 24) when others;
  y_0_ref_0 <= y_0_ref;
  process(clk)
  begin
    if rising_edge(clk) then
      y_0_ref_1 <= y_0_ref_0;
      y_0_ref_2 <= y_0_ref_1;
    end if;
  end process;
  with config_select select y_1_ref <= 
    resize((c_1_0_0)*x_0_int, 24) when "0",
    resize((c_1_0_1)*x_0_int, 24) when others;
  y_1_ref_0 <= y_1_ref;
  process(clk)
  begin
    if rising_edge(clk) then
      y_1_ref_1 <= y_1_ref_0;
      y_1_ref_2 <= y_1_ref_1;
    end if;
  end process;
  with config_select select y_2_ref <= 
    resize((c_2_0_0)*x_0_int, 24) when "0",
    resize((c_2_0_1)*x_0_int, 24) when others;
  y_2_ref_0 <= y_2_ref;
  process(clk)
  begin
    if rising_edge(clk) then
      y_2_ref_1 <= y_2_ref_0;
      y_2_ref_2 <= y_2_ref_1;
    end if;
  end process;
  with config_select select y_3_ref <= 
    resize((c_3_0_0)*x_0_int, 24) when "0",
    resize((c_3_0_1)*x_0_int, 24) when others;
  y_3_ref_0 <= y_3_ref;
  process(clk)
  begin
    if rising_edge(clk) then
      y_3_ref_1 <= y_3_ref_0;
      y_3_ref_2 <= y_3_ref_1;
    end if;
  end process;
  with config_select select y_4_ref <= 
    resize((c_4_0_0)*x_0_int, 24) when "0",
    resize((c_4_0_1)*x_0_int, 24) when others;
  y_4_ref_0 <= y_4_ref;
  process(clk)
  begin
    if rising_edge(clk) then
      y_4_ref_1 <= y_4_ref_0;
      y_4_ref_2 <= y_4_ref_1;
    end if;
  end process;
end architecture;
