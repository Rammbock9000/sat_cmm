library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(23 downto 0);
    y_5: out std_logic_vector(23 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(20 downto 0);
  signal c_1_i0_resize: signed(20 downto 0);
  signal c_1_i1_resize: signed(20 downto 0);
  signal c_1_i0_shift: signed(20 downto 0);
  signal c_1_i1_shift: signed(20 downto 0);
  signal c_1_arith: signed(20 downto 0);
  signal c_1_oshift: signed(20 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(18 downto 0);
  signal c_2_0_0_False_resize: signed(18 downto 0);
  signal c_2_0_0_False_shift: signed(18 downto 0);
  signal c_2_0_1_False_resize: signed(18 downto 0);
  signal c_2_0_1_False_shift: signed(18 downto 0);
  signal c_2_0_3_False_resize: signed(18 downto 0);
  signal c_2_0_3_False_shift: signed(18 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(17 downto 0);
  signal c_3_0_2_False_resize: signed(17 downto 0);
  signal c_3_0_2_False_shift: signed(17 downto 0);
  signal c_3_0_1_False_resize: signed(17 downto 0);
  signal c_3_0_1_False_shift: signed(17 downto 0);
  signal c_3_0_0_False_resize: signed(17 downto 0);
  signal c_3_0_0_False_shift: signed(17 downto 0);
  signal c_3_sel: std_logic_vector(1 downto 0);
  signal c_4: signed(17 downto 0);
  signal c_4_i0_resize: signed(17 downto 0);
  signal c_4_i1_resize: signed(17 downto 0);
  signal c_4_i0_shift: signed(17 downto 0);
  signal c_4_i1_shift: signed(17 downto 0);
  signal c_4_arith: signed(17 downto 0);
  signal c_4_oshift: signed(17 downto 0);
  signal c_5: signed(18 downto 0);
  signal c_5_i0_resize: signed(18 downto 0);
  signal c_5_i1_resize: signed(18 downto 0);
  signal c_5_i0_shift: signed(18 downto 0);
  signal c_5_i1_shift: signed(18 downto 0);
  signal c_5_arith: signed(18 downto 0);
  signal c_5_oshift: signed(18 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(21 downto 0);
  signal c_6_0_4_False_resize: signed(21 downto 0);
  signal c_6_0_4_False_shift: signed(21 downto 0);
  signal c_6_0_0_False_resize: signed(21 downto 0);
  signal c_6_0_0_False_shift: signed(21 downto 0);
  signal c_6_0_6_False_resize: signed(21 downto 0);
  signal c_6_0_6_False_shift: signed(21 downto 0);
  signal c_6_0_5_False_resize: signed(21 downto 0);
  signal c_6_0_5_False_shift: signed(21 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_i0_resize: signed(22 downto 0);
  signal c_7_i1_resize: signed(22 downto 0);
  signal c_7_i0_shift: signed(22 downto 0);
  signal c_7_i1_shift: signed(22 downto 0);
  signal c_7_arith: signed(22 downto 0);
  signal c_7_oshift: signed(22 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(21 downto 0);
  signal c_8_5_3_False_resize: signed(21 downto 0);
  signal c_8_5_3_False_shift: signed(21 downto 0);
  signal c_8_1_1_False_resize: signed(21 downto 0);
  signal c_8_1_1_False_shift: signed(21 downto 0);
  signal c_8_5_0_False_resize: signed(21 downto 0);
  signal c_8_5_0_False_shift: signed(21 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(24 downto 0);
  signal c_10_i0_resize: signed(24 downto 0);
  signal c_10_i1_resize: signed(24 downto 0);
  signal c_10_i0_shift: signed(24 downto 0);
  signal c_10_i1_shift: signed(24 downto 0);
  signal c_10_arith: signed(24 downto 0);
  signal c_10_oshift: signed(24 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(19 downto 0);
  signal c_11_0_4_False_resize: signed(19 downto 0);
  signal c_11_0_4_False_shift: signed(19 downto 0);
  signal c_11_0_0_False_resize: signed(19 downto 0);
  signal c_11_0_0_False_shift: signed(19 downto 0);
  signal c_11_0_3_False_resize: signed(19 downto 0);
  signal c_11_0_3_False_shift: signed(19 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(19 downto 0);
  signal c_12_0_4_False_resize: signed(19 downto 0);
  signal c_12_0_4_False_shift: signed(19 downto 0);
  signal c_12_0_0_False_resize: signed(19 downto 0);
  signal c_12_0_0_False_shift: signed(19 downto 0);
  signal c_12_0_3_False_resize: signed(19 downto 0);
  signal c_12_0_3_False_shift: signed(19 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(20 downto 0);
  signal c_13_i0_resize: signed(20 downto 0);
  signal c_13_i1_resize: signed(20 downto 0);
  signal c_13_i0_shift: signed(20 downto 0);
  signal c_13_i1_shift: signed(20 downto 0);
  signal c_13_arith: signed(20 downto 0);
  signal c_13_oshift: signed(20 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(20 downto 0);
  signal c_14_0_0_False_resize: signed(20 downto 0);
  signal c_14_0_0_False_shift: signed(20 downto 0);
  signal c_14_0_4_False_resize: signed(20 downto 0);
  signal c_14_0_4_False_shift: signed(20 downto 0);
  signal c_14_0_5_False_resize: signed(20 downto 0);
  signal c_14_0_5_False_shift: signed(20 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_15_0_4_False_resize: signed(22 downto 0);
  signal c_15_0_4_False_shift: signed(22 downto 0);
  signal c_15_0_0_False_resize: signed(22 downto 0);
  signal c_15_0_0_False_shift: signed(22 downto 0);
  signal c_15_0_7_False_resize: signed(22 downto 0);
  signal c_15_0_7_False_shift: signed(22 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(22 downto 0);
  signal c_16_i0_resize: signed(22 downto 0);
  signal c_16_i1_resize: signed(22 downto 0);
  signal c_16_i0_shift: signed(22 downto 0);
  signal c_16_i1_shift: signed(22 downto 0);
  signal c_16_arith: signed(22 downto 0);
  signal c_16_oshift: signed(22 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(20 downto 0);
  signal c_17_16_0_False_resize: signed(20 downto 0);
  signal c_17_16_0_False_shift: signed(20 downto 0);
  signal c_17_4_2_False_resize: signed(20 downto 0);
  signal c_17_4_2_False_shift: signed(20 downto 0);
  signal c_17_7_1_False_resize: signed(20 downto 0);
  signal c_17_7_1_False_shift: signed(20 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_16_0_False_resize: signed(23 downto 0);
  signal c_18_16_0_False_shift: signed(23 downto 0);
  signal c_18_7_2_False_resize: signed(23 downto 0);
  signal c_18_7_2_False_shift: signed(23 downto 0);
  signal c_18_4_6_False_resize: signed(23 downto 0);
  signal c_18_4_6_False_shift: signed(23 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_i0_resize: signed(23 downto 0);
  signal c_19_i1_resize: signed(23 downto 0);
  signal c_19_i0_shift: signed(23 downto 0);
  signal c_19_i1_shift: signed(23 downto 0);
  signal c_19_arith: signed(23 downto 0);
  signal c_19_oshift: signed(23 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(24 downto 0);
  signal c_20_4_3_False_resize: signed(24 downto 0);
  signal c_20_4_3_False_shift: signed(24 downto 0);
  signal c_20_13_5_False_resize: signed(24 downto 0);
  signal c_20_13_5_False_shift: signed(24 downto 0);
  signal c_20_10_0_False_resize: signed(24 downto 0);
  signal c_20_10_0_False_shift: signed(24 downto 0);
  signal c_20_16_1_False_resize: signed(24 downto 0);
  signal c_20_16_1_False_shift: signed(24 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_4_0_False_resize: signed(23 downto 0);
  signal c_21_4_0_False_shift: signed(23 downto 0);
  signal c_21_7_0_False_resize: signed(23 downto 0);
  signal c_21_7_0_False_shift: signed(23 downto 0);
  signal c_21_4_8_False_resize: signed(23 downto 0);
  signal c_21_4_8_False_shift: signed(23 downto 0);
  signal c_21_16_1_False_resize: signed(23 downto 0);
  signal c_21_16_1_False_shift: signed(23 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_i0_resize: signed(23 downto 0);
  signal c_22_i1_resize: signed(23 downto 0);
  signal c_22_i0_shift: signed(23 downto 0);
  signal c_22_i1_shift: signed(23 downto 0);
  signal c_22_arith: signed(23 downto 0);
  signal c_22_oshift: signed(23 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(24 downto 0);
  signal c_23_10_1_False_resize: signed(24 downto 0);
  signal c_23_10_1_False_shift: signed(24 downto 0);
  signal c_23_4_7_False_resize: signed(24 downto 0);
  signal c_23_4_7_False_shift: signed(24 downto 0);
  signal c_23_7_1_False_resize: signed(24 downto 0);
  signal c_23_7_1_False_shift: signed(24 downto 0);
  signal c_23_13_0_False_resize: signed(24 downto 0);
  signal c_23_13_0_False_shift: signed(24 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(24 downto 0);
  signal c_24_16_0_False_resize: signed(24 downto 0);
  signal c_24_16_0_False_shift: signed(24 downto 0);
  signal c_24_16_5_False_resize: signed(24 downto 0);
  signal c_24_16_5_False_shift: signed(24 downto 0);
  signal c_24_4_1_False_resize: signed(24 downto 0);
  signal c_24_4_1_False_shift: signed(24 downto 0);
  signal c_24_10_0_False_resize: signed(24 downto 0);
  signal c_24_10_0_False_shift: signed(24 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_i0_resize: signed(23 downto 0);
  signal c_25_i1_resize: signed(23 downto 0);
  signal c_25_i0_shift: signed(23 downto 0);
  signal c_25_i1_shift: signed(23 downto 0);
  signal c_25_arith: signed(23 downto 0);
  signal c_25_oshift: signed(23 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(23 downto 0);
  signal c_26_5_5_False_resize: signed(23 downto 0);
  signal c_26_5_5_False_shift: signed(23 downto 0);
  signal c_26_5_3_False_resize: signed(23 downto 0);
  signal c_26_5_3_False_shift: signed(23 downto 0);
  signal c_26_1_3_False_resize: signed(23 downto 0);
  signal c_26_1_3_False_shift: signed(23 downto 0);
  signal c_26_1_0_False_resize: signed(23 downto 0);
  signal c_26_1_0_False_shift: signed(23 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(20 downto 0);
  signal c_27_1_0_False_resize: signed(20 downto 0);
  signal c_27_1_0_False_shift: signed(20 downto 0);
  signal c_27_5_0_False_resize: signed(20 downto 0);
  signal c_27_5_0_False_shift: signed(20 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_i0_resize: signed(23 downto 0);
  signal c_28_i1_resize: signed(23 downto 0);
  signal c_28_i0_shift: signed(23 downto 0);
  signal c_28_i1_shift: signed(23 downto 0);
  signal c_28_arith: signed(23 downto 0);
  signal c_28_oshift: signed(23 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(28 downto 0);
  signal c_29_5_11_False_resize: signed(28 downto 0);
  signal c_29_5_11_False_shift: signed(28 downto 0);
  signal c_29_5_0_False_resize: signed(28 downto 0);
  signal c_29_5_0_False_shift: signed(28 downto 0);
  signal c_29_1_2_False_resize: signed(28 downto 0);
  signal c_29_1_2_False_shift: signed(28 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_i0_resize: signed(23 downto 0);
  signal c_30_i1_resize: signed(23 downto 0);
  signal c_30_i0_shift: signed(23 downto 0);
  signal c_30_i1_shift: signed(23 downto 0);
  signal c_30_arith: signed(23 downto 0);
  signal c_30_oshift: signed(23 downto 0);
  signal c_30_sub_sel: std_logic;
  signal c_31: signed(23 downto 0);
  signal c_31_4_5_False_resize: signed(23 downto 0);
  signal c_31_4_5_False_shift: signed(23 downto 0);
  signal c_31_16_1_False_resize: signed(23 downto 0);
  signal c_31_16_1_False_shift: signed(23 downto 0);
  signal c_31_10_0_False_resize: signed(23 downto 0);
  signal c_31_10_0_False_shift: signed(23 downto 0);
  signal c_31_4_2_False_resize: signed(23 downto 0);
  signal c_31_4_2_False_shift: signed(23 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(22 downto 0);
  signal c_32_7_3_False_resize: signed(22 downto 0);
  signal c_32_7_3_False_shift: signed(22 downto 0);
  signal c_32_16_2_False_resize: signed(22 downto 0);
  signal c_32_16_2_False_shift: signed(22 downto 0);
  signal c_32_7_0_False_resize: signed(22 downto 0);
  signal c_32_7_0_False_shift: signed(22 downto 0);
  signal c_32_4_3_False_resize: signed(22 downto 0);
  signal c_32_4_3_False_shift: signed(22 downto 0);
  signal c_32_sel: std_logic_vector(1 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_i0_resize: signed(23 downto 0);
  signal c_33_i1_resize: signed(23 downto 0);
  signal c_33_i0_shift: signed(23 downto 0);
  signal c_33_i1_shift: signed(23 downto 0);
  signal c_33_arith: signed(23 downto 0);
  signal c_33_oshift: signed(23 downto 0);
  signal c_34: signed(21 downto 0);
  signal c_34_5_2_False_resize: signed(21 downto 0);
  signal c_34_5_2_False_shift: signed(21 downto 0);
  signal c_34_1_0_False_resize: signed(21 downto 0);
  signal c_34_1_0_False_shift: signed(21 downto 0);
  signal c_34_5_3_False_resize: signed(21 downto 0);
  signal c_34_5_3_False_shift: signed(21 downto 0);
  signal c_34_5_0_False_resize: signed(21 downto 0);
  signal c_34_5_0_False_shift: signed(21 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_i0_resize: signed(23 downto 0);
  signal c_35_i1_resize: signed(23 downto 0);
  signal c_35_i0_shift: signed(23 downto 0);
  signal c_35_i1_shift: signed(23 downto 0);
  signal c_35_arith: signed(23 downto 0);
  signal c_35_oshift: signed(23 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_1_3_False_resize: signed(23 downto 0);
  signal c_36_1_3_False_shift: signed(23 downto 0);
  signal c_36_5_2_False_resize: signed(23 downto 0);
  signal c_36_5_2_False_shift: signed(23 downto 0);
  signal c_36_5_0_False_resize: signed(23 downto 0);
  signal c_36_5_0_False_shift: signed(23 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_i0_resize: signed(23 downto 0);
  signal c_37_i1_resize: signed(23 downto 0);
  signal c_37_i0_shift: signed(23 downto 0);
  signal c_37_i1_shift: signed(23 downto 0);
  signal c_37_arith: signed(23 downto 0);
  signal c_37_oshift: signed(23 downto 0);
  signal c_37_sub_sel: std_logic;
  signal c_38: signed(21 downto 0);
  signal c_38_5_4_False_resize: signed(21 downto 0);
  signal c_38_5_4_False_shift: signed(21 downto 0);
  signal c_38_5_1_False_resize: signed(21 downto 0);
  signal c_38_5_1_False_shift: signed(21 downto 0);
  signal c_38_5_0_False_resize: signed(21 downto 0);
  signal c_38_5_0_False_shift: signed(21 downto 0);
  signal c_38_1_0_False_resize: signed(21 downto 0);
  signal c_38_1_0_False_shift: signed(21 downto 0);
  signal c_38_sel: std_logic_vector(1 downto 0);
  signal c_39: signed(22 downto 0);
  signal c_39_i0_resize: signed(22 downto 0);
  signal c_39_i1_resize: signed(22 downto 0);
  signal c_39_i0_shift: signed(22 downto 0);
  signal c_39_i1_shift: signed(22 downto 0);
  signal c_39_arith: signed(22 downto 0);
  signal c_39_oshift: signed(22 downto 0);
  signal c_39_sub_sel: std_logic;
  signal c_40: signed(23 downto 0);
  signal c_40_9_3_False_resize: signed(23 downto 0);
  signal c_40_9_3_False_shift: signed(23 downto 0);
  signal c_40_28_0_False_resize: signed(23 downto 0);
  signal c_40_28_0_False_shift: signed(23 downto 0);
  signal c_40_37_0_False_resize: signed(23 downto 0);
  signal c_40_37_0_False_shift: signed(23 downto 0);
  signal c_40_35_1_False_resize: signed(23 downto 0);
  signal c_40_35_1_False_shift: signed(23 downto 0);
  signal c_40_sel: std_logic_vector(1 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_resize: signed(23 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_resize: signed(23 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_resize: signed(23 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_9_0_False_resize: signed(23 downto 0);
  signal c_44_9_0_False_shift: signed(23 downto 0);
  signal c_44_28_2_False_resize: signed(23 downto 0);
  signal c_44_28_2_False_shift: signed(23 downto 0);
  signal c_44_39_1_False_resize: signed(23 downto 0);
  signal c_44_39_1_False_shift: signed(23 downto 0);
  signal c_44_39_0_False_resize: signed(23 downto 0);
  signal c_44_39_0_False_shift: signed(23 downto 0);
  signal c_44_sel: std_logic_vector(1 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_resize: signed(23 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_resize: signed(23 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_28_2_False_resize: signed(23 downto 0);
  signal c_47_28_2_False_shift: signed(23 downto 0);
  signal c_47_30_0_False_resize: signed(23 downto 0);
  signal c_47_30_0_False_shift: signed(23 downto 0);
  signal c_47_sel: std_logic_vector(0 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_48_resize: signed(23 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_49_9_0_False_resize: signed(23 downto 0);
  signal c_49_9_0_False_shift: signed(23 downto 0);
  signal c_49_39_0_False_resize: signed(23 downto 0);
  signal c_49_39_0_False_shift: signed(23 downto 0);
  signal c_49_39_1_False_resize: signed(23 downto 0);
  signal c_49_39_1_False_shift: signed(23 downto 0);
  signal c_49_sel: std_logic_vector(1 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_50_resize: signed(23 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_51_resize: signed(23 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_52_37_4_False_resize: signed(23 downto 0);
  signal c_52_37_4_False_shift: signed(23 downto 0);
  signal c_52_37_0_False_resize: signed(23 downto 0);
  signal c_52_37_0_False_shift: signed(23 downto 0);
  signal c_52_35_0_False_resize: signed(23 downto 0);
  signal c_52_35_0_False_shift: signed(23 downto 0);
  signal c_52_28_0_False_resize: signed(23 downto 0);
  signal c_52_28_0_False_shift: signed(23 downto 0);
  signal c_52_sel: std_logic_vector(1 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_53_resize: signed(23 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_54_35_0_False_resize: signed(23 downto 0);
  signal c_54_35_0_False_shift: signed(23 downto 0);
  signal c_54_28_0_False_resize: signed(23 downto 0);
  signal c_54_28_0_False_shift: signed(23 downto 0);
  signal c_54_37_2_False_resize: signed(23 downto 0);
  signal c_54_37_2_False_shift: signed(23 downto 0);
  signal c_54_sel: std_logic_vector(1 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_55_resize: signed(23 downto 0);
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
  -- output node 3 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_45);
    end if;
  end process;
  -- output node 4 with id 46
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_46);
    end if;
  end process;
  -- output node 5 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_48);
    end if;
  end process;
  -- output node 6 with id 50
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_50);
    end if;
  end process;
  -- output node 7 with id 51
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_51);
    end if;
  end process;
  -- output node 8 with id 53
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_53);
    end if;
  end process;
  -- output node 9 with id 55
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_55);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[17], [17], [15], [17]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 21,
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
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[2], [1], [8], [1]]
  c_2_0_0_False_resize <= resize(c_0, 19);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_1_False_resize <= resize(c_0, 19);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  c_2_0_3_False_resize <= resize(c_0, 19);
  c_2_0_3_False_shift <= shift_left(c_2_0_3_False_resize, 3);
  with config_select_1 select c_2_sel <= 
    "00" when "01",
    "00" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_0_False_shift;
        when "01" => c_2 <= c_2_0_1_False_shift;
        when others => c_2 <= c_2_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 3 and associated fundamentals [[1], [2], [4], [4]]
  c_3_0_2_False_resize <= resize(c_0, 18);
  c_3_0_2_False_shift <= shift_left(c_3_0_2_False_resize, 2);
  c_3_0_1_False_resize <= resize(c_0, 18);
  c_3_0_1_False_shift <= shift_left(c_3_0_1_False_resize, 1);
  c_3_0_0_False_resize <= resize(c_0, 18);
  c_3_0_0_False_shift <= shift_left(c_3_0_0_False_resize, 0);
  with config_select_1 select c_3_sel <= 
    "00" when "11",
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "00" => c_3 <= c_3_0_2_False_shift;
        when "01" => c_3 <= c_3_0_1_False_shift;
        when others => c_3 <= c_3_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 4 and associated fundamentals [[1], [-1], [4], [-3]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 18,
      w_o => 18,
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
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(17 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 5 and associated fundamentals [[3], [3], [3], [5]]
  with config_select_1 select c_5_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
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
      sub_i => c_5_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 6 and associated fundamentals [[64], [16], [32], [1]]
  c_6_0_4_False_resize <= resize(c_0, 22);
  c_6_0_4_False_shift <= shift_left(c_6_0_4_False_resize, 4);
  c_6_0_0_False_resize <= resize(c_0, 22);
  c_6_0_0_False_shift <= shift_left(c_6_0_0_False_resize, 0);
  c_6_0_6_False_resize <= resize(c_0, 22);
  c_6_0_6_False_shift <= shift_left(c_6_0_6_False_resize, 6);
  c_6_0_5_False_resize <= resize(c_0, 22);
  c_6_0_5_False_shift <= shift_left(c_6_0_5_False_resize, 5);
  with config_select_1 select c_6_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_0_4_False_shift;
        when "01" => c_6 <= c_6_0_0_False_shift;
        when "10" => c_6 <= c_6_0_6_False_shift;
        when others => c_6 <= c_6_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 7 and associated fundamentals [[125], [29], [61], [7]]
  with config_select_2 select c_7_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 19,
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
      sub_i => c_7_sub_sel,
      x_i => c_6,
      y_i => c_5,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 8 and associated fundamentals [[24], [34], [3], [5]]
  c_8_5_3_False_resize <= resize(c_5, 22);
  c_8_5_3_False_shift <= shift_left(c_8_5_3_False_resize, 3);
  c_8_1_1_False_resize <= resize(c_1, 22);
  c_8_1_1_False_shift <= shift_left(c_8_1_1_False_resize, 1);
  c_8_5_0_False_resize <= resize(c_5, 22);
  c_8_5_0_False_shift <= shift_left(c_8_5_0_False_resize, 0);
  with config_select_2 select c_8_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "00" => c_8 <= c_8_5_3_False_shift;
        when "01" => c_8 <= c_8_1_1_False_shift;
        when others => c_8 <= c_8_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 9 and associated fundamentals [[112], [4], [-250], [-182]]
  with config_select_3 select c_9_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 18,
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
      sub_i => c_9_sub_sel,
      x_i => c_8,
      y_i => c_4,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 10 and associated fundamentals [[195], [-189], [195], [325]]
  with config_select_2 select c_10_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 25,
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
      sub_i => c_10_sub_sel,
      x_i => c_5,
      y_i => c_5,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 11 and associated fundamentals [[8], [16], [8], [1]]
  c_11_0_4_False_resize <= resize(c_0, 20);
  c_11_0_4_False_shift <= shift_left(c_11_0_4_False_resize, 4);
  c_11_0_0_False_resize <= resize(c_0, 20);
  c_11_0_0_False_shift <= shift_left(c_11_0_0_False_resize, 0);
  c_11_0_3_False_resize <= resize(c_0, 20);
  c_11_0_3_False_shift <= shift_left(c_11_0_3_False_resize, 3);
  with config_select_1 select c_11_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_0_4_False_shift;
        when "01" => c_11 <= c_11_0_0_False_shift;
        when others => c_11 <= c_11_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 12 and associated fundamentals [[1], [16], [1], [8]]
  c_12_0_4_False_resize <= resize(c_0, 20);
  c_12_0_4_False_shift <= shift_left(c_12_0_4_False_resize, 4);
  c_12_0_0_False_resize <= resize(c_0, 20);
  c_12_0_0_False_shift <= shift_left(c_12_0_0_False_resize, 0);
  c_12_0_3_False_resize <= resize(c_0, 20);
  c_12_0_3_False_shift <= shift_left(c_12_0_3_False_resize, 3);
  with config_select_1 select c_12_sel <= 
    "00" when "01",
    "01" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "00" => c_12 <= c_12_0_4_False_shift;
        when "01" => c_12 <= c_12_0_0_False_shift;
        when others => c_12 <= c_12_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 13 and associated fundamentals [[10], [-16], [6], [-15]]
  with config_select_2 select c_13_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
      w_o => 21,
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
      sub_i => c_13_sub_sel,
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 14 and associated fundamentals [[16], [1], [32], [16]]
  c_14_0_0_False_resize <= resize(c_0, 21);
  c_14_0_0_False_shift <= shift_left(c_14_0_0_False_resize, 0);
  c_14_0_4_False_resize <= resize(c_0, 21);
  c_14_0_4_False_shift <= shift_left(c_14_0_4_False_resize, 4);
  c_14_0_5_False_resize <= resize(c_0, 21);
  c_14_0_5_False_shift <= shift_left(c_14_0_5_False_resize, 5);
  with config_select_1 select c_14_sel <= 
    "00" when "01",
    "01" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_0_0_False_shift;
        when "01" => c_14 <= c_14_0_4_False_shift;
        when others => c_14 <= c_14_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 15 and associated fundamentals [[1], [16], [1], [128]]
  c_15_0_4_False_resize <= resize(c_0, 23);
  c_15_0_4_False_shift <= shift_left(c_15_0_4_False_resize, 4);
  c_15_0_0_False_resize <= resize(c_0, 23);
  c_15_0_0_False_shift <= shift_left(c_15_0_0_False_resize, 0);
  c_15_0_7_False_resize <= resize(c_0, 23);
  c_15_0_7_False_shift <= shift_left(c_15_0_7_False_resize, 7);
  with config_select_1 select c_15_sel <= 
    "00" when "01",
    "01" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "00" => c_15 <= c_15_0_4_False_shift;
        when "01" => c_15 <= c_15_0_0_False_shift;
        when others => c_15 <= c_15_0_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 16 and associated fundamentals [[17], [-15], [31], [-112]]
  with config_select_2 select c_16_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 23,
      w_o => 23,
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
      c_16 <= c_16_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 17 and associated fundamentals [[4], [-4], [31], [14]]
  c_17_16_0_False_resize <= c_16(20 downto 0);
  c_17_16_0_False_shift <= shift_left(c_17_16_0_False_resize, 0);
  c_17_4_2_False_resize <= resize(c_4, 21);
  c_17_4_2_False_shift <= shift_left(c_17_4_2_False_resize, 2);
  c_17_7_1_False_resize <= c_7(20 downto 0);
  c_17_7_1_False_shift <= shift_left(c_17_7_1_False_resize, 1);
  with config_select_3 select c_17_sel <= 
    "00" when "10",
    "01" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "00" => c_17 <= c_17_16_0_False_shift;
        when "01" => c_17 <= c_17_4_2_False_shift;
        when others => c_17 <= c_17_7_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[17], [-15], [256], [28]]
  c_18_16_0_False_resize <= resize(c_16, 24);
  c_18_16_0_False_shift <= shift_left(c_18_16_0_False_resize, 0);
  c_18_7_2_False_resize <= resize(c_7, 24);
  c_18_7_2_False_shift <= shift_left(c_18_7_2_False_resize, 2);
  c_18_4_6_False_resize <= resize(c_4, 24);
  c_18_4_6_False_shift <= shift_left(c_18_4_6_False_resize, 6);
  with config_select_3 select c_18_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "00" => c_18 <= c_18_16_0_False_shift;
        when "01" => c_18 <= c_18_7_2_False_shift;
        when others => c_18 <= c_18_4_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 19 and associated fundamentals [[-13], [-19], [-225], [-14]]
  with config_select_4 select c_19_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_19: entity work.adder_node
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
      sub_i => c_19_sub_sel,
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 20 and associated fundamentals [[320], [-189], [32], [-224]]
  c_20_4_3_False_resize <= resize(c_4, 25);
  c_20_4_3_False_shift <= shift_left(c_20_4_3_False_resize, 3);
  c_20_13_5_False_resize <= resize(c_13, 25);
  c_20_13_5_False_shift <= shift_left(c_20_13_5_False_resize, 5);
  c_20_10_0_False_resize <= c_10;
  c_20_10_0_False_shift <= shift_left(c_20_10_0_False_resize, 0);
  c_20_16_1_False_resize <= resize(c_16, 25);
  c_20_16_1_False_shift <= shift_left(c_20_16_1_False_resize, 1);
  with config_select_3 select c_20_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_4_3_False_shift;
        when "01" => c_20 <= c_20_13_5_False_shift;
        when "10" => c_20 <= c_20_10_0_False_shift;
        when others => c_20 <= c_20_16_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 21 and associated fundamentals [[256], [-1], [62], [7]]
  c_21_4_0_False_resize <= resize(c_4, 24);
  c_21_4_0_False_shift <= shift_left(c_21_4_0_False_resize, 0);
  c_21_7_0_False_resize <= resize(c_7, 24);
  c_21_7_0_False_shift <= shift_left(c_21_7_0_False_resize, 0);
  c_21_4_8_False_resize <= resize(c_4, 24);
  c_21_4_8_False_shift <= shift_left(c_21_4_8_False_resize, 8);
  c_21_16_1_False_resize <= resize(c_16, 24);
  c_21_16_1_False_shift <= shift_left(c_21_16_1_False_resize, 1);
  with config_select_3 select c_21_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "00" => c_21 <= c_21_4_0_False_shift;
        when "01" => c_21 <= c_21_7_0_False_shift;
        when "10" => c_21 <= c_21_4_8_False_shift;
        when others => c_21 <= c_21_16_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 22 and associated fundamentals [[-192], [-191], [-92], [-238]]
  with config_select_4 select c_22_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 24,
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
      sub_i => c_22_sub_sel,
      x_i => c_20,
      y_i => c_21,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 23 and associated fundamentals [[128], [-378], [6], [14]]
  c_23_10_1_False_resize <= c_10;
  c_23_10_1_False_shift <= shift_left(c_23_10_1_False_resize, 1);
  c_23_4_7_False_resize <= resize(c_4, 25);
  c_23_4_7_False_shift <= shift_left(c_23_4_7_False_resize, 7);
  c_23_7_1_False_resize <= resize(c_7, 25);
  c_23_7_1_False_shift <= shift_left(c_23_7_1_False_resize, 1);
  c_23_13_0_False_resize <= resize(c_13, 25);
  c_23_13_0_False_shift <= shift_left(c_23_13_0_False_resize, 0);
  with config_select_3 select c_23_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "00" => c_23 <= c_23_10_1_False_shift;
        when "01" => c_23 <= c_23_4_7_False_shift;
        when "10" => c_23 <= c_23_7_1_False_shift;
        when others => c_23 <= c_23_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 24 and associated fundamentals [[17], [-480], [195], [-6]]
  c_24_16_0_False_resize <= resize(c_16, 25);
  c_24_16_0_False_shift <= shift_left(c_24_16_0_False_resize, 0);
  c_24_16_5_False_resize <= resize(c_16, 25);
  c_24_16_5_False_shift <= shift_left(c_24_16_5_False_resize, 5);
  c_24_4_1_False_resize <= resize(c_4, 25);
  c_24_4_1_False_shift <= shift_left(c_24_4_1_False_resize, 1);
  c_24_10_0_False_resize <= c_10;
  c_24_10_0_False_shift <= shift_left(c_24_10_0_False_resize, 0);
  with config_select_3 select c_24_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_16_0_False_shift;
        when "01" => c_24 <= c_24_16_5_False_shift;
        when "10" => c_24 <= c_24_4_1_False_shift;
        when others => c_24 <= c_24_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 25 and associated fundamentals [[111], [102], [201], [8]]
  with config_select_4 select c_25_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
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
      sub_i => c_25_sub_sel,
      x_i => c_23,
      y_i => c_24,
      z_o => c_25_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 26 and associated fundamentals [[96], [24], [15], [136]]
  c_26_5_5_False_resize <= resize(c_5, 24);
  c_26_5_5_False_shift <= shift_left(c_26_5_5_False_resize, 5);
  c_26_5_3_False_resize <= resize(c_5, 24);
  c_26_5_3_False_shift <= shift_left(c_26_5_3_False_resize, 3);
  c_26_1_3_False_resize <= resize(c_1, 24);
  c_26_1_3_False_shift <= shift_left(c_26_1_3_False_resize, 3);
  c_26_1_0_False_resize <= resize(c_1, 24);
  c_26_1_0_False_shift <= shift_left(c_26_1_0_False_resize, 0);
  with config_select_2 select c_26_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "00" => c_26 <= c_26_5_5_False_shift;
        when "01" => c_26 <= c_26_5_3_False_shift;
        when "10" => c_26 <= c_26_1_3_False_shift;
        when others => c_26 <= c_26_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 27 and associated fundamentals [[3], [17], [15], [17]]
  c_27_1_0_False_resize <= c_1;
  c_27_1_0_False_shift <= shift_left(c_27_1_0_False_resize, 0);
  c_27_5_0_False_resize <= resize(c_5, 21);
  c_27_5_0_False_shift <= shift_left(c_27_5_0_False_resize, 0);
  with config_select_2 select c_27_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_1_0_False_shift;
        when others => c_27 <= c_27_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 28 and associated fundamentals [[90], [58], [-15], [170]]
  with config_select_3 select c_28_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 21,
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
      sub_i => c_28_sub_sel,
      x_i => c_26,
      y_i => c_27,
      z_o => c_28_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_28_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 29 and associated fundamentals [[3], [3], [6144], [68]]
  c_29_5_11_False_resize <= resize(c_5, 29);
  c_29_5_11_False_shift <= shift_left(c_29_5_11_False_resize, 11);
  c_29_5_0_False_resize <= resize(c_5, 29);
  c_29_5_0_False_shift <= shift_left(c_29_5_0_False_resize, 0);
  c_29_1_2_False_resize <= resize(c_1, 29);
  c_29_1_2_False_shift <= shift_left(c_29_1_2_False_resize, 2);
  with config_select_2 select c_29_sel <= 
    "00" when "10",
    "01" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "00" => c_29 <= c_29_5_11_False_shift;
        when "01" => c_29 <= c_29_5_0_False_shift;
        when others => c_29 <= c_29_1_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 30 and associated fundamentals [[-157], [-253], [6048], [-172]]
  with config_select_3 select c_30_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 21,
      w_o => 24,
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
      sub_i => c_30_sub_sel,
      x_i => c_29,
      y_i => c_13,
      z_o => c_30_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_30_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 31 and associated fundamentals [[34], [-189], [16], [-96]]
  c_31_4_5_False_resize <= resize(c_4, 24);
  c_31_4_5_False_shift <= shift_left(c_31_4_5_False_resize, 5);
  c_31_16_1_False_resize <= resize(c_16, 24);
  c_31_16_1_False_shift <= shift_left(c_31_16_1_False_resize, 1);
  c_31_10_0_False_resize <= c_10(23 downto 0);
  c_31_10_0_False_shift <= shift_left(c_31_10_0_False_resize, 0);
  c_31_4_2_False_resize <= resize(c_4, 24);
  c_31_4_2_False_shift <= shift_left(c_31_4_2_False_resize, 2);
  with config_select_3 select c_31_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "00" => c_31 <= c_31_4_5_False_shift;
        when "01" => c_31 <= c_31_16_1_False_shift;
        when "10" => c_31 <= c_31_10_0_False_shift;
        when others => c_31 <= c_31_4_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 32 and associated fundamentals [[125], [-8], [124], [56]]
  c_32_7_3_False_resize <= c_7;
  c_32_7_3_False_shift <= shift_left(c_32_7_3_False_resize, 3);
  c_32_16_2_False_resize <= c_16;
  c_32_16_2_False_shift <= shift_left(c_32_16_2_False_resize, 2);
  c_32_7_0_False_resize <= c_7;
  c_32_7_0_False_shift <= shift_left(c_32_7_0_False_resize, 0);
  c_32_4_3_False_resize <= resize(c_4, 23);
  c_32_4_3_False_shift <= shift_left(c_32_4_3_False_resize, 3);
  with config_select_3 select c_32_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "00" => c_32 <= c_32_7_3_False_shift;
        when "01" => c_32 <= c_32_16_2_False_shift;
        when "10" => c_32 <= c_32_7_0_False_shift;
        when others => c_32 <= c_32_4_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 33 and associated fundamentals [[-91], [-181], [-108], [-152]]
  inst_adder_node_33: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
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
      x_i => c_31,
      y_i => c_32,
      z_o => c_33_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_33_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 34 and associated fundamentals [[17], [12], [3], [40]]
  c_34_5_2_False_resize <= resize(c_5, 22);
  c_34_5_2_False_shift <= shift_left(c_34_5_2_False_resize, 2);
  c_34_1_0_False_resize <= resize(c_1, 22);
  c_34_1_0_False_shift <= shift_left(c_34_1_0_False_resize, 0);
  c_34_5_3_False_resize <= resize(c_5, 22);
  c_34_5_3_False_shift <= shift_left(c_34_5_3_False_resize, 3);
  c_34_5_0_False_resize <= resize(c_5, 22);
  c_34_5_0_False_shift <= shift_left(c_34_5_0_False_resize, 0);
  with config_select_2 select c_34_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "00" => c_34 <= c_34_5_2_False_shift;
        when "01" => c_34 <= c_34_1_0_False_shift;
        when "10" => c_34 <= c_34_5_3_False_shift;
        when others => c_34 <= c_34_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 35 and associated fundamentals [[127], [-237], [183], [165]]
  inst_adder_node_35: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 22,
      w_o => 24,
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
      x_i => c_10,
      y_i => c_34,
      z_o => c_35_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_35_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 36 and associated fundamentals [[136], [12], [3], [5]]
  c_36_1_3_False_resize <= resize(c_1, 24);
  c_36_1_3_False_shift <= shift_left(c_36_1_3_False_resize, 3);
  c_36_5_2_False_resize <= resize(c_5, 24);
  c_36_5_2_False_shift <= shift_left(c_36_5_2_False_resize, 2);
  c_36_5_0_False_resize <= resize(c_5, 24);
  c_36_5_0_False_shift <= shift_left(c_36_5_0_False_resize, 0);
  with config_select_2 select c_36_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "00" => c_36 <= c_36_1_3_False_shift;
        when "01" => c_36 <= c_36_5_2_False_shift;
        when others => c_36 <= c_36_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 37 and associated fundamentals [[-147], [53], [55], [-3]]
  with config_select_3 select c_37_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_37: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
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
      sub_i => c_37_sub_sel,
      x_i => c_7,
      y_i => c_36,
      z_o => c_37_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_37_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 38 and associated fundamentals [[48], [3], [6], [17]]
  c_38_5_4_False_resize <= resize(c_5, 22);
  c_38_5_4_False_shift <= shift_left(c_38_5_4_False_resize, 4);
  c_38_5_1_False_resize <= resize(c_5, 22);
  c_38_5_1_False_shift <= shift_left(c_38_5_1_False_resize, 1);
  c_38_5_0_False_resize <= resize(c_5, 22);
  c_38_5_0_False_shift <= shift_left(c_38_5_0_False_resize, 0);
  c_38_1_0_False_resize <= resize(c_1, 22);
  c_38_1_0_False_shift <= shift_left(c_38_1_0_False_resize, 0);
  with config_select_2 select c_38_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "00" => c_38 <= c_38_5_4_False_shift;
        when "01" => c_38 <= c_38_5_1_False_shift;
        when "10" => c_38 <= c_38_5_0_False_shift;
        when others => c_38 <= c_38_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 39 and associated fundamentals [[-29], [-23], [73], [41]]
  with config_select_3 select c_39_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_39: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
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
      sub_i => c_39_sub_sel,
      x_i => c_38,
      y_i => c_7,
      z_o => c_39_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_39_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 40 and associated fundamentals [[254], [32], [55], [170]]
  c_40_9_3_False_resize <= c_9;
  c_40_9_3_False_shift <= shift_left(c_40_9_3_False_resize, 3);
  c_40_28_0_False_resize <= c_28;
  c_40_28_0_False_shift <= shift_left(c_40_28_0_False_resize, 0);
  c_40_37_0_False_resize <= c_37;
  c_40_37_0_False_shift <= shift_left(c_40_37_0_False_resize, 0);
  c_40_35_1_False_resize <= c_35;
  c_40_35_1_False_shift <= shift_left(c_40_35_1_False_resize, 1);
  with config_select_4 select c_40_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "00" => c_40 <= c_40_9_3_False_shift;
        when "01" => c_40 <= c_40_28_0_False_shift;
        when "10" => c_40 <= c_40_37_0_False_shift;
        when others => c_40 <= c_40_35_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 41 and associated fundamentals [[254], [32], [55], [170]]
  c_41_resize <= c_40;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'output' in stage 4 with id 42 and associated fundamentals [[192], [191], [92], [238]]
  c_42_resize <= c_22;
  c_42 <= -shift_left(c_42_resize, 0);
  -- node of type 'output' in stage 4 with id 43 and associated fundamentals [[91], [181], [108], [152]]
  c_43_resize <= c_33;
  c_43 <= -shift_left(c_43_resize, 0);
  -- node of type 'mux' in stage 4 with id 44 and associated fundamentals [[112], [232], [73], [82]]
  c_44_9_0_False_resize <= c_9;
  c_44_9_0_False_shift <= shift_left(c_44_9_0_False_resize, 0);
  c_44_28_2_False_resize <= c_28;
  c_44_28_2_False_shift <= shift_left(c_44_28_2_False_resize, 2);
  c_44_39_1_False_resize <= resize(c_39, 24);
  c_44_39_1_False_shift <= shift_left(c_44_39_1_False_resize, 1);
  c_44_39_0_False_resize <= resize(c_39, 24);
  c_44_39_0_False_shift <= shift_left(c_44_39_0_False_resize, 0);
  with config_select_4 select c_44_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "00" => c_44 <= c_44_9_0_False_shift;
        when "01" => c_44 <= c_44_28_2_False_shift;
        when "10" => c_44 <= c_44_39_1_False_shift;
        when others => c_44 <= c_44_39_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 45 and associated fundamentals [[112], [232], [73], [82]]
  c_45_resize <= c_44;
  c_45 <= shift_left(c_45_resize, 0);
  -- node of type 'output' in stage 4 with id 46 and associated fundamentals [[13], [19], [225], [14]]
  c_46_resize <= c_19;
  c_46 <= -shift_left(c_46_resize, 0);
  -- node of type 'mux' in stage 4 with id 47 and associated fundamentals [[-157], [-253], [-60], [-172]]
  c_47_28_2_False_resize <= c_28;
  c_47_28_2_False_shift <= shift_left(c_47_28_2_False_resize, 2);
  c_47_30_0_False_resize <= c_30;
  c_47_30_0_False_shift <= shift_left(c_47_30_0_False_resize, 0);
  with config_select_4 select c_47_sel <= 
    "0" when "10",
    "1" when "01",
    "1" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "0" => c_47 <= c_47_28_2_False_shift;
        when others => c_47 <= c_47_30_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 48 and associated fundamentals [[157], [253], [60], [172]]
  c_48_resize <= c_47;
  c_48 <= -shift_left(c_48_resize, 0);
  -- node of type 'mux' in stage 4 with id 49 and associated fundamentals [[-58], [-23], [-250], [-182]]
  c_49_9_0_False_resize <= c_9;
  c_49_9_0_False_shift <= shift_left(c_49_9_0_False_resize, 0);
  c_49_39_0_False_resize <= resize(c_39, 24);
  c_49_39_0_False_shift <= shift_left(c_49_39_0_False_resize, 0);
  c_49_39_1_False_resize <= resize(c_39, 24);
  c_49_39_1_False_shift <= shift_left(c_49_39_1_False_resize, 1);
  with config_select_4 select c_49_sel <= 
    "00" when "10",
    "00" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_49_sel is
        when "00" => c_49 <= c_49_9_0_False_shift;
        when "01" => c_49 <= c_49_39_0_False_shift;
        when others => c_49 <= c_49_39_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 50 and associated fundamentals [[58], [23], [250], [182]]
  c_50_resize <= c_49;
  c_50 <= -shift_left(c_50_resize, 0);
  -- node of type 'output' in stage 4 with id 51 and associated fundamentals [[111], [102], [201], [8]]
  c_51_resize <= c_25;
  c_51 <= shift_left(c_51_resize, 0);
  -- node of type 'mux' in stage 4 with id 52 and associated fundamentals [[-147], [-237], [-15], [-48]]
  c_52_37_4_False_resize <= c_37;
  c_52_37_4_False_shift <= shift_left(c_52_37_4_False_resize, 4);
  c_52_37_0_False_resize <= c_37;
  c_52_37_0_False_shift <= shift_left(c_52_37_0_False_resize, 0);
  c_52_35_0_False_resize <= c_35;
  c_52_35_0_False_shift <= shift_left(c_52_35_0_False_resize, 0);
  c_52_28_0_False_resize <= c_28;
  c_52_28_0_False_shift <= shift_left(c_52_28_0_False_resize, 0);
  with config_select_4 select c_52_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_52_sel is
        when "00" => c_52 <= c_52_37_4_False_shift;
        when "01" => c_52 <= c_52_37_0_False_shift;
        when "10" => c_52 <= c_52_35_0_False_shift;
        when others => c_52 <= c_52_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 53 and associated fundamentals [[147], [237], [15], [48]]
  c_53_resize <= c_52;
  c_53 <= -shift_left(c_53_resize, 0);
  -- node of type 'mux' in stage 4 with id 54 and associated fundamentals [[90], [212], [183], [165]]
  c_54_35_0_False_resize <= c_35;
  c_54_35_0_False_shift <= shift_left(c_54_35_0_False_resize, 0);
  c_54_28_0_False_resize <= c_28;
  c_54_28_0_False_shift <= shift_left(c_54_28_0_False_resize, 0);
  c_54_37_2_False_resize <= c_37;
  c_54_37_2_False_shift <= shift_left(c_54_37_2_False_resize, 2);
  with config_select_4 select c_54_sel <= 
    "00" when "10",
    "00" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_54_sel is
        when "00" => c_54 <= c_54_35_0_False_shift;
        when "01" => c_54 <= c_54_28_0_False_shift;
        when others => c_54 <= c_54_37_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 55 and associated fundamentals [[90], [212], [183], [165]]
  c_55_resize <= c_54;
  c_55 <= shift_left(c_55_resize, 0);
end architecture;
