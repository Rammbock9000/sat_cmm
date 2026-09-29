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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(21 downto 0);
  signal c_1_0_4_False_resize: signed(21 downto 0);
  signal c_1_0_4_False_shift: signed(21 downto 0);
  signal c_1_0_6_False_resize: signed(21 downto 0);
  signal c_1_0_6_False_shift: signed(21 downto 0);
  signal c_1_0_0_False_resize: signed(21 downto 0);
  signal c_1_0_0_False_shift: signed(21 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(21 downto 0);
  signal c_2_0_3_False_resize: signed(21 downto 0);
  signal c_2_0_3_False_shift: signed(21 downto 0);
  signal c_2_0_6_False_resize: signed(21 downto 0);
  signal c_2_0_6_False_shift: signed(21 downto 0);
  signal c_2_0_0_False_resize: signed(21 downto 0);
  signal c_2_0_0_False_shift: signed(21 downto 0);
  signal c_2_0_5_False_resize: signed(21 downto 0);
  signal c_2_0_5_False_shift: signed(21 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(26 downto 0);
  signal c_3_i0_resize: signed(26 downto 0);
  signal c_3_i1_resize: signed(26 downto 0);
  signal c_3_i0_shift: signed(26 downto 0);
  signal c_3_i1_shift: signed(26 downto 0);
  signal c_3_arith: signed(26 downto 0);
  signal c_3_oshift: signed(26 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(19 downto 0);
  signal c_4_0_4_False_resize: signed(19 downto 0);
  signal c_4_0_4_False_shift: signed(19 downto 0);
  signal c_4_3_0_False_resize: signed(19 downto 0);
  signal c_4_3_0_False_shift: signed(19 downto 0);
  signal c_4_0_2_False_resize: signed(19 downto 0);
  signal c_4_0_2_False_shift: signed(19 downto 0);
  signal c_4_0_0_False_resize: signed(19 downto 0);
  signal c_4_0_0_False_shift: signed(19 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(23 downto 0);
  signal c_5_3_0_False_resize: signed(23 downto 0);
  signal c_5_3_0_False_shift: signed(23 downto 0);
  signal c_5_0_7_False_resize: signed(23 downto 0);
  signal c_5_0_7_False_shift: signed(23 downto 0);
  signal c_5_0_0_False_resize: signed(23 downto 0);
  signal c_5_0_0_False_shift: signed(23 downto 0);
  signal c_5_3_3_False_resize: signed(23 downto 0);
  signal c_5_3_3_False_shift: signed(23 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(23 downto 0);
  signal c_6_i0_resize: signed(23 downto 0);
  signal c_6_i1_resize: signed(23 downto 0);
  signal c_6_i0_shift: signed(23 downto 0);
  signal c_6_i1_shift: signed(23 downto 0);
  signal c_6_arith: signed(23 downto 0);
  signal c_6_oshift: signed(23 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(18 downto 0);
  signal c_7_0_2_False_resize: signed(18 downto 0);
  signal c_7_0_2_False_shift: signed(18 downto 0);
  signal c_7_6_0_False_resize: signed(18 downto 0);
  signal c_7_6_0_False_shift: signed(18 downto 0);
  signal c_7_3_0_False_resize: signed(18 downto 0);
  signal c_7_3_0_False_shift: signed(18 downto 0);
  signal c_7_0_3_False_resize: signed(18 downto 0);
  signal c_7_0_3_False_shift: signed(18 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(20 downto 0);
  signal c_8_6_0_False_resize: signed(20 downto 0);
  signal c_8_6_0_False_shift: signed(20 downto 0);
  signal c_8_0_0_False_resize: signed(20 downto 0);
  signal c_8_0_0_False_shift: signed(20 downto 0);
  signal c_8_0_5_False_resize: signed(20 downto 0);
  signal c_8_0_5_False_shift: signed(20 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_9_i0_resize: signed(21 downto 0);
  signal c_9_i1_resize: signed(21 downto 0);
  signal c_9_i0_shift: signed(21 downto 0);
  signal c_9_i1_shift: signed(21 downto 0);
  signal c_9_arith: signed(21 downto 0);
  signal c_9_oshift: signed(21 downto 0);
  signal c_10: signed(25 downto 0);
  signal c_10_0_4_False_resize: signed(25 downto 0);
  signal c_10_0_4_False_shift: signed(25 downto 0);
  signal c_10_3_0_False_resize: signed(25 downto 0);
  signal c_10_3_0_False_shift: signed(25 downto 0);
  signal c_10_6_2_False_resize: signed(25 downto 0);
  signal c_10_6_2_False_shift: signed(25 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(29 downto 0);
  signal c_11_9_8_False_resize: signed(29 downto 0);
  signal c_11_9_8_False_shift: signed(29 downto 0);
  signal c_11_6_0_False_resize: signed(29 downto 0);
  signal c_11_6_0_False_shift: signed(29 downto 0);
  signal c_11_9_0_False_resize: signed(29 downto 0);
  signal c_11_9_0_False_shift: signed(29 downto 0);
  signal c_11_0_2_False_resize: signed(29 downto 0);
  signal c_11_0_2_False_shift: signed(29 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(29 downto 0);
  signal c_12_i0_resize: signed(29 downto 0);
  signal c_12_i1_resize: signed(29 downto 0);
  signal c_12_i0_shift: signed(29 downto 0);
  signal c_12_i1_shift: signed(29 downto 0);
  signal c_12_arith: signed(29 downto 0);
  signal c_12_oshift: signed(29 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(25 downto 0);
  signal c_13_0_10_False_resize: signed(25 downto 0);
  signal c_13_0_10_False_shift: signed(25 downto 0);
  signal c_13_6_1_False_resize: signed(25 downto 0);
  signal c_13_6_1_False_shift: signed(25 downto 0);
  signal c_13_9_0_False_resize: signed(25 downto 0);
  signal c_13_9_0_False_shift: signed(25 downto 0);
  signal c_13_0_0_False_resize: signed(25 downto 0);
  signal c_13_0_0_False_shift: signed(25 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(19 downto 0);
  signal c_14_0_4_False_resize: signed(19 downto 0);
  signal c_14_0_4_False_shift: signed(19 downto 0);
  signal c_14_0_3_False_resize: signed(19 downto 0);
  signal c_14_0_3_False_shift: signed(19 downto 0);
  signal c_14_0_0_False_resize: signed(19 downto 0);
  signal c_14_0_0_False_shift: signed(19 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(26 downto 0);
  signal c_15_i0_resize: signed(26 downto 0);
  signal c_15_i1_resize: signed(26 downto 0);
  signal c_15_i0_shift: signed(26 downto 0);
  signal c_15_i1_shift: signed(26 downto 0);
  signal c_15_arith: signed(26 downto 0);
  signal c_15_oshift: signed(26 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(29 downto 0);
  signal c_16_12_0_False_resize: signed(29 downto 0);
  signal c_16_12_0_False_shift: signed(29 downto 0);
  signal c_16_3_0_False_resize: signed(29 downto 0);
  signal c_16_3_0_False_shift: signed(29 downto 0);
  signal c_16_0_2_False_resize: signed(29 downto 0);
  signal c_16_0_2_False_shift: signed(29 downto 0);
  signal c_16_6_0_False_resize: signed(29 downto 0);
  signal c_16_6_0_False_shift: signed(29 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(27 downto 0);
  signal c_17_3_1_False_resize: signed(27 downto 0);
  signal c_17_3_1_False_shift: signed(27 downto 0);
  signal c_17_15_0_False_resize: signed(27 downto 0);
  signal c_17_15_0_False_shift: signed(27 downto 0);
  signal c_17_0_10_False_resize: signed(27 downto 0);
  signal c_17_0_10_False_shift: signed(27 downto 0);
  signal c_17_12_0_False_resize: signed(27 downto 0);
  signal c_17_12_0_False_shift: signed(27 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(28 downto 0);
  signal c_18_i0_resize: signed(28 downto 0);
  signal c_18_i1_resize: signed(28 downto 0);
  signal c_18_i0_shift: signed(28 downto 0);
  signal c_18_i1_shift: signed(28 downto 0);
  signal c_18_arith: signed(28 downto 0);
  signal c_18_oshift: signed(28 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(19 downto 0);
  signal c_19_15_0_False_resize: signed(19 downto 0);
  signal c_19_15_0_False_shift: signed(19 downto 0);
  signal c_19_0_2_False_resize: signed(19 downto 0);
  signal c_19_0_2_False_shift: signed(19 downto 0);
  signal c_19_0_3_False_resize: signed(19 downto 0);
  signal c_19_0_3_False_shift: signed(19 downto 0);
  signal c_19_6_0_False_resize: signed(19 downto 0);
  signal c_19_6_0_False_shift: signed(19 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(28 downto 0);
  signal c_20_3_0_False_resize: signed(28 downto 0);
  signal c_20_3_0_False_shift: signed(28 downto 0);
  signal c_20_0_3_False_resize: signed(28 downto 0);
  signal c_20_0_3_False_shift: signed(28 downto 0);
  signal c_20_6_0_False_resize: signed(28 downto 0);
  signal c_20_6_0_False_shift: signed(28 downto 0);
  signal c_20_18_0_False_resize: signed(28 downto 0);
  signal c_20_18_0_False_shift: signed(28 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(28 downto 0);
  signal c_21_i0_resize: signed(28 downto 0);
  signal c_21_i1_resize: signed(28 downto 0);
  signal c_21_i0_shift: signed(28 downto 0);
  signal c_21_i1_shift: signed(28 downto 0);
  signal c_21_arith: signed(28 downto 0);
  signal c_21_oshift: signed(28 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(28 downto 0);
  signal c_22_12_0_False_resize: signed(28 downto 0);
  signal c_22_12_0_False_shift: signed(28 downto 0);
  signal c_22_18_0_False_resize: signed(28 downto 0);
  signal c_22_18_0_False_shift: signed(28 downto 0);
  signal c_22_0_9_False_resize: signed(28 downto 0);
  signal c_22_0_9_False_shift: signed(28 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(28 downto 0);
  signal c_23_12_0_False_resize: signed(28 downto 0);
  signal c_23_12_0_False_shift: signed(28 downto 0);
  signal c_23_9_5_False_resize: signed(28 downto 0);
  signal c_23_9_5_False_shift: signed(28 downto 0);
  signal c_23_0_8_False_resize: signed(28 downto 0);
  signal c_23_0_8_False_shift: signed(28 downto 0);
  signal c_23_18_0_False_resize: signed(28 downto 0);
  signal c_23_18_0_False_shift: signed(28 downto 0);
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
  signal c_25_0_9_False_resize: signed(24 downto 0);
  signal c_25_0_9_False_shift: signed(24 downto 0);
  signal c_25_0_1_False_resize: signed(24 downto 0);
  signal c_25_0_1_False_shift: signed(24 downto 0);
  signal c_25_0_0_False_resize: signed(24 downto 0);
  signal c_25_0_0_False_shift: signed(24 downto 0);
  signal c_25_0_6_False_resize: signed(24 downto 0);
  signal c_25_0_6_False_shift: signed(24 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(21 downto 0);
  signal c_26_0_2_False_resize: signed(21 downto 0);
  signal c_26_0_2_False_shift: signed(21 downto 0);
  signal c_26_9_0_False_resize: signed(21 downto 0);
  signal c_26_9_0_False_shift: signed(21 downto 0);
  signal c_26_0_6_False_resize: signed(21 downto 0);
  signal c_26_0_6_False_shift: signed(21 downto 0);
  signal c_26_0_4_False_resize: signed(21 downto 0);
  signal c_26_0_4_False_shift: signed(21 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_i0_resize: signed(25 downto 0);
  signal c_27_i1_resize: signed(25 downto 0);
  signal c_27_i0_shift: signed(25 downto 0);
  signal c_27_i1_shift: signed(25 downto 0);
  signal c_27_arith: signed(25 downto 0);
  signal c_27_oshift: signed(25 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_0_3_False_resize: signed(23 downto 0);
  signal c_28_0_3_False_shift: signed(23 downto 0);
  signal c_28_0_8_False_resize: signed(23 downto 0);
  signal c_28_0_8_False_shift: signed(23 downto 0);
  signal c_28_24_0_False_resize: signed(23 downto 0);
  signal c_28_24_0_False_shift: signed(23 downto 0);
  signal c_28_27_0_False_resize: signed(23 downto 0);
  signal c_28_27_0_False_shift: signed(23 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_29_15_0_False_resize: signed(22 downto 0);
  signal c_29_15_0_False_shift: signed(22 downto 0);
  signal c_29_0_7_False_resize: signed(22 downto 0);
  signal c_29_0_7_False_shift: signed(22 downto 0);
  signal c_29_0_0_False_resize: signed(22 downto 0);
  signal c_29_0_0_False_shift: signed(22 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(26 downto 0);
  signal c_30_i0_resize: signed(26 downto 0);
  signal c_30_i1_resize: signed(26 downto 0);
  signal c_30_i0_shift: signed(26 downto 0);
  signal c_30_i1_shift: signed(26 downto 0);
  signal c_30_arith: signed(26 downto 0);
  signal c_30_oshift: signed(26 downto 0);
  signal c_30_sub_sel: std_logic;
  signal c_31: signed(29 downto 0);
  signal c_31_0_2_False_resize: signed(29 downto 0);
  signal c_31_0_2_False_shift: signed(29 downto 0);
  signal c_31_9_8_False_resize: signed(29 downto 0);
  signal c_31_9_8_False_shift: signed(29 downto 0);
  signal c_31_3_0_False_resize: signed(29 downto 0);
  signal c_31_3_0_False_shift: signed(29 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(28 downto 0);
  signal c_32_3_2_False_resize: signed(28 downto 0);
  signal c_32_3_2_False_shift: signed(28 downto 0);
  signal c_32_0_0_False_resize: signed(28 downto 0);
  signal c_32_0_0_False_shift: signed(28 downto 0);
  signal c_32_0_12_False_resize: signed(28 downto 0);
  signal c_32_0_12_False_shift: signed(28 downto 0);
  signal c_32_0_10_False_resize: signed(28 downto 0);
  signal c_32_0_10_False_shift: signed(28 downto 0);
  signal c_32_sel: std_logic_vector(1 downto 0);
  signal c_33: signed(28 downto 0);
  signal c_33_i0_resize: signed(28 downto 0);
  signal c_33_i1_resize: signed(28 downto 0);
  signal c_33_i0_shift: signed(28 downto 0);
  signal c_33_i1_shift: signed(28 downto 0);
  signal c_33_arith: signed(28 downto 0);
  signal c_33_oshift: signed(28 downto 0);
  signal c_33_sub_sel: std_logic;
  signal c_34: signed(25 downto 0);
  signal c_34_0_10_False_resize: signed(25 downto 0);
  signal c_34_0_10_False_shift: signed(25 downto 0);
  signal c_34_3_1_False_resize: signed(25 downto 0);
  signal c_34_3_1_False_shift: signed(25 downto 0);
  signal c_34_0_7_False_resize: signed(25 downto 0);
  signal c_34_0_7_False_shift: signed(25 downto 0);
  signal c_34_0_0_False_resize: signed(25 downto 0);
  signal c_34_0_0_False_shift: signed(25 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(28 downto 0);
  signal c_35_0_1_False_resize: signed(28 downto 0);
  signal c_35_0_1_False_shift: signed(28 downto 0);
  signal c_35_27_0_False_resize: signed(28 downto 0);
  signal c_35_27_0_False_shift: signed(28 downto 0);
  signal c_35_0_3_False_resize: signed(28 downto 0);
  signal c_35_0_3_False_shift: signed(28 downto 0);
  signal c_35_18_0_False_resize: signed(28 downto 0);
  signal c_35_18_0_False_shift: signed(28 downto 0);
  signal c_35_sel: std_logic_vector(1 downto 0);
  signal c_36: signed(29 downto 0);
  signal c_36_i0_resize: signed(29 downto 0);
  signal c_36_i1_resize: signed(29 downto 0);
  signal c_36_i0_shift: signed(29 downto 0);
  signal c_36_i1_shift: signed(29 downto 0);
  signal c_36_arith: signed(29 downto 0);
  signal c_36_oshift: signed(29 downto 0);
  signal c_36_sub_sel: std_logic;
  signal c_37: signed(26 downto 0);
  signal c_37_18_0_False_resize: signed(26 downto 0);
  signal c_37_18_0_False_shift: signed(26 downto 0);
  signal c_37_6_0_False_resize: signed(26 downto 0);
  signal c_37_6_0_False_shift: signed(26 downto 0);
  signal c_37_3_0_False_resize: signed(26 downto 0);
  signal c_37_3_0_False_shift: signed(26 downto 0);
  signal c_37_30_0_False_resize: signed(26 downto 0);
  signal c_37_30_0_False_shift: signed(26 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_38_12_0_False_resize: signed(25 downto 0);
  signal c_38_12_0_False_shift: signed(25 downto 0);
  signal c_38_30_0_False_resize: signed(25 downto 0);
  signal c_38_30_0_False_shift: signed(25 downto 0);
  signal c_38_3_0_False_resize: signed(25 downto 0);
  signal c_38_3_0_False_shift: signed(25 downto 0);
  signal c_38_sel: std_logic_vector(1 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_i0_resize: signed(26 downto 0);
  signal c_39_i1_resize: signed(26 downto 0);
  signal c_39_i0_shift: signed(26 downto 0);
  signal c_39_i1_shift: signed(26 downto 0);
  signal c_39_arith: signed(26 downto 0);
  signal c_39_oshift: signed(23 downto 0);
  signal c_40: signed(24 downto 0);
  signal c_40_0_0_False_resize: signed(24 downto 0);
  signal c_40_0_0_False_shift: signed(24 downto 0);
  signal c_40_0_4_False_resize: signed(24 downto 0);
  signal c_40_0_4_False_shift: signed(24 downto 0);
  signal c_40_39_0_False_resize: signed(24 downto 0);
  signal c_40_39_0_False_shift: signed(24 downto 0);
  signal c_40_39_1_False_resize: signed(24 downto 0);
  signal c_40_39_1_False_shift: signed(24 downto 0);
  signal c_40_sel: std_logic_vector(1 downto 0);
  signal c_41: signed(26 downto 0);
  signal c_41_0_0_False_resize: signed(26 downto 0);
  signal c_41_0_0_False_shift: signed(26 downto 0);
  signal c_41_36_0_False_resize: signed(26 downto 0);
  signal c_41_36_0_False_shift: signed(26 downto 0);
  signal c_41_0_1_False_resize: signed(26 downto 0);
  signal c_41_0_1_False_shift: signed(26 downto 0);
  signal c_41_0_11_False_resize: signed(26 downto 0);
  signal c_41_0_11_False_shift: signed(26 downto 0);
  signal c_41_sel: std_logic_vector(1 downto 0);
  signal c_42: signed(27 downto 0);
  signal c_42_i0_resize: signed(27 downto 0);
  signal c_42_i1_resize: signed(27 downto 0);
  signal c_42_i0_shift: signed(27 downto 0);
  signal c_42_i1_shift: signed(27 downto 0);
  signal c_42_arith: signed(27 downto 0);
  signal c_42_oshift: signed(27 downto 0);
  signal c_43: signed(21 downto 0);
  signal c_43_3_0_False_resize: signed(21 downto 0);
  signal c_43_3_0_False_shift: signed(21 downto 0);
  signal c_43_0_4_False_resize: signed(21 downto 0);
  signal c_43_0_4_False_shift: signed(21 downto 0);
  signal c_43_0_6_False_resize: signed(21 downto 0);
  signal c_43_0_6_False_shift: signed(21 downto 0);
  signal c_43_sel: std_logic_vector(1 downto 0);
  signal c_44: signed(26 downto 0);
  signal c_44_39_5_False_resize: signed(26 downto 0);
  signal c_44_39_5_False_shift: signed(26 downto 0);
  signal c_44_0_1_False_resize: signed(26 downto 0);
  signal c_44_0_1_False_shift: signed(26 downto 0);
  signal c_44_6_0_False_resize: signed(26 downto 0);
  signal c_44_6_0_False_shift: signed(26 downto 0);
  signal c_44_0_4_False_resize: signed(26 downto 0);
  signal c_44_0_4_False_shift: signed(26 downto 0);
  signal c_44_sel: std_logic_vector(1 downto 0);
  signal c_45: signed(29 downto 0);
  signal c_45_i0_resize: signed(29 downto 0);
  signal c_45_i1_resize: signed(29 downto 0);
  signal c_45_i0_shift: signed(29 downto 0);
  signal c_45_i1_shift: signed(29 downto 0);
  signal c_45_arith: signed(29 downto 0);
  signal c_45_oshift: signed(29 downto 0);
  signal c_46: signed(28 downto 0);
  signal c_46_27_0_False_resize: signed(28 downto 0);
  signal c_46_27_0_False_shift: signed(28 downto 0);
  signal c_46_0_13_False_resize: signed(28 downto 0);
  signal c_46_0_13_False_shift: signed(28 downto 0);
  signal c_46_0_0_False_resize: signed(28 downto 0);
  signal c_46_0_0_False_shift: signed(28 downto 0);
  signal c_46_36_0_False_resize: signed(28 downto 0);
  signal c_46_36_0_False_shift: signed(28 downto 0);
  signal c_46_sel: std_logic_vector(1 downto 0);
  signal c_47: signed(28 downto 0);
  signal c_47_0_0_False_resize: signed(28 downto 0);
  signal c_47_0_0_False_shift: signed(28 downto 0);
  signal c_47_42_0_False_resize: signed(28 downto 0);
  signal c_47_42_0_False_shift: signed(28 downto 0);
  signal c_47_0_13_False_resize: signed(28 downto 0);
  signal c_47_0_13_False_shift: signed(28 downto 0);
  signal c_47_39_0_False_resize: signed(28 downto 0);
  signal c_47_39_0_False_shift: signed(28 downto 0);
  signal c_47_sel: std_logic_vector(1 downto 0);
  signal c_48: signed(24 downto 0);
  signal c_48_i0_resize: signed(24 downto 0);
  signal c_48_i1_resize: signed(24 downto 0);
  signal c_48_i0_shift: signed(24 downto 0);
  signal c_48_i1_shift: signed(24 downto 0);
  signal c_48_arith: signed(24 downto 0);
  signal c_48_oshift: signed(24 downto 0);
  signal c_48_sub_sel: std_logic;
  signal c_49: signed(27 downto 0);
  signal c_49_27_0_False_resize: signed(27 downto 0);
  signal c_49_27_0_False_shift: signed(27 downto 0);
  signal c_49_42_7_False_resize: signed(27 downto 0);
  signal c_49_42_7_False_shift: signed(27 downto 0);
  signal c_49_0_8_False_resize: signed(27 downto 0);
  signal c_49_0_8_False_shift: signed(27 downto 0);
  signal c_49_0_3_False_resize: signed(27 downto 0);
  signal c_49_0_3_False_shift: signed(27 downto 0);
  signal c_49_sel: std_logic_vector(1 downto 0);
  signal c_50: signed(26 downto 0);
  signal c_50_24_1_False_resize: signed(26 downto 0);
  signal c_50_24_1_False_shift: signed(26 downto 0);
  signal c_50_27_1_False_resize: signed(26 downto 0);
  signal c_50_27_1_False_shift: signed(26 downto 0);
  signal c_50_0_8_False_resize: signed(26 downto 0);
  signal c_50_0_8_False_shift: signed(26 downto 0);
  signal c_50_0_0_False_resize: signed(26 downto 0);
  signal c_50_0_0_False_shift: signed(26 downto 0);
  signal c_50_sel: std_logic_vector(1 downto 0);
  signal c_51: signed(27 downto 0);
  signal c_51_i0_resize: signed(27 downto 0);
  signal c_51_i1_resize: signed(27 downto 0);
  signal c_51_i0_shift: signed(27 downto 0);
  signal c_51_i1_shift: signed(27 downto 0);
  signal c_51_arith: signed(27 downto 0);
  signal c_51_oshift: signed(27 downto 0);
  signal c_51_sub_sel: std_logic;
  signal c_52: signed(17 downto 0);
  signal c_52_0_0_False_resize: signed(17 downto 0);
  signal c_52_0_0_False_shift: signed(17 downto 0);
  signal c_52_48_0_False_resize: signed(17 downto 0);
  signal c_52_48_0_False_shift: signed(17 downto 0);
  signal c_52_0_2_False_resize: signed(17 downto 0);
  signal c_52_0_2_False_shift: signed(17 downto 0);
  signal c_52_sel: std_logic_vector(1 downto 0);
  signal c_53: signed(24 downto 0);
  signal c_53_48_0_False_resize: signed(24 downto 0);
  signal c_53_48_0_False_shift: signed(24 downto 0);
  signal c_53_21_3_False_resize: signed(24 downto 0);
  signal c_53_21_3_False_shift: signed(24 downto 0);
  signal c_53_42_0_False_resize: signed(24 downto 0);
  signal c_53_42_0_False_shift: signed(24 downto 0);
  signal c_53_15_0_False_resize: signed(24 downto 0);
  signal c_53_15_0_False_shift: signed(24 downto 0);
  signal c_53_sel: std_logic_vector(1 downto 0);
  signal c_54: signed(24 downto 0);
  signal c_54_i0_resize: signed(24 downto 0);
  signal c_54_i1_resize: signed(24 downto 0);
  signal c_54_i0_shift: signed(24 downto 0);
  signal c_54_i1_shift: signed(24 downto 0);
  signal c_54_arith: signed(24 downto 0);
  signal c_54_oshift: signed(24 downto 0);
  signal c_55: signed(29 downto 0);
  signal c_55_54_5_False_resize: signed(29 downto 0);
  signal c_55_54_5_False_shift: signed(29 downto 0);
  signal c_55_12_0_False_resize: signed(29 downto 0);
  signal c_55_12_0_False_shift: signed(29 downto 0);
  signal c_55_27_0_False_resize: signed(29 downto 0);
  signal c_55_27_0_False_shift: signed(29 downto 0);
  signal c_55_48_1_False_resize: signed(29 downto 0);
  signal c_55_48_1_False_shift: signed(29 downto 0);
  signal c_55_sel: std_logic_vector(1 downto 0);
  signal c_56: signed(28 downto 0);
  signal c_56_33_2_False_resize: signed(28 downto 0);
  signal c_56_33_2_False_shift: signed(28 downto 0);
  signal c_56_0_3_False_resize: signed(28 downto 0);
  signal c_56_0_3_False_shift: signed(28 downto 0);
  signal c_56_21_0_False_resize: signed(28 downto 0);
  signal c_56_21_0_False_shift: signed(28 downto 0);
  signal c_56_48_1_False_resize: signed(28 downto 0);
  signal c_56_48_1_False_shift: signed(28 downto 0);
  signal c_56_sel: std_logic_vector(1 downto 0);
  signal c_57: signed(27 downto 0);
  signal c_57_i0_resize: signed(27 downto 0);
  signal c_57_i1_resize: signed(27 downto 0);
  signal c_57_i0_shift: signed(27 downto 0);
  signal c_57_i1_shift: signed(27 downto 0);
  signal c_57_arith: signed(27 downto 0);
  signal c_57_oshift: signed(27 downto 0);
  signal c_57_sub_sel: std_logic;
  signal c_58: signed(27 downto 0);
  signal c_58_12_0_False_resize: signed(27 downto 0);
  signal c_58_12_0_False_shift: signed(27 downto 0);
  signal c_58_48_6_False_resize: signed(27 downto 0);
  signal c_58_48_6_False_shift: signed(27 downto 0);
  signal c_58_0_2_False_resize: signed(27 downto 0);
  signal c_58_0_2_False_shift: signed(27 downto 0);
  signal c_58_48_0_False_resize: signed(27 downto 0);
  signal c_58_48_0_False_shift: signed(27 downto 0);
  signal c_58_sel: std_logic_vector(1 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_59_36_1_False_resize: signed(25 downto 0);
  signal c_59_36_1_False_shift: signed(25 downto 0);
  signal c_59_0_1_False_resize: signed(25 downto 0);
  signal c_59_0_1_False_shift: signed(25 downto 0);
  signal c_59_39_4_False_resize: signed(25 downto 0);
  signal c_59_39_4_False_shift: signed(25 downto 0);
  signal c_59_42_0_False_resize: signed(25 downto 0);
  signal c_59_42_0_False_shift: signed(25 downto 0);
  signal c_59_sel: std_logic_vector(1 downto 0);
  signal c_60: signed(28 downto 0);
  signal c_60_i0_resize: signed(28 downto 0);
  signal c_60_i1_resize: signed(28 downto 0);
  signal c_60_i0_shift: signed(28 downto 0);
  signal c_60_i1_shift: signed(28 downto 0);
  signal c_60_arith: signed(28 downto 0);
  signal c_60_oshift: signed(28 downto 0);
  signal c_60_sub_sel: std_logic;
  signal c_61: signed(28 downto 0);
  signal c_61_51_0_False_resize: signed(28 downto 0);
  signal c_61_51_0_False_shift: signed(28 downto 0);
  signal c_61_0_6_False_resize: signed(28 downto 0);
  signal c_61_0_6_False_shift: signed(28 downto 0);
  signal c_61_21_0_False_resize: signed(28 downto 0);
  signal c_61_21_0_False_shift: signed(28 downto 0);
  signal c_61_27_1_False_resize: signed(28 downto 0);
  signal c_61_27_1_False_shift: signed(28 downto 0);
  signal c_61_sel: std_logic_vector(1 downto 0);
  signal c_62: signed(29 downto 0);
  signal c_62_21_0_False_resize: signed(29 downto 0);
  signal c_62_21_0_False_shift: signed(29 downto 0);
  signal c_62_0_4_False_resize: signed(29 downto 0);
  signal c_62_0_4_False_shift: signed(29 downto 0);
  signal c_62_36_0_False_resize: signed(29 downto 0);
  signal c_62_36_0_False_shift: signed(29 downto 0);
  signal c_62_54_7_False_resize: signed(29 downto 0);
  signal c_62_54_7_False_shift: signed(29 downto 0);
  signal c_62_sel: std_logic_vector(1 downto 0);
  signal c_63: signed(27 downto 0);
  signal c_63_i0_resize: signed(27 downto 0);
  signal c_63_i1_resize: signed(27 downto 0);
  signal c_63_i0_shift: signed(27 downto 0);
  signal c_63_i1_shift: signed(27 downto 0);
  signal c_63_arith: signed(27 downto 0);
  signal c_63_oshift: signed(27 downto 0);
  signal c_63_sub_sel: std_logic;
  signal c_64: signed(27 downto 0);
  signal c_64_0_8_False_resize: signed(27 downto 0);
  signal c_64_0_8_False_shift: signed(27 downto 0);
  signal c_64_3_1_False_resize: signed(27 downto 0);
  signal c_64_3_1_False_shift: signed(27 downto 0);
  signal c_64_15_0_False_resize: signed(27 downto 0);
  signal c_64_15_0_False_shift: signed(27 downto 0);
  signal c_64_0_0_False_resize: signed(27 downto 0);
  signal c_64_0_0_False_shift: signed(27 downto 0);
  signal c_64_sel: std_logic_vector(1 downto 0);
  signal c_65: signed(29 downto 0);
  signal c_65_9_11_False_resize: signed(29 downto 0);
  signal c_65_9_11_False_shift: signed(29 downto 0);
  signal c_65_0_0_False_resize: signed(29 downto 0);
  signal c_65_0_0_False_shift: signed(29 downto 0);
  signal c_65_24_0_False_resize: signed(29 downto 0);
  signal c_65_24_0_False_shift: signed(29 downto 0);
  signal c_65_39_0_False_resize: signed(29 downto 0);
  signal c_65_39_0_False_shift: signed(29 downto 0);
  signal c_65_sel: std_logic_vector(1 downto 0);
  signal c_66: signed(29 downto 0);
  signal c_66_i0_resize: signed(29 downto 0);
  signal c_66_i1_resize: signed(29 downto 0);
  signal c_66_i0_shift: signed(29 downto 0);
  signal c_66_i1_shift: signed(29 downto 0);
  signal c_66_arith: signed(29 downto 0);
  signal c_66_oshift: signed(29 downto 0);
  signal c_66_sub_sel: std_logic;
  signal c_67: signed(29 downto 0);
  signal c_67_18_1_False_resize: signed(29 downto 0);
  signal c_67_18_1_False_shift: signed(29 downto 0);
  signal c_67_0_0_False_resize: signed(29 downto 0);
  signal c_67_0_0_False_shift: signed(29 downto 0);
  signal c_67_24_0_False_resize: signed(29 downto 0);
  signal c_67_24_0_False_shift: signed(29 downto 0);
  signal c_67_sel: std_logic_vector(1 downto 0);
  signal c_68: signed(28 downto 0);
  signal c_68_48_7_False_resize: signed(28 downto 0);
  signal c_68_48_7_False_shift: signed(28 downto 0);
  signal c_68_0_13_False_resize: signed(28 downto 0);
  signal c_68_0_13_False_shift: signed(28 downto 0);
  signal c_68_24_0_False_resize: signed(28 downto 0);
  signal c_68_24_0_False_shift: signed(28 downto 0);
  signal c_68_0_2_False_resize: signed(28 downto 0);
  signal c_68_0_2_False_shift: signed(28 downto 0);
  signal c_68_sel: std_logic_vector(1 downto 0);
  signal c_69: signed(29 downto 0);
  signal c_69_i0_resize: signed(29 downto 0);
  signal c_69_i1_resize: signed(29 downto 0);
  signal c_69_i0_shift: signed(29 downto 0);
  signal c_69_i1_shift: signed(29 downto 0);
  signal c_69_arith: signed(29 downto 0);
  signal c_69_oshift: signed(29 downto 0);
  signal c_69_sub_sel: std_logic;
  signal c_70: signed(29 downto 0);
  signal c_70_63_0_False_resize: signed(29 downto 0);
  signal c_70_63_0_False_shift: signed(29 downto 0);
  signal c_70_12_0_False_resize: signed(29 downto 0);
  signal c_70_12_0_False_shift: signed(29 downto 0);
  signal c_70_24_0_False_resize: signed(29 downto 0);
  signal c_70_24_0_False_shift: signed(29 downto 0);
  signal c_70_30_3_False_resize: signed(29 downto 0);
  signal c_70_30_3_False_shift: signed(29 downto 0);
  signal c_70_sel: std_logic_vector(1 downto 0);
  signal c_71: signed(23 downto 0);
  signal c_71_0_1_False_resize: signed(23 downto 0);
  signal c_71_0_1_False_shift: signed(23 downto 0);
  signal c_71_0_8_False_resize: signed(23 downto 0);
  signal c_71_0_8_False_shift: signed(23 downto 0);
  signal c_71_69_0_False_resize: signed(23 downto 0);
  signal c_71_69_0_False_shift: signed(23 downto 0);
  signal c_71_0_0_False_resize: signed(23 downto 0);
  signal c_71_0_0_False_shift: signed(23 downto 0);
  signal c_71_sel: std_logic_vector(1 downto 0);
  signal c_72: signed(29 downto 0);
  signal c_72_i0_resize: signed(29 downto 0);
  signal c_72_i1_resize: signed(29 downto 0);
  signal c_72_i0_shift: signed(29 downto 0);
  signal c_72_i1_shift: signed(29 downto 0);
  signal c_72_arith: signed(29 downto 0);
  signal c_72_oshift: signed(29 downto 0);
  signal c_72_sub_sel: std_logic;
  signal c_73: signed(29 downto 0);
  signal c_73_15_0_False_resize: signed(29 downto 0);
  signal c_73_15_0_False_shift: signed(29 downto 0);
  signal c_73_69_0_False_resize: signed(29 downto 0);
  signal c_73_69_0_False_shift: signed(29 downto 0);
  signal c_73_0_0_False_resize: signed(29 downto 0);
  signal c_73_0_0_False_shift: signed(29 downto 0);
  signal c_73_72_0_False_resize: signed(29 downto 0);
  signal c_73_72_0_False_shift: signed(29 downto 0);
  signal c_73_sel: std_logic_vector(1 downto 0);
  signal c_74: signed(29 downto 0);
  signal c_74_63_0_False_resize: signed(29 downto 0);
  signal c_74_63_0_False_shift: signed(29 downto 0);
  signal c_74_48_0_False_resize: signed(29 downto 0);
  signal c_74_48_0_False_shift: signed(29 downto 0);
  signal c_74_72_0_False_resize: signed(29 downto 0);
  signal c_74_72_0_False_shift: signed(29 downto 0);
  signal c_74_33_0_False_resize: signed(29 downto 0);
  signal c_74_33_0_False_shift: signed(29 downto 0);
  signal c_74_sel: std_logic_vector(1 downto 0);
  signal c_75: signed(25 downto 0);
  signal c_75_i0_resize: signed(29 downto 0);
  signal c_75_i1_resize: signed(29 downto 0);
  signal c_75_i0_shift: signed(29 downto 0);
  signal c_75_i1_shift: signed(29 downto 0);
  signal c_75_arith: signed(29 downto 0);
  signal c_75_oshift: signed(25 downto 0);
  signal c_75_sub_sel: std_logic;
  signal c_76: signed(27 downto 0);
  signal c_76_51_7_False_resize: signed(27 downto 0);
  signal c_76_51_7_False_shift: signed(27 downto 0);
  signal c_76_21_0_False_resize: signed(27 downto 0);
  signal c_76_21_0_False_shift: signed(27 downto 0);
  signal c_76_48_2_False_resize: signed(27 downto 0);
  signal c_76_48_2_False_shift: signed(27 downto 0);
  signal c_76_60_1_False_resize: signed(27 downto 0);
  signal c_76_60_1_False_shift: signed(27 downto 0);
  signal c_76_sel: std_logic_vector(1 downto 0);
  signal c_77: signed(27 downto 0);
  signal c_77_0_9_False_resize: signed(27 downto 0);
  signal c_77_0_9_False_shift: signed(27 downto 0);
  signal c_77_30_2_False_resize: signed(27 downto 0);
  signal c_77_30_2_False_shift: signed(27 downto 0);
  signal c_77_27_2_False_resize: signed(27 downto 0);
  signal c_77_27_2_False_shift: signed(27 downto 0);
  signal c_77_42_0_False_resize: signed(27 downto 0);
  signal c_77_42_0_False_shift: signed(27 downto 0);
  signal c_77_sel: std_logic_vector(1 downto 0);
  signal c_78: signed(28 downto 0);
  signal c_78_i0_resize: signed(28 downto 0);
  signal c_78_i1_resize: signed(28 downto 0);
  signal c_78_i0_shift: signed(28 downto 0);
  signal c_78_i1_shift: signed(28 downto 0);
  signal c_78_arith: signed(28 downto 0);
  signal c_78_oshift: signed(28 downto 0);
  signal c_78_sub_sel: std_logic;
  signal c_79: signed(28 downto 0);
  signal c_79_78_3_False_resize: signed(28 downto 0);
  signal c_79_78_3_False_shift: signed(28 downto 0);
  signal c_79_42_0_False_resize: signed(28 downto 0);
  signal c_79_42_0_False_shift: signed(28 downto 0);
  signal c_79_51_5_False_resize: signed(28 downto 0);
  signal c_79_51_5_False_shift: signed(28 downto 0);
  signal c_79_3_8_False_resize: signed(28 downto 0);
  signal c_79_3_8_False_shift: signed(28 downto 0);
  signal c_79_sel: std_logic_vector(1 downto 0);
  signal c_80: signed(28 downto 0);
  signal c_80_57_4_False_resize: signed(28 downto 0);
  signal c_80_57_4_False_shift: signed(28 downto 0);
  signal c_80_78_0_False_resize: signed(28 downto 0);
  signal c_80_78_0_False_shift: signed(28 downto 0);
  signal c_80_54_0_False_resize: signed(28 downto 0);
  signal c_80_54_0_False_shift: signed(28 downto 0);
  signal c_80_60_0_False_resize: signed(28 downto 0);
  signal c_80_60_0_False_shift: signed(28 downto 0);
  signal c_80_sel: std_logic_vector(1 downto 0);
  signal c_81: signed(28 downto 0);
  signal c_81_i0_resize: signed(28 downto 0);
  signal c_81_i1_resize: signed(28 downto 0);
  signal c_81_i0_shift: signed(28 downto 0);
  signal c_81_i1_shift: signed(28 downto 0);
  signal c_81_arith: signed(28 downto 0);
  signal c_81_oshift: signed(28 downto 0);
  signal c_81_sub_sel: std_logic;
  signal c_82: signed(25 downto 0);
  signal c_82_33_6_False_resize: signed(25 downto 0);
  signal c_82_33_6_False_shift: signed(25 downto 0);
  signal c_82_48_0_False_resize: signed(25 downto 0);
  signal c_82_48_0_False_shift: signed(25 downto 0);
  signal c_82_21_6_False_resize: signed(25 downto 0);
  signal c_82_21_6_False_shift: signed(25 downto 0);
  signal c_82_0_0_False_resize: signed(25 downto 0);
  signal c_82_0_0_False_shift: signed(25 downto 0);
  signal c_82_sel: std_logic_vector(1 downto 0);
  signal c_83: signed(29 downto 0);
  signal c_83_57_0_False_resize: signed(29 downto 0);
  signal c_83_57_0_False_shift: signed(29 downto 0);
  signal c_83_48_0_False_resize: signed(29 downto 0);
  signal c_83_48_0_False_shift: signed(29 downto 0);
  signal c_83_66_0_False_resize: signed(29 downto 0);
  signal c_83_66_0_False_shift: signed(29 downto 0);
  signal c_83_27_4_False_resize: signed(29 downto 0);
  signal c_83_27_4_False_shift: signed(29 downto 0);
  signal c_83_sel: std_logic_vector(1 downto 0);
  signal c_84: signed(29 downto 0);
  signal c_84_i0_resize: signed(29 downto 0);
  signal c_84_i1_resize: signed(29 downto 0);
  signal c_84_i0_shift: signed(29 downto 0);
  signal c_84_i1_shift: signed(29 downto 0);
  signal c_84_arith: signed(29 downto 0);
  signal c_84_oshift: signed(29 downto 0);
  signal c_84_sub_sel: std_logic;
  signal c_85: signed(27 downto 0);
  signal c_85_57_0_False_resize: signed(27 downto 0);
  signal c_85_57_0_False_shift: signed(27 downto 0);
  signal c_85_0_0_False_resize: signed(27 downto 0);
  signal c_85_0_0_False_shift: signed(27 downto 0);
  signal c_85_3_0_False_resize: signed(27 downto 0);
  signal c_85_3_0_False_shift: signed(27 downto 0);
  signal c_85_45_0_False_resize: signed(27 downto 0);
  signal c_85_45_0_False_shift: signed(27 downto 0);
  signal c_85_sel: std_logic_vector(1 downto 0);
  signal c_86: signed(29 downto 0);
  signal c_86_18_0_False_resize: signed(29 downto 0);
  signal c_86_18_0_False_shift: signed(29 downto 0);
  signal c_86_69_0_False_resize: signed(29 downto 0);
  signal c_86_69_0_False_shift: signed(29 downto 0);
  signal c_86_75_0_False_resize: signed(29 downto 0);
  signal c_86_75_0_False_shift: signed(29 downto 0);
  signal c_86_84_0_False_resize: signed(29 downto 0);
  signal c_86_84_0_False_shift: signed(29 downto 0);
  signal c_86_sel: std_logic_vector(1 downto 0);
  signal c_87: signed(24 downto 0);
  signal c_87_i0_resize: signed(26 downto 0);
  signal c_87_i1_resize: signed(26 downto 0);
  signal c_87_i0_shift: signed(26 downto 0);
  signal c_87_i1_shift: signed(26 downto 0);
  signal c_87_arith: signed(26 downto 0);
  signal c_87_oshift: signed(24 downto 0);
  signal c_87_sub_sel: std_logic;
  signal c_88: signed(29 downto 0);
  signal c_88_57_1_False_resize: signed(29 downto 0);
  signal c_88_57_1_False_shift: signed(29 downto 0);
  signal c_88_81_1_False_resize: signed(29 downto 0);
  signal c_88_81_1_False_shift: signed(29 downto 0);
  signal c_88_66_0_False_resize: signed(29 downto 0);
  signal c_88_66_0_False_shift: signed(29 downto 0);
  signal c_88_0_8_False_resize: signed(29 downto 0);
  signal c_88_0_8_False_shift: signed(29 downto 0);
  signal c_88_sel: std_logic_vector(1 downto 0);
  signal c_89: signed(27 downto 0);
  signal c_89_0_0_False_resize: signed(27 downto 0);
  signal c_89_0_0_False_shift: signed(27 downto 0);
  signal c_89_66_0_False_resize: signed(27 downto 0);
  signal c_89_66_0_False_shift: signed(27 downto 0);
  signal c_89_81_3_False_resize: signed(27 downto 0);
  signal c_89_81_3_False_shift: signed(27 downto 0);
  signal c_89_84_1_False_resize: signed(27 downto 0);
  signal c_89_84_1_False_shift: signed(27 downto 0);
  signal c_89_sel: std_logic_vector(1 downto 0);
  signal c_90: signed(29 downto 0);
  signal c_90_i0_resize: signed(29 downto 0);
  signal c_90_i1_resize: signed(29 downto 0);
  signal c_90_i0_shift: signed(29 downto 0);
  signal c_90_i1_shift: signed(29 downto 0);
  signal c_90_arith: signed(29 downto 0);
  signal c_90_oshift: signed(29 downto 0);
  signal c_90_sub_sel: std_logic;
  signal c_91: signed(25 downto 0);
  signal c_91_48_4_False_resize: signed(25 downto 0);
  signal c_91_48_4_False_shift: signed(25 downto 0);
  signal c_91_0_1_False_resize: signed(25 downto 0);
  signal c_91_0_1_False_shift: signed(25 downto 0);
  signal c_91_0_0_False_resize: signed(25 downto 0);
  signal c_91_0_0_False_shift: signed(25 downto 0);
  signal c_91_90_0_False_resize: signed(25 downto 0);
  signal c_91_90_0_False_shift: signed(25 downto 0);
  signal c_91_sel: std_logic_vector(1 downto 0);
  signal c_92: signed(24 downto 0);
  signal c_92_87_0_False_resize: signed(24 downto 0);
  signal c_92_87_0_False_shift: signed(24 downto 0);
  signal c_92_48_2_False_resize: signed(24 downto 0);
  signal c_92_48_2_False_shift: signed(24 downto 0);
  signal c_92_27_0_False_resize: signed(24 downto 0);
  signal c_92_27_0_False_shift: signed(24 downto 0);
  signal c_92_90_1_False_resize: signed(24 downto 0);
  signal c_92_90_1_False_shift: signed(24 downto 0);
  signal c_92_sel: std_logic_vector(1 downto 0);
  signal c_93: signed(25 downto 0);
  signal c_93_i0_resize: signed(25 downto 0);
  signal c_93_i1_resize: signed(25 downto 0);
  signal c_93_i0_shift: signed(25 downto 0);
  signal c_93_i1_shift: signed(25 downto 0);
  signal c_93_arith: signed(25 downto 0);
  signal c_93_oshift: signed(25 downto 0);
  signal c_93_sub_sel: std_logic;
  signal c_94: signed(26 downto 0);
  signal c_94_42_4_False_resize: signed(26 downto 0);
  signal c_94_42_4_False_shift: signed(26 downto 0);
  signal c_94_0_0_False_resize: signed(26 downto 0);
  signal c_94_0_0_False_shift: signed(26 downto 0);
  signal c_94_39_0_False_resize: signed(26 downto 0);
  signal c_94_39_0_False_shift: signed(26 downto 0);
  signal c_94_45_2_False_resize: signed(26 downto 0);
  signal c_94_45_2_False_shift: signed(26 downto 0);
  signal c_94_sel: std_logic_vector(1 downto 0);
  signal c_95: signed(25 downto 0);
  signal c_95_60_0_False_resize: signed(25 downto 0);
  signal c_95_60_0_False_shift: signed(25 downto 0);
  signal c_95_57_0_False_resize: signed(25 downto 0);
  signal c_95_57_0_False_shift: signed(25 downto 0);
  signal c_95_39_1_False_resize: signed(25 downto 0);
  signal c_95_39_1_False_shift: signed(25 downto 0);
  signal c_95_15_0_False_resize: signed(25 downto 0);
  signal c_95_15_0_False_shift: signed(25 downto 0);
  signal c_95_sel: std_logic_vector(1 downto 0);
  signal c_96: signed(25 downto 0);
  signal c_96_i0_resize: signed(25 downto 0);
  signal c_96_i1_resize: signed(25 downto 0);
  signal c_96_i0_shift: signed(25 downto 0);
  signal c_96_i1_shift: signed(25 downto 0);
  signal c_96_arith: signed(25 downto 0);
  signal c_96_oshift: signed(25 downto 0);
  signal c_96_sub_sel: std_logic;
  signal c_97: signed(29 downto 0);
  signal c_97_45_0_False_resize: signed(29 downto 0);
  signal c_97_45_0_False_shift: signed(29 downto 0);
  signal c_97_36_0_False_resize: signed(29 downto 0);
  signal c_97_36_0_False_shift: signed(29 downto 0);
  signal c_97_3_0_False_resize: signed(29 downto 0);
  signal c_97_3_0_False_shift: signed(29 downto 0);
  signal c_97_93_0_False_resize: signed(29 downto 0);
  signal c_97_93_0_False_shift: signed(29 downto 0);
  signal c_97_sel: std_logic_vector(1 downto 0);
  signal c_98: signed(29 downto 0);
  signal c_98_90_0_False_resize: signed(29 downto 0);
  signal c_98_90_0_False_shift: signed(29 downto 0);
  signal c_98_6_0_False_resize: signed(29 downto 0);
  signal c_98_6_0_False_shift: signed(29 downto 0);
  signal c_98_63_0_False_resize: signed(29 downto 0);
  signal c_98_63_0_False_shift: signed(29 downto 0);
  signal c_98_sel: std_logic_vector(1 downto 0);
  signal c_99: signed(24 downto 0);
  signal c_99_i0_resize: signed(29 downto 0);
  signal c_99_i1_resize: signed(29 downto 0);
  signal c_99_i0_shift: signed(29 downto 0);
  signal c_99_i1_shift: signed(29 downto 0);
  signal c_99_arith: signed(29 downto 0);
  signal c_99_oshift: signed(24 downto 0);
  signal c_99_sub_sel: std_logic;
  signal c_100: signed(25 downto 0);
  signal c_100_60_0_False_resize: signed(25 downto 0);
  signal c_100_60_0_False_shift: signed(25 downto 0);
  signal c_100_48_0_False_resize: signed(25 downto 0);
  signal c_100_48_0_False_shift: signed(25 downto 0);
  signal c_100_0_10_False_resize: signed(25 downto 0);
  signal c_100_0_10_False_shift: signed(25 downto 0);
  signal c_100_78_0_False_resize: signed(25 downto 0);
  signal c_100_78_0_False_shift: signed(25 downto 0);
  signal c_100_sel: std_logic_vector(1 downto 0);
  signal c_101: signed(22 downto 0);
  signal c_101_93_0_False_resize: signed(22 downto 0);
  signal c_101_93_0_False_shift: signed(22 downto 0);
  signal c_101_0_3_False_resize: signed(22 downto 0);
  signal c_101_0_3_False_shift: signed(22 downto 0);
  signal c_101_87_0_False_resize: signed(22 downto 0);
  signal c_101_87_0_False_shift: signed(22 downto 0);
  signal c_101_0_0_False_resize: signed(22 downto 0);
  signal c_101_0_0_False_shift: signed(22 downto 0);
  signal c_101_sel: std_logic_vector(1 downto 0);
  signal c_102: signed(25 downto 0);
  signal c_102_i0_resize: signed(25 downto 0);
  signal c_102_i1_resize: signed(25 downto 0);
  signal c_102_i0_shift: signed(25 downto 0);
  signal c_102_i1_shift: signed(25 downto 0);
  signal c_102_arith: signed(25 downto 0);
  signal c_102_oshift: signed(25 downto 0);
  signal c_102_sub_sel: std_logic;
  signal c_103: signed(29 downto 0);
  signal c_103_0_0_False_resize: signed(29 downto 0);
  signal c_103_0_0_False_shift: signed(29 downto 0);
  signal c_103_84_0_False_resize: signed(29 downto 0);
  signal c_103_84_0_False_shift: signed(29 downto 0);
  signal c_103_93_1_False_resize: signed(29 downto 0);
  signal c_103_93_1_False_shift: signed(29 downto 0);
  signal c_103_48_0_False_resize: signed(29 downto 0);
  signal c_103_48_0_False_shift: signed(29 downto 0);
  signal c_103_sel: std_logic_vector(1 downto 0);
  signal c_104: signed(28 downto 0);
  signal c_104_90_4_False_resize: signed(28 downto 0);
  signal c_104_90_4_False_shift: signed(28 downto 0);
  signal c_104_0_1_False_resize: signed(28 downto 0);
  signal c_104_0_1_False_shift: signed(28 downto 0);
  signal c_104_0_2_False_resize: signed(28 downto 0);
  signal c_104_0_2_False_shift: signed(28 downto 0);
  signal c_104_36_0_False_resize: signed(28 downto 0);
  signal c_104_36_0_False_shift: signed(28 downto 0);
  signal c_104_sel: std_logic_vector(1 downto 0);
  signal c_105: signed(27 downto 0);
  signal c_105_i0_resize: signed(27 downto 0);
  signal c_105_i1_resize: signed(27 downto 0);
  signal c_105_i0_shift: signed(27 downto 0);
  signal c_105_i1_shift: signed(27 downto 0);
  signal c_105_arith: signed(27 downto 0);
  signal c_105_oshift: signed(27 downto 0);
  signal c_105_sub_sel: std_logic;
  signal c_106: signed(29 downto 0);
  signal c_106_63_0_False_resize: signed(29 downto 0);
  signal c_106_63_0_False_shift: signed(29 downto 0);
  signal c_106_36_2_False_resize: signed(29 downto 0);
  signal c_106_36_2_False_shift: signed(29 downto 0);
  signal c_106_99_5_False_resize: signed(29 downto 0);
  signal c_106_99_5_False_shift: signed(29 downto 0);
  signal c_106_81_0_False_resize: signed(29 downto 0);
  signal c_106_81_0_False_shift: signed(29 downto 0);
  signal c_106_sel: std_logic_vector(1 downto 0);
  signal c_107: signed(29 downto 0);
  signal c_107_33_0_False_resize: signed(29 downto 0);
  signal c_107_33_0_False_shift: signed(29 downto 0);
  signal c_107_72_2_False_resize: signed(29 downto 0);
  signal c_107_72_2_False_shift: signed(29 downto 0);
  signal c_107_48_2_False_resize: signed(29 downto 0);
  signal c_107_48_2_False_shift: signed(29 downto 0);
  signal c_107_66_0_False_resize: signed(29 downto 0);
  signal c_107_66_0_False_shift: signed(29 downto 0);
  signal c_107_sel: std_logic_vector(1 downto 0);
  signal c_108: signed(25 downto 0);
  signal c_108_i0_resize: signed(25 downto 0);
  signal c_108_i1_resize: signed(25 downto 0);
  signal c_108_i0_shift: signed(25 downto 0);
  signal c_108_i1_shift: signed(25 downto 0);
  signal c_108_arith: signed(25 downto 0);
  signal c_108_oshift: signed(25 downto 0);
  signal c_108_sub_sel: std_logic;
  signal c_109: signed(26 downto 0);
  signal c_109_48_0_False_resize: signed(26 downto 0);
  signal c_109_48_0_False_shift: signed(26 downto 0);
  signal c_109_18_0_False_resize: signed(26 downto 0);
  signal c_109_18_0_False_shift: signed(26 downto 0);
  signal c_109_84_2_False_resize: signed(26 downto 0);
  signal c_109_84_2_False_shift: signed(26 downto 0);
  signal c_109_90_1_False_resize: signed(26 downto 0);
  signal c_109_90_1_False_shift: signed(26 downto 0);
  signal c_109_sel: std_logic_vector(1 downto 0);
  signal c_110: signed(26 downto 0);
  signal c_110_99_0_False_resize: signed(26 downto 0);
  signal c_110_99_0_False_shift: signed(26 downto 0);
  signal c_110_21_6_False_resize: signed(26 downto 0);
  signal c_110_21_6_False_shift: signed(26 downto 0);
  signal c_110_105_0_False_resize: signed(26 downto 0);
  signal c_110_105_0_False_shift: signed(26 downto 0);
  signal c_110_42_3_False_resize: signed(26 downto 0);
  signal c_110_42_3_False_shift: signed(26 downto 0);
  signal c_110_sel: std_logic_vector(1 downto 0);
  signal c_111: signed(25 downto 0);
  signal c_111_i0_resize: signed(25 downto 0);
  signal c_111_i1_resize: signed(25 downto 0);
  signal c_111_i0_shift: signed(25 downto 0);
  signal c_111_i1_shift: signed(25 downto 0);
  signal c_111_arith: signed(25 downto 0);
  signal c_111_oshift: signed(25 downto 0);
  signal c_112: signed(24 downto 0);
  signal c_112_72_2_False_resize: signed(24 downto 0);
  signal c_112_72_2_False_shift: signed(24 downto 0);
  signal c_112_99_0_False_resize: signed(24 downto 0);
  signal c_112_99_0_False_shift: signed(24 downto 0);
  signal c_112_0_0_False_resize: signed(24 downto 0);
  signal c_112_0_0_False_shift: signed(24 downto 0);
  signal c_112_81_1_False_resize: signed(24 downto 0);
  signal c_112_81_1_False_shift: signed(24 downto 0);
  signal c_112_sel: std_logic_vector(1 downto 0);
  signal c_113: signed(28 downto 0);
  signal c_113_96_0_False_resize: signed(28 downto 0);
  signal c_113_96_0_False_shift: signed(28 downto 0);
  signal c_113_60_0_False_resize: signed(28 downto 0);
  signal c_113_60_0_False_shift: signed(28 downto 0);
  signal c_113_102_1_False_resize: signed(28 downto 0);
  signal c_113_102_1_False_shift: signed(28 downto 0);
  signal c_113_48_0_False_resize: signed(28 downto 0);
  signal c_113_48_0_False_shift: signed(28 downto 0);
  signal c_113_sel: std_logic_vector(1 downto 0);
  signal c_114: signed(25 downto 0);
  signal c_114_i0_resize: signed(25 downto 0);
  signal c_114_i1_resize: signed(25 downto 0);
  signal c_114_i0_shift: signed(25 downto 0);
  signal c_114_i1_shift: signed(25 downto 0);
  signal c_114_arith: signed(25 downto 0);
  signal c_114_oshift: signed(25 downto 0);
  signal c_114_sub_sel: std_logic;
  signal c_115: signed(27 downto 0);
  signal c_115_27_2_False_resize: signed(27 downto 0);
  signal c_115_27_2_False_shift: signed(27 downto 0);
  signal c_115_51_0_False_resize: signed(27 downto 0);
  signal c_115_51_0_False_shift: signed(27 downto 0);
  signal c_115_102_0_False_resize: signed(27 downto 0);
  signal c_115_102_0_False_shift: signed(27 downto 0);
  signal c_115_96_3_False_resize: signed(27 downto 0);
  signal c_115_96_3_False_shift: signed(27 downto 0);
  signal c_115_sel: std_logic_vector(1 downto 0);
  signal c_116: signed(27 downto 0);
  signal c_116_54_4_False_resize: signed(27 downto 0);
  signal c_116_54_4_False_shift: signed(27 downto 0);
  signal c_116_102_0_False_resize: signed(27 downto 0);
  signal c_116_102_0_False_shift: signed(27 downto 0);
  signal c_116_72_0_False_resize: signed(27 downto 0);
  signal c_116_72_0_False_shift: signed(27 downto 0);
  signal c_116_105_0_False_resize: signed(27 downto 0);
  signal c_116_105_0_False_shift: signed(27 downto 0);
  signal c_116_sel: std_logic_vector(1 downto 0);
  signal c_117: signed(25 downto 0);
  signal c_117_i0_resize: signed(25 downto 0);
  signal c_117_i1_resize: signed(25 downto 0);
  signal c_117_i0_shift: signed(25 downto 0);
  signal c_117_i1_shift: signed(25 downto 0);
  signal c_117_arith: signed(25 downto 0);
  signal c_117_oshift: signed(25 downto 0);
  signal c_118: signed(25 downto 0);
  signal c_118_102_2_False_resize: signed(25 downto 0);
  signal c_118_102_2_False_shift: signed(25 downto 0);
  signal c_118_111_0_False_resize: signed(25 downto 0);
  signal c_118_111_0_False_shift: signed(25 downto 0);
  signal c_118_96_0_False_resize: signed(25 downto 0);
  signal c_118_96_0_False_shift: signed(25 downto 0);
  signal c_118_108_1_False_resize: signed(25 downto 0);
  signal c_118_108_1_False_shift: signed(25 downto 0);
  signal c_118_sel: std_logic_vector(1 downto 0);
  signal c_119: signed(25 downto 0);
  signal c_119_resize: signed(25 downto 0);
  signal c_120: signed(25 downto 0);
  signal c_120_96_1_False_resize: signed(25 downto 0);
  signal c_120_96_1_False_shift: signed(25 downto 0);
  signal c_120_48_0_False_resize: signed(25 downto 0);
  signal c_120_48_0_False_shift: signed(25 downto 0);
  signal c_120_93_0_False_resize: signed(25 downto 0);
  signal c_120_93_0_False_shift: signed(25 downto 0);
  signal c_120_sel: std_logic_vector(1 downto 0);
  signal c_121: signed(25 downto 0);
  signal c_121_resize: signed(25 downto 0);
  signal c_122: signed(25 downto 0);
  signal c_122_93_0_False_resize: signed(25 downto 0);
  signal c_122_93_0_False_shift: signed(25 downto 0);
  signal c_122_102_0_False_resize: signed(25 downto 0);
  signal c_122_102_0_False_shift: signed(25 downto 0);
  signal c_122_114_0_False_resize: signed(25 downto 0);
  signal c_122_114_0_False_shift: signed(25 downto 0);
  signal c_122_105_0_False_resize: signed(25 downto 0);
  signal c_122_105_0_False_shift: signed(25 downto 0);
  signal c_122_sel: std_logic_vector(1 downto 0);
  signal c_123: signed(25 downto 0);
  signal c_123_resize: signed(25 downto 0);
  signal c_124: signed(25 downto 0);
  signal c_124_102_0_False_resize: signed(25 downto 0);
  signal c_124_102_0_False_shift: signed(25 downto 0);
  signal c_124_60_0_False_resize: signed(25 downto 0);
  signal c_124_60_0_False_shift: signed(25 downto 0);
  signal c_124_72_0_False_resize: signed(25 downto 0);
  signal c_124_72_0_False_shift: signed(25 downto 0);
  signal c_124_66_0_False_resize: signed(25 downto 0);
  signal c_124_66_0_False_shift: signed(25 downto 0);
  signal c_124_sel: std_logic_vector(1 downto 0);
  signal c_125: signed(25 downto 0);
  signal c_125_resize: signed(25 downto 0);
  signal c_126: signed(25 downto 0);
  signal c_126_72_3_False_resize: signed(25 downto 0);
  signal c_126_72_3_False_shift: signed(25 downto 0);
  signal c_126_75_0_False_resize: signed(25 downto 0);
  signal c_126_75_0_False_shift: signed(25 downto 0);
  signal c_126_111_0_False_resize: signed(25 downto 0);
  signal c_126_111_0_False_shift: signed(25 downto 0);
  signal c_126_99_3_False_resize: signed(25 downto 0);
  signal c_126_99_3_False_shift: signed(25 downto 0);
  signal c_126_sel: std_logic_vector(1 downto 0);
  signal c_127: signed(25 downto 0);
  signal c_127_resize: signed(25 downto 0);
  signal c_128: signed(25 downto 0);
  signal c_128_87_1_False_resize: signed(25 downto 0);
  signal c_128_87_1_False_shift: signed(25 downto 0);
  signal c_128_54_0_False_resize: signed(25 downto 0);
  signal c_128_54_0_False_shift: signed(25 downto 0);
  signal c_128_78_0_False_resize: signed(25 downto 0);
  signal c_128_78_0_False_shift: signed(25 downto 0);
  signal c_128_117_0_False_resize: signed(25 downto 0);
  signal c_128_117_0_False_shift: signed(25 downto 0);
  signal c_128_sel: std_logic_vector(1 downto 0);
  signal c_129: signed(25 downto 0);
  signal c_129_resize: signed(25 downto 0);
  signal c_130: signed(25 downto 0);
  signal c_130_114_0_False_resize: signed(25 downto 0);
  signal c_130_114_0_False_shift: signed(25 downto 0);
  signal c_130_102_0_False_resize: signed(25 downto 0);
  signal c_130_102_0_False_shift: signed(25 downto 0);
  signal c_130_48_0_False_resize: signed(25 downto 0);
  signal c_130_48_0_False_shift: signed(25 downto 0);
  signal c_130_sel: std_logic_vector(1 downto 0);
  signal c_131: signed(25 downto 0);
  signal c_131_resize: signed(25 downto 0);
  signal c_132: signed(25 downto 0);
  signal c_132_117_0_False_resize: signed(25 downto 0);
  signal c_132_117_0_False_shift: signed(25 downto 0);
  signal c_132_111_0_False_resize: signed(25 downto 0);
  signal c_132_111_0_False_shift: signed(25 downto 0);
  signal c_132_105_1_False_resize: signed(25 downto 0);
  signal c_132_105_1_False_shift: signed(25 downto 0);
  signal c_132_24_1_False_resize: signed(25 downto 0);
  signal c_132_24_1_False_shift: signed(25 downto 0);
  signal c_132_sel: std_logic_vector(1 downto 0);
  signal c_133: signed(25 downto 0);
  signal c_133_resize: signed(25 downto 0);
  signal c_134: signed(25 downto 0);
  signal c_134_117_0_False_resize: signed(25 downto 0);
  signal c_134_117_0_False_shift: signed(25 downto 0);
  signal c_134_87_1_False_resize: signed(25 downto 0);
  signal c_134_87_1_False_shift: signed(25 downto 0);
  signal c_134_12_0_False_resize: signed(25 downto 0);
  signal c_134_12_0_False_shift: signed(25 downto 0);
  signal c_134_96_1_False_resize: signed(25 downto 0);
  signal c_134_96_1_False_shift: signed(25 downto 0);
  signal c_134_sel: std_logic_vector(1 downto 0);
  signal c_135: signed(25 downto 0);
  signal c_135_resize: signed(25 downto 0);
  signal c_136: signed(25 downto 0);
  signal c_136_108_0_False_resize: signed(25 downto 0);
  signal c_136_108_0_False_shift: signed(25 downto 0);
  signal c_136_105_1_False_resize: signed(25 downto 0);
  signal c_136_105_1_False_shift: signed(25 downto 0);
  signal c_136_sel: std_logic_vector(0 downto 0);
  signal c_137: signed(25 downto 0);
  signal c_137_resize: signed(25 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 119
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_119);
    end if;
  end process;
  -- output node 1 with id 121
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_121);
    end if;
  end process;
  -- output node 2 with id 123
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_123);
    end if;
  end process;
  -- output node 3 with id 125
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_125);
    end if;
  end process;
  -- output node 4 with id 127
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_127);
    end if;
  end process;
  -- output node 5 with id 129
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_129);
    end if;
  end process;
  -- output node 6 with id 131
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_131);
    end if;
  end process;
  -- output node 7 with id 133
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_133);
    end if;
  end process;
  -- output node 8 with id 135
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_135);
    end if;
  end process;
  -- output node 9 with id 137
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_137);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[64], [64], [16], [1]]
  c_1_0_4_False_resize <= resize(c_0, 22);
  c_1_0_4_False_shift <= shift_left(c_1_0_4_False_resize, 4);
  c_1_0_6_False_resize <= resize(c_0, 22);
  c_1_0_6_False_shift <= shift_left(c_1_0_6_False_resize, 6);
  c_1_0_0_False_resize <= resize(c_0, 22);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  with config_select_1 select c_1_sel <= 
    "00" when "10",
    "01" when "00",
    "01" when "01",
    "10" when others;
  with c_1_sel select c_1 <=
    c_1_0_4_False_shift when "00",
    c_1_0_6_False_shift when "01",
    c_1_0_0_False_shift when others;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[32], [64], [8], [1]]
  c_2_0_3_False_resize <= resize(c_0, 22);
  c_2_0_3_False_shift <= shift_left(c_2_0_3_False_resize, 3);
  c_2_0_6_False_resize <= resize(c_0, 22);
  c_2_0_6_False_shift <= shift_left(c_2_0_6_False_resize, 6);
  c_2_0_0_False_resize <= resize(c_0, 22);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_5_False_resize <= resize(c_0, 22);
  c_2_0_5_False_shift <= shift_left(c_2_0_5_False_resize, 5);
  with config_select_1 select c_2_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  with c_2_sel select c_2 <=
    c_2_0_3_False_shift when "00",
    c_2_0_6_False_shift when "01",
    c_2_0_0_False_shift when "10",
    c_2_0_5_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[0], [1536], [0], [24]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 27,
      s_x_i => 3,
      s_y_i => 4,
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
  c_3 <= c_3_oshift(26 downto 0);
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[1], [16], [0], [4]]
  c_4_0_4_False_resize <= resize(c_0, 20);
  c_4_0_4_False_shift <= shift_left(c_4_0_4_False_resize, 4);
  c_4_3_0_False_resize <= c_3(19 downto 0);
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  c_4_0_2_False_resize <= resize(c_0, 20);
  c_4_0_2_False_shift <= shift_left(c_4_0_2_False_resize, 2);
  c_4_0_0_False_resize <= resize(c_0, 20);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  with config_select_3 select c_4_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "11" when others;
  with c_4_sel select c_4 <=
    c_4_0_4_False_shift when "00",
    c_4_3_0_False_shift when "01",
    c_4_0_2_False_shift when "10",
    c_4_0_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[1], [128], [0], [192]]
  c_5_3_0_False_resize <= c_3(23 downto 0);
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  c_5_0_7_False_resize <= resize(c_0, 24);
  c_5_0_7_False_shift <= shift_left(c_5_0_7_False_resize, 7);
  c_5_0_0_False_resize <= resize(c_0, 24);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_3_3_False_resize <= c_3(23 downto 0);
  c_5_3_3_False_shift <= shift_left(c_5_3_3_False_resize, 3);
  with config_select_3 select c_5_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  with c_5_sel select c_5 <=
    c_5_3_0_False_shift when "00",
    c_5_0_7_False_shift when "01",
    c_5_0_0_False_shift when "10",
    c_5_3_3_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 6 and associated fundamentals [[0], [144], [0], [196]]
  with config_select_4 select c_6_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 20,
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
      sub_i => c_6_sub_sel,
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(23 downto 0);
  -- node of type 'mux' in stage 5 with id 7 and associated fundamentals [[0], [8], [0], [4]]
  c_7_0_2_False_resize <= resize(c_0, 19);
  c_7_0_2_False_shift <= shift_left(c_7_0_2_False_resize, 2);
  c_7_6_0_False_resize <= c_6(18 downto 0);
  c_7_6_0_False_shift <= shift_left(c_7_6_0_False_resize, 0);
  c_7_3_0_False_resize <= c_3(18 downto 0);
  c_7_3_0_False_shift <= shift_left(c_7_3_0_False_resize, 0);
  c_7_0_3_False_resize <= resize(c_0, 19);
  c_7_0_3_False_shift <= shift_left(c_7_0_3_False_resize, 3);
  with config_select_5 select c_7_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "10",
    "11" when others;
  with c_7_sel select c_7 <=
    c_7_0_2_False_shift when "00",
    c_7_6_0_False_shift when "01",
    c_7_3_0_False_shift when "10",
    c_7_0_3_False_shift when others;
  -- node of type 'mux' in stage 5 with id 8 and associated fundamentals [[0], [32], [0], [1]]
  c_8_6_0_False_resize <= c_6(20 downto 0);
  c_8_6_0_False_shift <= shift_left(c_8_6_0_False_resize, 0);
  c_8_0_0_False_resize <= resize(c_0, 21);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  c_8_0_5_False_resize <= resize(c_0, 21);
  c_8_0_5_False_shift <= shift_left(c_8_0_5_False_resize, 5);
  with config_select_5 select c_8_sel <= 
    "00" when "00",
    "00" when "10",
    "01" when "11",
    "10" when others;
  with c_8_sel select c_8 <=
    c_8_6_0_False_shift when "00",
    c_8_0_0_False_shift when "01",
    c_8_0_5_False_shift when others;
  -- node of type 'add' in stage 6 with id 9 and associated fundamentals [[0], [40], [0], [5]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 21,
      w_o => 22,
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
  c_9 <= c_9_oshift(21 downto 0);
  -- node of type 'mux' in stage 5 with id 10 and associated fundamentals [[0], [16], [16], [784]]
  c_10_0_4_False_resize <= resize(c_0, 26);
  c_10_0_4_False_shift <= shift_left(c_10_0_4_False_resize, 4);
  c_10_3_0_False_resize <= c_3(25 downto 0);
  c_10_3_0_False_shift <= shift_left(c_10_3_0_False_resize, 0);
  c_10_6_2_False_resize <= resize(c_6, 26);
  c_10_6_2_False_shift <= shift_left(c_10_6_2_False_resize, 2);
  with config_select_5 select c_10_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_10_sel select c_10 <=
    c_10_0_4_False_shift when "00",
    c_10_3_0_False_shift when "01",
    c_10_6_2_False_shift when others;
  -- node of type 'mux' in stage 7 with id 11 and associated fundamentals [[0], [10240], [4], [5]]
  c_11_9_8_False_resize <= resize(c_9, 30);
  c_11_9_8_False_shift <= shift_left(c_11_9_8_False_resize, 8);
  c_11_6_0_False_resize <= resize(c_6, 30);
  c_11_6_0_False_shift <= shift_left(c_11_6_0_False_resize, 0);
  c_11_9_0_False_resize <= resize(c_9, 30);
  c_11_9_0_False_shift <= shift_left(c_11_9_0_False_resize, 0);
  c_11_0_2_False_resize <= resize(c_0, 30);
  c_11_0_2_False_shift <= shift_left(c_11_0_2_False_resize, 2);
  with config_select_7 select c_11_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  with c_11_sel select c_11 <=
    c_11_9_8_False_shift when "00",
    c_11_6_0_False_shift when "01",
    c_11_9_0_False_shift when "10",
    c_11_0_2_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 12 and associated fundamentals [[0], [10256], [20], [779]]
  with config_select_8 select c_12_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
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
      sub_i => c_12_sub_sel,
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(29 downto 0);
  -- node of type 'mux' in stage 7 with id 13 and associated fundamentals [[1], [288], [1024], [5]]
  c_13_0_10_False_resize <= resize(c_0, 26);
  c_13_0_10_False_shift <= shift_left(c_13_0_10_False_resize, 10);
  c_13_6_1_False_resize <= resize(c_6, 26);
  c_13_6_1_False_shift <= shift_left(c_13_6_1_False_resize, 1);
  c_13_9_0_False_resize <= resize(c_9, 26);
  c_13_9_0_False_shift <= shift_left(c_13_9_0_False_resize, 0);
  c_13_0_0_False_resize <= resize(c_0, 26);
  c_13_0_0_False_shift <= shift_left(c_13_0_0_False_resize, 0);
  with config_select_7 select c_13_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  with c_13_sel select c_13 <=
    c_13_0_10_False_shift when "00",
    c_13_6_1_False_shift when "01",
    c_13_9_0_False_shift when "10",
    c_13_0_0_False_shift when others;
  -- node of type 'mux' in stage 1 with id 14 and associated fundamentals [[1], [8], [16], [8]]
  c_14_0_4_False_resize <= resize(c_0, 20);
  c_14_0_4_False_shift <= shift_left(c_14_0_4_False_resize, 4);
  c_14_0_3_False_resize <= resize(c_0, 20);
  c_14_0_3_False_shift <= shift_left(c_14_0_3_False_resize, 3);
  c_14_0_0_False_resize <= resize(c_0, 20);
  c_14_0_0_False_shift <= shift_left(c_14_0_0_False_resize, 0);
  with config_select_1 select c_14_sel <= 
    "00" when "10",
    "01" when "01",
    "01" when "11",
    "10" when others;
  with c_14_sel select c_14 <=
    c_14_0_4_False_shift when "00",
    c_14_0_3_False_shift when "01",
    c_14_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 15 and associated fundamentals [[0], [280], [1040], [13]]
  with config_select_8 select c_15_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 20,
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
      sub_i => c_15_sub_sel,
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(26 downto 0);
  -- node of type 'mux' in stage 9 with id 16 and associated fundamentals [[0], [10256], [4], [196]]
  c_16_12_0_False_resize <= c_12;
  c_16_12_0_False_shift <= shift_left(c_16_12_0_False_resize, 0);
  c_16_3_0_False_resize <= resize(c_3, 30);
  c_16_3_0_False_shift <= shift_left(c_16_3_0_False_resize, 0);
  c_16_0_2_False_resize <= resize(c_0, 30);
  c_16_0_2_False_shift <= shift_left(c_16_0_2_False_resize, 2);
  c_16_6_0_False_resize <= resize(c_6, 30);
  c_16_6_0_False_shift <= shift_left(c_16_6_0_False_resize, 0);
  with config_select_9 select c_16_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  with c_16_sel select c_16 <=
    c_16_12_0_False_shift when "00",
    c_16_3_0_False_shift when "01",
    c_16_0_2_False_shift when "10",
    c_16_6_0_False_shift when others;
  -- node of type 'mux' in stage 9 with id 17 and associated fundamentals [[0], [3072], [1024], [13]]
  c_17_3_1_False_resize <= resize(c_3, 28);
  c_17_3_1_False_shift <= shift_left(c_17_3_1_False_resize, 1);
  c_17_15_0_False_resize <= resize(c_15, 28);
  c_17_15_0_False_shift <= shift_left(c_17_15_0_False_resize, 0);
  c_17_0_10_False_resize <= resize(c_0, 28);
  c_17_0_10_False_shift <= shift_left(c_17_0_10_False_resize, 10);
  c_17_12_0_False_resize <= c_12(27 downto 0);
  c_17_12_0_False_shift <= shift_left(c_17_12_0_False_resize, 0);
  with config_select_9 select c_17_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "11" when others;
  with c_17_sel select c_17 <=
    c_17_3_1_False_shift when "00",
    c_17_15_0_False_shift when "01",
    c_17_0_10_False_shift when "10",
    c_17_12_0_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 18 and associated fundamentals [[0], [7184], [1028], [183]]
  with config_select_10 select c_18_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 30,
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
      sub_i => c_18_sub_sel,
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  c_18 <= c_18_oshift(28 downto 0);
  -- node of type 'mux' in stage 9 with id 19 and associated fundamentals [[8], [4], [0], [13]]
  c_19_15_0_False_resize <= c_15(19 downto 0);
  c_19_15_0_False_shift <= shift_left(c_19_15_0_False_resize, 0);
  c_19_0_2_False_resize <= resize(c_0, 20);
  c_19_0_2_False_shift <= shift_left(c_19_0_2_False_resize, 2);
  c_19_0_3_False_resize <= resize(c_0, 20);
  c_19_0_3_False_shift <= shift_left(c_19_0_3_False_resize, 3);
  c_19_6_0_False_resize <= c_6(19 downto 0);
  c_19_6_0_False_shift <= shift_left(c_19_6_0_False_resize, 0);
  with config_select_9 select c_19_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  with c_19_sel select c_19 <=
    c_19_15_0_False_shift when "00",
    c_19_0_2_False_shift when "01",
    c_19_0_3_False_shift when "10",
    c_19_6_0_False_shift when others;
  -- node of type 'mux' in stage 11 with id 20 and associated fundamentals [[8], [7184], [0], [24]]
  c_20_3_0_False_resize <= resize(c_3, 29);
  c_20_3_0_False_shift <= shift_left(c_20_3_0_False_resize, 0);
  c_20_0_3_False_resize <= resize(c_0, 29);
  c_20_0_3_False_shift <= shift_left(c_20_0_3_False_resize, 3);
  c_20_6_0_False_resize <= resize(c_6, 29);
  c_20_6_0_False_shift <= shift_left(c_20_6_0_False_resize, 0);
  c_20_18_0_False_resize <= c_18;
  c_20_18_0_False_shift <= shift_left(c_20_18_0_False_resize, 0);
  with config_select_11 select c_20_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "10",
    "11" when others;
  with c_20_sel select c_20 <=
    c_20_3_0_False_shift when "00",
    c_20_0_3_False_shift when "01",
    c_20_6_0_False_shift when "10",
    c_20_18_0_False_shift when others;
  -- node of type 'add_sub' in stage 12 with id 21 and associated fundamentals [[0], [-7180], [0], [-11]]
  with config_select_12 select c_21_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 29,
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
      sub_i => c_21_sub_sel,
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  c_21 <= c_21_oshift(28 downto 0);
  -- node of type 'mux' in stage 11 with id 22 and associated fundamentals [[0], [7184], [512], [183]]
  c_22_12_0_False_resize <= c_12(28 downto 0);
  c_22_12_0_False_shift <= shift_left(c_22_12_0_False_resize, 0);
  c_22_18_0_False_resize <= c_18;
  c_22_18_0_False_shift <= shift_left(c_22_18_0_False_resize, 0);
  c_22_0_9_False_resize <= resize(c_0, 29);
  c_22_0_9_False_shift <= shift_left(c_22_0_9_False_resize, 9);
  with config_select_11 select c_22_sel <= 
    "00" when "00",
    "01" when "11",
    "01" when "01",
    "10" when others;
  with c_22_sel select c_22 <=
    c_22_12_0_False_shift when "00",
    c_22_18_0_False_shift when "01",
    c_22_0_9_False_shift when others;
  -- node of type 'mux' in stage 11 with id 23 and associated fundamentals [[0], [7184], [256], [160]]
  c_23_12_0_False_resize <= c_12(28 downto 0);
  c_23_12_0_False_shift <= shift_left(c_23_12_0_False_resize, 0);
  c_23_9_5_False_resize <= resize(c_9, 29);
  c_23_9_5_False_shift <= shift_left(c_23_9_5_False_resize, 5);
  c_23_0_8_False_resize <= resize(c_0, 29);
  c_23_0_8_False_shift <= shift_left(c_23_0_8_False_resize, 8);
  c_23_18_0_False_resize <= c_18;
  c_23_18_0_False_shift <= shift_left(c_23_18_0_False_resize, 0);
  with config_select_11 select c_23_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "10",
    "11" when others;
  with c_23_sel select c_23 <=
    c_23_12_0_False_shift when "00",
    c_23_9_5_False_shift when "01",
    c_23_0_8_False_shift when "10",
    c_23_18_0_False_shift when others;
  -- node of type 'add_sub' in stage 12 with id 24 and associated fundamentals [[0], [0], [768], [343]]
  with config_select_12 select c_24_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 29,
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
      sub_i => c_24_sub_sel,
      x_i => c_22,
      y_i => c_23,
      z_o => c_24_oshift
    );
  c_24 <= c_24_oshift(25 downto 0);
  -- node of type 'mux' in stage 1 with id 25 and associated fundamentals [[512], [2], [64], [1]]
  c_25_0_9_False_resize <= resize(c_0, 25);
  c_25_0_9_False_shift <= shift_left(c_25_0_9_False_resize, 9);
  c_25_0_1_False_resize <= resize(c_0, 25);
  c_25_0_1_False_shift <= shift_left(c_25_0_1_False_resize, 1);
  c_25_0_0_False_resize <= resize(c_0, 25);
  c_25_0_0_False_shift <= shift_left(c_25_0_0_False_resize, 0);
  c_25_0_6_False_resize <= resize(c_0, 25);
  c_25_0_6_False_shift <= shift_left(c_25_0_6_False_resize, 6);
  with config_select_1 select c_25_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  with c_25_sel select c_25 <=
    c_25_0_9_False_shift when "00",
    c_25_0_1_False_shift when "01",
    c_25_0_0_False_shift when "10",
    c_25_0_6_False_shift when others;
  -- node of type 'mux' in stage 7 with id 26 and associated fundamentals [[16], [40], [64], [4]]
  c_26_0_2_False_resize <= resize(c_0, 22);
  c_26_0_2_False_shift <= shift_left(c_26_0_2_False_resize, 2);
  c_26_9_0_False_resize <= c_9;
  c_26_9_0_False_shift <= shift_left(c_26_9_0_False_resize, 0);
  c_26_0_6_False_resize <= resize(c_0, 22);
  c_26_0_6_False_shift <= shift_left(c_26_0_6_False_resize, 6);
  c_26_0_4_False_resize <= resize(c_0, 22);
  c_26_0_4_False_shift <= shift_left(c_26_0_4_False_resize, 4);
  with config_select_7 select c_26_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  with c_26_sel select c_26 <=
    c_26_0_2_False_shift when "00",
    c_26_9_0_False_shift when "01",
    c_26_0_6_False_shift when "10",
    c_26_0_4_False_shift when others;
  -- node of type 'add' in stage 8 with id 27 and associated fundamentals [[544], [82], [192], [9]]
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 22,
      w_o => 26,
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
      x_i => c_25,
      y_i => c_26,
      z_o => c_27_oshift
    );
  c_27 <= c_27_oshift(25 downto 0);
  -- node of type 'mux' in stage 13 with id 28 and associated fundamentals [[256], [0], [8], [9]]
  c_28_0_3_False_resize <= resize(c_0, 24);
  c_28_0_3_False_shift <= shift_left(c_28_0_3_False_resize, 3);
  c_28_0_8_False_resize <= resize(c_0, 24);
  c_28_0_8_False_shift <= shift_left(c_28_0_8_False_resize, 8);
  c_28_24_0_False_resize <= c_24(23 downto 0);
  c_28_24_0_False_shift <= shift_left(c_28_24_0_False_resize, 0);
  c_28_27_0_False_resize <= c_27(23 downto 0);
  c_28_27_0_False_shift <= shift_left(c_28_27_0_False_resize, 0);
  with config_select_13 select c_28_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  with c_28_sel select c_28 <=
    c_28_0_3_False_shift when "00",
    c_28_0_8_False_shift when "01",
    c_28_24_0_False_shift when "10",
    c_28_27_0_False_shift when others;
  -- node of type 'mux' in stage 9 with id 29 and associated fundamentals [[128], [128], [1], [13]]
  c_29_15_0_False_resize <= c_15(22 downto 0);
  c_29_15_0_False_shift <= shift_left(c_29_15_0_False_resize, 0);
  c_29_0_7_False_resize <= resize(c_0, 23);
  c_29_0_7_False_shift <= shift_left(c_29_0_7_False_resize, 7);
  c_29_0_0_False_resize <= resize(c_0, 23);
  c_29_0_0_False_shift <= shift_left(c_29_0_0_False_resize, 0);
  with config_select_9 select c_29_sel <= 
    "00" when "11",
    "01" when "00",
    "01" when "01",
    "10" when others;
  with c_29_sel select c_29 <=
    c_29_15_0_False_shift when "00",
    c_29_0_7_False_shift when "01",
    c_29_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 14 with id 30 and associated fundamentals [[1280], [1024], [0], [113]]
  with config_select_14 select c_30_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
      w_o => 27,
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
      sub_i => c_30_sub_sel,
      x_i => c_28,
      y_i => c_29,
      z_o => c_30_oshift
    );
  c_30 <= c_30_oshift(26 downto 0);
  -- node of type 'mux' in stage 7 with id 31 and associated fundamentals [[0], [10240], [0], [4]]
  c_31_0_2_False_resize <= resize(c_0, 30);
  c_31_0_2_False_shift <= shift_left(c_31_0_2_False_resize, 2);
  c_31_9_8_False_resize <= resize(c_9, 30);
  c_31_9_8_False_shift <= shift_left(c_31_9_8_False_resize, 8);
  c_31_3_0_False_resize <= resize(c_3, 30);
  c_31_3_0_False_shift <= shift_left(c_31_3_0_False_resize, 0);
  with config_select_7 select c_31_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "10" when others;
  with c_31_sel select c_31 <=
    c_31_0_2_False_shift when "00",
    c_31_9_8_False_shift when "01",
    c_31_3_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 32 and associated fundamentals [[1024], [6144], [1], [4096]]
  c_32_3_2_False_resize <= resize(c_3, 29);
  c_32_3_2_False_shift <= shift_left(c_32_3_2_False_resize, 2);
  c_32_0_0_False_resize <= resize(c_0, 29);
  c_32_0_0_False_shift <= shift_left(c_32_0_0_False_resize, 0);
  c_32_0_12_False_resize <= resize(c_0, 29);
  c_32_0_12_False_shift <= shift_left(c_32_0_12_False_resize, 12);
  c_32_0_10_False_resize <= resize(c_0, 29);
  c_32_0_10_False_shift <= shift_left(c_32_0_10_False_resize, 10);
  with config_select_3 select c_32_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "11" when others;
  with c_32_sel select c_32 <=
    c_32_3_2_False_shift when "00",
    c_32_0_0_False_shift when "01",
    c_32_0_12_False_shift when "10",
    c_32_0_10_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 33 and associated fundamentals [[1024], [4096], [1], [4100]]
  with config_select_8 select c_33_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_33: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 29,
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
      sub_i => c_33_sub_sel,
      x_i => c_31,
      y_i => c_32,
      z_o => c_33_oshift
    );
  c_33 <= c_33_oshift(28 downto 0);
  -- node of type 'mux' in stage 3 with id 34 and associated fundamentals [[1], [1024], [128], [48]]
  c_34_0_10_False_resize <= resize(c_0, 26);
  c_34_0_10_False_shift <= shift_left(c_34_0_10_False_resize, 10);
  c_34_3_1_False_resize <= c_3(25 downto 0);
  c_34_3_1_False_shift <= shift_left(c_34_3_1_False_resize, 1);
  c_34_0_7_False_resize <= resize(c_0, 26);
  c_34_0_7_False_shift <= shift_left(c_34_0_7_False_resize, 7);
  c_34_0_0_False_resize <= resize(c_0, 26);
  c_34_0_0_False_shift <= shift_left(c_34_0_0_False_resize, 0);
  with config_select_3 select c_34_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "11" when others;
  with c_34_sel select c_34 <=
    c_34_0_10_False_shift when "00",
    c_34_3_1_False_shift when "01",
    c_34_0_7_False_shift when "10",
    c_34_0_0_False_shift when others;
  -- node of type 'mux' in stage 11 with id 35 and associated fundamentals [[8], [7184], [192], [2]]
  c_35_0_1_False_resize <= resize(c_0, 29);
  c_35_0_1_False_shift <= shift_left(c_35_0_1_False_resize, 1);
  c_35_27_0_False_resize <= resize(c_27, 29);
  c_35_27_0_False_shift <= shift_left(c_35_27_0_False_resize, 0);
  c_35_0_3_False_resize <= resize(c_0, 29);
  c_35_0_3_False_shift <= shift_left(c_35_0_3_False_resize, 3);
  c_35_18_0_False_resize <= c_18;
  c_35_18_0_False_shift <= shift_left(c_35_18_0_False_resize, 0);
  with config_select_11 select c_35_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  with c_35_sel select c_35 <=
    c_35_0_1_False_shift when "00",
    c_35_27_0_False_shift when "01",
    c_35_0_3_False_shift when "10",
    c_35_18_0_False_shift when others;
  -- node of type 'add_sub' in stage 12 with id 36 and associated fundamentals [[10], [9232], [448], [94]]
  with config_select_12 select c_36_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_36: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 29,
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
      sub_i => c_36_sub_sel,
      x_i => c_34,
      y_i => c_35,
      z_o => c_36_oshift
    );
  c_36 <= c_36_oshift(29 downto 0);
  -- node of type 'mux' in stage 15 with id 37 and associated fundamentals [[1280], [144], [0], [183]]
  c_37_18_0_False_resize <= c_18(26 downto 0);
  c_37_18_0_False_shift <= shift_left(c_37_18_0_False_resize, 0);
  c_37_6_0_False_resize <= resize(c_6, 27);
  c_37_6_0_False_shift <= shift_left(c_37_6_0_False_resize, 0);
  c_37_3_0_False_resize <= c_3;
  c_37_3_0_False_shift <= shift_left(c_37_3_0_False_resize, 0);
  c_37_30_0_False_resize <= c_30;
  c_37_30_0_False_shift <= shift_left(c_37_30_0_False_resize, 0);
  with config_select_15 select c_37_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  with c_37_sel select c_37 <=
    c_37_18_0_False_shift when "00",
    c_37_6_0_False_shift when "01",
    c_37_3_0_False_shift when "10",
    c_37_30_0_False_shift when others;
  -- node of type 'mux' in stage 15 with id 38 and associated fundamentals [[0], [1024], [0], [113]]
  c_38_12_0_False_resize <= c_12(25 downto 0);
  c_38_12_0_False_shift <= shift_left(c_38_12_0_False_resize, 0);
  c_38_30_0_False_resize <= c_30(25 downto 0);
  c_38_30_0_False_shift <= shift_left(c_38_30_0_False_resize, 0);
  c_38_3_0_False_resize <= c_3(25 downto 0);
  c_38_3_0_False_shift <= shift_left(c_38_3_0_False_resize, 0);
  with config_select_15 select c_38_sel <= 
    "00" when "00",
    "01" when "01",
    "01" when "11",
    "10" when others;
  with c_38_sel select c_38 <=
    c_38_12_0_False_shift when "00",
    c_38_30_0_False_shift when "01",
    c_38_3_0_False_shift when others;
  -- node of type 'add' in stage 16 with id 39 and associated fundamentals [[160], [146], [0], [37]]
  inst_adder_node_39: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 26,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 3,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_37,
      y_i => c_38,
      z_o => c_39_oshift
    );
  c_39 <= c_39_oshift(23 downto 0);
  -- node of type 'mux' in stage 17 with id 40 and associated fundamentals [[320], [146], [1], [16]]
  c_40_0_0_False_resize <= resize(c_0, 25);
  c_40_0_0_False_shift <= shift_left(c_40_0_0_False_resize, 0);
  c_40_0_4_False_resize <= resize(c_0, 25);
  c_40_0_4_False_shift <= shift_left(c_40_0_4_False_resize, 4);
  c_40_39_0_False_resize <= resize(c_39, 25);
  c_40_39_0_False_shift <= shift_left(c_40_39_0_False_resize, 0);
  c_40_39_1_False_resize <= resize(c_39, 25);
  c_40_39_1_False_shift <= shift_left(c_40_39_1_False_resize, 1);
  with config_select_17 select c_40_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  with c_40_sel select c_40 <=
    c_40_0_0_False_shift when "00",
    c_40_0_4_False_shift when "01",
    c_40_39_0_False_shift when "10",
    c_40_39_1_False_shift when others;
  -- node of type 'mux' in stage 13 with id 41 and associated fundamentals [[10], [1], [2048], [2]]
  c_41_0_0_False_resize <= resize(c_0, 27);
  c_41_0_0_False_shift <= shift_left(c_41_0_0_False_resize, 0);
  c_41_36_0_False_resize <= c_36(26 downto 0);
  c_41_36_0_False_shift <= shift_left(c_41_36_0_False_resize, 0);
  c_41_0_1_False_resize <= resize(c_0, 27);
  c_41_0_1_False_shift <= shift_left(c_41_0_1_False_resize, 1);
  c_41_0_11_False_resize <= resize(c_0, 27);
  c_41_0_11_False_shift <= shift_left(c_41_0_11_False_resize, 11);
  with config_select_13 select c_41_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  with c_41_sel select c_41 <=
    c_41_0_0_False_shift when "00",
    c_41_36_0_False_shift when "01",
    c_41_0_1_False_shift when "10",
    c_41_0_11_False_shift when others;
  -- node of type 'add' in stage 18 with id 42 and associated fundamentals [[330], [147], [2049], [18]]
  inst_adder_node_42: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 27,
      w_o => 28,
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
      x_i => c_40,
      y_i => c_41,
      z_o => c_42_oshift
    );
  c_42 <= c_42_oshift(27 downto 0);
  -- node of type 'mux' in stage 3 with id 43 and associated fundamentals [[16], [64], [16], [24]]
  c_43_3_0_False_resize <= c_3(21 downto 0);
  c_43_3_0_False_shift <= shift_left(c_43_3_0_False_resize, 0);
  c_43_0_4_False_resize <= resize(c_0, 22);
  c_43_0_4_False_shift <= shift_left(c_43_0_4_False_resize, 4);
  c_43_0_6_False_resize <= resize(c_0, 22);
  c_43_0_6_False_shift <= shift_left(c_43_0_6_False_resize, 6);
  with config_select_3 select c_43_sel <= 
    "00" when "11",
    "01" when "10",
    "01" when "00",
    "10" when others;
  with c_43_sel select c_43 <=
    c_43_3_0_False_shift when "00",
    c_43_0_4_False_shift when "01",
    c_43_0_6_False_shift when others;
  -- node of type 'mux' in stage 17 with id 44 and associated fundamentals [[16], [144], [2], [1184]]
  c_44_39_5_False_resize <= resize(c_39, 27);
  c_44_39_5_False_shift <= shift_left(c_44_39_5_False_resize, 5);
  c_44_0_1_False_resize <= resize(c_0, 27);
  c_44_0_1_False_shift <= shift_left(c_44_0_1_False_resize, 1);
  c_44_6_0_False_resize <= resize(c_6, 27);
  c_44_6_0_False_shift <= shift_left(c_44_6_0_False_resize, 0);
  c_44_0_4_False_resize <= resize(c_0, 27);
  c_44_0_4_False_shift <= shift_left(c_44_0_4_False_resize, 4);
  with config_select_17 select c_44_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  with c_44_sel select c_44 <=
    c_44_39_5_False_shift when "00",
    c_44_0_1_False_shift when "01",
    c_44_6_0_False_shift when "10",
    c_44_0_4_False_shift when others;
  -- node of type 'add' in stage 18 with id 45 and associated fundamentals [[384], [2176], [272], [9856]]
  inst_adder_node_45: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 27,
      w_o => 30,
      s_x_i => 4,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_43,
      y_i => c_44,
      z_o => c_45_oshift
    );
  c_45 <= c_45_oshift(29 downto 0);
  -- node of type 'mux' in stage 13 with id 46 and associated fundamentals [[1], [82], [8192], [94]]
  c_46_27_0_False_resize <= resize(c_27, 29);
  c_46_27_0_False_shift <= shift_left(c_46_27_0_False_resize, 0);
  c_46_0_13_False_resize <= resize(c_0, 29);
  c_46_0_13_False_shift <= shift_left(c_46_0_13_False_resize, 13);
  c_46_0_0_False_resize <= resize(c_0, 29);
  c_46_0_0_False_shift <= shift_left(c_46_0_0_False_resize, 0);
  c_46_36_0_False_resize <= c_36(28 downto 0);
  c_46_36_0_False_shift <= shift_left(c_46_36_0_False_resize, 0);
  with config_select_13 select c_46_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  with c_46_sel select c_46 <=
    c_46_27_0_False_shift when "00",
    c_46_0_13_False_shift when "01",
    c_46_0_0_False_shift when "10",
    c_46_36_0_False_shift when others;
  -- node of type 'mux' in stage 19 with id 47 and associated fundamentals [[330], [1], [8192], [37]]
  c_47_0_0_False_resize <= resize(c_0, 29);
  c_47_0_0_False_shift <= shift_left(c_47_0_0_False_resize, 0);
  c_47_42_0_False_resize <= resize(c_42, 29);
  c_47_42_0_False_shift <= shift_left(c_47_42_0_False_resize, 0);
  c_47_0_13_False_resize <= resize(c_0, 29);
  c_47_0_13_False_shift <= shift_left(c_47_0_13_False_resize, 13);
  c_47_39_0_False_resize <= resize(c_39, 29);
  c_47_39_0_False_shift <= shift_left(c_47_39_0_False_resize, 0);
  with config_select_19 select c_47_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  with c_47_sel select c_47 <=
    c_47_0_0_False_shift when "00",
    c_47_42_0_False_shift when "01",
    c_47_0_13_False_shift when "10",
    c_47_39_0_False_shift when others;
  -- node of type 'add_sub' in stage 20 with id 48 and associated fundamentals [[331], [83], [0], [57]]
  with config_select_20 select c_48_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_48: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 29,
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
      sub_i => c_48_sub_sel,
      x_i => c_46,
      y_i => c_47,
      z_o => c_48_oshift
    );
  c_48 <= c_48_oshift(24 downto 0);
  -- node of type 'mux' in stage 19 with id 49 and associated fundamentals [[8], [256], [192], [2304]]
  c_49_27_0_False_resize <= resize(c_27, 28);
  c_49_27_0_False_shift <= shift_left(c_49_27_0_False_resize, 0);
  c_49_42_7_False_resize <= c_42;
  c_49_42_7_False_shift <= shift_left(c_49_42_7_False_resize, 7);
  c_49_0_8_False_resize <= resize(c_0, 28);
  c_49_0_8_False_shift <= shift_left(c_49_0_8_False_resize, 8);
  c_49_0_3_False_resize <= resize(c_0, 28);
  c_49_0_3_False_shift <= shift_left(c_49_0_3_False_resize, 3);
  with config_select_19 select c_49_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  with c_49_sel select c_49 <=
    c_49_27_0_False_shift when "00",
    c_49_42_7_False_shift when "01",
    c_49_0_8_False_shift when "10",
    c_49_0_3_False_shift when others;
  -- node of type 'mux' in stage 13 with id 50 and associated fundamentals [[1], [256], [1536], [18]]
  c_50_24_1_False_resize <= resize(c_24, 27);
  c_50_24_1_False_shift <= shift_left(c_50_24_1_False_resize, 1);
  c_50_27_1_False_resize <= resize(c_27, 27);
  c_50_27_1_False_shift <= shift_left(c_50_27_1_False_resize, 1);
  c_50_0_8_False_resize <= resize(c_0, 27);
  c_50_0_8_False_shift <= shift_left(c_50_0_8_False_resize, 8);
  c_50_0_0_False_resize <= resize(c_0, 27);
  c_50_0_0_False_shift <= shift_left(c_50_0_0_False_resize, 0);
  with config_select_13 select c_50_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  with c_50_sel select c_50 <=
    c_50_24_1_False_shift when "00",
    c_50_27_1_False_shift when "01",
    c_50_0_8_False_shift when "10",
    c_50_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 20 with id 51 and associated fundamentals [[6], [768], [3264], [2340]]
  with config_select_20 select c_51_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_51: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 27,
      w_o => 28,
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
  c_51 <= c_51_oshift(27 downto 0);
  -- node of type 'mux' in stage 21 with id 52 and associated fundamentals [[4], [1], [0], [1]]
  c_52_0_0_False_resize <= resize(c_0, 18);
  c_52_0_0_False_shift <= shift_left(c_52_0_0_False_resize, 0);
  c_52_48_0_False_resize <= c_48(17 downto 0);
  c_52_48_0_False_shift <= shift_left(c_52_48_0_False_resize, 0);
  c_52_0_2_False_resize <= resize(c_0, 18);
  c_52_0_2_False_shift <= shift_left(c_52_0_2_False_resize, 2);
  with config_select_21 select c_52_sel <= 
    "00" when "01",
    "00" when "11",
    "01" when "10",
    "10" when others;
  with c_52_sel select c_52 <=
    c_52_0_0_False_shift when "00",
    c_52_48_0_False_shift when "01",
    c_52_0_2_False_shift when others;
  -- node of type 'mux' in stage 21 with id 53 and associated fundamentals [[0], [280], [0], [18]]
  c_53_48_0_False_resize <= c_48;
  c_53_48_0_False_shift <= shift_left(c_53_48_0_False_resize, 0);
  c_53_21_3_False_resize <= c_21(24 downto 0);
  c_53_21_3_False_shift <= shift_left(c_53_21_3_False_resize, 3);
  c_53_42_0_False_resize <= c_42(24 downto 0);
  c_53_42_0_False_shift <= shift_left(c_53_42_0_False_resize, 0);
  c_53_15_0_False_resize <= c_15(24 downto 0);
  c_53_15_0_False_shift <= shift_left(c_53_15_0_False_resize, 0);
  with config_select_21 select c_53_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  with c_53_sel select c_53 <=
    c_53_48_0_False_shift when "00",
    c_53_21_3_False_shift when "01",
    c_53_42_0_False_shift when "10",
    c_53_15_0_False_shift when others;
  -- node of type 'add' in stage 22 with id 54 and associated fundamentals [[4], [281], [0], [19]]
  inst_adder_node_54: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 25,
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
      x_i => c_52,
      y_i => c_53,
      z_o => c_54_oshift
    );
  c_54 <= c_54_oshift(24 downto 0);
  -- node of type 'mux' in stage 23 with id 55 and associated fundamentals [[128], [10256], [192], [114]]
  c_55_54_5_False_resize <= resize(c_54, 30);
  c_55_54_5_False_shift <= shift_left(c_55_54_5_False_resize, 5);
  c_55_12_0_False_resize <= c_12;
  c_55_12_0_False_shift <= shift_left(c_55_12_0_False_resize, 0);
  c_55_27_0_False_resize <= resize(c_27, 30);
  c_55_27_0_False_shift <= shift_left(c_55_27_0_False_resize, 0);
  c_55_48_1_False_resize <= resize(c_48, 30);
  c_55_48_1_False_shift <= shift_left(c_55_48_1_False_resize, 1);
  with config_select_23 select c_55_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "11" when others;
  with c_55_sel select c_55 <=
    c_55_54_5_False_shift when "00",
    c_55_12_0_False_shift when "01",
    c_55_27_0_False_shift when "10",
    c_55_48_1_False_shift when others;
  -- node of type 'mux' in stage 21 with id 56 and associated fundamentals [[8], [-7180], [4], [114]]
  c_56_33_2_False_resize <= c_33;
  c_56_33_2_False_shift <= shift_left(c_56_33_2_False_resize, 2);
  c_56_0_3_False_resize <= resize(c_0, 29);
  c_56_0_3_False_shift <= shift_left(c_56_0_3_False_resize, 3);
  c_56_21_0_False_resize <= c_21;
  c_56_21_0_False_shift <= shift_left(c_56_21_0_False_resize, 0);
  c_56_48_1_False_resize <= resize(c_48, 29);
  c_56_48_1_False_shift <= shift_left(c_56_48_1_False_resize, 1);
  with config_select_21 select c_56_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  with c_56_sel select c_56 <=
    c_56_33_2_False_shift when "00",
    c_56_0_3_False_shift when "01",
    c_56_21_0_False_shift when "10",
    c_56_48_1_False_shift when others;
  -- node of type 'add_sub' in stage 24 with id 57 and associated fundamentals [[120], [3076], [188], [0]]
  with config_select_24 select c_57_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_57: entity work.adder_node
    generic map (
      w_x_i => 30,
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
      sub_i => c_57_sub_sel,
      x_i => c_55,
      y_i => c_56,
      z_o => c_57_oshift
    );
  c_57 <= c_57_oshift(27 downto 0);
  -- node of type 'mux' in stage 21 with id 58 and associated fundamentals [[331], [4], [20], [3648]]
  c_58_12_0_False_resize <= c_12(27 downto 0);
  c_58_12_0_False_shift <= shift_left(c_58_12_0_False_resize, 0);
  c_58_48_6_False_resize <= resize(c_48, 28);
  c_58_48_6_False_shift <= shift_left(c_58_48_6_False_resize, 6);
  c_58_0_2_False_resize <= resize(c_0, 28);
  c_58_0_2_False_shift <= shift_left(c_58_0_2_False_resize, 2);
  c_58_48_0_False_resize <= resize(c_48, 28);
  c_58_48_0_False_shift <= shift_left(c_58_48_0_False_resize, 0);
  with config_select_21 select c_58_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  with c_58_sel select c_58 <=
    c_58_12_0_False_shift when "00",
    c_58_48_6_False_shift when "01",
    c_58_0_2_False_shift when "10",
    c_58_48_0_False_shift when others;
  -- node of type 'mux' in stage 19 with id 59 and associated fundamentals [[2], [147], [896], [592]]
  c_59_36_1_False_resize <= c_36(25 downto 0);
  c_59_36_1_False_shift <= shift_left(c_59_36_1_False_resize, 1);
  c_59_0_1_False_resize <= resize(c_0, 26);
  c_59_0_1_False_shift <= shift_left(c_59_0_1_False_resize, 1);
  c_59_39_4_False_resize <= resize(c_39, 26);
  c_59_39_4_False_shift <= shift_left(c_59_39_4_False_resize, 4);
  c_59_42_0_False_resize <= c_42(25 downto 0);
  c_59_42_0_False_shift <= shift_left(c_59_42_0_False_resize, 0);
  with config_select_19 select c_59_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  with c_59_sel select c_59 <=
    c_59_36_1_False_shift when "00",
    c_59_0_1_False_shift when "01",
    c_59_39_4_False_shift when "10",
    c_59_42_0_False_shift when others;
  -- node of type 'add_sub' in stage 22 with id 60 and associated fundamentals [[666], [302], [-1752], [6112]]
  with config_select_22 select c_60_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_60: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 26,
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
      sub_i => c_60_sub_sel,
      x_i => c_58,
      y_i => c_59,
      z_o => c_60_oshift
    );
  c_60 <= c_60_oshift(28 downto 0);
  -- node of type 'mux' in stage 21 with id 61 and associated fundamentals [[1088], [-7180], [64], [2340]]
  c_61_51_0_False_resize <= resize(c_51, 29);
  c_61_51_0_False_shift <= shift_left(c_61_51_0_False_resize, 0);
  c_61_0_6_False_resize <= resize(c_0, 29);
  c_61_0_6_False_shift <= shift_left(c_61_0_6_False_resize, 6);
  c_61_21_0_False_resize <= c_21;
  c_61_21_0_False_shift <= shift_left(c_61_21_0_False_resize, 0);
  c_61_27_1_False_resize <= resize(c_27, 29);
  c_61_27_1_False_shift <= shift_left(c_61_27_1_False_resize, 1);
  with config_select_21 select c_61_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  with c_61_sel select c_61 <=
    c_61_51_0_False_shift when "00",
    c_61_0_6_False_shift when "01",
    c_61_21_0_False_shift when "10",
    c_61_27_1_False_shift when others;
  -- node of type 'mux' in stage 23 with id 62 and associated fundamentals [[512], [9232], [16], [-11]]
  c_62_21_0_False_resize <= resize(c_21, 30);
  c_62_21_0_False_shift <= shift_left(c_62_21_0_False_resize, 0);
  c_62_0_4_False_resize <= resize(c_0, 30);
  c_62_0_4_False_shift <= shift_left(c_62_0_4_False_resize, 4);
  c_62_36_0_False_resize <= c_36;
  c_62_36_0_False_shift <= shift_left(c_62_36_0_False_resize, 0);
  c_62_54_7_False_resize <= resize(c_54, 30);
  c_62_54_7_False_shift <= shift_left(c_62_54_7_False_resize, 7);
  with config_select_23 select c_62_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  with c_62_sel select c_62 <=
    c_62_21_0_False_shift when "00",
    c_62_0_4_False_shift when "01",
    c_62_36_0_False_shift when "10",
    c_62_54_7_False_shift when others;
  -- node of type 'add_sub' in stage 24 with id 63 and associated fundamentals [[1600], [2052], [48], [2351]]
  with config_select_24 select c_63_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_63: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 30,
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
      sub_i => c_63_sub_sel,
      x_i => c_61,
      y_i => c_62,
      z_o => c_63_oshift
    );
  c_63 <= c_63_oshift(27 downto 0);
  -- node of type 'mux' in stage 9 with id 64 and associated fundamentals [[1], [3072], [256], [13]]
  c_64_0_8_False_resize <= resize(c_0, 28);
  c_64_0_8_False_shift <= shift_left(c_64_0_8_False_resize, 8);
  c_64_3_1_False_resize <= resize(c_3, 28);
  c_64_3_1_False_shift <= shift_left(c_64_3_1_False_resize, 1);
  c_64_15_0_False_resize <= resize(c_15, 28);
  c_64_15_0_False_shift <= shift_left(c_64_15_0_False_resize, 0);
  c_64_0_0_False_resize <= resize(c_0, 28);
  c_64_0_0_False_shift <= shift_left(c_64_0_0_False_resize, 0);
  with config_select_9 select c_64_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  with c_64_sel select c_64 <=
    c_64_0_8_False_shift when "00",
    c_64_3_1_False_shift when "01",
    c_64_15_0_False_shift when "10",
    c_64_0_0_False_shift when others;
  -- node of type 'mux' in stage 17 with id 65 and associated fundamentals [[0], [146], [1], [10240]]
  c_65_9_11_False_resize <= resize(c_9, 30);
  c_65_9_11_False_shift <= shift_left(c_65_9_11_False_resize, 11);
  c_65_0_0_False_resize <= resize(c_0, 30);
  c_65_0_0_False_shift <= shift_left(c_65_0_0_False_resize, 0);
  c_65_24_0_False_resize <= resize(c_24, 30);
  c_65_24_0_False_shift <= shift_left(c_65_24_0_False_resize, 0);
  c_65_39_0_False_resize <= resize(c_39, 30);
  c_65_39_0_False_shift <= shift_left(c_65_39_0_False_resize, 0);
  with config_select_17 select c_65_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  with c_65_sel select c_65 <=
    c_65_9_11_False_shift when "00",
    c_65_0_0_False_shift when "01",
    c_65_24_0_False_shift when "10",
    c_65_39_0_False_shift when others;
  -- node of type 'add_sub' in stage 18 with id 66 and associated fundamentals [[1], [3218], [255], [10253]]
  with config_select_18 select c_66_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_66: entity work.adder_node
    generic map (
      w_x_i => 28,
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
      sub_i => c_66_sub_sel,
      x_i => c_64,
      y_i => c_65,
      z_o => c_66_oshift
    );
  c_66 <= c_66_oshift(29 downto 0);
  -- node of type 'mux' in stage 13 with id 67 and associated fundamentals [[0], [14368], [1], [1]]
  c_67_18_1_False_resize <= resize(c_18, 30);
  c_67_18_1_False_shift <= shift_left(c_67_18_1_False_resize, 1);
  c_67_0_0_False_resize <= resize(c_0, 30);
  c_67_0_0_False_shift <= shift_left(c_67_0_0_False_resize, 0);
  c_67_24_0_False_resize <= resize(c_24, 30);
  c_67_24_0_False_shift <= shift_left(c_67_24_0_False_resize, 0);
  with config_select_13 select c_67_sel <= 
    "00" when "01",
    "01" when "10",
    "01" when "11",
    "10" when others;
  with c_67_sel select c_67 <=
    c_67_18_1_False_shift when "00",
    c_67_0_0_False_shift when "01",
    c_67_24_0_False_shift when others;
  -- node of type 'mux' in stage 21 with id 68 and associated fundamentals [[8192], [0], [4], [7296]]
  c_68_48_7_False_resize <= resize(c_48, 29);
  c_68_48_7_False_shift <= shift_left(c_68_48_7_False_resize, 7);
  c_68_0_13_False_resize <= resize(c_0, 29);
  c_68_0_13_False_shift <= shift_left(c_68_0_13_False_resize, 13);
  c_68_24_0_False_resize <= resize(c_24, 29);
  c_68_24_0_False_shift <= shift_left(c_68_24_0_False_resize, 0);
  c_68_0_2_False_resize <= resize(c_0, 29);
  c_68_0_2_False_shift <= shift_left(c_68_0_2_False_resize, 2);
  with config_select_21 select c_68_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  with c_68_sel select c_68 <=
    c_68_48_7_False_shift when "00",
    c_68_0_13_False_shift when "01",
    c_68_24_0_False_shift when "10",
    c_68_0_2_False_shift when others;
  -- node of type 'add_sub' in stage 22 with id 69 and associated fundamentals [[8192], [14368], [5], [-7295]]
  with config_select_22 select c_69_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_69: entity work.adder_node
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
      sub_i => c_69_sub_sel,
      x_i => c_67,
      y_i => c_68,
      z_o => c_69_oshift
    );
  c_69 <= c_69_oshift(29 downto 0);
  -- node of type 'mux' in stage 25 with id 70 and associated fundamentals [[0], [10256], [48], [904]]
  c_70_63_0_False_resize <= resize(c_63, 30);
  c_70_63_0_False_shift <= shift_left(c_70_63_0_False_resize, 0);
  c_70_12_0_False_resize <= c_12;
  c_70_12_0_False_shift <= shift_left(c_70_12_0_False_resize, 0);
  c_70_24_0_False_resize <= resize(c_24, 30);
  c_70_24_0_False_shift <= shift_left(c_70_24_0_False_resize, 0);
  c_70_30_3_False_resize <= resize(c_30, 30);
  c_70_30_3_False_shift <= shift_left(c_70_30_3_False_resize, 3);
  with config_select_25 select c_70_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  with c_70_sel select c_70 <=
    c_70_63_0_False_shift when "00",
    c_70_12_0_False_shift when "01",
    c_70_24_0_False_shift when "10",
    c_70_30_3_False_shift when others;
  -- node of type 'mux' in stage 23 with id 71 and associated fundamentals [[256], [2], [5], [1]]
  c_71_0_1_False_resize <= resize(c_0, 24);
  c_71_0_1_False_shift <= shift_left(c_71_0_1_False_resize, 1);
  c_71_0_8_False_resize <= resize(c_0, 24);
  c_71_0_8_False_shift <= shift_left(c_71_0_8_False_resize, 8);
  c_71_69_0_False_resize <= c_69(23 downto 0);
  c_71_69_0_False_shift <= shift_left(c_71_69_0_False_resize, 0);
  c_71_0_0_False_resize <= resize(c_0, 24);
  c_71_0_0_False_shift <= shift_left(c_71_0_0_False_resize, 0);
  with config_select_23 select c_71_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  with c_71_sel select c_71 <=
    c_71_0_1_False_shift when "00",
    c_71_0_8_False_shift when "01",
    c_71_69_0_False_shift when "10",
    c_71_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 26 with id 72 and associated fundamentals [[256], [10258], [43], [903]]
  with config_select_26 select c_72_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_72: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 24,
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
      sub_i => c_72_sub_sel,
      x_i => c_70,
      y_i => c_71,
      z_o => c_72_oshift
    );
  c_72 <= c_72_oshift(29 downto 0);
  -- node of type 'mux' in stage 27 with id 73 and associated fundamentals [[8192], [10258], [1040], [1]]
  c_73_15_0_False_resize <= resize(c_15, 30);
  c_73_15_0_False_shift <= shift_left(c_73_15_0_False_resize, 0);
  c_73_69_0_False_resize <= c_69;
  c_73_69_0_False_shift <= shift_left(c_73_69_0_False_resize, 0);
  c_73_0_0_False_resize <= resize(c_0, 30);
  c_73_0_0_False_shift <= shift_left(c_73_0_0_False_resize, 0);
  c_73_72_0_False_resize <= c_72;
  c_73_72_0_False_shift <= shift_left(c_73_72_0_False_resize, 0);
  with config_select_27 select c_73_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  with c_73_sel select c_73 <=
    c_73_15_0_False_shift when "00",
    c_73_69_0_False_shift when "01",
    c_73_0_0_False_shift when "10",
    c_73_72_0_False_shift when others;
  -- node of type 'mux' in stage 27 with id 74 and associated fundamentals [[1024], [10258], [0], [2351]]
  c_74_63_0_False_resize <= resize(c_63, 30);
  c_74_63_0_False_shift <= shift_left(c_74_63_0_False_resize, 0);
  c_74_48_0_False_resize <= resize(c_48, 30);
  c_74_48_0_False_shift <= shift_left(c_74_48_0_False_resize, 0);
  c_74_72_0_False_resize <= c_72;
  c_74_72_0_False_shift <= shift_left(c_74_72_0_False_resize, 0);
  c_74_33_0_False_resize <= resize(c_33, 30);
  c_74_33_0_False_shift <= shift_left(c_74_33_0_False_resize, 0);
  with config_select_27 select c_74_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  with c_74_sel select c_74 <=
    c_74_63_0_False_shift when "00",
    c_74_48_0_False_shift when "01",
    c_74_72_0_False_shift when "10",
    c_74_33_0_False_shift when others;
  -- node of type 'add_sub' in stage 28 with id 75 and associated fundamentals [[576], [0], [65], [147]]
  with config_select_28 select c_75_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_75: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 30,
      w_o => 26,
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
      sub_i => c_75_sub_sel,
      x_i => c_73,
      y_i => c_74,
      z_o => c_75_oshift
    );
  c_75 <= c_75_oshift(25 downto 0);
  -- node of type 'mux' in stage 23 with id 76 and associated fundamentals [[768], [332], [-3504], [-11]]
  c_76_51_7_False_resize <= c_51;
  c_76_51_7_False_shift <= shift_left(c_76_51_7_False_resize, 7);
  c_76_21_0_False_resize <= c_21(27 downto 0);
  c_76_21_0_False_shift <= shift_left(c_76_21_0_False_resize, 0);
  c_76_48_2_False_resize <= resize(c_48, 28);
  c_76_48_2_False_shift <= shift_left(c_76_48_2_False_resize, 2);
  c_76_60_1_False_resize <= c_60(27 downto 0);
  c_76_60_1_False_shift <= shift_left(c_76_60_1_False_resize, 1);
  with config_select_23 select c_76_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "11" when others;
  with c_76_sel select c_76 <=
    c_76_51_7_False_shift when "00",
    c_76_21_0_False_shift when "01",
    c_76_48_2_False_shift when "10",
    c_76_60_1_False_shift when others;
  -- node of type 'mux' in stage 19 with id 77 and associated fundamentals [[2176], [512], [2049], [452]]
  c_77_0_9_False_resize <= resize(c_0, 28);
  c_77_0_9_False_shift <= shift_left(c_77_0_9_False_resize, 9);
  c_77_30_2_False_resize <= resize(c_30, 28);
  c_77_30_2_False_shift <= shift_left(c_77_30_2_False_resize, 2);
  c_77_27_2_False_resize <= resize(c_27, 28);
  c_77_27_2_False_shift <= shift_left(c_77_27_2_False_resize, 2);
  c_77_42_0_False_resize <= c_42;
  c_77_42_0_False_shift <= shift_left(c_77_42_0_False_resize, 0);
  with config_select_19 select c_77_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "11" when others;
  with c_77_sel select c_77 <=
    c_77_0_9_False_shift when "00",
    c_77_30_2_False_shift when "01",
    c_77_27_2_False_shift when "10",
    c_77_42_0_False_shift when others;
  -- node of type 'add_sub' in stage 24 with id 78 and associated fundamentals [[5120], [-692], [594], [893]]
  with config_select_24 select c_78_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_78: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 28,
      w_o => 29,
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
      sub_i => c_78_sub_sel,
      x_i => c_76,
      y_i => c_77,
      z_o => c_78_oshift
    );
  c_78 <= c_78_oshift(28 downto 0);
  -- node of type 'mux' in stage 25 with id 79 and associated fundamentals [[192], [147], [4752], [6144]]
  c_79_78_3_False_resize <= c_78;
  c_79_78_3_False_shift <= shift_left(c_79_78_3_False_resize, 3);
  c_79_42_0_False_resize <= resize(c_42, 29);
  c_79_42_0_False_shift <= shift_left(c_79_42_0_False_resize, 0);
  c_79_51_5_False_resize <= resize(c_51, 29);
  c_79_51_5_False_shift <= shift_left(c_79_51_5_False_resize, 5);
  c_79_3_8_False_resize <= resize(c_3, 29);
  c_79_3_8_False_shift <= shift_left(c_79_3_8_False_resize, 8);
  with config_select_25 select c_79_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  with c_79_sel select c_79 <=
    c_79_78_3_False_shift when "00",
    c_79_42_0_False_shift when "01",
    c_79_51_5_False_shift when "10",
    c_79_3_8_False_shift when others;
  -- node of type 'mux' in stage 25 with id 80 and associated fundamentals [[4], [-692], [3008], [6112]]
  c_80_57_4_False_resize <= resize(c_57, 29);
  c_80_57_4_False_shift <= shift_left(c_80_57_4_False_resize, 4);
  c_80_78_0_False_resize <= c_78;
  c_80_78_0_False_shift <= shift_left(c_80_78_0_False_resize, 0);
  c_80_54_0_False_resize <= resize(c_54, 29);
  c_80_54_0_False_shift <= shift_left(c_80_54_0_False_resize, 0);
  c_80_60_0_False_resize <= c_60;
  c_80_60_0_False_shift <= shift_left(c_80_60_0_False_resize, 0);
  with config_select_25 select c_80_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  with c_80_sel select c_80 <=
    c_80_57_4_False_shift when "00",
    c_80_78_0_False_shift when "01",
    c_80_54_0_False_shift when "10",
    c_80_60_0_False_shift when others;
  -- node of type 'add_sub' in stage 26 with id 81 and associated fundamentals [[196], [-545], [7760], [32]]
  with config_select_26 select c_81_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_81: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 29,
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
      sub_i => c_81_sub_sel,
      x_i => c_79,
      y_i => c_80,
      z_o => c_81_oshift
    );
  c_81 <= c_81_oshift(28 downto 0);
  -- node of type 'mux' in stage 21 with id 82 and associated fundamentals [[1], [83], [64], [-704]]
  c_82_33_6_False_resize <= c_33(25 downto 0);
  c_82_33_6_False_shift <= shift_left(c_82_33_6_False_resize, 6);
  c_82_48_0_False_resize <= resize(c_48, 26);
  c_82_48_0_False_shift <= shift_left(c_82_48_0_False_resize, 0);
  c_82_21_6_False_resize <= c_21(25 downto 0);
  c_82_21_6_False_shift <= shift_left(c_82_21_6_False_resize, 6);
  c_82_0_0_False_resize <= resize(c_0, 26);
  c_82_0_0_False_shift <= shift_left(c_82_0_0_False_resize, 0);
  with config_select_21 select c_82_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  with c_82_sel select c_82 <=
    c_82_33_6_False_shift when "00",
    c_82_48_0_False_shift when "01",
    c_82_21_6_False_shift when "10",
    c_82_0_0_False_shift when others;
  -- node of type 'mux' in stage 25 with id 83 and associated fundamentals [[120], [1312], [0], [10253]]
  c_83_57_0_False_resize <= resize(c_57, 30);
  c_83_57_0_False_shift <= shift_left(c_83_57_0_False_resize, 0);
  c_83_48_0_False_resize <= resize(c_48, 30);
  c_83_48_0_False_shift <= shift_left(c_83_48_0_False_resize, 0);
  c_83_66_0_False_resize <= c_66;
  c_83_66_0_False_shift <= shift_left(c_83_66_0_False_resize, 0);
  c_83_27_4_False_resize <= resize(c_27, 30);
  c_83_27_4_False_shift <= shift_left(c_83_27_4_False_resize, 4);
  with config_select_25 select c_83_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "11" when others;
  with c_83_sel select c_83 <=
    c_83_57_0_False_shift when "00",
    c_83_48_0_False_shift when "01",
    c_83_66_0_False_shift when "10",
    c_83_27_4_False_shift when others;
  -- node of type 'add_sub' in stage 26 with id 84 and associated fundamentals [[122], [-1146], [128], [-11661]]
  with config_select_26 select c_84_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_84: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 30,
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
      sub_i => c_84_sub_sel,
      x_i => c_82,
      y_i => c_83,
      z_o => c_84_oshift
    );
  c_84 <= c_84_oshift(29 downto 0);
  -- node of type 'mux' in stage 25 with id 85 and associated fundamentals [[120], [2176], [0], [1]]
  c_85_57_0_False_resize <= c_57;
  c_85_57_0_False_shift <= shift_left(c_85_57_0_False_resize, 0);
  c_85_0_0_False_resize <= resize(c_0, 28);
  c_85_0_0_False_shift <= shift_left(c_85_0_0_False_resize, 0);
  c_85_3_0_False_resize <= resize(c_3, 28);
  c_85_3_0_False_shift <= shift_left(c_85_3_0_False_resize, 0);
  c_85_45_0_False_resize <= c_45(27 downto 0);
  c_85_45_0_False_shift <= shift_left(c_85_45_0_False_resize, 0);
  with config_select_25 select c_85_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "10",
    "11" when others;
  with c_85_sel select c_85 <=
    c_85_57_0_False_shift when "00",
    c_85_0_0_False_shift when "01",
    c_85_3_0_False_shift when "10",
    c_85_45_0_False_shift when others;
  -- node of type 'mux' in stage 29 with id 86 and associated fundamentals [[576], [14368], [128], [183]]
  c_86_18_0_False_resize <= resize(c_18, 30);
  c_86_18_0_False_shift <= shift_left(c_86_18_0_False_resize, 0);
  c_86_69_0_False_resize <= c_69;
  c_86_69_0_False_shift <= shift_left(c_86_69_0_False_resize, 0);
  c_86_75_0_False_resize <= resize(c_75, 30);
  c_86_75_0_False_shift <= shift_left(c_86_75_0_False_resize, 0);
  c_86_84_0_False_resize <= c_84;
  c_86_84_0_False_shift <= shift_left(c_86_84_0_False_resize, 0);
  with config_select_29 select c_86_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  with c_86_sel select c_86 <=
    c_86_18_0_False_shift when "00",
    c_86_69_0_False_shift when "01",
    c_86_75_0_False_shift when "10",
    c_86_84_0_False_shift when others;
  -- node of type 'add_sub' in stage 30 with id 87 and associated fundamentals [[174], [-3048], [32], [46]]
  with config_select_30 select c_87_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_87: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 30,
      w_o => 25,
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
      sub_i => c_87_sub_sel,
      x_i => c_85,
      y_i => c_86,
      z_o => c_87_oshift
    );
  c_87 <= c_87_oshift(24 downto 0);
  -- node of type 'mux' in stage 27 with id 88 and associated fundamentals [[240], [3218], [15520], [256]]
  c_88_57_1_False_resize <= resize(c_57, 30);
  c_88_57_1_False_shift <= shift_left(c_88_57_1_False_resize, 1);
  c_88_81_1_False_resize <= resize(c_81, 30);
  c_88_81_1_False_shift <= shift_left(c_88_81_1_False_resize, 1);
  c_88_66_0_False_resize <= c_66;
  c_88_66_0_False_shift <= shift_left(c_88_66_0_False_resize, 0);
  c_88_0_8_False_resize <= resize(c_0, 30);
  c_88_0_8_False_shift <= shift_left(c_88_0_8_False_resize, 8);
  with config_select_27 select c_88_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "11" when others;
  with c_88_sel select c_88 <=
    c_88_57_1_False_shift when "00",
    c_88_81_1_False_shift when "01",
    c_88_66_0_False_shift when "10",
    c_88_0_8_False_shift when others;
  -- node of type 'mux' in stage 27 with id 89 and associated fundamentals [[1], [-2292], [1], [256]]
  c_89_0_0_False_resize <= resize(c_0, 28);
  c_89_0_0_False_shift <= shift_left(c_89_0_0_False_resize, 0);
  c_89_66_0_False_resize <= c_66(27 downto 0);
  c_89_66_0_False_shift <= shift_left(c_89_66_0_False_resize, 0);
  c_89_81_3_False_resize <= c_81(27 downto 0);
  c_89_81_3_False_shift <= shift_left(c_89_81_3_False_resize, 3);
  c_89_84_1_False_resize <= c_84(27 downto 0);
  c_89_84_1_False_shift <= shift_left(c_89_84_1_False_resize, 1);
  with config_select_27 select c_89_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  with c_89_sel select c_89 <=
    c_89_0_0_False_shift when "00",
    c_89_66_0_False_shift when "01",
    c_89_81_3_False_shift when "10",
    c_89_84_1_False_shift when others;
  -- node of type 'add_sub' in stage 28 with id 90 and associated fundamentals [[239], [926], [15521], [512]]
  with config_select_28 select c_90_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_90: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 28,
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
  -- node of type 'mux' in stage 29 with id 91 and associated fundamentals [[2], [926], [1], [912]]
  c_91_48_4_False_resize <= resize(c_48, 26);
  c_91_48_4_False_shift <= shift_left(c_91_48_4_False_resize, 4);
  c_91_0_1_False_resize <= resize(c_0, 26);
  c_91_0_1_False_shift <= shift_left(c_91_0_1_False_resize, 1);
  c_91_0_0_False_resize <= resize(c_0, 26);
  c_91_0_0_False_shift <= shift_left(c_91_0_0_False_resize, 0);
  c_91_90_0_False_resize <= c_90(25 downto 0);
  c_91_90_0_False_shift <= shift_left(c_91_90_0_False_resize, 0);
  with config_select_29 select c_91_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "10",
    "11" when others;
  with c_91_sel select c_91 <=
    c_91_48_4_False_shift when "00",
    c_91_0_1_False_shift when "01",
    c_91_0_0_False_shift when "10",
    c_91_90_0_False_shift when others;
  -- node of type 'mux' in stage 31 with id 92 and associated fundamentals [[478], [332], [32], [9]]
  c_92_87_0_False_resize <= c_87;
  c_92_87_0_False_shift <= shift_left(c_92_87_0_False_resize, 0);
  c_92_48_2_False_resize <= c_48;
  c_92_48_2_False_shift <= shift_left(c_92_48_2_False_resize, 2);
  c_92_27_0_False_resize <= c_27(24 downto 0);
  c_92_27_0_False_shift <= shift_left(c_92_27_0_False_resize, 0);
  c_92_90_1_False_resize <= c_90(24 downto 0);
  c_92_90_1_False_shift <= shift_left(c_92_90_1_False_resize, 1);
  with config_select_31 select c_92_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  with c_92_sel select c_92 <=
    c_92_87_0_False_shift when "00",
    c_92_48_2_False_shift when "01",
    c_92_27_0_False_shift when "10",
    c_92_90_1_False_shift when others;
  -- node of type 'add_sub' in stage 32 with id 93 and associated fundamentals [[958], [262], [65], [930]]
  with config_select_32 select c_93_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_93: entity work.adder_node
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
      sub_i => c_93_sub_sel,
      x_i => c_91,
      y_i => c_92,
      z_o => c_93_oshift
    );
  c_93 <= c_93_oshift(25 downto 0);
  -- node of type 'mux' in stage 19 with id 94 and associated fundamentals [[1536], [146], [1], [288]]
  c_94_42_4_False_resize <= c_42(26 downto 0);
  c_94_42_4_False_shift <= shift_left(c_94_42_4_False_resize, 4);
  c_94_0_0_False_resize <= resize(c_0, 27);
  c_94_0_0_False_shift <= shift_left(c_94_0_0_False_resize, 0);
  c_94_39_0_False_resize <= resize(c_39, 27);
  c_94_39_0_False_shift <= shift_left(c_94_39_0_False_resize, 0);
  c_94_45_2_False_resize <= c_45(26 downto 0);
  c_94_45_2_False_shift <= shift_left(c_94_45_2_False_resize, 2);
  with config_select_19 select c_94_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  with c_94_sel select c_94 <=
    c_94_42_4_False_shift when "00",
    c_94_0_0_False_shift when "01",
    c_94_39_0_False_shift when "10",
    c_94_45_2_False_shift when others;
  -- node of type 'mux' in stage 25 with id 95 and associated fundamentals [[666], [280], [188], [74]]
  c_95_60_0_False_resize <= c_60(25 downto 0);
  c_95_60_0_False_shift <= shift_left(c_95_60_0_False_resize, 0);
  c_95_57_0_False_resize <= c_57(25 downto 0);
  c_95_57_0_False_shift <= shift_left(c_95_57_0_False_resize, 0);
  c_95_39_1_False_resize <= resize(c_39, 26);
  c_95_39_1_False_shift <= shift_left(c_95_39_1_False_resize, 1);
  c_95_15_0_False_resize <= c_15(25 downto 0);
  c_95_15_0_False_shift <= shift_left(c_95_15_0_False_resize, 0);
  with config_select_25 select c_95_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "11" when others;
  with c_95_sel select c_95 <=
    c_95_60_0_False_shift when "00",
    c_95_57_0_False_shift when "01",
    c_95_39_1_False_shift when "10",
    c_95_15_0_False_shift when others;
  -- node of type 'add_sub' in stage 26 with id 96 and associated fundamentals [[870], [426], [189], [362]]
  with config_select_26 select c_96_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_96: entity work.adder_node
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
      sub_i => c_96_sub_sel,
      x_i => c_94,
      y_i => c_95,
      z_o => c_96_oshift
    );
  c_96 <= c_96_oshift(25 downto 0);
  -- node of type 'mux' in stage 33 with id 97 and associated fundamentals [[0], [9232], [65], [9856]]
  c_97_45_0_False_resize <= c_45;
  c_97_45_0_False_shift <= shift_left(c_97_45_0_False_resize, 0);
  c_97_36_0_False_resize <= c_36;
  c_97_36_0_False_shift <= shift_left(c_97_36_0_False_resize, 0);
  c_97_3_0_False_resize <= resize(c_3, 30);
  c_97_3_0_False_shift <= shift_left(c_97_3_0_False_resize, 0);
  c_97_93_0_False_resize <= resize(c_93, 30);
  c_97_93_0_False_shift <= shift_left(c_97_93_0_False_resize, 0);
  with config_select_33 select c_97_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  with c_97_sel select c_97 <=
    c_97_45_0_False_shift when "00",
    c_97_36_0_False_shift when "01",
    c_97_3_0_False_shift when "10",
    c_97_93_0_False_shift when others;
  -- node of type 'mux' in stage 29 with id 98 and associated fundamentals [[1600], [144], [15521], [512]]
  c_98_90_0_False_resize <= c_90;
  c_98_90_0_False_shift <= shift_left(c_98_90_0_False_resize, 0);
  c_98_6_0_False_resize <= resize(c_6, 30);
  c_98_6_0_False_shift <= shift_left(c_98_6_0_False_resize, 0);
  c_98_63_0_False_resize <= resize(c_63, 30);
  c_98_63_0_False_shift <= shift_left(c_98_63_0_False_resize, 0);
  with config_select_29 select c_98_sel <= 
    "00" when "11",
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_98_sel select c_98 <=
    c_98_90_0_False_shift when "00",
    c_98_6_0_False_shift when "01",
    c_98_63_0_False_shift when others;
  -- node of type 'add_sub' in stage 34 with id 99 and associated fundamentals [[50], [293], [-483], [292]]
  with config_select_34 select c_99_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_99: entity work.adder_node
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
      sub_i => c_99_sub_sel,
      x_i => c_97,
      y_i => c_98,
      z_o => c_99_oshift
    );
  c_99 <= c_99_oshift(24 downto 0);
  -- node of type 'mux' in stage 25 with id 100 and associated fundamentals [[666], [83], [1024], [893]]
  c_100_60_0_False_resize <= c_60(25 downto 0);
  c_100_60_0_False_shift <= shift_left(c_100_60_0_False_resize, 0);
  c_100_48_0_False_resize <= resize(c_48, 26);
  c_100_48_0_False_shift <= shift_left(c_100_48_0_False_resize, 0);
  c_100_0_10_False_resize <= resize(c_0, 26);
  c_100_0_10_False_shift <= shift_left(c_100_0_10_False_resize, 10);
  c_100_78_0_False_resize <= c_78(25 downto 0);
  c_100_78_0_False_shift <= shift_left(c_100_78_0_False_resize, 0);
  with config_select_25 select c_100_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "11" when others;
  with c_100_sel select c_100 <=
    c_100_60_0_False_shift when "00",
    c_100_48_0_False_shift when "01",
    c_100_0_10_False_shift when "10",
    c_100_78_0_False_shift when others;
  -- node of type 'mux' in stage 33 with id 101 and associated fundamentals [[1], [8], [65], [46]]
  c_101_93_0_False_resize <= c_93(22 downto 0);
  c_101_93_0_False_shift <= shift_left(c_101_93_0_False_resize, 0);
  c_101_0_3_False_resize <= resize(c_0, 23);
  c_101_0_3_False_shift <= shift_left(c_101_0_3_False_resize, 3);
  c_101_87_0_False_resize <= c_87(22 downto 0);
  c_101_87_0_False_shift <= shift_left(c_101_87_0_False_resize, 0);
  c_101_0_0_False_resize <= resize(c_0, 23);
  c_101_0_0_False_shift <= shift_left(c_101_0_0_False_resize, 0);
  with config_select_33 select c_101_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  with c_101_sel select c_101 <=
    c_101_93_0_False_shift when "00",
    c_101_0_3_False_shift when "01",
    c_101_87_0_False_shift when "10",
    c_101_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 34 with id 102 and associated fundamentals [[665], [91], [959], [939]]
  with config_select_34 select c_102_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_102: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 23,
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
      sub_i => c_102_sub_sel,
      x_i => c_100,
      y_i => c_101,
      z_o => c_102_oshift
    );
  c_102 <= c_102_oshift(25 downto 0);
  -- node of type 'mux' in stage 33 with id 103 and associated fundamentals [[331], [524], [1], [-11661]]
  c_103_0_0_False_resize <= resize(c_0, 30);
  c_103_0_0_False_shift <= shift_left(c_103_0_0_False_resize, 0);
  c_103_84_0_False_resize <= c_84;
  c_103_84_0_False_shift <= shift_left(c_103_84_0_False_resize, 0);
  c_103_93_1_False_resize <= resize(c_93, 30);
  c_103_93_1_False_shift <= shift_left(c_103_93_1_False_resize, 1);
  c_103_48_0_False_resize <= resize(c_48, 30);
  c_103_48_0_False_shift <= shift_left(c_103_48_0_False_resize, 0);
  with config_select_33 select c_103_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  with c_103_sel select c_103 <=
    c_103_0_0_False_shift when "00",
    c_103_84_0_False_shift when "01",
    c_103_93_1_False_shift when "10",
    c_103_48_0_False_shift when others;
  -- node of type 'mux' in stage 29 with id 104 and associated fundamentals [[4], [2], [448], [8192]]
  c_104_90_4_False_resize <= c_90(28 downto 0);
  c_104_90_4_False_shift <= shift_left(c_104_90_4_False_resize, 4);
  c_104_0_1_False_resize <= resize(c_0, 29);
  c_104_0_1_False_shift <= shift_left(c_104_0_1_False_resize, 1);
  c_104_0_2_False_resize <= resize(c_0, 29);
  c_104_0_2_False_shift <= shift_left(c_104_0_2_False_resize, 2);
  c_104_36_0_False_resize <= c_36(28 downto 0);
  c_104_36_0_False_shift <= shift_left(c_104_36_0_False_resize, 0);
  with config_select_29 select c_104_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  with c_104_sel select c_104 <=
    c_104_90_4_False_shift when "00",
    c_104_0_1_False_shift when "01",
    c_104_0_2_False_shift when "10",
    c_104_36_0_False_shift when others;
  -- node of type 'add_sub' in stage 34 with id 105 and associated fundamentals [[335], [526], [-447], [-3469]]
  with config_select_34 select c_105_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_105: entity work.adder_node
    generic map (
      w_x_i => 30,
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
      sub_i => c_105_sub_sel,
      x_i => c_103,
      y_i => c_104,
      z_o => c_105_oshift
    );
  c_105 <= c_105_oshift(27 downto 0);
  -- node of type 'mux' in stage 35 with id 106 and associated fundamentals [[40], [-545], [48], [9344]]
  c_106_63_0_False_resize <= resize(c_63, 30);
  c_106_63_0_False_shift <= shift_left(c_106_63_0_False_resize, 0);
  c_106_36_2_False_resize <= c_36;
  c_106_36_2_False_shift <= shift_left(c_106_36_2_False_resize, 2);
  c_106_99_5_False_resize <= resize(c_99, 30);
  c_106_99_5_False_shift <= shift_left(c_106_99_5_False_resize, 5);
  c_106_81_0_False_resize <= resize(c_81, 30);
  c_106_81_0_False_shift <= shift_left(c_106_81_0_False_resize, 0);
  with config_select_35 select c_106_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  with c_106_sel select c_106 <=
    c_106_63_0_False_shift when "00",
    c_106_36_2_False_shift when "01",
    c_106_99_5_False_shift when "10",
    c_106_81_0_False_shift when others;
  -- node of type 'mux' in stage 27 with id 107 and associated fundamentals [[1024], [332], [1], [10253]]
  c_107_33_0_False_resize <= resize(c_33, 30);
  c_107_33_0_False_shift <= shift_left(c_107_33_0_False_resize, 0);
  c_107_72_2_False_resize <= c_72;
  c_107_72_2_False_shift <= shift_left(c_107_72_2_False_resize, 2);
  c_107_48_2_False_resize <= resize(c_48, 30);
  c_107_48_2_False_shift <= shift_left(c_107_48_2_False_resize, 2);
  c_107_66_0_False_resize <= c_66;
  c_107_66_0_False_shift <= shift_left(c_107_66_0_False_resize, 0);
  with config_select_27 select c_107_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  with c_107_sel select c_107 <=
    c_107_33_0_False_shift when "00",
    c_107_72_2_False_shift when "01",
    c_107_48_2_False_shift when "10",
    c_107_66_0_False_shift when others;
  -- node of type 'add_sub' in stage 36 with id 108 and associated fundamentals [[-984], [-877], [49], [-909]]
  with config_select_36 select c_108_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_108: entity work.adder_node
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
      sub_i => c_108_sub_sel,
      x_i => c_106,
      y_i => c_107,
      z_o => c_108_oshift
    );
  c_108 <= c_108_oshift(25 downto 0);
  -- node of type 'mux' in stage 29 with id 109 and associated fundamentals [[488], [1852], [0], [183]]
  c_109_48_0_False_resize <= resize(c_48, 27);
  c_109_48_0_False_shift <= shift_left(c_109_48_0_False_resize, 0);
  c_109_18_0_False_resize <= c_18(26 downto 0);
  c_109_18_0_False_shift <= shift_left(c_109_18_0_False_resize, 0);
  c_109_84_2_False_resize <= c_84(26 downto 0);
  c_109_84_2_False_shift <= shift_left(c_109_84_2_False_resize, 2);
  c_109_90_1_False_resize <= c_90(26 downto 0);
  c_109_90_1_False_shift <= shift_left(c_109_90_1_False_resize, 1);
  with config_select_29 select c_109_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "11" when others;
  with c_109_sel select c_109 <=
    c_109_48_0_False_shift when "00",
    c_109_18_0_False_shift when "01",
    c_109_84_2_False_shift when "10",
    c_109_90_1_False_shift when others;
  -- node of type 'mux' in stage 35 with id 110 and associated fundamentals [[335], [1176], [-483], [-704]]
  c_110_99_0_False_resize <= resize(c_99, 27);
  c_110_99_0_False_shift <= shift_left(c_110_99_0_False_resize, 0);
  c_110_21_6_False_resize <= c_21(26 downto 0);
  c_110_21_6_False_shift <= shift_left(c_110_21_6_False_resize, 6);
  c_110_105_0_False_resize <= c_105(26 downto 0);
  c_110_105_0_False_shift <= shift_left(c_110_105_0_False_resize, 0);
  c_110_42_3_False_resize <= c_42(26 downto 0);
  c_110_42_3_False_shift <= shift_left(c_110_42_3_False_resize, 3);
  with config_select_35 select c_110_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "11" when others;
  with c_110_sel select c_110 <=
    c_110_99_0_False_shift when "00",
    c_110_21_6_False_shift when "01",
    c_110_105_0_False_shift when "10",
    c_110_42_3_False_shift when others;
  -- node of type 'sub' in stage 36 with id 111 and associated fundamentals [[153], [676], [483], [887]]
  inst_adder_node_111: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 27,
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
      x_i => c_109,
      y_i => c_110,
      z_o => c_111_oshift
    );
  c_111 <= c_111_oshift(25 downto 0);
  -- node of type 'mux' in stage 35 with id 112 and associated fundamentals [[392], [293], [172], [1]]
  c_112_72_2_False_resize <= c_72(24 downto 0);
  c_112_72_2_False_shift <= shift_left(c_112_72_2_False_resize, 2);
  c_112_99_0_False_resize <= c_99;
  c_112_99_0_False_shift <= shift_left(c_112_99_0_False_resize, 0);
  c_112_0_0_False_resize <= resize(c_0, 25);
  c_112_0_0_False_shift <= shift_left(c_112_0_0_False_resize, 0);
  c_112_81_1_False_resize <= c_81(24 downto 0);
  c_112_81_1_False_shift <= shift_left(c_112_81_1_False_resize, 1);
  with config_select_35 select c_112_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  with c_112_sel select c_112 <=
    c_112_72_2_False_shift when "00",
    c_112_99_0_False_shift when "01",
    c_112_0_0_False_shift when "10",
    c_112_81_1_False_shift when others;
  -- node of type 'mux' in stage 35 with id 113 and associated fundamentals [[331], [182], [189], [6112]]
  c_113_96_0_False_resize <= resize(c_96, 29);
  c_113_96_0_False_shift <= shift_left(c_113_96_0_False_resize, 0);
  c_113_60_0_False_resize <= c_60;
  c_113_60_0_False_shift <= shift_left(c_113_60_0_False_resize, 0);
  c_113_102_1_False_resize <= resize(c_102, 29);
  c_113_102_1_False_shift <= shift_left(c_113_102_1_False_resize, 1);
  c_113_48_0_False_resize <= resize(c_48, 29);
  c_113_48_0_False_shift <= shift_left(c_113_48_0_False_resize, 0);
  with config_select_35 select c_113_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  with c_113_sel select c_113 <=
    c_113_96_0_False_shift when "00",
    c_113_60_0_False_shift when "01",
    c_113_102_1_False_shift when "10",
    c_113_48_0_False_shift when others;
  -- node of type 'add_sub' in stage 36 with id 114 and associated fundamentals [[61], [475], [361], [-6111]]
  with config_select_36 select c_114_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_114: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_114_sub_sel,
      x_i => c_112,
      y_i => c_113,
      z_o => c_114_oshift
    );
  c_114 <= c_114_oshift(25 downto 0);
  -- node of type 'mux' in stage 35 with id 115 and associated fundamentals [[665], [768], [768], [2896]]
  c_115_27_2_False_resize <= resize(c_27, 28);
  c_115_27_2_False_shift <= shift_left(c_115_27_2_False_resize, 2);
  c_115_51_0_False_resize <= c_51;
  c_115_51_0_False_shift <= shift_left(c_115_51_0_False_resize, 0);
  c_115_102_0_False_resize <= resize(c_102, 28);
  c_115_102_0_False_shift <= shift_left(c_115_102_0_False_resize, 0);
  c_115_96_3_False_resize <= resize(c_96, 28);
  c_115_96_3_False_shift <= shift_left(c_115_96_3_False_resize, 3);
  with config_select_35 select c_115_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  with c_115_sel select c_115 <=
    c_115_27_2_False_shift when "00",
    c_115_51_0_False_shift when "01",
    c_115_102_0_False_shift when "10",
    c_115_96_3_False_shift when others;
  -- node of type 'mux' in stage 35 with id 116 and associated fundamentals [[64], [91], [43], [-3469]]
  c_116_54_4_False_resize <= resize(c_54, 28);
  c_116_54_4_False_shift <= shift_left(c_116_54_4_False_resize, 4);
  c_116_102_0_False_resize <= resize(c_102, 28);
  c_116_102_0_False_shift <= shift_left(c_116_102_0_False_resize, 0);
  c_116_72_0_False_resize <= c_72(27 downto 0);
  c_116_72_0_False_shift <= shift_left(c_116_72_0_False_resize, 0);
  c_116_105_0_False_resize <= c_105;
  c_116_105_0_False_shift <= shift_left(c_116_105_0_False_resize, 0);
  with config_select_35 select c_116_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "11" when others;
  with c_116_sel select c_116 <=
    c_116_54_4_False_shift when "00",
    c_116_102_0_False_shift when "01",
    c_116_72_0_False_shift when "10",
    c_116_105_0_False_shift when others;
  -- node of type 'add' in stage 36 with id 117 and associated fundamentals [[729], [859], [811], [-573]]
  inst_adder_node_117: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 28,
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
      x_i => c_115,
      y_i => c_116,
      z_o => c_117_oshift
    );
  c_117 <= c_117_oshift(25 downto 0);
  -- node of type 'mux' in stage 37 with id 118 and associated fundamentals [[870], [364], [98], [887]]
  c_118_102_2_False_resize <= c_102;
  c_118_102_2_False_shift <= shift_left(c_118_102_2_False_resize, 2);
  c_118_111_0_False_resize <= c_111;
  c_118_111_0_False_shift <= shift_left(c_118_111_0_False_resize, 0);
  c_118_96_0_False_resize <= c_96;
  c_118_96_0_False_shift <= shift_left(c_118_96_0_False_resize, 0);
  c_118_108_1_False_resize <= c_108;
  c_118_108_1_False_shift <= shift_left(c_118_108_1_False_resize, 1);
  with config_select_37 select c_118_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "11" when others;
  with c_118_sel select c_118 <=
    c_118_102_2_False_shift when "00",
    c_118_111_0_False_shift when "01",
    c_118_96_0_False_shift when "10",
    c_118_108_1_False_shift when others;
  -- node of type 'output' in stage 37 with id 119 and associated fundamentals [[870], [364], [98], [887]]
  c_119_resize <= c_118;
  c_119 <= shift_left(c_119_resize, 0);
  -- node of type 'mux' in stage 33 with id 120 and associated fundamentals [[958], [83], [378], [724]]
  c_120_96_1_False_resize <= c_96;
  c_120_96_1_False_shift <= shift_left(c_120_96_1_False_resize, 1);
  c_120_48_0_False_resize <= resize(c_48, 26);
  c_120_48_0_False_shift <= shift_left(c_120_48_0_False_resize, 0);
  c_120_93_0_False_resize <= c_93;
  c_120_93_0_False_shift <= shift_left(c_120_93_0_False_resize, 0);
  with config_select_33 select c_120_sel <= 
    "00" when "10",
    "00" when "11",
    "01" when "01",
    "10" when others;
  with c_120_sel select c_120 <=
    c_120_96_1_False_shift when "00",
    c_120_48_0_False_shift when "01",
    c_120_93_0_False_shift when others;
  -- node of type 'output' in stage 33 with id 121 and associated fundamentals [[958], [83], [378], [724]]
  c_121_resize <= c_120;
  c_121 <= shift_left(c_121_resize, 0);
  -- node of type 'mux' in stage 37 with id 122 and associated fundamentals [[61], [526], [959], [930]]
  c_122_93_0_False_resize <= c_93;
  c_122_93_0_False_shift <= shift_left(c_122_93_0_False_resize, 0);
  c_122_102_0_False_resize <= c_102;
  c_122_102_0_False_shift <= shift_left(c_122_102_0_False_resize, 0);
  c_122_114_0_False_resize <= c_114;
  c_122_114_0_False_shift <= shift_left(c_122_114_0_False_resize, 0);
  c_122_105_0_False_resize <= c_105(25 downto 0);
  c_122_105_0_False_shift <= shift_left(c_122_105_0_False_resize, 0);
  with config_select_37 select c_122_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  with c_122_sel select c_122 <=
    c_122_93_0_False_shift when "00",
    c_122_102_0_False_shift when "01",
    c_122_114_0_False_shift when "10",
    c_122_105_0_False_shift when others;
  -- node of type 'output' in stage 37 with id 123 and associated fundamentals [[61], [526], [959], [930]]
  c_123_resize <= c_122;
  c_123 <= shift_left(c_123_resize, 0);
  -- node of type 'mux' in stage 35 with id 124 and associated fundamentals [[665], [302], [255], [903]]
  c_124_102_0_False_resize <= c_102;
  c_124_102_0_False_shift <= shift_left(c_124_102_0_False_resize, 0);
  c_124_60_0_False_resize <= c_60(25 downto 0);
  c_124_60_0_False_shift <= shift_left(c_124_60_0_False_resize, 0);
  c_124_72_0_False_resize <= c_72(25 downto 0);
  c_124_72_0_False_shift <= shift_left(c_124_72_0_False_resize, 0);
  c_124_66_0_False_resize <= c_66(25 downto 0);
  c_124_66_0_False_shift <= shift_left(c_124_66_0_False_resize, 0);
  with config_select_35 select c_124_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  with c_124_sel select c_124 <=
    c_124_102_0_False_shift when "00",
    c_124_60_0_False_shift when "01",
    c_124_72_0_False_shift when "10",
    c_124_66_0_False_shift when others;
  -- node of type 'output' in stage 35 with id 125 and associated fundamentals [[665], [302], [255], [903]]
  c_125_resize <= c_124;
  c_125 <= shift_left(c_125_resize, 0);
  -- node of type 'mux' in stage 37 with id 126 and associated fundamentals [[400], [676], [344], [147]]
  c_126_72_3_False_resize <= c_72(25 downto 0);
  c_126_72_3_False_shift <= shift_left(c_126_72_3_False_resize, 3);
  c_126_75_0_False_resize <= c_75;
  c_126_75_0_False_shift <= shift_left(c_126_75_0_False_resize, 0);
  c_126_111_0_False_resize <= c_111;
  c_126_111_0_False_shift <= shift_left(c_126_111_0_False_resize, 0);
  c_126_99_3_False_resize <= resize(c_99, 26);
  c_126_99_3_False_shift <= shift_left(c_126_99_3_False_resize, 3);
  with config_select_37 select c_126_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  with c_126_sel select c_126 <=
    c_126_72_3_False_shift when "00",
    c_126_75_0_False_shift when "01",
    c_126_111_0_False_shift when "10",
    c_126_99_3_False_shift when others;
  -- node of type 'output' in stage 37 with id 127 and associated fundamentals [[400], [676], [344], [147]]
  c_127_resize <= c_126;
  c_127 <= shift_left(c_127_resize, 0);
  -- node of type 'mux' in stage 37 with id 128 and associated fundamentals [[729], [281], [594], [92]]
  c_128_87_1_False_resize <= resize(c_87, 26);
  c_128_87_1_False_shift <= shift_left(c_128_87_1_False_resize, 1);
  c_128_54_0_False_resize <= resize(c_54, 26);
  c_128_54_0_False_shift <= shift_left(c_128_54_0_False_resize, 0);
  c_128_78_0_False_resize <= c_78(25 downto 0);
  c_128_78_0_False_shift <= shift_left(c_128_78_0_False_resize, 0);
  c_128_117_0_False_resize <= c_117;
  c_128_117_0_False_shift <= shift_left(c_128_117_0_False_resize, 0);
  with config_select_37 select c_128_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  with c_128_sel select c_128 <=
    c_128_87_1_False_shift when "00",
    c_128_54_0_False_shift when "01",
    c_128_78_0_False_shift when "10",
    c_128_117_0_False_shift when others;
  -- node of type 'output' in stage 37 with id 129 and associated fundamentals [[729], [281], [594], [92]]
  c_129_resize <= c_128;
  c_129 <= shift_left(c_129_resize, 0);
  -- node of type 'mux' in stage 37 with id 130 and associated fundamentals [[331], [475], [361], [939]]
  c_130_114_0_False_resize <= c_114;
  c_130_114_0_False_shift <= shift_left(c_130_114_0_False_resize, 0);
  c_130_102_0_False_resize <= c_102;
  c_130_102_0_False_shift <= shift_left(c_130_102_0_False_resize, 0);
  c_130_48_0_False_resize <= resize(c_48, 26);
  c_130_48_0_False_shift <= shift_left(c_130_48_0_False_resize, 0);
  with config_select_37 select c_130_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "11",
    "10" when others;
  with c_130_sel select c_130 <=
    c_130_114_0_False_shift when "00",
    c_130_102_0_False_shift when "01",
    c_130_48_0_False_shift when others;
  -- node of type 'output' in stage 37 with id 131 and associated fundamentals [[331], [475], [361], [939]]
  c_131_resize <= c_130;
  c_131 <= shift_left(c_131_resize, 0);
  -- node of type 'mux' in stage 37 with id 132 and associated fundamentals [[670], [859], [483], [686]]
  c_132_117_0_False_resize <= c_117;
  c_132_117_0_False_shift <= shift_left(c_132_117_0_False_resize, 0);
  c_132_111_0_False_resize <= c_111;
  c_132_111_0_False_shift <= shift_left(c_132_111_0_False_resize, 0);
  c_132_105_1_False_resize <= c_105(25 downto 0);
  c_132_105_1_False_shift <= shift_left(c_132_105_1_False_resize, 1);
  c_132_24_1_False_resize <= c_24;
  c_132_24_1_False_shift <= shift_left(c_132_24_1_False_resize, 1);
  with config_select_37 select c_132_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  with c_132_sel select c_132 <=
    c_132_117_0_False_shift when "00",
    c_132_111_0_False_shift when "01",
    c_132_105_1_False_shift when "10",
    c_132_24_1_False_shift when others;
  -- node of type 'output' in stage 37 with id 133 and associated fundamentals [[670], [859], [483], [686]]
  c_133_resize <= c_132;
  c_133 <= shift_left(c_133_resize, 0);
  -- node of type 'mux' in stage 37 with id 134 and associated fundamentals [[348], [852], [811], [779]]
  c_134_117_0_False_resize <= c_117;
  c_134_117_0_False_shift <= shift_left(c_134_117_0_False_resize, 0);
  c_134_87_1_False_resize <= resize(c_87, 26);
  c_134_87_1_False_shift <= shift_left(c_134_87_1_False_resize, 1);
  c_134_12_0_False_resize <= c_12(25 downto 0);
  c_134_12_0_False_shift <= shift_left(c_134_12_0_False_resize, 0);
  c_134_96_1_False_resize <= c_96;
  c_134_96_1_False_shift <= shift_left(c_134_96_1_False_resize, 1);
  with config_select_37 select c_134_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  with c_134_sel select c_134 <=
    c_134_117_0_False_shift when "00",
    c_134_87_1_False_shift when "01",
    c_134_12_0_False_shift when "10",
    c_134_96_1_False_shift when others;
  -- node of type 'output' in stage 37 with id 135 and associated fundamentals [[348], [852], [811], [779]]
  c_135_resize <= c_134;
  c_135 <= shift_left(c_135_resize, 0);
  -- node of type 'mux' in stage 37 with id 136 and associated fundamentals [[-984], [-877], [-894], [-909]]
  c_136_108_0_False_resize <= c_108;
  c_136_108_0_False_shift <= shift_left(c_136_108_0_False_resize, 0);
  c_136_105_1_False_resize <= c_105(25 downto 0);
  c_136_105_1_False_shift <= shift_left(c_136_105_1_False_resize, 1);
  with config_select_37 select c_136_sel <= 
    "0" when "11",
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_136_sel select c_136 <=
    c_136_108_0_False_shift when "0",
    c_136_105_1_False_shift when others;
  -- node of type 'output' in stage 37 with id 137 and associated fundamentals [[984], [877], [894], [909]]
  c_137_resize <= c_136;
  c_137 <= -shift_left(c_137_resize, 0);
end architecture;
