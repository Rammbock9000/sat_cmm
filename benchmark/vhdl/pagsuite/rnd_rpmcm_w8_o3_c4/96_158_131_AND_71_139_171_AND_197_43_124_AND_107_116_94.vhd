library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(23 downto 0);
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
  signal c_2: signed(18 downto 0);
  signal c_2_i0_resize: signed(18 downto 0);
  signal c_2_i1_resize: signed(18 downto 0);
  signal c_2_i0_shift: signed(18 downto 0);
  signal c_2_i1_shift: signed(18 downto 0);
  signal c_2_arith: signed(18 downto 0);
  signal c_2_oshift: signed(18 downto 0);
  signal c_3: signed(15 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_4_1_0_False_resize: signed(15 downto 0);
  signal c_4_1_0_False_shift: signed(15 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(17 downto 0);
  signal c_5_i0_resize: signed(17 downto 0);
  signal c_5_i1_resize: signed(17 downto 0);
  signal c_5_i0_shift: signed(17 downto 0);
  signal c_5_i1_shift: signed(17 downto 0);
  signal c_5_arith: signed(17 downto 0);
  signal c_5_oshift: signed(17 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_6_1_0_False_resize: signed(15 downto 0);
  signal c_6_1_0_False_shift: signed(15 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(17 downto 0);
  signal c_7_i0_resize: signed(17 downto 0);
  signal c_7_i1_resize: signed(17 downto 0);
  signal c_7_i0_shift: signed(17 downto 0);
  signal c_7_i1_shift: signed(17 downto 0);
  signal c_7_arith: signed(17 downto 0);
  signal c_7_oshift: signed(17 downto 0);
  signal c_8: signed(18 downto 0);
  signal c_9: signed(18 downto 0);
  signal c_9_2_0_False_resize: signed(18 downto 0);
  signal c_9_2_0_False_shift: signed(18 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_i0_resize: signed(22 downto 0);
  signal c_10_i1_resize: signed(22 downto 0);
  signal c_10_i0_shift: signed(22 downto 0);
  signal c_10_i1_shift: signed(22 downto 0);
  signal c_10_arith: signed(22 downto 0);
  signal c_10_oshift: signed(22 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(22 downto 0);
  signal c_11_i0_resize: signed(22 downto 0);
  signal c_11_i1_resize: signed(22 downto 0);
  signal c_11_i0_shift: signed(22 downto 0);
  signal c_11_i1_shift: signed(22 downto 0);
  signal c_11_arith: signed(22 downto 0);
  signal c_11_oshift: signed(22 downto 0);
  signal c_12: signed(21 downto 0);
  signal c_12_7_0_False_resize: signed(21 downto 0);
  signal c_12_7_0_False_shift: signed(21 downto 0);
  signal c_12_7_3_False_resize: signed(21 downto 0);
  signal c_12_7_3_False_shift: signed(21 downto 0);
  signal c_12_7_4_False_resize: signed(21 downto 0);
  signal c_12_7_4_False_shift: signed(21 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(22 downto 0);
  signal c_13_10_0_False_resize: signed(22 downto 0);
  signal c_13_10_0_False_shift: signed(22 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_i0_resize: signed(23 downto 0);
  signal c_14_i1_resize: signed(23 downto 0);
  signal c_14_i0_shift: signed(23 downto 0);
  signal c_14_i1_shift: signed(23 downto 0);
  signal c_14_arith: signed(23 downto 0);
  signal c_14_oshift: signed(23 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(18 downto 0);
  signal c_15_7_1_False_resize: signed(18 downto 0);
  signal c_15_7_1_False_shift: signed(18 downto 0);
  signal c_15_7_2_False_resize: signed(18 downto 0);
  signal c_15_7_2_False_shift: signed(18 downto 0);
  signal c_15_10_0_False_resize: signed(18 downto 0);
  signal c_15_10_0_False_shift: signed(18 downto 0);
  signal c_15_5_0_False_resize: signed(18 downto 0);
  signal c_15_5_0_False_shift: signed(18 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(22 downto 0);
  signal c_16_11_0_False_resize: signed(22 downto 0);
  signal c_16_11_0_False_shift: signed(22 downto 0);
  signal c_16_5_2_False_resize: signed(22 downto 0);
  signal c_16_5_2_False_shift: signed(22 downto 0);
  signal c_16_10_0_False_resize: signed(22 downto 0);
  signal c_16_10_0_False_shift: signed(22 downto 0);
  signal c_16_5_1_False_resize: signed(22 downto 0);
  signal c_16_5_1_False_shift: signed(22 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_i0_resize: signed(23 downto 0);
  signal c_17_i1_resize: signed(23 downto 0);
  signal c_17_i0_shift: signed(23 downto 0);
  signal c_17_i1_shift: signed(23 downto 0);
  signal c_17_arith: signed(23 downto 0);
  signal c_17_oshift: signed(23 downto 0);
  signal c_17_sub_sel_left: std_logic;
  signal c_17_sub_sel_right: std_logic;
  signal c_18: signed(17 downto 0);
  signal c_18_5_2_False_resize: signed(17 downto 0);
  signal c_18_5_2_False_shift: signed(17 downto 0);
  signal c_18_5_0_False_resize: signed(17 downto 0);
  signal c_18_5_0_False_shift: signed(17 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(22 downto 0);
  signal c_19_5_2_False_resize: signed(22 downto 0);
  signal c_19_5_2_False_shift: signed(22 downto 0);
  signal c_19_10_0_False_resize: signed(22 downto 0);
  signal c_19_10_0_False_shift: signed(22 downto 0);
  signal c_19_7_1_False_resize: signed(22 downto 0);
  signal c_19_7_1_False_shift: signed(22 downto 0);
  signal c_19_7_0_False_resize: signed(22 downto 0);
  signal c_19_7_0_False_shift: signed(22 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_i0_resize: signed(23 downto 0);
  signal c_20_i1_resize: signed(23 downto 0);
  signal c_20_i0_shift: signed(23 downto 0);
  signal c_20_i1_shift: signed(23 downto 0);
  signal c_20_arith: signed(23 downto 0);
  signal c_20_oshift: signed(23 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(23 downto 0);
  signal c_21_resize: signed(23 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_resize: signed(23 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_resize: signed(23 downto 0);
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
  -- output node 0 with id 21
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_21);
    end if;
  end process;
  -- output node 1 with id 22
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_22);
    end if;
  end process;
  -- output node 2 with id 23
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_23);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1], [1], [1]]
  c_1 <= c_0 & "";
  -- node of type 'add' in stage 1 with id 2 and associated fundamentals [[5], [5], [5], [5]]
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(18 downto 0);
  -- node of type 'register' in stage 2 with id 3 and associated fundamentals [[1], [1], [1], [1]]
  c_3 <= c_1 & "";
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[0], [1], [0], [1]]
  c_4_1_0_False_resize <= c_1;
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  with config_select_2 select c_4_sel <= 
    "0" when "01",
    "0" when "11",
    "1" when "00",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_1_0_False_shift when "0",
    to_signed(0, 16) when others;
  -- node of type 'add' in stage 3 with id 5 and associated fundamentals [[1], [3], [1], [3]]
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
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(17 downto 0);
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[1], [0], [1], [0]]
  c_6_1_0_False_resize <= c_1;
  c_6_1_0_False_shift <= shift_left(c_6_1_0_False_resize, 0);
  with config_select_2 select c_6_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when "01",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_1_0_False_shift when "0",
    to_signed(0, 16) when others;
  -- node of type 'add' in stage 3 with id 7 and associated fundamentals [[3], [1], [3], [1]]
  inst_adder_node_7: entity work.adder_node
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
      x_i => c_3,
      y_i => c_6,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(17 downto 0);
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[5], [5], [5], [5]]
  c_8 <= c_2 & "";
  -- node of type 'mux' in stage 2 with id 9 and associated fundamentals [[0], [5], [0], [5]]
  c_9_2_0_False_resize <= c_2;
  c_9_2_0_False_shift <= shift_left(c_9_2_0_False_resize, 0);
  with config_select_2 select c_9_sel <= 
    "0" when "11",
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_2_0_False_shift when "0",
    to_signed(0, 19) when others;
  -- node of type 'add_sub' in stage 3 with id 10 and associated fundamentals [[5], [75], [5], [75]]
  with config_select_3 select c_10_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 23,
      s_x_i => 4,
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
      x_i => c_9,
      y_i => c_8,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(22 downto 0);
  -- node of type 'sub' in stage 3 with id 11 and associated fundamentals [[75], [75], [75], [75]]
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 23,
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
      y_i => c_8,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(22 downto 0);
  -- node of type 'mux' in stage 4 with id 12 and associated fundamentals [[24], [1], [48], [8]]
  c_12_7_0_False_resize <= resize(c_7, 22);
  c_12_7_0_False_shift <= shift_left(c_12_7_0_False_resize, 0);
  c_12_7_3_False_resize <= resize(c_7, 22);
  c_12_7_3_False_shift <= shift_left(c_12_7_3_False_resize, 3);
  c_12_7_4_False_resize <= resize(c_7, 22);
  c_12_7_4_False_shift <= shift_left(c_12_7_4_False_resize, 4);
  with config_select_4 select c_12_sel <= 
    "00" when "01",
    "01" when "11",
    "01" when "00",
    "10" when others;
  with c_12_sel select c_12 <=
    c_12_7_0_False_shift when "00",
    c_12_7_3_False_shift when "01",
    c_12_7_4_False_shift when others;
  -- node of type 'mux' in stage 4 with id 13 and associated fundamentals [[0], [75], [5], [75]]
  c_13_10_0_False_resize <= c_10;
  c_13_10_0_False_shift <= shift_left(c_13_10_0_False_resize, 0);
  with config_select_4 select c_13_sel <= 
    "0" when "11",
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_10_0_False_shift when "0",
    to_signed(0, 23) when others;
  -- node of type 'add_sub' in stage 5 with id 14 and associated fundamentals [[96], [71], [197], [107]]
  with config_select_5 select c_14_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_14_sub_sel,
      x_i => c_13,
      y_i => c_12,
      z_o => c_14_oshift
    );
  c_14 <= c_14_oshift(23 downto 0);
  -- node of type 'mux' in stage 4 with id 15 and associated fundamentals [[5], [2], [1], [4]]
  c_15_7_1_False_resize <= resize(c_7, 19);
  c_15_7_1_False_shift <= shift_left(c_15_7_1_False_resize, 1);
  c_15_7_2_False_resize <= resize(c_7, 19);
  c_15_7_2_False_shift <= shift_left(c_15_7_2_False_resize, 2);
  c_15_10_0_False_resize <= c_10(18 downto 0);
  c_15_10_0_False_shift <= shift_left(c_15_10_0_False_resize, 0);
  c_15_5_0_False_resize <= resize(c_5, 19);
  c_15_5_0_False_shift <= shift_left(c_15_5_0_False_resize, 0);
  with config_select_4 select c_15_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "11" when others;
  with c_15_sel select c_15 <=
    c_15_7_1_False_shift when "00",
    c_15_7_2_False_shift when "01",
    c_15_10_0_False_shift when "10",
    c_15_5_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 16 and associated fundamentals [[2], [75], [75], [12]]
  c_16_11_0_False_resize <= c_11;
  c_16_11_0_False_shift <= shift_left(c_16_11_0_False_resize, 0);
  c_16_5_2_False_resize <= resize(c_5, 23);
  c_16_5_2_False_shift <= shift_left(c_16_5_2_False_resize, 2);
  c_16_10_0_False_resize <= c_10;
  c_16_10_0_False_shift <= shift_left(c_16_10_0_False_resize, 0);
  c_16_5_1_False_resize <= resize(c_5, 23);
  c_16_5_1_False_shift <= shift_left(c_16_5_1_False_resize, 1);
  with config_select_4 select c_16_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  with c_16_sel select c_16 <=
    c_16_11_0_False_shift when "00",
    c_16_5_2_False_shift when "01",
    c_16_10_0_False_shift when "10",
    c_16_5_1_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 17 and associated fundamentals [[158], [139], [43], [116]]
  with config_select_5 select c_17_sub_sel_left <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  with config_select_5 select c_17_sub_sel_right <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 23,
      w_o => 24,
      s_x_i => 5,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => True,
      sub => False
    )
    port map (
      sub_a_i => c_17_sub_sel_left,
      sub_b_i => c_17_sub_sel_right,
      x_i => c_15,
      y_i => c_16,
      z_o => c_17_oshift
    );
  c_17 <= c_17_oshift(23 downto 0);
  -- node of type 'mux' in stage 4 with id 18 and associated fundamentals [[4], [3], [4], [3]]
  c_18_5_2_False_resize <= c_5;
  c_18_5_2_False_shift <= shift_left(c_18_5_2_False_resize, 2);
  c_18_5_0_False_resize <= c_5;
  c_18_5_0_False_shift <= shift_left(c_18_5_0_False_resize, 0);
  with config_select_4 select c_18_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when "01",
    "1" when others;
  with c_18_sel select c_18 <=
    c_18_5_2_False_shift when "0",
    c_18_5_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 19 and associated fundamentals [[3], [75], [4], [2]]
  c_19_5_2_False_resize <= resize(c_5, 23);
  c_19_5_2_False_shift <= shift_left(c_19_5_2_False_resize, 2);
  c_19_10_0_False_resize <= c_10;
  c_19_10_0_False_shift <= shift_left(c_19_10_0_False_resize, 0);
  c_19_7_1_False_resize <= resize(c_7, 23);
  c_19_7_1_False_shift <= shift_left(c_19_7_1_False_resize, 1);
  c_19_7_0_False_resize <= resize(c_7, 23);
  c_19_7_0_False_shift <= shift_left(c_19_7_0_False_resize, 0);
  with config_select_4 select c_19_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  with c_19_sel select c_19 <=
    c_19_5_2_False_shift when "00",
    c_19_10_0_False_shift when "01",
    c_19_7_1_False_shift when "10",
    c_19_7_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 20 and associated fundamentals [[131], [171], [124], [94]]
  with config_select_5 select c_20_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 23,
      w_o => 24,
      s_x_i => 5,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_20_sub_sel,
      x_i => c_18,
      y_i => c_19,
      z_o => c_20_oshift
    );
  c_20 <= c_20_oshift(23 downto 0);
  -- node of type 'output' in stage 5 with id 21 and associated fundamentals [[96], [71], [197], [107]]
  c_21_resize <= c_14;
  c_21 <= shift_left(c_21_resize, 0);
  -- node of type 'output' in stage 5 with id 22 and associated fundamentals [[158], [139], [43], [116]]
  c_22_resize <= c_17;
  c_22 <= shift_left(c_22_resize, 0);
  -- node of type 'output' in stage 5 with id 23 and associated fundamentals [[131], [171], [124], [94]]
  c_23_resize <= c_20;
  c_23 <= shift_left(c_23_resize, 0);
end architecture;
