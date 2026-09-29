library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(21 downto 0);
    y_1: out std_logic_vector(22 downto 0);
    clk: in std_logic
);
end entity;
architecture const_mul of const_mul is
  signal config_select_0: std_logic_vector(1 downto 0);
  signal config_select_1: std_logic_vector(1 downto 0);
  signal config_select_2: std_logic_vector(1 downto 0);
  signal config_select_3: std_logic_vector(1 downto 0);
  signal config_select_4: std_logic_vector(1 downto 0);
  signal config_select_5: std_logic_vector(1 downto 0);
  signal config_select_6: std_logic_vector(1 downto 0);
  signal config_select_7: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_0_0_False_resize: signed(18 downto 0);
  signal c_1_0_0_False_shift: signed(18 downto 0);
  signal c_1_0_3_False_resize: signed(18 downto 0);
  signal c_1_0_3_False_shift: signed(18 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(20 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_5: signed(20 downto 0);
  signal c_5_3_0_False_resize: signed(20 downto 0);
  signal c_5_3_0_False_shift: signed(20 downto 0);
  signal c_5_4_5_False_resize: signed(20 downto 0);
  signal c_5_4_5_False_shift: signed(20 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(17 downto 0);
  signal c_6_3_0_False_resize: signed(17 downto 0);
  signal c_6_3_0_False_shift: signed(17 downto 0);
  signal c_6_4_1_False_resize: signed(17 downto 0);
  signal c_6_4_1_False_shift: signed(17 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(21 downto 0);
  signal c_7_i0_resize: signed(21 downto 0);
  signal c_7_i1_resize: signed(21 downto 0);
  signal c_7_i0_shift: signed(21 downto 0);
  signal c_7_i1_shift: signed(21 downto 0);
  signal c_7_arith: signed(21 downto 0);
  signal c_7_oshift: signed(21 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(21 downto 0);
  signal c_8_4_6_False_resize: signed(21 downto 0);
  signal c_8_4_6_False_shift: signed(21 downto 0);
  signal c_8_3_0_False_resize: signed(21 downto 0);
  signal c_8_3_0_False_shift: signed(21 downto 0);
  signal c_8_4_5_False_resize: signed(21 downto 0);
  signal c_8_4_5_False_shift: signed(21 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_i0_resize: signed(22 downto 0);
  signal c_10_i1_resize: signed(22 downto 0);
  signal c_10_i0_shift: signed(22 downto 0);
  signal c_10_i1_shift: signed(22 downto 0);
  signal c_10_arith: signed(22 downto 0);
  signal c_10_oshift: signed(22 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(20 downto 0);
  signal c_12: signed(20 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_13_7_0_False_resize: signed(21 downto 0);
  signal c_13_7_0_False_shift: signed(21 downto 0);
  signal c_13_12_1_False_resize: signed(21 downto 0);
  signal c_13_12_1_False_shift: signed(21 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(21 downto 0);
  signal c_14_resize: signed(21 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_15_resize: signed(22 downto 0);
begin
  config_select_0 <= config_select;
  process(clk)
  begin
    if rising_edge(clk) then
      config_select_1 <= config_select_0;
      config_select_2 <= config_select_1;
      config_select_3 <= config_select_2;
      config_select_4 <= config_select_3;
      config_select_5 <= config_select_4;
      config_select_6 <= config_select_5;
      config_select_7 <= config_select_6;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 14
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_14);
    end if;
  end process;
  -- output node 1 with id 15
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_15);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [8], [1], [8]]
  c_1_0_0_False_resize <= resize(c_0, 19);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_3_False_resize <= resize(c_0, 19);
  c_1_0_3_False_shift <= shift_left(c_1_0_3_False_resize, 3);
  with config_select_1 select c_1_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[5], [31], [3], [31]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
      w_o => 21,
      s_x_i => 2,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[32], [31], [3], [31]]
  c_5_3_0_False_resize <= c_3;
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  c_5_4_5_False_resize <= resize(c_4, 21);
  c_5_4_5_False_shift <= shift_left(c_5_4_5_False_resize, 5);
  with config_select_3 select c_5_sel <= 
    "0" when "11",
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_3_0_False_shift;
        when others => c_5 <= c_5_4_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[2], [2], [3], [2]]
  c_6_3_0_False_resize <= c_3(17 downto 0);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  c_6_4_1_False_resize <= resize(c_4, 18);
  c_6_4_1_False_shift <= shift_left(c_6_4_1_False_resize, 1);
  with config_select_3 select c_6_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_3_0_False_shift;
        when others => c_6 <= c_6_4_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[16], [15], [27], [47]]
  with config_select_4 select c_7_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 18,
      w_o => 22,
      s_x_i => 0,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_7_sub_sel,
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[5], [32], [3], [64]]
  c_8_4_6_False_resize <= resize(c_4, 22);
  c_8_4_6_False_shift <= shift_left(c_8_4_6_False_resize, 6);
  c_8_3_0_False_resize <= resize(c_3, 22);
  c_8_3_0_False_shift <= shift_left(c_8_3_0_False_resize, 0);
  c_8_4_5_False_resize <= resize(c_4, 22);
  c_8_4_5_False_shift <= shift_left(c_8_4_5_False_resize, 5);
  with config_select_3 select c_8_sel <= 
    "00" when "11",
    "01" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "00" => c_8 <= c_8_4_6_False_shift;
        when "01" => c_8 <= c_8_3_0_False_shift;
        when others => c_8 <= c_8_4_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 9 and associated fundamentals [[5], [32], [3], [64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 10 and associated fundamentals [[69], [92], [111], [124]]
  with config_select_5 select c_10_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 23,
      s_x_i => 2,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_10_sub_sel,
      x_i => c_7,
      y_i => c_9,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[5], [31], [3], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[5], [31], [3], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 13 and associated fundamentals [[10], [15], [27], [47]]
  c_13_7_0_False_resize <= c_7;
  c_13_7_0_False_shift <= shift_left(c_13_7_0_False_resize, 0);
  c_13_12_1_False_resize <= resize(c_12, 22);
  c_13_12_1_False_shift <= shift_left(c_13_12_1_False_resize, 1);
  with config_select_5 select c_13_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_7_0_False_shift;
        when others => c_13 <= c_13_12_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 14 and associated fundamentals [[10], [15], [27], [47]]
  c_14_resize <= c_13;
  c_14 <= shift_left(c_14_resize, 0);
  -- node of type 'output' in stage 5 with id 15 and associated fundamentals [[69], [92], [111], [124]]
  c_15_resize <= c_10;
  c_15 <= shift_left(c_15_resize, 0);
end architecture;
