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
  signal c_1: signed(24 downto 0);
  signal c_1_0_9_False_resize: signed(24 downto 0);
  signal c_1_0_9_False_shift: signed(24 downto 0);
  signal c_1_0_1_False_resize: signed(24 downto 0);
  signal c_1_0_1_False_shift: signed(24 downto 0);
  signal c_1_0_0_False_resize: signed(24 downto 0);
  signal c_1_0_0_False_shift: signed(24 downto 0);
  signal c_1_0_2_False_resize: signed(24 downto 0);
  signal c_1_0_2_False_shift: signed(24 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(19 downto 0);
  signal c_2_0_3_False_resize: signed(19 downto 0);
  signal c_2_0_3_False_shift: signed(19 downto 0);
  signal c_2_0_4_False_resize: signed(19 downto 0);
  signal c_2_0_4_False_shift: signed(19 downto 0);
  signal c_2_0_0_False_resize: signed(19 downto 0);
  signal c_2_0_0_False_shift: signed(19 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(22 downto 0);
  signal c_3_i0_resize: signed(22 downto 0);
  signal c_3_i1_resize: signed(22 downto 0);
  signal c_3_i0_shift: signed(22 downto 0);
  signal c_3_i1_shift: signed(22 downto 0);
  signal c_3_arith: signed(22 downto 0);
  signal c_3_oshift: signed(22 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(17 downto 0);
  signal c_4_0_0_False_resize: signed(17 downto 0);
  signal c_4_0_0_False_shift: signed(17 downto 0);
  signal c_4_0_2_False_resize: signed(17 downto 0);
  signal c_4_0_2_False_shift: signed(17 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(19 downto 0);
  signal c_5_0_0_False_resize: signed(19 downto 0);
  signal c_5_0_0_False_shift: signed(19 downto 0);
  signal c_5_0_4_False_resize: signed(19 downto 0);
  signal c_5_0_4_False_shift: signed(19 downto 0);
  signal c_5_0_2_False_resize: signed(19 downto 0);
  signal c_5_0_2_False_shift: signed(19 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_i0_resize: signed(22 downto 0);
  signal c_6_i1_resize: signed(22 downto 0);
  signal c_6_i0_shift: signed(22 downto 0);
  signal c_6_i1_shift: signed(22 downto 0);
  signal c_6_arith: signed(22 downto 0);
  signal c_6_oshift: signed(22 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(23 downto 0);
  signal c_7_0_0_False_resize: signed(23 downto 0);
  signal c_7_0_0_False_shift: signed(23 downto 0);
  signal c_7_0_8_False_resize: signed(23 downto 0);
  signal c_7_0_8_False_shift: signed(23 downto 0);
  signal c_7_0_7_False_resize: signed(23 downto 0);
  signal c_7_0_7_False_shift: signed(23 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(19 downto 0);
  signal c_8_0_4_False_resize: signed(19 downto 0);
  signal c_8_0_4_False_shift: signed(19 downto 0);
  signal c_8_0_0_False_resize: signed(19 downto 0);
  signal c_8_0_0_False_shift: signed(19 downto 0);
  signal c_8_0_3_False_resize: signed(19 downto 0);
  signal c_8_0_3_False_shift: signed(19 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(24 downto 0);
  signal c_9_i0_resize: signed(24 downto 0);
  signal c_9_i1_resize: signed(24 downto 0);
  signal c_9_i0_shift: signed(24 downto 0);
  signal c_9_i1_shift: signed(24 downto 0);
  signal c_9_arith: signed(24 downto 0);
  signal c_9_oshift: signed(24 downto 0);
  signal c_10: signed(24 downto 0);
  signal c_10_3_2_False_resize: signed(24 downto 0);
  signal c_10_3_2_False_shift: signed(24 downto 0);
  signal c_10_9_0_False_resize: signed(24 downto 0);
  signal c_10_9_0_False_shift: signed(24 downto 0);
  signal c_10_9_4_False_resize: signed(24 downto 0);
  signal c_10_9_4_False_shift: signed(24 downto 0);
  signal c_10_6_0_False_resize: signed(24 downto 0);
  signal c_10_6_0_False_shift: signed(24 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(22 downto 0);
  signal c_11_6_1_False_resize: signed(22 downto 0);
  signal c_11_6_1_False_shift: signed(22 downto 0);
  signal c_11_3_4_False_resize: signed(22 downto 0);
  signal c_11_3_4_False_shift: signed(22 downto 0);
  signal c_11_6_0_False_resize: signed(22 downto 0);
  signal c_11_6_0_False_shift: signed(22 downto 0);
  signal c_11_3_3_False_resize: signed(22 downto 0);
  signal c_11_3_3_False_shift: signed(22 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_i0_resize: signed(23 downto 0);
  signal c_12_i1_resize: signed(23 downto 0);
  signal c_12_i0_shift: signed(23 downto 0);
  signal c_12_i1_shift: signed(23 downto 0);
  signal c_12_arith: signed(23 downto 0);
  signal c_12_oshift: signed(23 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(18 downto 0);
  signal c_14_0_1_False_resize: signed(18 downto 0);
  signal c_14_0_1_False_shift: signed(18 downto 0);
  signal c_14_0_3_False_resize: signed(18 downto 0);
  signal c_14_0_3_False_shift: signed(18 downto 0);
  signal c_14_0_0_False_resize: signed(18 downto 0);
  signal c_14_0_0_False_shift: signed(18 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(18 downto 0);
  signal c_15_0_0_False_resize: signed(18 downto 0);
  signal c_15_0_0_False_shift: signed(18 downto 0);
  signal c_15_0_3_False_resize: signed(18 downto 0);
  signal c_15_0_3_False_shift: signed(18 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(19 downto 0);
  signal c_16_i0_resize: signed(19 downto 0);
  signal c_16_i1_resize: signed(19 downto 0);
  signal c_16_i0_shift: signed(19 downto 0);
  signal c_16_i1_shift: signed(19 downto 0);
  signal c_16_arith: signed(19 downto 0);
  signal c_16_oshift: signed(19 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(23 downto 0);
  signal c_17_3_4_False_resize: signed(23 downto 0);
  signal c_17_3_4_False_shift: signed(23 downto 0);
  signal c_17_16_3_False_resize: signed(23 downto 0);
  signal c_17_16_3_False_shift: signed(23 downto 0);
  signal c_17_9_0_False_resize: signed(23 downto 0);
  signal c_17_9_0_False_shift: signed(23 downto 0);
  signal c_17_9_3_False_resize: signed(23 downto 0);
  signal c_17_9_3_False_shift: signed(23 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_3_1_False_resize: signed(23 downto 0);
  signal c_18_3_1_False_shift: signed(23 downto 0);
  signal c_18_9_0_False_resize: signed(23 downto 0);
  signal c_18_9_0_False_shift: signed(23 downto 0);
  signal c_18_16_2_False_resize: signed(23 downto 0);
  signal c_18_16_2_False_shift: signed(23 downto 0);
  signal c_18_16_5_False_resize: signed(23 downto 0);
  signal c_18_16_5_False_shift: signed(23 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_i0_resize: signed(23 downto 0);
  signal c_19_i1_resize: signed(23 downto 0);
  signal c_19_i0_shift: signed(23 downto 0);
  signal c_19_i1_shift: signed(23 downto 0);
  signal c_19_arith: signed(23 downto 0);
  signal c_19_oshift: signed(23 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(17 downto 0);
  signal c_20_0_2_False_resize: signed(17 downto 0);
  signal c_20_0_2_False_shift: signed(17 downto 0);
  signal c_20_0_0_False_resize: signed(17 downto 0);
  signal c_20_0_0_False_shift: signed(17 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(26 downto 0);
  signal c_21_0_11_False_resize: signed(26 downto 0);
  signal c_21_0_11_False_shift: signed(26 downto 0);
  signal c_21_0_0_False_resize: signed(26 downto 0);
  signal c_21_0_0_False_shift: signed(26 downto 0);
  signal c_21_0_2_False_resize: signed(26 downto 0);
  signal c_21_0_2_False_shift: signed(26 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_i0_resize: signed(23 downto 0);
  signal c_22_i1_resize: signed(23 downto 0);
  signal c_22_i0_shift: signed(23 downto 0);
  signal c_22_i1_shift: signed(23 downto 0);
  signal c_22_arith: signed(23 downto 0);
  signal c_22_oshift: signed(23 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(23 downto 0);
  signal c_23_0_0_False_resize: signed(23 downto 0);
  signal c_23_0_0_False_shift: signed(23 downto 0);
  signal c_23_0_7_False_resize: signed(23 downto 0);
  signal c_23_0_7_False_shift: signed(23 downto 0);
  signal c_23_0_8_False_resize: signed(23 downto 0);
  signal c_23_0_8_False_shift: signed(23 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(20 downto 0);
  signal c_24_0_4_False_resize: signed(20 downto 0);
  signal c_24_0_4_False_shift: signed(20 downto 0);
  signal c_24_0_5_False_resize: signed(20 downto 0);
  signal c_24_0_5_False_shift: signed(20 downto 0);
  signal c_24_0_1_False_resize: signed(20 downto 0);
  signal c_24_0_1_False_shift: signed(20 downto 0);
  signal c_24_0_0_False_resize: signed(20 downto 0);
  signal c_24_0_0_False_shift: signed(20 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_i0_resize: signed(23 downto 0);
  signal c_25_i1_resize: signed(23 downto 0);
  signal c_25_i0_shift: signed(23 downto 0);
  signal c_25_i1_shift: signed(23 downto 0);
  signal c_25_arith: signed(23 downto 0);
  signal c_25_oshift: signed(23 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(22 downto 0);
  signal c_26_6_0_False_resize: signed(22 downto 0);
  signal c_26_6_0_False_shift: signed(22 downto 0);
  signal c_26_6_2_False_resize: signed(22 downto 0);
  signal c_26_6_2_False_shift: signed(22 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(21 downto 0);
  signal c_27_16_2_False_resize: signed(21 downto 0);
  signal c_27_16_2_False_shift: signed(21 downto 0);
  signal c_27_22_0_False_resize: signed(21 downto 0);
  signal c_27_22_0_False_shift: signed(21 downto 0);
  signal c_27_9_1_False_resize: signed(21 downto 0);
  signal c_27_9_1_False_shift: signed(21 downto 0);
  signal c_27_22_2_False_resize: signed(21 downto 0);
  signal c_27_22_2_False_shift: signed(21 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_i0_resize: signed(23 downto 0);
  signal c_28_i1_resize: signed(23 downto 0);
  signal c_28_i0_shift: signed(23 downto 0);
  signal c_28_i1_shift: signed(23 downto 0);
  signal c_28_arith: signed(23 downto 0);
  signal c_28_oshift: signed(23 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(20 downto 0);
  signal c_29_i0_resize: signed(20 downto 0);
  signal c_29_i1_resize: signed(20 downto 0);
  signal c_29_i0_shift: signed(20 downto 0);
  signal c_29_i1_shift: signed(20 downto 0);
  signal c_29_arith: signed(20 downto 0);
  signal c_29_oshift: signed(20 downto 0);
  signal c_30: signed(22 downto 0);
  signal c_30_16_0_False_resize: signed(22 downto 0);
  signal c_30_16_0_False_shift: signed(22 downto 0);
  signal c_30_25_4_False_resize: signed(22 downto 0);
  signal c_30_25_4_False_shift: signed(22 downto 0);
  signal c_30_16_1_False_resize: signed(22 downto 0);
  signal c_30_16_1_False_shift: signed(22 downto 0);
  signal c_30_3_3_False_resize: signed(22 downto 0);
  signal c_30_3_3_False_shift: signed(22 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_25_3_False_resize: signed(23 downto 0);
  signal c_31_25_3_False_shift: signed(23 downto 0);
  signal c_31_6_0_False_resize: signed(23 downto 0);
  signal c_31_6_0_False_shift: signed(23 downto 0);
  signal c_31_22_1_False_resize: signed(23 downto 0);
  signal c_31_22_1_False_shift: signed(23 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_32_i0_resize: signed(23 downto 0);
  signal c_32_i1_resize: signed(23 downto 0);
  signal c_32_i0_shift: signed(23 downto 0);
  signal c_32_i1_shift: signed(23 downto 0);
  signal c_32_arith: signed(23 downto 0);
  signal c_32_oshift: signed(23 downto 0);
  signal c_32_sub_sel: std_logic;
  signal c_33: signed(23 downto 0);
  signal c_33_29_1_False_resize: signed(23 downto 0);
  signal c_33_29_1_False_shift: signed(23 downto 0);
  signal c_33_29_0_False_resize: signed(23 downto 0);
  signal c_33_29_0_False_shift: signed(23 downto 0);
  signal c_33_29_2_False_resize: signed(23 downto 0);
  signal c_33_29_2_False_shift: signed(23 downto 0);
  signal c_33_29_3_False_resize: signed(23 downto 0);
  signal c_33_29_3_False_shift: signed(23 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(22 downto 0);
  signal c_34_i0_resize: signed(22 downto 0);
  signal c_34_i1_resize: signed(22 downto 0);
  signal c_34_i0_shift: signed(22 downto 0);
  signal c_34_i1_shift: signed(22 downto 0);
  signal c_34_arith: signed(22 downto 0);
  signal c_34_oshift: signed(22 downto 0);
  signal c_34_sub_sel: std_logic;
  signal c_35: signed(27 downto 0);
  signal c_35_29_1_False_resize: signed(27 downto 0);
  signal c_35_29_1_False_shift: signed(27 downto 0);
  signal c_35_29_0_False_resize: signed(27 downto 0);
  signal c_35_29_0_False_shift: signed(27 downto 0);
  signal c_35_29_3_False_resize: signed(27 downto 0);
  signal c_35_29_3_False_shift: signed(27 downto 0);
  signal c_35_29_7_False_resize: signed(27 downto 0);
  signal c_35_29_7_False_shift: signed(27 downto 0);
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
  signal c_37_6_0_False_resize: signed(22 downto 0);
  signal c_37_6_0_False_shift: signed(22 downto 0);
  signal c_37_25_0_False_resize: signed(22 downto 0);
  signal c_37_25_0_False_shift: signed(22 downto 0);
  signal c_37_9_1_False_resize: signed(22 downto 0);
  signal c_37_9_1_False_shift: signed(22 downto 0);
  signal c_37_6_2_False_resize: signed(22 downto 0);
  signal c_37_6_2_False_shift: signed(22 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(22 downto 0);
  signal c_38_25_0_False_resize: signed(22 downto 0);
  signal c_38_25_0_False_shift: signed(22 downto 0);
  signal c_38_25_2_False_resize: signed(22 downto 0);
  signal c_38_25_2_False_shift: signed(22 downto 0);
  signal c_38_3_3_False_resize: signed(22 downto 0);
  signal c_38_3_3_False_shift: signed(22 downto 0);
  signal c_38_22_1_False_resize: signed(22 downto 0);
  signal c_38_22_1_False_shift: signed(22 downto 0);
  signal c_38_sel: std_logic_vector(1 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_i0_resize: signed(23 downto 0);
  signal c_39_i1_resize: signed(23 downto 0);
  signal c_39_i0_shift: signed(23 downto 0);
  signal c_39_i1_shift: signed(23 downto 0);
  signal c_39_arith: signed(23 downto 0);
  signal c_39_oshift: signed(23 downto 0);
  signal c_39_sub_sel: std_logic;
  signal c_40: signed(19 downto 0);
  signal c_40_0_0_False_resize: signed(19 downto 0);
  signal c_40_0_0_False_shift: signed(19 downto 0);
  signal c_40_0_3_False_resize: signed(19 downto 0);
  signal c_40_0_3_False_shift: signed(19 downto 0);
  signal c_40_0_4_False_resize: signed(19 downto 0);
  signal c_40_0_4_False_shift: signed(19 downto 0);
  signal c_40_sel: std_logic_vector(1 downto 0);
  signal c_41: signed(22 downto 0);
  signal c_41_i0_resize: signed(22 downto 0);
  signal c_41_i1_resize: signed(22 downto 0);
  signal c_41_i0_shift: signed(22 downto 0);
  signal c_41_i1_shift: signed(22 downto 0);
  signal c_41_arith: signed(22 downto 0);
  signal c_41_oshift: signed(22 downto 0);
  signal c_41_sub_sel: std_logic;
  signal c_42: signed(23 downto 0);
  signal c_42_i0_resize: signed(23 downto 0);
  signal c_42_i1_resize: signed(23 downto 0);
  signal c_42_i0_shift: signed(23 downto 0);
  signal c_42_i1_shift: signed(23 downto 0);
  signal c_42_arith: signed(23 downto 0);
  signal c_42_oshift: signed(23 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_6_2_False_resize: signed(23 downto 0);
  signal c_43_6_2_False_shift: signed(23 downto 0);
  signal c_43_25_0_False_resize: signed(23 downto 0);
  signal c_43_25_0_False_shift: signed(23 downto 0);
  signal c_43_sel: std_logic_vector(0 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_9_0_False_resize: signed(23 downto 0);
  signal c_44_9_0_False_shift: signed(23 downto 0);
  signal c_44_6_0_False_resize: signed(23 downto 0);
  signal c_44_6_0_False_shift: signed(23 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_i0_resize: signed(23 downto 0);
  signal c_45_i1_resize: signed(23 downto 0);
  signal c_45_i0_shift: signed(23 downto 0);
  signal c_45_i1_shift: signed(23 downto 0);
  signal c_45_arith: signed(23 downto 0);
  signal c_45_oshift: signed(23 downto 0);
  signal c_45_sub_sel: std_logic;
  signal c_46: signed(23 downto 0);
  signal c_46_resize: signed(23 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_42_0_False_resize: signed(23 downto 0);
  signal c_47_42_0_False_shift: signed(23 downto 0);
  signal c_47_36_0_False_resize: signed(23 downto 0);
  signal c_47_36_0_False_shift: signed(23 downto 0);
  signal c_47_34_1_False_resize: signed(23 downto 0);
  signal c_47_34_1_False_shift: signed(23 downto 0);
  signal c_47_sel: std_logic_vector(1 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_48_resize: signed(23 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_49_resize: signed(23 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_50_resize: signed(23 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_51_resize: signed(23 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_52_34_0_False_resize: signed(23 downto 0);
  signal c_52_34_0_False_shift: signed(23 downto 0);
  signal c_52_34_3_False_resize: signed(23 downto 0);
  signal c_52_34_3_False_shift: signed(23 downto 0);
  signal c_52_36_0_False_resize: signed(23 downto 0);
  signal c_52_36_0_False_shift: signed(23 downto 0);
  signal c_52_36_1_False_resize: signed(23 downto 0);
  signal c_52_36_1_False_shift: signed(23 downto 0);
  signal c_52_sel: std_logic_vector(1 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_53_resize: signed(23 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_54_resize: signed(23 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_55_resize: signed(23 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_56_42_0_False_resize: signed(23 downto 0);
  signal c_56_42_0_False_shift: signed(23 downto 0);
  signal c_56_13_0_False_resize: signed(23 downto 0);
  signal c_56_13_0_False_shift: signed(23 downto 0);
  signal c_56_36_0_False_resize: signed(23 downto 0);
  signal c_56_36_0_False_shift: signed(23 downto 0);
  signal c_56_sel: std_logic_vector(1 downto 0);
  signal c_57: signed(23 downto 0);
  signal c_57_resize: signed(23 downto 0);
  signal c_58: signed(23 downto 0);
  signal c_58_36_0_False_resize: signed(23 downto 0);
  signal c_58_36_0_False_shift: signed(23 downto 0);
  signal c_58_42_0_False_resize: signed(23 downto 0);
  signal c_58_42_0_False_shift: signed(23 downto 0);
  signal c_58_34_0_False_resize: signed(23 downto 0);
  signal c_58_34_0_False_shift: signed(23 downto 0);
  signal c_58_13_0_False_resize: signed(23 downto 0);
  signal c_58_13_0_False_shift: signed(23 downto 0);
  signal c_58_sel: std_logic_vector(1 downto 0);
  signal c_59: signed(23 downto 0);
  signal c_59_resize: signed(23 downto 0);
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
  -- output node 2 with id 49
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_49);
    end if;
  end process;
  -- output node 3 with id 50
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_50);
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
  -- output node 6 with id 54
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_54);
    end if;
  end process;
  -- output node 7 with id 55
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_55);
    end if;
  end process;
  -- output node 8 with id 57
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_57);
    end if;
  end process;
  -- output node 9 with id 59
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_59);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[512], [2], [4], [1]]
  c_1_0_9_False_resize <= resize(c_0, 25);
  c_1_0_9_False_shift <= shift_left(c_1_0_9_False_resize, 9);
  c_1_0_1_False_resize <= resize(c_0, 25);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  c_1_0_0_False_resize <= resize(c_0, 25);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 25);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "00" => c_1 <= c_1_0_9_False_shift;
        when "01" => c_1 <= c_1_0_1_False_shift;
        when "10" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [8], [8], [16]]
  c_2_0_3_False_resize <= resize(c_0, 20);
  c_2_0_3_False_shift <= shift_left(c_2_0_3_False_resize, 3);
  c_2_0_4_False_resize <= resize(c_0, 20);
  c_2_0_4_False_shift <= shift_left(c_2_0_4_False_resize, 4);
  c_2_0_0_False_resize <= resize(c_0, 20);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "00" when "10",
    "00" when "01",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_3_False_shift;
        when "01" => c_2 <= c_2_0_4_False_shift;
        when others => c_2 <= c_2_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[511], [10], [-4], [-15]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 20,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[1], [1], [4], [1]]
  c_4_0_0_False_resize <= resize(c_0, 18);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_2_False_resize <= resize(c_0, 18);
  c_4_0_2_False_shift <= shift_left(c_4_0_2_False_resize, 2);
  with config_select_1 select c_4_sel <= 
    "0" when "01",
    "0" when "11",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_0_False_shift;
        when others => c_4 <= c_4_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[1], [1], [16], [4]]
  c_5_0_0_False_resize <= resize(c_0, 20);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_0_4_False_resize <= resize(c_0, 20);
  c_5_0_4_False_shift <= shift_left(c_5_0_4_False_resize, 4);
  c_5_0_2_False_resize <= resize(c_0, 20);
  c_5_0_2_False_shift <= shift_left(c_5_0_2_False_resize, 2);
  with config_select_1 select c_5_sel <= 
    "00" when "01",
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_0_0_False_shift;
        when "01" => c_5 <= c_5_0_4_False_shift;
        when others => c_5 <= c_5_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 6 and associated fundamentals [[31], [33], [112], [28]]
  with config_select_2 select c_6_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 20,
      w_o => 23,
      s_x_i => 5,
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
      c_6 <= c_6_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[256], [1], [1], [128]]
  c_7_0_0_False_resize <= resize(c_0, 24);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  c_7_0_8_False_resize <= resize(c_0, 24);
  c_7_0_8_False_shift <= shift_left(c_7_0_8_False_resize, 8);
  c_7_0_7_False_resize <= resize(c_0, 24);
  c_7_0_7_False_shift <= shift_left(c_7_0_7_False_resize, 7);
  with config_select_1 select c_7_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_0_0_False_shift;
        when "01" => c_7 <= c_7_0_8_False_shift;
        when others => c_7 <= c_7_0_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[8], [8], [16], [1]]
  c_8_0_4_False_resize <= resize(c_0, 20);
  c_8_0_4_False_shift <= shift_left(c_8_0_4_False_resize, 4);
  c_8_0_0_False_resize <= resize(c_0, 20);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  c_8_0_3_False_resize <= resize(c_0, 20);
  c_8_0_3_False_shift <= shift_left(c_8_0_3_False_resize, 3);
  with config_select_1 select c_8_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "00" => c_8 <= c_8_0_4_False_shift;
        when "01" => c_8 <= c_8_0_0_False_shift;
        when others => c_8 <= c_8_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 9 and associated fundamentals [[264], [9], [17], [129]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 20,
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
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[264], [144], [-16], [28]]
  c_10_3_2_False_resize <= resize(c_3, 25);
  c_10_3_2_False_shift <= shift_left(c_10_3_2_False_resize, 2);
  c_10_9_0_False_resize <= c_9;
  c_10_9_0_False_shift <= shift_left(c_10_9_0_False_resize, 0);
  c_10_9_4_False_resize <= c_9;
  c_10_9_4_False_shift <= shift_left(c_10_9_4_False_resize, 4);
  c_10_6_0_False_resize <= resize(c_6, 25);
  c_10_6_0_False_shift <= shift_left(c_10_6_0_False_resize, 0);
  with config_select_3 select c_10_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_3_2_False_shift;
        when "01" => c_10 <= c_10_9_0_False_shift;
        when "10" => c_10 <= c_10_9_4_False_shift;
        when others => c_10 <= c_10_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[62], [33], [-64], [-120]]
  c_11_6_1_False_resize <= c_6;
  c_11_6_1_False_shift <= shift_left(c_11_6_1_False_resize, 1);
  c_11_3_4_False_resize <= c_3;
  c_11_3_4_False_shift <= shift_left(c_11_3_4_False_resize, 4);
  c_11_6_0_False_resize <= c_6;
  c_11_6_0_False_shift <= shift_left(c_11_6_0_False_resize, 0);
  c_11_3_3_False_resize <= c_3;
  c_11_3_3_False_shift <= shift_left(c_11_3_3_False_resize, 3);
  with config_select_3 select c_11_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_6_1_False_shift;
        when "01" => c_11 <= c_11_3_4_False_shift;
        when "10" => c_11 <= c_11_6_0_False_shift;
        when others => c_11 <= c_11_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 12 and associated fundamentals [[202], [177], [48], [148]]
  with config_select_4 select c_12_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 25,
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
  -- node of type 'add_sub' in stage 3 with id 13 and associated fundamentals [[2106], [106], [208], [116]]
  with config_select_3 select c_13_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 24,
      s_x_i => 1,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_13_sub_sel,
      x_i => c_6,
      y_i => c_3,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 14 and associated fundamentals [[2], [8], [1], [8]]
  c_14_0_1_False_resize <= resize(c_0, 19);
  c_14_0_1_False_shift <= shift_left(c_14_0_1_False_resize, 1);
  c_14_0_3_False_resize <= resize(c_0, 19);
  c_14_0_3_False_shift <= shift_left(c_14_0_3_False_resize, 3);
  c_14_0_0_False_resize <= resize(c_0, 19);
  c_14_0_0_False_shift <= shift_left(c_14_0_0_False_resize, 0);
  with config_select_1 select c_14_sel <= 
    "00" when "00",
    "01" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_0_1_False_shift;
        when "01" => c_14 <= c_14_0_3_False_shift;
        when others => c_14 <= c_14_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 15 and associated fundamentals [[8], [1], [8], [1]]
  c_15_0_0_False_resize <= resize(c_0, 19);
  c_15_0_0_False_shift <= shift_left(c_15_0_0_False_resize, 0);
  c_15_0_3_False_resize <= resize(c_0, 19);
  c_15_0_3_False_shift <= shift_left(c_15_0_3_False_resize, 3);
  with config_select_1 select c_15_sel <= 
    "0" when "01",
    "0" when "11",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_0_0_False_shift;
        when others => c_15 <= c_15_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 16 and associated fundamentals [[-6], [9], [-7], [7]]
  with config_select_2 select c_16_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 20,
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
      c_16 <= c_16_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 17 and associated fundamentals [[-48], [160], [136], [129]]
  c_17_3_4_False_resize <= resize(c_3, 24);
  c_17_3_4_False_shift <= shift_left(c_17_3_4_False_resize, 4);
  c_17_16_3_False_resize <= resize(c_16, 24);
  c_17_16_3_False_shift <= shift_left(c_17_16_3_False_resize, 3);
  c_17_9_0_False_resize <= c_9(23 downto 0);
  c_17_9_0_False_shift <= shift_left(c_17_9_0_False_resize, 0);
  c_17_9_3_False_resize <= c_9(23 downto 0);
  c_17_9_3_False_shift <= shift_left(c_17_9_3_False_resize, 3);
  with config_select_3 select c_17_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "00" => c_17 <= c_17_3_4_False_shift;
        when "01" => c_17 <= c_17_16_3_False_shift;
        when "10" => c_17 <= c_17_9_0_False_shift;
        when others => c_17 <= c_17_9_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[-192], [20], [17], [28]]
  c_18_3_1_False_resize <= resize(c_3, 24);
  c_18_3_1_False_shift <= shift_left(c_18_3_1_False_resize, 1);
  c_18_9_0_False_resize <= c_9(23 downto 0);
  c_18_9_0_False_shift <= shift_left(c_18_9_0_False_resize, 0);
  c_18_16_2_False_resize <= resize(c_16, 24);
  c_18_16_2_False_shift <= shift_left(c_18_16_2_False_resize, 2);
  c_18_16_5_False_resize <= resize(c_16, 24);
  c_18_16_5_False_shift <= shift_left(c_18_16_5_False_resize, 5);
  with config_select_3 select c_18_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "00" => c_18 <= c_18_3_1_False_shift;
        when "01" => c_18 <= c_18_9_0_False_shift;
        when "10" => c_18 <= c_18_16_2_False_shift;
        when others => c_18 <= c_18_16_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 19 and associated fundamentals [[144], [140], [119], [157]]
  with config_select_4 select c_19_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_19: entity work.adder_node
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
  -- node of type 'mux' in stage 1 with id 20 and associated fundamentals [[1], [4], [1], [4]]
  c_20_0_2_False_resize <= resize(c_0, 18);
  c_20_0_2_False_shift <= shift_left(c_20_0_2_False_resize, 2);
  c_20_0_0_False_resize <= resize(c_0, 18);
  c_20_0_0_False_shift <= shift_left(c_20_0_0_False_resize, 0);
  with config_select_1 select c_20_sel <= 
    "0" when "11",
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_0_2_False_shift;
        when others => c_20 <= c_20_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 21 and associated fundamentals [[2048], [4], [4], [1]]
  c_21_0_11_False_resize <= resize(c_0, 27);
  c_21_0_11_False_shift <= shift_left(c_21_0_11_False_resize, 11);
  c_21_0_0_False_resize <= resize(c_0, 27);
  c_21_0_0_False_shift <= shift_left(c_21_0_0_False_resize, 0);
  c_21_0_2_False_resize <= resize(c_0, 27);
  c_21_0_2_False_shift <= shift_left(c_21_0_2_False_resize, 2);
  with config_select_1 select c_21_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "00" => c_21 <= c_21_0_11_False_shift;
        when "01" => c_21 <= c_21_0_0_False_shift;
        when others => c_21 <= c_21_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 22 and associated fundamentals [[2049], [8], [-3], [5]]
  with config_select_2 select c_22_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 27,
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
  -- node of type 'mux' in stage 1 with id 23 and associated fundamentals [[1], [1], [256], [128]]
  c_23_0_0_False_resize <= resize(c_0, 24);
  c_23_0_0_False_shift <= shift_left(c_23_0_0_False_resize, 0);
  c_23_0_7_False_resize <= resize(c_0, 24);
  c_23_0_7_False_shift <= shift_left(c_23_0_7_False_resize, 7);
  c_23_0_8_False_resize <= resize(c_0, 24);
  c_23_0_8_False_shift <= shift_left(c_23_0_8_False_resize, 8);
  with config_select_1 select c_23_sel <= 
    "00" when "01",
    "00" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "00" => c_23 <= c_23_0_0_False_shift;
        when "01" => c_23 <= c_23_0_7_False_shift;
        when others => c_23 <= c_23_0_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 24 and associated fundamentals [[1], [16], [2], [32]]
  c_24_0_4_False_resize <= resize(c_0, 21);
  c_24_0_4_False_shift <= shift_left(c_24_0_4_False_resize, 4);
  c_24_0_5_False_resize <= resize(c_0, 21);
  c_24_0_5_False_shift <= shift_left(c_24_0_5_False_resize, 5);
  c_24_0_1_False_resize <= resize(c_0, 21);
  c_24_0_1_False_shift <= shift_left(c_24_0_1_False_resize, 1);
  c_24_0_0_False_resize <= resize(c_0, 21);
  c_24_0_0_False_shift <= shift_left(c_24_0_0_False_resize, 0);
  with config_select_1 select c_24_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_0_4_False_shift;
        when "01" => c_24 <= c_24_0_5_False_shift;
        when "10" => c_24 <= c_24_0_1_False_shift;
        when others => c_24 <= c_24_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 25 and associated fundamentals [[-1], [-31], [252], [192]]
  with config_select_2 select c_25_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_25: entity work.adder_node
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
  -- node of type 'mux' in stage 3 with id 26 and associated fundamentals [[31], [33], [112], [112]]
  c_26_6_0_False_resize <= c_6;
  c_26_6_0_False_shift <= shift_left(c_26_6_0_False_resize, 0);
  c_26_6_2_False_resize <= c_6;
  c_26_6_2_False_shift <= shift_left(c_26_6_2_False_resize, 2);
  with config_select_3 select c_26_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_6_0_False_shift;
        when others => c_26 <= c_26_6_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 27 and associated fundamentals [[-24], [32], [34], [5]]
  c_27_16_2_False_resize <= resize(c_16, 22);
  c_27_16_2_False_shift <= shift_left(c_27_16_2_False_resize, 2);
  c_27_22_0_False_resize <= c_22(21 downto 0);
  c_27_22_0_False_shift <= shift_left(c_27_22_0_False_resize, 0);
  c_27_9_1_False_resize <= c_9(21 downto 0);
  c_27_9_1_False_shift <= shift_left(c_27_9_1_False_resize, 1);
  c_27_22_2_False_resize <= c_22(21 downto 0);
  c_27_22_2_False_shift <= shift_left(c_27_22_2_False_resize, 2);
  with config_select_3 select c_27_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "00" => c_27 <= c_27_16_2_False_shift;
        when "01" => c_27 <= c_27_22_0_False_shift;
        when "10" => c_27 <= c_27_9_1_False_shift;
        when others => c_27 <= c_27_22_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 28 and associated fundamentals [[55], [65], [146], [107]]
  with config_select_4 select c_28_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
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
  -- node of type 'add' in stage 1 with id 29 and associated fundamentals [[17], [17], [17], [17]]
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 21,
      s_x_i => 0,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_0,
      y_i => c_0,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 30 and associated fundamentals [[-16], [9], [-14], [-120]]
  c_30_16_0_False_resize <= resize(c_16, 23);
  c_30_16_0_False_shift <= shift_left(c_30_16_0_False_resize, 0);
  c_30_25_4_False_resize <= c_25(22 downto 0);
  c_30_25_4_False_shift <= shift_left(c_30_25_4_False_resize, 4);
  c_30_16_1_False_resize <= resize(c_16, 23);
  c_30_16_1_False_shift <= shift_left(c_30_16_1_False_resize, 1);
  c_30_3_3_False_resize <= c_3;
  c_30_3_3_False_shift <= shift_left(c_30_3_3_False_resize, 3);
  with config_select_3 select c_30_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "00" => c_30 <= c_30_16_0_False_shift;
        when "01" => c_30 <= c_30_25_4_False_shift;
        when "10" => c_30 <= c_30_16_1_False_shift;
        when others => c_30 <= c_30_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 31 and associated fundamentals [[-8], [-248], [112], [10]]
  c_31_25_3_False_resize <= c_25;
  c_31_25_3_False_shift <= shift_left(c_31_25_3_False_resize, 3);
  c_31_6_0_False_resize <= resize(c_6, 24);
  c_31_6_0_False_shift <= shift_left(c_31_6_0_False_resize, 0);
  c_31_22_1_False_resize <= c_22;
  c_31_22_1_False_shift <= shift_left(c_31_22_1_False_resize, 1);
  with config_select_3 select c_31_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "00" => c_31 <= c_31_25_3_False_shift;
        when "01" => c_31 <= c_31_6_0_False_shift;
        when others => c_31 <= c_31_22_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 32 and associated fundamentals [[-24], [-239], [-126], [-130]]
  with config_select_4 select c_32_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_32: entity work.adder_node
    generic map (
      w_x_i => 23,
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
  -- node of type 'mux' in stage 2 with id 33 and associated fundamentals [[68], [17], [136], [34]]
  c_33_29_1_False_resize <= resize(c_29, 24);
  c_33_29_1_False_shift <= shift_left(c_33_29_1_False_resize, 1);
  c_33_29_0_False_resize <= resize(c_29, 24);
  c_33_29_0_False_shift <= shift_left(c_33_29_0_False_resize, 0);
  c_33_29_2_False_resize <= resize(c_29, 24);
  c_33_29_2_False_shift <= shift_left(c_33_29_2_False_resize, 2);
  c_33_29_3_False_resize <= resize(c_29, 24);
  c_33_29_3_False_shift <= shift_left(c_33_29_3_False_resize, 3);
  with config_select_2 select c_33_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "00" => c_33 <= c_33_29_1_False_shift;
        when "01" => c_33 <= c_33_29_0_False_shift;
        when "10" => c_33 <= c_33_29_2_False_shift;
        when others => c_33 <= c_33_29_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 34 and associated fundamentals [[99], [50], [24], [6]]
  with config_select_3 select c_34_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_34: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_34_sub_sel,
      x_i => c_33,
      y_i => c_6,
      z_o => c_34_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_34_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 35 and associated fundamentals [[2176], [17], [136], [34]]
  c_35_29_1_False_resize <= resize(c_29, 28);
  c_35_29_1_False_shift <= shift_left(c_35_29_1_False_resize, 1);
  c_35_29_0_False_resize <= resize(c_29, 28);
  c_35_29_0_False_shift <= shift_left(c_35_29_0_False_resize, 0);
  c_35_29_3_False_resize <= resize(c_29, 28);
  c_35_29_3_False_shift <= shift_left(c_35_29_3_False_resize, 3);
  c_35_29_7_False_resize <= resize(c_29, 28);
  c_35_29_7_False_shift <= shift_left(c_35_29_7_False_resize, 7);
  with config_select_2 select c_35_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "00" => c_35 <= c_35_29_1_False_shift;
        when "01" => c_35 <= c_35_29_0_False_shift;
        when "10" => c_35 <= c_35_29_3_False_shift;
        when others => c_35 <= c_35_29_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 36 and associated fundamentals [[127], [9], [133], [39]]
  with config_select_3 select c_36_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_36: entity work.adder_node
    generic map (
      w_x_i => 28,
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
      x_i => c_35,
      y_i => c_22,
      z_o => c_36_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_36_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 37 and associated fundamentals [[31], [-31], [34], [112]]
  c_37_6_0_False_resize <= c_6;
  c_37_6_0_False_shift <= shift_left(c_37_6_0_False_resize, 0);
  c_37_25_0_False_resize <= c_25(22 downto 0);
  c_37_25_0_False_shift <= shift_left(c_37_25_0_False_resize, 0);
  c_37_9_1_False_resize <= c_9(22 downto 0);
  c_37_9_1_False_shift <= shift_left(c_37_9_1_False_resize, 1);
  c_37_6_2_False_resize <= c_6;
  c_37_6_2_False_shift <= shift_left(c_37_6_2_False_resize, 2);
  with config_select_3 select c_37_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "00" => c_37 <= c_37_6_0_False_shift;
        when "01" => c_37 <= c_37_25_0_False_shift;
        when "10" => c_37 <= c_37_9_1_False_shift;
        when others => c_37 <= c_37_6_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 38 and associated fundamentals [[-1], [-124], [-32], [10]]
  c_38_25_0_False_resize <= c_25(22 downto 0);
  c_38_25_0_False_shift <= shift_left(c_38_25_0_False_resize, 0);
  c_38_25_2_False_resize <= c_25(22 downto 0);
  c_38_25_2_False_shift <= shift_left(c_38_25_2_False_resize, 2);
  c_38_3_3_False_resize <= c_3;
  c_38_3_3_False_shift <= shift_left(c_38_3_3_False_resize, 3);
  c_38_22_1_False_resize <= c_22(22 downto 0);
  c_38_22_1_False_shift <= shift_left(c_38_22_1_False_resize, 1);
  with config_select_3 select c_38_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "00" => c_38 <= c_38_25_0_False_shift;
        when "01" => c_38 <= c_38_25_2_False_shift;
        when "10" => c_38 <= c_38_3_3_False_shift;
        when others => c_38 <= c_38_22_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 39 and associated fundamentals [[33], [217], [98], [132]]
  with config_select_4 select c_39_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_39: entity work.adder_node
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
  -- node of type 'mux' in stage 1 with id 40 and associated fundamentals [[16], [1], [1], [8]]
  c_40_0_0_False_resize <= resize(c_0, 20);
  c_40_0_0_False_shift <= shift_left(c_40_0_0_False_resize, 0);
  c_40_0_3_False_resize <= resize(c_0, 20);
  c_40_0_3_False_shift <= shift_left(c_40_0_3_False_resize, 3);
  c_40_0_4_False_resize <= resize(c_0, 20);
  c_40_0_4_False_shift <= shift_left(c_40_0_4_False_resize, 4);
  with config_select_1 select c_40_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "00" => c_40 <= c_40_0_0_False_shift;
        when "01" => c_40 <= c_40_0_3_False_shift;
        when others => c_40 <= c_40_0_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 41 and associated fundamentals [[111], [-9], [-9], [81]]
  with config_select_2 select c_41_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_41: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 21,
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
      sub_i => c_41_sub_sel,
      x_i => c_40,
      y_i => c_29,
      z_o => c_41_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_41_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 42 and associated fundamentals [[173], [57], [215], [137]]
  inst_adder_node_42: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 24,
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
      x_i => c_41,
      y_i => c_6,
      z_o => c_42_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_42_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 43 and associated fundamentals [[124], [132], [252], [192]]
  c_43_6_2_False_resize <= resize(c_6, 24);
  c_43_6_2_False_shift <= shift_left(c_43_6_2_False_resize, 2);
  c_43_25_0_False_resize <= c_25;
  c_43_25_0_False_shift <= shift_left(c_43_25_0_False_resize, 0);
  with config_select_3 select c_43_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "0" => c_43 <= c_43_6_2_False_shift;
        when others => c_43 <= c_43_25_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 44 and associated fundamentals [[31], [33], [17], [129]]
  c_44_9_0_False_resize <= c_9(23 downto 0);
  c_44_9_0_False_shift <= shift_left(c_44_9_0_False_resize, 0);
  c_44_6_0_False_resize <= resize(c_6, 24);
  c_44_6_0_False_shift <= shift_left(c_44_6_0_False_resize, 0);
  with config_select_3 select c_44_sel <= 
    "0" when "10",
    "0" when "11",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "0" => c_44 <= c_44_9_0_False_shift;
        when others => c_44 <= c_44_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 45 and associated fundamentals [[155], [165], [235], [63]]
  with config_select_4 select c_45_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_45: entity work.adder_node
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
      sub_i => c_45_sub_sel,
      x_i => c_43,
      y_i => c_44,
      z_o => c_45_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_45_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 46 and associated fundamentals [[24], [239], [126], [130]]
  c_46_resize <= c_32;
  c_46 <= -shift_left(c_46_resize, 0);
  -- node of type 'mux' in stage 4 with id 47 and associated fundamentals [[198], [57], [215], [39]]
  c_47_42_0_False_resize <= c_42;
  c_47_42_0_False_shift <= shift_left(c_47_42_0_False_resize, 0);
  c_47_36_0_False_resize <= c_36;
  c_47_36_0_False_shift <= shift_left(c_47_36_0_False_resize, 0);
  c_47_34_1_False_resize <= resize(c_34, 24);
  c_47_34_1_False_shift <= shift_left(c_47_34_1_False_resize, 1);
  with config_select_4 select c_47_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "00" => c_47 <= c_47_42_0_False_shift;
        when "01" => c_47 <= c_47_36_0_False_shift;
        when others => c_47 <= c_47_34_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 48 and associated fundamentals [[198], [57], [215], [39]]
  c_48_resize <= c_47;
  c_48 <= shift_left(c_48_resize, 0);
  -- node of type 'output' in stage 4 with id 49 and associated fundamentals [[33], [217], [98], [132]]
  c_49_resize <= c_39;
  c_49 <= shift_left(c_49_resize, 0);
  -- node of type 'output' in stage 4 with id 50 and associated fundamentals [[144], [140], [119], [157]]
  c_50_resize <= c_19;
  c_50 <= shift_left(c_50_resize, 0);
  -- node of type 'output' in stage 4 with id 51 and associated fundamentals [[55], [65], [146], [107]]
  c_51_resize <= c_28;
  c_51 <= shift_left(c_51_resize, 0);
  -- node of type 'mux' in stage 4 with id 52 and associated fundamentals [[254], [9], [192], [6]]
  c_52_34_0_False_resize <= resize(c_34, 24);
  c_52_34_0_False_shift <= shift_left(c_52_34_0_False_resize, 0);
  c_52_34_3_False_resize <= resize(c_34, 24);
  c_52_34_3_False_shift <= shift_left(c_52_34_3_False_resize, 3);
  c_52_36_0_False_resize <= c_36;
  c_52_36_0_False_shift <= shift_left(c_52_36_0_False_resize, 0);
  c_52_36_1_False_resize <= c_36;
  c_52_36_1_False_shift <= shift_left(c_52_36_1_False_resize, 1);
  with config_select_4 select c_52_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_52_sel is
        when "00" => c_52 <= c_52_34_0_False_shift;
        when "01" => c_52 <= c_52_34_3_False_shift;
        when "10" => c_52 <= c_52_36_0_False_shift;
        when others => c_52 <= c_52_36_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 53 and associated fundamentals [[254], [9], [192], [6]]
  c_53_resize <= c_52;
  c_53 <= shift_left(c_53_resize, 0);
  -- node of type 'output' in stage 4 with id 54 and associated fundamentals [[155], [165], [235], [63]]
  c_54_resize <= c_45;
  c_54 <= shift_left(c_54_resize, 0);
  -- node of type 'output' in stage 4 with id 55 and associated fundamentals [[202], [177], [48], [148]]
  c_55_resize <= c_12;
  c_55 <= shift_left(c_55_resize, 0);
  -- node of type 'mux' in stage 4 with id 56 and associated fundamentals [[173], [106], [133], [116]]
  c_56_42_0_False_resize <= c_42;
  c_56_42_0_False_shift <= shift_left(c_56_42_0_False_resize, 0);
  c_56_13_0_False_resize <= c_13;
  c_56_13_0_False_shift <= shift_left(c_56_13_0_False_resize, 0);
  c_56_36_0_False_resize <= c_36;
  c_56_36_0_False_shift <= shift_left(c_56_36_0_False_resize, 0);
  with config_select_4 select c_56_sel <= 
    "00" when "00",
    "01" when "01",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_56_sel is
        when "00" => c_56 <= c_56_42_0_False_shift;
        when "01" => c_56 <= c_56_13_0_False_shift;
        when others => c_56 <= c_56_36_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 57 and associated fundamentals [[173], [106], [133], [116]]
  c_57_resize <= c_56;
  c_57 <= shift_left(c_57_resize, 0);
  -- node of type 'mux' in stage 4 with id 58 and associated fundamentals [[127], [50], [208], [137]]
  c_58_36_0_False_resize <= c_36;
  c_58_36_0_False_shift <= shift_left(c_58_36_0_False_resize, 0);
  c_58_42_0_False_resize <= c_42;
  c_58_42_0_False_shift <= shift_left(c_58_42_0_False_resize, 0);
  c_58_34_0_False_resize <= resize(c_34, 24);
  c_58_34_0_False_shift <= shift_left(c_58_34_0_False_resize, 0);
  c_58_13_0_False_resize <= c_13;
  c_58_13_0_False_shift <= shift_left(c_58_13_0_False_resize, 0);
  with config_select_4 select c_58_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_58_sel is
        when "00" => c_58 <= c_58_36_0_False_shift;
        when "01" => c_58 <= c_58_42_0_False_shift;
        when "10" => c_58 <= c_58_34_0_False_shift;
        when others => c_58 <= c_58_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 59 and associated fundamentals [[127], [50], [208], [137]]
  c_59_resize <= c_58;
  c_59 <= shift_left(c_59_resize, 0);
end architecture;
