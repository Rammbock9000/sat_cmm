library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
entity test_tb is
end entity;
architecture test_tb of test_tb is
  signal x_0: std_logic_vector(15 downto 0);
  signal y_0: std_logic_vector(23 downto 0);
  signal y_1: std_logic_vector(22 downto 0);
  signal y_2: std_logic_vector(23 downto 0);
  signal y_3: std_logic_vector(22 downto 0);
  signal y_4: std_logic_vector(23 downto 0);
  signal y_5: std_logic_vector(21 downto 0);
  signal y_6: std_logic_vector(23 downto 0);
  signal y_7: std_logic_vector(23 downto 0);
  signal y_8: std_logic_vector(21 downto 0);
  signal y_9: std_logic_vector(23 downto 0);
  signal config_select: std_logic_vector(0 downto 0);
  signal clk: std_logic := '0';
  signal x_0_int: signed(15 downto 0);
  signal y_0_int: signed(23 downto 0);
  signal y_0_ref: signed(23 downto 0);
  constant c_0_0_0: signed := "010111011";
  constant c_0_0_1: signed := "011011010";
  signal y_0_ref_0: signed(23 downto 0);
  signal y_0_ref_1: signed(23 downto 0);
  signal y_0_ref_2: signed(23 downto 0);
  signal y_0_ref_3: signed(23 downto 0);
  signal y_0_ref_4: signed(23 downto 0);
  signal y_0_ref_5: signed(23 downto 0);
  signal y_0_ref_6: signed(23 downto 0);
  signal y_1_int: signed(22 downto 0);
  signal y_1_ref: signed(22 downto 0);
  constant c_1_0_0: signed := "010100";
  constant c_1_0_1: signed := "01000001";
  signal y_1_ref_0: signed(22 downto 0);
  signal y_1_ref_1: signed(22 downto 0);
  signal y_1_ref_2: signed(22 downto 0);
  signal y_1_ref_3: signed(22 downto 0);
  signal y_1_ref_4: signed(22 downto 0);
  signal y_1_ref_5: signed(22 downto 0);
  signal y_1_ref_6: signed(22 downto 0);
  signal y_2_int: signed(23 downto 0);
  signal y_2_ref: signed(23 downto 0);
  constant c_2_0_0: signed := "0101010";
  constant c_2_0_1: signed := "010101000";
  signal y_2_ref_0: signed(23 downto 0);
  signal y_2_ref_1: signed(23 downto 0);
  signal y_2_ref_2: signed(23 downto 0);
  signal y_2_ref_3: signed(23 downto 0);
  signal y_2_ref_4: signed(23 downto 0);
  signal y_2_ref_5: signed(23 downto 0);
  signal y_2_ref_6: signed(23 downto 0);
  signal y_3_int: signed(22 downto 0);
  signal y_3_ref: signed(22 downto 0);
  constant c_3_0_0: signed := "01111111";
  constant c_3_0_1: signed := "01000000";
  signal y_3_ref_0: signed(22 downto 0);
  signal y_3_ref_1: signed(22 downto 0);
  signal y_3_ref_2: signed(22 downto 0);
  signal y_3_ref_3: signed(22 downto 0);
  signal y_3_ref_4: signed(22 downto 0);
  signal y_3_ref_5: signed(22 downto 0);
  signal y_3_ref_6: signed(22 downto 0);
  signal y_4_int: signed(23 downto 0);
  signal y_4_ref: signed(23 downto 0);
  constant c_4_0_0: signed := "011101100";
  constant c_4_0_1: signed := "01100001";
  signal y_4_ref_0: signed(23 downto 0);
  signal y_4_ref_1: signed(23 downto 0);
  signal y_4_ref_2: signed(23 downto 0);
  signal y_4_ref_3: signed(23 downto 0);
  signal y_4_ref_4: signed(23 downto 0);
  signal y_4_ref_5: signed(23 downto 0);
  signal y_4_ref_6: signed(23 downto 0);
  signal y_5_int: signed(21 downto 0);
  signal y_5_ref: signed(21 downto 0);
  constant c_5_0_0: signed := "0100001";
  constant c_5_0_1: signed := "0110110";
  signal y_5_ref_0: signed(21 downto 0);
  signal y_5_ref_1: signed(21 downto 0);
  signal y_5_ref_2: signed(21 downto 0);
  signal y_5_ref_3: signed(21 downto 0);
  signal y_5_ref_4: signed(21 downto 0);
  signal y_5_ref_5: signed(21 downto 0);
  signal y_5_ref_6: signed(21 downto 0);
  signal y_6_int: signed(23 downto 0);
  signal y_6_ref: signed(23 downto 0);
  constant c_6_0_0: signed := "010100010";
  constant c_6_0_1: signed := "01110010";
  signal y_6_ref_0: signed(23 downto 0);
  signal y_6_ref_1: signed(23 downto 0);
  signal y_6_ref_2: signed(23 downto 0);
  signal y_6_ref_3: signed(23 downto 0);
  signal y_6_ref_4: signed(23 downto 0);
  signal y_6_ref_5: signed(23 downto 0);
  signal y_6_ref_6: signed(23 downto 0);
  signal y_7_int: signed(23 downto 0);
  signal y_7_ref: signed(23 downto 0);
  constant c_7_0_0: signed := "010111101";
  constant c_7_0_1: signed := "010011111";
  signal y_7_ref_0: signed(23 downto 0);
  signal y_7_ref_1: signed(23 downto 0);
  signal y_7_ref_2: signed(23 downto 0);
  signal y_7_ref_3: signed(23 downto 0);
  signal y_7_ref_4: signed(23 downto 0);
  signal y_7_ref_5: signed(23 downto 0);
  signal y_7_ref_6: signed(23 downto 0);
  signal y_8_int: signed(21 downto 0);
  signal y_8_ref: signed(21 downto 0);
  constant c_8_0_0: signed := "0100011";
  constant c_8_0_1: signed := "011011";
  signal y_8_ref_0: signed(21 downto 0);
  signal y_8_ref_1: signed(21 downto 0);
  signal y_8_ref_2: signed(21 downto 0);
  signal y_8_ref_3: signed(21 downto 0);
  signal y_8_ref_4: signed(21 downto 0);
  signal y_8_ref_5: signed(21 downto 0);
  signal y_8_ref_6: signed(21 downto 0);
  signal y_9_int: signed(23 downto 0);
  signal y_9_ref: signed(23 downto 0);
  constant c_9_0_0: signed := "0100110";
  constant c_9_0_1: signed := "010111001";
  signal y_9_ref_0: signed(23 downto 0);
  signal y_9_ref_1: signed(23 downto 0);
  signal y_9_ref_2: signed(23 downto 0);
  signal y_9_ref_3: signed(23 downto 0);
  signal y_9_ref_4: signed(23 downto 0);
  signal y_9_ref_5: signed(23 downto 0);
  signal y_9_ref_6: signed(23 downto 0);
    signal ok: std_logic;
begin
  process
    variable seed1: positive;
    variable seed2: positive;
    variable rnd: real;
    variable rnd_int: integer;
    variable num_tests: integer := 0;
  begin
    if num_tests >= 69426 then
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
    if y_0_int = y_0_ref_6 and y_1_int = y_1_ref_6 and y_2_int = y_2_ref_6 and y_3_int = y_3_ref_6 and y_4_int = y_4_ref_6 and y_5_int = y_5_ref_6 and y_6_int = y_6_ref_6 and y_7_int = y_7_ref_6 and y_8_int = y_8_ref_6 and y_9_int = y_9_ref_6 then
      ok <= '1';
    else
      ok <= '0';
    end if;
    if num_tests >= 6 then
      assert (y_0_int = y_0_ref_6 and y_1_int = y_1_ref_6 and y_2_int = y_2_ref_6 and y_3_int = y_3_ref_6 and y_4_int = y_4_ref_6 and y_5_int = y_5_ref_6 and y_6_int = y_6_ref_6 and y_7_int = y_7_ref_6 and y_8_int = y_8_ref_6 and y_9_int = y_9_ref_6) report "ERROR IN SIMULATION DETECTED!" severity FAILURE;
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
      y_5 => y_5,
      y_6 => y_6,
      y_7 => y_7,
      y_8 => y_8,
      y_9 => y_9,
      clk => clk
    );
  x_0_int <= signed(x_0);
  y_0_int <= signed(y_0);
  y_1_int <= signed(y_1);
  y_2_int <= signed(y_2);
  y_3_int <= signed(y_3);
  y_4_int <= signed(y_4);
  y_5_int <= signed(y_5);
  y_6_int <= signed(y_6);
  y_7_int <= signed(y_7);
  y_8_int <= signed(y_8);
  y_9_int <= signed(y_9);
  with config_select select y_0_ref <= 
    resize((c_0_0_0)*x_0_int, 24) when "0",
    resize((c_0_0_1)*x_0_int, 24) when others;
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
    end if;
  end process;
  with config_select select y_1_ref <= 
    resize((c_1_0_0)*x_0_int, 23) when "0",
    resize((c_1_0_1)*x_0_int, 23) when others;
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
      y_2_ref_3 <= y_2_ref_2;
      y_2_ref_4 <= y_2_ref_3;
      y_2_ref_5 <= y_2_ref_4;
      y_2_ref_6 <= y_2_ref_5;
    end if;
  end process;
  with config_select select y_3_ref <= 
    resize((c_3_0_0)*x_0_int, 23) when "0",
    resize((c_3_0_1)*x_0_int, 23) when others;
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
      y_4_ref_3 <= y_4_ref_2;
      y_4_ref_4 <= y_4_ref_3;
      y_4_ref_5 <= y_4_ref_4;
      y_4_ref_6 <= y_4_ref_5;
    end if;
  end process;
  with config_select select y_5_ref <= 
    resize((c_5_0_0)*x_0_int, 22) when "0",
    resize((c_5_0_1)*x_0_int, 22) when others;
  y_5_ref_0 <= y_5_ref;
  process(clk)
  begin
    if rising_edge(clk) then
      y_5_ref_1 <= y_5_ref_0;
      y_5_ref_2 <= y_5_ref_1;
      y_5_ref_3 <= y_5_ref_2;
      y_5_ref_4 <= y_5_ref_3;
      y_5_ref_5 <= y_5_ref_4;
      y_5_ref_6 <= y_5_ref_5;
    end if;
  end process;
  with config_select select y_6_ref <= 
    resize((c_6_0_0)*x_0_int, 24) when "0",
    resize((c_6_0_1)*x_0_int, 24) when others;
  y_6_ref_0 <= y_6_ref;
  process(clk)
  begin
    if rising_edge(clk) then
      y_6_ref_1 <= y_6_ref_0;
      y_6_ref_2 <= y_6_ref_1;
      y_6_ref_3 <= y_6_ref_2;
      y_6_ref_4 <= y_6_ref_3;
      y_6_ref_5 <= y_6_ref_4;
      y_6_ref_6 <= y_6_ref_5;
    end if;
  end process;
  with config_select select y_7_ref <= 
    resize((c_7_0_0)*x_0_int, 24) when "0",
    resize((c_7_0_1)*x_0_int, 24) when others;
  y_7_ref_0 <= y_7_ref;
  process(clk)
  begin
    if rising_edge(clk) then
      y_7_ref_1 <= y_7_ref_0;
      y_7_ref_2 <= y_7_ref_1;
      y_7_ref_3 <= y_7_ref_2;
      y_7_ref_4 <= y_7_ref_3;
      y_7_ref_5 <= y_7_ref_4;
      y_7_ref_6 <= y_7_ref_5;
    end if;
  end process;
  with config_select select y_8_ref <= 
    resize((c_8_0_0)*x_0_int, 22) when "0",
    resize((c_8_0_1)*x_0_int, 22) when others;
  y_8_ref_0 <= y_8_ref;
  process(clk)
  begin
    if rising_edge(clk) then
      y_8_ref_1 <= y_8_ref_0;
      y_8_ref_2 <= y_8_ref_1;
      y_8_ref_3 <= y_8_ref_2;
      y_8_ref_4 <= y_8_ref_3;
      y_8_ref_5 <= y_8_ref_4;
      y_8_ref_6 <= y_8_ref_5;
    end if;
  end process;
  with config_select select y_9_ref <= 
    resize((c_9_0_0)*x_0_int, 24) when "0",
    resize((c_9_0_1)*x_0_int, 24) when others;
  y_9_ref_0 <= y_9_ref;
  process(clk)
  begin
    if rising_edge(clk) then
      y_9_ref_1 <= y_9_ref_0;
      y_9_ref_2 <= y_9_ref_1;
      y_9_ref_3 <= y_9_ref_2;
      y_9_ref_4 <= y_9_ref_3;
      y_9_ref_5 <= y_9_ref_4;
      y_9_ref_6 <= y_9_ref_5;
    end if;
  end process;
end architecture;
