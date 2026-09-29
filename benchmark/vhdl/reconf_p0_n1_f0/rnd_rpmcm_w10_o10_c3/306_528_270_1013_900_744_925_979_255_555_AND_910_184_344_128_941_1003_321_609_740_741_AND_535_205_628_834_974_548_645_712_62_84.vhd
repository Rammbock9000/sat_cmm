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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_0_0_False_resize: signed(19 downto 0);
  signal c_1_0_0_False_shift: signed(19 downto 0);
  signal c_1_0_3_False_resize: signed(19 downto 0);
  signal c_1_0_3_False_shift: signed(19 downto 0);
  signal c_1_0_4_False_resize: signed(19 downto 0);
  signal c_1_0_4_False_shift: signed(19 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(20 downto 0);
  signal c_2_0_0_False_resize: signed(20 downto 0);
  signal c_2_0_0_False_shift: signed(20 downto 0);
  signal c_2_0_5_False_resize: signed(20 downto 0);
  signal c_2_0_5_False_shift: signed(20 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(20 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(22 downto 0);
  signal c_4_0_4_False_resize: signed(22 downto 0);
  signal c_4_0_4_False_shift: signed(22 downto 0);
  signal c_4_3_0_False_resize: signed(22 downto 0);
  signal c_4_3_0_False_shift: signed(22 downto 0);
  signal c_4_3_2_False_resize: signed(22 downto 0);
  signal c_4_3_2_False_shift: signed(22 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(24 downto 0);
  signal c_5_0_9_False_resize: signed(24 downto 0);
  signal c_5_0_9_False_shift: signed(24 downto 0);
  signal c_5_3_0_False_resize: signed(24 downto 0);
  signal c_5_3_0_False_shift: signed(24 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(25 downto 0);
  signal c_6_i0_resize: signed(25 downto 0);
  signal c_6_i1_resize: signed(25 downto 0);
  signal c_6_i0_shift: signed(25 downto 0);
  signal c_6_i1_shift: signed(25 downto 0);
  signal c_6_arith: signed(25 downto 0);
  signal c_6_oshift: signed(25 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(24 downto 0);
  signal c_7_6_5_False_resize: signed(24 downto 0);
  signal c_7_6_5_False_shift: signed(24 downto 0);
  signal c_7_0_1_False_resize: signed(24 downto 0);
  signal c_7_0_1_False_shift: signed(24 downto 0);
  signal c_7_3_0_False_resize: signed(24 downto 0);
  signal c_7_3_0_False_shift: signed(24 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_8_3_1_False_resize: signed(23 downto 0);
  signal c_8_3_1_False_shift: signed(23 downto 0);
  signal c_8_3_3_False_resize: signed(23 downto 0);
  signal c_8_3_3_False_shift: signed(23 downto 0);
  signal c_8_6_0_False_resize: signed(23 downto 0);
  signal c_8_6_0_False_shift: signed(23 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(24 downto 0);
  signal c_9_i0_resize: signed(24 downto 0);
  signal c_9_i1_resize: signed(24 downto 0);
  signal c_9_i0_shift: signed(24 downto 0);
  signal c_9_i1_shift: signed(24 downto 0);
  signal c_9_arith: signed(24 downto 0);
  signal c_9_oshift: signed(24 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(18 downto 0);
  signal c_10_0_3_False_resize: signed(18 downto 0);
  signal c_10_0_3_False_shift: signed(18 downto 0);
  signal c_10_3_0_False_resize: signed(18 downto 0);
  signal c_10_3_0_False_shift: signed(18 downto 0);
  signal c_10_0_0_False_resize: signed(18 downto 0);
  signal c_10_0_0_False_shift: signed(18 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_0_0_False_resize: signed(23 downto 0);
  signal c_11_0_0_False_shift: signed(23 downto 0);
  signal c_11_0_8_False_resize: signed(23 downto 0);
  signal c_11_0_8_False_shift: signed(23 downto 0);
  signal c_11_6_1_False_resize: signed(23 downto 0);
  signal c_11_6_1_False_shift: signed(23 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_i0_resize: signed(23 downto 0);
  signal c_12_i1_resize: signed(23 downto 0);
  signal c_12_i0_shift: signed(23 downto 0);
  signal c_12_i1_shift: signed(23 downto 0);
  signal c_12_arith: signed(23 downto 0);
  signal c_12_oshift: signed(23 downto 0);
  signal c_13: signed(25 downto 0);
  signal c_13_12_6_False_resize: signed(25 downto 0);
  signal c_13_12_6_False_shift: signed(25 downto 0);
  signal c_13_3_0_False_resize: signed(25 downto 0);
  signal c_13_3_0_False_shift: signed(25 downto 0);
  signal c_13_6_0_False_resize: signed(25 downto 0);
  signal c_13_6_0_False_shift: signed(25 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(26 downto 0);
  signal c_14_6_0_False_resize: signed(26 downto 0);
  signal c_14_6_0_False_shift: signed(26 downto 0);
  signal c_14_0_4_False_resize: signed(26 downto 0);
  signal c_14_0_4_False_shift: signed(26 downto 0);
  signal c_14_6_3_False_resize: signed(26 downto 0);
  signal c_14_6_3_False_shift: signed(26 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(28 downto 0);
  signal c_15_i0_resize: signed(28 downto 0);
  signal c_15_i1_resize: signed(28 downto 0);
  signal c_15_i0_shift: signed(28 downto 0);
  signal c_15_i1_shift: signed(28 downto 0);
  signal c_15_arith: signed(28 downto 0);
  signal c_15_oshift: signed(28 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(25 downto 0);
  signal c_16_12_0_False_resize: signed(25 downto 0);
  signal c_16_12_0_False_shift: signed(25 downto 0);
  signal c_16_6_0_False_resize: signed(25 downto 0);
  signal c_16_6_0_False_shift: signed(25 downto 0);
  signal c_16_3_0_False_resize: signed(25 downto 0);
  signal c_16_3_0_False_shift: signed(25 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_12_5_False_resize: signed(23 downto 0);
  signal c_17_12_5_False_shift: signed(23 downto 0);
  signal c_17_3_0_False_resize: signed(23 downto 0);
  signal c_17_3_0_False_shift: signed(23 downto 0);
  signal c_17_6_2_False_resize: signed(23 downto 0);
  signal c_17_6_2_False_shift: signed(23 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_i0_resize: signed(25 downto 0);
  signal c_18_i1_resize: signed(25 downto 0);
  signal c_18_i0_shift: signed(25 downto 0);
  signal c_18_i1_shift: signed(25 downto 0);
  signal c_18_arith: signed(25 downto 0);
  signal c_18_oshift: signed(25 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(25 downto 0);
  signal c_19_0_1_False_resize: signed(25 downto 0);
  signal c_19_0_1_False_shift: signed(25 downto 0);
  signal c_19_0_8_False_resize: signed(25 downto 0);
  signal c_19_0_8_False_shift: signed(25 downto 0);
  signal c_19_6_0_False_resize: signed(25 downto 0);
  signal c_19_6_0_False_shift: signed(25 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(24 downto 0);
  signal c_20_12_3_False_resize: signed(24 downto 0);
  signal c_20_12_3_False_shift: signed(24 downto 0);
  signal c_20_9_1_False_resize: signed(24 downto 0);
  signal c_20_9_1_False_shift: signed(24 downto 0);
  signal c_20_0_0_False_resize: signed(24 downto 0);
  signal c_20_0_0_False_shift: signed(24 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_i0_resize: signed(25 downto 0);
  signal c_21_i1_resize: signed(25 downto 0);
  signal c_21_i0_shift: signed(25 downto 0);
  signal c_21_i1_shift: signed(25 downto 0);
  signal c_21_arith: signed(25 downto 0);
  signal c_21_oshift: signed(25 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(24 downto 0);
  signal c_22_9_1_False_resize: signed(24 downto 0);
  signal c_22_9_1_False_shift: signed(24 downto 0);
  signal c_22_3_0_False_resize: signed(24 downto 0);
  signal c_22_3_0_False_shift: signed(24 downto 0);
  signal c_22_3_6_False_resize: signed(24 downto 0);
  signal c_22_3_6_False_shift: signed(24 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(22 downto 0);
  signal c_23_15_0_False_resize: signed(22 downto 0);
  signal c_23_15_0_False_shift: signed(22 downto 0);
  signal c_23_12_1_False_resize: signed(22 downto 0);
  signal c_23_12_1_False_shift: signed(22 downto 0);
  signal c_23_3_0_False_resize: signed(22 downto 0);
  signal c_23_3_0_False_shift: signed(22 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_i0_resize: signed(25 downto 0);
  signal c_24_i1_resize: signed(25 downto 0);
  signal c_24_i0_shift: signed(25 downto 0);
  signal c_24_i1_shift: signed(25 downto 0);
  signal c_24_arith: signed(25 downto 0);
  signal c_24_oshift: signed(25 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(24 downto 0);
  signal c_25_3_4_False_resize: signed(24 downto 0);
  signal c_25_3_4_False_shift: signed(24 downto 0);
  signal c_25_12_3_False_resize: signed(24 downto 0);
  signal c_25_12_3_False_shift: signed(24 downto 0);
  signal c_25_18_0_False_resize: signed(24 downto 0);
  signal c_25_18_0_False_shift: signed(24 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(24 downto 0);
  signal c_26_0_9_False_resize: signed(24 downto 0);
  signal c_26_0_9_False_shift: signed(24 downto 0);
  signal c_26_12_1_False_resize: signed(24 downto 0);
  signal c_26_12_1_False_shift: signed(24 downto 0);
  signal c_26_0_0_False_resize: signed(24 downto 0);
  signal c_26_0_0_False_shift: signed(24 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_i0_resize: signed(25 downto 0);
  signal c_27_i1_resize: signed(25 downto 0);
  signal c_27_i0_shift: signed(25 downto 0);
  signal c_27_i1_shift: signed(25 downto 0);
  signal c_27_arith: signed(25 downto 0);
  signal c_27_oshift: signed(25 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(25 downto 0);
  signal c_28_24_0_False_resize: signed(25 downto 0);
  signal c_28_24_0_False_shift: signed(25 downto 0);
  signal c_28_27_0_False_resize: signed(25 downto 0);
  signal c_28_27_0_False_shift: signed(25 downto 0);
  signal c_28_27_1_False_resize: signed(25 downto 0);
  signal c_28_27_1_False_shift: signed(25 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_18_0_False_resize: signed(25 downto 0);
  signal c_29_18_0_False_shift: signed(25 downto 0);
  signal c_29_3_0_False_resize: signed(25 downto 0);
  signal c_29_3_0_False_shift: signed(25 downto 0);
  signal c_29_18_2_False_resize: signed(25 downto 0);
  signal c_29_18_2_False_shift: signed(25 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_i0_resize: signed(25 downto 0);
  signal c_30_i1_resize: signed(25 downto 0);
  signal c_30_i0_shift: signed(25 downto 0);
  signal c_30_i1_shift: signed(25 downto 0);
  signal c_30_arith: signed(25 downto 0);
  signal c_30_oshift: signed(25 downto 0);
  signal c_31: signed(28 downto 0);
  signal c_31_15_0_False_resize: signed(28 downto 0);
  signal c_31_15_0_False_shift: signed(28 downto 0);
  signal c_31_6_2_False_resize: signed(28 downto 0);
  signal c_31_6_2_False_shift: signed(28 downto 0);
  signal c_31_0_4_False_resize: signed(28 downto 0);
  signal c_31_0_4_False_shift: signed(28 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(26 downto 0);
  signal c_32_3_1_False_resize: signed(26 downto 0);
  signal c_32_3_1_False_shift: signed(26 downto 0);
  signal c_32_24_4_False_resize: signed(26 downto 0);
  signal c_32_24_4_False_shift: signed(26 downto 0);
  signal c_32_15_0_False_resize: signed(26 downto 0);
  signal c_32_15_0_False_shift: signed(26 downto 0);
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
  signal c_34_24_0_False_resize: signed(25 downto 0);
  signal c_34_24_0_False_shift: signed(25 downto 0);
  signal c_34_30_0_False_resize: signed(25 downto 0);
  signal c_34_30_0_False_shift: signed(25 downto 0);
  signal c_34_9_2_False_resize: signed(25 downto 0);
  signal c_34_9_2_False_shift: signed(25 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_6_5_False_resize: signed(25 downto 0);
  signal c_35_6_5_False_shift: signed(25 downto 0);
  signal c_35_6_0_False_resize: signed(25 downto 0);
  signal c_35_6_0_False_shift: signed(25 downto 0);
  signal c_35_27_0_False_resize: signed(25 downto 0);
  signal c_35_27_0_False_shift: signed(25 downto 0);
  signal c_35_sel: std_logic_vector(1 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_36_i0_resize: signed(25 downto 0);
  signal c_36_i1_resize: signed(25 downto 0);
  signal c_36_i0_shift: signed(25 downto 0);
  signal c_36_i1_shift: signed(25 downto 0);
  signal c_36_arith: signed(25 downto 0);
  signal c_36_oshift: signed(25 downto 0);
  signal c_36_sub_sel: std_logic;
  signal c_37: signed(25 downto 0);
  signal c_37_0_7_False_resize: signed(25 downto 0);
  signal c_37_0_7_False_shift: signed(25 downto 0);
  signal c_37_0_10_False_resize: signed(25 downto 0);
  signal c_37_0_10_False_shift: signed(25 downto 0);
  signal c_37_6_0_False_resize: signed(25 downto 0);
  signal c_37_6_0_False_shift: signed(25 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(24 downto 0);
  signal c_38_12_0_False_resize: signed(24 downto 0);
  signal c_38_12_0_False_shift: signed(24 downto 0);
  signal c_38_24_1_False_resize: signed(24 downto 0);
  signal c_38_24_1_False_shift: signed(24 downto 0);
  signal c_38_33_0_False_resize: signed(24 downto 0);
  signal c_38_33_0_False_shift: signed(24 downto 0);
  signal c_38_sel: std_logic_vector(1 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_i0_resize: signed(25 downto 0);
  signal c_39_i1_resize: signed(25 downto 0);
  signal c_39_i0_shift: signed(25 downto 0);
  signal c_39_i1_shift: signed(25 downto 0);
  signal c_39_arith: signed(25 downto 0);
  signal c_39_oshift: signed(25 downto 0);
  signal c_39_sub_sel: std_logic;
  signal c_40: signed(26 downto 0);
  signal c_40_0_0_False_resize: signed(26 downto 0);
  signal c_40_0_0_False_shift: signed(26 downto 0);
  signal c_40_27_3_False_resize: signed(26 downto 0);
  signal c_40_27_3_False_shift: signed(26 downto 0);
  signal c_40_39_1_False_resize: signed(26 downto 0);
  signal c_40_39_1_False_shift: signed(26 downto 0);
  signal c_40_sel: std_logic_vector(1 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_41_18_0_False_resize: signed(25 downto 0);
  signal c_41_18_0_False_shift: signed(25 downto 0);
  signal c_41_15_0_False_resize: signed(25 downto 0);
  signal c_41_15_0_False_shift: signed(25 downto 0);
  signal c_41_30_0_False_resize: signed(25 downto 0);
  signal c_41_30_0_False_shift: signed(25 downto 0);
  signal c_41_sel: std_logic_vector(1 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_42_i0_resize: signed(25 downto 0);
  signal c_42_i1_resize: signed(25 downto 0);
  signal c_42_i0_shift: signed(25 downto 0);
  signal c_42_i1_shift: signed(25 downto 0);
  signal c_42_arith: signed(25 downto 0);
  signal c_42_oshift: signed(25 downto 0);
  signal c_43: signed(26 downto 0);
  signal c_43_33_1_False_resize: signed(26 downto 0);
  signal c_43_33_1_False_shift: signed(26 downto 0);
  signal c_43_39_0_False_resize: signed(26 downto 0);
  signal c_43_39_0_False_shift: signed(26 downto 0);
  signal c_43_18_0_False_resize: signed(26 downto 0);
  signal c_43_18_0_False_shift: signed(26 downto 0);
  signal c_43_sel: std_logic_vector(1 downto 0);
  signal c_44: signed(24 downto 0);
  signal c_44_0_0_False_resize: signed(24 downto 0);
  signal c_44_0_0_False_shift: signed(24 downto 0);
  signal c_44_0_3_False_resize: signed(24 downto 0);
  signal c_44_0_3_False_shift: signed(24 downto 0);
  signal c_44_21_0_False_resize: signed(24 downto 0);
  signal c_44_21_0_False_shift: signed(24 downto 0);
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
  signal c_46_9_1_False_resize: signed(25 downto 0);
  signal c_46_9_1_False_shift: signed(25 downto 0);
  signal c_46_24_0_False_resize: signed(25 downto 0);
  signal c_46_24_0_False_shift: signed(25 downto 0);
  signal c_46_42_0_False_resize: signed(25 downto 0);
  signal c_46_42_0_False_shift: signed(25 downto 0);
  signal c_46_sel: std_logic_vector(1 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_resize: signed(25 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_48_33_1_False_resize: signed(25 downto 0);
  signal c_48_33_1_False_shift: signed(25 downto 0);
  signal c_48_39_0_False_resize: signed(25 downto 0);
  signal c_48_39_0_False_shift: signed(25 downto 0);
  signal c_48_21_0_False_resize: signed(25 downto 0);
  signal c_48_21_0_False_shift: signed(25 downto 0);
  signal c_48_sel: std_logic_vector(1 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_49_resize: signed(25 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_50_27_0_False_resize: signed(25 downto 0);
  signal c_50_27_0_False_shift: signed(25 downto 0);
  signal c_50_9_2_False_resize: signed(25 downto 0);
  signal c_50_9_2_False_shift: signed(25 downto 0);
  signal c_50_21_0_False_resize: signed(25 downto 0);
  signal c_50_21_0_False_shift: signed(25 downto 0);
  signal c_50_sel: std_logic_vector(1 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_51_resize: signed(25 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_52_30_0_False_resize: signed(25 downto 0);
  signal c_52_30_0_False_shift: signed(25 downto 0);
  signal c_52_0_7_False_resize: signed(25 downto 0);
  signal c_52_0_7_False_shift: signed(25 downto 0);
  signal c_52_18_1_False_resize: signed(25 downto 0);
  signal c_52_18_1_False_shift: signed(25 downto 0);
  signal c_52_sel: std_logic_vector(1 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_53_resize: signed(25 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_54_24_1_False_resize: signed(25 downto 0);
  signal c_54_24_1_False_shift: signed(25 downto 0);
  signal c_54_27_0_False_resize: signed(25 downto 0);
  signal c_54_27_0_False_shift: signed(25 downto 0);
  signal c_54_45_0_False_resize: signed(25 downto 0);
  signal c_54_45_0_False_shift: signed(25 downto 0);
  signal c_54_sel: std_logic_vector(1 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_55_resize: signed(25 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_56_30_2_False_resize: signed(25 downto 0);
  signal c_56_30_2_False_shift: signed(25 downto 0);
  signal c_56_39_0_False_resize: signed(25 downto 0);
  signal c_56_39_0_False_shift: signed(25 downto 0);
  signal c_56_45_0_False_resize: signed(25 downto 0);
  signal c_56_45_0_False_shift: signed(25 downto 0);
  signal c_56_sel: std_logic_vector(1 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_57_resize: signed(25 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_58_33_0_False_resize: signed(25 downto 0);
  signal c_58_33_0_False_shift: signed(25 downto 0);
  signal c_58_36_0_False_resize: signed(25 downto 0);
  signal c_58_36_0_False_shift: signed(25 downto 0);
  signal c_58_42_0_False_resize: signed(25 downto 0);
  signal c_58_42_0_False_shift: signed(25 downto 0);
  signal c_58_sel: std_logic_vector(1 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_59_resize: signed(25 downto 0);
  signal c_60: signed(25 downto 0);
  signal c_60_36_0_False_resize: signed(25 downto 0);
  signal c_60_36_0_False_shift: signed(25 downto 0);
  signal c_60_30_0_False_resize: signed(25 downto 0);
  signal c_60_30_0_False_shift: signed(25 downto 0);
  signal c_60_sel: std_logic_vector(0 downto 0);
  signal c_61: signed(25 downto 0);
  signal c_61_resize: signed(25 downto 0);
  signal c_62: signed(25 downto 0);
  signal c_62_12_0_False_resize: signed(25 downto 0);
  signal c_62_12_0_False_shift: signed(25 downto 0);
  signal c_62_3_1_False_resize: signed(25 downto 0);
  signal c_62_3_1_False_shift: signed(25 downto 0);
  signal c_62_15_0_False_resize: signed(25 downto 0);
  signal c_62_15_0_False_shift: signed(25 downto 0);
  signal c_62_sel: std_logic_vector(1 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_63_resize: signed(25 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_64_42_0_False_resize: signed(25 downto 0);
  signal c_64_42_0_False_shift: signed(25 downto 0);
  signal c_64_45_0_False_resize: signed(25 downto 0);
  signal c_64_45_0_False_shift: signed(25 downto 0);
  signal c_64_27_0_False_resize: signed(25 downto 0);
  signal c_64_27_0_False_shift: signed(25 downto 0);
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
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[16], [8], [1]]
  c_1_0_0_False_resize <= resize(c_0, 20);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_3_False_resize <= resize(c_0, 20);
  c_1_0_3_False_shift <= shift_left(c_1_0_3_False_resize, 3);
  c_1_0_4_False_resize <= resize(c_0, 20);
  c_1_0_4_False_shift <= shift_left(c_1_0_4_False_resize, 4);
  with config_select_1 select c_1_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "00",
    c_1_0_3_False_shift when "01",
    c_1_0_4_False_shift when others;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [1], [32]]
  c_2_0_0_False_resize <= resize(c_0, 21);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_5_False_resize <= resize(c_0, 21);
  c_2_0_5_False_shift <= shift_left(c_2_0_5_False_resize, 5);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_0_0_False_shift when "0",
    c_2_0_5_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[17], [7], [-31]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 21,
      w_o => 21,
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
  c_3 <= c_3_oshift(20 downto 0);
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[17], [16], [-124]]
  c_4_0_4_False_resize <= resize(c_0, 23);
  c_4_0_4_False_shift <= shift_left(c_4_0_4_False_resize, 4);
  c_4_3_0_False_resize <= resize(c_3, 23);
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  c_4_3_2_False_resize <= resize(c_3, 23);
  c_4_3_2_False_shift <= shift_left(c_4_3_2_False_resize, 2);
  with config_select_3 select c_4_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_4_sel select c_4 <=
    c_4_0_4_False_shift when "00",
    c_4_3_0_False_shift when "01",
    c_4_3_2_False_shift when others;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[512], [7], [-31]]
  c_5_0_9_False_resize <= resize(c_0, 25);
  c_5_0_9_False_shift <= shift_left(c_5_0_9_False_resize, 9);
  c_5_3_0_False_resize <= resize(c_3, 25);
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  with config_select_3 select c_5_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_0_9_False_shift when "0",
    c_5_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 6 and associated fundamentals [[529], [9], [-155]]
  with config_select_4 select c_6_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_6_sub_sel,
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(25 downto 0);
  -- node of type 'mux' in stage 5 with id 7 and associated fundamentals [[17], [288], [2]]
  c_7_6_5_False_resize <= c_6(24 downto 0);
  c_7_6_5_False_shift <= shift_left(c_7_6_5_False_resize, 5);
  c_7_0_1_False_resize <= resize(c_0, 25);
  c_7_0_1_False_shift <= shift_left(c_7_0_1_False_resize, 1);
  c_7_3_0_False_resize <= resize(c_3, 25);
  c_7_3_0_False_shift <= shift_left(c_7_3_0_False_resize, 0);
  with config_select_5 select c_7_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_7_sel select c_7 <=
    c_7_6_5_False_shift when "00",
    c_7_0_1_False_shift when "01",
    c_7_3_0_False_shift when others;
  -- node of type 'mux' in stage 5 with id 8 and associated fundamentals [[136], [14], [-155]]
  c_8_3_1_False_resize <= resize(c_3, 24);
  c_8_3_1_False_shift <= shift_left(c_8_3_1_False_resize, 1);
  c_8_3_3_False_resize <= resize(c_3, 24);
  c_8_3_3_False_shift <= shift_left(c_8_3_3_False_resize, 3);
  c_8_6_0_False_resize <= c_6(23 downto 0);
  c_8_6_0_False_shift <= shift_left(c_8_6_0_False_resize, 0);
  with config_select_5 select c_8_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_8_sel select c_8 <=
    c_8_3_1_False_shift when "00",
    c_8_3_3_False_shift when "01",
    c_8_6_0_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 9 and associated fundamentals [[153], [302], [157]]
  with config_select_6 select c_9_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_9: entity work.adder_node
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
      sub_i => c_9_sub_sel,
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(24 downto 0);
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[1], [7], [8]]
  c_10_0_3_False_resize <= resize(c_0, 19);
  c_10_0_3_False_shift <= shift_left(c_10_0_3_False_resize, 3);
  c_10_3_0_False_resize <= c_3(18 downto 0);
  c_10_3_0_False_shift <= shift_left(c_10_3_0_False_resize, 0);
  c_10_0_0_False_resize <= resize(c_0, 19);
  c_10_0_0_False_shift <= shift_left(c_10_0_0_False_resize, 0);
  with config_select_3 select c_10_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_10_sel select c_10 <=
    c_10_0_3_False_shift when "00",
    c_10_3_0_False_shift when "01",
    c_10_0_0_False_shift when others;
  -- node of type 'mux' in stage 5 with id 11 and associated fundamentals [[256], [18], [1]]
  c_11_0_0_False_resize <= resize(c_0, 24);
  c_11_0_0_False_shift <= shift_left(c_11_0_0_False_resize, 0);
  c_11_0_8_False_resize <= resize(c_0, 24);
  c_11_0_8_False_shift <= shift_left(c_11_0_8_False_resize, 8);
  c_11_6_1_False_resize <= c_6(23 downto 0);
  c_11_6_1_False_shift <= shift_left(c_11_6_1_False_resize, 1);
  with config_select_5 select c_11_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_11_sel select c_11 <=
    c_11_0_0_False_shift when "00",
    c_11_0_8_False_shift when "01",
    c_11_6_1_False_shift when others;
  -- node of type 'sub' in stage 6 with id 12 and associated fundamentals [[-255], [-11], [7]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 24,
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
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(23 downto 0);
  -- node of type 'mux' in stage 7 with id 13 and associated fundamentals [[17], [-704], [-155]]
  c_13_12_6_False_resize <= resize(c_12, 26);
  c_13_12_6_False_shift <= shift_left(c_13_12_6_False_resize, 6);
  c_13_3_0_False_resize <= resize(c_3, 26);
  c_13_3_0_False_shift <= shift_left(c_13_3_0_False_resize, 0);
  c_13_6_0_False_resize <= c_6;
  c_13_6_0_False_shift <= shift_left(c_13_6_0_False_resize, 0);
  with config_select_7 select c_13_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_13_sel select c_13 <=
    c_13_12_6_False_shift when "00",
    c_13_3_0_False_shift when "01",
    c_13_6_0_False_shift when others;
  -- node of type 'mux' in stage 5 with id 14 and associated fundamentals [[16], [9], [-1240]]
  c_14_6_0_False_resize <= resize(c_6, 27);
  c_14_6_0_False_shift <= shift_left(c_14_6_0_False_resize, 0);
  c_14_0_4_False_resize <= resize(c_0, 27);
  c_14_0_4_False_shift <= shift_left(c_14_0_4_False_resize, 4);
  c_14_6_3_False_resize <= resize(c_6, 27);
  c_14_6_3_False_shift <= shift_left(c_14_6_3_False_resize, 3);
  with config_select_5 select c_14_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_14_sel select c_14 <=
    c_14_6_0_False_shift when "00",
    c_14_0_4_False_shift when "01",
    c_14_6_3_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 15 and associated fundamentals [[81], [-740], [-5115]]
  with config_select_8 select c_15_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 27,
      w_o => 29,
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
      sub_i => c_15_sub_sel,
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(28 downto 0);
  -- node of type 'mux' in stage 7 with id 16 and associated fundamentals [[529], [-11], [-31]]
  c_16_12_0_False_resize <= resize(c_12, 26);
  c_16_12_0_False_shift <= shift_left(c_16_12_0_False_resize, 0);
  c_16_6_0_False_resize <= c_6;
  c_16_6_0_False_shift <= shift_left(c_16_6_0_False_resize, 0);
  c_16_3_0_False_resize <= resize(c_3, 26);
  c_16_3_0_False_shift <= shift_left(c_16_3_0_False_resize, 0);
  with config_select_7 select c_16_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_16_sel select c_16 <=
    c_16_12_0_False_shift when "00",
    c_16_6_0_False_shift when "01",
    c_16_3_0_False_shift when others;
  -- node of type 'mux' in stage 7 with id 17 and associated fundamentals [[17], [36], [224]]
  c_17_12_5_False_resize <= c_12;
  c_17_12_5_False_shift <= shift_left(c_17_12_5_False_resize, 5);
  c_17_3_0_False_resize <= resize(c_3, 24);
  c_17_3_0_False_shift <= shift_left(c_17_3_0_False_resize, 0);
  c_17_6_2_False_resize <= c_6(23 downto 0);
  c_17_6_2_False_shift <= shift_left(c_17_6_2_False_resize, 2);
  with config_select_7 select c_17_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_17_sel select c_17 <=
    c_17_12_5_False_shift when "00",
    c_17_3_0_False_shift when "01",
    c_17_6_2_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 18 and associated fundamentals [[563], [-83], [417]]
  with config_select_8 select c_18_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
      w_o => 26,
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
  c_18 <= c_18_oshift(25 downto 0);
  -- node of type 'mux' in stage 5 with id 19 and associated fundamentals [[529], [256], [2]]
  c_19_0_1_False_resize <= resize(c_0, 26);
  c_19_0_1_False_shift <= shift_left(c_19_0_1_False_resize, 1);
  c_19_0_8_False_resize <= resize(c_0, 26);
  c_19_0_8_False_shift <= shift_left(c_19_0_8_False_resize, 8);
  c_19_6_0_False_resize <= c_6;
  c_19_6_0_False_shift <= shift_left(c_19_6_0_False_resize, 0);
  with config_select_5 select c_19_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_19_sel select c_19 <=
    c_19_0_1_False_shift when "00",
    c_19_0_8_False_shift when "01",
    c_19_6_0_False_shift when others;
  -- node of type 'mux' in stage 7 with id 20 and associated fundamentals [[1], [-88], [314]]
  c_20_12_3_False_resize <= resize(c_12, 25);
  c_20_12_3_False_shift <= shift_left(c_20_12_3_False_resize, 3);
  c_20_9_1_False_resize <= c_9;
  c_20_9_1_False_shift <= shift_left(c_20_9_1_False_resize, 1);
  c_20_0_0_False_resize <= resize(c_0, 25);
  c_20_0_0_False_shift <= shift_left(c_20_0_0_False_resize, 0);
  with config_select_7 select c_20_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_20_sel select c_20 <=
    c_20_12_3_False_shift when "00",
    c_20_9_1_False_shift when "01",
    c_20_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 21 and associated fundamentals [[528], [344], [316]]
  with config_select_8 select c_21_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_21_sub_sel,
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  c_21 <= c_21_oshift(25 downto 0);
  -- node of type 'mux' in stage 7 with id 22 and associated fundamentals [[306], [448], [-31]]
  c_22_9_1_False_resize <= c_9;
  c_22_9_1_False_shift <= shift_left(c_22_9_1_False_resize, 1);
  c_22_3_0_False_resize <= resize(c_3, 25);
  c_22_3_0_False_shift <= shift_left(c_22_3_0_False_resize, 0);
  c_22_3_6_False_resize <= resize(c_3, 25);
  c_22_3_6_False_shift <= shift_left(c_22_3_6_False_resize, 6);
  with config_select_7 select c_22_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_22_sel select c_22 <=
    c_22_9_1_False_shift when "00",
    c_22_3_0_False_shift when "01",
    c_22_3_6_False_shift when others;
  -- node of type 'mux' in stage 9 with id 23 and associated fundamentals [[81], [7], [14]]
  c_23_15_0_False_resize <= c_15(22 downto 0);
  c_23_15_0_False_shift <= shift_left(c_23_15_0_False_resize, 0);
  c_23_12_1_False_resize <= c_12(22 downto 0);
  c_23_12_1_False_shift <= shift_left(c_23_12_1_False_resize, 1);
  c_23_3_0_False_resize <= resize(c_3, 23);
  c_23_3_0_False_shift <= shift_left(c_23_3_0_False_resize, 0);
  with config_select_9 select c_23_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_23_sel select c_23 <=
    c_23_15_0_False_shift when "00",
    c_23_12_1_False_shift when "01",
    c_23_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 24 and associated fundamentals [[450], [910], [-90]]
  with config_select_10 select c_24_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
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
      sub_i => c_24_sub_sel,
      x_i => c_22,
      y_i => c_23,
      z_o => c_24_oshift
    );
  c_24 <= c_24_oshift(25 downto 0);
  -- node of type 'mux' in stage 9 with id 25 and associated fundamentals [[272], [-83], [56]]
  c_25_3_4_False_resize <= resize(c_3, 25);
  c_25_3_4_False_shift <= shift_left(c_25_3_4_False_resize, 4);
  c_25_12_3_False_resize <= resize(c_12, 25);
  c_25_12_3_False_shift <= shift_left(c_25_12_3_False_resize, 3);
  c_25_18_0_False_resize <= c_18(24 downto 0);
  c_25_18_0_False_shift <= shift_left(c_25_18_0_False_resize, 0);
  with config_select_9 select c_25_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_25_sel select c_25 <=
    c_25_3_4_False_shift when "00",
    c_25_12_3_False_shift when "01",
    c_25_18_0_False_shift when others;
  -- node of type 'mux' in stage 7 with id 26 and associated fundamentals [[1], [512], [14]]
  c_26_0_9_False_resize <= resize(c_0, 25);
  c_26_0_9_False_shift <= shift_left(c_26_0_9_False_resize, 9);
  c_26_12_1_False_resize <= resize(c_12, 25);
  c_26_12_1_False_shift <= shift_left(c_26_12_1_False_resize, 1);
  c_26_0_0_False_resize <= resize(c_0, 25);
  c_26_0_0_False_shift <= shift_left(c_26_0_0_False_resize, 0);
  with config_select_7 select c_26_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_26_sel select c_26 <=
    c_26_0_9_False_shift when "00",
    c_26_12_1_False_shift when "01",
    c_26_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 27 and associated fundamentals [[270], [941], [84]]
  with config_select_10 select c_27_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
      w_o => 26,
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
      sub_i => c_27_sub_sel,
      x_i => c_25,
      y_i => c_26,
      z_o => c_27_oshift
    );
  c_27 <= c_27_oshift(25 downto 0);
  -- node of type 'mux' in stage 11 with id 28 and associated fundamentals [[450], [941], [168]]
  c_28_24_0_False_resize <= c_24;
  c_28_24_0_False_shift <= shift_left(c_28_24_0_False_resize, 0);
  c_28_27_0_False_resize <= c_27;
  c_28_27_0_False_shift <= shift_left(c_28_27_0_False_resize, 0);
  c_28_27_1_False_resize <= c_27;
  c_28_27_1_False_shift <= shift_left(c_28_27_1_False_resize, 1);
  with config_select_11 select c_28_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_28_sel select c_28 <=
    c_28_24_0_False_shift when "00",
    c_28_27_0_False_shift when "01",
    c_28_27_1_False_shift when others;
  -- node of type 'mux' in stage 9 with id 29 and associated fundamentals [[563], [-332], [-31]]
  c_29_18_0_False_resize <= c_18;
  c_29_18_0_False_shift <= shift_left(c_29_18_0_False_resize, 0);
  c_29_3_0_False_resize <= resize(c_3, 26);
  c_29_3_0_False_shift <= shift_left(c_29_3_0_False_resize, 0);
  c_29_18_2_False_resize <= c_18;
  c_29_18_2_False_shift <= shift_left(c_29_18_2_False_resize, 2);
  with config_select_9 select c_29_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_29_sel select c_29 <=
    c_29_18_0_False_shift when "00",
    c_29_3_0_False_shift when "01",
    c_29_18_2_False_shift when others;
  -- node of type 'add' in stage 12 with id 30 and associated fundamentals [[1013], [609], [137]]
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 26,
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
      y_i => c_29,
      z_o => c_30_oshift
    );
  c_30 <= c_30_oshift(25 downto 0);
  -- node of type 'mux' in stage 9 with id 31 and associated fundamentals [[16], [36], [-5115]]
  c_31_15_0_False_resize <= c_15;
  c_31_15_0_False_shift <= shift_left(c_31_15_0_False_resize, 0);
  c_31_6_2_False_resize <= resize(c_6, 29);
  c_31_6_2_False_shift <= shift_left(c_31_6_2_False_resize, 2);
  c_31_0_4_False_resize <= resize(c_0, 29);
  c_31_0_4_False_shift <= shift_left(c_31_0_4_False_resize, 4);
  with config_select_9 select c_31_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_31_sel select c_31 <=
    c_31_15_0_False_shift when "00",
    c_31_6_2_False_shift when "01",
    c_31_0_4_False_shift when others;
  -- node of type 'mux' in stage 11 with id 32 and associated fundamentals [[81], [14], [-1440]]
  c_32_3_1_False_resize <= resize(c_3, 27);
  c_32_3_1_False_shift <= shift_left(c_32_3_1_False_resize, 1);
  c_32_24_4_False_resize <= resize(c_24, 27);
  c_32_24_4_False_shift <= shift_left(c_32_24_4_False_resize, 4);
  c_32_15_0_False_resize <= c_15(26 downto 0);
  c_32_15_0_False_shift <= shift_left(c_32_15_0_False_resize, 0);
  with config_select_11 select c_32_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_32_sel select c_32 <=
    c_32_3_1_False_shift when "00",
    c_32_24_4_False_shift when "01",
    c_32_15_0_False_shift when others;
  -- node of type 'add_sub' in stage 12 with id 33 and associated fundamentals [[-308], [92], [645]]
  with config_select_12 select c_33_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_33: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 27,
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
      sub_i => c_33_sub_sel,
      x_i => c_31,
      y_i => c_32,
      z_o => c_33_oshift
    );
  c_33 <= c_33_oshift(25 downto 0);
  -- node of type 'mux' in stage 13 with id 34 and associated fundamentals [[450], [609], [628]]
  c_34_24_0_False_resize <= c_24;
  c_34_24_0_False_shift <= shift_left(c_34_24_0_False_resize, 0);
  c_34_30_0_False_resize <= c_30;
  c_34_30_0_False_shift <= shift_left(c_34_30_0_False_resize, 0);
  c_34_9_2_False_resize <= resize(c_9, 26);
  c_34_9_2_False_shift <= shift_left(c_34_9_2_False_resize, 2);
  with config_select_13 select c_34_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_34_sel select c_34 <=
    c_34_24_0_False_shift when "00",
    c_34_30_0_False_shift when "01",
    c_34_9_2_False_shift when others;
  -- node of type 'mux' in stage 11 with id 35 and associated fundamentals [[529], [288], [84]]
  c_35_6_5_False_resize <= c_6;
  c_35_6_5_False_shift <= shift_left(c_35_6_5_False_resize, 5);
  c_35_6_0_False_resize <= c_6;
  c_35_6_0_False_shift <= shift_left(c_35_6_0_False_resize, 0);
  c_35_27_0_False_resize <= c_27;
  c_35_27_0_False_shift <= shift_left(c_35_27_0_False_resize, 0);
  with config_select_11 select c_35_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_35_sel select c_35 <=
    c_35_6_5_False_shift when "00",
    c_35_6_0_False_shift when "01",
    c_35_27_0_False_shift when others;
  -- node of type 'add_sub' in stage 14 with id 36 and associated fundamentals [[979], [321], [712]]
  with config_select_14 select c_36_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_36: entity work.adder_node
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
      sub_i => c_36_sub_sel,
      x_i => c_34,
      y_i => c_35,
      z_o => c_36_oshift
    );
  c_36 <= c_36_oshift(25 downto 0);
  -- node of type 'mux' in stage 5 with id 37 and associated fundamentals [[128], [1024], [-155]]
  c_37_0_7_False_resize <= resize(c_0, 26);
  c_37_0_7_False_shift <= shift_left(c_37_0_7_False_resize, 7);
  c_37_0_10_False_resize <= resize(c_0, 26);
  c_37_0_10_False_shift <= shift_left(c_37_0_10_False_resize, 10);
  c_37_6_0_False_resize <= c_6;
  c_37_6_0_False_shift <= shift_left(c_37_6_0_False_resize, 0);
  with config_select_5 select c_37_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_37_sel select c_37 <=
    c_37_0_7_False_shift when "00",
    c_37_0_10_False_shift when "01",
    c_37_6_0_False_shift when others;
  -- node of type 'mux' in stage 13 with id 38 and associated fundamentals [[-308], [-11], [-180]]
  c_38_12_0_False_resize <= resize(c_12, 25);
  c_38_12_0_False_shift <= shift_left(c_38_12_0_False_resize, 0);
  c_38_24_1_False_resize <= c_24(24 downto 0);
  c_38_24_1_False_shift <= shift_left(c_38_24_1_False_resize, 1);
  c_38_33_0_False_resize <= c_33(24 downto 0);
  c_38_33_0_False_shift <= shift_left(c_38_33_0_False_resize, 0);
  with config_select_13 select c_38_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_38_sel select c_38 <=
    c_38_12_0_False_shift when "00",
    c_38_24_1_False_shift when "01",
    c_38_33_0_False_shift when others;
  -- node of type 'add_sub' in stage 14 with id 39 and associated fundamentals [[744], [1002], [205]]
  with config_select_14 select c_39_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_39: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
      w_o => 26,
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
      sub_i => c_39_sub_sel,
      x_i => c_37,
      y_i => c_38,
      z_o => c_39_oshift
    );
  c_39 <= c_39_oshift(25 downto 0);
  -- node of type 'mux' in stage 15 with id 40 and associated fundamentals [[1488], [1], [672]]
  c_40_0_0_False_resize <= resize(c_0, 27);
  c_40_0_0_False_shift <= shift_left(c_40_0_0_False_resize, 0);
  c_40_27_3_False_resize <= resize(c_27, 27);
  c_40_27_3_False_shift <= shift_left(c_40_27_3_False_resize, 3);
  c_40_39_1_False_resize <= resize(c_39, 27);
  c_40_39_1_False_shift <= shift_left(c_40_39_1_False_resize, 1);
  with config_select_15 select c_40_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_40_sel select c_40 <=
    c_40_0_0_False_shift when "00",
    c_40_27_3_False_shift when "01",
    c_40_39_1_False_shift when others;
  -- node of type 'mux' in stage 13 with id 41 and associated fundamentals [[563], [-740], [137]]
  c_41_18_0_False_resize <= c_18;
  c_41_18_0_False_shift <= shift_left(c_41_18_0_False_resize, 0);
  c_41_15_0_False_resize <= c_15(25 downto 0);
  c_41_15_0_False_shift <= shift_left(c_41_15_0_False_resize, 0);
  c_41_30_0_False_resize <= c_30;
  c_41_30_0_False_shift <= shift_left(c_41_30_0_False_resize, 0);
  with config_select_13 select c_41_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_41_sel select c_41 <=
    c_41_18_0_False_shift when "00",
    c_41_15_0_False_shift when "01",
    c_41_30_0_False_shift when others;
  -- node of type 'sub' in stage 16 with id 42 and associated fundamentals [[925], [741], [535]]
  inst_adder_node_42: entity work.adder_node
    generic map (
      w_x_i => 27,
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
      x_i => c_40,
      y_i => c_41,
      z_o => c_42_oshift
    );
  c_42 <= c_42_oshift(25 downto 0);
  -- node of type 'mux' in stage 15 with id 43 and associated fundamentals [[563], [1002], [1290]]
  c_43_33_1_False_resize <= resize(c_33, 27);
  c_43_33_1_False_shift <= shift_left(c_43_33_1_False_resize, 1);
  c_43_39_0_False_resize <= resize(c_39, 27);
  c_43_39_0_False_shift <= shift_left(c_43_39_0_False_resize, 0);
  c_43_18_0_False_resize <= resize(c_18, 27);
  c_43_18_0_False_shift <= shift_left(c_43_18_0_False_resize, 0);
  with config_select_15 select c_43_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_43_sel select c_43 <=
    c_43_33_1_False_shift when "00",
    c_43_39_0_False_shift when "01",
    c_43_18_0_False_shift when others;
  -- node of type 'mux' in stage 9 with id 44 and associated fundamentals [[8], [1], [316]]
  c_44_0_0_False_resize <= resize(c_0, 25);
  c_44_0_0_False_shift <= shift_left(c_44_0_0_False_resize, 0);
  c_44_0_3_False_resize <= resize(c_0, 25);
  c_44_0_3_False_shift <= shift_left(c_44_0_3_False_resize, 3);
  c_44_21_0_False_resize <= c_21(24 downto 0);
  c_44_21_0_False_shift <= shift_left(c_44_21_0_False_resize, 0);
  with config_select_9 select c_44_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_44_sel select c_44 <=
    c_44_0_0_False_shift when "00",
    c_44_0_3_False_shift when "01",
    c_44_21_0_False_shift when others;
  -- node of type 'add_sub' in stage 16 with id 45 and associated fundamentals [[555], [1003], [974]]
  with config_select_16 select c_45_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_45: entity work.adder_node
    generic map (
      w_x_i => 27,
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
      sub_i => c_45_sub_sel,
      x_i => c_43,
      y_i => c_44,
      z_o => c_45_oshift
    );
  c_45 <= c_45_oshift(25 downto 0);
  -- node of type 'mux' in stage 17 with id 46 and associated fundamentals [[306], [910], [535]]
  c_46_9_1_False_resize <= resize(c_9, 26);
  c_46_9_1_False_shift <= shift_left(c_46_9_1_False_resize, 1);
  c_46_24_0_False_resize <= c_24;
  c_46_24_0_False_shift <= shift_left(c_46_24_0_False_resize, 0);
  c_46_42_0_False_resize <= c_42;
  c_46_42_0_False_shift <= shift_left(c_46_42_0_False_resize, 0);
  with config_select_17 select c_46_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_46_sel select c_46 <=
    c_46_9_1_False_shift when "00",
    c_46_24_0_False_shift when "01",
    c_46_42_0_False_shift when others;
  -- node of type 'output' in stage 17 with id 47 and associated fundamentals [[306], [910], [535]]
  c_47_resize <= c_46;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'mux' in stage 15 with id 48 and associated fundamentals [[528], [184], [205]]
  c_48_33_1_False_resize <= c_33;
  c_48_33_1_False_shift <= shift_left(c_48_33_1_False_resize, 1);
  c_48_39_0_False_resize <= c_39;
  c_48_39_0_False_shift <= shift_left(c_48_39_0_False_resize, 0);
  c_48_21_0_False_resize <= c_21;
  c_48_21_0_False_shift <= shift_left(c_48_21_0_False_resize, 0);
  with config_select_15 select c_48_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_48_sel select c_48 <=
    c_48_33_1_False_shift when "00",
    c_48_39_0_False_shift when "01",
    c_48_21_0_False_shift when others;
  -- node of type 'output' in stage 15 with id 49 and associated fundamentals [[528], [184], [205]]
  c_49_resize <= c_48;
  c_49 <= shift_left(c_49_resize, 0);
  -- node of type 'mux' in stage 11 with id 50 and associated fundamentals [[270], [344], [628]]
  c_50_27_0_False_resize <= c_27;
  c_50_27_0_False_shift <= shift_left(c_50_27_0_False_resize, 0);
  c_50_9_2_False_resize <= resize(c_9, 26);
  c_50_9_2_False_shift <= shift_left(c_50_9_2_False_resize, 2);
  c_50_21_0_False_resize <= c_21;
  c_50_21_0_False_shift <= shift_left(c_50_21_0_False_resize, 0);
  with config_select_11 select c_50_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_50_sel select c_50 <=
    c_50_27_0_False_shift when "00",
    c_50_9_2_False_shift when "01",
    c_50_21_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 51 and associated fundamentals [[270], [344], [628]]
  c_51_resize <= c_50;
  c_51 <= shift_left(c_51_resize, 0);
  -- node of type 'mux' in stage 13 with id 52 and associated fundamentals [[1013], [128], [834]]
  c_52_30_0_False_resize <= c_30;
  c_52_30_0_False_shift <= shift_left(c_52_30_0_False_resize, 0);
  c_52_0_7_False_resize <= resize(c_0, 26);
  c_52_0_7_False_shift <= shift_left(c_52_0_7_False_resize, 7);
  c_52_18_1_False_resize <= c_18;
  c_52_18_1_False_shift <= shift_left(c_52_18_1_False_resize, 1);
  with config_select_13 select c_52_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_52_sel select c_52 <=
    c_52_30_0_False_shift when "00",
    c_52_0_7_False_shift when "01",
    c_52_18_1_False_shift when others;
  -- node of type 'output' in stage 13 with id 53 and associated fundamentals [[1013], [128], [834]]
  c_53_resize <= c_52;
  c_53 <= shift_left(c_53_resize, 0);
  -- node of type 'mux' in stage 17 with id 54 and associated fundamentals [[900], [941], [974]]
  c_54_24_1_False_resize <= c_24;
  c_54_24_1_False_shift <= shift_left(c_54_24_1_False_resize, 1);
  c_54_27_0_False_resize <= c_27;
  c_54_27_0_False_shift <= shift_left(c_54_27_0_False_resize, 0);
  c_54_45_0_False_resize <= c_45;
  c_54_45_0_False_shift <= shift_left(c_54_45_0_False_resize, 0);
  with config_select_17 select c_54_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_54_sel select c_54 <=
    c_54_24_1_False_shift when "00",
    c_54_27_0_False_shift when "01",
    c_54_45_0_False_shift when others;
  -- node of type 'output' in stage 17 with id 55 and associated fundamentals [[900], [941], [974]]
  c_55_resize <= c_54;
  c_55 <= shift_left(c_55_resize, 0);
  -- node of type 'mux' in stage 17 with id 56 and associated fundamentals [[744], [1003], [548]]
  c_56_30_2_False_resize <= c_30;
  c_56_30_2_False_shift <= shift_left(c_56_30_2_False_resize, 2);
  c_56_39_0_False_resize <= c_39;
  c_56_39_0_False_shift <= shift_left(c_56_39_0_False_resize, 0);
  c_56_45_0_False_resize <= c_45;
  c_56_45_0_False_shift <= shift_left(c_56_45_0_False_resize, 0);
  with config_select_17 select c_56_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_56_sel select c_56 <=
    c_56_30_2_False_shift when "00",
    c_56_39_0_False_shift when "01",
    c_56_45_0_False_shift when others;
  -- node of type 'output' in stage 17 with id 57 and associated fundamentals [[744], [1003], [548]]
  c_57_resize <= c_56;
  c_57 <= shift_left(c_57_resize, 0);
  -- node of type 'mux' in stage 17 with id 58 and associated fundamentals [[925], [321], [645]]
  c_58_33_0_False_resize <= c_33;
  c_58_33_0_False_shift <= shift_left(c_58_33_0_False_resize, 0);
  c_58_36_0_False_resize <= c_36;
  c_58_36_0_False_shift <= shift_left(c_58_36_0_False_resize, 0);
  c_58_42_0_False_resize <= c_42;
  c_58_42_0_False_shift <= shift_left(c_58_42_0_False_resize, 0);
  with config_select_17 select c_58_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_58_sel select c_58 <=
    c_58_33_0_False_shift when "00",
    c_58_36_0_False_shift when "01",
    c_58_42_0_False_shift when others;
  -- node of type 'output' in stage 17 with id 59 and associated fundamentals [[925], [321], [645]]
  c_59_resize <= c_58;
  c_59 <= shift_left(c_59_resize, 0);
  -- node of type 'mux' in stage 15 with id 60 and associated fundamentals [[979], [609], [712]]
  c_60_36_0_False_resize <= c_36;
  c_60_36_0_False_shift <= shift_left(c_60_36_0_False_resize, 0);
  c_60_30_0_False_resize <= c_30;
  c_60_30_0_False_shift <= shift_left(c_60_30_0_False_resize, 0);
  with config_select_15 select c_60_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_60_sel select c_60 <=
    c_60_36_0_False_shift when "0",
    c_60_30_0_False_shift when others;
  -- node of type 'output' in stage 15 with id 61 and associated fundamentals [[979], [609], [712]]
  c_61_resize <= c_60;
  c_61 <= shift_left(c_61_resize, 0);
  -- node of type 'mux' in stage 9 with id 62 and associated fundamentals [[-255], [-740], [-62]]
  c_62_12_0_False_resize <= resize(c_12, 26);
  c_62_12_0_False_shift <= shift_left(c_62_12_0_False_resize, 0);
  c_62_3_1_False_resize <= resize(c_3, 26);
  c_62_3_1_False_shift <= shift_left(c_62_3_1_False_resize, 1);
  c_62_15_0_False_resize <= c_15(25 downto 0);
  c_62_15_0_False_shift <= shift_left(c_62_15_0_False_resize, 0);
  with config_select_9 select c_62_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_62_sel select c_62 <=
    c_62_12_0_False_shift when "00",
    c_62_3_1_False_shift when "01",
    c_62_15_0_False_shift when others;
  -- node of type 'output' in stage 9 with id 63 and associated fundamentals [[255], [740], [62]]
  c_63_resize <= c_62;
  c_63 <= -shift_left(c_63_resize, 0);
  -- node of type 'mux' in stage 17 with id 64 and associated fundamentals [[555], [741], [84]]
  c_64_42_0_False_resize <= c_42;
  c_64_42_0_False_shift <= shift_left(c_64_42_0_False_resize, 0);
  c_64_45_0_False_resize <= c_45;
  c_64_45_0_False_shift <= shift_left(c_64_45_0_False_resize, 0);
  c_64_27_0_False_resize <= c_27;
  c_64_27_0_False_shift <= shift_left(c_64_27_0_False_resize, 0);
  with config_select_17 select c_64_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_64_sel select c_64 <=
    c_64_42_0_False_shift when "00",
    c_64_45_0_False_shift when "01",
    c_64_27_0_False_shift when others;
  -- node of type 'output' in stage 17 with id 65 and associated fundamentals [[555], [741], [84]]
  c_65_resize <= c_64;
  c_65 <= shift_left(c_65_resize, 0);
end architecture;
