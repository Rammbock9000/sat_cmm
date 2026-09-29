library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(25 downto 0);
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
  signal c_2: signed(20 downto 0);
  signal c_2_i0_resize: signed(20 downto 0);
  signal c_2_i1_resize: signed(20 downto 0);
  signal c_2_i0_shift: signed(20 downto 0);
  signal c_2_i1_shift: signed(20 downto 0);
  signal c_2_arith: signed(20 downto 0);
  signal c_2_oshift: signed(20 downto 0);
  signal c_3: signed(15 downto 0);
  signal c_4: signed(18 downto 0);
  signal c_4_i0_resize: signed(18 downto 0);
  signal c_4_i1_resize: signed(18 downto 0);
  signal c_4_i0_shift: signed(18 downto 0);
  signal c_4_i1_shift: signed(18 downto 0);
  signal c_4_arith: signed(18 downto 0);
  signal c_4_oshift: signed(18 downto 0);
  signal c_5: signed(18 downto 0);
  signal c_5_i0_resize: signed(18 downto 0);
  signal c_5_i1_resize: signed(18 downto 0);
  signal c_5_i0_shift: signed(18 downto 0);
  signal c_5_i1_shift: signed(18 downto 0);
  signal c_5_arith: signed(18 downto 0);
  signal c_5_oshift: signed(18 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_2_2_False_resize: signed(22 downto 0);
  signal c_6_2_2_False_shift: signed(22 downto 0);
  signal c_6_2_0_False_resize: signed(22 downto 0);
  signal c_6_2_0_False_shift: signed(22 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(20 downto 0);
  signal c_7_2_0_False_resize: signed(20 downto 0);
  signal c_7_2_0_False_shift: signed(20 downto 0);
  signal c_7_1_0_False_resize: signed(20 downto 0);
  signal c_7_1_0_False_shift: signed(20 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(24 downto 0);
  signal c_8_i0_resize: signed(24 downto 0);
  signal c_8_i1_resize: signed(24 downto 0);
  signal c_8_i0_shift: signed(24 downto 0);
  signal c_8_i1_shift: signed(24 downto 0);
  signal c_8_arith: signed(24 downto 0);
  signal c_8_oshift: signed(24 downto 0);
  signal c_9: signed(25 downto 0);
  signal c_9_4_7_False_resize: signed(25 downto 0);
  signal c_9_4_7_False_shift: signed(25 downto 0);
  signal c_9_5_7_False_resize: signed(25 downto 0);
  signal c_9_5_7_False_shift: signed(25 downto 0);
  signal c_9_4_1_False_resize: signed(25 downto 0);
  signal c_9_4_1_False_shift: signed(25 downto 0);
  signal c_9_8_0_False_resize: signed(25 downto 0);
  signal c_9_8_0_False_shift: signed(25 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_4_0_False_resize: signed(22 downto 0);
  signal c_10_4_0_False_shift: signed(22 downto 0);
  signal c_10_5_2_False_resize: signed(22 downto 0);
  signal c_10_5_2_False_shift: signed(22 downto 0);
  signal c_10_8_0_False_resize: signed(22 downto 0);
  signal c_10_8_0_False_shift: signed(22 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(25 downto 0);
  signal c_11_i0_resize: signed(25 downto 0);
  signal c_11_i1_resize: signed(25 downto 0);
  signal c_11_i0_shift: signed(25 downto 0);
  signal c_11_i1_shift: signed(25 downto 0);
  signal c_11_arith: signed(25 downto 0);
  signal c_11_oshift: signed(25 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(24 downto 0);
  signal c_12_5_2_False_resize: signed(24 downto 0);
  signal c_12_5_2_False_shift: signed(24 downto 0);
  signal c_12_8_1_False_resize: signed(24 downto 0);
  signal c_12_8_1_False_shift: signed(24 downto 0);
  signal c_12_8_0_False_resize: signed(24 downto 0);
  signal c_12_8_0_False_shift: signed(24 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(24 downto 0);
  signal c_13_4_4_False_resize: signed(24 downto 0);
  signal c_13_4_4_False_shift: signed(24 downto 0);
  signal c_13_5_5_False_resize: signed(24 downto 0);
  signal c_13_5_5_False_shift: signed(24 downto 0);
  signal c_13_8_0_False_resize: signed(24 downto 0);
  signal c_13_8_0_False_shift: signed(24 downto 0);
  signal c_13_5_0_False_resize: signed(24 downto 0);
  signal c_13_5_0_False_shift: signed(24 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(25 downto 0);
  signal c_14_i0_resize: signed(25 downto 0);
  signal c_14_i1_resize: signed(25 downto 0);
  signal c_14_i0_shift: signed(25 downto 0);
  signal c_14_i1_shift: signed(25 downto 0);
  signal c_14_arith: signed(25 downto 0);
  signal c_14_oshift: signed(25 downto 0);
  signal c_14_sub_sel_left: std_logic;
  signal c_14_sub_sel_right: std_logic;
  signal c_15: signed(20 downto 0);
  signal c_15_4_0_False_resize: signed(20 downto 0);
  signal c_15_4_0_False_shift: signed(20 downto 0);
  signal c_15_4_2_False_resize: signed(20 downto 0);
  signal c_15_4_2_False_shift: signed(20 downto 0);
  signal c_15_5_0_False_resize: signed(20 downto 0);
  signal c_15_5_0_False_shift: signed(20 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_5_3_False_resize: signed(23 downto 0);
  signal c_16_5_3_False_shift: signed(23 downto 0);
  signal c_16_4_1_False_resize: signed(23 downto 0);
  signal c_16_4_1_False_shift: signed(23 downto 0);
  signal c_16_4_5_False_resize: signed(23 downto 0);
  signal c_16_4_5_False_shift: signed(23 downto 0);
  signal c_16_4_0_False_resize: signed(23 downto 0);
  signal c_16_4_0_False_shift: signed(23 downto 0);
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
  signal c_18: signed(25 downto 0);
  signal c_18_resize: signed(25 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_resize: signed(25 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_resize: signed(23 downto 0);
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
  -- output node 0 with id 18
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_18);
    end if;
  end process;
  -- output node 1 with id 19
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_19);
    end if;
  end process;
  -- output node 2 with id 20
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_20);
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
  -- node of type 'register' in stage 2 with id 3 and associated fundamentals [[1], [1], [1], [1]]
  c_3 <= c_1 & "";
  -- node of type 'add' in stage 3 with id 4 and associated fundamentals [[5], [5], [5], [5]]
  inst_adder_node_4: entity work.adder_node
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
      x_i => c_3,
      y_i => c_3,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(18 downto 0);
  -- node of type 'sub' in stage 3 with id 5 and associated fundamentals [[7], [7], [7], [7]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
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
      x_i => c_3,
      y_i => c_3,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(18 downto 0);
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[124], [31], [124], [31]]
  c_6_2_2_False_resize <= resize(c_2, 23);
  c_6_2_2_False_shift <= shift_left(c_6_2_2_False_resize, 2);
  c_6_2_0_False_resize <= resize(c_2, 23);
  c_6_2_0_False_shift <= shift_left(c_6_2_0_False_resize, 0);
  with config_select_2 select c_6_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when "11",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_2_2_False_shift when "0",
    c_6_2_0_False_shift when others;
  -- node of type 'mux' in stage 2 with id 7 and associated fundamentals [[31], [1], [31], [1]]
  c_7_2_0_False_resize <= c_2;
  c_7_2_0_False_shift <= shift_left(c_7_2_0_False_resize, 0);
  c_7_1_0_False_resize <= resize(c_1, 21);
  c_7_1_0_False_shift <= shift_left(c_7_1_0_False_resize, 0);
  with config_select_2 select c_7_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_2_0_False_shift when "0",
    c_7_1_0_False_shift when others;
  -- node of type 'sub' in stage 3 with id 8 and associated fundamentals [[465], [123], [465], [123]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
      w_o => 25,
      s_x_i => 2,
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
      y_i => c_7,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(24 downto 0);
  -- node of type 'mux' in stage 4 with id 9 and associated fundamentals [[896], [640], [465], [10]]
  c_9_4_7_False_resize <= resize(c_4, 26);
  c_9_4_7_False_shift <= shift_left(c_9_4_7_False_resize, 7);
  c_9_5_7_False_resize <= resize(c_5, 26);
  c_9_5_7_False_shift <= shift_left(c_9_5_7_False_resize, 7);
  c_9_4_1_False_resize <= resize(c_4, 26);
  c_9_4_1_False_shift <= shift_left(c_9_4_1_False_resize, 1);
  c_9_8_0_False_resize <= resize(c_8, 26);
  c_9_8_0_False_shift <= shift_left(c_9_8_0_False_resize, 0);
  with config_select_4 select c_9_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  with c_9_sel select c_9 <=
    c_9_4_7_False_shift when "00",
    c_9_5_7_False_shift when "01",
    c_9_4_1_False_shift when "10",
    c_9_8_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 10 and associated fundamentals [[5], [28], [5], [123]]
  c_10_4_0_False_resize <= resize(c_4, 23);
  c_10_4_0_False_shift <= shift_left(c_10_4_0_False_resize, 0);
  c_10_5_2_False_resize <= resize(c_5, 23);
  c_10_5_2_False_shift <= shift_left(c_10_5_2_False_resize, 2);
  c_10_8_0_False_resize <= c_8(22 downto 0);
  c_10_8_0_False_shift <= shift_left(c_10_8_0_False_resize, 0);
  with config_select_4 select c_10_sel <= 
    "00" when "00",
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_10_sel select c_10 <=
    c_10_4_0_False_shift when "00",
    c_10_5_2_False_shift when "01",
    c_10_8_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 11 and associated fundamentals [[856], [864], [505], [994]]
  with config_select_5 select c_11_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 23,
      w_o => 26,
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
      sub_i => c_11_sub_sel,
      x_i => c_9,
      y_i => c_10,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 12 and associated fundamentals [[465], [246], [28], [123]]
  c_12_5_2_False_resize <= resize(c_5, 25);
  c_12_5_2_False_shift <= shift_left(c_12_5_2_False_resize, 2);
  c_12_8_1_False_resize <= c_8;
  c_12_8_1_False_shift <= shift_left(c_12_8_1_False_resize, 1);
  c_12_8_0_False_resize <= c_8;
  c_12_8_0_False_shift <= shift_left(c_12_8_0_False_resize, 0);
  with config_select_4 select c_12_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "10" when others;
  with c_12_sel select c_12 <=
    c_12_5_2_False_shift when "00",
    c_12_8_1_False_shift when "01",
    c_12_8_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 13 and associated fundamentals [[80], [224], [465], [7]]
  c_13_4_4_False_resize <= resize(c_4, 25);
  c_13_4_4_False_shift <= shift_left(c_13_4_4_False_resize, 4);
  c_13_5_5_False_resize <= resize(c_5, 25);
  c_13_5_5_False_shift <= shift_left(c_13_5_5_False_resize, 5);
  c_13_8_0_False_resize <= c_8;
  c_13_8_0_False_shift <= shift_left(c_13_8_0_False_resize, 0);
  c_13_5_0_False_resize <= resize(c_5, 25);
  c_13_5_0_False_shift <= shift_left(c_13_5_0_False_resize, 0);
  with config_select_4 select c_13_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "11" when others;
  with c_13_sel select c_13 <=
    c_13_4_4_False_shift when "00",
    c_13_5_5_False_shift when "01",
    c_13_8_0_False_shift when "10",
    c_13_5_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 14 and associated fundamentals [[850], [268], [409], [253]]
  with config_select_5 select c_14_sub_sel_left <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  with config_select_5 select c_14_sub_sel_right <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
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
      sub_a_i => c_14_sub_sel_left,
      sub_b_i => c_14_sub_sel_right,
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  c_14 <= c_14_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 15 and associated fundamentals [[20], [20], [7], [5]]
  c_15_4_0_False_resize <= resize(c_4, 21);
  c_15_4_0_False_shift <= shift_left(c_15_4_0_False_resize, 0);
  c_15_4_2_False_resize <= resize(c_4, 21);
  c_15_4_2_False_shift <= shift_left(c_15_4_2_False_resize, 2);
  c_15_5_0_False_resize <= resize(c_5, 21);
  c_15_5_0_False_shift <= shift_left(c_15_5_0_False_resize, 0);
  with config_select_4 select c_15_sel <= 
    "00" when "11",
    "01" when "00",
    "01" when "01",
    "10" when others;
  with c_15_sel select c_15 <=
    c_15_4_0_False_shift when "00",
    c_15_4_2_False_shift when "01",
    c_15_5_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 16 and associated fundamentals [[10], [56], [5], [160]]
  c_16_5_3_False_resize <= resize(c_5, 24);
  c_16_5_3_False_shift <= shift_left(c_16_5_3_False_resize, 3);
  c_16_4_1_False_resize <= resize(c_4, 24);
  c_16_4_1_False_shift <= shift_left(c_16_4_1_False_resize, 1);
  c_16_4_5_False_resize <= resize(c_4, 24);
  c_16_4_5_False_shift <= shift_left(c_16_4_5_False_resize, 5);
  c_16_4_0_False_resize <= resize(c_4, 24);
  c_16_4_0_False_shift <= shift_left(c_16_4_0_False_resize, 0);
  with config_select_4 select c_16_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  with c_16_sel select c_16 <=
    c_16_5_3_False_shift when "00",
    c_16_4_1_False_shift when "01",
    c_16_4_5_False_shift when "10",
    c_16_4_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 17 and associated fundamentals [[70], [24], [23], [140]]
  with config_select_5 select c_17_sub_sel_left <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  with config_select_5 select c_17_sub_sel_right <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 24,
      w_o => 24,
      s_x_i => 2,
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
  -- node of type 'output' in stage 5 with id 18 and associated fundamentals [[850], [268], [409], [253]]
  c_18_resize <= c_14;
  c_18 <= shift_left(c_18_resize, 0);
  -- node of type 'output' in stage 5 with id 19 and associated fundamentals [[856], [864], [505], [994]]
  c_19_resize <= c_11;
  c_19 <= shift_left(c_19_resize, 0);
  -- node of type 'output' in stage 5 with id 20 and associated fundamentals [[70], [24], [23], [140]]
  c_20_resize <= c_17;
  c_20 <= shift_left(c_20_resize, 0);
end architecture;
