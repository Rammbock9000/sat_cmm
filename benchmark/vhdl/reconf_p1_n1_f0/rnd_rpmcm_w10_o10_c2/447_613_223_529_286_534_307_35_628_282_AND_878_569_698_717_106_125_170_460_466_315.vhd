library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(25 downto 0);
    y_3: out std_logic_vector(25 downto 0);
    y_4: out std_logic_vector(24 downto 0);
    y_5: out std_logic_vector(25 downto 0);
    y_6: out std_logic_vector(24 downto 0);
    y_7: out std_logic_vector(24 downto 0);
    y_8: out std_logic_vector(25 downto 0);
    y_9: out std_logic_vector(24 downto 0);
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
  signal c_1: signed(22 downto 0);
  signal c_1_i0_resize: signed(22 downto 0);
  signal c_1_i1_resize: signed(22 downto 0);
  signal c_1_i0_shift: signed(22 downto 0);
  signal c_1_i1_shift: signed(22 downto 0);
  signal c_1_arith: signed(22 downto 0);
  signal c_1_oshift: signed(22 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(24 downto 0);
  signal c_2_i0_resize: signed(24 downto 0);
  signal c_2_i1_resize: signed(24 downto 0);
  signal c_2_i0_shift: signed(24 downto 0);
  signal c_2_i1_shift: signed(24 downto 0);
  signal c_2_arith: signed(24 downto 0);
  signal c_2_oshift: signed(24 downto 0);
  signal c_3: signed(26 downto 0);
  signal c_3_2_2_False_resize: signed(26 downto 0);
  signal c_3_2_2_False_shift: signed(26 downto 0);
  signal c_3_2_0_False_resize: signed(26 downto 0);
  signal c_3_2_0_False_shift: signed(26 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(24 downto 0);
  signal c_4_1_3_False_resize: signed(24 downto 0);
  signal c_4_1_3_False_shift: signed(24 downto 0);
  signal c_4_1_0_False_resize: signed(24 downto 0);
  signal c_4_1_0_False_shift: signed(24 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(23 downto 0);
  signal c_5_i0_resize: signed(23 downto 0);
  signal c_5_i1_resize: signed(23 downto 0);
  signal c_5_i0_shift: signed(23 downto 0);
  signal c_5_i1_shift: signed(23 downto 0);
  signal c_5_arith: signed(23 downto 0);
  signal c_5_oshift: signed(23 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(18 downto 0);
  signal c_6_i0_resize: signed(18 downto 0);
  signal c_6_i1_resize: signed(18 downto 0);
  signal c_6_i0_shift: signed(18 downto 0);
  signal c_6_i1_shift: signed(18 downto 0);
  signal c_6_arith: signed(18 downto 0);
  signal c_6_oshift: signed(18 downto 0);
  signal c_7: signed(18 downto 0);
  signal c_7_i0_resize: signed(18 downto 0);
  signal c_7_i1_resize: signed(18 downto 0);
  signal c_7_i0_shift: signed(18 downto 0);
  signal c_7_i1_shift: signed(18 downto 0);
  signal c_7_arith: signed(18 downto 0);
  signal c_7_oshift: signed(18 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_i0_resize: signed(22 downto 0);
  signal c_8_i1_resize: signed(22 downto 0);
  signal c_8_i0_shift: signed(22 downto 0);
  signal c_8_i1_shift: signed(22 downto 0);
  signal c_8_arith: signed(22 downto 0);
  signal c_8_oshift: signed(22 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(21 downto 0);
  signal c_9_i0_resize: signed(21 downto 0);
  signal c_9_i1_resize: signed(21 downto 0);
  signal c_9_i0_shift: signed(21 downto 0);
  signal c_9_i1_shift: signed(21 downto 0);
  signal c_9_arith: signed(21 downto 0);
  signal c_9_oshift: signed(21 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(23 downto 0);
  signal c_10_0_8_False_resize: signed(23 downto 0);
  signal c_10_0_8_False_shift: signed(23 downto 0);
  signal c_10_0_0_False_resize: signed(23 downto 0);
  signal c_10_0_0_False_shift: signed(23 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(17 downto 0);
  signal c_11_0_0_False_resize: signed(17 downto 0);
  signal c_11_0_0_False_shift: signed(17 downto 0);
  signal c_11_0_2_False_resize: signed(17 downto 0);
  signal c_11_0_2_False_shift: signed(17 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(24 downto 0);
  signal c_12_i0_resize: signed(24 downto 0);
  signal c_12_i1_resize: signed(24 downto 0);
  signal c_12_i0_shift: signed(24 downto 0);
  signal c_12_i1_shift: signed(24 downto 0);
  signal c_12_arith: signed(24 downto 0);
  signal c_12_oshift: signed(24 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_14: signed(21 downto 0);
  signal c_14_9_0_False_resize: signed(21 downto 0);
  signal c_14_9_0_False_shift: signed(21 downto 0);
  signal c_14_7_3_False_resize: signed(21 downto 0);
  signal c_14_7_3_False_shift: signed(21 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(26 downto 0);
  signal c_15_6_0_False_resize: signed(26 downto 0);
  signal c_15_6_0_False_shift: signed(26 downto 0);
  signal c_15_1_4_False_resize: signed(26 downto 0);
  signal c_15_1_4_False_shift: signed(26 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(25 downto 0);
  signal c_16_i1_resize: signed(25 downto 0);
  signal c_16_i0_shift: signed(25 downto 0);
  signal c_16_i1_shift: signed(25 downto 0);
  signal c_16_arith: signed(25 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(24 downto 0);
  signal c_17_6_3_False_resize: signed(24 downto 0);
  signal c_17_6_3_False_shift: signed(24 downto 0);
  signal c_17_2_0_False_resize: signed(24 downto 0);
  signal c_17_2_0_False_shift: signed(24 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_1_1_False_resize: signed(23 downto 0);
  signal c_18_1_1_False_shift: signed(23 downto 0);
  signal c_18_1_0_False_resize: signed(23 downto 0);
  signal c_18_1_0_False_shift: signed(23 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(28 downto 0);
  signal c_19_i0_resize: signed(28 downto 0);
  signal c_19_i1_resize: signed(28 downto 0);
  signal c_19_i0_shift: signed(28 downto 0);
  signal c_19_i1_shift: signed(28 downto 0);
  signal c_19_arith: signed(28 downto 0);
  signal c_19_oshift: signed(28 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(26 downto 0);
  signal c_20_12_0_False_resize: signed(26 downto 0);
  signal c_20_12_0_False_shift: signed(26 downto 0);
  signal c_20_12_2_False_resize: signed(26 downto 0);
  signal c_20_12_2_False_shift: signed(26 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_i0_resize: signed(25 downto 0);
  signal c_21_i1_resize: signed(25 downto 0);
  signal c_21_i0_shift: signed(25 downto 0);
  signal c_21_i1_shift: signed(25 downto 0);
  signal c_21_arith: signed(25 downto 0);
  signal c_21_oshift: signed(25 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_i0_resize: signed(29 downto 0);
  signal c_22_i1_resize: signed(29 downto 0);
  signal c_22_i0_shift: signed(29 downto 0);
  signal c_22_i1_shift: signed(29 downto 0);
  signal c_22_arith: signed(29 downto 0);
  signal c_22_oshift: signed(25 downto 0);
  signal c_23: signed(19 downto 0);
  signal c_23_i0_resize: signed(19 downto 0);
  signal c_23_i1_resize: signed(19 downto 0);
  signal c_23_i0_shift: signed(19 downto 0);
  signal c_23_i1_shift: signed(19 downto 0);
  signal c_23_arith: signed(19 downto 0);
  signal c_23_oshift: signed(19 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(23 downto 0);
  signal c_24_12_1_False_resize: signed(23 downto 0);
  signal c_24_12_1_False_shift: signed(23 downto 0);
  signal c_24_13_0_False_resize: signed(23 downto 0);
  signal c_24_13_0_False_shift: signed(23 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(24 downto 0);
  signal c_25_i0_resize: signed(24 downto 0);
  signal c_25_i1_resize: signed(24 downto 0);
  signal c_25_i0_shift: signed(24 downto 0);
  signal c_25_i1_shift: signed(24 downto 0);
  signal c_25_arith: signed(24 downto 0);
  signal c_25_oshift: signed(24 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_12_1_False_resize: signed(25 downto 0);
  signal c_26_12_1_False_shift: signed(25 downto 0);
  signal c_26_13_0_False_resize: signed(25 downto 0);
  signal c_26_13_0_False_shift: signed(25 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(24 downto 0);
  signal c_27_12_0_False_resize: signed(24 downto 0);
  signal c_27_12_0_False_shift: signed(24 downto 0);
  signal c_27_13_0_False_resize: signed(24 downto 0);
  signal c_27_13_0_False_shift: signed(24 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(26 downto 0);
  signal c_28_i0_resize: signed(26 downto 0);
  signal c_28_i1_resize: signed(26 downto 0);
  signal c_28_i0_shift: signed(26 downto 0);
  signal c_28_i1_shift: signed(26 downto 0);
  signal c_28_arith: signed(26 downto 0);
  signal c_28_oshift: signed(26 downto 0);
  signal c_29: signed(16 downto 0);
  signal c_29_0_1_False_resize: signed(16 downto 0);
  signal c_29_0_1_False_shift: signed(16 downto 0);
  signal c_29_0_0_False_resize: signed(16 downto 0);
  signal c_29_0_0_False_shift: signed(16 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(22 downto 0);
  signal c_30_i0_resize: signed(22 downto 0);
  signal c_30_i1_resize: signed(22 downto 0);
  signal c_30_i0_shift: signed(22 downto 0);
  signal c_30_i1_shift: signed(22 downto 0);
  signal c_30_arith: signed(22 downto 0);
  signal c_30_oshift: signed(22 downto 0);
  signal c_31: signed(27 downto 0);
  signal c_31_i0_resize: signed(27 downto 0);
  signal c_31_i1_resize: signed(27 downto 0);
  signal c_31_i0_shift: signed(27 downto 0);
  signal c_31_i1_shift: signed(27 downto 0);
  signal c_31_arith: signed(27 downto 0);
  signal c_31_oshift: signed(27 downto 0);
  signal c_32: signed(21 downto 0);
  signal c_32_9_1_False_resize: signed(21 downto 0);
  signal c_32_9_1_False_shift: signed(21 downto 0);
  signal c_32_23_0_False_resize: signed(21 downto 0);
  signal c_32_23_0_False_shift: signed(21 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(18 downto 0);
  signal c_34: signed(22 downto 0);
  signal c_34_i0_resize: signed(22 downto 0);
  signal c_34_i1_resize: signed(22 downto 0);
  signal c_34_i0_shift: signed(22 downto 0);
  signal c_34_i1_shift: signed(22 downto 0);
  signal c_34_arith: signed(22 downto 0);
  signal c_34_oshift: signed(22 downto 0);
  signal c_35: signed(24 downto 0);
  signal c_35_6_0_False_resize: signed(24 downto 0);
  signal c_35_6_0_False_shift: signed(24 downto 0);
  signal c_35_9_4_False_resize: signed(24 downto 0);
  signal c_35_9_4_False_shift: signed(24 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(19 downto 0);
  signal c_36_7_1_False_resize: signed(19 downto 0);
  signal c_36_7_1_False_shift: signed(19 downto 0);
  signal c_36_7_0_False_resize: signed(19 downto 0);
  signal c_36_7_0_False_shift: signed(19 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(24 downto 0);
  signal c_37_i0_resize: signed(24 downto 0);
  signal c_37_i1_resize: signed(24 downto 0);
  signal c_37_i0_shift: signed(24 downto 0);
  signal c_37_i1_shift: signed(24 downto 0);
  signal c_37_arith: signed(24 downto 0);
  signal c_37_oshift: signed(24 downto 0);
  signal c_37_sub_sel: std_logic;
  signal c_38: signed(21 downto 0);
  signal c_38_i0_resize: signed(21 downto 0);
  signal c_38_i1_resize: signed(21 downto 0);
  signal c_38_i0_shift: signed(21 downto 0);
  signal c_38_i1_shift: signed(21 downto 0);
  signal c_38_arith: signed(21 downto 0);
  signal c_38_oshift: signed(21 downto 0);
  signal c_38_sub_sel: std_logic;
  signal c_39: signed(23 downto 0);
  signal c_39_7_0_False_resize: signed(23 downto 0);
  signal c_39_7_0_False_shift: signed(23 downto 0);
  signal c_39_38_2_False_resize: signed(23 downto 0);
  signal c_39_38_2_False_shift: signed(23 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(24 downto 0);
  signal c_40_7_6_False_resize: signed(24 downto 0);
  signal c_40_7_6_False_shift: signed(24 downto 0);
  signal c_40_9_0_False_resize: signed(24 downto 0);
  signal c_40_9_0_False_shift: signed(24 downto 0);
  signal c_40_sel: std_logic_vector(0 downto 0);
  signal c_41: signed(24 downto 0);
  signal c_41_i0_resize: signed(24 downto 0);
  signal c_41_i1_resize: signed(24 downto 0);
  signal c_41_i0_shift: signed(24 downto 0);
  signal c_41_i1_shift: signed(24 downto 0);
  signal c_41_arith: signed(24 downto 0);
  signal c_41_oshift: signed(24 downto 0);
  signal c_42: signed(22 downto 0);
  signal c_42_7_0_False_resize: signed(22 downto 0);
  signal c_42_7_0_False_shift: signed(22 downto 0);
  signal c_42_1_0_False_resize: signed(22 downto 0);
  signal c_42_1_0_False_shift: signed(22 downto 0);
  signal c_42_sel: std_logic_vector(0 downto 0);
  signal c_43: signed(19 downto 0);
  signal c_43_7_1_False_resize: signed(19 downto 0);
  signal c_43_7_1_False_shift: signed(19 downto 0);
  signal c_43_7_0_False_resize: signed(19 downto 0);
  signal c_43_7_0_False_shift: signed(19 downto 0);
  signal c_43_sel: std_logic_vector(0 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_i0_resize: signed(23 downto 0);
  signal c_44_i1_resize: signed(23 downto 0);
  signal c_44_i0_shift: signed(23 downto 0);
  signal c_44_i1_shift: signed(23 downto 0);
  signal c_44_arith: signed(23 downto 0);
  signal c_44_oshift: signed(23 downto 0);
  signal c_44_sub_sel: std_logic;
  signal c_45: signed(25 downto 0);
  signal c_45_0_0_False_resize: signed(25 downto 0);
  signal c_45_0_0_False_shift: signed(25 downto 0);
  signal c_45_0_10_False_resize: signed(25 downto 0);
  signal c_45_0_10_False_shift: signed(25 downto 0);
  signal c_45_sel: std_logic_vector(0 downto 0);
  signal c_46: signed(24 downto 0);
  signal c_46_i0_resize: signed(24 downto 0);
  signal c_46_i1_resize: signed(24 downto 0);
  signal c_46_i0_shift: signed(24 downto 0);
  signal c_46_i1_shift: signed(24 downto 0);
  signal c_46_arith: signed(24 downto 0);
  signal c_46_oshift: signed(24 downto 0);
  signal c_47: signed(20 downto 0);
  signal c_47_23_2_False_resize: signed(20 downto 0);
  signal c_47_23_2_False_shift: signed(20 downto 0);
  signal c_47_6_0_False_resize: signed(20 downto 0);
  signal c_47_6_0_False_shift: signed(20 downto 0);
  signal c_47_sel: std_logic_vector(0 downto 0);
  signal c_48: signed(19 downto 0);
  signal c_48_23_0_False_resize: signed(19 downto 0);
  signal c_48_23_0_False_shift: signed(19 downto 0);
  signal c_48_6_1_False_resize: signed(19 downto 0);
  signal c_48_6_1_False_shift: signed(19 downto 0);
  signal c_48_sel: std_logic_vector(0 downto 0);
  signal c_49: signed(21 downto 0);
  signal c_49_i0_resize: signed(21 downto 0);
  signal c_49_i1_resize: signed(21 downto 0);
  signal c_49_i0_shift: signed(21 downto 0);
  signal c_49_i1_shift: signed(21 downto 0);
  signal c_49_arith: signed(21 downto 0);
  signal c_49_oshift: signed(21 downto 0);
  signal c_49_sub_sel: std_logic;
  signal c_50: signed(26 downto 0);
  signal c_50_i0_resize: signed(26 downto 0);
  signal c_50_i1_resize: signed(26 downto 0);
  signal c_50_i0_shift: signed(26 downto 0);
  signal c_50_i1_shift: signed(26 downto 0);
  signal c_50_arith: signed(26 downto 0);
  signal c_50_oshift: signed(26 downto 0);
  signal c_51: signed(24 downto 0);
  signal c_51_12_3_False_resize: signed(24 downto 0);
  signal c_51_12_3_False_shift: signed(24 downto 0);
  signal c_51_30_0_False_resize: signed(24 downto 0);
  signal c_51_30_0_False_shift: signed(24 downto 0);
  signal c_51_sel: std_logic_vector(0 downto 0);
  signal c_52: signed(24 downto 0);
  signal c_52_i0_resize: signed(24 downto 0);
  signal c_52_i1_resize: signed(24 downto 0);
  signal c_52_i0_shift: signed(24 downto 0);
  signal c_52_i1_shift: signed(24 downto 0);
  signal c_52_arith: signed(24 downto 0);
  signal c_52_oshift: signed(24 downto 0);
  signal c_52_sub_sel: std_logic;
  signal c_53: signed(25 downto 0);
  signal c_53_46_0_False_resize: signed(25 downto 0);
  signal c_53_46_0_False_shift: signed(25 downto 0);
  signal c_53_46_1_False_resize: signed(25 downto 0);
  signal c_53_46_1_False_shift: signed(25 downto 0);
  signal c_53_sel: std_logic_vector(0 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_54_i0_resize: signed(25 downto 0);
  signal c_54_i1_resize: signed(25 downto 0);
  signal c_54_i0_shift: signed(25 downto 0);
  signal c_54_i1_shift: signed(25 downto 0);
  signal c_54_arith: signed(25 downto 0);
  signal c_54_oshift: signed(25 downto 0);
  signal c_55: signed(27 downto 0);
  signal c_56: signed(24 downto 0);
  signal c_56_i0_resize: signed(27 downto 0);
  signal c_56_i1_resize: signed(27 downto 0);
  signal c_56_i0_shift: signed(27 downto 0);
  signal c_56_i1_shift: signed(27 downto 0);
  signal c_56_arith: signed(27 downto 0);
  signal c_56_oshift: signed(24 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_57_12_0_False_resize: signed(25 downto 0);
  signal c_57_12_0_False_shift: signed(25 downto 0);
  signal c_57_13_2_False_resize: signed(25 downto 0);
  signal c_57_13_2_False_shift: signed(25 downto 0);
  signal c_57_sel: std_logic_vector(0 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_58_i0_resize: signed(25 downto 0);
  signal c_58_i1_resize: signed(25 downto 0);
  signal c_58_i0_shift: signed(25 downto 0);
  signal c_58_i1_shift: signed(25 downto 0);
  signal c_58_arith: signed(25 downto 0);
  signal c_58_oshift: signed(25 downto 0);
  signal c_59: signed(15 downto 0);
  signal c_60: signed(25 downto 0);
  signal c_60_i0_resize: signed(25 downto 0);
  signal c_60_i1_resize: signed(25 downto 0);
  signal c_60_i0_shift: signed(25 downto 0);
  signal c_60_i1_shift: signed(25 downto 0);
  signal c_60_arith: signed(25 downto 0);
  signal c_60_oshift: signed(25 downto 0);
  signal c_61: signed(20 downto 0);
  signal c_61_9_0_False_resize: signed(20 downto 0);
  signal c_61_9_0_False_shift: signed(20 downto 0);
  signal c_61_23_0_False_resize: signed(20 downto 0);
  signal c_61_23_0_False_shift: signed(20 downto 0);
  signal c_61_sel: std_logic_vector(0 downto 0);
  signal c_62: signed(25 downto 0);
  signal c_62_i0_resize: signed(25 downto 0);
  signal c_62_i1_resize: signed(25 downto 0);
  signal c_62_i0_shift: signed(25 downto 0);
  signal c_62_i1_shift: signed(25 downto 0);
  signal c_62_arith: signed(25 downto 0);
  signal c_62_oshift: signed(25 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_63_resize: signed(25 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_65: signed(25 downto 0);
  signal c_65_resize: signed(25 downto 0);
  signal c_66: signed(25 downto 0);
  signal c_66_resize: signed(25 downto 0);
  signal c_67: signed(25 downto 0);
  signal c_67_resize: signed(25 downto 0);
  signal c_68: signed(24 downto 0);
  signal c_68_resize: signed(24 downto 0);
  signal c_69: signed(25 downto 0);
  signal c_69_resize: signed(25 downto 0);
  signal c_70: signed(24 downto 0);
  signal c_70_56_0_False_resize: signed(24 downto 0);
  signal c_70_56_0_False_shift: signed(24 downto 0);
  signal c_70_44_0_False_resize: signed(24 downto 0);
  signal c_70_44_0_False_shift: signed(24 downto 0);
  signal c_70_sel: std_logic_vector(0 downto 0);
  signal c_71: signed(24 downto 0);
  signal c_71_resize: signed(24 downto 0);
  signal c_72: signed(24 downto 0);
  signal c_72_37_0_False_resize: signed(24 downto 0);
  signal c_72_37_0_False_shift: signed(24 downto 0);
  signal c_72_49_0_False_resize: signed(24 downto 0);
  signal c_72_49_0_False_shift: signed(24 downto 0);
  signal c_72_sel: std_logic_vector(0 downto 0);
  signal c_73: signed(24 downto 0);
  signal c_73_resize: signed(24 downto 0);
  signal c_74: signed(25 downto 0);
  signal c_74_resize: signed(25 downto 0);
  signal c_75: signed(24 downto 0);
  signal c_76: signed(24 downto 0);
  signal c_76_resize: signed(24 downto 0);
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
  -- output node 0 with id 63
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_63);
    end if;
  end process;
  -- output node 1 with id 65
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_65);
    end if;
  end process;
  -- output node 2 with id 66
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_66);
    end if;
  end process;
  -- output node 3 with id 67
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_67);
    end if;
  end process;
  -- output node 4 with id 68
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_68);
    end if;
  end process;
  -- output node 5 with id 69
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_69);
    end if;
  end process;
  -- output node 6 with id 71
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_71);
    end if;
  end process;
  -- output node 7 with id 73
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_73);
    end if;
  end process;
  -- output node 8 with id 74
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_74);
    end if;
  end process;
  -- output node 9 with id 76
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_76);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[65], [-63]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 6,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 2 and associated fundamentals [[-508], [-508]]
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 25,
      s_x_i => 2,
      s_y_i => 9,
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
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_2_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[-508], [-2032]]
  c_3_2_2_False_resize <= resize(c_2, 27);
  c_3_2_2_False_shift <= shift_left(c_3_2_2_False_resize, 2);
  c_3_2_0_False_resize <= resize(c_2, 27);
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  with config_select_2 select c_3_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_2_2_False_shift;
        when others => c_3 <= c_3_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[65], [-504]]
  c_4_1_3_False_resize <= resize(c_1, 25);
  c_4_1_3_False_shift <= shift_left(c_4_1_3_False_resize, 3);
  c_4_1_0_False_resize <= resize(c_1, 25);
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  with config_select_2 select c_4_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_1_3_False_shift;
        when others => c_4 <= c_4_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[-248], [-16]]
  with config_select_3 select c_5_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 25,
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
      sub_i => c_5_sub_sel,
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 6 and associated fundamentals [[7], [7]]
  inst_adder_node_6: entity work.adder_node
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
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 7 and associated fundamentals [[5], [5]]
  inst_adder_node_7: entity work.adder_node
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
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 8 and associated fundamentals [[192], [-64]]
  with config_select_1 select c_8_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 23,
      s_x_i => 6,
      s_y_i => 7,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_8_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 9 and associated fundamentals [[34], [30]]
  with config_select_1 select c_9_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 22,
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
      sub_i => c_9_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 10 and associated fundamentals [[1], [256]]
  c_10_0_8_False_resize <= resize(c_0, 24);
  c_10_0_8_False_shift <= shift_left(c_10_0_8_False_resize, 8);
  c_10_0_0_False_resize <= resize(c_0, 24);
  c_10_0_0_False_shift <= shift_left(c_10_0_0_False_resize, 0);
  with config_select_1 select c_10_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_0_8_False_shift;
        when others => c_10 <= c_10_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 11 and associated fundamentals [[4], [1]]
  c_11_0_0_False_resize <= resize(c_0, 18);
  c_11_0_0_False_shift <= shift_left(c_11_0_0_False_resize, 0);
  c_11_0_2_False_resize <= resize(c_0, 18);
  c_11_0_2_False_shift <= shift_left(c_11_0_2_False_resize, 2);
  with config_select_1 select c_11_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_0_0_False_shift;
        when others => c_11 <= c_11_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 12 and associated fundamentals [[33], [264]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 18,
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
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 13 and associated fundamentals [[217], [217]]
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 24,
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
      x_i => c_6,
      y_i => c_6,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 14 and associated fundamentals [[40], [30]]
  c_14_9_0_False_resize <= c_9;
  c_14_9_0_False_shift <= shift_left(c_14_9_0_False_resize, 0);
  c_14_7_3_False_resize <= resize(c_7, 22);
  c_14_7_3_False_shift <= shift_left(c_14_7_3_False_resize, 3);
  with config_select_2 select c_14_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_9_0_False_shift;
        when others => c_14 <= c_14_7_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 15 and associated fundamentals [[1040], [7]]
  c_15_6_0_False_resize <= resize(c_6, 27);
  c_15_6_0_False_shift <= shift_left(c_15_6_0_False_resize, 0);
  c_15_1_4_False_resize <= resize(c_1, 27);
  c_15_1_4_False_shift <= shift_left(c_15_1_4_False_resize, 4);
  with config_select_2 select c_15_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_6_0_False_shift;
        when others => c_15 <= c_15_1_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 16 and associated fundamentals [[240], [967]]
  with config_select_3 select c_16_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 27,
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
  -- node of type 'mux' in stage 2 with id 17 and associated fundamentals [[56], [-508]]
  c_17_6_3_False_resize <= resize(c_6, 25);
  c_17_6_3_False_shift <= shift_left(c_17_6_3_False_resize, 3);
  c_17_2_0_False_resize <= c_2;
  c_17_2_0_False_shift <= shift_left(c_17_2_0_False_resize, 0);
  with config_select_2 select c_17_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_6_3_False_shift;
        when others => c_17 <= c_17_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 18 and associated fundamentals [[130], [-63]]
  c_18_1_1_False_resize <= resize(c_1, 24);
  c_18_1_1_False_shift <= shift_left(c_18_1_1_False_resize, 1);
  c_18_1_0_False_resize <= resize(c_1, 24);
  c_18_1_0_False_shift <= shift_left(c_18_1_0_False_resize, 0);
  with config_select_2 select c_18_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_1_1_False_shift;
        when others => c_18 <= c_18_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 19 and associated fundamentals [[4272], [1000]]
  with config_select_3 select c_19_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 24,
      w_o => 29,
      s_x_i => 1,
      s_y_i => 5,
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
      c_19 <= c_19_oshift(28 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 20 and associated fundamentals [[33], [1056]]
  c_20_12_0_False_resize <= resize(c_12, 27);
  c_20_12_0_False_shift <= shift_left(c_20_12_0_False_resize, 0);
  c_20_12_2_False_resize <= resize(c_12, 27);
  c_20_12_2_False_shift <= shift_left(c_20_12_2_False_resize, 2);
  with config_select_3 select c_20_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_12_0_False_shift;
        when others => c_20 <= c_20_12_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 21 and associated fundamentals [[447], [878]]
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 27,
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
      x_i => c_16,
      y_i => c_20,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 22 and associated fundamentals [[534], [125]]
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 29,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 4,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_19,
      y_i => c_19,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 23 and associated fundamentals [[9], [7]]
  with config_select_1 select c_23_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 16,
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
      sub_i => c_23_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 24 and associated fundamentals [[66], [217]]
  c_24_12_1_False_resize <= c_12(23 downto 0);
  c_24_12_1_False_shift <= shift_left(c_24_12_1_False_resize, 1);
  c_24_13_0_False_resize <= c_13;
  c_24_13_0_False_shift <= shift_left(c_24_13_0_False_resize, 0);
  with config_select_3 select c_24_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_12_1_False_shift;
        when others => c_24 <= c_24_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 25 and associated fundamentals [[-314], [-233]]
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
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
      x_i => c_5,
      y_i => c_24,
      z_o => c_25_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 26 and associated fundamentals [[217], [528]]
  c_26_12_1_False_resize <= resize(c_12, 26);
  c_26_12_1_False_shift <= shift_left(c_26_12_1_False_resize, 1);
  c_26_13_0_False_resize <= resize(c_13, 26);
  c_26_13_0_False_shift <= shift_left(c_26_13_0_False_resize, 0);
  with config_select_3 select c_26_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_12_1_False_shift;
        when others => c_26 <= c_26_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 27 and associated fundamentals [[217], [264]]
  c_27_12_0_False_resize <= c_12;
  c_27_12_0_False_shift <= shift_left(c_27_12_0_False_resize, 0);
  c_27_13_0_False_resize <= resize(c_13, 25);
  c_27_13_0_False_shift <= shift_left(c_27_13_0_False_resize, 0);
  with config_select_3 select c_27_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_12_0_False_shift;
        when others => c_27 <= c_27_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 28 and associated fundamentals [[0], [1056]]
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
      w_o => 27,
      s_x_i => 2,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_26,
      y_i => c_27,
      z_o => c_28_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_28_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 29 and associated fundamentals [[1], [2]]
  c_29_0_1_False_resize <= resize(c_0, 17);
  c_29_0_1_False_shift <= shift_left(c_29_0_1_False_resize, 1);
  c_29_0_0_False_resize <= resize(c_0, 17);
  c_29_0_0_False_shift <= shift_left(c_29_0_0_False_resize, 0);
  with config_select_1 select c_29_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_0_1_False_shift;
        when others => c_29 <= c_29_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 30 and associated fundamentals [[104], [120]]
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 17,
      w_o => 23,
      s_x_i => 3,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_23,
      y_i => c_29,
      z_o => c_30_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_30_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 31 and associated fundamentals [[2560], [2560]]
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 28,
      s_x_i => 11,
      s_y_i => 9,
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
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(27 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 32 and associated fundamentals [[9], [60]]
  c_32_9_1_False_resize <= c_9;
  c_32_9_1_False_shift <= shift_left(c_32_9_1_False_resize, 1);
  c_32_23_0_False_resize <= resize(c_23, 22);
  c_32_23_0_False_shift <= shift_left(c_32_23_0_False_resize, 0);
  with config_select_2 select c_32_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "0" => c_32 <= c_32_9_1_False_shift;
        when others => c_32 <= c_32_23_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 33 and associated fundamentals [[7], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_6 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 34 and associated fundamentals [[11], [113]]
  inst_adder_node_34: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 19,
      w_o => 23,
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
      x_i => c_32,
      y_i => c_33,
      z_o => c_34_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_34_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 35 and associated fundamentals [[7], [480]]
  c_35_6_0_False_resize <= resize(c_6, 25);
  c_35_6_0_False_shift <= shift_left(c_35_6_0_False_resize, 0);
  c_35_9_4_False_resize <= resize(c_9, 25);
  c_35_9_4_False_shift <= shift_left(c_35_9_4_False_resize, 4);
  with config_select_2 select c_35_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_6_0_False_shift;
        when others => c_35 <= c_35_9_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 36 and associated fundamentals [[5], [10]]
  c_36_7_1_False_resize <= resize(c_7, 20);
  c_36_7_1_False_shift <= shift_left(c_36_7_1_False_resize, 1);
  c_36_7_0_False_resize <= resize(c_7, 20);
  c_36_7_0_False_shift <= shift_left(c_36_7_0_False_resize, 0);
  with config_select_2 select c_36_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "0" => c_36 <= c_36_7_1_False_shift;
        when others => c_36 <= c_36_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 37 and associated fundamentals [[17], [460]]
  with config_select_3 select c_37_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_37: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 20,
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
  -- node of type 'add_sub' in stage 1 with id 38 and associated fundamentals [[-62], [66]]
  with config_select_1 select c_38_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_38: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 22,
      s_x_i => 1,
      s_y_i => 6,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_38_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_38_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_38_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 39 and associated fundamentals [[-248], [5]]
  c_39_7_0_False_resize <= resize(c_7, 24);
  c_39_7_0_False_shift <= shift_left(c_39_7_0_False_resize, 0);
  c_39_38_2_False_resize <= resize(c_38, 24);
  c_39_38_2_False_shift <= shift_left(c_39_38_2_False_resize, 2);
  with config_select_2 select c_39_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "0" => c_39 <= c_39_7_0_False_shift;
        when others => c_39 <= c_39_38_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 40 and associated fundamentals [[34], [320]]
  c_40_7_6_False_resize <= resize(c_7, 25);
  c_40_7_6_False_shift <= shift_left(c_40_7_6_False_resize, 6);
  c_40_9_0_False_resize <= resize(c_9, 25);
  c_40_9_0_False_shift <= shift_left(c_40_9_0_False_resize, 0);
  with config_select_2 select c_40_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "0" => c_40 <= c_40_7_6_False_shift;
        when others => c_40 <= c_40_9_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 41 and associated fundamentals [[-282], [-315]]
  inst_adder_node_41: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      x_i => c_39,
      y_i => c_40,
      z_o => c_41_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_41_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 42 and associated fundamentals [[65], [5]]
  c_42_7_0_False_resize <= resize(c_7, 23);
  c_42_7_0_False_shift <= shift_left(c_42_7_0_False_resize, 0);
  c_42_1_0_False_resize <= c_1;
  c_42_1_0_False_shift <= shift_left(c_42_1_0_False_resize, 0);
  with config_select_2 select c_42_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "0" => c_42 <= c_42_7_0_False_shift;
        when others => c_42 <= c_42_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 43 and associated fundamentals [[10], [5]]
  c_43_7_1_False_resize <= resize(c_7, 20);
  c_43_7_1_False_shift <= shift_left(c_43_7_1_False_resize, 1);
  c_43_7_0_False_resize <= resize(c_7, 20);
  c_43_7_0_False_shift <= shift_left(c_43_7_0_False_resize, 0);
  with config_select_2 select c_43_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "0" => c_43 <= c_43_7_1_False_shift;
        when others => c_43 <= c_43_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 44 and associated fundamentals [[-190], [170]]
  with config_select_3 select c_44_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_44: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 20,
      w_o => 24,
      s_x_i => 1,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_44_sub_sel,
      x_i => c_42,
      y_i => c_43,
      z_o => c_44_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_44_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 45 and associated fundamentals [[1024], [1]]
  c_45_0_0_False_resize <= resize(c_0, 26);
  c_45_0_0_False_shift <= shift_left(c_45_0_0_False_resize, 0);
  c_45_0_10_False_resize <= resize(c_0, 26);
  c_45_0_10_False_shift <= shift_left(c_45_0_10_False_resize, 10);
  with config_select_1 select c_45_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "0" => c_45 <= c_45_0_0_False_shift;
        when others => c_45 <= c_45_0_10_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 46 and associated fundamentals [[-256], [-257]]
  inst_adder_node_46: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 26,
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
      x_i => c_8,
      y_i => c_45,
      z_o => c_46_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_46_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 47 and associated fundamentals [[7], [28]]
  c_47_23_2_False_resize <= resize(c_23, 21);
  c_47_23_2_False_shift <= shift_left(c_47_23_2_False_resize, 2);
  c_47_6_0_False_resize <= resize(c_6, 21);
  c_47_6_0_False_shift <= shift_left(c_47_6_0_False_resize, 0);
  with config_select_2 select c_47_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "0" => c_47 <= c_47_23_2_False_shift;
        when others => c_47 <= c_47_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 48 and associated fundamentals [[14], [7]]
  c_48_23_0_False_resize <= c_23;
  c_48_23_0_False_shift <= shift_left(c_48_23_0_False_resize, 0);
  c_48_6_1_False_resize <= resize(c_6, 20);
  c_48_6_1_False_shift <= shift_left(c_48_6_1_False_resize, 1);
  with config_select_2 select c_48_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "0" => c_48 <= c_48_23_0_False_shift;
        when others => c_48 <= c_48_6_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 49 and associated fundamentals [[35], [14]]
  with config_select_3 select c_49_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_49: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 20,
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
      sub_i => c_49_sub_sel,
      x_i => c_47,
      y_i => c_48,
      z_o => c_49_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_49_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 50 and associated fundamentals [[50], [1137]]
  inst_adder_node_50: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 26,
      w_o => 27,
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
      x_i => c_44,
      y_i => c_16,
      z_o => c_50_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_50_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 51 and associated fundamentals [[264], [120]]
  c_51_12_3_False_resize <= c_12;
  c_51_12_3_False_shift <= shift_left(c_51_12_3_False_resize, 3);
  c_51_30_0_False_resize <= resize(c_30, 25);
  c_51_30_0_False_shift <= shift_left(c_51_30_0_False_resize, 0);
  with config_select_3 select c_51_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_51_sel is
        when "0" => c_51 <= c_51_12_3_False_shift;
        when others => c_51 <= c_51_30_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 52 and associated fundamentals [[286], [106]]
  with config_select_4 select c_52_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_52: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 25,
      w_o => 25,
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
      sub_i => c_52_sub_sel,
      x_i => c_34,
      y_i => c_51,
      z_o => c_52_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_52_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 53 and associated fundamentals [[-512], [-257]]
  c_53_46_0_False_resize <= resize(c_46, 26);
  c_53_46_0_False_shift <= shift_left(c_53_46_0_False_resize, 0);
  c_53_46_1_False_resize <= resize(c_46, 26);
  c_53_46_1_False_shift <= shift_left(c_53_46_1_False_resize, 1);
  with config_select_3 select c_53_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_53_sel is
        when "0" => c_53 <= c_53_46_0_False_shift;
        when others => c_53 <= c_53_46_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 54 and associated fundamentals [[-529], [-717]]
  inst_adder_node_54: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
      w_o => 26,
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
      x_i => c_53,
      y_i => c_37,
      z_o => c_54_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_54_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 55 and associated fundamentals [[2560], [2560]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_31 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 56 and associated fundamentals [[307], [305]]
  inst_adder_node_56: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 23,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 3,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_55,
      y_i => c_30,
      z_o => c_56_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_56_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 57 and associated fundamentals [[33], [868]]
  c_57_12_0_False_resize <= resize(c_12, 26);
  c_57_12_0_False_shift <= shift_left(c_57_12_0_False_resize, 0);
  c_57_13_2_False_resize <= resize(c_13, 26);
  c_57_13_2_False_shift <= shift_left(c_57_13_2_False_resize, 2);
  with config_select_3 select c_57_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_57_sel is
        when "0" => c_57 <= c_57_12_0_False_shift;
        when others => c_57 <= c_57_13_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 58 and associated fundamentals [[-223], [-698]]
  inst_adder_node_58: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 26,
      w_o => 26,
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
      x_i => c_44,
      y_i => c_57,
      z_o => c_58_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_58_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 59 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 60 and associated fundamentals [[577], [449]]
  inst_adder_node_60: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 16,
      w_o => 26,
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
      x_i => c_23,
      y_i => c_59,
      z_o => c_60_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_60_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 61 and associated fundamentals [[9], [30]]
  c_61_9_0_False_resize <= c_9(20 downto 0);
  c_61_9_0_False_shift <= shift_left(c_61_9_0_False_resize, 0);
  c_61_23_0_False_resize <= resize(c_23, 21);
  c_61_23_0_False_shift <= shift_left(c_61_23_0_False_resize, 0);
  with config_select_2 select c_61_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_61_sel is
        when "0" => c_61 <= c_61_9_0_False_shift;
        when others => c_61 <= c_61_23_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 62 and associated fundamentals [[613], [569]]
  inst_adder_node_62: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 26,
      w_o => 26,
      s_x_i => 2,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_61,
      y_i => c_60,
      z_o => c_62_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_62_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 63 and associated fundamentals [[447], [878]]
  c_63_resize <= c_21;
  c_63 <= shift_left(c_63_resize, 0);
  -- node of type 'register' in stage 4 with id 64 and associated fundamentals [[613], [569]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_62 & "";
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 65 and associated fundamentals [[613], [569]]
  c_65_resize <= c_64;
  c_65 <= shift_left(c_65_resize, 0);
  -- node of type 'output' in stage 4 with id 66 and associated fundamentals [[223], [698]]
  c_66_resize <= c_58;
  c_66 <= -shift_left(c_66_resize, 0);
  -- node of type 'output' in stage 4 with id 67 and associated fundamentals [[529], [717]]
  c_67_resize <= c_54;
  c_67 <= -shift_left(c_67_resize, 0);
  -- node of type 'output' in stage 4 with id 68 and associated fundamentals [[286], [106]]
  c_68_resize <= c_52;
  c_68 <= shift_left(c_68_resize, 0);
  -- node of type 'output' in stage 4 with id 69 and associated fundamentals [[534], [125]]
  c_69_resize <= c_22;
  c_69 <= shift_left(c_69_resize, 0);
  -- node of type 'mux' in stage 4 with id 70 and associated fundamentals [[307], [170]]
  c_70_56_0_False_resize <= c_56;
  c_70_56_0_False_shift <= shift_left(c_70_56_0_False_resize, 0);
  c_70_44_0_False_resize <= resize(c_44, 25);
  c_70_44_0_False_shift <= shift_left(c_70_44_0_False_resize, 0);
  with config_select_4 select c_70_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_70_sel is
        when "0" => c_70 <= c_70_56_0_False_shift;
        when others => c_70 <= c_70_44_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 71 and associated fundamentals [[307], [170]]
  c_71_resize <= c_70;
  c_71 <= shift_left(c_71_resize, 0);
  -- node of type 'mux' in stage 4 with id 72 and associated fundamentals [[35], [460]]
  c_72_37_0_False_resize <= c_37;
  c_72_37_0_False_shift <= shift_left(c_72_37_0_False_resize, 0);
  c_72_49_0_False_resize <= resize(c_49, 25);
  c_72_49_0_False_shift <= shift_left(c_72_49_0_False_resize, 0);
  with config_select_4 select c_72_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_72_sel is
        when "0" => c_72 <= c_72_37_0_False_shift;
        when others => c_72 <= c_72_49_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 73 and associated fundamentals [[35], [460]]
  c_73_resize <= c_72;
  c_73 <= shift_left(c_73_resize, 0);
  -- node of type 'output' in stage 4 with id 74 and associated fundamentals [[628], [466]]
  c_74_resize <= resize(c_25, 26);
  c_74 <= -shift_left(c_74_resize, 1);
  -- node of type 'register' in stage 4 with id 75 and associated fundamentals [[-282], [-315]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_41 & "";
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 76 and associated fundamentals [[282], [315]]
  c_76_resize <= c_75;
  c_76 <= -shift_left(c_76_resize, 0);
end architecture;
