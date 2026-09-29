library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(22 downto 0);
    y_5: out std_logic_vector(22 downto 0);
    y_6: out std_logic_vector(23 downto 0);
    y_7: out std_logic_vector(23 downto 0);
    y_8: out std_logic_vector(23 downto 0);
    y_9: out std_logic_vector(23 downto 0);
    clk: in std_logic
);
end entity;
architecture const_mul of const_mul is
  signal config_select_0: std_logic_vector(0 downto 0);
  signal config_select_1: std_logic_vector(0 downto 0);
  signal config_select_2: std_logic_vector(0 downto 0);
  signal config_select_3: std_logic_vector(0 downto 0);
  signal config_select_4: std_logic_vector(0 downto 0);
  signal config_select_5: std_logic_vector(0 downto 0);
  signal config_select_6: std_logic_vector(0 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(17 downto 0);
  signal c_2_i0_resize: signed(17 downto 0);
  signal c_2_i1_resize: signed(17 downto 0);
  signal c_2_i0_shift: signed(17 downto 0);
  signal c_2_i1_shift: signed(17 downto 0);
  signal c_2_arith: signed(17 downto 0);
  signal c_2_oshift: signed(17 downto 0);
  signal c_3: signed(17 downto 0);
  signal c_4: signed(19 downto 0);
  signal c_4_i0_resize: signed(19 downto 0);
  signal c_4_i1_resize: signed(19 downto 0);
  signal c_4_i0_shift: signed(19 downto 0);
  signal c_4_i1_shift: signed(19 downto 0);
  signal c_4_arith: signed(19 downto 0);
  signal c_4_oshift: signed(19 downto 0);
  signal c_5: signed(20 downto 0);
  signal c_5_i0_resize: signed(20 downto 0);
  signal c_5_i1_resize: signed(20 downto 0);
  signal c_5_i0_shift: signed(20 downto 0);
  signal c_5_i1_shift: signed(20 downto 0);
  signal c_5_arith: signed(20 downto 0);
  signal c_5_oshift: signed(20 downto 0);
  signal c_6: signed(20 downto 0);
  signal c_6_i0_resize: signed(20 downto 0);
  signal c_6_i1_resize: signed(20 downto 0);
  signal c_6_i0_shift: signed(20 downto 0);
  signal c_6_i1_shift: signed(20 downto 0);
  signal c_6_arith: signed(20 downto 0);
  signal c_6_oshift: signed(20 downto 0);
  signal c_7: signed(19 downto 0);
  signal c_7_3_0_False_resize: signed(19 downto 0);
  signal c_7_3_0_False_shift: signed(19 downto 0);
  signal c_7_3_2_False_resize: signed(19 downto 0);
  signal c_7_3_2_False_shift: signed(19 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(20 downto 0);
  signal c_8_4_0_False_resize: signed(20 downto 0);
  signal c_8_4_0_False_shift: signed(20 downto 0);
  signal c_8_3_3_False_resize: signed(20 downto 0);
  signal c_8_3_3_False_shift: signed(20 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_10: signed(18 downto 0);
  signal c_10_3_0_False_resize: signed(18 downto 0);
  signal c_10_3_0_False_shift: signed(18 downto 0);
  signal c_10_3_1_False_resize: signed(18 downto 0);
  signal c_10_3_1_False_shift: signed(18 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(21 downto 0);
  signal c_11_4_2_False_resize: signed(21 downto 0);
  signal c_11_4_2_False_shift: signed(21 downto 0);
  signal c_11_3_0_False_resize: signed(21 downto 0);
  signal c_11_3_0_False_shift: signed(21 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_i0_resize: signed(22 downto 0);
  signal c_12_i1_resize: signed(22 downto 0);
  signal c_12_i0_shift: signed(22 downto 0);
  signal c_12_i1_shift: signed(22 downto 0);
  signal c_12_arith: signed(22 downto 0);
  signal c_12_oshift: signed(22 downto 0);
  signal c_13: signed(22 downto 0);
  signal c_13_4_0_False_resize: signed(22 downto 0);
  signal c_13_4_0_False_shift: signed(22 downto 0);
  signal c_13_6_2_False_resize: signed(22 downto 0);
  signal c_13_6_2_False_shift: signed(22 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(20 downto 0);
  signal c_14_5_0_False_resize: signed(20 downto 0);
  signal c_14_5_0_False_shift: signed(20 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_i0_resize: signed(23 downto 0);
  signal c_15_i1_resize: signed(23 downto 0);
  signal c_15_i0_shift: signed(23 downto 0);
  signal c_15_i1_shift: signed(23 downto 0);
  signal c_15_arith: signed(23 downto 0);
  signal c_15_oshift: signed(23 downto 0);
  signal c_16: signed(18 downto 0);
  signal c_16_3_1_False_resize: signed(18 downto 0);
  signal c_16_3_1_False_shift: signed(18 downto 0);
  signal c_16_3_0_False_resize: signed(18 downto 0);
  signal c_16_3_0_False_shift: signed(18 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(21 downto 0);
  signal c_17_4_0_False_resize: signed(21 downto 0);
  signal c_17_4_0_False_shift: signed(21 downto 0);
  signal c_17_5_1_False_resize: signed(21 downto 0);
  signal c_17_5_1_False_shift: signed(21 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_i0_resize: signed(23 downto 0);
  signal c_18_i1_resize: signed(23 downto 0);
  signal c_18_i0_shift: signed(23 downto 0);
  signal c_18_i1_shift: signed(23 downto 0);
  signal c_18_arith: signed(23 downto 0);
  signal c_18_oshift: signed(23 downto 0);
  signal c_19: signed(19 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_i0_resize: signed(23 downto 0);
  signal c_20_i1_resize: signed(23 downto 0);
  signal c_20_i0_shift: signed(23 downto 0);
  signal c_20_i1_shift: signed(23 downto 0);
  signal c_20_arith: signed(23 downto 0);
  signal c_20_oshift: signed(23 downto 0);
  signal c_21: signed(20 downto 0);
  signal c_21_4_0_False_resize: signed(20 downto 0);
  signal c_21_4_0_False_shift: signed(20 downto 0);
  signal c_21_5_0_False_resize: signed(20 downto 0);
  signal c_21_5_0_False_shift: signed(20 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(20 downto 0);
  signal c_22_5_0_False_resize: signed(20 downto 0);
  signal c_22_5_0_False_shift: signed(20 downto 0);
  signal c_22_3_3_False_resize: signed(20 downto 0);
  signal c_22_3_3_False_shift: signed(20 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(22 downto 0);
  signal c_23_i0_resize: signed(22 downto 0);
  signal c_23_i1_resize: signed(22 downto 0);
  signal c_23_i0_shift: signed(22 downto 0);
  signal c_23_i1_shift: signed(22 downto 0);
  signal c_23_arith: signed(22 downto 0);
  signal c_23_oshift: signed(22 downto 0);
  signal c_24: signed(20 downto 0);
  signal c_24_6_0_False_resize: signed(20 downto 0);
  signal c_24_6_0_False_shift: signed(20 downto 0);
  signal c_24_3_2_False_resize: signed(20 downto 0);
  signal c_24_3_2_False_shift: signed(20 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(20 downto 0);
  signal c_25_3_0_False_resize: signed(20 downto 0);
  signal c_25_3_0_False_shift: signed(20 downto 0);
  signal c_25_5_0_False_resize: signed(20 downto 0);
  signal c_25_5_0_False_shift: signed(20 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_i0_resize: signed(23 downto 0);
  signal c_26_i1_resize: signed(23 downto 0);
  signal c_26_i0_shift: signed(23 downto 0);
  signal c_26_i1_shift: signed(23 downto 0);
  signal c_26_arith: signed(23 downto 0);
  signal c_26_oshift: signed(23 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(21 downto 0);
  signal c_27_3_4_False_resize: signed(21 downto 0);
  signal c_27_3_4_False_shift: signed(21 downto 0);
  signal c_27_5_0_False_resize: signed(21 downto 0);
  signal c_27_5_0_False_shift: signed(21 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(21 downto 0);
  signal c_28_5_1_False_resize: signed(21 downto 0);
  signal c_28_5_1_False_shift: signed(21 downto 0);
  signal c_28_3_0_False_resize: signed(21 downto 0);
  signal c_28_3_0_False_shift: signed(21 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_i0_resize: signed(23 downto 0);
  signal c_29_i1_resize: signed(23 downto 0);
  signal c_29_i0_shift: signed(23 downto 0);
  signal c_29_i1_shift: signed(23 downto 0);
  signal c_29_arith: signed(23 downto 0);
  signal c_29_oshift: signed(23 downto 0);
  signal c_30: signed(17 downto 0);
  signal c_31: signed(21 downto 0);
  signal c_31_5_0_False_resize: signed(21 downto 0);
  signal c_31_5_0_False_shift: signed(21 downto 0);
  signal c_31_4_2_False_resize: signed(21 downto 0);
  signal c_31_4_2_False_shift: signed(21 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_32_i0_resize: signed(23 downto 0);
  signal c_32_i1_resize: signed(23 downto 0);
  signal c_32_i0_shift: signed(23 downto 0);
  signal c_32_i1_shift: signed(23 downto 0);
  signal c_32_arith: signed(23 downto 0);
  signal c_32_oshift: signed(23 downto 0);
  signal c_32_sub_sel: std_logic;
  signal c_33: signed(19 downto 0);
  signal c_33_4_0_False_resize: signed(19 downto 0);
  signal c_33_4_0_False_shift: signed(19 downto 0);
  signal c_33_3_0_False_resize: signed(19 downto 0);
  signal c_33_3_0_False_shift: signed(19 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_4_4_False_resize: signed(23 downto 0);
  signal c_34_4_4_False_shift: signed(23 downto 0);
  signal c_34_5_0_False_resize: signed(23 downto 0);
  signal c_34_5_0_False_shift: signed(23 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_i0_resize: signed(23 downto 0);
  signal c_35_i1_resize: signed(23 downto 0);
  signal c_35_i0_shift: signed(23 downto 0);
  signal c_35_i1_shift: signed(23 downto 0);
  signal c_35_arith: signed(23 downto 0);
  signal c_35_oshift: signed(23 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_resize: signed(23 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_resize: signed(23 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_resize: signed(23 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_resize: signed(23 downto 0);
  signal c_40: signed(22 downto 0);
  signal c_40_resize: signed(22 downto 0);
  signal c_41: signed(22 downto 0);
  signal c_41_resize: signed(22 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_resize: signed(23 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_resize: signed(23 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_resize: signed(23 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_resize: signed(23 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 36
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_36);
    end if;
  end process;
  -- output node 1 with id 37
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_37);
    end if;
  end process;
  -- output node 2 with id 38
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_38);
    end if;
  end process;
  -- output node 3 with id 39
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_39);
    end if;
  end process;
  -- output node 4 with id 40
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_40);
    end if;
  end process;
  -- output node 5 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 6 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_42);
    end if;
  end process;
  -- output node 7 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_43);
    end if;
  end process;
  -- output node 8 with id 44
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_44);
    end if;
  end process;
  -- output node 9 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_45);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1]]
  c_1 <= c_0 & "";
  -- node of type 'add' in stage 1 with id 2 and associated fundamentals [[3], [3]]
  inst_adder_node_2: entity work.adder_node
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(17 downto 0);
  -- node of type 'register' in stage 2 with id 3 and associated fundamentals [[3], [3]]
  c_3 <= c_2 & "";
  -- node of type 'add' in stage 2 with id 4 and associated fundamentals [[11], [11]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 18,
      w_o => 20,
      s_x_i => 3,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_1,
      y_i => c_2,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(19 downto 0);
  -- node of type 'add' in stage 2 with id 5 and associated fundamentals [[25], [25]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 18,
      w_o => 21,
      s_x_i => 0,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_1,
      y_i => c_2,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(20 downto 0);
  -- node of type 'add' in stage 2 with id 6 and associated fundamentals [[27], [27]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
      w_o => 21,
      s_x_i => 0,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_2,
      y_i => c_2,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(20 downto 0);
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[12], [3]]
  c_7_3_0_False_resize <= resize(c_3, 20);
  c_7_3_0_False_shift <= shift_left(c_7_3_0_False_resize, 0);
  c_7_3_2_False_resize <= resize(c_3, 20);
  c_7_3_2_False_shift <= shift_left(c_7_3_2_False_resize, 2);
  with config_select_3 select c_7_sel <= 
    "0" when "1",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_3_0_False_shift when "0",
    c_7_3_2_False_shift when others;
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[24], [11]]
  c_8_4_0_False_resize <= resize(c_4, 21);
  c_8_4_0_False_shift <= shift_left(c_8_4_0_False_resize, 0);
  c_8_3_3_False_resize <= resize(c_3, 21);
  c_8_3_3_False_shift <= shift_left(c_8_3_3_False_resize, 3);
  with config_select_3 select c_8_sel <= 
    "0" when "1",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_4_0_False_shift when "0",
    c_8_3_3_False_shift when others;
  -- node of type 'add' in stage 4 with id 9 and associated fundamentals [[144], [56]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 21,
      w_o => 24,
      s_x_i => 2,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[6], [3]]
  c_10_3_0_False_resize <= resize(c_3, 19);
  c_10_3_0_False_shift <= shift_left(c_10_3_0_False_resize, 0);
  c_10_3_1_False_resize <= resize(c_3, 19);
  c_10_3_1_False_shift <= shift_left(c_10_3_1_False_resize, 1);
  with config_select_3 select c_10_sel <= 
    "0" when "1",
    "1" when others;
  with c_10_sel select c_10 <=
    c_10_3_0_False_shift when "0",
    c_10_3_1_False_shift when others;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[44], [3]]
  c_11_4_2_False_resize <= resize(c_4, 22);
  c_11_4_2_False_shift <= shift_left(c_11_4_2_False_resize, 2);
  c_11_3_0_False_resize <= resize(c_3, 22);
  c_11_3_0_False_shift <= shift_left(c_11_3_0_False_resize, 0);
  with config_select_3 select c_11_sel <= 
    "0" when "0",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_4_2_False_shift when "0",
    c_11_3_0_False_shift when others;
  -- node of type 'sub' in stage 4 with id 12 and associated fundamentals [[104], [90]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 22,
      w_o => 23,
      s_x_i => 5,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(22 downto 0);
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[108], [11]]
  c_13_4_0_False_resize <= resize(c_4, 23);
  c_13_4_0_False_shift <= shift_left(c_13_4_0_False_resize, 0);
  c_13_6_2_False_resize <= resize(c_6, 23);
  c_13_6_2_False_shift <= shift_left(c_13_6_2_False_resize, 2);
  with config_select_3 select c_13_sel <= 
    "0" when "1",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_4_0_False_shift when "0",
    c_13_6_2_False_shift when others;
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[0], [25]]
  c_14_5_0_False_resize <= c_5;
  c_14_5_0_False_shift <= shift_left(c_14_5_0_False_resize, 0);
  with config_select_3 select c_14_sel <= 
    "0" when "1",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_5_0_False_shift when "0",
    to_signed(0, 21) when others;
  -- node of type 'add' in stage 4 with id 15 and associated fundamentals [[108], [211]]
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 16 and associated fundamentals [[3], [6]]
  c_16_3_1_False_resize <= resize(c_3, 19);
  c_16_3_1_False_shift <= shift_left(c_16_3_1_False_resize, 1);
  c_16_3_0_False_resize <= resize(c_3, 19);
  c_16_3_0_False_shift <= shift_left(c_16_3_0_False_resize, 0);
  with config_select_3 select c_16_sel <= 
    "0" when "1",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_3_1_False_shift when "0",
    c_16_3_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 17 and associated fundamentals [[50], [11]]
  c_17_4_0_False_resize <= resize(c_4, 22);
  c_17_4_0_False_shift <= shift_left(c_17_4_0_False_resize, 0);
  c_17_5_1_False_resize <= resize(c_5, 22);
  c_17_5_1_False_shift <= shift_left(c_17_5_1_False_resize, 1);
  with config_select_3 select c_17_sel <= 
    "0" when "1",
    "1" when others;
  with c_17_sel select c_17 <=
    c_17_4_0_False_shift when "0",
    c_17_5_1_False_shift when others;
  -- node of type 'add' in stage 4 with id 18 and associated fundamentals [[196], [214]]
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 22,
      w_o => 24,
      s_x_i => 5,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  c_18 <= c_18_oshift(23 downto 0);
  -- node of type 'register' in stage 3 with id 19 and associated fundamentals [[11], [11]]
  c_19 <= c_4 & "";
  -- node of type 'add' in stage 4 with id 20 and associated fundamentals [[220], [179]]
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
      w_o => 24,
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
      x_i => c_11,
      y_i => c_19,
      z_o => c_20_oshift
    );
  c_20 <= c_20_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 21 and associated fundamentals [[11], [25]]
  c_21_4_0_False_resize <= resize(c_4, 21);
  c_21_4_0_False_shift <= shift_left(c_21_4_0_False_resize, 0);
  c_21_5_0_False_resize <= c_5;
  c_21_5_0_False_shift <= shift_left(c_21_5_0_False_resize, 0);
  with config_select_3 select c_21_sel <= 
    "0" when "0",
    "1" when others;
  with c_21_sel select c_21 <=
    c_21_4_0_False_shift when "0",
    c_21_5_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 22 and associated fundamentals [[25], [24]]
  c_22_5_0_False_resize <= c_5;
  c_22_5_0_False_shift <= shift_left(c_22_5_0_False_resize, 0);
  c_22_3_3_False_resize <= resize(c_3, 21);
  c_22_3_3_False_shift <= shift_left(c_22_3_3_False_resize, 3);
  with config_select_3 select c_22_sel <= 
    "0" when "0",
    "1" when others;
  with c_22_sel select c_22 <=
    c_22_5_0_False_shift when "0",
    c_22_3_3_False_shift when others;
  -- node of type 'add' in stage 4 with id 23 and associated fundamentals [[61], [73]]
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 21,
      w_o => 23,
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
      x_i => c_21,
      y_i => c_22,
      z_o => c_23_oshift
    );
  c_23 <= c_23_oshift(22 downto 0);
  -- node of type 'mux' in stage 3 with id 24 and associated fundamentals [[12], [27]]
  c_24_6_0_False_resize <= c_6;
  c_24_6_0_False_shift <= shift_left(c_24_6_0_False_resize, 0);
  c_24_3_2_False_resize <= resize(c_3, 21);
  c_24_3_2_False_shift <= shift_left(c_24_3_2_False_resize, 2);
  with config_select_3 select c_24_sel <= 
    "0" when "1",
    "1" when others;
  with c_24_sel select c_24 <=
    c_24_6_0_False_shift when "0",
    c_24_3_2_False_shift when others;
  -- node of type 'mux' in stage 3 with id 25 and associated fundamentals [[3], [25]]
  c_25_3_0_False_resize <= resize(c_3, 21);
  c_25_3_0_False_shift <= shift_left(c_25_3_0_False_resize, 0);
  c_25_5_0_False_resize <= c_5;
  c_25_5_0_False_shift <= shift_left(c_25_5_0_False_resize, 0);
  with config_select_3 select c_25_sel <= 
    "0" when "0",
    "1" when others;
  with c_25_sel select c_25 <=
    c_25_3_0_False_shift when "0",
    c_25_5_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 26 and associated fundamentals [[93], [241]]
  with config_select_4 select c_26_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 21,
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
      sub_i => c_26_sub_sel,
      x_i => c_24,
      y_i => c_25,
      z_o => c_26_oshift
    );
  c_26 <= c_26_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 27 and associated fundamentals [[25], [48]]
  c_27_3_4_False_resize <= resize(c_3, 22);
  c_27_3_4_False_shift <= shift_left(c_27_3_4_False_resize, 4);
  c_27_5_0_False_resize <= resize(c_5, 22);
  c_27_5_0_False_shift <= shift_left(c_27_5_0_False_resize, 0);
  with config_select_3 select c_27_sel <= 
    "0" when "1",
    "1" when others;
  with c_27_sel select c_27 <=
    c_27_3_4_False_shift when "0",
    c_27_5_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 28 and associated fundamentals [[3], [50]]
  c_28_5_1_False_resize <= resize(c_5, 22);
  c_28_5_1_False_shift <= shift_left(c_28_5_1_False_resize, 1);
  c_28_3_0_False_resize <= resize(c_3, 22);
  c_28_3_0_False_shift <= shift_left(c_28_3_0_False_resize, 0);
  with config_select_3 select c_28_sel <= 
    "0" when "1",
    "1" when others;
  with c_28_sel select c_28 <=
    c_28_5_1_False_shift when "0",
    c_28_3_0_False_shift when others;
  -- node of type 'sub' in stage 4 with id 29 and associated fundamentals [[97], [142]]
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 24,
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
      x_i => c_27,
      y_i => c_28,
      z_o => c_29_oshift
    );
  c_29 <= c_29_oshift(23 downto 0);
  -- node of type 'register' in stage 3 with id 30 and associated fundamentals [[3], [3]]
  c_30 <= c_3 & "";
  -- node of type 'mux' in stage 3 with id 31 and associated fundamentals [[25], [44]]
  c_31_5_0_False_resize <= resize(c_5, 22);
  c_31_5_0_False_shift <= shift_left(c_31_5_0_False_resize, 0);
  c_31_4_2_False_resize <= resize(c_4, 22);
  c_31_4_2_False_shift <= shift_left(c_31_4_2_False_resize, 2);
  with config_select_3 select c_31_sel <= 
    "0" when "0",
    "1" when others;
  with c_31_sel select c_31 <=
    c_31_5_0_False_shift when "0",
    c_31_4_2_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 32 and associated fundamentals [[103], [173]]
  with config_select_4 select c_32_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_32: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 18,
      w_o => 24,
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
      sub_i => c_32_sub_sel,
      x_i => c_31,
      y_i => c_30,
      z_o => c_32_oshift
    );
  c_32 <= c_32_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 33 and associated fundamentals [[3], [11]]
  c_33_4_0_False_resize <= c_4;
  c_33_4_0_False_shift <= shift_left(c_33_4_0_False_resize, 0);
  c_33_3_0_False_resize <= resize(c_3, 20);
  c_33_3_0_False_shift <= shift_left(c_33_3_0_False_resize, 0);
  with config_select_3 select c_33_sel <= 
    "0" when "1",
    "1" when others;
  with c_33_sel select c_33 <=
    c_33_4_0_False_shift when "0",
    c_33_3_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 34 and associated fundamentals [[176], [25]]
  c_34_4_4_False_resize <= resize(c_4, 24);
  c_34_4_4_False_shift <= shift_left(c_34_4_4_False_resize, 4);
  c_34_5_0_False_resize <= resize(c_5, 24);
  c_34_5_0_False_shift <= shift_left(c_34_5_0_False_resize, 0);
  with config_select_3 select c_34_sel <= 
    "0" when "0",
    "1" when others;
  with c_34_sel select c_34 <=
    c_34_4_4_False_shift when "0",
    c_34_5_0_False_shift when others;
  -- node of type 'add' in stage 4 with id 35 and associated fundamentals [[224], [201]]
  inst_adder_node_35: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 24,
      w_o => 24,
      s_x_i => 4,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_33,
      y_i => c_34,
      z_o => c_35_oshift
    );
  c_35 <= c_35_oshift(23 downto 0);
  -- node of type 'output' in stage 4 with id 36 and associated fundamentals [[93], [241]]
  c_36_resize <= c_26;
  c_36 <= shift_left(c_36_resize, 0);
  -- node of type 'output' in stage 4 with id 37 and associated fundamentals [[220], [179]]
  c_37_resize <= c_20;
  c_37 <= shift_left(c_37_resize, 0);
  -- node of type 'output' in stage 4 with id 38 and associated fundamentals [[224], [201]]
  c_38_resize <= c_35;
  c_38 <= shift_left(c_38_resize, 0);
  -- node of type 'output' in stage 4 with id 39 and associated fundamentals [[196], [214]]
  c_39_resize <= c_18;
  c_39 <= shift_left(c_39_resize, 0);
  -- node of type 'output' in stage 4 with id 40 and associated fundamentals [[104], [90]]
  c_40_resize <= c_12;
  c_40 <= shift_left(c_40_resize, 0);
  -- node of type 'output' in stage 4 with id 41 and associated fundamentals [[61], [73]]
  c_41_resize <= c_23;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'output' in stage 4 with id 42 and associated fundamentals [[144], [56]]
  c_42_resize <= c_9;
  c_42 <= shift_left(c_42_resize, 0);
  -- node of type 'output' in stage 4 with id 43 and associated fundamentals [[103], [173]]
  c_43_resize <= c_32;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'output' in stage 4 with id 44 and associated fundamentals [[108], [211]]
  c_44_resize <= c_15;
  c_44 <= shift_left(c_44_resize, 0);
  -- node of type 'output' in stage 4 with id 45 and associated fundamentals [[97], [142]]
  c_45_resize <= c_29;
  c_45 <= shift_left(c_45_resize, 0);
end architecture;
