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
  signal c_1: signed(18 downto 0);
  signal c_1_i0_resize: signed(18 downto 0);
  signal c_1_i1_resize: signed(18 downto 0);
  signal c_1_i0_shift: signed(18 downto 0);
  signal c_1_i1_shift: signed(18 downto 0);
  signal c_1_arith: signed(18 downto 0);
  signal c_1_oshift: signed(18 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(22 downto 0);
  signal c_2_0_7_False_resize: signed(22 downto 0);
  signal c_2_0_7_False_shift: signed(22 downto 0);
  signal c_2_0_2_False_resize: signed(22 downto 0);
  signal c_2_0_2_False_shift: signed(22 downto 0);
  signal c_2_0_0_False_resize: signed(22 downto 0);
  signal c_2_0_0_False_shift: signed(22 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(23 downto 0);
  signal c_3_i0_resize: signed(23 downto 0);
  signal c_3_i1_resize: signed(23 downto 0);
  signal c_3_i0_shift: signed(23 downto 0);
  signal c_3_i1_shift: signed(23 downto 0);
  signal c_3_arith: signed(23 downto 0);
  signal c_3_oshift: signed(23 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(21 downto 0);
  signal c_4_0_4_False_resize: signed(21 downto 0);
  signal c_4_0_4_False_shift: signed(21 downto 0);
  signal c_4_0_6_False_resize: signed(21 downto 0);
  signal c_4_0_6_False_shift: signed(21 downto 0);
  signal c_4_0_0_False_resize: signed(21 downto 0);
  signal c_4_0_0_False_shift: signed(21 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_i0_resize: signed(22 downto 0);
  signal c_5_i1_resize: signed(22 downto 0);
  signal c_5_i0_shift: signed(22 downto 0);
  signal c_5_i1_shift: signed(22 downto 0);
  signal c_5_arith: signed(22 downto 0);
  signal c_5_oshift: signed(22 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(20 downto 0);
  signal c_6_0_0_False_resize: signed(20 downto 0);
  signal c_6_0_0_False_shift: signed(20 downto 0);
  signal c_6_0_3_False_resize: signed(20 downto 0);
  signal c_6_0_3_False_shift: signed(20 downto 0);
  signal c_6_0_5_False_resize: signed(20 downto 0);
  signal c_6_0_5_False_shift: signed(20 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(21 downto 0);
  signal c_7_i0_resize: signed(21 downto 0);
  signal c_7_i1_resize: signed(21 downto 0);
  signal c_7_i0_shift: signed(21 downto 0);
  signal c_7_i1_shift: signed(21 downto 0);
  signal c_7_arith: signed(21 downto 0);
  signal c_7_oshift: signed(21 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(25 downto 0);
  signal c_8_1_0_False_resize: signed(25 downto 0);
  signal c_8_1_0_False_shift: signed(25 downto 0);
  signal c_8_1_7_False_resize: signed(25 downto 0);
  signal c_8_1_7_False_shift: signed(25 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(25 downto 0);
  signal c_9_i0_resize: signed(25 downto 0);
  signal c_9_i1_resize: signed(25 downto 0);
  signal c_9_i0_shift: signed(25 downto 0);
  signal c_9_i1_shift: signed(25 downto 0);
  signal c_9_arith: signed(25 downto 0);
  signal c_9_oshift: signed(25 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(24 downto 0);
  signal c_10_0_1_False_resize: signed(24 downto 0);
  signal c_10_0_1_False_shift: signed(24 downto 0);
  signal c_10_0_0_False_resize: signed(24 downto 0);
  signal c_10_0_0_False_shift: signed(24 downto 0);
  signal c_10_0_9_False_resize: signed(24 downto 0);
  signal c_10_0_9_False_shift: signed(24 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(20 downto 0);
  signal c_11_0_2_False_resize: signed(20 downto 0);
  signal c_11_0_2_False_shift: signed(20 downto 0);
  signal c_11_0_0_False_resize: signed(20 downto 0);
  signal c_11_0_0_False_shift: signed(20 downto 0);
  signal c_11_0_1_False_resize: signed(20 downto 0);
  signal c_11_0_1_False_shift: signed(20 downto 0);
  signal c_11_0_5_False_resize: signed(20 downto 0);
  signal c_11_0_5_False_shift: signed(20 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(25 downto 0);
  signal c_12_i0_resize: signed(25 downto 0);
  signal c_12_i1_resize: signed(25 downto 0);
  signal c_12_i0_shift: signed(25 downto 0);
  signal c_12_i1_shift: signed(25 downto 0);
  signal c_12_arith: signed(25 downto 0);
  signal c_12_oshift: signed(25 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(20 downto 0);
  signal c_13_0_0_False_resize: signed(20 downto 0);
  signal c_13_0_0_False_shift: signed(20 downto 0);
  signal c_13_0_2_False_resize: signed(20 downto 0);
  signal c_13_0_2_False_shift: signed(20 downto 0);
  signal c_13_0_5_False_resize: signed(20 downto 0);
  signal c_13_0_5_False_shift: signed(20 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_i0_resize: signed(23 downto 0);
  signal c_14_i1_resize: signed(23 downto 0);
  signal c_14_i0_shift: signed(23 downto 0);
  signal c_14_i1_shift: signed(23 downto 0);
  signal c_14_arith: signed(23 downto 0);
  signal c_14_oshift: signed(23 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(21 downto 0);
  signal c_15_0_0_False_resize: signed(21 downto 0);
  signal c_15_0_0_False_shift: signed(21 downto 0);
  signal c_15_0_2_False_resize: signed(21 downto 0);
  signal c_15_0_2_False_shift: signed(21 downto 0);
  signal c_15_0_6_False_resize: signed(21 downto 0);
  signal c_15_0_6_False_shift: signed(21 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(17 downto 0);
  signal c_16_0_0_False_resize: signed(17 downto 0);
  signal c_16_0_0_False_shift: signed(17 downto 0);
  signal c_16_0_1_False_resize: signed(17 downto 0);
  signal c_16_0_1_False_shift: signed(17 downto 0);
  signal c_16_0_2_False_resize: signed(17 downto 0);
  signal c_16_0_2_False_shift: signed(17 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_17_i0_resize: signed(24 downto 0);
  signal c_17_i1_resize: signed(24 downto 0);
  signal c_17_i0_shift: signed(24 downto 0);
  signal c_17_i1_shift: signed(24 downto 0);
  signal c_17_arith: signed(24 downto 0);
  signal c_17_oshift: signed(24 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(24 downto 0);
  signal c_18_3_0_False_resize: signed(24 downto 0);
  signal c_18_3_0_False_shift: signed(24 downto 0);
  signal c_18_14_0_False_resize: signed(24 downto 0);
  signal c_18_14_0_False_shift: signed(24 downto 0);
  signal c_18_12_6_False_resize: signed(24 downto 0);
  signal c_18_12_6_False_shift: signed(24 downto 0);
  signal c_18_7_4_False_resize: signed(24 downto 0);
  signal c_18_7_4_False_shift: signed(24 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(22 downto 0);
  signal c_19_14_1_False_resize: signed(22 downto 0);
  signal c_19_14_1_False_shift: signed(22 downto 0);
  signal c_19_14_3_False_resize: signed(22 downto 0);
  signal c_19_14_3_False_shift: signed(22 downto 0);
  signal c_19_17_0_False_resize: signed(22 downto 0);
  signal c_19_17_0_False_shift: signed(22 downto 0);
  signal c_19_5_0_False_resize: signed(22 downto 0);
  signal c_19_5_0_False_shift: signed(22 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(24 downto 0);
  signal c_20_i0_resize: signed(24 downto 0);
  signal c_20_i1_resize: signed(24 downto 0);
  signal c_20_i0_shift: signed(24 downto 0);
  signal c_20_i1_shift: signed(24 downto 0);
  signal c_20_arith: signed(24 downto 0);
  signal c_20_oshift: signed(24 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(22 downto 0);
  signal c_21_3_0_False_resize: signed(22 downto 0);
  signal c_21_3_0_False_shift: signed(22 downto 0);
  signal c_21_12_0_False_resize: signed(22 downto 0);
  signal c_21_12_0_False_shift: signed(22 downto 0);
  signal c_21_17_2_False_resize: signed(22 downto 0);
  signal c_21_17_2_False_shift: signed(22 downto 0);
  signal c_21_5_1_False_resize: signed(22 downto 0);
  signal c_21_5_1_False_shift: signed(22 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(20 downto 0);
  signal c_22_12_2_False_resize: signed(20 downto 0);
  signal c_22_12_2_False_shift: signed(20 downto 0);
  signal c_22_5_1_False_resize: signed(20 downto 0);
  signal c_22_5_1_False_shift: signed(20 downto 0);
  signal c_22_14_0_False_resize: signed(20 downto 0);
  signal c_22_14_0_False_shift: signed(20 downto 0);
  signal c_22_3_0_False_resize: signed(20 downto 0);
  signal c_22_3_0_False_shift: signed(20 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_i0_resize: signed(23 downto 0);
  signal c_23_i1_resize: signed(23 downto 0);
  signal c_23_i0_shift: signed(23 downto 0);
  signal c_23_i1_shift: signed(23 downto 0);
  signal c_23_arith: signed(23 downto 0);
  signal c_23_oshift: signed(23 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(25 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_i0_resize: signed(24 downto 0);
  signal c_25_i1_resize: signed(24 downto 0);
  signal c_25_i0_shift: signed(24 downto 0);
  signal c_25_i1_shift: signed(24 downto 0);
  signal c_25_arith: signed(24 downto 0);
  signal c_25_oshift: signed(23 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(24 downto 0);
  signal c_26_7_0_False_resize: signed(24 downto 0);
  signal c_26_7_0_False_shift: signed(24 downto 0);
  signal c_26_3_0_False_resize: signed(24 downto 0);
  signal c_26_3_0_False_shift: signed(24 downto 0);
  signal c_26_14_1_False_resize: signed(24 downto 0);
  signal c_26_14_1_False_shift: signed(24 downto 0);
  signal c_26_12_5_False_resize: signed(24 downto 0);
  signal c_26_12_5_False_shift: signed(24 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_7_6_False_resize: signed(25 downto 0);
  signal c_27_7_6_False_shift: signed(25 downto 0);
  signal c_27_5_1_False_resize: signed(25 downto 0);
  signal c_27_5_1_False_shift: signed(25 downto 0);
  signal c_27_3_3_False_resize: signed(25 downto 0);
  signal c_27_3_3_False_shift: signed(25 downto 0);
  signal c_27_14_0_False_resize: signed(25 downto 0);
  signal c_27_14_0_False_shift: signed(25 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_i0_resize: signed(23 downto 0);
  signal c_28_i1_resize: signed(23 downto 0);
  signal c_28_i0_shift: signed(23 downto 0);
  signal c_28_i1_shift: signed(23 downto 0);
  signal c_28_arith: signed(23 downto 0);
  signal c_28_oshift: signed(23 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(27 downto 0);
  signal c_29_9_2_False_resize: signed(27 downto 0);
  signal c_29_9_2_False_shift: signed(27 downto 0);
  signal c_29_9_1_False_resize: signed(27 downto 0);
  signal c_29_9_1_False_shift: signed(27 downto 0);
  signal c_29_9_0_False_resize: signed(27 downto 0);
  signal c_29_9_0_False_shift: signed(27 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_i0_resize: signed(23 downto 0);
  signal c_30_i1_resize: signed(23 downto 0);
  signal c_30_i0_shift: signed(23 downto 0);
  signal c_30_i1_shift: signed(23 downto 0);
  signal c_30_arith: signed(23 downto 0);
  signal c_30_oshift: signed(23 downto 0);
  signal c_30_sub_sel: std_logic;
  signal c_31: signed(21 downto 0);
  signal c_31_7_0_False_resize: signed(21 downto 0);
  signal c_31_7_0_False_shift: signed(21 downto 0);
  signal c_31_14_2_False_resize: signed(21 downto 0);
  signal c_31_14_2_False_shift: signed(21 downto 0);
  signal c_31_12_1_False_resize: signed(21 downto 0);
  signal c_31_12_1_False_shift: signed(21 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_32_17_1_False_resize: signed(23 downto 0);
  signal c_32_17_1_False_shift: signed(23 downto 0);
  signal c_32_14_0_False_resize: signed(23 downto 0);
  signal c_32_14_0_False_shift: signed(23 downto 0);
  signal c_32_5_0_False_resize: signed(23 downto 0);
  signal c_32_5_0_False_shift: signed(23 downto 0);
  signal c_32_5_1_False_resize: signed(23 downto 0);
  signal c_32_5_1_False_shift: signed(23 downto 0);
  signal c_32_sel: std_logic_vector(1 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_i0_resize: signed(23 downto 0);
  signal c_33_i1_resize: signed(23 downto 0);
  signal c_33_i0_shift: signed(23 downto 0);
  signal c_33_i1_shift: signed(23 downto 0);
  signal c_33_arith: signed(23 downto 0);
  signal c_33_oshift: signed(23 downto 0);
  signal c_33_sub_sel: std_logic;
  signal c_34: signed(23 downto 0);
  signal c_34_12_0_False_resize: signed(23 downto 0);
  signal c_34_12_0_False_shift: signed(23 downto 0);
  signal c_34_17_1_False_resize: signed(23 downto 0);
  signal c_34_17_1_False_shift: signed(23 downto 0);
  signal c_34_5_5_False_resize: signed(23 downto 0);
  signal c_34_5_5_False_shift: signed(23 downto 0);
  signal c_34_7_0_False_resize: signed(23 downto 0);
  signal c_34_7_0_False_shift: signed(23 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_12_0_False_resize: signed(23 downto 0);
  signal c_35_12_0_False_shift: signed(23 downto 0);
  signal c_35_5_3_False_resize: signed(23 downto 0);
  signal c_35_5_3_False_shift: signed(23 downto 0);
  signal c_35_7_0_False_resize: signed(23 downto 0);
  signal c_35_7_0_False_shift: signed(23 downto 0);
  signal c_35_7_2_False_resize: signed(23 downto 0);
  signal c_35_7_2_False_shift: signed(23 downto 0);
  signal c_35_sel: std_logic_vector(1 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_i0_resize: signed(23 downto 0);
  signal c_36_i1_resize: signed(23 downto 0);
  signal c_36_i0_shift: signed(23 downto 0);
  signal c_36_i1_shift: signed(23 downto 0);
  signal c_36_arith: signed(23 downto 0);
  signal c_36_oshift: signed(23 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_12_0_False_resize: signed(23 downto 0);
  signal c_37_12_0_False_shift: signed(23 downto 0);
  signal c_37_14_4_False_resize: signed(23 downto 0);
  signal c_37_14_4_False_shift: signed(23 downto 0);
  signal c_37_7_1_False_resize: signed(23 downto 0);
  signal c_37_7_1_False_shift: signed(23 downto 0);
  signal c_37_3_5_False_resize: signed(23 downto 0);
  signal c_37_3_5_False_shift: signed(23 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(22 downto 0);
  signal c_38_14_0_False_resize: signed(22 downto 0);
  signal c_38_14_0_False_shift: signed(22 downto 0);
  signal c_38_12_0_False_resize: signed(22 downto 0);
  signal c_38_12_0_False_shift: signed(22 downto 0);
  signal c_38_5_0_False_resize: signed(22 downto 0);
  signal c_38_5_0_False_shift: signed(22 downto 0);
  signal c_38_sel: std_logic_vector(1 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_i0_resize: signed(23 downto 0);
  signal c_39_i1_resize: signed(23 downto 0);
  signal c_39_i0_shift: signed(23 downto 0);
  signal c_39_i1_shift: signed(23 downto 0);
  signal c_39_arith: signed(23 downto 0);
  signal c_39_oshift: signed(23 downto 0);
  signal c_39_sub_sel: std_logic;
  signal c_40: signed(22 downto 0);
  signal c_40_14_3_False_resize: signed(22 downto 0);
  signal c_40_14_3_False_shift: signed(22 downto 0);
  signal c_40_3_4_False_resize: signed(22 downto 0);
  signal c_40_3_4_False_shift: signed(22 downto 0);
  signal c_40_3_0_False_resize: signed(22 downto 0);
  signal c_40_3_0_False_shift: signed(22 downto 0);
  signal c_40_12_0_False_resize: signed(22 downto 0);
  signal c_40_12_0_False_shift: signed(22 downto 0);
  signal c_40_sel: std_logic_vector(1 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_3_0_False_resize: signed(23 downto 0);
  signal c_41_3_0_False_shift: signed(23 downto 0);
  signal c_41_3_2_False_resize: signed(23 downto 0);
  signal c_41_3_2_False_shift: signed(23 downto 0);
  signal c_41_12_3_False_resize: signed(23 downto 0);
  signal c_41_12_3_False_shift: signed(23 downto 0);
  signal c_41_3_4_False_resize: signed(23 downto 0);
  signal c_41_3_4_False_shift: signed(23 downto 0);
  signal c_41_sel: std_logic_vector(1 downto 0);
  signal c_42: signed(22 downto 0);
  signal c_42_i0_resize: signed(22 downto 0);
  signal c_42_i1_resize: signed(22 downto 0);
  signal c_42_i0_shift: signed(22 downto 0);
  signal c_42_i1_shift: signed(22 downto 0);
  signal c_42_arith: signed(22 downto 0);
  signal c_42_oshift: signed(22 downto 0);
  signal c_42_sub_sel: std_logic;
  signal c_43: signed(25 downto 0);
  signal c_43_14_0_False_resize: signed(25 downto 0);
  signal c_43_14_0_False_shift: signed(25 downto 0);
  signal c_43_12_0_False_resize: signed(25 downto 0);
  signal c_43_12_0_False_shift: signed(25 downto 0);
  signal c_43_5_0_False_resize: signed(25 downto 0);
  signal c_43_5_0_False_shift: signed(25 downto 0);
  signal c_43_17_0_False_resize: signed(25 downto 0);
  signal c_43_17_0_False_shift: signed(25 downto 0);
  signal c_43_sel: std_logic_vector(1 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_i0_resize: signed(24 downto 0);
  signal c_44_i1_resize: signed(24 downto 0);
  signal c_44_i0_shift: signed(24 downto 0);
  signal c_44_i1_shift: signed(24 downto 0);
  signal c_44_arith: signed(24 downto 0);
  signal c_44_oshift: signed(23 downto 0);
  signal c_44_sub_sel: std_logic;
  signal c_45: signed(23 downto 0);
  signal c_45_17_0_False_resize: signed(23 downto 0);
  signal c_45_17_0_False_shift: signed(23 downto 0);
  signal c_45_7_1_False_resize: signed(23 downto 0);
  signal c_45_7_1_False_shift: signed(23 downto 0);
  signal c_45_3_0_False_resize: signed(23 downto 0);
  signal c_45_3_0_False_shift: signed(23 downto 0);
  signal c_45_7_0_False_resize: signed(23 downto 0);
  signal c_45_7_0_False_shift: signed(23 downto 0);
  signal c_45_sel: std_logic_vector(1 downto 0);
  signal c_46: signed(22 downto 0);
  signal c_46_5_0_False_resize: signed(22 downto 0);
  signal c_46_5_0_False_shift: signed(22 downto 0);
  signal c_46_12_3_False_resize: signed(22 downto 0);
  signal c_46_12_3_False_shift: signed(22 downto 0);
  signal c_46_3_0_False_resize: signed(22 downto 0);
  signal c_46_3_0_False_shift: signed(22 downto 0);
  signal c_46_sel: std_logic_vector(1 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_i0_resize: signed(23 downto 0);
  signal c_47_i1_resize: signed(23 downto 0);
  signal c_47_i0_shift: signed(23 downto 0);
  signal c_47_i1_shift: signed(23 downto 0);
  signal c_47_arith: signed(23 downto 0);
  signal c_47_oshift: signed(23 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_48_17_0_False_resize: signed(23 downto 0);
  signal c_48_17_0_False_shift: signed(23 downto 0);
  signal c_48_3_0_False_resize: signed(23 downto 0);
  signal c_48_3_0_False_shift: signed(23 downto 0);
  signal c_48_12_4_False_resize: signed(23 downto 0);
  signal c_48_12_4_False_shift: signed(23 downto 0);
  signal c_48_sel: std_logic_vector(1 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_49_14_0_False_resize: signed(23 downto 0);
  signal c_49_14_0_False_shift: signed(23 downto 0);
  signal c_49_12_0_False_resize: signed(23 downto 0);
  signal c_49_12_0_False_shift: signed(23 downto 0);
  signal c_49_3_3_False_resize: signed(23 downto 0);
  signal c_49_3_3_False_shift: signed(23 downto 0);
  signal c_49_17_0_False_resize: signed(23 downto 0);
  signal c_49_17_0_False_shift: signed(23 downto 0);
  signal c_49_sel: std_logic_vector(1 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_50_i0_resize: signed(23 downto 0);
  signal c_50_i1_resize: signed(23 downto 0);
  signal c_50_i0_shift: signed(23 downto 0);
  signal c_50_i1_shift: signed(23 downto 0);
  signal c_50_arith: signed(23 downto 0);
  signal c_50_oshift: signed(23 downto 0);
  signal c_50_sub_sel: std_logic;
  signal c_51: signed(23 downto 0);
  signal c_51_44_0_False_resize: signed(23 downto 0);
  signal c_51_44_0_False_shift: signed(23 downto 0);
  signal c_51_50_0_False_resize: signed(23 downto 0);
  signal c_51_50_0_False_shift: signed(23 downto 0);
  signal c_51_39_1_False_resize: signed(23 downto 0);
  signal c_51_39_1_False_shift: signed(23 downto 0);
  signal c_51_28_0_False_resize: signed(23 downto 0);
  signal c_51_28_0_False_shift: signed(23 downto 0);
  signal c_51_sel: std_logic_vector(1 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_52_resize: signed(23 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_53_resize: signed(23 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_54_47_0_False_resize: signed(23 downto 0);
  signal c_54_47_0_False_shift: signed(23 downto 0);
  signal c_54_50_0_False_resize: signed(23 downto 0);
  signal c_54_50_0_False_shift: signed(23 downto 0);
  signal c_54_42_1_False_resize: signed(23 downto 0);
  signal c_54_42_1_False_shift: signed(23 downto 0);
  signal c_54_23_0_False_resize: signed(23 downto 0);
  signal c_54_23_0_False_shift: signed(23 downto 0);
  signal c_54_sel: std_logic_vector(1 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_55_resize: signed(23 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_56_33_0_False_resize: signed(23 downto 0);
  signal c_56_33_0_False_shift: signed(23 downto 0);
  signal c_56_44_3_False_resize: signed(23 downto 0);
  signal c_56_44_3_False_shift: signed(23 downto 0);
  signal c_56_42_1_False_resize: signed(23 downto 0);
  signal c_56_42_1_False_shift: signed(23 downto 0);
  signal c_56_44_0_False_resize: signed(23 downto 0);
  signal c_56_44_0_False_shift: signed(23 downto 0);
  signal c_56_sel: std_logic_vector(1 downto 0);
  signal c_57: signed(23 downto 0);
  signal c_57_resize: signed(23 downto 0);
  signal c_58: signed(23 downto 0);
  signal c_58_resize: signed(23 downto 0);
  signal c_59: signed(23 downto 0);
  signal c_59_42_0_False_resize: signed(23 downto 0);
  signal c_59_42_0_False_shift: signed(23 downto 0);
  signal c_59_36_1_False_resize: signed(23 downto 0);
  signal c_59_36_1_False_shift: signed(23 downto 0);
  signal c_59_23_0_False_resize: signed(23 downto 0);
  signal c_59_23_0_False_shift: signed(23 downto 0);
  signal c_59_42_5_False_resize: signed(23 downto 0);
  signal c_59_42_5_False_shift: signed(23 downto 0);
  signal c_59_sel: std_logic_vector(1 downto 0);
  signal c_60: signed(23 downto 0);
  signal c_60_resize: signed(23 downto 0);
  signal c_61: signed(23 downto 0);
  signal c_61_23_0_False_resize: signed(23 downto 0);
  signal c_61_23_0_False_shift: signed(23 downto 0);
  signal c_61_33_2_False_resize: signed(23 downto 0);
  signal c_61_33_2_False_shift: signed(23 downto 0);
  signal c_61_47_0_False_resize: signed(23 downto 0);
  signal c_61_47_0_False_shift: signed(23 downto 0);
  signal c_61_50_0_False_resize: signed(23 downto 0);
  signal c_61_50_0_False_shift: signed(23 downto 0);
  signal c_61_sel: std_logic_vector(1 downto 0);
  signal c_62: signed(23 downto 0);
  signal c_62_resize: signed(23 downto 0);
  signal c_63: signed(23 downto 0);
  signal c_63_36_0_False_resize: signed(23 downto 0);
  signal c_63_36_0_False_shift: signed(23 downto 0);
  signal c_63_39_0_False_resize: signed(23 downto 0);
  signal c_63_39_0_False_shift: signed(23 downto 0);
  signal c_63_39_1_False_resize: signed(23 downto 0);
  signal c_63_39_1_False_shift: signed(23 downto 0);
  signal c_63_33_0_False_resize: signed(23 downto 0);
  signal c_63_33_0_False_shift: signed(23 downto 0);
  signal c_63_sel: std_logic_vector(1 downto 0);
  signal c_64: signed(23 downto 0);
  signal c_64_resize: signed(23 downto 0);
  signal c_65: signed(23 downto 0);
  signal c_65_50_1_False_resize: signed(23 downto 0);
  signal c_65_50_1_False_shift: signed(23 downto 0);
  signal c_65_36_0_False_resize: signed(23 downto 0);
  signal c_65_36_0_False_shift: signed(23 downto 0);
  signal c_65_47_1_False_resize: signed(23 downto 0);
  signal c_65_47_1_False_shift: signed(23 downto 0);
  signal c_65_sel: std_logic_vector(1 downto 0);
  signal c_66: signed(23 downto 0);
  signal c_66_resize: signed(23 downto 0);
  signal c_67: signed(23 downto 0);
  signal c_67_23_0_False_resize: signed(23 downto 0);
  signal c_67_23_0_False_shift: signed(23 downto 0);
  signal c_67_36_0_False_resize: signed(23 downto 0);
  signal c_67_36_0_False_shift: signed(23 downto 0);
  signal c_67_33_0_False_resize: signed(23 downto 0);
  signal c_67_33_0_False_shift: signed(23 downto 0);
  signal c_67_44_1_False_resize: signed(23 downto 0);
  signal c_67_44_1_False_shift: signed(23 downto 0);
  signal c_67_sel: std_logic_vector(1 downto 0);
  signal c_68: signed(23 downto 0);
  signal c_68_resize: signed(23 downto 0);
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
  -- output node 0 with id 52
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_52);
    end if;
  end process;
  -- output node 1 with id 53
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_53);
    end if;
  end process;
  -- output node 2 with id 55
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_55);
    end if;
  end process;
  -- output node 3 with id 57
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_57);
    end if;
  end process;
  -- output node 4 with id 58
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_58);
    end if;
  end process;
  -- output node 5 with id 60
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_60);
    end if;
  end process;
  -- output node 6 with id 62
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_62);
    end if;
  end process;
  -- output node 7 with id 64
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_64);
    end if;
  end process;
  -- output node 8 with id 66
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_66);
    end if;
  end process;
  -- output node 9 with id 68
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_68);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[3], [3], [5], [5]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
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
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [128], [4], [128]]
  c_2_0_7_False_resize <= resize(c_0, 23);
  c_2_0_7_False_shift <= shift_left(c_2_0_7_False_resize, 7);
  c_2_0_2_False_resize <= resize(c_0, 23);
  c_2_0_2_False_shift <= shift_left(c_2_0_2_False_resize, 2);
  c_2_0_0_False_resize <= resize(c_0, 23);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "00" when "11",
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_7_False_shift;
        when "01" => c_2 <= c_2_0_2_False_shift;
        when others => c_2 <= c_2_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[2], [131], [1], [-123]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 19,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[64], [16], [64], [1]]
  c_4_0_4_False_resize <= resize(c_0, 22);
  c_4_0_4_False_shift <= shift_left(c_4_0_4_False_resize, 4);
  c_4_0_6_False_resize <= resize(c_0, 22);
  c_4_0_6_False_shift <= shift_left(c_4_0_6_False_resize, 6);
  c_4_0_0_False_resize <= resize(c_0, 22);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  with config_select_1 select c_4_sel <= 
    "00" when "01",
    "01" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "00" => c_4 <= c_4_0_4_False_shift;
        when "01" => c_4 <= c_4_0_6_False_shift;
        when others => c_4 <= c_4_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 5 and associated fundamentals [[61], [19], [69], [6]]
  with config_select_2 select c_5_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 19,
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
      sub_i => c_5_sub_sel,
      x_i => c_4,
      y_i => c_1,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 6 and associated fundamentals [[8], [32], [32], [1]]
  c_6_0_0_False_resize <= resize(c_0, 21);
  c_6_0_0_False_shift <= shift_left(c_6_0_0_False_resize, 0);
  c_6_0_3_False_resize <= resize(c_0, 21);
  c_6_0_3_False_shift <= shift_left(c_6_0_3_False_resize, 3);
  c_6_0_5_False_resize <= resize(c_0, 21);
  c_6_0_5_False_shift <= shift_left(c_6_0_5_False_resize, 5);
  with config_select_1 select c_6_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_0_0_False_shift;
        when "01" => c_6 <= c_6_0_3_False_shift;
        when others => c_6 <= c_6_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 7 and associated fundamentals [[20], [44], [12], [-19]]
  with config_select_2 select c_7_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 19,
      w_o => 22,
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
      sub_i => c_7_sub_sel,
      x_i => c_6,
      y_i => c_1,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 8 and associated fundamentals [[3], [384], [640], [5]]
  c_8_1_0_False_resize <= resize(c_1, 26);
  c_8_1_0_False_shift <= shift_left(c_8_1_0_False_resize, 0);
  c_8_1_7_False_resize <= resize(c_1, 26);
  c_8_1_7_False_shift <= shift_left(c_8_1_7_False_resize, 7);
  with config_select_2 select c_8_sel <= 
    "0" when "00",
    "0" when "11",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_1_0_False_shift;
        when others => c_8 <= c_8_1_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 9 and associated fundamentals [[7], [122], [642], [251]]
  with config_select_3 select c_9_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_9: entity work.adder_node
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
      sub_i => c_9_sub_sel,
      x_i => c_8,
      y_i => c_3,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 10 and associated fundamentals [[1], [2], [512], [1]]
  c_10_0_1_False_resize <= resize(c_0, 25);
  c_10_0_1_False_shift <= shift_left(c_10_0_1_False_resize, 1);
  c_10_0_0_False_resize <= resize(c_0, 25);
  c_10_0_0_False_shift <= shift_left(c_10_0_0_False_resize, 0);
  c_10_0_9_False_resize <= resize(c_0, 25);
  c_10_0_9_False_shift <= shift_left(c_10_0_9_False_resize, 9);
  with config_select_1 select c_10_sel <= 
    "00" when "01",
    "01" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_0_1_False_shift;
        when "01" => c_10 <= c_10_0_0_False_shift;
        when others => c_10 <= c_10_0_9_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 11 and associated fundamentals [[32], [2], [1], [4]]
  c_11_0_2_False_resize <= resize(c_0, 21);
  c_11_0_2_False_shift <= shift_left(c_11_0_2_False_resize, 2);
  c_11_0_0_False_resize <= resize(c_0, 21);
  c_11_0_0_False_shift <= shift_left(c_11_0_0_False_resize, 0);
  c_11_0_1_False_resize <= resize(c_0, 21);
  c_11_0_1_False_shift <= shift_left(c_11_0_1_False_resize, 1);
  c_11_0_5_False_resize <= resize(c_0, 21);
  c_11_0_5_False_shift <= shift_left(c_11_0_5_False_resize, 5);
  with config_select_1 select c_11_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_0_2_False_shift;
        when "01" => c_11 <= c_11_0_0_False_shift;
        when "10" => c_11 <= c_11_0_1_False_shift;
        when others => c_11 <= c_11_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 12 and associated fundamentals [[-127], [-6], [516], [-15]]
  with config_select_2 select c_12_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 21,
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
      sub_i => c_12_sub_sel,
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 13 and associated fundamentals [[1], [1], [32], [4]]
  c_13_0_0_False_resize <= resize(c_0, 21);
  c_13_0_0_False_shift <= shift_left(c_13_0_0_False_resize, 0);
  c_13_0_2_False_resize <= resize(c_0, 21);
  c_13_0_2_False_shift <= shift_left(c_13_0_2_False_resize, 2);
  c_13_0_5_False_resize <= resize(c_0, 21);
  c_13_0_5_False_shift <= shift_left(c_13_0_5_False_resize, 5);
  with config_select_1 select c_13_sel <= 
    "00" when "01",
    "00" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_0_0_False_shift;
        when "01" => c_13 <= c_13_0_2_False_shift;
        when others => c_13 <= c_13_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 14 and associated fundamentals [[11], [11], [-251], [37]]
  with config_select_2 select c_14_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 21,
      w_o => 24,
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
      sub_i => c_14_sub_sel,
      x_i => c_1,
      y_i => c_13,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 15 and associated fundamentals [[4], [64], [1], [1]]
  c_15_0_0_False_resize <= resize(c_0, 22);
  c_15_0_0_False_shift <= shift_left(c_15_0_0_False_resize, 0);
  c_15_0_2_False_resize <= resize(c_0, 22);
  c_15_0_2_False_shift <= shift_left(c_15_0_2_False_resize, 2);
  c_15_0_6_False_resize <= resize(c_0, 22);
  c_15_0_6_False_shift <= shift_left(c_15_0_6_False_resize, 6);
  with config_select_1 select c_15_sel <= 
    "00" when "10",
    "00" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "00" => c_15 <= c_15_0_0_False_shift;
        when "01" => c_15 <= c_15_0_2_False_shift;
        when others => c_15 <= c_15_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 16 and associated fundamentals [[2], [1], [1], [4]]
  c_16_0_0_False_resize <= resize(c_0, 18);
  c_16_0_0_False_shift <= shift_left(c_16_0_0_False_resize, 0);
  c_16_0_1_False_resize <= resize(c_0, 18);
  c_16_0_1_False_shift <= shift_left(c_16_0_1_False_resize, 1);
  c_16_0_2_False_resize <= resize(c_0, 18);
  c_16_0_2_False_shift <= shift_left(c_16_0_2_False_resize, 2);
  with config_select_1 select c_16_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_0_0_False_shift;
        when "01" => c_16 <= c_16_0_1_False_shift;
        when others => c_16 <= c_16_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 17 and associated fundamentals [[-48], [288], [-28], [-124]]
  with config_select_2 select c_17_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 18,
      w_o => 25,
      s_x_i => 2,
      s_y_i => 5,
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
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[11], [-384], [192], [-123]]
  c_18_3_0_False_resize <= resize(c_3, 25);
  c_18_3_0_False_shift <= shift_left(c_18_3_0_False_resize, 0);
  c_18_14_0_False_resize <= resize(c_14, 25);
  c_18_14_0_False_shift <= shift_left(c_18_14_0_False_resize, 0);
  c_18_12_6_False_resize <= c_12(24 downto 0);
  c_18_12_6_False_shift <= shift_left(c_18_12_6_False_resize, 6);
  c_18_7_4_False_resize <= resize(c_7, 25);
  c_18_7_4_False_shift <= shift_left(c_18_7_4_False_resize, 4);
  with config_select_3 select c_18_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "00" => c_18 <= c_18_3_0_False_shift;
        when "01" => c_18 <= c_18_14_0_False_shift;
        when "10" => c_18 <= c_18_12_6_False_shift;
        when others => c_18 <= c_18_7_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 19 and associated fundamentals [[88], [22], [-28], [6]]
  c_19_14_1_False_resize <= c_14(22 downto 0);
  c_19_14_1_False_shift <= shift_left(c_19_14_1_False_resize, 1);
  c_19_14_3_False_resize <= c_14(22 downto 0);
  c_19_14_3_False_shift <= shift_left(c_19_14_3_False_resize, 3);
  c_19_17_0_False_resize <= c_17(22 downto 0);
  c_19_17_0_False_shift <= shift_left(c_19_17_0_False_resize, 0);
  c_19_5_0_False_resize <= c_5;
  c_19_5_0_False_shift <= shift_left(c_19_5_0_False_resize, 0);
  with config_select_3 select c_19_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_14_1_False_shift;
        when "01" => c_19 <= c_19_14_3_False_shift;
        when "10" => c_19 <= c_19_17_0_False_shift;
        when others => c_19 <= c_19_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 20 and associated fundamentals [[-341], [-296], [304], [-147]]
  with config_select_4 select c_20_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
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
      sub_i => c_20_sub_sel,
      x_i => c_18,
      y_i => c_19,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 21 and associated fundamentals [[122], [-6], [-112], [-123]]
  c_21_3_0_False_resize <= c_3(22 downto 0);
  c_21_3_0_False_shift <= shift_left(c_21_3_0_False_resize, 0);
  c_21_12_0_False_resize <= c_12(22 downto 0);
  c_21_12_0_False_shift <= shift_left(c_21_12_0_False_resize, 0);
  c_21_17_2_False_resize <= c_17(22 downto 0);
  c_21_17_2_False_shift <= shift_left(c_21_17_2_False_resize, 2);
  c_21_5_1_False_resize <= c_5;
  c_21_5_1_False_shift <= shift_left(c_21_5_1_False_resize, 1);
  with config_select_3 select c_21_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "00" => c_21 <= c_21_3_0_False_shift;
        when "01" => c_21 <= c_21_12_0_False_shift;
        when "10" => c_21 <= c_21_17_2_False_shift;
        when others => c_21 <= c_21_5_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 22 and associated fundamentals [[11], [-24], [1], [12]]
  c_22_12_2_False_resize <= c_12(20 downto 0);
  c_22_12_2_False_shift <= shift_left(c_22_12_2_False_resize, 2);
  c_22_5_1_False_resize <= c_5(20 downto 0);
  c_22_5_1_False_shift <= shift_left(c_22_5_1_False_resize, 1);
  c_22_14_0_False_resize <= c_14(20 downto 0);
  c_22_14_0_False_shift <= shift_left(c_22_14_0_False_resize, 0);
  c_22_3_0_False_resize <= c_3(20 downto 0);
  c_22_3_0_False_shift <= shift_left(c_22_3_0_False_resize, 0);
  with config_select_3 select c_22_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_12_2_False_shift;
        when "01" => c_22 <= c_22_5_1_False_shift;
        when "10" => c_22 <= c_22_14_0_False_shift;
        when others => c_22 <= c_22_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 23 and associated fundamentals [[78], [-102], [-108], [-171]]
  with config_select_4 select c_23_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
      w_o => 24,
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
  -- node of type 'register' in stage 4 with id 24 and associated fundamentals [[7], [122], [642], [251]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_9 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 25 and associated fundamentals [[-174], [-87], [-169], [-199]]
  with config_select_5 select c_25_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 26,
      w_o => 24,
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
      sub_i => c_25_sub_sel,
      x_i => c_20,
      y_i => c_24,
      z_o => c_25_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 26 and associated fundamentals [[2], [-192], [-502], [-19]]
  c_26_7_0_False_resize <= resize(c_7, 25);
  c_26_7_0_False_shift <= shift_left(c_26_7_0_False_resize, 0);
  c_26_3_0_False_resize <= resize(c_3, 25);
  c_26_3_0_False_shift <= shift_left(c_26_3_0_False_resize, 0);
  c_26_14_1_False_resize <= resize(c_14, 25);
  c_26_14_1_False_shift <= shift_left(c_26_14_1_False_resize, 1);
  c_26_12_5_False_resize <= c_12(24 downto 0);
  c_26_12_5_False_shift <= shift_left(c_26_12_5_False_resize, 5);
  with config_select_3 select c_26_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "00" => c_26 <= c_26_7_0_False_shift;
        when "01" => c_26 <= c_26_3_0_False_shift;
        when "10" => c_26 <= c_26_14_1_False_shift;
        when others => c_26 <= c_26_12_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 27 and associated fundamentals [[16], [11], [768], [12]]
  c_27_7_6_False_resize <= resize(c_7, 26);
  c_27_7_6_False_shift <= shift_left(c_27_7_6_False_resize, 6);
  c_27_5_1_False_resize <= resize(c_5, 26);
  c_27_5_1_False_shift <= shift_left(c_27_5_1_False_resize, 1);
  c_27_3_3_False_resize <= resize(c_3, 26);
  c_27_3_3_False_shift <= shift_left(c_27_3_3_False_resize, 3);
  c_27_14_0_False_resize <= resize(c_14, 26);
  c_27_14_0_False_shift <= shift_left(c_27_14_0_False_resize, 0);
  with config_select_3 select c_27_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "00" => c_27 <= c_27_7_6_False_shift;
        when "01" => c_27 <= c_27_5_1_False_shift;
        when "10" => c_27 <= c_27_3_3_False_shift;
        when others => c_27 <= c_27_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 28 and associated fundamentals [[18], [-203], [-1270], [-31]]
  with config_select_4 select c_28_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 26,
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
  -- node of type 'mux' in stage 4 with id 29 and associated fundamentals [[14], [488], [2568], [251]]
  c_29_9_2_False_resize <= resize(c_9, 28);
  c_29_9_2_False_shift <= shift_left(c_29_9_2_False_resize, 2);
  c_29_9_1_False_resize <= resize(c_9, 28);
  c_29_9_1_False_shift <= shift_left(c_29_9_1_False_resize, 1);
  c_29_9_0_False_resize <= resize(c_9, 28);
  c_29_9_0_False_shift <= shift_left(c_29_9_0_False_resize, 0);
  with config_select_4 select c_29_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "00" => c_29 <= c_29_9_2_False_shift;
        when "01" => c_29 <= c_29_9_1_False_shift;
        when others => c_29 <= c_29_9_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 30 and associated fundamentals [[22], [82], [28], [189]]
  with config_select_5 select c_30_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 28,
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
  -- node of type 'mux' in stage 3 with id 31 and associated fundamentals [[44], [44], [12], [-30]]
  c_31_7_0_False_resize <= c_7;
  c_31_7_0_False_shift <= shift_left(c_31_7_0_False_resize, 0);
  c_31_14_2_False_resize <= c_14(21 downto 0);
  c_31_14_2_False_shift <= shift_left(c_31_14_2_False_resize, 2);
  c_31_12_1_False_resize <= c_12(21 downto 0);
  c_31_12_1_False_shift <= shift_left(c_31_12_1_False_resize, 1);
  with config_select_3 select c_31_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "00" => c_31 <= c_31_7_0_False_shift;
        when "01" => c_31 <= c_31_14_2_False_shift;
        when others => c_31 <= c_31_12_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 32 and associated fundamentals [[122], [11], [69], [-248]]
  c_32_17_1_False_resize <= c_17(23 downto 0);
  c_32_17_1_False_shift <= shift_left(c_32_17_1_False_resize, 1);
  c_32_14_0_False_resize <= c_14;
  c_32_14_0_False_shift <= shift_left(c_32_14_0_False_resize, 0);
  c_32_5_0_False_resize <= resize(c_5, 24);
  c_32_5_0_False_shift <= shift_left(c_32_5_0_False_resize, 0);
  c_32_5_1_False_resize <= resize(c_5, 24);
  c_32_5_1_False_shift <= shift_left(c_32_5_1_False_resize, 1);
  with config_select_3 select c_32_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "00" => c_32 <= c_32_17_1_False_shift;
        when "01" => c_32 <= c_32_14_0_False_shift;
        when "10" => c_32 <= c_32_5_0_False_shift;
        when others => c_32 <= c_32_5_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 33 and associated fundamentals [[-34], [99], [-45], [188]]
  with config_select_4 select c_33_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_33: entity work.adder_node
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
      sub_i => c_33_sub_sel,
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
  -- node of type 'mux' in stage 3 with id 34 and associated fundamentals [[20], [-6], [-56], [192]]
  c_34_12_0_False_resize <= c_12(23 downto 0);
  c_34_12_0_False_shift <= shift_left(c_34_12_0_False_resize, 0);
  c_34_17_1_False_resize <= c_17(23 downto 0);
  c_34_17_1_False_shift <= shift_left(c_34_17_1_False_resize, 1);
  c_34_5_5_False_resize <= resize(c_5, 24);
  c_34_5_5_False_shift <= shift_left(c_34_5_5_False_resize, 5);
  c_34_7_0_False_resize <= resize(c_7, 24);
  c_34_7_0_False_shift <= shift_left(c_34_7_0_False_resize, 0);
  with config_select_3 select c_34_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "00" => c_34 <= c_34_12_0_False_shift;
        when "01" => c_34 <= c_34_17_1_False_shift;
        when "10" => c_34 <= c_34_5_5_False_shift;
        when others => c_34 <= c_34_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 35 and associated fundamentals [[-127], [152], [48], [-19]]
  c_35_12_0_False_resize <= c_12(23 downto 0);
  c_35_12_0_False_shift <= shift_left(c_35_12_0_False_resize, 0);
  c_35_5_3_False_resize <= resize(c_5, 24);
  c_35_5_3_False_shift <= shift_left(c_35_5_3_False_resize, 3);
  c_35_7_0_False_resize <= resize(c_7, 24);
  c_35_7_0_False_shift <= shift_left(c_35_7_0_False_resize, 0);
  c_35_7_2_False_resize <= resize(c_7, 24);
  c_35_7_2_False_shift <= shift_left(c_35_7_2_False_resize, 2);
  with config_select_3 select c_35_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "00" => c_35 <= c_35_12_0_False_shift;
        when "01" => c_35 <= c_35_5_3_False_shift;
        when "10" => c_35 <= c_35_7_0_False_shift;
        when others => c_35 <= c_35_7_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 36 and associated fundamentals [[147], [-158], [-104], [211]]
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
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
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
  -- node of type 'mux' in stage 3 with id 37 and associated fundamentals [[176], [-6], [32], [-38]]
  c_37_12_0_False_resize <= c_12(23 downto 0);
  c_37_12_0_False_shift <= shift_left(c_37_12_0_False_resize, 0);
  c_37_14_4_False_resize <= c_14;
  c_37_14_4_False_shift <= shift_left(c_37_14_4_False_resize, 4);
  c_37_7_1_False_resize <= resize(c_7, 24);
  c_37_7_1_False_shift <= shift_left(c_37_7_1_False_resize, 1);
  c_37_3_5_False_resize <= c_3;
  c_37_3_5_False_shift <= shift_left(c_37_3_5_False_resize, 5);
  with config_select_3 select c_37_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "00" => c_37 <= c_37_12_0_False_shift;
        when "01" => c_37 <= c_37_14_4_False_shift;
        when "10" => c_37 <= c_37_7_1_False_shift;
        when others => c_37 <= c_37_3_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 38 and associated fundamentals [[11], [11], [69], [-15]]
  c_38_14_0_False_resize <= c_14(22 downto 0);
  c_38_14_0_False_shift <= shift_left(c_38_14_0_False_resize, 0);
  c_38_12_0_False_resize <= c_12(22 downto 0);
  c_38_12_0_False_shift <= shift_left(c_38_12_0_False_resize, 0);
  c_38_5_0_False_resize <= c_5;
  c_38_5_0_False_shift <= shift_left(c_38_5_0_False_resize, 0);
  with config_select_3 select c_38_sel <= 
    "00" when "01",
    "00" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "00" => c_38 <= c_38_14_0_False_shift;
        when "01" => c_38 <= c_38_12_0_False_shift;
        when others => c_38 <= c_38_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 39 and associated fundamentals [[187], [5], [101], [-23]]
  with config_select_4 select c_39_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_39: entity work.adder_node
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
  -- node of type 'mux' in stage 3 with id 40 and associated fundamentals [[2], [88], [16], [-15]]
  c_40_14_3_False_resize <= c_14(22 downto 0);
  c_40_14_3_False_shift <= shift_left(c_40_14_3_False_resize, 3);
  c_40_3_4_False_resize <= c_3(22 downto 0);
  c_40_3_4_False_shift <= shift_left(c_40_3_4_False_resize, 4);
  c_40_3_0_False_resize <= c_3(22 downto 0);
  c_40_3_0_False_shift <= shift_left(c_40_3_0_False_resize, 0);
  c_40_12_0_False_resize <= c_12(22 downto 0);
  c_40_12_0_False_shift <= shift_left(c_40_12_0_False_resize, 0);
  with config_select_3 select c_40_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "00" => c_40 <= c_40_14_3_False_shift;
        when "01" => c_40 <= c_40_3_4_False_shift;
        when "10" => c_40 <= c_40_3_0_False_shift;
        when others => c_40 <= c_40_12_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 41 and associated fundamentals [[8], [131], [16], [-120]]
  c_41_3_0_False_resize <= c_3;
  c_41_3_0_False_shift <= shift_left(c_41_3_0_False_resize, 0);
  c_41_3_2_False_resize <= c_3;
  c_41_3_2_False_shift <= shift_left(c_41_3_2_False_resize, 2);
  c_41_12_3_False_resize <= c_12(23 downto 0);
  c_41_12_3_False_shift <= shift_left(c_41_12_3_False_resize, 3);
  c_41_3_4_False_resize <= c_3;
  c_41_3_4_False_shift <= shift_left(c_41_3_4_False_resize, 4);
  with config_select_3 select c_41_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "00" => c_41 <= c_41_3_0_False_shift;
        when "01" => c_41 <= c_41_3_2_False_shift;
        when "10" => c_41 <= c_41_12_3_False_shift;
        when others => c_41 <= c_41_3_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 42 and associated fundamentals [[-6], [-43], [32], [105]]
  with config_select_4 select c_42_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_42: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
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
      sub_i => c_42_sub_sel,
      x_i => c_40,
      y_i => c_41,
      z_o => c_42_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_42_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 43 and associated fundamentals [[61], [288], [516], [37]]
  c_43_14_0_False_resize <= resize(c_14, 26);
  c_43_14_0_False_shift <= shift_left(c_43_14_0_False_resize, 0);
  c_43_12_0_False_resize <= c_12;
  c_43_12_0_False_shift <= shift_left(c_43_12_0_False_resize, 0);
  c_43_5_0_False_resize <= resize(c_5, 26);
  c_43_5_0_False_shift <= shift_left(c_43_5_0_False_resize, 0);
  c_43_17_0_False_resize <= resize(c_17, 26);
  c_43_17_0_False_shift <= shift_left(c_43_17_0_False_resize, 0);
  with config_select_3 select c_43_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "00" => c_43 <= c_43_14_0_False_shift;
        when "01" => c_43 <= c_43_12_0_False_shift;
        when "10" => c_43 <= c_43_5_0_False_shift;
        when others => c_43 <= c_43_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 44 and associated fundamentals [[27], [205], [-63], [-107]]
  with config_select_4 select c_44_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_44: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 26,
      w_o => 24,
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
      sub_i => c_44_sub_sel,
      x_i => c_43,
      y_i => c_9,
      z_o => c_44_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_44_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 45 and associated fundamentals [[-48], [131], [24], [-19]]
  c_45_17_0_False_resize <= c_17(23 downto 0);
  c_45_17_0_False_shift <= shift_left(c_45_17_0_False_resize, 0);
  c_45_7_1_False_resize <= resize(c_7, 24);
  c_45_7_1_False_shift <= shift_left(c_45_7_1_False_resize, 1);
  c_45_3_0_False_resize <= c_3;
  c_45_3_0_False_shift <= shift_left(c_45_3_0_False_resize, 0);
  c_45_7_0_False_resize <= resize(c_7, 24);
  c_45_7_0_False_shift <= shift_left(c_45_7_0_False_resize, 0);
  with config_select_3 select c_45_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "00" => c_45 <= c_45_17_0_False_shift;
        when "01" => c_45 <= c_45_7_1_False_shift;
        when "10" => c_45 <= c_45_3_0_False_shift;
        when others => c_45 <= c_45_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 46 and associated fundamentals [[61], [19], [1], [-120]]
  c_46_5_0_False_resize <= c_5;
  c_46_5_0_False_shift <= shift_left(c_46_5_0_False_resize, 0);
  c_46_12_3_False_resize <= c_12(22 downto 0);
  c_46_12_3_False_shift <= shift_left(c_46_12_3_False_resize, 3);
  c_46_3_0_False_resize <= c_3(22 downto 0);
  c_46_3_0_False_shift <= shift_left(c_46_3_0_False_resize, 0);
  with config_select_3 select c_46_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "00" => c_46 <= c_46_5_0_False_shift;
        when "01" => c_46 <= c_46_12_3_False_shift;
        when others => c_46 <= c_46_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 47 and associated fundamentals [[-157], [243], [47], [82]]
  inst_adder_node_47: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
      w_o => 24,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_45,
      y_i => c_46,
      z_o => c_47_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_47_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 48 and associated fundamentals [[2], [131], [-28], [-240]]
  c_48_17_0_False_resize <= c_17(23 downto 0);
  c_48_17_0_False_shift <= shift_left(c_48_17_0_False_resize, 0);
  c_48_3_0_False_resize <= c_3;
  c_48_3_0_False_shift <= shift_left(c_48_3_0_False_resize, 0);
  c_48_12_4_False_resize <= c_12(23 downto 0);
  c_48_12_4_False_shift <= shift_left(c_48_12_4_False_resize, 4);
  with config_select_3 select c_48_sel <= 
    "00" when "10",
    "01" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "00" => c_48 <= c_48_17_0_False_shift;
        when "01" => c_48 <= c_48_3_0_False_shift;
        when others => c_48 <= c_48_12_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 49 and associated fundamentals [[16], [-6], [-251], [-124]]
  c_49_14_0_False_resize <= c_14;
  c_49_14_0_False_shift <= shift_left(c_49_14_0_False_resize, 0);
  c_49_12_0_False_resize <= c_12(23 downto 0);
  c_49_12_0_False_shift <= shift_left(c_49_12_0_False_resize, 0);
  c_49_3_3_False_resize <= c_3;
  c_49_3_3_False_shift <= shift_left(c_49_3_3_False_resize, 3);
  c_49_17_0_False_resize <= c_17(23 downto 0);
  c_49_17_0_False_shift <= shift_left(c_49_17_0_False_resize, 0);
  with config_select_3 select c_49_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_49_sel is
        when "00" => c_49 <= c_49_14_0_False_shift;
        when "01" => c_49 <= c_49_12_0_False_shift;
        when "10" => c_49 <= c_49_3_3_False_shift;
        when others => c_49 <= c_49_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 50 and associated fundamentals [[-14], [125], [223], [-116]]
  with config_select_4 select c_50_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_50: entity work.adder_node
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
      sub_i => c_50_sub_sel,
      x_i => c_48,
      y_i => c_49,
      z_o => c_50_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_50_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 51 and associated fundamentals [[-14], [-203], [-63], [-46]]
  c_51_44_0_False_resize <= c_44;
  c_51_44_0_False_shift <= shift_left(c_51_44_0_False_resize, 0);
  c_51_50_0_False_resize <= c_50;
  c_51_50_0_False_shift <= shift_left(c_51_50_0_False_resize, 0);
  c_51_39_1_False_resize <= c_39;
  c_51_39_1_False_shift <= shift_left(c_51_39_1_False_resize, 1);
  c_51_28_0_False_resize <= c_28;
  c_51_28_0_False_shift <= shift_left(c_51_28_0_False_resize, 0);
  with config_select_5 select c_51_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_51_sel is
        when "00" => c_51 <= c_51_44_0_False_shift;
        when "01" => c_51 <= c_51_50_0_False_shift;
        when "10" => c_51 <= c_51_39_1_False_shift;
        when others => c_51 <= c_51_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 52 and associated fundamentals [[14], [203], [63], [46]]
  c_52_resize <= c_51;
  c_52 <= -shift_left(c_52_resize, 0);
  -- node of type 'output' in stage 5 with id 53 and associated fundamentals [[174], [87], [169], [199]]
  c_53_resize <= c_25;
  c_53 <= -shift_left(c_53_resize, 0);
  -- node of type 'mux' in stage 5 with id 54 and associated fundamentals [[78], [243], [223], [210]]
  c_54_47_0_False_resize <= c_47;
  c_54_47_0_False_shift <= shift_left(c_54_47_0_False_resize, 0);
  c_54_50_0_False_resize <= c_50;
  c_54_50_0_False_shift <= shift_left(c_54_50_0_False_resize, 0);
  c_54_42_1_False_resize <= resize(c_42, 24);
  c_54_42_1_False_shift <= shift_left(c_54_42_1_False_resize, 1);
  c_54_23_0_False_resize <= c_23;
  c_54_23_0_False_shift <= shift_left(c_54_23_0_False_resize, 0);
  with config_select_5 select c_54_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_54_sel is
        when "00" => c_54 <= c_54_47_0_False_shift;
        when "01" => c_54 <= c_54_50_0_False_shift;
        when "10" => c_54 <= c_54_42_1_False_shift;
        when others => c_54 <= c_54_23_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 55 and associated fundamentals [[78], [243], [223], [210]]
  c_55_resize <= c_54;
  c_55 <= shift_left(c_55_resize, 0);
  -- node of type 'mux' in stage 5 with id 56 and associated fundamentals [[216], [205], [64], [188]]
  c_56_33_0_False_resize <= c_33;
  c_56_33_0_False_shift <= shift_left(c_56_33_0_False_resize, 0);
  c_56_44_3_False_resize <= c_44;
  c_56_44_3_False_shift <= shift_left(c_56_44_3_False_resize, 3);
  c_56_42_1_False_resize <= resize(c_42, 24);
  c_56_42_1_False_shift <= shift_left(c_56_42_1_False_resize, 1);
  c_56_44_0_False_resize <= c_44;
  c_56_44_0_False_shift <= shift_left(c_56_44_0_False_resize, 0);
  with config_select_5 select c_56_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_56_sel is
        when "00" => c_56 <= c_56_33_0_False_shift;
        when "01" => c_56 <= c_56_44_3_False_shift;
        when "10" => c_56 <= c_56_42_1_False_shift;
        when others => c_56 <= c_56_44_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 57 and associated fundamentals [[216], [205], [64], [188]]
  c_57_resize <= c_56;
  c_57 <= shift_left(c_57_resize, 0);
  -- node of type 'output' in stage 5 with id 58 and associated fundamentals [[22], [82], [28], [189]]
  c_58_resize <= c_30;
  c_58 <= shift_left(c_58_resize, 0);
  -- node of type 'mux' in stage 5 with id 59 and associated fundamentals [[-192], [-43], [-208], [-171]]
  c_59_42_0_False_resize <= resize(c_42, 24);
  c_59_42_0_False_shift <= shift_left(c_59_42_0_False_resize, 0);
  c_59_36_1_False_resize <= c_36;
  c_59_36_1_False_shift <= shift_left(c_59_36_1_False_resize, 1);
  c_59_23_0_False_resize <= c_23;
  c_59_23_0_False_shift <= shift_left(c_59_23_0_False_resize, 0);
  c_59_42_5_False_resize <= resize(c_42, 24);
  c_59_42_5_False_shift <= shift_left(c_59_42_5_False_resize, 5);
  with config_select_5 select c_59_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_59_sel is
        when "00" => c_59 <= c_59_42_0_False_shift;
        when "01" => c_59 <= c_59_36_1_False_shift;
        when "10" => c_59 <= c_59_23_0_False_shift;
        when others => c_59 <= c_59_42_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 60 and associated fundamentals [[192], [43], [208], [171]]
  c_60_resize <= c_59;
  c_60 <= -shift_left(c_60_resize, 0);
  -- node of type 'mux' in stage 5 with id 61 and associated fundamentals [[-157], [-102], [-180], [-116]]
  c_61_23_0_False_resize <= c_23;
  c_61_23_0_False_shift <= shift_left(c_61_23_0_False_resize, 0);
  c_61_33_2_False_resize <= c_33;
  c_61_33_2_False_shift <= shift_left(c_61_33_2_False_resize, 2);
  c_61_47_0_False_resize <= c_47;
  c_61_47_0_False_shift <= shift_left(c_61_47_0_False_resize, 0);
  c_61_50_0_False_resize <= c_50;
  c_61_50_0_False_shift <= shift_left(c_61_50_0_False_resize, 0);
  with config_select_5 select c_61_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_61_sel is
        when "00" => c_61 <= c_61_23_0_False_shift;
        when "01" => c_61 <= c_61_33_2_False_shift;
        when "10" => c_61 <= c_61_47_0_False_shift;
        when others => c_61 <= c_61_50_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 62 and associated fundamentals [[157], [102], [180], [116]]
  c_62_resize <= c_61;
  c_62 <= -shift_left(c_62_resize, 0);
  -- node of type 'mux' in stage 5 with id 63 and associated fundamentals [[187], [99], [202], [211]]
  c_63_36_0_False_resize <= c_36;
  c_63_36_0_False_shift <= shift_left(c_63_36_0_False_resize, 0);
  c_63_39_0_False_resize <= c_39;
  c_63_39_0_False_shift <= shift_left(c_63_39_0_False_resize, 0);
  c_63_39_1_False_resize <= c_39;
  c_63_39_1_False_shift <= shift_left(c_63_39_1_False_resize, 1);
  c_63_33_0_False_resize <= c_33;
  c_63_33_0_False_shift <= shift_left(c_63_33_0_False_resize, 0);
  with config_select_5 select c_63_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_63_sel is
        when "00" => c_63 <= c_63_36_0_False_shift;
        when "01" => c_63 <= c_63_39_0_False_shift;
        when "10" => c_63 <= c_63_39_1_False_shift;
        when others => c_63 <= c_63_33_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 64 and associated fundamentals [[187], [99], [202], [211]]
  c_64_resize <= c_63;
  c_64 <= shift_left(c_64_resize, 0);
  -- node of type 'mux' in stage 5 with id 65 and associated fundamentals [[147], [250], [94], [164]]
  c_65_50_1_False_resize <= c_50;
  c_65_50_1_False_shift <= shift_left(c_65_50_1_False_resize, 1);
  c_65_36_0_False_resize <= c_36;
  c_65_36_0_False_shift <= shift_left(c_65_36_0_False_resize, 0);
  c_65_47_1_False_resize <= c_47;
  c_65_47_1_False_shift <= shift_left(c_65_47_1_False_resize, 1);
  with config_select_5 select c_65_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_65_sel is
        when "00" => c_65 <= c_65_50_1_False_shift;
        when "01" => c_65 <= c_65_36_0_False_shift;
        when others => c_65 <= c_65_47_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 66 and associated fundamentals [[147], [250], [94], [164]]
  c_66_resize <= c_65;
  c_66 <= shift_left(c_66_resize, 0);
  -- node of type 'mux' in stage 5 with id 67 and associated fundamentals [[-34], [-158], [-108], [-214]]
  c_67_23_0_False_resize <= c_23;
  c_67_23_0_False_shift <= shift_left(c_67_23_0_False_resize, 0);
  c_67_36_0_False_resize <= c_36;
  c_67_36_0_False_shift <= shift_left(c_67_36_0_False_resize, 0);
  c_67_33_0_False_resize <= c_33;
  c_67_33_0_False_shift <= shift_left(c_67_33_0_False_resize, 0);
  c_67_44_1_False_resize <= c_44;
  c_67_44_1_False_shift <= shift_left(c_67_44_1_False_resize, 1);
  with config_select_5 select c_67_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_67_sel is
        when "00" => c_67 <= c_67_23_0_False_shift;
        when "01" => c_67 <= c_67_36_0_False_shift;
        when "10" => c_67 <= c_67_33_0_False_shift;
        when others => c_67 <= c_67_44_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 68 and associated fundamentals [[34], [158], [108], [214]]
  c_68_resize <= c_67;
  c_68 <= -shift_left(c_68_resize, 0);
end architecture;
