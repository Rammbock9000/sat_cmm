library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(22 downto 0);
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
  signal c_1: signed(19 downto 0);
  signal c_1_i0_resize: signed(19 downto 0);
  signal c_1_i1_resize: signed(19 downto 0);
  signal c_1_i0_shift: signed(19 downto 0);
  signal c_1_i1_shift: signed(19 downto 0);
  signal c_1_arith: signed(19 downto 0);
  signal c_1_oshift: signed(19 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(19 downto 0);
  signal c_2_0_0_False_resize: signed(19 downto 0);
  signal c_2_0_0_False_shift: signed(19 downto 0);
  signal c_2_0_4_False_resize: signed(19 downto 0);
  signal c_2_0_4_False_shift: signed(19 downto 0);
  signal c_2_0_2_False_resize: signed(19 downto 0);
  signal c_2_0_2_False_shift: signed(19 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(18 downto 0);
  signal c_4_i0_resize: signed(18 downto 0);
  signal c_4_i1_resize: signed(18 downto 0);
  signal c_4_i0_shift: signed(18 downto 0);
  signal c_4_i1_shift: signed(18 downto 0);
  signal c_4_arith: signed(18 downto 0);
  signal c_4_oshift: signed(18 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(20 downto 0);
  signal c_5_1_1_False_resize: signed(20 downto 0);
  signal c_5_1_1_False_shift: signed(20 downto 0);
  signal c_5_4_0_False_resize: signed(20 downto 0);
  signal c_5_4_0_False_shift: signed(20 downto 0);
  signal c_5_4_1_False_resize: signed(20 downto 0);
  signal c_5_4_1_False_shift: signed(20 downto 0);
  signal c_5_4_3_False_resize: signed(20 downto 0);
  signal c_5_4_3_False_shift: signed(20 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_i0_resize: signed(22 downto 0);
  signal c_6_i1_resize: signed(22 downto 0);
  signal c_6_i0_shift: signed(22 downto 0);
  signal c_6_i1_shift: signed(22 downto 0);
  signal c_6_arith: signed(22 downto 0);
  signal c_6_oshift: signed(22 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(17 downto 0);
  signal c_7_i0_resize: signed(17 downto 0);
  signal c_7_i1_resize: signed(17 downto 0);
  signal c_7_i0_shift: signed(17 downto 0);
  signal c_7_i1_shift: signed(17 downto 0);
  signal c_7_arith: signed(17 downto 0);
  signal c_7_oshift: signed(17 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(22 downto 0);
  signal c_8_0_0_False_resize: signed(22 downto 0);
  signal c_8_0_0_False_shift: signed(22 downto 0);
  signal c_8_0_6_False_resize: signed(22 downto 0);
  signal c_8_0_6_False_shift: signed(22 downto 0);
  signal c_8_0_7_False_resize: signed(22 downto 0);
  signal c_8_0_7_False_shift: signed(22 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(21 downto 0);
  signal c_10_1_3_False_resize: signed(21 downto 0);
  signal c_10_1_3_False_shift: signed(21 downto 0);
  signal c_10_4_3_False_resize: signed(21 downto 0);
  signal c_10_4_3_False_shift: signed(21 downto 0);
  signal c_10_1_2_False_resize: signed(21 downto 0);
  signal c_10_1_2_False_shift: signed(21 downto 0);
  signal c_10_7_0_False_resize: signed(21 downto 0);
  signal c_10_7_0_False_shift: signed(21 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(19 downto 0);
  signal c_11_4_0_False_resize: signed(19 downto 0);
  signal c_11_4_0_False_shift: signed(19 downto 0);
  signal c_11_7_2_False_resize: signed(19 downto 0);
  signal c_11_7_2_False_shift: signed(19 downto 0);
  signal c_11_1_0_False_resize: signed(19 downto 0);
  signal c_11_1_0_False_shift: signed(19 downto 0);
  signal c_11_1_1_False_resize: signed(19 downto 0);
  signal c_11_1_1_False_shift: signed(19 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_i0_resize: signed(22 downto 0);
  signal c_12_i1_resize: signed(22 downto 0);
  signal c_12_i0_shift: signed(22 downto 0);
  signal c_12_i1_shift: signed(22 downto 0);
  signal c_12_arith: signed(22 downto 0);
  signal c_12_oshift: signed(22 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(19 downto 0);
  signal c_13_4_1_False_resize: signed(19 downto 0);
  signal c_13_4_1_False_shift: signed(19 downto 0);
  signal c_13_7_0_False_resize: signed(19 downto 0);
  signal c_13_7_0_False_shift: signed(19 downto 0);
  signal c_13_1_0_False_resize: signed(19 downto 0);
  signal c_13_1_0_False_shift: signed(19 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_14_4_3_False_resize: signed(22 downto 0);
  signal c_14_4_3_False_shift: signed(22 downto 0);
  signal c_14_7_0_False_resize: signed(22 downto 0);
  signal c_14_7_0_False_shift: signed(22 downto 0);
  signal c_14_4_4_False_resize: signed(22 downto 0);
  signal c_14_4_4_False_shift: signed(22 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_15_i0_resize: signed(22 downto 0);
  signal c_15_i1_resize: signed(22 downto 0);
  signal c_15_i0_shift: signed(22 downto 0);
  signal c_15_i1_shift: signed(22 downto 0);
  signal c_15_arith: signed(22 downto 0);
  signal c_15_oshift: signed(22 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(23 downto 0);
  signal c_16_1_4_False_resize: signed(23 downto 0);
  signal c_16_1_4_False_shift: signed(23 downto 0);
  signal c_16_7_0_False_resize: signed(23 downto 0);
  signal c_16_7_0_False_shift: signed(23 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_7_1_False_resize: signed(23 downto 0);
  signal c_17_7_1_False_shift: signed(23 downto 0);
  signal c_17_4_6_False_resize: signed(23 downto 0);
  signal c_17_4_6_False_shift: signed(23 downto 0);
  signal c_17_4_0_False_resize: signed(23 downto 0);
  signal c_17_4_0_False_shift: signed(23 downto 0);
  signal c_17_4_2_False_resize: signed(23 downto 0);
  signal c_17_4_2_False_shift: signed(23 downto 0);
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
  signal c_19_7_2_False_resize: signed(19 downto 0);
  signal c_19_7_2_False_shift: signed(19 downto 0);
  signal c_19_4_0_False_resize: signed(19 downto 0);
  signal c_19_4_0_False_shift: signed(19 downto 0);
  signal c_19_7_0_False_resize: signed(19 downto 0);
  signal c_19_7_0_False_shift: signed(19 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_i0_resize: signed(23 downto 0);
  signal c_20_i1_resize: signed(23 downto 0);
  signal c_20_i0_shift: signed(23 downto 0);
  signal c_20_i1_shift: signed(23 downto 0);
  signal c_20_arith: signed(23 downto 0);
  signal c_20_oshift: signed(23 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(23 downto 0);
  signal c_21_1_3_False_resize: signed(23 downto 0);
  signal c_21_1_3_False_shift: signed(23 downto 0);
  signal c_21_1_1_False_resize: signed(23 downto 0);
  signal c_21_1_1_False_shift: signed(23 downto 0);
  signal c_21_4_0_False_resize: signed(23 downto 0);
  signal c_21_4_0_False_shift: signed(23 downto 0);
  signal c_21_1_5_False_resize: signed(23 downto 0);
  signal c_21_1_5_False_shift: signed(23 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_22_4_2_False_resize: signed(22 downto 0);
  signal c_22_4_2_False_shift: signed(22 downto 0);
  signal c_22_7_5_False_resize: signed(22 downto 0);
  signal c_22_7_5_False_shift: signed(22 downto 0);
  signal c_22_7_0_False_resize: signed(22 downto 0);
  signal c_22_7_0_False_shift: signed(22 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_i0_resize: signed(23 downto 0);
  signal c_23_i1_resize: signed(23 downto 0);
  signal c_23_i0_shift: signed(23 downto 0);
  signal c_23_i1_shift: signed(23 downto 0);
  signal c_23_arith: signed(23 downto 0);
  signal c_23_oshift: signed(23 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(21 downto 0);
  signal c_24_0_0_False_resize: signed(21 downto 0);
  signal c_24_0_0_False_shift: signed(21 downto 0);
  signal c_24_0_6_False_resize: signed(21 downto 0);
  signal c_24_0_6_False_shift: signed(21 downto 0);
  signal c_24_0_1_False_resize: signed(21 downto 0);
  signal c_24_0_1_False_shift: signed(21 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_25_0_7_False_resize: signed(22 downto 0);
  signal c_25_0_7_False_shift: signed(22 downto 0);
  signal c_25_0_4_False_resize: signed(22 downto 0);
  signal c_25_0_4_False_shift: signed(22 downto 0);
  signal c_25_0_6_False_resize: signed(22 downto 0);
  signal c_25_0_6_False_shift: signed(22 downto 0);
  signal c_25_0_0_False_resize: signed(22 downto 0);
  signal c_25_0_0_False_shift: signed(22 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(22 downto 0);
  signal c_26_i0_resize: signed(22 downto 0);
  signal c_26_i1_resize: signed(22 downto 0);
  signal c_26_i0_shift: signed(22 downto 0);
  signal c_26_i1_shift: signed(22 downto 0);
  signal c_26_arith: signed(22 downto 0);
  signal c_26_oshift: signed(22 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(21 downto 0);
  signal c_27_i0_resize: signed(21 downto 0);
  signal c_27_i1_resize: signed(21 downto 0);
  signal c_27_i0_shift: signed(21 downto 0);
  signal c_27_i1_shift: signed(21 downto 0);
  signal c_27_arith: signed(21 downto 0);
  signal c_27_oshift: signed(21 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(23 downto 0);
  signal c_28_7_0_False_resize: signed(23 downto 0);
  signal c_28_7_0_False_shift: signed(23 downto 0);
  signal c_28_4_1_False_resize: signed(23 downto 0);
  signal c_28_4_1_False_shift: signed(23 downto 0);
  signal c_28_1_5_False_resize: signed(23 downto 0);
  signal c_28_1_5_False_shift: signed(23 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_i0_resize: signed(23 downto 0);
  signal c_29_i1_resize: signed(23 downto 0);
  signal c_29_i0_shift: signed(23 downto 0);
  signal c_29_i1_shift: signed(23 downto 0);
  signal c_29_arith: signed(23 downto 0);
  signal c_29_oshift: signed(23 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(21 downto 0);
  signal c_30_4_3_False_resize: signed(21 downto 0);
  signal c_30_4_3_False_shift: signed(21 downto 0);
  signal c_30_4_1_False_resize: signed(21 downto 0);
  signal c_30_4_1_False_shift: signed(21 downto 0);
  signal c_30_1_2_False_resize: signed(21 downto 0);
  signal c_30_1_2_False_shift: signed(21 downto 0);
  signal c_30_7_0_False_resize: signed(21 downto 0);
  signal c_30_7_0_False_shift: signed(21 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_7_0_False_resize: signed(23 downto 0);
  signal c_31_7_0_False_shift: signed(23 downto 0);
  signal c_31_1_0_False_resize: signed(23 downto 0);
  signal c_31_1_0_False_shift: signed(23 downto 0);
  signal c_31_4_6_False_resize: signed(23 downto 0);
  signal c_31_4_6_False_shift: signed(23 downto 0);
  signal c_31_7_1_False_resize: signed(23 downto 0);
  signal c_31_7_1_False_shift: signed(23 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_32_i0_resize: signed(23 downto 0);
  signal c_32_i1_resize: signed(23 downto 0);
  signal c_32_i0_shift: signed(23 downto 0);
  signal c_32_i1_shift: signed(23 downto 0);
  signal c_32_arith: signed(23 downto 0);
  signal c_32_oshift: signed(23 downto 0);
  signal c_32_sub_sel: std_logic;
  signal c_33: signed(22 downto 0);
  signal c_33_7_1_False_resize: signed(22 downto 0);
  signal c_33_7_1_False_shift: signed(22 downto 0);
  signal c_33_4_4_False_resize: signed(22 downto 0);
  signal c_33_4_4_False_shift: signed(22 downto 0);
  signal c_33_7_0_False_resize: signed(22 downto 0);
  signal c_33_7_0_False_shift: signed(22 downto 0);
  signal c_33_1_2_False_resize: signed(22 downto 0);
  signal c_33_1_2_False_shift: signed(22 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_i0_resize: signed(23 downto 0);
  signal c_34_i1_resize: signed(23 downto 0);
  signal c_34_i0_shift: signed(23 downto 0);
  signal c_34_i1_shift: signed(23 downto 0);
  signal c_34_arith: signed(23 downto 0);
  signal c_34_oshift: signed(23 downto 0);
  signal c_34_sub_sel: std_logic;
  signal c_35: signed(21 downto 0);
  signal c_35_1_3_False_resize: signed(21 downto 0);
  signal c_35_1_3_False_shift: signed(21 downto 0);
  signal c_35_4_0_False_resize: signed(21 downto 0);
  signal c_35_4_0_False_shift: signed(21 downto 0);
  signal c_35_4_2_False_resize: signed(21 downto 0);
  signal c_35_4_2_False_shift: signed(21 downto 0);
  signal c_35_4_1_False_resize: signed(21 downto 0);
  signal c_35_4_1_False_shift: signed(21 downto 0);
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
  signal c_37_23_0_False_resize: signed(22 downto 0);
  signal c_37_23_0_False_shift: signed(22 downto 0);
  signal c_37_12_0_False_resize: signed(22 downto 0);
  signal c_37_12_0_False_shift: signed(22 downto 0);
  signal c_37_sel: std_logic_vector(0 downto 0);
  signal c_38: signed(22 downto 0);
  signal c_38_resize: signed(22 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_36_0_False_resize: signed(23 downto 0);
  signal c_39_36_0_False_shift: signed(23 downto 0);
  signal c_39_18_0_False_resize: signed(23 downto 0);
  signal c_39_18_0_False_shift: signed(23 downto 0);
  signal c_39_20_1_False_resize: signed(23 downto 0);
  signal c_39_20_1_False_shift: signed(23 downto 0);
  signal c_39_32_0_False_resize: signed(23 downto 0);
  signal c_39_32_0_False_shift: signed(23 downto 0);
  signal c_39_sel: std_logic_vector(1 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_resize: signed(23 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_29_0_False_resize: signed(23 downto 0);
  signal c_41_29_0_False_shift: signed(23 downto 0);
  signal c_41_18_1_False_resize: signed(23 downto 0);
  signal c_41_18_1_False_shift: signed(23 downto 0);
  signal c_41_20_0_False_resize: signed(23 downto 0);
  signal c_41_20_0_False_shift: signed(23 downto 0);
  signal c_41_15_4_False_resize: signed(23 downto 0);
  signal c_41_15_4_False_shift: signed(23 downto 0);
  signal c_41_sel: std_logic_vector(1 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_resize: signed(23 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_34_1_False_resize: signed(23 downto 0);
  signal c_43_34_1_False_shift: signed(23 downto 0);
  signal c_43_6_3_False_resize: signed(23 downto 0);
  signal c_43_6_3_False_shift: signed(23 downto 0);
  signal c_43_32_0_False_resize: signed(23 downto 0);
  signal c_43_32_0_False_shift: signed(23 downto 0);
  signal c_43_29_0_False_resize: signed(23 downto 0);
  signal c_43_29_0_False_shift: signed(23 downto 0);
  signal c_43_sel: std_logic_vector(1 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_resize: signed(23 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_23_0_False_resize: signed(23 downto 0);
  signal c_45_23_0_False_shift: signed(23 downto 0);
  signal c_45_12_1_False_resize: signed(23 downto 0);
  signal c_45_12_1_False_shift: signed(23 downto 0);
  signal c_45_29_0_False_resize: signed(23 downto 0);
  signal c_45_29_0_False_shift: signed(23 downto 0);
  signal c_45_18_0_False_resize: signed(23 downto 0);
  signal c_45_18_0_False_shift: signed(23 downto 0);
  signal c_45_sel: std_logic_vector(1 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_resize: signed(23 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_36_0_False_resize: signed(23 downto 0);
  signal c_47_36_0_False_shift: signed(23 downto 0);
  signal c_47_34_0_False_resize: signed(23 downto 0);
  signal c_47_34_0_False_shift: signed(23 downto 0);
  signal c_47_32_1_False_resize: signed(23 downto 0);
  signal c_47_32_1_False_shift: signed(23 downto 0);
  signal c_47_15_2_False_resize: signed(23 downto 0);
  signal c_47_15_2_False_shift: signed(23 downto 0);
  signal c_47_sel: std_logic_vector(1 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_48_resize: signed(23 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_49_36_1_False_resize: signed(23 downto 0);
  signal c_49_36_1_False_shift: signed(23 downto 0);
  signal c_49_12_0_False_resize: signed(23 downto 0);
  signal c_49_12_0_False_shift: signed(23 downto 0);
  signal c_49_23_0_False_resize: signed(23 downto 0);
  signal c_49_23_0_False_shift: signed(23 downto 0);
  signal c_49_20_1_False_resize: signed(23 downto 0);
  signal c_49_20_1_False_shift: signed(23 downto 0);
  signal c_49_sel: std_logic_vector(1 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_50_resize: signed(23 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_51_34_0_False_resize: signed(23 downto 0);
  signal c_51_34_0_False_shift: signed(23 downto 0);
  signal c_51_36_0_False_resize: signed(23 downto 0);
  signal c_51_36_0_False_shift: signed(23 downto 0);
  signal c_51_29_0_False_resize: signed(23 downto 0);
  signal c_51_29_0_False_shift: signed(23 downto 0);
  signal c_51_sel: std_logic_vector(1 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_52_resize: signed(23 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_53_15_3_False_resize: signed(23 downto 0);
  signal c_53_15_3_False_shift: signed(23 downto 0);
  signal c_53_18_0_False_resize: signed(23 downto 0);
  signal c_53_18_0_False_shift: signed(23 downto 0);
  signal c_53_32_0_False_resize: signed(23 downto 0);
  signal c_53_32_0_False_shift: signed(23 downto 0);
  signal c_53_6_0_False_resize: signed(23 downto 0);
  signal c_53_6_0_False_shift: signed(23 downto 0);
  signal c_53_sel: std_logic_vector(1 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_54_resize: signed(23 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_55_15_0_False_resize: signed(23 downto 0);
  signal c_55_15_0_False_shift: signed(23 downto 0);
  signal c_55_6_1_False_resize: signed(23 downto 0);
  signal c_55_6_1_False_shift: signed(23 downto 0);
  signal c_55_6_0_False_resize: signed(23 downto 0);
  signal c_55_6_0_False_shift: signed(23 downto 0);
  signal c_55_20_1_False_resize: signed(23 downto 0);
  signal c_55_20_1_False_shift: signed(23 downto 0);
  signal c_55_sel: std_logic_vector(1 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_56_resize: signed(23 downto 0);
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
  -- output node 0 with id 38
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_38);
    end if;
  end process;
  -- output node 1 with id 40
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_40);
    end if;
  end process;
  -- output node 2 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_42);
    end if;
  end process;
  -- output node 3 with id 44
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_44);
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
  -- output node 7 with id 52
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_52);
    end if;
  end process;
  -- output node 8 with id 54
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_54);
    end if;
  end process;
  -- output node 9 with id 56
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_56);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[7], [7], [9], [7]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_1: entity work.adder_node
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
      sub_i => c_1_sub_sel,
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
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [1], [4], [16]]
  c_2_0_0_False_resize <= resize(c_0, 20);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_4_False_resize <= resize(c_0, 20);
  c_2_0_4_False_shift <= shift_left(c_2_0_4_False_resize, 4);
  c_2_0_2_False_resize <= resize(c_0, 20);
  c_2_0_2_False_shift <= shift_left(c_2_0_2_False_resize, 2);
  with config_select_1 select c_2_sel <= 
    "00" when "01",
    "00" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_0_False_shift;
        when "01" => c_2 <= c_2_0_4_False_shift;
        when others => c_2 <= c_2_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[30], [30], [28], [60]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
      w_o => 22,
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
  -- node of type 'add_sub' in stage 1 with id 4 and associated fundamentals [[3], [5], [5], [5]]
  with config_select_1 select c_4_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_4: entity work.adder_node
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
      sub_i => c_4_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 5 and associated fundamentals [[24], [14], [5], [10]]
  c_5_1_1_False_resize <= resize(c_1, 21);
  c_5_1_1_False_shift <= shift_left(c_5_1_1_False_resize, 1);
  c_5_4_0_False_resize <= resize(c_4, 21);
  c_5_4_0_False_shift <= shift_left(c_5_4_0_False_resize, 0);
  c_5_4_1_False_resize <= resize(c_4, 21);
  c_5_4_1_False_shift <= shift_left(c_5_4_1_False_resize, 1);
  c_5_4_3_False_resize <= resize(c_4, 21);
  c_5_4_3_False_shift <= shift_left(c_5_4_3_False_resize, 3);
  with config_select_2 select c_5_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_1_1_False_shift;
        when "01" => c_5 <= c_5_4_0_False_shift;
        when "10" => c_5 <= c_5_4_1_False_shift;
        when others => c_5 <= c_5_4_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 6 and associated fundamentals [[66], [86], [48], [-20]]
  with config_select_3 select c_6_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 22,
      w_o => 23,
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
      sub_i => c_6_sub_sel,
      x_i => c_5,
      y_i => c_3,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 7 and associated fundamentals [[-1], [3], [3], [-1]]
  with config_select_1 select c_7_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 18,
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
      sub_i => c_7_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(17 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[64], [1], [64], [128]]
  c_8_0_0_False_resize <= resize(c_0, 23);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  c_8_0_6_False_resize <= resize(c_0, 23);
  c_8_0_6_False_shift <= shift_left(c_8_0_6_False_resize, 6);
  c_8_0_7_False_resize <= resize(c_0, 23);
  c_8_0_7_False_shift <= shift_left(c_8_0_7_False_resize, 7);
  with config_select_1 select c_8_sel <= 
    "00" when "01",
    "01" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "00" => c_8 <= c_8_0_0_False_shift;
        when "01" => c_8 <= c_8_0_6_False_shift;
        when others => c_8 <= c_8_0_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 9 and associated fundamentals [[-125], [3], [133], [261]]
  with config_select_2 select c_9_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 19,
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
      sub_i => c_9_sub_sel,
      x_i => c_4,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 10 and associated fundamentals [[56], [3], [36], [40]]
  c_10_1_3_False_resize <= resize(c_1, 22);
  c_10_1_3_False_shift <= shift_left(c_10_1_3_False_resize, 3);
  c_10_4_3_False_resize <= resize(c_4, 22);
  c_10_4_3_False_shift <= shift_left(c_10_4_3_False_resize, 3);
  c_10_1_2_False_resize <= resize(c_1, 22);
  c_10_1_2_False_shift <= shift_left(c_10_1_2_False_resize, 2);
  c_10_7_0_False_resize <= resize(c_7, 22);
  c_10_7_0_False_shift <= shift_left(c_10_7_0_False_resize, 0);
  with config_select_2 select c_10_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_1_3_False_shift;
        when "01" => c_10 <= c_10_4_3_False_shift;
        when "10" => c_10 <= c_10_1_2_False_shift;
        when others => c_10 <= c_10_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 11 and associated fundamentals [[3], [12], [9], [14]]
  c_11_4_0_False_resize <= resize(c_4, 20);
  c_11_4_0_False_shift <= shift_left(c_11_4_0_False_resize, 0);
  c_11_7_2_False_resize <= resize(c_7, 20);
  c_11_7_2_False_shift <= shift_left(c_11_7_2_False_resize, 2);
  c_11_1_0_False_resize <= c_1;
  c_11_1_0_False_shift <= shift_left(c_11_1_0_False_resize, 0);
  c_11_1_1_False_resize <= c_1;
  c_11_1_1_False_shift <= shift_left(c_11_1_1_False_resize, 1);
  with config_select_2 select c_11_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_4_0_False_shift;
        when "01" => c_11 <= c_11_7_2_False_shift;
        when "10" => c_11 <= c_11_1_0_False_shift;
        when others => c_11 <= c_11_1_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 12 and associated fundamentals [[109], [18], [81], [94]]
  with config_select_3 select c_12_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
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
      sub_i => c_12_sub_sel,
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 13 and associated fundamentals [[6], [10], [3], [7]]
  c_13_4_1_False_resize <= resize(c_4, 20);
  c_13_4_1_False_shift <= shift_left(c_13_4_1_False_resize, 1);
  c_13_7_0_False_resize <= resize(c_7, 20);
  c_13_7_0_False_shift <= shift_left(c_13_7_0_False_resize, 0);
  c_13_1_0_False_resize <= c_1;
  c_13_1_0_False_shift <= shift_left(c_13_1_0_False_resize, 0);
  with config_select_2 select c_13_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_4_1_False_shift;
        when "01" => c_13 <= c_13_7_0_False_shift;
        when others => c_13 <= c_13_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 14 and associated fundamentals [[24], [3], [40], [80]]
  c_14_4_3_False_resize <= resize(c_4, 23);
  c_14_4_3_False_shift <= shift_left(c_14_4_3_False_resize, 3);
  c_14_7_0_False_resize <= resize(c_7, 23);
  c_14_7_0_False_shift <= shift_left(c_14_7_0_False_resize, 0);
  c_14_4_4_False_resize <= resize(c_4, 23);
  c_14_4_4_False_shift <= shift_left(c_14_4_4_False_resize, 4);
  with config_select_2 select c_14_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_4_3_False_shift;
        when "01" => c_14 <= c_14_7_0_False_shift;
        when others => c_14 <= c_14_4_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 15 and associated fundamentals [[30], [7], [43], [87]]
  with config_select_3 select c_15_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 20,
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
      sub_i => c_15_sub_sel,
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 16 and associated fundamentals [[-1], [112], [144], [112]]
  c_16_1_4_False_resize <= resize(c_1, 24);
  c_16_1_4_False_shift <= shift_left(c_16_1_4_False_resize, 4);
  c_16_7_0_False_resize <= resize(c_7, 24);
  c_16_7_0_False_shift <= shift_left(c_16_7_0_False_resize, 0);
  with config_select_2 select c_16_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_1_4_False_shift;
        when others => c_16 <= c_16_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 17 and associated fundamentals [[192], [6], [20], [5]]
  c_17_7_1_False_resize <= resize(c_7, 24);
  c_17_7_1_False_shift <= shift_left(c_17_7_1_False_resize, 1);
  c_17_4_6_False_resize <= resize(c_4, 24);
  c_17_4_6_False_shift <= shift_left(c_17_4_6_False_resize, 6);
  c_17_4_0_False_resize <= resize(c_4, 24);
  c_17_4_0_False_shift <= shift_left(c_17_4_0_False_resize, 0);
  c_17_4_2_False_resize <= resize(c_4, 24);
  c_17_4_2_False_shift <= shift_left(c_17_4_2_False_resize, 2);
  with config_select_2 select c_17_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "00" => c_17 <= c_17_7_1_False_shift;
        when "01" => c_17 <= c_17_4_6_False_shift;
        when "10" => c_17 <= c_17_4_0_False_shift;
        when others => c_17 <= c_17_4_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 18 and associated fundamentals [[191], [106], [124], [107]]
  with config_select_3 select c_18_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_18: entity work.adder_node
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
  -- node of type 'mux' in stage 2 with id 19 and associated fundamentals [[-1], [12], [5], [5]]
  c_19_7_2_False_resize <= resize(c_7, 20);
  c_19_7_2_False_shift <= shift_left(c_19_7_2_False_resize, 2);
  c_19_4_0_False_resize <= resize(c_4, 20);
  c_19_4_0_False_shift <= shift_left(c_19_4_0_False_resize, 0);
  c_19_7_0_False_resize <= resize(c_7, 20);
  c_19_7_0_False_shift <= shift_left(c_19_7_0_False_resize, 0);
  with config_select_2 select c_19_sel <= 
    "00" when "01",
    "01" when "10",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_7_2_False_shift;
        when "01" => c_19 <= c_19_4_0_False_shift;
        when others => c_19 <= c_19_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 20 and associated fundamentals [[118], [96], [122], [250]]
  with config_select_3 select c_20_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
      w_o => 24,
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
      sub_i => c_20_sub_sel,
      x_i => c_3,
      y_i => c_19,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 21 and associated fundamentals [[56], [14], [5], [224]]
  c_21_1_3_False_resize <= resize(c_1, 24);
  c_21_1_3_False_shift <= shift_left(c_21_1_3_False_resize, 3);
  c_21_1_1_False_resize <= resize(c_1, 24);
  c_21_1_1_False_shift <= shift_left(c_21_1_1_False_resize, 1);
  c_21_4_0_False_resize <= resize(c_4, 24);
  c_21_4_0_False_shift <= shift_left(c_21_4_0_False_resize, 0);
  c_21_1_5_False_resize <= resize(c_1, 24);
  c_21_1_5_False_shift <= shift_left(c_21_1_5_False_resize, 5);
  with config_select_2 select c_21_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "00" => c_21 <= c_21_1_3_False_shift;
        when "01" => c_21 <= c_21_1_1_False_shift;
        when "10" => c_21 <= c_21_4_0_False_shift;
        when others => c_21 <= c_21_1_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 22 and associated fundamentals [[-1], [20], [96], [20]]
  c_22_4_2_False_resize <= resize(c_4, 23);
  c_22_4_2_False_shift <= shift_left(c_22_4_2_False_resize, 2);
  c_22_7_5_False_resize <= resize(c_7, 23);
  c_22_7_5_False_shift <= shift_left(c_22_7_5_False_resize, 5);
  c_22_7_0_False_resize <= resize(c_7, 23);
  c_22_7_0_False_shift <= shift_left(c_22_7_0_False_resize, 0);
  with config_select_2 select c_22_sel <= 
    "00" when "11",
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_4_2_False_shift;
        when "01" => c_22 <= c_22_7_5_False_shift;
        when others => c_22 <= c_22_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 23 and associated fundamentals [[57], [34], [101], [204]]
  with config_select_3 select c_23_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_23: entity work.adder_node
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
  -- node of type 'mux' in stage 1 with id 24 and associated fundamentals [[64], [1], [2], [1]]
  c_24_0_0_False_resize <= resize(c_0, 22);
  c_24_0_0_False_shift <= shift_left(c_24_0_0_False_resize, 0);
  c_24_0_6_False_resize <= resize(c_0, 22);
  c_24_0_6_False_shift <= shift_left(c_24_0_6_False_resize, 6);
  c_24_0_1_False_resize <= resize(c_0, 22);
  c_24_0_1_False_shift <= shift_left(c_24_0_1_False_resize, 1);
  with config_select_1 select c_24_sel <= 
    "00" when "01",
    "00" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_0_0_False_shift;
        when "01" => c_24 <= c_24_0_6_False_shift;
        when others => c_24 <= c_24_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 25 and associated fundamentals [[1], [64], [128], [16]]
  c_25_0_7_False_resize <= resize(c_0, 23);
  c_25_0_7_False_shift <= shift_left(c_25_0_7_False_resize, 7);
  c_25_0_4_False_resize <= resize(c_0, 23);
  c_25_0_4_False_shift <= shift_left(c_25_0_4_False_resize, 4);
  c_25_0_6_False_resize <= resize(c_0, 23);
  c_25_0_6_False_shift <= shift_left(c_25_0_6_False_resize, 6);
  c_25_0_0_False_resize <= resize(c_0, 23);
  c_25_0_0_False_shift <= shift_left(c_25_0_0_False_resize, 0);
  with config_select_1 select c_25_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_0_7_False_shift;
        when "01" => c_25 <= c_25_0_4_False_shift;
        when "10" => c_25 <= c_25_0_6_False_shift;
        when others => c_25 <= c_25_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 26 and associated fundamentals [[63], [65], [-126], [-15]]
  with config_select_2 select c_26_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_26_sub_sel,
      x_i => c_24,
      y_i => c_25,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 27 and associated fundamentals [[15], [-45], [-45], [-17]]
  with config_select_2 select c_27_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
      w_o => 22,
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
      sub_i => c_27_sub_sel,
      x_i => c_7,
      y_i => c_7,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 28 and associated fundamentals [[-1], [10], [3], [224]]
  c_28_7_0_False_resize <= resize(c_7, 24);
  c_28_7_0_False_shift <= shift_left(c_28_7_0_False_resize, 0);
  c_28_4_1_False_resize <= resize(c_4, 24);
  c_28_4_1_False_shift <= shift_left(c_28_4_1_False_resize, 1);
  c_28_1_5_False_resize <= resize(c_1, 24);
  c_28_1_5_False_shift <= shift_left(c_28_1_5_False_resize, 5);
  with config_select_2 select c_28_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "00" => c_28 <= c_28_7_0_False_shift;
        when "01" => c_28 <= c_28_4_1_False_shift;
        when others => c_28 <= c_28_1_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 29 and associated fundamentals [[125], [-120], [-249], [254]]
  with config_select_3 select c_29_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_29: entity work.adder_node
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
      sub_i => c_29_sub_sel,
      x_i => c_28,
      y_i => c_26,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 30 and associated fundamentals [[-1], [10], [36], [40]]
  c_30_4_3_False_resize <= resize(c_4, 22);
  c_30_4_3_False_shift <= shift_left(c_30_4_3_False_resize, 3);
  c_30_4_1_False_resize <= resize(c_4, 22);
  c_30_4_1_False_shift <= shift_left(c_30_4_1_False_resize, 1);
  c_30_1_2_False_resize <= resize(c_1, 22);
  c_30_1_2_False_shift <= shift_left(c_30_1_2_False_resize, 2);
  c_30_7_0_False_resize <= resize(c_7, 22);
  c_30_7_0_False_shift <= shift_left(c_30_7_0_False_resize, 0);
  with config_select_2 select c_30_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "00" => c_30 <= c_30_4_3_False_shift;
        when "01" => c_30 <= c_30_4_1_False_shift;
        when "10" => c_30 <= c_30_1_2_False_shift;
        when others => c_30 <= c_30_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 31 and associated fundamentals [[192], [7], [3], [-2]]
  c_31_7_0_False_resize <= resize(c_7, 24);
  c_31_7_0_False_shift <= shift_left(c_31_7_0_False_resize, 0);
  c_31_1_0_False_resize <= resize(c_1, 24);
  c_31_1_0_False_shift <= shift_left(c_31_1_0_False_resize, 0);
  c_31_4_6_False_resize <= resize(c_4, 24);
  c_31_4_6_False_shift <= shift_left(c_31_4_6_False_resize, 6);
  c_31_7_1_False_resize <= resize(c_7, 24);
  c_31_7_1_False_shift <= shift_left(c_31_7_1_False_resize, 1);
  with config_select_2 select c_31_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "00" => c_31 <= c_31_7_0_False_shift;
        when "01" => c_31 <= c_31_1_0_False_shift;
        when "10" => c_31 <= c_31_4_6_False_shift;
        when others => c_31 <= c_31_7_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 32 and associated fundamentals [[-194], [27], [69], [82]]
  with config_select_3 select c_32_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_32: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 24,
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
      sub_i => c_32_sub_sel,
      x_i => c_30,
      y_i => c_31,
      z_o => c_32_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_32_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 33 and associated fundamentals [[-2], [80], [36], [-1]]
  c_33_7_1_False_resize <= resize(c_7, 23);
  c_33_7_1_False_shift <= shift_left(c_33_7_1_False_resize, 1);
  c_33_4_4_False_resize <= resize(c_4, 23);
  c_33_4_4_False_shift <= shift_left(c_33_4_4_False_resize, 4);
  c_33_7_0_False_resize <= resize(c_7, 23);
  c_33_7_0_False_shift <= shift_left(c_33_7_0_False_resize, 0);
  c_33_1_2_False_resize <= resize(c_1, 23);
  c_33_1_2_False_shift <= shift_left(c_33_1_2_False_resize, 2);
  with config_select_2 select c_33_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "00" => c_33 <= c_33_7_1_False_shift;
        when "01" => c_33 <= c_33_4_4_False_shift;
        when "10" => c_33 <= c_33_7_0_False_shift;
        when others => c_33 <= c_33_1_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 34 and associated fundamentals [[11], [-205], [-117], [-19]]
  with config_select_3 select c_34_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_34: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_34_sub_sel,
      x_i => c_27,
      y_i => c_33,
      z_o => c_34_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_34_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 35 and associated fundamentals [[12], [56], [5], [10]]
  c_35_1_3_False_resize <= resize(c_1, 22);
  c_35_1_3_False_shift <= shift_left(c_35_1_3_False_resize, 3);
  c_35_4_0_False_resize <= resize(c_4, 22);
  c_35_4_0_False_shift <= shift_left(c_35_4_0_False_resize, 0);
  c_35_4_2_False_resize <= resize(c_4, 22);
  c_35_4_2_False_shift <= shift_left(c_35_4_2_False_resize, 2);
  c_35_4_1_False_resize <= resize(c_4, 22);
  c_35_4_1_False_shift <= shift_left(c_35_4_1_False_resize, 1);
  with config_select_2 select c_35_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "00" => c_35 <= c_35_1_3_False_shift;
        when "01" => c_35 <= c_35_4_0_False_shift;
        when "10" => c_35 <= c_35_4_2_False_shift;
        when others => c_35 <= c_35_4_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 36 and associated fundamentals [[-149], [115], [123], [241]]
  with config_select_3 select c_36_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_36: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_36_sub_sel,
      x_i => c_9,
      y_i => c_35,
      z_o => c_36_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_36_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 37 and associated fundamentals [[57], [34], [81], [94]]
  c_37_23_0_False_resize <= c_23(22 downto 0);
  c_37_23_0_False_shift <= shift_left(c_37_23_0_False_resize, 0);
  c_37_12_0_False_resize <= c_12;
  c_37_12_0_False_shift <= shift_left(c_37_12_0_False_resize, 0);
  with config_select_4 select c_37_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "0" => c_37 <= c_37_23_0_False_shift;
        when others => c_37 <= c_37_12_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 38 and associated fundamentals [[57], [34], [81], [94]]
  c_38_resize <= c_37;
  c_38 <= shift_left(c_38_resize, 0);
  -- node of type 'mux' in stage 4 with id 39 and associated fundamentals [[191], [192], [69], [241]]
  c_39_36_0_False_resize <= c_36;
  c_39_36_0_False_shift <= shift_left(c_39_36_0_False_resize, 0);
  c_39_18_0_False_resize <= c_18;
  c_39_18_0_False_shift <= shift_left(c_39_18_0_False_resize, 0);
  c_39_20_1_False_resize <= c_20;
  c_39_20_1_False_shift <= shift_left(c_39_20_1_False_resize, 1);
  c_39_32_0_False_resize <= c_32;
  c_39_32_0_False_shift <= shift_left(c_39_32_0_False_resize, 0);
  with config_select_4 select c_39_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "00" => c_39 <= c_39_36_0_False_shift;
        when "01" => c_39 <= c_39_18_0_False_shift;
        when "10" => c_39 <= c_39_20_1_False_shift;
        when others => c_39 <= c_39_32_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 40 and associated fundamentals [[191], [192], [69], [241]]
  c_40_resize <= c_39;
  c_40 <= shift_left(c_40_resize, 0);
  -- node of type 'mux' in stage 4 with id 41 and associated fundamentals [[125], [112], [248], [250]]
  c_41_29_0_False_resize <= c_29;
  c_41_29_0_False_shift <= shift_left(c_41_29_0_False_resize, 0);
  c_41_18_1_False_resize <= c_18;
  c_41_18_1_False_shift <= shift_left(c_41_18_1_False_resize, 1);
  c_41_20_0_False_resize <= c_20;
  c_41_20_0_False_shift <= shift_left(c_41_20_0_False_resize, 0);
  c_41_15_4_False_resize <= resize(c_15, 24);
  c_41_15_4_False_shift <= shift_left(c_41_15_4_False_resize, 4);
  with config_select_4 select c_41_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "00" => c_41 <= c_41_29_0_False_shift;
        when "01" => c_41 <= c_41_18_1_False_shift;
        when "10" => c_41 <= c_41_20_0_False_shift;
        when others => c_41 <= c_41_15_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 42 and associated fundamentals [[125], [112], [248], [250]]
  c_42_resize <= c_41;
  c_42 <= shift_left(c_42_resize, 0);
  -- node of type 'mux' in stage 4 with id 43 and associated fundamentals [[-194], [-120], [-234], [-160]]
  c_43_34_1_False_resize <= c_34;
  c_43_34_1_False_shift <= shift_left(c_43_34_1_False_resize, 1);
  c_43_6_3_False_resize <= resize(c_6, 24);
  c_43_6_3_False_shift <= shift_left(c_43_6_3_False_resize, 3);
  c_43_32_0_False_resize <= c_32;
  c_43_32_0_False_shift <= shift_left(c_43_32_0_False_resize, 0);
  c_43_29_0_False_resize <= c_29;
  c_43_29_0_False_shift <= shift_left(c_43_29_0_False_resize, 0);
  with config_select_4 select c_43_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "00" => c_43 <= c_43_34_1_False_shift;
        when "01" => c_43 <= c_43_6_3_False_shift;
        when "10" => c_43 <= c_43_32_0_False_shift;
        when others => c_43 <= c_43_29_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 44 and associated fundamentals [[194], [120], [234], [160]]
  c_44_resize <= c_43;
  c_44 <= -shift_left(c_44_resize, 0);
  -- node of type 'mux' in stage 4 with id 45 and associated fundamentals [[218], [106], [101], [254]]
  c_45_23_0_False_resize <= c_23;
  c_45_23_0_False_shift <= shift_left(c_45_23_0_False_resize, 0);
  c_45_12_1_False_resize <= resize(c_12, 24);
  c_45_12_1_False_shift <= shift_left(c_45_12_1_False_resize, 1);
  c_45_29_0_False_resize <= c_29;
  c_45_29_0_False_shift <= shift_left(c_45_29_0_False_resize, 0);
  c_45_18_0_False_resize <= c_18;
  c_45_18_0_False_shift <= shift_left(c_45_18_0_False_resize, 0);
  with config_select_4 select c_45_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "00" => c_45 <= c_45_23_0_False_shift;
        when "01" => c_45 <= c_45_12_1_False_shift;
        when "10" => c_45 <= c_45_29_0_False_shift;
        when others => c_45 <= c_45_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 46 and associated fundamentals [[218], [106], [101], [254]]
  c_46_resize <= c_45;
  c_46 <= shift_left(c_46_resize, 0);
  -- node of type 'mux' in stage 4 with id 47 and associated fundamentals [[11], [115], [172], [164]]
  c_47_36_0_False_resize <= c_36;
  c_47_36_0_False_shift <= shift_left(c_47_36_0_False_resize, 0);
  c_47_34_0_False_resize <= c_34;
  c_47_34_0_False_shift <= shift_left(c_47_34_0_False_resize, 0);
  c_47_32_1_False_resize <= c_32;
  c_47_32_1_False_shift <= shift_left(c_47_32_1_False_resize, 1);
  c_47_15_2_False_resize <= resize(c_15, 24);
  c_47_15_2_False_shift <= shift_left(c_47_15_2_False_resize, 2);
  with config_select_4 select c_47_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "00" => c_47 <= c_47_36_0_False_shift;
        when "01" => c_47 <= c_47_34_0_False_shift;
        when "10" => c_47 <= c_47_32_1_False_shift;
        when others => c_47 <= c_47_15_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 48 and associated fundamentals [[11], [115], [172], [164]]
  c_48_resize <= c_47;
  c_48 <= shift_left(c_48_resize, 0);
  -- node of type 'mux' in stage 4 with id 49 and associated fundamentals [[236], [18], [246], [204]]
  c_49_36_1_False_resize <= c_36;
  c_49_36_1_False_shift <= shift_left(c_49_36_1_False_resize, 1);
  c_49_12_0_False_resize <= resize(c_12, 24);
  c_49_12_0_False_shift <= shift_left(c_49_12_0_False_resize, 0);
  c_49_23_0_False_resize <= c_23;
  c_49_23_0_False_shift <= shift_left(c_49_23_0_False_resize, 0);
  c_49_20_1_False_resize <= c_20;
  c_49_20_1_False_shift <= shift_left(c_49_20_1_False_resize, 1);
  with config_select_4 select c_49_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_49_sel is
        when "00" => c_49 <= c_49_36_1_False_shift;
        when "01" => c_49 <= c_49_12_0_False_shift;
        when "10" => c_49 <= c_49_23_0_False_shift;
        when others => c_49 <= c_49_20_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 50 and associated fundamentals [[236], [18], [246], [204]]
  c_50_resize <= c_49;
  c_50 <= shift_left(c_50_resize, 0);
  -- node of type 'mux' in stage 4 with id 51 and associated fundamentals [[-149], [-205], [-249], [-19]]
  c_51_34_0_False_resize <= c_34;
  c_51_34_0_False_shift <= shift_left(c_51_34_0_False_resize, 0);
  c_51_36_0_False_resize <= c_36;
  c_51_36_0_False_shift <= shift_left(c_51_36_0_False_resize, 0);
  c_51_29_0_False_resize <= c_29;
  c_51_29_0_False_shift <= shift_left(c_51_29_0_False_resize, 0);
  with config_select_4 select c_51_sel <= 
    "00" when "11",
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_51_sel is
        when "00" => c_51 <= c_51_34_0_False_shift;
        when "01" => c_51 <= c_51_36_0_False_shift;
        when others => c_51 <= c_51_29_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 52 and associated fundamentals [[149], [205], [249], [19]]
  c_52_resize <= c_51;
  c_52 <= -shift_left(c_52_resize, 0);
  -- node of type 'mux' in stage 4 with id 53 and associated fundamentals [[240], [27], [48], [107]]
  c_53_15_3_False_resize <= resize(c_15, 24);
  c_53_15_3_False_shift <= shift_left(c_53_15_3_False_resize, 3);
  c_53_18_0_False_resize <= c_18;
  c_53_18_0_False_shift <= shift_left(c_53_18_0_False_resize, 0);
  c_53_32_0_False_resize <= c_32;
  c_53_32_0_False_shift <= shift_left(c_53_32_0_False_resize, 0);
  c_53_6_0_False_resize <= resize(c_6, 24);
  c_53_6_0_False_shift <= shift_left(c_53_6_0_False_resize, 0);
  with config_select_4 select c_53_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_53_sel is
        when "00" => c_53 <= c_53_15_3_False_shift;
        when "01" => c_53 <= c_53_18_0_False_shift;
        when "10" => c_53 <= c_53_32_0_False_shift;
        when others => c_53 <= c_53_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 54 and associated fundamentals [[240], [27], [48], [107]]
  c_54_resize <= c_53;
  c_54 <= shift_left(c_54_resize, 0);
  -- node of type 'mux' in stage 4 with id 55 and associated fundamentals [[132], [86], [244], [87]]
  c_55_15_0_False_resize <= resize(c_15, 24);
  c_55_15_0_False_shift <= shift_left(c_55_15_0_False_resize, 0);
  c_55_6_1_False_resize <= resize(c_6, 24);
  c_55_6_1_False_shift <= shift_left(c_55_6_1_False_resize, 1);
  c_55_6_0_False_resize <= resize(c_6, 24);
  c_55_6_0_False_shift <= shift_left(c_55_6_0_False_resize, 0);
  c_55_20_1_False_resize <= c_20;
  c_55_20_1_False_shift <= shift_left(c_55_20_1_False_resize, 1);
  with config_select_4 select c_55_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_55_sel is
        when "00" => c_55 <= c_55_15_0_False_shift;
        when "01" => c_55 <= c_55_6_1_False_shift;
        when "10" => c_55 <= c_55_6_0_False_shift;
        when others => c_55 <= c_55_20_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 56 and associated fundamentals [[132], [86], [244], [87]]
  c_56_resize <= c_55;
  c_56 <= shift_left(c_56_resize, 0);
end architecture;
