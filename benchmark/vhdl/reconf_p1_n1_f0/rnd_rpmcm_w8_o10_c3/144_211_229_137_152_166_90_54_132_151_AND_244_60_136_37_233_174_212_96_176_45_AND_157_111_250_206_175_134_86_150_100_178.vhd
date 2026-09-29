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
  signal config_select_7: std_logic_vector(1 downto 0);
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
  signal c_2_0_3_False_resize: signed(20 downto 0);
  signal c_2_0_3_False_shift: signed(20 downto 0);
  signal c_2_0_0_False_resize: signed(20 downto 0);
  signal c_2_0_0_False_shift: signed(20 downto 0);
  signal c_2_0_5_False_resize: signed(20 downto 0);
  signal c_2_0_5_False_shift: signed(20 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(17 downto 0);
  signal c_4_0_0_False_resize: signed(17 downto 0);
  signal c_4_0_0_False_shift: signed(17 downto 0);
  signal c_4_0_1_False_resize: signed(17 downto 0);
  signal c_4_0_1_False_shift: signed(17 downto 0);
  signal c_4_0_2_False_resize: signed(17 downto 0);
  signal c_4_0_2_False_shift: signed(17 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(19 downto 0);
  signal c_5_0_0_False_resize: signed(19 downto 0);
  signal c_5_0_0_False_shift: signed(19 downto 0);
  signal c_5_0_1_False_resize: signed(19 downto 0);
  signal c_5_0_1_False_shift: signed(19 downto 0);
  signal c_5_0_4_False_resize: signed(19 downto 0);
  signal c_5_0_4_False_shift: signed(19 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(21 downto 0);
  signal c_6_i0_resize: signed(21 downto 0);
  signal c_6_i1_resize: signed(21 downto 0);
  signal c_6_i0_shift: signed(21 downto 0);
  signal c_6_i1_shift: signed(21 downto 0);
  signal c_6_arith: signed(21 downto 0);
  signal c_6_oshift: signed(21 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_0_0_False_resize: signed(23 downto 0);
  signal c_7_0_0_False_shift: signed(23 downto 0);
  signal c_7_0_8_False_resize: signed(23 downto 0);
  signal c_7_0_8_False_shift: signed(23 downto 0);
  signal c_7_0_2_False_resize: signed(23 downto 0);
  signal c_7_0_2_False_shift: signed(23 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(20 downto 0);
  signal c_8_0_5_False_resize: signed(20 downto 0);
  signal c_8_0_5_False_shift: signed(20 downto 0);
  signal c_8_0_2_False_resize: signed(20 downto 0);
  signal c_8_0_2_False_shift: signed(20 downto 0);
  signal c_8_0_0_False_resize: signed(20 downto 0);
  signal c_8_0_0_False_shift: signed(20 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(24 downto 0);
  signal c_9_i0_resize: signed(24 downto 0);
  signal c_9_i1_resize: signed(24 downto 0);
  signal c_9_i0_shift: signed(24 downto 0);
  signal c_9_i1_shift: signed(24 downto 0);
  signal c_9_arith: signed(24 downto 0);
  signal c_9_oshift: signed(24 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(21 downto 0);
  signal c_10_i0_resize: signed(21 downto 0);
  signal c_10_i1_resize: signed(21 downto 0);
  signal c_10_i0_shift: signed(21 downto 0);
  signal c_10_i1_shift: signed(21 downto 0);
  signal c_10_arith: signed(21 downto 0);
  signal c_10_oshift: signed(21 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(21 downto 0);
  signal c_11_6_4_False_resize: signed(21 downto 0);
  signal c_11_6_4_False_shift: signed(21 downto 0);
  signal c_11_9_0_False_resize: signed(21 downto 0);
  signal c_11_9_0_False_shift: signed(21 downto 0);
  signal c_11_6_0_False_resize: signed(21 downto 0);
  signal c_11_6_0_False_shift: signed(21 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_i0_resize: signed(23 downto 0);
  signal c_12_i1_resize: signed(23 downto 0);
  signal c_12_i0_shift: signed(23 downto 0);
  signal c_12_i1_shift: signed(23 downto 0);
  signal c_12_arith: signed(23 downto 0);
  signal c_12_oshift: signed(23 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(21 downto 0);
  signal c_13_0_0_False_resize: signed(21 downto 0);
  signal c_13_0_0_False_shift: signed(21 downto 0);
  signal c_13_0_6_False_resize: signed(21 downto 0);
  signal c_13_0_6_False_shift: signed(21 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(19 downto 0);
  signal c_14_0_0_False_resize: signed(19 downto 0);
  signal c_14_0_0_False_shift: signed(19 downto 0);
  signal c_14_0_4_False_resize: signed(19 downto 0);
  signal c_14_0_4_False_shift: signed(19 downto 0);
  signal c_14_0_3_False_resize: signed(19 downto 0);
  signal c_14_0_3_False_shift: signed(19 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(21 downto 0);
  signal c_15_i0_resize: signed(21 downto 0);
  signal c_15_i1_resize: signed(21 downto 0);
  signal c_15_i0_shift: signed(21 downto 0);
  signal c_15_i1_shift: signed(21 downto 0);
  signal c_15_arith: signed(21 downto 0);
  signal c_15_oshift: signed(21 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(22 downto 0);
  signal c_16_9_0_False_resize: signed(22 downto 0);
  signal c_16_9_0_False_shift: signed(22 downto 0);
  signal c_16_6_4_False_resize: signed(22 downto 0);
  signal c_16_6_4_False_shift: signed(22 downto 0);
  signal c_16_15_2_False_resize: signed(22 downto 0);
  signal c_16_15_2_False_shift: signed(22 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_17_9_0_False_resize: signed(24 downto 0);
  signal c_17_9_0_False_shift: signed(24 downto 0);
  signal c_17_15_0_False_resize: signed(24 downto 0);
  signal c_17_15_0_False_shift: signed(24 downto 0);
  signal c_17_3_3_False_resize: signed(24 downto 0);
  signal c_17_3_3_False_shift: signed(24 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_i0_resize: signed(23 downto 0);
  signal c_18_i1_resize: signed(23 downto 0);
  signal c_18_i0_shift: signed(23 downto 0);
  signal c_18_i1_shift: signed(23 downto 0);
  signal c_18_arith: signed(23 downto 0);
  signal c_18_oshift: signed(23 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(19 downto 0);
  signal c_19_0_0_False_resize: signed(19 downto 0);
  signal c_19_0_0_False_shift: signed(19 downto 0);
  signal c_19_0_1_False_resize: signed(19 downto 0);
  signal c_19_0_1_False_shift: signed(19 downto 0);
  signal c_19_0_4_False_resize: signed(19 downto 0);
  signal c_19_0_4_False_shift: signed(19 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(20 downto 0);
  signal c_20_0_0_False_resize: signed(20 downto 0);
  signal c_20_0_0_False_shift: signed(20 downto 0);
  signal c_20_0_3_False_resize: signed(20 downto 0);
  signal c_20_0_3_False_shift: signed(20 downto 0);
  signal c_20_0_5_False_resize: signed(20 downto 0);
  signal c_20_0_5_False_shift: signed(20 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_21_i0_resize: signed(22 downto 0);
  signal c_21_i1_resize: signed(22 downto 0);
  signal c_21_i0_shift: signed(22 downto 0);
  signal c_21_i1_shift: signed(22 downto 0);
  signal c_21_arith: signed(22 downto 0);
  signal c_21_oshift: signed(22 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(22 downto 0);
  signal c_22_3_1_False_resize: signed(22 downto 0);
  signal c_22_3_1_False_shift: signed(22 downto 0);
  signal c_22_9_1_False_resize: signed(22 downto 0);
  signal c_22_9_1_False_shift: signed(22 downto 0);
  signal c_22_15_0_False_resize: signed(22 downto 0);
  signal c_22_15_0_False_shift: signed(22 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(22 downto 0);
  signal c_23_21_2_False_resize: signed(22 downto 0);
  signal c_23_21_2_False_shift: signed(22 downto 0);
  signal c_23_6_5_False_resize: signed(22 downto 0);
  signal c_23_6_5_False_shift: signed(22 downto 0);
  signal c_23_9_0_False_resize: signed(22 downto 0);
  signal c_23_9_0_False_shift: signed(22 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_i0_resize: signed(23 downto 0);
  signal c_24_i1_resize: signed(23 downto 0);
  signal c_24_i0_shift: signed(23 downto 0);
  signal c_24_i1_shift: signed(23 downto 0);
  signal c_24_arith: signed(23 downto 0);
  signal c_24_oshift: signed(23 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(23 downto 0);
  signal c_25_21_0_False_resize: signed(23 downto 0);
  signal c_25_21_0_False_shift: signed(23 downto 0);
  signal c_25_21_1_False_resize: signed(23 downto 0);
  signal c_25_21_1_False_shift: signed(23 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(22 downto 0);
  signal c_26_6_2_False_resize: signed(22 downto 0);
  signal c_26_6_2_False_shift: signed(22 downto 0);
  signal c_26_21_0_False_resize: signed(22 downto 0);
  signal c_26_21_0_False_shift: signed(22 downto 0);
  signal c_26_15_2_False_resize: signed(22 downto 0);
  signal c_26_15_2_False_shift: signed(22 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_i0_resize: signed(23 downto 0);
  signal c_27_i1_resize: signed(23 downto 0);
  signal c_27_i0_shift: signed(23 downto 0);
  signal c_27_i1_shift: signed(23 downto 0);
  signal c_27_arith: signed(23 downto 0);
  signal c_27_oshift: signed(23 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(23 downto 0);
  signal c_28_21_2_False_resize: signed(23 downto 0);
  signal c_28_21_2_False_shift: signed(23 downto 0);
  signal c_28_9_0_False_resize: signed(23 downto 0);
  signal c_28_9_0_False_shift: signed(23 downto 0);
  signal c_28_9_6_False_resize: signed(23 downto 0);
  signal c_28_9_6_False_shift: signed(23 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_21_0_False_resize: signed(23 downto 0);
  signal c_29_21_0_False_shift: signed(23 downto 0);
  signal c_29_15_5_False_resize: signed(23 downto 0);
  signal c_29_15_5_False_shift: signed(23 downto 0);
  signal c_29_3_0_False_resize: signed(23 downto 0);
  signal c_29_3_0_False_shift: signed(23 downto 0);
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
  signal c_31_6_0_False_resize: signed(23 downto 0);
  signal c_31_6_0_False_shift: signed(23 downto 0);
  signal c_31_9_6_False_resize: signed(23 downto 0);
  signal c_31_9_6_False_shift: signed(23 downto 0);
  signal c_31_3_2_False_resize: signed(23 downto 0);
  signal c_31_3_2_False_shift: signed(23 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(21 downto 0);
  signal c_32_15_3_False_resize: signed(21 downto 0);
  signal c_32_15_3_False_shift: signed(21 downto 0);
  signal c_32_6_2_False_resize: signed(21 downto 0);
  signal c_32_6_2_False_shift: signed(21 downto 0);
  signal c_32_21_0_False_resize: signed(21 downto 0);
  signal c_32_21_0_False_shift: signed(21 downto 0);
  signal c_32_sel: std_logic_vector(1 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_i0_resize: signed(23 downto 0);
  signal c_33_i1_resize: signed(23 downto 0);
  signal c_33_i0_shift: signed(23 downto 0);
  signal c_33_i1_shift: signed(23 downto 0);
  signal c_33_arith: signed(23 downto 0);
  signal c_33_oshift: signed(23 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_15_1_False_resize: signed(23 downto 0);
  signal c_34_15_1_False_shift: signed(23 downto 0);
  signal c_34_15_0_False_resize: signed(23 downto 0);
  signal c_34_15_0_False_shift: signed(23 downto 0);
  signal c_34_6_2_False_resize: signed(23 downto 0);
  signal c_34_6_2_False_shift: signed(23 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_9_6_False_resize: signed(23 downto 0);
  signal c_35_9_6_False_shift: signed(23 downto 0);
  signal c_35_21_0_False_resize: signed(23 downto 0);
  signal c_35_21_0_False_shift: signed(23 downto 0);
  signal c_35_3_1_False_resize: signed(23 downto 0);
  signal c_35_3_1_False_shift: signed(23 downto 0);
  signal c_35_sel: std_logic_vector(1 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_i0_resize: signed(23 downto 0);
  signal c_36_i1_resize: signed(23 downto 0);
  signal c_36_i0_shift: signed(23 downto 0);
  signal c_36_i1_shift: signed(23 downto 0);
  signal c_36_arith: signed(23 downto 0);
  signal c_36_oshift: signed(23 downto 0);
  signal c_36_sub_sel: std_logic;
  signal c_37: signed(22 downto 0);
  signal c_37_15_1_False_resize: signed(22 downto 0);
  signal c_37_15_1_False_shift: signed(22 downto 0);
  signal c_37_3_3_False_resize: signed(22 downto 0);
  signal c_37_3_3_False_shift: signed(22 downto 0);
  signal c_37_6_0_False_resize: signed(22 downto 0);
  signal c_37_6_0_False_shift: signed(22 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(24 downto 0);
  signal c_38_6_4_False_resize: signed(24 downto 0);
  signal c_38_6_4_False_shift: signed(24 downto 0);
  signal c_38_9_0_False_resize: signed(24 downto 0);
  signal c_38_9_0_False_shift: signed(24 downto 0);
  signal c_38_6_1_False_resize: signed(24 downto 0);
  signal c_38_6_1_False_shift: signed(24 downto 0);
  signal c_38_sel: std_logic_vector(1 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_i0_resize: signed(23 downto 0);
  signal c_39_i1_resize: signed(23 downto 0);
  signal c_39_i0_shift: signed(23 downto 0);
  signal c_39_i1_shift: signed(23 downto 0);
  signal c_39_arith: signed(23 downto 0);
  signal c_39_oshift: signed(23 downto 0);
  signal c_39_sub_sel: std_logic;
  signal c_40: signed(21 downto 0);
  signal c_40_9_0_False_resize: signed(21 downto 0);
  signal c_40_9_0_False_shift: signed(21 downto 0);
  signal c_40_3_0_False_resize: signed(21 downto 0);
  signal c_40_3_0_False_shift: signed(21 downto 0);
  signal c_40_15_0_False_resize: signed(21 downto 0);
  signal c_40_15_0_False_shift: signed(21 downto 0);
  signal c_40_sel: std_logic_vector(1 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_i0_resize: signed(23 downto 0);
  signal c_41_i1_resize: signed(23 downto 0);
  signal c_41_i0_shift: signed(23 downto 0);
  signal c_41_i1_shift: signed(23 downto 0);
  signal c_41_arith: signed(23 downto 0);
  signal c_41_oshift: signed(23 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_9_3_False_resize: signed(23 downto 0);
  signal c_42_9_3_False_shift: signed(23 downto 0);
  signal c_42_9_0_False_resize: signed(23 downto 0);
  signal c_42_9_0_False_shift: signed(23 downto 0);
  signal c_42_15_0_False_resize: signed(23 downto 0);
  signal c_42_15_0_False_shift: signed(23 downto 0);
  signal c_42_sel: std_logic_vector(1 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_3_2_False_resize: signed(23 downto 0);
  signal c_43_3_2_False_shift: signed(23 downto 0);
  signal c_43_6_0_False_resize: signed(23 downto 0);
  signal c_43_6_0_False_shift: signed(23 downto 0);
  signal c_43_3_0_False_resize: signed(23 downto 0);
  signal c_43_3_0_False_shift: signed(23 downto 0);
  signal c_43_sel: std_logic_vector(1 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_i0_resize: signed(23 downto 0);
  signal c_44_i1_resize: signed(23 downto 0);
  signal c_44_i0_shift: signed(23 downto 0);
  signal c_44_i1_shift: signed(23 downto 0);
  signal c_44_arith: signed(23 downto 0);
  signal c_44_oshift: signed(23 downto 0);
  signal c_44_sub_sel: std_logic;
  signal c_45: signed(23 downto 0);
  signal c_45_44_0_False_resize: signed(23 downto 0);
  signal c_45_44_0_False_shift: signed(23 downto 0);
  signal c_45_36_2_False_resize: signed(23 downto 0);
  signal c_45_36_2_False_shift: signed(23 downto 0);
  signal c_45_27_1_False_resize: signed(23 downto 0);
  signal c_45_27_1_False_shift: signed(23 downto 0);
  signal c_45_sel: std_logic_vector(1 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_resize: signed(23 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_18_0_False_resize: signed(23 downto 0);
  signal c_47_18_0_False_shift: signed(23 downto 0);
  signal c_47_12_0_False_resize: signed(23 downto 0);
  signal c_47_12_0_False_shift: signed(23 downto 0);
  signal c_47_41_0_False_resize: signed(23 downto 0);
  signal c_47_41_0_False_shift: signed(23 downto 0);
  signal c_47_sel: std_logic_vector(1 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_48_resize: signed(23 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_49_41_1_False_resize: signed(23 downto 0);
  signal c_49_41_1_False_shift: signed(23 downto 0);
  signal c_49_24_0_False_resize: signed(23 downto 0);
  signal c_49_24_0_False_shift: signed(23 downto 0);
  signal c_49_18_0_False_resize: signed(23 downto 0);
  signal c_49_18_0_False_shift: signed(23 downto 0);
  signal c_49_sel: std_logic_vector(1 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_50_resize: signed(23 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_51_33_0_False_resize: signed(23 downto 0);
  signal c_51_33_0_False_shift: signed(23 downto 0);
  signal c_51_39_0_False_resize: signed(23 downto 0);
  signal c_51_39_0_False_shift: signed(23 downto 0);
  signal c_51_30_0_False_resize: signed(23 downto 0);
  signal c_51_30_0_False_shift: signed(23 downto 0);
  signal c_51_sel: std_logic_vector(1 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_52_resize: signed(23 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_53_44_0_False_resize: signed(23 downto 0);
  signal c_53_44_0_False_shift: signed(23 downto 0);
  signal c_53_30_0_False_resize: signed(23 downto 0);
  signal c_53_30_0_False_shift: signed(23 downto 0);
  signal c_53_36_0_False_resize: signed(23 downto 0);
  signal c_53_36_0_False_shift: signed(23 downto 0);
  signal c_53_sel: std_logic_vector(1 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_54_resize: signed(23 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_55_36_0_False_resize: signed(23 downto 0);
  signal c_55_36_0_False_shift: signed(23 downto 0);
  signal c_55_12_1_False_resize: signed(23 downto 0);
  signal c_55_12_1_False_shift: signed(23 downto 0);
  signal c_55_41_1_False_resize: signed(23 downto 0);
  signal c_55_41_1_False_shift: signed(23 downto 0);
  signal c_55_sel: std_logic_vector(1 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_56_resize: signed(23 downto 0);
  signal c_57: signed(23 downto 0);
  signal c_57_27_1_False_resize: signed(23 downto 0);
  signal c_57_27_1_False_shift: signed(23 downto 0);
  signal c_57_33_0_False_resize: signed(23 downto 0);
  signal c_57_33_0_False_shift: signed(23 downto 0);
  signal c_57_24_0_False_resize: signed(23 downto 0);
  signal c_57_24_0_False_shift: signed(23 downto 0);
  signal c_57_sel: std_logic_vector(1 downto 0);
  signal c_58: signed(23 downto 0);
  signal c_58_resize: signed(23 downto 0);
  signal c_59: signed(23 downto 0);
  signal c_59_44_1_False_resize: signed(23 downto 0);
  signal c_59_44_1_False_shift: signed(23 downto 0);
  signal c_59_33_2_False_resize: signed(23 downto 0);
  signal c_59_33_2_False_shift: signed(23 downto 0);
  signal c_59_27_0_False_resize: signed(23 downto 0);
  signal c_59_27_0_False_shift: signed(23 downto 0);
  signal c_59_sel: std_logic_vector(1 downto 0);
  signal c_60: signed(23 downto 0);
  signal c_60_resize: signed(23 downto 0);
  signal c_61: signed(23 downto 0);
  signal c_61_12_0_False_resize: signed(23 downto 0);
  signal c_61_12_0_False_shift: signed(23 downto 0);
  signal c_61_39_1_False_resize: signed(23 downto 0);
  signal c_61_39_1_False_shift: signed(23 downto 0);
  signal c_61_18_2_False_resize: signed(23 downto 0);
  signal c_61_18_2_False_shift: signed(23 downto 0);
  signal c_61_sel: std_logic_vector(1 downto 0);
  signal c_62: signed(23 downto 0);
  signal c_62_resize: signed(23 downto 0);
  signal c_63: signed(23 downto 0);
  signal c_63_24_0_False_resize: signed(23 downto 0);
  signal c_63_24_0_False_shift: signed(23 downto 0);
  signal c_63_39_0_False_resize: signed(23 downto 0);
  signal c_63_39_0_False_shift: signed(23 downto 0);
  signal c_63_30_0_False_resize: signed(23 downto 0);
  signal c_63_30_0_False_shift: signed(23 downto 0);
  signal c_63_sel: std_logic_vector(1 downto 0);
  signal c_64: signed(23 downto 0);
  signal c_64_resize: signed(23 downto 0);
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
  -- output node 0 with id 46
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_46);
    end if;
  end process;
  -- output node 1 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_48);
    end if;
  end process;
  -- output node 2 with id 50
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_50);
    end if;
  end process;
  -- output node 3 with id 52
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_52);
    end if;
  end process;
  -- output node 4 with id 54
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_54);
    end if;
  end process;
  -- output node 5 with id 56
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_56);
    end if;
  end process;
  -- output node 6 with id 58
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_58);
    end if;
  end process;
  -- output node 7 with id 60
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_60);
    end if;
  end process;
  -- output node 8 with id 62
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_62);
    end if;
  end process;
  -- output node 9 with id 64
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_64);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[16], [1], [8]]
  c_1_0_0_False_resize <= resize(c_0, 20);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_3_False_resize <= resize(c_0, 20);
  c_1_0_3_False_shift <= shift_left(c_1_0_3_False_resize, 3);
  c_1_0_4_False_resize <= resize(c_0, 20);
  c_1_0_4_False_shift <= shift_left(c_1_0_4_False_resize, 4);
  with config_select_1 select c_1_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "00" => c_1 <= c_1_0_0_False_shift;
        when "01" => c_1 <= c_1_0_3_False_shift;
        when others => c_1 <= c_1_0_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [8], [32]]
  c_2_0_3_False_resize <= resize(c_0, 21);
  c_2_0_3_False_shift <= shift_left(c_2_0_3_False_resize, 3);
  c_2_0_0_False_resize <= resize(c_0, 21);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_5_False_resize <= resize(c_0, 21);
  c_2_0_5_False_shift <= shift_left(c_2_0_5_False_resize, 5);
  with config_select_1 select c_2_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_3_False_shift;
        when "01" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[15], [9], [40]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 21,
      w_o => 22,
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
      c_3 <= c_3_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[2], [1], [4]]
  c_4_0_0_False_resize <= resize(c_0, 18);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_1_False_resize <= resize(c_0, 18);
  c_4_0_1_False_shift <= shift_left(c_4_0_1_False_resize, 1);
  c_4_0_2_False_resize <= resize(c_0, 18);
  c_4_0_2_False_shift <= shift_left(c_4_0_2_False_resize, 2);
  with config_select_1 select c_4_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "00" => c_4 <= c_4_0_0_False_shift;
        when "01" => c_4 <= c_4_0_1_False_shift;
        when others => c_4 <= c_4_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[16], [1], [2]]
  c_5_0_0_False_resize <= resize(c_0, 20);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_0_1_False_resize <= resize(c_0, 20);
  c_5_0_1_False_shift <= shift_left(c_5_0_1_False_resize, 1);
  c_5_0_4_False_resize <= resize(c_0, 20);
  c_5_0_4_False_shift <= shift_left(c_5_0_4_False_resize, 4);
  with config_select_1 select c_5_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_0_0_False_shift;
        when "01" => c_5 <= c_5_0_1_False_shift;
        when others => c_5 <= c_5_0_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 6 and associated fundamentals [[34], [3], [8]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 20,
      w_o => 22,
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
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[256], [4], [1]]
  c_7_0_0_False_resize <= resize(c_0, 24);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  c_7_0_8_False_resize <= resize(c_0, 24);
  c_7_0_8_False_shift <= shift_left(c_7_0_8_False_resize, 8);
  c_7_0_2_False_resize <= resize(c_0, 24);
  c_7_0_2_False_shift <= shift_left(c_7_0_2_False_resize, 2);
  with config_select_1 select c_7_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_0_0_False_shift;
        when "01" => c_7 <= c_7_0_8_False_shift;
        when others => c_7 <= c_7_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[1], [32], [4]]
  c_8_0_5_False_resize <= resize(c_0, 21);
  c_8_0_5_False_shift <= shift_left(c_8_0_5_False_resize, 5);
  c_8_0_2_False_resize <= resize(c_0, 21);
  c_8_0_2_False_shift <= shift_left(c_8_0_2_False_resize, 2);
  c_8_0_0_False_resize <= resize(c_0, 21);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  with config_select_1 select c_8_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "00" => c_8 <= c_8_0_5_False_shift;
        when "01" => c_8 <= c_8_0_2_False_shift;
        when others => c_8 <= c_8_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 9 and associated fundamentals [[257], [-28], [-3]]
  with config_select_2 select c_9_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_9_sub_sel,
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 10 and associated fundamentals [[49], [6], [32]]
  with config_select_3 select c_10_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 22,
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
      x_i => c_3,
      y_i => c_6,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[34], [48], [-3]]
  c_11_6_4_False_resize <= c_6;
  c_11_6_4_False_shift <= shift_left(c_11_6_4_False_resize, 4);
  c_11_9_0_False_resize <= c_9(21 downto 0);
  c_11_9_0_False_shift <= shift_left(c_11_9_0_False_resize, 0);
  c_11_6_0_False_resize <= c_6;
  c_11_6_0_False_shift <= shift_left(c_11_6_0_False_resize, 0);
  with config_select_3 select c_11_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_6_4_False_shift;
        when "01" => c_11 <= c_11_9_0_False_shift;
        when others => c_11 <= c_11_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 12 and associated fundamentals [[132], [60], [67]]
  with config_select_4 select c_12_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
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
      sub_i => c_12_sub_sel,
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 13 and associated fundamentals [[1], [64], [1]]
  c_13_0_0_False_resize <= resize(c_0, 22);
  c_13_0_0_False_shift <= shift_left(c_13_0_0_False_resize, 0);
  c_13_0_6_False_resize <= resize(c_0, 22);
  c_13_0_6_False_shift <= shift_left(c_13_0_6_False_resize, 6);
  with config_select_1 select c_13_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_0_0_False_shift;
        when others => c_13 <= c_13_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 14 and associated fundamentals [[8], [1], [16]]
  c_14_0_0_False_resize <= resize(c_0, 20);
  c_14_0_0_False_shift <= shift_left(c_14_0_0_False_resize, 0);
  c_14_0_4_False_resize <= resize(c_0, 20);
  c_14_0_4_False_shift <= shift_left(c_14_0_4_False_resize, 4);
  c_14_0_3_False_resize <= resize(c_0, 20);
  c_14_0_3_False_shift <= shift_left(c_14_0_3_False_resize, 3);
  with config_select_1 select c_14_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_0_0_False_shift;
        when "01" => c_14 <= c_14_0_4_False_shift;
        when others => c_14 <= c_14_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 15 and associated fundamentals [[-7], [63], [17]]
  with config_select_2 select c_15_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
      w_o => 22,
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
      c_15 <= c_15_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 16 and associated fundamentals [[-28], [-28], [128]]
  c_16_9_0_False_resize <= c_9(22 downto 0);
  c_16_9_0_False_shift <= shift_left(c_16_9_0_False_resize, 0);
  c_16_6_4_False_resize <= resize(c_6, 23);
  c_16_6_4_False_shift <= shift_left(c_16_6_4_False_resize, 4);
  c_16_15_2_False_resize <= resize(c_15, 23);
  c_16_15_2_False_shift <= shift_left(c_16_15_2_False_resize, 2);
  with config_select_3 select c_16_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_9_0_False_shift;
        when "01" => c_16 <= c_16_6_4_False_shift;
        when others => c_16 <= c_16_15_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 17 and associated fundamentals [[257], [72], [17]]
  c_17_9_0_False_resize <= c_9;
  c_17_9_0_False_shift <= shift_left(c_17_9_0_False_resize, 0);
  c_17_15_0_False_resize <= resize(c_15, 25);
  c_17_15_0_False_shift <= shift_left(c_17_15_0_False_resize, 0);
  c_17_3_3_False_resize <= resize(c_3, 25);
  c_17_3_3_False_shift <= shift_left(c_17_3_3_False_resize, 3);
  with config_select_3 select c_17_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "00" => c_17 <= c_17_9_0_False_shift;
        when "01" => c_17 <= c_17_15_0_False_shift;
        when others => c_17 <= c_17_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 18 and associated fundamentals [[229], [44], [111]]
  with config_select_4 select c_18_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_18_sub_sel,
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 19 and associated fundamentals [[2], [1], [16]]
  c_19_0_0_False_resize <= resize(c_0, 20);
  c_19_0_0_False_shift <= shift_left(c_19_0_0_False_resize, 0);
  c_19_0_1_False_resize <= resize(c_0, 20);
  c_19_0_1_False_shift <= shift_left(c_19_0_1_False_resize, 1);
  c_19_0_4_False_resize <= resize(c_0, 20);
  c_19_0_4_False_shift <= shift_left(c_19_0_4_False_resize, 4);
  with config_select_1 select c_19_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_0_0_False_shift;
        when "01" => c_19 <= c_19_0_1_False_shift;
        when others => c_19 <= c_19_0_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 20 and associated fundamentals [[8], [32], [1]]
  c_20_0_0_False_resize <= resize(c_0, 21);
  c_20_0_0_False_shift <= shift_left(c_20_0_0_False_resize, 0);
  c_20_0_3_False_resize <= resize(c_0, 21);
  c_20_0_3_False_shift <= shift_left(c_20_0_3_False_resize, 3);
  c_20_0_5_False_resize <= resize(c_0, 21);
  c_20_0_5_False_shift <= shift_left(c_20_0_5_False_resize, 5);
  with config_select_1 select c_20_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_0_0_False_shift;
        when "01" => c_20 <= c_20_0_3_False_shift;
        when others => c_20 <= c_20_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 21 and associated fundamentals [[18], [65], [14]]
  with config_select_2 select c_21_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 21,
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
      sub_i => c_21_sub_sel,
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 22 and associated fundamentals [[-7], [-56], [80]]
  c_22_3_1_False_resize <= resize(c_3, 23);
  c_22_3_1_False_shift <= shift_left(c_22_3_1_False_resize, 1);
  c_22_9_1_False_resize <= c_9(22 downto 0);
  c_22_9_1_False_shift <= shift_left(c_22_9_1_False_resize, 1);
  c_22_15_0_False_resize <= resize(c_15, 23);
  c_22_15_0_False_shift <= shift_left(c_22_15_0_False_resize, 0);
  with config_select_3 select c_22_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_3_1_False_shift;
        when "01" => c_22 <= c_22_9_1_False_shift;
        when others => c_22 <= c_22_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 23 and associated fundamentals [[72], [96], [-3]]
  c_23_21_2_False_resize <= c_21;
  c_23_21_2_False_shift <= shift_left(c_23_21_2_False_resize, 2);
  c_23_6_5_False_resize <= resize(c_6, 23);
  c_23_6_5_False_shift <= shift_left(c_23_6_5_False_resize, 5);
  c_23_9_0_False_resize <= c_9(22 downto 0);
  c_23_9_0_False_shift <= shift_left(c_23_9_0_False_resize, 0);
  with config_select_3 select c_23_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "00" => c_23 <= c_23_21_2_False_shift;
        when "01" => c_23 <= c_23_6_5_False_shift;
        when others => c_23 <= c_23_9_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 24 and associated fundamentals [[-151], [136], [86]]
  with config_select_4 select c_24_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
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
      sub_i => c_24_sub_sel,
      x_i => c_22,
      y_i => c_23,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 25 and associated fundamentals [[36], [130], [14]]
  c_25_21_0_False_resize <= resize(c_21, 24);
  c_25_21_0_False_shift <= shift_left(c_25_21_0_False_resize, 0);
  c_25_21_1_False_resize <= resize(c_21, 24);
  c_25_21_1_False_shift <= shift_left(c_25_21_1_False_resize, 1);
  with config_select_3 select c_25_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_21_0_False_shift;
        when others => c_25 <= c_25_21_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 26 and associated fundamentals [[18], [12], [68]]
  c_26_6_2_False_resize <= resize(c_6, 23);
  c_26_6_2_False_shift <= shift_left(c_26_6_2_False_resize, 2);
  c_26_21_0_False_resize <= c_21;
  c_26_21_0_False_shift <= shift_left(c_26_21_0_False_resize, 0);
  c_26_15_2_False_resize <= resize(c_15, 23);
  c_26_15_2_False_shift <= shift_left(c_26_15_2_False_resize, 2);
  with config_select_3 select c_26_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "00" => c_26 <= c_26_6_2_False_shift;
        when "01" => c_26 <= c_26_21_0_False_shift;
        when others => c_26 <= c_26_15_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 27 and associated fundamentals [[72], [106], [150]]
  with config_select_4 select c_27_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
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
      sub_i => c_27_sub_sel,
      x_i => c_25,
      y_i => c_26,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 28 and associated fundamentals [[72], [-28], [-192]]
  c_28_21_2_False_resize <= resize(c_21, 24);
  c_28_21_2_False_shift <= shift_left(c_28_21_2_False_resize, 2);
  c_28_9_0_False_resize <= c_9(23 downto 0);
  c_28_9_0_False_shift <= shift_left(c_28_9_0_False_resize, 0);
  c_28_9_6_False_resize <= c_9(23 downto 0);
  c_28_9_6_False_shift <= shift_left(c_28_9_6_False_resize, 6);
  with config_select_3 select c_28_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "00" => c_28 <= c_28_21_2_False_shift;
        when "01" => c_28 <= c_28_9_0_False_shift;
        when others => c_28 <= c_28_9_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 29 and associated fundamentals [[-224], [9], [14]]
  c_29_21_0_False_resize <= resize(c_21, 24);
  c_29_21_0_False_shift <= shift_left(c_29_21_0_False_resize, 0);
  c_29_15_5_False_resize <= resize(c_15, 24);
  c_29_15_5_False_shift <= shift_left(c_29_15_5_False_resize, 5);
  c_29_3_0_False_resize <= resize(c_3, 24);
  c_29_3_0_False_shift <= shift_left(c_29_3_0_False_resize, 0);
  with config_select_3 select c_29_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "00" => c_29 <= c_29_21_0_False_shift;
        when "01" => c_29 <= c_29_15_5_False_shift;
        when others => c_29 <= c_29_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 30 and associated fundamentals [[-152], [-37], [-178]]
  with config_select_4 select c_30_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_30_sub_sel,
      x_i => c_28,
      y_i => c_29,
      z_o => c_30_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_30_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 31 and associated fundamentals [[34], [36], [-192]]
  c_31_6_0_False_resize <= resize(c_6, 24);
  c_31_6_0_False_shift <= shift_left(c_31_6_0_False_resize, 0);
  c_31_9_6_False_resize <= c_9(23 downto 0);
  c_31_9_6_False_shift <= shift_left(c_31_9_6_False_resize, 6);
  c_31_3_2_False_resize <= resize(c_3, 24);
  c_31_3_2_False_shift <= shift_left(c_31_3_2_False_resize, 2);
  with config_select_3 select c_31_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "00" => c_31 <= c_31_6_0_False_shift;
        when "01" => c_31 <= c_31_9_6_False_shift;
        when others => c_31 <= c_31_3_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 32 and associated fundamentals [[-56], [12], [14]]
  c_32_15_3_False_resize <= c_15;
  c_32_15_3_False_shift <= shift_left(c_32_15_3_False_resize, 3);
  c_32_6_2_False_resize <= c_6;
  c_32_6_2_False_shift <= shift_left(c_32_6_2_False_resize, 2);
  c_32_21_0_False_resize <= c_21(21 downto 0);
  c_32_21_0_False_shift <= shift_left(c_32_21_0_False_resize, 0);
  with config_select_3 select c_32_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "00" => c_32 <= c_32_15_3_False_shift;
        when "01" => c_32 <= c_32_6_2_False_shift;
        when others => c_32 <= c_32_21_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 33 and associated fundamentals [[90], [24], [-206]]
  inst_adder_node_33: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
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
  -- node of type 'mux' in stage 3 with id 34 and associated fundamentals [[136], [126], [17]]
  c_34_15_1_False_resize <= resize(c_15, 24);
  c_34_15_1_False_shift <= shift_left(c_34_15_1_False_resize, 1);
  c_34_15_0_False_resize <= resize(c_15, 24);
  c_34_15_0_False_shift <= shift_left(c_34_15_0_False_resize, 0);
  c_34_6_2_False_resize <= resize(c_6, 24);
  c_34_6_2_False_shift <= shift_left(c_34_6_2_False_resize, 2);
  with config_select_3 select c_34_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "00" => c_34 <= c_34_15_1_False_shift;
        when "01" => c_34 <= c_34_15_0_False_shift;
        when others => c_34 <= c_34_6_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 35 and associated fundamentals [[30], [65], [-192]]
  c_35_9_6_False_resize <= c_9(23 downto 0);
  c_35_9_6_False_shift <= shift_left(c_35_9_6_False_resize, 6);
  c_35_21_0_False_resize <= resize(c_21, 24);
  c_35_21_0_False_shift <= shift_left(c_35_21_0_False_resize, 0);
  c_35_3_1_False_resize <= resize(c_3, 24);
  c_35_3_1_False_shift <= shift_left(c_35_3_1_False_resize, 1);
  with config_select_3 select c_35_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "00" => c_35 <= c_35_9_6_False_shift;
        when "01" => c_35 <= c_35_21_0_False_shift;
        when others => c_35 <= c_35_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 36 and associated fundamentals [[166], [61], [-175]]
  with config_select_4 select c_36_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_36: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_36_sub_sel,
      x_i => c_34,
      y_i => c_35,
      z_o => c_36_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_36_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 37 and associated fundamentals [[120], [3], [34]]
  c_37_15_1_False_resize <= resize(c_15, 23);
  c_37_15_1_False_shift <= shift_left(c_37_15_1_False_resize, 1);
  c_37_3_3_False_resize <= resize(c_3, 23);
  c_37_3_3_False_shift <= shift_left(c_37_3_3_False_resize, 3);
  c_37_6_0_False_resize <= resize(c_6, 23);
  c_37_6_0_False_shift <= shift_left(c_37_6_0_False_resize, 0);
  with config_select_3 select c_37_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "00" => c_37 <= c_37_15_1_False_shift;
        when "01" => c_37 <= c_37_3_3_False_shift;
        when others => c_37 <= c_37_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 38 and associated fundamentals [[257], [48], [16]]
  c_38_6_4_False_resize <= resize(c_6, 25);
  c_38_6_4_False_shift <= shift_left(c_38_6_4_False_resize, 4);
  c_38_9_0_False_resize <= c_9;
  c_38_9_0_False_shift <= shift_left(c_38_9_0_False_resize, 0);
  c_38_6_1_False_resize <= resize(c_6, 25);
  c_38_6_1_False_shift <= shift_left(c_38_6_1_False_resize, 1);
  with config_select_3 select c_38_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "00" => c_38 <= c_38_6_4_False_shift;
        when "01" => c_38 <= c_38_9_0_False_shift;
        when others => c_38 <= c_38_6_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 39 and associated fundamentals [[-137], [-45], [50]]
  with config_select_4 select c_39_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_39: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_39_sub_sel,
      x_i => c_37,
      y_i => c_38,
      z_o => c_39_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_39_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 40 and associated fundamentals [[15], [63], [-3]]
  c_40_9_0_False_resize <= c_9(21 downto 0);
  c_40_9_0_False_shift <= shift_left(c_40_9_0_False_resize, 0);
  c_40_3_0_False_resize <= c_3;
  c_40_3_0_False_shift <= shift_left(c_40_3_0_False_resize, 0);
  c_40_15_0_False_resize <= c_15;
  c_40_15_0_False_shift <= shift_left(c_40_15_0_False_resize, 0);
  with config_select_3 select c_40_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "00" => c_40 <= c_40_9_0_False_shift;
        when "01" => c_40 <= c_40_3_0_False_shift;
        when others => c_40 <= c_40_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 41 and associated fundamentals [[211], [87], [125]]
  inst_adder_node_41: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 24,
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
      x_i => c_40,
      y_i => c_10,
      z_o => c_41_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_41_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 42 and associated fundamentals [[-7], [-224], [-3]]
  c_42_9_3_False_resize <= c_9(23 downto 0);
  c_42_9_3_False_shift <= shift_left(c_42_9_3_False_resize, 3);
  c_42_9_0_False_resize <= c_9(23 downto 0);
  c_42_9_0_False_shift <= shift_left(c_42_9_0_False_resize, 0);
  c_42_15_0_False_resize <= resize(c_15, 24);
  c_42_15_0_False_shift <= shift_left(c_42_15_0_False_resize, 0);
  with config_select_3 select c_42_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "00" => c_42 <= c_42_9_3_False_shift;
        when "01" => c_42 <= c_42_9_0_False_shift;
        when others => c_42 <= c_42_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 43 and associated fundamentals [[34], [9], [160]]
  c_43_3_2_False_resize <= resize(c_3, 24);
  c_43_3_2_False_shift <= shift_left(c_43_3_2_False_resize, 2);
  c_43_6_0_False_resize <= resize(c_6, 24);
  c_43_6_0_False_shift <= shift_left(c_43_6_0_False_resize, 0);
  c_43_3_0_False_resize <= resize(c_3, 24);
  c_43_3_0_False_shift <= shift_left(c_43_3_0_False_resize, 0);
  with config_select_3 select c_43_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "00" => c_43 <= c_43_3_2_False_shift;
        when "01" => c_43 <= c_43_6_0_False_shift;
        when others => c_43 <= c_43_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 44 and associated fundamentals [[27], [-233], [157]]
  with config_select_4 select c_44_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_44: entity work.adder_node
    generic map (
      w_x_i => 24,
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
  -- node of type 'mux' in stage 5 with id 45 and associated fundamentals [[144], [244], [157]]
  c_45_44_0_False_resize <= c_44;
  c_45_44_0_False_shift <= shift_left(c_45_44_0_False_resize, 0);
  c_45_36_2_False_resize <= c_36;
  c_45_36_2_False_shift <= shift_left(c_45_36_2_False_resize, 2);
  c_45_27_1_False_resize <= c_27;
  c_45_27_1_False_shift <= shift_left(c_45_27_1_False_resize, 1);
  with config_select_5 select c_45_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "00" => c_45 <= c_45_44_0_False_shift;
        when "01" => c_45 <= c_45_36_2_False_shift;
        when others => c_45 <= c_45_27_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 46 and associated fundamentals [[144], [244], [157]]
  c_46_resize <= c_45;
  c_46 <= shift_left(c_46_resize, 0);
  -- node of type 'mux' in stage 5 with id 47 and associated fundamentals [[211], [60], [111]]
  c_47_18_0_False_resize <= c_18;
  c_47_18_0_False_shift <= shift_left(c_47_18_0_False_resize, 0);
  c_47_12_0_False_resize <= c_12;
  c_47_12_0_False_shift <= shift_left(c_47_12_0_False_resize, 0);
  c_47_41_0_False_resize <= c_41;
  c_47_41_0_False_shift <= shift_left(c_47_41_0_False_resize, 0);
  with config_select_5 select c_47_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "00" => c_47 <= c_47_18_0_False_shift;
        when "01" => c_47 <= c_47_12_0_False_shift;
        when others => c_47 <= c_47_41_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 48 and associated fundamentals [[211], [60], [111]]
  c_48_resize <= c_47;
  c_48 <= shift_left(c_48_resize, 0);
  -- node of type 'mux' in stage 5 with id 49 and associated fundamentals [[229], [136], [250]]
  c_49_41_1_False_resize <= c_41;
  c_49_41_1_False_shift <= shift_left(c_49_41_1_False_resize, 1);
  c_49_24_0_False_resize <= c_24;
  c_49_24_0_False_shift <= shift_left(c_49_24_0_False_resize, 0);
  c_49_18_0_False_resize <= c_18;
  c_49_18_0_False_shift <= shift_left(c_49_18_0_False_resize, 0);
  with config_select_5 select c_49_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_49_sel is
        when "00" => c_49 <= c_49_41_1_False_shift;
        when "01" => c_49 <= c_49_24_0_False_shift;
        when others => c_49 <= c_49_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 50 and associated fundamentals [[229], [136], [250]]
  c_50_resize <= c_49;
  c_50 <= shift_left(c_50_resize, 0);
  -- node of type 'mux' in stage 5 with id 51 and associated fundamentals [[-137], [-37], [-206]]
  c_51_33_0_False_resize <= c_33;
  c_51_33_0_False_shift <= shift_left(c_51_33_0_False_resize, 0);
  c_51_39_0_False_resize <= c_39;
  c_51_39_0_False_shift <= shift_left(c_51_39_0_False_resize, 0);
  c_51_30_0_False_resize <= c_30;
  c_51_30_0_False_shift <= shift_left(c_51_30_0_False_resize, 0);
  with config_select_5 select c_51_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_51_sel is
        when "00" => c_51 <= c_51_33_0_False_shift;
        when "01" => c_51 <= c_51_39_0_False_shift;
        when others => c_51 <= c_51_30_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 52 and associated fundamentals [[137], [37], [206]]
  c_52_resize <= c_51;
  c_52 <= -shift_left(c_52_resize, 0);
  -- node of type 'mux' in stage 5 with id 53 and associated fundamentals [[-152], [-233], [-175]]
  c_53_44_0_False_resize <= c_44;
  c_53_44_0_False_shift <= shift_left(c_53_44_0_False_resize, 0);
  c_53_30_0_False_resize <= c_30;
  c_53_30_0_False_shift <= shift_left(c_53_30_0_False_resize, 0);
  c_53_36_0_False_resize <= c_36;
  c_53_36_0_False_shift <= shift_left(c_53_36_0_False_resize, 0);
  with config_select_5 select c_53_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_53_sel is
        when "00" => c_53 <= c_53_44_0_False_shift;
        when "01" => c_53 <= c_53_30_0_False_shift;
        when others => c_53 <= c_53_36_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 54 and associated fundamentals [[152], [233], [175]]
  c_54_resize <= c_53;
  c_54 <= -shift_left(c_54_resize, 0);
  -- node of type 'mux' in stage 5 with id 55 and associated fundamentals [[166], [174], [134]]
  c_55_36_0_False_resize <= c_36;
  c_55_36_0_False_shift <= shift_left(c_55_36_0_False_resize, 0);
  c_55_12_1_False_resize <= c_12;
  c_55_12_1_False_shift <= shift_left(c_55_12_1_False_resize, 1);
  c_55_41_1_False_resize <= c_41;
  c_55_41_1_False_shift <= shift_left(c_55_41_1_False_resize, 1);
  with config_select_5 select c_55_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_55_sel is
        when "00" => c_55 <= c_55_36_0_False_shift;
        when "01" => c_55 <= c_55_12_1_False_shift;
        when others => c_55 <= c_55_41_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 56 and associated fundamentals [[166], [174], [134]]
  c_56_resize <= c_55;
  c_56 <= shift_left(c_56_resize, 0);
  -- node of type 'mux' in stage 5 with id 57 and associated fundamentals [[90], [212], [86]]
  c_57_27_1_False_resize <= c_27;
  c_57_27_1_False_shift <= shift_left(c_57_27_1_False_resize, 1);
  c_57_33_0_False_resize <= c_33;
  c_57_33_0_False_shift <= shift_left(c_57_33_0_False_resize, 0);
  c_57_24_0_False_resize <= c_24;
  c_57_24_0_False_shift <= shift_left(c_57_24_0_False_resize, 0);
  with config_select_5 select c_57_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_57_sel is
        when "00" => c_57 <= c_57_27_1_False_shift;
        when "01" => c_57 <= c_57_33_0_False_shift;
        when others => c_57 <= c_57_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 58 and associated fundamentals [[90], [212], [86]]
  c_58_resize <= c_57;
  c_58 <= shift_left(c_58_resize, 0);
  -- node of type 'mux' in stage 5 with id 59 and associated fundamentals [[54], [96], [150]]
  c_59_44_1_False_resize <= c_44;
  c_59_44_1_False_shift <= shift_left(c_59_44_1_False_resize, 1);
  c_59_33_2_False_resize <= c_33;
  c_59_33_2_False_shift <= shift_left(c_59_33_2_False_resize, 2);
  c_59_27_0_False_resize <= c_27;
  c_59_27_0_False_shift <= shift_left(c_59_27_0_False_resize, 0);
  with config_select_5 select c_59_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_59_sel is
        when "00" => c_59 <= c_59_44_1_False_shift;
        when "01" => c_59 <= c_59_33_2_False_shift;
        when others => c_59 <= c_59_27_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 60 and associated fundamentals [[54], [96], [150]]
  c_60_resize <= c_59;
  c_60 <= shift_left(c_60_resize, 0);
  -- node of type 'mux' in stage 5 with id 61 and associated fundamentals [[132], [176], [100]]
  c_61_12_0_False_resize <= c_12;
  c_61_12_0_False_shift <= shift_left(c_61_12_0_False_resize, 0);
  c_61_39_1_False_resize <= c_39;
  c_61_39_1_False_shift <= shift_left(c_61_39_1_False_resize, 1);
  c_61_18_2_False_resize <= c_18;
  c_61_18_2_False_shift <= shift_left(c_61_18_2_False_resize, 2);
  with config_select_5 select c_61_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_61_sel is
        when "00" => c_61 <= c_61_12_0_False_shift;
        when "01" => c_61 <= c_61_39_1_False_shift;
        when others => c_61 <= c_61_18_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 62 and associated fundamentals [[132], [176], [100]]
  c_62_resize <= c_61;
  c_62 <= shift_left(c_62_resize, 0);
  -- node of type 'mux' in stage 5 with id 63 and associated fundamentals [[-151], [-45], [-178]]
  c_63_24_0_False_resize <= c_24;
  c_63_24_0_False_shift <= shift_left(c_63_24_0_False_resize, 0);
  c_63_39_0_False_resize <= c_39;
  c_63_39_0_False_shift <= shift_left(c_63_39_0_False_resize, 0);
  c_63_30_0_False_resize <= c_30;
  c_63_30_0_False_shift <= shift_left(c_63_30_0_False_resize, 0);
  with config_select_5 select c_63_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_63_sel is
        when "00" => c_63 <= c_63_24_0_False_shift;
        when "01" => c_63 <= c_63_39_0_False_shift;
        when others => c_63 <= c_63_30_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 64 and associated fundamentals [[151], [45], [178]]
  c_64_resize <= c_63;
  c_64 <= -shift_left(c_64_resize, 0);
end architecture;
