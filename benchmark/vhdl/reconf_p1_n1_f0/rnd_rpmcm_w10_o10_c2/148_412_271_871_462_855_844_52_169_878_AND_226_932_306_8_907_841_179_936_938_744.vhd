library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(24 downto 0);
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
  signal config_select_0: std_logic_vector(0 downto 0);
  signal config_select_1: std_logic_vector(0 downto 0);
  signal config_select_2: std_logic_vector(0 downto 0);
  signal config_select_3: std_logic_vector(0 downto 0);
  signal config_select_4: std_logic_vector(0 downto 0);
  signal config_select_5: std_logic_vector(0 downto 0);
  signal config_select_6: std_logic_vector(0 downto 0);
  signal config_select_7: std_logic_vector(0 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_i0_resize: signed(19 downto 0);
  signal c_1_i1_resize: signed(19 downto 0);
  signal c_1_i0_shift: signed(19 downto 0);
  signal c_1_i1_shift: signed(19 downto 0);
  signal c_1_arith: signed(19 downto 0);
  signal c_1_oshift: signed(19 downto 0);
  signal c_2: signed(23 downto 0);
  signal c_2_0_0_False_resize: signed(23 downto 0);
  signal c_2_0_0_False_shift: signed(23 downto 0);
  signal c_2_0_8_False_resize: signed(23 downto 0);
  signal c_2_0_8_False_shift: signed(23 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(16 downto 0);
  signal c_3_0_0_False_resize: signed(16 downto 0);
  signal c_3_0_0_False_shift: signed(16 downto 0);
  signal c_3_0_1_False_resize: signed(16 downto 0);
  signal c_3_0_1_False_shift: signed(16 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(24 downto 0);
  signal c_4_i0_resize: signed(24 downto 0);
  signal c_4_i1_resize: signed(24 downto 0);
  signal c_4_i0_shift: signed(24 downto 0);
  signal c_4_i1_shift: signed(24 downto 0);
  signal c_4_arith: signed(24 downto 0);
  signal c_4_oshift: signed(24 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(20 downto 0);
  signal c_6_i0_resize: signed(20 downto 0);
  signal c_6_i1_resize: signed(20 downto 0);
  signal c_6_i0_shift: signed(20 downto 0);
  signal c_6_i1_shift: signed(20 downto 0);
  signal c_6_arith: signed(20 downto 0);
  signal c_6_oshift: signed(20 downto 0);
  signal c_7: signed(21 downto 0);
  signal c_7_i0_resize: signed(21 downto 0);
  signal c_7_i1_resize: signed(21 downto 0);
  signal c_7_i0_shift: signed(21 downto 0);
  signal c_7_i1_shift: signed(21 downto 0);
  signal c_7_arith: signed(21 downto 0);
  signal c_7_oshift: signed(21 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(25 downto 0);
  signal c_8_0_10_False_resize: signed(25 downto 0);
  signal c_8_0_10_False_shift: signed(25 downto 0);
  signal c_8_0_0_False_resize: signed(25 downto 0);
  signal c_8_0_0_False_shift: signed(25 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(19 downto 0);
  signal c_9_0_0_False_resize: signed(19 downto 0);
  signal c_9_0_0_False_shift: signed(19 downto 0);
  signal c_9_0_4_False_resize: signed(19 downto 0);
  signal c_9_0_4_False_shift: signed(19 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(25 downto 0);
  signal c_10_i0_resize: signed(25 downto 0);
  signal c_10_i1_resize: signed(25 downto 0);
  signal c_10_i0_shift: signed(25 downto 0);
  signal c_10_i1_shift: signed(25 downto 0);
  signal c_10_arith: signed(25 downto 0);
  signal c_10_oshift: signed(25 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(23 downto 0);
  signal c_11_6_0_False_resize: signed(23 downto 0);
  signal c_11_6_0_False_shift: signed(23 downto 0);
  signal c_11_7_2_False_resize: signed(23 downto 0);
  signal c_11_7_2_False_shift: signed(23 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(25 downto 0);
  signal c_12_10_0_False_resize: signed(25 downto 0);
  signal c_12_10_0_False_shift: signed(25 downto 0);
  signal c_12_7_0_False_resize: signed(25 downto 0);
  signal c_12_7_0_False_shift: signed(25 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(25 downto 0);
  signal c_13_i0_resize: signed(25 downto 0);
  signal c_13_i1_resize: signed(25 downto 0);
  signal c_13_i0_shift: signed(25 downto 0);
  signal c_13_i1_shift: signed(25 downto 0);
  signal c_13_arith: signed(25 downto 0);
  signal c_13_oshift: signed(25 downto 0);
  signal c_14: signed(21 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_10_0_False_resize: signed(25 downto 0);
  signal c_15_10_0_False_shift: signed(25 downto 0);
  signal c_15_4_6_False_resize: signed(25 downto 0);
  signal c_15_4_6_False_shift: signed(25 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(25 downto 0);
  signal c_16_i1_resize: signed(25 downto 0);
  signal c_16_i0_shift: signed(25 downto 0);
  signal c_16_i1_shift: signed(25 downto 0);
  signal c_16_arith: signed(25 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(23 downto 0);
  signal c_17_i0_resize: signed(23 downto 0);
  signal c_17_i1_resize: signed(23 downto 0);
  signal c_17_i0_shift: signed(23 downto 0);
  signal c_17_i1_shift: signed(23 downto 0);
  signal c_17_arith: signed(23 downto 0);
  signal c_17_oshift: signed(23 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(25 downto 0);
  signal c_18_10_0_False_resize: signed(25 downto 0);
  signal c_18_10_0_False_shift: signed(25 downto 0);
  signal c_18_7_4_False_resize: signed(25 downto 0);
  signal c_18_7_4_False_shift: signed(25 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_17_0_False_resize: signed(23 downto 0);
  signal c_19_17_0_False_shift: signed(23 downto 0);
  signal c_19_6_0_False_resize: signed(23 downto 0);
  signal c_19_6_0_False_shift: signed(23 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_i0_resize: signed(25 downto 0);
  signal c_20_i1_resize: signed(25 downto 0);
  signal c_20_i0_shift: signed(25 downto 0);
  signal c_20_i1_shift: signed(25 downto 0);
  signal c_20_arith: signed(25 downto 0);
  signal c_20_oshift: signed(25 downto 0);
  signal c_21: signed(24 downto 0);
  signal c_21_17_2_False_resize: signed(24 downto 0);
  signal c_21_17_2_False_shift: signed(24 downto 0);
  signal c_21_7_0_False_resize: signed(24 downto 0);
  signal c_21_7_0_False_shift: signed(24 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(24 downto 0);
  signal c_22_4_0_False_resize: signed(24 downto 0);
  signal c_22_4_0_False_shift: signed(24 downto 0);
  signal c_22_17_1_False_resize: signed(24 downto 0);
  signal c_22_17_1_False_shift: signed(24 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(24 downto 0);
  signal c_23_i0_resize: signed(24 downto 0);
  signal c_23_i1_resize: signed(24 downto 0);
  signal c_23_i0_shift: signed(24 downto 0);
  signal c_23_i1_shift: signed(24 downto 0);
  signal c_23_arith: signed(24 downto 0);
  signal c_23_oshift: signed(24 downto 0);
  signal c_24: signed(16 downto 0);
  signal c_24_0_1_False_resize: signed(16 downto 0);
  signal c_24_0_1_False_shift: signed(16 downto 0);
  signal c_24_0_0_False_resize: signed(16 downto 0);
  signal c_24_0_0_False_shift: signed(16 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_25_i0_resize: signed(22 downto 0);
  signal c_25_i1_resize: signed(22 downto 0);
  signal c_25_i0_shift: signed(22 downto 0);
  signal c_25_i1_shift: signed(22 downto 0);
  signal c_25_arith: signed(22 downto 0);
  signal c_25_oshift: signed(22 downto 0);
  signal c_26: signed(24 downto 0);
  signal c_26_6_0_False_resize: signed(24 downto 0);
  signal c_26_6_0_False_shift: signed(24 downto 0);
  signal c_26_6_4_False_resize: signed(24 downto 0);
  signal c_26_6_4_False_shift: signed(24 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_i0_resize: signed(25 downto 0);
  signal c_27_i1_resize: signed(25 downto 0);
  signal c_27_i0_shift: signed(25 downto 0);
  signal c_27_i1_shift: signed(25 downto 0);
  signal c_27_arith: signed(25 downto 0);
  signal c_27_oshift: signed(25 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_28_7_0_False_resize: signed(22 downto 0);
  signal c_28_7_0_False_shift: signed(22 downto 0);
  signal c_28_10_2_False_resize: signed(22 downto 0);
  signal c_28_10_2_False_shift: signed(22 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(24 downto 0);
  signal c_29_4_0_False_resize: signed(24 downto 0);
  signal c_29_4_0_False_shift: signed(24 downto 0);
  signal c_29_25_1_False_resize: signed(24 downto 0);
  signal c_29_25_1_False_shift: signed(24 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(24 downto 0);
  signal c_30_i0_resize: signed(24 downto 0);
  signal c_30_i1_resize: signed(24 downto 0);
  signal c_30_i0_shift: signed(24 downto 0);
  signal c_30_i1_shift: signed(24 downto 0);
  signal c_30_arith: signed(24 downto 0);
  signal c_30_oshift: signed(24 downto 0);
  signal c_30_sub_sel: std_logic;
  signal c_31: signed(20 downto 0);
  signal c_31_i0_resize: signed(20 downto 0);
  signal c_31_i1_resize: signed(20 downto 0);
  signal c_31_i0_shift: signed(20 downto 0);
  signal c_31_i1_shift: signed(20 downto 0);
  signal c_31_arith: signed(20 downto 0);
  signal c_31_oshift: signed(20 downto 0);
  signal c_32: signed(19 downto 0);
  signal c_33: signed(28 downto 0);
  signal c_33_i0_resize: signed(28 downto 0);
  signal c_33_i1_resize: signed(28 downto 0);
  signal c_33_i0_shift: signed(28 downto 0);
  signal c_33_i1_shift: signed(28 downto 0);
  signal c_33_arith: signed(28 downto 0);
  signal c_33_oshift: signed(28 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_7_2_False_resize: signed(23 downto 0);
  signal c_34_7_2_False_shift: signed(23 downto 0);
  signal c_34_7_0_False_resize: signed(23 downto 0);
  signal c_34_7_0_False_shift: signed(23 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(22 downto 0);
  signal c_35_25_0_False_resize: signed(22 downto 0);
  signal c_35_25_0_False_shift: signed(22 downto 0);
  signal c_35_4_1_False_resize: signed(22 downto 0);
  signal c_35_4_1_False_shift: signed(22 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_36_i0_resize: signed(25 downto 0);
  signal c_36_i1_resize: signed(25 downto 0);
  signal c_36_i0_shift: signed(25 downto 0);
  signal c_36_i1_shift: signed(25 downto 0);
  signal c_36_arith: signed(25 downto 0);
  signal c_36_oshift: signed(25 downto 0);
  signal c_37: signed(21 downto 0);
  signal c_37_6_0_False_resize: signed(21 downto 0);
  signal c_37_6_0_False_shift: signed(21 downto 0);
  signal c_37_25_0_False_resize: signed(21 downto 0);
  signal c_37_25_0_False_shift: signed(21 downto 0);
  signal c_37_sel: std_logic_vector(0 downto 0);
  signal c_38: signed(24 downto 0);
  signal c_38_4_0_False_resize: signed(24 downto 0);
  signal c_38_4_0_False_shift: signed(24 downto 0);
  signal c_38_25_3_False_resize: signed(24 downto 0);
  signal c_38_25_3_False_shift: signed(24 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(24 downto 0);
  signal c_39_i0_resize: signed(24 downto 0);
  signal c_39_i1_resize: signed(24 downto 0);
  signal c_39_i0_shift: signed(24 downto 0);
  signal c_39_i1_shift: signed(24 downto 0);
  signal c_39_arith: signed(24 downto 0);
  signal c_39_oshift: signed(24 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_i0_resize: signed(29 downto 0);
  signal c_40_i1_resize: signed(29 downto 0);
  signal c_40_i0_shift: signed(29 downto 0);
  signal c_40_i1_shift: signed(29 downto 0);
  signal c_40_arith: signed(29 downto 0);
  signal c_40_oshift: signed(23 downto 0);
  signal c_41: signed(24 downto 0);
  signal c_41_31_0_False_resize: signed(24 downto 0);
  signal c_41_31_0_False_shift: signed(24 downto 0);
  signal c_41_7_3_False_resize: signed(24 downto 0);
  signal c_41_7_3_False_shift: signed(24 downto 0);
  signal c_41_sel: std_logic_vector(0 downto 0);
  signal c_42: signed(20 downto 0);
  signal c_42_4_1_False_resize: signed(20 downto 0);
  signal c_42_4_1_False_shift: signed(20 downto 0);
  signal c_42_10_0_False_resize: signed(20 downto 0);
  signal c_42_10_0_False_shift: signed(20 downto 0);
  signal c_42_sel: std_logic_vector(0 downto 0);
  signal c_43: signed(24 downto 0);
  signal c_43_i0_resize: signed(24 downto 0);
  signal c_43_i1_resize: signed(24 downto 0);
  signal c_43_i0_shift: signed(24 downto 0);
  signal c_43_i1_shift: signed(24 downto 0);
  signal c_43_arith: signed(24 downto 0);
  signal c_43_oshift: signed(24 downto 0);
  signal c_43_sub_sel: std_logic;
  signal c_44: signed(22 downto 0);
  signal c_44_16_0_False_resize: signed(22 downto 0);
  signal c_44_16_0_False_shift: signed(22 downto 0);
  signal c_44_27_0_False_resize: signed(22 downto 0);
  signal c_44_27_0_False_shift: signed(22 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_resize: signed(23 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_46_30_0_False_resize: signed(25 downto 0);
  signal c_46_30_0_False_shift: signed(25 downto 0);
  signal c_46_40_2_False_resize: signed(25 downto 0);
  signal c_46_40_2_False_shift: signed(25 downto 0);
  signal c_46_sel: std_logic_vector(0 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_resize: signed(25 downto 0);
  signal c_48: signed(24 downto 0);
  signal c_48_23_0_False_resize: signed(24 downto 0);
  signal c_48_23_0_False_shift: signed(24 downto 0);
  signal c_48_20_0_False_resize: signed(24 downto 0);
  signal c_48_20_0_False_shift: signed(24 downto 0);
  signal c_48_sel: std_logic_vector(0 downto 0);
  signal c_49: signed(24 downto 0);
  signal c_49_resize: signed(24 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_50_27_0_False_resize: signed(25 downto 0);
  signal c_50_27_0_False_shift: signed(25 downto 0);
  signal c_50_43_2_False_resize: signed(25 downto 0);
  signal c_50_43_2_False_shift: signed(25 downto 0);
  signal c_50_sel: std_logic_vector(0 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_51_resize: signed(25 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_52_23_1_False_resize: signed(25 downto 0);
  signal c_52_23_1_False_shift: signed(25 downto 0);
  signal c_52_13_0_False_resize: signed(25 downto 0);
  signal c_52_13_0_False_shift: signed(25 downto 0);
  signal c_52_sel: std_logic_vector(0 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_53_resize: signed(25 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_54_16_0_False_resize: signed(25 downto 0);
  signal c_54_16_0_False_shift: signed(25 downto 0);
  signal c_54_13_0_False_resize: signed(25 downto 0);
  signal c_54_13_0_False_shift: signed(25 downto 0);
  signal c_54_sel: std_logic_vector(0 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_55_resize: signed(25 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_56_30_0_False_resize: signed(25 downto 0);
  signal c_56_30_0_False_shift: signed(25 downto 0);
  signal c_56_39_1_False_resize: signed(25 downto 0);
  signal c_56_39_1_False_shift: signed(25 downto 0);
  signal c_56_sel: std_logic_vector(0 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_57_resize: signed(25 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_58_36_0_False_resize: signed(25 downto 0);
  signal c_58_36_0_False_shift: signed(25 downto 0);
  signal c_58_36_1_False_resize: signed(25 downto 0);
  signal c_58_36_1_False_shift: signed(25 downto 0);
  signal c_58_sel: std_logic_vector(0 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_59_resize: signed(25 downto 0);
  signal c_60: signed(25 downto 0);
  signal c_60_20_0_False_resize: signed(25 downto 0);
  signal c_60_20_0_False_shift: signed(25 downto 0);
  signal c_60_40_0_False_resize: signed(25 downto 0);
  signal c_60_40_0_False_shift: signed(25 downto 0);
  signal c_60_sel: std_logic_vector(0 downto 0);
  signal c_61: signed(25 downto 0);
  signal c_61_resize: signed(25 downto 0);
  signal c_62: signed(24 downto 0);
  signal c_62_43_0_False_resize: signed(24 downto 0);
  signal c_62_43_0_False_shift: signed(24 downto 0);
  signal c_62_39_0_False_resize: signed(24 downto 0);
  signal c_62_39_0_False_shift: signed(24 downto 0);
  signal c_62_sel: std_logic_vector(0 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_63_resize: signed(25 downto 0);
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
  -- output node 0 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_45);
    end if;
  end process;
  -- output node 1 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_47);
    end if;
  end process;
  -- output node 2 with id 49
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_49);
    end if;
  end process;
  -- output node 3 with id 51
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_51);
    end if;
  end process;
  -- output node 4 with id 53
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_53);
    end if;
  end process;
  -- output node 5 with id 55
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_55);
    end if;
  end process;
  -- output node 6 with id 57
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_57);
    end if;
  end process;
  -- output node 7 with id 59
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_59);
    end if;
  end process;
  -- output node 8 with id 61
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_61);
    end if;
  end process;
  -- output node 9 with id 63
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_63);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 1 and associated fundamentals [[14], [14]]
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
      s_x_i => 4,
      s_y_i => 1,
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
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[256], [1]]
  c_2_0_0_False_resize <= resize(c_0, 24);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_8_False_resize <= resize(c_0, 24);
  c_2_0_8_False_shift <= shift_left(c_2_0_8_False_resize, 8);
  with config_select_1 select c_2_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 3 and associated fundamentals [[2], [1]]
  c_3_0_0_False_resize <= resize(c_0, 17);
  c_3_0_0_False_shift <= shift_left(c_3_0_0_False_resize, 0);
  c_3_0_1_False_resize <= resize(c_0, 17);
  c_3_0_1_False_shift <= shift_left(c_3_0_1_False_resize, 1);
  with config_select_1 select c_3_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_0_0_False_shift;
        when others => c_3 <= c_3_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 4 and associated fundamentals [[480], [-14]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 17,
      w_o => 25,
      s_x_i => 1,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 5 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 6 and associated fundamentals [[29], [29]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 20,
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
      x_i => c_5,
      y_i => c_1,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 7 and associated fundamentals [[57], [-55]]
  with config_select_2 select c_7_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 20,
      w_o => 22,
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
      sub_i => c_7_sub_sel,
      x_i => c_5,
      y_i => c_1,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[1], [1024]]
  c_8_0_10_False_resize <= resize(c_0, 26);
  c_8_0_10_False_shift <= shift_left(c_8_0_10_False_resize, 10);
  c_8_0_0_False_resize <= resize(c_0, 26);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  with config_select_1 select c_8_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_0_10_False_shift;
        when others => c_8 <= c_8_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 9 and associated fundamentals [[16], [1]]
  c_9_0_0_False_resize <= resize(c_0, 20);
  c_9_0_0_False_shift <= shift_left(c_9_0_0_False_resize, 0);
  c_9_0_4_False_resize <= resize(c_0, 20);
  c_9_0_4_False_shift <= shift_left(c_9_0_4_False_resize, 4);
  with config_select_1 select c_9_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_0_0_False_shift;
        when others => c_9 <= c_9_0_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 10 and associated fundamentals [[17], [1023]]
  with config_select_2 select c_10_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 20,
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
      sub_i => c_10_sub_sel,
      x_i => c_8,
      y_i => c_9,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[228], [29]]
  c_11_6_0_False_resize <= resize(c_6, 24);
  c_11_6_0_False_shift <= shift_left(c_11_6_0_False_resize, 0);
  c_11_7_2_False_resize <= resize(c_7, 24);
  c_11_7_2_False_shift <= shift_left(c_11_7_2_False_resize, 2);
  with config_select_3 select c_11_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_6_0_False_shift;
        when others => c_11 <= c_11_7_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[57], [1023]]
  c_12_10_0_False_resize <= c_10;
  c_12_10_0_False_shift <= shift_left(c_12_10_0_False_resize, 0);
  c_12_7_0_False_resize <= resize(c_7, 26);
  c_12_7_0_False_shift <= shift_left(c_12_7_0_False_resize, 0);
  with config_select_3 select c_12_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_10_0_False_shift;
        when others => c_12 <= c_12_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 13 and associated fundamentals [[855], [-907]]
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 26,
      w_o => 26,
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
      c_13 <= c_13_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 14 and associated fundamentals [[57], [-55]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_7 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[17], [-896]]
  c_15_10_0_False_resize <= c_10;
  c_15_10_0_False_shift <= shift_left(c_15_10_0_False_resize, 0);
  c_15_4_6_False_resize <= resize(c_4, 26);
  c_15_4_6_False_shift <= shift_left(c_15_4_6_False_resize, 6);
  with config_select_3 select c_15_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_10_0_False_shift;
        when others => c_15 <= c_15_4_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 16 and associated fundamentals [[74], [841]]
  with config_select_4 select c_16_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_16_sub_sel,
      x_i => c_14,
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 17 and associated fundamentals [[144], [-80]]
  with config_select_2 select c_17_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 20,
      w_o => 24,
      s_x_i => 5,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_17_sub_sel,
      x_i => c_5,
      y_i => c_1,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[17], [-880]]
  c_18_10_0_False_resize <= c_10;
  c_18_10_0_False_shift <= shift_left(c_18_10_0_False_resize, 0);
  c_18_7_4_False_resize <= resize(c_7, 26);
  c_18_7_4_False_shift <= shift_left(c_18_7_4_False_resize, 4);
  with config_select_3 select c_18_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_10_0_False_shift;
        when others => c_18 <= c_18_7_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 19 and associated fundamentals [[144], [29]]
  c_19_17_0_False_resize <= c_17;
  c_19_17_0_False_shift <= shift_left(c_19_17_0_False_resize, 0);
  c_19_6_0_False_resize <= resize(c_6, 24);
  c_19_6_0_False_shift <= shift_left(c_19_6_0_False_resize, 0);
  with config_select_3 select c_19_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_17_0_False_shift;
        when others => c_19 <= c_19_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 20 and associated fundamentals [[-271], [-938]]
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_18,
      y_i => c_19,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 21 and associated fundamentals [[57], [-320]]
  c_21_17_2_False_resize <= resize(c_17, 25);
  c_21_17_2_False_shift <= shift_left(c_21_17_2_False_resize, 2);
  c_21_7_0_False_resize <= resize(c_7, 25);
  c_21_7_0_False_shift <= shift_left(c_21_7_0_False_resize, 0);
  with config_select_3 select c_21_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_17_2_False_shift;
        when others => c_21 <= c_21_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 22 and associated fundamentals [[288], [-14]]
  c_22_4_0_False_resize <= c_4;
  c_22_4_0_False_shift <= shift_left(c_22_4_0_False_resize, 0);
  c_22_17_1_False_resize <= resize(c_17, 25);
  c_22_17_1_False_shift <= shift_left(c_22_17_1_False_resize, 1);
  with config_select_3 select c_22_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_4_0_False_shift;
        when others => c_22 <= c_22_17_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 23 and associated fundamentals [[-231], [-306]]
  inst_adder_node_23: entity work.adder_node
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
  -- node of type 'mux' in stage 1 with id 24 and associated fundamentals [[1], [2]]
  c_24_0_1_False_resize <= resize(c_0, 17);
  c_24_0_1_False_shift <= shift_left(c_24_0_1_False_resize, 1);
  c_24_0_0_False_resize <= resize(c_0, 17);
  c_24_0_0_False_shift <= shift_left(c_24_0_0_False_resize, 0);
  with config_select_1 select c_24_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_0_1_False_shift;
        when others => c_24 <= c_24_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 25 and associated fundamentals [[-127], [-62]]
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 17,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 6,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_24,
      y_i => c_3,
      z_o => c_25_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 26 and associated fundamentals [[464], [29]]
  c_26_6_0_False_resize <= resize(c_6, 25);
  c_26_6_0_False_shift <= shift_left(c_26_6_0_False_resize, 0);
  c_26_6_4_False_resize <= resize(c_6, 25);
  c_26_6_4_False_shift <= shift_left(c_26_6_4_False_resize, 4);
  with config_select_3 select c_26_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_6_0_False_shift;
        when others => c_26 <= c_26_6_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 27 and associated fundamentals [[871], [113]]
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 22,
      w_o => 26,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_26,
      y_i => c_14,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 28 and associated fundamentals [[68], [-55]]
  c_28_7_0_False_resize <= resize(c_7, 23);
  c_28_7_0_False_shift <= shift_left(c_28_7_0_False_resize, 0);
  c_28_10_2_False_resize <= c_10(22 downto 0);
  c_28_10_2_False_shift <= shift_left(c_28_10_2_False_resize, 2);
  with config_select_3 select c_28_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "0" => c_28 <= c_28_7_0_False_shift;
        when others => c_28 <= c_28_10_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 29 and associated fundamentals [[480], [-124]]
  c_29_4_0_False_resize <= c_4;
  c_29_4_0_False_shift <= shift_left(c_29_4_0_False_resize, 0);
  c_29_25_1_False_resize <= resize(c_25, 25);
  c_29_25_1_False_shift <= shift_left(c_29_25_1_False_resize, 1);
  with config_select_3 select c_29_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_4_0_False_shift;
        when others => c_29 <= c_29_25_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 30 and associated fundamentals [[-412], [-179]]
  with config_select_4 select c_30_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 25,
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
      sub_i => c_30_sub_sel,
      x_i => c_28,
      y_i => c_29,
      z_o => c_30_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_30_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 31 and associated fundamentals [[22], [30]]
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 17,
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
      y_i => c_24,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 32 and associated fundamentals [[14], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_1 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 33 and associated fundamentals [[-5408], [-7456]]
  inst_adder_node_33: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 21,
      w_o => 29,
      s_x_i => 4,
      s_y_i => 8,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_32,
      y_i => c_31,
      z_o => c_33_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_33_oshift(28 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 34 and associated fundamentals [[57], [-220]]
  c_34_7_2_False_resize <= resize(c_7, 24);
  c_34_7_2_False_shift <= shift_left(c_34_7_2_False_resize, 2);
  c_34_7_0_False_resize <= resize(c_7, 24);
  c_34_7_0_False_shift <= shift_left(c_34_7_0_False_resize, 0);
  with config_select_3 select c_34_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_7_2_False_shift;
        when others => c_34 <= c_34_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 35 and associated fundamentals [[-127], [-28]]
  c_35_25_0_False_resize <= c_25;
  c_35_25_0_False_shift <= shift_left(c_35_25_0_False_resize, 0);
  c_35_4_1_False_resize <= c_4(22 downto 0);
  c_35_4_1_False_shift <= shift_left(c_35_4_1_False_resize, 1);
  with config_select_3 select c_35_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_25_0_False_shift;
        when others => c_35 <= c_35_4_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 36 and associated fundamentals [[-26], [-936]]
  inst_adder_node_36: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
      w_o => 26,
      s_x_i => 2,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_34,
      y_i => c_35,
      z_o => c_36_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_36_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 37 and associated fundamentals [[29], [-62]]
  c_37_6_0_False_resize <= resize(c_6, 22);
  c_37_6_0_False_shift <= shift_left(c_37_6_0_False_resize, 0);
  c_37_25_0_False_resize <= c_25(21 downto 0);
  c_37_25_0_False_shift <= shift_left(c_37_25_0_False_resize, 0);
  with config_select_3 select c_37_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "0" => c_37 <= c_37_6_0_False_shift;
        when others => c_37 <= c_37_25_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 38 and associated fundamentals [[480], [-496]]
  c_38_4_0_False_resize <= c_4;
  c_38_4_0_False_shift <= shift_left(c_38_4_0_False_resize, 0);
  c_38_25_3_False_resize <= resize(c_25, 25);
  c_38_25_3_False_shift <= shift_left(c_38_25_3_False_resize, 3);
  with config_select_3 select c_38_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "0" => c_38 <= c_38_4_0_False_shift;
        when others => c_38 <= c_38_25_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 39 and associated fundamentals [[-422], [372]]
  inst_adder_node_39: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 25,
      w_o => 25,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_37,
      y_i => c_38,
      z_o => c_39_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_39_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 40 and associated fundamentals [[-169], [-233]]
  inst_adder_node_40: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 29,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 6,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_33,
      y_i => c_33,
      z_o => c_40_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_40_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 41 and associated fundamentals [[456], [30]]
  c_41_31_0_False_resize <= resize(c_31, 25);
  c_41_31_0_False_shift <= shift_left(c_41_31_0_False_resize, 0);
  c_41_7_3_False_resize <= resize(c_7, 25);
  c_41_7_3_False_shift <= shift_left(c_41_7_3_False_resize, 3);
  with config_select_3 select c_41_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "0" => c_41 <= c_41_31_0_False_shift;
        when others => c_41 <= c_41_7_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 42 and associated fundamentals [[17], [-28]]
  c_42_4_1_False_resize <= c_4(20 downto 0);
  c_42_4_1_False_shift <= shift_left(c_42_4_1_False_resize, 1);
  c_42_10_0_False_resize <= c_10(20 downto 0);
  c_42_10_0_False_shift <= shift_left(c_42_10_0_False_resize, 0);
  with config_select_3 select c_42_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "0" => c_42 <= c_42_4_1_False_shift;
        when others => c_42 <= c_42_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 43 and associated fundamentals [[439], [2]]
  with config_select_4 select c_43_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_43: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 21,
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
      sub_i => c_43_sub_sel,
      x_i => c_41,
      y_i => c_42,
      z_o => c_43_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_43_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 44 and associated fundamentals [[74], [113]]
  c_44_16_0_False_resize <= c_16(22 downto 0);
  c_44_16_0_False_shift <= shift_left(c_44_16_0_False_resize, 0);
  c_44_27_0_False_resize <= c_27(22 downto 0);
  c_44_27_0_False_shift <= shift_left(c_44_27_0_False_resize, 0);
  with config_select_5 select c_44_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "0" => c_44 <= c_44_16_0_False_shift;
        when others => c_44 <= c_44_27_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 45 and associated fundamentals [[148], [226]]
  c_45_resize <= resize(c_44, 24);
  c_45 <= shift_left(c_45_resize, 1);
  -- node of type 'mux' in stage 5 with id 46 and associated fundamentals [[-412], [-932]]
  c_46_30_0_False_resize <= resize(c_30, 26);
  c_46_30_0_False_shift <= shift_left(c_46_30_0_False_resize, 0);
  c_46_40_2_False_resize <= resize(c_40, 26);
  c_46_40_2_False_shift <= shift_left(c_46_40_2_False_resize, 2);
  with config_select_5 select c_46_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "0" => c_46 <= c_46_30_0_False_shift;
        when others => c_46 <= c_46_40_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 47 and associated fundamentals [[412], [932]]
  c_47_resize <= c_46;
  c_47 <= -shift_left(c_47_resize, 0);
  -- node of type 'mux' in stage 5 with id 48 and associated fundamentals [[-271], [-306]]
  c_48_23_0_False_resize <= c_23;
  c_48_23_0_False_shift <= shift_left(c_48_23_0_False_resize, 0);
  c_48_20_0_False_resize <= c_20(24 downto 0);
  c_48_20_0_False_shift <= shift_left(c_48_20_0_False_resize, 0);
  with config_select_5 select c_48_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "0" => c_48 <= c_48_23_0_False_shift;
        when others => c_48 <= c_48_20_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 49 and associated fundamentals [[271], [306]]
  c_49_resize <= c_48;
  c_49 <= -shift_left(c_49_resize, 0);
  -- node of type 'mux' in stage 5 with id 50 and associated fundamentals [[871], [8]]
  c_50_27_0_False_resize <= c_27;
  c_50_27_0_False_shift <= shift_left(c_50_27_0_False_resize, 0);
  c_50_43_2_False_resize <= resize(c_43, 26);
  c_50_43_2_False_shift <= shift_left(c_50_43_2_False_resize, 2);
  with config_select_5 select c_50_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_50_sel is
        when "0" => c_50 <= c_50_27_0_False_shift;
        when others => c_50 <= c_50_43_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 51 and associated fundamentals [[871], [8]]
  c_51_resize <= c_50;
  c_51 <= shift_left(c_51_resize, 0);
  -- node of type 'mux' in stage 5 with id 52 and associated fundamentals [[-462], [-907]]
  c_52_23_1_False_resize <= resize(c_23, 26);
  c_52_23_1_False_shift <= shift_left(c_52_23_1_False_resize, 1);
  c_52_13_0_False_resize <= c_13;
  c_52_13_0_False_shift <= shift_left(c_52_13_0_False_resize, 0);
  with config_select_5 select c_52_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_52_sel is
        when "0" => c_52 <= c_52_23_1_False_shift;
        when others => c_52 <= c_52_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 53 and associated fundamentals [[462], [907]]
  c_53_resize <= c_52;
  c_53 <= -shift_left(c_53_resize, 0);
  -- node of type 'mux' in stage 5 with id 54 and associated fundamentals [[855], [841]]
  c_54_16_0_False_resize <= c_16;
  c_54_16_0_False_shift <= shift_left(c_54_16_0_False_resize, 0);
  c_54_13_0_False_resize <= c_13;
  c_54_13_0_False_shift <= shift_left(c_54_13_0_False_resize, 0);
  with config_select_5 select c_54_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_54_sel is
        when "0" => c_54 <= c_54_16_0_False_shift;
        when others => c_54 <= c_54_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 55 and associated fundamentals [[855], [841]]
  c_55_resize <= c_54;
  c_55 <= shift_left(c_55_resize, 0);
  -- node of type 'mux' in stage 5 with id 56 and associated fundamentals [[-844], [-179]]
  c_56_30_0_False_resize <= resize(c_30, 26);
  c_56_30_0_False_shift <= shift_left(c_56_30_0_False_resize, 0);
  c_56_39_1_False_resize <= resize(c_39, 26);
  c_56_39_1_False_shift <= shift_left(c_56_39_1_False_resize, 1);
  with config_select_5 select c_56_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_56_sel is
        when "0" => c_56 <= c_56_30_0_False_shift;
        when others => c_56 <= c_56_39_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 57 and associated fundamentals [[844], [179]]
  c_57_resize <= c_56;
  c_57 <= -shift_left(c_57_resize, 0);
  -- node of type 'mux' in stage 5 with id 58 and associated fundamentals [[-52], [-936]]
  c_58_36_0_False_resize <= c_36;
  c_58_36_0_False_shift <= shift_left(c_58_36_0_False_resize, 0);
  c_58_36_1_False_resize <= c_36;
  c_58_36_1_False_shift <= shift_left(c_58_36_1_False_resize, 1);
  with config_select_5 select c_58_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_58_sel is
        when "0" => c_58 <= c_58_36_0_False_shift;
        when others => c_58 <= c_58_36_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 59 and associated fundamentals [[52], [936]]
  c_59_resize <= c_58;
  c_59 <= -shift_left(c_59_resize, 0);
  -- node of type 'mux' in stage 5 with id 60 and associated fundamentals [[-169], [-938]]
  c_60_20_0_False_resize <= c_20;
  c_60_20_0_False_shift <= shift_left(c_60_20_0_False_resize, 0);
  c_60_40_0_False_resize <= resize(c_40, 26);
  c_60_40_0_False_shift <= shift_left(c_60_40_0_False_resize, 0);
  with config_select_5 select c_60_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_60_sel is
        when "0" => c_60 <= c_60_20_0_False_shift;
        when others => c_60 <= c_60_40_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 61 and associated fundamentals [[169], [938]]
  c_61_resize <= c_60;
  c_61 <= -shift_left(c_61_resize, 0);
  -- node of type 'mux' in stage 5 with id 62 and associated fundamentals [[439], [372]]
  c_62_43_0_False_resize <= c_43;
  c_62_43_0_False_shift <= shift_left(c_62_43_0_False_resize, 0);
  c_62_39_0_False_resize <= c_39;
  c_62_39_0_False_shift <= shift_left(c_62_39_0_False_resize, 0);
  with config_select_5 select c_62_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_62_sel is
        when "0" => c_62 <= c_62_43_0_False_shift;
        when others => c_62 <= c_62_39_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 63 and associated fundamentals [[878], [744]]
  c_63_resize <= resize(c_62, 26);
  c_63 <= shift_left(c_63_resize, 1);
end architecture;
