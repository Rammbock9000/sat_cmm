library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(22 downto 0);
    y_1: out std_logic_vector(22 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(23 downto 0);
    y_5: out std_logic_vector(20 downto 0);
    y_6: out std_logic_vector(23 downto 0);
    y_7: out std_logic_vector(23 downto 0);
    y_8: out std_logic_vector(23 downto 0);
    y_9: out std_logic_vector(23 downto 0);
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
  signal c_1: signed(16 downto 0);
  signal c_1_0_0_False_resize: signed(16 downto 0);
  signal c_1_0_0_False_shift: signed(16 downto 0);
  signal c_1_0_1_False_resize: signed(16 downto 0);
  signal c_1_0_1_False_shift: signed(16 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(16 downto 0);
  signal c_2_0_0_False_resize: signed(16 downto 0);
  signal c_2_0_0_False_shift: signed(16 downto 0);
  signal c_2_0_1_False_resize: signed(16 downto 0);
  signal c_2_0_1_False_shift: signed(16 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(16 downto 0);
  signal c_3_i0_resize: signed(16 downto 0);
  signal c_3_i1_resize: signed(16 downto 0);
  signal c_3_i0_shift: signed(16 downto 0);
  signal c_3_i1_shift: signed(16 downto 0);
  signal c_3_arith: signed(16 downto 0);
  signal c_3_oshift: signed(16 downto 0);
  signal c_4: signed(19 downto 0);
  signal c_4_3_1_False_resize: signed(19 downto 0);
  signal c_4_3_1_False_shift: signed(19 downto 0);
  signal c_4_3_3_False_resize: signed(19 downto 0);
  signal c_4_3_3_False_shift: signed(19 downto 0);
  signal c_4_3_0_False_resize: signed(19 downto 0);
  signal c_4_3_0_False_shift: signed(19 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(19 downto 0);
  signal c_5_3_4_False_resize: signed(19 downto 0);
  signal c_5_3_4_False_shift: signed(19 downto 0);
  signal c_5_3_0_False_resize: signed(19 downto 0);
  signal c_5_3_0_False_shift: signed(19 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(19 downto 0);
  signal c_6_i0_resize: signed(19 downto 0);
  signal c_6_i1_resize: signed(19 downto 0);
  signal c_6_i0_shift: signed(19 downto 0);
  signal c_6_i1_shift: signed(19 downto 0);
  signal c_6_arith: signed(19 downto 0);
  signal c_6_oshift: signed(19 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(17 downto 0);
  signal c_7_0_0_False_resize: signed(17 downto 0);
  signal c_7_0_0_False_shift: signed(17 downto 0);
  signal c_7_0_2_False_resize: signed(17 downto 0);
  signal c_7_0_2_False_shift: signed(17 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(21 downto 0);
  signal c_8_i0_resize: signed(21 downto 0);
  signal c_8_i1_resize: signed(21 downto 0);
  signal c_8_i0_shift: signed(21 downto 0);
  signal c_8_i1_shift: signed(21 downto 0);
  signal c_8_arith: signed(21 downto 0);
  signal c_8_oshift: signed(21 downto 0);
  signal c_9: signed(17 downto 0);
  signal c_9_0_1_False_resize: signed(17 downto 0);
  signal c_9_0_1_False_shift: signed(17 downto 0);
  signal c_9_0_2_False_resize: signed(17 downto 0);
  signal c_9_0_2_False_shift: signed(17 downto 0);
  signal c_9_0_0_False_resize: signed(17 downto 0);
  signal c_9_0_0_False_shift: signed(17 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(21 downto 0);
  signal c_10_0_0_False_resize: signed(21 downto 0);
  signal c_10_0_0_False_shift: signed(21 downto 0);
  signal c_10_0_6_False_resize: signed(21 downto 0);
  signal c_10_0_6_False_shift: signed(21 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(22 downto 0);
  signal c_11_i0_resize: signed(22 downto 0);
  signal c_11_i1_resize: signed(22 downto 0);
  signal c_11_i0_shift: signed(22 downto 0);
  signal c_11_i1_shift: signed(22 downto 0);
  signal c_11_arith: signed(22 downto 0);
  signal c_11_oshift: signed(22 downto 0);
  signal c_12: signed(18 downto 0);
  signal c_12_0_0_False_resize: signed(18 downto 0);
  signal c_12_0_0_False_shift: signed(18 downto 0);
  signal c_12_0_3_False_resize: signed(18 downto 0);
  signal c_12_0_3_False_shift: signed(18 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(15 downto 0);
  signal c_14: signed(21 downto 0);
  signal c_14_i0_resize: signed(21 downto 0);
  signal c_14_i1_resize: signed(21 downto 0);
  signal c_14_i0_shift: signed(21 downto 0);
  signal c_14_i1_shift: signed(21 downto 0);
  signal c_14_arith: signed(21 downto 0);
  signal c_14_oshift: signed(21 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(23 downto 0);
  signal c_15_3_1_False_resize: signed(23 downto 0);
  signal c_15_3_1_False_shift: signed(23 downto 0);
  signal c_15_8_4_False_resize: signed(23 downto 0);
  signal c_15_8_4_False_shift: signed(23 downto 0);
  signal c_15_8_0_False_resize: signed(23 downto 0);
  signal c_15_8_0_False_shift: signed(23 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(19 downto 0);
  signal c_16_14_0_False_resize: signed(19 downto 0);
  signal c_16_14_0_False_shift: signed(19 downto 0);
  signal c_16_8_0_False_resize: signed(19 downto 0);
  signal c_16_8_0_False_shift: signed(19 downto 0);
  signal c_16_11_0_False_resize: signed(19 downto 0);
  signal c_16_11_0_False_shift: signed(19 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_i0_resize: signed(23 downto 0);
  signal c_17_i1_resize: signed(23 downto 0);
  signal c_17_i0_shift: signed(23 downto 0);
  signal c_17_i1_shift: signed(23 downto 0);
  signal c_17_arith: signed(23 downto 0);
  signal c_17_oshift: signed(23 downto 0);
  signal c_18: signed(22 downto 0);
  signal c_18_14_0_False_resize: signed(22 downto 0);
  signal c_18_14_0_False_shift: signed(22 downto 0);
  signal c_18_8_3_False_resize: signed(22 downto 0);
  signal c_18_8_3_False_shift: signed(22 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(21 downto 0);
  signal c_19_3_3_False_resize: signed(21 downto 0);
  signal c_19_3_3_False_shift: signed(21 downto 0);
  signal c_19_14_0_False_resize: signed(21 downto 0);
  signal c_19_14_0_False_shift: signed(21 downto 0);
  signal c_19_8_0_False_resize: signed(21 downto 0);
  signal c_19_8_0_False_shift: signed(21 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_i0_resize: signed(23 downto 0);
  signal c_20_i1_resize: signed(23 downto 0);
  signal c_20_i0_shift: signed(23 downto 0);
  signal c_20_i1_shift: signed(23 downto 0);
  signal c_20_arith: signed(23 downto 0);
  signal c_20_oshift: signed(23 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(20 downto 0);
  signal c_21_3_4_False_resize: signed(20 downto 0);
  signal c_21_3_4_False_shift: signed(20 downto 0);
  signal c_21_11_0_False_resize: signed(20 downto 0);
  signal c_21_11_0_False_shift: signed(20 downto 0);
  signal c_21_14_1_False_resize: signed(20 downto 0);
  signal c_21_14_1_False_shift: signed(20 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(18 downto 0);
  signal c_22_3_2_False_resize: signed(18 downto 0);
  signal c_22_3_2_False_shift: signed(18 downto 0);
  signal c_22_11_0_False_resize: signed(18 downto 0);
  signal c_22_11_0_False_shift: signed(18 downto 0);
  signal c_22_3_0_False_resize: signed(18 downto 0);
  signal c_22_3_0_False_shift: signed(18 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(22 downto 0);
  signal c_23_i0_resize: signed(22 downto 0);
  signal c_23_i1_resize: signed(22 downto 0);
  signal c_23_i0_shift: signed(22 downto 0);
  signal c_23_i1_shift: signed(22 downto 0);
  signal c_23_arith: signed(22 downto 0);
  signal c_23_oshift: signed(22 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(20 downto 0);
  signal c_24_14_0_False_resize: signed(20 downto 0);
  signal c_24_14_0_False_shift: signed(20 downto 0);
  signal c_24_8_1_False_resize: signed(20 downto 0);
  signal c_24_8_1_False_shift: signed(20 downto 0);
  signal c_24_3_0_False_resize: signed(20 downto 0);
  signal c_24_3_0_False_shift: signed(20 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_8_4_False_resize: signed(23 downto 0);
  signal c_25_8_4_False_shift: signed(23 downto 0);
  signal c_25_3_0_False_resize: signed(23 downto 0);
  signal c_25_3_0_False_shift: signed(23 downto 0);
  signal c_25_8_0_False_resize: signed(23 downto 0);
  signal c_25_8_0_False_shift: signed(23 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_i0_resize: signed(23 downto 0);
  signal c_26_i1_resize: signed(23 downto 0);
  signal c_26_i0_shift: signed(23 downto 0);
  signal c_26_i1_shift: signed(23 downto 0);
  signal c_26_arith: signed(23 downto 0);
  signal c_26_oshift: signed(23 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(21 downto 0);
  signal c_27_14_0_False_resize: signed(21 downto 0);
  signal c_27_14_0_False_shift: signed(21 downto 0);
  signal c_27_14_1_False_resize: signed(21 downto 0);
  signal c_27_14_1_False_shift: signed(21 downto 0);
  signal c_27_3_0_False_resize: signed(21 downto 0);
  signal c_27_3_0_False_shift: signed(21 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_11_1_False_resize: signed(23 downto 0);
  signal c_28_11_1_False_shift: signed(23 downto 0);
  signal c_28_14_0_False_resize: signed(23 downto 0);
  signal c_28_14_0_False_shift: signed(23 downto 0);
  signal c_28_8_2_False_resize: signed(23 downto 0);
  signal c_28_8_2_False_shift: signed(23 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_i0_resize: signed(23 downto 0);
  signal c_29_i1_resize: signed(23 downto 0);
  signal c_29_i0_shift: signed(23 downto 0);
  signal c_29_i1_shift: signed(23 downto 0);
  signal c_29_arith: signed(23 downto 0);
  signal c_29_oshift: signed(23 downto 0);
  signal c_30: signed(22 downto 0);
  signal c_30_14_1_False_resize: signed(22 downto 0);
  signal c_30_14_1_False_shift: signed(22 downto 0);
  signal c_30_3_3_False_resize: signed(22 downto 0);
  signal c_30_3_3_False_shift: signed(22 downto 0);
  signal c_30_3_0_False_resize: signed(22 downto 0);
  signal c_30_3_0_False_shift: signed(22 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(21 downto 0);
  signal c_31_8_1_False_resize: signed(21 downto 0);
  signal c_31_8_1_False_shift: signed(21 downto 0);
  signal c_31_3_0_False_resize: signed(21 downto 0);
  signal c_31_3_0_False_shift: signed(21 downto 0);
  signal c_31_8_2_False_resize: signed(21 downto 0);
  signal c_31_8_2_False_shift: signed(21 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(22 downto 0);
  signal c_32_i0_resize: signed(22 downto 0);
  signal c_32_i1_resize: signed(22 downto 0);
  signal c_32_i0_shift: signed(22 downto 0);
  signal c_32_i1_shift: signed(22 downto 0);
  signal c_32_arith: signed(22 downto 0);
  signal c_32_oshift: signed(22 downto 0);
  signal c_32_sub_sel: std_logic;
  signal c_33: signed(23 downto 0);
  signal c_33_8_0_False_resize: signed(23 downto 0);
  signal c_33_8_0_False_shift: signed(23 downto 0);
  signal c_33_11_1_False_resize: signed(23 downto 0);
  signal c_33_11_1_False_shift: signed(23 downto 0);
  signal c_33_8_2_False_resize: signed(23 downto 0);
  signal c_33_8_2_False_shift: signed(23 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(22 downto 0);
  signal c_34_14_2_False_resize: signed(22 downto 0);
  signal c_34_14_2_False_shift: signed(22 downto 0);
  signal c_34_3_0_False_resize: signed(22 downto 0);
  signal c_34_3_0_False_shift: signed(22 downto 0);
  signal c_34_11_0_False_resize: signed(22 downto 0);
  signal c_34_11_0_False_shift: signed(22 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_i0_resize: signed(23 downto 0);
  signal c_35_i1_resize: signed(23 downto 0);
  signal c_35_i0_shift: signed(23 downto 0);
  signal c_35_i1_shift: signed(23 downto 0);
  signal c_35_arith: signed(23 downto 0);
  signal c_35_oshift: signed(23 downto 0);
  signal c_35_sub_sel: std_logic;
  signal c_36: signed(23 downto 0);
  signal c_36_14_4_False_resize: signed(23 downto 0);
  signal c_36_14_4_False_shift: signed(23 downto 0);
  signal c_36_14_3_False_resize: signed(23 downto 0);
  signal c_36_14_3_False_shift: signed(23 downto 0);
  signal c_36_3_0_False_resize: signed(23 downto 0);
  signal c_36_3_0_False_shift: signed(23 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(22 downto 0);
  signal c_37_11_0_False_resize: signed(22 downto 0);
  signal c_37_11_0_False_shift: signed(22 downto 0);
  signal c_37_11_5_False_resize: signed(22 downto 0);
  signal c_37_11_5_False_shift: signed(22 downto 0);
  signal c_37_3_0_False_resize: signed(22 downto 0);
  signal c_37_3_0_False_shift: signed(22 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_i0_resize: signed(23 downto 0);
  signal c_38_i1_resize: signed(23 downto 0);
  signal c_38_i0_shift: signed(23 downto 0);
  signal c_38_i1_shift: signed(23 downto 0);
  signal c_38_arith: signed(23 downto 0);
  signal c_38_oshift: signed(23 downto 0);
  signal c_38_sub_sel: std_logic;
  signal c_39: signed(22 downto 0);
  signal c_39_14_1_False_resize: signed(22 downto 0);
  signal c_39_14_1_False_shift: signed(22 downto 0);
  signal c_39_8_0_False_resize: signed(22 downto 0);
  signal c_39_8_0_False_shift: signed(22 downto 0);
  signal c_39_14_2_False_resize: signed(22 downto 0);
  signal c_39_14_2_False_shift: signed(22 downto 0);
  signal c_39_sel: std_logic_vector(1 downto 0);
  signal c_40: signed(19 downto 0);
  signal c_40_14_0_False_resize: signed(19 downto 0);
  signal c_40_14_0_False_shift: signed(19 downto 0);
  signal c_40_11_2_False_resize: signed(19 downto 0);
  signal c_40_11_2_False_shift: signed(19 downto 0);
  signal c_40_3_0_False_resize: signed(19 downto 0);
  signal c_40_3_0_False_shift: signed(19 downto 0);
  signal c_40_sel: std_logic_vector(1 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_i0_resize: signed(23 downto 0);
  signal c_41_i1_resize: signed(23 downto 0);
  signal c_41_i0_shift: signed(23 downto 0);
  signal c_41_i1_shift: signed(23 downto 0);
  signal c_41_arith: signed(23 downto 0);
  signal c_41_oshift: signed(23 downto 0);
  signal c_41_sub_sel: std_logic;
  signal c_42: signed(22 downto 0);
  signal c_42_23_0_False_resize: signed(22 downto 0);
  signal c_42_23_0_False_shift: signed(22 downto 0);
  signal c_42_23_1_False_resize: signed(22 downto 0);
  signal c_42_23_1_False_shift: signed(22 downto 0);
  signal c_42_29_1_False_resize: signed(22 downto 0);
  signal c_42_29_1_False_shift: signed(22 downto 0);
  signal c_42_sel: std_logic_vector(1 downto 0);
  signal c_43: signed(22 downto 0);
  signal c_43_resize: signed(22 downto 0);
  signal c_44: signed(22 downto 0);
  signal c_44_35_0_False_resize: signed(22 downto 0);
  signal c_44_35_0_False_shift: signed(22 downto 0);
  signal c_44_6_0_False_resize: signed(22 downto 0);
  signal c_44_6_0_False_shift: signed(22 downto 0);
  signal c_44_23_0_False_resize: signed(22 downto 0);
  signal c_44_23_0_False_shift: signed(22 downto 0);
  signal c_44_sel: std_logic_vector(1 downto 0);
  signal c_45: signed(22 downto 0);
  signal c_45_resize: signed(22 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_17_0_False_resize: signed(23 downto 0);
  signal c_46_17_0_False_shift: signed(23 downto 0);
  signal c_46_41_0_False_resize: signed(23 downto 0);
  signal c_46_41_0_False_shift: signed(23 downto 0);
  signal c_46_sel: std_logic_vector(0 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_resize: signed(23 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_48_32_0_False_resize: signed(23 downto 0);
  signal c_48_32_0_False_shift: signed(23 downto 0);
  signal c_48_35_0_False_resize: signed(23 downto 0);
  signal c_48_35_0_False_shift: signed(23 downto 0);
  signal c_48_sel: std_logic_vector(0 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_49_resize: signed(23 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_50_26_0_False_resize: signed(23 downto 0);
  signal c_50_26_0_False_shift: signed(23 downto 0);
  signal c_50_17_1_False_resize: signed(23 downto 0);
  signal c_50_17_1_False_shift: signed(23 downto 0);
  signal c_50_20_0_False_resize: signed(23 downto 0);
  signal c_50_20_0_False_shift: signed(23 downto 0);
  signal c_50_sel: std_logic_vector(1 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_51_resize: signed(23 downto 0);
  signal c_52: signed(21 downto 0);
  signal c_52_32_5_False_resize: signed(21 downto 0);
  signal c_52_32_5_False_shift: signed(21 downto 0);
  signal c_52_6_0_False_resize: signed(21 downto 0);
  signal c_52_6_0_False_shift: signed(21 downto 0);
  signal c_52_sel: std_logic_vector(0 downto 0);
  signal c_53: signed(20 downto 0);
  signal c_53_resize: signed(20 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_54_32_1_False_resize: signed(23 downto 0);
  signal c_54_32_1_False_shift: signed(23 downto 0);
  signal c_54_26_1_False_resize: signed(23 downto 0);
  signal c_54_26_1_False_shift: signed(23 downto 0);
  signal c_54_29_0_False_resize: signed(23 downto 0);
  signal c_54_29_0_False_shift: signed(23 downto 0);
  signal c_54_sel: std_logic_vector(1 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_55_resize: signed(23 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_56_20_0_False_resize: signed(23 downto 0);
  signal c_56_20_0_False_shift: signed(23 downto 0);
  signal c_56_38_1_False_resize: signed(23 downto 0);
  signal c_56_38_1_False_shift: signed(23 downto 0);
  signal c_56_38_0_False_resize: signed(23 downto 0);
  signal c_56_38_0_False_shift: signed(23 downto 0);
  signal c_56_sel: std_logic_vector(1 downto 0);
  signal c_57: signed(23 downto 0);
  signal c_57_resize: signed(23 downto 0);
  signal c_58: signed(22 downto 0);
  signal c_58_20_0_False_resize: signed(22 downto 0);
  signal c_58_20_0_False_shift: signed(22 downto 0);
  signal c_58_29_0_False_resize: signed(22 downto 0);
  signal c_58_29_0_False_shift: signed(22 downto 0);
  signal c_58_17_1_False_resize: signed(22 downto 0);
  signal c_58_17_1_False_shift: signed(22 downto 0);
  signal c_58_sel: std_logic_vector(1 downto 0);
  signal c_59: signed(23 downto 0);
  signal c_59_resize: signed(23 downto 0);
  signal c_60: signed(23 downto 0);
  signal c_60_38_0_False_resize: signed(23 downto 0);
  signal c_60_38_0_False_shift: signed(23 downto 0);
  signal c_60_26_0_False_resize: signed(23 downto 0);
  signal c_60_26_0_False_shift: signed(23 downto 0);
  signal c_60_41_3_False_resize: signed(23 downto 0);
  signal c_60_41_3_False_shift: signed(23 downto 0);
  signal c_60_sel: std_logic_vector(1 downto 0);
  signal c_61: signed(23 downto 0);
  signal c_61_resize: signed(23 downto 0);
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
  -- output node 0 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_43);
    end if;
  end process;
  -- output node 1 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_45);
    end if;
  end process;
  -- output node 2 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_47);
    end if;
  end process;
  -- output node 3 with id 49
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_49);
    end if;
  end process;
  -- output node 4 with id 51
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_51);
    end if;
  end process;
  -- output node 5 with id 53
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_53);
    end if;
  end process;
  -- output node 6 with id 55
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_55);
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
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [2], [1]]
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "0" when "10",
    "0" when "00",
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
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[2], [1], [2]]
  c_2_0_0_False_resize <= resize(c_0, 17);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_1_False_resize <= resize(c_0, 17);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 3 and associated fundamentals [[-1], [1], [-1]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 17,
      w_o => 17,
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
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(16 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[-8], [1], [-2]]
  c_4_3_1_False_resize <= resize(c_3, 20);
  c_4_3_1_False_shift <= shift_left(c_4_3_1_False_resize, 1);
  c_4_3_3_False_resize <= resize(c_3, 20);
  c_4_3_3_False_shift <= shift_left(c_4_3_3_False_resize, 3);
  c_4_3_0_False_resize <= resize(c_3, 20);
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  with config_select_3 select c_4_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "00" => c_4 <= c_4_3_1_False_shift;
        when "01" => c_4 <= c_4_3_3_False_shift;
        when others => c_4 <= c_4_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[-1], [16], [-1]]
  c_5_3_4_False_resize <= resize(c_3, 20);
  c_5_3_4_False_shift <= shift_left(c_5_3_4_False_resize, 4);
  c_5_3_0_False_resize <= resize(c_3, 20);
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  with config_select_3 select c_5_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_3_4_False_shift;
        when others => c_5 <= c_5_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 6 and associated fundamentals [[-15], [-14], [-5]]
  with config_select_4 select c_6_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
      w_o => 20,
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
      sub_i => c_6_sub_sel,
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[1], [1], [4]]
  c_7_0_0_False_resize <= resize(c_0, 18);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  c_7_0_2_False_resize <= resize(c_0, 18);
  c_7_0_2_False_shift <= shift_left(c_7_0_2_False_resize, 2);
  with config_select_1 select c_7_sel <= 
    "0" when "01",
    "0" when "00",
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
  -- node of type 'sub' in stage 2 with id 8 and associated fundamentals [[14], [15], [62]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 17,
      w_o => 22,
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
      x_i => c_7,
      y_i => c_2,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 9 and associated fundamentals [[1], [2], [4]]
  c_9_0_1_False_resize <= resize(c_0, 18);
  c_9_0_1_False_shift <= shift_left(c_9_0_1_False_resize, 1);
  c_9_0_2_False_resize <= resize(c_0, 18);
  c_9_0_2_False_shift <= shift_left(c_9_0_2_False_resize, 2);
  c_9_0_0_False_resize <= resize(c_0, 18);
  c_9_0_0_False_shift <= shift_left(c_9_0_0_False_resize, 0);
  with config_select_1 select c_9_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "00" => c_9 <= c_9_0_1_False_shift;
        when "01" => c_9 <= c_9_0_2_False_shift;
        when others => c_9 <= c_9_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 10 and associated fundamentals [[1], [1], [64]]
  c_10_0_0_False_resize <= resize(c_0, 22);
  c_10_0_0_False_shift <= shift_left(c_10_0_0_False_resize, 0);
  c_10_0_6_False_resize <= resize(c_0, 22);
  c_10_0_6_False_shift <= shift_left(c_10_0_6_False_resize, 6);
  with config_select_1 select c_10_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_0_0_False_shift;
        when others => c_10 <= c_10_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 11 and associated fundamentals [[3], [5], [72]]
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 22,
      w_o => 23,
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
      y_i => c_10,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 12 and associated fundamentals [[8], [8], [1]]
  c_12_0_0_False_resize <= resize(c_0, 19);
  c_12_0_0_False_shift <= shift_left(c_12_0_0_False_resize, 0);
  c_12_0_3_False_resize <= resize(c_0, 19);
  c_12_0_3_False_shift <= shift_left(c_12_0_3_False_resize, 3);
  with config_select_1 select c_12_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_0_0_False_shift;
        when others => c_12 <= c_12_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 13 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 14 and associated fundamentals [[33], [31], [5]]
  with config_select_2 select c_14_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
      w_o => 22,
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
      sub_i => c_14_sub_sel,
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[224], [2], [62]]
  c_15_3_1_False_resize <= resize(c_3, 24);
  c_15_3_1_False_shift <= shift_left(c_15_3_1_False_resize, 1);
  c_15_8_4_False_resize <= resize(c_8, 24);
  c_15_8_4_False_shift <= shift_left(c_15_8_4_False_resize, 4);
  c_15_8_0_False_resize <= resize(c_8, 24);
  c_15_8_0_False_shift <= shift_left(c_15_8_0_False_resize, 0);
  with config_select_3 select c_15_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "00" => c_15 <= c_15_3_1_False_shift;
        when "01" => c_15 <= c_15_8_4_False_shift;
        when others => c_15 <= c_15_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 16 and associated fundamentals [[3], [15], [5]]
  c_16_14_0_False_resize <= c_14(19 downto 0);
  c_16_14_0_False_shift <= shift_left(c_16_14_0_False_resize, 0);
  c_16_8_0_False_resize <= c_8(19 downto 0);
  c_16_8_0_False_shift <= shift_left(c_16_8_0_False_resize, 0);
  c_16_11_0_False_resize <= c_11(19 downto 0);
  c_16_11_0_False_shift <= shift_left(c_16_11_0_False_resize, 0);
  with config_select_3 select c_16_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_14_0_False_shift;
        when "01" => c_16 <= c_16_8_0_False_shift;
        when others => c_16 <= c_16_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 17 and associated fundamentals [[221], [-13], [57]]
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 20,
      w_o => 24,
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
      x_i => c_15,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[33], [120], [5]]
  c_18_14_0_False_resize <= resize(c_14, 23);
  c_18_14_0_False_shift <= shift_left(c_18_14_0_False_resize, 0);
  c_18_8_3_False_resize <= resize(c_8, 23);
  c_18_8_3_False_shift <= shift_left(c_18_8_3_False_resize, 3);
  with config_select_3 select c_18_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_14_0_False_shift;
        when others => c_18 <= c_18_8_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 19 and associated fundamentals [[-8], [31], [62]]
  c_19_3_3_False_resize <= resize(c_3, 22);
  c_19_3_3_False_shift <= shift_left(c_19_3_3_False_resize, 3);
  c_19_14_0_False_resize <= c_14;
  c_19_14_0_False_shift <= shift_left(c_19_14_0_False_resize, 0);
  c_19_8_0_False_resize <= c_8;
  c_19_8_0_False_shift <= shift_left(c_19_8_0_False_resize, 0);
  with config_select_3 select c_19_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_3_3_False_shift;
        when "01" => c_19 <= c_19_14_0_False_shift;
        when others => c_19 <= c_19_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 20 and associated fundamentals [[49], [182], [-119]]
  with config_select_4 select c_20_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
      w_o => 24,
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
      sub_i => c_20_sub_sel,
      x_i => c_18,
      y_i => c_19,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 21 and associated fundamentals [[-16], [5], [10]]
  c_21_3_4_False_resize <= resize(c_3, 21);
  c_21_3_4_False_shift <= shift_left(c_21_3_4_False_resize, 4);
  c_21_11_0_False_resize <= c_11(20 downto 0);
  c_21_11_0_False_shift <= shift_left(c_21_11_0_False_resize, 0);
  c_21_14_1_False_resize <= c_14(20 downto 0);
  c_21_14_1_False_shift <= shift_left(c_21_14_1_False_resize, 1);
  with config_select_3 select c_21_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "00" => c_21 <= c_21_3_4_False_shift;
        when "01" => c_21 <= c_21_11_0_False_shift;
        when others => c_21 <= c_21_14_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 22 and associated fundamentals [[-1], [5], [-4]]
  c_22_3_2_False_resize <= resize(c_3, 19);
  c_22_3_2_False_shift <= shift_left(c_22_3_2_False_resize, 2);
  c_22_11_0_False_resize <= c_11(18 downto 0);
  c_22_11_0_False_shift <= shift_left(c_22_11_0_False_resize, 0);
  c_22_3_0_False_resize <= resize(c_3, 19);
  c_22_3_0_False_shift <= shift_left(c_22_3_0_False_resize, 0);
  with config_select_3 select c_22_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_3_2_False_shift;
        when "01" => c_22 <= c_22_11_0_False_shift;
        when others => c_22 <= c_22_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 23 and associated fundamentals [[-127], [45], [84]]
  with config_select_4 select c_23_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 19,
      w_o => 23,
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
      x_i => c_21,
      y_i => c_22,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 24 and associated fundamentals [[-1], [30], [5]]
  c_24_14_0_False_resize <= c_14(20 downto 0);
  c_24_14_0_False_shift <= shift_left(c_24_14_0_False_resize, 0);
  c_24_8_1_False_resize <= c_8(20 downto 0);
  c_24_8_1_False_shift <= shift_left(c_24_8_1_False_resize, 1);
  c_24_3_0_False_resize <= resize(c_3, 21);
  c_24_3_0_False_shift <= shift_left(c_24_3_0_False_resize, 0);
  with config_select_3 select c_24_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_14_0_False_shift;
        when "01" => c_24 <= c_24_8_1_False_shift;
        when others => c_24 <= c_24_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 25 and associated fundamentals [[224], [1], [62]]
  c_25_8_4_False_resize <= resize(c_8, 24);
  c_25_8_4_False_shift <= shift_left(c_25_8_4_False_resize, 4);
  c_25_3_0_False_resize <= resize(c_3, 24);
  c_25_3_0_False_shift <= shift_left(c_25_3_0_False_resize, 0);
  c_25_8_0_False_resize <= resize(c_8, 24);
  c_25_8_0_False_shift <= shift_left(c_25_8_0_False_resize, 0);
  with config_select_3 select c_25_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_8_4_False_shift;
        when "01" => c_25 <= c_25_3_0_False_shift;
        when others => c_25 <= c_25_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 26 and associated fundamentals [[-225], [31], [67]]
  with config_select_4 select c_26_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 24,
      w_o => 24,
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
      c_26 <= c_26_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 27 and associated fundamentals [[-1], [62], [5]]
  c_27_14_0_False_resize <= c_14;
  c_27_14_0_False_shift <= shift_left(c_27_14_0_False_resize, 0);
  c_27_14_1_False_resize <= c_14;
  c_27_14_1_False_shift <= shift_left(c_27_14_1_False_resize, 1);
  c_27_3_0_False_resize <= resize(c_3, 22);
  c_27_3_0_False_shift <= shift_left(c_27_3_0_False_resize, 0);
  with config_select_3 select c_27_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "00" => c_27 <= c_27_14_0_False_shift;
        when "01" => c_27 <= c_27_14_1_False_shift;
        when others => c_27 <= c_27_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 28 and associated fundamentals [[56], [31], [144]]
  c_28_11_1_False_resize <= resize(c_11, 24);
  c_28_11_1_False_shift <= shift_left(c_28_11_1_False_resize, 1);
  c_28_14_0_False_resize <= resize(c_14, 24);
  c_28_14_0_False_shift <= shift_left(c_28_14_0_False_resize, 0);
  c_28_8_2_False_resize <= resize(c_8, 24);
  c_28_8_2_False_shift <= shift_left(c_28_8_2_False_resize, 2);
  with config_select_3 select c_28_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "00" => c_28 <= c_28_11_1_False_shift;
        when "01" => c_28 <= c_28_14_0_False_shift;
        when others => c_28 <= c_28_8_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 29 and associated fundamentals [[55], [93], [149]]
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 24,
      w_o => 24,
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
      y_i => c_28,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 30 and associated fundamentals [[66], [8], [-1]]
  c_30_14_1_False_resize <= resize(c_14, 23);
  c_30_14_1_False_shift <= shift_left(c_30_14_1_False_resize, 1);
  c_30_3_3_False_resize <= resize(c_3, 23);
  c_30_3_3_False_shift <= shift_left(c_30_3_3_False_resize, 3);
  c_30_3_0_False_resize <= resize(c_3, 23);
  c_30_3_0_False_shift <= shift_left(c_30_3_0_False_resize, 0);
  with config_select_3 select c_30_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "00" => c_30 <= c_30_14_1_False_shift;
        when "01" => c_30 <= c_30_3_3_False_shift;
        when others => c_30 <= c_30_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 31 and associated fundamentals [[56], [30], [-1]]
  c_31_8_1_False_resize <= c_8;
  c_31_8_1_False_shift <= shift_left(c_31_8_1_False_resize, 1);
  c_31_3_0_False_resize <= resize(c_3, 22);
  c_31_3_0_False_shift <= shift_left(c_31_3_0_False_resize, 0);
  c_31_8_2_False_resize <= c_8;
  c_31_8_2_False_shift <= shift_left(c_31_8_2_False_resize, 2);
  with config_select_3 select c_31_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "00" => c_31 <= c_31_8_1_False_shift;
        when "01" => c_31 <= c_31_3_0_False_shift;
        when others => c_31 <= c_31_8_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 32 and associated fundamentals [[76], [46], [-1]]
  with config_select_4 select c_32_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_32: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
      w_o => 23,
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
      sub_i => c_32_sub_sel,
      x_i => c_30,
      y_i => c_31,
      z_o => c_32_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_32_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 33 and associated fundamentals [[56], [15], [144]]
  c_33_8_0_False_resize <= resize(c_8, 24);
  c_33_8_0_False_shift <= shift_left(c_33_8_0_False_resize, 0);
  c_33_11_1_False_resize <= resize(c_11, 24);
  c_33_11_1_False_shift <= shift_left(c_33_11_1_False_resize, 1);
  c_33_8_2_False_resize <= resize(c_8, 24);
  c_33_8_2_False_shift <= shift_left(c_33_8_2_False_resize, 2);
  with config_select_3 select c_33_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "00" => c_33 <= c_33_8_0_False_shift;
        when "01" => c_33 <= c_33_11_1_False_shift;
        when others => c_33 <= c_33_8_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 34 and associated fundamentals [[3], [124], [-1]]
  c_34_14_2_False_resize <= resize(c_14, 23);
  c_34_14_2_False_shift <= shift_left(c_34_14_2_False_resize, 2);
  c_34_3_0_False_resize <= resize(c_3, 23);
  c_34_3_0_False_shift <= shift_left(c_34_3_0_False_resize, 0);
  c_34_11_0_False_resize <= c_11;
  c_34_11_0_False_shift <= shift_left(c_34_11_0_False_resize, 0);
  with config_select_3 select c_34_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "00" => c_34 <= c_34_14_2_False_shift;
        when "01" => c_34 <= c_34_3_0_False_shift;
        when others => c_34 <= c_34_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 35 and associated fundamentals [[53], [-109], [143]]
  with config_select_4 select c_35_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_35: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
      w_o => 24,
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
      sub_i => c_35_sub_sel,
      x_i => c_33,
      y_i => c_34,
      z_o => c_35_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_35_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 36 and associated fundamentals [[-1], [248], [80]]
  c_36_14_4_False_resize <= resize(c_14, 24);
  c_36_14_4_False_shift <= shift_left(c_36_14_4_False_resize, 4);
  c_36_14_3_False_resize <= resize(c_14, 24);
  c_36_14_3_False_shift <= shift_left(c_36_14_3_False_resize, 3);
  c_36_3_0_False_resize <= resize(c_3, 24);
  c_36_3_0_False_shift <= shift_left(c_36_3_0_False_resize, 0);
  with config_select_3 select c_36_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "00" => c_36 <= c_36_14_4_False_shift;
        when "01" => c_36 <= c_36_14_3_False_shift;
        when others => c_36 <= c_36_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 37 and associated fundamentals [[96], [5], [-1]]
  c_37_11_0_False_resize <= c_11;
  c_37_11_0_False_shift <= shift_left(c_37_11_0_False_resize, 0);
  c_37_11_5_False_resize <= c_11;
  c_37_11_5_False_shift <= shift_left(c_37_11_5_False_resize, 5);
  c_37_3_0_False_resize <= resize(c_3, 23);
  c_37_3_0_False_shift <= shift_left(c_37_3_0_False_resize, 0);
  with config_select_3 select c_37_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "00" => c_37 <= c_37_11_0_False_shift;
        when "01" => c_37 <= c_37_11_5_False_shift;
        when others => c_37 <= c_37_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 38 and associated fundamentals [[95], [243], [81]]
  with config_select_4 select c_38_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_38: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
      w_o => 24,
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
      sub_i => c_38_sub_sel,
      x_i => c_36,
      y_i => c_37,
      z_o => c_38_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_38_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 39 and associated fundamentals [[14], [124], [10]]
  c_39_14_1_False_resize <= resize(c_14, 23);
  c_39_14_1_False_shift <= shift_left(c_39_14_1_False_resize, 1);
  c_39_8_0_False_resize <= resize(c_8, 23);
  c_39_8_0_False_shift <= shift_left(c_39_8_0_False_resize, 0);
  c_39_14_2_False_resize <= resize(c_14, 23);
  c_39_14_2_False_shift <= shift_left(c_39_14_2_False_resize, 2);
  with config_select_3 select c_39_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "00" => c_39 <= c_39_14_1_False_shift;
        when "01" => c_39 <= c_39_8_0_False_shift;
        when others => c_39 <= c_39_14_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 40 and associated fundamentals [[12], [1], [5]]
  c_40_14_0_False_resize <= c_14(19 downto 0);
  c_40_14_0_False_shift <= shift_left(c_40_14_0_False_resize, 0);
  c_40_11_2_False_resize <= c_11(19 downto 0);
  c_40_11_2_False_shift <= shift_left(c_40_11_2_False_resize, 2);
  c_40_3_0_False_resize <= resize(c_3, 20);
  c_40_3_0_False_shift <= shift_left(c_40_3_0_False_resize, 0);
  with config_select_3 select c_40_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "00" => c_40 <= c_40_14_0_False_shift;
        when "01" => c_40 <= c_40_11_2_False_shift;
        when others => c_40 <= c_40_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 41 and associated fundamentals [[16], [247], [25]]
  with config_select_4 select c_41_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_41: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 20,
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
      sub_i => c_41_sub_sel,
      x_i => c_39,
      y_i => c_40,
      z_o => c_41_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_41_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 42 and associated fundamentals [[110], [90], [84]]
  c_42_23_0_False_resize <= c_23;
  c_42_23_0_False_shift <= shift_left(c_42_23_0_False_resize, 0);
  c_42_23_1_False_resize <= c_23;
  c_42_23_1_False_shift <= shift_left(c_42_23_1_False_resize, 1);
  c_42_29_1_False_resize <= c_29(22 downto 0);
  c_42_29_1_False_shift <= shift_left(c_42_29_1_False_resize, 1);
  with config_select_5 select c_42_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "00" => c_42 <= c_42_23_0_False_shift;
        when "01" => c_42 <= c_42_23_1_False_shift;
        when others => c_42 <= c_42_29_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 43 and associated fundamentals [[110], [90], [84]]
  c_43_resize <= c_42;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'mux' in stage 5 with id 44 and associated fundamentals [[-127], [-109], [-5]]
  c_44_35_0_False_resize <= c_35(22 downto 0);
  c_44_35_0_False_shift <= shift_left(c_44_35_0_False_resize, 0);
  c_44_6_0_False_resize <= resize(c_6, 23);
  c_44_6_0_False_shift <= shift_left(c_44_6_0_False_resize, 0);
  c_44_23_0_False_resize <= c_23;
  c_44_23_0_False_shift <= shift_left(c_44_23_0_False_resize, 0);
  with config_select_5 select c_44_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "00" => c_44 <= c_44_35_0_False_shift;
        when "01" => c_44 <= c_44_6_0_False_shift;
        when others => c_44 <= c_44_23_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 45 and associated fundamentals [[127], [109], [5]]
  c_45_resize <= c_44;
  c_45 <= -shift_left(c_45_resize, 0);
  -- node of type 'mux' in stage 5 with id 46 and associated fundamentals [[221], [247], [25]]
  c_46_17_0_False_resize <= c_17;
  c_46_17_0_False_shift <= shift_left(c_46_17_0_False_resize, 0);
  c_46_41_0_False_resize <= c_41;
  c_46_41_0_False_shift <= shift_left(c_46_41_0_False_resize, 0);
  with config_select_5 select c_46_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "0" => c_46 <= c_46_17_0_False_shift;
        when others => c_46 <= c_46_41_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 47 and associated fundamentals [[221], [247], [25]]
  c_47_resize <= c_46;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'mux' in stage 5 with id 48 and associated fundamentals [[53], [46], [143]]
  c_48_32_0_False_resize <= resize(c_32, 24);
  c_48_32_0_False_shift <= shift_left(c_48_32_0_False_resize, 0);
  c_48_35_0_False_resize <= c_35;
  c_48_35_0_False_shift <= shift_left(c_48_35_0_False_resize, 0);
  with config_select_5 select c_48_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "0" => c_48 <= c_48_32_0_False_shift;
        when others => c_48 <= c_48_35_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 49 and associated fundamentals [[53], [46], [143]]
  c_49_resize <= c_48;
  c_49 <= shift_left(c_49_resize, 0);
  -- node of type 'mux' in stage 5 with id 50 and associated fundamentals [[-225], [-26], [-119]]
  c_50_26_0_False_resize <= c_26;
  c_50_26_0_False_shift <= shift_left(c_50_26_0_False_resize, 0);
  c_50_17_1_False_resize <= c_17;
  c_50_17_1_False_shift <= shift_left(c_50_17_1_False_resize, 1);
  c_50_20_0_False_resize <= c_20;
  c_50_20_0_False_shift <= shift_left(c_50_20_0_False_resize, 0);
  with config_select_5 select c_50_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_50_sel is
        when "00" => c_50 <= c_50_26_0_False_shift;
        when "01" => c_50 <= c_50_17_1_False_shift;
        when others => c_50 <= c_50_20_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 51 and associated fundamentals [[225], [26], [119]]
  c_51_resize <= c_50;
  c_51 <= -shift_left(c_51_resize, 0);
  -- node of type 'mux' in stage 5 with id 52 and associated fundamentals [[-15], [-14], [-32]]
  c_52_32_5_False_resize <= c_32(21 downto 0);
  c_52_32_5_False_shift <= shift_left(c_52_32_5_False_resize, 5);
  c_52_6_0_False_resize <= resize(c_6, 22);
  c_52_6_0_False_shift <= shift_left(c_52_6_0_False_resize, 0);
  with config_select_5 select c_52_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_52_sel is
        when "0" => c_52 <= c_52_32_5_False_shift;
        when others => c_52 <= c_52_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 53 and associated fundamentals [[15], [14], [32]]
  c_53_resize <= c_52(20 downto 0);
  c_53 <= -shift_left(c_53_resize, 0);
  -- node of type 'mux' in stage 5 with id 54 and associated fundamentals [[152], [62], [149]]
  c_54_32_1_False_resize <= resize(c_32, 24);
  c_54_32_1_False_shift <= shift_left(c_54_32_1_False_resize, 1);
  c_54_26_1_False_resize <= c_26;
  c_54_26_1_False_shift <= shift_left(c_54_26_1_False_resize, 1);
  c_54_29_0_False_resize <= c_29;
  c_54_29_0_False_shift <= shift_left(c_54_29_0_False_resize, 0);
  with config_select_5 select c_54_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_54_sel is
        when "00" => c_54 <= c_54_32_1_False_shift;
        when "01" => c_54 <= c_54_26_1_False_shift;
        when others => c_54 <= c_54_29_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 55 and associated fundamentals [[152], [62], [149]]
  c_55_resize <= c_54;
  c_55 <= shift_left(c_55_resize, 0);
  -- node of type 'mux' in stage 5 with id 56 and associated fundamentals [[95], [182], [162]]
  c_56_20_0_False_resize <= c_20;
  c_56_20_0_False_shift <= shift_left(c_56_20_0_False_resize, 0);
  c_56_38_1_False_resize <= c_38;
  c_56_38_1_False_shift <= shift_left(c_56_38_1_False_resize, 1);
  c_56_38_0_False_resize <= c_38;
  c_56_38_0_False_shift <= shift_left(c_56_38_0_False_resize, 0);
  with config_select_5 select c_56_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_56_sel is
        when "00" => c_56 <= c_56_20_0_False_shift;
        when "01" => c_56 <= c_56_38_1_False_shift;
        when others => c_56 <= c_56_38_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 57 and associated fundamentals [[95], [182], [162]]
  c_57_resize <= c_56;
  c_57 <= shift_left(c_57_resize, 0);
  -- node of type 'mux' in stage 5 with id 58 and associated fundamentals [[49], [93], [114]]
  c_58_20_0_False_resize <= c_20(22 downto 0);
  c_58_20_0_False_shift <= shift_left(c_58_20_0_False_resize, 0);
  c_58_29_0_False_resize <= c_29(22 downto 0);
  c_58_29_0_False_shift <= shift_left(c_58_29_0_False_resize, 0);
  c_58_17_1_False_resize <= c_17(22 downto 0);
  c_58_17_1_False_shift <= shift_left(c_58_17_1_False_resize, 1);
  with config_select_5 select c_58_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_58_sel is
        when "00" => c_58 <= c_58_20_0_False_shift;
        when "01" => c_58 <= c_58_29_0_False_shift;
        when others => c_58 <= c_58_17_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 59 and associated fundamentals [[98], [186], [228]]
  c_59_resize <= resize(c_58, 24);
  c_59 <= shift_left(c_59_resize, 1);
  -- node of type 'mux' in stage 5 with id 60 and associated fundamentals [[128], [243], [67]]
  c_60_38_0_False_resize <= c_38;
  c_60_38_0_False_shift <= shift_left(c_60_38_0_False_resize, 0);
  c_60_26_0_False_resize <= c_26;
  c_60_26_0_False_shift <= shift_left(c_60_26_0_False_resize, 0);
  c_60_41_3_False_resize <= c_41;
  c_60_41_3_False_shift <= shift_left(c_60_41_3_False_resize, 3);
  with config_select_5 select c_60_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_60_sel is
        when "00" => c_60 <= c_60_38_0_False_shift;
        when "01" => c_60 <= c_60_26_0_False_shift;
        when others => c_60 <= c_60_41_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 61 and associated fundamentals [[128], [243], [67]]
  c_61_resize <= c_60;
  c_61 <= shift_left(c_61_resize, 0);
end architecture;
