library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(24 downto 0);
    y_2: out std_logic_vector(25 downto 0);
    y_3: out std_logic_vector(24 downto 0);
    y_4: out std_logic_vector(24 downto 0);
    y_5: out std_logic_vector(24 downto 0);
    y_6: out std_logic_vector(25 downto 0);
    y_7: out std_logic_vector(25 downto 0);
    y_8: out std_logic_vector(24 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_0_4_False_resize: signed(19 downto 0);
  signal c_1_0_4_False_shift: signed(19 downto 0);
  signal c_1_0_0_False_resize: signed(19 downto 0);
  signal c_1_0_0_False_shift: signed(19 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(24 downto 0);
  signal c_3_i0_resize: signed(24 downto 0);
  signal c_3_i1_resize: signed(24 downto 0);
  signal c_3_i0_shift: signed(24 downto 0);
  signal c_3_i1_shift: signed(24 downto 0);
  signal c_3_arith: signed(24 downto 0);
  signal c_3_oshift: signed(24 downto 0);
  signal c_4: signed(21 downto 0);
  signal c_4_0_0_False_resize: signed(21 downto 0);
  signal c_4_0_0_False_shift: signed(21 downto 0);
  signal c_4_0_6_False_resize: signed(21 downto 0);
  signal c_4_0_6_False_shift: signed(21 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(17 downto 0);
  signal c_5_0_2_False_resize: signed(17 downto 0);
  signal c_5_0_2_False_shift: signed(17 downto 0);
  signal c_5_0_0_False_resize: signed(17 downto 0);
  signal c_5_0_0_False_shift: signed(17 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_i0_resize: signed(22 downto 0);
  signal c_6_i1_resize: signed(22 downto 0);
  signal c_6_i0_shift: signed(22 downto 0);
  signal c_6_i1_shift: signed(22 downto 0);
  signal c_6_arith: signed(22 downto 0);
  signal c_6_oshift: signed(22 downto 0);
  signal c_7: signed(17 downto 0);
  signal c_7_0_0_False_resize: signed(17 downto 0);
  signal c_7_0_0_False_shift: signed(17 downto 0);
  signal c_7_0_2_False_resize: signed(17 downto 0);
  signal c_7_0_2_False_shift: signed(17 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(24 downto 0);
  signal c_8_0_9_False_resize: signed(24 downto 0);
  signal c_8_0_9_False_shift: signed(24 downto 0);
  signal c_8_0_0_False_resize: signed(24 downto 0);
  signal c_8_0_0_False_shift: signed(24 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(25 downto 0);
  signal c_9_i0_resize: signed(25 downto 0);
  signal c_9_i1_resize: signed(25 downto 0);
  signal c_9_i0_shift: signed(25 downto 0);
  signal c_9_i1_shift: signed(25 downto 0);
  signal c_9_arith: signed(25 downto 0);
  signal c_9_oshift: signed(25 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_i0_resize: signed(23 downto 0);
  signal c_10_i1_resize: signed(23 downto 0);
  signal c_10_i0_shift: signed(23 downto 0);
  signal c_10_i1_shift: signed(23 downto 0);
  signal c_10_arith: signed(23 downto 0);
  signal c_10_oshift: signed(23 downto 0);
  signal c_11: signed(21 downto 0);
  signal c_11_i0_resize: signed(21 downto 0);
  signal c_11_i1_resize: signed(21 downto 0);
  signal c_11_i0_shift: signed(21 downto 0);
  signal c_11_i1_shift: signed(21 downto 0);
  signal c_11_arith: signed(21 downto 0);
  signal c_11_oshift: signed(21 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(29 downto 0);
  signal c_12_6_8_False_resize: signed(29 downto 0);
  signal c_12_6_8_False_shift: signed(29 downto 0);
  signal c_12_6_0_False_resize: signed(29 downto 0);
  signal c_12_6_0_False_shift: signed(29 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(28 downto 0);
  signal c_13_9_3_False_resize: signed(28 downto 0);
  signal c_13_9_3_False_shift: signed(28 downto 0);
  signal c_13_3_0_False_resize: signed(28 downto 0);
  signal c_13_3_0_False_shift: signed(28 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(24 downto 0);
  signal c_14_i0_resize: signed(24 downto 0);
  signal c_14_i1_resize: signed(24 downto 0);
  signal c_14_i0_shift: signed(24 downto 0);
  signal c_14_i1_shift: signed(24 downto 0);
  signal c_14_arith: signed(24 downto 0);
  signal c_14_oshift: signed(24 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(24 downto 0);
  signal c_15_11_3_False_resize: signed(24 downto 0);
  signal c_15_11_3_False_shift: signed(24 downto 0);
  signal c_15_10_0_False_resize: signed(24 downto 0);
  signal c_15_10_0_False_shift: signed(24 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_10_0_False_resize: signed(25 downto 0);
  signal c_16_10_0_False_shift: signed(25 downto 0);
  signal c_16_10_2_False_resize: signed(25 downto 0);
  signal c_16_10_2_False_shift: signed(25 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_17_i0_resize: signed(24 downto 0);
  signal c_17_i1_resize: signed(24 downto 0);
  signal c_17_i0_shift: signed(24 downto 0);
  signal c_17_i1_shift: signed(24 downto 0);
  signal c_17_arith: signed(24 downto 0);
  signal c_17_oshift: signed(24 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(24 downto 0);
  signal c_18_i0_resize: signed(24 downto 0);
  signal c_18_i1_resize: signed(24 downto 0);
  signal c_18_i0_shift: signed(24 downto 0);
  signal c_18_i1_shift: signed(24 downto 0);
  signal c_18_arith: signed(24 downto 0);
  signal c_18_oshift: signed(24 downto 0);
  signal c_19: signed(16 downto 0);
  signal c_19_0_1_False_resize: signed(16 downto 0);
  signal c_19_0_1_False_shift: signed(16 downto 0);
  signal c_19_0_0_False_resize: signed(16 downto 0);
  signal c_19_0_0_False_shift: signed(16 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_20_i0_resize: signed(22 downto 0);
  signal c_20_i1_resize: signed(22 downto 0);
  signal c_20_i0_shift: signed(22 downto 0);
  signal c_20_i1_shift: signed(22 downto 0);
  signal c_20_arith: signed(22 downto 0);
  signal c_20_oshift: signed(22 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(22 downto 0);
  signal c_21_20_0_False_resize: signed(22 downto 0);
  signal c_21_20_0_False_shift: signed(22 downto 0);
  signal c_21_3_2_False_resize: signed(22 downto 0);
  signal c_21_3_2_False_shift: signed(22 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(24 downto 0);
  signal c_22_9_6_False_resize: signed(24 downto 0);
  signal c_22_9_6_False_shift: signed(24 downto 0);
  signal c_22_18_0_False_resize: signed(24 downto 0);
  signal c_22_18_0_False_shift: signed(24 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(24 downto 0);
  signal c_23_i0_resize: signed(24 downto 0);
  signal c_23_i1_resize: signed(24 downto 0);
  signal c_23_i0_shift: signed(24 downto 0);
  signal c_23_i1_shift: signed(24 downto 0);
  signal c_23_arith: signed(24 downto 0);
  signal c_23_oshift: signed(24 downto 0);
  signal c_24: signed(24 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_i0_resize: signed(25 downto 0);
  signal c_25_i1_resize: signed(25 downto 0);
  signal c_25_i0_shift: signed(25 downto 0);
  signal c_25_i1_shift: signed(25 downto 0);
  signal c_25_arith: signed(25 downto 0);
  signal c_25_oshift: signed(25 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(24 downto 0);
  signal c_26_i0_resize: signed(24 downto 0);
  signal c_26_i1_resize: signed(24 downto 0);
  signal c_26_i0_shift: signed(24 downto 0);
  signal c_26_i1_shift: signed(24 downto 0);
  signal c_26_arith: signed(24 downto 0);
  signal c_26_oshift: signed(24 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(23 downto 0);
  signal c_27_i0_resize: signed(23 downto 0);
  signal c_27_i1_resize: signed(23 downto 0);
  signal c_27_i0_shift: signed(23 downto 0);
  signal c_27_i1_shift: signed(23 downto 0);
  signal c_27_arith: signed(23 downto 0);
  signal c_27_oshift: signed(23 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(25 downto 0);
  signal c_28_i0_resize: signed(25 downto 0);
  signal c_28_i1_resize: signed(25 downto 0);
  signal c_28_i0_shift: signed(25 downto 0);
  signal c_28_i1_shift: signed(25 downto 0);
  signal c_28_arith: signed(25 downto 0);
  signal c_28_oshift: signed(25 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_11_0_False_resize: signed(23 downto 0);
  signal c_29_11_0_False_shift: signed(23 downto 0);
  signal c_29_11_2_False_resize: signed(23 downto 0);
  signal c_29_11_2_False_shift: signed(23 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_i0_resize: signed(23 downto 0);
  signal c_30_i1_resize: signed(23 downto 0);
  signal c_30_i0_shift: signed(23 downto 0);
  signal c_30_i1_shift: signed(23 downto 0);
  signal c_30_arith: signed(23 downto 0);
  signal c_30_oshift: signed(23 downto 0);
  signal c_30_sub_sel: std_logic;
  signal c_31: signed(23 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_i0_resize: signed(25 downto 0);
  signal c_32_i1_resize: signed(25 downto 0);
  signal c_32_i0_shift: signed(25 downto 0);
  signal c_32_i1_shift: signed(25 downto 0);
  signal c_32_arith: signed(25 downto 0);
  signal c_32_oshift: signed(25 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_11_0_False_resize: signed(25 downto 0);
  signal c_33_11_0_False_shift: signed(25 downto 0);
  signal c_33_10_2_False_resize: signed(25 downto 0);
  signal c_33_10_2_False_shift: signed(25 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_34_i0_resize: signed(25 downto 0);
  signal c_34_i1_resize: signed(25 downto 0);
  signal c_34_i0_shift: signed(25 downto 0);
  signal c_34_i1_shift: signed(25 downto 0);
  signal c_34_arith: signed(25 downto 0);
  signal c_34_oshift: signed(25 downto 0);
  signal c_34_sub_sel: std_logic;
  signal c_35: signed(24 downto 0);
  signal c_35_10_1_False_resize: signed(24 downto 0);
  signal c_35_10_1_False_shift: signed(24 downto 0);
  signal c_35_26_0_False_resize: signed(24 downto 0);
  signal c_35_26_0_False_shift: signed(24 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_10_0_False_resize: signed(23 downto 0);
  signal c_36_10_0_False_shift: signed(23 downto 0);
  signal c_36_11_0_False_resize: signed(23 downto 0);
  signal c_36_11_0_False_shift: signed(23 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(24 downto 0);
  signal c_37_i0_resize: signed(24 downto 0);
  signal c_37_i1_resize: signed(24 downto 0);
  signal c_37_i0_shift: signed(24 downto 0);
  signal c_37_i1_shift: signed(24 downto 0);
  signal c_37_arith: signed(24 downto 0);
  signal c_37_oshift: signed(24 downto 0);
  signal c_37_sub_sel: std_logic;
  signal c_38: signed(24 downto 0);
  signal c_38_26_0_False_resize: signed(24 downto 0);
  signal c_38_26_0_False_shift: signed(24 downto 0);
  signal c_38_11_3_False_resize: signed(24 downto 0);
  signal c_38_11_3_False_shift: signed(24 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_10_0_False_resize: signed(23 downto 0);
  signal c_39_10_0_False_shift: signed(23 downto 0);
  signal c_39_11_2_False_resize: signed(23 downto 0);
  signal c_39_11_2_False_shift: signed(23 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_40_i0_resize: signed(25 downto 0);
  signal c_40_i1_resize: signed(25 downto 0);
  signal c_40_i0_shift: signed(25 downto 0);
  signal c_40_i1_shift: signed(25 downto 0);
  signal c_40_arith: signed(25 downto 0);
  signal c_40_oshift: signed(25 downto 0);
  signal c_40_sub_sel: std_logic;
  signal c_41: signed(25 downto 0);
  signal c_41_i0_resize: signed(25 downto 0);
  signal c_41_i1_resize: signed(25 downto 0);
  signal c_41_i0_shift: signed(25 downto 0);
  signal c_41_i1_shift: signed(25 downto 0);
  signal c_41_arith: signed(25 downto 0);
  signal c_41_oshift: signed(25 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_20_7_False_resize: signed(23 downto 0);
  signal c_42_20_7_False_shift: signed(23 downto 0);
  signal c_42_28_0_False_resize: signed(23 downto 0);
  signal c_42_28_0_False_shift: signed(23 downto 0);
  signal c_42_sel: std_logic_vector(0 downto 0);
  signal c_43: signed(24 downto 0);
  signal c_43_18_0_False_resize: signed(24 downto 0);
  signal c_43_18_0_False_shift: signed(24 downto 0);
  signal c_43_3_0_False_resize: signed(24 downto 0);
  signal c_43_3_0_False_shift: signed(24 downto 0);
  signal c_43_sel: std_logic_vector(0 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_44_i0_resize: signed(25 downto 0);
  signal c_44_i1_resize: signed(25 downto 0);
  signal c_44_i0_shift: signed(25 downto 0);
  signal c_44_i1_shift: signed(25 downto 0);
  signal c_44_arith: signed(25 downto 0);
  signal c_44_oshift: signed(25 downto 0);
  signal c_45: signed(22 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_46_i0_resize: signed(25 downto 0);
  signal c_46_i1_resize: signed(25 downto 0);
  signal c_46_i0_shift: signed(25 downto 0);
  signal c_46_i1_shift: signed(25 downto 0);
  signal c_46_arith: signed(25 downto 0);
  signal c_46_oshift: signed(25 downto 0);
  signal c_46_sub_sel: std_logic;
  signal c_47: signed(25 downto 0);
  signal c_47_resize: signed(25 downto 0);
  signal c_48: signed(24 downto 0);
  signal c_48_resize: signed(24 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_49_resize: signed(25 downto 0);
  signal c_50: signed(24 downto 0);
  signal c_50_resize: signed(24 downto 0);
  signal c_51: signed(24 downto 0);
  signal c_51_32_0_False_resize: signed(24 downto 0);
  signal c_51_32_0_False_shift: signed(24 downto 0);
  signal c_51_41_0_False_resize: signed(24 downto 0);
  signal c_51_41_0_False_shift: signed(24 downto 0);
  signal c_51_sel: std_logic_vector(0 downto 0);
  signal c_52: signed(24 downto 0);
  signal c_52_resize: signed(24 downto 0);
  signal c_53: signed(24 downto 0);
  signal c_53_37_0_False_resize: signed(24 downto 0);
  signal c_53_37_0_False_shift: signed(24 downto 0);
  signal c_53_40_0_False_resize: signed(24 downto 0);
  signal c_53_40_0_False_shift: signed(24 downto 0);
  signal c_53_sel: std_logic_vector(0 downto 0);
  signal c_54: signed(24 downto 0);
  signal c_54_resize: signed(24 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_56_resize: signed(25 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_57_resize: signed(25 downto 0);
  signal c_58: signed(24 downto 0);
  signal c_58_30_0_False_resize: signed(24 downto 0);
  signal c_58_30_0_False_shift: signed(24 downto 0);
  signal c_58_30_1_False_resize: signed(24 downto 0);
  signal c_58_30_1_False_shift: signed(24 downto 0);
  signal c_58_sel: std_logic_vector(0 downto 0);
  signal c_59: signed(24 downto 0);
  signal c_59_resize: signed(24 downto 0);
  signal c_60: signed(25 downto 0);
  signal c_60_32_0_False_resize: signed(25 downto 0);
  signal c_60_32_0_False_shift: signed(25 downto 0);
  signal c_60_40_0_False_resize: signed(25 downto 0);
  signal c_60_40_0_False_shift: signed(25 downto 0);
  signal c_60_sel: std_logic_vector(0 downto 0);
  signal c_61: signed(25 downto 0);
  signal c_61_resize: signed(25 downto 0);
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
  -- output node 4 with id 52
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_52);
    end if;
  end process;
  -- output node 5 with id 54
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_54);
    end if;
  end process;
  -- output node 6 with id 56
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_56);
    end if;
  end process;
  -- output node 7 with id 57
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_57);
    end if;
  end process;
  -- output node 8 with id 59
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_59);
    end if;
  end process;
  -- output node 9 with id 61
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_61);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [16]]
  c_1_0_4_False_resize <= resize(c_0, 20);
  c_1_0_4_False_shift <= shift_left(c_1_0_4_False_resize, 4);
  c_1_0_0_False_resize <= resize(c_0, 20);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  with config_select_1 select c_1_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_4_False_shift;
        when others => c_1 <= c_1_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 3 and associated fundamentals [[17], [257]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 16,
      w_o => 25,
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
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[64], [1]]
  c_4_0_0_False_resize <= resize(c_0, 22);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_6_False_resize <= resize(c_0, 22);
  c_4_0_6_False_shift <= shift_left(c_4_0_6_False_resize, 6);
  with config_select_1 select c_4_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_0_False_shift;
        when others => c_4 <= c_4_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[1], [4]]
  c_5_0_2_False_resize <= resize(c_0, 18);
  c_5_0_2_False_shift <= shift_left(c_5_0_2_False_resize, 2);
  c_5_0_0_False_resize <= resize(c_0, 18);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  with config_select_1 select c_5_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_0_2_False_shift;
        when others => c_5 <= c_5_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 6 and associated fundamentals [[72], [33]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 18,
      w_o => 23,
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
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[4], [1]]
  c_7_0_0_False_resize <= resize(c_0, 18);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  c_7_0_2_False_resize <= resize(c_0, 18);
  c_7_0_2_False_shift <= shift_left(c_7_0_2_False_resize, 2);
  with config_select_1 select c_7_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_0_0_False_shift;
        when others => c_7 <= c_7_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[1], [512]]
  c_8_0_9_False_resize <= resize(c_0, 25);
  c_8_0_9_False_shift <= shift_left(c_8_0_9_False_resize, 9);
  c_8_0_0_False_resize <= resize(c_0, 25);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  with config_select_1 select c_8_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_0_9_False_shift;
        when others => c_8 <= c_8_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 9 and associated fundamentals [[5], [513]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 25,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 0,
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
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 10 and associated fundamentals [[130], [130]]
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 24,
      s_x_i => 1,
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
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 11 and associated fundamentals [[33], [31]]
  with config_select_1 select c_11_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 22,
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
      sub_i => c_11_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[72], [8448]]
  c_12_6_8_False_resize <= resize(c_6, 30);
  c_12_6_8_False_shift <= shift_left(c_12_6_8_False_resize, 8);
  c_12_6_0_False_resize <= resize(c_6, 30);
  c_12_6_0_False_shift <= shift_left(c_12_6_0_False_resize, 0);
  with config_select_3 select c_12_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_6_8_False_shift;
        when others => c_12 <= c_12_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[17], [4104]]
  c_13_9_3_False_resize <= resize(c_9, 29);
  c_13_9_3_False_shift <= shift_left(c_13_9_3_False_resize, 3);
  c_13_3_0_False_resize <= resize(c_3, 29);
  c_13_3_0_False_shift <= shift_left(c_13_3_0_False_resize, 0);
  with config_select_3 select c_13_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_9_3_False_shift;
        when others => c_13 <= c_13_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 14 and associated fundamentals [[212], [480]]
  with config_select_4 select c_14_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 29,
      w_o => 25,
      s_x_i => 1,
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
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 15 and associated fundamentals [[264], [130]]
  c_15_11_3_False_resize <= resize(c_11, 25);
  c_15_11_3_False_shift <= shift_left(c_15_11_3_False_resize, 3);
  c_15_10_0_False_resize <= resize(c_10, 25);
  c_15_10_0_False_shift <= shift_left(c_15_10_0_False_resize, 0);
  with config_select_2 select c_15_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_11_3_False_shift;
        when others => c_15 <= c_15_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 16 and associated fundamentals [[130], [520]]
  c_16_10_0_False_resize <= resize(c_10, 26);
  c_16_10_0_False_shift <= shift_left(c_16_10_0_False_resize, 0);
  c_16_10_2_False_resize <= resize(c_10, 26);
  c_16_10_2_False_shift <= shift_left(c_16_10_2_False_resize, 2);
  with config_select_2 select c_16_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_10_0_False_shift;
        when others => c_16 <= c_16_10_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 17 and associated fundamentals [[394], [-390]]
  with config_select_3 select c_17_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 26,
      w_o => 25,
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
      sub_i => c_17_sub_sel,
      x_i => c_15,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 18 and associated fundamentals [[97], [287]]
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 22,
      w_o => 25,
      s_x_i => 6,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_5,
      y_i => c_11,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 19 and associated fundamentals [[1], [2]]
  c_19_0_1_False_resize <= resize(c_0, 17);
  c_19_0_1_False_shift <= shift_left(c_19_0_1_False_resize, 1);
  c_19_0_0_False_resize <= resize(c_0, 17);
  c_19_0_0_False_shift <= shift_left(c_19_0_0_False_resize, 0);
  with config_select_1 select c_19_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_0_1_False_shift;
        when others => c_19 <= c_19_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 20 and associated fundamentals [[1], [95]]
  with config_select_2 select c_20_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 17,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_20_sub_sel,
      x_i => c_11,
      y_i => c_19,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 21 and associated fundamentals [[68], [95]]
  c_21_20_0_False_resize <= c_20;
  c_21_20_0_False_shift <= shift_left(c_21_20_0_False_resize, 0);
  c_21_3_2_False_resize <= c_3(22 downto 0);
  c_21_3_2_False_shift <= shift_left(c_21_3_2_False_resize, 2);
  with config_select_3 select c_21_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_20_0_False_shift;
        when others => c_21 <= c_21_3_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 22 and associated fundamentals [[320], [287]]
  c_22_9_6_False_resize <= c_9(24 downto 0);
  c_22_9_6_False_shift <= shift_left(c_22_9_6_False_resize, 6);
  c_22_18_0_False_resize <= c_18;
  c_22_18_0_False_shift <= shift_left(c_22_18_0_False_resize, 0);
  with config_select_3 select c_22_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_9_6_False_shift;
        when others => c_22 <= c_22_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 23 and associated fundamentals [[224], [473]]
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 25,
      w_o => 25,
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
      x_i => c_21,
      y_i => c_22,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 24 and associated fundamentals [[17], [257]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_3 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 25 and associated fundamentals [[411], [647]]
  with config_select_4 select c_25_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
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
      sub_i => c_25_sub_sel,
      x_i => c_24,
      y_i => c_17,
      z_o => c_25_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 26 and associated fundamentals [[272], [-240]]
  with config_select_1 select c_26_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 25,
      s_x_i => 4,
      s_y_i => 8,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_26_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 27 and associated fundamentals [[129], [127]]
  with config_select_1 select c_27_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 24,
      s_x_i => 7,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_27_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 28 and associated fundamentals [[514], [136]]
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
      w_o => 26,
      s_x_i => 1,
      s_y_i => 7,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_5,
      y_i => c_7,
      z_o => c_28_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_28_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 29 and associated fundamentals [[132], [31]]
  c_29_11_0_False_resize <= resize(c_11, 24);
  c_29_11_0_False_shift <= shift_left(c_29_11_0_False_resize, 0);
  c_29_11_2_False_resize <= resize(c_11, 24);
  c_29_11_2_False_shift <= shift_left(c_29_11_2_False_resize, 2);
  with config_select_2 select c_29_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_11_0_False_shift;
        when others => c_29 <= c_29_11_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 30 and associated fundamentals [[134], [159]]
  with config_select_3 select c_30_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
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
      sub_i => c_30_sub_sel,
      x_i => c_20,
      y_i => c_29,
      z_o => c_30_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_30_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 31 and associated fundamentals [[129], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_27 & "";
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 32 and associated fundamentals [[643], [263]]
  inst_adder_node_32: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
      w_o => 26,
      s_x_i => 0,
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
      y_i => c_31,
      z_o => c_32_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_32_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 33 and associated fundamentals [[520], [31]]
  c_33_11_0_False_resize <= resize(c_11, 26);
  c_33_11_0_False_shift <= shift_left(c_33_11_0_False_resize, 0);
  c_33_10_2_False_resize <= resize(c_10, 26);
  c_33_10_2_False_shift <= shift_left(c_33_10_2_False_resize, 2);
  with config_select_2 select c_33_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "0" => c_33 <= c_33_11_0_False_shift;
        when others => c_33 <= c_33_10_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 34 and associated fundamentals [[554], [483]]
  with config_select_3 select c_34_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_34: entity work.adder_node
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
      sub_i => c_34_sub_sel,
      x_i => c_3,
      y_i => c_33,
      z_o => c_34_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_34_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 35 and associated fundamentals [[272], [260]]
  c_35_10_1_False_resize <= resize(c_10, 25);
  c_35_10_1_False_shift <= shift_left(c_35_10_1_False_resize, 1);
  c_35_26_0_False_resize <= c_26;
  c_35_26_0_False_shift <= shift_left(c_35_26_0_False_resize, 0);
  with config_select_2 select c_35_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_10_1_False_shift;
        when others => c_35 <= c_35_26_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 36 and associated fundamentals [[33], [130]]
  c_36_10_0_False_resize <= c_10;
  c_36_10_0_False_shift <= shift_left(c_36_10_0_False_resize, 0);
  c_36_11_0_False_resize <= resize(c_11, 24);
  c_36_11_0_False_shift <= shift_left(c_36_11_0_False_resize, 0);
  with config_select_2 select c_36_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "0" => c_36 <= c_36_10_0_False_shift;
        when others => c_36 <= c_36_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 37 and associated fundamentals [[305], [130]]
  with config_select_3 select c_37_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_37: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 24,
      w_o => 25,
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
      sub_i => c_37_sub_sel,
      x_i => c_35,
      y_i => c_36,
      z_o => c_37_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_37_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 38 and associated fundamentals [[272], [248]]
  c_38_26_0_False_resize <= c_26;
  c_38_26_0_False_shift <= shift_left(c_38_26_0_False_resize, 0);
  c_38_11_3_False_resize <= resize(c_11, 25);
  c_38_11_3_False_shift <= shift_left(c_38_11_3_False_resize, 3);
  with config_select_2 select c_38_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "0" => c_38 <= c_38_26_0_False_shift;
        when others => c_38 <= c_38_11_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 39 and associated fundamentals [[130], [124]]
  c_39_10_0_False_resize <= c_10;
  c_39_10_0_False_shift <= shift_left(c_39_10_0_False_resize, 0);
  c_39_11_2_False_resize <= resize(c_11, 24);
  c_39_11_2_False_shift <= shift_left(c_39_11_2_False_resize, 2);
  with config_select_2 select c_39_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "0" => c_39 <= c_39_10_0_False_shift;
        when others => c_39 <= c_39_11_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 40 and associated fundamentals [[284], [744]]
  with config_select_3 select c_40_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_40: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 24,
      w_o => 26,
      s_x_i => 1,
      s_y_i => 1,
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
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_40_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 41 and associated fundamentals [[11], [1121]]
  inst_adder_node_41: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 23,
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
      x_i => c_9,
      y_i => c_20,
      z_o => c_41_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_41_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 42 and associated fundamentals [[128], [136]]
  c_42_20_7_False_resize <= resize(c_20, 24);
  c_42_20_7_False_shift <= shift_left(c_42_20_7_False_resize, 7);
  c_42_28_0_False_resize <= c_28(23 downto 0);
  c_42_28_0_False_shift <= shift_left(c_42_28_0_False_resize, 0);
  with config_select_3 select c_42_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "0" => c_42 <= c_42_20_7_False_shift;
        when others => c_42 <= c_42_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 43 and associated fundamentals [[97], [257]]
  c_43_18_0_False_resize <= c_18;
  c_43_18_0_False_shift <= shift_left(c_43_18_0_False_resize, 0);
  c_43_3_0_False_resize <= c_3;
  c_43_3_0_False_shift <= shift_left(c_43_3_0_False_resize, 0);
  with config_select_3 select c_43_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "0" => c_43 <= c_43_18_0_False_shift;
        when others => c_43 <= c_43_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 44 and associated fundamentals [[353], [529]]
  inst_adder_node_44: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      x_i => c_42,
      y_i => c_43,
      z_o => c_44_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_44_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 45 and associated fundamentals [[72], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_6 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 46 and associated fundamentals [[587], [857]]
  with config_select_4 select c_46_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_46: entity work.adder_node
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
      sub_i => c_46_sub_sel,
      x_i => c_41,
      y_i => c_45,
      z_o => c_46_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_46_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 47 and associated fundamentals [[353], [529]]
  c_47_resize <= c_44;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'output' in stage 4 with id 48 and associated fundamentals [[224], [473]]
  c_48_resize <= c_23;
  c_48 <= shift_left(c_48_resize, 0);
  -- node of type 'output' in stage 4 with id 49 and associated fundamentals [[587], [857]]
  c_49_resize <= c_46;
  c_49 <= shift_left(c_49_resize, 0);
  -- node of type 'output' in stage 4 with id 50 and associated fundamentals [[212], [480]]
  c_50_resize <= c_14;
  c_50 <= shift_left(c_50_resize, 0);
  -- node of type 'mux' in stage 4 with id 51 and associated fundamentals [[11], [263]]
  c_51_32_0_False_resize <= c_32(24 downto 0);
  c_51_32_0_False_shift <= shift_left(c_51_32_0_False_resize, 0);
  c_51_41_0_False_resize <= c_41(24 downto 0);
  c_51_41_0_False_shift <= shift_left(c_51_41_0_False_resize, 0);
  with config_select_4 select c_51_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_51_sel is
        when "0" => c_51 <= c_51_32_0_False_shift;
        when others => c_51 <= c_51_41_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 52 and associated fundamentals [[11], [263]]
  c_52_resize <= c_51;
  c_52 <= shift_left(c_52_resize, 0);
  -- node of type 'mux' in stage 4 with id 53 and associated fundamentals [[284], [130]]
  c_53_37_0_False_resize <= c_37;
  c_53_37_0_False_shift <= shift_left(c_53_37_0_False_resize, 0);
  c_53_40_0_False_resize <= c_40(24 downto 0);
  c_53_40_0_False_shift <= shift_left(c_53_40_0_False_resize, 0);
  with config_select_4 select c_53_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_53_sel is
        when "0" => c_53 <= c_53_37_0_False_shift;
        when others => c_53 <= c_53_40_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 54 and associated fundamentals [[284], [130]]
  c_54_resize <= c_53;
  c_54 <= shift_left(c_54_resize, 0);
  -- node of type 'register' in stage 4 with id 55 and associated fundamentals [[554], [483]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_34 & "";
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 56 and associated fundamentals [[554], [483]]
  c_56_resize <= c_55;
  c_56 <= shift_left(c_56_resize, 0);
  -- node of type 'output' in stage 4 with id 57 and associated fundamentals [[411], [647]]
  c_57_resize <= c_25;
  c_57 <= shift_left(c_57_resize, 0);
  -- node of type 'mux' in stage 4 with id 58 and associated fundamentals [[134], [318]]
  c_58_30_0_False_resize <= resize(c_30, 25);
  c_58_30_0_False_shift <= shift_left(c_58_30_0_False_resize, 0);
  c_58_30_1_False_resize <= resize(c_30, 25);
  c_58_30_1_False_shift <= shift_left(c_58_30_1_False_resize, 1);
  with config_select_4 select c_58_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_58_sel is
        when "0" => c_58 <= c_58_30_0_False_shift;
        when others => c_58 <= c_58_30_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 59 and associated fundamentals [[134], [318]]
  c_59_resize <= c_58;
  c_59 <= shift_left(c_59_resize, 0);
  -- node of type 'mux' in stage 4 with id 60 and associated fundamentals [[643], [744]]
  c_60_32_0_False_resize <= c_32;
  c_60_32_0_False_shift <= shift_left(c_60_32_0_False_resize, 0);
  c_60_40_0_False_resize <= c_40;
  c_60_40_0_False_shift <= shift_left(c_60_40_0_False_resize, 0);
  with config_select_4 select c_60_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_60_sel is
        when "0" => c_60 <= c_60_32_0_False_shift;
        when others => c_60 <= c_60_40_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 61 and associated fundamentals [[643], [744]]
  c_61_resize <= c_60;
  c_61 <= shift_left(c_61_resize, 0);
end architecture;
