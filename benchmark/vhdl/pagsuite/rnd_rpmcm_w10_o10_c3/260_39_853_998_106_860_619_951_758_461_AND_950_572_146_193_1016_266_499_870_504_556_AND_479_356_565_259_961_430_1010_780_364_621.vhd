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
    y_5: out std_logic_vector(25 downto 0);
    y_6: out std_logic_vector(25 downto 0);
    y_7: out std_logic_vector(25 downto 0);
    y_8: out std_logic_vector(25 downto 0);
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
  signal c_1: signed(18 downto 0);
  signal c_1_i0_resize: signed(18 downto 0);
  signal c_1_i1_resize: signed(18 downto 0);
  signal c_1_i0_shift: signed(18 downto 0);
  signal c_1_i1_shift: signed(18 downto 0);
  signal c_1_arith: signed(18 downto 0);
  signal c_1_oshift: signed(18 downto 0);
  signal c_2: signed(18 downto 0);
  signal c_2_i0_resize: signed(18 downto 0);
  signal c_2_i1_resize: signed(18 downto 0);
  signal c_2_i0_shift: signed(18 downto 0);
  signal c_2_i1_shift: signed(18 downto 0);
  signal c_2_arith: signed(18 downto 0);
  signal c_2_oshift: signed(18 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(19 downto 0);
  signal c_3_i1_resize: signed(19 downto 0);
  signal c_3_i0_shift: signed(19 downto 0);
  signal c_3_i1_shift: signed(19 downto 0);
  signal c_3_arith: signed(19 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_4: signed(19 downto 0);
  signal c_5: signed(19 downto 0);
  signal c_5_i0_resize: signed(19 downto 0);
  signal c_5_i1_resize: signed(19 downto 0);
  signal c_5_i0_shift: signed(19 downto 0);
  signal c_5_i1_shift: signed(19 downto 0);
  signal c_5_arith: signed(19 downto 0);
  signal c_5_oshift: signed(19 downto 0);
  signal c_6: signed(20 downto 0);
  signal c_6_i0_resize: signed(20 downto 0);
  signal c_6_i1_resize: signed(20 downto 0);
  signal c_6_i0_shift: signed(20 downto 0);
  signal c_6_i1_shift: signed(20 downto 0);
  signal c_6_arith: signed(20 downto 0);
  signal c_6_oshift: signed(20 downto 0);
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
  signal c_10: signed(24 downto 0);
  signal c_10_5_3_False_resize: signed(24 downto 0);
  signal c_10_5_3_False_shift: signed(24 downto 0);
  signal c_10_5_0_False_resize: signed(24 downto 0);
  signal c_10_5_0_False_shift: signed(24 downto 0);
  signal c_10_5_5_False_resize: signed(24 downto 0);
  signal c_10_5_5_False_shift: signed(24 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_8_1_False_resize: signed(23 downto 0);
  signal c_11_8_1_False_shift: signed(23 downto 0);
  signal c_11_5_0_False_resize: signed(23 downto 0);
  signal c_11_5_0_False_shift: signed(23 downto 0);
  signal c_11_4_1_False_resize: signed(23 downto 0);
  signal c_11_4_1_False_shift: signed(23 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(25 downto 0);
  signal c_12_i0_resize: signed(25 downto 0);
  signal c_12_i1_resize: signed(25 downto 0);
  signal c_12_i0_shift: signed(25 downto 0);
  signal c_12_i1_shift: signed(25 downto 0);
  signal c_12_arith: signed(25 downto 0);
  signal c_12_oshift: signed(25 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(24 downto 0);
  signal c_13_4_1_False_resize: signed(24 downto 0);
  signal c_13_4_1_False_shift: signed(24 downto 0);
  signal c_13_5_5_False_resize: signed(24 downto 0);
  signal c_13_5_5_False_shift: signed(24 downto 0);
  signal c_13_6_0_False_resize: signed(24 downto 0);
  signal c_13_6_0_False_shift: signed(24 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_9_0_False_resize: signed(23 downto 0);
  signal c_14_9_0_False_shift: signed(23 downto 0);
  signal c_14_7_1_False_resize: signed(23 downto 0);
  signal c_14_7_1_False_shift: signed(23 downto 0);
  signal c_14_6_0_False_resize: signed(23 downto 0);
  signal c_14_6_0_False_shift: signed(23 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_i0_resize: signed(25 downto 0);
  signal c_15_i1_resize: signed(25 downto 0);
  signal c_15_i0_shift: signed(25 downto 0);
  signal c_15_i1_shift: signed(25 downto 0);
  signal c_15_arith: signed(25 downto 0);
  signal c_15_oshift: signed(25 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(25 downto 0);
  signal c_16_5_2_False_resize: signed(25 downto 0);
  signal c_16_5_2_False_shift: signed(25 downto 0);
  signal c_16_9_2_False_resize: signed(25 downto 0);
  signal c_16_9_2_False_shift: signed(25 downto 0);
  signal c_16_9_0_False_resize: signed(25 downto 0);
  signal c_16_9_0_False_shift: signed(25 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(22 downto 0);
  signal c_17_5_3_False_resize: signed(22 downto 0);
  signal c_17_5_3_False_shift: signed(22 downto 0);
  signal c_17_4_0_False_resize: signed(22 downto 0);
  signal c_17_4_0_False_shift: signed(22 downto 0);
  signal c_17_8_0_False_resize: signed(22 downto 0);
  signal c_17_8_0_False_shift: signed(22 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_i0_resize: signed(25 downto 0);
  signal c_18_i1_resize: signed(25 downto 0);
  signal c_18_i0_shift: signed(25 downto 0);
  signal c_18_i1_shift: signed(25 downto 0);
  signal c_18_arith: signed(25 downto 0);
  signal c_18_oshift: signed(25 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(20 downto 0);
  signal c_19_6_0_False_resize: signed(20 downto 0);
  signal c_19_6_0_False_shift: signed(20 downto 0);
  signal c_19_5_0_False_resize: signed(20 downto 0);
  signal c_19_5_0_False_shift: signed(20 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_20_5_2_False_resize: signed(22 downto 0);
  signal c_20_5_2_False_shift: signed(22 downto 0);
  signal c_20_5_1_False_resize: signed(22 downto 0);
  signal c_20_5_1_False_shift: signed(22 downto 0);
  signal c_20_7_0_False_resize: signed(22 downto 0);
  signal c_20_7_0_False_shift: signed(22 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_i0_resize: signed(25 downto 0);
  signal c_21_i1_resize: signed(25 downto 0);
  signal c_21_i0_shift: signed(25 downto 0);
  signal c_21_i1_shift: signed(25 downto 0);
  signal c_21_arith: signed(25 downto 0);
  signal c_21_oshift: signed(25 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(20 downto 0);
  signal c_22_4_0_False_resize: signed(20 downto 0);
  signal c_22_4_0_False_shift: signed(20 downto 0);
  signal c_22_6_0_False_resize: signed(20 downto 0);
  signal c_22_6_0_False_shift: signed(20 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(21 downto 0);
  signal c_23_5_2_False_resize: signed(21 downto 0);
  signal c_23_5_2_False_shift: signed(21 downto 0);
  signal c_23_6_0_False_resize: signed(21 downto 0);
  signal c_23_6_0_False_shift: signed(21 downto 0);
  signal c_23_5_0_False_resize: signed(21 downto 0);
  signal c_23_5_0_False_shift: signed(21 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_i0_resize: signed(25 downto 0);
  signal c_24_i1_resize: signed(25 downto 0);
  signal c_24_i0_shift: signed(25 downto 0);
  signal c_24_i1_shift: signed(25 downto 0);
  signal c_24_arith: signed(25 downto 0);
  signal c_24_oshift: signed(25 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(20 downto 0);
  signal c_25_6_0_False_resize: signed(20 downto 0);
  signal c_25_6_0_False_shift: signed(20 downto 0);
  signal c_25_4_1_False_resize: signed(20 downto 0);
  signal c_25_4_1_False_shift: signed(20 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_7_1_False_resize: signed(23 downto 0);
  signal c_26_7_1_False_shift: signed(23 downto 0);
  signal c_26_9_0_False_resize: signed(23 downto 0);
  signal c_26_9_0_False_shift: signed(23 downto 0);
  signal c_26_4_3_False_resize: signed(23 downto 0);
  signal c_26_4_3_False_shift: signed(23 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_i0_resize: signed(25 downto 0);
  signal c_27_i1_resize: signed(25 downto 0);
  signal c_27_i0_shift: signed(25 downto 0);
  signal c_27_i1_shift: signed(25 downto 0);
  signal c_27_arith: signed(25 downto 0);
  signal c_27_oshift: signed(25 downto 0);
  signal c_28: signed(24 downto 0);
  signal c_28_9_0_False_resize: signed(24 downto 0);
  signal c_28_9_0_False_shift: signed(24 downto 0);
  signal c_28_5_0_False_resize: signed(24 downto 0);
  signal c_28_5_0_False_shift: signed(24 downto 0);
  signal c_28_6_4_False_resize: signed(24 downto 0);
  signal c_28_6_4_False_shift: signed(24 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_9_0_False_resize: signed(23 downto 0);
  signal c_29_9_0_False_shift: signed(23 downto 0);
  signal c_29_7_0_False_resize: signed(23 downto 0);
  signal c_29_7_0_False_shift: signed(23 downto 0);
  signal c_29_4_3_False_resize: signed(23 downto 0);
  signal c_29_4_3_False_shift: signed(23 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_i0_resize: signed(25 downto 0);
  signal c_30_i1_resize: signed(25 downto 0);
  signal c_30_i0_shift: signed(25 downto 0);
  signal c_30_i1_shift: signed(25 downto 0);
  signal c_30_arith: signed(25 downto 0);
  signal c_30_oshift: signed(25 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_4_0_False_resize: signed(25 downto 0);
  signal c_31_4_0_False_shift: signed(25 downto 0);
  signal c_31_5_6_False_resize: signed(25 downto 0);
  signal c_31_5_6_False_shift: signed(25 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(24 downto 0);
  signal c_32_5_1_False_resize: signed(24 downto 0);
  signal c_32_5_1_False_shift: signed(24 downto 0);
  signal c_32_6_0_False_resize: signed(24 downto 0);
  signal c_32_6_0_False_shift: signed(24 downto 0);
  signal c_32_8_2_False_resize: signed(24 downto 0);
  signal c_32_8_2_False_shift: signed(24 downto 0);
  signal c_32_sel: std_logic_vector(1 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_i0_resize: signed(25 downto 0);
  signal c_33_i1_resize: signed(25 downto 0);
  signal c_33_i0_shift: signed(25 downto 0);
  signal c_33_i1_shift: signed(25 downto 0);
  signal c_33_arith: signed(25 downto 0);
  signal c_33_oshift: signed(25 downto 0);
  signal c_33_sub_sel: std_logic;
  signal c_34: signed(23 downto 0);
  signal c_34_9_0_False_resize: signed(23 downto 0);
  signal c_34_9_0_False_shift: signed(23 downto 0);
  signal c_34_4_0_False_resize: signed(23 downto 0);
  signal c_34_4_0_False_shift: signed(23 downto 0);
  signal c_34_4_2_False_resize: signed(23 downto 0);
  signal c_34_4_2_False_shift: signed(23 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_9_0_False_resize: signed(23 downto 0);
  signal c_35_9_0_False_shift: signed(23 downto 0);
  signal c_35_4_2_False_resize: signed(23 downto 0);
  signal c_35_4_2_False_shift: signed(23 downto 0);
  signal c_35_5_0_False_resize: signed(23 downto 0);
  signal c_35_5_0_False_shift: signed(23 downto 0);
  signal c_35_sel: std_logic_vector(1 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_36_i0_resize: signed(25 downto 0);
  signal c_36_i1_resize: signed(25 downto 0);
  signal c_36_i0_shift: signed(25 downto 0);
  signal c_36_i1_shift: signed(25 downto 0);
  signal c_36_arith: signed(25 downto 0);
  signal c_36_oshift: signed(25 downto 0);
  signal c_36_sub_sel_left: std_logic;
  signal c_36_sub_sel_right: std_logic;
  signal c_37: signed(21 downto 0);
  signal c_37_4_0_False_resize: signed(21 downto 0);
  signal c_37_4_0_False_shift: signed(21 downto 0);
  signal c_37_4_2_False_resize: signed(21 downto 0);
  signal c_37_4_2_False_shift: signed(21 downto 0);
  signal c_37_5_0_False_resize: signed(21 downto 0);
  signal c_37_5_0_False_shift: signed(21 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(21 downto 0);
  signal c_38_6_1_False_resize: signed(21 downto 0);
  signal c_38_6_1_False_shift: signed(21 downto 0);
  signal c_38_4_0_False_resize: signed(21 downto 0);
  signal c_38_4_0_False_shift: signed(21 downto 0);
  signal c_38_6_0_False_resize: signed(21 downto 0);
  signal c_38_6_0_False_shift: signed(21 downto 0);
  signal c_38_sel: std_logic_vector(1 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_i0_resize: signed(25 downto 0);
  signal c_39_i1_resize: signed(25 downto 0);
  signal c_39_i0_shift: signed(25 downto 0);
  signal c_39_i1_shift: signed(25 downto 0);
  signal c_39_arith: signed(25 downto 0);
  signal c_39_oshift: signed(25 downto 0);
  signal c_39_sub_sel: std_logic;
  signal c_40: signed(25 downto 0);
  signal c_40_resize: signed(25 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_41_resize: signed(25 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_42_resize: signed(25 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_43_resize: signed(25 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_44_resize: signed(25 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_resize: signed(25 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_46_resize: signed(25 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_resize: signed(25 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_48_resize: signed(25 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_49_resize: signed(25 downto 0);
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
  -- output node 0 with id 40
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_40);
    end if;
  end process;
  -- output node 1 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 2 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_42);
    end if;
  end process;
  -- output node 3 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_43);
    end if;
  end process;
  -- output node 4 with id 44
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_44);
    end if;
  end process;
  -- output node 5 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_45);
    end if;
  end process;
  -- output node 6 with id 46
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_46);
    end if;
  end process;
  -- output node 7 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_47);
    end if;
  end process;
  -- output node 8 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_48);
    end if;
  end process;
  -- output node 9 with id 49
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_49);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 1 and associated fundamentals [[5], [5], [5]]
  inst_adder_node_1: entity work.adder_node
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
      z_o => c_1_oshift
    );
  c_1 <= c_1_oshift(18 downto 0);
  -- node of type 'sub' in stage 1 with id 2 and associated fundamentals [[7], [7], [7]]
  inst_adder_node_2: entity work.adder_node
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(18 downto 0);
  -- node of type 'sub' in stage 1 with id 3 and associated fundamentals [[15], [15], [15]]
  inst_adder_node_3: entity work.adder_node
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(19 downto 0);
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[15], [15], [15]]
  c_4 <= c_3 & "";
  -- node of type 'sub' in stage 2 with id 5 and associated fundamentals [[13], [13], [13]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 20,
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
      x_i => c_1,
      y_i => c_2,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(19 downto 0);
  -- node of type 'add' in stage 2 with id 6 and associated fundamentals [[19], [19], [19]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 21,
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
      x_i => c_1,
      y_i => c_2,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(20 downto 0);
  -- node of type 'sub' in stage 2 with id 7 and associated fundamentals [[75], [75], [75]]
  inst_adder_node_7: entity work.adder_node
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
      x_i => c_1,
      y_i => c_1,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(22 downto 0);
  -- node of type 'add' in stage 2 with id 8 and associated fundamentals [[117], [117], [117]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 23,
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
      x_i => c_1,
      y_i => c_2,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(22 downto 0);
  -- node of type 'add' in stage 2 with id 9 and associated fundamentals [[245], [245], [245]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 19,
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
      x_i => c_1,
      y_i => c_3,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[13], [104], [416]]
  c_10_5_3_False_resize <= resize(c_5, 25);
  c_10_5_3_False_shift <= shift_left(c_10_5_3_False_resize, 3);
  c_10_5_0_False_resize <= resize(c_5, 25);
  c_10_5_0_False_shift <= shift_left(c_10_5_0_False_resize, 0);
  c_10_5_5_False_resize <= resize(c_5, 25);
  c_10_5_5_False_shift <= shift_left(c_10_5_5_False_resize, 5);
  with config_select_3 select c_10_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_10_sel select c_10 <=
    c_10_5_3_False_shift when "00",
    c_10_5_0_False_shift when "01",
    c_10_5_5_False_shift when others;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[13], [234], [30]]
  c_11_8_1_False_resize <= resize(c_8, 24);
  c_11_8_1_False_shift <= shift_left(c_11_8_1_False_resize, 1);
  c_11_5_0_False_resize <= resize(c_5, 24);
  c_11_5_0_False_shift <= shift_left(c_11_5_0_False_resize, 0);
  c_11_4_1_False_resize <= resize(c_4, 24);
  c_11_4_1_False_shift <= shift_left(c_11_4_1_False_resize, 1);
  with config_select_3 select c_11_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_11_sel select c_11 <=
    c_11_8_1_False_shift when "00",
    c_11_5_0_False_shift when "01",
    c_11_4_1_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 12 and associated fundamentals [[39], [572], [356]]
  with config_select_4 select c_12_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 24,
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
      sub_i => c_12_sub_sel,
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(25 downto 0);
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[30], [416], [19]]
  c_13_4_1_False_resize <= resize(c_4, 25);
  c_13_4_1_False_shift <= shift_left(c_13_4_1_False_resize, 1);
  c_13_5_5_False_resize <= resize(c_5, 25);
  c_13_5_5_False_shift <= shift_left(c_13_5_5_False_resize, 5);
  c_13_6_0_False_resize <= resize(c_6, 25);
  c_13_6_0_False_shift <= shift_left(c_13_6_0_False_resize, 0);
  with config_select_3 select c_13_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_13_sel select c_13 <=
    c_13_4_1_False_shift when "00",
    c_13_5_5_False_shift when "01",
    c_13_6_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[19], [150], [245]]
  c_14_9_0_False_resize <= c_9;
  c_14_9_0_False_shift <= shift_left(c_14_9_0_False_resize, 0);
  c_14_7_1_False_resize <= resize(c_7, 24);
  c_14_7_1_False_shift <= shift_left(c_14_7_1_False_resize, 1);
  c_14_6_0_False_resize <= resize(c_6, 24);
  c_14_6_0_False_shift <= shift_left(c_14_6_0_False_resize, 0);
  with config_select_3 select c_14_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_14_sel select c_14 <=
    c_14_9_0_False_shift when "00",
    c_14_7_1_False_shift when "01",
    c_14_6_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 15 and associated fundamentals [[106], [1016], [961]]
  with config_select_4 select c_15_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 25,
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
      sub_i => c_15_sub_sel,
      x_i => c_14,
      y_i => c_13,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(25 downto 0);
  -- node of type 'mux' in stage 3 with id 16 and associated fundamentals [[52], [980], [245]]
  c_16_5_2_False_resize <= resize(c_5, 26);
  c_16_5_2_False_shift <= shift_left(c_16_5_2_False_resize, 2);
  c_16_9_2_False_resize <= resize(c_9, 26);
  c_16_9_2_False_shift <= shift_left(c_16_9_2_False_resize, 2);
  c_16_9_0_False_resize <= resize(c_9, 26);
  c_16_9_0_False_shift <= shift_left(c_16_9_0_False_resize, 0);
  with config_select_3 select c_16_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_16_sel select c_16 <=
    c_16_5_2_False_shift when "00",
    c_16_9_2_False_shift when "01",
    c_16_9_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 17 and associated fundamentals [[104], [15], [117]]
  c_17_5_3_False_resize <= resize(c_5, 23);
  c_17_5_3_False_shift <= shift_left(c_17_5_3_False_resize, 3);
  c_17_4_0_False_resize <= resize(c_4, 23);
  c_17_4_0_False_shift <= shift_left(c_17_4_0_False_resize, 0);
  c_17_8_0_False_resize <= c_8;
  c_17_8_0_False_shift <= shift_left(c_17_8_0_False_resize, 0);
  with config_select_3 select c_17_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_17_sel select c_17 <=
    c_17_5_3_False_shift when "00",
    c_17_4_0_False_shift when "01",
    c_17_8_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 18 and associated fundamentals [[260], [950], [479]]
  with config_select_4 select c_18_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 23,
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
      sub_i => c_18_sub_sel,
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  c_18 <= c_18_oshift(25 downto 0);
  -- node of type 'mux' in stage 3 with id 19 and associated fundamentals [[19], [19], [13]]
  c_19_6_0_False_resize <= c_6;
  c_19_6_0_False_shift <= shift_left(c_19_6_0_False_resize, 0);
  c_19_5_0_False_resize <= resize(c_5, 21);
  c_19_5_0_False_shift <= shift_left(c_19_5_0_False_resize, 0);
  with config_select_3 select c_19_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_19_sel select c_19 <=
    c_19_6_0_False_shift when "0",
    c_19_5_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 20 and associated fundamentals [[75], [52], [26]]
  c_20_5_2_False_resize <= resize(c_5, 23);
  c_20_5_2_False_shift <= shift_left(c_20_5_2_False_resize, 2);
  c_20_5_1_False_resize <= resize(c_5, 23);
  c_20_5_1_False_shift <= shift_left(c_20_5_1_False_resize, 1);
  c_20_7_0_False_resize <= c_7;
  c_20_7_0_False_shift <= shift_left(c_20_7_0_False_resize, 0);
  with config_select_3 select c_20_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_20_sel select c_20 <=
    c_20_5_2_False_shift when "00",
    c_20_5_1_False_shift when "01",
    c_20_7_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 21 and associated fundamentals [[758], [504], [364]]
  with config_select_4 select c_21_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 23,
      w_o => 26,
      s_x_i => 5,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_21_sub_sel,
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  c_21 <= c_21_oshift(25 downto 0);
  -- node of type 'mux' in stage 3 with id 22 and associated fundamentals [[15], [19], [19]]
  c_22_4_0_False_resize <= resize(c_4, 21);
  c_22_4_0_False_shift <= shift_left(c_22_4_0_False_resize, 0);
  c_22_6_0_False_resize <= c_6;
  c_22_6_0_False_shift <= shift_left(c_22_6_0_False_resize, 0);
  with config_select_3 select c_22_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_22_sel select c_22 <=
    c_22_4_0_False_shift when "0",
    c_22_6_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 23 and associated fundamentals [[19], [52], [13]]
  c_23_5_2_False_resize <= resize(c_5, 22);
  c_23_5_2_False_shift <= shift_left(c_23_5_2_False_resize, 2);
  c_23_6_0_False_resize <= resize(c_6, 22);
  c_23_6_0_False_shift <= shift_left(c_23_6_0_False_resize, 0);
  c_23_5_0_False_resize <= resize(c_5, 22);
  c_23_5_0_False_shift <= shift_left(c_23_5_0_False_resize, 0);
  with config_select_3 select c_23_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_23_sel select c_23 <=
    c_23_5_2_False_shift when "00",
    c_23_6_0_False_shift when "01",
    c_23_5_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 24 and associated fundamentals [[461], [556], [621]]
  with config_select_4 select c_24_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 22,
      w_o => 26,
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
      sub_i => c_24_sub_sel,
      x_i => c_22,
      y_i => c_23,
      z_o => c_24_oshift
    );
  c_24 <= c_24_oshift(25 downto 0);
  -- node of type 'mux' in stage 3 with id 25 and associated fundamentals [[19], [19], [30]]
  c_25_6_0_False_resize <= c_6;
  c_25_6_0_False_shift <= shift_left(c_25_6_0_False_resize, 0);
  c_25_4_1_False_resize <= resize(c_4, 21);
  c_25_4_1_False_shift <= shift_left(c_25_4_1_False_resize, 1);
  with config_select_3 select c_25_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_25_sel select c_25 <=
    c_25_6_0_False_shift when "0",
    c_25_4_1_False_shift when others;
  -- node of type 'mux' in stage 3 with id 26 and associated fundamentals [[150], [120], [245]]
  c_26_7_1_False_resize <= resize(c_7, 24);
  c_26_7_1_False_shift <= shift_left(c_26_7_1_False_resize, 1);
  c_26_9_0_False_resize <= c_9;
  c_26_9_0_False_shift <= shift_left(c_26_9_0_False_resize, 0);
  c_26_4_3_False_resize <= resize(c_4, 24);
  c_26_4_3_False_shift <= shift_left(c_26_4_3_False_resize, 3);
  with config_select_3 select c_26_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_26_sel select c_26 <=
    c_26_7_1_False_shift when "00",
    c_26_9_0_False_shift when "01",
    c_26_4_3_False_shift when others;
  -- node of type 'add' in stage 4 with id 27 and associated fundamentals [[619], [499], [1010]]
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 21,
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
      x_i => c_25,
      y_i => c_26,
      z_o => c_27_oshift
    );
  c_27 <= c_27_oshift(25 downto 0);
  -- node of type 'mux' in stage 3 with id 28 and associated fundamentals [[304], [13], [245]]
  c_28_9_0_False_resize <= resize(c_9, 25);
  c_28_9_0_False_shift <= shift_left(c_28_9_0_False_resize, 0);
  c_28_5_0_False_resize <= resize(c_5, 25);
  c_28_5_0_False_shift <= shift_left(c_28_5_0_False_resize, 0);
  c_28_6_4_False_resize <= resize(c_6, 25);
  c_28_6_4_False_shift <= shift_left(c_28_6_4_False_resize, 4);
  with config_select_3 select c_28_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_28_sel select c_28 <=
    c_28_9_0_False_shift when "00",
    c_28_5_0_False_shift when "01",
    c_28_6_4_False_shift when others;
  -- node of type 'mux' in stage 3 with id 29 and associated fundamentals [[245], [120], [75]]
  c_29_9_0_False_resize <= c_9;
  c_29_9_0_False_shift <= shift_left(c_29_9_0_False_resize, 0);
  c_29_7_0_False_resize <= resize(c_7, 24);
  c_29_7_0_False_shift <= shift_left(c_29_7_0_False_resize, 0);
  c_29_4_3_False_resize <= resize(c_4, 24);
  c_29_4_3_False_shift <= shift_left(c_29_4_3_False_resize, 3);
  with config_select_3 select c_29_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_29_sel select c_29 <=
    c_29_9_0_False_shift when "00",
    c_29_7_0_False_shift when "01",
    c_29_4_3_False_shift when others;
  -- node of type 'add' in stage 4 with id 30 and associated fundamentals [[853], [146], [565]]
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 24,
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
      x_i => c_28,
      y_i => c_29,
      z_o => c_30_oshift
    );
  c_30 <= c_30_oshift(25 downto 0);
  -- node of type 'mux' in stage 3 with id 31 and associated fundamentals [[15], [832], [832]]
  c_31_4_0_False_resize <= resize(c_4, 26);
  c_31_4_0_False_shift <= shift_left(c_31_4_0_False_resize, 0);
  c_31_5_6_False_resize <= resize(c_5, 26);
  c_31_5_6_False_shift <= shift_left(c_31_5_6_False_resize, 6);
  with config_select_3 select c_31_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_31_sel select c_31 <=
    c_31_4_0_False_shift when "0",
    c_31_5_6_False_shift when others;
  -- node of type 'mux' in stage 3 with id 32 and associated fundamentals [[468], [19], [26]]
  c_32_5_1_False_resize <= resize(c_5, 25);
  c_32_5_1_False_shift <= shift_left(c_32_5_1_False_resize, 1);
  c_32_6_0_False_resize <= resize(c_6, 25);
  c_32_6_0_False_shift <= shift_left(c_32_6_0_False_resize, 0);
  c_32_8_2_False_resize <= resize(c_8, 25);
  c_32_8_2_False_shift <= shift_left(c_32_8_2_False_resize, 2);
  with config_select_3 select c_32_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_32_sel select c_32 <=
    c_32_5_1_False_shift when "00",
    c_32_6_0_False_shift when "01",
    c_32_8_2_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 33 and associated fundamentals [[951], [870], [780]]
  with config_select_4 select c_33_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_33: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_33_sub_sel,
      x_i => c_31,
      y_i => c_32,
      z_o => c_33_oshift
    );
  c_33 <= c_33_oshift(25 downto 0);
  -- node of type 'mux' in stage 3 with id 34 and associated fundamentals [[245], [60], [15]]
  c_34_9_0_False_resize <= c_9;
  c_34_9_0_False_shift <= shift_left(c_34_9_0_False_resize, 0);
  c_34_4_0_False_resize <= resize(c_4, 24);
  c_34_4_0_False_shift <= shift_left(c_34_4_0_False_resize, 0);
  c_34_4_2_False_resize <= resize(c_4, 24);
  c_34_4_2_False_shift <= shift_left(c_34_4_2_False_resize, 2);
  with config_select_3 select c_34_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_34_sel select c_34 <=
    c_34_9_0_False_shift when "00",
    c_34_4_0_False_shift when "01",
    c_34_4_2_False_shift when others;
  -- node of type 'mux' in stage 3 with id 35 and associated fundamentals [[60], [13], [245]]
  c_35_9_0_False_resize <= c_9;
  c_35_9_0_False_shift <= shift_left(c_35_9_0_False_resize, 0);
  c_35_4_2_False_resize <= resize(c_4, 24);
  c_35_4_2_False_shift <= shift_left(c_35_4_2_False_resize, 2);
  c_35_5_0_False_resize <= resize(c_5, 24);
  c_35_5_0_False_shift <= shift_left(c_35_5_0_False_resize, 0);
  with config_select_3 select c_35_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_35_sel select c_35 <=
    c_35_9_0_False_shift when "00",
    c_35_4_2_False_shift when "01",
    c_35_5_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 36 and associated fundamentals [[860], [266], [430]]
  with config_select_4 select c_36_sub_sel_left <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  with config_select_4 select c_36_sub_sel_right <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_36: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
      w_o => 26,
      s_x_i => 2,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => True,
      sub => False
    )
    port map (
      sub_a_i => c_36_sub_sel_left,
      sub_b_i => c_36_sub_sel_right,
      x_i => c_34,
      y_i => c_35,
      z_o => c_36_oshift
    );
  c_36 <= c_36_oshift(25 downto 0);
  -- node of type 'mux' in stage 3 with id 37 and associated fundamentals [[60], [13], [15]]
  c_37_4_0_False_resize <= resize(c_4, 22);
  c_37_4_0_False_shift <= shift_left(c_37_4_0_False_resize, 0);
  c_37_4_2_False_resize <= resize(c_4, 22);
  c_37_4_2_False_shift <= shift_left(c_37_4_2_False_resize, 2);
  c_37_5_0_False_resize <= resize(c_5, 22);
  c_37_5_0_False_shift <= shift_left(c_37_5_0_False_resize, 0);
  with config_select_3 select c_37_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_37_sel select c_37 <=
    c_37_4_0_False_shift when "00",
    c_37_4_2_False_shift when "01",
    c_37_5_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 38 and associated fundamentals [[38], [15], [19]]
  c_38_6_1_False_resize <= resize(c_6, 22);
  c_38_6_1_False_shift <= shift_left(c_38_6_1_False_resize, 1);
  c_38_4_0_False_resize <= resize(c_4, 22);
  c_38_4_0_False_shift <= shift_left(c_38_4_0_False_resize, 0);
  c_38_6_0_False_resize <= resize(c_6, 22);
  c_38_6_0_False_shift <= shift_left(c_38_6_0_False_resize, 0);
  with config_select_3 select c_38_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_38_sel select c_38 <=
    c_38_6_1_False_shift when "00",
    c_38_4_0_False_shift when "01",
    c_38_6_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 39 and associated fundamentals [[998], [193], [259]]
  with config_select_4 select c_39_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_39: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 26,
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
      sub_i => c_39_sub_sel,
      x_i => c_37,
      y_i => c_38,
      z_o => c_39_oshift
    );
  c_39 <= c_39_oshift(25 downto 0);
  -- node of type 'output' in stage 4 with id 40 and associated fundamentals [[260], [950], [479]]
  c_40_resize <= c_18;
  c_40 <= shift_left(c_40_resize, 0);
  -- node of type 'output' in stage 4 with id 41 and associated fundamentals [[39], [572], [356]]
  c_41_resize <= c_12;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'output' in stage 4 with id 42 and associated fundamentals [[853], [146], [565]]
  c_42_resize <= c_30;
  c_42 <= shift_left(c_42_resize, 0);
  -- node of type 'output' in stage 4 with id 43 and associated fundamentals [[998], [193], [259]]
  c_43_resize <= c_39;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'output' in stage 4 with id 44 and associated fundamentals [[106], [1016], [961]]
  c_44_resize <= c_15;
  c_44 <= shift_left(c_44_resize, 0);
  -- node of type 'output' in stage 4 with id 45 and associated fundamentals [[860], [266], [430]]
  c_45_resize <= c_36;
  c_45 <= shift_left(c_45_resize, 0);
  -- node of type 'output' in stage 4 with id 46 and associated fundamentals [[619], [499], [1010]]
  c_46_resize <= c_27;
  c_46 <= shift_left(c_46_resize, 0);
  -- node of type 'output' in stage 4 with id 47 and associated fundamentals [[951], [870], [780]]
  c_47_resize <= c_33;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'output' in stage 4 with id 48 and associated fundamentals [[758], [504], [364]]
  c_48_resize <= c_21;
  c_48 <= shift_left(c_48_resize, 0);
  -- node of type 'output' in stage 4 with id 49 and associated fundamentals [[461], [556], [621]]
  c_49_resize <= c_24;
  c_49 <= shift_left(c_49_resize, 0);
end architecture;
