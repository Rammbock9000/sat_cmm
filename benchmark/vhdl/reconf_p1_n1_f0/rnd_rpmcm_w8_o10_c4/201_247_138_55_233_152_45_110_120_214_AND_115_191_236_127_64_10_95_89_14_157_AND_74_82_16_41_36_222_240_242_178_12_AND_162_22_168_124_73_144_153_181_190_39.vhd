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
    y_3: out std_logic_vector(22 downto 0);
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
  signal c_1_0_0_False_resize: signed(18 downto 0);
  signal c_1_0_0_False_shift: signed(18 downto 0);
  signal c_1_0_3_False_resize: signed(18 downto 0);
  signal c_1_0_3_False_shift: signed(18 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(19 downto 0);
  signal c_2_0_0_False_resize: signed(19 downto 0);
  signal c_2_0_0_False_shift: signed(19 downto 0);
  signal c_2_0_4_False_resize: signed(19 downto 0);
  signal c_2_0_4_False_shift: signed(19 downto 0);
  signal c_2_0_3_False_resize: signed(19 downto 0);
  signal c_2_0_3_False_shift: signed(19 downto 0);
  signal c_2_0_2_False_resize: signed(19 downto 0);
  signal c_2_0_2_False_shift: signed(19 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(19 downto 0);
  signal c_3_i1_resize: signed(19 downto 0);
  signal c_3_i0_shift: signed(19 downto 0);
  signal c_3_i1_shift: signed(19 downto 0);
  signal c_3_arith: signed(19 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(27 downto 0);
  signal c_4_i0_resize: signed(27 downto 0);
  signal c_4_i1_resize: signed(27 downto 0);
  signal c_4_i0_shift: signed(27 downto 0);
  signal c_4_i1_shift: signed(27 downto 0);
  signal c_4_arith: signed(27 downto 0);
  signal c_4_oshift: signed(27 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(21 downto 0);
  signal c_5_0_0_False_resize: signed(21 downto 0);
  signal c_5_0_0_False_shift: signed(21 downto 0);
  signal c_5_0_4_False_resize: signed(21 downto 0);
  signal c_5_0_4_False_shift: signed(21 downto 0);
  signal c_5_0_3_False_resize: signed(21 downto 0);
  signal c_5_0_3_False_shift: signed(21 downto 0);
  signal c_5_0_6_False_resize: signed(21 downto 0);
  signal c_5_0_6_False_shift: signed(21 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_0_7_False_resize: signed(22 downto 0);
  signal c_6_0_7_False_shift: signed(22 downto 0);
  signal c_6_0_0_False_resize: signed(22 downto 0);
  signal c_6_0_0_False_shift: signed(22 downto 0);
  signal c_6_0_2_False_resize: signed(22 downto 0);
  signal c_6_0_2_False_shift: signed(22 downto 0);
  signal c_6_0_1_False_resize: signed(22 downto 0);
  signal c_6_0_1_False_shift: signed(22 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_i0_resize: signed(23 downto 0);
  signal c_7_i1_resize: signed(23 downto 0);
  signal c_7_i0_shift: signed(23 downto 0);
  signal c_7_i1_shift: signed(23 downto 0);
  signal c_7_arith: signed(23 downto 0);
  signal c_7_oshift: signed(23 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(23 downto 0);
  signal c_8_3_4_False_resize: signed(23 downto 0);
  signal c_8_3_4_False_shift: signed(23 downto 0);
  signal c_8_3_2_False_resize: signed(23 downto 0);
  signal c_8_3_2_False_shift: signed(23 downto 0);
  signal c_8_7_4_False_resize: signed(23 downto 0);
  signal c_8_7_4_False_shift: signed(23 downto 0);
  signal c_8_7_0_False_resize: signed(23 downto 0);
  signal c_8_7_0_False_shift: signed(23 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(25 downto 0);
  signal c_9_3_4_False_resize: signed(25 downto 0);
  signal c_9_3_4_False_shift: signed(25 downto 0);
  signal c_9_3_0_False_resize: signed(25 downto 0);
  signal c_9_3_0_False_shift: signed(25 downto 0);
  signal c_9_7_2_False_resize: signed(25 downto 0);
  signal c_9_7_2_False_shift: signed(25 downto 0);
  signal c_9_7_4_False_resize: signed(25 downto 0);
  signal c_9_7_4_False_shift: signed(25 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(27 downto 0);
  signal c_10_i0_resize: signed(27 downto 0);
  signal c_10_i1_resize: signed(27 downto 0);
  signal c_10_i0_shift: signed(27 downto 0);
  signal c_10_i1_shift: signed(27 downto 0);
  signal c_10_arith: signed(27 downto 0);
  signal c_10_oshift: signed(27 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(27 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_i0_resize: signed(27 downto 0);
  signal c_12_i1_resize: signed(27 downto 0);
  signal c_12_i0_shift: signed(27 downto 0);
  signal c_12_i1_shift: signed(27 downto 0);
  signal c_12_arith: signed(27 downto 0);
  signal c_12_oshift: signed(23 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(20 downto 0);
  signal c_13_0_0_False_resize: signed(20 downto 0);
  signal c_13_0_0_False_shift: signed(20 downto 0);
  signal c_13_0_1_False_resize: signed(20 downto 0);
  signal c_13_0_1_False_shift: signed(20 downto 0);
  signal c_13_0_5_False_resize: signed(20 downto 0);
  signal c_13_0_5_False_shift: signed(20 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(18 downto 0);
  signal c_14_0_0_False_resize: signed(18 downto 0);
  signal c_14_0_0_False_shift: signed(18 downto 0);
  signal c_14_0_3_False_resize: signed(18 downto 0);
  signal c_14_0_3_False_shift: signed(18 downto 0);
  signal c_14_0_2_False_resize: signed(18 downto 0);
  signal c_14_0_2_False_shift: signed(18 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(21 downto 0);
  signal c_15_i0_resize: signed(21 downto 0);
  signal c_15_i1_resize: signed(21 downto 0);
  signal c_15_i0_shift: signed(21 downto 0);
  signal c_15_i1_shift: signed(21 downto 0);
  signal c_15_arith: signed(21 downto 0);
  signal c_15_oshift: signed(21 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(23 downto 0);
  signal c_16_i0_resize: signed(23 downto 0);
  signal c_16_i1_resize: signed(23 downto 0);
  signal c_16_i0_shift: signed(23 downto 0);
  signal c_16_i1_shift: signed(23 downto 0);
  signal c_16_arith: signed(23 downto 0);
  signal c_16_oshift: signed(23 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(20 downto 0);
  signal c_17_0_3_False_resize: signed(20 downto 0);
  signal c_17_0_3_False_shift: signed(20 downto 0);
  signal c_17_0_1_False_resize: signed(20 downto 0);
  signal c_17_0_1_False_shift: signed(20 downto 0);
  signal c_17_0_0_False_resize: signed(20 downto 0);
  signal c_17_0_0_False_shift: signed(20 downto 0);
  signal c_17_0_5_False_resize: signed(20 downto 0);
  signal c_17_0_5_False_shift: signed(20 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(21 downto 0);
  signal c_18_0_0_False_resize: signed(21 downto 0);
  signal c_18_0_0_False_shift: signed(21 downto 0);
  signal c_18_0_1_False_resize: signed(21 downto 0);
  signal c_18_0_1_False_shift: signed(21 downto 0);
  signal c_18_0_6_False_resize: signed(21 downto 0);
  signal c_18_0_6_False_shift: signed(21 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_i0_resize: signed(23 downto 0);
  signal c_19_i1_resize: signed(23 downto 0);
  signal c_19_i0_shift: signed(23 downto 0);
  signal c_19_i1_shift: signed(23 downto 0);
  signal c_19_arith: signed(23 downto 0);
  signal c_19_oshift: signed(23 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_19_3_False_resize: signed(25 downto 0);
  signal c_20_19_3_False_shift: signed(25 downto 0);
  signal c_20_19_2_False_resize: signed(25 downto 0);
  signal c_20_19_2_False_shift: signed(25 downto 0);
  signal c_20_15_4_False_resize: signed(25 downto 0);
  signal c_20_15_4_False_shift: signed(25 downto 0);
  signal c_20_3_0_False_resize: signed(25 downto 0);
  signal c_20_3_0_False_shift: signed(25 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_i0_resize: signed(23 downto 0);
  signal c_21_i1_resize: signed(23 downto 0);
  signal c_21_i0_shift: signed(23 downto 0);
  signal c_21_i1_shift: signed(23 downto 0);
  signal c_21_arith: signed(23 downto 0);
  signal c_21_oshift: signed(23 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(23 downto 0);
  signal c_22_7_0_False_resize: signed(23 downto 0);
  signal c_22_7_0_False_shift: signed(23 downto 0);
  signal c_22_7_4_False_resize: signed(23 downto 0);
  signal c_22_7_4_False_shift: signed(23 downto 0);
  signal c_22_15_3_False_resize: signed(23 downto 0);
  signal c_22_15_3_False_shift: signed(23 downto 0);
  signal c_22_7_1_False_resize: signed(23 downto 0);
  signal c_22_7_1_False_shift: signed(23 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(24 downto 0);
  signal c_23_15_6_False_resize: signed(24 downto 0);
  signal c_23_15_6_False_shift: signed(24 downto 0);
  signal c_23_3_0_False_resize: signed(24 downto 0);
  signal c_23_3_0_False_shift: signed(24 downto 0);
  signal c_23_15_5_False_resize: signed(24 downto 0);
  signal c_23_15_5_False_shift: signed(24 downto 0);
  signal c_23_15_2_False_resize: signed(24 downto 0);
  signal c_23_15_2_False_shift: signed(24 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_i0_resize: signed(23 downto 0);
  signal c_24_i1_resize: signed(23 downto 0);
  signal c_24_i0_shift: signed(23 downto 0);
  signal c_24_i1_shift: signed(23 downto 0);
  signal c_24_arith: signed(23 downto 0);
  signal c_24_oshift: signed(23 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_25_15_1_False_resize: signed(22 downto 0);
  signal c_25_15_1_False_shift: signed(22 downto 0);
  signal c_25_7_0_False_resize: signed(22 downto 0);
  signal c_25_7_0_False_shift: signed(22 downto 0);
  signal c_25_19_3_False_resize: signed(22 downto 0);
  signal c_25_19_3_False_shift: signed(22 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(22 downto 0);
  signal c_26_3_2_False_resize: signed(22 downto 0);
  signal c_26_3_2_False_shift: signed(22 downto 0);
  signal c_26_15_0_False_resize: signed(22 downto 0);
  signal c_26_15_0_False_shift: signed(22 downto 0);
  signal c_26_3_3_False_resize: signed(22 downto 0);
  signal c_26_3_3_False_shift: signed(22 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_i0_resize: signed(23 downto 0);
  signal c_27_i1_resize: signed(23 downto 0);
  signal c_27_i0_shift: signed(23 downto 0);
  signal c_27_i1_shift: signed(23 downto 0);
  signal c_27_arith: signed(23 downto 0);
  signal c_27_oshift: signed(23 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(21 downto 0);
  signal c_28_15_3_False_resize: signed(21 downto 0);
  signal c_28_15_3_False_shift: signed(21 downto 0);
  signal c_28_19_0_False_resize: signed(21 downto 0);
  signal c_28_19_0_False_shift: signed(21 downto 0);
  signal c_28_7_1_False_resize: signed(21 downto 0);
  signal c_28_7_1_False_shift: signed(21 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_i0_resize: signed(23 downto 0);
  signal c_29_i1_resize: signed(23 downto 0);
  signal c_29_i0_shift: signed(23 downto 0);
  signal c_29_i1_shift: signed(23 downto 0);
  signal c_29_arith: signed(23 downto 0);
  signal c_29_oshift: signed(23 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(23 downto 0);
  signal c_30_7_0_False_resize: signed(23 downto 0);
  signal c_30_7_0_False_shift: signed(23 downto 0);
  signal c_30_15_0_False_resize: signed(23 downto 0);
  signal c_30_15_0_False_shift: signed(23 downto 0);
  signal c_30_3_2_False_resize: signed(23 downto 0);
  signal c_30_3_2_False_shift: signed(23 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_15_3_False_resize: signed(23 downto 0);
  signal c_31_15_3_False_shift: signed(23 downto 0);
  signal c_31_3_0_False_resize: signed(23 downto 0);
  signal c_31_3_0_False_shift: signed(23 downto 0);
  signal c_31_19_5_False_resize: signed(23 downto 0);
  signal c_31_19_5_False_shift: signed(23 downto 0);
  signal c_31_15_5_False_resize: signed(23 downto 0);
  signal c_31_15_5_False_shift: signed(23 downto 0);
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
  signal c_33_7_0_False_resize: signed(23 downto 0);
  signal c_33_7_0_False_shift: signed(23 downto 0);
  signal c_33_3_2_False_resize: signed(23 downto 0);
  signal c_33_3_2_False_shift: signed(23 downto 0);
  signal c_33_3_3_False_resize: signed(23 downto 0);
  signal c_33_3_3_False_shift: signed(23 downto 0);
  signal c_33_15_4_False_resize: signed(23 downto 0);
  signal c_33_15_4_False_shift: signed(23 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(22 downto 0);
  signal c_34_3_1_False_resize: signed(22 downto 0);
  signal c_34_3_1_False_shift: signed(22 downto 0);
  signal c_34_7_0_False_resize: signed(22 downto 0);
  signal c_34_7_0_False_shift: signed(22 downto 0);
  signal c_34_15_2_False_resize: signed(22 downto 0);
  signal c_34_15_2_False_shift: signed(22 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(22 downto 0);
  signal c_35_i0_resize: signed(22 downto 0);
  signal c_35_i1_resize: signed(22 downto 0);
  signal c_35_i0_shift: signed(22 downto 0);
  signal c_35_i1_shift: signed(22 downto 0);
  signal c_35_arith: signed(22 downto 0);
  signal c_35_oshift: signed(22 downto 0);
  signal c_35_sub_sel: std_logic;
  signal c_36: signed(22 downto 0);
  signal c_36_19_4_False_resize: signed(22 downto 0);
  signal c_36_19_4_False_shift: signed(22 downto 0);
  signal c_36_3_0_False_resize: signed(22 downto 0);
  signal c_36_3_0_False_shift: signed(22 downto 0);
  signal c_36_15_5_False_resize: signed(22 downto 0);
  signal c_36_15_5_False_shift: signed(22 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_15_0_False_resize: signed(23 downto 0);
  signal c_37_15_0_False_shift: signed(23 downto 0);
  signal c_37_7_6_False_resize: signed(23 downto 0);
  signal c_37_7_6_False_shift: signed(23 downto 0);
  signal c_37_3_0_False_resize: signed(23 downto 0);
  signal c_37_3_0_False_shift: signed(23 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_i0_resize: signed(23 downto 0);
  signal c_38_i1_resize: signed(23 downto 0);
  signal c_38_i0_shift: signed(23 downto 0);
  signal c_38_i1_shift: signed(23 downto 0);
  signal c_38_arith: signed(23 downto 0);
  signal c_38_oshift: signed(23 downto 0);
  signal c_38_sub_sel: std_logic;
  signal c_39: signed(23 downto 0);
  signal c_39_i0_resize: signed(23 downto 0);
  signal c_39_i1_resize: signed(23 downto 0);
  signal c_39_i0_shift: signed(23 downto 0);
  signal c_39_i1_shift: signed(23 downto 0);
  signal c_39_arith: signed(23 downto 0);
  signal c_39_oshift: signed(23 downto 0);
  signal c_39_sub_sel: std_logic;
  signal c_40: signed(23 downto 0);
  signal c_40_19_0_False_resize: signed(23 downto 0);
  signal c_40_19_0_False_shift: signed(23 downto 0);
  signal c_40_3_4_False_resize: signed(23 downto 0);
  signal c_40_3_4_False_shift: signed(23 downto 0);
  signal c_40_3_2_False_resize: signed(23 downto 0);
  signal c_40_3_2_False_shift: signed(23 downto 0);
  signal c_40_19_5_False_resize: signed(23 downto 0);
  signal c_40_19_5_False_shift: signed(23 downto 0);
  signal c_40_sel: std_logic_vector(1 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_i0_resize: signed(23 downto 0);
  signal c_41_i1_resize: signed(23 downto 0);
  signal c_41_i0_shift: signed(23 downto 0);
  signal c_41_i1_shift: signed(23 downto 0);
  signal c_41_arith: signed(23 downto 0);
  signal c_41_oshift: signed(23 downto 0);
  signal c_41_sub_sel: std_logic;
  signal c_42: signed(23 downto 0);
  signal c_42_35_1_False_resize: signed(23 downto 0);
  signal c_42_35_1_False_shift: signed(23 downto 0);
  signal c_42_41_0_False_resize: signed(23 downto 0);
  signal c_42_41_0_False_shift: signed(23 downto 0);
  signal c_42_27_0_False_resize: signed(23 downto 0);
  signal c_42_27_0_False_shift: signed(23 downto 0);
  signal c_42_35_0_False_resize: signed(23 downto 0);
  signal c_42_35_0_False_shift: signed(23 downto 0);
  signal c_42_sel: std_logic_vector(1 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_resize: signed(23 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_29_1_False_resize: signed(23 downto 0);
  signal c_44_29_1_False_shift: signed(23 downto 0);
  signal c_44_24_0_False_resize: signed(23 downto 0);
  signal c_44_24_0_False_shift: signed(23 downto 0);
  signal c_44_32_0_False_resize: signed(23 downto 0);
  signal c_44_32_0_False_shift: signed(23 downto 0);
  signal c_44_38_0_False_resize: signed(23 downto 0);
  signal c_44_38_0_False_shift: signed(23 downto 0);
  signal c_44_sel: std_logic_vector(1 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_resize: signed(23 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_38_2_False_resize: signed(23 downto 0);
  signal c_46_38_2_False_shift: signed(23 downto 0);
  signal c_46_27_0_False_resize: signed(23 downto 0);
  signal c_46_27_0_False_shift: signed(23 downto 0);
  signal c_46_24_0_False_resize: signed(23 downto 0);
  signal c_46_24_0_False_shift: signed(23 downto 0);
  signal c_46_sel: std_logic_vector(1 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_resize: signed(23 downto 0);
  signal c_48: signed(22 downto 0);
  signal c_48_21_0_False_resize: signed(22 downto 0);
  signal c_48_21_0_False_shift: signed(22 downto 0);
  signal c_48_24_0_False_resize: signed(22 downto 0);
  signal c_48_24_0_False_shift: signed(22 downto 0);
  signal c_48_41_0_False_resize: signed(22 downto 0);
  signal c_48_41_0_False_shift: signed(22 downto 0);
  signal c_48_29_0_False_resize: signed(22 downto 0);
  signal c_48_29_0_False_shift: signed(22 downto 0);
  signal c_48_sel: std_logic_vector(1 downto 0);
  signal c_49: signed(22 downto 0);
  signal c_49_resize: signed(22 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_50_29_0_False_resize: signed(23 downto 0);
  signal c_50_29_0_False_shift: signed(23 downto 0);
  signal c_50_38_0_False_resize: signed(23 downto 0);
  signal c_50_38_0_False_shift: signed(23 downto 0);
  signal c_50_21_4_False_resize: signed(23 downto 0);
  signal c_50_21_4_False_shift: signed(23 downto 0);
  signal c_50_35_0_False_resize: signed(23 downto 0);
  signal c_50_35_0_False_shift: signed(23 downto 0);
  signal c_50_sel: std_logic_vector(1 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_51_resize: signed(23 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_52_10_0_False_resize: signed(23 downto 0);
  signal c_52_10_0_False_shift: signed(23 downto 0);
  signal c_52_27_1_False_resize: signed(23 downto 0);
  signal c_52_27_1_False_shift: signed(23 downto 0);
  signal c_52_38_1_False_resize: signed(23 downto 0);
  signal c_52_38_1_False_shift: signed(23 downto 0);
  signal c_52_35_1_False_resize: signed(23 downto 0);
  signal c_52_35_1_False_shift: signed(23 downto 0);
  signal c_52_sel: std_logic_vector(1 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_53_resize: signed(23 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_54_32_0_False_resize: signed(23 downto 0);
  signal c_54_32_0_False_shift: signed(23 downto 0);
  signal c_54_29_0_False_resize: signed(23 downto 0);
  signal c_54_29_0_False_shift: signed(23 downto 0);
  signal c_54_21_3_False_resize: signed(23 downto 0);
  signal c_54_21_3_False_shift: signed(23 downto 0);
  signal c_54_sel: std_logic_vector(1 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_55_resize: signed(23 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_56_41_1_False_resize: signed(23 downto 0);
  signal c_56_41_1_False_shift: signed(23 downto 0);
  signal c_56_41_0_False_resize: signed(23 downto 0);
  signal c_56_41_0_False_shift: signed(23 downto 0);
  signal c_56_24_1_False_resize: signed(23 downto 0);
  signal c_56_24_1_False_shift: signed(23 downto 0);
  signal c_56_32_0_False_resize: signed(23 downto 0);
  signal c_56_32_0_False_shift: signed(23 downto 0);
  signal c_56_sel: std_logic_vector(1 downto 0);
  signal c_57: signed(23 downto 0);
  signal c_57_resize: signed(23 downto 0);
  signal c_58: signed(23 downto 0);
  signal c_58_resize: signed(23 downto 0);
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
  -- output node 0 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_43);
    end if;
  end process;
  -- output node 1 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_45);
    end if;
  end process;
  -- output node 2 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_47);
    end if;
  end process;
  -- output node 3 with id 49
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_49);
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
  -- output node 6 with id 55
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_55);
    end if;
  end process;
  -- output node 7 with id 57
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_57);
    end if;
  end process;
  -- output node 8 with id 58
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_58);
    end if;
  end process;
  -- output node 9 with id 59
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_59);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [8], [1], [8]]
  c_1_0_0_False_resize <= resize(c_0, 19);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_3_False_resize <= resize(c_0, 19);
  c_1_0_3_False_shift <= shift_left(c_1_0_3_False_resize, 3);
  with config_select_1 select c_1_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[8], [1], [16], [4]]
  c_2_0_0_False_resize <= resize(c_0, 20);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_4_False_resize <= resize(c_0, 20);
  c_2_0_4_False_shift <= shift_left(c_2_0_4_False_resize, 4);
  c_2_0_3_False_resize <= resize(c_0, 20);
  c_2_0_3_False_shift <= shift_left(c_2_0_3_False_resize, 3);
  c_2_0_2_False_resize <= resize(c_0, 20);
  c_2_0_2_False_shift <= shift_left(c_2_0_2_False_resize, 2);
  with config_select_1 select c_2_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_0_False_shift;
        when "01" => c_2 <= c_2_0_4_False_shift;
        when "10" => c_2 <= c_2_0_3_False_shift;
        when others => c_2 <= c_2_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[9], [7], [-15], [4]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 20,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 4 and associated fundamentals [[2880], [1344], [-2880], [768]]
  with config_select_3 select c_4_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
      w_o => 28,
      s_x_i => 8,
      s_y_i => 6,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_4_sub_sel,
      x_i => c_3,
      y_i => c_3,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(27 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[8], [1], [16], [64]]
  c_5_0_0_False_resize <= resize(c_0, 22);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_0_4_False_resize <= resize(c_0, 22);
  c_5_0_4_False_shift <= shift_left(c_5_0_4_False_resize, 4);
  c_5_0_3_False_resize <= resize(c_0, 22);
  c_5_0_3_False_shift <= shift_left(c_5_0_3_False_resize, 3);
  c_5_0_6_False_resize <= resize(c_0, 22);
  c_5_0_6_False_shift <= shift_left(c_5_0_6_False_resize, 6);
  with config_select_1 select c_5_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_0_0_False_shift;
        when "01" => c_5 <= c_5_0_4_False_shift;
        when "10" => c_5 <= c_5_0_3_False_shift;
        when others => c_5 <= c_5_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 6 and associated fundamentals [[4], [128], [2], [1]]
  c_6_0_7_False_resize <= resize(c_0, 23);
  c_6_0_7_False_shift <= shift_left(c_6_0_7_False_resize, 7);
  c_6_0_0_False_resize <= resize(c_0, 23);
  c_6_0_0_False_shift <= shift_left(c_6_0_0_False_resize, 0);
  c_6_0_2_False_resize <= resize(c_0, 23);
  c_6_0_2_False_shift <= shift_left(c_6_0_2_False_resize, 2);
  c_6_0_1_False_resize <= resize(c_0, 23);
  c_6_0_1_False_shift <= shift_left(c_6_0_1_False_resize, 1);
  with config_select_1 select c_6_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_0_7_False_shift;
        when "01" => c_6 <= c_6_0_0_False_shift;
        when "10" => c_6 <= c_6_0_2_False_shift;
        when others => c_6 <= c_6_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 7 and associated fundamentals [[4], [129], [14], [65]]
  with config_select_2 select c_7_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_7_sub_sel,
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[4], [112], [224], [16]]
  c_8_3_4_False_resize <= resize(c_3, 24);
  c_8_3_4_False_shift <= shift_left(c_8_3_4_False_resize, 4);
  c_8_3_2_False_resize <= resize(c_3, 24);
  c_8_3_2_False_shift <= shift_left(c_8_3_2_False_resize, 2);
  c_8_7_4_False_resize <= c_7;
  c_8_7_4_False_shift <= shift_left(c_8_7_4_False_resize, 4);
  c_8_7_0_False_resize <= c_7;
  c_8_7_0_False_shift <= shift_left(c_8_7_0_False_resize, 0);
  with config_select_3 select c_8_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "00" => c_8 <= c_8_3_4_False_shift;
        when "01" => c_8 <= c_8_3_2_False_shift;
        when "10" => c_8 <= c_8_7_4_False_shift;
        when others => c_8 <= c_8_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[144], [516], [224], [4]]
  c_9_3_4_False_resize <= resize(c_3, 26);
  c_9_3_4_False_shift <= shift_left(c_9_3_4_False_resize, 4);
  c_9_3_0_False_resize <= resize(c_3, 26);
  c_9_3_0_False_shift <= shift_left(c_9_3_0_False_resize, 0);
  c_9_7_2_False_resize <= resize(c_7, 26);
  c_9_7_2_False_shift <= shift_left(c_9_7_2_False_resize, 2);
  c_9_7_4_False_resize <= resize(c_7, 26);
  c_9_7_4_False_shift <= shift_left(c_9_7_4_False_resize, 4);
  with config_select_3 select c_9_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "00" => c_9 <= c_9_3_4_False_shift;
        when "01" => c_9 <= c_9_3_0_False_shift;
        when "10" => c_9 <= c_9_7_2_False_shift;
        when others => c_9 <= c_9_7_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 10 and associated fundamentals [[-544], [-1168], [2688], [144]]
  with config_select_4 select c_10_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 26,
      w_o => 28,
      s_x_i => 3,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_10_sub_sel,
      x_i => c_8,
      y_i => c_9,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(27 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[2880], [1344], [-2880], [768]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 12 and associated fundamentals [[-214], [-157], [-12], [-39]]
  with config_select_5 select c_12_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 28,
      w_o => 24,
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
  -- node of type 'mux' in stage 1 with id 13 and associated fundamentals [[32], [1], [2], [1]]
  c_13_0_0_False_resize <= resize(c_0, 21);
  c_13_0_0_False_shift <= shift_left(c_13_0_0_False_resize, 0);
  c_13_0_1_False_resize <= resize(c_0, 21);
  c_13_0_1_False_shift <= shift_left(c_13_0_1_False_resize, 1);
  c_13_0_5_False_resize <= resize(c_0, 21);
  c_13_0_5_False_shift <= shift_left(c_13_0_5_False_resize, 5);
  with config_select_1 select c_13_sel <= 
    "00" when "01",
    "00" when "11",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_0_0_False_shift;
        when "01" => c_13 <= c_13_0_1_False_shift;
        when others => c_13 <= c_13_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 14 and associated fundamentals [[1], [4], [1], [8]]
  c_14_0_0_False_resize <= resize(c_0, 19);
  c_14_0_0_False_shift <= shift_left(c_14_0_0_False_resize, 0);
  c_14_0_3_False_resize <= resize(c_0, 19);
  c_14_0_3_False_shift <= shift_left(c_14_0_3_False_resize, 3);
  c_14_0_2_False_resize <= resize(c_0, 19);
  c_14_0_2_False_shift <= shift_left(c_14_0_2_False_resize, 2);
  with config_select_1 select c_14_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_0_0_False_shift;
        when "01" => c_14 <= c_14_0_3_False_shift;
        when others => c_14 <= c_14_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 15 and associated fundamentals [[33], [5], [3], [-7]]
  with config_select_2 select c_15_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 19,
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
  -- node of type 'add_sub' in stage 3 with id 16 and associated fundamentals [[165], [-15], [15], [21]]
  with config_select_3 select c_16_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
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
      sub_i => c_16_sub_sel,
      x_i => c_15,
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 17 and associated fundamentals [[32], [2], [8], [1]]
  c_17_0_3_False_resize <= resize(c_0, 21);
  c_17_0_3_False_shift <= shift_left(c_17_0_3_False_resize, 3);
  c_17_0_1_False_resize <= resize(c_0, 21);
  c_17_0_1_False_shift <= shift_left(c_17_0_1_False_resize, 1);
  c_17_0_0_False_resize <= resize(c_0, 21);
  c_17_0_0_False_shift <= shift_left(c_17_0_0_False_resize, 0);
  c_17_0_5_False_resize <= resize(c_0, 21);
  c_17_0_5_False_shift <= shift_left(c_17_0_5_False_resize, 5);
  with config_select_1 select c_17_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "00" => c_17 <= c_17_0_3_False_shift;
        when "01" => c_17 <= c_17_0_1_False_shift;
        when "10" => c_17 <= c_17_0_0_False_shift;
        when others => c_17 <= c_17_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 18 and associated fundamentals [[1], [1], [64], [2]]
  c_18_0_0_False_resize <= resize(c_0, 22);
  c_18_0_0_False_shift <= shift_left(c_18_0_0_False_resize, 0);
  c_18_0_1_False_resize <= resize(c_0, 22);
  c_18_0_1_False_shift <= shift_left(c_18_0_1_False_resize, 1);
  c_18_0_6_False_resize <= resize(c_0, 22);
  c_18_0_6_False_shift <= shift_left(c_18_0_6_False_resize, 6);
  with config_select_1 select c_18_sel <= 
    "00" when "01",
    "00" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "00" => c_18 <= c_18_0_0_False_shift;
        when "01" => c_18 <= c_18_0_1_False_shift;
        when others => c_18 <= c_18_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 19 and associated fundamentals [[34], [4], [136], [5]]
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 22,
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
  -- node of type 'mux' in stage 3 with id 20 and associated fundamentals [[528], [32], [-15], [20]]
  c_20_19_3_False_resize <= resize(c_19, 26);
  c_20_19_3_False_shift <= shift_left(c_20_19_3_False_resize, 3);
  c_20_19_2_False_resize <= resize(c_19, 26);
  c_20_19_2_False_shift <= shift_left(c_20_19_2_False_resize, 2);
  c_20_15_4_False_resize <= resize(c_15, 26);
  c_20_15_4_False_shift <= shift_left(c_20_15_4_False_resize, 4);
  c_20_3_0_False_resize <= resize(c_3, 26);
  c_20_3_0_False_shift <= shift_left(c_20_3_0_False_resize, 0);
  with config_select_3 select c_20_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_19_3_False_shift;
        when "01" => c_20 <= c_20_19_2_False_shift;
        when "10" => c_20 <= c_20_15_4_False_shift;
        when others => c_20 <= c_20_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 21 and associated fundamentals [[396], [4], [30], [124]]
  with config_select_4 select c_21_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
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
      sub_i => c_21_sub_sel,
      x_i => c_20,
      y_i => c_16,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 22 and associated fundamentals [[64], [129], [28], [-56]]
  c_22_7_0_False_resize <= c_7;
  c_22_7_0_False_shift <= shift_left(c_22_7_0_False_resize, 0);
  c_22_7_4_False_resize <= c_7;
  c_22_7_4_False_shift <= shift_left(c_22_7_4_False_resize, 4);
  c_22_15_3_False_resize <= resize(c_15, 24);
  c_22_15_3_False_shift <= shift_left(c_22_15_3_False_resize, 3);
  c_22_7_1_False_resize <= c_7;
  c_22_7_1_False_shift <= shift_left(c_22_7_1_False_resize, 1);
  with config_select_3 select c_22_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_7_0_False_shift;
        when "01" => c_22 <= c_22_7_4_False_shift;
        when "10" => c_22 <= c_22_15_3_False_shift;
        when others => c_22 <= c_22_7_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 23 and associated fundamentals [[9], [320], [12], [-224]]
  c_23_15_6_False_resize <= resize(c_15, 25);
  c_23_15_6_False_shift <= shift_left(c_23_15_6_False_resize, 6);
  c_23_3_0_False_resize <= resize(c_3, 25);
  c_23_3_0_False_shift <= shift_left(c_23_3_0_False_resize, 0);
  c_23_15_5_False_resize <= resize(c_15, 25);
  c_23_15_5_False_shift <= shift_left(c_23_15_5_False_resize, 5);
  c_23_15_2_False_resize <= resize(c_15, 25);
  c_23_15_2_False_shift <= shift_left(c_23_15_2_False_resize, 2);
  with config_select_3 select c_23_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "00" => c_23 <= c_23_15_6_False_shift;
        when "01" => c_23 <= c_23_3_0_False_shift;
        when "10" => c_23 <= c_23_15_5_False_shift;
        when others => c_23 <= c_23_15_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 24 and associated fundamentals [[55], [-191], [16], [168]]
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 25,
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
  -- node of type 'mux' in stage 3 with id 25 and associated fundamentals [[66], [10], [14], [40]]
  c_25_15_1_False_resize <= resize(c_15, 23);
  c_25_15_1_False_shift <= shift_left(c_25_15_1_False_resize, 1);
  c_25_7_0_False_resize <= c_7(22 downto 0);
  c_25_7_0_False_shift <= shift_left(c_25_7_0_False_resize, 0);
  c_25_19_3_False_resize <= c_19(22 downto 0);
  c_25_19_3_False_shift <= shift_left(c_25_19_3_False_resize, 3);
  with config_select_3 select c_25_sel <= 
    "00" when "01",
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_15_1_False_shift;
        when "01" => c_25 <= c_25_7_0_False_shift;
        when others => c_25 <= c_25_19_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 26 and associated fundamentals [[72], [5], [-60], [-7]]
  c_26_3_2_False_resize <= resize(c_3, 23);
  c_26_3_2_False_shift <= shift_left(c_26_3_2_False_resize, 2);
  c_26_15_0_False_resize <= resize(c_15, 23);
  c_26_15_0_False_shift <= shift_left(c_26_15_0_False_resize, 0);
  c_26_3_3_False_resize <= resize(c_3, 23);
  c_26_3_3_False_shift <= shift_left(c_26_3_3_False_resize, 3);
  with config_select_3 select c_26_sel <= 
    "00" when "10",
    "01" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "00" => c_26 <= c_26_3_2_False_shift;
        when "01" => c_26 <= c_26_15_0_False_shift;
        when others => c_26 <= c_26_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 27 and associated fundamentals [[138], [5], [74], [33]]
  with config_select_4 select c_27_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 23,
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
  -- node of type 'mux' in stage 3 with id 28 and associated fundamentals [[34], [40], [28], [5]]
  c_28_15_3_False_resize <= c_15;
  c_28_15_3_False_shift <= shift_left(c_28_15_3_False_resize, 3);
  c_28_19_0_False_resize <= c_19(21 downto 0);
  c_28_19_0_False_shift <= shift_left(c_28_19_0_False_resize, 0);
  c_28_7_1_False_resize <= c_7(21 downto 0);
  c_28_7_1_False_shift <= shift_left(c_28_7_1_False_resize, 1);
  with config_select_3 select c_28_sel <= 
    "00" when "01",
    "01" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "00" => c_28 <= c_28_15_3_False_shift;
        when "01" => c_28 <= c_28_19_0_False_shift;
        when others => c_28 <= c_28_7_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 29 and associated fundamentals [[233], [95], [41], [-11]]
  with config_select_4 select c_29_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_29: entity work.adder_node
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
      sub_i => c_29_sub_sel,
      x_i => c_28,
      y_i => c_16,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 30 and associated fundamentals [[36], [129], [14], [-7]]
  c_30_7_0_False_resize <= c_7;
  c_30_7_0_False_shift <= shift_left(c_30_7_0_False_resize, 0);
  c_30_15_0_False_resize <= resize(c_15, 24);
  c_30_15_0_False_shift <= shift_left(c_30_15_0_False_resize, 0);
  c_30_3_2_False_resize <= resize(c_3, 24);
  c_30_3_2_False_shift <= shift_left(c_30_3_2_False_resize, 2);
  with config_select_3 select c_30_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "00" => c_30 <= c_30_7_0_False_shift;
        when "01" => c_30 <= c_30_15_0_False_shift;
        when others => c_30 <= c_30_3_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 31 and associated fundamentals [[9], [40], [96], [160]]
  c_31_15_3_False_resize <= resize(c_15, 24);
  c_31_15_3_False_shift <= shift_left(c_31_15_3_False_resize, 3);
  c_31_3_0_False_resize <= resize(c_3, 24);
  c_31_3_0_False_shift <= shift_left(c_31_3_0_False_resize, 0);
  c_31_19_5_False_resize <= c_19;
  c_31_19_5_False_shift <= shift_left(c_31_19_5_False_resize, 5);
  c_31_15_5_False_resize <= resize(c_15, 24);
  c_31_15_5_False_shift <= shift_left(c_31_15_5_False_resize, 5);
  with config_select_3 select c_31_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "00" => c_31 <= c_31_15_3_False_shift;
        when "01" => c_31 <= c_31_3_0_False_shift;
        when "10" => c_31 <= c_31_19_5_False_shift;
        when others => c_31 <= c_31_15_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 32 and associated fundamentals [[45], [89], [-82], [153]]
  with config_select_4 select c_32_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_32: entity work.adder_node
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
  -- node of type 'mux' in stage 3 with id 33 and associated fundamentals [[72], [129], [48], [16]]
  c_33_7_0_False_resize <= c_7;
  c_33_7_0_False_shift <= shift_left(c_33_7_0_False_resize, 0);
  c_33_3_2_False_resize <= resize(c_3, 24);
  c_33_3_2_False_shift <= shift_left(c_33_3_2_False_resize, 2);
  c_33_3_3_False_resize <= resize(c_3, 24);
  c_33_3_3_False_shift <= shift_left(c_33_3_3_False_resize, 3);
  c_33_15_4_False_resize <= resize(c_15, 24);
  c_33_15_4_False_shift <= shift_left(c_33_15_4_False_resize, 4);
  with config_select_3 select c_33_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "00" => c_33 <= c_33_7_0_False_shift;
        when "01" => c_33 <= c_33_3_2_False_shift;
        when "10" => c_33 <= c_33_3_3_False_shift;
        when others => c_33 <= c_33_15_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 34 and associated fundamentals [[4], [14], [12], [65]]
  c_34_3_1_False_resize <= resize(c_3, 23);
  c_34_3_1_False_shift <= shift_left(c_34_3_1_False_resize, 1);
  c_34_7_0_False_resize <= c_7(22 downto 0);
  c_34_7_0_False_shift <= shift_left(c_34_7_0_False_resize, 0);
  c_34_15_2_False_resize <= resize(c_15, 23);
  c_34_15_2_False_shift <= shift_left(c_34_15_2_False_resize, 2);
  with config_select_3 select c_34_sel <= 
    "00" when "01",
    "01" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "00" => c_34 <= c_34_3_1_False_shift;
        when "01" => c_34 <= c_34_7_0_False_shift;
        when others => c_34 <= c_34_15_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 35 and associated fundamentals [[76], [115], [36], [81]]
  with config_select_4 select c_35_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_35: entity work.adder_node
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
      sub_i => c_35_sub_sel,
      x_i => c_33,
      y_i => c_34,
      z_o => c_35_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_35_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 36 and associated fundamentals [[9], [64], [96], [80]]
  c_36_19_4_False_resize <= c_19(22 downto 0);
  c_36_19_4_False_shift <= shift_left(c_36_19_4_False_resize, 4);
  c_36_3_0_False_resize <= resize(c_3, 23);
  c_36_3_0_False_shift <= shift_left(c_36_3_0_False_resize, 0);
  c_36_15_5_False_resize <= resize(c_15, 23);
  c_36_15_5_False_shift <= shift_left(c_36_15_5_False_resize, 5);
  with config_select_3 select c_36_sel <= 
    "00" when "11",
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "00" => c_36 <= c_36_19_4_False_shift;
        when "01" => c_36 <= c_36_3_0_False_shift;
        when others => c_36 <= c_36_15_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 37 and associated fundamentals [[256], [5], [-15], [-7]]
  c_37_15_0_False_resize <= resize(c_15, 24);
  c_37_15_0_False_shift <= shift_left(c_37_15_0_False_resize, 0);
  c_37_7_6_False_resize <= c_7;
  c_37_7_6_False_shift <= shift_left(c_37_7_6_False_resize, 6);
  c_37_3_0_False_resize <= resize(c_3, 24);
  c_37_3_0_False_shift <= shift_left(c_37_3_0_False_resize, 0);
  with config_select_3 select c_37_sel <= 
    "00" when "11",
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "00" => c_37 <= c_37_15_0_False_shift;
        when "01" => c_37 <= c_37_7_6_False_shift;
        when others => c_37 <= c_37_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 38 and associated fundamentals [[-247], [59], [111], [73]]
  with config_select_4 select c_38_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_38: entity work.adder_node
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
      sub_i => c_38_sub_sel,
      x_i => c_36,
      y_i => c_37,
      z_o => c_38_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_38_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 39 and associated fundamentals [[120], [14], [178], [190]]
  with config_select_5 select c_39_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_39: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_39_sub_sel,
      x_i => c_21,
      y_i => c_27,
      z_o => c_39_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_39_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 40 and associated fundamentals [[36], [112], [136], [160]]
  c_40_19_0_False_resize <= c_19;
  c_40_19_0_False_shift <= shift_left(c_40_19_0_False_resize, 0);
  c_40_3_4_False_resize <= resize(c_3, 24);
  c_40_3_4_False_shift <= shift_left(c_40_3_4_False_resize, 4);
  c_40_3_2_False_resize <= resize(c_3, 24);
  c_40_3_2_False_shift <= shift_left(c_40_3_2_False_resize, 2);
  c_40_19_5_False_resize <= c_19;
  c_40_19_5_False_shift <= shift_left(c_40_19_5_False_resize, 5);
  with config_select_3 select c_40_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "00" => c_40 <= c_40_19_0_False_shift;
        when "01" => c_40 <= c_40_3_4_False_shift;
        when "10" => c_40 <= c_40_3_2_False_shift;
        when others => c_40 <= c_40_19_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 41 and associated fundamentals [[201], [127], [121], [181]]
  with config_select_4 select c_41_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_41: entity work.adder_node
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
      sub_i => c_41_sub_sel,
      x_i => c_40,
      y_i => c_16,
      z_o => c_41_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_41_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 42 and associated fundamentals [[201], [115], [74], [162]]
  c_42_35_1_False_resize <= resize(c_35, 24);
  c_42_35_1_False_shift <= shift_left(c_42_35_1_False_resize, 1);
  c_42_41_0_False_resize <= c_41;
  c_42_41_0_False_shift <= shift_left(c_42_41_0_False_resize, 0);
  c_42_27_0_False_resize <= c_27;
  c_42_27_0_False_shift <= shift_left(c_42_27_0_False_resize, 0);
  c_42_35_0_False_resize <= resize(c_35, 24);
  c_42_35_0_False_shift <= shift_left(c_42_35_0_False_resize, 0);
  with config_select_5 select c_42_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "00" => c_42 <= c_42_35_1_False_shift;
        when "01" => c_42 <= c_42_41_0_False_shift;
        when "10" => c_42 <= c_42_27_0_False_shift;
        when others => c_42 <= c_42_35_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 43 and associated fundamentals [[201], [115], [74], [162]]
  c_43_resize <= c_42;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'mux' in stage 5 with id 44 and associated fundamentals [[-247], [-191], [-82], [-22]]
  c_44_29_1_False_resize <= c_29;
  c_44_29_1_False_shift <= shift_left(c_44_29_1_False_resize, 1);
  c_44_24_0_False_resize <= c_24;
  c_44_24_0_False_shift <= shift_left(c_44_24_0_False_resize, 0);
  c_44_32_0_False_resize <= c_32;
  c_44_32_0_False_shift <= shift_left(c_44_32_0_False_resize, 0);
  c_44_38_0_False_resize <= c_38;
  c_44_38_0_False_shift <= shift_left(c_44_38_0_False_resize, 0);
  with config_select_5 select c_44_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "00" => c_44 <= c_44_29_1_False_shift;
        when "01" => c_44 <= c_44_24_0_False_shift;
        when "10" => c_44 <= c_44_32_0_False_shift;
        when others => c_44 <= c_44_38_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 45 and associated fundamentals [[247], [191], [82], [22]]
  c_45_resize <= c_44;
  c_45 <= -shift_left(c_45_resize, 0);
  -- node of type 'mux' in stage 5 with id 46 and associated fundamentals [[138], [236], [16], [168]]
  c_46_38_2_False_resize <= c_38;
  c_46_38_2_False_shift <= shift_left(c_46_38_2_False_resize, 2);
  c_46_27_0_False_resize <= c_27;
  c_46_27_0_False_shift <= shift_left(c_46_27_0_False_resize, 0);
  c_46_24_0_False_resize <= c_24;
  c_46_24_0_False_shift <= shift_left(c_46_24_0_False_resize, 0);
  with config_select_5 select c_46_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "00" => c_46 <= c_46_38_2_False_shift;
        when "01" => c_46 <= c_46_27_0_False_shift;
        when others => c_46 <= c_46_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 47 and associated fundamentals [[138], [236], [16], [168]]
  c_47_resize <= c_46;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'mux' in stage 5 with id 48 and associated fundamentals [[55], [127], [41], [124]]
  c_48_21_0_False_resize <= c_21(22 downto 0);
  c_48_21_0_False_shift <= shift_left(c_48_21_0_False_resize, 0);
  c_48_24_0_False_resize <= c_24(22 downto 0);
  c_48_24_0_False_shift <= shift_left(c_48_24_0_False_resize, 0);
  c_48_41_0_False_resize <= c_41(22 downto 0);
  c_48_41_0_False_shift <= shift_left(c_48_41_0_False_resize, 0);
  c_48_29_0_False_resize <= c_29(22 downto 0);
  c_48_29_0_False_shift <= shift_left(c_48_29_0_False_resize, 0);
  with config_select_5 select c_48_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "00" => c_48 <= c_48_21_0_False_shift;
        when "01" => c_48 <= c_48_24_0_False_shift;
        when "10" => c_48 <= c_48_41_0_False_shift;
        when others => c_48 <= c_48_29_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 49 and associated fundamentals [[55], [127], [41], [124]]
  c_49_resize <= c_48;
  c_49 <= shift_left(c_49_resize, 0);
  -- node of type 'mux' in stage 5 with id 50 and associated fundamentals [[233], [64], [36], [73]]
  c_50_29_0_False_resize <= c_29;
  c_50_29_0_False_shift <= shift_left(c_50_29_0_False_resize, 0);
  c_50_38_0_False_resize <= c_38;
  c_50_38_0_False_shift <= shift_left(c_50_38_0_False_resize, 0);
  c_50_21_4_False_resize <= c_21;
  c_50_21_4_False_shift <= shift_left(c_50_21_4_False_resize, 4);
  c_50_35_0_False_resize <= resize(c_35, 24);
  c_50_35_0_False_shift <= shift_left(c_50_35_0_False_resize, 0);
  with config_select_5 select c_50_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_50_sel is
        when "00" => c_50 <= c_50_29_0_False_shift;
        when "01" => c_50 <= c_50_38_0_False_shift;
        when "10" => c_50 <= c_50_21_4_False_shift;
        when others => c_50 <= c_50_35_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 51 and associated fundamentals [[233], [64], [36], [73]]
  c_51_resize <= c_50;
  c_51 <= shift_left(c_51_resize, 0);
  -- node of type 'mux' in stage 5 with id 52 and associated fundamentals [[152], [10], [222], [144]]
  c_52_10_0_False_resize <= c_10(23 downto 0);
  c_52_10_0_False_shift <= shift_left(c_52_10_0_False_resize, 0);
  c_52_27_1_False_resize <= c_27;
  c_52_27_1_False_shift <= shift_left(c_52_27_1_False_resize, 1);
  c_52_38_1_False_resize <= c_38;
  c_52_38_1_False_shift <= shift_left(c_52_38_1_False_resize, 1);
  c_52_35_1_False_resize <= resize(c_35, 24);
  c_52_35_1_False_shift <= shift_left(c_52_35_1_False_resize, 1);
  with config_select_5 select c_52_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_52_sel is
        when "00" => c_52 <= c_52_10_0_False_shift;
        when "01" => c_52 <= c_52_27_1_False_shift;
        when "10" => c_52 <= c_52_38_1_False_shift;
        when others => c_52 <= c_52_35_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 53 and associated fundamentals [[152], [10], [222], [144]]
  c_53_resize <= c_52;
  c_53 <= shift_left(c_53_resize, 0);
  -- node of type 'mux' in stage 5 with id 54 and associated fundamentals [[45], [95], [240], [153]]
  c_54_32_0_False_resize <= c_32;
  c_54_32_0_False_shift <= shift_left(c_54_32_0_False_resize, 0);
  c_54_29_0_False_resize <= c_29;
  c_54_29_0_False_shift <= shift_left(c_54_29_0_False_resize, 0);
  c_54_21_3_False_resize <= c_21;
  c_54_21_3_False_shift <= shift_left(c_54_21_3_False_resize, 3);
  with config_select_5 select c_54_sel <= 
    "00" when "11",
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_54_sel is
        when "00" => c_54 <= c_54_32_0_False_shift;
        when "01" => c_54 <= c_54_29_0_False_shift;
        when others => c_54 <= c_54_21_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 55 and associated fundamentals [[45], [95], [240], [153]]
  c_55_resize <= c_54;
  c_55 <= shift_left(c_55_resize, 0);
  -- node of type 'mux' in stage 5 with id 56 and associated fundamentals [[110], [89], [242], [181]]
  c_56_41_1_False_resize <= c_41;
  c_56_41_1_False_shift <= shift_left(c_56_41_1_False_resize, 1);
  c_56_41_0_False_resize <= c_41;
  c_56_41_0_False_shift <= shift_left(c_56_41_0_False_resize, 0);
  c_56_24_1_False_resize <= c_24;
  c_56_24_1_False_shift <= shift_left(c_56_24_1_False_resize, 1);
  c_56_32_0_False_resize <= c_32;
  c_56_32_0_False_shift <= shift_left(c_56_32_0_False_resize, 0);
  with config_select_5 select c_56_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_56_sel is
        when "00" => c_56 <= c_56_41_1_False_shift;
        when "01" => c_56 <= c_56_41_0_False_shift;
        when "10" => c_56 <= c_56_24_1_False_shift;
        when others => c_56 <= c_56_32_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 57 and associated fundamentals [[110], [89], [242], [181]]
  c_57_resize <= c_56;
  c_57 <= shift_left(c_57_resize, 0);
  -- node of type 'output' in stage 5 with id 58 and associated fundamentals [[120], [14], [178], [190]]
  c_58_resize <= c_39;
  c_58 <= shift_left(c_58_resize, 0);
  -- node of type 'output' in stage 5 with id 59 and associated fundamentals [[214], [157], [12], [39]]
  c_59_resize <= c_12;
  c_59 <= -shift_left(c_59_resize, 0);
end architecture;
