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
  signal c_3: signed(20 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(20 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_5: signed(16 downto 0);
  signal c_5_1_0_False_resize: signed(16 downto 0);
  signal c_5_1_0_False_shift: signed(16 downto 0);
  signal c_5_1_1_False_resize: signed(16 downto 0);
  signal c_5_1_1_False_shift: signed(16 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(19 downto 0);
  signal c_6_i0_resize: signed(19 downto 0);
  signal c_6_i1_resize: signed(19 downto 0);
  signal c_6_i0_shift: signed(19 downto 0);
  signal c_6_i1_shift: signed(19 downto 0);
  signal c_6_arith: signed(19 downto 0);
  signal c_6_oshift: signed(19 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(20 downto 0);
  signal c_7_1_1_False_resize: signed(20 downto 0);
  signal c_7_1_1_False_shift: signed(20 downto 0);
  signal c_7_3_0_False_resize: signed(20 downto 0);
  signal c_7_3_0_False_shift: signed(20 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(18 downto 0);
  signal c_8_2_0_False_resize: signed(18 downto 0);
  signal c_8_2_0_False_shift: signed(18 downto 0);
  signal c_8_1_0_False_resize: signed(18 downto 0);
  signal c_8_1_0_False_shift: signed(18 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(18 downto 0);
  signal c_11: signed(20 downto 0);
  signal c_11_i0_resize: signed(20 downto 0);
  signal c_11_i1_resize: signed(20 downto 0);
  signal c_11_i0_shift: signed(20 downto 0);
  signal c_11_i1_shift: signed(20 downto 0);
  signal c_11_arith: signed(20 downto 0);
  signal c_11_oshift: signed(20 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_i0_resize: signed(22 downto 0);
  signal c_12_i1_resize: signed(22 downto 0);
  signal c_12_i0_shift: signed(22 downto 0);
  signal c_12_i1_shift: signed(22 downto 0);
  signal c_12_arith: signed(22 downto 0);
  signal c_12_oshift: signed(22 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_11_0_False_resize: signed(23 downto 0);
  signal c_13_11_0_False_shift: signed(23 downto 0);
  signal c_13_6_1_False_resize: signed(23 downto 0);
  signal c_13_6_1_False_shift: signed(23 downto 0);
  signal c_13_9_0_False_resize: signed(23 downto 0);
  signal c_13_9_0_False_shift: signed(23 downto 0);
  signal c_13_9_3_False_resize: signed(23 downto 0);
  signal c_13_9_3_False_shift: signed(23 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(25 downto 0);
  signal c_14_6_6_False_resize: signed(25 downto 0);
  signal c_14_6_6_False_shift: signed(25 downto 0);
  signal c_14_6_0_False_resize: signed(25 downto 0);
  signal c_14_6_0_False_shift: signed(25 downto 0);
  signal c_14_11_0_False_resize: signed(25 downto 0);
  signal c_14_11_0_False_shift: signed(25 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_i0_resize: signed(25 downto 0);
  signal c_15_i1_resize: signed(25 downto 0);
  signal c_15_i0_shift: signed(25 downto 0);
  signal c_15_i1_shift: signed(25 downto 0);
  signal c_15_arith: signed(25 downto 0);
  signal c_15_oshift: signed(25 downto 0);
  signal c_15_sub_sel_left: std_logic;
  signal c_15_sub_sel_right: std_logic;
  signal c_16: signed(23 downto 0);
  signal c_16_9_0_False_resize: signed(23 downto 0);
  signal c_16_9_0_False_shift: signed(23 downto 0);
  signal c_16_12_0_False_resize: signed(23 downto 0);
  signal c_16_12_0_False_shift: signed(23 downto 0);
  signal c_16_11_2_False_resize: signed(23 downto 0);
  signal c_16_11_2_False_shift: signed(23 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_17_9_0_False_resize: signed(24 downto 0);
  signal c_17_9_0_False_shift: signed(24 downto 0);
  signal c_17_6_5_False_resize: signed(24 downto 0);
  signal c_17_6_5_False_shift: signed(24 downto 0);
  signal c_17_11_4_False_resize: signed(24 downto 0);
  signal c_17_11_4_False_shift: signed(24 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_i0_resize: signed(25 downto 0);
  signal c_18_i1_resize: signed(25 downto 0);
  signal c_18_i0_shift: signed(25 downto 0);
  signal c_18_i1_shift: signed(25 downto 0);
  signal c_18_arith: signed(25 downto 0);
  signal c_18_oshift: signed(25 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(23 downto 0);
  signal c_19_6_0_False_resize: signed(23 downto 0);
  signal c_19_6_0_False_shift: signed(23 downto 0);
  signal c_19_9_0_False_resize: signed(23 downto 0);
  signal c_19_9_0_False_shift: signed(23 downto 0);
  signal c_19_6_2_False_resize: signed(23 downto 0);
  signal c_19_6_2_False_shift: signed(23 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(24 downto 0);
  signal c_20_12_1_False_resize: signed(24 downto 0);
  signal c_20_12_1_False_shift: signed(24 downto 0);
  signal c_20_9_0_False_resize: signed(24 downto 0);
  signal c_20_9_0_False_shift: signed(24 downto 0);
  signal c_20_9_1_False_resize: signed(24 downto 0);
  signal c_20_9_1_False_shift: signed(24 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_i0_resize: signed(25 downto 0);
  signal c_21_i1_resize: signed(25 downto 0);
  signal c_21_i0_shift: signed(25 downto 0);
  signal c_21_i1_shift: signed(25 downto 0);
  signal c_21_arith: signed(25 downto 0);
  signal c_21_oshift: signed(25 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(25 downto 0);
  signal c_22_resize: signed(25 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_resize: signed(25 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_resize: signed(25 downto 0);
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
  -- output node 0 with id 22
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_22);
    end if;
  end process;
  -- output node 1 with id 23
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_23);
    end if;
  end process;
  -- output node 2 with id 24
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_24);
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
  -- node of type 'add' in stage 1 with id 3 and associated fundamentals [[17], [17], [17], [17]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 21,
      s_x_i => 0,
      s_y_i => 4,
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
  c_3 <= c_3_oshift(20 downto 0);
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1], [1]]
  c_4 <= c_1 & "";
  -- node of type 'mux' in stage 2 with id 5 and associated fundamentals [[1], [1], [1], [2]]
  c_5_1_0_False_resize <= resize(c_1, 17);
  c_5_1_0_False_shift <= shift_left(c_5_1_0_False_resize, 0);
  c_5_1_1_False_resize <= resize(c_1, 17);
  c_5_1_1_False_shift <= shift_left(c_5_1_1_False_resize, 1);
  with config_select_2 select c_5_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_1_0_False_shift when "0",
    c_5_1_1_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 6 and associated fundamentals [[9], [9], [9], [15]]
  with config_select_3 select c_6_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 16,
      w_o => 20,
      s_x_i => 3,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_6_sub_sel,
      x_i => c_5,
      y_i => c_4,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(19 downto 0);
  -- node of type 'mux' in stage 2 with id 7 and associated fundamentals [[2], [17], [17], [17]]
  c_7_1_1_False_resize <= resize(c_1, 21);
  c_7_1_1_False_shift <= shift_left(c_7_1_1_False_resize, 1);
  c_7_3_0_False_resize <= c_3;
  c_7_3_0_False_shift <= shift_left(c_7_3_0_False_resize, 0);
  with config_select_2 select c_7_sel <= 
    "0" when "00",
    "1" when "11",
    "1" when "01",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_1_1_False_shift when "0",
    c_7_3_0_False_shift when others;
  -- node of type 'mux' in stage 2 with id 8 and associated fundamentals [[1], [5], [5], [5]]
  c_8_2_0_False_resize <= c_2;
  c_8_2_0_False_shift <= shift_left(c_8_2_0_False_resize, 0);
  c_8_1_0_False_resize <= resize(c_1, 19);
  c_8_1_0_False_shift <= shift_left(c_8_1_0_False_resize, 0);
  with config_select_2 select c_8_sel <= 
    "0" when "10",
    "0" when "11",
    "0" when "01",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_2_0_False_shift when "0",
    c_8_1_0_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 9 and associated fundamentals [[15], [141], [141], [141]]
  with config_select_3 select c_9_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 19,
      w_o => 24,
      s_x_i => 3,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_9_sub_sel,
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(23 downto 0);
  -- node of type 'register' in stage 2 with id 10 and associated fundamentals [[5], [5], [5], [5]]
  c_10 <= c_2 & "";
  -- node of type 'sub' in stage 3 with id 11 and associated fundamentals [[19], [19], [19], [19]]
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
      w_o => 21,
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
      x_i => c_10,
      y_i => c_4,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(20 downto 0);
  -- node of type 'sub' in stage 3 with id 12 and associated fundamentals [[123], [123], [123], [123]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 19,
      w_o => 23,
      s_x_i => 7,
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
      y_i => c_10,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(22 downto 0);
  -- node of type 'mux' in stage 4 with id 13 and associated fundamentals [[120], [19], [18], [141]]
  c_13_11_0_False_resize <= resize(c_11, 24);
  c_13_11_0_False_shift <= shift_left(c_13_11_0_False_resize, 0);
  c_13_6_1_False_resize <= resize(c_6, 24);
  c_13_6_1_False_shift <= shift_left(c_13_6_1_False_resize, 1);
  c_13_9_0_False_resize <= c_9;
  c_13_9_0_False_shift <= shift_left(c_13_9_0_False_resize, 0);
  c_13_9_3_False_resize <= c_9;
  c_13_9_3_False_shift <= shift_left(c_13_9_3_False_resize, 3);
  with config_select_4 select c_13_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "11" when others;
  with c_13_sel select c_13 <=
    c_13_11_0_False_shift when "00",
    c_13_6_1_False_shift when "01",
    c_13_9_0_False_shift when "10",
    c_13_9_3_False_shift when others;
  -- node of type 'mux' in stage 4 with id 14 and associated fundamentals [[9], [576], [576], [19]]
  c_14_6_6_False_resize <= resize(c_6, 26);
  c_14_6_6_False_shift <= shift_left(c_14_6_6_False_resize, 6);
  c_14_6_0_False_resize <= resize(c_6, 26);
  c_14_6_0_False_shift <= shift_left(c_14_6_0_False_resize, 0);
  c_14_11_0_False_resize <= resize(c_11, 26);
  c_14_11_0_False_shift <= shift_left(c_14_11_0_False_resize, 0);
  with config_select_4 select c_14_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_14_sel select c_14 <=
    c_14_6_6_False_shift when "00",
    c_14_6_0_False_shift when "01",
    c_14_11_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 15 and associated fundamentals [[231], [614], [540], [301]]
  with config_select_5 select c_15_sub_sel_left <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  with config_select_5 select c_15_sub_sel_right <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_a_i => c_15_sub_sel_left,
      sub_b_i => c_15_sub_sel_right,
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 16 and associated fundamentals [[15], [76], [123], [141]]
  c_16_9_0_False_resize <= c_9;
  c_16_9_0_False_shift <= shift_left(c_16_9_0_False_resize, 0);
  c_16_12_0_False_resize <= resize(c_12, 24);
  c_16_12_0_False_shift <= shift_left(c_16_12_0_False_resize, 0);
  c_16_11_2_False_resize <= resize(c_11, 24);
  c_16_11_2_False_shift <= shift_left(c_16_11_2_False_resize, 2);
  with config_select_4 select c_16_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "10",
    "10" when others;
  with c_16_sel select c_16 <=
    c_16_9_0_False_shift when "00",
    c_16_12_0_False_shift when "01",
    c_16_11_2_False_shift when others;
  -- node of type 'mux' in stage 4 with id 17 and associated fundamentals [[304], [141], [288], [480]]
  c_17_9_0_False_resize <= resize(c_9, 25);
  c_17_9_0_False_shift <= shift_left(c_17_9_0_False_resize, 0);
  c_17_6_5_False_resize <= resize(c_6, 25);
  c_17_6_5_False_shift <= shift_left(c_17_6_5_False_resize, 5);
  c_17_11_4_False_resize <= resize(c_11, 25);
  c_17_11_4_False_shift <= shift_left(c_17_11_4_False_resize, 4);
  with config_select_4 select c_17_sel <= 
    "00" when "01",
    "01" when "10",
    "01" when "11",
    "10" when others;
  with c_17_sel select c_17 <=
    c_17_9_0_False_shift when "00",
    c_17_6_5_False_shift when "01",
    c_17_11_4_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 18 and associated fundamentals [[623], [358], [699], [819]]
  with config_select_5 select c_18_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 24,
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
      sub_i => c_18_sub_sel,
      x_i => c_17,
      y_i => c_16,
      z_o => c_18_oshift
    );
  c_18 <= c_18_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 19 and associated fundamentals [[9], [9], [36], [141]]
  c_19_6_0_False_resize <= resize(c_6, 24);
  c_19_6_0_False_shift <= shift_left(c_19_6_0_False_resize, 0);
  c_19_9_0_False_resize <= c_9;
  c_19_9_0_False_shift <= shift_left(c_19_9_0_False_resize, 0);
  c_19_6_2_False_resize <= resize(c_6, 24);
  c_19_6_2_False_shift <= shift_left(c_19_6_2_False_resize, 2);
  with config_select_4 select c_19_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "11",
    "10" when others;
  with c_19_sel select c_19 <=
    c_19_6_0_False_shift when "00",
    c_19_9_0_False_shift when "01",
    c_19_6_2_False_shift when others;
  -- node of type 'mux' in stage 4 with id 20 and associated fundamentals [[246], [141], [141], [282]]
  c_20_12_1_False_resize <= resize(c_12, 25);
  c_20_12_1_False_shift <= shift_left(c_20_12_1_False_resize, 1);
  c_20_9_0_False_resize <= resize(c_9, 25);
  c_20_9_0_False_shift <= shift_left(c_20_9_0_False_resize, 0);
  c_20_9_1_False_resize <= resize(c_9, 25);
  c_20_9_1_False_shift <= shift_left(c_20_9_1_False_resize, 1);
  with config_select_4 select c_20_sel <= 
    "00" when "00",
    "01" when "01",
    "01" when "10",
    "10" when others;
  with c_20_sel select c_20 <=
    c_20_12_1_False_shift when "00",
    c_20_9_0_False_shift when "01",
    c_20_9_1_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 21 and associated fundamentals [[993], [573], [600], [987]]
  with config_select_5 select c_21_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 24,
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
      sub_i => c_21_sub_sel,
      x_i => c_20,
      y_i => c_19,
      z_o => c_21_oshift
    );
  c_21 <= c_21_oshift(25 downto 0);
  -- node of type 'output' in stage 5 with id 22 and associated fundamentals [[993], [573], [600], [987]]
  c_22_resize <= c_21;
  c_22 <= shift_left(c_22_resize, 0);
  -- node of type 'output' in stage 5 with id 23 and associated fundamentals [[623], [358], [699], [819]]
  c_23_resize <= c_18;
  c_23 <= shift_left(c_23_resize, 0);
  -- node of type 'output' in stage 5 with id 24 and associated fundamentals [[231], [614], [540], [301]]
  c_24_resize <= c_15;
  c_24 <= shift_left(c_24_resize, 0);
end architecture;
