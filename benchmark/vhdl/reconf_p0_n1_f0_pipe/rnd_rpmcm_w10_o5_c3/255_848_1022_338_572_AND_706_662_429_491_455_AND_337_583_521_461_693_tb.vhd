library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
entity test_tb is
end entity;
architecture test_tb of test_tb is
  signal x_0: std_logic_vector(15 downto 0);
  signal y_0: std_logic_vector(25 downto 0);
  signal y_1: std_logic_vector(25 downto 0);
  signal y_2: std_logic_vector(25 downto 0);
  signal y_3: std_logic_vector(24 downto 0);
  signal y_4: std_logic_vector(25 downto 0);
  signal config_select: std_logic_vector(1 downto 0);
  signal clk: std_logic := '0';
  signal x_0_int: signed(15 downto 0);
  signal y_0_int: signed(25 downto 0);
  signal y_0_ref: signed(25 downto 0);
  constant c_0_0_0: signed := "011111111";
  constant c_0_0_1: signed := "01011000010";
  constant c_0_0_2: signed := "0101010001";
  signal y_0_ref_0: signed(25 downto 0);
  signal y_0_ref_1: signed(25 downto 0);
  signal y_0_ref_2: signed(25 downto 0);
  signal y_0_ref_3: signed(25 downto 0);
  signal y_0_ref_4: signed(25 downto 0);
  signal y_0_ref_5: signed(25 downto 0);
  signal y_0_ref_6: signed(25 downto 0);
  signal y_0_ref_7: signed(25 downto 0);
  signal y_0_ref_8: signed(25 downto 0);
  signal y_0_ref_9: signed(25 downto 0);
  signal y_0_ref_10: signed(25 downto 0);
  signal y_0_ref_11: signed(25 downto 0);
  signal y_0_ref_12: signed(25 downto 0);
  signal y_0_ref_13: signed(25 downto 0);
  signal y_0_ref_14: signed(25 downto 0);
  signal y_0_ref_15: signed(25 downto 0);
  signal y_0_ref_16: signed(25 downto 0);
  signal y_0_ref_17: signed(25 downto 0);
  signal y_0_ref_18: signed(25 downto 0);
  signal y_1_int: signed(25 downto 0);
  signal y_1_ref: signed(25 downto 0);
  constant c_1_0_0: signed := "01101010000";
  constant c_1_0_1: signed := "01010010110";
  constant c_1_0_2: signed := "01001000111";
  signal y_1_ref_0: signed(25 downto 0);
  signal y_1_ref_1: signed(25 downto 0);
  signal y_1_ref_2: signed(25 downto 0);
  signal y_1_ref_3: signed(25 downto 0);
  signal y_1_ref_4: signed(25 downto 0);
  signal y_1_ref_5: signed(25 downto 0);
  signal y_1_ref_6: signed(25 downto 0);
  signal y_1_ref_7: signed(25 downto 0);
  signal y_1_ref_8: signed(25 downto 0);
  signal y_1_ref_9: signed(25 downto 0);
  signal y_1_ref_10: signed(25 downto 0);
  signal y_1_ref_11: signed(25 downto 0);
  signal y_1_ref_12: signed(25 downto 0);
  signal y_1_ref_13: signed(25 downto 0);
  signal y_1_ref_14: signed(25 downto 0);
  signal y_1_ref_15: signed(25 downto 0);
  signal y_1_ref_16: signed(25 downto 0);
  signal y_1_ref_17: signed(25 downto 0);
  signal y_1_ref_18: signed(25 downto 0);
  signal y_2_int: signed(25 downto 0);
  signal y_2_ref: signed(25 downto 0);
  constant c_2_0_0: signed := "01111111110";
  constant c_2_0_1: signed := "0110101101";
  constant c_2_0_2: signed := "01000001001";
  signal y_2_ref_0: signed(25 downto 0);
  signal y_2_ref_1: signed(25 downto 0);
  signal y_2_ref_2: signed(25 downto 0);
  signal y_2_ref_3: signed(25 downto 0);
  signal y_2_ref_4: signed(25 downto 0);
  signal y_2_ref_5: signed(25 downto 0);
  signal y_2_ref_6: signed(25 downto 0);
  signal y_2_ref_7: signed(25 downto 0);
  signal y_2_ref_8: signed(25 downto 0);
  signal y_2_ref_9: signed(25 downto 0);
  signal y_2_ref_10: signed(25 downto 0);
  signal y_2_ref_11: signed(25 downto 0);
  signal y_2_ref_12: signed(25 downto 0);
  signal y_2_ref_13: signed(25 downto 0);
  signal y_2_ref_14: signed(25 downto 0);
  signal y_2_ref_15: signed(25 downto 0);
  signal y_2_ref_16: signed(25 downto 0);
  signal y_2_ref_17: signed(25 downto 0);
  signal y_2_ref_18: signed(25 downto 0);
  signal y_3_int: signed(24 downto 0);
  signal y_3_ref: signed(24 downto 0);
  constant c_3_0_0: signed := "0101010010";
  constant c_3_0_1: signed := "0111101011";
  constant c_3_0_2: signed := "0111001101";
  signal y_3_ref_0: signed(24 downto 0);
  signal y_3_ref_1: signed(24 downto 0);
  signal y_3_ref_2: signed(24 downto 0);
  signal y_3_ref_3: signed(24 downto 0);
  signal y_3_ref_4: signed(24 downto 0);
  signal y_3_ref_5: signed(24 downto 0);
  signal y_3_ref_6: signed(24 downto 0);
  signal y_3_ref_7: signed(24 downto 0);
  signal y_3_ref_8: signed(24 downto 0);
  signal y_3_ref_9: signed(24 downto 0);
  signal y_3_ref_10: signed(24 downto 0);
  signal y_3_ref_11: signed(24 downto 0);
  signal y_3_ref_12: signed(24 downto 0);
  signal y_3_ref_13: signed(24 downto 0);
  signal y_3_ref_14: signed(24 downto 0);
  signal y_3_ref_15: signed(24 downto 0);
  signal y_3_ref_16: signed(24 downto 0);
  signal y_3_ref_17: signed(24 downto 0);
  signal y_3_ref_18: signed(24 downto 0);
  signal y_4_int: signed(25 downto 0);
  signal y_4_ref: signed(25 downto 0);
  constant c_4_0_0: signed := "01000111100";
  constant c_4_0_1: signed := "0111000111";
  constant c_4_0_2: signed := "01010110101";
  signal y_4_ref_0: signed(25 downto 0);
  signal y_4_ref_1: signed(25 downto 0);
  signal y_4_ref_2: signed(25 downto 0);
  signal y_4_ref_3: signed(25 downto 0);
  signal y_4_ref_4: signed(25 downto 0);
  signal y_4_ref_5: signed(25 downto 0);
  signal y_4_ref_6: signed(25 downto 0);
  signal y_4_ref_7: signed(25 downto 0);
  signal y_4_ref_8: signed(25 downto 0);
  signal y_4_ref_9: signed(25 downto 0);
  signal y_4_ref_10: signed(25 downto 0);
  signal y_4_ref_11: signed(25 downto 0);
  signal y_4_ref_12: signed(25 downto 0);
  signal y_4_ref_13: signed(25 downto 0);
  signal y_4_ref_14: signed(25 downto 0);
  signal y_4_ref_15: signed(25 downto 0);
  signal y_4_ref_16: signed(25 downto 0);
  signal y_4_ref_17: signed(25 downto 0);
  signal y_4_ref_18: signed(25 downto 0);
    signal ok: std_logic;
begin
  process
    variable seed1: positive;
    variable seed2: positive;
    variable rnd: real;
    variable rnd_int: integer;
    variable num_tests: integer := 0;
  begin
    if num_tests >= 69438 then
      wait; -- finished
    end if;
    wait for 1 ns;
    uniform(seed1, seed2, rnd);
    rnd_int := integer(floor(rnd * 65536.0))-32768;
    x_0 <= std_logic_vector(to_signed(rnd_int, 16));
    uniform(seed1, seed2, rnd);
    rnd_int := integer(floor(rnd * 3.0));
    config_select <= std_logic_vector(to_unsigned(rnd_int, 2));
    wait for 1 ns;
    if y_0_int = y_0_ref_18 and y_1_int = y_1_ref_18 and y_2_int = y_2_ref_18 and y_3_int = y_3_ref_18 and y_4_int = y_4_ref_18 then
      ok <= '1';
    else
      ok <= '0';
    end if;
    if num_tests >= 18 then
      assert (y_0_int = y_0_ref_18 and y_1_int = y_1_ref_18 and y_2_int = y_2_ref_18 and y_3_int = y_3_ref_18 and y_4_int = y_4_ref_18) report "ERROR IN SIMULATION DETECTED!" severity FAILURE;
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
    resize((c_0_0_0)*x_0_int, 26) when "00",
    resize((c_0_0_1)*x_0_int, 26) when "01",
    resize((c_0_0_2)*x_0_int, 26) when others;
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
      y_0_ref_16 <= y_0_ref_15;
      y_0_ref_17 <= y_0_ref_16;
      y_0_ref_18 <= y_0_ref_17;
    end if;
  end process;
  with config_select select y_1_ref <= 
    resize((c_1_0_0)*x_0_int, 26) when "00",
    resize((c_1_0_1)*x_0_int, 26) when "01",
    resize((c_1_0_2)*x_0_int, 26) when others;
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
      y_1_ref_16 <= y_1_ref_15;
      y_1_ref_17 <= y_1_ref_16;
      y_1_ref_18 <= y_1_ref_17;
    end if;
  end process;
  with config_select select y_2_ref <= 
    resize((c_2_0_0)*x_0_int, 26) when "00",
    resize((c_2_0_1)*x_0_int, 26) when "01",
    resize((c_2_0_2)*x_0_int, 26) when others;
  y_2_ref_0 <= y_2_ref;
  process(clk)
  begin
    if rising_edge(clk) then
      y_2_ref_1 <= y_2_ref_0;
      y_2_ref_2 <= y_2_ref_1;
      y_2_ref_3 <= y_2_ref_2;
      y_2_ref_4 <= y_2_ref_3;
      y_2_ref_5 <= y_2_ref_4;
      y_2_ref_6 <= y_2_ref_5;
      y_2_ref_7 <= y_2_ref_6;
      y_2_ref_8 <= y_2_ref_7;
      y_2_ref_9 <= y_2_ref_8;
      y_2_ref_10 <= y_2_ref_9;
      y_2_ref_11 <= y_2_ref_10;
      y_2_ref_12 <= y_2_ref_11;
      y_2_ref_13 <= y_2_ref_12;
      y_2_ref_14 <= y_2_ref_13;
      y_2_ref_15 <= y_2_ref_14;
      y_2_ref_16 <= y_2_ref_15;
      y_2_ref_17 <= y_2_ref_16;
      y_2_ref_18 <= y_2_ref_17;
    end if;
  end process;
  with config_select select y_3_ref <= 
    resize((c_3_0_0)*x_0_int, 25) when "00",
    resize((c_3_0_1)*x_0_int, 25) when "01",
    resize((c_3_0_2)*x_0_int, 25) when others;
  y_3_ref_0 <= y_3_ref;
  process(clk)
  begin
    if rising_edge(clk) then
      y_3_ref_1 <= y_3_ref_0;
      y_3_ref_2 <= y_3_ref_1;
      y_3_ref_3 <= y_3_ref_2;
      y_3_ref_4 <= y_3_ref_3;
      y_3_ref_5 <= y_3_ref_4;
      y_3_ref_6 <= y_3_ref_5;
      y_3_ref_7 <= y_3_ref_6;
      y_3_ref_8 <= y_3_ref_7;
      y_3_ref_9 <= y_3_ref_8;
      y_3_ref_10 <= y_3_ref_9;
      y_3_ref_11 <= y_3_ref_10;
      y_3_ref_12 <= y_3_ref_11;
      y_3_ref_13 <= y_3_ref_12;
      y_3_ref_14 <= y_3_ref_13;
      y_3_ref_15 <= y_3_ref_14;
      y_3_ref_16 <= y_3_ref_15;
      y_3_ref_17 <= y_3_ref_16;
      y_3_ref_18 <= y_3_ref_17;
    end if;
  end process;
  with config_select select y_4_ref <= 
    resize((c_4_0_0)*x_0_int, 26) when "00",
    resize((c_4_0_1)*x_0_int, 26) when "01",
    resize((c_4_0_2)*x_0_int, 26) when others;
  y_4_ref_0 <= y_4_ref;
  process(clk)
  begin
    if rising_edge(clk) then
      y_4_ref_1 <= y_4_ref_0;
      y_4_ref_2 <= y_4_ref_1;
      y_4_ref_3 <= y_4_ref_2;
      y_4_ref_4 <= y_4_ref_3;
      y_4_ref_5 <= y_4_ref_4;
      y_4_ref_6 <= y_4_ref_5;
      y_4_ref_7 <= y_4_ref_6;
      y_4_ref_8 <= y_4_ref_7;
      y_4_ref_9 <= y_4_ref_8;
      y_4_ref_10 <= y_4_ref_9;
      y_4_ref_11 <= y_4_ref_10;
      y_4_ref_12 <= y_4_ref_11;
      y_4_ref_13 <= y_4_ref_12;
      y_4_ref_14 <= y_4_ref_13;
      y_4_ref_15 <= y_4_ref_14;
      y_4_ref_16 <= y_4_ref_15;
      y_4_ref_17 <= y_4_ref_16;
      y_4_ref_18 <= y_4_ref_17;
    end if;
  end process;
end architecture;
