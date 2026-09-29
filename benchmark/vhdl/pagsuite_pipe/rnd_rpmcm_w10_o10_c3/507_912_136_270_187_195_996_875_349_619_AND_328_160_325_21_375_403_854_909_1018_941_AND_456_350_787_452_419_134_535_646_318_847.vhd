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
    y_4: out std_logic_vector(24 downto 0);
    y_5: out std_logic_vector(24 downto 0);
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
  signal config_select_7: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(17 downto 0);
  signal c_2_i0_resize: signed(17 downto 0);
  signal c_2_i1_resize: signed(17 downto 0);
  signal c_2_i0_shift: signed(17 downto 0);
  signal c_2_i1_shift: signed(17 downto 0);
  signal c_2_arith: signed(17 downto 0);
  signal c_2_oshift: signed(17 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(19 downto 0);
  signal c_3_i1_resize: signed(19 downto 0);
  signal c_3_i0_shift: signed(19 downto 0);
  signal c_3_i1_shift: signed(19 downto 0);
  signal c_3_arith: signed(19 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_4: signed(17 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_5_1_0_False_resize: signed(15 downto 0);
  signal c_5_1_0_False_shift: signed(15 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(20 downto 0);
  signal c_6_i0_resize: signed(20 downto 0);
  signal c_6_i1_resize: signed(20 downto 0);
  signal c_6_i0_shift: signed(20 downto 0);
  signal c_6_i1_shift: signed(20 downto 0);
  signal c_6_arith: signed(20 downto 0);
  signal c_6_oshift: signed(20 downto 0);
  signal c_7: signed(15 downto 0);
  signal c_7_1_0_False_resize: signed(15 downto 0);
  signal c_7_1_0_False_shift: signed(15 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(20 downto 0);
  signal c_8_i0_resize: signed(20 downto 0);
  signal c_8_i1_resize: signed(20 downto 0);
  signal c_8_i0_shift: signed(20 downto 0);
  signal c_8_i1_shift: signed(20 downto 0);
  signal c_8_arith: signed(20 downto 0);
  signal c_8_oshift: signed(20 downto 0);
  signal c_9: signed(17 downto 0);
  signal c_9_1_0_False_resize: signed(17 downto 0);
  signal c_9_1_0_False_shift: signed(17 downto 0);
  signal c_9_1_2_False_resize: signed(17 downto 0);
  signal c_9_1_2_False_shift: signed(17 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_i0_resize: signed(22 downto 0);
  signal c_10_i1_resize: signed(22 downto 0);
  signal c_10_i0_shift: signed(22 downto 0);
  signal c_10_i1_shift: signed(22 downto 0);
  signal c_10_arith: signed(22 downto 0);
  signal c_10_oshift: signed(22 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(19 downto 0);
  signal c_12: signed(15 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_13_i0_resize: signed(21 downto 0);
  signal c_13_i1_resize: signed(21 downto 0);
  signal c_13_i0_shift: signed(21 downto 0);
  signal c_13_i1_shift: signed(21 downto 0);
  signal c_13_arith: signed(21 downto 0);
  signal c_13_oshift: signed(21 downto 0);
  signal c_14: signed(17 downto 0);
  signal c_14_1_2_False_resize: signed(17 downto 0);
  signal c_14_1_2_False_shift: signed(17 downto 0);
  signal c_14_1_0_False_resize: signed(17 downto 0);
  signal c_14_1_0_False_shift: signed(17 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_15_i0_resize: signed(22 downto 0);
  signal c_15_i1_resize: signed(22 downto 0);
  signal c_15_i0_shift: signed(22 downto 0);
  signal c_15_i1_shift: signed(22 downto 0);
  signal c_15_arith: signed(22 downto 0);
  signal c_15_oshift: signed(22 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(23 downto 0);
  signal c_16_i0_resize: signed(23 downto 0);
  signal c_16_i1_resize: signed(23 downto 0);
  signal c_16_i0_shift: signed(23 downto 0);
  signal c_16_i1_shift: signed(23 downto 0);
  signal c_16_arith: signed(23 downto 0);
  signal c_16_oshift: signed(23 downto 0);
  signal c_17: signed(20 downto 0);
  signal c_17_8_2_False_resize: signed(20 downto 0);
  signal c_17_8_2_False_shift: signed(20 downto 0);
  signal c_17_8_3_False_resize: signed(20 downto 0);
  signal c_17_8_3_False_shift: signed(20 downto 0);
  signal c_17_8_0_False_resize: signed(20 downto 0);
  signal c_17_8_0_False_shift: signed(20 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_18_13_3_False_resize: signed(24 downto 0);
  signal c_18_13_3_False_shift: signed(24 downto 0);
  signal c_18_13_0_False_resize: signed(24 downto 0);
  signal c_18_13_0_False_shift: signed(24 downto 0);
  signal c_18_6_0_False_resize: signed(24 downto 0);
  signal c_18_6_0_False_shift: signed(24 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_i0_resize: signed(25 downto 0);
  signal c_19_i1_resize: signed(25 downto 0);
  signal c_19_i0_shift: signed(25 downto 0);
  signal c_19_i1_shift: signed(25 downto 0);
  signal c_19_arith: signed(25 downto 0);
  signal c_19_oshift: signed(25 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(24 downto 0);
  signal c_20_8_3_False_resize: signed(24 downto 0);
  signal c_20_8_3_False_shift: signed(24 downto 0);
  signal c_20_8_7_False_resize: signed(24 downto 0);
  signal c_20_8_7_False_shift: signed(24 downto 0);
  signal c_20_10_0_False_resize: signed(24 downto 0);
  signal c_20_10_0_False_shift: signed(24 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_21_6_2_False_resize: signed(22 downto 0);
  signal c_21_6_2_False_shift: signed(22 downto 0);
  signal c_21_8_2_False_resize: signed(22 downto 0);
  signal c_21_8_2_False_shift: signed(22 downto 0);
  signal c_21_10_0_False_resize: signed(22 downto 0);
  signal c_21_10_0_False_shift: signed(22 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_i0_resize: signed(25 downto 0);
  signal c_22_i1_resize: signed(25 downto 0);
  signal c_22_i0_shift: signed(25 downto 0);
  signal c_22_i1_shift: signed(25 downto 0);
  signal c_22_arith: signed(25 downto 0);
  signal c_22_oshift: signed(25 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(22 downto 0);
  signal c_23_8_1_False_resize: signed(22 downto 0);
  signal c_23_8_1_False_shift: signed(22 downto 0);
  signal c_23_15_0_False_resize: signed(22 downto 0);
  signal c_23_15_0_False_shift: signed(22 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(22 downto 0);
  signal c_24_13_1_False_resize: signed(22 downto 0);
  signal c_24_13_1_False_shift: signed(22 downto 0);
  signal c_24_8_4_False_resize: signed(22 downto 0);
  signal c_24_8_4_False_shift: signed(22 downto 0);
  signal c_24_8_0_False_resize: signed(22 downto 0);
  signal c_24_8_0_False_shift: signed(22 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(24 downto 0);
  signal c_25_i0_resize: signed(24 downto 0);
  signal c_25_i1_resize: signed(24 downto 0);
  signal c_25_i0_shift: signed(24 downto 0);
  signal c_25_i1_shift: signed(24 downto 0);
  signal c_25_arith: signed(24 downto 0);
  signal c_25_oshift: signed(24 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(23 downto 0);
  signal c_26_8_6_False_resize: signed(23 downto 0);
  signal c_26_8_6_False_shift: signed(23 downto 0);
  signal c_26_10_0_False_resize: signed(23 downto 0);
  signal c_26_10_0_False_shift: signed(23 downto 0);
  signal c_26_8_2_False_resize: signed(23 downto 0);
  signal c_26_8_2_False_shift: signed(23 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(22 downto 0);
  signal c_28: signed(24 downto 0);
  signal c_28_i0_resize: signed(24 downto 0);
  signal c_28_i1_resize: signed(24 downto 0);
  signal c_28_i0_shift: signed(24 downto 0);
  signal c_28_i1_shift: signed(24 downto 0);
  signal c_28_arith: signed(24 downto 0);
  signal c_28_oshift: signed(24 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_29_6_0_False_resize: signed(22 downto 0);
  signal c_29_6_0_False_shift: signed(22 downto 0);
  signal c_29_8_5_False_resize: signed(22 downto 0);
  signal c_29_8_5_False_shift: signed(22 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_6_5_False_resize: signed(23 downto 0);
  signal c_30_6_5_False_shift: signed(23 downto 0);
  signal c_30_6_0_False_resize: signed(23 downto 0);
  signal c_30_6_0_False_shift: signed(23 downto 0);
  signal c_30_8_6_False_resize: signed(23 downto 0);
  signal c_30_8_6_False_shift: signed(23 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(24 downto 0);
  signal c_31_i0_resize: signed(24 downto 0);
  signal c_31_i1_resize: signed(24 downto 0);
  signal c_31_i0_shift: signed(24 downto 0);
  signal c_31_i1_shift: signed(24 downto 0);
  signal c_31_arith: signed(24 downto 0);
  signal c_31_oshift: signed(24 downto 0);
  signal c_32: signed(22 downto 0);
  signal c_32_13_1_False_resize: signed(22 downto 0);
  signal c_32_13_1_False_shift: signed(22 downto 0);
  signal c_32_6_3_False_resize: signed(22 downto 0);
  signal c_32_6_3_False_shift: signed(22 downto 0);
  signal c_32_10_0_False_resize: signed(22 downto 0);
  signal c_32_10_0_False_shift: signed(22 downto 0);
  signal c_32_sel: std_logic_vector(1 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_16_0_False_resize: signed(23 downto 0);
  signal c_33_16_0_False_shift: signed(23 downto 0);
  signal c_33_15_0_False_resize: signed(23 downto 0);
  signal c_33_15_0_False_shift: signed(23 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_34_i0_resize: signed(25 downto 0);
  signal c_34_i1_resize: signed(25 downto 0);
  signal c_34_i0_shift: signed(25 downto 0);
  signal c_34_i1_shift: signed(25 downto 0);
  signal c_34_arith: signed(25 downto 0);
  signal c_34_oshift: signed(25 downto 0);
  signal c_34_sub_sel: std_logic;
  signal c_35: signed(22 downto 0);
  signal c_35_10_0_False_resize: signed(22 downto 0);
  signal c_35_10_0_False_shift: signed(22 downto 0);
  signal c_35_8_5_False_resize: signed(22 downto 0);
  signal c_35_8_5_False_shift: signed(22 downto 0);
  signal c_35_6_4_False_resize: signed(22 downto 0);
  signal c_35_6_4_False_shift: signed(22 downto 0);
  signal c_35_sel: std_logic_vector(1 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_10_1_False_resize: signed(23 downto 0);
  signal c_36_10_1_False_shift: signed(23 downto 0);
  signal c_36_10_0_False_resize: signed(23 downto 0);
  signal c_36_10_0_False_shift: signed(23 downto 0);
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
  signal c_38: signed(24 downto 0);
  signal c_38_6_4_False_resize: signed(24 downto 0);
  signal c_38_6_4_False_shift: signed(24 downto 0);
  signal c_38_10_0_False_resize: signed(24 downto 0);
  signal c_38_10_0_False_shift: signed(24 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(21 downto 0);
  signal c_39_13_0_False_resize: signed(21 downto 0);
  signal c_39_13_0_False_shift: signed(21 downto 0);
  signal c_39_6_0_False_resize: signed(21 downto 0);
  signal c_39_6_0_False_shift: signed(21 downto 0);
  signal c_39_8_0_False_resize: signed(21 downto 0);
  signal c_39_8_0_False_shift: signed(21 downto 0);
  signal c_39_sel: std_logic_vector(1 downto 0);
  signal c_40: signed(24 downto 0);
  signal c_40_i0_resize: signed(24 downto 0);
  signal c_40_i1_resize: signed(24 downto 0);
  signal c_40_i0_shift: signed(24 downto 0);
  signal c_40_i1_shift: signed(24 downto 0);
  signal c_40_arith: signed(24 downto 0);
  signal c_40_oshift: signed(24 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_13_2_False_resize: signed(23 downto 0);
  signal c_41_13_2_False_shift: signed(23 downto 0);
  signal c_41_10_2_False_resize: signed(23 downto 0);
  signal c_41_10_2_False_shift: signed(23 downto 0);
  signal c_41_16_0_False_resize: signed(23 downto 0);
  signal c_41_16_0_False_shift: signed(23 downto 0);
  signal c_41_sel: std_logic_vector(1 downto 0);
  signal c_42: signed(22 downto 0);
  signal c_42_15_0_False_resize: signed(22 downto 0);
  signal c_42_15_0_False_shift: signed(22 downto 0);
  signal c_42_13_0_False_resize: signed(22 downto 0);
  signal c_42_13_0_False_shift: signed(22 downto 0);
  signal c_42_8_0_False_resize: signed(22 downto 0);
  signal c_42_8_0_False_shift: signed(22 downto 0);
  signal c_42_sel: std_logic_vector(1 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_43_i0_resize: signed(25 downto 0);
  signal c_43_i1_resize: signed(25 downto 0);
  signal c_43_i0_shift: signed(25 downto 0);
  signal c_43_i1_shift: signed(25 downto 0);
  signal c_43_arith: signed(25 downto 0);
  signal c_43_oshift: signed(25 downto 0);
  signal c_43_sub_sel: std_logic;
  signal c_44: signed(24 downto 0);
  signal c_44_13_3_False_resize: signed(24 downto 0);
  signal c_44_13_3_False_shift: signed(24 downto 0);
  signal c_44_15_2_False_resize: signed(24 downto 0);
  signal c_44_15_2_False_shift: signed(24 downto 0);
  signal c_44_6_0_False_resize: signed(24 downto 0);
  signal c_44_6_0_False_shift: signed(24 downto 0);
  signal c_44_sel: std_logic_vector(1 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_6_5_False_resize: signed(25 downto 0);
  signal c_45_6_5_False_shift: signed(25 downto 0);
  signal c_45_15_0_False_resize: signed(25 downto 0);
  signal c_45_15_0_False_shift: signed(25 downto 0);
  signal c_45_sel: std_logic_vector(0 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_46_i0_resize: signed(25 downto 0);
  signal c_46_i1_resize: signed(25 downto 0);
  signal c_46_i0_shift: signed(25 downto 0);
  signal c_46_i1_shift: signed(25 downto 0);
  signal c_46_arith: signed(25 downto 0);
  signal c_46_oshift: signed(25 downto 0);
  signal c_46_sub_sel: std_logic;
  signal c_47: signed(24 downto 0);
  signal c_47_resize: signed(24 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_48_resize: signed(25 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_49_resize: signed(25 downto 0);
  signal c_50: signed(24 downto 0);
  signal c_50_resize: signed(24 downto 0);
  signal c_51: signed(24 downto 0);
  signal c_51_resize: signed(24 downto 0);
  signal c_52: signed(24 downto 0);
  signal c_52_resize: signed(24 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_53_resize: signed(25 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_54_resize: signed(25 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_55_resize: signed(25 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_56_resize: signed(25 downto 0);
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
  -- output node 0 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_47);
    end if;
  end process;
  -- output node 1 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_48);
    end if;
  end process;
  -- output node 2 with id 49
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_49);
    end if;
  end process;
  -- output node 3 with id 50
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_50);
    end if;
  end process;
  -- output node 4 with id 51
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_51);
    end if;
  end process;
  -- output node 5 with id 52
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_52);
    end if;
  end process;
  -- output node 6 with id 53
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_53);
    end if;
  end process;
  -- output node 7 with id 54
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_54);
    end if;
  end process;
  -- output node 8 with id 55
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_55);
    end if;
  end process;
  -- output node 9 with id 56
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_56);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 2 and associated fundamentals [[3], [3], [3]]
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
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_2_oshift(17 downto 0);
    end if;
  end process;
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
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[3], [3], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 5 and associated fundamentals [[0], [1], [1]]
  c_5_1_0_False_resize <= c_1;
  c_5_1_0_False_shift <= shift_left(c_5_1_0_False_resize, 0);
  with config_select_2 select c_5_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_1_0_False_shift;
        when others => c_5 <= to_signed(0, 16);
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 6 and associated fundamentals [[3], [19], [19]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 18,
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
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 7 and associated fundamentals [[1], [0], [0]]
  c_7_1_0_False_resize <= c_1;
  c_7_1_0_False_shift <= shift_left(c_7_1_0_False_resize, 0);
  with config_select_2 select c_7_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_1_0_False_shift;
        when others => c_7 <= to_signed(0, 16);
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 8 and associated fundamentals [[19], [3], [3]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 18,
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
      x_i => c_4,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 9 and associated fundamentals [[1], [4], [1]]
  c_9_1_0_False_resize <= resize(c_1, 18);
  c_9_1_0_False_shift <= shift_left(c_9_1_0_False_resize, 0);
  c_9_1_2_False_resize <= resize(c_1, 18);
  c_9_1_2_False_shift <= shift_left(c_9_1_2_False_resize, 2);
  with config_select_2 select c_9_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_1_0_False_shift;
        when others => c_9 <= c_9_1_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 10 and associated fundamentals [[35], [125], [35]]
  with config_select_3 select c_10_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
      w_o => 23,
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
      sub_i => c_10_sub_sel,
      x_i => c_9,
      y_i => c_4,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 11 and associated fundamentals [[15], [15], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 12 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_1 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 13 and associated fundamentals [[59], [59], [59]]
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 16,
      w_o => 22,
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
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 14 and associated fundamentals [[4], [1], [4]]
  c_14_1_2_False_resize <= resize(c_1, 18);
  c_14_1_2_False_shift <= shift_left(c_14_1_2_False_resize, 2);
  c_14_1_0_False_resize <= resize(c_1, 18);
  c_14_1_0_False_shift <= shift_left(c_14_1_0_False_resize, 0);
  with config_select_2 select c_14_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_1_2_False_shift;
        when others => c_14 <= c_14_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 15 and associated fundamentals [[125], [35], [125]]
  with config_select_3 select c_15_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
      w_o => 23,
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
      sub_i => c_15_sub_sel,
      x_i => c_14,
      y_i => c_4,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 16 and associated fundamentals [[243], [243], [243]]
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 18,
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
      x_i => c_4,
      y_i => c_11,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 17 and associated fundamentals [[19], [12], [24]]
  c_17_8_2_False_resize <= c_8;
  c_17_8_2_False_shift <= shift_left(c_17_8_2_False_resize, 2);
  c_17_8_3_False_resize <= c_8;
  c_17_8_3_False_shift <= shift_left(c_17_8_3_False_resize, 3);
  c_17_8_0_False_resize <= c_8;
  c_17_8_0_False_shift <= shift_left(c_17_8_0_False_resize, 0);
  with config_select_4 select c_17_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "00" => c_17 <= c_17_8_2_False_shift;
        when "01" => c_17 <= c_17_8_3_False_shift;
        when others => c_17 <= c_17_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 18 and associated fundamentals [[472], [59], [19]]
  c_18_13_3_False_resize <= resize(c_13, 25);
  c_18_13_3_False_shift <= shift_left(c_18_13_3_False_resize, 3);
  c_18_13_0_False_resize <= resize(c_13, 25);
  c_18_13_0_False_shift <= shift_left(c_18_13_0_False_resize, 0);
  c_18_6_0_False_resize <= resize(c_6, 25);
  c_18_6_0_False_shift <= shift_left(c_18_6_0_False_resize, 0);
  with config_select_4 select c_18_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "00" => c_18 <= c_18_13_3_False_shift;
        when "01" => c_18 <= c_18_13_0_False_shift;
        when others => c_18 <= c_18_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 19 and associated fundamentals [[136], [325], [787]]
  with config_select_5 select c_19_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 25,
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
      sub_i => c_19_sub_sel,
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 20 and associated fundamentals [[152], [384], [35]]
  c_20_8_3_False_resize <= resize(c_8, 25);
  c_20_8_3_False_shift <= shift_left(c_20_8_3_False_resize, 3);
  c_20_8_7_False_resize <= resize(c_8, 25);
  c_20_8_7_False_shift <= shift_left(c_20_8_7_False_resize, 7);
  c_20_10_0_False_resize <= resize(c_10, 25);
  c_20_10_0_False_shift <= shift_left(c_20_10_0_False_resize, 0);
  with config_select_4 select c_20_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_8_3_False_shift;
        when "01" => c_20 <= c_20_8_7_False_shift;
        when others => c_20 <= c_20_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 21 and associated fundamentals [[76], [76], [35]]
  c_21_6_2_False_resize <= resize(c_6, 23);
  c_21_6_2_False_shift <= shift_left(c_21_6_2_False_resize, 2);
  c_21_8_2_False_resize <= resize(c_8, 23);
  c_21_8_2_False_shift <= shift_left(c_21_8_2_False_resize, 2);
  c_21_10_0_False_resize <= c_10;
  c_21_10_0_False_shift <= shift_left(c_21_10_0_False_resize, 0);
  with config_select_4 select c_21_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "00" => c_21 <= c_21_6_2_False_shift;
        when "01" => c_21 <= c_21_8_2_False_shift;
        when others => c_21 <= c_21_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 22 and associated fundamentals [[912], [160], [350]]
  with config_select_5 select c_22_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
      w_o => 26,
      s_x_i => 1,
      s_y_i => 3,
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
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 23 and associated fundamentals [[38], [6], [125]]
  c_23_8_1_False_resize <= resize(c_8, 23);
  c_23_8_1_False_shift <= shift_left(c_23_8_1_False_resize, 1);
  c_23_15_0_False_resize <= c_15;
  c_23_15_0_False_shift <= shift_left(c_23_15_0_False_resize, 0);
  with config_select_4 select c_23_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_8_1_False_shift;
        when others => c_23 <= c_23_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 24 and associated fundamentals [[118], [3], [48]]
  c_24_13_1_False_resize <= resize(c_13, 23);
  c_24_13_1_False_shift <= shift_left(c_24_13_1_False_resize, 1);
  c_24_8_4_False_resize <= resize(c_8, 23);
  c_24_8_4_False_shift <= shift_left(c_24_8_4_False_resize, 4);
  c_24_8_0_False_resize <= resize(c_8, 23);
  c_24_8_0_False_shift <= shift_left(c_24_8_0_False_resize, 0);
  with config_select_4 select c_24_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_13_1_False_shift;
        when "01" => c_24 <= c_24_8_4_False_shift;
        when others => c_24 <= c_24_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 25 and associated fundamentals [[270], [21], [452]]
  with config_select_5 select c_25_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 25,
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
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 26 and associated fundamentals [[76], [125], [192]]
  c_26_8_6_False_resize <= resize(c_8, 24);
  c_26_8_6_False_shift <= shift_left(c_26_8_6_False_resize, 6);
  c_26_10_0_False_resize <= resize(c_10, 24);
  c_26_10_0_False_shift <= shift_left(c_26_10_0_False_resize, 0);
  c_26_8_2_False_resize <= resize(c_8, 24);
  c_26_8_2_False_shift <= shift_left(c_26_8_2_False_resize, 2);
  with config_select_4 select c_26_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "00" => c_26 <= c_26_8_6_False_shift;
        when "01" => c_26 <= c_26_10_0_False_shift;
        when others => c_26 <= c_26_8_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 27 and associated fundamentals [[35], [125], [35]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_10 & "";
    end if;
  end process;
  -- node of type 'add' in stage 5 with id 28 and associated fundamentals [[187], [375], [419]]
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
      w_o => 25,
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
      x_i => c_26,
      y_i => c_27,
      z_o => c_28_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_28_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 29 and associated fundamentals [[3], [19], [96]]
  c_29_6_0_False_resize <= resize(c_6, 23);
  c_29_6_0_False_shift <= shift_left(c_29_6_0_False_resize, 0);
  c_29_8_5_False_resize <= resize(c_8, 23);
  c_29_8_5_False_shift <= shift_left(c_29_8_5_False_resize, 5);
  with config_select_4 select c_29_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_6_0_False_shift;
        when others => c_29 <= c_29_8_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 30 and associated fundamentals [[96], [192], [19]]
  c_30_6_5_False_resize <= resize(c_6, 24);
  c_30_6_5_False_shift <= shift_left(c_30_6_5_False_resize, 5);
  c_30_6_0_False_resize <= resize(c_6, 24);
  c_30_6_0_False_shift <= shift_left(c_30_6_0_False_resize, 0);
  c_30_8_6_False_resize <= resize(c_8, 24);
  c_30_8_6_False_shift <= shift_left(c_30_8_6_False_resize, 6);
  with config_select_4 select c_30_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "00" => c_30 <= c_30_6_5_False_shift;
        when "01" => c_30 <= c_30_6_0_False_shift;
        when others => c_30 <= c_30_8_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 5 with id 31 and associated fundamentals [[195], [403], [134]]
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
      w_o => 25,
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
      x_i => c_29,
      y_i => c_30,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 32 and associated fundamentals [[24], [118], [35]]
  c_32_13_1_False_resize <= resize(c_13, 23);
  c_32_13_1_False_shift <= shift_left(c_32_13_1_False_resize, 1);
  c_32_6_3_False_resize <= resize(c_6, 23);
  c_32_6_3_False_shift <= shift_left(c_32_6_3_False_resize, 3);
  c_32_10_0_False_resize <= c_10;
  c_32_10_0_False_shift <= shift_left(c_32_10_0_False_resize, 0);
  with config_select_4 select c_32_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "00" => c_32 <= c_32_13_1_False_shift;
        when "01" => c_32 <= c_32_6_3_False_shift;
        when others => c_32 <= c_32_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 33 and associated fundamentals [[243], [243], [125]]
  c_33_16_0_False_resize <= c_16;
  c_33_16_0_False_shift <= shift_left(c_33_16_0_False_resize, 0);
  c_33_15_0_False_resize <= resize(c_15, 24);
  c_33_15_0_False_shift <= shift_left(c_33_15_0_False_resize, 0);
  with config_select_4 select c_33_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "0" => c_33 <= c_33_16_0_False_shift;
        when others => c_33 <= c_33_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 34 and associated fundamentals [[996], [854], [535]]
  with config_select_5 select c_34_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_34: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
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
      sub_i => c_34_sub_sel,
      x_i => c_33,
      y_i => c_32,
      z_o => c_34_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_34_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 35 and associated fundamentals [[48], [96], [35]]
  c_35_10_0_False_resize <= c_10;
  c_35_10_0_False_shift <= shift_left(c_35_10_0_False_resize, 0);
  c_35_8_5_False_resize <= resize(c_8, 23);
  c_35_8_5_False_shift <= shift_left(c_35_8_5_False_resize, 5);
  c_35_6_4_False_resize <= resize(c_6, 23);
  c_35_6_4_False_shift <= shift_left(c_35_6_4_False_resize, 4);
  with config_select_4 select c_35_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "00" => c_35 <= c_35_10_0_False_shift;
        when "01" => c_35 <= c_35_8_5_False_shift;
        when others => c_35 <= c_35_6_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 36 and associated fundamentals [[35], [250], [38]]
  c_36_10_1_False_resize <= resize(c_10, 24);
  c_36_10_1_False_shift <= shift_left(c_36_10_1_False_resize, 1);
  c_36_10_0_False_resize <= resize(c_10, 24);
  c_36_10_0_False_shift <= shift_left(c_36_10_0_False_resize, 0);
  c_36_6_1_False_resize <= resize(c_6, 24);
  c_36_6_1_False_shift <= shift_left(c_36_6_1_False_resize, 1);
  with config_select_4 select c_36_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "00" => c_36 <= c_36_10_1_False_shift;
        when "01" => c_36 <= c_36_10_0_False_shift;
        when others => c_36 <= c_36_6_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 37 and associated fundamentals [[349], [1018], [318]]
  with config_select_5 select c_37_sub_sel <= 
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
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_37_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 38 and associated fundamentals [[35], [304], [304]]
  c_38_6_4_False_resize <= resize(c_6, 25);
  c_38_6_4_False_shift <= shift_left(c_38_6_4_False_resize, 4);
  c_38_10_0_False_resize <= resize(c_10, 25);
  c_38_10_0_False_shift <= shift_left(c_38_10_0_False_resize, 0);
  with config_select_4 select c_38_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "0" => c_38 <= c_38_6_4_False_shift;
        when others => c_38 <= c_38_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 39 and associated fundamentals [[59], [3], [19]]
  c_39_13_0_False_resize <= c_13;
  c_39_13_0_False_shift <= shift_left(c_39_13_0_False_resize, 0);
  c_39_6_0_False_resize <= resize(c_6, 22);
  c_39_6_0_False_shift <= shift_left(c_39_6_0_False_resize, 0);
  c_39_8_0_False_resize <= resize(c_8, 22);
  c_39_8_0_False_shift <= shift_left(c_39_8_0_False_resize, 0);
  with config_select_4 select c_39_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "00" => c_39 <= c_39_13_0_False_shift;
        when "01" => c_39 <= c_39_6_0_False_shift;
        when others => c_39 <= c_39_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 5 with id 40 and associated fundamentals [[507], [328], [456]]
  inst_adder_node_40: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 22,
      w_o => 25,
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
      x_i => c_38,
      y_i => c_39,
      z_o => c_40_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_40_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 41 and associated fundamentals [[140], [236], [243]]
  c_41_13_2_False_resize <= resize(c_13, 24);
  c_41_13_2_False_shift <= shift_left(c_41_13_2_False_resize, 2);
  c_41_10_2_False_resize <= resize(c_10, 24);
  c_41_10_2_False_shift <= shift_left(c_41_10_2_False_resize, 2);
  c_41_16_0_False_resize <= c_16;
  c_41_16_0_False_shift <= shift_left(c_41_16_0_False_resize, 0);
  with config_select_4 select c_41_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "00" => c_41 <= c_41_13_2_False_shift;
        when "01" => c_41 <= c_41_10_2_False_shift;
        when others => c_41 <= c_41_16_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 42 and associated fundamentals [[59], [3], [125]]
  c_42_15_0_False_resize <= c_15;
  c_42_15_0_False_shift <= shift_left(c_42_15_0_False_resize, 0);
  c_42_13_0_False_resize <= resize(c_13, 23);
  c_42_13_0_False_shift <= shift_left(c_42_13_0_False_resize, 0);
  c_42_8_0_False_resize <= resize(c_8, 23);
  c_42_8_0_False_shift <= shift_left(c_42_8_0_False_resize, 0);
  with config_select_4 select c_42_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "00" => c_42 <= c_42_15_0_False_shift;
        when "01" => c_42 <= c_42_13_0_False_shift;
        when others => c_42 <= c_42_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 43 and associated fundamentals [[619], [941], [847]]
  with config_select_5 select c_43_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_43: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
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
      sub_i => c_43_sub_sel,
      x_i => c_41,
      y_i => c_42,
      z_o => c_43_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_43_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 44 and associated fundamentals [[500], [472], [19]]
  c_44_13_3_False_resize <= resize(c_13, 25);
  c_44_13_3_False_shift <= shift_left(c_44_13_3_False_resize, 3);
  c_44_15_2_False_resize <= resize(c_15, 25);
  c_44_15_2_False_shift <= shift_left(c_44_15_2_False_resize, 2);
  c_44_6_0_False_resize <= resize(c_6, 25);
  c_44_6_0_False_shift <= shift_left(c_44_6_0_False_resize, 0);
  with config_select_4 select c_44_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "00" => c_44 <= c_44_13_3_False_shift;
        when "01" => c_44 <= c_44_15_2_False_shift;
        when others => c_44 <= c_44_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 45 and associated fundamentals [[125], [35], [608]]
  c_45_6_5_False_resize <= resize(c_6, 26);
  c_45_6_5_False_shift <= shift_left(c_45_6_5_False_resize, 5);
  c_45_15_0_False_resize <= resize(c_15, 26);
  c_45_15_0_False_shift <= shift_left(c_45_15_0_False_resize, 0);
  with config_select_4 select c_45_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "0" => c_45 <= c_45_6_5_False_shift;
        when others => c_45 <= c_45_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 46 and associated fundamentals [[875], [909], [646]]
  with config_select_5 select c_46_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_46: entity work.adder_node
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
      sub_i => c_46_sub_sel,
      x_i => c_44,
      y_i => c_45,
      z_o => c_46_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_46_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 47 and associated fundamentals [[507], [328], [456]]
  c_47_resize <= c_40;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'output' in stage 5 with id 48 and associated fundamentals [[912], [160], [350]]
  c_48_resize <= c_22;
  c_48 <= shift_left(c_48_resize, 0);
  -- node of type 'output' in stage 5 with id 49 and associated fundamentals [[136], [325], [787]]
  c_49_resize <= c_19;
  c_49 <= shift_left(c_49_resize, 0);
  -- node of type 'output' in stage 5 with id 50 and associated fundamentals [[270], [21], [452]]
  c_50_resize <= c_25;
  c_50 <= shift_left(c_50_resize, 0);
  -- node of type 'output' in stage 5 with id 51 and associated fundamentals [[187], [375], [419]]
  c_51_resize <= c_28;
  c_51 <= shift_left(c_51_resize, 0);
  -- node of type 'output' in stage 5 with id 52 and associated fundamentals [[195], [403], [134]]
  c_52_resize <= c_31;
  c_52 <= shift_left(c_52_resize, 0);
  -- node of type 'output' in stage 5 with id 53 and associated fundamentals [[996], [854], [535]]
  c_53_resize <= c_34;
  c_53 <= shift_left(c_53_resize, 0);
  -- node of type 'output' in stage 5 with id 54 and associated fundamentals [[875], [909], [646]]
  c_54_resize <= c_46;
  c_54 <= shift_left(c_54_resize, 0);
  -- node of type 'output' in stage 5 with id 55 and associated fundamentals [[349], [1018], [318]]
  c_55_resize <= c_37;
  c_55 <= shift_left(c_55_resize, 0);
  -- node of type 'output' in stage 5 with id 56 and associated fundamentals [[619], [941], [847]]
  c_56_resize <= c_43;
  c_56 <= shift_left(c_56_resize, 0);
end architecture;
