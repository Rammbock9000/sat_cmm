library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
entity test_tb is
end entity;
architecture test_tb of test_tb is
  signal x_0: std_logic_vector(15 downto 0);
  signal x_1: std_logic_vector(15 downto 0);
  signal y_0: std_logic_vector(29 downto 0);
  signal y_1: std_logic_vector(29 downto 0);
  signal config_select: std_logic_vector(1 downto 0);
  signal clk: std_logic := '0';
  signal x_0_int: signed(15 downto 0);
  signal x_1_int: signed(15 downto 0);
  signal y_0_int: signed(29 downto 0);
  signal y_0_ref: signed(29 downto 0);
  constant c_0_0_0: signed := "01111101011011";
  constant c_0_0_1: signed := "01110011111000";
  constant c_0_0_2: signed := "01011000101100";
  constant c_0_1_0: signed := "0";
  constant c_0_1_1: signed := "1010000000000";
  constant c_0_1_2: signed := "10100111010100";
  signal y_0_ref_0: signed(29 downto 0);
  signal y_0_ref_1: signed(29 downto 0);
  signal y_0_ref_2: signed(29 downto 0);
  signal y_0_ref_3: signed(29 downto 0);
  signal y_0_ref_4: signed(29 downto 0);
  signal y_0_ref_5: signed(29 downto 0);
  signal y_0_ref_6: signed(29 downto 0);
  signal y_0_ref_7: signed(29 downto 0);
  signal y_0_ref_8: signed(29 downto 0);
  signal y_0_ref_9: signed(29 downto 0);
  signal y_0_ref_10: signed(29 downto 0);
  signal y_0_ref_11: signed(29 downto 0);
  signal y_0_ref_12: signed(29 downto 0);
  signal y_0_ref_13: signed(29 downto 0);
  signal y_0_ref_14: signed(29 downto 0);
  signal y_0_ref_15: signed(29 downto 0);
  signal y_1_int: signed(29 downto 0);
  signal y_1_ref: signed(29 downto 0);
  constant c_1_0_0: signed := "0";
  constant c_1_0_1: signed := "0110000000000";
  constant c_1_0_2: signed := "01011000101100";
  constant c_1_1_0: signed := "01111101011011";
  constant c_1_1_1: signed := "01110011111000";
  constant c_1_1_2: signed := "01011000101100";
  signal y_1_ref_0: signed(29 downto 0);
  signal y_1_ref_1: signed(29 downto 0);
  signal y_1_ref_2: signed(29 downto 0);
  signal y_1_ref_3: signed(29 downto 0);
  signal y_1_ref_4: signed(29 downto 0);
  signal y_1_ref_5: signed(29 downto 0);
  signal y_1_ref_6: signed(29 downto 0);
  signal y_1_ref_7: signed(29 downto 0);
  signal y_1_ref_8: signed(29 downto 0);
  signal y_1_ref_9: signed(29 downto 0);
  signal y_1_ref_10: signed(29 downto 0);
  signal y_1_ref_11: signed(29 downto 0);
  signal y_1_ref_12: signed(29 downto 0);
  signal y_1_ref_13: signed(29 downto 0);
  signal y_1_ref_14: signed(29 downto 0);
  signal y_1_ref_15: signed(29 downto 0);
    signal ok: std_logic;
begin
  process
    variable seed1: positive;
    variable seed2: positive;
    variable rnd: real;
    variable rnd_int: integer;
    variable num_tests: integer := 0;
  begin
    if num_tests >= 69435 then
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
    rnd_int := integer(floor(rnd * 3.0));
    config_select <= std_logic_vector(to_unsigned(rnd_int, 2));
    wait for 1 ns;
    if y_0_int = y_0_ref_15 and y_1_int = y_1_ref_15 then
      ok <= '1';
    else
      ok <= '0';
    end if;
    if num_tests >= 15 then
      assert (y_0_int = y_0_ref_15 and y_1_int = y_1_ref_15) report "ERROR IN SIMULATION DETECTED!" severity FAILURE;
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
    resize((c_0_0_0)*x_0_int + (c_0_1_0)*x_1_int, 30) when "00",
    resize((c_0_0_1)*x_0_int + (c_0_1_1)*x_1_int, 30) when "01",
    resize((c_0_0_2)*x_0_int + (c_0_1_2)*x_1_int, 30) when others;
  y_0_ref_0 <= y_0_ref;
  process(clk)
  begin
    if rising_edge(clk) then
      y_0_ref_1 <= y_0_ref_0;
      y_0_ref_2 <= y_0_ref_1;
      y_0_ref_3 <= y_0_ref_2;
      y_0_ref_4 <= y_0_ref_3;
      y_0_ref_5 <= y_0_ref_4;
      y_0_ref_6 <= y_0_ref_5;
      y_0_ref_7 <= y_0_ref_6;
      y_0_ref_8 <= y_0_ref_7;
      y_0_ref_9 <= y_0_ref_8;
      y_0_ref_10 <= y_0_ref_9;
      y_0_ref_11 <= y_0_ref_10;
      y_0_ref_12 <= y_0_ref_11;
      y_0_ref_13 <= y_0_ref_12;
      y_0_ref_14 <= y_0_ref_13;
      y_0_ref_15 <= y_0_ref_14;
    end if;
  end process;
  with config_select select y_1_ref <= 
    resize((c_1_0_0)*x_0_int + (c_1_1_0)*x_1_int, 30) when "00",
    resize((c_1_0_1)*x_0_int + (c_1_1_1)*x_1_int, 30) when "01",
    resize((c_1_0_2)*x_0_int + (c_1_1_2)*x_1_int, 30) when others;
  y_1_ref_0 <= y_1_ref;
  process(clk)
  begin
    if rising_edge(clk) then
      y_1_ref_1 <= y_1_ref_0;
      y_1_ref_2 <= y_1_ref_1;
      y_1_ref_3 <= y_1_ref_2;
      y_1_ref_4 <= y_1_ref_3;
      y_1_ref_5 <= y_1_ref_4;
      y_1_ref_6 <= y_1_ref_5;
      y_1_ref_7 <= y_1_ref_6;
      y_1_ref_8 <= y_1_ref_7;
      y_1_ref_9 <= y_1_ref_8;
      y_1_ref_10 <= y_1_ref_9;
      y_1_ref_11 <= y_1_ref_10;
      y_1_ref_12 <= y_1_ref_11;
      y_1_ref_13 <= y_1_ref_12;
      y_1_ref_14 <= y_1_ref_13;
      y_1_ref_15 <= y_1_ref_14;
    end if;
  end process;
end architecture;
