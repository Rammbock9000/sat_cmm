library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(24 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(25 downto 0);
    y_3: out std_logic_vector(24 downto 0);
    y_4: out std_logic_vector(25 downto 0);
    y_5: out std_logic_vector(25 downto 0);
    y_6: out std_logic_vector(24 downto 0);
    y_7: out std_logic_vector(25 downto 0);
    y_8: out std_logic_vector(25 downto 0);
    y_9: out std_logic_vector(25 downto 0);
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
  signal config_select_7: std_logic_vector(0 downto 0);
  signal config_select_8: std_logic_vector(0 downto 0);
  signal config_select_9: std_logic_vector(0 downto 0);
  signal config_select_10: std_logic_vector(0 downto 0);
  signal config_select_11: std_logic_vector(0 downto 0);
  signal config_select_12: std_logic_vector(0 downto 0);
  signal config_select_13: std_logic_vector(0 downto 0);
  signal config_select_14: std_logic_vector(0 downto 0);
  signal config_select_15: std_logic_vector(0 downto 0);
  signal config_select_16: std_logic_vector(0 downto 0);
  signal config_select_17: std_logic_vector(0 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(20 downto 0);
  signal c_1_0_0_False_resize: signed(20 downto 0);
  signal c_1_0_0_False_shift: signed(20 downto 0);
  signal c_1_0_5_False_resize: signed(20 downto 0);
  signal c_1_0_5_False_shift: signed(20 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(22 downto 0);
  signal c_2_i0_resize: signed(22 downto 0);
  signal c_2_i1_resize: signed(22 downto 0);
  signal c_2_i0_shift: signed(22 downto 0);
  signal c_2_i1_shift: signed(22 downto 0);
  signal c_2_arith: signed(22 downto 0);
  signal c_2_oshift: signed(22 downto 0);
  signal c_3: signed(17 downto 0);
  signal c_3_0_0_False_resize: signed(17 downto 0);
  signal c_3_0_0_False_shift: signed(17 downto 0);
  signal c_3_0_2_False_resize: signed(17 downto 0);
  signal c_3_0_2_False_shift: signed(17 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(21 downto 0);
  signal c_4_i0_resize: signed(21 downto 0);
  signal c_4_i1_resize: signed(21 downto 0);
  signal c_4_i0_shift: signed(21 downto 0);
  signal c_4_i1_shift: signed(21 downto 0);
  signal c_4_arith: signed(21 downto 0);
  signal c_4_oshift: signed(21 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(23 downto 0);
  signal c_5_2_6_False_resize: signed(23 downto 0);
  signal c_5_2_6_False_shift: signed(23 downto 0);
  signal c_5_0_0_False_resize: signed(23 downto 0);
  signal c_5_0_0_False_shift: signed(23 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(24 downto 0);
  signal c_6_0_0_False_resize: signed(24 downto 0);
  signal c_6_0_0_False_shift: signed(24 downto 0);
  signal c_6_4_3_False_resize: signed(24 downto 0);
  signal c_6_4_3_False_shift: signed(24 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(25 downto 0);
  signal c_7_i0_resize: signed(25 downto 0);
  signal c_7_i1_resize: signed(25 downto 0);
  signal c_7_i0_shift: signed(25 downto 0);
  signal c_7_i1_shift: signed(25 downto 0);
  signal c_7_arith: signed(25 downto 0);
  signal c_7_oshift: signed(25 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(22 downto 0);
  signal c_8_0_2_False_resize: signed(22 downto 0);
  signal c_8_0_2_False_shift: signed(22 downto 0);
  signal c_8_2_0_False_resize: signed(22 downto 0);
  signal c_8_2_0_False_shift: signed(22 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(25 downto 0);
  signal c_10_2_0_False_resize: signed(25 downto 0);
  signal c_10_2_0_False_shift: signed(25 downto 0);
  signal c_10_0_10_False_resize: signed(25 downto 0);
  signal c_10_0_10_False_shift: signed(25 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(25 downto 0);
  signal c_11_i0_resize: signed(25 downto 0);
  signal c_11_i1_resize: signed(25 downto 0);
  signal c_11_i0_shift: signed(25 downto 0);
  signal c_11_i1_shift: signed(25 downto 0);
  signal c_11_arith: signed(25 downto 0);
  signal c_11_oshift: signed(25 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(25 downto 0);
  signal c_12_9_0_False_resize: signed(25 downto 0);
  signal c_12_9_0_False_shift: signed(25 downto 0);
  signal c_12_11_0_False_resize: signed(25 downto 0);
  signal c_12_11_0_False_shift: signed(25 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(25 downto 0);
  signal c_13_4_7_False_resize: signed(25 downto 0);
  signal c_13_4_7_False_shift: signed(25 downto 0);
  signal c_13_7_0_False_resize: signed(25 downto 0);
  signal c_13_7_0_False_shift: signed(25 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(25 downto 0);
  signal c_14_i0_resize: signed(25 downto 0);
  signal c_14_i1_resize: signed(25 downto 0);
  signal c_14_i0_shift: signed(25 downto 0);
  signal c_14_i1_shift: signed(25 downto 0);
  signal c_14_arith: signed(25 downto 0);
  signal c_14_oshift: signed(25 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(24 downto 0);
  signal c_15_14_0_False_resize: signed(24 downto 0);
  signal c_15_14_0_False_shift: signed(24 downto 0);
  signal c_15_2_5_False_resize: signed(24 downto 0);
  signal c_15_2_5_False_shift: signed(24 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_i0_resize: signed(23 downto 0);
  signal c_16_i1_resize: signed(23 downto 0);
  signal c_16_i0_shift: signed(23 downto 0);
  signal c_16_i1_shift: signed(23 downto 0);
  signal c_16_arith: signed(23 downto 0);
  signal c_16_oshift: signed(23 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_17_2_2_False_resize: signed(24 downto 0);
  signal c_17_2_2_False_shift: signed(24 downto 0);
  signal c_17_16_0_False_resize: signed(24 downto 0);
  signal c_17_16_0_False_shift: signed(24 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_i0_resize: signed(25 downto 0);
  signal c_18_i1_resize: signed(25 downto 0);
  signal c_18_i0_shift: signed(25 downto 0);
  signal c_18_i1_shift: signed(25 downto 0);
  signal c_18_arith: signed(25 downto 0);
  signal c_18_oshift: signed(25 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(25 downto 0);
  signal c_19_9_1_False_resize: signed(25 downto 0);
  signal c_19_9_1_False_shift: signed(25 downto 0);
  signal c_19_18_0_False_resize: signed(25 downto 0);
  signal c_19_18_0_False_shift: signed(25 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_7_0_False_resize: signed(23 downto 0);
  signal c_20_7_0_False_shift: signed(23 downto 0);
  signal c_20_0_1_False_resize: signed(23 downto 0);
  signal c_20_0_1_False_shift: signed(23 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_i0_resize: signed(25 downto 0);
  signal c_21_i1_resize: signed(25 downto 0);
  signal c_21_i0_shift: signed(25 downto 0);
  signal c_21_i1_shift: signed(25 downto 0);
  signal c_21_arith: signed(25 downto 0);
  signal c_21_oshift: signed(25 downto 0);
  signal c_22: signed(24 downto 0);
  signal c_22_i0_resize: signed(26 downto 0);
  signal c_22_i1_resize: signed(26 downto 0);
  signal c_22_i0_shift: signed(26 downto 0);
  signal c_22_i1_shift: signed(26 downto 0);
  signal c_22_arith: signed(26 downto 0);
  signal c_22_oshift: signed(24 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(24 downto 0);
  signal c_23_0_0_False_resize: signed(24 downto 0);
  signal c_23_0_0_False_shift: signed(24 downto 0);
  signal c_23_2_2_False_resize: signed(24 downto 0);
  signal c_23_2_2_False_shift: signed(24 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(24 downto 0);
  signal c_24_22_0_False_resize: signed(24 downto 0);
  signal c_24_22_0_False_shift: signed(24 downto 0);
  signal c_24_18_1_False_resize: signed(24 downto 0);
  signal c_24_18_1_False_shift: signed(24 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(24 downto 0);
  signal c_25_i0_resize: signed(24 downto 0);
  signal c_25_i1_resize: signed(24 downto 0);
  signal c_25_i0_shift: signed(24 downto 0);
  signal c_25_i1_shift: signed(24 downto 0);
  signal c_25_arith: signed(24 downto 0);
  signal c_25_oshift: signed(24 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_4_2_False_resize: signed(23 downto 0);
  signal c_26_4_2_False_shift: signed(23 downto 0);
  signal c_26_2_0_False_resize: signed(23 downto 0);
  signal c_26_2_0_False_shift: signed(23 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_7_2_False_resize: signed(25 downto 0);
  signal c_27_7_2_False_shift: signed(25 downto 0);
  signal c_27_11_0_False_resize: signed(25 downto 0);
  signal c_27_11_0_False_shift: signed(25 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_i0_resize: signed(25 downto 0);
  signal c_28_i1_resize: signed(25 downto 0);
  signal c_28_i0_shift: signed(25 downto 0);
  signal c_28_i1_shift: signed(25 downto 0);
  signal c_28_arith: signed(25 downto 0);
  signal c_28_oshift: signed(25 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(24 downto 0);
  signal c_29_resize: signed(24 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_14_0_False_resize: signed(25 downto 0);
  signal c_30_14_0_False_shift: signed(25 downto 0);
  signal c_30_11_0_False_resize: signed(25 downto 0);
  signal c_30_11_0_False_shift: signed(25 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_resize: signed(25 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_7_0_False_resize: signed(25 downto 0);
  signal c_32_7_0_False_shift: signed(25 downto 0);
  signal c_32_21_0_False_resize: signed(25 downto 0);
  signal c_32_21_0_False_shift: signed(25 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_resize: signed(25 downto 0);
  signal c_34: signed(24 downto 0);
  signal c_34_4_0_False_resize: signed(24 downto 0);
  signal c_34_4_0_False_shift: signed(24 downto 0);
  signal c_34_18_1_False_resize: signed(24 downto 0);
  signal c_34_18_1_False_shift: signed(24 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(24 downto 0);
  signal c_35_resize: signed(24 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_36_16_1_False_resize: signed(25 downto 0);
  signal c_36_16_1_False_shift: signed(25 downto 0);
  signal c_36_28_0_False_resize: signed(25 downto 0);
  signal c_36_28_0_False_shift: signed(25 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_resize: signed(25 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_38_0_8_False_resize: signed(25 downto 0);
  signal c_38_0_8_False_shift: signed(25 downto 0);
  signal c_38_18_0_False_resize: signed(25 downto 0);
  signal c_38_18_0_False_shift: signed(25 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_resize: signed(25 downto 0);
  signal c_40: signed(24 downto 0);
  signal c_40_22_0_False_resize: signed(24 downto 0);
  signal c_40_22_0_False_shift: signed(24 downto 0);
  signal c_40_16_2_False_resize: signed(24 downto 0);
  signal c_40_16_2_False_shift: signed(24 downto 0);
  signal c_40_sel: std_logic_vector(0 downto 0);
  signal c_41: signed(24 downto 0);
  signal c_41_resize: signed(24 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_9_0_False_resize: signed(23 downto 0);
  signal c_42_9_0_False_shift: signed(23 downto 0);
  signal c_42_22_0_False_resize: signed(23 downto 0);
  signal c_42_22_0_False_shift: signed(23 downto 0);
  signal c_42_sel: std_logic_vector(0 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_43_resize: signed(25 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_44_0_9_False_resize: signed(25 downto 0);
  signal c_44_0_9_False_shift: signed(25 downto 0);
  signal c_44_28_0_False_resize: signed(25 downto 0);
  signal c_44_28_0_False_shift: signed(25 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_resize: signed(25 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_46_11_4_False_resize: signed(25 downto 0);
  signal c_46_11_4_False_shift: signed(25 downto 0);
  signal c_46_7_0_False_resize: signed(25 downto 0);
  signal c_46_7_0_False_shift: signed(25 downto 0);
  signal c_46_sel: std_logic_vector(0 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_resize: signed(25 downto 0);
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
      config_select_8 <= config_select;
      config_select_9 <= config_select;
      config_select_10 <= config_select;
      config_select_11 <= config_select;
      config_select_12 <= config_select;
      config_select_13 <= config_select;
      config_select_14 <= config_select;
      config_select_15 <= config_select;
      config_select_16 <= config_select;
      config_select_17 <= config_select;
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
  -- output node 1 with id 31
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_31);
    end if;
  end process;
  -- output node 2 with id 33
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_33);
    end if;
  end process;
  -- output node 3 with id 35
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_35);
    end if;
  end process;
  -- output node 4 with id 37
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_37);
    end if;
  end process;
  -- output node 5 with id 39
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_39);
    end if;
  end process;
  -- output node 6 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 7 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_43);
    end if;
  end process;
  -- output node 8 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_45);
    end if;
  end process;
  -- output node 9 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_47);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[32], [1]]
  c_1_0_0_False_resize <= resize(c_0, 21);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_5_False_resize <= resize(c_0, 21);
  c_1_0_5_False_shift <= shift_left(c_1_0_5_False_resize, 5);
  with config_select_1 select c_1_sel <= 
    "0" when "1",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "0",
    c_1_0_5_False_shift when others;
  -- node of type 'add' in stage 2 with id 2 and associated fundamentals [[65], [3]]
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
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
      x_i => c_0,
      y_i => c_1,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(22 downto 0);
  -- node of type 'mux' in stage 1 with id 3 and associated fundamentals [[4], [1]]
  c_3_0_0_False_resize <= resize(c_0, 18);
  c_3_0_0_False_shift <= shift_left(c_3_0_0_False_resize, 0);
  c_3_0_2_False_resize <= resize(c_0, 18);
  c_3_0_2_False_shift <= shift_left(c_3_0_2_False_resize, 2);
  with config_select_1 select c_3_sel <= 
    "0" when "1",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_0_0_False_shift when "0",
    c_3_0_2_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 4 and associated fundamentals [[57], [5]]
  with config_select_3 select c_4_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 18,
      w_o => 22,
      s_x_i => 0,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_4_sub_sel,
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(21 downto 0);
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[1], [192]]
  c_5_2_6_False_resize <= resize(c_2, 24);
  c_5_2_6_False_shift <= shift_left(c_5_2_6_False_resize, 6);
  c_5_0_0_False_resize <= resize(c_0, 24);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  with config_select_3 select c_5_sel <= 
    "0" when "1",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_2_6_False_shift when "0",
    c_5_0_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 6 and associated fundamentals [[456], [1]]
  c_6_0_0_False_resize <= resize(c_0, 25);
  c_6_0_0_False_shift <= shift_left(c_6_0_0_False_resize, 0);
  c_6_4_3_False_resize <= resize(c_4, 25);
  c_6_4_3_False_shift <= shift_left(c_6_4_3_False_resize, 3);
  with config_select_4 select c_6_sel <= 
    "0" when "1",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_0_0_False_shift when "0",
    c_6_4_3_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 7 and associated fundamentals [[913], [190]]
  with config_select_5 select c_7_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 25,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 1,
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
  c_7 <= c_7_oshift(25 downto 0);
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[65], [4]]
  c_8_0_2_False_resize <= resize(c_0, 23);
  c_8_0_2_False_shift <= shift_left(c_8_0_2_False_resize, 2);
  c_8_2_0_False_resize <= c_2;
  c_8_2_0_False_shift <= shift_left(c_8_2_0_False_resize, 0);
  with config_select_3 select c_8_sel <= 
    "0" when "1",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_0_2_False_shift when "0",
    c_8_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 9 and associated fundamentals [[-203], [21]]
  with config_select_4 select c_9_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
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
      sub_i => c_9_sub_sel,
      x_i => c_4,
      y_i => c_8,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[1024], [3]]
  c_10_2_0_False_resize <= resize(c_2, 26);
  c_10_2_0_False_shift <= shift_left(c_10_2_0_False_resize, 0);
  c_10_0_10_False_resize <= resize(c_0, 26);
  c_10_0_10_False_shift <= shift_left(c_10_0_10_False_resize, 10);
  with config_select_3 select c_10_sel <= 
    "0" when "1",
    "1" when others;
  with c_10_sel select c_10 <=
    c_10_2_0_False_shift when "0",
    c_10_0_10_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 11 and associated fundamentals [[618], [39]]
  with config_select_5 select c_11_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_11: entity work.adder_node
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
  -- node of type 'mux' in stage 6 with id 12 and associated fundamentals [[618], [21]]
  c_12_9_0_False_resize <= resize(c_9, 26);
  c_12_9_0_False_shift <= shift_left(c_12_9_0_False_resize, 0);
  c_12_11_0_False_resize <= c_11;
  c_12_11_0_False_shift <= shift_left(c_12_11_0_False_resize, 0);
  with config_select_6 select c_12_sel <= 
    "0" when "1",
    "1" when others;
  with c_12_sel select c_12 <=
    c_12_9_0_False_shift when "0",
    c_12_11_0_False_shift when others;
  -- node of type 'mux' in stage 6 with id 13 and associated fundamentals [[913], [640]]
  c_13_4_7_False_resize <= resize(c_4, 26);
  c_13_4_7_False_shift <= shift_left(c_13_4_7_False_resize, 7);
  c_13_7_0_False_resize <= c_7;
  c_13_7_0_False_shift <= shift_left(c_13_7_0_False_resize, 0);
  with config_select_6 select c_13_sel <= 
    "0" when "1",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_4_7_False_shift when "0",
    c_13_7_0_False_shift when others;
  -- node of type 'add_sub' in stage 7 with id 14 and associated fundamentals [[-295], [661]]
  with config_select_7 select c_14_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 26,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_14_sub_sel,
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  c_14 <= c_14_oshift(25 downto 0);
  -- node of type 'mux' in stage 8 with id 15 and associated fundamentals [[-295], [96]]
  c_15_14_0_False_resize <= c_14(24 downto 0);
  c_15_14_0_False_shift <= shift_left(c_15_14_0_False_resize, 0);
  c_15_2_5_False_resize <= resize(c_2, 25);
  c_15_2_5_False_shift <= shift_left(c_15_2_5_False_resize, 5);
  with config_select_8 select c_15_sel <= 
    "0" when "0",
    "1" when others;
  with c_15_sel select c_15 <=
    c_15_14_0_False_shift when "0",
    c_15_2_5_False_shift when others;
  -- node of type 'add' in stage 9 with id 16 and associated fundamentals [[-165], [102]]
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 25,
      w_o => 24,
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
      x_i => c_2,
      y_i => c_15,
      z_o => c_16_oshift
    );
  c_16 <= c_16_oshift(23 downto 0);
  -- node of type 'mux' in stage 10 with id 17 and associated fundamentals [[260], [102]]
  c_17_2_2_False_resize <= resize(c_2, 25);
  c_17_2_2_False_shift <= shift_left(c_17_2_2_False_resize, 2);
  c_17_16_0_False_resize <= resize(c_16, 25);
  c_17_16_0_False_shift <= shift_left(c_17_16_0_False_resize, 0);
  with config_select_10 select c_17_sel <= 
    "0" when "0",
    "1" when others;
  with c_17_sel select c_17 <=
    c_17_2_2_False_shift when "0",
    c_17_16_0_False_shift when others;
  -- node of type 'add_sub' in stage 11 with id 18 and associated fundamentals [[723], [225]]
  with config_select_11 select c_18_sub_sel <= 
    '1' when "0",
    '0' when others;
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
      y_i => c_9,
      z_o => c_18_oshift
    );
  c_18 <= c_18_oshift(25 downto 0);
  -- node of type 'mux' in stage 12 with id 19 and associated fundamentals [[723], [42]]
  c_19_9_1_False_resize <= resize(c_9, 26);
  c_19_9_1_False_shift <= shift_left(c_19_9_1_False_resize, 1);
  c_19_18_0_False_resize <= c_18;
  c_19_18_0_False_shift <= shift_left(c_19_18_0_False_resize, 0);
  with config_select_12 select c_19_sel <= 
    "0" when "1",
    "1" when others;
  with c_19_sel select c_19 <=
    c_19_9_1_False_shift when "0",
    c_19_18_0_False_shift when others;
  -- node of type 'mux' in stage 6 with id 20 and associated fundamentals [[2], [190]]
  c_20_7_0_False_resize <= c_7(23 downto 0);
  c_20_7_0_False_shift <= shift_left(c_20_7_0_False_resize, 0);
  c_20_0_1_False_resize <= resize(c_0, 24);
  c_20_0_1_False_shift <= shift_left(c_20_0_1_False_resize, 1);
  with config_select_6 select c_20_sel <= 
    "0" when "1",
    "1" when others;
  with c_20_sel select c_20 <=
    c_20_7_0_False_shift when "0",
    c_20_0_1_False_shift when others;
  -- node of type 'add' in stage 13 with id 21 and associated fundamentals [[731], [802]]
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
      w_o => 26,
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
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  c_21 <= c_21_oshift(25 downto 0);
  -- node of type 'add_sub' in stage 14 with id 22 and associated fundamentals [[411], [-153]]
  with config_select_14 select c_22_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 26,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 2,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_22_sub_sel,
      x_i => c_7,
      y_i => c_21,
      z_o => c_22_oshift
    );
  c_22 <= c_22_oshift(24 downto 0);
  -- node of type 'mux' in stage 3 with id 23 and associated fundamentals [[260], [1]]
  c_23_0_0_False_resize <= resize(c_0, 25);
  c_23_0_0_False_shift <= shift_left(c_23_0_0_False_resize, 0);
  c_23_2_2_False_resize <= resize(c_2, 25);
  c_23_2_2_False_shift <= shift_left(c_23_2_2_False_resize, 2);
  with config_select_3 select c_23_sel <= 
    "0" when "1",
    "1" when others;
  with c_23_sel select c_23 <=
    c_23_0_0_False_shift when "0",
    c_23_2_2_False_shift when others;
  -- node of type 'mux' in stage 15 with id 24 and associated fundamentals [[411], [450]]
  c_24_22_0_False_resize <= c_22;
  c_24_22_0_False_shift <= shift_left(c_24_22_0_False_resize, 0);
  c_24_18_1_False_resize <= c_18(24 downto 0);
  c_24_18_1_False_shift <= shift_left(c_24_18_1_False_resize, 1);
  with config_select_15 select c_24_sel <= 
    "0" when "0",
    "1" when others;
  with c_24_sel select c_24 <=
    c_24_22_0_False_shift when "0",
    c_24_18_1_False_shift when others;
  -- node of type 'sub' in stage 16 with id 25 and associated fundamentals [[-151], [-449]]
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_23,
      y_i => c_24,
      z_o => c_25_oshift
    );
  c_25 <= c_25_oshift(24 downto 0);
  -- node of type 'mux' in stage 4 with id 26 and associated fundamentals [[228], [3]]
  c_26_4_2_False_resize <= resize(c_4, 24);
  c_26_4_2_False_shift <= shift_left(c_26_4_2_False_resize, 2);
  c_26_2_0_False_resize <= resize(c_2, 24);
  c_26_2_0_False_shift <= shift_left(c_26_2_0_False_resize, 0);
  with config_select_4 select c_26_sel <= 
    "0" when "0",
    "1" when others;
  with c_26_sel select c_26 <=
    c_26_4_2_False_shift when "0",
    c_26_2_0_False_shift when others;
  -- node of type 'mux' in stage 6 with id 27 and associated fundamentals [[618], [760]]
  c_27_7_2_False_resize <= c_7;
  c_27_7_2_False_shift <= shift_left(c_27_7_2_False_resize, 2);
  c_27_11_0_False_resize <= c_11;
  c_27_11_0_False_shift <= shift_left(c_27_11_0_False_resize, 0);
  with config_select_6 select c_27_sel <= 
    "0" when "1",
    "1" when others;
  with c_27_sel select c_27 <=
    c_27_7_2_False_shift when "0",
    c_27_11_0_False_shift when others;
  -- node of type 'add_sub' in stage 7 with id 28 and associated fundamentals [[846], [-757]]
  with config_select_7 select c_28_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 26,
      w_o => 26,
      s_x_i => 0,
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
  -- node of type 'output' in stage 16 with id 29 and associated fundamentals [[151], [449]]
  c_29_resize <= c_25;
  c_29 <= -shift_left(c_29_resize, 0);
  -- node of type 'mux' in stage 8 with id 30 and associated fundamentals [[618], [661]]
  c_30_14_0_False_resize <= c_14;
  c_30_14_0_False_shift <= shift_left(c_30_14_0_False_resize, 0);
  c_30_11_0_False_resize <= c_11;
  c_30_11_0_False_shift <= shift_left(c_30_11_0_False_resize, 0);
  with config_select_8 select c_30_sel <= 
    "0" when "1",
    "1" when others;
  with c_30_sel select c_30 <=
    c_30_14_0_False_shift when "0",
    c_30_11_0_False_shift when others;
  -- node of type 'output' in stage 8 with id 31 and associated fundamentals [[618], [661]]
  c_31_resize <= c_30;
  c_31 <= shift_left(c_31_resize, 0);
  -- node of type 'mux' in stage 14 with id 32 and associated fundamentals [[731], [190]]
  c_32_7_0_False_resize <= c_7;
  c_32_7_0_False_shift <= shift_left(c_32_7_0_False_resize, 0);
  c_32_21_0_False_resize <= c_21;
  c_32_21_0_False_shift <= shift_left(c_32_21_0_False_resize, 0);
  with config_select_14 select c_32_sel <= 
    "0" when "1",
    "1" when others;
  with c_32_sel select c_32 <=
    c_32_7_0_False_shift when "0",
    c_32_21_0_False_shift when others;
  -- node of type 'output' in stage 14 with id 33 and associated fundamentals [[731], [190]]
  c_33_resize <= c_32;
  c_33 <= shift_left(c_33_resize, 0);
  -- node of type 'mux' in stage 12 with id 34 and associated fundamentals [[57], [450]]
  c_34_4_0_False_resize <= resize(c_4, 25);
  c_34_4_0_False_shift <= shift_left(c_34_4_0_False_resize, 0);
  c_34_18_1_False_resize <= c_18(24 downto 0);
  c_34_18_1_False_shift <= shift_left(c_34_18_1_False_resize, 1);
  with config_select_12 select c_34_sel <= 
    "0" when "0",
    "1" when others;
  with c_34_sel select c_34 <=
    c_34_4_0_False_shift when "0",
    c_34_18_1_False_shift when others;
  -- node of type 'output' in stage 12 with id 35 and associated fundamentals [[57], [450]]
  c_35_resize <= c_34;
  c_35 <= shift_left(c_35_resize, 0);
  -- node of type 'mux' in stage 10 with id 36 and associated fundamentals [[-330], [-757]]
  c_36_16_1_False_resize <= resize(c_16, 26);
  c_36_16_1_False_shift <= shift_left(c_36_16_1_False_resize, 1);
  c_36_28_0_False_resize <= c_28;
  c_36_28_0_False_shift <= shift_left(c_36_28_0_False_resize, 0);
  with config_select_10 select c_36_sel <= 
    "0" when "0",
    "1" when others;
  with c_36_sel select c_36 <=
    c_36_16_1_False_shift when "0",
    c_36_28_0_False_shift when others;
  -- node of type 'output' in stage 10 with id 37 and associated fundamentals [[330], [757]]
  c_37_resize <= c_36;
  c_37 <= -shift_left(c_37_resize, 0);
  -- node of type 'mux' in stage 12 with id 38 and associated fundamentals [[723], [256]]
  c_38_0_8_False_resize <= resize(c_0, 26);
  c_38_0_8_False_shift <= shift_left(c_38_0_8_False_resize, 8);
  c_38_18_0_False_resize <= c_18;
  c_38_18_0_False_shift <= shift_left(c_38_18_0_False_resize, 0);
  with config_select_12 select c_38_sel <= 
    "0" when "1",
    "1" when others;
  with c_38_sel select c_38 <=
    c_38_0_8_False_shift when "0",
    c_38_18_0_False_shift when others;
  -- node of type 'output' in stage 12 with id 39 and associated fundamentals [[723], [256]]
  c_39_resize <= c_38;
  c_39 <= shift_left(c_39_resize, 0);
  -- node of type 'mux' in stage 15 with id 40 and associated fundamentals [[411], [408]]
  c_40_22_0_False_resize <= c_22;
  c_40_22_0_False_shift <= shift_left(c_40_22_0_False_resize, 0);
  c_40_16_2_False_resize <= resize(c_16, 25);
  c_40_16_2_False_shift <= shift_left(c_40_16_2_False_resize, 2);
  with config_select_15 select c_40_sel <= 
    "0" when "0",
    "1" when others;
  with c_40_sel select c_40 <=
    c_40_22_0_False_shift when "0",
    c_40_16_2_False_shift when others;
  -- node of type 'output' in stage 15 with id 41 and associated fundamentals [[411], [408]]
  c_41_resize <= c_40;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'mux' in stage 15 with id 42 and associated fundamentals [[-203], [-153]]
  c_42_9_0_False_resize <= c_9;
  c_42_9_0_False_shift <= shift_left(c_42_9_0_False_resize, 0);
  c_42_22_0_False_resize <= c_22(23 downto 0);
  c_42_22_0_False_shift <= shift_left(c_42_22_0_False_resize, 0);
  with config_select_15 select c_42_sel <= 
    "0" when "0",
    "1" when others;
  with c_42_sel select c_42 <=
    c_42_9_0_False_shift when "0",
    c_42_22_0_False_shift when others;
  -- node of type 'output' in stage 15 with id 43 and associated fundamentals [[812], [612]]
  c_43_resize <= resize(c_42, 26);
  c_43 <= -shift_left(c_43_resize, 2);
  -- node of type 'mux' in stage 8 with id 44 and associated fundamentals [[846], [512]]
  c_44_0_9_False_resize <= resize(c_0, 26);
  c_44_0_9_False_shift <= shift_left(c_44_0_9_False_resize, 9);
  c_44_28_0_False_resize <= c_28;
  c_44_28_0_False_shift <= shift_left(c_44_28_0_False_resize, 0);
  with config_select_8 select c_44_sel <= 
    "0" when "1",
    "1" when others;
  with c_44_sel select c_44 <=
    c_44_0_9_False_shift when "0",
    c_44_28_0_False_shift when others;
  -- node of type 'output' in stage 8 with id 45 and associated fundamentals [[846], [512]]
  c_45_resize <= c_44;
  c_45 <= shift_left(c_45_resize, 0);
  -- node of type 'mux' in stage 6 with id 46 and associated fundamentals [[913], [624]]
  c_46_11_4_False_resize <= c_11;
  c_46_11_4_False_shift <= shift_left(c_46_11_4_False_resize, 4);
  c_46_7_0_False_resize <= c_7;
  c_46_7_0_False_shift <= shift_left(c_46_7_0_False_resize, 0);
  with config_select_6 select c_46_sel <= 
    "0" when "1",
    "1" when others;
  with c_46_sel select c_46 <=
    c_46_11_4_False_shift when "0",
    c_46_7_0_False_shift when others;
  -- node of type 'output' in stage 6 with id 47 and associated fundamentals [[913], [624]]
  c_47_resize <= c_46;
  c_47 <= shift_left(c_47_resize, 0);
end architecture;
