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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(23 downto 0);
  signal c_1_i0_resize: signed(23 downto 0);
  signal c_1_i1_resize: signed(23 downto 0);
  signal c_1_i0_shift: signed(23 downto 0);
  signal c_1_i1_shift: signed(23 downto 0);
  signal c_1_arith: signed(23 downto 0);
  signal c_1_oshift: signed(23 downto 0);
  signal c_2: signed(19 downto 0);
  signal c_2_i0_resize: signed(19 downto 0);
  signal c_2_i1_resize: signed(19 downto 0);
  signal c_2_i0_shift: signed(19 downto 0);
  signal c_2_i1_shift: signed(19 downto 0);
  signal c_2_arith: signed(19 downto 0);
  signal c_2_oshift: signed(19 downto 0);
  signal c_3: signed(23 downto 0);
  signal c_3_i0_resize: signed(23 downto 0);
  signal c_3_i1_resize: signed(23 downto 0);
  signal c_3_i0_shift: signed(23 downto 0);
  signal c_3_i1_shift: signed(23 downto 0);
  signal c_3_arith: signed(23 downto 0);
  signal c_3_oshift: signed(23 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(19 downto 0);
  signal c_4_i0_resize: signed(19 downto 0);
  signal c_4_i1_resize: signed(19 downto 0);
  signal c_4_i0_shift: signed(19 downto 0);
  signal c_4_i1_shift: signed(19 downto 0);
  signal c_4_arith: signed(19 downto 0);
  signal c_4_oshift: signed(19 downto 0);
  signal c_5: signed(20 downto 0);
  signal c_5_4_0_False_resize: signed(20 downto 0);
  signal c_5_4_0_False_shift: signed(20 downto 0);
  signal c_5_2_1_False_resize: signed(20 downto 0);
  signal c_5_2_1_False_shift: signed(20 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(21 downto 0);
  signal c_6_4_2_False_resize: signed(21 downto 0);
  signal c_6_4_2_False_shift: signed(21 downto 0);
  signal c_6_2_0_False_resize: signed(21 downto 0);
  signal c_6_2_0_False_shift: signed(21 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(25 downto 0);
  signal c_7_i0_resize: signed(25 downto 0);
  signal c_7_i1_resize: signed(25 downto 0);
  signal c_7_i0_shift: signed(25 downto 0);
  signal c_7_i1_shift: signed(25 downto 0);
  signal c_7_arith: signed(25 downto 0);
  signal c_7_oshift: signed(25 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(19 downto 0);
  signal c_8_i0_resize: signed(19 downto 0);
  signal c_8_i1_resize: signed(19 downto 0);
  signal c_8_i0_shift: signed(19 downto 0);
  signal c_8_i1_shift: signed(19 downto 0);
  signal c_8_arith: signed(19 downto 0);
  signal c_8_oshift: signed(19 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(27 downto 0);
  signal c_9_1_0_False_resize: signed(27 downto 0);
  signal c_9_1_0_False_shift: signed(27 downto 0);
  signal c_9_1_4_False_resize: signed(27 downto 0);
  signal c_9_1_4_False_shift: signed(27 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(25 downto 0);
  signal c_10_1_0_False_resize: signed(25 downto 0);
  signal c_10_1_0_False_shift: signed(25 downto 0);
  signal c_10_4_6_False_resize: signed(25 downto 0);
  signal c_10_4_6_False_shift: signed(25 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(30 downto 0);
  signal c_11_i0_resize: signed(30 downto 0);
  signal c_11_i1_resize: signed(30 downto 0);
  signal c_11_i0_shift: signed(30 downto 0);
  signal c_11_i1_shift: signed(30 downto 0);
  signal c_11_arith: signed(30 downto 0);
  signal c_11_oshift: signed(30 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(21 downto 0);
  signal c_12_4_0_False_resize: signed(21 downto 0);
  signal c_12_4_0_False_shift: signed(21 downto 0);
  signal c_12_8_2_False_resize: signed(21 downto 0);
  signal c_12_8_2_False_shift: signed(21 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(24 downto 0);
  signal c_13_4_0_False_resize: signed(24 downto 0);
  signal c_13_4_0_False_shift: signed(24 downto 0);
  signal c_13_4_5_False_resize: signed(24 downto 0);
  signal c_13_4_5_False_shift: signed(24 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(24 downto 0);
  signal c_14_i0_resize: signed(24 downto 0);
  signal c_14_i1_resize: signed(24 downto 0);
  signal c_14_i0_shift: signed(24 downto 0);
  signal c_14_i1_shift: signed(24 downto 0);
  signal c_14_arith: signed(24 downto 0);
  signal c_14_oshift: signed(24 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(15 downto 0);
  signal c_16: signed(27 downto 0);
  signal c_16_i0_resize: signed(27 downto 0);
  signal c_16_i1_resize: signed(27 downto 0);
  signal c_16_i0_shift: signed(27 downto 0);
  signal c_16_i1_shift: signed(27 downto 0);
  signal c_16_arith: signed(27 downto 0);
  signal c_16_oshift: signed(27 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(28 downto 0);
  signal c_17_4_0_False_resize: signed(28 downto 0);
  signal c_17_4_0_False_shift: signed(28 downto 0);
  signal c_17_8_10_False_resize: signed(28 downto 0);
  signal c_17_8_10_False_shift: signed(28 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_4_0_False_resize: signed(25 downto 0);
  signal c_18_4_0_False_shift: signed(25 downto 0);
  signal c_18_4_6_False_resize: signed(25 downto 0);
  signal c_18_4_6_False_shift: signed(25 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_i0_resize: signed(25 downto 0);
  signal c_19_i1_resize: signed(25 downto 0);
  signal c_19_i0_shift: signed(25 downto 0);
  signal c_19_i1_shift: signed(25 downto 0);
  signal c_19_arith: signed(25 downto 0);
  signal c_19_oshift: signed(25 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(25 downto 0);
  signal c_20_i0_resize: signed(25 downto 0);
  signal c_20_i1_resize: signed(25 downto 0);
  signal c_20_i0_shift: signed(25 downto 0);
  signal c_20_i1_shift: signed(25 downto 0);
  signal c_20_arith: signed(25 downto 0);
  signal c_20_oshift: signed(25 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(18 downto 0);
  signal c_21_0_3_False_resize: signed(18 downto 0);
  signal c_21_0_3_False_shift: signed(18 downto 0);
  signal c_21_0_0_False_resize: signed(18 downto 0);
  signal c_21_0_0_False_shift: signed(18 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(16 downto 0);
  signal c_22_0_0_False_resize: signed(16 downto 0);
  signal c_22_0_0_False_shift: signed(16 downto 0);
  signal c_22_0_1_False_resize: signed(16 downto 0);
  signal c_22_0_1_False_shift: signed(16 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_i0_resize: signed(23 downto 0);
  signal c_23_i1_resize: signed(23 downto 0);
  signal c_23_i0_shift: signed(23 downto 0);
  signal c_23_i1_shift: signed(23 downto 0);
  signal c_23_arith: signed(23 downto 0);
  signal c_23_oshift: signed(23 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(23 downto 0);
  signal c_24_8_4_False_resize: signed(23 downto 0);
  signal c_24_8_4_False_shift: signed(23 downto 0);
  signal c_24_8_0_False_resize: signed(23 downto 0);
  signal c_24_8_0_False_shift: signed(23 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_4_4_False_resize: signed(23 downto 0);
  signal c_25_4_4_False_shift: signed(23 downto 0);
  signal c_25_8_0_False_resize: signed(23 downto 0);
  signal c_25_8_0_False_shift: signed(23 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_i0_resize: signed(25 downto 0);
  signal c_26_i1_resize: signed(25 downto 0);
  signal c_26_i0_shift: signed(25 downto 0);
  signal c_26_i1_shift: signed(25 downto 0);
  signal c_26_arith: signed(25 downto 0);
  signal c_26_oshift: signed(25 downto 0);
  signal c_27: signed(18 downto 0);
  signal c_27_i0_resize: signed(18 downto 0);
  signal c_27_i1_resize: signed(18 downto 0);
  signal c_27_i0_shift: signed(18 downto 0);
  signal c_27_i1_shift: signed(18 downto 0);
  signal c_27_arith: signed(18 downto 0);
  signal c_27_oshift: signed(18 downto 0);
  signal c_28: signed(19 downto 0);
  signal c_28_4_0_False_resize: signed(19 downto 0);
  signal c_28_4_0_False_shift: signed(19 downto 0);
  signal c_28_27_0_False_resize: signed(19 downto 0);
  signal c_28_27_0_False_shift: signed(19 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(19 downto 0);
  signal c_29_27_1_False_resize: signed(19 downto 0);
  signal c_29_27_1_False_shift: signed(19 downto 0);
  signal c_29_2_0_False_resize: signed(19 downto 0);
  signal c_29_2_0_False_shift: signed(19 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(24 downto 0);
  signal c_30_i0_resize: signed(24 downto 0);
  signal c_30_i1_resize: signed(24 downto 0);
  signal c_30_i0_shift: signed(24 downto 0);
  signal c_30_i1_shift: signed(24 downto 0);
  signal c_30_arith: signed(24 downto 0);
  signal c_30_oshift: signed(24 downto 0);
  signal c_31: signed(18 downto 0);
  signal c_31_i0_resize: signed(18 downto 0);
  signal c_31_i1_resize: signed(18 downto 0);
  signal c_31_i0_shift: signed(18 downto 0);
  signal c_31_i1_shift: signed(18 downto 0);
  signal c_31_arith: signed(18 downto 0);
  signal c_31_oshift: signed(18 downto 0);
  signal c_31_sub_sel: std_logic;
  signal c_32: signed(19 downto 0);
  signal c_32_27_0_False_resize: signed(19 downto 0);
  signal c_32_27_0_False_shift: signed(19 downto 0);
  signal c_32_8_0_False_resize: signed(19 downto 0);
  signal c_32_8_0_False_shift: signed(19 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(24 downto 0);
  signal c_33_i0_resize: signed(24 downto 0);
  signal c_33_i1_resize: signed(24 downto 0);
  signal c_33_i0_shift: signed(24 downto 0);
  signal c_33_i1_shift: signed(24 downto 0);
  signal c_33_arith: signed(24 downto 0);
  signal c_33_oshift: signed(24 downto 0);
  signal c_33_sub_sel: std_logic;
  signal c_34: signed(28 downto 0);
  signal c_34_3_5_False_resize: signed(28 downto 0);
  signal c_34_3_5_False_shift: signed(28 downto 0);
  signal c_34_23_0_False_resize: signed(28 downto 0);
  signal c_34_23_0_False_shift: signed(28 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_i0_resize: signed(25 downto 0);
  signal c_35_i1_resize: signed(25 downto 0);
  signal c_35_i0_shift: signed(25 downto 0);
  signal c_35_i1_shift: signed(25 downto 0);
  signal c_35_arith: signed(25 downto 0);
  signal c_35_oshift: signed(25 downto 0);
  signal c_36: signed(21 downto 0);
  signal c_36_0_6_False_resize: signed(21 downto 0);
  signal c_36_0_6_False_shift: signed(21 downto 0);
  signal c_36_0_0_False_resize: signed(21 downto 0);
  signal c_36_0_0_False_shift: signed(21 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_i0_resize: signed(25 downto 0);
  signal c_37_i1_resize: signed(25 downto 0);
  signal c_37_i0_shift: signed(25 downto 0);
  signal c_37_i1_shift: signed(25 downto 0);
  signal c_37_arith: signed(25 downto 0);
  signal c_37_oshift: signed(25 downto 0);
  signal c_38: signed(24 downto 0);
  signal c_38_1_1_False_resize: signed(24 downto 0);
  signal c_38_1_1_False_shift: signed(24 downto 0);
  signal c_38_27_0_False_resize: signed(24 downto 0);
  signal c_38_27_0_False_shift: signed(24 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(24 downto 0);
  signal c_39_27_0_False_resize: signed(24 downto 0);
  signal c_39_27_0_False_shift: signed(24 downto 0);
  signal c_39_8_6_False_resize: signed(24 downto 0);
  signal c_39_8_6_False_shift: signed(24 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(24 downto 0);
  signal c_40_i0_resize: signed(24 downto 0);
  signal c_40_i1_resize: signed(24 downto 0);
  signal c_40_i0_shift: signed(24 downto 0);
  signal c_40_i1_shift: signed(24 downto 0);
  signal c_40_arith: signed(24 downto 0);
  signal c_40_oshift: signed(24 downto 0);
  signal c_40_sub_sel: std_logic;
  signal c_41: signed(23 downto 0);
  signal c_41_1_0_False_resize: signed(23 downto 0);
  signal c_41_1_0_False_shift: signed(23 downto 0);
  signal c_41_27_0_False_resize: signed(23 downto 0);
  signal c_41_27_0_False_shift: signed(23 downto 0);
  signal c_41_sel: std_logic_vector(0 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_42_31_0_False_resize: signed(25 downto 0);
  signal c_42_31_0_False_shift: signed(25 downto 0);
  signal c_42_8_7_False_resize: signed(25 downto 0);
  signal c_42_8_7_False_shift: signed(25 downto 0);
  signal c_42_sel: std_logic_vector(0 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_43_i0_resize: signed(25 downto 0);
  signal c_43_i1_resize: signed(25 downto 0);
  signal c_43_i0_shift: signed(25 downto 0);
  signal c_43_i1_shift: signed(25 downto 0);
  signal c_43_arith: signed(25 downto 0);
  signal c_43_oshift: signed(25 downto 0);
  signal c_44: signed(26 downto 0);
  signal c_44_16_0_False_resize: signed(26 downto 0);
  signal c_44_16_0_False_shift: signed(26 downto 0);
  signal c_44_37_0_False_resize: signed(26 downto 0);
  signal c_44_37_0_False_shift: signed(26 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_i0_resize: signed(30 downto 0);
  signal c_45_i1_resize: signed(30 downto 0);
  signal c_45_i0_shift: signed(30 downto 0);
  signal c_45_i1_shift: signed(30 downto 0);
  signal c_45_arith: signed(30 downto 0);
  signal c_45_oshift: signed(25 downto 0);
  signal c_46: signed(20 downto 0);
  signal c_46_8_1_False_resize: signed(20 downto 0);
  signal c_46_8_1_False_shift: signed(20 downto 0);
  signal c_46_4_0_False_resize: signed(20 downto 0);
  signal c_46_4_0_False_shift: signed(20 downto 0);
  signal c_46_sel: std_logic_vector(0 downto 0);
  signal c_47: signed(19 downto 0);
  signal c_47_27_1_False_resize: signed(19 downto 0);
  signal c_47_27_1_False_shift: signed(19 downto 0);
  signal c_47_8_0_False_resize: signed(19 downto 0);
  signal c_47_8_0_False_shift: signed(19 downto 0);
  signal c_47_sel: std_logic_vector(0 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_48_i0_resize: signed(25 downto 0);
  signal c_48_i1_resize: signed(25 downto 0);
  signal c_48_i0_shift: signed(25 downto 0);
  signal c_48_i1_shift: signed(25 downto 0);
  signal c_48_arith: signed(25 downto 0);
  signal c_48_oshift: signed(25 downto 0);
  signal c_48_sub_sel: std_logic;
  signal c_49: signed(25 downto 0);
  signal c_49_20_0_False_resize: signed(25 downto 0);
  signal c_49_20_0_False_shift: signed(25 downto 0);
  signal c_49_1_0_False_resize: signed(25 downto 0);
  signal c_49_1_0_False_shift: signed(25 downto 0);
  signal c_49_sel: std_logic_vector(0 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_50_i0_resize: signed(27 downto 0);
  signal c_50_i1_resize: signed(27 downto 0);
  signal c_50_i0_shift: signed(27 downto 0);
  signal c_50_i1_shift: signed(27 downto 0);
  signal c_50_arith: signed(27 downto 0);
  signal c_50_oshift: signed(25 downto 0);
  signal c_50_sub_sel: std_logic;
  signal c_51: signed(24 downto 0);
  signal c_51_2_0_False_resize: signed(24 downto 0);
  signal c_51_2_0_False_shift: signed(24 downto 0);
  signal c_51_4_5_False_resize: signed(24 downto 0);
  signal c_51_4_5_False_shift: signed(24 downto 0);
  signal c_51_sel: std_logic_vector(0 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_52_i0_resize: signed(25 downto 0);
  signal c_52_i1_resize: signed(25 downto 0);
  signal c_52_i0_shift: signed(25 downto 0);
  signal c_52_i1_shift: signed(25 downto 0);
  signal c_52_arith: signed(25 downto 0);
  signal c_52_oshift: signed(25 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_53_33_1_False_resize: signed(25 downto 0);
  signal c_53_33_1_False_shift: signed(25 downto 0);
  signal c_53_50_0_False_resize: signed(25 downto 0);
  signal c_53_50_0_False_shift: signed(25 downto 0);
  signal c_53_sel: std_logic_vector(0 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_54_resize: signed(25 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_55_43_0_False_resize: signed(25 downto 0);
  signal c_55_43_0_False_shift: signed(25 downto 0);
  signal c_55_30_0_False_resize: signed(25 downto 0);
  signal c_55_30_0_False_shift: signed(25 downto 0);
  signal c_55_sel: std_logic_vector(0 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_56_resize: signed(25 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_57_resize: signed(25 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_58_resize: signed(25 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_59_7_0_False_resize: signed(25 downto 0);
  signal c_59_7_0_False_shift: signed(25 downto 0);
  signal c_59_26_0_False_resize: signed(25 downto 0);
  signal c_59_26_0_False_shift: signed(25 downto 0);
  signal c_59_sel: std_logic_vector(0 downto 0);
  signal c_60: signed(25 downto 0);
  signal c_60_resize: signed(25 downto 0);
  signal c_61: signed(25 downto 0);
  signal c_61_50_0_False_resize: signed(25 downto 0);
  signal c_61_50_0_False_shift: signed(25 downto 0);
  signal c_61_7_0_False_resize: signed(25 downto 0);
  signal c_61_7_0_False_shift: signed(25 downto 0);
  signal c_61_sel: std_logic_vector(0 downto 0);
  signal c_62: signed(25 downto 0);
  signal c_62_resize: signed(25 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_63_40_0_False_resize: signed(25 downto 0);
  signal c_63_40_0_False_shift: signed(25 downto 0);
  signal c_63_48_0_False_resize: signed(25 downto 0);
  signal c_63_48_0_False_shift: signed(25 downto 0);
  signal c_63_sel: std_logic_vector(0 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_64_resize: signed(25 downto 0);
  signal c_65: signed(25 downto 0);
  signal c_65_30_0_False_resize: signed(25 downto 0);
  signal c_65_30_0_False_shift: signed(25 downto 0);
  signal c_65_43_0_False_resize: signed(25 downto 0);
  signal c_65_43_0_False_shift: signed(25 downto 0);
  signal c_65_sel: std_logic_vector(0 downto 0);
  signal c_66: signed(25 downto 0);
  signal c_66_resize: signed(25 downto 0);
  signal c_67: signed(25 downto 0);
  signal c_67_14_1_False_resize: signed(25 downto 0);
  signal c_67_14_1_False_shift: signed(25 downto 0);
  signal c_67_40_0_False_resize: signed(25 downto 0);
  signal c_67_40_0_False_shift: signed(25 downto 0);
  signal c_67_sel: std_logic_vector(0 downto 0);
  signal c_68: signed(25 downto 0);
  signal c_68_resize: signed(25 downto 0);
  signal c_69: signed(25 downto 0);
  signal c_69_52_0_False_resize: signed(25 downto 0);
  signal c_69_52_0_False_shift: signed(25 downto 0);
  signal c_69_48_1_False_resize: signed(25 downto 0);
  signal c_69_48_1_False_shift: signed(25 downto 0);
  signal c_69_sel: std_logic_vector(0 downto 0);
  signal c_70: signed(25 downto 0);
  signal c_70_resize: signed(25 downto 0);
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
  -- output node 0 with id 54
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_54);
    end if;
  end process;
  -- output node 1 with id 56
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_56);
    end if;
  end process;
  -- output node 2 with id 57
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_57);
    end if;
  end process;
  -- output node 3 with id 58
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_58);
    end if;
  end process;
  -- output node 4 with id 60
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_60);
    end if;
  end process;
  -- output node 5 with id 62
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_62);
    end if;
  end process;
  -- output node 6 with id 64
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_64);
    end if;
  end process;
  -- output node 7 with id 66
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_66);
    end if;
  end process;
  -- output node 8 with id 68
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_68);
    end if;
  end process;
  -- output node 9 with id 70
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_70);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 1 and associated fundamentals [[132], [132]]
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 24,
      s_x_i => 7,
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
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 2 and associated fundamentals [[12], [12]]
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
      s_x_i => 2,
      s_y_i => 3,
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
      c_2 <= c_2_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[180], [204]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
      w_o => 24,
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
      sub_i => c_3_sub_sel,
      x_i => c_2,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 4 and associated fundamentals [[-15], [-15]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
      s_x_i => 0,
      s_y_i => 4,
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
      c_4 <= c_4_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 5 and associated fundamentals [[24], [-15]]
  c_5_4_0_False_resize <= resize(c_4, 21);
  c_5_4_0_False_shift <= shift_left(c_5_4_0_False_resize, 0);
  c_5_2_1_False_resize <= resize(c_2, 21);
  c_5_2_1_False_shift <= shift_left(c_5_2_1_False_resize, 1);
  with config_select_2 select c_5_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_4_0_False_shift;
        when others => c_5 <= c_5_2_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[12], [-60]]
  c_6_4_2_False_resize <= resize(c_4, 22);
  c_6_4_2_False_shift <= shift_left(c_6_4_2_False_resize, 2);
  c_6_2_0_False_resize <= resize(c_2, 22);
  c_6_2_0_False_shift <= shift_left(c_6_2_0_False_resize, 0);
  with config_select_2 select c_6_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_4_2_False_shift;
        when others => c_6 <= c_6_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 7 and associated fundamentals [[216], [945]]
  with config_select_3 select c_7_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 22,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 4,
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
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 8 and associated fundamentals [[9], [-7]]
  with config_select_1 select c_8_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
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
      sub_i => c_8_sub_sel,
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
  -- node of type 'mux' in stage 2 with id 9 and associated fundamentals [[2112], [132]]
  c_9_1_0_False_resize <= resize(c_1, 28);
  c_9_1_0_False_shift <= shift_left(c_9_1_0_False_resize, 0);
  c_9_1_4_False_resize <= resize(c_1, 28);
  c_9_1_4_False_shift <= shift_left(c_9_1_4_False_resize, 4);
  with config_select_2 select c_9_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_1_0_False_shift;
        when others => c_9 <= c_9_1_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 10 and associated fundamentals [[132], [-960]]
  c_10_1_0_False_resize <= resize(c_1, 26);
  c_10_1_0_False_shift <= shift_left(c_10_1_0_False_resize, 0);
  c_10_4_6_False_resize <= resize(c_4, 26);
  c_10_4_6_False_shift <= shift_left(c_10_4_6_False_resize, 6);
  with config_select_2 select c_10_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_1_0_False_shift;
        when others => c_10 <= c_10_4_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 11 and associated fundamentals [[17424], [4896]]
  with config_select_3 select c_11_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 26,
      w_o => 31,
      s_x_i => 3,
      s_y_i => 2,
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
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(30 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 12 and associated fundamentals [[36], [-15]]
  c_12_4_0_False_resize <= resize(c_4, 22);
  c_12_4_0_False_shift <= shift_left(c_12_4_0_False_resize, 0);
  c_12_8_2_False_resize <= resize(c_8, 22);
  c_12_8_2_False_shift <= shift_left(c_12_8_2_False_resize, 2);
  with config_select_2 select c_12_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_4_0_False_shift;
        when others => c_12 <= c_12_8_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 13 and associated fundamentals [[-15], [-480]]
  c_13_4_0_False_resize <= resize(c_4, 25);
  c_13_4_0_False_shift <= shift_left(c_13_4_0_False_resize, 0);
  c_13_4_5_False_resize <= resize(c_4, 25);
  c_13_4_5_False_shift <= shift_left(c_13_4_5_False_resize, 5);
  with config_select_2 select c_13_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_4_0_False_shift;
        when others => c_13 <= c_13_4_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 14 and associated fundamentals [[273], [360]]
  with config_select_3 select c_14_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 25,
      w_o => 25,
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
  -- node of type 'register' in stage 1 with id 15 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 16 and associated fundamentals [[-2000], [2096]]
  with config_select_2 select c_16_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 16,
      w_o => 28,
      s_x_i => 2,
      s_y_i => 11,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_16_sub_sel,
      x_i => c_2,
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(27 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 17 and associated fundamentals [[-15], [-7168]]
  c_17_4_0_False_resize <= resize(c_4, 29);
  c_17_4_0_False_shift <= shift_left(c_17_4_0_False_resize, 0);
  c_17_8_10_False_resize <= resize(c_8, 29);
  c_17_8_10_False_shift <= shift_left(c_17_8_10_False_resize, 10);
  with config_select_2 select c_17_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_4_0_False_shift;
        when others => c_17 <= c_17_8_10_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 18 and associated fundamentals [[-960], [-15]]
  c_18_4_0_False_resize <= resize(c_4, 26);
  c_18_4_0_False_shift <= shift_left(c_18_4_0_False_resize, 0);
  c_18_4_6_False_resize <= resize(c_4, 26);
  c_18_4_6_False_shift <= shift_left(c_18_4_6_False_resize, 6);
  with config_select_2 select c_18_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_4_0_False_shift;
        when others => c_18 <= c_18_4_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 19 and associated fundamentals [[-975], [-7153]]
  with config_select_3 select c_19_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 29,
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
  -- node of type 'add_sub' in stage 1 with id 20 and associated fundamentals [[256], [768]]
  with config_select_1 select c_20_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 26,
      s_x_i => 9,
      s_y_i => 8,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_20_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 21 and associated fundamentals [[1], [8]]
  c_21_0_3_False_resize <= resize(c_0, 19);
  c_21_0_3_False_shift <= shift_left(c_21_0_3_False_resize, 3);
  c_21_0_0_False_resize <= resize(c_0, 19);
  c_21_0_0_False_shift <= shift_left(c_21_0_0_False_resize, 0);
  with config_select_1 select c_21_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_0_3_False_shift;
        when others => c_21 <= c_21_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 22 and associated fundamentals [[2], [1]]
  c_22_0_0_False_resize <= resize(c_0, 17);
  c_22_0_0_False_shift <= shift_left(c_22_0_0_False_resize, 0);
  c_22_0_1_False_resize <= resize(c_0, 17);
  c_22_0_1_False_shift <= shift_left(c_22_0_1_False_resize, 1);
  with config_select_1 select c_22_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_0_0_False_shift;
        when others => c_22 <= c_22_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 23 and associated fundamentals [[130], [-48]]
  with config_select_2 select c_23_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 17,
      w_o => 24,
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
      sub_i => c_23_sub_sel,
      x_i => c_21,
      y_i => c_22,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 24 and associated fundamentals [[144], [-7]]
  c_24_8_4_False_resize <= resize(c_8, 24);
  c_24_8_4_False_shift <= shift_left(c_24_8_4_False_resize, 4);
  c_24_8_0_False_resize <= resize(c_8, 24);
  c_24_8_0_False_shift <= shift_left(c_24_8_0_False_resize, 0);
  with config_select_2 select c_24_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_8_4_False_shift;
        when others => c_24 <= c_24_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 25 and associated fundamentals [[9], [-240]]
  c_25_4_4_False_resize <= resize(c_4, 24);
  c_25_4_4_False_shift <= shift_left(c_25_4_4_False_resize, 4);
  c_25_8_0_False_resize <= resize(c_8, 24);
  c_25_8_0_False_shift <= shift_left(c_25_8_0_False_resize, 0);
  with config_select_2 select c_25_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_4_4_False_shift;
        when others => c_25 <= c_25_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 26 and associated fundamentals [[567], [212]]
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
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
      x_i => c_24,
      y_i => c_25,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 27 and associated fundamentals [[5], [5]]
  inst_adder_node_27: entity work.adder_node
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
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 28 and associated fundamentals [[-15], [5]]
  c_28_4_0_False_resize <= c_4;
  c_28_4_0_False_shift <= shift_left(c_28_4_0_False_resize, 0);
  c_28_27_0_False_resize <= resize(c_27, 20);
  c_28_27_0_False_shift <= shift_left(c_28_27_0_False_resize, 0);
  with config_select_2 select c_28_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "0" => c_28 <= c_28_4_0_False_shift;
        when others => c_28 <= c_28_27_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 29 and associated fundamentals [[10], [12]]
  c_29_27_1_False_resize <= resize(c_27, 20);
  c_29_27_1_False_shift <= shift_left(c_29_27_1_False_resize, 1);
  c_29_2_0_False_resize <= c_2;
  c_29_2_0_False_shift <= shift_left(c_29_2_0_False_resize, 0);
  with config_select_2 select c_29_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_27_1_False_shift;
        when others => c_29 <= c_29_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 30 and associated fundamentals [[305], [389]]
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 5,
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
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_30_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 31 and associated fundamentals [[2], [6]]
  with config_select_1 select c_31_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
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
      sub_i => c_31_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 32 and associated fundamentals [[9], [5]]
  c_32_27_0_False_resize <= resize(c_27, 20);
  c_32_27_0_False_shift <= shift_left(c_32_27_0_False_resize, 0);
  c_32_8_0_False_resize <= c_8;
  c_32_8_0_False_shift <= shift_left(c_32_8_0_False_resize, 0);
  with config_select_2 select c_32_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "0" => c_32 <= c_32_27_0_False_shift;
        when others => c_32 <= c_32_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 33 and associated fundamentals [[369], [403]]
  with config_select_3 select c_33_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_33: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 20,
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
      sub_i => c_33_sub_sel,
      x_i => c_3,
      y_i => c_32,
      z_o => c_33_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_33_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 34 and associated fundamentals [[130], [6528]]
  c_34_3_5_False_resize <= resize(c_3, 29);
  c_34_3_5_False_shift <= shift_left(c_34_3_5_False_resize, 5);
  c_34_23_0_False_resize <= resize(c_23, 29);
  c_34_23_0_False_shift <= shift_left(c_34_23_0_False_resize, 0);
  with config_select_3 select c_34_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_3_5_False_shift;
        when others => c_34 <= c_34_23_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 35 and associated fundamentals [[-845], [-625]]
  inst_adder_node_35: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 29,
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
      x_i => c_19,
      y_i => c_34,
      z_o => c_35_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_35_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 36 and associated fundamentals [[1], [64]]
  c_36_0_6_False_resize <= resize(c_0, 22);
  c_36_0_6_False_shift <= shift_left(c_36_0_6_False_resize, 6);
  c_36_0_0_False_resize <= resize(c_0, 22);
  c_36_0_0_False_shift <= shift_left(c_36_0_0_False_resize, 0);
  with config_select_1 select c_36_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "0" => c_36 <= c_36_0_6_False_shift;
        when others => c_36 <= c_36_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 37 and associated fundamentals [[-959], [-896]]
  inst_adder_node_37: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 22,
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
      x_i => c_4,
      y_i => c_36,
      z_o => c_37_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_37_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 38 and associated fundamentals [[264], [5]]
  c_38_1_1_False_resize <= resize(c_1, 25);
  c_38_1_1_False_shift <= shift_left(c_38_1_1_False_resize, 1);
  c_38_27_0_False_resize <= resize(c_27, 25);
  c_38_27_0_False_shift <= shift_left(c_38_27_0_False_resize, 0);
  with config_select_2 select c_38_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "0" => c_38 <= c_38_1_1_False_shift;
        when others => c_38 <= c_38_27_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 39 and associated fundamentals [[5], [-448]]
  c_39_27_0_False_resize <= resize(c_27, 25);
  c_39_27_0_False_shift <= shift_left(c_39_27_0_False_resize, 0);
  c_39_8_6_False_resize <= resize(c_8, 25);
  c_39_8_6_False_shift <= shift_left(c_39_8_6_False_resize, 6);
  with config_select_2 select c_39_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "0" => c_39 <= c_39_27_0_False_shift;
        when others => c_39 <= c_39_8_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 40 and associated fundamentals [[269], [453]]
  with config_select_3 select c_40_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_40: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_40_sub_sel,
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
  -- node of type 'mux' in stage 2 with id 41 and associated fundamentals [[132], [5]]
  c_41_1_0_False_resize <= c_1;
  c_41_1_0_False_shift <= shift_left(c_41_1_0_False_resize, 0);
  c_41_27_0_False_resize <= resize(c_27, 24);
  c_41_27_0_False_shift <= shift_left(c_41_27_0_False_resize, 0);
  with config_select_2 select c_41_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "0" => c_41 <= c_41_1_0_False_shift;
        when others => c_41 <= c_41_27_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 42 and associated fundamentals [[2], [-896]]
  c_42_31_0_False_resize <= resize(c_31, 26);
  c_42_31_0_False_shift <= shift_left(c_42_31_0_False_resize, 0);
  c_42_8_7_False_resize <= resize(c_8, 26);
  c_42_8_7_False_shift <= shift_left(c_42_8_7_False_resize, 7);
  with config_select_2 select c_42_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "0" => c_42 <= c_42_31_0_False_shift;
        when others => c_42 <= c_42_8_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 43 and associated fundamentals [[526], [916]]
  inst_adder_node_43: entity work.adder_node
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
  -- node of type 'mux' in stage 3 with id 44 and associated fundamentals [[-2000], [-896]]
  c_44_16_0_False_resize <= c_16(26 downto 0);
  c_44_16_0_False_shift <= shift_left(c_44_16_0_False_resize, 0);
  c_44_37_0_False_resize <= resize(c_37, 27);
  c_44_37_0_False_shift <= shift_left(c_44_37_0_False_resize, 0);
  with config_select_3 select c_44_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "0" => c_44 <= c_44_16_0_False_shift;
        when others => c_44 <= c_44_37_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 45 and associated fundamentals [[-607], [-181]]
  inst_adder_node_45: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 31,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 5,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_44,
      y_i => c_11,
      z_o => c_45_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_45_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 46 and associated fundamentals [[18], [-15]]
  c_46_8_1_False_resize <= resize(c_8, 21);
  c_46_8_1_False_shift <= shift_left(c_46_8_1_False_resize, 1);
  c_46_4_0_False_resize <= resize(c_4, 21);
  c_46_4_0_False_shift <= shift_left(c_46_4_0_False_resize, 0);
  with config_select_2 select c_46_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "0" => c_46 <= c_46_8_1_False_shift;
        when others => c_46 <= c_46_4_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 47 and associated fundamentals [[9], [10]]
  c_47_27_1_False_resize <= resize(c_27, 20);
  c_47_27_1_False_shift <= shift_left(c_47_27_1_False_resize, 1);
  c_47_8_0_False_resize <= c_8;
  c_47_8_0_False_shift <= shift_left(c_47_8_0_False_resize, 0);
  with config_select_2 select c_47_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "0" => c_47 <= c_47_27_1_False_shift;
        when others => c_47 <= c_47_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 48 and associated fundamentals [[585], [-490]]
  with config_select_3 select c_48_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_48: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 20,
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
      sub_i => c_48_sub_sel,
      x_i => c_46,
      y_i => c_47,
      z_o => c_48_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_48_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 49 and associated fundamentals [[132], [768]]
  c_49_20_0_False_resize <= c_20;
  c_49_20_0_False_shift <= shift_left(c_49_20_0_False_resize, 0);
  c_49_1_0_False_resize <= resize(c_1, 26);
  c_49_1_0_False_shift <= shift_left(c_49_1_0_False_resize, 0);
  with config_select_2 select c_49_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_49_sel is
        when "0" => c_49 <= c_49_20_0_False_shift;
        when others => c_49 <= c_49_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 50 and associated fundamentals [[533], [716]]
  with config_select_3 select c_50_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_50: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 28,
      w_o => 26,
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
      sub_i => c_50_sub_sel,
      x_i => c_49,
      y_i => c_16,
      z_o => c_50_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_50_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 51 and associated fundamentals [[12], [-480]]
  c_51_2_0_False_resize <= resize(c_2, 25);
  c_51_2_0_False_shift <= shift_left(c_51_2_0_False_resize, 0);
  c_51_4_5_False_resize <= resize(c_4, 25);
  c_51_4_5_False_shift <= shift_left(c_51_4_5_False_resize, 5);
  with config_select_2 select c_51_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_51_sel is
        when "0" => c_51 <= c_51_2_0_False_shift;
        when others => c_51 <= c_51_4_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 52 and associated fundamentals [[-971], [-416]]
  inst_adder_node_52: entity work.adder_node
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
      x_i => c_37,
      y_i => c_51,
      z_o => c_52_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_52_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 53 and associated fundamentals [[533], [806]]
  c_53_33_1_False_resize <= resize(c_33, 26);
  c_53_33_1_False_shift <= shift_left(c_53_33_1_False_resize, 1);
  c_53_50_0_False_resize <= c_50;
  c_53_50_0_False_shift <= shift_left(c_53_50_0_False_resize, 0);
  with config_select_4 select c_53_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_53_sel is
        when "0" => c_53 <= c_53_33_1_False_shift;
        when others => c_53 <= c_53_50_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 54 and associated fundamentals [[533], [806]]
  c_54_resize <= c_53;
  c_54 <= shift_left(c_54_resize, 0);
  -- node of type 'mux' in stage 4 with id 55 and associated fundamentals [[526], [389]]
  c_55_43_0_False_resize <= c_43;
  c_55_43_0_False_shift <= shift_left(c_55_43_0_False_resize, 0);
  c_55_30_0_False_resize <= resize(c_30, 26);
  c_55_30_0_False_shift <= shift_left(c_55_30_0_False_resize, 0);
  with config_select_4 select c_55_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_55_sel is
        when "0" => c_55 <= c_55_43_0_False_shift;
        when others => c_55 <= c_55_30_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 56 and associated fundamentals [[526], [389]]
  c_56_resize <= c_55;
  c_56 <= shift_left(c_56_resize, 0);
  -- node of type 'output' in stage 4 with id 57 and associated fundamentals [[607], [181]]
  c_57_resize <= c_45;
  c_57 <= -shift_left(c_57_resize, 0);
  -- node of type 'output' in stage 4 with id 58 and associated fundamentals [[845], [625]]
  c_58_resize <= c_35;
  c_58 <= -shift_left(c_58_resize, 0);
  -- node of type 'mux' in stage 4 with id 59 and associated fundamentals [[567], [945]]
  c_59_7_0_False_resize <= c_7;
  c_59_7_0_False_shift <= shift_left(c_59_7_0_False_resize, 0);
  c_59_26_0_False_resize <= c_26;
  c_59_26_0_False_shift <= shift_left(c_59_26_0_False_resize, 0);
  with config_select_4 select c_59_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_59_sel is
        when "0" => c_59 <= c_59_7_0_False_shift;
        when others => c_59 <= c_59_26_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 60 and associated fundamentals [[567], [945]]
  c_60_resize <= c_59;
  c_60 <= shift_left(c_60_resize, 0);
  -- node of type 'mux' in stage 4 with id 61 and associated fundamentals [[216], [716]]
  c_61_50_0_False_resize <= c_50;
  c_61_50_0_False_shift <= shift_left(c_61_50_0_False_resize, 0);
  c_61_7_0_False_resize <= c_7;
  c_61_7_0_False_shift <= shift_left(c_61_7_0_False_resize, 0);
  with config_select_4 select c_61_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_61_sel is
        when "0" => c_61 <= c_61_50_0_False_shift;
        when others => c_61 <= c_61_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 62 and associated fundamentals [[216], [716]]
  c_62_resize <= c_61;
  c_62 <= shift_left(c_62_resize, 0);
  -- node of type 'mux' in stage 4 with id 63 and associated fundamentals [[585], [453]]
  c_63_40_0_False_resize <= resize(c_40, 26);
  c_63_40_0_False_shift <= shift_left(c_63_40_0_False_resize, 0);
  c_63_48_0_False_resize <= c_48;
  c_63_48_0_False_shift <= shift_left(c_63_48_0_False_resize, 0);
  with config_select_4 select c_63_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_63_sel is
        when "0" => c_63 <= c_63_40_0_False_shift;
        when others => c_63 <= c_63_48_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 64 and associated fundamentals [[585], [453]]
  c_64_resize <= c_63;
  c_64 <= shift_left(c_64_resize, 0);
  -- node of type 'mux' in stage 4 with id 65 and associated fundamentals [[305], [916]]
  c_65_30_0_False_resize <= resize(c_30, 26);
  c_65_30_0_False_shift <= shift_left(c_65_30_0_False_resize, 0);
  c_65_43_0_False_resize <= c_43;
  c_65_43_0_False_shift <= shift_left(c_65_43_0_False_resize, 0);
  with config_select_4 select c_65_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_65_sel is
        when "0" => c_65 <= c_65_30_0_False_shift;
        when others => c_65 <= c_65_43_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 66 and associated fundamentals [[305], [916]]
  c_66_resize <= c_65;
  c_66 <= shift_left(c_66_resize, 0);
  -- node of type 'mux' in stage 4 with id 67 and associated fundamentals [[269], [720]]
  c_67_14_1_False_resize <= resize(c_14, 26);
  c_67_14_1_False_shift <= shift_left(c_67_14_1_False_resize, 1);
  c_67_40_0_False_resize <= resize(c_40, 26);
  c_67_40_0_False_shift <= shift_left(c_67_40_0_False_resize, 0);
  with config_select_4 select c_67_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_67_sel is
        when "0" => c_67 <= c_67_14_1_False_shift;
        when others => c_67 <= c_67_40_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 68 and associated fundamentals [[269], [720]]
  c_68_resize <= c_67;
  c_68 <= shift_left(c_68_resize, 0);
  -- node of type 'mux' in stage 4 with id 69 and associated fundamentals [[-971], [-980]]
  c_69_52_0_False_resize <= c_52;
  c_69_52_0_False_shift <= shift_left(c_69_52_0_False_resize, 0);
  c_69_48_1_False_resize <= c_48;
  c_69_48_1_False_shift <= shift_left(c_69_48_1_False_resize, 1);
  with config_select_4 select c_69_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_69_sel is
        when "0" => c_69 <= c_69_52_0_False_shift;
        when others => c_69 <= c_69_48_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 70 and associated fundamentals [[971], [980]]
  c_70_resize <= c_69;
  c_70 <= -shift_left(c_70_resize, 0);
end architecture;
