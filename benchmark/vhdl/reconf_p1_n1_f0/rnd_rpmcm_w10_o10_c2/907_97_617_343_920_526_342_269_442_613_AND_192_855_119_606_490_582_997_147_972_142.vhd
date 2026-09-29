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
    y_4: out std_logic_vector(25 downto 0);
    y_5: out std_logic_vector(25 downto 0);
    y_6: out std_logic_vector(25 downto 0);
    y_7: out std_logic_vector(24 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(16 downto 0);
  signal c_1_0_0_False_resize: signed(16 downto 0);
  signal c_1_0_0_False_shift: signed(16 downto 0);
  signal c_1_0_1_False_resize: signed(16 downto 0);
  signal c_1_0_1_False_shift: signed(16 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(16 downto 0);
  signal c_2_0_1_False_resize: signed(16 downto 0);
  signal c_2_0_1_False_shift: signed(16 downto 0);
  signal c_2_0_0_False_resize: signed(16 downto 0);
  signal c_2_0_0_False_shift: signed(16 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(17 downto 0);
  signal c_3_i0_resize: signed(17 downto 0);
  signal c_3_i1_resize: signed(17 downto 0);
  signal c_3_i0_shift: signed(17 downto 0);
  signal c_3_i1_shift: signed(17 downto 0);
  signal c_3_arith: signed(17 downto 0);
  signal c_3_oshift: signed(17 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(20 downto 0);
  signal c_4_i0_resize: signed(20 downto 0);
  signal c_4_i1_resize: signed(20 downto 0);
  signal c_4_i0_shift: signed(20 downto 0);
  signal c_4_i1_shift: signed(20 downto 0);
  signal c_4_arith: signed(20 downto 0);
  signal c_4_oshift: signed(20 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_5_i0_resize: signed(21 downto 0);
  signal c_5_i1_resize: signed(21 downto 0);
  signal c_5_i0_shift: signed(21 downto 0);
  signal c_5_i1_shift: signed(21 downto 0);
  signal c_5_arith: signed(21 downto 0);
  signal c_5_oshift: signed(21 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(17 downto 0);
  signal c_6_3_0_False_resize: signed(17 downto 0);
  signal c_6_3_0_False_shift: signed(17 downto 0);
  signal c_6_3_1_False_resize: signed(17 downto 0);
  signal c_6_3_1_False_shift: signed(17 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(19 downto 0);
  signal c_7_i0_resize: signed(19 downto 0);
  signal c_7_i1_resize: signed(19 downto 0);
  signal c_7_i0_shift: signed(19 downto 0);
  signal c_7_i1_shift: signed(19 downto 0);
  signal c_7_arith: signed(19 downto 0);
  signal c_7_oshift: signed(19 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(19 downto 0);
  signal c_8_i0_resize: signed(19 downto 0);
  signal c_8_i1_resize: signed(19 downto 0);
  signal c_8_i0_shift: signed(19 downto 0);
  signal c_8_i1_shift: signed(19 downto 0);
  signal c_8_arith: signed(19 downto 0);
  signal c_8_oshift: signed(19 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_9_i0_resize: signed(21 downto 0);
  signal c_9_i1_resize: signed(21 downto 0);
  signal c_9_i0_shift: signed(21 downto 0);
  signal c_9_i1_shift: signed(21 downto 0);
  signal c_9_arith: signed(21 downto 0);
  signal c_9_oshift: signed(21 downto 0);
  signal c_10: signed(24 downto 0);
  signal c_10_3_7_False_resize: signed(24 downto 0);
  signal c_10_3_7_False_shift: signed(24 downto 0);
  signal c_10_3_0_False_resize: signed(24 downto 0);
  signal c_10_3_0_False_shift: signed(24 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(19 downto 0);
  signal c_11_3_0_False_resize: signed(19 downto 0);
  signal c_11_3_0_False_shift: signed(19 downto 0);
  signal c_11_3_2_False_resize: signed(19 downto 0);
  signal c_11_3_2_False_shift: signed(19 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(26 downto 0);
  signal c_12_i0_resize: signed(26 downto 0);
  signal c_12_i1_resize: signed(26 downto 0);
  signal c_12_i0_shift: signed(26 downto 0);
  signal c_12_i1_shift: signed(26 downto 0);
  signal c_12_arith: signed(26 downto 0);
  signal c_12_oshift: signed(26 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(21 downto 0);
  signal c_13_8_1_False_resize: signed(21 downto 0);
  signal c_13_8_1_False_shift: signed(21 downto 0);
  signal c_13_9_0_False_resize: signed(21 downto 0);
  signal c_13_9_0_False_shift: signed(21 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(24 downto 0);
  signal c_14_8_5_False_resize: signed(24 downto 0);
  signal c_14_8_5_False_shift: signed(24 downto 0);
  signal c_14_5_0_False_resize: signed(24 downto 0);
  signal c_14_5_0_False_shift: signed(24 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(24 downto 0);
  signal c_15_i0_resize: signed(24 downto 0);
  signal c_15_i1_resize: signed(24 downto 0);
  signal c_15_i0_shift: signed(24 downto 0);
  signal c_15_i1_shift: signed(24 downto 0);
  signal c_15_arith: signed(24 downto 0);
  signal c_15_oshift: signed(24 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(24 downto 0);
  signal c_16_i0_resize: signed(24 downto 0);
  signal c_16_i1_resize: signed(24 downto 0);
  signal c_16_i0_shift: signed(24 downto 0);
  signal c_16_i1_shift: signed(24 downto 0);
  signal c_16_arith: signed(24 downto 0);
  signal c_16_oshift: signed(24 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_i0_resize: signed(25 downto 0);
  signal c_17_i1_resize: signed(25 downto 0);
  signal c_17_i0_shift: signed(25 downto 0);
  signal c_17_i1_shift: signed(25 downto 0);
  signal c_17_arith: signed(25 downto 0);
  signal c_17_oshift: signed(25 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_18_i0_resize: signed(24 downto 0);
  signal c_18_i1_resize: signed(24 downto 0);
  signal c_18_i0_shift: signed(24 downto 0);
  signal c_18_i1_shift: signed(24 downto 0);
  signal c_18_arith: signed(24 downto 0);
  signal c_18_oshift: signed(24 downto 0);
  signal c_19: signed(21 downto 0);
  signal c_20: signed(20 downto 0);
  signal c_20_8_0_False_resize: signed(20 downto 0);
  signal c_20_8_0_False_shift: signed(20 downto 0);
  signal c_20_5_0_False_resize: signed(20 downto 0);
  signal c_20_5_0_False_shift: signed(20 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(24 downto 0);
  signal c_21_i0_resize: signed(24 downto 0);
  signal c_21_i1_resize: signed(24 downto 0);
  signal c_21_i0_shift: signed(24 downto 0);
  signal c_21_i1_shift: signed(24 downto 0);
  signal c_21_arith: signed(24 downto 0);
  signal c_21_oshift: signed(24 downto 0);
  signal c_22: signed(19 downto 0);
  signal c_22_3_4_False_resize: signed(19 downto 0);
  signal c_22_3_4_False_shift: signed(19 downto 0);
  signal c_22_3_0_False_resize: signed(19 downto 0);
  signal c_22_3_0_False_shift: signed(19 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(29 downto 0);
  signal c_23_i0_resize: signed(29 downto 0);
  signal c_23_i1_resize: signed(29 downto 0);
  signal c_23_i0_shift: signed(29 downto 0);
  signal c_23_i1_shift: signed(29 downto 0);
  signal c_23_arith: signed(29 downto 0);
  signal c_23_oshift: signed(29 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(31 downto 0);
  signal c_24_17_0_False_resize: signed(31 downto 0);
  signal c_24_17_0_False_shift: signed(31 downto 0);
  signal c_24_12_5_False_resize: signed(31 downto 0);
  signal c_24_12_5_False_shift: signed(31 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(27 downto 0);
  signal c_25_17_4_False_resize: signed(27 downto 0);
  signal c_25_17_4_False_shift: signed(27 downto 0);
  signal c_25_17_0_False_resize: signed(27 downto 0);
  signal c_25_17_0_False_shift: signed(27 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(31 downto 0);
  signal c_26_i0_resize: signed(31 downto 0);
  signal c_26_i1_resize: signed(31 downto 0);
  signal c_26_i0_shift: signed(31 downto 0);
  signal c_26_i1_shift: signed(31 downto 0);
  signal c_26_arith: signed(31 downto 0);
  signal c_26_oshift: signed(31 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(25 downto 0);
  signal c_27_i0_resize: signed(25 downto 0);
  signal c_27_i1_resize: signed(25 downto 0);
  signal c_27_i0_shift: signed(25 downto 0);
  signal c_27_i1_shift: signed(25 downto 0);
  signal c_27_arith: signed(25 downto 0);
  signal c_27_oshift: signed(25 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(25 downto 0);
  signal c_28_i0_resize: signed(25 downto 0);
  signal c_28_i1_resize: signed(25 downto 0);
  signal c_28_i0_shift: signed(25 downto 0);
  signal c_28_i1_shift: signed(25 downto 0);
  signal c_28_arith: signed(25 downto 0);
  signal c_28_oshift: signed(25 downto 0);
  signal c_29: signed(26 downto 0);
  signal c_29_i0_resize: signed(26 downto 0);
  signal c_29_i1_resize: signed(26 downto 0);
  signal c_29_i0_shift: signed(26 downto 0);
  signal c_29_i1_shift: signed(26 downto 0);
  signal c_29_arith: signed(26 downto 0);
  signal c_29_oshift: signed(26 downto 0);
  signal c_30: signed(22 downto 0);
  signal c_30_9_1_False_resize: signed(22 downto 0);
  signal c_30_9_1_False_shift: signed(22 downto 0);
  signal c_30_5_0_False_resize: signed(22 downto 0);
  signal c_30_5_0_False_shift: signed(22 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_9_0_False_resize: signed(25 downto 0);
  signal c_31_9_0_False_shift: signed(25 downto 0);
  signal c_31_18_1_False_resize: signed(25 downto 0);
  signal c_31_18_1_False_shift: signed(25 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(24 downto 0);
  signal c_32_i0_resize: signed(24 downto 0);
  signal c_32_i1_resize: signed(24 downto 0);
  signal c_32_i0_shift: signed(24 downto 0);
  signal c_32_i1_shift: signed(24 downto 0);
  signal c_32_arith: signed(24 downto 0);
  signal c_32_oshift: signed(24 downto 0);
  signal c_33: signed(22 downto 0);
  signal c_33_i0_resize: signed(22 downto 0);
  signal c_33_i1_resize: signed(22 downto 0);
  signal c_33_i0_shift: signed(22 downto 0);
  signal c_33_i1_shift: signed(22 downto 0);
  signal c_33_arith: signed(22 downto 0);
  signal c_33_oshift: signed(22 downto 0);
  signal c_33_sub_sel: std_logic;
  signal c_34: signed(26 downto 0);
  signal c_34_8_0_False_resize: signed(26 downto 0);
  signal c_34_8_0_False_shift: signed(26 downto 0);
  signal c_34_18_2_False_resize: signed(26 downto 0);
  signal c_34_18_2_False_shift: signed(26 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(24 downto 0);
  signal c_35_i0_resize: signed(24 downto 0);
  signal c_35_i1_resize: signed(24 downto 0);
  signal c_35_i0_shift: signed(24 downto 0);
  signal c_35_i1_shift: signed(24 downto 0);
  signal c_35_arith: signed(24 downto 0);
  signal c_35_oshift: signed(24 downto 0);
  signal c_36: signed(21 downto 0);
  signal c_36_9_0_False_resize: signed(21 downto 0);
  signal c_36_9_0_False_shift: signed(21 downto 0);
  signal c_36_8_0_False_resize: signed(21 downto 0);
  signal c_36_8_0_False_shift: signed(21 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(24 downto 0);
  signal c_37_i0_resize: signed(24 downto 0);
  signal c_37_i1_resize: signed(24 downto 0);
  signal c_37_i0_shift: signed(24 downto 0);
  signal c_37_i1_shift: signed(24 downto 0);
  signal c_37_arith: signed(24 downto 0);
  signal c_37_oshift: signed(24 downto 0);
  signal c_38: signed(21 downto 0);
  signal c_38_9_0_False_resize: signed(21 downto 0);
  signal c_38_9_0_False_shift: signed(21 downto 0);
  signal c_38_5_0_False_resize: signed(21 downto 0);
  signal c_38_5_0_False_shift: signed(21 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(26 downto 0);
  signal c_39_29_0_False_resize: signed(26 downto 0);
  signal c_39_29_0_False_shift: signed(26 downto 0);
  signal c_39_18_0_False_resize: signed(26 downto 0);
  signal c_39_18_0_False_shift: signed(26 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_40_i0_resize: signed(25 downto 0);
  signal c_40_i1_resize: signed(25 downto 0);
  signal c_40_i0_shift: signed(25 downto 0);
  signal c_40_i1_shift: signed(25 downto 0);
  signal c_40_arith: signed(25 downto 0);
  signal c_40_oshift: signed(25 downto 0);
  signal c_40_sub_sel: std_logic;
  signal c_41: signed(21 downto 0);
  signal c_41_4_1_False_resize: signed(21 downto 0);
  signal c_41_4_1_False_shift: signed(21 downto 0);
  signal c_41_5_0_False_resize: signed(21 downto 0);
  signal c_41_5_0_False_shift: signed(21 downto 0);
  signal c_41_sel: std_logic_vector(0 downto 0);
  signal c_42: signed(26 downto 0);
  signal c_42_5_0_False_resize: signed(26 downto 0);
  signal c_42_5_0_False_shift: signed(26 downto 0);
  signal c_42_28_1_False_resize: signed(26 downto 0);
  signal c_42_28_1_False_shift: signed(26 downto 0);
  signal c_42_sel: std_logic_vector(0 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_43_i0_resize: signed(25 downto 0);
  signal c_43_i1_resize: signed(25 downto 0);
  signal c_43_i0_shift: signed(25 downto 0);
  signal c_43_i1_shift: signed(25 downto 0);
  signal c_43_arith: signed(25 downto 0);
  signal c_43_oshift: signed(25 downto 0);
  signal c_44: signed(24 downto 0);
  signal c_44_4_1_False_resize: signed(24 downto 0);
  signal c_44_4_1_False_shift: signed(24 downto 0);
  signal c_44_18_0_False_resize: signed(24 downto 0);
  signal c_44_18_0_False_shift: signed(24 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_i0_resize: signed(25 downto 0);
  signal c_45_i1_resize: signed(25 downto 0);
  signal c_45_i0_shift: signed(25 downto 0);
  signal c_45_i1_shift: signed(25 downto 0);
  signal c_45_arith: signed(25 downto 0);
  signal c_45_oshift: signed(25 downto 0);
  signal c_46: signed(28 downto 0);
  signal c_46_i0_resize: signed(28 downto 0);
  signal c_46_i1_resize: signed(28 downto 0);
  signal c_46_i0_shift: signed(28 downto 0);
  signal c_46_i1_shift: signed(28 downto 0);
  signal c_46_arith: signed(28 downto 0);
  signal c_46_oshift: signed(28 downto 0);
  signal c_46_sub_sel: std_logic;
  signal c_47: signed(26 downto 0);
  signal c_47_16_0_False_resize: signed(26 downto 0);
  signal c_47_16_0_False_shift: signed(26 downto 0);
  signal c_47_29_0_False_resize: signed(26 downto 0);
  signal c_47_29_0_False_shift: signed(26 downto 0);
  signal c_47_sel: std_logic_vector(0 downto 0);
  signal c_48: signed(28 downto 0);
  signal c_48_46_0_False_resize: signed(28 downto 0);
  signal c_48_46_0_False_shift: signed(28 downto 0);
  signal c_48_29_0_False_resize: signed(28 downto 0);
  signal c_48_29_0_False_shift: signed(28 downto 0);
  signal c_48_sel: std_logic_vector(0 downto 0);
  signal c_49: signed(24 downto 0);
  signal c_49_i0_resize: signed(29 downto 0);
  signal c_49_i1_resize: signed(29 downto 0);
  signal c_49_i0_shift: signed(29 downto 0);
  signal c_49_i1_shift: signed(29 downto 0);
  signal c_49_arith: signed(29 downto 0);
  signal c_49_oshift: signed(24 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_50_9_0_False_resize: signed(23 downto 0);
  signal c_50_9_0_False_shift: signed(23 downto 0);
  signal c_50_9_2_False_resize: signed(23 downto 0);
  signal c_50_9_2_False_shift: signed(23 downto 0);
  signal c_50_sel: std_logic_vector(0 downto 0);
  signal c_51: signed(24 downto 0);
  signal c_51_i0_resize: signed(24 downto 0);
  signal c_51_i1_resize: signed(24 downto 0);
  signal c_51_i0_shift: signed(24 downto 0);
  signal c_51_i1_shift: signed(24 downto 0);
  signal c_51_arith: signed(24 downto 0);
  signal c_51_oshift: signed(24 downto 0);
  signal c_51_sub_sel: std_logic;
  signal c_52: signed(20 downto 0);
  signal c_52_8_1_False_resize: signed(20 downto 0);
  signal c_52_8_1_False_shift: signed(20 downto 0);
  signal c_52_4_0_False_resize: signed(20 downto 0);
  signal c_52_4_0_False_shift: signed(20 downto 0);
  signal c_52_sel: std_logic_vector(0 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_53_28_0_False_resize: signed(25 downto 0);
  signal c_53_28_0_False_shift: signed(25 downto 0);
  signal c_53_8_0_False_resize: signed(25 downto 0);
  signal c_53_8_0_False_shift: signed(25 downto 0);
  signal c_53_sel: std_logic_vector(0 downto 0);
  signal c_54: signed(24 downto 0);
  signal c_54_i0_resize: signed(24 downto 0);
  signal c_54_i1_resize: signed(24 downto 0);
  signal c_54_i0_shift: signed(24 downto 0);
  signal c_54_i1_shift: signed(24 downto 0);
  signal c_54_arith: signed(24 downto 0);
  signal c_54_oshift: signed(24 downto 0);
  signal c_55: signed(24 downto 0);
  signal c_55_37_0_False_resize: signed(24 downto 0);
  signal c_55_37_0_False_shift: signed(24 downto 0);
  signal c_55_21_0_False_resize: signed(24 downto 0);
  signal c_55_21_0_False_shift: signed(24 downto 0);
  signal c_55_sel: std_logic_vector(0 downto 0);
  signal c_56: signed(26 downto 0);
  signal c_56_i0_resize: signed(26 downto 0);
  signal c_56_i1_resize: signed(26 downto 0);
  signal c_56_i0_shift: signed(26 downto 0);
  signal c_56_i1_shift: signed(26 downto 0);
  signal c_56_arith: signed(26 downto 0);
  signal c_56_oshift: signed(26 downto 0);
  signal c_57: signed(26 downto 0);
  signal c_57_16_0_False_resize: signed(26 downto 0);
  signal c_57_16_0_False_shift: signed(26 downto 0);
  signal c_57_16_2_False_resize: signed(26 downto 0);
  signal c_57_16_2_False_shift: signed(26 downto 0);
  signal c_57_sel: std_logic_vector(0 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_58_i0_resize: signed(25 downto 0);
  signal c_58_i1_resize: signed(25 downto 0);
  signal c_58_i0_shift: signed(25 downto 0);
  signal c_58_i1_shift: signed(25 downto 0);
  signal c_58_arith: signed(25 downto 0);
  signal c_58_oshift: signed(25 downto 0);
  signal c_59: signed(23 downto 0);
  signal c_59_i0_resize: signed(23 downto 0);
  signal c_59_i1_resize: signed(23 downto 0);
  signal c_59_i0_shift: signed(23 downto 0);
  signal c_59_i1_shift: signed(23 downto 0);
  signal c_59_arith: signed(23 downto 0);
  signal c_59_oshift: signed(23 downto 0);
  signal c_60: signed(22 downto 0);
  signal c_60_8_3_False_resize: signed(22 downto 0);
  signal c_60_8_3_False_shift: signed(22 downto 0);
  signal c_60_8_0_False_resize: signed(22 downto 0);
  signal c_60_8_0_False_shift: signed(22 downto 0);
  signal c_60_sel: std_logic_vector(0 downto 0);
  signal c_61: signed(25 downto 0);
  signal c_61_i0_resize: signed(25 downto 0);
  signal c_61_i1_resize: signed(25 downto 0);
  signal c_61_i0_shift: signed(25 downto 0);
  signal c_61_i1_shift: signed(25 downto 0);
  signal c_61_arith: signed(25 downto 0);
  signal c_61_oshift: signed(25 downto 0);
  signal c_61_sub_sel: std_logic;
  signal c_62: signed(25 downto 0);
  signal c_62_i0_resize: signed(25 downto 0);
  signal c_62_i1_resize: signed(25 downto 0);
  signal c_62_i0_shift: signed(25 downto 0);
  signal c_62_i1_shift: signed(25 downto 0);
  signal c_62_arith: signed(25 downto 0);
  signal c_62_oshift: signed(25 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_63_62_0_False_resize: signed(25 downto 0);
  signal c_63_62_0_False_shift: signed(25 downto 0);
  signal c_63_32_0_False_resize: signed(25 downto 0);
  signal c_63_32_0_False_shift: signed(25 downto 0);
  signal c_63_sel: std_logic_vector(0 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_64_resize: signed(25 downto 0);
  signal c_65: signed(25 downto 0);
  signal c_65_43_0_False_resize: signed(25 downto 0);
  signal c_65_43_0_False_shift: signed(25 downto 0);
  signal c_65_45_0_False_resize: signed(25 downto 0);
  signal c_65_45_0_False_shift: signed(25 downto 0);
  signal c_65_sel: std_logic_vector(0 downto 0);
  signal c_66: signed(25 downto 0);
  signal c_66_resize: signed(25 downto 0);
  signal c_67: signed(25 downto 0);
  signal c_67_45_0_False_resize: signed(25 downto 0);
  signal c_67_45_0_False_shift: signed(25 downto 0);
  signal c_67_54_0_False_resize: signed(25 downto 0);
  signal c_67_54_0_False_shift: signed(25 downto 0);
  signal c_67_sel: std_logic_vector(0 downto 0);
  signal c_68: signed(25 downto 0);
  signal c_68_resize: signed(25 downto 0);
  signal c_69: signed(25 downto 0);
  signal c_69_58_0_False_resize: signed(25 downto 0);
  signal c_69_58_0_False_shift: signed(25 downto 0);
  signal c_69_21_1_False_resize: signed(25 downto 0);
  signal c_69_21_1_False_shift: signed(25 downto 0);
  signal c_69_sel: std_logic_vector(0 downto 0);
  signal c_70: signed(25 downto 0);
  signal c_70_resize: signed(25 downto 0);
  signal c_71: signed(24 downto 0);
  signal c_71_32_0_False_resize: signed(24 downto 0);
  signal c_71_32_0_False_shift: signed(24 downto 0);
  signal c_71_35_0_False_resize: signed(24 downto 0);
  signal c_71_35_0_False_shift: signed(24 downto 0);
  signal c_71_sel: std_logic_vector(0 downto 0);
  signal c_72: signed(25 downto 0);
  signal c_72_resize: signed(25 downto 0);
  signal c_73: signed(25 downto 0);
  signal c_73_21_1_False_resize: signed(25 downto 0);
  signal c_73_21_1_False_shift: signed(25 downto 0);
  signal c_73_61_0_False_resize: signed(25 downto 0);
  signal c_73_61_0_False_shift: signed(25 downto 0);
  signal c_73_sel: std_logic_vector(0 downto 0);
  signal c_74: signed(25 downto 0);
  signal c_74_resize: signed(25 downto 0);
  signal c_75: signed(25 downto 0);
  signal c_75_43_0_False_resize: signed(25 downto 0);
  signal c_75_43_0_False_shift: signed(25 downto 0);
  signal c_75_51_0_False_resize: signed(25 downto 0);
  signal c_75_51_0_False_shift: signed(25 downto 0);
  signal c_75_sel: std_logic_vector(0 downto 0);
  signal c_76: signed(25 downto 0);
  signal c_76_resize: signed(25 downto 0);
  signal c_77: signed(24 downto 0);
  signal c_77_37_0_False_resize: signed(24 downto 0);
  signal c_77_37_0_False_shift: signed(24 downto 0);
  signal c_77_49_0_False_resize: signed(24 downto 0);
  signal c_77_49_0_False_shift: signed(24 downto 0);
  signal c_77_sel: std_logic_vector(0 downto 0);
  signal c_78: signed(24 downto 0);
  signal c_78_resize: signed(24 downto 0);
  signal c_79: signed(25 downto 0);
  signal c_79_54_0_False_resize: signed(25 downto 0);
  signal c_79_54_0_False_shift: signed(25 downto 0);
  signal c_79_40_0_False_resize: signed(25 downto 0);
  signal c_79_40_0_False_shift: signed(25 downto 0);
  signal c_79_sel: std_logic_vector(0 downto 0);
  signal c_80: signed(25 downto 0);
  signal c_80_resize: signed(25 downto 0);
  signal c_81: signed(25 downto 0);
  signal c_81_resize: signed(25 downto 0);
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
      config_select_8 <= config_select_7;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 64
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_64);
    end if;
  end process;
  -- output node 1 with id 66
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_66);
    end if;
  end process;
  -- output node 2 with id 68
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_68);
    end if;
  end process;
  -- output node 3 with id 70
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_70);
    end if;
  end process;
  -- output node 4 with id 72
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_72);
    end if;
  end process;
  -- output node 5 with id 74
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_74);
    end if;
  end process;
  -- output node 6 with id 76
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_76);
    end if;
  end process;
  -- output node 7 with id 78
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_78);
    end if;
  end process;
  -- output node 8 with id 80
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_80);
    end if;
  end process;
  -- output node 9 with id 81
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_81);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[2], [1]]
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [2]]
  c_2_0_1_False_resize <= resize(c_0, 17);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  c_2_0_0_False_resize <= resize(c_0, 17);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_1_False_shift;
        when others => c_2 <= c_2_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[1], [3]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 17,
      w_o => 18,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(17 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 4 and associated fundamentals [[32], [32]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 21,
      s_x_i => 6,
      s_y_i => 5,
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
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 5 and associated fundamentals [[33], [-31]]
  with config_select_1 select c_5_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 22,
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
      sub_i => c_5_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[2], [3]]
  c_6_3_0_False_resize <= c_3;
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  c_6_3_1_False_resize <= c_3;
  c_6_3_1_False_shift <= shift_left(c_6_3_1_False_resize, 1);
  with config_select_3 select c_6_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_3_0_False_shift;
        when others => c_6 <= c_6_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[16], [0]]
  with config_select_4 select c_7_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
      w_o => 20,
      s_x_i => 2,
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
      x_i => c_6,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 8 and associated fundamentals [[9], [9]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 9 and associated fundamentals [[34], [34]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 22,
      s_x_i => 1,
      s_y_i => 5,
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
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[1], [384]]
  c_10_3_7_False_resize <= resize(c_3, 25);
  c_10_3_7_False_shift <= shift_left(c_10_3_7_False_resize, 7);
  c_10_3_0_False_resize <= resize(c_3, 25);
  c_10_3_0_False_shift <= shift_left(c_10_3_0_False_resize, 0);
  with config_select_3 select c_10_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_3_7_False_shift;
        when others => c_10 <= c_10_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[1], [12]]
  c_11_3_0_False_resize <= resize(c_3, 20);
  c_11_3_0_False_shift <= shift_left(c_11_3_0_False_resize, 0);
  c_11_3_2_False_resize <= resize(c_3, 20);
  c_11_3_2_False_shift <= shift_left(c_11_3_2_False_resize, 2);
  with config_select_3 select c_11_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_3_0_False_shift;
        when others => c_11 <= c_11_3_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 12 and associated fundamentals [[20], [1344]]
  with config_select_4 select c_12_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 20,
      w_o => 27,
      s_x_i => 2,
      s_y_i => 4,
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
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 13 and associated fundamentals [[18], [34]]
  c_13_8_1_False_resize <= resize(c_8, 22);
  c_13_8_1_False_shift <= shift_left(c_13_8_1_False_resize, 1);
  c_13_9_0_False_resize <= c_9;
  c_13_9_0_False_shift <= shift_left(c_13_9_0_False_resize, 0);
  with config_select_2 select c_13_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_8_1_False_shift;
        when others => c_13 <= c_13_9_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 14 and associated fundamentals [[288], [-31]]
  c_14_8_5_False_resize <= resize(c_8, 25);
  c_14_8_5_False_shift <= shift_left(c_14_8_5_False_resize, 5);
  c_14_5_0_False_resize <= resize(c_5, 25);
  c_14_5_0_False_shift <= shift_left(c_14_5_0_False_resize, 0);
  with config_select_2 select c_14_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_8_5_False_shift;
        when others => c_14 <= c_14_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 15 and associated fundamentals [[306], [65]]
  with config_select_3 select c_15_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_15_sub_sel,
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 16 and associated fundamentals [[448], [448]]
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 25,
      s_x_i => 9,
      s_y_i => 6,
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
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 17 and associated fundamentals [[613], [142]]
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 20,
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
      x_i => c_15,
      y_i => c_11,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 18 and associated fundamentals [[320], [320]]
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 25,
      s_x_i => 6,
      s_y_i => 8,
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
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 19 and associated fundamentals [[34], [34]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_9 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 20 and associated fundamentals [[9], [-31]]
  c_20_8_0_False_resize <= resize(c_8, 21);
  c_20_8_0_False_shift <= shift_left(c_20_8_0_False_resize, 0);
  c_20_5_0_False_resize <= c_5(20 downto 0);
  c_20_5_0_False_shift <= shift_left(c_20_5_0_False_resize, 0);
  with config_select_2 select c_20_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_8_0_False_shift;
        when others => c_20 <= c_20_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 21 and associated fundamentals [[263], [303]]
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 21,
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
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 22 and associated fundamentals [[16], [3]]
  c_22_3_4_False_resize <= resize(c_3, 20);
  c_22_3_4_False_shift <= shift_left(c_22_3_4_False_resize, 4);
  c_22_3_0_False_resize <= resize(c_3, 20);
  c_22_3_0_False_shift <= shift_left(c_22_3_0_False_resize, 0);
  with config_select_3 select c_22_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_3_4_False_shift;
        when others => c_22 <= c_22_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 23 and associated fundamentals [[9728], [2092]]
  with config_select_4 select c_23_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 20,
      w_o => 30,
      s_x_i => 5,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_23_sub_sel,
      x_i => c_15,
      y_i => c_22,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(29 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 24 and associated fundamentals [[613], [43008]]
  c_24_17_0_False_resize <= resize(c_17, 32);
  c_24_17_0_False_shift <= shift_left(c_24_17_0_False_resize, 0);
  c_24_12_5_False_resize <= resize(c_12, 32);
  c_24_12_5_False_shift <= shift_left(c_24_12_5_False_resize, 5);
  with config_select_5 select c_24_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_17_0_False_shift;
        when others => c_24 <= c_24_12_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 25 and associated fundamentals [[613], [2272]]
  c_25_17_4_False_resize <= resize(c_17, 28);
  c_25_17_4_False_shift <= shift_left(c_25_17_4_False_resize, 4);
  c_25_17_0_False_resize <= resize(c_17, 28);
  c_25_17_0_False_shift <= shift_left(c_25_17_0_False_resize, 0);
  with config_select_5 select c_25_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_17_4_False_shift;
        when others => c_25 <= c_25_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 26 and associated fundamentals [[0], [45280]]
  with config_select_6 select c_26_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 32,
      w_y_i => 28,
      w_o => 32,
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
      sub_i => c_26_sub_sel,
      x_i => c_24,
      y_i => c_25,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(31 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 27 and associated fundamentals [[553], [535]]
  with config_select_2 select c_27_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
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
      sub_i => c_27_sub_sel,
      x_i => c_9,
      y_i => c_8,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 28 and associated fundamentals [[514], [514]]
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 26,
      s_x_i => 9,
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
      z_o => c_28_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_28_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 29 and associated fundamentals [[1040], [1040]]
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 27,
      s_x_i => 4,
      s_y_i => 10,
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
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 30 and associated fundamentals [[33], [68]]
  c_30_9_1_False_resize <= resize(c_9, 23);
  c_30_9_1_False_shift <= shift_left(c_30_9_1_False_resize, 1);
  c_30_5_0_False_resize <= resize(c_5, 23);
  c_30_5_0_False_shift <= shift_left(c_30_5_0_False_resize, 0);
  with config_select_2 select c_30_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "0" => c_30 <= c_30_9_1_False_shift;
        when others => c_30 <= c_30_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 31 and associated fundamentals [[34], [640]]
  c_31_9_0_False_resize <= resize(c_9, 26);
  c_31_9_0_False_shift <= shift_left(c_31_9_0_False_resize, 0);
  c_31_18_1_False_resize <= resize(c_18, 26);
  c_31_18_1_False_shift <= shift_left(c_31_18_1_False_resize, 1);
  with config_select_2 select c_31_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_9_0_False_shift;
        when others => c_31 <= c_31_18_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 32 and associated fundamentals [[460], [-192]]
  inst_adder_node_32: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 26,
      w_o => 25,
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
      x_i => c_30,
      y_i => c_31,
      z_o => c_32_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_32_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 33 and associated fundamentals [[77], [-59]]
  with config_select_2 select c_33_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_33: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 22,
      w_o => 23,
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
      x_i => c_8,
      y_i => c_9,
      z_o => c_33_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_33_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 34 and associated fundamentals [[1280], [9]]
  c_34_8_0_False_resize <= resize(c_8, 27);
  c_34_8_0_False_shift <= shift_left(c_34_8_0_False_resize, 0);
  c_34_18_2_False_resize <= resize(c_18, 27);
  c_34_18_2_False_shift <= shift_left(c_34_18_2_False_resize, 2);
  with config_select_2 select c_34_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_8_0_False_shift;
        when others => c_34 <= c_34_18_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 35 and associated fundamentals [[972], [245]]
  inst_adder_node_35: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 23,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_34,
      y_i => c_33,
      z_o => c_35_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_35_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 36 and associated fundamentals [[34], [9]]
  c_36_9_0_False_resize <= c_9;
  c_36_9_0_False_shift <= shift_left(c_36_9_0_False_resize, 0);
  c_36_8_0_False_resize <= resize(c_8, 22);
  c_36_8_0_False_shift <= shift_left(c_36_8_0_False_resize, 0);
  with config_select_2 select c_36_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "0" => c_36 <= c_36_9_0_False_shift;
        when others => c_36 <= c_36_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 37 and associated fundamentals [[545], [147]]
  inst_adder_node_37: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 22,
      w_o => 25,
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
      x_i => c_3,
      y_i => c_36,
      z_o => c_37_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_37_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 38 and associated fundamentals [[33], [34]]
  c_38_9_0_False_resize <= c_9;
  c_38_9_0_False_shift <= shift_left(c_38_9_0_False_resize, 0);
  c_38_5_0_False_resize <= c_5;
  c_38_5_0_False_shift <= shift_left(c_38_5_0_False_resize, 0);
  with config_select_2 select c_38_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "0" => c_38 <= c_38_9_0_False_shift;
        when others => c_38 <= c_38_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 39 and associated fundamentals [[320], [1040]]
  c_39_29_0_False_resize <= c_29;
  c_39_29_0_False_shift <= shift_left(c_39_29_0_False_resize, 0);
  c_39_18_0_False_resize <= resize(c_18, 27);
  c_39_18_0_False_shift <= shift_left(c_39_18_0_False_resize, 0);
  with config_select_2 select c_39_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "0" => c_39 <= c_39_29_0_False_shift;
        when others => c_39 <= c_39_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 40 and associated fundamentals [[386], [-972]]
  with config_select_3 select c_40_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_40: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 27,
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
  -- node of type 'mux' in stage 2 with id 41 and associated fundamentals [[64], [-31]]
  c_41_4_1_False_resize <= resize(c_4, 22);
  c_41_4_1_False_shift <= shift_left(c_41_4_1_False_resize, 1);
  c_41_5_0_False_resize <= c_5;
  c_41_5_0_False_shift <= shift_left(c_41_5_0_False_resize, 0);
  with config_select_2 select c_41_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "0" => c_41 <= c_41_4_1_False_shift;
        when others => c_41 <= c_41_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 42 and associated fundamentals [[33], [1028]]
  c_42_5_0_False_resize <= resize(c_5, 27);
  c_42_5_0_False_shift <= shift_left(c_42_5_0_False_resize, 0);
  c_42_28_1_False_resize <= resize(c_28, 27);
  c_42_28_1_False_shift <= shift_left(c_42_28_1_False_resize, 1);
  with config_select_2 select c_42_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "0" => c_42 <= c_42_5_0_False_shift;
        when others => c_42 <= c_42_28_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 43 and associated fundamentals [[97], [997]]
  inst_adder_node_43: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 27,
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
  -- node of type 'mux' in stage 2 with id 44 and associated fundamentals [[64], [320]]
  c_44_4_1_False_resize <= resize(c_4, 25);
  c_44_4_1_False_shift <= shift_left(c_44_4_1_False_resize, 1);
  c_44_18_0_False_resize <= c_18;
  c_44_18_0_False_shift <= shift_left(c_44_18_0_False_resize, 0);
  with config_select_2 select c_44_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "0" => c_44 <= c_44_4_1_False_shift;
        when others => c_44 <= c_44_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 45 and associated fundamentals [[617], [855]]
  inst_adder_node_45: entity work.adder_node
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
      sub => False
    )
    port map (
      x_i => c_27,
      y_i => c_44,
      z_o => c_45_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_45_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 46 and associated fundamentals [[8160], [8224]]
  with config_select_1 select c_46_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_46: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 29,
      s_x_i => 13,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_46_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_46_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_46_oshift(28 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 47 and associated fundamentals [[448], [1040]]
  c_47_16_0_False_resize <= resize(c_16, 27);
  c_47_16_0_False_shift <= shift_left(c_47_16_0_False_resize, 0);
  c_47_29_0_False_resize <= c_29;
  c_47_29_0_False_shift <= shift_left(c_47_29_0_False_resize, 0);
  with config_select_2 select c_47_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "0" => c_47 <= c_47_16_0_False_shift;
        when others => c_47 <= c_47_29_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 48 and associated fundamentals [[8160], [1040]]
  c_48_46_0_False_resize <= c_46;
  c_48_46_0_False_shift <= shift_left(c_48_46_0_False_resize, 0);
  c_48_29_0_False_resize <= resize(c_29, 29);
  c_48_29_0_False_shift <= shift_left(c_48_29_0_False_resize, 0);
  with config_select_2 select c_48_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "0" => c_48 <= c_48_46_0_False_shift;
        when others => c_48 <= c_48_29_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 49 and associated fundamentals [[269], [65]]
  inst_adder_node_49: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 29,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 5,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_47,
      y_i => c_48,
      z_o => c_49_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_49_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 50 and associated fundamentals [[34], [136]]
  c_50_9_0_False_resize <= resize(c_9, 24);
  c_50_9_0_False_shift <= shift_left(c_50_9_0_False_resize, 0);
  c_50_9_2_False_resize <= resize(c_9, 24);
  c_50_9_2_False_shift <= shift_left(c_50_9_2_False_resize, 2);
  with config_select_2 select c_50_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_50_sel is
        when "0" => c_50 <= c_50_9_0_False_shift;
        when others => c_50 <= c_50_9_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 51 and associated fundamentals [[342], [372]]
  with config_select_3 select c_51_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_51: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
      w_o => 25,
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
      sub_i => c_51_sub_sel,
      x_i => c_50,
      y_i => c_33,
      z_o => c_51_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_51_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 52 and associated fundamentals [[18], [32]]
  c_52_8_1_False_resize <= resize(c_8, 21);
  c_52_8_1_False_shift <= shift_left(c_52_8_1_False_resize, 1);
  c_52_4_0_False_resize <= c_4;
  c_52_4_0_False_shift <= shift_left(c_52_4_0_False_resize, 0);
  with config_select_2 select c_52_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_52_sel is
        when "0" => c_52 <= c_52_8_1_False_shift;
        when others => c_52 <= c_52_4_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 53 and associated fundamentals [[514], [9]]
  c_53_28_0_False_resize <= c_28;
  c_53_28_0_False_shift <= shift_left(c_53_28_0_False_resize, 0);
  c_53_8_0_False_resize <= resize(c_8, 26);
  c_53_8_0_False_shift <= shift_left(c_53_8_0_False_resize, 0);
  with config_select_2 select c_53_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_53_sel is
        when "0" => c_53 <= c_53_28_0_False_shift;
        when others => c_53 <= c_53_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 54 and associated fundamentals [[-442], [119]]
  inst_adder_node_54: entity work.adder_node
    generic map (
      w_x_i => 21,
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
      x_i => c_52,
      y_i => c_53,
      z_o => c_54_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_54_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 55 and associated fundamentals [[263], [147]]
  c_55_37_0_False_resize <= c_37;
  c_55_37_0_False_shift <= shift_left(c_55_37_0_False_resize, 0);
  c_55_21_0_False_resize <= c_21;
  c_55_21_0_False_shift <= shift_left(c_55_21_0_False_resize, 0);
  with config_select_4 select c_55_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_55_sel is
        when "0" => c_55 <= c_55_37_0_False_shift;
        when others => c_55 <= c_55_21_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 5 with id 56 and associated fundamentals [[-243], [1197]]
  inst_adder_node_56: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 25,
      w_o => 27,
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
      x_i => c_12,
      y_i => c_55,
      z_o => c_56_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_56_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 57 and associated fundamentals [[448], [1792]]
  c_57_16_0_False_resize <= resize(c_16, 27);
  c_57_16_0_False_shift <= shift_left(c_57_16_0_False_resize, 0);
  c_57_16_2_False_resize <= resize(c_16, 27);
  c_57_16_2_False_shift <= shift_left(c_57_16_2_False_resize, 2);
  with config_select_2 select c_57_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_57_sel is
        when "0" => c_57 <= c_57_16_0_False_shift;
        when others => c_57 <= c_57_16_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 58 and associated fundamentals [[343], [3049]]
  inst_adder_node_58: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 26,
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
      x_i => c_57,
      y_i => c_27,
      z_o => c_58_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_58_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 59 and associated fundamentals [[-246], [266]]
  inst_adder_node_59: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 22,
      w_o => 24,
      s_x_i => 1,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_8,
      y_i => c_5,
      z_o => c_59_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_59_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 60 and associated fundamentals [[9], [72]]
  c_60_8_3_False_resize <= resize(c_8, 23);
  c_60_8_3_False_shift <= shift_left(c_60_8_3_False_resize, 3);
  c_60_8_0_False_resize <= resize(c_8, 23);
  c_60_8_0_False_shift <= shift_left(c_60_8_0_False_resize, 0);
  with config_select_2 select c_60_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_60_sel is
        when "0" => c_60 <= c_60_8_3_False_shift;
        when others => c_60 <= c_60_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 61 and associated fundamentals [[-70], [582]]
  with config_select_3 select c_61_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_61: entity work.adder_node
    generic map (
      w_x_i => 18,
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
      sub_i => c_61_sub_sel,
      x_i => c_3,
      y_i => c_60,
      z_o => c_61_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_61_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 62 and associated fundamentals [[-907], [1005]]
  inst_adder_node_62: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
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
      x_i => c_59,
      y_i => c_33,
      z_o => c_62_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_62_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 63 and associated fundamentals [[-907], [-192]]
  c_63_62_0_False_resize <= c_62;
  c_63_62_0_False_shift <= shift_left(c_63_62_0_False_resize, 0);
  c_63_32_0_False_resize <= resize(c_32, 26);
  c_63_32_0_False_shift <= shift_left(c_63_32_0_False_resize, 0);
  with config_select_4 select c_63_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_63_sel is
        when "0" => c_63 <= c_63_62_0_False_shift;
        when others => c_63 <= c_63_32_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 64 and associated fundamentals [[907], [192]]
  c_64_resize <= c_63;
  c_64 <= -shift_left(c_64_resize, 0);
  -- node of type 'mux' in stage 4 with id 65 and associated fundamentals [[97], [855]]
  c_65_43_0_False_resize <= c_43;
  c_65_43_0_False_shift <= shift_left(c_65_43_0_False_resize, 0);
  c_65_45_0_False_resize <= c_45;
  c_65_45_0_False_shift <= shift_left(c_65_45_0_False_resize, 0);
  with config_select_4 select c_65_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_65_sel is
        when "0" => c_65 <= c_65_43_0_False_shift;
        when others => c_65 <= c_65_45_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 66 and associated fundamentals [[97], [855]]
  c_66_resize <= c_65;
  c_66 <= shift_left(c_66_resize, 0);
  -- node of type 'mux' in stage 4 with id 67 and associated fundamentals [[617], [119]]
  c_67_45_0_False_resize <= c_45;
  c_67_45_0_False_shift <= shift_left(c_67_45_0_False_resize, 0);
  c_67_54_0_False_resize <= resize(c_54, 26);
  c_67_54_0_False_shift <= shift_left(c_67_54_0_False_resize, 0);
  with config_select_4 select c_67_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_67_sel is
        when "0" => c_67 <= c_67_45_0_False_shift;
        when others => c_67 <= c_67_54_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 68 and associated fundamentals [[617], [119]]
  c_68_resize <= c_67;
  c_68 <= shift_left(c_68_resize, 0);
  -- node of type 'mux' in stage 4 with id 69 and associated fundamentals [[343], [606]]
  c_69_58_0_False_resize <= c_58;
  c_69_58_0_False_shift <= shift_left(c_69_58_0_False_resize, 0);
  c_69_21_1_False_resize <= resize(c_21, 26);
  c_69_21_1_False_shift <= shift_left(c_69_21_1_False_resize, 1);
  with config_select_4 select c_69_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_69_sel is
        when "0" => c_69 <= c_69_58_0_False_shift;
        when others => c_69 <= c_69_21_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 70 and associated fundamentals [[343], [606]]
  c_70_resize <= c_69;
  c_70 <= shift_left(c_70_resize, 0);
  -- node of type 'mux' in stage 4 with id 71 and associated fundamentals [[460], [245]]
  c_71_32_0_False_resize <= c_32;
  c_71_32_0_False_shift <= shift_left(c_71_32_0_False_resize, 0);
  c_71_35_0_False_resize <= c_35;
  c_71_35_0_False_shift <= shift_left(c_71_35_0_False_resize, 0);
  with config_select_4 select c_71_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_71_sel is
        when "0" => c_71 <= c_71_32_0_False_shift;
        when others => c_71 <= c_71_35_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 72 and associated fundamentals [[920], [490]]
  c_72_resize <= resize(c_71, 26);
  c_72 <= shift_left(c_72_resize, 1);
  -- node of type 'mux' in stage 4 with id 73 and associated fundamentals [[526], [582]]
  c_73_21_1_False_resize <= resize(c_21, 26);
  c_73_21_1_False_shift <= shift_left(c_73_21_1_False_resize, 1);
  c_73_61_0_False_resize <= c_61;
  c_73_61_0_False_shift <= shift_left(c_73_61_0_False_resize, 0);
  with config_select_4 select c_73_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_73_sel is
        when "0" => c_73 <= c_73_21_1_False_shift;
        when others => c_73 <= c_73_61_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 74 and associated fundamentals [[526], [582]]
  c_74_resize <= c_73;
  c_74 <= shift_left(c_74_resize, 0);
  -- node of type 'mux' in stage 4 with id 75 and associated fundamentals [[342], [997]]
  c_75_43_0_False_resize <= c_43;
  c_75_43_0_False_shift <= shift_left(c_75_43_0_False_resize, 0);
  c_75_51_0_False_resize <= resize(c_51, 26);
  c_75_51_0_False_shift <= shift_left(c_75_51_0_False_resize, 0);
  with config_select_4 select c_75_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_75_sel is
        when "0" => c_75 <= c_75_43_0_False_shift;
        when others => c_75 <= c_75_51_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 76 and associated fundamentals [[342], [997]]
  c_76_resize <= c_75;
  c_76 <= shift_left(c_76_resize, 0);
  -- node of type 'mux' in stage 4 with id 77 and associated fundamentals [[269], [147]]
  c_77_37_0_False_resize <= c_37;
  c_77_37_0_False_shift <= shift_left(c_77_37_0_False_resize, 0);
  c_77_49_0_False_resize <= c_49;
  c_77_49_0_False_shift <= shift_left(c_77_49_0_False_resize, 0);
  with config_select_4 select c_77_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_77_sel is
        when "0" => c_77 <= c_77_37_0_False_shift;
        when others => c_77 <= c_77_49_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 78 and associated fundamentals [[269], [147]]
  c_78_resize <= c_77;
  c_78 <= shift_left(c_78_resize, 0);
  -- node of type 'mux' in stage 4 with id 79 and associated fundamentals [[-442], [-972]]
  c_79_54_0_False_resize <= resize(c_54, 26);
  c_79_54_0_False_shift <= shift_left(c_79_54_0_False_resize, 0);
  c_79_40_0_False_resize <= c_40;
  c_79_40_0_False_shift <= shift_left(c_79_40_0_False_resize, 0);
  with config_select_4 select c_79_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_79_sel is
        when "0" => c_79 <= c_79_54_0_False_shift;
        when others => c_79 <= c_79_40_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 80 and associated fundamentals [[442], [972]]
  c_80_resize <= c_79;
  c_80 <= -shift_left(c_80_resize, 0);
  -- node of type 'output' in stage 4 with id 81 and associated fundamentals [[613], [142]]
  c_81_resize <= c_17;
  c_81 <= shift_left(c_81_resize, 0);
end architecture;
