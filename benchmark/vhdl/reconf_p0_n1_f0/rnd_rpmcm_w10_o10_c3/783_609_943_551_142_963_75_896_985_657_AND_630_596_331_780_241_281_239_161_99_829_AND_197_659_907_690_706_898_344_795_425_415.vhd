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
    y_6: out std_logic_vector(24 downto 0);
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
  signal config_select_8: std_logic_vector(1 downto 0);
  signal config_select_9: std_logic_vector(1 downto 0);
  signal config_select_10: std_logic_vector(1 downto 0);
  signal config_select_11: std_logic_vector(1 downto 0);
  signal config_select_12: std_logic_vector(1 downto 0);
  signal config_select_13: std_logic_vector(1 downto 0);
  signal config_select_14: std_logic_vector(1 downto 0);
  signal config_select_15: std_logic_vector(1 downto 0);
  signal config_select_16: std_logic_vector(1 downto 0);
  signal config_select_17: std_logic_vector(1 downto 0);
  signal config_select_18: std_logic_vector(1 downto 0);
  signal config_select_19: std_logic_vector(1 downto 0);
  signal config_select_20: std_logic_vector(1 downto 0);
  signal config_select_21: std_logic_vector(1 downto 0);
  signal config_select_22: std_logic_vector(1 downto 0);
  signal config_select_23: std_logic_vector(1 downto 0);
  signal config_select_24: std_logic_vector(1 downto 0);
  signal config_select_25: std_logic_vector(1 downto 0);
  signal config_select_26: std_logic_vector(1 downto 0);
  signal config_select_27: std_logic_vector(1 downto 0);
  signal config_select_28: std_logic_vector(1 downto 0);
  signal config_select_29: std_logic_vector(1 downto 0);
  signal config_select_30: std_logic_vector(1 downto 0);
  signal config_select_31: std_logic_vector(1 downto 0);
  signal config_select_32: std_logic_vector(1 downto 0);
  signal config_select_33: std_logic_vector(1 downto 0);
  signal config_select_34: std_logic_vector(1 downto 0);
  signal config_select_35: std_logic_vector(1 downto 0);
  signal config_select_36: std_logic_vector(1 downto 0);
  signal config_select_37: std_logic_vector(1 downto 0);
  signal config_select_38: std_logic_vector(1 downto 0);
  signal config_select_39: std_logic_vector(1 downto 0);
  signal config_select_40: std_logic_vector(1 downto 0);
  signal config_select_41: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(21 downto 0);
  signal c_1_0_2_False_resize: signed(21 downto 0);
  signal c_1_0_2_False_shift: signed(21 downto 0);
  signal c_1_0_6_False_resize: signed(21 downto 0);
  signal c_1_0_6_False_shift: signed(21 downto 0);
  signal c_1_0_0_False_resize: signed(21 downto 0);
  signal c_1_0_0_False_shift: signed(21 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(24 downto 0);
  signal c_2_0_4_False_resize: signed(24 downto 0);
  signal c_2_0_4_False_shift: signed(24 downto 0);
  signal c_2_0_9_False_resize: signed(24 downto 0);
  signal c_2_0_9_False_shift: signed(24 downto 0);
  signal c_2_0_0_False_resize: signed(24 downto 0);
  signal c_2_0_0_False_shift: signed(24 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(19 downto 0);
  signal c_3_i1_resize: signed(19 downto 0);
  signal c_3_i0_shift: signed(19 downto 0);
  signal c_3_i1_shift: signed(19 downto 0);
  signal c_3_arith: signed(19 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_4: signed(31 downto 0);
  signal c_4_0_6_False_resize: signed(31 downto 0);
  signal c_4_0_6_False_shift: signed(31 downto 0);
  signal c_4_3_0_False_resize: signed(31 downto 0);
  signal c_4_3_0_False_shift: signed(31 downto 0);
  signal c_4_0_16_False_resize: signed(31 downto 0);
  signal c_4_0_16_False_shift: signed(31 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(29 downto 0);
  signal c_5_0_14_False_resize: signed(29 downto 0);
  signal c_5_0_14_False_shift: signed(29 downto 0);
  signal c_5_0_6_False_resize: signed(29 downto 0);
  signal c_5_0_6_False_shift: signed(29 downto 0);
  signal c_5_3_0_False_resize: signed(29 downto 0);
  signal c_5_3_0_False_shift: signed(29 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(31 downto 0);
  signal c_6_i0_resize: signed(31 downto 0);
  signal c_6_i1_resize: signed(31 downto 0);
  signal c_6_i0_shift: signed(31 downto 0);
  signal c_6_i1_shift: signed(31 downto 0);
  signal c_6_arith: signed(31 downto 0);
  signal c_6_oshift: signed(31 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(31 downto 0);
  signal c_7_3_12_False_resize: signed(31 downto 0);
  signal c_7_3_12_False_shift: signed(31 downto 0);
  signal c_7_6_0_False_resize: signed(31 downto 0);
  signal c_7_6_0_False_shift: signed(31 downto 0);
  signal c_7_3_13_False_resize: signed(31 downto 0);
  signal c_7_3_13_False_shift: signed(31 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(29 downto 0);
  signal c_8_6_7_False_resize: signed(29 downto 0);
  signal c_8_6_7_False_shift: signed(29 downto 0);
  signal c_8_0_12_False_resize: signed(29 downto 0);
  signal c_8_0_12_False_shift: signed(29 downto 0);
  signal c_8_3_0_False_resize: signed(29 downto 0);
  signal c_8_3_0_False_shift: signed(29 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(31 downto 0);
  signal c_9_i0_resize: signed(31 downto 0);
  signal c_9_i1_resize: signed(31 downto 0);
  signal c_9_i0_shift: signed(31 downto 0);
  signal c_9_i1_shift: signed(31 downto 0);
  signal c_9_arith: signed(31 downto 0);
  signal c_9_oshift: signed(31 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(31 downto 0);
  signal c_10_9_0_False_resize: signed(31 downto 0);
  signal c_10_9_0_False_shift: signed(31 downto 0);
  signal c_10_6_0_False_resize: signed(31 downto 0);
  signal c_10_6_0_False_shift: signed(31 downto 0);
  signal c_10_3_0_False_resize: signed(31 downto 0);
  signal c_10_3_0_False_shift: signed(31 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(22 downto 0);
  signal c_11_i0_resize: signed(32 downto 0);
  signal c_11_i1_resize: signed(32 downto 0);
  signal c_11_i0_shift: signed(32 downto 0);
  signal c_11_i1_shift: signed(32 downto 0);
  signal c_11_arith: signed(32 downto 0);
  signal c_11_oshift: signed(22 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(18 downto 0);
  signal c_12_0_3_False_resize: signed(18 downto 0);
  signal c_12_0_3_False_shift: signed(18 downto 0);
  signal c_12_11_0_False_resize: signed(18 downto 0);
  signal c_12_11_0_False_shift: signed(18 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(18 downto 0);
  signal c_13_11_0_False_resize: signed(18 downto 0);
  signal c_13_11_0_False_shift: signed(18 downto 0);
  signal c_13_0_3_False_resize: signed(18 downto 0);
  signal c_13_0_3_False_shift: signed(18 downto 0);
  signal c_13_0_2_False_resize: signed(18 downto 0);
  signal c_13_0_2_False_shift: signed(18 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(17 downto 0);
  signal c_14_i0_resize: signed(17 downto 0);
  signal c_14_i1_resize: signed(17 downto 0);
  signal c_14_i0_shift: signed(17 downto 0);
  signal c_14_i1_shift: signed(17 downto 0);
  signal c_14_arith: signed(17 downto 0);
  signal c_14_oshift: signed(17 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(23 downto 0);
  signal c_15_6_0_False_resize: signed(23 downto 0);
  signal c_15_6_0_False_shift: signed(23 downto 0);
  signal c_15_3_0_False_resize: signed(23 downto 0);
  signal c_15_3_0_False_shift: signed(23 downto 0);
  signal c_15_0_8_False_resize: signed(23 downto 0);
  signal c_15_0_8_False_shift: signed(23 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(31 downto 0);
  signal c_16_0_7_False_resize: signed(31 downto 0);
  signal c_16_0_7_False_shift: signed(31 downto 0);
  signal c_16_3_0_False_resize: signed(31 downto 0);
  signal c_16_3_0_False_shift: signed(31 downto 0);
  signal c_16_6_0_False_resize: signed(31 downto 0);
  signal c_16_6_0_False_shift: signed(31 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(31 downto 0);
  signal c_17_i0_resize: signed(31 downto 0);
  signal c_17_i1_resize: signed(31 downto 0);
  signal c_17_i0_shift: signed(31 downto 0);
  signal c_17_i1_shift: signed(31 downto 0);
  signal c_17_arith: signed(31 downto 0);
  signal c_17_oshift: signed(31 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(29 downto 0);
  signal c_18_0_0_False_resize: signed(29 downto 0);
  signal c_18_0_0_False_shift: signed(29 downto 0);
  signal c_18_0_14_False_resize: signed(29 downto 0);
  signal c_18_0_14_False_shift: signed(29 downto 0);
  signal c_18_0_4_False_resize: signed(29 downto 0);
  signal c_18_0_4_False_shift: signed(29 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(31 downto 0);
  signal c_19_0_4_False_resize: signed(31 downto 0);
  signal c_19_0_4_False_shift: signed(31 downto 0);
  signal c_19_0_2_False_resize: signed(31 downto 0);
  signal c_19_0_2_False_shift: signed(31 downto 0);
  signal c_19_17_0_False_resize: signed(31 downto 0);
  signal c_19_17_0_False_shift: signed(31 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(32 downto 0);
  signal c_20_i0_resize: signed(32 downto 0);
  signal c_20_i1_resize: signed(32 downto 0);
  signal c_20_i0_shift: signed(32 downto 0);
  signal c_20_i1_shift: signed(32 downto 0);
  signal c_20_arith: signed(32 downto 0);
  signal c_20_oshift: signed(32 downto 0);
  signal c_21: signed(20 downto 0);
  signal c_21_0_0_False_resize: signed(20 downto 0);
  signal c_21_0_0_False_shift: signed(20 downto 0);
  signal c_21_20_0_False_resize: signed(20 downto 0);
  signal c_21_20_0_False_shift: signed(20 downto 0);
  signal c_21_3_0_False_resize: signed(20 downto 0);
  signal c_21_3_0_False_shift: signed(20 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(20 downto 0);
  signal c_22_20_0_False_resize: signed(20 downto 0);
  signal c_22_20_0_False_shift: signed(20 downto 0);
  signal c_22_0_0_False_resize: signed(20 downto 0);
  signal c_22_0_0_False_shift: signed(20 downto 0);
  signal c_22_0_1_False_resize: signed(20 downto 0);
  signal c_22_0_1_False_shift: signed(20 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_i0_resize: signed(25 downto 0);
  signal c_23_i1_resize: signed(25 downto 0);
  signal c_23_i0_shift: signed(25 downto 0);
  signal c_23_i1_shift: signed(25 downto 0);
  signal c_23_arith: signed(25 downto 0);
  signal c_23_oshift: signed(25 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(26 downto 0);
  signal c_24_0_11_False_resize: signed(26 downto 0);
  signal c_24_0_11_False_shift: signed(26 downto 0);
  signal c_24_3_5_False_resize: signed(26 downto 0);
  signal c_24_3_5_False_shift: signed(26 downto 0);
  signal c_24_0_0_False_resize: signed(26 downto 0);
  signal c_24_0_0_False_shift: signed(26 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_0_7_False_resize: signed(23 downto 0);
  signal c_25_0_7_False_shift: signed(23 downto 0);
  signal c_25_11_1_False_resize: signed(23 downto 0);
  signal c_25_11_1_False_shift: signed(23 downto 0);
  signal c_25_6_0_False_resize: signed(23 downto 0);
  signal c_25_6_0_False_shift: signed(23 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(30 downto 0);
  signal c_26_i0_resize: signed(30 downto 0);
  signal c_26_i1_resize: signed(30 downto 0);
  signal c_26_i0_shift: signed(30 downto 0);
  signal c_26_i1_shift: signed(30 downto 0);
  signal c_26_arith: signed(30 downto 0);
  signal c_26_oshift: signed(30 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(28 downto 0);
  signal c_27_23_0_False_resize: signed(28 downto 0);
  signal c_27_23_0_False_shift: signed(28 downto 0);
  signal c_27_0_13_False_resize: signed(28 downto 0);
  signal c_27_0_13_False_shift: signed(28 downto 0);
  signal c_27_3_1_False_resize: signed(28 downto 0);
  signal c_27_3_1_False_shift: signed(28 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(31 downto 0);
  signal c_28_11_0_False_resize: signed(31 downto 0);
  signal c_28_11_0_False_shift: signed(31 downto 0);
  signal c_28_20_1_False_resize: signed(31 downto 0);
  signal c_28_20_1_False_shift: signed(31 downto 0);
  signal c_28_0_16_False_resize: signed(31 downto 0);
  signal c_28_0_16_False_shift: signed(31 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_i0_resize: signed(23 downto 0);
  signal c_29_i1_resize: signed(23 downto 0);
  signal c_29_i0_shift: signed(23 downto 0);
  signal c_29_i1_shift: signed(23 downto 0);
  signal c_29_arith: signed(23 downto 0);
  signal c_29_oshift: signed(23 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(32 downto 0);
  signal c_30_0_17_False_resize: signed(32 downto 0);
  signal c_30_0_17_False_shift: signed(32 downto 0);
  signal c_30_29_0_False_resize: signed(32 downto 0);
  signal c_30_29_0_False_shift: signed(32 downto 0);
  signal c_30_26_2_False_resize: signed(32 downto 0);
  signal c_30_26_2_False_shift: signed(32 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(24 downto 0);
  signal c_31_20_0_False_resize: signed(24 downto 0);
  signal c_31_20_0_False_shift: signed(24 downto 0);
  signal c_31_14_7_False_resize: signed(24 downto 0);
  signal c_31_14_7_False_shift: signed(24 downto 0);
  signal c_31_0_8_False_resize: signed(24 downto 0);
  signal c_31_0_8_False_shift: signed(24 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(33 downto 0);
  signal c_32_i0_resize: signed(33 downto 0);
  signal c_32_i1_resize: signed(33 downto 0);
  signal c_32_i0_shift: signed(33 downto 0);
  signal c_32_i1_shift: signed(33 downto 0);
  signal c_32_arith: signed(33 downto 0);
  signal c_32_oshift: signed(33 downto 0);
  signal c_32_sub_sel: std_logic;
  signal c_33: signed(30 downto 0);
  signal c_33_0_0_False_resize: signed(30 downto 0);
  signal c_33_0_0_False_shift: signed(30 downto 0);
  signal c_33_20_10_False_resize: signed(30 downto 0);
  signal c_33_20_10_False_shift: signed(30 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(28 downto 0);
  signal c_34_0_3_False_resize: signed(28 downto 0);
  signal c_34_0_3_False_shift: signed(28 downto 0);
  signal c_34_0_13_False_resize: signed(28 downto 0);
  signal c_34_0_13_False_shift: signed(28 downto 0);
  signal c_34_0_0_False_resize: signed(28 downto 0);
  signal c_34_0_0_False_shift: signed(28 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(31 downto 0);
  signal c_35_i0_resize: signed(31 downto 0);
  signal c_35_i1_resize: signed(31 downto 0);
  signal c_35_i0_shift: signed(31 downto 0);
  signal c_35_i1_shift: signed(31 downto 0);
  signal c_35_arith: signed(31 downto 0);
  signal c_35_oshift: signed(31 downto 0);
  signal c_35_sub_sel: std_logic;
  signal c_36: signed(32 downto 0);
  signal c_36_9_1_False_resize: signed(32 downto 0);
  signal c_36_9_1_False_shift: signed(32 downto 0);
  signal c_36_35_0_False_resize: signed(32 downto 0);
  signal c_36_35_0_False_shift: signed(32 downto 0);
  signal c_36_23_8_False_resize: signed(32 downto 0);
  signal c_36_23_8_False_shift: signed(32 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_0_1_False_resize: signed(25 downto 0);
  signal c_37_0_1_False_shift: signed(25 downto 0);
  signal c_37_0_10_False_resize: signed(25 downto 0);
  signal c_37_0_10_False_shift: signed(25 downto 0);
  signal c_37_23_0_False_resize: signed(25 downto 0);
  signal c_37_23_0_False_shift: signed(25 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(32 downto 0);
  signal c_38_i0_resize: signed(32 downto 0);
  signal c_38_i1_resize: signed(32 downto 0);
  signal c_38_i0_shift: signed(32 downto 0);
  signal c_38_i1_shift: signed(32 downto 0);
  signal c_38_arith: signed(32 downto 0);
  signal c_38_oshift: signed(32 downto 0);
  signal c_38_sub_sel: std_logic;
  signal c_39: signed(33 downto 0);
  signal c_39_38_2_False_resize: signed(33 downto 0);
  signal c_39_38_2_False_shift: signed(33 downto 0);
  signal c_39_0_1_False_resize: signed(33 downto 0);
  signal c_39_0_1_False_shift: signed(33 downto 0);
  signal c_39_6_0_False_resize: signed(33 downto 0);
  signal c_39_6_0_False_shift: signed(33 downto 0);
  signal c_39_sel: std_logic_vector(1 downto 0);
  signal c_40: signed(26 downto 0);
  signal c_40_3_7_False_resize: signed(26 downto 0);
  signal c_40_3_7_False_shift: signed(26 downto 0);
  signal c_40_20_1_False_resize: signed(26 downto 0);
  signal c_40_20_1_False_shift: signed(26 downto 0);
  signal c_40_32_0_False_resize: signed(26 downto 0);
  signal c_40_32_0_False_shift: signed(26 downto 0);
  signal c_40_sel: std_logic_vector(1 downto 0);
  signal c_41: signed(33 downto 0);
  signal c_41_i0_resize: signed(33 downto 0);
  signal c_41_i1_resize: signed(33 downto 0);
  signal c_41_i0_shift: signed(33 downto 0);
  signal c_41_i1_shift: signed(33 downto 0);
  signal c_41_arith: signed(33 downto 0);
  signal c_41_oshift: signed(33 downto 0);
  signal c_42: signed(32 downto 0);
  signal c_42_38_0_False_resize: signed(32 downto 0);
  signal c_42_38_0_False_shift: signed(32 downto 0);
  signal c_42_9_0_False_resize: signed(32 downto 0);
  signal c_42_9_0_False_shift: signed(32 downto 0);
  signal c_42_32_0_False_resize: signed(32 downto 0);
  signal c_42_32_0_False_shift: signed(32 downto 0);
  signal c_42_sel: std_logic_vector(1 downto 0);
  signal c_43: signed(31 downto 0);
  signal c_43_9_0_False_resize: signed(31 downto 0);
  signal c_43_9_0_False_shift: signed(31 downto 0);
  signal c_43_38_0_False_resize: signed(31 downto 0);
  signal c_43_38_0_False_shift: signed(31 downto 0);
  signal c_43_35_0_False_resize: signed(31 downto 0);
  signal c_43_35_0_False_shift: signed(31 downto 0);
  signal c_43_sel: std_logic_vector(1 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_44_i0_resize: signed(31 downto 0);
  signal c_44_i1_resize: signed(31 downto 0);
  signal c_44_i0_shift: signed(31 downto 0);
  signal c_44_i1_shift: signed(31 downto 0);
  signal c_44_arith: signed(31 downto 0);
  signal c_44_oshift: signed(25 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_0_9_False_resize: signed(25 downto 0);
  signal c_45_0_9_False_shift: signed(25 downto 0);
  signal c_45_44_0_False_resize: signed(25 downto 0);
  signal c_45_44_0_False_shift: signed(25 downto 0);
  signal c_45_sel: std_logic_vector(0 downto 0);
  signal c_46: signed(32 downto 0);
  signal c_46_0_0_False_resize: signed(32 downto 0);
  signal c_46_0_0_False_shift: signed(32 downto 0);
  signal c_46_35_0_False_resize: signed(32 downto 0);
  signal c_46_35_0_False_shift: signed(32 downto 0);
  signal c_46_20_0_False_resize: signed(32 downto 0);
  signal c_46_20_0_False_shift: signed(32 downto 0);
  signal c_46_sel: std_logic_vector(1 downto 0);
  signal c_47: signed(32 downto 0);
  signal c_47_i0_resize: signed(32 downto 0);
  signal c_47_i1_resize: signed(32 downto 0);
  signal c_47_i0_shift: signed(32 downto 0);
  signal c_47_i1_shift: signed(32 downto 0);
  signal c_47_arith: signed(32 downto 0);
  signal c_47_oshift: signed(32 downto 0);
  signal c_47_sub_sel: std_logic;
  signal c_48: signed(22 downto 0);
  signal c_48_0_3_False_resize: signed(22 downto 0);
  signal c_48_0_3_False_shift: signed(22 downto 0);
  signal c_48_0_1_False_resize: signed(22 downto 0);
  signal c_48_0_1_False_shift: signed(22 downto 0);
  signal c_48_47_0_False_resize: signed(22 downto 0);
  signal c_48_47_0_False_shift: signed(22 downto 0);
  signal c_48_sel: std_logic_vector(1 downto 0);
  signal c_49: signed(31 downto 0);
  signal c_49_0_4_False_resize: signed(31 downto 0);
  signal c_49_0_4_False_shift: signed(31 downto 0);
  signal c_49_9_0_False_resize: signed(31 downto 0);
  signal c_49_9_0_False_shift: signed(31 downto 0);
  signal c_49_47_0_False_resize: signed(31 downto 0);
  signal c_49_47_0_False_shift: signed(31 downto 0);
  signal c_49_sel: std_logic_vector(1 downto 0);
  signal c_50: signed(26 downto 0);
  signal c_50_i0_resize: signed(26 downto 0);
  signal c_50_i1_resize: signed(26 downto 0);
  signal c_50_i0_shift: signed(26 downto 0);
  signal c_50_i1_shift: signed(26 downto 0);
  signal c_50_arith: signed(26 downto 0);
  signal c_50_oshift: signed(26 downto 0);
  signal c_50_sub_sel: std_logic;
  signal c_51: signed(22 downto 0);
  signal c_51_35_3_False_resize: signed(22 downto 0);
  signal c_51_35_3_False_shift: signed(22 downto 0);
  signal c_51_50_0_False_resize: signed(22 downto 0);
  signal c_51_50_0_False_shift: signed(22 downto 0);
  signal c_51_14_3_False_resize: signed(22 downto 0);
  signal c_51_14_3_False_shift: signed(22 downto 0);
  signal c_51_sel: std_logic_vector(1 downto 0);
  signal c_52: signed(33 downto 0);
  signal c_52_0_7_False_resize: signed(33 downto 0);
  signal c_52_0_7_False_shift: signed(33 downto 0);
  signal c_52_0_1_False_resize: signed(33 downto 0);
  signal c_52_0_1_False_shift: signed(33 downto 0);
  signal c_52_41_0_False_resize: signed(33 downto 0);
  signal c_52_41_0_False_shift: signed(33 downto 0);
  signal c_52_sel: std_logic_vector(1 downto 0);
  signal c_53: signed(33 downto 0);
  signal c_53_i0_resize: signed(33 downto 0);
  signal c_53_i1_resize: signed(33 downto 0);
  signal c_53_i0_shift: signed(33 downto 0);
  signal c_53_i1_shift: signed(33 downto 0);
  signal c_53_arith: signed(33 downto 0);
  signal c_53_oshift: signed(33 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_54_53_0_False_resize: signed(25 downto 0);
  signal c_54_53_0_False_shift: signed(25 downto 0);
  signal c_54_6_3_False_resize: signed(25 downto 0);
  signal c_54_6_3_False_shift: signed(25 downto 0);
  signal c_54_0_3_False_resize: signed(25 downto 0);
  signal c_54_0_3_False_shift: signed(25 downto 0);
  signal c_54_sel: std_logic_vector(1 downto 0);
  signal c_55: signed(33 downto 0);
  signal c_55_32_1_False_resize: signed(33 downto 0);
  signal c_55_32_1_False_shift: signed(33 downto 0);
  signal c_55_53_0_False_resize: signed(33 downto 0);
  signal c_55_53_0_False_shift: signed(33 downto 0);
  signal c_55_11_0_False_resize: signed(33 downto 0);
  signal c_55_11_0_False_shift: signed(33 downto 0);
  signal c_55_sel: std_logic_vector(1 downto 0);
  signal c_56: signed(24 downto 0);
  signal c_56_i0_resize: signed(24 downto 0);
  signal c_56_i1_resize: signed(24 downto 0);
  signal c_56_i0_shift: signed(24 downto 0);
  signal c_56_i1_shift: signed(24 downto 0);
  signal c_56_arith: signed(24 downto 0);
  signal c_56_oshift: signed(24 downto 0);
  signal c_56_sub_sel: std_logic;
  signal c_57: signed(25 downto 0);
  signal c_57_11_0_False_resize: signed(25 downto 0);
  signal c_57_11_0_False_shift: signed(25 downto 0);
  signal c_57_53_3_False_resize: signed(25 downto 0);
  signal c_57_53_3_False_shift: signed(25 downto 0);
  signal c_57_23_0_False_resize: signed(25 downto 0);
  signal c_57_23_0_False_shift: signed(25 downto 0);
  signal c_57_sel: std_logic_vector(1 downto 0);
  signal c_58: signed(21 downto 0);
  signal c_58_0_0_False_resize: signed(21 downto 0);
  signal c_58_0_0_False_shift: signed(21 downto 0);
  signal c_58_35_0_False_resize: signed(21 downto 0);
  signal c_58_35_0_False_shift: signed(21 downto 0);
  signal c_58_0_6_False_resize: signed(21 downto 0);
  signal c_58_0_6_False_shift: signed(21 downto 0);
  signal c_58_sel: std_logic_vector(1 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_59_i0_resize: signed(25 downto 0);
  signal c_59_i1_resize: signed(25 downto 0);
  signal c_59_i0_shift: signed(25 downto 0);
  signal c_59_i1_shift: signed(25 downto 0);
  signal c_59_arith: signed(25 downto 0);
  signal c_59_oshift: signed(25 downto 0);
  signal c_59_sub_sel: std_logic;
  signal c_60: signed(33 downto 0);
  signal c_60_3_8_False_resize: signed(33 downto 0);
  signal c_60_3_8_False_shift: signed(33 downto 0);
  signal c_60_0_2_False_resize: signed(33 downto 0);
  signal c_60_0_2_False_shift: signed(33 downto 0);
  signal c_60_32_0_False_resize: signed(33 downto 0);
  signal c_60_32_0_False_shift: signed(33 downto 0);
  signal c_60_sel: std_logic_vector(1 downto 0);
  signal c_61: signed(24 downto 0);
  signal c_61_23_0_False_resize: signed(24 downto 0);
  signal c_61_23_0_False_shift: signed(24 downto 0);
  signal c_61_6_2_False_resize: signed(24 downto 0);
  signal c_61_6_2_False_shift: signed(24 downto 0);
  signal c_61_53_0_False_resize: signed(24 downto 0);
  signal c_61_53_0_False_shift: signed(24 downto 0);
  signal c_61_sel: std_logic_vector(1 downto 0);
  signal c_62: signed(33 downto 0);
  signal c_62_i0_resize: signed(33 downto 0);
  signal c_62_i1_resize: signed(33 downto 0);
  signal c_62_i0_shift: signed(33 downto 0);
  signal c_62_i1_shift: signed(33 downto 0);
  signal c_62_arith: signed(33 downto 0);
  signal c_62_oshift: signed(33 downto 0);
  signal c_63: signed(24 downto 0);
  signal c_63_29_1_False_resize: signed(24 downto 0);
  signal c_63_29_1_False_shift: signed(24 downto 0);
  signal c_63_47_0_False_resize: signed(24 downto 0);
  signal c_63_47_0_False_shift: signed(24 downto 0);
  signal c_63_0_4_False_resize: signed(24 downto 0);
  signal c_63_0_4_False_shift: signed(24 downto 0);
  signal c_63_sel: std_logic_vector(1 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_64_0_0_False_resize: signed(25 downto 0);
  signal c_64_0_0_False_shift: signed(25 downto 0);
  signal c_64_6_0_False_resize: signed(25 downto 0);
  signal c_64_6_0_False_shift: signed(25 downto 0);
  signal c_64_59_0_False_resize: signed(25 downto 0);
  signal c_64_59_0_False_shift: signed(25 downto 0);
  signal c_64_sel: std_logic_vector(1 downto 0);
  signal c_65: signed(25 downto 0);
  signal c_65_i0_resize: signed(25 downto 0);
  signal c_65_i1_resize: signed(25 downto 0);
  signal c_65_i0_shift: signed(25 downto 0);
  signal c_65_i1_shift: signed(25 downto 0);
  signal c_65_arith: signed(25 downto 0);
  signal c_65_oshift: signed(25 downto 0);
  signal c_65_sub_sel: std_logic;
  signal c_66: signed(32 downto 0);
  signal c_66_59_0_False_resize: signed(32 downto 0);
  signal c_66_59_0_False_shift: signed(32 downto 0);
  signal c_66_23_1_False_resize: signed(32 downto 0);
  signal c_66_23_1_False_shift: signed(32 downto 0);
  signal c_66_32_0_False_resize: signed(32 downto 0);
  signal c_66_32_0_False_shift: signed(32 downto 0);
  signal c_66_sel: std_logic_vector(1 downto 0);
  signal c_67: signed(28 downto 0);
  signal c_67_23_6_False_resize: signed(28 downto 0);
  signal c_67_23_6_False_shift: signed(28 downto 0);
  signal c_67_11_0_False_resize: signed(28 downto 0);
  signal c_67_11_0_False_shift: signed(28 downto 0);
  signal c_67_41_1_False_resize: signed(28 downto 0);
  signal c_67_41_1_False_shift: signed(28 downto 0);
  signal c_67_sel: std_logic_vector(1 downto 0);
  signal c_68: signed(31 downto 0);
  signal c_68_i0_resize: signed(31 downto 0);
  signal c_68_i1_resize: signed(31 downto 0);
  signal c_68_i0_shift: signed(31 downto 0);
  signal c_68_i1_shift: signed(31 downto 0);
  signal c_68_arith: signed(31 downto 0);
  signal c_68_oshift: signed(31 downto 0);
  signal c_68_sub_sel: std_logic;
  signal c_69: signed(32 downto 0);
  signal c_69_0_0_False_resize: signed(32 downto 0);
  signal c_69_0_0_False_shift: signed(32 downto 0);
  signal c_69_29_0_False_resize: signed(32 downto 0);
  signal c_69_29_0_False_shift: signed(32 downto 0);
  signal c_69_47_0_False_resize: signed(32 downto 0);
  signal c_69_47_0_False_shift: signed(32 downto 0);
  signal c_69_sel: std_logic_vector(1 downto 0);
  signal c_70: signed(27 downto 0);
  signal c_70_0_0_False_resize: signed(27 downto 0);
  signal c_70_0_0_False_shift: signed(27 downto 0);
  signal c_70_68_0_False_resize: signed(27 downto 0);
  signal c_70_68_0_False_shift: signed(27 downto 0);
  signal c_70_26_0_False_resize: signed(27 downto 0);
  signal c_70_26_0_False_shift: signed(27 downto 0);
  signal c_70_sel: std_logic_vector(1 downto 0);
  signal c_71: signed(28 downto 0);
  signal c_71_i0_resize: signed(32 downto 0);
  signal c_71_i1_resize: signed(32 downto 0);
  signal c_71_i0_shift: signed(32 downto 0);
  signal c_71_i1_shift: signed(32 downto 0);
  signal c_71_arith: signed(32 downto 0);
  signal c_71_oshift: signed(28 downto 0);
  signal c_71_sub_sel: std_logic;
  signal c_72: signed(25 downto 0);
  signal c_72_65_0_False_resize: signed(25 downto 0);
  signal c_72_65_0_False_shift: signed(25 downto 0);
  signal c_72_23_3_False_resize: signed(25 downto 0);
  signal c_72_23_3_False_shift: signed(25 downto 0);
  signal c_72_59_0_False_resize: signed(25 downto 0);
  signal c_72_59_0_False_shift: signed(25 downto 0);
  signal c_72_sel: std_logic_vector(1 downto 0);
  signal c_73: signed(25 downto 0);
  signal c_73_35_8_False_resize: signed(25 downto 0);
  signal c_73_35_8_False_shift: signed(25 downto 0);
  signal c_73_35_3_False_resize: signed(25 downto 0);
  signal c_73_35_3_False_shift: signed(25 downto 0);
  signal c_73_47_0_False_resize: signed(25 downto 0);
  signal c_73_47_0_False_shift: signed(25 downto 0);
  signal c_73_sel: std_logic_vector(1 downto 0);
  signal c_74: signed(24 downto 0);
  signal c_74_i0_resize: signed(24 downto 0);
  signal c_74_i1_resize: signed(24 downto 0);
  signal c_74_i0_shift: signed(24 downto 0);
  signal c_74_i1_shift: signed(24 downto 0);
  signal c_74_arith: signed(24 downto 0);
  signal c_74_oshift: signed(24 downto 0);
  signal c_75: signed(23 downto 0);
  signal c_75_0_3_False_resize: signed(23 downto 0);
  signal c_75_0_3_False_shift: signed(23 downto 0);
  signal c_75_29_0_False_resize: signed(23 downto 0);
  signal c_75_29_0_False_shift: signed(23 downto 0);
  signal c_75_0_2_False_resize: signed(23 downto 0);
  signal c_75_0_2_False_shift: signed(23 downto 0);
  signal c_75_sel: std_logic_vector(1 downto 0);
  signal c_76: signed(26 downto 0);
  signal c_76_20_6_False_resize: signed(26 downto 0);
  signal c_76_20_6_False_shift: signed(26 downto 0);
  signal c_76_74_1_False_resize: signed(26 downto 0);
  signal c_76_74_1_False_shift: signed(26 downto 0);
  signal c_76_47_0_False_resize: signed(26 downto 0);
  signal c_76_47_0_False_shift: signed(26 downto 0);
  signal c_76_sel: std_logic_vector(1 downto 0);
  signal c_77: signed(25 downto 0);
  signal c_77_i0_resize: signed(25 downto 0);
  signal c_77_i1_resize: signed(25 downto 0);
  signal c_77_i0_shift: signed(25 downto 0);
  signal c_77_i1_shift: signed(25 downto 0);
  signal c_77_arith: signed(25 downto 0);
  signal c_77_oshift: signed(25 downto 0);
  signal c_77_sub_sel: std_logic;
  signal c_78: signed(25 downto 0);
  signal c_78_59_0_False_resize: signed(25 downto 0);
  signal c_78_59_0_False_shift: signed(25 downto 0);
  signal c_78_29_0_False_resize: signed(25 downto 0);
  signal c_78_29_0_False_shift: signed(25 downto 0);
  signal c_78_20_1_False_resize: signed(25 downto 0);
  signal c_78_20_1_False_shift: signed(25 downto 0);
  signal c_78_sel: std_logic_vector(1 downto 0);
  signal c_79: signed(23 downto 0);
  signal c_79_14_0_False_resize: signed(23 downto 0);
  signal c_79_14_0_False_shift: signed(23 downto 0);
  signal c_79_47_1_False_resize: signed(23 downto 0);
  signal c_79_47_1_False_shift: signed(23 downto 0);
  signal c_79_53_0_False_resize: signed(23 downto 0);
  signal c_79_53_0_False_shift: signed(23 downto 0);
  signal c_79_sel: std_logic_vector(1 downto 0);
  signal c_80: signed(25 downto 0);
  signal c_80_i0_resize: signed(25 downto 0);
  signal c_80_i1_resize: signed(25 downto 0);
  signal c_80_i0_shift: signed(25 downto 0);
  signal c_80_i1_shift: signed(25 downto 0);
  signal c_80_arith: signed(25 downto 0);
  signal c_80_oshift: signed(25 downto 0);
  signal c_81: signed(24 downto 0);
  signal c_81_74_0_False_resize: signed(24 downto 0);
  signal c_81_74_0_False_shift: signed(24 downto 0);
  signal c_81_71_0_False_resize: signed(24 downto 0);
  signal c_81_71_0_False_shift: signed(24 downto 0);
  signal c_81_0_2_False_resize: signed(24 downto 0);
  signal c_81_0_2_False_shift: signed(24 downto 0);
  signal c_81_sel: std_logic_vector(1 downto 0);
  signal c_82: signed(25 downto 0);
  signal c_82_0_0_False_resize: signed(25 downto 0);
  signal c_82_0_0_False_shift: signed(25 downto 0);
  signal c_82_35_1_False_resize: signed(25 downto 0);
  signal c_82_35_1_False_shift: signed(25 downto 0);
  signal c_82_77_0_False_resize: signed(25 downto 0);
  signal c_82_77_0_False_shift: signed(25 downto 0);
  signal c_82_sel: std_logic_vector(1 downto 0);
  signal c_83: signed(25 downto 0);
  signal c_83_i0_resize: signed(25 downto 0);
  signal c_83_i1_resize: signed(25 downto 0);
  signal c_83_i0_shift: signed(25 downto 0);
  signal c_83_i1_shift: signed(25 downto 0);
  signal c_83_arith: signed(25 downto 0);
  signal c_83_oshift: signed(25 downto 0);
  signal c_83_sub_sel: std_logic;
  signal c_84: signed(27 downto 0);
  signal c_84_80_0_False_resize: signed(27 downto 0);
  signal c_84_80_0_False_shift: signed(27 downto 0);
  signal c_84_56_3_False_resize: signed(27 downto 0);
  signal c_84_56_3_False_shift: signed(27 downto 0);
  signal c_84_0_0_False_resize: signed(27 downto 0);
  signal c_84_0_0_False_shift: signed(27 downto 0);
  signal c_84_sel: std_logic_vector(1 downto 0);
  signal c_85: signed(28 downto 0);
  signal c_85_53_0_False_resize: signed(28 downto 0);
  signal c_85_53_0_False_shift: signed(28 downto 0);
  signal c_85_65_2_False_resize: signed(28 downto 0);
  signal c_85_65_2_False_shift: signed(28 downto 0);
  signal c_85_56_4_False_resize: signed(28 downto 0);
  signal c_85_56_4_False_shift: signed(28 downto 0);
  signal c_85_sel: std_logic_vector(1 downto 0);
  signal c_86: signed(27 downto 0);
  signal c_86_i0_resize: signed(27 downto 0);
  signal c_86_i1_resize: signed(27 downto 0);
  signal c_86_i0_shift: signed(27 downto 0);
  signal c_86_i1_shift: signed(27 downto 0);
  signal c_86_arith: signed(27 downto 0);
  signal c_86_oshift: signed(27 downto 0);
  signal c_86_sub_sel: std_logic;
  signal c_87: signed(31 downto 0);
  signal c_87_0_0_False_resize: signed(31 downto 0);
  signal c_87_0_0_False_shift: signed(31 downto 0);
  signal c_87_68_0_False_resize: signed(31 downto 0);
  signal c_87_68_0_False_shift: signed(31 downto 0);
  signal c_87_14_0_False_resize: signed(31 downto 0);
  signal c_87_14_0_False_shift: signed(31 downto 0);
  signal c_87_sel: std_logic_vector(1 downto 0);
  signal c_88: signed(31 downto 0);
  signal c_88_9_0_False_resize: signed(31 downto 0);
  signal c_88_9_0_False_shift: signed(31 downto 0);
  signal c_88_0_0_False_resize: signed(31 downto 0);
  signal c_88_0_0_False_shift: signed(31 downto 0);
  signal c_88_35_0_False_resize: signed(31 downto 0);
  signal c_88_35_0_False_shift: signed(31 downto 0);
  signal c_88_sel: std_logic_vector(1 downto 0);
  signal c_89: signed(24 downto 0);
  signal c_89_i0_resize: signed(31 downto 0);
  signal c_89_i1_resize: signed(31 downto 0);
  signal c_89_i0_shift: signed(31 downto 0);
  signal c_89_i1_shift: signed(31 downto 0);
  signal c_89_arith: signed(31 downto 0);
  signal c_89_oshift: signed(24 downto 0);
  signal c_90: signed(33 downto 0);
  signal c_90_0_9_False_resize: signed(33 downto 0);
  signal c_90_0_9_False_shift: signed(33 downto 0);
  signal c_90_41_0_False_resize: signed(33 downto 0);
  signal c_90_41_0_False_shift: signed(33 downto 0);
  signal c_90_71_3_False_resize: signed(33 downto 0);
  signal c_90_71_3_False_shift: signed(33 downto 0);
  signal c_90_sel: std_logic_vector(1 downto 0);
  signal c_91: signed(32 downto 0);
  signal c_91_47_0_False_resize: signed(32 downto 0);
  signal c_91_47_0_False_shift: signed(32 downto 0);
  signal c_91_74_0_False_resize: signed(32 downto 0);
  signal c_91_74_0_False_shift: signed(32 downto 0);
  signal c_91_sel: std_logic_vector(0 downto 0);
  signal c_92: signed(33 downto 0);
  signal c_92_i0_resize: signed(33 downto 0);
  signal c_92_i1_resize: signed(33 downto 0);
  signal c_92_i0_shift: signed(33 downto 0);
  signal c_92_i1_shift: signed(33 downto 0);
  signal c_92_arith: signed(33 downto 0);
  signal c_92_oshift: signed(33 downto 0);
  signal c_92_sub_sel: std_logic;
  signal c_93: signed(33 downto 0);
  signal c_93_83_0_False_resize: signed(33 downto 0);
  signal c_93_83_0_False_shift: signed(33 downto 0);
  signal c_93_53_1_False_resize: signed(33 downto 0);
  signal c_93_53_1_False_shift: signed(33 downto 0);
  signal c_93_92_0_False_resize: signed(33 downto 0);
  signal c_93_92_0_False_shift: signed(33 downto 0);
  signal c_93_sel: std_logic_vector(1 downto 0);
  signal c_94: signed(33 downto 0);
  signal c_94_53_0_False_resize: signed(33 downto 0);
  signal c_94_53_0_False_shift: signed(33 downto 0);
  signal c_94_80_2_False_resize: signed(33 downto 0);
  signal c_94_80_2_False_shift: signed(33 downto 0);
  signal c_94_74_0_False_resize: signed(33 downto 0);
  signal c_94_74_0_False_shift: signed(33 downto 0);
  signal c_94_sel: std_logic_vector(1 downto 0);
  signal c_95: signed(24 downto 0);
  signal c_95_i0_resize: signed(24 downto 0);
  signal c_95_i1_resize: signed(24 downto 0);
  signal c_95_i0_shift: signed(24 downto 0);
  signal c_95_i1_shift: signed(24 downto 0);
  signal c_95_arith: signed(24 downto 0);
  signal c_95_oshift: signed(24 downto 0);
  signal c_96: signed(26 downto 0);
  signal c_96_50_0_False_resize: signed(26 downto 0);
  signal c_96_50_0_False_shift: signed(26 downto 0);
  signal c_96_3_0_False_resize: signed(26 downto 0);
  signal c_96_3_0_False_shift: signed(26 downto 0);
  signal c_96_74_2_False_resize: signed(26 downto 0);
  signal c_96_74_2_False_shift: signed(26 downto 0);
  signal c_96_sel: std_logic_vector(1 downto 0);
  signal c_97: signed(25 downto 0);
  signal c_97_95_5_False_resize: signed(25 downto 0);
  signal c_97_95_5_False_shift: signed(25 downto 0);
  signal c_97_80_0_False_resize: signed(25 downto 0);
  signal c_97_80_0_False_shift: signed(25 downto 0);
  signal c_97_83_5_False_resize: signed(25 downto 0);
  signal c_97_83_5_False_shift: signed(25 downto 0);
  signal c_97_sel: std_logic_vector(1 downto 0);
  signal c_98: signed(25 downto 0);
  signal c_98_i0_resize: signed(25 downto 0);
  signal c_98_i1_resize: signed(25 downto 0);
  signal c_98_i0_shift: signed(25 downto 0);
  signal c_98_i1_shift: signed(25 downto 0);
  signal c_98_arith: signed(25 downto 0);
  signal c_98_oshift: signed(25 downto 0);
  signal c_98_sub_sel: std_logic;
  signal c_99: signed(24 downto 0);
  signal c_99_0_0_False_resize: signed(24 downto 0);
  signal c_99_0_0_False_shift: signed(24 downto 0);
  signal c_99_35_3_False_resize: signed(24 downto 0);
  signal c_99_35_3_False_shift: signed(24 downto 0);
  signal c_99_20_4_False_resize: signed(24 downto 0);
  signal c_99_20_4_False_shift: signed(24 downto 0);
  signal c_99_sel: std_logic_vector(1 downto 0);
  signal c_100: signed(25 downto 0);
  signal c_100_50_0_False_resize: signed(25 downto 0);
  signal c_100_50_0_False_shift: signed(25 downto 0);
  signal c_100_56_1_False_resize: signed(25 downto 0);
  signal c_100_56_1_False_shift: signed(25 downto 0);
  signal c_100_0_4_False_resize: signed(25 downto 0);
  signal c_100_0_4_False_shift: signed(25 downto 0);
  signal c_100_sel: std_logic_vector(1 downto 0);
  signal c_101: signed(25 downto 0);
  signal c_101_i0_resize: signed(25 downto 0);
  signal c_101_i1_resize: signed(25 downto 0);
  signal c_101_i0_shift: signed(25 downto 0);
  signal c_101_i1_shift: signed(25 downto 0);
  signal c_101_arith: signed(25 downto 0);
  signal c_101_oshift: signed(25 downto 0);
  signal c_101_sub_sel: std_logic;
  signal c_102: signed(25 downto 0);
  signal c_102_0_0_False_resize: signed(25 downto 0);
  signal c_102_0_0_False_shift: signed(25 downto 0);
  signal c_102_65_0_False_resize: signed(25 downto 0);
  signal c_102_65_0_False_shift: signed(25 downto 0);
  signal c_102_0_2_False_resize: signed(25 downto 0);
  signal c_102_0_2_False_shift: signed(25 downto 0);
  signal c_102_sel: std_logic_vector(1 downto 0);
  signal c_103: signed(23 downto 0);
  signal c_103_89_3_False_resize: signed(23 downto 0);
  signal c_103_89_3_False_shift: signed(23 downto 0);
  signal c_103_20_0_False_resize: signed(23 downto 0);
  signal c_103_20_0_False_shift: signed(23 downto 0);
  signal c_103_0_5_False_resize: signed(23 downto 0);
  signal c_103_0_5_False_shift: signed(23 downto 0);
  signal c_103_sel: std_logic_vector(1 downto 0);
  signal c_104: signed(25 downto 0);
  signal c_104_i0_resize: signed(25 downto 0);
  signal c_104_i1_resize: signed(25 downto 0);
  signal c_104_i0_shift: signed(25 downto 0);
  signal c_104_i1_shift: signed(25 downto 0);
  signal c_104_arith: signed(25 downto 0);
  signal c_104_oshift: signed(25 downto 0);
  signal c_104_sub_sel: std_logic;
  signal c_105: signed(25 downto 0);
  signal c_105_83_0_False_resize: signed(25 downto 0);
  signal c_105_83_0_False_shift: signed(25 downto 0);
  signal c_105_104_2_False_resize: signed(25 downto 0);
  signal c_105_104_2_False_shift: signed(25 downto 0);
  signal c_105_98_0_False_resize: signed(25 downto 0);
  signal c_105_98_0_False_shift: signed(25 downto 0);
  signal c_105_sel: std_logic_vector(1 downto 0);
  signal c_106: signed(25 downto 0);
  signal c_106_59_3_False_resize: signed(25 downto 0);
  signal c_106_59_3_False_shift: signed(25 downto 0);
  signal c_106_80_0_False_resize: signed(25 downto 0);
  signal c_106_80_0_False_shift: signed(25 downto 0);
  signal c_106_101_1_False_resize: signed(25 downto 0);
  signal c_106_101_1_False_shift: signed(25 downto 0);
  signal c_106_sel: std_logic_vector(1 downto 0);
  signal c_107: signed(25 downto 0);
  signal c_107_i0_resize: signed(25 downto 0);
  signal c_107_i1_resize: signed(25 downto 0);
  signal c_107_i0_shift: signed(25 downto 0);
  signal c_107_i1_shift: signed(25 downto 0);
  signal c_107_arith: signed(25 downto 0);
  signal c_107_oshift: signed(25 downto 0);
  signal c_108: signed(25 downto 0);
  signal c_108_0_0_False_resize: signed(25 downto 0);
  signal c_108_0_0_False_shift: signed(25 downto 0);
  signal c_108_83_0_False_resize: signed(25 downto 0);
  signal c_108_83_0_False_shift: signed(25 downto 0);
  signal c_108_65_0_False_resize: signed(25 downto 0);
  signal c_108_65_0_False_shift: signed(25 downto 0);
  signal c_108_sel: std_logic_vector(1 downto 0);
  signal c_109: signed(23 downto 0);
  signal c_109_95_0_False_resize: signed(23 downto 0);
  signal c_109_95_0_False_shift: signed(23 downto 0);
  signal c_109_35_4_False_resize: signed(23 downto 0);
  signal c_109_35_4_False_shift: signed(23 downto 0);
  signal c_109_65_0_False_resize: signed(23 downto 0);
  signal c_109_65_0_False_shift: signed(23 downto 0);
  signal c_109_sel: std_logic_vector(1 downto 0);
  signal c_110: signed(25 downto 0);
  signal c_110_i0_resize: signed(25 downto 0);
  signal c_110_i1_resize: signed(25 downto 0);
  signal c_110_i0_shift: signed(25 downto 0);
  signal c_110_i1_shift: signed(25 downto 0);
  signal c_110_arith: signed(25 downto 0);
  signal c_110_oshift: signed(25 downto 0);
  signal c_110_sub_sel: std_logic;
  signal c_111: signed(28 downto 0);
  signal c_111_95_5_False_resize: signed(28 downto 0);
  signal c_111_95_5_False_shift: signed(28 downto 0);
  signal c_111_0_2_False_resize: signed(28 downto 0);
  signal c_111_0_2_False_shift: signed(28 downto 0);
  signal c_111_74_0_False_resize: signed(28 downto 0);
  signal c_111_74_0_False_shift: signed(28 downto 0);
  signal c_111_sel: std_logic_vector(1 downto 0);
  signal c_112: signed(26 downto 0);
  signal c_112_68_1_False_resize: signed(26 downto 0);
  signal c_112_68_1_False_shift: signed(26 downto 0);
  signal c_112_47_0_False_resize: signed(26 downto 0);
  signal c_112_47_0_False_shift: signed(26 downto 0);
  signal c_112_0_0_False_resize: signed(26 downto 0);
  signal c_112_0_0_False_shift: signed(26 downto 0);
  signal c_112_sel: std_logic_vector(1 downto 0);
  signal c_113: signed(24 downto 0);
  signal c_113_i0_resize: signed(24 downto 0);
  signal c_113_i1_resize: signed(24 downto 0);
  signal c_113_i0_shift: signed(24 downto 0);
  signal c_113_i1_shift: signed(24 downto 0);
  signal c_113_arith: signed(24 downto 0);
  signal c_113_oshift: signed(24 downto 0);
  signal c_113_sub_sel: std_logic;
  signal c_114: signed(28 downto 0);
  signal c_114_89_3_False_resize: signed(28 downto 0);
  signal c_114_89_3_False_shift: signed(28 downto 0);
  signal c_114_6_0_False_resize: signed(28 downto 0);
  signal c_114_6_0_False_shift: signed(28 downto 0);
  signal c_114_71_0_False_resize: signed(28 downto 0);
  signal c_114_71_0_False_shift: signed(28 downto 0);
  signal c_114_sel: std_logic_vector(1 downto 0);
  signal c_115: signed(28 downto 0);
  signal c_115_0_0_False_resize: signed(28 downto 0);
  signal c_115_0_0_False_shift: signed(28 downto 0);
  signal c_115_86_1_False_resize: signed(28 downto 0);
  signal c_115_86_1_False_shift: signed(28 downto 0);
  signal c_115_3_1_False_resize: signed(28 downto 0);
  signal c_115_3_1_False_shift: signed(28 downto 0);
  signal c_115_sel: std_logic_vector(1 downto 0);
  signal c_116: signed(25 downto 0);
  signal c_116_i0_resize: signed(25 downto 0);
  signal c_116_i1_resize: signed(25 downto 0);
  signal c_116_i0_shift: signed(25 downto 0);
  signal c_116_i1_shift: signed(25 downto 0);
  signal c_116_arith: signed(25 downto 0);
  signal c_116_oshift: signed(25 downto 0);
  signal c_117: signed(25 downto 0);
  signal c_117_83_0_False_resize: signed(25 downto 0);
  signal c_117_83_0_False_shift: signed(25 downto 0);
  signal c_117_95_0_False_resize: signed(25 downto 0);
  signal c_117_95_0_False_shift: signed(25 downto 0);
  signal c_117_86_0_False_resize: signed(25 downto 0);
  signal c_117_86_0_False_shift: signed(25 downto 0);
  signal c_117_sel: std_logic_vector(1 downto 0);
  signal c_118: signed(25 downto 0);
  signal c_118_resize: signed(25 downto 0);
  signal c_119: signed(25 downto 0);
  signal c_119_80_1_False_resize: signed(25 downto 0);
  signal c_119_80_1_False_shift: signed(25 downto 0);
  signal c_119_110_0_False_resize: signed(25 downto 0);
  signal c_119_110_0_False_shift: signed(25 downto 0);
  signal c_119_101_0_False_resize: signed(25 downto 0);
  signal c_119_101_0_False_shift: signed(25 downto 0);
  signal c_119_sel: std_logic_vector(1 downto 0);
  signal c_120: signed(25 downto 0);
  signal c_120_resize: signed(25 downto 0);
  signal c_121: signed(25 downto 0);
  signal c_121_116_0_False_resize: signed(25 downto 0);
  signal c_121_116_0_False_shift: signed(25 downto 0);
  signal c_121_110_0_False_resize: signed(25 downto 0);
  signal c_121_110_0_False_shift: signed(25 downto 0);
  signal c_121_107_0_False_resize: signed(25 downto 0);
  signal c_121_107_0_False_shift: signed(25 downto 0);
  signal c_121_sel: std_logic_vector(1 downto 0);
  signal c_122: signed(25 downto 0);
  signal c_122_resize: signed(25 downto 0);
  signal c_123: signed(25 downto 0);
  signal c_123_77_0_False_resize: signed(25 downto 0);
  signal c_123_77_0_False_shift: signed(25 downto 0);
  signal c_123_98_2_False_resize: signed(25 downto 0);
  signal c_123_98_2_False_shift: signed(25 downto 0);
  signal c_123_98_0_False_resize: signed(25 downto 0);
  signal c_123_98_0_False_shift: signed(25 downto 0);
  signal c_123_sel: std_logic_vector(1 downto 0);
  signal c_124: signed(25 downto 0);
  signal c_124_resize: signed(25 downto 0);
  signal c_125: signed(25 downto 0);
  signal c_125_83_1_False_resize: signed(25 downto 0);
  signal c_125_83_1_False_shift: signed(25 downto 0);
  signal c_125_104_0_False_resize: signed(25 downto 0);
  signal c_125_104_0_False_shift: signed(25 downto 0);
  signal c_125_116_0_False_resize: signed(25 downto 0);
  signal c_125_116_0_False_shift: signed(25 downto 0);
  signal c_125_sel: std_logic_vector(1 downto 0);
  signal c_126: signed(25 downto 0);
  signal c_126_resize: signed(25 downto 0);
  signal c_127: signed(25 downto 0);
  signal c_127_107_0_False_resize: signed(25 downto 0);
  signal c_127_107_0_False_shift: signed(25 downto 0);
  signal c_127_92_0_False_resize: signed(25 downto 0);
  signal c_127_92_0_False_shift: signed(25 downto 0);
  signal c_127_95_0_False_resize: signed(25 downto 0);
  signal c_127_95_0_False_shift: signed(25 downto 0);
  signal c_127_sel: std_logic_vector(1 downto 0);
  signal c_128: signed(25 downto 0);
  signal c_128_resize: signed(25 downto 0);
  signal c_129: signed(24 downto 0);
  signal c_129_116_0_False_resize: signed(24 downto 0);
  signal c_129_116_0_False_shift: signed(24 downto 0);
  signal c_129_113_0_False_resize: signed(24 downto 0);
  signal c_129_113_0_False_shift: signed(24 downto 0);
  signal c_129_74_0_False_resize: signed(24 downto 0);
  signal c_129_74_0_False_shift: signed(24 downto 0);
  signal c_129_sel: std_logic_vector(1 downto 0);
  signal c_130: signed(24 downto 0);
  signal c_130_resize: signed(24 downto 0);
  signal c_131: signed(25 downto 0);
  signal c_131_3_7_False_resize: signed(25 downto 0);
  signal c_131_3_7_False_shift: signed(25 downto 0);
  signal c_131_98_0_False_resize: signed(25 downto 0);
  signal c_131_98_0_False_shift: signed(25 downto 0);
  signal c_131_113_0_False_resize: signed(25 downto 0);
  signal c_131_113_0_False_shift: signed(25 downto 0);
  signal c_131_sel: std_logic_vector(1 downto 0);
  signal c_132: signed(25 downto 0);
  signal c_132_resize: signed(25 downto 0);
  signal c_133: signed(25 downto 0);
  signal c_133_65_0_False_resize: signed(25 downto 0);
  signal c_133_65_0_False_shift: signed(25 downto 0);
  signal c_133_47_0_False_resize: signed(25 downto 0);
  signal c_133_47_0_False_shift: signed(25 downto 0);
  signal c_133_77_0_False_resize: signed(25 downto 0);
  signal c_133_77_0_False_shift: signed(25 downto 0);
  signal c_133_sel: std_logic_vector(1 downto 0);
  signal c_134: signed(25 downto 0);
  signal c_134_resize: signed(25 downto 0);
  signal c_135: signed(25 downto 0);
  signal c_135_104_0_False_resize: signed(25 downto 0);
  signal c_135_104_0_False_shift: signed(25 downto 0);
  signal c_135_110_0_False_resize: signed(25 downto 0);
  signal c_135_110_0_False_shift: signed(25 downto 0);
  signal c_135_107_0_False_resize: signed(25 downto 0);
  signal c_135_107_0_False_shift: signed(25 downto 0);
  signal c_135_sel: std_logic_vector(1 downto 0);
  signal c_136: signed(25 downto 0);
  signal c_136_resize: signed(25 downto 0);
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
      config_select_7 <= config_select;
      config_select_8 <= config_select;
      config_select_9 <= config_select;
      config_select_10 <= config_select;
      config_select_11 <= config_select;
      config_select_12 <= config_select;
      config_select_13 <= config_select;
      config_select_14 <= config_select;
      config_select_15 <= config_select;
      config_select_16 <= config_select;
      config_select_17 <= config_select;
      config_select_18 <= config_select;
      config_select_19 <= config_select;
      config_select_20 <= config_select;
      config_select_21 <= config_select;
      config_select_22 <= config_select;
      config_select_23 <= config_select;
      config_select_24 <= config_select;
      config_select_25 <= config_select;
      config_select_26 <= config_select;
      config_select_27 <= config_select;
      config_select_28 <= config_select;
      config_select_29 <= config_select;
      config_select_30 <= config_select;
      config_select_31 <= config_select;
      config_select_32 <= config_select;
      config_select_33 <= config_select;
      config_select_34 <= config_select;
      config_select_35 <= config_select;
      config_select_36 <= config_select;
      config_select_37 <= config_select;
      config_select_38 <= config_select;
      config_select_39 <= config_select;
      config_select_40 <= config_select;
      config_select_41 <= config_select;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 118
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_118);
    end if;
  end process;
  -- output node 1 with id 120
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_120);
    end if;
  end process;
  -- output node 2 with id 122
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_122);
    end if;
  end process;
  -- output node 3 with id 124
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_124);
    end if;
  end process;
  -- output node 4 with id 126
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_126);
    end if;
  end process;
  -- output node 5 with id 128
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_128);
    end if;
  end process;
  -- output node 6 with id 130
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_130);
    end if;
  end process;
  -- output node 7 with id 132
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_132);
    end if;
  end process;
  -- output node 8 with id 134
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_134);
    end if;
  end process;
  -- output node 9 with id 136
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_136);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [64], [4]]
  c_1_0_2_False_resize <= resize(c_0, 22);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  c_1_0_6_False_resize <= resize(c_0, 22);
  c_1_0_6_False_shift <= shift_left(c_1_0_6_False_resize, 6);
  c_1_0_0_False_resize <= resize(c_0, 22);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  with config_select_1 select c_1_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_1_sel select c_1 <=
    c_1_0_2_False_shift when "00",
    c_1_0_6_False_shift when "01",
    c_1_0_0_False_shift when others;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [512], [16]]
  c_2_0_4_False_resize <= resize(c_0, 25);
  c_2_0_4_False_shift <= shift_left(c_2_0_4_False_resize, 4);
  c_2_0_9_False_resize <= resize(c_0, 25);
  c_2_0_9_False_shift <= shift_left(c_2_0_9_False_resize, 9);
  c_2_0_0_False_resize <= resize(c_0, 25);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_2_sel select c_2 <=
    c_2_0_4_False_shift when "00",
    c_2_0_9_False_shift when "01",
    c_2_0_0_False_shift when others;
  -- node of type 'sub' in stage 2 with id 3 and associated fundamentals [[7], [0], [16]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 25,
      w_o => 20,
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
      y_i => c_2,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(19 downto 0);
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[64], [0], [65536]]
  c_4_0_6_False_resize <= resize(c_0, 32);
  c_4_0_6_False_shift <= shift_left(c_4_0_6_False_resize, 6);
  c_4_3_0_False_resize <= resize(c_3, 32);
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  c_4_0_16_False_resize <= resize(c_0, 32);
  c_4_0_16_False_shift <= shift_left(c_4_0_16_False_resize, 16);
  with config_select_3 select c_4_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_4_sel select c_4 <=
    c_4_0_6_False_shift when "00",
    c_4_3_0_False_shift when "01",
    c_4_0_16_False_shift when others;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[64], [0], [16384]]
  c_5_0_14_False_resize <= resize(c_0, 30);
  c_5_0_14_False_shift <= shift_left(c_5_0_14_False_resize, 14);
  c_5_0_6_False_resize <= resize(c_0, 30);
  c_5_0_6_False_shift <= shift_left(c_5_0_6_False_resize, 6);
  c_5_3_0_False_resize <= resize(c_3, 30);
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  with config_select_3 select c_5_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_5_sel select c_5 <=
    c_5_0_14_False_shift when "00",
    c_5_0_6_False_shift when "01",
    c_5_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 6 and associated fundamentals [[128], [0], [49152]]
  with config_select_4 select c_6_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 32,
      w_y_i => 30,
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
      sub_i => c_6_sub_sel,
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(31 downto 0);
  -- node of type 'mux' in stage 5 with id 7 and associated fundamentals [[57344], [0], [65536]]
  c_7_3_12_False_resize <= resize(c_3, 32);
  c_7_3_12_False_shift <= shift_left(c_7_3_12_False_resize, 12);
  c_7_6_0_False_resize <= c_6;
  c_7_6_0_False_shift <= shift_left(c_7_6_0_False_resize, 0);
  c_7_3_13_False_resize <= resize(c_3, 32);
  c_7_3_13_False_shift <= shift_left(c_7_3_13_False_resize, 13);
  with config_select_5 select c_7_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_7_sel select c_7 <=
    c_7_3_12_False_shift when "00",
    c_7_6_0_False_shift when "01",
    c_7_3_13_False_shift when others;
  -- node of type 'mux' in stage 5 with id 8 and associated fundamentals [[16384], [0], [4096]]
  c_8_6_7_False_resize <= c_6(29 downto 0);
  c_8_6_7_False_shift <= shift_left(c_8_6_7_False_resize, 7);
  c_8_0_12_False_resize <= resize(c_0, 30);
  c_8_0_12_False_shift <= shift_left(c_8_0_12_False_resize, 12);
  c_8_3_0_False_resize <= resize(c_3, 30);
  c_8_3_0_False_shift <= shift_left(c_8_3_0_False_resize, 0);
  with config_select_5 select c_8_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_8_sel select c_8 <=
    c_8_6_7_False_shift when "00",
    c_8_0_12_False_shift when "01",
    c_8_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 9 and associated fundamentals [[40960], [0], [61440]]
  with config_select_6 select c_9_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 32,
      w_y_i => 30,
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
      sub_i => c_9_sub_sel,
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(31 downto 0);
  -- node of type 'mux' in stage 7 with id 10 and associated fundamentals [[128], [0], [61440]]
  c_10_9_0_False_resize <= c_9;
  c_10_9_0_False_shift <= shift_left(c_10_9_0_False_resize, 0);
  c_10_6_0_False_resize <= c_6;
  c_10_6_0_False_shift <= shift_left(c_10_6_0_False_resize, 0);
  c_10_3_0_False_resize <= resize(c_3, 32);
  c_10_3_0_False_shift <= shift_left(c_10_3_0_False_resize, 0);
  with config_select_7 select c_10_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_10_sel select c_10 <=
    c_10_9_0_False_shift when "00",
    c_10_6_0_False_shift when "01",
    c_10_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 11 and associated fundamentals [[0], [0], [108]]
  with config_select_8 select c_11_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 32,
      w_y_i => 32,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 10,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_11_sub_sel,
      x_i => c_10,
      y_i => c_6,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(22 downto 0);
  -- node of type 'mux' in stage 9 with id 12 and associated fundamentals [[8], [0], [8]]
  c_12_0_3_False_resize <= resize(c_0, 19);
  c_12_0_3_False_shift <= shift_left(c_12_0_3_False_resize, 3);
  c_12_11_0_False_resize <= c_11(18 downto 0);
  c_12_11_0_False_shift <= shift_left(c_12_11_0_False_resize, 0);
  with config_select_9 select c_12_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_12_sel select c_12 <=
    c_12_0_3_False_shift when "0",
    c_12_11_0_False_shift when others;
  -- node of type 'mux' in stage 9 with id 13 and associated fundamentals [[8], [0], [4]]
  c_13_11_0_False_resize <= c_11(18 downto 0);
  c_13_11_0_False_shift <= shift_left(c_13_11_0_False_resize, 0);
  c_13_0_3_False_resize <= resize(c_0, 19);
  c_13_0_3_False_shift <= shift_left(c_13_0_3_False_resize, 3);
  c_13_0_2_False_resize <= resize(c_0, 19);
  c_13_0_2_False_shift <= shift_left(c_13_0_2_False_resize, 2);
  with config_select_9 select c_13_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_13_sel select c_13 <=
    c_13_11_0_False_shift when "00",
    c_13_0_3_False_shift when "01",
    c_13_0_2_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 14 and associated fundamentals [[0], [0], [4]]
  with config_select_10 select c_14_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
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
      sub_i => c_14_sub_sel,
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  c_14 <= c_14_oshift(17 downto 0);
  -- node of type 'mux' in stage 5 with id 15 and associated fundamentals [[128], [0], [256]]
  c_15_6_0_False_resize <= c_6(23 downto 0);
  c_15_6_0_False_shift <= shift_left(c_15_6_0_False_resize, 0);
  c_15_3_0_False_resize <= resize(c_3, 24);
  c_15_3_0_False_shift <= shift_left(c_15_3_0_False_resize, 0);
  c_15_0_8_False_resize <= resize(c_0, 24);
  c_15_0_8_False_shift <= shift_left(c_15_0_8_False_resize, 8);
  with config_select_5 select c_15_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_15_sel select c_15 <=
    c_15_6_0_False_shift when "00",
    c_15_3_0_False_shift when "01",
    c_15_0_8_False_shift when others;
  -- node of type 'mux' in stage 5 with id 16 and associated fundamentals [[128], [0], [49152]]
  c_16_0_7_False_resize <= resize(c_0, 32);
  c_16_0_7_False_shift <= shift_left(c_16_0_7_False_resize, 7);
  c_16_3_0_False_resize <= resize(c_3, 32);
  c_16_3_0_False_shift <= shift_left(c_16_3_0_False_resize, 0);
  c_16_6_0_False_resize <= c_6;
  c_16_6_0_False_shift <= shift_left(c_16_6_0_False_resize, 0);
  with config_select_5 select c_16_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_16_sel select c_16 <=
    c_16_0_7_False_shift when "00",
    c_16_3_0_False_shift when "01",
    c_16_6_0_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 17 and associated fundamentals [[0], [0], [49408]]
  with config_select_6 select c_17_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 32,
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
      sub_i => c_17_sub_sel,
      x_i => c_15,
      y_i => c_16,
      z_o => c_17_oshift
    );
  c_17 <= c_17_oshift(31 downto 0);
  -- node of type 'mux' in stage 1 with id 18 and associated fundamentals [[16], [1], [16384]]
  c_18_0_0_False_resize <= resize(c_0, 30);
  c_18_0_0_False_shift <= shift_left(c_18_0_0_False_resize, 0);
  c_18_0_14_False_resize <= resize(c_0, 30);
  c_18_0_14_False_shift <= shift_left(c_18_0_14_False_resize, 14);
  c_18_0_4_False_resize <= resize(c_0, 30);
  c_18_0_4_False_shift <= shift_left(c_18_0_4_False_resize, 4);
  with config_select_1 select c_18_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_18_sel select c_18 <=
    c_18_0_0_False_shift when "00",
    c_18_0_14_False_shift when "01",
    c_18_0_4_False_shift when others;
  -- node of type 'mux' in stage 7 with id 19 and associated fundamentals [[4], [16], [49408]]
  c_19_0_4_False_resize <= resize(c_0, 32);
  c_19_0_4_False_shift <= shift_left(c_19_0_4_False_resize, 4);
  c_19_0_2_False_resize <= resize(c_0, 32);
  c_19_0_2_False_shift <= shift_left(c_19_0_2_False_resize, 2);
  c_19_17_0_False_resize <= c_17;
  c_19_17_0_False_shift <= shift_left(c_19_17_0_False_resize, 0);
  with config_select_7 select c_19_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_19_sel select c_19 <=
    c_19_0_4_False_shift when "00",
    c_19_0_2_False_shift when "01",
    c_19_17_0_False_shift when others;
  -- node of type 'add' in stage 8 with id 20 and associated fundamentals [[20], [17], [65792]]
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 32,
      w_o => 33,
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
      x_i => c_18,
      y_i => c_19,
      z_o => c_20_oshift
    );
  c_20 <= c_20_oshift(32 downto 0);
  -- node of type 'mux' in stage 9 with id 21 and associated fundamentals [[7], [17], [1]]
  c_21_0_0_False_resize <= resize(c_0, 21);
  c_21_0_0_False_shift <= shift_left(c_21_0_0_False_resize, 0);
  c_21_20_0_False_resize <= c_20(20 downto 0);
  c_21_20_0_False_shift <= shift_left(c_21_20_0_False_resize, 0);
  c_21_3_0_False_resize <= resize(c_3, 21);
  c_21_3_0_False_shift <= shift_left(c_21_3_0_False_resize, 0);
  with config_select_9 select c_21_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_21_sel select c_21 <=
    c_21_0_0_False_shift when "00",
    c_21_20_0_False_shift when "01",
    c_21_3_0_False_shift when others;
  -- node of type 'mux' in stage 9 with id 22 and associated fundamentals [[20], [2], [1]]
  c_22_20_0_False_resize <= c_20(20 downto 0);
  c_22_20_0_False_shift <= shift_left(c_22_20_0_False_resize, 0);
  c_22_0_0_False_resize <= resize(c_0, 21);
  c_22_0_0_False_shift <= shift_left(c_22_0_0_False_resize, 0);
  c_22_0_1_False_resize <= resize(c_0, 21);
  c_22_0_1_False_shift <= shift_left(c_22_0_1_False_resize, 1);
  with config_select_9 select c_22_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_22_sel select c_22 <=
    c_22_20_0_False_shift when "00",
    c_22_0_0_False_shift when "01",
    c_22_0_1_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 23 and associated fundamentals [[696], [72], [40]]
  with config_select_10 select c_23_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 21,
      w_o => 26,
      s_x_i => 3,
      s_y_i => 5,
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
  c_23 <= c_23_oshift(25 downto 0);
  -- node of type 'mux' in stage 3 with id 24 and associated fundamentals [[1], [2048], [512]]
  c_24_0_11_False_resize <= resize(c_0, 27);
  c_24_0_11_False_shift <= shift_left(c_24_0_11_False_resize, 11);
  c_24_3_5_False_resize <= resize(c_3, 27);
  c_24_3_5_False_shift <= shift_left(c_24_3_5_False_resize, 5);
  c_24_0_0_False_resize <= resize(c_0, 27);
  c_24_0_0_False_shift <= shift_left(c_24_0_0_False_resize, 0);
  with config_select_3 select c_24_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_24_sel select c_24 <=
    c_24_0_11_False_shift when "00",
    c_24_3_5_False_shift when "01",
    c_24_0_0_False_shift when others;
  -- node of type 'mux' in stage 9 with id 25 and associated fundamentals [[128], [128], [216]]
  c_25_0_7_False_resize <= resize(c_0, 24);
  c_25_0_7_False_shift <= shift_left(c_25_0_7_False_resize, 7);
  c_25_11_1_False_resize <= resize(c_11, 24);
  c_25_11_1_False_shift <= shift_left(c_25_11_1_False_resize, 1);
  c_25_6_0_False_resize <= c_6(23 downto 0);
  c_25_6_0_False_shift <= shift_left(c_25_6_0_False_resize, 0);
  with config_select_9 select c_25_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_25_sel select c_25 <=
    c_25_0_7_False_shift when "00",
    c_25_11_1_False_shift when "01",
    c_25_6_0_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 26 and associated fundamentals [[264], [16640], [3664]]
  with config_select_10 select c_26_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 24,
      w_o => 31,
      s_x_i => 3,
      s_y_i => 1,
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
  c_26 <= c_26_oshift(30 downto 0);
  -- node of type 'mux' in stage 11 with id 27 and associated fundamentals [[14], [8192], [40]]
  c_27_23_0_False_resize <= resize(c_23, 29);
  c_27_23_0_False_shift <= shift_left(c_27_23_0_False_resize, 0);
  c_27_0_13_False_resize <= resize(c_0, 29);
  c_27_0_13_False_shift <= shift_left(c_27_0_13_False_resize, 13);
  c_27_3_1_False_resize <= resize(c_3, 29);
  c_27_3_1_False_shift <= shift_left(c_27_3_1_False_resize, 1);
  with config_select_11 select c_27_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_27_sel select c_27 <=
    c_27_23_0_False_shift when "00",
    c_27_0_13_False_shift when "01",
    c_27_3_1_False_shift when others;
  -- node of type 'mux' in stage 9 with id 28 and associated fundamentals [[40], [65536], [108]]
  c_28_11_0_False_resize <= resize(c_11, 32);
  c_28_11_0_False_shift <= shift_left(c_28_11_0_False_resize, 0);
  c_28_20_1_False_resize <= c_20(31 downto 0);
  c_28_20_1_False_shift <= shift_left(c_28_20_1_False_resize, 1);
  c_28_0_16_False_resize <= resize(c_0, 32);
  c_28_0_16_False_shift <= shift_left(c_28_0_16_False_resize, 16);
  with config_select_9 select c_28_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_28_sel select c_28 <=
    c_28_11_0_False_shift when "00",
    c_28_20_1_False_shift when "01",
    c_28_0_16_False_shift when others;
  -- node of type 'add_sub' in stage 12 with id 29 and associated fundamentals [[152], [0], [212]]
  with config_select_12 select c_29_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 32,
      w_o => 24,
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
      sub_i => c_29_sub_sel,
      x_i => c_27,
      y_i => c_28,
      z_o => c_29_oshift
    );
  c_29 <= c_29_oshift(23 downto 0);
  -- node of type 'mux' in stage 13 with id 30 and associated fundamentals [[152], [66560], [131072]]
  c_30_0_17_False_resize <= resize(c_0, 33);
  c_30_0_17_False_shift <= shift_left(c_30_0_17_False_resize, 17);
  c_30_29_0_False_resize <= resize(c_29, 33);
  c_30_29_0_False_shift <= shift_left(c_30_29_0_False_resize, 0);
  c_30_26_2_False_resize <= resize(c_26, 33);
  c_30_26_2_False_shift <= shift_left(c_30_26_2_False_resize, 2);
  with config_select_13 select c_30_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_30_sel select c_30 <=
    c_30_0_17_False_shift when "00",
    c_30_29_0_False_shift when "01",
    c_30_26_2_False_shift when others;
  -- node of type 'mux' in stage 11 with id 31 and associated fundamentals [[20], [256], [512]]
  c_31_20_0_False_resize <= c_20(24 downto 0);
  c_31_20_0_False_shift <= shift_left(c_31_20_0_False_resize, 0);
  c_31_14_7_False_resize <= resize(c_14, 25);
  c_31_14_7_False_shift <= shift_left(c_31_14_7_False_resize, 7);
  c_31_0_8_False_resize <= resize(c_0, 25);
  c_31_0_8_False_shift <= shift_left(c_31_0_8_False_resize, 8);
  with config_select_11 select c_31_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_31_sel select c_31 <=
    c_31_20_0_False_shift when "00",
    c_31_14_7_False_shift when "01",
    c_31_0_8_False_shift when others;
  -- node of type 'add_sub' in stage 14 with id 32 and associated fundamentals [[132], [66816], [131584]]
  with config_select_14 select c_32_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_32: entity work.adder_node
    generic map (
      w_x_i => 33,
      w_y_i => 25,
      w_o => 34,
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
      sub_i => c_32_sub_sel,
      x_i => c_30,
      y_i => c_31,
      z_o => c_32_oshift
    );
  c_32 <= c_32_oshift(33 downto 0);
  -- node of type 'mux' in stage 9 with id 33 and associated fundamentals [[1], [17408], [1]]
  c_33_0_0_False_resize <= resize(c_0, 31);
  c_33_0_0_False_shift <= shift_left(c_33_0_0_False_resize, 0);
  c_33_20_10_False_resize <= c_20(30 downto 0);
  c_33_20_10_False_shift <= shift_left(c_33_20_10_False_resize, 10);
  with config_select_9 select c_33_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_33_sel select c_33 <=
    c_33_0_0_False_shift when "0",
    c_33_20_10_False_shift when others;
  -- node of type 'mux' in stage 1 with id 34 and associated fundamentals [[1], [8192], [8]]
  c_34_0_3_False_resize <= resize(c_0, 29);
  c_34_0_3_False_shift <= shift_left(c_34_0_3_False_resize, 3);
  c_34_0_13_False_resize <= resize(c_0, 29);
  c_34_0_13_False_shift <= shift_left(c_34_0_13_False_resize, 13);
  c_34_0_0_False_resize <= resize(c_0, 29);
  c_34_0_0_False_shift <= shift_left(c_34_0_0_False_resize, 0);
  with config_select_1 select c_34_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_34_sel select c_34 <=
    c_34_0_3_False_shift when "00",
    c_34_0_13_False_shift when "01",
    c_34_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 35 and associated fundamentals [[3], [61440], [12]]
  with config_select_10 select c_35_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_35: entity work.adder_node
    generic map (
      w_x_i => 31,
      w_y_i => 29,
      w_o => 32,
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
      sub_i => c_35_sub_sel,
      x_i => c_33,
      y_i => c_34,
      z_o => c_35_oshift
    );
  c_35 <= c_35_oshift(31 downto 0);
  -- node of type 'mux' in stage 11 with id 36 and associated fundamentals [[81920], [61440], [10240]]
  c_36_9_1_False_resize <= resize(c_9, 33);
  c_36_9_1_False_shift <= shift_left(c_36_9_1_False_resize, 1);
  c_36_35_0_False_resize <= resize(c_35, 33);
  c_36_35_0_False_shift <= shift_left(c_36_35_0_False_resize, 0);
  c_36_23_8_False_resize <= resize(c_23, 33);
  c_36_23_8_False_shift <= shift_left(c_36_23_8_False_resize, 8);
  with config_select_11 select c_36_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_36_sel select c_36 <=
    c_36_9_1_False_shift when "00",
    c_36_35_0_False_shift when "01",
    c_36_23_8_False_shift when others;
  -- node of type 'mux' in stage 11 with id 37 and associated fundamentals [[696], [2], [1024]]
  c_37_0_1_False_resize <= resize(c_0, 26);
  c_37_0_1_False_shift <= shift_left(c_37_0_1_False_resize, 1);
  c_37_0_10_False_resize <= resize(c_0, 26);
  c_37_0_10_False_shift <= shift_left(c_37_0_10_False_resize, 10);
  c_37_23_0_False_resize <= c_23;
  c_37_23_0_False_shift <= shift_left(c_37_23_0_False_resize, 0);
  with config_select_11 select c_37_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_37_sel select c_37 <=
    c_37_0_1_False_shift when "00",
    c_37_0_10_False_shift when "01",
    c_37_23_0_False_shift when others;
  -- node of type 'add_sub' in stage 12 with id 38 and associated fundamentals [[104192], [61504], [-22528]]
  with config_select_12 select c_38_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_38: entity work.adder_node
    generic map (
      w_x_i => 33,
      w_y_i => 26,
      w_o => 33,
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
      sub_i => c_38_sub_sel,
      x_i => c_36,
      y_i => c_37,
      z_o => c_38_oshift
    );
  c_38 <= c_38_oshift(32 downto 0);
  -- node of type 'mux' in stage 13 with id 39 and associated fundamentals [[2], [246016], [49152]]
  c_39_38_2_False_resize <= resize(c_38, 34);
  c_39_38_2_False_shift <= shift_left(c_39_38_2_False_resize, 2);
  c_39_0_1_False_resize <= resize(c_0, 34);
  c_39_0_1_False_shift <= shift_left(c_39_0_1_False_resize, 1);
  c_39_6_0_False_resize <= resize(c_6, 34);
  c_39_6_0_False_shift <= shift_left(c_39_6_0_False_resize, 0);
  with config_select_13 select c_39_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_39_sel select c_39 <=
    c_39_38_2_False_shift when "00",
    c_39_0_1_False_shift when "01",
    c_39_6_0_False_shift when others;
  -- node of type 'mux' in stage 15 with id 40 and associated fundamentals [[132], [34], [2048]]
  c_40_3_7_False_resize <= resize(c_3, 27);
  c_40_3_7_False_shift <= shift_left(c_40_3_7_False_resize, 7);
  c_40_20_1_False_resize <= c_20(26 downto 0);
  c_40_20_1_False_shift <= shift_left(c_40_20_1_False_resize, 1);
  c_40_32_0_False_resize <= c_32(26 downto 0);
  c_40_32_0_False_shift <= shift_left(c_40_32_0_False_resize, 0);
  with config_select_15 select c_40_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_40_sel select c_40 <=
    c_40_3_7_False_shift when "00",
    c_40_20_1_False_shift when "01",
    c_40_32_0_False_shift when others;
  -- node of type 'add' in stage 16 with id 41 and associated fundamentals [[134], [246050], [51200]]
  inst_adder_node_41: entity work.adder_node
    generic map (
      w_x_i => 34,
      w_y_i => 27,
      w_o => 34,
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
      x_i => c_39,
      y_i => c_40,
      z_o => c_41_oshift
    );
  c_41 <= c_41_oshift(33 downto 0);
  -- node of type 'mux' in stage 15 with id 42 and associated fundamentals [[104192], [66816], [61440]]
  c_42_38_0_False_resize <= c_38;
  c_42_38_0_False_shift <= shift_left(c_42_38_0_False_resize, 0);
  c_42_9_0_False_resize <= resize(c_9, 33);
  c_42_9_0_False_shift <= shift_left(c_42_9_0_False_resize, 0);
  c_42_32_0_False_resize <= c_32(32 downto 0);
  c_42_32_0_False_shift <= shift_left(c_42_32_0_False_resize, 0);
  with config_select_15 select c_42_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_42_sel select c_42 <=
    c_42_38_0_False_shift when "00",
    c_42_9_0_False_shift when "01",
    c_42_32_0_False_shift when others;
  -- node of type 'mux' in stage 13 with id 43 and associated fundamentals [[40960], [61440], [-22528]]
  c_43_9_0_False_resize <= c_9;
  c_43_9_0_False_shift <= shift_left(c_43_9_0_False_resize, 0);
  c_43_38_0_False_resize <= c_38(31 downto 0);
  c_43_38_0_False_shift <= shift_left(c_43_38_0_False_resize, 0);
  c_43_35_0_False_resize <= c_35;
  c_43_35_0_False_shift <= shift_left(c_43_35_0_False_resize, 0);
  with config_select_13 select c_43_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_43_sel select c_43 <=
    c_43_9_0_False_shift when "00",
    c_43_38_0_False_shift when "01",
    c_43_35_0_False_shift when others;
  -- node of type 'sub' in stage 16 with id 44 and associated fundamentals [[988], [84], [1312]]
  inst_adder_node_44: entity work.adder_node
    generic map (
      w_x_i => 33,
      w_y_i => 32,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 6,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_42,
      y_i => c_43,
      z_o => c_44_oshift
    );
  c_44 <= c_44_oshift(25 downto 0);
  -- node of type 'mux' in stage 17 with id 45 and associated fundamentals [[988], [84], [512]]
  c_45_0_9_False_resize <= resize(c_0, 26);
  c_45_0_9_False_shift <= shift_left(c_45_0_9_False_resize, 9);
  c_45_44_0_False_resize <= c_44;
  c_45_44_0_False_shift <= shift_left(c_45_44_0_False_resize, 0);
  with config_select_17 select c_45_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_45_sel select c_45 <=
    c_45_0_9_False_shift when "0",
    c_45_44_0_False_shift when others;
  -- node of type 'mux' in stage 11 with id 46 and associated fundamentals [[3], [1], [65792]]
  c_46_0_0_False_resize <= resize(c_0, 33);
  c_46_0_0_False_shift <= shift_left(c_46_0_0_False_resize, 0);
  c_46_35_0_False_resize <= resize(c_35, 33);
  c_46_35_0_False_shift <= shift_left(c_46_35_0_False_resize, 0);
  c_46_20_0_False_resize <= c_20;
  c_46_20_0_False_shift <= shift_left(c_46_20_0_False_resize, 0);
  with config_select_11 select c_46_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_46_sel select c_46 <=
    c_46_0_0_False_shift when "00",
    c_46_35_0_False_shift when "01",
    c_46_20_0_False_shift when others;
  -- node of type 'add_sub' in stage 18 with id 47 and associated fundamentals [[985], [83], [66304]]
  with config_select_18 select c_47_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_47: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 33,
      w_o => 33,
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
      sub_i => c_47_sub_sel,
      x_i => c_45,
      y_i => c_46,
      z_o => c_47_oshift
    );
  c_47 <= c_47_oshift(32 downto 0);
  -- node of type 'mux' in stage 19 with id 48 and associated fundamentals [[2], [83], [8]]
  c_48_0_3_False_resize <= resize(c_0, 23);
  c_48_0_3_False_shift <= shift_left(c_48_0_3_False_resize, 3);
  c_48_0_1_False_resize <= resize(c_0, 23);
  c_48_0_1_False_shift <= shift_left(c_48_0_1_False_resize, 1);
  c_48_47_0_False_resize <= c_47(22 downto 0);
  c_48_47_0_False_shift <= shift_left(c_48_47_0_False_resize, 0);
  with config_select_19 select c_48_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_48_sel select c_48 <=
    c_48_0_3_False_shift when "00",
    c_48_0_1_False_shift when "01",
    c_48_47_0_False_shift when others;
  -- node of type 'mux' in stage 19 with id 49 and associated fundamentals [[985], [16], [61440]]
  c_49_0_4_False_resize <= resize(c_0, 32);
  c_49_0_4_False_shift <= shift_left(c_49_0_4_False_resize, 4);
  c_49_9_0_False_resize <= c_9;
  c_49_9_0_False_shift <= shift_left(c_49_9_0_False_resize, 0);
  c_49_47_0_False_resize <= c_47(31 downto 0);
  c_49_47_0_False_shift <= shift_left(c_49_47_0_False_resize, 0);
  with config_select_19 select c_49_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_49_sel select c_49 <=
    c_49_0_4_False_shift when "00",
    c_49_9_0_False_shift when "01",
    c_49_47_0_False_shift when others;
  -- node of type 'add_sub' in stage 20 with id 50 and associated fundamentals [[-983], [99], [61448]]
  with config_select_20 select c_50_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_50: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 32,
      w_o => 27,
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
      sub_i => c_50_sub_sel,
      x_i => c_48,
      y_i => c_49,
      z_o => c_50_oshift
    );
  c_50 <= c_50_oshift(26 downto 0);
  -- node of type 'mux' in stage 21 with id 51 and associated fundamentals [[24], [99], [32]]
  c_51_35_3_False_resize <= c_35(22 downto 0);
  c_51_35_3_False_shift <= shift_left(c_51_35_3_False_resize, 3);
  c_51_50_0_False_resize <= c_50(22 downto 0);
  c_51_50_0_False_shift <= shift_left(c_51_50_0_False_resize, 0);
  c_51_14_3_False_resize <= resize(c_14, 23);
  c_51_14_3_False_shift <= shift_left(c_51_14_3_False_resize, 3);
  with config_select_21 select c_51_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_51_sel select c_51 <=
    c_51_35_3_False_shift when "00",
    c_51_50_0_False_shift when "01",
    c_51_14_3_False_shift when others;
  -- node of type 'mux' in stage 17 with id 52 and associated fundamentals [[128], [246050], [2]]
  c_52_0_7_False_resize <= resize(c_0, 34);
  c_52_0_7_False_shift <= shift_left(c_52_0_7_False_resize, 7);
  c_52_0_1_False_resize <= resize(c_0, 34);
  c_52_0_1_False_shift <= shift_left(c_52_0_1_False_resize, 1);
  c_52_41_0_False_resize <= c_41;
  c_52_41_0_False_shift <= shift_left(c_52_41_0_False_resize, 0);
  with config_select_17 select c_52_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_52_sel select c_52 <=
    c_52_0_7_False_shift when "00",
    c_52_0_1_False_shift when "01",
    c_52_41_0_False_shift when others;
  -- node of type 'add' in stage 22 with id 53 and associated fundamentals [[176], [246248], [66]]
  inst_adder_node_53: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 34,
      w_o => 34,
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
      x_i => c_51,
      y_i => c_52,
      z_o => c_53_oshift
    );
  c_53 <= c_53_oshift(33 downto 0);
  -- node of type 'mux' in stage 23 with id 54 and associated fundamentals [[1024], [8], [66]]
  c_54_53_0_False_resize <= c_53(25 downto 0);
  c_54_53_0_False_shift <= shift_left(c_54_53_0_False_resize, 0);
  c_54_6_3_False_resize <= c_6(25 downto 0);
  c_54_6_3_False_shift <= shift_left(c_54_6_3_False_resize, 3);
  c_54_0_3_False_resize <= resize(c_0, 26);
  c_54_0_3_False_shift <= shift_left(c_54_0_3_False_resize, 3);
  with config_select_23 select c_54_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_54_sel select c_54 <=
    c_54_53_0_False_shift when "00",
    c_54_6_3_False_shift when "01",
    c_54_0_3_False_shift when others;
  -- node of type 'mux' in stage 23 with id 55 and associated fundamentals [[0], [133632], [66]]
  c_55_32_1_False_resize <= c_32;
  c_55_32_1_False_shift <= shift_left(c_55_32_1_False_resize, 1);
  c_55_53_0_False_resize <= c_53;
  c_55_53_0_False_shift <= shift_left(c_55_53_0_False_resize, 0);
  c_55_11_0_False_resize <= resize(c_11, 34);
  c_55_11_0_False_shift <= shift_left(c_55_11_0_False_resize, 0);
  with config_select_23 select c_55_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_55_sel select c_55 <=
    c_55_32_1_False_shift when "00",
    c_55_53_0_False_shift when "01",
    c_55_11_0_False_shift when others;
  -- node of type 'add_sub' in stage 24 with id 56 and associated fundamentals [[4096], [-133600], [330]]
  with config_select_24 select c_56_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_56: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 34,
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
      sub_i => c_56_sub_sel,
      x_i => c_54,
      y_i => c_55,
      z_o => c_56_oshift
    );
  c_56 <= c_56_oshift(24 downto 0);
  -- node of type 'mux' in stage 23 with id 57 and associated fundamentals [[696], [0], [528]]
  c_57_11_0_False_resize <= resize(c_11, 26);
  c_57_11_0_False_shift <= shift_left(c_57_11_0_False_resize, 0);
  c_57_53_3_False_resize <= c_53(25 downto 0);
  c_57_53_3_False_shift <= shift_left(c_57_53_3_False_resize, 3);
  c_57_23_0_False_resize <= c_23;
  c_57_23_0_False_shift <= shift_left(c_57_23_0_False_resize, 0);
  with config_select_23 select c_57_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_57_sel select c_57 <=
    c_57_11_0_False_shift when "00",
    c_57_53_3_False_shift when "01",
    c_57_23_0_False_shift when others;
  -- node of type 'mux' in stage 11 with id 58 and associated fundamentals [[3], [64], [1]]
  c_58_0_0_False_resize <= resize(c_0, 22);
  c_58_0_0_False_shift <= shift_left(c_58_0_0_False_resize, 0);
  c_58_35_0_False_resize <= c_35(21 downto 0);
  c_58_35_0_False_shift <= shift_left(c_58_35_0_False_resize, 0);
  c_58_0_6_False_resize <= resize(c_0, 22);
  c_58_0_6_False_shift <= shift_left(c_58_0_6_False_resize, 6);
  with config_select_11 select c_58_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_58_sel select c_58 <=
    c_58_0_0_False_shift when "00",
    c_58_35_0_False_shift when "01",
    c_58_0_6_False_shift when others;
  -- node of type 'add_sub' in stage 24 with id 59 and associated fundamentals [[693], [64], [529]]
  with config_select_24 select c_59_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_59: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 22,
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
      sub_i => c_59_sub_sel,
      x_i => c_57,
      y_i => c_58,
      z_o => c_59_oshift
    );
  c_59 <= c_59_oshift(25 downto 0);
  -- node of type 'mux' in stage 15 with id 60 and associated fundamentals [[1792], [4], [131584]]
  c_60_3_8_False_resize <= resize(c_3, 34);
  c_60_3_8_False_shift <= shift_left(c_60_3_8_False_resize, 8);
  c_60_0_2_False_resize <= resize(c_0, 34);
  c_60_0_2_False_shift <= shift_left(c_60_0_2_False_resize, 2);
  c_60_32_0_False_resize <= c_32;
  c_60_32_0_False_shift <= shift_left(c_60_32_0_False_resize, 0);
  with config_select_15 select c_60_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_60_sel select c_60 <=
    c_60_3_8_False_shift when "00",
    c_60_0_2_False_shift when "01",
    c_60_32_0_False_shift when others;
  -- node of type 'mux' in stage 23 with id 61 and associated fundamentals [[512], [72], [66]]
  c_61_23_0_False_resize <= c_23(24 downto 0);
  c_61_23_0_False_shift <= shift_left(c_61_23_0_False_resize, 0);
  c_61_6_2_False_resize <= c_6(24 downto 0);
  c_61_6_2_False_shift <= shift_left(c_61_6_2_False_resize, 2);
  c_61_53_0_False_resize <= c_53(24 downto 0);
  c_61_53_0_False_shift <= shift_left(c_61_53_0_False_resize, 0);
  with config_select_23 select c_61_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_61_sel select c_61 <=
    c_61_23_0_False_shift when "00",
    c_61_6_2_False_shift when "01",
    c_61_53_0_False_shift when others;
  -- node of type 'add' in stage 24 with id 62 and associated fundamentals [[2304], [76], [131650]]
  inst_adder_node_62: entity work.adder_node
    generic map (
      w_x_i => 34,
      w_y_i => 25,
      w_o => 34,
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
      x_i => c_60,
      y_i => c_61,
      z_o => c_62_oshift
    );
  c_62 <= c_62_oshift(33 downto 0);
  -- node of type 'mux' in stage 19 with id 63 and associated fundamentals [[16], [83], [424]]
  c_63_29_1_False_resize <= resize(c_29, 25);
  c_63_29_1_False_shift <= shift_left(c_63_29_1_False_resize, 1);
  c_63_47_0_False_resize <= c_47(24 downto 0);
  c_63_47_0_False_shift <= shift_left(c_63_47_0_False_resize, 0);
  c_63_0_4_False_resize <= resize(c_0, 25);
  c_63_0_4_False_shift <= shift_left(c_63_0_4_False_resize, 4);
  with config_select_19 select c_63_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_63_sel select c_63 <=
    c_63_29_1_False_shift when "00",
    c_63_47_0_False_shift when "01",
    c_63_0_4_False_shift when others;
  -- node of type 'mux' in stage 25 with id 64 and associated fundamentals [[693], [0], [1]]
  c_64_0_0_False_resize <= resize(c_0, 26);
  c_64_0_0_False_shift <= shift_left(c_64_0_0_False_resize, 0);
  c_64_6_0_False_resize <= c_6(25 downto 0);
  c_64_6_0_False_shift <= shift_left(c_64_6_0_False_resize, 0);
  c_64_59_0_False_resize <= c_59;
  c_64_59_0_False_shift <= shift_left(c_64_59_0_False_resize, 0);
  with config_select_25 select c_64_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_64_sel select c_64 <=
    c_64_0_0_False_shift when "00",
    c_64_6_0_False_shift when "01",
    c_64_59_0_False_shift when others;
  -- node of type 'add_sub' in stage 26 with id 65 and associated fundamentals [[-677], [83], [425]]
  with config_select_26 select c_65_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_65: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_65_sub_sel,
      x_i => c_63,
      y_i => c_64,
      z_o => c_65_oshift
    );
  c_65 <= c_65_oshift(25 downto 0);
  -- node of type 'mux' in stage 25 with id 66 and associated fundamentals [[1392], [66816], [529]]
  c_66_59_0_False_resize <= resize(c_59, 33);
  c_66_59_0_False_shift <= shift_left(c_66_59_0_False_resize, 0);
  c_66_23_1_False_resize <= resize(c_23, 33);
  c_66_23_1_False_shift <= shift_left(c_66_23_1_False_resize, 1);
  c_66_32_0_False_resize <= c_32(32 downto 0);
  c_66_32_0_False_shift <= shift_left(c_66_32_0_False_resize, 0);
  with config_select_25 select c_66_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_66_sel select c_66 <=
    c_66_59_0_False_shift when "00",
    c_66_23_1_False_shift when "01",
    c_66_32_0_False_shift when others;
  -- node of type 'mux' in stage 17 with id 67 and associated fundamentals [[268], [4608], [108]]
  c_67_23_6_False_resize <= resize(c_23, 29);
  c_67_23_6_False_shift <= shift_left(c_67_23_6_False_resize, 6);
  c_67_11_0_False_resize <= resize(c_11, 29);
  c_67_11_0_False_shift <= shift_left(c_67_11_0_False_resize, 0);
  c_67_41_1_False_resize <= c_41(28 downto 0);
  c_67_41_1_False_shift <= shift_left(c_67_41_1_False_resize, 1);
  with config_select_17 select c_67_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_67_sel select c_67 <=
    c_67_23_6_False_shift when "00",
    c_67_11_0_False_shift when "01",
    c_67_41_1_False_shift when others;
  -- node of type 'add_sub' in stage 26 with id 68 and associated fundamentals [[1928], [57600], [745]]
  with config_select_26 select c_68_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_68: entity work.adder_node
    generic map (
      w_x_i => 33,
      w_y_i => 29,
      w_o => 32,
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
      sub_i => c_68_sub_sel,
      x_i => c_66,
      y_i => c_67,
      z_o => c_68_oshift
    );
  c_68 <= c_68_oshift(31 downto 0);
  -- node of type 'mux' in stage 19 with id 69 and associated fundamentals [[152], [1], [66304]]
  c_69_0_0_False_resize <= resize(c_0, 33);
  c_69_0_0_False_shift <= shift_left(c_69_0_0_False_resize, 0);
  c_69_29_0_False_resize <= resize(c_29, 33);
  c_69_29_0_False_shift <= shift_left(c_69_29_0_False_resize, 0);
  c_69_47_0_False_resize <= c_47;
  c_69_47_0_False_shift <= shift_left(c_69_47_0_False_resize, 0);
  with config_select_19 select c_69_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_69_sel select c_69 <=
    c_69_0_0_False_shift when "00",
    c_69_29_0_False_shift when "01",
    c_69_47_0_False_shift when others;
  -- node of type 'mux' in stage 27 with id 70 and associated fundamentals [[1928], [1], [3664]]
  c_70_0_0_False_resize <= resize(c_0, 28);
  c_70_0_0_False_shift <= shift_left(c_70_0_0_False_resize, 0);
  c_70_68_0_False_resize <= c_68(27 downto 0);
  c_70_68_0_False_shift <= shift_left(c_70_68_0_False_resize, 0);
  c_70_26_0_False_resize <= c_26(27 downto 0);
  c_70_26_0_False_shift <= shift_left(c_70_26_0_False_resize, 0);
  with config_select_27 select c_70_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_70_sel select c_70 <=
    c_70_0_0_False_shift when "00",
    c_70_68_0_False_shift when "01",
    c_70_26_0_False_shift when others;
  -- node of type 'add_sub' in stage 28 with id 71 and associated fundamentals [[-111], [0], [4373]]
  with config_select_28 select c_71_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_71: entity work.adder_node
    generic map (
      w_x_i => 33,
      w_y_i => 28,
      w_o => 29,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 4,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_71_sub_sel,
      x_i => c_69,
      y_i => c_70,
      z_o => c_71_oshift
    );
  c_71 <= c_71_oshift(28 downto 0);
  -- node of type 'mux' in stage 27 with id 72 and associated fundamentals [[693], [576], [425]]
  c_72_65_0_False_resize <= c_65;
  c_72_65_0_False_shift <= shift_left(c_72_65_0_False_resize, 0);
  c_72_23_3_False_resize <= c_23;
  c_72_23_3_False_shift <= shift_left(c_72_23_3_False_resize, 3);
  c_72_59_0_False_resize <= c_59;
  c_72_59_0_False_shift <= shift_left(c_72_59_0_False_resize, 0);
  with config_select_27 select c_72_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_72_sel select c_72 <=
    c_72_65_0_False_shift when "00",
    c_72_23_3_False_shift when "01",
    c_72_59_0_False_shift when others;
  -- node of type 'mux' in stage 19 with id 73 and associated fundamentals [[768], [83], [96]]
  c_73_35_8_False_resize <= c_35(25 downto 0);
  c_73_35_8_False_shift <= shift_left(c_73_35_8_False_resize, 8);
  c_73_35_3_False_resize <= c_35(25 downto 0);
  c_73_35_3_False_shift <= shift_left(c_73_35_3_False_resize, 3);
  c_73_47_0_False_resize <= c_47(25 downto 0);
  c_73_47_0_False_shift <= shift_left(c_73_47_0_False_resize, 0);
  with config_select_19 select c_73_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_73_sel select c_73 <=
    c_73_35_8_False_shift when "00",
    c_73_35_3_False_shift when "01",
    c_73_47_0_False_shift when others;
  -- node of type 'sub' in stage 28 with id 74 and associated fundamentals [[-75], [493], [329]]
  inst_adder_node_74: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 26,
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
      x_i => c_72,
      y_i => c_73,
      z_o => c_74_oshift
    );
  c_74 <= c_74_oshift(24 downto 0);
  -- node of type 'mux' in stage 13 with id 75 and associated fundamentals [[152], [4], [8]]
  c_75_0_3_False_resize <= resize(c_0, 24);
  c_75_0_3_False_shift <= shift_left(c_75_0_3_False_resize, 3);
  c_75_29_0_False_resize <= c_29;
  c_75_29_0_False_shift <= shift_left(c_75_29_0_False_resize, 0);
  c_75_0_2_False_resize <= resize(c_0, 24);
  c_75_0_2_False_shift <= shift_left(c_75_0_2_False_resize, 2);
  with config_select_13 select c_75_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_75_sel select c_75 <=
    c_75_0_3_False_shift when "00",
    c_75_29_0_False_shift when "01",
    c_75_0_2_False_shift when others;
  -- node of type 'mux' in stage 29 with id 76 and associated fundamentals [[1280], [83], [658]]
  c_76_20_6_False_resize <= c_20(26 downto 0);
  c_76_20_6_False_shift <= shift_left(c_76_20_6_False_resize, 6);
  c_76_74_1_False_resize <= resize(c_74, 27);
  c_76_74_1_False_shift <= shift_left(c_76_74_1_False_resize, 1);
  c_76_47_0_False_resize <= c_47(26 downto 0);
  c_76_47_0_False_shift <= shift_left(c_76_47_0_False_resize, 0);
  with config_select_29 select c_76_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_76_sel select c_76 <=
    c_76_20_6_False_shift when "00",
    c_76_74_1_False_shift when "01",
    c_76_47_0_False_shift when others;
  -- node of type 'add_sub' in stage 30 with id 77 and associated fundamentals [[-672], [99], [690]]
  with config_select_30 select c_77_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_77: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 27,
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
      sub_i => c_77_sub_sel,
      x_i => c_75,
      y_i => c_76,
      z_o => c_77_oshift
    );
  c_77 <= c_77_oshift(25 downto 0);
  -- node of type 'mux' in stage 25 with id 78 and associated fundamentals [[152], [34], [529]]
  c_78_59_0_False_resize <= c_59;
  c_78_59_0_False_shift <= shift_left(c_78_59_0_False_resize, 0);
  c_78_29_0_False_resize <= resize(c_29, 26);
  c_78_29_0_False_shift <= shift_left(c_78_29_0_False_resize, 0);
  c_78_20_1_False_resize <= c_20(25 downto 0);
  c_78_20_1_False_shift <= shift_left(c_78_20_1_False_resize, 1);
  with config_select_25 select c_78_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_78_sel select c_78 <=
    c_78_59_0_False_shift when "00",
    c_78_29_0_False_shift when "01",
    c_78_20_1_False_shift when others;
  -- node of type 'mux' in stage 23 with id 79 and associated fundamentals [[176], [166], [4]]
  c_79_14_0_False_resize <= resize(c_14, 24);
  c_79_14_0_False_shift <= shift_left(c_79_14_0_False_resize, 0);
  c_79_47_1_False_resize <= c_47(23 downto 0);
  c_79_47_1_False_shift <= shift_left(c_79_47_1_False_resize, 1);
  c_79_53_0_False_resize <= c_53(23 downto 0);
  c_79_53_0_False_shift <= shift_left(c_79_53_0_False_resize, 0);
  with config_select_23 select c_79_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_79_sel select c_79 <=
    c_79_14_0_False_shift when "00",
    c_79_47_1_False_shift when "01",
    c_79_53_0_False_shift when others;
  -- node of type 'sub' in stage 26 with id 80 and associated fundamentals [[-200], [-298], [521]]
  inst_adder_node_80: entity work.adder_node
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
      x_i => c_78,
      y_i => c_79,
      z_o => c_80_oshift
    );
  c_80 <= c_80_oshift(25 downto 0);
  -- node of type 'mux' in stage 29 with id 81 and associated fundamentals [[-111], [4], [329]]
  c_81_74_0_False_resize <= c_74;
  c_81_74_0_False_shift <= shift_left(c_81_74_0_False_resize, 0);
  c_81_71_0_False_resize <= c_71(24 downto 0);
  c_81_71_0_False_shift <= shift_left(c_81_71_0_False_resize, 0);
  c_81_0_2_False_resize <= resize(c_0, 25);
  c_81_0_2_False_shift <= shift_left(c_81_0_2_False_resize, 2);
  with config_select_29 select c_81_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_81_sel select c_81 <=
    c_81_74_0_False_shift when "00",
    c_81_71_0_False_shift when "01",
    c_81_0_2_False_shift when others;
  -- node of type 'mux' in stage 31 with id 82 and associated fundamentals [[-672], [1], [24]]
  c_82_0_0_False_resize <= resize(c_0, 26);
  c_82_0_0_False_shift <= shift_left(c_82_0_0_False_resize, 0);
  c_82_35_1_False_resize <= c_35(25 downto 0);
  c_82_35_1_False_shift <= shift_left(c_82_35_1_False_resize, 1);
  c_82_77_0_False_resize <= c_77;
  c_82_77_0_False_shift <= shift_left(c_82_77_0_False_resize, 0);
  with config_select_31 select c_82_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_82_sel select c_82 <=
    c_82_0_0_False_shift when "00",
    c_82_35_1_False_shift when "01",
    c_82_77_0_False_shift when others;
  -- node of type 'add_sub' in stage 32 with id 83 and associated fundamentals [[-783], [3], [353]]
  with config_select_32 select c_83_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_83: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_83_sub_sel,
      x_i => c_81,
      y_i => c_82,
      z_o => c_83_oshift
    );
  c_83 <= c_83_oshift(25 downto 0);
  -- node of type 'mux' in stage 27 with id 84 and associated fundamentals [[1], [-298], [2640]]
  c_84_80_0_False_resize <= resize(c_80, 28);
  c_84_80_0_False_shift <= shift_left(c_84_80_0_False_resize, 0);
  c_84_56_3_False_resize <= resize(c_56, 28);
  c_84_56_3_False_shift <= shift_left(c_84_56_3_False_resize, 3);
  c_84_0_0_False_resize <= resize(c_0, 28);
  c_84_0_0_False_shift <= shift_left(c_84_0_0_False_resize, 0);
  with config_select_27 select c_84_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_84_sel select c_84 <=
    c_84_80_0_False_shift when "00",
    c_84_56_3_False_shift when "01",
    c_84_0_0_False_shift when others;
  -- node of type 'mux' in stage 27 with id 85 and associated fundamentals [[176], [332], [5280]]
  c_85_53_0_False_resize <= c_53(28 downto 0);
  c_85_53_0_False_shift <= shift_left(c_85_53_0_False_resize, 0);
  c_85_65_2_False_resize <= resize(c_65, 29);
  c_85_65_2_False_shift <= shift_left(c_85_65_2_False_resize, 2);
  c_85_56_4_False_resize <= resize(c_56, 29);
  c_85_56_4_False_shift <= shift_left(c_85_56_4_False_resize, 4);
  with config_select_27 select c_85_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_85_sel select c_85 <=
    c_85_53_0_False_shift when "00",
    c_85_65_2_False_shift when "01",
    c_85_56_4_False_shift when others;
  -- node of type 'add_sub' in stage 28 with id 86 and associated fundamentals [[177], [-630], [-2640]]
  with config_select_28 select c_86_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_86: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 29,
      w_o => 28,
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
      sub_i => c_86_sub_sel,
      x_i => c_84,
      y_i => c_85,
      z_o => c_86_oshift
    );
  c_86 <= c_86_oshift(27 downto 0);
  -- node of type 'mux' in stage 27 with id 87 and associated fundamentals [[0], [57600], [1]]
  c_87_0_0_False_resize <= resize(c_0, 32);
  c_87_0_0_False_shift <= shift_left(c_87_0_0_False_resize, 0);
  c_87_68_0_False_resize <= c_68;
  c_87_68_0_False_shift <= shift_left(c_87_68_0_False_resize, 0);
  c_87_14_0_False_resize <= resize(c_14, 32);
  c_87_14_0_False_shift <= shift_left(c_87_14_0_False_resize, 0);
  with config_select_27 select c_87_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_87_sel select c_87 <=
    c_87_0_0_False_shift when "00",
    c_87_68_0_False_shift when "01",
    c_87_14_0_False_shift when others;
  -- node of type 'mux' in stage 11 with id 88 and associated fundamentals [[40960], [61440], [1]]
  c_88_9_0_False_resize <= c_9;
  c_88_9_0_False_shift <= shift_left(c_88_9_0_False_resize, 0);
  c_88_0_0_False_resize <= resize(c_0, 32);
  c_88_0_0_False_shift <= shift_left(c_88_0_0_False_resize, 0);
  c_88_35_0_False_resize <= c_35;
  c_88_35_0_False_shift <= shift_left(c_88_35_0_False_resize, 0);
  with config_select_11 select c_88_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_88_sel select c_88 <=
    c_88_9_0_False_shift when "00",
    c_88_0_0_False_shift when "01",
    c_88_35_0_False_shift when others;
  -- node of type 'sub' in stage 28 with id 89 and associated fundamentals [[-320], [-30], [0]]
  inst_adder_node_89: entity work.adder_node
    generic map (
      w_x_i => 32,
      w_y_i => 32,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 7,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_87,
      y_i => c_88,
      z_o => c_89_oshift
    );
  c_89 <= c_89_oshift(24 downto 0);
  -- node of type 'mux' in stage 29 with id 90 and associated fundamentals [[-888], [246050], [512]]
  c_90_0_9_False_resize <= resize(c_0, 34);
  c_90_0_9_False_shift <= shift_left(c_90_0_9_False_resize, 9);
  c_90_41_0_False_resize <= c_41;
  c_90_41_0_False_shift <= shift_left(c_90_41_0_False_resize, 0);
  c_90_71_3_False_resize <= resize(c_71, 34);
  c_90_71_3_False_shift <= shift_left(c_90_71_3_False_resize, 3);
  with config_select_29 select c_90_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_90_sel select c_90 <=
    c_90_0_9_False_shift when "00",
    c_90_41_0_False_shift when "01",
    c_90_71_3_False_shift when others;
  -- node of type 'mux' in stage 29 with id 91 and associated fundamentals [[-75], [83], [66304]]
  c_91_47_0_False_resize <= c_47;
  c_91_47_0_False_shift <= shift_left(c_91_47_0_False_resize, 0);
  c_91_74_0_False_resize <= resize(c_74, 33);
  c_91_74_0_False_shift <= shift_left(c_91_74_0_False_resize, 0);
  with config_select_29 select c_91_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_91_sel select c_91 <=
    c_91_47_0_False_shift when "0",
    c_91_74_0_False_shift when others;
  -- node of type 'add_sub' in stage 30 with id 92 and associated fundamentals [[-963], [245967], [66816]]
  with config_select_30 select c_92_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_92: entity work.adder_node
    generic map (
      w_x_i => 34,
      w_y_i => 33,
      w_o => 34,
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
      sub_i => c_92_sub_sel,
      x_i => c_90,
      y_i => c_91,
      z_o => c_92_oshift
    );
  c_92 <= c_92_oshift(33 downto 0);
  -- node of type 'mux' in stage 33 with id 93 and associated fundamentals [[-783], [245967], [132]]
  c_93_83_0_False_resize <= resize(c_83, 34);
  c_93_83_0_False_shift <= shift_left(c_93_83_0_False_resize, 0);
  c_93_53_1_False_resize <= c_53;
  c_93_53_1_False_shift <= shift_left(c_93_53_1_False_resize, 1);
  c_93_92_0_False_resize <= c_92;
  c_93_92_0_False_shift <= shift_left(c_93_92_0_False_resize, 0);
  with config_select_33 select c_93_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_93_sel select c_93 <=
    c_93_83_0_False_shift when "00",
    c_93_53_1_False_shift when "01",
    c_93_92_0_False_shift when others;
  -- node of type 'mux' in stage 29 with id 94 and associated fundamentals [[-800], [246248], [329]]
  c_94_53_0_False_resize <= c_53;
  c_94_53_0_False_shift <= shift_left(c_94_53_0_False_resize, 0);
  c_94_80_2_False_resize <= resize(c_80, 34);
  c_94_80_2_False_shift <= shift_left(c_94_80_2_False_resize, 2);
  c_94_74_0_False_resize <= resize(c_74, 34);
  c_94_74_0_False_shift <= shift_left(c_94_74_0_False_resize, 0);
  with config_select_29 select c_94_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_94_sel select c_94 <=
    c_94_53_0_False_shift when "00",
    c_94_80_2_False_shift when "01",
    c_94_74_0_False_shift when others;
  -- node of type 'sub' in stage 34 with id 95 and associated fundamentals [[17], [-281], [-197]]
  inst_adder_node_95: entity work.adder_node
    generic map (
      w_x_i => 34,
      w_y_i => 34,
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
      x_i => c_93,
      y_i => c_94,
      z_o => c_95_oshift
    );
  c_95 <= c_95_oshift(24 downto 0);
  -- node of type 'mux' in stage 29 with id 96 and associated fundamentals [[7], [99], [1316]]
  c_96_50_0_False_resize <= c_50;
  c_96_50_0_False_shift <= shift_left(c_96_50_0_False_resize, 0);
  c_96_3_0_False_resize <= resize(c_3, 27);
  c_96_3_0_False_shift <= shift_left(c_96_3_0_False_resize, 0);
  c_96_74_2_False_resize <= resize(c_74, 27);
  c_96_74_2_False_shift <= shift_left(c_96_74_2_False_resize, 2);
  with config_select_29 select c_96_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_96_sel select c_96 <=
    c_96_50_0_False_shift when "00",
    c_96_3_0_False_shift when "01",
    c_96_74_2_False_shift when others;
  -- node of type 'mux' in stage 35 with id 97 and associated fundamentals [[544], [96], [521]]
  c_97_95_5_False_resize <= resize(c_95, 26);
  c_97_95_5_False_shift <= shift_left(c_97_95_5_False_resize, 5);
  c_97_80_0_False_resize <= c_80;
  c_97_80_0_False_shift <= shift_left(c_97_80_0_False_resize, 0);
  c_97_83_5_False_resize <= c_83;
  c_97_83_5_False_shift <= shift_left(c_97_83_5_False_resize, 5);
  with config_select_35 select c_97_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_97_sel select c_97 <=
    c_97_95_5_False_shift when "00",
    c_97_80_0_False_shift when "01",
    c_97_83_5_False_shift when others;
  -- node of type 'add_sub' in stage 36 with id 98 and associated fundamentals [[551], [195], [795]]
  with config_select_36 select c_98_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_98: entity work.adder_node
    generic map (
      w_x_i => 27,
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
      sub_i => c_98_sub_sel,
      x_i => c_96,
      y_i => c_97,
      z_o => c_98_oshift
    );
  c_98 <= c_98_oshift(25 downto 0);
  -- node of type 'mux' in stage 11 with id 99 and associated fundamentals [[24], [272], [1]]
  c_99_0_0_False_resize <= resize(c_0, 25);
  c_99_0_0_False_shift <= shift_left(c_99_0_0_False_resize, 0);
  c_99_35_3_False_resize <= c_35(24 downto 0);
  c_99_35_3_False_shift <= shift_left(c_99_35_3_False_resize, 3);
  c_99_20_4_False_resize <= c_20(24 downto 0);
  c_99_20_4_False_shift <= shift_left(c_99_20_4_False_resize, 4);
  with config_select_11 select c_99_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_99_sel select c_99 <=
    c_99_0_0_False_shift when "00",
    c_99_35_3_False_shift when "01",
    c_99_20_4_False_shift when others;
  -- node of type 'mux' in stage 25 with id 100 and associated fundamentals [[16], [99], [660]]
  c_100_50_0_False_resize <= c_50(25 downto 0);
  c_100_50_0_False_shift <= shift_left(c_100_50_0_False_resize, 0);
  c_100_56_1_False_resize <= resize(c_56, 26);
  c_100_56_1_False_shift <= shift_left(c_100_56_1_False_resize, 1);
  c_100_0_4_False_resize <= resize(c_0, 26);
  c_100_0_4_False_shift <= shift_left(c_100_0_4_False_resize, 4);
  with config_select_25 select c_100_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_100_sel select c_100 <=
    c_100_50_0_False_shift when "00",
    c_100_56_1_False_shift when "01",
    c_100_0_4_False_shift when others;
  -- node of type 'add_sub' in stage 26 with id 101 and associated fundamentals [[40], [173], [-659]]
  with config_select_26 select c_101_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_101: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_101_sub_sel,
      x_i => c_99,
      y_i => c_100,
      z_o => c_101_oshift
    );
  c_101 <= c_101_oshift(25 downto 0);
  -- node of type 'mux' in stage 27 with id 102 and associated fundamentals [[-677], [1], [4]]
  c_102_0_0_False_resize <= resize(c_0, 26);
  c_102_0_0_False_shift <= shift_left(c_102_0_0_False_resize, 0);
  c_102_65_0_False_resize <= c_65;
  c_102_65_0_False_shift <= shift_left(c_102_65_0_False_resize, 0);
  c_102_0_2_False_resize <= resize(c_0, 26);
  c_102_0_2_False_shift <= shift_left(c_102_0_2_False_resize, 2);
  with config_select_27 select c_102_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_102_sel select c_102 <=
    c_102_0_0_False_shift when "00",
    c_102_65_0_False_shift when "01",
    c_102_0_2_False_shift when others;
  -- node of type 'mux' in stage 29 with id 103 and associated fundamentals [[20], [-240], [32]]
  c_103_89_3_False_resize <= c_89(23 downto 0);
  c_103_89_3_False_shift <= shift_left(c_103_89_3_False_resize, 3);
  c_103_20_0_False_resize <= c_20(23 downto 0);
  c_103_20_0_False_shift <= shift_left(c_103_20_0_False_resize, 0);
  c_103_0_5_False_resize <= resize(c_0, 24);
  c_103_0_5_False_shift <= shift_left(c_103_0_5_False_resize, 5);
  with config_select_29 select c_103_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_103_sel select c_103 <=
    c_103_89_3_False_shift when "00",
    c_103_20_0_False_shift when "01",
    c_103_0_5_False_shift when others;
  -- node of type 'add_sub' in stage 30 with id 104 and associated fundamentals [[-657], [241], [36]]
  with config_select_30 select c_104_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_104: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
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
      sub_i => c_104_sub_sel,
      x_i => c_102,
      y_i => c_103,
      z_o => c_104_oshift
    );
  c_104 <= c_104_oshift(25 downto 0);
  -- node of type 'mux' in stage 37 with id 105 and associated fundamentals [[-783], [195], [144]]
  c_105_83_0_False_resize <= c_83;
  c_105_83_0_False_shift <= shift_left(c_105_83_0_False_resize, 0);
  c_105_104_2_False_resize <= c_104;
  c_105_104_2_False_shift <= shift_left(c_105_104_2_False_resize, 2);
  c_105_98_0_False_resize <= c_98;
  c_105_98_0_False_shift <= shift_left(c_105_98_0_False_resize, 0);
  with config_select_37 select c_105_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_105_sel select c_105 <=
    c_105_83_0_False_shift when "00",
    c_105_104_2_False_shift when "01",
    c_105_98_0_False_shift when others;
  -- node of type 'mux' in stage 27 with id 106 and associated fundamentals [[80], [512], [521]]
  c_106_59_3_False_resize <= c_59;
  c_106_59_3_False_shift <= shift_left(c_106_59_3_False_resize, 3);
  c_106_80_0_False_resize <= c_80;
  c_106_80_0_False_shift <= shift_left(c_106_80_0_False_resize, 0);
  c_106_101_1_False_resize <= c_101;
  c_106_101_1_False_shift <= shift_left(c_106_101_1_False_resize, 1);
  with config_select_27 select c_106_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_106_sel select c_106 <=
    c_106_59_3_False_shift when "00",
    c_106_80_0_False_shift when "01",
    c_106_101_1_False_shift when others;
  -- node of type 'sub' in stage 38 with id 107 and associated fundamentals [[-943], [-829], [-898]]
  inst_adder_node_107: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 26,
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
      x_i => c_105,
      y_i => c_106,
      z_o => c_107_oshift
    );
  c_107 <= c_107_oshift(25 downto 0);
  -- node of type 'mux' in stage 33 with id 108 and associated fundamentals [[-677], [1], [353]]
  c_108_0_0_False_resize <= resize(c_0, 26);
  c_108_0_0_False_shift <= shift_left(c_108_0_0_False_resize, 0);
  c_108_83_0_False_resize <= c_83;
  c_108_83_0_False_shift <= shift_left(c_108_83_0_False_resize, 0);
  c_108_65_0_False_resize <= c_65;
  c_108_65_0_False_shift <= shift_left(c_108_65_0_False_resize, 0);
  with config_select_33 select c_108_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_108_sel select c_108 <=
    c_108_0_0_False_shift when "00",
    c_108_83_0_False_shift when "01",
    c_108_65_0_False_shift when others;
  -- node of type 'mux' in stage 35 with id 109 and associated fundamentals [[17], [83], [192]]
  c_109_95_0_False_resize <= c_95(23 downto 0);
  c_109_95_0_False_shift <= shift_left(c_109_95_0_False_resize, 0);
  c_109_35_4_False_resize <= c_35(23 downto 0);
  c_109_35_4_False_shift <= shift_left(c_109_35_4_False_resize, 4);
  c_109_65_0_False_resize <= c_65(23 downto 0);
  c_109_65_0_False_shift <= shift_left(c_109_65_0_False_resize, 0);
  with config_select_35 select c_109_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_109_sel select c_109 <=
    c_109_95_0_False_shift when "00",
    c_109_35_4_False_shift when "01",
    c_109_65_0_False_shift when others;
  -- node of type 'add_sub' in stage 36 with id 110 and associated fundamentals [[-609], [-331], [-415]]
  with config_select_36 select c_110_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_110: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
      w_o => 26,
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
      sub_i => c_110_sub_sel,
      x_i => c_108,
      y_i => c_109,
      z_o => c_110_oshift
    );
  c_110 <= c_110_oshift(25 downto 0);
  -- node of type 'mux' in stage 35 with id 111 and associated fundamentals [[4], [493], [-6304]]
  c_111_95_5_False_resize <= resize(c_95, 29);
  c_111_95_5_False_shift <= shift_left(c_111_95_5_False_resize, 5);
  c_111_0_2_False_resize <= resize(c_0, 29);
  c_111_0_2_False_shift <= shift_left(c_111_0_2_False_resize, 2);
  c_111_74_0_False_resize <= resize(c_74, 29);
  c_111_74_0_False_shift <= shift_left(c_111_74_0_False_resize, 0);
  with config_select_35 select c_111_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_111_sel select c_111 <=
    c_111_95_5_False_shift when "00",
    c_111_0_2_False_shift when "01",
    c_111_74_0_False_shift when others;
  -- node of type 'mux' in stage 27 with id 112 and associated fundamentals [[1], [83], [1490]]
  c_112_68_1_False_resize <= c_68(26 downto 0);
  c_112_68_1_False_shift <= shift_left(c_112_68_1_False_resize, 1);
  c_112_47_0_False_resize <= c_47(26 downto 0);
  c_112_47_0_False_shift <= shift_left(c_112_47_0_False_resize, 0);
  c_112_0_0_False_resize <= resize(c_0, 27);
  c_112_0_0_False_shift <= shift_left(c_112_0_0_False_resize, 0);
  with config_select_27 select c_112_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_112_sel select c_112 <=
    c_112_68_1_False_shift when "00",
    c_112_47_0_False_shift when "01",
    c_112_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 36 with id 113 and associated fundamentals [[8], [161], [-344]]
  with config_select_36 select c_113_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_113: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 27,
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
      sub_i => c_113_sub_sel,
      x_i => c_111,
      y_i => c_112,
      z_o => c_113_oshift
    );
  c_113 <= c_113_oshift(24 downto 0);
  -- node of type 'mux' in stage 29 with id 114 and associated fundamentals [[128], [-240], [4373]]
  c_114_89_3_False_resize <= resize(c_89, 29);
  c_114_89_3_False_shift <= shift_left(c_114_89_3_False_resize, 3);
  c_114_6_0_False_resize <= c_6(28 downto 0);
  c_114_6_0_False_shift <= shift_left(c_114_6_0_False_resize, 0);
  c_114_71_0_False_resize <= c_71;
  c_114_71_0_False_shift <= shift_left(c_114_71_0_False_resize, 0);
  with config_select_29 select c_114_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_114_sel select c_114 <=
    c_114_89_3_False_shift when "00",
    c_114_6_0_False_shift when "01",
    c_114_71_0_False_shift when others;
  -- node of type 'mux' in stage 29 with id 115 and associated fundamentals [[14], [1], [-5280]]
  c_115_0_0_False_resize <= resize(c_0, 29);
  c_115_0_0_False_shift <= shift_left(c_115_0_0_False_resize, 0);
  c_115_86_1_False_resize <= resize(c_86, 29);
  c_115_86_1_False_shift <= shift_left(c_115_86_1_False_resize, 1);
  c_115_3_1_False_resize <= resize(c_3, 29);
  c_115_3_1_False_shift <= shift_left(c_115_3_1_False_resize, 1);
  with config_select_29 select c_115_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_115_sel select c_115 <=
    c_115_0_0_False_shift when "00",
    c_115_86_1_False_shift when "01",
    c_115_3_1_False_shift when others;
  -- node of type 'add' in stage 30 with id 116 and associated fundamentals [[142], [-239], [-907]]
  inst_adder_node_116: entity work.adder_node
    generic map (
      w_x_i => 29,
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
      x_i => c_114,
      y_i => c_115,
      z_o => c_116_oshift
    );
  c_116 <= c_116_oshift(25 downto 0);
  -- node of type 'mux' in stage 35 with id 117 and associated fundamentals [[-783], [-630], [-197]]
  c_117_83_0_False_resize <= c_83;
  c_117_83_0_False_shift <= shift_left(c_117_83_0_False_resize, 0);
  c_117_95_0_False_resize <= resize(c_95, 26);
  c_117_95_0_False_shift <= shift_left(c_117_95_0_False_resize, 0);
  c_117_86_0_False_resize <= c_86(25 downto 0);
  c_117_86_0_False_shift <= shift_left(c_117_86_0_False_resize, 0);
  with config_select_35 select c_117_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_117_sel select c_117 <=
    c_117_83_0_False_shift when "00",
    c_117_95_0_False_shift when "01",
    c_117_86_0_False_shift when others;
  -- node of type 'output' in stage 35 with id 118 and associated fundamentals [[783], [630], [197]]
  c_118_resize <= c_117;
  c_118 <= -shift_left(c_118_resize, 0);
  -- node of type 'mux' in stage 37 with id 119 and associated fundamentals [[-609], [-596], [-659]]
  c_119_80_1_False_resize <= c_80;
  c_119_80_1_False_shift <= shift_left(c_119_80_1_False_resize, 1);
  c_119_110_0_False_resize <= c_110;
  c_119_110_0_False_shift <= shift_left(c_119_110_0_False_resize, 0);
  c_119_101_0_False_resize <= c_101;
  c_119_101_0_False_shift <= shift_left(c_119_101_0_False_resize, 0);
  with config_select_37 select c_119_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_119_sel select c_119 <=
    c_119_80_1_False_shift when "00",
    c_119_110_0_False_shift when "01",
    c_119_101_0_False_shift when others;
  -- node of type 'output' in stage 37 with id 120 and associated fundamentals [[609], [596], [659]]
  c_120_resize <= c_119;
  c_120 <= -shift_left(c_120_resize, 0);
  -- node of type 'mux' in stage 39 with id 121 and associated fundamentals [[-943], [-331], [-907]]
  c_121_116_0_False_resize <= c_116;
  c_121_116_0_False_shift <= shift_left(c_121_116_0_False_resize, 0);
  c_121_110_0_False_resize <= c_110;
  c_121_110_0_False_shift <= shift_left(c_121_110_0_False_resize, 0);
  c_121_107_0_False_resize <= c_107;
  c_121_107_0_False_shift <= shift_left(c_121_107_0_False_resize, 0);
  with config_select_39 select c_121_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_121_sel select c_121 <=
    c_121_116_0_False_shift when "00",
    c_121_110_0_False_shift when "01",
    c_121_107_0_False_shift when others;
  -- node of type 'output' in stage 39 with id 122 and associated fundamentals [[943], [331], [907]]
  c_122_resize <= c_121;
  c_122 <= -shift_left(c_122_resize, 0);
  -- node of type 'mux' in stage 37 with id 123 and associated fundamentals [[551], [780], [690]]
  c_123_77_0_False_resize <= c_77;
  c_123_77_0_False_shift <= shift_left(c_123_77_0_False_resize, 0);
  c_123_98_2_False_resize <= c_98;
  c_123_98_2_False_shift <= shift_left(c_123_98_2_False_resize, 2);
  c_123_98_0_False_resize <= c_98;
  c_123_98_0_False_shift <= shift_left(c_123_98_0_False_resize, 0);
  with config_select_37 select c_123_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_123_sel select c_123 <=
    c_123_77_0_False_shift when "00",
    c_123_98_2_False_shift when "01",
    c_123_98_0_False_shift when others;
  -- node of type 'output' in stage 37 with id 124 and associated fundamentals [[551], [780], [690]]
  c_124_resize <= c_123;
  c_124 <= shift_left(c_124_resize, 0);
  -- node of type 'mux' in stage 33 with id 125 and associated fundamentals [[142], [241], [706]]
  c_125_83_1_False_resize <= c_83;
  c_125_83_1_False_shift <= shift_left(c_125_83_1_False_resize, 1);
  c_125_104_0_False_resize <= c_104;
  c_125_104_0_False_shift <= shift_left(c_125_104_0_False_resize, 0);
  c_125_116_0_False_resize <= c_116;
  c_125_116_0_False_shift <= shift_left(c_125_116_0_False_resize, 0);
  with config_select_33 select c_125_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_125_sel select c_125 <=
    c_125_83_1_False_shift when "00",
    c_125_104_0_False_shift when "01",
    c_125_116_0_False_shift when others;
  -- node of type 'output' in stage 33 with id 126 and associated fundamentals [[142], [241], [706]]
  c_126_resize <= c_125;
  c_126 <= shift_left(c_126_resize, 0);
  -- node of type 'mux' in stage 39 with id 127 and associated fundamentals [[-963], [-281], [-898]]
  c_127_107_0_False_resize <= c_107;
  c_127_107_0_False_shift <= shift_left(c_127_107_0_False_resize, 0);
  c_127_92_0_False_resize <= c_92(25 downto 0);
  c_127_92_0_False_shift <= shift_left(c_127_92_0_False_resize, 0);
  c_127_95_0_False_resize <= resize(c_95, 26);
  c_127_95_0_False_shift <= shift_left(c_127_95_0_False_resize, 0);
  with config_select_39 select c_127_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_127_sel select c_127 <=
    c_127_107_0_False_shift when "00",
    c_127_92_0_False_shift when "01",
    c_127_95_0_False_shift when others;
  -- node of type 'output' in stage 39 with id 128 and associated fundamentals [[963], [281], [898]]
  c_128_resize <= c_127;
  c_128 <= -shift_left(c_128_resize, 0);
  -- node of type 'mux' in stage 37 with id 129 and associated fundamentals [[-75], [-239], [-344]]
  c_129_116_0_False_resize <= c_116(24 downto 0);
  c_129_116_0_False_shift <= shift_left(c_129_116_0_False_resize, 0);
  c_129_113_0_False_resize <= c_113;
  c_129_113_0_False_shift <= shift_left(c_129_113_0_False_resize, 0);
  c_129_74_0_False_resize <= c_74;
  c_129_74_0_False_shift <= shift_left(c_129_74_0_False_resize, 0);
  with config_select_37 select c_129_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_129_sel select c_129 <=
    c_129_116_0_False_shift when "00",
    c_129_113_0_False_shift when "01",
    c_129_74_0_False_shift when others;
  -- node of type 'output' in stage 37 with id 130 and associated fundamentals [[75], [239], [344]]
  c_130_resize <= c_129;
  c_130 <= -shift_left(c_130_resize, 0);
  -- node of type 'mux' in stage 37 with id 131 and associated fundamentals [[896], [161], [795]]
  c_131_3_7_False_resize <= resize(c_3, 26);
  c_131_3_7_False_shift <= shift_left(c_131_3_7_False_resize, 7);
  c_131_98_0_False_resize <= c_98;
  c_131_98_0_False_shift <= shift_left(c_131_98_0_False_resize, 0);
  c_131_113_0_False_resize <= resize(c_113, 26);
  c_131_113_0_False_shift <= shift_left(c_131_113_0_False_resize, 0);
  with config_select_37 select c_131_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_131_sel select c_131 <=
    c_131_3_7_False_shift when "00",
    c_131_98_0_False_shift when "01",
    c_131_113_0_False_shift when others;
  -- node of type 'output' in stage 37 with id 132 and associated fundamentals [[896], [161], [795]]
  c_132_resize <= c_131;
  c_132 <= shift_left(c_132_resize, 0);
  -- node of type 'mux' in stage 31 with id 133 and associated fundamentals [[985], [99], [425]]
  c_133_65_0_False_resize <= c_65;
  c_133_65_0_False_shift <= shift_left(c_133_65_0_False_resize, 0);
  c_133_47_0_False_resize <= c_47(25 downto 0);
  c_133_47_0_False_shift <= shift_left(c_133_47_0_False_resize, 0);
  c_133_77_0_False_resize <= c_77;
  c_133_77_0_False_shift <= shift_left(c_133_77_0_False_resize, 0);
  with config_select_31 select c_133_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_133_sel select c_133 <=
    c_133_65_0_False_shift when "00",
    c_133_47_0_False_shift when "01",
    c_133_77_0_False_shift when others;
  -- node of type 'output' in stage 31 with id 134 and associated fundamentals [[985], [99], [425]]
  c_134_resize <= c_133;
  c_134 <= shift_left(c_134_resize, 0);
  -- node of type 'mux' in stage 39 with id 135 and associated fundamentals [[-657], [-829], [-415]]
  c_135_104_0_False_resize <= c_104;
  c_135_104_0_False_shift <= shift_left(c_135_104_0_False_resize, 0);
  c_135_110_0_False_resize <= c_110;
  c_135_110_0_False_shift <= shift_left(c_135_110_0_False_resize, 0);
  c_135_107_0_False_resize <= c_107;
  c_135_107_0_False_shift <= shift_left(c_135_107_0_False_resize, 0);
  with config_select_39 select c_135_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_135_sel select c_135 <=
    c_135_104_0_False_shift when "00",
    c_135_110_0_False_shift when "01",
    c_135_107_0_False_shift when others;
  -- node of type 'output' in stage 39 with id 136 and associated fundamentals [[657], [829], [415]]
  c_136_resize <= c_135;
  c_136 <= -shift_left(c_136_resize, 0);
end architecture;
