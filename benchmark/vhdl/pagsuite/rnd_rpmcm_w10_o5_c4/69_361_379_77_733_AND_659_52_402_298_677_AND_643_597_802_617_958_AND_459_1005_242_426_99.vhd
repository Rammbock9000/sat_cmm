library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(25 downto 0);
    y_3: out std_logic_vector(25 downto 0);
    y_4: out std_logic_vector(25 downto 0);
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
  signal c_1: signed(15 downto 0);
  signal c_2: signed(20 downto 0);
  signal c_2_i0_resize: signed(20 downto 0);
  signal c_2_i1_resize: signed(20 downto 0);
  signal c_2_i0_shift: signed(20 downto 0);
  signal c_2_i1_shift: signed(20 downto 0);
  signal c_2_arith: signed(20 downto 0);
  signal c_2_oshift: signed(20 downto 0);
  signal c_3: signed(23 downto 0);
  signal c_3_i0_resize: signed(23 downto 0);
  signal c_3_i1_resize: signed(23 downto 0);
  signal c_3_i0_shift: signed(23 downto 0);
  signal c_3_i1_shift: signed(23 downto 0);
  signal c_3_arith: signed(23 downto 0);
  signal c_3_oshift: signed(23 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_5: signed(17 downto 0);
  signal c_5_i0_resize: signed(17 downto 0);
  signal c_5_i1_resize: signed(17 downto 0);
  signal c_5_i0_shift: signed(17 downto 0);
  signal c_5_i1_shift: signed(17 downto 0);
  signal c_5_arith: signed(17 downto 0);
  signal c_5_oshift: signed(17 downto 0);
  signal c_6: signed(18 downto 0);
  signal c_6_1_0_False_resize: signed(18 downto 0);
  signal c_6_1_0_False_shift: signed(18 downto 0);
  signal c_6_1_3_False_resize: signed(18 downto 0);
  signal c_6_1_3_False_shift: signed(18 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(21 downto 0);
  signal c_7_i0_resize: signed(21 downto 0);
  signal c_7_i1_resize: signed(21 downto 0);
  signal c_7_i0_shift: signed(21 downto 0);
  signal c_7_i1_shift: signed(21 downto 0);
  signal c_7_arith: signed(21 downto 0);
  signal c_7_oshift: signed(21 downto 0);
  signal c_8: signed(20 downto 0);
  signal c_9: signed(20 downto 0);
  signal c_9_i0_resize: signed(20 downto 0);
  signal c_9_i1_resize: signed(20 downto 0);
  signal c_9_i0_shift: signed(20 downto 0);
  signal c_9_i1_shift: signed(20 downto 0);
  signal c_9_arith: signed(20 downto 0);
  signal c_9_oshift: signed(20 downto 0);
  signal c_10: signed(21 downto 0);
  signal c_10_i0_resize: signed(21 downto 0);
  signal c_10_i1_resize: signed(21 downto 0);
  signal c_10_i0_shift: signed(21 downto 0);
  signal c_10_i1_shift: signed(21 downto 0);
  signal c_10_arith: signed(21 downto 0);
  signal c_10_oshift: signed(21 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_12: signed(24 downto 0);
  signal c_12_i0_resize: signed(24 downto 0);
  signal c_12_i1_resize: signed(24 downto 0);
  signal c_12_i0_shift: signed(24 downto 0);
  signal c_12_i1_shift: signed(24 downto 0);
  signal c_12_arith: signed(24 downto 0);
  signal c_12_oshift: signed(24 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_14: signed(24 downto 0);
  signal c_14_9_1_False_resize: signed(24 downto 0);
  signal c_14_9_1_False_shift: signed(24 downto 0);
  signal c_14_5_0_False_resize: signed(24 downto 0);
  signal c_14_5_0_False_shift: signed(24 downto 0);
  signal c_14_10_2_False_resize: signed(24 downto 0);
  signal c_14_10_2_False_shift: signed(24 downto 0);
  signal c_14_13_1_False_resize: signed(24 downto 0);
  signal c_14_13_1_False_shift: signed(24 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(24 downto 0);
  signal c_15_13_0_False_resize: signed(24 downto 0);
  signal c_15_13_0_False_shift: signed(24 downto 0);
  signal c_15_9_0_False_resize: signed(24 downto 0);
  signal c_15_9_0_False_shift: signed(24 downto 0);
  signal c_15_10_0_False_resize: signed(24 downto 0);
  signal c_15_10_0_False_shift: signed(24 downto 0);
  signal c_15_12_0_False_resize: signed(24 downto 0);
  signal c_15_12_0_False_shift: signed(24 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(25 downto 0);
  signal c_16_i1_resize: signed(25 downto 0);
  signal c_16_i0_shift: signed(25 downto 0);
  signal c_16_i1_shift: signed(25 downto 0);
  signal c_16_arith: signed(25 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_17_13_0_False_resize: signed(24 downto 0);
  signal c_17_13_0_False_shift: signed(24 downto 0);
  signal c_17_13_1_False_resize: signed(24 downto 0);
  signal c_17_13_1_False_shift: signed(24 downto 0);
  signal c_17_7_0_False_resize: signed(24 downto 0);
  signal c_17_7_0_False_shift: signed(24 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_5_2_False_resize: signed(25 downto 0);
  signal c_18_5_2_False_shift: signed(25 downto 0);
  signal c_18_9_5_False_resize: signed(25 downto 0);
  signal c_18_9_5_False_shift: signed(25 downto 0);
  signal c_18_10_0_False_resize: signed(25 downto 0);
  signal c_18_10_0_False_shift: signed(25 downto 0);
  signal c_18_5_0_False_resize: signed(25 downto 0);
  signal c_18_5_0_False_shift: signed(25 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_i0_resize: signed(25 downto 0);
  signal c_19_i1_resize: signed(25 downto 0);
  signal c_19_i0_shift: signed(25 downto 0);
  signal c_19_i1_shift: signed(25 downto 0);
  signal c_19_arith: signed(25 downto 0);
  signal c_19_oshift: signed(25 downto 0);
  signal c_19_sub_sel_left: std_logic;
  signal c_19_sub_sel_right: std_logic;
  signal c_20: signed(23 downto 0);
  signal c_20_7_0_False_resize: signed(23 downto 0);
  signal c_20_7_0_False_shift: signed(23 downto 0);
  signal c_20_5_5_False_resize: signed(23 downto 0);
  signal c_20_5_5_False_shift: signed(23 downto 0);
  signal c_20_7_2_False_resize: signed(23 downto 0);
  signal c_20_7_2_False_shift: signed(23 downto 0);
  signal c_20_13_0_False_resize: signed(23 downto 0);
  signal c_20_13_0_False_shift: signed(23 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(20 downto 0);
  signal c_21_9_0_False_resize: signed(20 downto 0);
  signal c_21_9_0_False_shift: signed(20 downto 0);
  signal c_21_5_3_False_resize: signed(20 downto 0);
  signal c_21_5_3_False_shift: signed(20 downto 0);
  signal c_21_5_0_False_resize: signed(20 downto 0);
  signal c_21_5_0_False_shift: signed(20 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_i0_resize: signed(25 downto 0);
  signal c_22_i1_resize: signed(25 downto 0);
  signal c_22_i0_shift: signed(25 downto 0);
  signal c_22_i1_shift: signed(25 downto 0);
  signal c_22_arith: signed(25 downto 0);
  signal c_22_oshift: signed(25 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(24 downto 0);
  signal c_23_5_7_False_resize: signed(24 downto 0);
  signal c_23_5_7_False_shift: signed(24 downto 0);
  signal c_23_9_2_False_resize: signed(24 downto 0);
  signal c_23_9_2_False_shift: signed(24 downto 0);
  signal c_23_5_0_False_resize: signed(24 downto 0);
  signal c_23_5_0_False_shift: signed(24 downto 0);
  signal c_23_7_4_False_resize: signed(24 downto 0);
  signal c_23_7_4_False_shift: signed(24 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_12_0_False_resize: signed(25 downto 0);
  signal c_24_12_0_False_shift: signed(25 downto 0);
  signal c_24_9_1_False_resize: signed(25 downto 0);
  signal c_24_9_1_False_shift: signed(25 downto 0);
  signal c_24_12_1_False_resize: signed(25 downto 0);
  signal c_24_12_1_False_shift: signed(25 downto 0);
  signal c_24_7_1_False_resize: signed(25 downto 0);
  signal c_24_7_1_False_shift: signed(25 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_i0_resize: signed(25 downto 0);
  signal c_25_i1_resize: signed(25 downto 0);
  signal c_25_i0_shift: signed(25 downto 0);
  signal c_25_i1_shift: signed(25 downto 0);
  signal c_25_arith: signed(25 downto 0);
  signal c_25_oshift: signed(25 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(24 downto 0);
  signal c_26_5_4_False_resize: signed(24 downto 0);
  signal c_26_5_4_False_shift: signed(24 downto 0);
  signal c_26_9_4_False_resize: signed(24 downto 0);
  signal c_26_9_4_False_shift: signed(24 downto 0);
  signal c_26_13_0_False_resize: signed(24 downto 0);
  signal c_26_13_0_False_shift: signed(24 downto 0);
  signal c_26_7_4_False_resize: signed(24 downto 0);
  signal c_26_7_4_False_shift: signed(24 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_12_0_False_resize: signed(25 downto 0);
  signal c_27_12_0_False_shift: signed(25 downto 0);
  signal c_27_5_0_False_resize: signed(25 downto 0);
  signal c_27_5_0_False_shift: signed(25 downto 0);
  signal c_27_12_1_False_resize: signed(25 downto 0);
  signal c_27_12_1_False_shift: signed(25 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_i0_resize: signed(25 downto 0);
  signal c_28_i1_resize: signed(25 downto 0);
  signal c_28_i0_shift: signed(25 downto 0);
  signal c_28_i1_shift: signed(25 downto 0);
  signal c_28_arith: signed(25 downto 0);
  signal c_28_oshift: signed(25 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(25 downto 0);
  signal c_29_resize: signed(25 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_resize: signed(25 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_resize: signed(25 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_resize: signed(25 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_resize: signed(25 downto 0);
begin
  config_select_0 <= config_select;
  process(clk)
  begin
    if rising_edge(clk) then
      config_select_1 <= config_select;
      config_select_2 <= config_select;
      config_select_3 <= config_select;
      config_select_4 <= config_select;
      config_select_5 <= config_select;
      config_select_6 <= config_select;
      config_select_7 <= config_select;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 29
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_29);
    end if;
  end process;
  -- output node 1 with id 30
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_30);
    end if;
  end process;
  -- output node 2 with id 31
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_31);
    end if;
  end process;
  -- output node 3 with id 32
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_32);
    end if;
  end process;
  -- output node 4 with id 33
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_33);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1], [1], [1]]
  c_1 <= c_0 & "";
  -- node of type 'sub' in stage 1 with id 2 and associated fundamentals [[31], [31], [31], [31]]
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 21,
      s_x_i => 5,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_0,
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(20 downto 0);
  -- node of type 'add' in stage 1 with id 3 and associated fundamentals [[129], [129], [129], [129]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 7,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_0,
      y_i => c_0,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(23 downto 0);
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1], [1]]
  c_4 <= c_1 & "";
  -- node of type 'add' in stage 3 with id 5 and associated fundamentals [[3], [3], [3], [3]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 18,
      s_x_i => 0,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_4,
      y_i => c_4,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(17 downto 0);
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[1], [1], [1], [8]]
  c_6_1_0_False_resize <= resize(c_1, 19);
  c_6_1_0_False_shift <= shift_left(c_6_1_0_False_resize, 0);
  c_6_1_3_False_resize <= resize(c_1, 19);
  c_6_1_3_False_shift <= shift_left(c_6_1_3_False_resize, 3);
  with config_select_2 select c_6_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_1_0_False_shift when "0",
    c_6_1_3_False_shift when others;
  -- node of type 'sub' in stage 3 with id 7 and associated fundamentals [[7], [7], [7], [63]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
      w_o => 22,
      s_x_i => 3,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_6,
      y_i => c_4,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(21 downto 0);
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[31], [31], [31], [31]]
  c_8 <= c_2 & "";
  -- node of type 'sub' in stage 3 with id 9 and associated fundamentals [[23], [23], [23], [23]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 16,
      w_o => 21,
      s_x_i => 0,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_8,
      y_i => c_4,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(20 downto 0);
  -- node of type 'sub' in stage 3 with id 10 and associated fundamentals [[63], [63], [63], [63]]
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 22,
      s_x_i => 6,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_4,
      y_i => c_4,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(21 downto 0);
  -- node of type 'register' in stage 2 with id 11 and associated fundamentals [[129], [129], [129], [129]]
  c_11 <= c_3 & "";
  -- node of type 'sub' in stage 3 with id 12 and associated fundamentals [[367], [367], [367], [367]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 24,
      w_o => 25,
      s_x_i => 4,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_8,
      y_i => c_11,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(24 downto 0);
  -- node of type 'add' in stage 3 with id 13 and associated fundamentals [[155], [155], [155], [155]]
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 21,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_8,
      y_i => c_8,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(23 downto 0);
  -- node of type 'mux' in stage 4 with id 14 and associated fundamentals [[3], [252], [310], [46]]
  c_14_9_1_False_resize <= resize(c_9, 25);
  c_14_9_1_False_shift <= shift_left(c_14_9_1_False_resize, 1);
  c_14_5_0_False_resize <= resize(c_5, 25);
  c_14_5_0_False_shift <= shift_left(c_14_5_0_False_resize, 0);
  c_14_10_2_False_resize <= resize(c_10, 25);
  c_14_10_2_False_shift <= shift_left(c_14_10_2_False_resize, 2);
  c_14_13_1_False_resize <= resize(c_13, 25);
  c_14_13_1_False_shift <= shift_left(c_14_13_1_False_resize, 1);
  with config_select_4 select c_14_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  with c_14_sel select c_14 <=
    c_14_9_1_False_shift when "00",
    c_14_5_0_False_shift when "01",
    c_14_10_2_False_shift when "10",
    c_14_13_1_False_shift when others;
  -- node of type 'mux' in stage 4 with id 15 and associated fundamentals [[63], [155], [23], [367]]
  c_15_13_0_False_resize <= resize(c_13, 25);
  c_15_13_0_False_shift <= shift_left(c_15_13_0_False_resize, 0);
  c_15_9_0_False_resize <= resize(c_9, 25);
  c_15_9_0_False_shift <= shift_left(c_15_9_0_False_resize, 0);
  c_15_10_0_False_resize <= resize(c_10, 25);
  c_15_10_0_False_shift <= shift_left(c_15_10_0_False_resize, 0);
  c_15_12_0_False_resize <= c_12;
  c_15_12_0_False_shift <= shift_left(c_15_12_0_False_resize, 0);
  with config_select_4 select c_15_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  with c_15_sel select c_15 <=
    c_15_13_0_False_shift when "00",
    c_15_9_0_False_shift when "01",
    c_15_10_0_False_shift when "10",
    c_15_12_0_False_shift when others;
  -- node of type 'add' in stage 5 with id 16 and associated fundamentals [[69], [659], [643], [459]]
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
      w_o => 26,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_14,
      y_i => c_15,
      z_o => c_16_oshift
    );
  c_16 <= c_16_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 17 and associated fundamentals [[7], [155], [310], [155]]
  c_17_13_0_False_resize <= resize(c_13, 25);
  c_17_13_0_False_shift <= shift_left(c_17_13_0_False_resize, 0);
  c_17_13_1_False_resize <= resize(c_13, 25);
  c_17_13_1_False_shift <= shift_left(c_17_13_1_False_resize, 1);
  c_17_7_0_False_resize <= resize(c_7, 25);
  c_17_7_0_False_shift <= shift_left(c_17_7_0_False_resize, 0);
  with config_select_4 select c_17_sel <= 
    "00" when "11",
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_17_sel select c_17 <=
    c_17_13_0_False_shift when "00",
    c_17_13_1_False_shift when "01",
    c_17_7_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 18 and associated fundamentals [[63], [12], [3], [736]]
  c_18_5_2_False_resize <= resize(c_5, 26);
  c_18_5_2_False_shift <= shift_left(c_18_5_2_False_resize, 2);
  c_18_9_5_False_resize <= resize(c_9, 26);
  c_18_9_5_False_shift <= shift_left(c_18_9_5_False_resize, 5);
  c_18_10_0_False_resize <= resize(c_10, 26);
  c_18_10_0_False_shift <= shift_left(c_18_10_0_False_resize, 0);
  c_18_5_0_False_resize <= resize(c_5, 26);
  c_18_5_0_False_shift <= shift_left(c_18_5_0_False_resize, 0);
  with config_select_4 select c_18_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "11" when others;
  with c_18_sel select c_18 <=
    c_18_5_2_False_shift when "00",
    c_18_9_5_False_shift when "01",
    c_18_10_0_False_shift when "10",
    c_18_5_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 19 and associated fundamentals [[77], [298], [617], [426]]
  with config_select_5 select c_19_sub_sel_left <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  with config_select_5 select c_19_sub_sel_right <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 26,
      w_o => 26,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => True,
      sub => False
    )
    port map (
      sub_a_i => c_19_sub_sel_left,
      sub_b_i => c_19_sub_sel_right,
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  c_19 <= c_19_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 20 and associated fundamentals [[96], [7], [155], [252]]
  c_20_7_0_False_resize <= resize(c_7, 24);
  c_20_7_0_False_shift <= shift_left(c_20_7_0_False_resize, 0);
  c_20_5_5_False_resize <= resize(c_5, 24);
  c_20_5_5_False_shift <= shift_left(c_20_5_5_False_resize, 5);
  c_20_7_2_False_resize <= resize(c_7, 24);
  c_20_7_2_False_shift <= shift_left(c_20_7_2_False_resize, 2);
  c_20_13_0_False_resize <= c_13;
  c_20_13_0_False_shift <= shift_left(c_20_13_0_False_resize, 0);
  with config_select_4 select c_20_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  with c_20_sel select c_20 <=
    c_20_7_0_False_shift when "00",
    c_20_5_5_False_shift when "01",
    c_20_7_2_False_shift when "10",
    c_20_13_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 21 and associated fundamentals [[23], [24], [23], [3]]
  c_21_9_0_False_resize <= c_9;
  c_21_9_0_False_shift <= shift_left(c_21_9_0_False_resize, 0);
  c_21_5_3_False_resize <= resize(c_5, 21);
  c_21_5_3_False_shift <= shift_left(c_21_5_3_False_resize, 3);
  c_21_5_0_False_resize <= resize(c_5, 21);
  c_21_5_0_False_shift <= shift_left(c_21_5_0_False_resize, 0);
  with config_select_4 select c_21_sel <= 
    "00" when "00",
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_21_sel select c_21 <=
    c_21_9_0_False_shift when "00",
    c_21_5_3_False_shift when "01",
    c_21_5_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 22 and associated fundamentals [[361], [52], [597], [1005]]
  with config_select_5 select c_22_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 21,
      w_o => 26,
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
      sub_i => c_22_sub_sel,
      x_i => c_20,
      y_i => c_21,
      z_o => c_22_oshift
    );
  c_22 <= c_22_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 23 and associated fundamentals [[3], [112], [384], [92]]
  c_23_5_7_False_resize <= resize(c_5, 25);
  c_23_5_7_False_shift <= shift_left(c_23_5_7_False_resize, 7);
  c_23_9_2_False_resize <= resize(c_9, 25);
  c_23_9_2_False_shift <= shift_left(c_23_9_2_False_resize, 2);
  c_23_5_0_False_resize <= resize(c_5, 25);
  c_23_5_0_False_shift <= shift_left(c_23_5_0_False_resize, 0);
  c_23_7_4_False_resize <= resize(c_7, 25);
  c_23_7_4_False_shift <= shift_left(c_23_7_4_False_resize, 4);
  with config_select_4 select c_23_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "11" when others;
  with c_23_sel select c_23 <=
    c_23_5_7_False_shift when "00",
    c_23_9_2_False_shift when "01",
    c_23_5_0_False_shift when "10",
    c_23_7_4_False_shift when others;
  -- node of type 'mux' in stage 4 with id 24 and associated fundamentals [[367], [46], [734], [126]]
  c_24_12_0_False_resize <= resize(c_12, 26);
  c_24_12_0_False_shift <= shift_left(c_24_12_0_False_resize, 0);
  c_24_9_1_False_resize <= resize(c_9, 26);
  c_24_9_1_False_shift <= shift_left(c_24_9_1_False_resize, 1);
  c_24_12_1_False_resize <= resize(c_12, 26);
  c_24_12_1_False_shift <= shift_left(c_24_12_1_False_resize, 1);
  c_24_7_1_False_resize <= resize(c_7, 26);
  c_24_7_1_False_shift <= shift_left(c_24_7_1_False_resize, 1);
  with config_select_4 select c_24_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "11" when others;
  with c_24_sel select c_24 <=
    c_24_12_0_False_shift when "00",
    c_24_9_1_False_shift when "01",
    c_24_12_1_False_shift when "10",
    c_24_7_1_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 25 and associated fundamentals [[379], [402], [802], [242]]
  with config_select_5 select c_25_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 26,
      w_o => 26,
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
      sub_i => c_25_sub_sel,
      x_i => c_23,
      y_i => c_24,
      z_o => c_25_oshift
    );
  c_25 <= c_25_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 26 and associated fundamentals [[368], [155], [112], [48]]
  c_26_5_4_False_resize <= resize(c_5, 25);
  c_26_5_4_False_shift <= shift_left(c_26_5_4_False_resize, 4);
  c_26_9_4_False_resize <= resize(c_9, 25);
  c_26_9_4_False_shift <= shift_left(c_26_9_4_False_resize, 4);
  c_26_13_0_False_resize <= resize(c_13, 25);
  c_26_13_0_False_shift <= shift_left(c_26_13_0_False_resize, 0);
  c_26_7_4_False_resize <= resize(c_7, 25);
  c_26_7_4_False_shift <= shift_left(c_26_7_4_False_resize, 4);
  with config_select_4 select c_26_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  with c_26_sel select c_26 <=
    c_26_5_4_False_shift when "00",
    c_26_9_4_False_shift when "01",
    c_26_13_0_False_shift when "10",
    c_26_7_4_False_shift when others;
  -- node of type 'mux' in stage 4 with id 27 and associated fundamentals [[3], [367], [734], [3]]
  c_27_12_0_False_resize <= resize(c_12, 26);
  c_27_12_0_False_shift <= shift_left(c_27_12_0_False_resize, 0);
  c_27_5_0_False_resize <= resize(c_5, 26);
  c_27_5_0_False_shift <= shift_left(c_27_5_0_False_resize, 0);
  c_27_12_1_False_resize <= resize(c_12, 26);
  c_27_12_1_False_shift <= shift_left(c_27_12_1_False_resize, 1);
  with config_select_4 select c_27_sel <= 
    "00" when "01",
    "01" when "00",
    "01" when "11",
    "10" when others;
  with c_27_sel select c_27 <=
    c_27_12_0_False_shift when "00",
    c_27_5_0_False_shift when "01",
    c_27_12_1_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 28 and associated fundamentals [[733], [677], [958], [99]]
  with config_select_5 select c_28_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 26,
      w_o => 26,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_28_sub_sel,
      x_i => c_26,
      y_i => c_27,
      z_o => c_28_oshift
    );
  c_28 <= c_28_oshift(25 downto 0);
  -- node of type 'output' in stage 5 with id 29 and associated fundamentals [[69], [659], [643], [459]]
  c_29_resize <= c_16;
  c_29 <= shift_left(c_29_resize, 0);
  -- node of type 'output' in stage 5 with id 30 and associated fundamentals [[361], [52], [597], [1005]]
  c_30_resize <= c_22;
  c_30 <= shift_left(c_30_resize, 0);
  -- node of type 'output' in stage 5 with id 31 and associated fundamentals [[379], [402], [802], [242]]
  c_31_resize <= c_25;
  c_31 <= shift_left(c_31_resize, 0);
  -- node of type 'output' in stage 5 with id 32 and associated fundamentals [[77], [298], [617], [426]]
  c_32_resize <= c_19;
  c_32 <= shift_left(c_32_resize, 0);
  -- node of type 'output' in stage 5 with id 33 and associated fundamentals [[733], [677], [958], [99]]
  c_33_resize <= c_28;
  c_33 <= shift_left(c_33_resize, 0);
end architecture;
