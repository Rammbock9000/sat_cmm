library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(24 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(25 downto 0);
    y_3: out std_logic_vector(24 downto 0);
    y_4: out std_logic_vector(25 downto 0);
    y_5: out std_logic_vector(25 downto 0);
    y_6: out std_logic_vector(25 downto 0);
    y_7: out std_logic_vector(23 downto 0);
    y_8: out std_logic_vector(24 downto 0);
    y_9: out std_logic_vector(25 downto 0);
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
  signal c_5: signed(18 downto 0);
  signal c_5_i0_resize: signed(18 downto 0);
  signal c_5_i1_resize: signed(18 downto 0);
  signal c_5_i0_shift: signed(18 downto 0);
  signal c_5_i1_shift: signed(18 downto 0);
  signal c_5_arith: signed(18 downto 0);
  signal c_5_oshift: signed(18 downto 0);
  signal c_6: signed(19 downto 0);
  signal c_6_i0_resize: signed(19 downto 0);
  signal c_6_i1_resize: signed(19 downto 0);
  signal c_6_i0_shift: signed(19 downto 0);
  signal c_6_i1_shift: signed(19 downto 0);
  signal c_6_arith: signed(19 downto 0);
  signal c_6_oshift: signed(19 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_i0_resize: signed(22 downto 0);
  signal c_7_i1_resize: signed(22 downto 0);
  signal c_7_i0_shift: signed(22 downto 0);
  signal c_7_i1_shift: signed(22 downto 0);
  signal c_7_arith: signed(22 downto 0);
  signal c_7_oshift: signed(22 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_i0_resize: signed(22 downto 0);
  signal c_8_i1_resize: signed(22 downto 0);
  signal c_8_i0_shift: signed(22 downto 0);
  signal c_8_i1_shift: signed(22 downto 0);
  signal c_8_arith: signed(22 downto 0);
  signal c_8_oshift: signed(22 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_i0_resize: signed(23 downto 0);
  signal c_10_i1_resize: signed(23 downto 0);
  signal c_10_i0_shift: signed(23 downto 0);
  signal c_10_i1_shift: signed(23 downto 0);
  signal c_10_arith: signed(23 downto 0);
  signal c_10_oshift: signed(23 downto 0);
  signal c_11: signed(22 downto 0);
  signal c_11_4_0_False_resize: signed(22 downto 0);
  signal c_11_4_0_False_shift: signed(22 downto 0);
  signal c_11_5_3_False_resize: signed(22 downto 0);
  signal c_11_5_3_False_shift: signed(22 downto 0);
  signal c_11_4_7_False_resize: signed(22 downto 0);
  signal c_11_4_7_False_shift: signed(22 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_4_0_False_resize: signed(22 downto 0);
  signal c_12_4_0_False_shift: signed(22 downto 0);
  signal c_12_6_3_False_resize: signed(22 downto 0);
  signal c_12_6_3_False_shift: signed(22 downto 0);
  signal c_12_6_2_False_resize: signed(22 downto 0);
  signal c_12_6_2_False_shift: signed(22 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(23 downto 0);
  signal c_14_4_7_False_resize: signed(23 downto 0);
  signal c_14_4_7_False_shift: signed(23 downto 0);
  signal c_14_6_4_False_resize: signed(23 downto 0);
  signal c_14_6_4_False_shift: signed(23 downto 0);
  signal c_14_5_0_False_resize: signed(23 downto 0);
  signal c_14_5_0_False_shift: signed(23 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(17 downto 0);
  signal c_15_4_0_False_resize: signed(17 downto 0);
  signal c_15_4_0_False_shift: signed(17 downto 0);
  signal c_15_4_2_False_resize: signed(17 downto 0);
  signal c_15_4_2_False_shift: signed(17 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(25 downto 0);
  signal c_16_i1_resize: signed(25 downto 0);
  signal c_16_i0_shift: signed(25 downto 0);
  signal c_16_i1_shift: signed(25 downto 0);
  signal c_16_arith: signed(25 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(25 downto 0);
  signal c_17_9_2_False_resize: signed(25 downto 0);
  signal c_17_9_2_False_shift: signed(25 downto 0);
  signal c_17_4_2_False_resize: signed(25 downto 0);
  signal c_17_4_2_False_shift: signed(25 downto 0);
  signal c_17_6_0_False_resize: signed(25 downto 0);
  signal c_17_6_0_False_shift: signed(25 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_8_0_False_resize: signed(23 downto 0);
  signal c_18_8_0_False_shift: signed(23 downto 0);
  signal c_18_10_0_False_resize: signed(23 downto 0);
  signal c_18_10_0_False_shift: signed(23 downto 0);
  signal c_18_7_0_False_resize: signed(23 downto 0);
  signal c_18_7_0_False_shift: signed(23 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(24 downto 0);
  signal c_19_i0_resize: signed(24 downto 0);
  signal c_19_i1_resize: signed(24 downto 0);
  signal c_19_i0_shift: signed(24 downto 0);
  signal c_19_i1_shift: signed(24 downto 0);
  signal c_19_arith: signed(24 downto 0);
  signal c_19_oshift: signed(24 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(23 downto 0);
  signal c_20_9_0_False_resize: signed(23 downto 0);
  signal c_20_9_0_False_shift: signed(23 downto 0);
  signal c_20_8_0_False_resize: signed(23 downto 0);
  signal c_20_8_0_False_shift: signed(23 downto 0);
  signal c_20_10_0_False_resize: signed(23 downto 0);
  signal c_20_10_0_False_shift: signed(23 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_21_7_0_False_resize: signed(22 downto 0);
  signal c_21_7_0_False_shift: signed(22 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(24 downto 0);
  signal c_22_i0_resize: signed(24 downto 0);
  signal c_22_i1_resize: signed(24 downto 0);
  signal c_22_i0_shift: signed(24 downto 0);
  signal c_22_i1_shift: signed(24 downto 0);
  signal c_22_arith: signed(24 downto 0);
  signal c_22_oshift: signed(24 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_5_5_False_resize: signed(23 downto 0);
  signal c_23_5_5_False_shift: signed(23 downto 0);
  signal c_23_8_0_False_resize: signed(23 downto 0);
  signal c_23_8_0_False_shift: signed(23 downto 0);
  signal c_23_10_0_False_resize: signed(23 downto 0);
  signal c_23_10_0_False_shift: signed(23 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(22 downto 0);
  signal c_24_5_4_False_resize: signed(22 downto 0);
  signal c_24_5_4_False_shift: signed(22 downto 0);
  signal c_24_5_0_False_resize: signed(22 downto 0);
  signal c_24_5_0_False_shift: signed(22 downto 0);
  signal c_24_7_0_False_resize: signed(22 downto 0);
  signal c_24_7_0_False_shift: signed(22 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_i0_resize: signed(25 downto 0);
  signal c_25_i1_resize: signed(25 downto 0);
  signal c_25_i0_shift: signed(25 downto 0);
  signal c_25_i1_shift: signed(25 downto 0);
  signal c_25_arith: signed(25 downto 0);
  signal c_25_oshift: signed(25 downto 0);
  signal c_25_sub_sel_left: std_logic;
  signal c_25_sub_sel_right: std_logic;
  signal c_26: signed(24 downto 0);
  signal c_26_9_0_False_resize: signed(24 downto 0);
  signal c_26_9_0_False_shift: signed(24 downto 0);
  signal c_26_6_5_False_resize: signed(24 downto 0);
  signal c_26_6_5_False_shift: signed(24 downto 0);
  signal c_26_4_8_False_resize: signed(24 downto 0);
  signal c_26_4_8_False_shift: signed(24 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(22 downto 0);
  signal c_27_7_0_False_resize: signed(22 downto 0);
  signal c_27_7_0_False_shift: signed(22 downto 0);
  signal c_27_6_2_False_resize: signed(22 downto 0);
  signal c_27_6_2_False_shift: signed(22 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_i0_resize: signed(25 downto 0);
  signal c_28_i1_resize: signed(25 downto 0);
  signal c_28_i0_shift: signed(25 downto 0);
  signal c_28_i1_shift: signed(25 downto 0);
  signal c_28_arith: signed(25 downto 0);
  signal c_28_oshift: signed(25 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(22 downto 0);
  signal c_29_5_4_False_resize: signed(22 downto 0);
  signal c_29_5_4_False_shift: signed(22 downto 0);
  signal c_29_5_0_False_resize: signed(22 downto 0);
  signal c_29_5_0_False_shift: signed(22 downto 0);
  signal c_29_6_0_False_resize: signed(22 downto 0);
  signal c_29_6_0_False_shift: signed(22 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_4_4_False_resize: signed(23 downto 0);
  signal c_30_4_4_False_shift: signed(23 downto 0);
  signal c_30_9_0_False_resize: signed(23 downto 0);
  signal c_30_9_0_False_shift: signed(23 downto 0);
  signal c_30_8_0_False_resize: signed(23 downto 0);
  signal c_30_8_0_False_shift: signed(23 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_i0_resize: signed(25 downto 0);
  signal c_31_i1_resize: signed(25 downto 0);
  signal c_31_i0_shift: signed(25 downto 0);
  signal c_31_i1_shift: signed(25 downto 0);
  signal c_31_arith: signed(25 downto 0);
  signal c_31_oshift: signed(25 downto 0);
  signal c_32: signed(24 downto 0);
  signal c_32_9_0_False_resize: signed(24 downto 0);
  signal c_32_9_0_False_shift: signed(24 downto 0);
  signal c_32_4_9_False_resize: signed(24 downto 0);
  signal c_32_4_9_False_shift: signed(24 downto 0);
  signal c_32_5_0_False_resize: signed(24 downto 0);
  signal c_32_5_0_False_shift: signed(24 downto 0);
  signal c_32_sel: std_logic_vector(1 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_9_0_False_resize: signed(23 downto 0);
  signal c_33_9_0_False_shift: signed(23 downto 0);
  signal c_33_7_1_False_resize: signed(23 downto 0);
  signal c_33_7_1_False_shift: signed(23 downto 0);
  signal c_33_4_3_False_resize: signed(23 downto 0);
  signal c_33_4_3_False_shift: signed(23 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(24 downto 0);
  signal c_34_i0_resize: signed(24 downto 0);
  signal c_34_i1_resize: signed(24 downto 0);
  signal c_34_i0_shift: signed(24 downto 0);
  signal c_34_i1_shift: signed(24 downto 0);
  signal c_34_arith: signed(24 downto 0);
  signal c_34_oshift: signed(24 downto 0);
  signal c_34_sub_sel: std_logic;
  signal c_35: signed(22 downto 0);
  signal c_35_8_0_False_resize: signed(22 downto 0);
  signal c_35_8_0_False_shift: signed(22 downto 0);
  signal c_35_4_6_False_resize: signed(22 downto 0);
  signal c_35_4_6_False_shift: signed(22 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_4_0_False_resize: signed(23 downto 0);
  signal c_36_4_0_False_shift: signed(23 downto 0);
  signal c_36_9_0_False_resize: signed(23 downto 0);
  signal c_36_9_0_False_shift: signed(23 downto 0);
  signal c_36_6_1_False_resize: signed(23 downto 0);
  signal c_36_6_1_False_shift: signed(23 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_i0_resize: signed(25 downto 0);
  signal c_37_i1_resize: signed(25 downto 0);
  signal c_37_i0_shift: signed(25 downto 0);
  signal c_37_i1_shift: signed(25 downto 0);
  signal c_37_arith: signed(25 downto 0);
  signal c_37_oshift: signed(25 downto 0);
  signal c_37_sub_sel: std_logic;
  signal c_38: signed(22 downto 0);
  signal c_38_4_7_False_resize: signed(22 downto 0);
  signal c_38_4_7_False_shift: signed(22 downto 0);
  signal c_38_7_0_False_resize: signed(22 downto 0);
  signal c_38_7_0_False_shift: signed(22 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_5_1_False_resize: signed(23 downto 0);
  signal c_39_5_1_False_shift: signed(23 downto 0);
  signal c_39_10_0_False_resize: signed(23 downto 0);
  signal c_39_10_0_False_shift: signed(23 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_40_i0_resize: signed(25 downto 0);
  signal c_40_i1_resize: signed(25 downto 0);
  signal c_40_i0_shift: signed(25 downto 0);
  signal c_40_i1_shift: signed(25 downto 0);
  signal c_40_arith: signed(25 downto 0);
  signal c_40_oshift: signed(25 downto 0);
  signal c_40_sub_sel: std_logic;
  signal c_41: signed(24 downto 0);
  signal c_41_resize: signed(24 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_42_resize: signed(25 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_43_resize: signed(25 downto 0);
  signal c_44: signed(24 downto 0);
  signal c_44_resize: signed(24 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_resize: signed(25 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_46_resize: signed(25 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_resize: signed(25 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_48_resize: signed(23 downto 0);
  signal c_49: signed(24 downto 0);
  signal c_49_resize: signed(24 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_50_resize: signed(25 downto 0);
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
  -- output node 0 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 1 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_42);
    end if;
  end process;
  -- output node 2 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_43);
    end if;
  end process;
  -- output node 3 with id 44
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_44);
    end if;
  end process;
  -- output node 4 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_45);
    end if;
  end process;
  -- output node 5 with id 46
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_46);
    end if;
  end process;
  -- output node 6 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_47);
    end if;
  end process;
  -- output node 7 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_48);
    end if;
  end process;
  -- output node 8 with id 49
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_49);
    end if;
  end process;
  -- output node 9 with id 50
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_50);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1], [1]]
  c_1 <= c_0 & "";
  -- node of type 'add' in stage 1 with id 2 and associated fundamentals [[17], [17], [17]]
  inst_adder_node_2: entity work.adder_node
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
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(20 downto 0);
  -- node of type 'add' in stage 1 with id 3 and associated fundamentals [[129], [129], [129]]
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
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1]]
  c_4 <= c_1 & "";
  -- node of type 'sub' in stage 2 with id 5 and associated fundamentals [[7], [7], [7]]
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
      x_i => c_1,
      y_i => c_1,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(18 downto 0);
  -- node of type 'sub' in stage 2 with id 6 and associated fundamentals [[15], [15], [15]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
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
      x_i => c_1,
      y_i => c_1,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(19 downto 0);
  -- node of type 'add' in stage 2 with id 7 and associated fundamentals [[85], [85], [85]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 21,
      w_o => 23,
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
      x_i => c_2,
      y_i => c_2,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(22 downto 0);
  -- node of type 'sub' in stage 2 with id 8 and associated fundamentals [[97], [97], [97]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 16,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_3,
      y_i => c_1,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(22 downto 0);
  -- node of type 'add' in stage 2 with id 9 and associated fundamentals [[163], [163], [163]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 24,
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
      y_i => c_3,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(23 downto 0);
  -- node of type 'sub' in stage 2 with id 10 and associated fundamentals [[239], [239], [239]]
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 21,
      w_o => 24,
      s_x_i => 8,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_1,
      y_i => c_2,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[1], [56], [128]]
  c_11_4_0_False_resize <= resize(c_4, 23);
  c_11_4_0_False_shift <= shift_left(c_11_4_0_False_resize, 0);
  c_11_5_3_False_resize <= resize(c_5, 23);
  c_11_5_3_False_shift <= shift_left(c_11_5_3_False_resize, 3);
  c_11_4_7_False_resize <= resize(c_4, 23);
  c_11_4_7_False_shift <= shift_left(c_11_4_7_False_resize, 7);
  with config_select_3 select c_11_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_11_sel select c_11 <=
    c_11_4_0_False_shift when "00",
    c_11_5_3_False_shift when "01",
    c_11_4_7_False_shift when others;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[120], [1], [60]]
  c_12_4_0_False_resize <= resize(c_4, 23);
  c_12_4_0_False_shift <= shift_left(c_12_4_0_False_resize, 0);
  c_12_6_3_False_resize <= resize(c_6, 23);
  c_12_6_3_False_shift <= shift_left(c_12_6_3_False_resize, 3);
  c_12_6_2_False_resize <= resize(c_6, 23);
  c_12_6_2_False_shift <= shift_left(c_12_6_2_False_resize, 2);
  with config_select_3 select c_12_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_12_sel select c_12 <=
    c_12_4_0_False_shift when "00",
    c_12_6_3_False_shift when "01",
    c_12_6_2_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 13 and associated fundamentals [[122], [111], [196]]
  with config_select_4 select c_13_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 24,
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
      sub_i => c_13_sub_sel,
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[128], [7], [240]]
  c_14_4_7_False_resize <= resize(c_4, 24);
  c_14_4_7_False_shift <= shift_left(c_14_4_7_False_resize, 7);
  c_14_6_4_False_resize <= resize(c_6, 24);
  c_14_6_4_False_shift <= shift_left(c_14_6_4_False_resize, 4);
  c_14_5_0_False_resize <= resize(c_5, 24);
  c_14_5_0_False_shift <= shift_left(c_14_5_0_False_resize, 0);
  with config_select_3 select c_14_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_14_sel select c_14 <=
    c_14_4_7_False_shift when "00",
    c_14_6_4_False_shift when "01",
    c_14_5_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[4], [1], [0]]
  c_15_4_0_False_resize <= resize(c_4, 18);
  c_15_4_0_False_shift <= shift_left(c_15_4_0_False_resize, 0);
  c_15_4_2_False_resize <= resize(c_4, 18);
  c_15_4_2_False_shift <= shift_left(c_15_4_2_False_resize, 2);
  with config_select_3 select c_15_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_15_sel select c_15 <=
    c_15_4_0_False_shift when "00",
    c_15_4_2_False_shift when "01",
    to_signed(0, 18) when others;
  -- node of type 'add_sub' in stage 4 with id 16 and associated fundamentals [[504], [26], [960]]
  with config_select_4 select c_16_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 18,
      w_o => 26,
      s_x_i => 2,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_16_sub_sel,
      x_i => c_14,
      y_i => c_15,
      z_o => c_16_oshift
    );
  c_16 <= c_16_oshift(25 downto 0);
  -- node of type 'mux' in stage 3 with id 17 and associated fundamentals [[4], [15], [652]]
  c_17_9_2_False_resize <= resize(c_9, 26);
  c_17_9_2_False_shift <= shift_left(c_17_9_2_False_resize, 2);
  c_17_4_2_False_resize <= resize(c_4, 26);
  c_17_4_2_False_shift <= shift_left(c_17_4_2_False_resize, 2);
  c_17_6_0_False_resize <= resize(c_6, 26);
  c_17_6_0_False_shift <= shift_left(c_17_6_0_False_resize, 0);
  with config_select_3 select c_17_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_17_sel select c_17 <=
    c_17_9_2_False_shift when "00",
    c_17_4_2_False_shift when "01",
    c_17_6_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[85], [239], [97]]
  c_18_8_0_False_resize <= resize(c_8, 24);
  c_18_8_0_False_shift <= shift_left(c_18_8_0_False_resize, 0);
  c_18_10_0_False_resize <= c_10;
  c_18_10_0_False_shift <= shift_left(c_18_10_0_False_resize, 0);
  c_18_7_0_False_resize <= resize(c_7, 24);
  c_18_7_0_False_shift <= shift_left(c_18_7_0_False_resize, 0);
  with config_select_3 select c_18_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_18_sel select c_18 <=
    c_18_8_0_False_shift when "00",
    c_18_10_0_False_shift when "01",
    c_18_7_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 19 and associated fundamentals [[174], [493], [458]]
  with config_select_4 select c_19_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
      w_o => 25,
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
      sub_i => c_19_sub_sel,
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  c_19 <= c_19_oshift(24 downto 0);
  -- node of type 'mux' in stage 3 with id 20 and associated fundamentals [[97], [239], [163]]
  c_20_9_0_False_resize <= c_9;
  c_20_9_0_False_shift <= shift_left(c_20_9_0_False_resize, 0);
  c_20_8_0_False_resize <= resize(c_8, 24);
  c_20_8_0_False_shift <= shift_left(c_20_8_0_False_resize, 0);
  c_20_10_0_False_resize <= c_10;
  c_20_10_0_False_shift <= shift_left(c_20_10_0_False_resize, 0);
  with config_select_3 select c_20_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_20_sel select c_20 <=
    c_20_9_0_False_shift when "00",
    c_20_8_0_False_shift when "01",
    c_20_10_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 21 and associated fundamentals [[0], [0], [85]]
  c_21_7_0_False_resize <= c_7;
  c_21_7_0_False_shift <= shift_left(c_21_7_0_False_resize, 0);
  with config_select_3 select c_21_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_21_sel select c_21 <=
    c_21_7_0_False_shift when "0",
    to_signed(0, 23) when others;
  -- node of type 'add' in stage 4 with id 22 and associated fundamentals [[97], [239], [503]]
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
      w_o => 25,
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
      x_i => c_20,
      y_i => c_21,
      z_o => c_22_oshift
    );
  c_22 <= c_22_oshift(24 downto 0);
  -- node of type 'mux' in stage 3 with id 23 and associated fundamentals [[224], [97], [239]]
  c_23_5_5_False_resize <= resize(c_5, 24);
  c_23_5_5_False_shift <= shift_left(c_23_5_5_False_resize, 5);
  c_23_8_0_False_resize <= resize(c_8, 24);
  c_23_8_0_False_shift <= shift_left(c_23_8_0_False_resize, 0);
  c_23_10_0_False_resize <= c_10;
  c_23_10_0_False_shift <= shift_left(c_23_10_0_False_resize, 0);
  with config_select_3 select c_23_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_23_sel select c_23 <=
    c_23_5_5_False_shift when "00",
    c_23_8_0_False_shift when "01",
    c_23_10_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 24 and associated fundamentals [[85], [112], [7]]
  c_24_5_4_False_resize <= resize(c_5, 23);
  c_24_5_4_False_shift <= shift_left(c_24_5_4_False_resize, 4);
  c_24_5_0_False_resize <= resize(c_5, 23);
  c_24_5_0_False_shift <= shift_left(c_24_5_0_False_resize, 0);
  c_24_7_0_False_resize <= c_7;
  c_24_7_0_False_shift <= shift_left(c_24_7_0_False_resize, 0);
  with config_select_3 select c_24_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_24_sel select c_24 <=
    c_24_5_4_False_shift when "00",
    c_24_5_0_False_shift when "01",
    c_24_7_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 25 and associated fundamentals [[564], [351], [211]]
  with config_select_4 select c_25_sub_sel_left <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  with config_select_4 select c_25_sub_sel_right <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => True,
      sub => False
    )
    port map (
      sub_a_i => c_25_sub_sel_left,
      sub_b_i => c_25_sub_sel_right,
      x_i => c_23,
      y_i => c_24,
      z_o => c_25_oshift
    );
  c_25 <= c_25_oshift(25 downto 0);
  -- node of type 'mux' in stage 3 with id 26 and associated fundamentals [[163], [256], [480]]
  c_26_9_0_False_resize <= resize(c_9, 25);
  c_26_9_0_False_shift <= shift_left(c_26_9_0_False_resize, 0);
  c_26_6_5_False_resize <= resize(c_6, 25);
  c_26_6_5_False_shift <= shift_left(c_26_6_5_False_resize, 5);
  c_26_4_8_False_resize <= resize(c_4, 25);
  c_26_4_8_False_shift <= shift_left(c_26_4_8_False_resize, 8);
  with config_select_3 select c_26_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_26_sel select c_26 <=
    c_26_9_0_False_shift when "00",
    c_26_6_5_False_shift when "01",
    c_26_4_8_False_shift when others;
  -- node of type 'mux' in stage 3 with id 27 and associated fundamentals [[0], [60], [85]]
  c_27_7_0_False_resize <= c_7;
  c_27_7_0_False_shift <= shift_left(c_27_7_0_False_resize, 0);
  c_27_6_2_False_resize <= resize(c_6, 23);
  c_27_6_2_False_shift <= shift_left(c_27_6_2_False_resize, 2);
  with config_select_3 select c_27_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_27_sel select c_27 <=
    c_27_7_0_False_shift when "00",
    c_27_6_2_False_shift when "01",
    to_signed(0, 23) when others;
  -- node of type 'add_sub' in stage 4 with id 28 and associated fundamentals [[326], [572], [875]]
  with config_select_4 select c_28_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
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
  -- node of type 'mux' in stage 3 with id 29 and associated fundamentals [[7], [15], [112]]
  c_29_5_4_False_resize <= resize(c_5, 23);
  c_29_5_4_False_shift <= shift_left(c_29_5_4_False_resize, 4);
  c_29_5_0_False_resize <= resize(c_5, 23);
  c_29_5_0_False_shift <= shift_left(c_29_5_0_False_resize, 0);
  c_29_6_0_False_resize <= resize(c_6, 23);
  c_29_6_0_False_shift <= shift_left(c_29_6_0_False_resize, 0);
  with config_select_3 select c_29_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_29_sel select c_29 <=
    c_29_5_4_False_shift when "00",
    c_29_5_0_False_shift when "01",
    c_29_6_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 30 and associated fundamentals [[97], [16], [163]]
  c_30_4_4_False_resize <= resize(c_4, 24);
  c_30_4_4_False_shift <= shift_left(c_30_4_4_False_resize, 4);
  c_30_9_0_False_resize <= c_9;
  c_30_9_0_False_shift <= shift_left(c_30_9_0_False_resize, 0);
  c_30_8_0_False_resize <= resize(c_8, 24);
  c_30_8_0_False_shift <= shift_left(c_30_8_0_False_resize, 0);
  with config_select_3 select c_30_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_30_sel select c_30 <=
    c_30_4_4_False_shift when "00",
    c_30_9_0_False_shift when "01",
    c_30_8_0_False_shift when others;
  -- node of type 'add' in stage 4 with id 31 and associated fundamentals [[395], [79], [764]]
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      x_i => c_29,
      y_i => c_30,
      z_o => c_31_oshift
    );
  c_31 <= c_31_oshift(25 downto 0);
  -- node of type 'mux' in stage 3 with id 32 and associated fundamentals [[163], [512], [7]]
  c_32_9_0_False_resize <= resize(c_9, 25);
  c_32_9_0_False_shift <= shift_left(c_32_9_0_False_resize, 0);
  c_32_4_9_False_resize <= resize(c_4, 25);
  c_32_4_9_False_shift <= shift_left(c_32_4_9_False_resize, 9);
  c_32_5_0_False_resize <= resize(c_5, 25);
  c_32_5_0_False_shift <= shift_left(c_32_5_0_False_resize, 0);
  with config_select_3 select c_32_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_32_sel select c_32 <=
    c_32_9_0_False_shift when "00",
    c_32_4_9_False_shift when "01",
    c_32_5_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 33 and associated fundamentals [[163], [8], [170]]
  c_33_9_0_False_resize <= c_9;
  c_33_9_0_False_shift <= shift_left(c_33_9_0_False_resize, 0);
  c_33_7_1_False_resize <= resize(c_7, 24);
  c_33_7_1_False_shift <= shift_left(c_33_7_1_False_resize, 1);
  c_33_4_3_False_resize <= resize(c_4, 24);
  c_33_4_3_False_shift <= shift_left(c_33_4_3_False_resize, 3);
  with config_select_3 select c_33_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_33_sel select c_33 <=
    c_33_9_0_False_shift when "00",
    c_33_7_1_False_shift when "01",
    c_33_4_3_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 34 and associated fundamentals [[489], [496], [347]]
  with config_select_4 select c_34_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_34: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 24,
      w_o => 25,
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
      sub_i => c_34_sub_sel,
      x_i => c_32,
      y_i => c_33,
      z_o => c_34_oshift
    );
  c_34 <= c_34_oshift(24 downto 0);
  -- node of type 'mux' in stage 3 with id 35 and associated fundamentals [[97], [64], [64]]
  c_35_8_0_False_resize <= c_8;
  c_35_8_0_False_shift <= shift_left(c_35_8_0_False_resize, 0);
  c_35_4_6_False_resize <= resize(c_4, 23);
  c_35_4_6_False_shift <= shift_left(c_35_4_6_False_resize, 6);
  with config_select_3 select c_35_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_35_sel select c_35 <=
    c_35_8_0_False_shift when "0",
    c_35_4_6_False_shift when others;
  -- node of type 'mux' in stage 3 with id 36 and associated fundamentals [[1], [30], [163]]
  c_36_4_0_False_resize <= resize(c_4, 24);
  c_36_4_0_False_shift <= shift_left(c_36_4_0_False_resize, 0);
  c_36_9_0_False_resize <= c_9;
  c_36_9_0_False_shift <= shift_left(c_36_9_0_False_resize, 0);
  c_36_6_1_False_resize <= resize(c_6, 24);
  c_36_6_1_False_shift <= shift_left(c_36_6_1_False_resize, 1);
  with config_select_3 select c_36_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_36_sel select c_36 <=
    c_36_4_0_False_shift when "00",
    c_36_9_0_False_shift when "01",
    c_36_6_1_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 37 and associated fundamentals [[775], [542], [675]]
  with config_select_4 select c_37_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_37: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
      w_o => 26,
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
      sub_i => c_37_sub_sel,
      x_i => c_35,
      y_i => c_36,
      z_o => c_37_oshift
    );
  c_37 <= c_37_oshift(25 downto 0);
  -- node of type 'mux' in stage 3 with id 38 and associated fundamentals [[85], [128], [128]]
  c_38_4_7_False_resize <= resize(c_4, 23);
  c_38_4_7_False_shift <= shift_left(c_38_4_7_False_resize, 7);
  c_38_7_0_False_resize <= c_7;
  c_38_7_0_False_shift <= shift_left(c_38_7_0_False_resize, 0);
  with config_select_3 select c_38_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_38_sel select c_38 <=
    c_38_4_7_False_shift when "0",
    c_38_7_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 39 and associated fundamentals [[239], [239], [14]]
  c_39_5_1_False_resize <= resize(c_5, 24);
  c_39_5_1_False_shift <= shift_left(c_39_5_1_False_resize, 1);
  c_39_10_0_False_resize <= c_10;
  c_39_10_0_False_shift <= shift_left(c_39_10_0_False_resize, 0);
  with config_select_3 select c_39_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_39_sel select c_39 <=
    c_39_5_1_False_shift when "0",
    c_39_10_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 40 and associated fundamentals [[919], [785], [1010]]
  with config_select_4 select c_40_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_40: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
      w_o => 26,
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
      sub_i => c_40_sub_sel,
      x_i => c_38,
      y_i => c_39,
      z_o => c_40_oshift
    );
  c_40 <= c_40_oshift(25 downto 0);
  -- node of type 'output' in stage 4 with id 41 and associated fundamentals [[174], [493], [458]]
  c_41_resize <= c_19;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'output' in stage 4 with id 42 and associated fundamentals [[504], [26], [960]]
  c_42_resize <= c_16;
  c_42 <= shift_left(c_42_resize, 0);
  -- node of type 'output' in stage 4 with id 43 and associated fundamentals [[919], [785], [1010]]
  c_43_resize <= c_40;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'output' in stage 4 with id 44 and associated fundamentals [[97], [239], [503]]
  c_44_resize <= c_22;
  c_44 <= shift_left(c_44_resize, 0);
  -- node of type 'output' in stage 4 with id 45 and associated fundamentals [[326], [572], [875]]
  c_45_resize <= c_28;
  c_45 <= shift_left(c_45_resize, 0);
  -- node of type 'output' in stage 4 with id 46 and associated fundamentals [[395], [79], [764]]
  c_46_resize <= c_31;
  c_46 <= shift_left(c_46_resize, 0);
  -- node of type 'output' in stage 4 with id 47 and associated fundamentals [[564], [351], [211]]
  c_47_resize <= c_25;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'output' in stage 4 with id 48 and associated fundamentals [[122], [111], [196]]
  c_48_resize <= c_13;
  c_48 <= shift_left(c_48_resize, 0);
  -- node of type 'output' in stage 4 with id 49 and associated fundamentals [[489], [496], [347]]
  c_49_resize <= c_34;
  c_49 <= shift_left(c_49_resize, 0);
  -- node of type 'output' in stage 4 with id 50 and associated fundamentals [[775], [542], [675]]
  c_50_resize <= c_37;
  c_50 <= shift_left(c_50_resize, 0);
end architecture;
