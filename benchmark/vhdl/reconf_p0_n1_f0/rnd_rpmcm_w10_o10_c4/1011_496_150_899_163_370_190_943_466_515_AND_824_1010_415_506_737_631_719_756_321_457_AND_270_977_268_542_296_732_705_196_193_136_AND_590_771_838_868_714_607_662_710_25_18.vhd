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
    y_8: out std_logic_vector(24 downto 0);
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
  signal config_select_42: std_logic_vector(1 downto 0);
  signal config_select_43: std_logic_vector(1 downto 0);
  signal config_select_44: std_logic_vector(1 downto 0);
  signal config_select_45: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(27 downto 0);
  signal c_1_0_12_False_resize: signed(27 downto 0);
  signal c_1_0_12_False_shift: signed(27 downto 0);
  signal c_1_0_8_False_resize: signed(27 downto 0);
  signal c_1_0_8_False_shift: signed(27 downto 0);
  signal c_1_0_9_False_resize: signed(27 downto 0);
  signal c_1_0_9_False_shift: signed(27 downto 0);
  signal c_1_0_0_False_resize: signed(27 downto 0);
  signal c_1_0_0_False_shift: signed(27 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(27 downto 0);
  signal c_2_0_7_False_resize: signed(27 downto 0);
  signal c_2_0_7_False_shift: signed(27 downto 0);
  signal c_2_0_5_False_resize: signed(27 downto 0);
  signal c_2_0_5_False_shift: signed(27 downto 0);
  signal c_2_0_12_False_resize: signed(27 downto 0);
  signal c_2_0_12_False_shift: signed(27 downto 0);
  signal c_2_0_0_False_resize: signed(27 downto 0);
  signal c_2_0_0_False_shift: signed(27 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(28 downto 0);
  signal c_3_i0_resize: signed(28 downto 0);
  signal c_3_i1_resize: signed(28 downto 0);
  signal c_3_i0_shift: signed(28 downto 0);
  signal c_3_i1_shift: signed(28 downto 0);
  signal c_3_arith: signed(28 downto 0);
  signal c_3_oshift: signed(28 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(27 downto 0);
  signal c_4_3_0_False_resize: signed(27 downto 0);
  signal c_4_3_0_False_shift: signed(27 downto 0);
  signal c_4_0_5_False_resize: signed(27 downto 0);
  signal c_4_0_5_False_shift: signed(27 downto 0);
  signal c_4_0_12_False_resize: signed(27 downto 0);
  signal c_4_0_12_False_shift: signed(27 downto 0);
  signal c_4_0_0_False_resize: signed(27 downto 0);
  signal c_4_0_0_False_shift: signed(27 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(26 downto 0);
  signal c_5_0_5_False_resize: signed(26 downto 0);
  signal c_5_0_5_False_shift: signed(26 downto 0);
  signal c_5_0_11_False_resize: signed(26 downto 0);
  signal c_5_0_11_False_shift: signed(26 downto 0);
  signal c_5_0_2_False_resize: signed(26 downto 0);
  signal c_5_0_2_False_shift: signed(26 downto 0);
  signal c_5_0_0_False_resize: signed(26 downto 0);
  signal c_5_0_0_False_shift: signed(26 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(28 downto 0);
  signal c_6_i0_resize: signed(28 downto 0);
  signal c_6_i1_resize: signed(28 downto 0);
  signal c_6_i0_shift: signed(28 downto 0);
  signal c_6_i1_shift: signed(28 downto 0);
  signal c_6_arith: signed(28 downto 0);
  signal c_6_oshift: signed(28 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(23 downto 0);
  signal c_7_0_8_False_resize: signed(23 downto 0);
  signal c_7_0_8_False_shift: signed(23 downto 0);
  signal c_7_0_1_False_resize: signed(23 downto 0);
  signal c_7_0_1_False_shift: signed(23 downto 0);
  signal c_7_0_0_False_resize: signed(23 downto 0);
  signal c_7_0_0_False_shift: signed(23 downto 0);
  signal c_7_0_3_False_resize: signed(23 downto 0);
  signal c_7_0_3_False_shift: signed(23 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_8_0_0_False_resize: signed(23 downto 0);
  signal c_8_0_0_False_shift: signed(23 downto 0);
  signal c_8_0_5_False_resize: signed(23 downto 0);
  signal c_8_0_5_False_shift: signed(23 downto 0);
  signal c_8_3_5_False_resize: signed(23 downto 0);
  signal c_8_3_5_False_shift: signed(23 downto 0);
  signal c_8_0_8_False_resize: signed(23 downto 0);
  signal c_8_0_8_False_shift: signed(23 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(24 downto 0);
  signal c_9_i0_resize: signed(24 downto 0);
  signal c_9_i1_resize: signed(24 downto 0);
  signal c_9_i0_shift: signed(24 downto 0);
  signal c_9_i1_shift: signed(24 downto 0);
  signal c_9_arith: signed(24 downto 0);
  signal c_9_oshift: signed(24 downto 0);
  signal c_10: signed(28 downto 0);
  signal c_10_6_4_False_resize: signed(28 downto 0);
  signal c_10_6_4_False_shift: signed(28 downto 0);
  signal c_10_3_8_False_resize: signed(28 downto 0);
  signal c_10_3_8_False_shift: signed(28 downto 0);
  signal c_10_3_0_False_resize: signed(28 downto 0);
  signal c_10_3_0_False_shift: signed(28 downto 0);
  signal c_10_6_0_False_resize: signed(28 downto 0);
  signal c_10_6_0_False_shift: signed(28 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(26 downto 0);
  signal c_11_9_1_False_resize: signed(26 downto 0);
  signal c_11_9_1_False_shift: signed(26 downto 0);
  signal c_11_9_0_False_resize: signed(26 downto 0);
  signal c_11_9_0_False_shift: signed(26 downto 0);
  signal c_11_9_2_False_resize: signed(26 downto 0);
  signal c_11_9_2_False_shift: signed(26 downto 0);
  signal c_11_0_4_False_resize: signed(26 downto 0);
  signal c_11_0_4_False_shift: signed(26 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(24 downto 0);
  signal c_12_i0_resize: signed(24 downto 0);
  signal c_12_i1_resize: signed(24 downto 0);
  signal c_12_i0_shift: signed(24 downto 0);
  signal c_12_i1_shift: signed(24 downto 0);
  signal c_12_arith: signed(24 downto 0);
  signal c_12_oshift: signed(24 downto 0);
  signal c_13: signed(26 downto 0);
  signal c_13_0_1_False_resize: signed(26 downto 0);
  signal c_13_0_1_False_shift: signed(26 downto 0);
  signal c_13_9_2_False_resize: signed(26 downto 0);
  signal c_13_9_2_False_shift: signed(26 downto 0);
  signal c_13_0_0_False_resize: signed(26 downto 0);
  signal c_13_0_0_False_shift: signed(26 downto 0);
  signal c_13_0_6_False_resize: signed(26 downto 0);
  signal c_13_0_6_False_shift: signed(26 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(27 downto 0);
  signal c_14_12_1_False_resize: signed(27 downto 0);
  signal c_14_12_1_False_shift: signed(27 downto 0);
  signal c_14_0_12_False_resize: signed(27 downto 0);
  signal c_14_0_12_False_shift: signed(27 downto 0);
  signal c_14_0_0_False_resize: signed(27 downto 0);
  signal c_14_0_0_False_shift: signed(27 downto 0);
  signal c_14_12_0_False_resize: signed(27 downto 0);
  signal c_14_12_0_False_shift: signed(27 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(28 downto 0);
  signal c_15_i0_resize: signed(28 downto 0);
  signal c_15_i1_resize: signed(28 downto 0);
  signal c_15_i0_shift: signed(28 downto 0);
  signal c_15_i1_shift: signed(28 downto 0);
  signal c_15_arith: signed(28 downto 0);
  signal c_15_oshift: signed(28 downto 0);
  signal c_16: signed(26 downto 0);
  signal c_16_0_7_False_resize: signed(26 downto 0);
  signal c_16_0_7_False_shift: signed(26 downto 0);
  signal c_16_12_2_False_resize: signed(26 downto 0);
  signal c_16_12_2_False_shift: signed(26 downto 0);
  signal c_16_0_0_False_resize: signed(26 downto 0);
  signal c_16_0_0_False_shift: signed(26 downto 0);
  signal c_16_0_11_False_resize: signed(26 downto 0);
  signal c_16_0_11_False_shift: signed(26 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_17_0_0_False_resize: signed(24 downto 0);
  signal c_17_0_0_False_shift: signed(24 downto 0);
  signal c_17_9_0_False_resize: signed(24 downto 0);
  signal c_17_9_0_False_shift: signed(24 downto 0);
  signal c_17_9_3_False_resize: signed(24 downto 0);
  signal c_17_9_3_False_shift: signed(24 downto 0);
  signal c_17_0_4_False_resize: signed(24 downto 0);
  signal c_17_0_4_False_shift: signed(24 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(29 downto 0);
  signal c_18_i0_resize: signed(29 downto 0);
  signal c_18_i1_resize: signed(29 downto 0);
  signal c_18_i0_shift: signed(29 downto 0);
  signal c_18_i1_shift: signed(29 downto 0);
  signal c_18_arith: signed(29 downto 0);
  signal c_18_oshift: signed(29 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(22 downto 0);
  signal c_19_0_0_False_resize: signed(22 downto 0);
  signal c_19_0_0_False_shift: signed(22 downto 0);
  signal c_19_0_4_False_resize: signed(22 downto 0);
  signal c_19_0_4_False_shift: signed(22 downto 0);
  signal c_19_6_0_False_resize: signed(22 downto 0);
  signal c_19_6_0_False_shift: signed(22 downto 0);
  signal c_19_9_1_False_resize: signed(22 downto 0);
  signal c_19_9_1_False_shift: signed(22 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(29 downto 0);
  signal c_20_18_0_False_resize: signed(29 downto 0);
  signal c_20_18_0_False_shift: signed(29 downto 0);
  signal c_20_0_3_False_resize: signed(29 downto 0);
  signal c_20_0_3_False_shift: signed(29 downto 0);
  signal c_20_6_0_False_resize: signed(29 downto 0);
  signal c_20_6_0_False_shift: signed(29 downto 0);
  signal c_20_18_3_False_resize: signed(29 downto 0);
  signal c_20_18_3_False_shift: signed(29 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(29 downto 0);
  signal c_21_i0_resize: signed(29 downto 0);
  signal c_21_i1_resize: signed(29 downto 0);
  signal c_21_i0_shift: signed(29 downto 0);
  signal c_21_i1_shift: signed(29 downto 0);
  signal c_21_arith: signed(29 downto 0);
  signal c_21_oshift: signed(29 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(29 downto 0);
  signal c_22_21_0_False_resize: signed(29 downto 0);
  signal c_22_21_0_False_shift: signed(29 downto 0);
  signal c_22_18_3_False_resize: signed(29 downto 0);
  signal c_22_18_3_False_shift: signed(29 downto 0);
  signal c_22_15_0_False_resize: signed(29 downto 0);
  signal c_22_15_0_False_shift: signed(29 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(27 downto 0);
  signal c_23_18_1_False_resize: signed(27 downto 0);
  signal c_23_18_1_False_shift: signed(27 downto 0);
  signal c_23_0_0_False_resize: signed(27 downto 0);
  signal c_23_0_0_False_shift: signed(27 downto 0);
  signal c_23_9_1_False_resize: signed(27 downto 0);
  signal c_23_9_1_False_shift: signed(27 downto 0);
  signal c_23_0_4_False_resize: signed(27 downto 0);
  signal c_23_0_4_False_shift: signed(27 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(24 downto 0);
  signal c_24_i0_resize: signed(24 downto 0);
  signal c_24_i1_resize: signed(24 downto 0);
  signal c_24_i0_shift: signed(24 downto 0);
  signal c_24_i1_shift: signed(24 downto 0);
  signal c_24_arith: signed(24 downto 0);
  signal c_24_oshift: signed(24 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(27 downto 0);
  signal c_25_18_1_False_resize: signed(27 downto 0);
  signal c_25_18_1_False_shift: signed(27 downto 0);
  signal c_25_12_0_False_resize: signed(27 downto 0);
  signal c_25_12_0_False_shift: signed(27 downto 0);
  signal c_25_0_0_False_resize: signed(27 downto 0);
  signal c_25_0_0_False_shift: signed(27 downto 0);
  signal c_25_3_2_False_resize: signed(27 downto 0);
  signal c_25_3_2_False_shift: signed(27 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(26 downto 0);
  signal c_26_9_4_False_resize: signed(26 downto 0);
  signal c_26_9_4_False_shift: signed(26 downto 0);
  signal c_26_0_0_False_resize: signed(26 downto 0);
  signal c_26_0_0_False_shift: signed(26 downto 0);
  signal c_26_0_7_False_resize: signed(26 downto 0);
  signal c_26_0_7_False_shift: signed(26 downto 0);
  signal c_26_6_1_False_resize: signed(26 downto 0);
  signal c_26_6_1_False_shift: signed(26 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(27 downto 0);
  signal c_27_i0_resize: signed(27 downto 0);
  signal c_27_i1_resize: signed(27 downto 0);
  signal c_27_i0_shift: signed(27 downto 0);
  signal c_27_i1_shift: signed(27 downto 0);
  signal c_27_arith: signed(27 downto 0);
  signal c_27_oshift: signed(27 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(26 downto 0);
  signal c_28_27_0_False_resize: signed(26 downto 0);
  signal c_28_27_0_False_shift: signed(26 downto 0);
  signal c_28_15_1_False_resize: signed(26 downto 0);
  signal c_28_15_1_False_shift: signed(26 downto 0);
  signal c_28_6_0_False_resize: signed(26 downto 0);
  signal c_28_6_0_False_shift: signed(26 downto 0);
  signal c_28_24_0_False_resize: signed(26 downto 0);
  signal c_28_24_0_False_shift: signed(26 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_15_0_False_resize: signed(25 downto 0);
  signal c_29_15_0_False_shift: signed(25 downto 0);
  signal c_29_0_8_False_resize: signed(25 downto 0);
  signal c_29_0_8_False_shift: signed(25 downto 0);
  signal c_29_24_1_False_resize: signed(25 downto 0);
  signal c_29_24_1_False_shift: signed(25 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(26 downto 0);
  signal c_30_i0_resize: signed(26 downto 0);
  signal c_30_i1_resize: signed(26 downto 0);
  signal c_30_i0_shift: signed(26 downto 0);
  signal c_30_i1_shift: signed(26 downto 0);
  signal c_30_arith: signed(26 downto 0);
  signal c_30_oshift: signed(26 downto 0);
  signal c_30_sub_sel: std_logic;
  signal c_31: signed(25 downto 0);
  signal c_31_27_2_False_resize: signed(25 downto 0);
  signal c_31_27_2_False_shift: signed(25 downto 0);
  signal c_31_3_5_False_resize: signed(25 downto 0);
  signal c_31_3_5_False_shift: signed(25 downto 0);
  signal c_31_6_1_False_resize: signed(25 downto 0);
  signal c_31_6_1_False_shift: signed(25 downto 0);
  signal c_31_30_0_False_resize: signed(25 downto 0);
  signal c_31_30_0_False_shift: signed(25 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_0_8_False_resize: signed(25 downto 0);
  signal c_32_0_8_False_shift: signed(25 downto 0);
  signal c_32_30_1_False_resize: signed(25 downto 0);
  signal c_32_30_1_False_shift: signed(25 downto 0);
  signal c_32_0_0_False_resize: signed(25 downto 0);
  signal c_32_0_0_False_shift: signed(25 downto 0);
  signal c_32_6_0_False_resize: signed(25 downto 0);
  signal c_32_6_0_False_shift: signed(25 downto 0);
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
  signal c_34_0_1_False_resize: signed(25 downto 0);
  signal c_34_0_1_False_shift: signed(25 downto 0);
  signal c_34_0_10_False_resize: signed(25 downto 0);
  signal c_34_0_10_False_shift: signed(25 downto 0);
  signal c_34_33_0_False_resize: signed(25 downto 0);
  signal c_34_33_0_False_shift: signed(25 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(29 downto 0);
  signal c_35_33_0_False_resize: signed(29 downto 0);
  signal c_35_33_0_False_shift: signed(29 downto 0);
  signal c_35_27_0_False_resize: signed(29 downto 0);
  signal c_35_27_0_False_shift: signed(29 downto 0);
  signal c_35_0_0_False_resize: signed(29 downto 0);
  signal c_35_0_0_False_shift: signed(29 downto 0);
  signal c_35_18_8_False_resize: signed(29 downto 0);
  signal c_35_18_8_False_shift: signed(29 downto 0);
  signal c_35_sel: std_logic_vector(1 downto 0);
  signal c_36: signed(29 downto 0);
  signal c_36_i0_resize: signed(29 downto 0);
  signal c_36_i1_resize: signed(29 downto 0);
  signal c_36_i0_shift: signed(29 downto 0);
  signal c_36_i1_shift: signed(29 downto 0);
  signal c_36_arith: signed(29 downto 0);
  signal c_36_oshift: signed(29 downto 0);
  signal c_36_sub_sel: std_logic;
  signal c_37: signed(24 downto 0);
  signal c_37_9_0_False_resize: signed(24 downto 0);
  signal c_37_9_0_False_shift: signed(24 downto 0);
  signal c_37_12_2_False_resize: signed(24 downto 0);
  signal c_37_12_2_False_shift: signed(24 downto 0);
  signal c_37_15_0_False_resize: signed(24 downto 0);
  signal c_37_15_0_False_shift: signed(24 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(26 downto 0);
  signal c_38_12_0_False_resize: signed(26 downto 0);
  signal c_38_12_0_False_shift: signed(26 downto 0);
  signal c_38_9_3_False_resize: signed(26 downto 0);
  signal c_38_9_3_False_shift: signed(26 downto 0);
  signal c_38_36_4_False_resize: signed(26 downto 0);
  signal c_38_36_4_False_shift: signed(26 downto 0);
  signal c_38_3_2_False_resize: signed(26 downto 0);
  signal c_38_3_2_False_shift: signed(26 downto 0);
  signal c_38_sel: std_logic_vector(1 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_i0_resize: signed(25 downto 0);
  signal c_39_i1_resize: signed(25 downto 0);
  signal c_39_i0_shift: signed(25 downto 0);
  signal c_39_i1_shift: signed(25 downto 0);
  signal c_39_arith: signed(25 downto 0);
  signal c_39_oshift: signed(25 downto 0);
  signal c_39_sub_sel: std_logic;
  signal c_40: signed(27 downto 0);
  signal c_40_0_2_False_resize: signed(27 downto 0);
  signal c_40_0_2_False_shift: signed(27 downto 0);
  signal c_40_9_0_False_resize: signed(27 downto 0);
  signal c_40_9_0_False_shift: signed(27 downto 0);
  signal c_40_0_12_False_resize: signed(27 downto 0);
  signal c_40_0_12_False_shift: signed(27 downto 0);
  signal c_40_sel: std_logic_vector(1 downto 0);
  signal c_41: signed(26 downto 0);
  signal c_41_0_4_False_resize: signed(26 downto 0);
  signal c_41_0_4_False_shift: signed(26 downto 0);
  signal c_41_27_4_False_resize: signed(26 downto 0);
  signal c_41_27_4_False_shift: signed(26 downto 0);
  signal c_41_0_0_False_resize: signed(26 downto 0);
  signal c_41_0_0_False_shift: signed(26 downto 0);
  signal c_41_36_3_False_resize: signed(26 downto 0);
  signal c_41_36_3_False_shift: signed(26 downto 0);
  signal c_41_sel: std_logic_vector(1 downto 0);
  signal c_42: signed(29 downto 0);
  signal c_42_i0_resize: signed(29 downto 0);
  signal c_42_i1_resize: signed(29 downto 0);
  signal c_42_i0_shift: signed(29 downto 0);
  signal c_42_i1_shift: signed(29 downto 0);
  signal c_42_arith: signed(29 downto 0);
  signal c_42_oshift: signed(29 downto 0);
  signal c_42_sub_sel: std_logic;
  signal c_43: signed(26 downto 0);
  signal c_43_24_4_False_resize: signed(26 downto 0);
  signal c_43_24_4_False_shift: signed(26 downto 0);
  signal c_43_39_1_False_resize: signed(26 downto 0);
  signal c_43_39_1_False_shift: signed(26 downto 0);
  signal c_43_6_0_False_resize: signed(26 downto 0);
  signal c_43_6_0_False_shift: signed(26 downto 0);
  signal c_43_0_6_False_resize: signed(26 downto 0);
  signal c_43_0_6_False_shift: signed(26 downto 0);
  signal c_43_sel: std_logic_vector(1 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_44_27_1_False_resize: signed(25 downto 0);
  signal c_44_27_1_False_shift: signed(25 downto 0);
  signal c_44_0_5_False_resize: signed(25 downto 0);
  signal c_44_0_5_False_shift: signed(25 downto 0);
  signal c_44_30_0_False_resize: signed(25 downto 0);
  signal c_44_30_0_False_shift: signed(25 downto 0);
  signal c_44_42_3_False_resize: signed(25 downto 0);
  signal c_44_42_3_False_shift: signed(25 downto 0);
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
  signal c_46_45_0_False_resize: signed(25 downto 0);
  signal c_46_45_0_False_shift: signed(25 downto 0);
  signal c_46_0_1_False_resize: signed(25 downto 0);
  signal c_46_0_1_False_shift: signed(25 downto 0);
  signal c_46_9_0_False_resize: signed(25 downto 0);
  signal c_46_9_0_False_shift: signed(25 downto 0);
  signal c_46_21_2_False_resize: signed(25 downto 0);
  signal c_46_21_2_False_shift: signed(25 downto 0);
  signal c_46_sel: std_logic_vector(1 downto 0);
  signal c_47: signed(26 downto 0);
  signal c_47_45_0_False_resize: signed(26 downto 0);
  signal c_47_45_0_False_shift: signed(26 downto 0);
  signal c_47_24_1_False_resize: signed(26 downto 0);
  signal c_47_24_1_False_shift: signed(26 downto 0);
  signal c_47_36_9_False_resize: signed(26 downto 0);
  signal c_47_36_9_False_shift: signed(26 downto 0);
  signal c_47_sel: std_logic_vector(1 downto 0);
  signal c_48: signed(26 downto 0);
  signal c_48_i0_resize: signed(26 downto 0);
  signal c_48_i1_resize: signed(26 downto 0);
  signal c_48_i0_shift: signed(26 downto 0);
  signal c_48_i1_shift: signed(26 downto 0);
  signal c_48_arith: signed(26 downto 0);
  signal c_48_oshift: signed(26 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_49_0_1_False_resize: signed(25 downto 0);
  signal c_49_0_1_False_shift: signed(25 downto 0);
  signal c_49_45_1_False_resize: signed(25 downto 0);
  signal c_49_45_1_False_shift: signed(25 downto 0);
  signal c_49_9_0_False_resize: signed(25 downto 0);
  signal c_49_9_0_False_shift: signed(25 downto 0);
  signal c_49_0_3_False_resize: signed(25 downto 0);
  signal c_49_0_3_False_shift: signed(25 downto 0);
  signal c_49_sel: std_logic_vector(1 downto 0);
  signal c_50: signed(27 downto 0);
  signal c_50_0_2_False_resize: signed(27 downto 0);
  signal c_50_0_2_False_shift: signed(27 downto 0);
  signal c_50_9_4_False_resize: signed(27 downto 0);
  signal c_50_9_4_False_shift: signed(27 downto 0);
  signal c_50_45_7_False_resize: signed(27 downto 0);
  signal c_50_45_7_False_shift: signed(27 downto 0);
  signal c_50_21_0_False_resize: signed(27 downto 0);
  signal c_50_21_0_False_shift: signed(27 downto 0);
  signal c_50_sel: std_logic_vector(1 downto 0);
  signal c_51: signed(29 downto 0);
  signal c_51_i0_resize: signed(29 downto 0);
  signal c_51_i1_resize: signed(29 downto 0);
  signal c_51_i0_shift: signed(29 downto 0);
  signal c_51_i1_shift: signed(29 downto 0);
  signal c_51_arith: signed(29 downto 0);
  signal c_51_oshift: signed(29 downto 0);
  signal c_51_sub_sel: std_logic;
  signal c_52: signed(28 downto 0);
  signal c_52_3_9_False_resize: signed(28 downto 0);
  signal c_52_3_9_False_shift: signed(28 downto 0);
  signal c_52_33_3_False_resize: signed(28 downto 0);
  signal c_52_33_3_False_shift: signed(28 downto 0);
  signal c_52_0_0_False_resize: signed(28 downto 0);
  signal c_52_0_0_False_shift: signed(28 downto 0);
  signal c_52_30_0_False_resize: signed(28 downto 0);
  signal c_52_30_0_False_shift: signed(28 downto 0);
  signal c_52_sel: std_logic_vector(1 downto 0);
  signal c_53: signed(24 downto 0);
  signal c_53_48_0_False_resize: signed(24 downto 0);
  signal c_53_48_0_False_shift: signed(24 downto 0);
  signal c_53_0_7_False_resize: signed(24 downto 0);
  signal c_53_0_7_False_shift: signed(24 downto 0);
  signal c_53_12_2_False_resize: signed(24 downto 0);
  signal c_53_12_2_False_shift: signed(24 downto 0);
  signal c_53_0_6_False_resize: signed(24 downto 0);
  signal c_53_0_6_False_shift: signed(24 downto 0);
  signal c_53_sel: std_logic_vector(1 downto 0);
  signal c_54: signed(28 downto 0);
  signal c_54_i0_resize: signed(28 downto 0);
  signal c_54_i1_resize: signed(28 downto 0);
  signal c_54_i0_shift: signed(28 downto 0);
  signal c_54_i1_shift: signed(28 downto 0);
  signal c_54_arith: signed(28 downto 0);
  signal c_54_oshift: signed(28 downto 0);
  signal c_54_sub_sel: std_logic;
  signal c_55: signed(29 downto 0);
  signal c_55_0_3_False_resize: signed(29 downto 0);
  signal c_55_0_3_False_shift: signed(29 downto 0);
  signal c_55_39_0_False_resize: signed(29 downto 0);
  signal c_55_39_0_False_shift: signed(29 downto 0);
  signal c_55_36_0_False_resize: signed(29 downto 0);
  signal c_55_36_0_False_shift: signed(29 downto 0);
  signal c_55_51_9_False_resize: signed(29 downto 0);
  signal c_55_51_9_False_shift: signed(29 downto 0);
  signal c_55_sel: std_logic_vector(1 downto 0);
  signal c_56: signed(28 downto 0);
  signal c_56_0_4_False_resize: signed(28 downto 0);
  signal c_56_0_4_False_shift: signed(28 downto 0);
  signal c_56_0_0_False_resize: signed(28 downto 0);
  signal c_56_0_0_False_shift: signed(28 downto 0);
  signal c_56_51_4_False_resize: signed(28 downto 0);
  signal c_56_51_4_False_shift: signed(28 downto 0);
  signal c_56_3_3_False_resize: signed(28 downto 0);
  signal c_56_3_3_False_shift: signed(28 downto 0);
  signal c_56_sel: std_logic_vector(1 downto 0);
  signal c_57: signed(29 downto 0);
  signal c_57_i0_resize: signed(29 downto 0);
  signal c_57_i1_resize: signed(29 downto 0);
  signal c_57_i0_shift: signed(29 downto 0);
  signal c_57_i1_shift: signed(29 downto 0);
  signal c_57_arith: signed(29 downto 0);
  signal c_57_oshift: signed(29 downto 0);
  signal c_58: signed(29 downto 0);
  signal c_58_51_0_False_resize: signed(29 downto 0);
  signal c_58_51_0_False_shift: signed(29 downto 0);
  signal c_58_48_0_False_resize: signed(29 downto 0);
  signal c_58_48_0_False_shift: signed(29 downto 0);
  signal c_58_54_0_False_resize: signed(29 downto 0);
  signal c_58_54_0_False_shift: signed(29 downto 0);
  signal c_58_36_0_False_resize: signed(29 downto 0);
  signal c_58_36_0_False_shift: signed(29 downto 0);
  signal c_58_sel: std_logic_vector(1 downto 0);
  signal c_59: signed(29 downto 0);
  signal c_59_9_0_False_resize: signed(29 downto 0);
  signal c_59_9_0_False_shift: signed(29 downto 0);
  signal c_59_12_0_False_resize: signed(29 downto 0);
  signal c_59_12_0_False_shift: signed(29 downto 0);
  signal c_59_57_0_False_resize: signed(29 downto 0);
  signal c_59_57_0_False_shift: signed(29 downto 0);
  signal c_59_48_0_False_resize: signed(29 downto 0);
  signal c_59_48_0_False_shift: signed(29 downto 0);
  signal c_59_sel: std_logic_vector(1 downto 0);
  signal c_60: signed(24 downto 0);
  signal c_60_i0_resize: signed(29 downto 0);
  signal c_60_i1_resize: signed(29 downto 0);
  signal c_60_i0_shift: signed(29 downto 0);
  signal c_60_i1_shift: signed(29 downto 0);
  signal c_60_arith: signed(29 downto 0);
  signal c_60_oshift: signed(24 downto 0);
  signal c_60_sub_sel: std_logic;
  signal c_61: signed(28 downto 0);
  signal c_61_0_0_False_resize: signed(28 downto 0);
  signal c_61_0_0_False_shift: signed(28 downto 0);
  signal c_61_60_3_False_resize: signed(28 downto 0);
  signal c_61_60_3_False_shift: signed(28 downto 0);
  signal c_61_6_0_False_resize: signed(28 downto 0);
  signal c_61_6_0_False_shift: signed(28 downto 0);
  signal c_61_18_2_False_resize: signed(28 downto 0);
  signal c_61_18_2_False_shift: signed(28 downto 0);
  signal c_61_sel: std_logic_vector(1 downto 0);
  signal c_62: signed(25 downto 0);
  signal c_62_0_3_False_resize: signed(25 downto 0);
  signal c_62_0_3_False_shift: signed(25 downto 0);
  signal c_62_9_1_False_resize: signed(25 downto 0);
  signal c_62_9_1_False_shift: signed(25 downto 0);
  signal c_62_39_0_False_resize: signed(25 downto 0);
  signal c_62_39_0_False_shift: signed(25 downto 0);
  signal c_62_sel: std_logic_vector(1 downto 0);
  signal c_63: signed(28 downto 0);
  signal c_63_i0_resize: signed(28 downto 0);
  signal c_63_i1_resize: signed(28 downto 0);
  signal c_63_i0_shift: signed(28 downto 0);
  signal c_63_i1_shift: signed(28 downto 0);
  signal c_63_arith: signed(28 downto 0);
  signal c_63_oshift: signed(28 downto 0);
  signal c_63_sub_sel: std_logic;
  signal c_64: signed(29 downto 0);
  signal c_64_0_0_False_resize: signed(29 downto 0);
  signal c_64_0_0_False_shift: signed(29 downto 0);
  signal c_64_42_2_False_resize: signed(29 downto 0);
  signal c_64_42_2_False_shift: signed(29 downto 0);
  signal c_64_sel: std_logic_vector(0 downto 0);
  signal c_65: signed(29 downto 0);
  signal c_65_42_0_False_resize: signed(29 downto 0);
  signal c_65_42_0_False_shift: signed(29 downto 0);
  signal c_65_9_4_False_resize: signed(29 downto 0);
  signal c_65_9_4_False_shift: signed(29 downto 0);
  signal c_65_30_4_False_resize: signed(29 downto 0);
  signal c_65_30_4_False_shift: signed(29 downto 0);
  signal c_65_6_0_False_resize: signed(29 downto 0);
  signal c_65_6_0_False_shift: signed(29 downto 0);
  signal c_65_sel: std_logic_vector(1 downto 0);
  signal c_66: signed(29 downto 0);
  signal c_66_i0_resize: signed(29 downto 0);
  signal c_66_i1_resize: signed(29 downto 0);
  signal c_66_i0_shift: signed(29 downto 0);
  signal c_66_i1_shift: signed(29 downto 0);
  signal c_66_arith: signed(29 downto 0);
  signal c_66_oshift: signed(29 downto 0);
  signal c_67: signed(25 downto 0);
  signal c_67_36_5_False_resize: signed(25 downto 0);
  signal c_67_36_5_False_shift: signed(25 downto 0);
  signal c_67_48_0_False_resize: signed(25 downto 0);
  signal c_67_48_0_False_shift: signed(25 downto 0);
  signal c_67_48_1_False_resize: signed(25 downto 0);
  signal c_67_48_1_False_shift: signed(25 downto 0);
  signal c_67_24_6_False_resize: signed(25 downto 0);
  signal c_67_24_6_False_shift: signed(25 downto 0);
  signal c_67_sel: std_logic_vector(1 downto 0);
  signal c_68: signed(24 downto 0);
  signal c_68_3_0_False_resize: signed(24 downto 0);
  signal c_68_3_0_False_shift: signed(24 downto 0);
  signal c_68_0_0_False_resize: signed(24 downto 0);
  signal c_68_0_0_False_shift: signed(24 downto 0);
  signal c_68_57_0_False_resize: signed(24 downto 0);
  signal c_68_57_0_False_shift: signed(24 downto 0);
  signal c_68_51_0_False_resize: signed(24 downto 0);
  signal c_68_51_0_False_shift: signed(24 downto 0);
  signal c_68_sel: std_logic_vector(1 downto 0);
  signal c_69: signed(25 downto 0);
  signal c_69_i0_resize: signed(25 downto 0);
  signal c_69_i1_resize: signed(25 downto 0);
  signal c_69_i0_shift: signed(25 downto 0);
  signal c_69_i1_shift: signed(25 downto 0);
  signal c_69_arith: signed(25 downto 0);
  signal c_69_oshift: signed(25 downto 0);
  signal c_70: signed(27 downto 0);
  signal c_70_0_0_False_resize: signed(27 downto 0);
  signal c_70_0_0_False_shift: signed(27 downto 0);
  signal c_70_12_3_False_resize: signed(27 downto 0);
  signal c_70_12_3_False_shift: signed(27 downto 0);
  signal c_70_12_6_False_resize: signed(27 downto 0);
  signal c_70_12_6_False_shift: signed(27 downto 0);
  signal c_70_12_0_False_resize: signed(27 downto 0);
  signal c_70_12_0_False_shift: signed(27 downto 0);
  signal c_70_sel: std_logic_vector(1 downto 0);
  signal c_71: signed(26 downto 0);
  signal c_71_0_0_False_resize: signed(26 downto 0);
  signal c_71_0_0_False_shift: signed(26 downto 0);
  signal c_71_39_2_False_resize: signed(26 downto 0);
  signal c_71_39_2_False_shift: signed(26 downto 0);
  signal c_71_69_2_False_resize: signed(26 downto 0);
  signal c_71_69_2_False_shift: signed(26 downto 0);
  signal c_71_60_0_False_resize: signed(26 downto 0);
  signal c_71_60_0_False_shift: signed(26 downto 0);
  signal c_71_sel: std_logic_vector(1 downto 0);
  signal c_72: signed(28 downto 0);
  signal c_72_i0_resize: signed(28 downto 0);
  signal c_72_i1_resize: signed(28 downto 0);
  signal c_72_i0_shift: signed(28 downto 0);
  signal c_72_i1_shift: signed(28 downto 0);
  signal c_72_arith: signed(28 downto 0);
  signal c_72_oshift: signed(28 downto 0);
  signal c_72_sub_sel: std_logic;
  signal c_73: signed(24 downto 0);
  signal c_73_69_0_False_resize: signed(24 downto 0);
  signal c_73_69_0_False_shift: signed(24 downto 0);
  signal c_73_12_2_False_resize: signed(24 downto 0);
  signal c_73_12_2_False_shift: signed(24 downto 0);
  signal c_73_24_0_False_resize: signed(24 downto 0);
  signal c_73_24_0_False_shift: signed(24 downto 0);
  signal c_73_45_0_False_resize: signed(24 downto 0);
  signal c_73_45_0_False_shift: signed(24 downto 0);
  signal c_73_sel: std_logic_vector(1 downto 0);
  signal c_74: signed(25 downto 0);
  signal c_74_6_5_False_resize: signed(25 downto 0);
  signal c_74_6_5_False_shift: signed(25 downto 0);
  signal c_74_0_1_False_resize: signed(25 downto 0);
  signal c_74_0_1_False_shift: signed(25 downto 0);
  signal c_74_12_0_False_resize: signed(25 downto 0);
  signal c_74_12_0_False_shift: signed(25 downto 0);
  signal c_74_33_0_False_resize: signed(25 downto 0);
  signal c_74_33_0_False_shift: signed(25 downto 0);
  signal c_74_sel: std_logic_vector(1 downto 0);
  signal c_75: signed(25 downto 0);
  signal c_75_i0_resize: signed(25 downto 0);
  signal c_75_i1_resize: signed(25 downto 0);
  signal c_75_i0_shift: signed(25 downto 0);
  signal c_75_i1_shift: signed(25 downto 0);
  signal c_75_arith: signed(25 downto 0);
  signal c_75_oshift: signed(25 downto 0);
  signal c_75_sub_sel: std_logic;
  signal c_76: signed(29 downto 0);
  signal c_76_60_0_False_resize: signed(29 downto 0);
  signal c_76_60_0_False_shift: signed(29 downto 0);
  signal c_76_18_0_False_resize: signed(29 downto 0);
  signal c_76_18_0_False_shift: signed(29 downto 0);
  signal c_76_66_0_False_resize: signed(29 downto 0);
  signal c_76_66_0_False_shift: signed(29 downto 0);
  signal c_76_57_2_False_resize: signed(29 downto 0);
  signal c_76_57_2_False_shift: signed(29 downto 0);
  signal c_76_sel: std_logic_vector(1 downto 0);
  signal c_77: signed(28 downto 0);
  signal c_77_72_1_False_resize: signed(28 downto 0);
  signal c_77_72_1_False_shift: signed(28 downto 0);
  signal c_77_24_0_False_resize: signed(28 downto 0);
  signal c_77_24_0_False_shift: signed(28 downto 0);
  signal c_77_0_7_False_resize: signed(28 downto 0);
  signal c_77_0_7_False_shift: signed(28 downto 0);
  signal c_77_75_4_False_resize: signed(28 downto 0);
  signal c_77_75_4_False_shift: signed(28 downto 0);
  signal c_77_sel: std_logic_vector(1 downto 0);
  signal c_78: signed(25 downto 0);
  signal c_78_i0_resize: signed(25 downto 0);
  signal c_78_i1_resize: signed(25 downto 0);
  signal c_78_i0_shift: signed(25 downto 0);
  signal c_78_i1_shift: signed(25 downto 0);
  signal c_78_arith: signed(25 downto 0);
  signal c_78_oshift: signed(25 downto 0);
  signal c_78_sub_sel: std_logic;
  signal c_79: signed(29 downto 0);
  signal c_79_63_1_False_resize: signed(29 downto 0);
  signal c_79_63_1_False_shift: signed(29 downto 0);
  signal c_79_0_2_False_resize: signed(29 downto 0);
  signal c_79_0_2_False_shift: signed(29 downto 0);
  signal c_79_9_0_False_resize: signed(29 downto 0);
  signal c_79_9_0_False_shift: signed(29 downto 0);
  signal c_79_48_1_False_resize: signed(29 downto 0);
  signal c_79_48_1_False_shift: signed(29 downto 0);
  signal c_79_sel: std_logic_vector(1 downto 0);
  signal c_80: signed(24 downto 0);
  signal c_80_0_0_False_resize: signed(24 downto 0);
  signal c_80_0_0_False_shift: signed(24 downto 0);
  signal c_80_3_3_False_resize: signed(24 downto 0);
  signal c_80_3_3_False_shift: signed(24 downto 0);
  signal c_80_78_0_False_resize: signed(24 downto 0);
  signal c_80_78_0_False_shift: signed(24 downto 0);
  signal c_80_0_8_False_resize: signed(24 downto 0);
  signal c_80_0_8_False_shift: signed(24 downto 0);
  signal c_80_sel: std_logic_vector(1 downto 0);
  signal c_81: signed(29 downto 0);
  signal c_81_i0_resize: signed(29 downto 0);
  signal c_81_i1_resize: signed(29 downto 0);
  signal c_81_i0_shift: signed(29 downto 0);
  signal c_81_i1_shift: signed(29 downto 0);
  signal c_81_arith: signed(29 downto 0);
  signal c_81_oshift: signed(29 downto 0);
  signal c_81_sub_sel: std_logic;
  signal c_82: signed(26 downto 0);
  signal c_82_69_1_False_resize: signed(26 downto 0);
  signal c_82_69_1_False_shift: signed(26 downto 0);
  signal c_82_66_0_False_resize: signed(26 downto 0);
  signal c_82_66_0_False_shift: signed(26 downto 0);
  signal c_82_72_9_False_resize: signed(26 downto 0);
  signal c_82_72_9_False_shift: signed(26 downto 0);
  signal c_82_51_2_False_resize: signed(26 downto 0);
  signal c_82_51_2_False_shift: signed(26 downto 0);
  signal c_82_sel: std_logic_vector(1 downto 0);
  signal c_83: signed(25 downto 0);
  signal c_83_39_0_False_resize: signed(25 downto 0);
  signal c_83_39_0_False_shift: signed(25 downto 0);
  signal c_83_81_0_False_resize: signed(25 downto 0);
  signal c_83_81_0_False_shift: signed(25 downto 0);
  signal c_83_24_1_False_resize: signed(25 downto 0);
  signal c_83_24_1_False_shift: signed(25 downto 0);
  signal c_83_0_5_False_resize: signed(25 downto 0);
  signal c_83_0_5_False_shift: signed(25 downto 0);
  signal c_83_sel: std_logic_vector(1 downto 0);
  signal c_84: signed(25 downto 0);
  signal c_84_i0_resize: signed(25 downto 0);
  signal c_84_i1_resize: signed(25 downto 0);
  signal c_84_i0_shift: signed(25 downto 0);
  signal c_84_i1_shift: signed(25 downto 0);
  signal c_84_arith: signed(25 downto 0);
  signal c_84_oshift: signed(25 downto 0);
  signal c_85: signed(28 downto 0);
  signal c_85_51_0_False_resize: signed(28 downto 0);
  signal c_85_51_0_False_shift: signed(28 downto 0);
  signal c_85_60_0_False_resize: signed(28 downto 0);
  signal c_85_60_0_False_shift: signed(28 downto 0);
  signal c_85_3_0_False_resize: signed(28 downto 0);
  signal c_85_3_0_False_shift: signed(28 downto 0);
  signal c_85_72_0_False_resize: signed(28 downto 0);
  signal c_85_72_0_False_shift: signed(28 downto 0);
  signal c_85_sel: std_logic_vector(1 downto 0);
  signal c_86: signed(29 downto 0);
  signal c_86_42_0_False_resize: signed(29 downto 0);
  signal c_86_42_0_False_shift: signed(29 downto 0);
  signal c_86_84_0_False_resize: signed(29 downto 0);
  signal c_86_84_0_False_shift: signed(29 downto 0);
  signal c_86_54_0_False_resize: signed(29 downto 0);
  signal c_86_54_0_False_shift: signed(29 downto 0);
  signal c_86_75_0_False_resize: signed(29 downto 0);
  signal c_86_75_0_False_shift: signed(29 downto 0);
  signal c_86_sel: std_logic_vector(1 downto 0);
  signal c_87: signed(25 downto 0);
  signal c_87_i0_resize: signed(26 downto 0);
  signal c_87_i1_resize: signed(26 downto 0);
  signal c_87_i0_shift: signed(26 downto 0);
  signal c_87_i1_shift: signed(26 downto 0);
  signal c_87_arith: signed(26 downto 0);
  signal c_87_oshift: signed(25 downto 0);
  signal c_87_sub_sel: std_logic;
  signal c_88: signed(29 downto 0);
  signal c_88_51_4_False_resize: signed(29 downto 0);
  signal c_88_51_4_False_shift: signed(29 downto 0);
  signal c_88_51_0_False_resize: signed(29 downto 0);
  signal c_88_51_0_False_shift: signed(29 downto 0);
  signal c_88_0_3_False_resize: signed(29 downto 0);
  signal c_88_0_3_False_shift: signed(29 downto 0);
  signal c_88_15_0_False_resize: signed(29 downto 0);
  signal c_88_15_0_False_shift: signed(29 downto 0);
  signal c_88_sel: std_logic_vector(1 downto 0);
  signal c_89: signed(28 downto 0);
  signal c_89_48_0_False_resize: signed(28 downto 0);
  signal c_89_48_0_False_shift: signed(28 downto 0);
  signal c_89_51_3_False_resize: signed(28 downto 0);
  signal c_89_51_3_False_shift: signed(28 downto 0);
  signal c_89_0_9_False_resize: signed(28 downto 0);
  signal c_89_0_9_False_shift: signed(28 downto 0);
  signal c_89_81_0_False_resize: signed(28 downto 0);
  signal c_89_81_0_False_shift: signed(28 downto 0);
  signal c_89_sel: std_logic_vector(1 downto 0);
  signal c_90: signed(29 downto 0);
  signal c_90_i0_resize: signed(29 downto 0);
  signal c_90_i1_resize: signed(29 downto 0);
  signal c_90_i0_shift: signed(29 downto 0);
  signal c_90_i1_shift: signed(29 downto 0);
  signal c_90_arith: signed(29 downto 0);
  signal c_90_oshift: signed(29 downto 0);
  signal c_90_sub_sel: std_logic;
  signal c_91: signed(26 downto 0);
  signal c_91_54_0_False_resize: signed(26 downto 0);
  signal c_91_54_0_False_shift: signed(26 downto 0);
  signal c_91_3_8_False_resize: signed(26 downto 0);
  signal c_91_3_8_False_shift: signed(26 downto 0);
  signal c_91_48_1_False_resize: signed(26 downto 0);
  signal c_91_48_1_False_shift: signed(26 downto 0);
  signal c_91_75_0_False_resize: signed(26 downto 0);
  signal c_91_75_0_False_shift: signed(26 downto 0);
  signal c_91_sel: std_logic_vector(1 downto 0);
  signal c_92: signed(24 downto 0);
  signal c_92_0_2_False_resize: signed(24 downto 0);
  signal c_92_0_2_False_shift: signed(24 downto 0);
  signal c_92_36_0_False_resize: signed(24 downto 0);
  signal c_92_36_0_False_shift: signed(24 downto 0);
  signal c_92_24_0_False_resize: signed(24 downto 0);
  signal c_92_24_0_False_shift: signed(24 downto 0);
  signal c_92_48_1_False_resize: signed(24 downto 0);
  signal c_92_48_1_False_shift: signed(24 downto 0);
  signal c_92_sel: std_logic_vector(1 downto 0);
  signal c_93: signed(25 downto 0);
  signal c_93_i0_resize: signed(25 downto 0);
  signal c_93_i1_resize: signed(25 downto 0);
  signal c_93_i0_shift: signed(25 downto 0);
  signal c_93_i1_shift: signed(25 downto 0);
  signal c_93_arith: signed(25 downto 0);
  signal c_93_oshift: signed(25 downto 0);
  signal c_94: signed(25 downto 0);
  signal c_94_69_0_False_resize: signed(25 downto 0);
  signal c_94_69_0_False_shift: signed(25 downto 0);
  signal c_94_6_0_False_resize: signed(25 downto 0);
  signal c_94_6_0_False_shift: signed(25 downto 0);
  signal c_94_6_1_False_resize: signed(25 downto 0);
  signal c_94_6_1_False_shift: signed(25 downto 0);
  signal c_94_0_8_False_resize: signed(25 downto 0);
  signal c_94_0_8_False_shift: signed(25 downto 0);
  signal c_94_sel: std_logic_vector(1 downto 0);
  signal c_95: signed(25 downto 0);
  signal c_95_33_0_False_resize: signed(25 downto 0);
  signal c_95_33_0_False_shift: signed(25 downto 0);
  signal c_95_39_0_False_resize: signed(25 downto 0);
  signal c_95_39_0_False_shift: signed(25 downto 0);
  signal c_95_60_1_False_resize: signed(25 downto 0);
  signal c_95_60_1_False_shift: signed(25 downto 0);
  signal c_95_90_0_False_resize: signed(25 downto 0);
  signal c_95_90_0_False_shift: signed(25 downto 0);
  signal c_95_sel: std_logic_vector(1 downto 0);
  signal c_96: signed(25 downto 0);
  signal c_96_i0_resize: signed(25 downto 0);
  signal c_96_i1_resize: signed(25 downto 0);
  signal c_96_i0_shift: signed(25 downto 0);
  signal c_96_i1_shift: signed(25 downto 0);
  signal c_96_arith: signed(25 downto 0);
  signal c_96_oshift: signed(25 downto 0);
  signal c_96_sub_sel: std_logic;
  signal c_97: signed(25 downto 0);
  signal c_97_9_1_False_resize: signed(25 downto 0);
  signal c_97_9_1_False_shift: signed(25 downto 0);
  signal c_97_0_0_False_resize: signed(25 downto 0);
  signal c_97_0_0_False_shift: signed(25 downto 0);
  signal c_97_84_1_False_resize: signed(25 downto 0);
  signal c_97_84_1_False_shift: signed(25 downto 0);
  signal c_97_36_0_False_resize: signed(25 downto 0);
  signal c_97_36_0_False_shift: signed(25 downto 0);
  signal c_97_sel: std_logic_vector(1 downto 0);
  signal c_98: signed(25 downto 0);
  signal c_98_0_0_False_resize: signed(25 downto 0);
  signal c_98_0_0_False_shift: signed(25 downto 0);
  signal c_98_33_4_False_resize: signed(25 downto 0);
  signal c_98_33_4_False_shift: signed(25 downto 0);
  signal c_98_0_3_False_resize: signed(25 downto 0);
  signal c_98_0_3_False_shift: signed(25 downto 0);
  signal c_98_63_0_False_resize: signed(25 downto 0);
  signal c_98_63_0_False_shift: signed(25 downto 0);
  signal c_98_sel: std_logic_vector(1 downto 0);
  signal c_99: signed(25 downto 0);
  signal c_99_i0_resize: signed(25 downto 0);
  signal c_99_i1_resize: signed(25 downto 0);
  signal c_99_i0_shift: signed(25 downto 0);
  signal c_99_i1_shift: signed(25 downto 0);
  signal c_99_arith: signed(25 downto 0);
  signal c_99_oshift: signed(25 downto 0);
  signal c_99_sub_sel: std_logic;
  signal c_100: signed(27 downto 0);
  signal c_100_54_0_False_resize: signed(27 downto 0);
  signal c_100_54_0_False_shift: signed(27 downto 0);
  signal c_100_0_12_False_resize: signed(27 downto 0);
  signal c_100_0_12_False_shift: signed(27 downto 0);
  signal c_100_99_0_False_resize: signed(27 downto 0);
  signal c_100_99_0_False_shift: signed(27 downto 0);
  signal c_100_3_2_False_resize: signed(27 downto 0);
  signal c_100_3_2_False_shift: signed(27 downto 0);
  signal c_100_sel: std_logic_vector(1 downto 0);
  signal c_101: signed(27 downto 0);
  signal c_101_87_0_False_resize: signed(27 downto 0);
  signal c_101_87_0_False_shift: signed(27 downto 0);
  signal c_101_54_6_False_resize: signed(27 downto 0);
  signal c_101_54_6_False_shift: signed(27 downto 0);
  signal c_101_27_0_False_resize: signed(27 downto 0);
  signal c_101_27_0_False_shift: signed(27 downto 0);
  signal c_101_63_0_False_resize: signed(27 downto 0);
  signal c_101_63_0_False_shift: signed(27 downto 0);
  signal c_101_sel: std_logic_vector(1 downto 0);
  signal c_102: signed(24 downto 0);
  signal c_102_i0_resize: signed(24 downto 0);
  signal c_102_i1_resize: signed(24 downto 0);
  signal c_102_i0_shift: signed(24 downto 0);
  signal c_102_i1_shift: signed(24 downto 0);
  signal c_102_arith: signed(24 downto 0);
  signal c_102_oshift: signed(24 downto 0);
  signal c_102_sub_sel: std_logic;
  signal c_103: signed(29 downto 0);
  signal c_103_51_0_False_resize: signed(29 downto 0);
  signal c_103_51_0_False_shift: signed(29 downto 0);
  signal c_103_81_0_False_resize: signed(29 downto 0);
  signal c_103_81_0_False_shift: signed(29 downto 0);
  signal c_103_18_0_False_resize: signed(29 downto 0);
  signal c_103_18_0_False_shift: signed(29 downto 0);
  signal c_103_90_5_False_resize: signed(29 downto 0);
  signal c_103_90_5_False_shift: signed(29 downto 0);
  signal c_103_sel: std_logic_vector(1 downto 0);
  signal c_104: signed(29 downto 0);
  signal c_104_90_0_False_resize: signed(29 downto 0);
  signal c_104_90_0_False_shift: signed(29 downto 0);
  signal c_104_36_0_False_resize: signed(29 downto 0);
  signal c_104_36_0_False_shift: signed(29 downto 0);
  signal c_104_48_1_False_resize: signed(29 downto 0);
  signal c_104_48_1_False_shift: signed(29 downto 0);
  signal c_104_6_0_False_resize: signed(29 downto 0);
  signal c_104_6_0_False_shift: signed(29 downto 0);
  signal c_104_sel: std_logic_vector(1 downto 0);
  signal c_105: signed(25 downto 0);
  signal c_105_i0_resize: signed(25 downto 0);
  signal c_105_i1_resize: signed(25 downto 0);
  signal c_105_i0_shift: signed(25 downto 0);
  signal c_105_i1_shift: signed(25 downto 0);
  signal c_105_arith: signed(25 downto 0);
  signal c_105_oshift: signed(25 downto 0);
  signal c_105_sub_sel: std_logic;
  signal c_106: signed(25 downto 0);
  signal c_106_9_2_False_resize: signed(25 downto 0);
  signal c_106_9_2_False_shift: signed(25 downto 0);
  signal c_106_0_0_False_resize: signed(25 downto 0);
  signal c_106_0_0_False_shift: signed(25 downto 0);
  signal c_106_12_1_False_resize: signed(25 downto 0);
  signal c_106_12_1_False_shift: signed(25 downto 0);
  signal c_106_42_6_False_resize: signed(25 downto 0);
  signal c_106_42_6_False_shift: signed(25 downto 0);
  signal c_106_sel: std_logic_vector(1 downto 0);
  signal c_107: signed(24 downto 0);
  signal c_107_102_0_False_resize: signed(24 downto 0);
  signal c_107_102_0_False_shift: signed(24 downto 0);
  signal c_107_60_0_False_resize: signed(24 downto 0);
  signal c_107_60_0_False_shift: signed(24 downto 0);
  signal c_107_57_3_False_resize: signed(24 downto 0);
  signal c_107_57_3_False_shift: signed(24 downto 0);
  signal c_107_84_0_False_resize: signed(24 downto 0);
  signal c_107_84_0_False_shift: signed(24 downto 0);
  signal c_107_sel: std_logic_vector(1 downto 0);
  signal c_108: signed(25 downto 0);
  signal c_108_i0_resize: signed(25 downto 0);
  signal c_108_i1_resize: signed(25 downto 0);
  signal c_108_i0_shift: signed(25 downto 0);
  signal c_108_i1_shift: signed(25 downto 0);
  signal c_108_arith: signed(25 downto 0);
  signal c_108_oshift: signed(25 downto 0);
  signal c_108_sub_sel: std_logic;
  signal c_109: signed(25 downto 0);
  signal c_109_36_1_False_resize: signed(25 downto 0);
  signal c_109_36_1_False_shift: signed(25 downto 0);
  signal c_109_12_1_False_resize: signed(25 downto 0);
  signal c_109_12_1_False_shift: signed(25 downto 0);
  signal c_109_99_0_False_resize: signed(25 downto 0);
  signal c_109_99_0_False_shift: signed(25 downto 0);
  signal c_109_75_0_False_resize: signed(25 downto 0);
  signal c_109_75_0_False_shift: signed(25 downto 0);
  signal c_109_sel: std_logic_vector(1 downto 0);
  signal c_110: signed(25 downto 0);
  signal c_110_resize: signed(25 downto 0);
  signal c_111: signed(25 downto 0);
  signal c_111_108_0_False_resize: signed(25 downto 0);
  signal c_111_108_0_False_shift: signed(25 downto 0);
  signal c_111_102_4_False_resize: signed(25 downto 0);
  signal c_111_102_4_False_shift: signed(25 downto 0);
  signal c_111_99_0_False_resize: signed(25 downto 0);
  signal c_111_99_0_False_shift: signed(25 downto 0);
  signal c_111_93_0_False_resize: signed(25 downto 0);
  signal c_111_93_0_False_shift: signed(25 downto 0);
  signal c_111_sel: std_logic_vector(1 downto 0);
  signal c_112: signed(25 downto 0);
  signal c_112_resize: signed(25 downto 0);
  signal c_113: signed(25 downto 0);
  signal c_113_60_1_False_resize: signed(25 downto 0);
  signal c_113_60_1_False_shift: signed(25 downto 0);
  signal c_113_102_0_False_resize: signed(25 downto 0);
  signal c_113_102_0_False_shift: signed(25 downto 0);
  signal c_113_78_0_False_resize: signed(25 downto 0);
  signal c_113_78_0_False_shift: signed(25 downto 0);
  signal c_113_24_0_False_resize: signed(25 downto 0);
  signal c_113_24_0_False_shift: signed(25 downto 0);
  signal c_113_sel: std_logic_vector(1 downto 0);
  signal c_114: signed(25 downto 0);
  signal c_114_resize: signed(25 downto 0);
  signal c_115: signed(25 downto 0);
  signal c_115_51_0_False_resize: signed(25 downto 0);
  signal c_115_51_0_False_shift: signed(25 downto 0);
  signal c_115_87_0_False_resize: signed(25 downto 0);
  signal c_115_87_0_False_shift: signed(25 downto 0);
  signal c_115_96_2_False_resize: signed(25 downto 0);
  signal c_115_96_2_False_shift: signed(25 downto 0);
  signal c_115_105_0_False_resize: signed(25 downto 0);
  signal c_115_105_0_False_shift: signed(25 downto 0);
  signal c_115_sel: std_logic_vector(1 downto 0);
  signal c_116: signed(25 downto 0);
  signal c_116_resize: signed(25 downto 0);
  signal c_117: signed(25 downto 0);
  signal c_117_93_1_False_resize: signed(25 downto 0);
  signal c_117_93_1_False_shift: signed(25 downto 0);
  signal c_117_60_0_False_resize: signed(25 downto 0);
  signal c_117_60_0_False_shift: signed(25 downto 0);
  signal c_117_75_0_False_resize: signed(25 downto 0);
  signal c_117_75_0_False_shift: signed(25 downto 0);
  signal c_117_63_0_False_resize: signed(25 downto 0);
  signal c_117_63_0_False_shift: signed(25 downto 0);
  signal c_117_sel: std_logic_vector(1 downto 0);
  signal c_118: signed(25 downto 0);
  signal c_118_resize: signed(25 downto 0);
  signal c_119: signed(25 downto 0);
  signal c_119_48_0_False_resize: signed(25 downto 0);
  signal c_119_48_0_False_shift: signed(25 downto 0);
  signal c_119_24_0_False_resize: signed(25 downto 0);
  signal c_119_24_0_False_shift: signed(25 downto 0);
  signal c_119_108_0_False_resize: signed(25 downto 0);
  signal c_119_108_0_False_shift: signed(25 downto 0);
  signal c_119_sel: std_logic_vector(1 downto 0);
  signal c_120: signed(25 downto 0);
  signal c_120_resize: signed(25 downto 0);
  signal c_121: signed(25 downto 0);
  signal c_121_105_0_False_resize: signed(25 downto 0);
  signal c_121_105_0_False_shift: signed(25 downto 0);
  signal c_121_99_0_False_resize: signed(25 downto 0);
  signal c_121_99_0_False_shift: signed(25 downto 0);
  signal c_121_72_0_False_resize: signed(25 downto 0);
  signal c_121_72_0_False_shift: signed(25 downto 0);
  signal c_121_96_0_False_resize: signed(25 downto 0);
  signal c_121_96_0_False_shift: signed(25 downto 0);
  signal c_121_sel: std_logic_vector(1 downto 0);
  signal c_122: signed(25 downto 0);
  signal c_122_resize: signed(25 downto 0);
  signal c_123: signed(25 downto 0);
  signal c_123_102_1_False_resize: signed(25 downto 0);
  signal c_123_102_1_False_shift: signed(25 downto 0);
  signal c_123_21_2_False_resize: signed(25 downto 0);
  signal c_123_21_2_False_shift: signed(25 downto 0);
  signal c_123_105_1_False_resize: signed(25 downto 0);
  signal c_123_105_1_False_shift: signed(25 downto 0);
  signal c_123_84_0_False_resize: signed(25 downto 0);
  signal c_123_84_0_False_shift: signed(25 downto 0);
  signal c_123_sel: std_logic_vector(1 downto 0);
  signal c_124: signed(25 downto 0);
  signal c_124_resize: signed(25 downto 0);
  signal c_125: signed(24 downto 0);
  signal c_125_51_0_False_resize: signed(24 downto 0);
  signal c_125_51_0_False_shift: signed(24 downto 0);
  signal c_125_108_1_False_resize: signed(24 downto 0);
  signal c_125_108_1_False_shift: signed(24 downto 0);
  signal c_125_78_0_False_resize: signed(24 downto 0);
  signal c_125_78_0_False_shift: signed(24 downto 0);
  signal c_125_108_0_False_resize: signed(24 downto 0);
  signal c_125_108_0_False_shift: signed(24 downto 0);
  signal c_125_sel: std_logic_vector(1 downto 0);
  signal c_126: signed(24 downto 0);
  signal c_126_resize: signed(24 downto 0);
  signal c_127: signed(25 downto 0);
  signal c_127_99_1_False_resize: signed(25 downto 0);
  signal c_127_99_1_False_shift: signed(25 downto 0);
  signal c_127_90_0_False_resize: signed(25 downto 0);
  signal c_127_90_0_False_shift: signed(25 downto 0);
  signal c_127_87_0_False_resize: signed(25 downto 0);
  signal c_127_87_0_False_shift: signed(25 downto 0);
  signal c_127_93_0_False_resize: signed(25 downto 0);
  signal c_127_93_0_False_shift: signed(25 downto 0);
  signal c_127_sel: std_logic_vector(1 downto 0);
  signal c_128: signed(25 downto 0);
  signal c_128_resize: signed(25 downto 0);
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
      config_select_42 <= config_select;
      config_select_43 <= config_select;
      config_select_44 <= config_select;
      config_select_45 <= config_select;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 110
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_110);
    end if;
  end process;
  -- output node 1 with id 112
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_112);
    end if;
  end process;
  -- output node 2 with id 114
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_114);
    end if;
  end process;
  -- output node 3 with id 116
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_116);
    end if;
  end process;
  -- output node 4 with id 118
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_118);
    end if;
  end process;
  -- output node 5 with id 120
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_120);
    end if;
  end process;
  -- output node 6 with id 122
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_122);
    end if;
  end process;
  -- output node 7 with id 124
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_124);
    end if;
  end process;
  -- output node 8 with id 126
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_126);
    end if;
  end process;
  -- output node 9 with id 128
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_128);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [256], [4096], [512]]
  c_1_0_12_False_resize <= resize(c_0, 28);
  c_1_0_12_False_shift <= shift_left(c_1_0_12_False_resize, 12);
  c_1_0_8_False_resize <= resize(c_0, 28);
  c_1_0_8_False_shift <= shift_left(c_1_0_8_False_resize, 8);
  c_1_0_9_False_resize <= resize(c_0, 28);
  c_1_0_9_False_shift <= shift_left(c_1_0_9_False_resize, 9);
  c_1_0_0_False_resize <= resize(c_0, 28);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  with config_select_1 select c_1_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  with c_1_sel select c_1 <=
    c_1_0_12_False_shift when "00",
    c_1_0_8_False_shift when "01",
    c_1_0_9_False_shift when "10",
    c_1_0_0_False_shift when others;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [32], [4096], [128]]
  c_2_0_7_False_resize <= resize(c_0, 28);
  c_2_0_7_False_shift <= shift_left(c_2_0_7_False_resize, 7);
  c_2_0_5_False_resize <= resize(c_0, 28);
  c_2_0_5_False_shift <= shift_left(c_2_0_5_False_resize, 5);
  c_2_0_12_False_resize <= resize(c_0, 28);
  c_2_0_12_False_shift <= shift_left(c_2_0_12_False_resize, 12);
  c_2_0_0_False_resize <= resize(c_0, 28);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  with c_2_sel select c_2 <=
    c_2_0_7_False_shift when "00",
    c_2_0_5_False_shift when "01",
    c_2_0_12_False_shift when "10",
    c_2_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[2], [288], [8192], [384]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 28,
      w_o => 29,
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
  c_3 <= c_3_oshift(28 downto 0);
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[1], [32], [4096], [384]]
  c_4_3_0_False_resize <= c_3(27 downto 0);
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  c_4_0_5_False_resize <= resize(c_0, 28);
  c_4_0_5_False_shift <= shift_left(c_4_0_5_False_resize, 5);
  c_4_0_12_False_resize <= resize(c_0, 28);
  c_4_0_12_False_shift <= shift_left(c_4_0_12_False_resize, 12);
  c_4_0_0_False_resize <= resize(c_0, 28);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  with config_select_3 select c_4_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  with c_4_sel select c_4 <=
    c_4_3_0_False_shift when "00",
    c_4_0_5_False_shift when "01",
    c_4_0_12_False_shift when "10",
    c_4_0_0_False_shift when others;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[1], [4], [2048], [32]]
  c_5_0_5_False_resize <= resize(c_0, 27);
  c_5_0_5_False_shift <= shift_left(c_5_0_5_False_resize, 5);
  c_5_0_11_False_resize <= resize(c_0, 27);
  c_5_0_11_False_shift <= shift_left(c_5_0_11_False_resize, 11);
  c_5_0_2_False_resize <= resize(c_0, 27);
  c_5_0_2_False_shift <= shift_left(c_5_0_2_False_resize, 2);
  c_5_0_0_False_resize <= resize(c_0, 27);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  with config_select_1 select c_5_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  with c_5_sel select c_5 <=
    c_5_0_5_False_shift when "00",
    c_5_0_11_False_shift when "01",
    c_5_0_2_False_shift when "10",
    c_5_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 6 and associated fundamentals [[0], [28], [6144], [352]]
  with config_select_4 select c_6_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 27,
      w_o => 29,
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
  c_6 <= c_6_oshift(28 downto 0);
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[2], [8], [256], [1]]
  c_7_0_8_False_resize <= resize(c_0, 24);
  c_7_0_8_False_shift <= shift_left(c_7_0_8_False_resize, 8);
  c_7_0_1_False_resize <= resize(c_0, 24);
  c_7_0_1_False_shift <= shift_left(c_7_0_1_False_resize, 1);
  c_7_0_0_False_resize <= resize(c_0, 24);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  c_7_0_3_False_resize <= resize(c_0, 24);
  c_7_0_3_False_shift <= shift_left(c_7_0_3_False_resize, 3);
  with config_select_1 select c_7_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  with c_7_sel select c_7 <=
    c_7_0_8_False_shift when "00",
    c_7_0_1_False_shift when "01",
    c_7_0_0_False_shift when "10",
    c_7_0_3_False_shift when others;
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[64], [1], [256], [32]]
  c_8_0_0_False_resize <= resize(c_0, 24);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  c_8_0_5_False_resize <= resize(c_0, 24);
  c_8_0_5_False_shift <= shift_left(c_8_0_5_False_resize, 5);
  c_8_3_5_False_resize <= c_3(23 downto 0);
  c_8_3_5_False_shift <= shift_left(c_8_3_5_False_resize, 5);
  c_8_0_8_False_resize <= resize(c_0, 24);
  c_8_0_8_False_shift <= shift_left(c_8_0_8_False_resize, 8);
  with config_select_3 select c_8_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "11" when others;
  with c_8_sel select c_8 <=
    c_8_0_0_False_shift when "00",
    c_8_0_5_False_shift when "01",
    c_8_3_5_False_shift when "10",
    c_8_0_8_False_shift when others;
  -- node of type 'add' in stage 4 with id 9 and associated fundamentals [[66], [9], [512], [33]]
  inst_adder_node_9: entity work.adder_node
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
      sub => False
    )
    port map (
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(24 downto 0);
  -- node of type 'mux' in stage 5 with id 10 and associated fundamentals [[512], [448], [8192], [352]]
  c_10_6_4_False_resize <= c_6;
  c_10_6_4_False_shift <= shift_left(c_10_6_4_False_resize, 4);
  c_10_3_8_False_resize <= c_3;
  c_10_3_8_False_shift <= shift_left(c_10_3_8_False_resize, 8);
  c_10_3_0_False_resize <= c_3;
  c_10_3_0_False_shift <= shift_left(c_10_3_0_False_resize, 0);
  c_10_6_0_False_resize <= c_6;
  c_10_6_0_False_shift <= shift_left(c_10_6_0_False_resize, 0);
  with config_select_5 select c_10_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  with c_10_sel select c_10 <=
    c_10_6_4_False_shift when "00",
    c_10_3_8_False_shift when "01",
    c_10_3_0_False_shift when "10",
    c_10_6_0_False_shift when others;
  -- node of type 'mux' in stage 5 with id 11 and associated fundamentals [[16], [9], [2048], [66]]
  c_11_9_1_False_resize <= resize(c_9, 27);
  c_11_9_1_False_shift <= shift_left(c_11_9_1_False_resize, 1);
  c_11_9_0_False_resize <= resize(c_9, 27);
  c_11_9_0_False_shift <= shift_left(c_11_9_0_False_resize, 0);
  c_11_9_2_False_resize <= resize(c_9, 27);
  c_11_9_2_False_shift <= shift_left(c_11_9_2_False_resize, 2);
  c_11_0_4_False_resize <= resize(c_0, 27);
  c_11_0_4_False_shift <= shift_left(c_11_0_4_False_resize, 4);
  with config_select_5 select c_11_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  with c_11_sel select c_11 <=
    c_11_9_1_False_shift when "00",
    c_11_9_0_False_shift when "01",
    c_11_9_2_False_shift when "10",
    c_11_0_4_False_shift when others;
  -- node of type 'sub' in stage 6 with id 12 and associated fundamentals [[448], [412], [0], [88]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 27,
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
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(24 downto 0);
  -- node of type 'mux' in stage 5 with id 13 and associated fundamentals [[1], [2], [2048], [64]]
  c_13_0_1_False_resize <= resize(c_0, 27);
  c_13_0_1_False_shift <= shift_left(c_13_0_1_False_resize, 1);
  c_13_9_2_False_resize <= resize(c_9, 27);
  c_13_9_2_False_shift <= shift_left(c_13_9_2_False_resize, 2);
  c_13_0_0_False_resize <= resize(c_0, 27);
  c_13_0_0_False_shift <= shift_left(c_13_0_0_False_resize, 0);
  c_13_0_6_False_resize <= resize(c_0, 27);
  c_13_0_6_False_shift <= shift_left(c_13_0_6_False_resize, 6);
  with config_select_5 select c_13_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  with c_13_sel select c_13 <=
    c_13_0_1_False_shift when "00",
    c_13_9_2_False_shift when "01",
    c_13_0_0_False_shift when "10",
    c_13_0_6_False_shift when others;
  -- node of type 'mux' in stage 7 with id 14 and associated fundamentals [[896], [412], [4096], [1]]
  c_14_12_1_False_resize <= resize(c_12, 28);
  c_14_12_1_False_shift <= shift_left(c_14_12_1_False_resize, 1);
  c_14_0_12_False_resize <= resize(c_0, 28);
  c_14_0_12_False_shift <= shift_left(c_14_0_12_False_resize, 12);
  c_14_0_0_False_resize <= resize(c_0, 28);
  c_14_0_0_False_shift <= shift_left(c_14_0_0_False_resize, 0);
  c_14_12_0_False_resize <= resize(c_12, 28);
  c_14_12_0_False_shift <= shift_left(c_14_12_0_False_resize, 0);
  with config_select_7 select c_14_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "11" when others;
  with c_14_sel select c_14 <=
    c_14_12_1_False_shift when "00",
    c_14_0_12_False_shift when "01",
    c_14_0_0_False_shift when "10",
    c_14_12_0_False_shift when others;
  -- node of type 'add' in stage 8 with id 15 and associated fundamentals [[898], [416], [8192], [129]]
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 28,
      w_o => 29,
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
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(28 downto 0);
  -- node of type 'mux' in stage 7 with id 16 and associated fundamentals [[128], [1648], [1], [2048]]
  c_16_0_7_False_resize <= resize(c_0, 27);
  c_16_0_7_False_shift <= shift_left(c_16_0_7_False_resize, 7);
  c_16_12_2_False_resize <= resize(c_12, 27);
  c_16_12_2_False_shift <= shift_left(c_16_12_2_False_resize, 2);
  c_16_0_0_False_resize <= resize(c_0, 27);
  c_16_0_0_False_shift <= shift_left(c_16_0_0_False_resize, 0);
  c_16_0_11_False_resize <= resize(c_0, 27);
  c_16_0_11_False_shift <= shift_left(c_16_0_11_False_resize, 11);
  with config_select_7 select c_16_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "11" when others;
  with c_16_sel select c_16 <=
    c_16_0_7_False_shift when "00",
    c_16_12_2_False_shift when "01",
    c_16_0_0_False_shift when "10",
    c_16_0_11_False_shift when others;
  -- node of type 'mux' in stage 5 with id 17 and associated fundamentals [[16], [9], [1], [264]]
  c_17_0_0_False_resize <= resize(c_0, 25);
  c_17_0_0_False_shift <= shift_left(c_17_0_0_False_resize, 0);
  c_17_9_0_False_resize <= c_9;
  c_17_9_0_False_shift <= shift_left(c_17_9_0_False_resize, 0);
  c_17_9_3_False_resize <= c_9;
  c_17_9_3_False_shift <= shift_left(c_17_9_3_False_resize, 3);
  c_17_0_4_False_resize <= resize(c_0, 25);
  c_17_0_4_False_shift <= shift_left(c_17_0_4_False_resize, 4);
  with config_select_5 select c_17_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  with c_17_sel select c_17 <=
    c_17_0_0_False_shift when "00",
    c_17_9_0_False_shift when "01",
    c_17_9_3_False_shift when "10",
    c_17_0_4_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 18 and associated fundamentals [[640], [1360], [33], [10496]]
  with config_select_8 select c_18_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 25,
      w_o => 30,
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
      sub_i => c_18_sub_sel,
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  c_18 <= c_18_oshift(29 downto 0);
  -- node of type 'mux' in stage 5 with id 19 and associated fundamentals [[0], [1], [16], [66]]
  c_19_0_0_False_resize <= resize(c_0, 23);
  c_19_0_0_False_shift <= shift_left(c_19_0_0_False_resize, 0);
  c_19_0_4_False_resize <= resize(c_0, 23);
  c_19_0_4_False_shift <= shift_left(c_19_0_4_False_resize, 4);
  c_19_6_0_False_resize <= c_6(22 downto 0);
  c_19_6_0_False_shift <= shift_left(c_19_6_0_False_resize, 0);
  c_19_9_1_False_resize <= c_9(22 downto 0);
  c_19_9_1_False_shift <= shift_left(c_19_9_1_False_resize, 1);
  with config_select_5 select c_19_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  with c_19_sel select c_19 <=
    c_19_0_0_False_shift when "00",
    c_19_0_4_False_shift when "01",
    c_19_6_0_False_shift when "10",
    c_19_9_1_False_shift when others;
  -- node of type 'mux' in stage 9 with id 20 and associated fundamentals [[0], [10880], [33], [8]]
  c_20_18_0_False_resize <= c_18;
  c_20_18_0_False_shift <= shift_left(c_20_18_0_False_resize, 0);
  c_20_0_3_False_resize <= resize(c_0, 30);
  c_20_0_3_False_shift <= shift_left(c_20_0_3_False_resize, 3);
  c_20_6_0_False_resize <= resize(c_6, 30);
  c_20_6_0_False_shift <= shift_left(c_20_6_0_False_resize, 0);
  c_20_18_3_False_resize <= c_18;
  c_20_18_3_False_shift <= shift_left(c_20_18_3_False_resize, 3);
  with config_select_9 select c_20_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "11" when others;
  with c_20_sel select c_20 <=
    c_20_18_0_False_shift when "00",
    c_20_0_3_False_shift when "01",
    c_20_6_0_False_shift when "10",
    c_20_18_3_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 21 and associated fundamentals [[0], [-10879], [49], [74]]
  with config_select_10 select c_21_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 30,
      w_o => 30,
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
  c_21 <= c_21_oshift(29 downto 0);
  -- node of type 'mux' in stage 11 with id 22 and associated fundamentals [[898], [-10879], [264], [74]]
  c_22_21_0_False_resize <= c_21;
  c_22_21_0_False_shift <= shift_left(c_22_21_0_False_resize, 0);
  c_22_18_3_False_resize <= c_18;
  c_22_18_3_False_shift <= shift_left(c_22_18_3_False_resize, 3);
  c_22_15_0_False_resize <= resize(c_15, 30);
  c_22_15_0_False_shift <= shift_left(c_22_15_0_False_resize, 0);
  with config_select_11 select c_22_sel <= 
    "00" when "11",
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_22_sel select c_22 <=
    c_22_21_0_False_shift when "00",
    c_22_18_3_False_shift when "01",
    c_22_15_0_False_shift when others;
  -- node of type 'mux' in stage 9 with id 23 and associated fundamentals [[132], [2720], [1], [16]]
  c_23_18_1_False_resize <= c_18(27 downto 0);
  c_23_18_1_False_shift <= shift_left(c_23_18_1_False_resize, 1);
  c_23_0_0_False_resize <= resize(c_0, 28);
  c_23_0_0_False_shift <= shift_left(c_23_0_0_False_resize, 0);
  c_23_9_1_False_resize <= resize(c_9, 28);
  c_23_9_1_False_shift <= shift_left(c_23_9_1_False_resize, 1);
  c_23_0_4_False_resize <= resize(c_0, 28);
  c_23_0_4_False_shift <= shift_left(c_23_0_4_False_resize, 4);
  with config_select_9 select c_23_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  with c_23_sel select c_23 <=
    c_23_18_1_False_shift when "00",
    c_23_0_0_False_shift when "01",
    c_23_9_1_False_shift when "10",
    c_23_0_4_False_shift when others;
  -- node of type 'add_sub' in stage 12 with id 24 and associated fundamentals [[370], [1], [268], [10]]
  with config_select_12 select c_24_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 28,
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
      sub_i => c_24_sub_sel,
      x_i => c_22,
      y_i => c_23,
      z_o => c_24_oshift
    );
  c_24 <= c_24_oshift(24 downto 0);
  -- node of type 'mux' in stage 9 with id 25 and associated fundamentals [[8], [2720], [0], [1]]
  c_25_18_1_False_resize <= c_18(27 downto 0);
  c_25_18_1_False_shift <= shift_left(c_25_18_1_False_resize, 1);
  c_25_12_0_False_resize <= resize(c_12, 28);
  c_25_12_0_False_shift <= shift_left(c_25_12_0_False_resize, 0);
  c_25_0_0_False_resize <= resize(c_0, 28);
  c_25_0_0_False_shift <= shift_left(c_25_0_0_False_resize, 0);
  c_25_3_2_False_resize <= c_3(27 downto 0);
  c_25_3_2_False_shift <= shift_left(c_25_3_2_False_resize, 2);
  with config_select_9 select c_25_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "11" when others;
  with c_25_sel select c_25 <=
    c_25_18_1_False_shift when "00",
    c_25_12_0_False_shift when "01",
    c_25_0_0_False_shift when "10",
    c_25_3_2_False_shift when others;
  -- node of type 'mux' in stage 5 with id 26 and associated fundamentals [[1056], [56], [128], [1]]
  c_26_9_4_False_resize <= resize(c_9, 27);
  c_26_9_4_False_shift <= shift_left(c_26_9_4_False_resize, 4);
  c_26_0_0_False_resize <= resize(c_0, 27);
  c_26_0_0_False_shift <= shift_left(c_26_0_0_False_resize, 0);
  c_26_0_7_False_resize <= resize(c_0, 27);
  c_26_0_7_False_shift <= shift_left(c_26_0_7_False_resize, 7);
  c_26_6_1_False_resize <= c_6(26 downto 0);
  c_26_6_1_False_shift <= shift_left(c_26_6_1_False_resize, 1);
  with config_select_5 select c_26_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "10",
    "11" when others;
  with c_26_sel select c_26 <=
    c_26_9_4_False_shift when "00",
    c_26_0_0_False_shift when "01",
    c_26_0_7_False_shift when "10",
    c_26_6_1_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 27 and associated fundamentals [[-1048], [2776], [128], [2]]
  with config_select_10 select c_27_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 27,
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
      sub_i => c_27_sub_sel,
      x_i => c_25,
      y_i => c_26,
      z_o => c_27_oshift
    );
  c_27 <= c_27_oshift(27 downto 0);
  -- node of type 'mux' in stage 13 with id 28 and associated fundamentals [[-1048], [28], [268], [258]]
  c_28_27_0_False_resize <= c_27(26 downto 0);
  c_28_27_0_False_shift <= shift_left(c_28_27_0_False_resize, 0);
  c_28_15_1_False_resize <= c_15(26 downto 0);
  c_28_15_1_False_shift <= shift_left(c_28_15_1_False_resize, 1);
  c_28_6_0_False_resize <= c_6(26 downto 0);
  c_28_6_0_False_shift <= shift_left(c_28_6_0_False_resize, 0);
  c_28_24_0_False_resize <= resize(c_24, 27);
  c_28_24_0_False_shift <= shift_left(c_28_24_0_False_resize, 0);
  with config_select_13 select c_28_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "11" when others;
  with c_28_sel select c_28 <=
    c_28_27_0_False_shift when "00",
    c_28_15_1_False_shift when "01",
    c_28_6_0_False_shift when "10",
    c_28_24_0_False_shift when others;
  -- node of type 'mux' in stage 13 with id 29 and associated fundamentals [[256], [416], [536], [129]]
  c_29_15_0_False_resize <= c_15(25 downto 0);
  c_29_15_0_False_shift <= shift_left(c_29_15_0_False_resize, 0);
  c_29_0_8_False_resize <= resize(c_0, 26);
  c_29_0_8_False_shift <= shift_left(c_29_0_8_False_resize, 8);
  c_29_24_1_False_resize <= resize(c_24, 26);
  c_29_24_1_False_shift <= shift_left(c_29_24_1_False_resize, 1);
  with config_select_13 select c_29_sel <= 
    "00" when "11",
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_29_sel select c_29 <=
    c_29_15_0_False_shift when "00",
    c_29_0_8_False_shift when "01",
    c_29_24_1_False_shift when others;
  -- node of type 'add_sub' in stage 14 with id 30 and associated fundamentals [[-1840], [-360], [0], [645]]
  with config_select_14 select c_30_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 26,
      w_o => 27,
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
      sub_i => c_30_sub_sel,
      x_i => c_28,
      y_i => c_29,
      z_o => c_30_oshift
    );
  c_30 <= c_30_oshift(26 downto 0);
  -- node of type 'mux' in stage 15 with id 31 and associated fundamentals [[64], [56], [512], [645]]
  c_31_27_2_False_resize <= c_27(25 downto 0);
  c_31_27_2_False_shift <= shift_left(c_31_27_2_False_resize, 2);
  c_31_3_5_False_resize <= c_3(25 downto 0);
  c_31_3_5_False_shift <= shift_left(c_31_3_5_False_resize, 5);
  c_31_6_1_False_resize <= c_6(25 downto 0);
  c_31_6_1_False_shift <= shift_left(c_31_6_1_False_resize, 1);
  c_31_30_0_False_resize <= c_30(25 downto 0);
  c_31_30_0_False_shift <= shift_left(c_31_30_0_False_resize, 0);
  with config_select_15 select c_31_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  with c_31_sel select c_31 <=
    c_31_27_2_False_shift when "00",
    c_31_3_5_False_shift when "01",
    c_31_6_1_False_shift when "10",
    c_31_30_0_False_shift when others;
  -- node of type 'mux' in stage 15 with id 32 and associated fundamentals [[1], [-720], [256], [352]]
  c_32_0_8_False_resize <= resize(c_0, 26);
  c_32_0_8_False_shift <= shift_left(c_32_0_8_False_resize, 8);
  c_32_30_1_False_resize <= c_30(25 downto 0);
  c_32_30_1_False_shift <= shift_left(c_32_30_1_False_resize, 1);
  c_32_0_0_False_resize <= resize(c_0, 26);
  c_32_0_0_False_shift <= shift_left(c_32_0_0_False_resize, 0);
  c_32_6_0_False_resize <= c_6(25 downto 0);
  c_32_6_0_False_shift <= shift_left(c_32_6_0_False_resize, 0);
  with config_select_15 select c_32_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  with c_32_sel select c_32 <=
    c_32_0_8_False_shift when "00",
    c_32_30_1_False_shift when "01",
    c_32_0_0_False_shift when "10",
    c_32_6_0_False_shift when others;
  -- node of type 'add_sub' in stage 16 with id 33 and associated fundamentals [[63], [776], [768], [293]]
  with config_select_16 select c_33_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
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
  -- node of type 'mux' in stage 17 with id 34 and associated fundamentals [[2], [776], [1024], [2]]
  c_34_0_1_False_resize <= resize(c_0, 26);
  c_34_0_1_False_shift <= shift_left(c_34_0_1_False_resize, 1);
  c_34_0_10_False_resize <= resize(c_0, 26);
  c_34_0_10_False_shift <= shift_left(c_34_0_10_False_resize, 10);
  c_34_33_0_False_resize <= c_33;
  c_34_33_0_False_shift <= shift_left(c_34_33_0_False_resize, 0);
  with config_select_17 select c_34_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "10",
    "10" when others;
  with c_34_sel select c_34 <=
    c_34_0_1_False_shift when "00",
    c_34_0_10_False_shift when "01",
    c_34_33_0_False_shift when others;
  -- node of type 'mux' in stage 17 with id 35 and associated fundamentals [[1], [2776], [8448], [293]]
  c_35_33_0_False_resize <= resize(c_33, 30);
  c_35_33_0_False_shift <= shift_left(c_35_33_0_False_resize, 0);
  c_35_27_0_False_resize <= resize(c_27, 30);
  c_35_27_0_False_shift <= shift_left(c_35_27_0_False_resize, 0);
  c_35_0_0_False_resize <= resize(c_0, 30);
  c_35_0_0_False_shift <= shift_left(c_35_0_0_False_resize, 0);
  c_35_18_8_False_resize <= c_18;
  c_35_18_8_False_shift <= shift_left(c_35_18_8_False_resize, 8);
  with config_select_17 select c_35_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  with c_35_sel select c_35 <=
    c_35_33_0_False_shift when "00",
    c_35_27_0_False_shift when "01",
    c_35_0_0_False_shift when "10",
    c_35_18_8_False_shift when others;
  -- node of type 'add_sub' in stage 18 with id 36 and associated fundamentals [[3], [-2000], [9472], [295]]
  with config_select_18 select c_36_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_36: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 30,
      w_o => 30,
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
  c_36 <= c_36_oshift(29 downto 0);
  -- node of type 'mux' in stage 9 with id 37 and associated fundamentals [[66], [416], [512], [352]]
  c_37_9_0_False_resize <= c_9;
  c_37_9_0_False_shift <= shift_left(c_37_9_0_False_resize, 0);
  c_37_12_2_False_resize <= c_12;
  c_37_12_2_False_shift <= shift_left(c_37_12_2_False_resize, 2);
  c_37_15_0_False_resize <= c_15(24 downto 0);
  c_37_15_0_False_shift <= shift_left(c_37_15_0_False_resize, 0);
  with config_select_9 select c_37_sel <= 
    "00" when "00",
    "00" when "10",
    "01" when "11",
    "10" when others;
  with c_37_sel select c_37 <=
    c_37_9_0_False_shift when "00",
    c_37_12_2_False_shift when "01",
    c_37_15_0_False_shift when others;
  -- node of type 'mux' in stage 19 with id 38 and associated fundamentals [[48], [1152], [0], [264]]
  c_38_12_0_False_resize <= resize(c_12, 27);
  c_38_12_0_False_shift <= shift_left(c_38_12_0_False_resize, 0);
  c_38_9_3_False_resize <= resize(c_9, 27);
  c_38_9_3_False_shift <= shift_left(c_38_9_3_False_resize, 3);
  c_38_36_4_False_resize <= c_36(26 downto 0);
  c_38_36_4_False_shift <= shift_left(c_38_36_4_False_resize, 4);
  c_38_3_2_False_resize <= c_3(26 downto 0);
  c_38_3_2_False_shift <= shift_left(c_38_3_2_False_resize, 2);
  with config_select_19 select c_38_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "11" when others;
  with c_38_sel select c_38 <=
    c_38_12_0_False_shift when "00",
    c_38_9_3_False_shift when "01",
    c_38_36_4_False_shift when "10",
    c_38_3_2_False_shift when others;
  -- node of type 'add_sub' in stage 20 with id 39 and associated fundamentals [[114], [-736], [512], [616]]
  with config_select_20 select c_39_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_39: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_39_sub_sel,
      x_i => c_37,
      y_i => c_38,
      z_o => c_39_oshift
    );
  c_39 <= c_39_oshift(25 downto 0);
  -- node of type 'mux' in stage 5 with id 40 and associated fundamentals [[4096], [9], [4], [4]]
  c_40_0_2_False_resize <= resize(c_0, 28);
  c_40_0_2_False_shift <= shift_left(c_40_0_2_False_resize, 2);
  c_40_9_0_False_resize <= resize(c_9, 28);
  c_40_9_0_False_shift <= shift_left(c_40_9_0_False_resize, 0);
  c_40_0_12_False_resize <= resize(c_0, 28);
  c_40_0_12_False_shift <= shift_left(c_40_0_12_False_resize, 12);
  with config_select_5 select c_40_sel <= 
    "00" when "11",
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_40_sel select c_40 <=
    c_40_0_2_False_shift when "00",
    c_40_9_0_False_shift when "01",
    c_40_0_12_False_shift when others;
  -- node of type 'mux' in stage 19 with id 41 and associated fundamentals [[24], [16], [2048], [1]]
  c_41_0_4_False_resize <= resize(c_0, 27);
  c_41_0_4_False_shift <= shift_left(c_41_0_4_False_resize, 4);
  c_41_27_4_False_resize <= c_27(26 downto 0);
  c_41_27_4_False_shift <= shift_left(c_41_27_4_False_resize, 4);
  c_41_0_0_False_resize <= resize(c_0, 27);
  c_41_0_0_False_shift <= shift_left(c_41_0_0_False_resize, 0);
  c_41_36_3_False_resize <= c_36(26 downto 0);
  c_41_36_3_False_shift <= shift_left(c_41_36_3_False_resize, 3);
  with config_select_19 select c_41_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "11" when others;
  with c_41_sel select c_41 <=
    c_41_0_4_False_shift when "00",
    c_41_27_4_False_shift when "01",
    c_41_0_0_False_shift when "10",
    c_41_36_3_False_shift when others;
  -- node of type 'add_sub' in stage 20 with id 42 and associated fundamentals [[8216], [2], [2056], [7]]
  with config_select_20 select c_42_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_42: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 27,
      w_o => 30,
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
      sub_i => c_42_sub_sel,
      x_i => c_40,
      y_i => c_41,
      z_o => c_42_oshift
    );
  c_42 <= c_42_oshift(29 downto 0);
  -- node of type 'mux' in stage 21 with id 43 and associated fundamentals [[0], [16], [64], [1232]]
  c_43_24_4_False_resize <= resize(c_24, 27);
  c_43_24_4_False_shift <= shift_left(c_43_24_4_False_resize, 4);
  c_43_39_1_False_resize <= resize(c_39, 27);
  c_43_39_1_False_shift <= shift_left(c_43_39_1_False_resize, 1);
  c_43_6_0_False_resize <= c_6(26 downto 0);
  c_43_6_0_False_shift <= shift_left(c_43_6_0_False_resize, 0);
  c_43_0_6_False_resize <= resize(c_0, 27);
  c_43_0_6_False_shift <= shift_left(c_43_0_6_False_resize, 6);
  with config_select_21 select c_43_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "11" when others;
  with c_43_sel select c_43 <=
    c_43_24_4_False_shift when "00",
    c_43_39_1_False_shift when "01",
    c_43_6_0_False_shift when "10",
    c_43_0_6_False_shift when others;
  -- node of type 'mux' in stage 21 with id 44 and associated fundamentals [[32], [16], [256], [645]]
  c_44_27_1_False_resize <= c_27(25 downto 0);
  c_44_27_1_False_shift <= shift_left(c_44_27_1_False_resize, 1);
  c_44_0_5_False_resize <= resize(c_0, 26);
  c_44_0_5_False_shift <= shift_left(c_44_0_5_False_resize, 5);
  c_44_30_0_False_resize <= c_30(25 downto 0);
  c_44_30_0_False_shift <= shift_left(c_44_30_0_False_resize, 0);
  c_44_42_3_False_resize <= c_42(25 downto 0);
  c_44_42_3_False_shift <= shift_left(c_44_42_3_False_resize, 3);
  with config_select_21 select c_44_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  with c_44_sel select c_44 <=
    c_44_27_1_False_shift when "00",
    c_44_0_5_False_shift when "01",
    c_44_30_0_False_shift when "10",
    c_44_42_3_False_shift when others;
  -- node of type 'add_sub' in stage 22 with id 45 and associated fundamentals [[32], [32], [320], [587]]
  with config_select_22 select c_45_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_45: entity work.adder_node
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
      sub_i => c_45_sub_sel,
      x_i => c_43,
      y_i => c_44,
      z_o => c_45_oshift
    );
  c_45 <= c_45_oshift(25 downto 0);
  -- node of type 'mux' in stage 23 with id 46 and associated fundamentals [[2], [9], [196], [587]]
  c_46_45_0_False_resize <= c_45;
  c_46_45_0_False_shift <= shift_left(c_46_45_0_False_resize, 0);
  c_46_0_1_False_resize <= resize(c_0, 26);
  c_46_0_1_False_shift <= shift_left(c_46_0_1_False_resize, 1);
  c_46_9_0_False_resize <= resize(c_9, 26);
  c_46_9_0_False_shift <= shift_left(c_46_9_0_False_resize, 0);
  c_46_21_2_False_resize <= c_21(25 downto 0);
  c_46_21_2_False_shift <= shift_left(c_46_21_2_False_resize, 2);
  with config_select_23 select c_46_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  with c_46_sel select c_46 <=
    c_46_45_0_False_shift when "00",
    c_46_0_1_False_shift when "01",
    c_46_9_0_False_shift when "10",
    c_46_21_2_False_shift when others;
  -- node of type 'mux' in stage 23 with id 47 and associated fundamentals [[1536], [32], [536], [20]]
  c_47_45_0_False_resize <= resize(c_45, 27);
  c_47_45_0_False_shift <= shift_left(c_47_45_0_False_resize, 0);
  c_47_24_1_False_resize <= resize(c_24, 27);
  c_47_24_1_False_shift <= shift_left(c_47_24_1_False_resize, 1);
  c_47_36_9_False_resize <= c_36(26 downto 0);
  c_47_36_9_False_shift <= shift_left(c_47_36_9_False_resize, 9);
  with config_select_23 select c_47_sel <= 
    "00" when "01",
    "01" when "10",
    "01" when "11",
    "10" when others;
  with c_47_sel select c_47 <=
    c_47_45_0_False_shift when "00",
    c_47_24_1_False_shift when "01",
    c_47_36_9_False_shift when others;
  -- node of type 'add' in stage 24 with id 48 and associated fundamentals [[1538], [41], [732], [607]]
  inst_adder_node_48: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 27,
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
      x_i => c_46,
      y_i => c_47,
      z_o => c_48_oshift
    );
  c_48 <= c_48_oshift(26 downto 0);
  -- node of type 'mux' in stage 23 with id 49 and associated fundamentals [[2], [8], [640], [33]]
  c_49_0_1_False_resize <= resize(c_0, 26);
  c_49_0_1_False_shift <= shift_left(c_49_0_1_False_resize, 1);
  c_49_45_1_False_resize <= c_45;
  c_49_45_1_False_shift <= shift_left(c_49_45_1_False_resize, 1);
  c_49_9_0_False_resize <= resize(c_9, 26);
  c_49_9_0_False_shift <= shift_left(c_49_9_0_False_resize, 0);
  c_49_0_3_False_resize <= resize(c_0, 26);
  c_49_0_3_False_shift <= shift_left(c_49_0_3_False_resize, 3);
  with config_select_23 select c_49_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "11" when others;
  with c_49_sel select c_49 <=
    c_49_0_1_False_shift when "00",
    c_49_45_1_False_shift when "01",
    c_49_9_0_False_shift when "10",
    c_49_0_3_False_shift when others;
  -- node of type 'mux' in stage 23 with id 50 and associated fundamentals [[4096], [144], [49], [4]]
  c_50_0_2_False_resize <= resize(c_0, 28);
  c_50_0_2_False_shift <= shift_left(c_50_0_2_False_resize, 2);
  c_50_9_4_False_resize <= resize(c_9, 28);
  c_50_9_4_False_shift <= shift_left(c_50_9_4_False_resize, 4);
  c_50_45_7_False_resize <= resize(c_45, 28);
  c_50_45_7_False_shift <= shift_left(c_50_45_7_False_resize, 7);
  c_50_21_0_False_resize <= c_21(27 downto 0);
  c_50_21_0_False_shift <= shift_left(c_50_21_0_False_resize, 0);
  with config_select_23 select c_50_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  with c_50_sel select c_50 <=
    c_50_0_2_False_shift when "00",
    c_50_9_4_False_shift when "01",
    c_50_45_7_False_shift when "10",
    c_50_21_0_False_shift when others;
  -- node of type 'add_sub' in stage 24 with id 51 and associated fundamentals [[8194], [296], [542], [25]]
  with config_select_24 select c_51_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_51: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 28,
      w_o => 30,
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
      sub_i => c_51_sub_sel,
      x_i => c_49,
      y_i => c_50,
      z_o => c_51_oshift
    );
  c_51 <= c_51_oshift(29 downto 0);
  -- node of type 'mux' in stage 17 with id 52 and associated fundamentals [[1024], [6208], [0], [1]]
  c_52_3_9_False_resize <= c_3;
  c_52_3_9_False_shift <= shift_left(c_52_3_9_False_resize, 9);
  c_52_33_3_False_resize <= resize(c_33, 29);
  c_52_33_3_False_shift <= shift_left(c_52_33_3_False_resize, 3);
  c_52_0_0_False_resize <= resize(c_0, 29);
  c_52_0_0_False_shift <= shift_left(c_52_0_0_False_resize, 0);
  c_52_30_0_False_resize <= resize(c_30, 29);
  c_52_30_0_False_shift <= shift_left(c_52_30_0_False_resize, 0);
  with config_select_17 select c_52_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  with c_52_sel select c_52 <=
    c_52_3_9_False_shift when "00",
    c_52_33_3_False_shift when "01",
    c_52_0_0_False_shift when "10",
    c_52_30_0_False_shift when others;
  -- node of type 'mux' in stage 25 with id 53 and associated fundamentals [[128], [41], [64], [352]]
  c_53_48_0_False_resize <= c_48(24 downto 0);
  c_53_48_0_False_shift <= shift_left(c_53_48_0_False_resize, 0);
  c_53_0_7_False_resize <= resize(c_0, 25);
  c_53_0_7_False_shift <= shift_left(c_53_0_7_False_resize, 7);
  c_53_12_2_False_resize <= c_12;
  c_53_12_2_False_shift <= shift_left(c_53_12_2_False_resize, 2);
  c_53_0_6_False_resize <= resize(c_0, 25);
  c_53_0_6_False_shift <= shift_left(c_53_0_6_False_resize, 6);
  with config_select_25 select c_53_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  with c_53_sel select c_53 <=
    c_53_48_0_False_shift when "00",
    c_53_0_7_False_shift when "01",
    c_53_12_2_False_shift when "10",
    c_53_0_6_False_shift when others;
  -- node of type 'add_sub' in stage 26 with id 54 and associated fundamentals [[1152], [6167], [64], [353]]
  with config_select_26 select c_54_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_54: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 25,
      w_o => 29,
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
      sub_i => c_54_sub_sel,
      x_i => c_52,
      y_i => c_53,
      z_o => c_54_oshift
    );
  c_54 <= c_54_oshift(28 downto 0);
  -- node of type 'mux' in stage 25 with id 55 and associated fundamentals [[114], [-2000], [8], [12800]]
  c_55_0_3_False_resize <= resize(c_0, 30);
  c_55_0_3_False_shift <= shift_left(c_55_0_3_False_resize, 3);
  c_55_39_0_False_resize <= resize(c_39, 30);
  c_55_39_0_False_shift <= shift_left(c_55_39_0_False_resize, 0);
  c_55_36_0_False_resize <= c_36;
  c_55_36_0_False_shift <= shift_left(c_55_36_0_False_resize, 0);
  c_55_51_9_False_resize <= c_51;
  c_55_51_9_False_shift <= shift_left(c_55_51_9_False_resize, 9);
  with config_select_25 select c_55_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  with c_55_sel select c_55 <=
    c_55_0_3_False_shift when "00",
    c_55_39_0_False_shift when "01",
    c_55_36_0_False_shift when "10",
    c_55_51_9_False_shift when others;
  -- node of type 'mux' in stage 25 with id 56 and associated fundamentals [[16], [4736], [16], [1]]
  c_56_0_4_False_resize <= resize(c_0, 29);
  c_56_0_4_False_shift <= shift_left(c_56_0_4_False_resize, 4);
  c_56_0_0_False_resize <= resize(c_0, 29);
  c_56_0_0_False_shift <= shift_left(c_56_0_0_False_resize, 0);
  c_56_51_4_False_resize <= c_51(28 downto 0);
  c_56_51_4_False_shift <= shift_left(c_56_51_4_False_resize, 4);
  c_56_3_3_False_resize <= c_3;
  c_56_3_3_False_shift <= shift_left(c_56_3_3_False_resize, 3);
  with config_select_25 select c_56_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  with c_56_sel select c_56 <=
    c_56_0_4_False_shift when "00",
    c_56_0_0_False_shift when "01",
    c_56_51_4_False_shift when "10",
    c_56_3_3_False_shift when others;
  -- node of type 'add' in stage 26 with id 57 and associated fundamentals [[130], [2736], [24], [12801]]
  inst_adder_node_57: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 29,
      w_o => 30,
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
      x_i => c_55,
      y_i => c_56,
      z_o => c_57_oshift
    );
  c_57 <= c_57_oshift(29 downto 0);
  -- node of type 'mux' in stage 27 with id 58 and associated fundamentals [[8194], [6167], [9472], [607]]
  c_58_51_0_False_resize <= c_51;
  c_58_51_0_False_shift <= shift_left(c_58_51_0_False_resize, 0);
  c_58_48_0_False_resize <= resize(c_48, 30);
  c_58_48_0_False_shift <= shift_left(c_58_48_0_False_resize, 0);
  c_58_54_0_False_resize <= resize(c_54, 30);
  c_58_54_0_False_shift <= shift_left(c_58_54_0_False_resize, 0);
  c_58_36_0_False_resize <= c_36;
  c_58_36_0_False_shift <= shift_left(c_58_36_0_False_resize, 0);
  with config_select_27 select c_58_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "11" when others;
  with c_58_sel select c_58 <=
    c_58_51_0_False_shift when "00",
    c_58_48_0_False_shift when "01",
    c_58_54_0_False_shift when "10",
    c_58_36_0_False_shift when others;
  -- node of type 'mux' in stage 27 with id 59 and associated fundamentals [[1538], [9], [0], [12801]]
  c_59_9_0_False_resize <= resize(c_9, 30);
  c_59_9_0_False_shift <= shift_left(c_59_9_0_False_resize, 0);
  c_59_12_0_False_resize <= resize(c_12, 30);
  c_59_12_0_False_shift <= shift_left(c_59_12_0_False_resize, 0);
  c_59_57_0_False_resize <= c_57;
  c_59_57_0_False_shift <= shift_left(c_59_57_0_False_resize, 0);
  c_59_48_0_False_resize <= resize(c_48, 30);
  c_59_48_0_False_shift <= shift_left(c_59_48_0_False_resize, 0);
  with config_select_27 select c_59_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "11" when others;
  with c_59_sel select c_59 <=
    c_59_9_0_False_shift when "00",
    c_59_12_0_False_shift when "01",
    c_59_57_0_False_shift when "10",
    c_59_48_0_False_shift when others;
  -- node of type 'add_sub' in stage 28 with id 60 and associated fundamentals [[208], [193], [296], [419]]
  with config_select_28 select c_60_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_60: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 30,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 5,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_60_sub_sel,
      x_i => c_58,
      y_i => c_59,
      z_o => c_60_oshift
    );
  c_60 <= c_60_oshift(24 downto 0);
  -- node of type 'mux' in stage 29 with id 61 and associated fundamentals [[2560], [1], [6144], [3352]]
  c_61_0_0_False_resize <= resize(c_0, 29);
  c_61_0_0_False_shift <= shift_left(c_61_0_0_False_resize, 0);
  c_61_60_3_False_resize <= resize(c_60, 29);
  c_61_60_3_False_shift <= shift_left(c_61_60_3_False_resize, 3);
  c_61_6_0_False_resize <= c_6;
  c_61_6_0_False_shift <= shift_left(c_61_6_0_False_resize, 0);
  c_61_18_2_False_resize <= c_18(28 downto 0);
  c_61_18_2_False_shift <= shift_left(c_61_18_2_False_resize, 2);
  with config_select_29 select c_61_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "11" when others;
  with c_61_sel select c_61 <=
    c_61_0_0_False_shift when "00",
    c_61_60_3_False_shift when "01",
    c_61_6_0_False_shift when "10",
    c_61_18_2_False_shift when others;
  -- node of type 'mux' in stage 21 with id 62 and associated fundamentals [[132], [-736], [8], [8]]
  c_62_0_3_False_resize <= resize(c_0, 26);
  c_62_0_3_False_shift <= shift_left(c_62_0_3_False_resize, 3);
  c_62_9_1_False_resize <= resize(c_9, 26);
  c_62_9_1_False_shift <= shift_left(c_62_9_1_False_resize, 1);
  c_62_39_0_False_resize <= c_39;
  c_62_39_0_False_shift <= shift_left(c_62_39_0_False_resize, 0);
  with config_select_21 select c_62_sel <= 
    "00" when "10",
    "00" when "11",
    "01" when "00",
    "10" when others;
  with c_62_sel select c_62 <=
    c_62_0_3_False_shift when "00",
    c_62_9_1_False_shift when "01",
    c_62_39_0_False_shift when others;
  -- node of type 'add_sub' in stage 30 with id 63 and associated fundamentals [[2692], [737], [6152], [3360]]
  with config_select_30 select c_63_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_63: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 26,
      w_o => 29,
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
      sub_i => c_63_sub_sel,
      x_i => c_61,
      y_i => c_62,
      z_o => c_63_oshift
    );
  c_63 <= c_63_oshift(28 downto 0);
  -- node of type 'mux' in stage 21 with id 64 and associated fundamentals [[1], [1], [8224], [1]]
  c_64_0_0_False_resize <= resize(c_0, 30);
  c_64_0_0_False_shift <= shift_left(c_64_0_0_False_resize, 0);
  c_64_42_2_False_resize <= c_42;
  c_64_42_2_False_shift <= shift_left(c_64_42_2_False_resize, 2);
  with config_select_21 select c_64_sel <= 
    "0" when "01",
    "0" when "11",
    "0" when "00",
    "1" when others;
  with c_64_sel select c_64 <=
    c_64_0_0_False_shift when "0",
    c_64_42_2_False_shift when others;
  -- node of type 'mux' in stage 21 with id 65 and associated fundamentals [[1056], [2], [6144], [10320]]
  c_65_42_0_False_resize <= c_42;
  c_65_42_0_False_shift <= shift_left(c_65_42_0_False_resize, 0);
  c_65_9_4_False_resize <= resize(c_9, 30);
  c_65_9_4_False_shift <= shift_left(c_65_9_4_False_resize, 4);
  c_65_30_4_False_resize <= resize(c_30, 30);
  c_65_30_4_False_shift <= shift_left(c_65_30_4_False_resize, 4);
  c_65_6_0_False_resize <= resize(c_6, 30);
  c_65_6_0_False_shift <= shift_left(c_65_6_0_False_resize, 0);
  with config_select_21 select c_65_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  with c_65_sel select c_65 <=
    c_65_42_0_False_shift when "00",
    c_65_9_4_False_shift when "01",
    c_65_30_4_False_shift when "10",
    c_65_6_0_False_shift when others;
  -- node of type 'add' in stage 22 with id 66 and associated fundamentals [[1057], [3], [14368], [10321]]
  inst_adder_node_66: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 30,
      w_o => 30,
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
      x_i => c_64,
      y_i => c_65,
      z_o => c_66_oshift
    );
  c_66 <= c_66_oshift(29 downto 0);
  -- node of type 'mux' in stage 25 with id 67 and associated fundamentals [[96], [82], [732], [640]]
  c_67_36_5_False_resize <= c_36(25 downto 0);
  c_67_36_5_False_shift <= shift_left(c_67_36_5_False_resize, 5);
  c_67_48_0_False_resize <= c_48(25 downto 0);
  c_67_48_0_False_shift <= shift_left(c_67_48_0_False_resize, 0);
  c_67_48_1_False_resize <= c_48(25 downto 0);
  c_67_48_1_False_shift <= shift_left(c_67_48_1_False_resize, 1);
  c_67_24_6_False_resize <= resize(c_24, 26);
  c_67_24_6_False_shift <= shift_left(c_67_24_6_False_resize, 6);
  with config_select_25 select c_67_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "11" when others;
  with c_67_sel select c_67 <=
    c_67_36_5_False_shift when "00",
    c_67_48_0_False_shift when "01",
    c_67_48_1_False_shift when "10",
    c_67_24_6_False_shift when others;
  -- node of type 'mux' in stage 27 with id 68 and associated fundamentals [[130], [296], [1], [384]]
  c_68_3_0_False_resize <= c_3(24 downto 0);
  c_68_3_0_False_shift <= shift_left(c_68_3_0_False_resize, 0);
  c_68_0_0_False_resize <= resize(c_0, 25);
  c_68_0_0_False_shift <= shift_left(c_68_0_0_False_resize, 0);
  c_68_57_0_False_resize <= c_57(24 downto 0);
  c_68_57_0_False_shift <= shift_left(c_68_57_0_False_resize, 0);
  c_68_51_0_False_resize <= c_51(24 downto 0);
  c_68_51_0_False_shift <= shift_left(c_68_51_0_False_resize, 0);
  with config_select_27 select c_68_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  with c_68_sel select c_68 <=
    c_68_3_0_False_shift when "00",
    c_68_0_0_False_shift when "01",
    c_68_57_0_False_shift when "10",
    c_68_51_0_False_shift when others;
  -- node of type 'add' in stage 28 with id 69 and associated fundamentals [[226], [378], [733], [1024]]
  inst_adder_node_69: entity work.adder_node
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
      x_i => c_67,
      y_i => c_68,
      z_o => c_69_oshift
    );
  c_69 <= c_69_oshift(25 downto 0);
  -- node of type 'mux' in stage 7 with id 70 and associated fundamentals [[3584], [1], [0], [88]]
  c_70_0_0_False_resize <= resize(c_0, 28);
  c_70_0_0_False_shift <= shift_left(c_70_0_0_False_resize, 0);
  c_70_12_3_False_resize <= resize(c_12, 28);
  c_70_12_3_False_shift <= shift_left(c_70_12_3_False_resize, 3);
  c_70_12_6_False_resize <= resize(c_12, 28);
  c_70_12_6_False_shift <= shift_left(c_70_12_6_False_resize, 6);
  c_70_12_0_False_resize <= resize(c_12, 28);
  c_70_12_0_False_shift <= shift_left(c_70_12_0_False_resize, 0);
  with config_select_7 select c_70_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  with c_70_sel select c_70 <=
    c_70_0_0_False_shift when "00",
    c_70_12_3_False_shift when "01",
    c_70_12_6_False_shift when "10",
    c_70_12_0_False_shift when others;
  -- node of type 'mux' in stage 29 with id 71 and associated fundamentals [[456], [1512], [1], [419]]
  c_71_0_0_False_resize <= resize(c_0, 27);
  c_71_0_0_False_shift <= shift_left(c_71_0_0_False_resize, 0);
  c_71_39_2_False_resize <= resize(c_39, 27);
  c_71_39_2_False_shift <= shift_left(c_71_39_2_False_resize, 2);
  c_71_69_2_False_resize <= resize(c_69, 27);
  c_71_69_2_False_shift <= shift_left(c_71_69_2_False_resize, 2);
  c_71_60_0_False_resize <= resize(c_60, 27);
  c_71_60_0_False_shift <= shift_left(c_71_60_0_False_resize, 0);
  with config_select_29 select c_71_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  with c_71_sel select c_71 <=
    c_71_0_0_False_shift when "00",
    c_71_39_2_False_shift when "01",
    c_71_69_2_False_shift when "10",
    c_71_60_0_False_shift when others;
  -- node of type 'add_sub' in stage 30 with id 72 and associated fundamentals [[6256], [3026], [2], [-662]]
  with config_select_30 select c_72_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_72: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 27,
      w_o => 29,
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
      sub_i => c_72_sub_sel,
      x_i => c_70,
      y_i => c_71,
      z_o => c_72_oshift
    );
  c_72 <= c_72_oshift(28 downto 0);
  -- node of type 'mux' in stage 29 with id 73 and associated fundamentals [[226], [32], [268], [352]]
  c_73_69_0_False_resize <= c_69(24 downto 0);
  c_73_69_0_False_shift <= shift_left(c_73_69_0_False_resize, 0);
  c_73_12_2_False_resize <= c_12;
  c_73_12_2_False_shift <= shift_left(c_73_12_2_False_resize, 2);
  c_73_24_0_False_resize <= c_24;
  c_73_24_0_False_shift <= shift_left(c_73_24_0_False_resize, 0);
  c_73_45_0_False_resize <= c_45(24 downto 0);
  c_73_45_0_False_shift <= shift_left(c_73_45_0_False_resize, 0);
  with config_select_29 select c_73_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "10",
    "11" when others;
  with c_73_sel select c_73 <=
    c_73_69_0_False_shift when "00",
    c_73_12_2_False_shift when "01",
    c_73_24_0_False_shift when "10",
    c_73_45_0_False_shift when others;
  -- node of type 'mux' in stage 17 with id 74 and associated fundamentals [[63], [896], [2], [88]]
  c_74_6_5_False_resize <= c_6(25 downto 0);
  c_74_6_5_False_shift <= shift_left(c_74_6_5_False_resize, 5);
  c_74_0_1_False_resize <= resize(c_0, 26);
  c_74_0_1_False_shift <= shift_left(c_74_0_1_False_resize, 1);
  c_74_12_0_False_resize <= resize(c_12, 26);
  c_74_12_0_False_shift <= shift_left(c_74_12_0_False_resize, 0);
  c_74_33_0_False_resize <= c_33;
  c_74_33_0_False_shift <= shift_left(c_74_33_0_False_resize, 0);
  with config_select_17 select c_74_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "11" when others;
  with c_74_sel select c_74 <=
    c_74_6_5_False_shift when "00",
    c_74_0_1_False_shift when "01",
    c_74_12_0_False_shift when "10",
    c_74_33_0_False_shift when others;
  -- node of type 'add_sub' in stage 30 with id 75 and associated fundamentals [[163], [928], [270], [264]]
  with config_select_30 select c_75_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_75: entity work.adder_node
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
      sub_i => c_75_sub_sel,
      x_i => c_73,
      y_i => c_74,
      z_o => c_75_oshift
    );
  c_75 <= c_75_oshift(25 downto 0);
  -- node of type 'mux' in stage 29 with id 76 and associated fundamentals [[520], [193], [14368], [10496]]
  c_76_60_0_False_resize <= resize(c_60, 30);
  c_76_60_0_False_shift <= shift_left(c_76_60_0_False_resize, 0);
  c_76_18_0_False_resize <= c_18;
  c_76_18_0_False_shift <= shift_left(c_76_18_0_False_resize, 0);
  c_76_66_0_False_resize <= c_66;
  c_76_66_0_False_shift <= shift_left(c_76_66_0_False_resize, 0);
  c_76_57_2_False_resize <= c_57;
  c_76_57_2_False_shift <= shift_left(c_76_57_2_False_resize, 2);
  with config_select_29 select c_76_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "11" when others;
  with c_76_sel select c_76 <=
    c_76_60_0_False_shift when "00",
    c_76_18_0_False_shift when "01",
    c_76_66_0_False_shift when "10",
    c_76_57_2_False_shift when others;
  -- node of type 'mux' in stage 31 with id 77 and associated fundamentals [[370], [128], [4], [4224]]
  c_77_72_1_False_resize <= c_72;
  c_77_72_1_False_shift <= shift_left(c_77_72_1_False_resize, 1);
  c_77_24_0_False_resize <= resize(c_24, 29);
  c_77_24_0_False_shift <= shift_left(c_77_24_0_False_resize, 0);
  c_77_0_7_False_resize <= resize(c_0, 29);
  c_77_0_7_False_shift <= shift_left(c_77_0_7_False_resize, 7);
  c_77_75_4_False_resize <= resize(c_75, 29);
  c_77_75_4_False_shift <= shift_left(c_77_75_4_False_resize, 4);
  with config_select_31 select c_77_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  with c_77_sel select c_77 <=
    c_77_72_1_False_shift when "00",
    c_77_24_0_False_shift when "01",
    c_77_0_7_False_shift when "10",
    c_77_75_4_False_shift when others;
  -- node of type 'add_sub' in stage 32 with id 78 and associated fundamentals [[150], [321], [14364], [14720]]
  with config_select_32 select c_78_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_78: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 29,
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
      sub_i => c_78_sub_sel,
      x_i => c_76,
      y_i => c_77,
      z_o => c_78_oshift
    );
  c_78 <= c_78_oshift(25 downto 0);
  -- node of type 'mux' in stage 31 with id 79 and associated fundamentals [[4], [82], [12304], [33]]
  c_79_63_1_False_resize <= resize(c_63, 30);
  c_79_63_1_False_shift <= shift_left(c_79_63_1_False_resize, 1);
  c_79_0_2_False_resize <= resize(c_0, 30);
  c_79_0_2_False_shift <= shift_left(c_79_0_2_False_resize, 2);
  c_79_9_0_False_resize <= resize(c_9, 30);
  c_79_9_0_False_shift <= shift_left(c_79_9_0_False_resize, 0);
  c_79_48_1_False_resize <= resize(c_48, 30);
  c_79_48_1_False_shift <= shift_left(c_79_48_1_False_resize, 1);
  with config_select_31 select c_79_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  with c_79_sel select c_79 <=
    c_79_63_1_False_shift when "00",
    c_79_0_2_False_shift when "01",
    c_79_9_0_False_shift when "10",
    c_79_48_1_False_shift when others;
  -- node of type 'mux' in stage 33 with id 80 and associated fundamentals [[16], [321], [1], [256]]
  c_80_0_0_False_resize <= resize(c_0, 25);
  c_80_0_0_False_shift <= shift_left(c_80_0_0_False_resize, 0);
  c_80_3_3_False_resize <= c_3(24 downto 0);
  c_80_3_3_False_shift <= shift_left(c_80_3_3_False_resize, 3);
  c_80_78_0_False_resize <= c_78(24 downto 0);
  c_80_78_0_False_shift <= shift_left(c_80_78_0_False_resize, 0);
  c_80_0_8_False_resize <= resize(c_0, 25);
  c_80_0_8_False_shift <= shift_left(c_80_0_8_False_resize, 8);
  with config_select_33 select c_80_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  with c_80_sel select c_80 <=
    c_80_0_0_False_shift when "00",
    c_80_3_3_False_shift when "01",
    c_80_78_0_False_shift when "10",
    c_80_0_8_False_shift when others;
  -- node of type 'add_sub' in stage 34 with id 81 and associated fundamentals [[20], [-239], [12303], [-223]]
  with config_select_34 select c_81_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_81: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 25,
      w_o => 30,
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
      sub_i => c_81_sub_sel,
      x_i => c_79,
      y_i => c_80,
      z_o => c_81_oshift
    );
  c_81 <= c_81_oshift(29 downto 0);
  -- node of type 'mux' in stage 31 with id 82 and associated fundamentals [[1057], [756], [1024], [100]]
  c_82_69_1_False_resize <= resize(c_69, 27);
  c_82_69_1_False_shift <= shift_left(c_82_69_1_False_resize, 1);
  c_82_66_0_False_resize <= c_66(26 downto 0);
  c_82_66_0_False_shift <= shift_left(c_82_66_0_False_resize, 0);
  c_82_72_9_False_resize <= c_72(26 downto 0);
  c_82_72_9_False_shift <= shift_left(c_82_72_9_False_resize, 9);
  c_82_51_2_False_resize <= c_51(26 downto 0);
  c_82_51_2_False_shift <= shift_left(c_82_51_2_False_resize, 2);
  with config_select_31 select c_82_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  with c_82_sel select c_82 <=
    c_82_69_1_False_shift when "00",
    c_82_66_0_False_shift when "01",
    c_82_72_9_False_shift when "10",
    c_82_51_2_False_shift when others;
  -- node of type 'mux' in stage 35 with id 83 and associated fundamentals [[114], [32], [536], [-223]]
  c_83_39_0_False_resize <= c_39;
  c_83_39_0_False_shift <= shift_left(c_83_39_0_False_resize, 0);
  c_83_81_0_False_resize <= c_81(25 downto 0);
  c_83_81_0_False_shift <= shift_left(c_83_81_0_False_resize, 0);
  c_83_24_1_False_resize <= resize(c_24, 26);
  c_83_24_1_False_shift <= shift_left(c_83_24_1_False_resize, 1);
  c_83_0_5_False_resize <= resize(c_0, 26);
  c_83_0_5_False_shift <= shift_left(c_83_0_5_False_resize, 5);
  with config_select_35 select c_83_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "10",
    "11" when others;
  with c_83_sel select c_83 <=
    c_83_39_0_False_shift when "00",
    c_83_81_0_False_shift when "01",
    c_83_24_1_False_shift when "10",
    c_83_0_5_False_shift when others;
  -- node of type 'sub' in stage 36 with id 84 and associated fundamentals [[943], [724], [488], [323]]
  inst_adder_node_84: entity work.adder_node
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
      x_i => c_82,
      y_i => c_83,
      z_o => c_84_oshift
    );
  c_84 <= c_84_oshift(25 downto 0);
  -- node of type 'mux' in stage 31 with id 85 and associated fundamentals [[6256], [288], [542], [419]]
  c_85_51_0_False_resize <= c_51(28 downto 0);
  c_85_51_0_False_shift <= shift_left(c_85_51_0_False_resize, 0);
  c_85_60_0_False_resize <= resize(c_60, 29);
  c_85_60_0_False_shift <= shift_left(c_85_60_0_False_resize, 0);
  c_85_3_0_False_resize <= c_3;
  c_85_3_0_False_shift <= shift_left(c_85_3_0_False_resize, 0);
  c_85_72_0_False_resize <= c_72;
  c_85_72_0_False_shift <= shift_left(c_85_72_0_False_resize, 0);
  with config_select_31 select c_85_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  with c_85_sel select c_85 <=
    c_85_51_0_False_shift when "00",
    c_85_60_0_False_shift when "01",
    c_85_3_0_False_shift when "10",
    c_85_72_0_False_shift when others;
  -- node of type 'mux' in stage 37 with id 86 and associated fundamentals [[8216], [724], [270], [353]]
  c_86_42_0_False_resize <= c_42;
  c_86_42_0_False_shift <= shift_left(c_86_42_0_False_resize, 0);
  c_86_84_0_False_resize <= resize(c_84, 30);
  c_86_84_0_False_shift <= shift_left(c_86_84_0_False_resize, 0);
  c_86_54_0_False_resize <= resize(c_54, 30);
  c_86_54_0_False_shift <= shift_left(c_86_54_0_False_resize, 0);
  c_86_75_0_False_resize <= resize(c_75, 30);
  c_86_75_0_False_shift <= shift_left(c_86_75_0_False_resize, 0);
  with config_select_37 select c_86_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  with c_86_sel select c_86 <=
    c_86_42_0_False_shift when "00",
    c_86_84_0_False_shift when "01",
    c_86_54_0_False_shift when "10",
    c_86_75_0_False_shift when others;
  -- node of type 'add_sub' in stage 38 with id 87 and associated fundamentals [[-980], [506], [136], [33]]
  with config_select_38 select c_87_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_87: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 30,
      w_o => 26,
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
      sub_i => c_87_sub_sel,
      x_i => c_85,
      y_i => c_86,
      z_o => c_87_oshift
    );
  c_87 <= c_87_oshift(25 downto 0);
  -- node of type 'mux' in stage 25 with id 88 and associated fundamentals [[8], [416], [8672], [25]]
  c_88_51_4_False_resize <= c_51;
  c_88_51_4_False_shift <= shift_left(c_88_51_4_False_resize, 4);
  c_88_51_0_False_resize <= c_51;
  c_88_51_0_False_shift <= shift_left(c_88_51_0_False_resize, 0);
  c_88_0_3_False_resize <= resize(c_0, 30);
  c_88_0_3_False_shift <= shift_left(c_88_0_3_False_resize, 3);
  c_88_15_0_False_resize <= resize(c_15, 30);
  c_88_15_0_False_shift <= shift_left(c_88_15_0_False_resize, 0);
  with config_select_25 select c_88_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "11" when others;
  with c_88_sel select c_88 <=
    c_88_51_4_False_shift when "00",
    c_88_51_0_False_shift when "01",
    c_88_0_3_False_shift when "10",
    c_88_15_0_False_shift when others;
  -- node of type 'mux' in stage 35 with id 89 and associated fundamentals [[20], [41], [4336], [512]]
  c_89_48_0_False_resize <= resize(c_48, 29);
  c_89_48_0_False_shift <= shift_left(c_89_48_0_False_resize, 0);
  c_89_51_3_False_resize <= c_51(28 downto 0);
  c_89_51_3_False_shift <= shift_left(c_89_51_3_False_resize, 3);
  c_89_0_9_False_resize <= resize(c_0, 29);
  c_89_0_9_False_shift <= shift_left(c_89_0_9_False_resize, 9);
  c_89_81_0_False_resize <= c_81(28 downto 0);
  c_89_81_0_False_shift <= shift_left(c_89_81_0_False_resize, 0);
  with config_select_35 select c_89_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "11" when others;
  with c_89_sel select c_89 <=
    c_89_48_0_False_shift when "00",
    c_89_51_3_False_shift when "01",
    c_89_0_9_False_shift when "10",
    c_89_81_0_False_shift when others;
  -- node of type 'add_sub' in stage 36 with id 90 and associated fundamentals [[28], [457], [13008], [-487]]
  with config_select_36 select c_90_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_90: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 29,
      w_o => 30,
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
      sub_i => c_90_sub_sel,
      x_i => c_88,
      y_i => c_89,
      z_o => c_90_oshift
    );
  c_90 <= c_90_oshift(29 downto 0);
  -- node of type 'mux' in stage 31 with id 91 and associated fundamentals [[512], [928], [1464], [353]]
  c_91_54_0_False_resize <= c_54(26 downto 0);
  c_91_54_0_False_shift <= shift_left(c_91_54_0_False_resize, 0);
  c_91_3_8_False_resize <= c_3(26 downto 0);
  c_91_3_8_False_shift <= shift_left(c_91_3_8_False_resize, 8);
  c_91_48_1_False_resize <= c_48;
  c_91_48_1_False_shift <= shift_left(c_91_48_1_False_resize, 1);
  c_91_75_0_False_resize <= resize(c_75, 27);
  c_91_75_0_False_shift <= shift_left(c_91_75_0_False_resize, 0);
  with config_select_31 select c_91_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "10",
    "11" when others;
  with c_91_sel select c_91 <=
    c_91_54_0_False_shift when "00",
    c_91_3_8_False_shift when "01",
    c_91_48_1_False_shift when "10",
    c_91_75_0_False_shift when others;
  -- node of type 'mux' in stage 25 with id 92 and associated fundamentals [[3], [82], [268], [4]]
  c_92_0_2_False_resize <= resize(c_0, 25);
  c_92_0_2_False_shift <= shift_left(c_92_0_2_False_resize, 2);
  c_92_36_0_False_resize <= c_36(24 downto 0);
  c_92_36_0_False_shift <= shift_left(c_92_36_0_False_resize, 0);
  c_92_24_0_False_resize <= c_24;
  c_92_24_0_False_shift <= shift_left(c_92_24_0_False_resize, 0);
  c_92_48_1_False_resize <= c_48(24 downto 0);
  c_92_48_1_False_shift <= shift_left(c_92_48_1_False_resize, 1);
  with config_select_25 select c_92_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "10",
    "11" when others;
  with c_92_sel select c_92 <=
    c_92_0_2_False_shift when "00",
    c_92_36_0_False_shift when "01",
    c_92_24_0_False_shift when "10",
    c_92_48_1_False_shift when others;
  -- node of type 'add' in stage 32 with id 93 and associated fundamentals [[515], [1010], [1732], [357]]
  inst_adder_node_93: entity work.adder_node
    generic map (
      w_x_i => 27,
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
      x_i => c_91,
      y_i => c_92,
      z_o => c_93_oshift
    );
  c_93 <= c_93_oshift(25 downto 0);
  -- node of type 'mux' in stage 29 with id 94 and associated fundamentals [[226], [28], [256], [704]]
  c_94_69_0_False_resize <= c_69;
  c_94_69_0_False_shift <= shift_left(c_94_69_0_False_resize, 0);
  c_94_6_0_False_resize <= c_6(25 downto 0);
  c_94_6_0_False_shift <= shift_left(c_94_6_0_False_resize, 0);
  c_94_6_1_False_resize <= c_6(25 downto 0);
  c_94_6_1_False_shift <= shift_left(c_94_6_1_False_resize, 1);
  c_94_0_8_False_resize <= resize(c_0, 26);
  c_94_0_8_False_shift <= shift_left(c_94_0_8_False_resize, 8);
  with config_select_29 select c_94_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  with c_94_sel select c_94 <=
    c_94_69_0_False_shift when "00",
    c_94_6_0_False_shift when "01",
    c_94_6_1_False_shift when "10",
    c_94_0_8_False_shift when others;
  -- node of type 'mux' in stage 37 with id 95 and associated fundamentals [[416], [-736], [768], [-487]]
  c_95_33_0_False_resize <= c_33;
  c_95_33_0_False_shift <= shift_left(c_95_33_0_False_resize, 0);
  c_95_39_0_False_resize <= c_39;
  c_95_39_0_False_shift <= shift_left(c_95_39_0_False_resize, 0);
  c_95_60_1_False_resize <= resize(c_60, 26);
  c_95_60_1_False_shift <= shift_left(c_95_60_1_False_resize, 1);
  c_95_90_0_False_resize <= c_90(25 downto 0);
  c_95_90_0_False_shift <= shift_left(c_95_90_0_False_resize, 0);
  with config_select_37 select c_95_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  with c_95_sel select c_95 <=
    c_95_33_0_False_shift when "00",
    c_95_39_0_False_shift when "01",
    c_95_60_1_False_shift when "10",
    c_95_90_0_False_shift when others;
  -- node of type 'add_sub' in stage 38 with id 96 and associated fundamentals [[-190], [764], [1024], [217]]
  with config_select_38 select c_96_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_96: entity work.adder_node
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
      sub_i => c_96_sub_sel,
      x_i => c_94,
      y_i => c_95,
      z_o => c_96_oshift
    );
  c_96 <= c_96_oshift(25 downto 0);
  -- node of type 'mux' in stage 37 with id 97 and associated fundamentals [[3], [18], [976], [1]]
  c_97_9_1_False_resize <= resize(c_9, 26);
  c_97_9_1_False_shift <= shift_left(c_97_9_1_False_resize, 1);
  c_97_0_0_False_resize <= resize(c_0, 26);
  c_97_0_0_False_shift <= shift_left(c_97_0_0_False_resize, 0);
  c_97_84_1_False_resize <= c_84;
  c_97_84_1_False_shift <= shift_left(c_97_84_1_False_resize, 1);
  c_97_36_0_False_resize <= c_36(25 downto 0);
  c_97_36_0_False_shift <= shift_left(c_97_36_0_False_resize, 0);
  with config_select_37 select c_97_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "11" when others;
  with c_97_sel select c_97 <=
    c_97_9_1_False_shift when "00",
    c_97_0_0_False_shift when "01",
    c_97_84_1_False_shift when "10",
    c_97_36_0_False_shift when others;
  -- node of type 'mux' in stage 31 with id 98 and associated fundamentals [[1008], [737], [1], [8]]
  c_98_0_0_False_resize <= resize(c_0, 26);
  c_98_0_0_False_shift <= shift_left(c_98_0_0_False_resize, 0);
  c_98_33_4_False_resize <= c_33;
  c_98_33_4_False_shift <= shift_left(c_98_33_4_False_resize, 4);
  c_98_0_3_False_resize <= resize(c_0, 26);
  c_98_0_3_False_shift <= shift_left(c_98_0_3_False_resize, 3);
  c_98_63_0_False_resize <= c_63(25 downto 0);
  c_98_63_0_False_shift <= shift_left(c_98_63_0_False_resize, 0);
  with config_select_31 select c_98_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  with c_98_sel select c_98 <=
    c_98_0_0_False_shift when "00",
    c_98_33_4_False_shift when "01",
    c_98_0_3_False_shift when "10",
    c_98_63_0_False_shift when others;
  -- node of type 'add_sub' in stage 38 with id 99 and associated fundamentals [[1011], [-719], [977], [9]]
  with config_select_38 select c_99_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_99: entity work.adder_node
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
      sub_i => c_99_sub_sel,
      x_i => c_97,
      y_i => c_98,
      z_o => c_99_oshift
    );
  c_99 <= c_99_oshift(25 downto 0);
  -- node of type 'mux' in stage 39 with id 100 and associated fundamentals [[1011], [1152], [4096], [353]]
  c_100_54_0_False_resize <= c_54(27 downto 0);
  c_100_54_0_False_shift <= shift_left(c_100_54_0_False_resize, 0);
  c_100_0_12_False_resize <= resize(c_0, 28);
  c_100_0_12_False_shift <= shift_left(c_100_0_12_False_resize, 12);
  c_100_99_0_False_resize <= resize(c_99, 28);
  c_100_99_0_False_shift <= shift_left(c_100_99_0_False_resize, 0);
  c_100_3_2_False_resize <= c_3(27 downto 0);
  c_100_3_2_False_shift <= shift_left(c_100_3_2_False_resize, 2);
  with config_select_39 select c_100_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  with c_100_sel select c_100 <=
    c_100_54_0_False_shift when "00",
    c_100_0_12_False_shift when "01",
    c_100_99_0_False_shift when "10",
    c_100_3_2_False_shift when others;
  -- node of type 'mux' in stage 39 with id 101 and associated fundamentals [[-980], [737], [4096], [2]]
  c_101_87_0_False_resize <= resize(c_87, 28);
  c_101_87_0_False_shift <= shift_left(c_101_87_0_False_resize, 0);
  c_101_54_6_False_resize <= c_54(27 downto 0);
  c_101_54_6_False_shift <= shift_left(c_101_54_6_False_resize, 6);
  c_101_27_0_False_resize <= c_27;
  c_101_27_0_False_shift <= shift_left(c_101_27_0_False_resize, 0);
  c_101_63_0_False_resize <= c_63(27 downto 0);
  c_101_63_0_False_shift <= shift_left(c_101_63_0_False_resize, 0);
  with config_select_39 select c_101_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "11" when others;
  with c_101_sel select c_101 <=
    c_101_87_0_False_shift when "00",
    c_101_54_6_False_shift when "01",
    c_101_27_0_False_shift when "10",
    c_101_63_0_False_shift when others;
  -- node of type 'add_sub' in stage 40 with id 102 and associated fundamentals [[31], [415], [0], [355]]
  with config_select_40 select c_102_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_102: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 28,
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
      sub_i => c_102_sub_sel,
      x_i => c_100,
      y_i => c_101,
      z_o => c_102_oshift
    );
  c_102 <= c_102_oshift(24 downto 0);
  -- node of type 'mux' in stage 37 with id 103 and associated fundamentals [[896], [296], [12303], [10496]]
  c_103_51_0_False_resize <= c_51;
  c_103_51_0_False_shift <= shift_left(c_103_51_0_False_resize, 0);
  c_103_81_0_False_resize <= c_81;
  c_103_81_0_False_shift <= shift_left(c_103_81_0_False_resize, 0);
  c_103_18_0_False_resize <= c_18;
  c_103_18_0_False_shift <= shift_left(c_103_18_0_False_resize, 0);
  c_103_90_5_False_resize <= c_90;
  c_103_90_5_False_shift <= shift_left(c_103_90_5_False_resize, 5);
  with config_select_37 select c_103_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "11" when others;
  with c_103_sel select c_103 <=
    c_103_51_0_False_shift when "00",
    c_103_81_0_False_shift when "01",
    c_103_18_0_False_shift when "10",
    c_103_90_5_False_shift when others;
  -- node of type 'mux' in stage 37 with id 104 and associated fundamentals [[3], [82], [13008], [352]]
  c_104_90_0_False_resize <= c_90;
  c_104_90_0_False_shift <= shift_left(c_104_90_0_False_resize, 0);
  c_104_36_0_False_resize <= c_36;
  c_104_36_0_False_shift <= shift_left(c_104_36_0_False_resize, 0);
  c_104_48_1_False_resize <= resize(c_48, 30);
  c_104_48_1_False_shift <= shift_left(c_104_48_1_False_resize, 1);
  c_104_6_0_False_resize <= resize(c_6, 30);
  c_104_6_0_False_shift <= shift_left(c_104_6_0_False_resize, 0);
  with config_select_37 select c_104_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  with c_104_sel select c_104 <=
    c_104_90_0_False_shift when "00",
    c_104_36_0_False_shift when "01",
    c_104_48_1_False_shift when "10",
    c_104_6_0_False_shift when others;
  -- node of type 'add_sub' in stage 38 with id 105 and associated fundamentals [[899], [378], [-705], [10144]]
  with config_select_38 select c_105_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_105: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 30,
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
      sub_i => c_105_sub_sel,
      x_i => c_103,
      y_i => c_104,
      z_o => c_105_oshift
    );
  c_105 <= c_105_oshift(25 downto 0);
  -- node of type 'mux' in stage 21 with id 106 and associated fundamentals [[264], [824], [1], [448]]
  c_106_9_2_False_resize <= resize(c_9, 26);
  c_106_9_2_False_shift <= shift_left(c_106_9_2_False_resize, 2);
  c_106_0_0_False_resize <= resize(c_0, 26);
  c_106_0_0_False_shift <= shift_left(c_106_0_0_False_resize, 0);
  c_106_12_1_False_resize <= resize(c_12, 26);
  c_106_12_1_False_shift <= shift_left(c_106_12_1_False_resize, 1);
  c_106_42_6_False_resize <= c_42(25 downto 0);
  c_106_42_6_False_shift <= shift_left(c_106_42_6_False_resize, 6);
  with config_select_21 select c_106_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "11" when others;
  with c_106_sel select c_106 <=
    c_106_9_2_False_shift when "00",
    c_106_0_0_False_shift when "01",
    c_106_12_1_False_shift when "10",
    c_106_42_6_False_shift when others;
  -- node of type 'mux' in stage 41 with id 107 and associated fundamentals [[31], [193], [192], [323]]
  c_107_102_0_False_resize <= c_102;
  c_107_102_0_False_shift <= shift_left(c_107_102_0_False_resize, 0);
  c_107_60_0_False_resize <= c_60;
  c_107_60_0_False_shift <= shift_left(c_107_60_0_False_resize, 0);
  c_107_57_3_False_resize <= c_57(24 downto 0);
  c_107_57_3_False_shift <= shift_left(c_107_57_3_False_resize, 3);
  c_107_84_0_False_resize <= c_84(24 downto 0);
  c_107_84_0_False_shift <= shift_left(c_107_84_0_False_resize, 0);
  with config_select_41 select c_107_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "11" when others;
  with c_107_sel select c_107 <=
    c_107_102_0_False_shift when "00",
    c_107_60_0_False_shift when "01",
    c_107_57_3_False_shift when "10",
    c_107_84_0_False_shift when others;
  -- node of type 'add_sub' in stage 42 with id 108 and associated fundamentals [[233], [631], [193], [771]]
  with config_select_42 select c_108_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_108: entity work.adder_node
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
      sub_i => c_108_sub_sel,
      x_i => c_106,
      y_i => c_107,
      z_o => c_108_oshift
    );
  c_108 <= c_108_oshift(25 downto 0);
  -- node of type 'mux' in stage 39 with id 109 and associated fundamentals [[1011], [824], [270], [590]]
  c_109_36_1_False_resize <= c_36(25 downto 0);
  c_109_36_1_False_shift <= shift_left(c_109_36_1_False_resize, 1);
  c_109_12_1_False_resize <= resize(c_12, 26);
  c_109_12_1_False_shift <= shift_left(c_109_12_1_False_resize, 1);
  c_109_99_0_False_resize <= c_99;
  c_109_99_0_False_shift <= shift_left(c_109_99_0_False_resize, 0);
  c_109_75_0_False_resize <= c_75;
  c_109_75_0_False_shift <= shift_left(c_109_75_0_False_resize, 0);
  with config_select_39 select c_109_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  with c_109_sel select c_109 <=
    c_109_36_1_False_shift when "00",
    c_109_12_1_False_shift when "01",
    c_109_99_0_False_shift when "10",
    c_109_75_0_False_shift when others;
  -- node of type 'output' in stage 39 with id 110 and associated fundamentals [[1011], [824], [270], [590]]
  c_110_resize <= c_109;
  c_110 <= shift_left(c_110_resize, 0);
  -- node of type 'mux' in stage 43 with id 111 and associated fundamentals [[496], [1010], [977], [771]]
  c_111_108_0_False_resize <= c_108;
  c_111_108_0_False_shift <= shift_left(c_111_108_0_False_resize, 0);
  c_111_102_4_False_resize <= resize(c_102, 26);
  c_111_102_4_False_shift <= shift_left(c_111_102_4_False_resize, 4);
  c_111_99_0_False_resize <= c_99;
  c_111_99_0_False_shift <= shift_left(c_111_99_0_False_resize, 0);
  c_111_93_0_False_resize <= c_93;
  c_111_93_0_False_shift <= shift_left(c_111_93_0_False_resize, 0);
  with config_select_43 select c_111_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "10",
    "11" when others;
  with c_111_sel select c_111 <=
    c_111_108_0_False_shift when "00",
    c_111_102_4_False_shift when "01",
    c_111_99_0_False_shift when "10",
    c_111_93_0_False_shift when others;
  -- node of type 'output' in stage 43 with id 112 and associated fundamentals [[496], [1010], [977], [771]]
  c_112_resize <= c_111;
  c_112 <= shift_left(c_112_resize, 0);
  -- node of type 'mux' in stage 41 with id 113 and associated fundamentals [[150], [415], [268], [838]]
  c_113_60_1_False_resize <= resize(c_60, 26);
  c_113_60_1_False_shift <= shift_left(c_113_60_1_False_resize, 1);
  c_113_102_0_False_resize <= resize(c_102, 26);
  c_113_102_0_False_shift <= shift_left(c_113_102_0_False_resize, 0);
  c_113_78_0_False_resize <= c_78;
  c_113_78_0_False_shift <= shift_left(c_113_78_0_False_resize, 0);
  c_113_24_0_False_resize <= resize(c_24, 26);
  c_113_24_0_False_shift <= shift_left(c_113_24_0_False_resize, 0);
  with config_select_41 select c_113_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  with c_113_sel select c_113 <=
    c_113_60_1_False_shift when "00",
    c_113_102_0_False_shift when "01",
    c_113_78_0_False_shift when "10",
    c_113_24_0_False_shift when others;
  -- node of type 'output' in stage 41 with id 114 and associated fundamentals [[150], [415], [268], [838]]
  c_114_resize <= c_113;
  c_114 <= shift_left(c_114_resize, 0);
  -- node of type 'mux' in stage 39 with id 115 and associated fundamentals [[899], [506], [542], [868]]
  c_115_51_0_False_resize <= c_51(25 downto 0);
  c_115_51_0_False_shift <= shift_left(c_115_51_0_False_resize, 0);
  c_115_87_0_False_resize <= c_87;
  c_115_87_0_False_shift <= shift_left(c_115_87_0_False_resize, 0);
  c_115_96_2_False_resize <= c_96;
  c_115_96_2_False_shift <= shift_left(c_115_96_2_False_resize, 2);
  c_115_105_0_False_resize <= c_105;
  c_115_105_0_False_shift <= shift_left(c_115_105_0_False_resize, 0);
  with config_select_39 select c_115_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  with c_115_sel select c_115 <=
    c_115_51_0_False_shift when "00",
    c_115_87_0_False_shift when "01",
    c_115_96_2_False_shift when "10",
    c_115_105_0_False_shift when others;
  -- node of type 'output' in stage 39 with id 116 and associated fundamentals [[899], [506], [542], [868]]
  c_116_resize <= c_115;
  c_116 <= shift_left(c_116_resize, 0);
  -- node of type 'mux' in stage 33 with id 117 and associated fundamentals [[163], [737], [296], [714]]
  c_117_93_1_False_resize <= c_93;
  c_117_93_1_False_shift <= shift_left(c_117_93_1_False_resize, 1);
  c_117_60_0_False_resize <= resize(c_60, 26);
  c_117_60_0_False_shift <= shift_left(c_117_60_0_False_resize, 0);
  c_117_75_0_False_resize <= c_75;
  c_117_75_0_False_shift <= shift_left(c_117_75_0_False_resize, 0);
  c_117_63_0_False_resize <= c_63(25 downto 0);
  c_117_63_0_False_shift <= shift_left(c_117_63_0_False_resize, 0);
  with config_select_33 select c_117_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  with c_117_sel select c_117 <=
    c_117_93_1_False_shift when "00",
    c_117_60_0_False_shift when "01",
    c_117_75_0_False_shift when "10",
    c_117_63_0_False_shift when others;
  -- node of type 'output' in stage 33 with id 118 and associated fundamentals [[163], [737], [296], [714]]
  c_118_resize <= c_117;
  c_118 <= shift_left(c_118_resize, 0);
  -- node of type 'mux' in stage 43 with id 119 and associated fundamentals [[370], [631], [732], [607]]
  c_119_48_0_False_resize <= c_48(25 downto 0);
  c_119_48_0_False_shift <= shift_left(c_119_48_0_False_resize, 0);
  c_119_24_0_False_resize <= resize(c_24, 26);
  c_119_24_0_False_shift <= shift_left(c_119_24_0_False_resize, 0);
  c_119_108_0_False_resize <= c_108;
  c_119_108_0_False_shift <= shift_left(c_119_108_0_False_resize, 0);
  with config_select_43 select c_119_sel <= 
    "00" when "10",
    "00" when "11",
    "01" when "00",
    "10" when others;
  with c_119_sel select c_119 <=
    c_119_48_0_False_shift when "00",
    c_119_24_0_False_shift when "01",
    c_119_108_0_False_shift when others;
  -- node of type 'output' in stage 43 with id 120 and associated fundamentals [[370], [631], [732], [607]]
  c_120_resize <= c_119;
  c_120 <= shift_left(c_120_resize, 0);
  -- node of type 'mux' in stage 39 with id 121 and associated fundamentals [[-190], [-719], [-705], [-662]]
  c_121_105_0_False_resize <= c_105;
  c_121_105_0_False_shift <= shift_left(c_121_105_0_False_resize, 0);
  c_121_99_0_False_resize <= c_99;
  c_121_99_0_False_shift <= shift_left(c_121_99_0_False_resize, 0);
  c_121_72_0_False_resize <= c_72(25 downto 0);
  c_121_72_0_False_shift <= shift_left(c_121_72_0_False_resize, 0);
  c_121_96_0_False_resize <= c_96;
  c_121_96_0_False_shift <= shift_left(c_121_96_0_False_resize, 0);
  with config_select_39 select c_121_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  with c_121_sel select c_121 <=
    c_121_105_0_False_shift when "00",
    c_121_99_0_False_shift when "01",
    c_121_72_0_False_shift when "10",
    c_121_96_0_False_shift when others;
  -- node of type 'output' in stage 39 with id 122 and associated fundamentals [[190], [719], [705], [662]]
  c_122_resize <= c_121;
  c_122 <= -shift_left(c_122_resize, 0);
  -- node of type 'mux' in stage 41 with id 123 and associated fundamentals [[943], [756], [196], [710]]
  c_123_102_1_False_resize <= resize(c_102, 26);
  c_123_102_1_False_shift <= shift_left(c_123_102_1_False_resize, 1);
  c_123_21_2_False_resize <= c_21(25 downto 0);
  c_123_21_2_False_shift <= shift_left(c_123_21_2_False_resize, 2);
  c_123_105_1_False_resize <= c_105;
  c_123_105_1_False_shift <= shift_left(c_123_105_1_False_resize, 1);
  c_123_84_0_False_resize <= c_84;
  c_123_84_0_False_shift <= shift_left(c_123_84_0_False_resize, 0);
  with config_select_41 select c_123_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  with c_123_sel select c_123 <=
    c_123_102_1_False_shift when "00",
    c_123_21_2_False_shift when "01",
    c_123_105_1_False_shift when "10",
    c_123_84_0_False_shift when others;
  -- node of type 'output' in stage 41 with id 124 and associated fundamentals [[943], [756], [196], [710]]
  c_124_resize <= c_123;
  c_124 <= shift_left(c_124_resize, 0);
  -- node of type 'mux' in stage 43 with id 125 and associated fundamentals [[466], [321], [193], [25]]
  c_125_51_0_False_resize <= c_51(24 downto 0);
  c_125_51_0_False_shift <= shift_left(c_125_51_0_False_resize, 0);
  c_125_108_1_False_resize <= c_108(24 downto 0);
  c_125_108_1_False_shift <= shift_left(c_125_108_1_False_resize, 1);
  c_125_78_0_False_resize <= c_78(24 downto 0);
  c_125_78_0_False_shift <= shift_left(c_125_78_0_False_resize, 0);
  c_125_108_0_False_resize <= c_108(24 downto 0);
  c_125_108_0_False_shift <= shift_left(c_125_108_0_False_resize, 0);
  with config_select_43 select c_125_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  with c_125_sel select c_125 <=
    c_125_51_0_False_shift when "00",
    c_125_108_1_False_shift when "01",
    c_125_78_0_False_shift when "10",
    c_125_108_0_False_shift when others;
  -- node of type 'output' in stage 43 with id 126 and associated fundamentals [[466], [321], [193], [25]]
  c_126_resize <= c_125;
  c_126 <= shift_left(c_126_resize, 0);
  -- node of type 'mux' in stage 39 with id 127 and associated fundamentals [[515], [457], [136], [18]]
  c_127_99_1_False_resize <= c_99;
  c_127_99_1_False_shift <= shift_left(c_127_99_1_False_resize, 1);
  c_127_90_0_False_resize <= c_90(25 downto 0);
  c_127_90_0_False_shift <= shift_left(c_127_90_0_False_resize, 0);
  c_127_87_0_False_resize <= c_87;
  c_127_87_0_False_shift <= shift_left(c_127_87_0_False_resize, 0);
  c_127_93_0_False_resize <= c_93;
  c_127_93_0_False_shift <= shift_left(c_127_93_0_False_resize, 0);
  with config_select_39 select c_127_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  with c_127_sel select c_127 <=
    c_127_99_1_False_shift when "00",
    c_127_90_0_False_shift when "01",
    c_127_87_0_False_shift when "10",
    c_127_93_0_False_shift when others;
  -- node of type 'output' in stage 39 with id 128 and associated fundamentals [[515], [457], [136], [18]]
  c_128_resize <= c_127;
  c_128 <= shift_left(c_128_resize, 0);
end architecture;
