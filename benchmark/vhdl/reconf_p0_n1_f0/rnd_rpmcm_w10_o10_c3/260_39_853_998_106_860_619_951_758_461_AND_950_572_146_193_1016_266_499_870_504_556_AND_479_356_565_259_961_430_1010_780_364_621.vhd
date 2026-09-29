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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(20 downto 0);
  signal c_1_0_0_False_resize: signed(20 downto 0);
  signal c_1_0_0_False_shift: signed(20 downto 0);
  signal c_1_0_5_False_resize: signed(20 downto 0);
  signal c_1_0_5_False_shift: signed(20 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(18 downto 0);
  signal c_2_0_0_False_resize: signed(18 downto 0);
  signal c_2_0_0_False_shift: signed(18 downto 0);
  signal c_2_0_3_False_resize: signed(18 downto 0);
  signal c_2_0_3_False_shift: signed(18 downto 0);
  signal c_2_0_2_False_resize: signed(18 downto 0);
  signal c_2_0_2_False_shift: signed(18 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(20 downto 0);
  signal c_4: signed(20 downto 0);
  signal c_4_0_1_False_resize: signed(20 downto 0);
  signal c_4_0_1_False_shift: signed(20 downto 0);
  signal c_4_3_0_False_resize: signed(20 downto 0);
  signal c_4_3_0_False_shift: signed(20 downto 0);
  signal c_4_3_3_False_resize: signed(20 downto 0);
  signal c_4_3_3_False_shift: signed(20 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(25 downto 0);
  signal c_5_0_7_False_resize: signed(25 downto 0);
  signal c_5_0_7_False_shift: signed(25 downto 0);
  signal c_5_3_5_False_resize: signed(25 downto 0);
  signal c_5_3_5_False_shift: signed(25 downto 0);
  signal c_5_0_0_False_resize: signed(25 downto 0);
  signal c_5_0_0_False_shift: signed(25 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(25 downto 0);
  signal c_6_i0_resize: signed(25 downto 0);
  signal c_6_i1_resize: signed(25 downto 0);
  signal c_6_i0_shift: signed(25 downto 0);
  signal c_6_i1_shift: signed(25 downto 0);
  signal c_6_arith: signed(25 downto 0);
  signal c_6_oshift: signed(25 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(20 downto 0);
  signal c_7_3_0_False_resize: signed(20 downto 0);
  signal c_7_3_0_False_shift: signed(20 downto 0);
  signal c_7_0_2_False_resize: signed(20 downto 0);
  signal c_7_0_2_False_shift: signed(20 downto 0);
  signal c_7_6_0_False_resize: signed(20 downto 0);
  signal c_7_6_0_False_shift: signed(20 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(21 downto 0);
  signal c_8_0_0_False_resize: signed(21 downto 0);
  signal c_8_0_0_False_shift: signed(21 downto 0);
  signal c_8_0_5_False_resize: signed(21 downto 0);
  signal c_8_0_5_False_shift: signed(21 downto 0);
  signal c_8_0_6_False_resize: signed(21 downto 0);
  signal c_8_0_6_False_shift: signed(21 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_i0_resize: signed(22 downto 0);
  signal c_9_i1_resize: signed(22 downto 0);
  signal c_9_i0_shift: signed(22 downto 0);
  signal c_9_i1_shift: signed(22 downto 0);
  signal c_9_arith: signed(22 downto 0);
  signal c_9_oshift: signed(22 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_0_8_False_resize: signed(23 downto 0);
  signal c_10_0_8_False_shift: signed(23 downto 0);
  signal c_10_3_3_False_resize: signed(23 downto 0);
  signal c_10_3_3_False_shift: signed(23 downto 0);
  signal c_10_0_0_False_resize: signed(23 downto 0);
  signal c_10_0_0_False_shift: signed(23 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(21 downto 0);
  signal c_11_9_0_False_resize: signed(21 downto 0);
  signal c_11_9_0_False_shift: signed(21 downto 0);
  signal c_11_0_5_False_resize: signed(21 downto 0);
  signal c_11_0_5_False_shift: signed(21 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(24 downto 0);
  signal c_12_i0_resize: signed(24 downto 0);
  signal c_12_i1_resize: signed(24 downto 0);
  signal c_12_i0_shift: signed(24 downto 0);
  signal c_12_i1_shift: signed(24 downto 0);
  signal c_12_arith: signed(24 downto 0);
  signal c_12_oshift: signed(24 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(25 downto 0);
  signal c_13_9_0_False_resize: signed(25 downto 0);
  signal c_13_9_0_False_shift: signed(25 downto 0);
  signal c_13_6_2_False_resize: signed(25 downto 0);
  signal c_13_6_2_False_shift: signed(25 downto 0);
  signal c_13_3_0_False_resize: signed(25 downto 0);
  signal c_13_3_0_False_shift: signed(25 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(24 downto 0);
  signal c_14_12_3_False_resize: signed(24 downto 0);
  signal c_14_12_3_False_shift: signed(24 downto 0);
  signal c_14_9_0_False_resize: signed(24 downto 0);
  signal c_14_9_0_False_shift: signed(24 downto 0);
  signal c_14_0_6_False_resize: signed(24 downto 0);
  signal c_14_0_6_False_shift: signed(24 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_i0_resize: signed(25 downto 0);
  signal c_15_i1_resize: signed(25 downto 0);
  signal c_15_i0_shift: signed(25 downto 0);
  signal c_15_i1_shift: signed(25 downto 0);
  signal c_15_arith: signed(25 downto 0);
  signal c_15_oshift: signed(25 downto 0);
  signal c_16: signed(22 downto 0);
  signal c_16_9_0_False_resize: signed(22 downto 0);
  signal c_16_9_0_False_shift: signed(22 downto 0);
  signal c_16_15_1_False_resize: signed(22 downto 0);
  signal c_16_15_1_False_shift: signed(22 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(22 downto 0);
  signal c_17_0_0_False_resize: signed(22 downto 0);
  signal c_17_0_0_False_shift: signed(22 downto 0);
  signal c_17_3_0_False_resize: signed(22 downto 0);
  signal c_17_3_0_False_shift: signed(22 downto 0);
  signal c_17_3_2_False_resize: signed(22 downto 0);
  signal c_17_3_2_False_shift: signed(22 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_18_i0_resize: signed(24 downto 0);
  signal c_18_i1_resize: signed(24 downto 0);
  signal c_18_i0_shift: signed(24 downto 0);
  signal c_18_i1_shift: signed(24 downto 0);
  signal c_18_arith: signed(24 downto 0);
  signal c_18_oshift: signed(24 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(21 downto 0);
  signal c_19_3_2_False_resize: signed(21 downto 0);
  signal c_19_3_2_False_shift: signed(21 downto 0);
  signal c_19_9_0_False_resize: signed(21 downto 0);
  signal c_19_9_0_False_shift: signed(21 downto 0);
  signal c_19_18_0_False_resize: signed(21 downto 0);
  signal c_19_18_0_False_shift: signed(21 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(20 downto 0);
  signal c_20_15_1_False_resize: signed(20 downto 0);
  signal c_20_15_1_False_shift: signed(20 downto 0);
  signal c_20_3_0_False_resize: signed(20 downto 0);
  signal c_20_3_0_False_shift: signed(20 downto 0);
  signal c_20_3_1_False_resize: signed(20 downto 0);
  signal c_20_3_1_False_shift: signed(20 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_i0_resize: signed(25 downto 0);
  signal c_21_i1_resize: signed(25 downto 0);
  signal c_21_i0_shift: signed(25 downto 0);
  signal c_21_i1_shift: signed(25 downto 0);
  signal c_21_arith: signed(25 downto 0);
  signal c_21_oshift: signed(25 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(26 downto 0);
  signal c_22_6_3_False_resize: signed(26 downto 0);
  signal c_22_6_3_False_shift: signed(26 downto 0);
  signal c_22_6_0_False_resize: signed(26 downto 0);
  signal c_22_6_0_False_shift: signed(26 downto 0);
  signal c_22_15_4_False_resize: signed(26 downto 0);
  signal c_22_15_4_False_shift: signed(26 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(22 downto 0);
  signal c_23_0_0_False_resize: signed(22 downto 0);
  signal c_23_0_0_False_shift: signed(22 downto 0);
  signal c_23_12_0_False_resize: signed(22 downto 0);
  signal c_23_12_0_False_shift: signed(22 downto 0);
  signal c_23_3_5_False_resize: signed(22 downto 0);
  signal c_23_3_5_False_shift: signed(22 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(26 downto 0);
  signal c_24_i0_resize: signed(26 downto 0);
  signal c_24_i1_resize: signed(26 downto 0);
  signal c_24_i0_shift: signed(26 downto 0);
  signal c_24_i1_shift: signed(26 downto 0);
  signal c_24_arith: signed(26 downto 0);
  signal c_24_oshift: signed(26 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(25 downto 0);
  signal c_25_18_0_False_resize: signed(25 downto 0);
  signal c_25_18_0_False_shift: signed(25 downto 0);
  signal c_25_9_0_False_resize: signed(25 downto 0);
  signal c_25_9_0_False_shift: signed(25 downto 0);
  signal c_25_15_0_False_resize: signed(25 downto 0);
  signal c_25_15_0_False_shift: signed(25 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_18_0_False_resize: signed(23 downto 0);
  signal c_26_18_0_False_shift: signed(23 downto 0);
  signal c_26_6_0_False_resize: signed(23 downto 0);
  signal c_26_6_0_False_shift: signed(23 downto 0);
  signal c_26_24_0_False_resize: signed(23 downto 0);
  signal c_26_24_0_False_shift: signed(23 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(24 downto 0);
  signal c_27_i0_resize: signed(25 downto 0);
  signal c_27_i1_resize: signed(25 downto 0);
  signal c_27_i0_shift: signed(25 downto 0);
  signal c_27_i1_shift: signed(25 downto 0);
  signal c_27_arith: signed(25 downto 0);
  signal c_27_oshift: signed(24 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(25 downto 0);
  signal c_28_6_0_False_resize: signed(25 downto 0);
  signal c_28_6_0_False_shift: signed(25 downto 0);
  signal c_28_3_0_False_resize: signed(25 downto 0);
  signal c_28_3_0_False_shift: signed(25 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(26 downto 0);
  signal c_29_24_0_False_resize: signed(26 downto 0);
  signal c_29_24_0_False_shift: signed(26 downto 0);
  signal c_29_24_3_False_resize: signed(26 downto 0);
  signal c_29_24_3_False_shift: signed(26 downto 0);
  signal c_29_9_8_False_resize: signed(26 downto 0);
  signal c_29_9_8_False_shift: signed(26 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_i0_resize: signed(25 downto 0);
  signal c_30_i1_resize: signed(25 downto 0);
  signal c_30_i0_shift: signed(25 downto 0);
  signal c_30_i1_shift: signed(25 downto 0);
  signal c_30_arith: signed(25 downto 0);
  signal c_30_oshift: signed(25 downto 0);
  signal c_30_sub_sel: std_logic;
  signal c_31: signed(25 downto 0);
  signal c_31_12_0_False_resize: signed(25 downto 0);
  signal c_31_12_0_False_shift: signed(25 downto 0);
  signal c_31_0_7_False_resize: signed(25 downto 0);
  signal c_31_0_7_False_shift: signed(25 downto 0);
  signal c_31_27_1_False_resize: signed(25 downto 0);
  signal c_31_27_1_False_shift: signed(25 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_12_2_False_resize: signed(25 downto 0);
  signal c_32_12_2_False_shift: signed(25 downto 0);
  signal c_32_0_0_False_resize: signed(25 downto 0);
  signal c_32_0_0_False_shift: signed(25 downto 0);
  signal c_32_12_1_False_resize: signed(25 downto 0);
  signal c_32_12_1_False_shift: signed(25 downto 0);
  signal c_32_sel: std_logic_vector(1 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_i0_resize: signed(25 downto 0);
  signal c_33_i1_resize: signed(25 downto 0);
  signal c_33_i0_shift: signed(25 downto 0);
  signal c_33_i1_shift: signed(25 downto 0);
  signal c_33_arith: signed(25 downto 0);
  signal c_33_oshift: signed(25 downto 0);
  signal c_33_sub_sel: std_logic;
  signal c_34: signed(25 downto 0);
  signal c_34_12_0_False_resize: signed(25 downto 0);
  signal c_34_12_0_False_shift: signed(25 downto 0);
  signal c_34_21_2_False_resize: signed(25 downto 0);
  signal c_34_21_2_False_shift: signed(25 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_9_3_False_resize: signed(25 downto 0);
  signal c_35_9_3_False_shift: signed(25 downto 0);
  signal c_35_0_8_False_resize: signed(25 downto 0);
  signal c_35_0_8_False_shift: signed(25 downto 0);
  signal c_35_30_0_False_resize: signed(25 downto 0);
  signal c_35_30_0_False_shift: signed(25 downto 0);
  signal c_35_sel: std_logic_vector(1 downto 0);
  signal c_36: signed(24 downto 0);
  signal c_36_i0_resize: signed(24 downto 0);
  signal c_36_i1_resize: signed(24 downto 0);
  signal c_36_i0_shift: signed(24 downto 0);
  signal c_36_i1_shift: signed(24 downto 0);
  signal c_36_arith: signed(24 downto 0);
  signal c_36_oshift: signed(24 downto 0);
  signal c_36_sub_sel: std_logic;
  signal c_37: signed(25 downto 0);
  signal c_37_9_3_False_resize: signed(25 downto 0);
  signal c_37_9_3_False_shift: signed(25 downto 0);
  signal c_37_30_0_False_resize: signed(25 downto 0);
  signal c_37_30_0_False_shift: signed(25 downto 0);
  signal c_37_36_0_False_resize: signed(25 downto 0);
  signal c_37_36_0_False_shift: signed(25 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_38_27_0_False_resize: signed(25 downto 0);
  signal c_38_27_0_False_shift: signed(25 downto 0);
  signal c_38_21_0_False_resize: signed(25 downto 0);
  signal c_38_21_0_False_shift: signed(25 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_i0_resize: signed(25 downto 0);
  signal c_39_i1_resize: signed(25 downto 0);
  signal c_39_i0_shift: signed(25 downto 0);
  signal c_39_i1_shift: signed(25 downto 0);
  signal c_39_arith: signed(25 downto 0);
  signal c_39_oshift: signed(25 downto 0);
  signal c_39_sub_sel: std_logic;
  signal c_40: signed(25 downto 0);
  signal c_40_39_2_False_resize: signed(25 downto 0);
  signal c_40_39_2_False_shift: signed(25 downto 0);
  signal c_40_21_0_False_resize: signed(25 downto 0);
  signal c_40_21_0_False_shift: signed(25 downto 0);
  signal c_40_3_0_False_resize: signed(25 downto 0);
  signal c_40_3_0_False_shift: signed(25 downto 0);
  signal c_40_sel: std_logic_vector(1 downto 0);
  signal c_41: signed(24 downto 0);
  signal c_41_9_3_False_resize: signed(24 downto 0);
  signal c_41_9_3_False_shift: signed(24 downto 0);
  signal c_41_12_1_False_resize: signed(24 downto 0);
  signal c_41_12_1_False_shift: signed(24 downto 0);
  signal c_41_33_0_False_resize: signed(24 downto 0);
  signal c_41_33_0_False_shift: signed(24 downto 0);
  signal c_41_sel: std_logic_vector(1 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_42_i0_resize: signed(25 downto 0);
  signal c_42_i1_resize: signed(25 downto 0);
  signal c_42_i0_shift: signed(25 downto 0);
  signal c_42_i1_shift: signed(25 downto 0);
  signal c_42_arith: signed(25 downto 0);
  signal c_42_oshift: signed(25 downto 0);
  signal c_43: signed(24 downto 0);
  signal c_43_0_0_False_resize: signed(24 downto 0);
  signal c_43_0_0_False_shift: signed(24 downto 0);
  signal c_43_12_0_False_resize: signed(24 downto 0);
  signal c_43_12_0_False_shift: signed(24 downto 0);
  signal c_43_3_0_False_resize: signed(24 downto 0);
  signal c_43_3_0_False_shift: signed(24 downto 0);
  signal c_43_sel: std_logic_vector(1 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_44_36_2_False_resize: signed(25 downto 0);
  signal c_44_36_2_False_shift: signed(25 downto 0);
  signal c_44_39_0_False_resize: signed(25 downto 0);
  signal c_44_39_0_False_shift: signed(25 downto 0);
  signal c_44_6_0_False_resize: signed(25 downto 0);
  signal c_44_6_0_False_shift: signed(25 downto 0);
  signal c_44_sel: std_logic_vector(1 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_i0_resize: signed(25 downto 0);
  signal c_45_i1_resize: signed(25 downto 0);
  signal c_45_i0_shift: signed(25 downto 0);
  signal c_45_i1_shift: signed(25 downto 0);
  signal c_45_arith: signed(25 downto 0);
  signal c_45_oshift: signed(25 downto 0);
  signal c_45_sub_sel: std_logic;
  signal c_46: signed(25 downto 0);
  signal c_46_33_0_False_resize: signed(25 downto 0);
  signal c_46_33_0_False_shift: signed(25 downto 0);
  signal c_46_6_1_False_resize: signed(25 downto 0);
  signal c_46_6_1_False_shift: signed(25 downto 0);
  signal c_46_36_1_False_resize: signed(25 downto 0);
  signal c_46_36_1_False_shift: signed(25 downto 0);
  signal c_46_sel: std_logic_vector(1 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_resize: signed(25 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_48_9_0_False_resize: signed(25 downto 0);
  signal c_48_9_0_False_shift: signed(25 downto 0);
  signal c_48_24_2_False_resize: signed(25 downto 0);
  signal c_48_24_2_False_shift: signed(25 downto 0);
  signal c_48_9_2_False_resize: signed(25 downto 0);
  signal c_48_9_2_False_shift: signed(25 downto 0);
  signal c_48_sel: std_logic_vector(1 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_49_resize: signed(25 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_50_27_1_False_resize: signed(25 downto 0);
  signal c_50_27_1_False_shift: signed(25 downto 0);
  signal c_50_45_0_False_resize: signed(25 downto 0);
  signal c_50_45_0_False_shift: signed(25 downto 0);
  signal c_50_30_0_False_resize: signed(25 downto 0);
  signal c_50_30_0_False_shift: signed(25 downto 0);
  signal c_50_sel: std_logic_vector(1 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_51_resize: signed(25 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_52_15_0_False_resize: signed(25 downto 0);
  signal c_52_15_0_False_shift: signed(25 downto 0);
  signal c_52_30_0_False_resize: signed(25 downto 0);
  signal c_52_30_0_False_shift: signed(25 downto 0);
  signal c_52_42_0_False_resize: signed(25 downto 0);
  signal c_52_42_0_False_shift: signed(25 downto 0);
  signal c_52_sel: std_logic_vector(1 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_53_resize: signed(25 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_54_18_1_False_resize: signed(25 downto 0);
  signal c_54_18_1_False_shift: signed(25 downto 0);
  signal c_54_42_0_False_resize: signed(25 downto 0);
  signal c_54_42_0_False_shift: signed(25 downto 0);
  signal c_54_39_3_False_resize: signed(25 downto 0);
  signal c_54_39_3_False_shift: signed(25 downto 0);
  signal c_54_sel: std_logic_vector(1 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_55_resize: signed(25 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_56_36_1_False_resize: signed(25 downto 0);
  signal c_56_36_1_False_shift: signed(25 downto 0);
  signal c_56_36_2_False_resize: signed(25 downto 0);
  signal c_56_36_2_False_shift: signed(25 downto 0);
  signal c_56_18_0_False_resize: signed(25 downto 0);
  signal c_56_18_0_False_shift: signed(25 downto 0);
  signal c_56_sel: std_logic_vector(1 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_57_resize: signed(25 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_58_12_0_False_resize: signed(25 downto 0);
  signal c_58_12_0_False_shift: signed(25 downto 0);
  signal c_58_39_0_False_resize: signed(25 downto 0);
  signal c_58_39_0_False_shift: signed(25 downto 0);
  signal c_58_45_1_False_resize: signed(25 downto 0);
  signal c_58_45_1_False_shift: signed(25 downto 0);
  signal c_58_sel: std_logic_vector(1 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_59_resize: signed(25 downto 0);
  signal c_60: signed(25 downto 0);
  signal c_60_30_0_False_resize: signed(25 downto 0);
  signal c_60_30_0_False_shift: signed(25 downto 0);
  signal c_60_21_2_False_resize: signed(25 downto 0);
  signal c_60_21_2_False_shift: signed(25 downto 0);
  signal c_60_33_0_False_resize: signed(25 downto 0);
  signal c_60_33_0_False_shift: signed(25 downto 0);
  signal c_60_sel: std_logic_vector(1 downto 0);
  signal c_61: signed(25 downto 0);
  signal c_61_resize: signed(25 downto 0);
  signal c_62: signed(25 downto 0);
  signal c_62_27_2_False_resize: signed(25 downto 0);
  signal c_62_27_2_False_shift: signed(25 downto 0);
  signal c_62_33_0_False_resize: signed(25 downto 0);
  signal c_62_33_0_False_shift: signed(25 downto 0);
  signal c_62_45_2_False_resize: signed(25 downto 0);
  signal c_62_45_2_False_shift: signed(25 downto 0);
  signal c_62_sel: std_logic_vector(1 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_63_resize: signed(25 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_64_42_0_False_resize: signed(25 downto 0);
  signal c_64_42_0_False_shift: signed(25 downto 0);
  signal c_64_27_0_False_resize: signed(25 downto 0);
  signal c_64_27_0_False_shift: signed(25 downto 0);
  signal c_64_39_0_False_resize: signed(25 downto 0);
  signal c_64_39_0_False_shift: signed(25 downto 0);
  signal c_64_sel: std_logic_vector(1 downto 0);
  signal c_65: signed(25 downto 0);
  signal c_65_resize: signed(25 downto 0);
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
  -- output node 1 with id 49
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_49);
    end if;
  end process;
  -- output node 2 with id 51
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_51);
    end if;
  end process;
  -- output node 3 with id 53
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_53);
    end if;
  end process;
  -- output node 4 with id 55
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_55);
    end if;
  end process;
  -- output node 5 with id 57
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_57);
    end if;
  end process;
  -- output node 6 with id 59
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_59);
    end if;
  end process;
  -- output node 7 with id 61
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_61);
    end if;
  end process;
  -- output node 8 with id 63
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_63);
    end if;
  end process;
  -- output node 9 with id 65
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_65);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [32], [1]]
  c_1_0_0_False_resize <= resize(c_0, 21);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_5_False_resize <= resize(c_0, 21);
  c_1_0_5_False_shift <= shift_left(c_1_0_5_False_resize, 5);
  with config_select_1 select c_1_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "0",
    c_1_0_5_False_shift when others;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[8], [1], [4]]
  c_2_0_0_False_resize <= resize(c_0, 19);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_3_False_resize <= resize(c_0, 19);
  c_2_0_3_False_shift <= shift_left(c_2_0_3_False_resize, 3);
  c_2_0_2_False_resize <= resize(c_0, 19);
  c_2_0_2_False_shift <= shift_left(c_2_0_2_False_resize, 2);
  with config_select_1 select c_2_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_2_sel select c_2 <=
    c_2_0_0_False_shift when "00",
    c_2_0_3_False_shift when "01",
    c_2_0_2_False_shift when others;
  -- node of type 'sub' in stage 2 with id 3 and associated fundamentals [[-7], [31], [-3]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 19,
      w_o => 21,
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
  c_3 <= c_3_oshift(20 downto 0);
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[2], [31], [-24]]
  c_4_0_1_False_resize <= resize(c_0, 21);
  c_4_0_1_False_shift <= shift_left(c_4_0_1_False_resize, 1);
  c_4_3_0_False_resize <= c_3;
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  c_4_3_3_False_resize <= c_3;
  c_4_3_3_False_shift <= shift_left(c_4_3_3_False_resize, 3);
  with config_select_3 select c_4_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_4_sel select c_4 <=
    c_4_0_1_False_shift when "00",
    c_4_3_0_False_shift when "01",
    c_4_3_3_False_shift when others;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[128], [992], [1]]
  c_5_0_7_False_resize <= resize(c_0, 26);
  c_5_0_7_False_shift <= shift_left(c_5_0_7_False_resize, 7);
  c_5_3_5_False_resize <= resize(c_3, 26);
  c_5_3_5_False_shift <= shift_left(c_5_3_5_False_resize, 5);
  c_5_0_0_False_resize <= resize(c_0, 26);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  with config_select_3 select c_5_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_5_sel select c_5 <=
    c_5_0_7_False_shift when "00",
    c_5_3_5_False_shift when "01",
    c_5_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 6 and associated fundamentals [[130], [-961], [-25]]
  with config_select_4 select c_6_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 21,
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
      sub_i => c_6_sub_sel,
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(25 downto 0);
  -- node of type 'mux' in stage 5 with id 7 and associated fundamentals [[-7], [4], [-25]]
  c_7_3_0_False_resize <= c_3;
  c_7_3_0_False_shift <= shift_left(c_7_3_0_False_resize, 0);
  c_7_0_2_False_resize <= resize(c_0, 21);
  c_7_0_2_False_shift <= shift_left(c_7_0_2_False_resize, 2);
  c_7_6_0_False_resize <= c_6(20 downto 0);
  c_7_6_0_False_shift <= shift_left(c_7_6_0_False_resize, 0);
  with config_select_5 select c_7_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_7_sel select c_7 <=
    c_7_3_0_False_shift when "00",
    c_7_0_2_False_shift when "01",
    c_7_6_0_False_shift when others;
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[32], [1], [64]]
  c_8_0_0_False_resize <= resize(c_0, 22);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  c_8_0_5_False_resize <= resize(c_0, 22);
  c_8_0_5_False_shift <= shift_left(c_8_0_5_False_resize, 5);
  c_8_0_6_False_resize <= resize(c_0, 22);
  c_8_0_6_False_shift <= shift_left(c_8_0_6_False_resize, 6);
  with config_select_1 select c_8_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_8_sel select c_8 <=
    c_8_0_0_False_shift when "00",
    c_8_0_5_False_shift when "01",
    c_8_0_6_False_shift when others;
  -- node of type 'sub' in stage 6 with id 9 and associated fundamentals [[-39], [3], [-89]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 22,
      w_o => 23,
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
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(22 downto 0);
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[1], [248], [256]]
  c_10_0_8_False_resize <= resize(c_0, 24);
  c_10_0_8_False_shift <= shift_left(c_10_0_8_False_resize, 8);
  c_10_3_3_False_resize <= resize(c_3, 24);
  c_10_3_3_False_shift <= shift_left(c_10_3_3_False_resize, 3);
  c_10_0_0_False_resize <= resize(c_0, 24);
  c_10_0_0_False_shift <= shift_left(c_10_0_0_False_resize, 0);
  with config_select_3 select c_10_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_10_sel select c_10 <=
    c_10_0_8_False_shift when "00",
    c_10_3_3_False_shift when "01",
    c_10_0_0_False_shift when others;
  -- node of type 'mux' in stage 7 with id 11 and associated fundamentals [[-39], [3], [32]]
  c_11_9_0_False_resize <= c_9(21 downto 0);
  c_11_9_0_False_shift <= shift_left(c_11_9_0_False_resize, 0);
  c_11_0_5_False_resize <= resize(c_0, 22);
  c_11_0_5_False_shift <= shift_left(c_11_0_5_False_resize, 5);
  with config_select_7 select c_11_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_9_0_False_shift when "0",
    c_11_0_5_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 12 and associated fundamentals [[41], [499], [480]]
  with config_select_8 select c_12_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
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
      sub_i => c_12_sub_sel,
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(24 downto 0);
  -- node of type 'mux' in stage 7 with id 13 and associated fundamentals [[520], [3], [-3]]
  c_13_9_0_False_resize <= resize(c_9, 26);
  c_13_9_0_False_shift <= shift_left(c_13_9_0_False_resize, 0);
  c_13_6_2_False_resize <= c_6;
  c_13_6_2_False_shift <= shift_left(c_13_6_2_False_resize, 2);
  c_13_3_0_False_resize <= resize(c_3, 26);
  c_13_3_0_False_shift <= shift_left(c_13_3_0_False_resize, 0);
  with config_select_7 select c_13_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_13_sel select c_13 <=
    c_13_9_0_False_shift when "00",
    c_13_6_2_False_shift when "01",
    c_13_3_0_False_shift when others;
  -- node of type 'mux' in stage 9 with id 14 and associated fundamentals [[328], [3], [64]]
  c_14_12_3_False_resize <= c_12;
  c_14_12_3_False_shift <= shift_left(c_14_12_3_False_resize, 3);
  c_14_9_0_False_resize <= resize(c_9, 25);
  c_14_9_0_False_shift <= shift_left(c_14_9_0_False_resize, 0);
  c_14_0_6_False_resize <= resize(c_0, 25);
  c_14_0_6_False_shift <= shift_left(c_14_0_6_False_resize, 6);
  with config_select_9 select c_14_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_14_sel select c_14 <=
    c_14_12_3_False_shift when "00",
    c_14_9_0_False_shift when "01",
    c_14_0_6_False_shift when others;
  -- node of type 'sub' in stage 10 with id 15 and associated fundamentals [[-792], [-9], [-259]]
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
      w_o => 26,
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
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(25 downto 0);
  -- node of type 'mux' in stage 11 with id 16 and associated fundamentals [[-39], [-18], [-89]]
  c_16_9_0_False_resize <= c_9;
  c_16_9_0_False_shift <= shift_left(c_16_9_0_False_resize, 0);
  c_16_15_1_False_resize <= c_15(22 downto 0);
  c_16_15_1_False_shift <= shift_left(c_16_15_1_False_resize, 1);
  with config_select_11 select c_16_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_9_0_False_shift when "0",
    c_16_15_1_False_shift when others;
  -- node of type 'mux' in stage 3 with id 17 and associated fundamentals [[-7], [124], [1]]
  c_17_0_0_False_resize <= resize(c_0, 23);
  c_17_0_0_False_shift <= shift_left(c_17_0_0_False_resize, 0);
  c_17_3_0_False_resize <= resize(c_3, 23);
  c_17_3_0_False_shift <= shift_left(c_17_3_0_False_resize, 0);
  c_17_3_2_False_resize <= resize(c_3, 23);
  c_17_3_2_False_shift <= shift_left(c_17_3_2_False_resize, 2);
  with config_select_3 select c_17_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_17_sel select c_17 <=
    c_17_0_0_False_shift when "00",
    c_17_3_0_False_shift when "01",
    c_17_3_2_False_shift when others;
  -- node of type 'add_sub' in stage 12 with id 18 and associated fundamentals [[-53], [-266], [-91]]
  with config_select_12 select c_18_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
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
      sub_i => c_18_sub_sel,
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  c_18 <= c_18_oshift(24 downto 0);
  -- node of type 'mux' in stage 13 with id 19 and associated fundamentals [[-53], [3], [-12]]
  c_19_3_2_False_resize <= resize(c_3, 22);
  c_19_3_2_False_shift <= shift_left(c_19_3_2_False_resize, 2);
  c_19_9_0_False_resize <= c_9(21 downto 0);
  c_19_9_0_False_shift <= shift_left(c_19_9_0_False_resize, 0);
  c_19_18_0_False_resize <= c_18(21 downto 0);
  c_19_18_0_False_shift <= shift_left(c_19_18_0_False_resize, 0);
  with config_select_13 select c_19_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_19_sel select c_19 <=
    c_19_3_2_False_shift when "00",
    c_19_9_0_False_shift when "01",
    c_19_18_0_False_shift when others;
  -- node of type 'mux' in stage 11 with id 20 and associated fundamentals [[-14], [-18], [-3]]
  c_20_15_1_False_resize <= c_15(20 downto 0);
  c_20_15_1_False_shift <= shift_left(c_20_15_1_False_resize, 1);
  c_20_3_0_False_resize <= c_3;
  c_20_3_0_False_shift <= shift_left(c_20_3_0_False_resize, 0);
  c_20_3_1_False_resize <= c_3;
  c_20_3_1_False_shift <= shift_left(c_20_3_1_False_resize, 1);
  with config_select_11 select c_20_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_20_sel select c_20 <=
    c_20_15_1_False_shift when "00",
    c_20_3_0_False_shift when "01",
    c_20_3_1_False_shift when others;
  -- node of type 'add_sub' in stage 14 with id 21 and associated fundamentals [[-834], [66], [-195]]
  with config_select_14 select c_21_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 21,
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
      sub_i => c_21_sub_sel,
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  c_21 <= c_21_oshift(25 downto 0);
  -- node of type 'mux' in stage 11 with id 22 and associated fundamentals [[1040], [-144], [-25]]
  c_22_6_3_False_resize <= resize(c_6, 27);
  c_22_6_3_False_shift <= shift_left(c_22_6_3_False_resize, 3);
  c_22_6_0_False_resize <= resize(c_6, 27);
  c_22_6_0_False_shift <= shift_left(c_22_6_0_False_resize, 0);
  c_22_15_4_False_resize <= resize(c_15, 27);
  c_22_15_4_False_shift <= shift_left(c_22_15_4_False_resize, 4);
  with config_select_11 select c_22_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_22_sel select c_22 <=
    c_22_6_3_False_shift when "00",
    c_22_6_0_False_shift when "01",
    c_22_15_4_False_shift when others;
  -- node of type 'mux' in stage 9 with id 23 and associated fundamentals [[41], [1], [-96]]
  c_23_0_0_False_resize <= resize(c_0, 23);
  c_23_0_0_False_shift <= shift_left(c_23_0_0_False_resize, 0);
  c_23_12_0_False_resize <= c_12(22 downto 0);
  c_23_12_0_False_shift <= shift_left(c_23_12_0_False_resize, 0);
  c_23_3_5_False_resize <= resize(c_3, 23);
  c_23_3_5_False_shift <= shift_left(c_23_3_5_False_resize, 5);
  with config_select_9 select c_23_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_23_sel select c_23 <=
    c_23_0_0_False_shift when "00",
    c_23_12_0_False_shift when "01",
    c_23_3_5_False_shift when others;
  -- node of type 'add_sub' in stage 12 with id 24 and associated fundamentals [[1081], [-143], [71]]
  with config_select_12 select c_24_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 23,
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
      sub_i => c_24_sub_sel,
      x_i => c_22,
      y_i => c_23,
      z_o => c_24_oshift
    );
  c_24 <= c_24_oshift(26 downto 0);
  -- node of type 'mux' in stage 13 with id 25 and associated fundamentals [[-792], [3], [-91]]
  c_25_18_0_False_resize <= resize(c_18, 26);
  c_25_18_0_False_shift <= shift_left(c_25_18_0_False_resize, 0);
  c_25_9_0_False_resize <= resize(c_9, 26);
  c_25_9_0_False_shift <= shift_left(c_25_9_0_False_resize, 0);
  c_25_15_0_False_resize <= c_15;
  c_25_15_0_False_shift <= shift_left(c_25_15_0_False_resize, 0);
  with config_select_13 select c_25_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_25_sel select c_25 <=
    c_25_18_0_False_shift when "00",
    c_25_9_0_False_shift when "01",
    c_25_15_0_False_shift when others;
  -- node of type 'mux' in stage 13 with id 26 and associated fundamentals [[130], [-143], [-91]]
  c_26_18_0_False_resize <= c_18(23 downto 0);
  c_26_18_0_False_shift <= shift_left(c_26_18_0_False_resize, 0);
  c_26_6_0_False_resize <= c_6(23 downto 0);
  c_26_6_0_False_shift <= shift_left(c_26_6_0_False_resize, 0);
  c_26_24_0_False_resize <= c_24(23 downto 0);
  c_26_24_0_False_shift <= shift_left(c_26_24_0_False_resize, 0);
  with config_select_13 select c_26_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_26_sel select c_26 <=
    c_26_18_0_False_shift when "00",
    c_26_6_0_False_shift when "01",
    c_26_24_0_False_shift when others;
  -- node of type 'add_sub' in stage 14 with id 27 and associated fundamentals [[-461], [73], [-91]]
  with config_select_14 select c_27_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 1,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_27_sub_sel,
      x_i => c_25,
      y_i => c_26,
      z_o => c_27_oshift
    );
  c_27 <= c_27_oshift(24 downto 0);
  -- node of type 'mux' in stage 5 with id 28 and associated fundamentals [[130], [-961], [-3]]
  c_28_6_0_False_resize <= c_6;
  c_28_6_0_False_shift <= shift_left(c_28_6_0_False_resize, 0);
  c_28_3_0_False_resize <= resize(c_3, 26);
  c_28_3_0_False_shift <= shift_left(c_28_3_0_False_resize, 0);
  with config_select_5 select c_28_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_28_sel select c_28 <=
    c_28_6_0_False_shift when "0",
    c_28_3_0_False_shift when others;
  -- node of type 'mux' in stage 13 with id 29 and associated fundamentals [[1081], [768], [568]]
  c_29_24_0_False_resize <= c_24;
  c_29_24_0_False_shift <= shift_left(c_29_24_0_False_resize, 0);
  c_29_24_3_False_resize <= c_24;
  c_29_24_3_False_shift <= shift_left(c_29_24_3_False_resize, 3);
  c_29_9_8_False_resize <= resize(c_9, 27);
  c_29_9_8_False_shift <= shift_left(c_29_9_8_False_resize, 8);
  with config_select_13 select c_29_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_29_sel select c_29 <=
    c_29_24_0_False_shift when "00",
    c_29_24_3_False_shift when "01",
    c_29_9_8_False_shift when others;
  -- node of type 'add_sub' in stage 14 with id 30 and associated fundamentals [[-951], [-193], [565]]
  with config_select_14 select c_30_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 27,
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
      sub_i => c_30_sub_sel,
      x_i => c_28,
      y_i => c_29,
      z_o => c_30_oshift
    );
  c_30 <= c_30_oshift(25 downto 0);
  -- node of type 'mux' in stage 15 with id 31 and associated fundamentals [[-922], [128], [480]]
  c_31_12_0_False_resize <= resize(c_12, 26);
  c_31_12_0_False_shift <= shift_left(c_31_12_0_False_resize, 0);
  c_31_0_7_False_resize <= resize(c_0, 26);
  c_31_0_7_False_shift <= shift_left(c_31_0_7_False_resize, 7);
  c_31_27_1_False_resize <= resize(c_27, 26);
  c_31_27_1_False_shift <= shift_left(c_31_27_1_False_resize, 1);
  with config_select_15 select c_31_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_31_sel select c_31 <=
    c_31_12_0_False_shift when "00",
    c_31_0_7_False_shift when "01",
    c_31_27_1_False_shift when others;
  -- node of type 'mux' in stage 9 with id 32 and associated fundamentals [[164], [998], [1]]
  c_32_12_2_False_resize <= resize(c_12, 26);
  c_32_12_2_False_shift <= shift_left(c_32_12_2_False_resize, 2);
  c_32_0_0_False_resize <= resize(c_0, 26);
  c_32_0_0_False_shift <= shift_left(c_32_0_0_False_resize, 0);
  c_32_12_1_False_resize <= resize(c_12, 26);
  c_32_12_1_False_shift <= shift_left(c_32_12_1_False_resize, 1);
  with config_select_9 select c_32_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_32_sel select c_32 <=
    c_32_12_2_False_shift when "00",
    c_32_0_0_False_shift when "01",
    c_32_12_1_False_shift when others;
  -- node of type 'add_sub' in stage 16 with id 33 and associated fundamentals [[-758], [-870], [479]]
  with config_select_16 select c_33_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_33: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_33_sub_sel,
      x_i => c_31,
      y_i => c_32,
      z_o => c_33_oshift
    );
  c_33 <= c_33_oshift(25 downto 0);
  -- node of type 'mux' in stage 15 with id 34 and associated fundamentals [[41], [499], [-780]]
  c_34_12_0_False_resize <= resize(c_12, 26);
  c_34_12_0_False_shift <= shift_left(c_34_12_0_False_resize, 0);
  c_34_21_2_False_resize <= c_21;
  c_34_21_2_False_shift <= shift_left(c_34_21_2_False_resize, 2);
  with config_select_15 select c_34_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_34_sel select c_34 <=
    c_34_12_0_False_shift when "0",
    c_34_21_2_False_shift when others;
  -- node of type 'mux' in stage 15 with id 35 and associated fundamentals [[256], [24], [565]]
  c_35_9_3_False_resize <= resize(c_9, 26);
  c_35_9_3_False_shift <= shift_left(c_35_9_3_False_resize, 3);
  c_35_0_8_False_resize <= resize(c_0, 26);
  c_35_0_8_False_shift <= shift_left(c_35_0_8_False_resize, 8);
  c_35_30_0_False_resize <= c_30;
  c_35_30_0_False_shift <= shift_left(c_35_30_0_False_resize, 0);
  with config_select_15 select c_35_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_35_sel select c_35 <=
    c_35_9_3_False_shift when "00",
    c_35_0_8_False_shift when "01",
    c_35_30_0_False_shift when others;
  -- node of type 'add_sub' in stage 16 with id 36 and associated fundamentals [[-215], [475], [-215]]
  with config_select_16 select c_36_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_36: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_36_sub_sel,
      x_i => c_34,
      y_i => c_35,
      z_o => c_36_oshift
    );
  c_36 <= c_36_oshift(24 downto 0);
  -- node of type 'mux' in stage 17 with id 37 and associated fundamentals [[-215], [-193], [-712]]
  c_37_9_3_False_resize <= resize(c_9, 26);
  c_37_9_3_False_shift <= shift_left(c_37_9_3_False_resize, 3);
  c_37_30_0_False_resize <= c_30;
  c_37_30_0_False_shift <= shift_left(c_37_30_0_False_resize, 0);
  c_37_36_0_False_resize <= resize(c_36, 26);
  c_37_36_0_False_shift <= shift_left(c_37_36_0_False_resize, 0);
  with config_select_17 select c_37_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_37_sel select c_37 <=
    c_37_9_3_False_shift when "00",
    c_37_30_0_False_shift when "01",
    c_37_36_0_False_shift when others;
  -- node of type 'mux' in stage 15 with id 38 and associated fundamentals [[-834], [66], [-91]]
  c_38_27_0_False_resize <= resize(c_27, 26);
  c_38_27_0_False_shift <= shift_left(c_38_27_0_False_resize, 0);
  c_38_21_0_False_resize <= c_21;
  c_38_21_0_False_shift <= shift_left(c_38_21_0_False_resize, 0);
  with config_select_15 select c_38_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_38_sel select c_38 <=
    c_38_27_0_False_shift when "0",
    c_38_21_0_False_shift when others;
  -- node of type 'add_sub' in stage 18 with id 39 and associated fundamentals [[619], [-127], [-621]]
  with config_select_18 select c_39_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_39: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_39_sub_sel,
      x_i => c_37,
      y_i => c_38,
      z_o => c_39_oshift
    );
  c_39 <= c_39_oshift(25 downto 0);
  -- node of type 'mux' in stage 19 with id 40 and associated fundamentals [[-834], [-508], [-3]]
  c_40_39_2_False_resize <= c_39;
  c_40_39_2_False_shift <= shift_left(c_40_39_2_False_resize, 2);
  c_40_21_0_False_resize <= c_21;
  c_40_21_0_False_shift <= shift_left(c_40_21_0_False_resize, 0);
  c_40_3_0_False_resize <= resize(c_3, 26);
  c_40_3_0_False_shift <= shift_left(c_40_3_0_False_resize, 0);
  with config_select_19 select c_40_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_40_sel select c_40 <=
    c_40_39_2_False_shift when "00",
    c_40_21_0_False_shift when "01",
    c_40_3_0_False_shift when others;
  -- node of type 'mux' in stage 17 with id 41 and associated fundamentals [[82], [24], [479]]
  c_41_9_3_False_resize <= resize(c_9, 25);
  c_41_9_3_False_shift <= shift_left(c_41_9_3_False_resize, 3);
  c_41_12_1_False_resize <= c_12;
  c_41_12_1_False_shift <= shift_left(c_41_12_1_False_resize, 1);
  c_41_33_0_False_resize <= c_33(24 downto 0);
  c_41_33_0_False_shift <= shift_left(c_41_33_0_False_resize, 0);
  with config_select_17 select c_41_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_41_sel select c_41 <=
    c_41_9_3_False_shift when "00",
    c_41_12_1_False_shift when "01",
    c_41_33_0_False_shift when others;
  -- node of type 'sub' in stage 20 with id 42 and associated fundamentals [[-998], [-556], [-961]]
  inst_adder_node_42: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
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
      x_i => c_40,
      y_i => c_41,
      z_o => c_42_oshift
    );
  c_42 <= c_42_oshift(25 downto 0);
  -- node of type 'mux' in stage 9 with id 43 and associated fundamentals [[-7], [1], [480]]
  c_43_0_0_False_resize <= resize(c_0, 25);
  c_43_0_0_False_shift <= shift_left(c_43_0_0_False_resize, 0);
  c_43_12_0_False_resize <= c_12;
  c_43_12_0_False_shift <= shift_left(c_43_12_0_False_resize, 0);
  c_43_3_0_False_resize <= resize(c_3, 25);
  c_43_3_0_False_shift <= shift_left(c_43_3_0_False_resize, 0);
  with config_select_9 select c_43_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_43_sel select c_43 <=
    c_43_0_0_False_shift when "00",
    c_43_12_0_False_shift when "01",
    c_43_3_0_False_shift when others;
  -- node of type 'mux' in stage 19 with id 44 and associated fundamentals [[-860], [-127], [-25]]
  c_44_36_2_False_resize <= resize(c_36, 26);
  c_44_36_2_False_shift <= shift_left(c_44_36_2_False_resize, 2);
  c_44_39_0_False_resize <= c_39;
  c_44_39_0_False_shift <= shift_left(c_44_39_0_False_resize, 0);
  c_44_6_0_False_resize <= c_6;
  c_44_6_0_False_shift <= shift_left(c_44_6_0_False_resize, 0);
  with config_select_19 select c_44_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_44_sel select c_44 <=
    c_44_36_2_False_shift when "00",
    c_44_39_0_False_shift when "01",
    c_44_6_0_False_shift when others;
  -- node of type 'add_sub' in stage 20 with id 45 and associated fundamentals [[853], [-126], [505]]
  with config_select_20 select c_45_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_45: entity work.adder_node
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
      sub_i => c_45_sub_sel,
      x_i => c_43,
      y_i => c_44,
      z_o => c_45_oshift
    );
  c_45 <= c_45_oshift(25 downto 0);
  -- node of type 'mux' in stage 17 with id 46 and associated fundamentals [[260], [950], [479]]
  c_46_33_0_False_resize <= c_33;
  c_46_33_0_False_shift <= shift_left(c_46_33_0_False_resize, 0);
  c_46_6_1_False_resize <= c_6;
  c_46_6_1_False_shift <= shift_left(c_46_6_1_False_resize, 1);
  c_46_36_1_False_resize <= resize(c_36, 26);
  c_46_36_1_False_shift <= shift_left(c_46_36_1_False_resize, 1);
  with config_select_17 select c_46_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_46_sel select c_46 <=
    c_46_33_0_False_shift when "00",
    c_46_6_1_False_shift when "01",
    c_46_36_1_False_shift when others;
  -- node of type 'output' in stage 17 with id 47 and associated fundamentals [[260], [950], [479]]
  c_47_resize <= c_46;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'mux' in stage 13 with id 48 and associated fundamentals [[-39], [-572], [-356]]
  c_48_9_0_False_resize <= resize(c_9, 26);
  c_48_9_0_False_shift <= shift_left(c_48_9_0_False_resize, 0);
  c_48_24_2_False_resize <= c_24(25 downto 0);
  c_48_24_2_False_shift <= shift_left(c_48_24_2_False_resize, 2);
  c_48_9_2_False_resize <= resize(c_9, 26);
  c_48_9_2_False_shift <= shift_left(c_48_9_2_False_resize, 2);
  with config_select_13 select c_48_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_48_sel select c_48 <=
    c_48_9_0_False_shift when "00",
    c_48_24_2_False_shift when "01",
    c_48_9_2_False_shift when others;
  -- node of type 'output' in stage 13 with id 49 and associated fundamentals [[39], [572], [356]]
  c_49_resize <= c_48;
  c_49 <= -shift_left(c_49_resize, 0);
  -- node of type 'mux' in stage 21 with id 50 and associated fundamentals [[853], [146], [565]]
  c_50_27_1_False_resize <= resize(c_27, 26);
  c_50_27_1_False_shift <= shift_left(c_50_27_1_False_resize, 1);
  c_50_45_0_False_resize <= c_45;
  c_50_45_0_False_shift <= shift_left(c_50_45_0_False_resize, 0);
  c_50_30_0_False_resize <= c_30;
  c_50_30_0_False_shift <= shift_left(c_50_30_0_False_resize, 0);
  with config_select_21 select c_50_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_50_sel select c_50 <=
    c_50_27_1_False_shift when "00",
    c_50_45_0_False_shift when "01",
    c_50_30_0_False_shift when others;
  -- node of type 'output' in stage 21 with id 51 and associated fundamentals [[853], [146], [565]]
  c_51_resize <= c_50;
  c_51 <= shift_left(c_51_resize, 0);
  -- node of type 'mux' in stage 21 with id 52 and associated fundamentals [[-998], [-193], [-259]]
  c_52_15_0_False_resize <= c_15;
  c_52_15_0_False_shift <= shift_left(c_52_15_0_False_resize, 0);
  c_52_30_0_False_resize <= c_30;
  c_52_30_0_False_shift <= shift_left(c_52_30_0_False_resize, 0);
  c_52_42_0_False_resize <= c_42;
  c_52_42_0_False_shift <= shift_left(c_52_42_0_False_resize, 0);
  with config_select_21 select c_52_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_52_sel select c_52 <=
    c_52_15_0_False_shift when "00",
    c_52_30_0_False_shift when "01",
    c_52_42_0_False_shift when others;
  -- node of type 'output' in stage 21 with id 53 and associated fundamentals [[998], [193], [259]]
  c_53_resize <= c_52;
  c_53 <= -shift_left(c_53_resize, 0);
  -- node of type 'mux' in stage 21 with id 54 and associated fundamentals [[-106], [-1016], [-961]]
  c_54_18_1_False_resize <= resize(c_18, 26);
  c_54_18_1_False_shift <= shift_left(c_54_18_1_False_resize, 1);
  c_54_42_0_False_resize <= c_42;
  c_54_42_0_False_shift <= shift_left(c_54_42_0_False_resize, 0);
  c_54_39_3_False_resize <= c_39;
  c_54_39_3_False_shift <= shift_left(c_54_39_3_False_resize, 3);
  with config_select_21 select c_54_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_54_sel select c_54 <=
    c_54_18_1_False_shift when "00",
    c_54_42_0_False_shift when "01",
    c_54_39_3_False_shift when others;
  -- node of type 'output' in stage 21 with id 55 and associated fundamentals [[106], [1016], [961]]
  c_55_resize <= c_54;
  c_55 <= -shift_left(c_55_resize, 0);
  -- node of type 'mux' in stage 17 with id 56 and associated fundamentals [[-860], [-266], [-430]]
  c_56_36_1_False_resize <= resize(c_36, 26);
  c_56_36_1_False_shift <= shift_left(c_56_36_1_False_resize, 1);
  c_56_36_2_False_resize <= resize(c_36, 26);
  c_56_36_2_False_shift <= shift_left(c_56_36_2_False_resize, 2);
  c_56_18_0_False_resize <= resize(c_18, 26);
  c_56_18_0_False_shift <= shift_left(c_56_18_0_False_resize, 0);
  with config_select_17 select c_56_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_56_sel select c_56 <=
    c_56_36_1_False_shift when "00",
    c_56_36_2_False_shift when "01",
    c_56_18_0_False_shift when others;
  -- node of type 'output' in stage 17 with id 57 and associated fundamentals [[860], [266], [430]]
  c_57_resize <= c_56;
  c_57 <= -shift_left(c_57_resize, 0);
  -- node of type 'mux' in stage 21 with id 58 and associated fundamentals [[619], [499], [1010]]
  c_58_12_0_False_resize <= resize(c_12, 26);
  c_58_12_0_False_shift <= shift_left(c_58_12_0_False_resize, 0);
  c_58_39_0_False_resize <= c_39;
  c_58_39_0_False_shift <= shift_left(c_58_39_0_False_resize, 0);
  c_58_45_1_False_resize <= c_45;
  c_58_45_1_False_shift <= shift_left(c_58_45_1_False_resize, 1);
  with config_select_21 select c_58_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_58_sel select c_58 <=
    c_58_12_0_False_shift when "00",
    c_58_39_0_False_shift when "01",
    c_58_45_1_False_shift when others;
  -- node of type 'output' in stage 21 with id 59 and associated fundamentals [[619], [499], [1010]]
  c_59_resize <= c_58;
  c_59 <= shift_left(c_59_resize, 0);
  -- node of type 'mux' in stage 17 with id 60 and associated fundamentals [[-951], [-870], [-780]]
  c_60_30_0_False_resize <= c_30;
  c_60_30_0_False_shift <= shift_left(c_60_30_0_False_resize, 0);
  c_60_21_2_False_resize <= c_21;
  c_60_21_2_False_shift <= shift_left(c_60_21_2_False_resize, 2);
  c_60_33_0_False_resize <= c_33;
  c_60_33_0_False_shift <= shift_left(c_60_33_0_False_resize, 0);
  with config_select_17 select c_60_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_60_sel select c_60 <=
    c_60_30_0_False_shift when "00",
    c_60_21_2_False_shift when "01",
    c_60_33_0_False_shift when others;
  -- node of type 'output' in stage 17 with id 61 and associated fundamentals [[951], [870], [780]]
  c_61_resize <= c_60;
  c_61 <= -shift_left(c_61_resize, 0);
  -- node of type 'mux' in stage 21 with id 62 and associated fundamentals [[-758], [-504], [-364]]
  c_62_27_2_False_resize <= resize(c_27, 26);
  c_62_27_2_False_shift <= shift_left(c_62_27_2_False_resize, 2);
  c_62_33_0_False_resize <= c_33;
  c_62_33_0_False_shift <= shift_left(c_62_33_0_False_resize, 0);
  c_62_45_2_False_resize <= c_45;
  c_62_45_2_False_shift <= shift_left(c_62_45_2_False_resize, 2);
  with config_select_21 select c_62_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_62_sel select c_62 <=
    c_62_27_2_False_shift when "00",
    c_62_33_0_False_shift when "01",
    c_62_45_2_False_shift when others;
  -- node of type 'output' in stage 21 with id 63 and associated fundamentals [[758], [504], [364]]
  c_63_resize <= c_62;
  c_63 <= -shift_left(c_63_resize, 0);
  -- node of type 'mux' in stage 21 with id 64 and associated fundamentals [[-461], [-556], [-621]]
  c_64_42_0_False_resize <= c_42;
  c_64_42_0_False_shift <= shift_left(c_64_42_0_False_resize, 0);
  c_64_27_0_False_resize <= resize(c_27, 26);
  c_64_27_0_False_shift <= shift_left(c_64_27_0_False_resize, 0);
  c_64_39_0_False_resize <= c_39;
  c_64_39_0_False_shift <= shift_left(c_64_39_0_False_resize, 0);
  with config_select_21 select c_64_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_64_sel select c_64 <=
    c_64_42_0_False_shift when "00",
    c_64_27_0_False_shift when "01",
    c_64_39_0_False_shift when others;
  -- node of type 'output' in stage 21 with id 65 and associated fundamentals [[461], [556], [621]]
  c_65_resize <= c_64;
  c_65 <= -shift_left(c_65_resize, 0);
end architecture;
