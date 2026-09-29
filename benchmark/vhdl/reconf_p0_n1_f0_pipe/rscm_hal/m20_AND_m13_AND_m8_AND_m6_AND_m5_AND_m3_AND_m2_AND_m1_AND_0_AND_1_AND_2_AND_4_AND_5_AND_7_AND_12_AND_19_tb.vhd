library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
entity test_tb is
end entity;
architecture test_tb of test_tb is
  signal x_0: std_logic_vector(15 downto 0);
  signal y_0: std_logic_vector(20 downto 0);
  signal config_select: std_logic_vector(3 downto 0);
  signal clk: std_logic := '0';
  signal x_0_int: signed(15 downto 0);
  signal y_0_int: signed(20 downto 0);
  signal y_0_ref: signed(20 downto 0);
  constant c_0_0_0: signed := "101100";
  constant c_0_0_1: signed := "10011";
  constant c_0_0_2: signed := "11000";
  constant c_0_0_3: signed := "1010";
  constant c_0_0_4: signed := "1011";
  constant c_0_0_5: signed := "101";
  constant c_0_0_6: signed := "110";
  constant c_0_0_7: signed := "11";
  constant c_0_0_8: signed := "0";
  constant c_0_0_9: signed := "01";
  constant c_0_0_10: signed := "010";
  constant c_0_0_11: signed := "0100";
  constant c_0_0_12: signed := "0101";
  constant c_0_0_13: signed := "0111";
  constant c_0_0_14: signed := "01100";
  constant c_0_0_15: signed := "010011";
  signal y_0_ref_0: signed(20 downto 0);
  signal y_0_ref_1: signed(20 downto 0);
  signal y_0_ref_2: signed(20 downto 0);
  signal y_0_ref_3: signed(20 downto 0);
  signal y_0_ref_4: signed(20 downto 0);
  signal y_0_ref_5: signed(20 downto 0);
    signal ok: std_logic;
begin
  process
    variable seed1: positive;
    variable seed2: positive;
    variable rnd: real;
    variable rnd_int: integer;
    variable num_tests: integer := 0;
  begin
    if num_tests >= 69425 then
      wait; -- finished
    end if;
    wait for 1 ns;
    uniform(seed1, seed2, rnd);
    rnd_int := integer(floor(rnd * 65536.0))-32768;
    x_0 <= std_logic_vector(to_signed(rnd_int, 16));
    uniform(seed1, seed2, rnd);
    rnd_int := integer(floor(rnd * 16.0));
    config_select <= std_logic_vector(to_unsigned(rnd_int, 4));
    wait for 1 ns;
    if y_0_int = y_0_ref_5 then
      ok <= '1';
    else
      ok <= '0';
    end if;
    if num_tests >= 5 then
      assert (y_0_int = y_0_ref_5) report "ERROR IN SIMULATION DETECTED!" severity FAILURE;
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
      clk => clk
    );
  x_0_int <= signed(x_0);
  y_0_int <= signed(y_0);
  with config_select select y_0_ref <= 
    resize((c_0_0_0)*x_0_int, 21) when "0000",
    resize((c_0_0_1)*x_0_int, 21) when "0001",
    resize((c_0_0_2)*x_0_int, 21) when "0010",
    resize((c_0_0_3)*x_0_int, 21) when "0011",
    resize((c_0_0_4)*x_0_int, 21) when "0100",
    resize((c_0_0_5)*x_0_int, 21) when "0101",
    resize((c_0_0_6)*x_0_int, 21) when "0110",
    resize((c_0_0_7)*x_0_int, 21) when "0111",
    resize((c_0_0_8)*x_0_int, 21) when "1000",
    resize((c_0_0_9)*x_0_int, 21) when "1001",
    resize((c_0_0_10)*x_0_int, 21) when "1010",
    resize((c_0_0_11)*x_0_int, 21) when "1011",
    resize((c_0_0_12)*x_0_int, 21) when "1100",
    resize((c_0_0_13)*x_0_int, 21) when "1101",
    resize((c_0_0_14)*x_0_int, 21) when "1110",
    resize((c_0_0_15)*x_0_int, 21) when others;
  y_0_ref_0 <= y_0_ref;
  process(clk)
  begin
    if rising_edge(clk) then
      y_0_ref_1 <= y_0_ref_0;
      y_0_ref_2 <= y_0_ref_1;
      y_0_ref_3 <= y_0_ref_2;
      y_0_ref_4 <= y_0_ref_3;
      y_0_ref_5 <= y_0_ref_4;
    end if;
  end process;
end architecture;
