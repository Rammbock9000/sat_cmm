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
    y_9: out std_logic_vector(22 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(16 downto 0);
  signal c_1_0_0_False_resize: signed(16 downto 0);
  signal c_1_0_0_False_shift: signed(16 downto 0);
  signal c_1_0_1_False_resize: signed(16 downto 0);
  signal c_1_0_1_False_shift: signed(16 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(17 downto 0);
  signal c_2_0_0_False_resize: signed(17 downto 0);
  signal c_2_0_0_False_shift: signed(17 downto 0);
  signal c_2_0_2_False_resize: signed(17 downto 0);
  signal c_2_0_2_False_shift: signed(17 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(21 downto 0);
  signal c_4_0_5_False_resize: signed(21 downto 0);
  signal c_4_0_5_False_shift: signed(21 downto 0);
  signal c_4_3_1_False_resize: signed(21 downto 0);
  signal c_4_3_1_False_shift: signed(21 downto 0);
  signal c_4_3_0_False_resize: signed(21 downto 0);
  signal c_4_3_0_False_shift: signed(21 downto 0);
  signal c_4_0_4_False_resize: signed(21 downto 0);
  signal c_4_0_4_False_shift: signed(21 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(24 downto 0);
  signal c_5_0_0_False_resize: signed(24 downto 0);
  signal c_5_0_0_False_shift: signed(24 downto 0);
  signal c_5_0_6_False_resize: signed(24 downto 0);
  signal c_5_0_6_False_shift: signed(24 downto 0);
  signal c_5_3_3_False_resize: signed(24 downto 0);
  signal c_5_3_3_False_shift: signed(24 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(23 downto 0);
  signal c_6_i0_resize: signed(23 downto 0);
  signal c_6_i1_resize: signed(23 downto 0);
  signal c_6_i0_shift: signed(23 downto 0);
  signal c_6_i1_shift: signed(23 downto 0);
  signal c_6_arith: signed(23 downto 0);
  signal c_6_oshift: signed(23 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_0_0_False_resize: signed(22 downto 0);
  signal c_7_0_0_False_shift: signed(22 downto 0);
  signal c_7_3_2_False_resize: signed(22 downto 0);
  signal c_7_3_2_False_shift: signed(22 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_8_i0_resize: signed(23 downto 0);
  signal c_8_i1_resize: signed(23 downto 0);
  signal c_8_i0_shift: signed(23 downto 0);
  signal c_8_i1_shift: signed(23 downto 0);
  signal c_8_arith: signed(23 downto 0);
  signal c_8_oshift: signed(23 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(23 downto 0);
  signal c_9_0_0_False_resize: signed(23 downto 0);
  signal c_9_0_0_False_shift: signed(23 downto 0);
  signal c_9_0_3_False_resize: signed(23 downto 0);
  signal c_9_0_3_False_shift: signed(23 downto 0);
  signal c_9_8_2_False_resize: signed(23 downto 0);
  signal c_9_8_2_False_shift: signed(23 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_0_2_False_resize: signed(22 downto 0);
  signal c_10_0_2_False_shift: signed(22 downto 0);
  signal c_10_6_0_False_resize: signed(22 downto 0);
  signal c_10_6_0_False_shift: signed(22 downto 0);
  signal c_10_0_5_False_resize: signed(22 downto 0);
  signal c_10_0_5_False_shift: signed(22 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(22 downto 0);
  signal c_11_i0_resize: signed(22 downto 0);
  signal c_11_i1_resize: signed(22 downto 0);
  signal c_11_i0_shift: signed(22 downto 0);
  signal c_11_i1_shift: signed(22 downto 0);
  signal c_11_arith: signed(22 downto 0);
  signal c_11_oshift: signed(22 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(23 downto 0);
  signal c_12_11_0_False_resize: signed(23 downto 0);
  signal c_12_11_0_False_shift: signed(23 downto 0);
  signal c_12_11_1_False_resize: signed(23 downto 0);
  signal c_12_11_1_False_shift: signed(23 downto 0);
  signal c_12_3_1_False_resize: signed(23 downto 0);
  signal c_12_3_1_False_shift: signed(23 downto 0);
  signal c_12_8_0_False_resize: signed(23 downto 0);
  signal c_12_8_0_False_shift: signed(23 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(22 downto 0);
  signal c_13_0_5_False_resize: signed(22 downto 0);
  signal c_13_0_5_False_shift: signed(22 downto 0);
  signal c_13_3_0_False_resize: signed(22 downto 0);
  signal c_13_3_0_False_shift: signed(22 downto 0);
  signal c_13_11_1_False_resize: signed(22 downto 0);
  signal c_13_11_1_False_shift: signed(22 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_14_i0_resize: signed(22 downto 0);
  signal c_14_i1_resize: signed(22 downto 0);
  signal c_14_i0_shift: signed(22 downto 0);
  signal c_14_i1_shift: signed(22 downto 0);
  signal c_14_arith: signed(22 downto 0);
  signal c_14_oshift: signed(22 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(22 downto 0);
  signal c_15_0_3_False_resize: signed(22 downto 0);
  signal c_15_0_3_False_shift: signed(22 downto 0);
  signal c_15_0_1_False_resize: signed(22 downto 0);
  signal c_15_0_1_False_shift: signed(22 downto 0);
  signal c_15_3_0_False_resize: signed(22 downto 0);
  signal c_15_3_0_False_shift: signed(22 downto 0);
  signal c_15_14_0_False_resize: signed(22 downto 0);
  signal c_15_14_0_False_shift: signed(22 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(21 downto 0);
  signal c_16_0_2_False_resize: signed(21 downto 0);
  signal c_16_0_2_False_shift: signed(21 downto 0);
  signal c_16_0_0_False_resize: signed(21 downto 0);
  signal c_16_0_0_False_shift: signed(21 downto 0);
  signal c_16_3_0_False_resize: signed(21 downto 0);
  signal c_16_3_0_False_shift: signed(21 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_i0_resize: signed(23 downto 0);
  signal c_17_i1_resize: signed(23 downto 0);
  signal c_17_i0_shift: signed(23 downto 0);
  signal c_17_i1_shift: signed(23 downto 0);
  signal c_17_arith: signed(23 downto 0);
  signal c_17_oshift: signed(23 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(24 downto 0);
  signal c_18_11_0_False_resize: signed(24 downto 0);
  signal c_18_11_0_False_shift: signed(24 downto 0);
  signal c_18_6_1_False_resize: signed(24 downto 0);
  signal c_18_6_1_False_shift: signed(24 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_11_4_False_resize: signed(23 downto 0);
  signal c_19_11_4_False_shift: signed(23 downto 0);
  signal c_19_8_0_False_resize: signed(23 downto 0);
  signal c_19_8_0_False_shift: signed(23 downto 0);
  signal c_19_17_0_False_resize: signed(23 downto 0);
  signal c_19_17_0_False_shift: signed(23 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_i0_resize: signed(25 downto 0);
  signal c_20_i1_resize: signed(25 downto 0);
  signal c_20_i0_shift: signed(25 downto 0);
  signal c_20_i1_shift: signed(25 downto 0);
  signal c_20_arith: signed(25 downto 0);
  signal c_20_oshift: signed(25 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(22 downto 0);
  signal c_21_14_0_False_resize: signed(22 downto 0);
  signal c_21_14_0_False_shift: signed(22 downto 0);
  signal c_21_8_0_False_resize: signed(22 downto 0);
  signal c_21_8_0_False_shift: signed(22 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(21 downto 0);
  signal c_22_3_0_False_resize: signed(21 downto 0);
  signal c_22_3_0_False_shift: signed(21 downto 0);
  signal c_22_3_1_False_resize: signed(21 downto 0);
  signal c_22_3_1_False_shift: signed(21 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_i0_resize: signed(23 downto 0);
  signal c_23_i1_resize: signed(23 downto 0);
  signal c_23_i0_shift: signed(23 downto 0);
  signal c_23_i1_shift: signed(23 downto 0);
  signal c_23_arith: signed(23 downto 0);
  signal c_23_oshift: signed(23 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_20_1_False_resize: signed(25 downto 0);
  signal c_24_20_1_False_shift: signed(25 downto 0);
  signal c_24_20_0_False_resize: signed(25 downto 0);
  signal c_24_20_0_False_shift: signed(25 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(24 downto 0);
  signal c_25_3_0_False_resize: signed(24 downto 0);
  signal c_25_3_0_False_shift: signed(24 downto 0);
  signal c_25_0_9_False_resize: signed(24 downto 0);
  signal c_25_0_9_False_shift: signed(24 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_i0_resize: signed(23 downto 0);
  signal c_26_i1_resize: signed(23 downto 0);
  signal c_26_i0_shift: signed(23 downto 0);
  signal c_26_i1_shift: signed(23 downto 0);
  signal c_26_arith: signed(23 downto 0);
  signal c_26_oshift: signed(23 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(22 downto 0);
  signal c_27_23_0_False_resize: signed(22 downto 0);
  signal c_27_23_0_False_shift: signed(22 downto 0);
  signal c_27_14_0_False_resize: signed(22 downto 0);
  signal c_27_14_0_False_shift: signed(22 downto 0);
  signal c_27_26_1_False_resize: signed(22 downto 0);
  signal c_27_26_1_False_shift: signed(22 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(21 downto 0);
  signal c_28_0_0_False_resize: signed(21 downto 0);
  signal c_28_0_0_False_shift: signed(21 downto 0);
  signal c_28_8_0_False_resize: signed(21 downto 0);
  signal c_28_8_0_False_shift: signed(21 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_i0_resize: signed(23 downto 0);
  signal c_29_i1_resize: signed(23 downto 0);
  signal c_29_i0_shift: signed(23 downto 0);
  signal c_29_i1_shift: signed(23 downto 0);
  signal c_29_arith: signed(23 downto 0);
  signal c_29_oshift: signed(23 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(23 downto 0);
  signal c_30_20_0_False_resize: signed(23 downto 0);
  signal c_30_20_0_False_shift: signed(23 downto 0);
  signal c_30_0_7_False_resize: signed(23 downto 0);
  signal c_30_0_7_False_shift: signed(23 downto 0);
  signal c_30_20_2_False_resize: signed(23 downto 0);
  signal c_30_20_2_False_shift: signed(23 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_11_5_False_resize: signed(23 downto 0);
  signal c_31_11_5_False_shift: signed(23 downto 0);
  signal c_31_17_1_False_resize: signed(23 downto 0);
  signal c_31_17_1_False_shift: signed(23 downto 0);
  signal c_31_26_0_False_resize: signed(23 downto 0);
  signal c_31_26_0_False_shift: signed(23 downto 0);
  signal c_31_11_0_False_resize: signed(23 downto 0);
  signal c_31_11_0_False_shift: signed(23 downto 0);
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
  signal c_33_32_0_False_resize: signed(23 downto 0);
  signal c_33_32_0_False_shift: signed(23 downto 0);
  signal c_33_14_1_False_resize: signed(23 downto 0);
  signal c_33_14_1_False_shift: signed(23 downto 0);
  signal c_33_26_1_False_resize: signed(23 downto 0);
  signal c_33_26_1_False_shift: signed(23 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_resize: signed(23 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_17_0_False_resize: signed(23 downto 0);
  signal c_35_17_0_False_shift: signed(23 downto 0);
  signal c_35_32_1_False_resize: signed(23 downto 0);
  signal c_35_32_1_False_shift: signed(23 downto 0);
  signal c_35_3_1_False_resize: signed(23 downto 0);
  signal c_35_3_1_False_shift: signed(23 downto 0);
  signal c_35_8_0_False_resize: signed(23 downto 0);
  signal c_35_8_0_False_shift: signed(23 downto 0);
  signal c_35_sel: std_logic_vector(1 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_resize: signed(23 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_6_1_False_resize: signed(23 downto 0);
  signal c_37_6_1_False_shift: signed(23 downto 0);
  signal c_37_6_0_False_resize: signed(23 downto 0);
  signal c_37_6_0_False_shift: signed(23 downto 0);
  signal c_37_23_1_False_resize: signed(23 downto 0);
  signal c_37_23_1_False_shift: signed(23 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_resize: signed(23 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_29_2_False_resize: signed(23 downto 0);
  signal c_39_29_2_False_shift: signed(23 downto 0);
  signal c_39_11_1_False_resize: signed(23 downto 0);
  signal c_39_11_1_False_shift: signed(23 downto 0);
  signal c_39_20_6_False_resize: signed(23 downto 0);
  signal c_39_20_6_False_shift: signed(23 downto 0);
  signal c_39_26_0_False_resize: signed(23 downto 0);
  signal c_39_26_0_False_shift: signed(23 downto 0);
  signal c_39_sel: std_logic_vector(1 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_resize: signed(23 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_20_1_False_resize: signed(23 downto 0);
  signal c_41_20_1_False_shift: signed(23 downto 0);
  signal c_41_11_0_False_resize: signed(23 downto 0);
  signal c_41_11_0_False_shift: signed(23 downto 0);
  signal c_41_32_2_False_resize: signed(23 downto 0);
  signal c_41_32_2_False_shift: signed(23 downto 0);
  signal c_41_26_1_False_resize: signed(23 downto 0);
  signal c_41_26_1_False_shift: signed(23 downto 0);
  signal c_41_sel: std_logic_vector(1 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_resize: signed(23 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_14_0_False_resize: signed(23 downto 0);
  signal c_43_14_0_False_shift: signed(23 downto 0);
  signal c_43_11_0_False_resize: signed(23 downto 0);
  signal c_43_11_0_False_shift: signed(23 downto 0);
  signal c_43_11_2_False_resize: signed(23 downto 0);
  signal c_43_11_2_False_shift: signed(23 downto 0);
  signal c_43_14_1_False_resize: signed(23 downto 0);
  signal c_43_14_1_False_shift: signed(23 downto 0);
  signal c_43_sel: std_logic_vector(1 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_resize: signed(23 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_29_0_False_resize: signed(23 downto 0);
  signal c_45_29_0_False_shift: signed(23 downto 0);
  signal c_45_17_3_False_resize: signed(23 downto 0);
  signal c_45_17_3_False_shift: signed(23 downto 0);
  signal c_45_23_0_False_resize: signed(23 downto 0);
  signal c_45_23_0_False_shift: signed(23 downto 0);
  signal c_45_sel: std_logic_vector(1 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_resize: signed(23 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_11_2_False_resize: signed(23 downto 0);
  signal c_47_11_2_False_shift: signed(23 downto 0);
  signal c_47_23_1_False_resize: signed(23 downto 0);
  signal c_47_23_1_False_shift: signed(23 downto 0);
  signal c_47_20_1_False_resize: signed(23 downto 0);
  signal c_47_20_1_False_shift: signed(23 downto 0);
  signal c_47_17_0_False_resize: signed(23 downto 0);
  signal c_47_17_0_False_shift: signed(23 downto 0);
  signal c_47_sel: std_logic_vector(1 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_48_resize: signed(23 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_49_32_0_False_resize: signed(23 downto 0);
  signal c_49_32_0_False_shift: signed(23 downto 0);
  signal c_49_29_1_False_resize: signed(23 downto 0);
  signal c_49_29_1_False_shift: signed(23 downto 0);
  signal c_49_8_0_False_resize: signed(23 downto 0);
  signal c_49_8_0_False_shift: signed(23 downto 0);
  signal c_49_sel: std_logic_vector(1 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_50_resize: signed(23 downto 0);
  signal c_51: signed(22 downto 0);
  signal c_51_0_3_False_resize: signed(22 downto 0);
  signal c_51_0_3_False_shift: signed(22 downto 0);
  signal c_51_8_0_False_resize: signed(22 downto 0);
  signal c_51_8_0_False_shift: signed(22 downto 0);
  signal c_51_17_1_False_resize: signed(22 downto 0);
  signal c_51_17_1_False_shift: signed(22 downto 0);
  signal c_51_23_0_False_resize: signed(22 downto 0);
  signal c_51_23_0_False_shift: signed(22 downto 0);
  signal c_51_sel: std_logic_vector(1 downto 0);
  signal c_52: signed(22 downto 0);
  signal c_52_resize: signed(22 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 34
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_34);
    end if;
  end process;
  -- output node 1 with id 36
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_36);
    end if;
  end process;
  -- output node 2 with id 38
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_38);
    end if;
  end process;
  -- output node 3 with id 40
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_40);
    end if;
  end process;
  -- output node 4 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_42);
    end if;
  end process;
  -- output node 5 with id 44
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_44);
    end if;
  end process;
  -- output node 6 with id 46
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_46);
    end if;
  end process;
  -- output node 7 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_48);
    end if;
  end process;
  -- output node 8 with id 50
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_50);
    end if;
  end process;
  -- output node 9 with id 52
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_52);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [2], [1], [2]]
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "0",
    c_1_0_1_False_shift when others;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [1], [4], [1]]
  c_2_0_0_False_resize <= resize(c_0, 18);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_2_False_resize <= resize(c_0, 18);
  c_2_0_2_False_shift <= shift_left(c_2_0_2_False_resize, 2);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "0" when "11",
    "0" when "00",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_0_0_False_shift when "0",
    c_2_0_2_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[17], [33], [12], [33]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 18,
      w_o => 22,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(21 downto 0);
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[16], [33], [24], [32]]
  c_4_0_5_False_resize <= resize(c_0, 22);
  c_4_0_5_False_shift <= shift_left(c_4_0_5_False_resize, 5);
  c_4_3_1_False_resize <= c_3;
  c_4_3_1_False_shift <= shift_left(c_4_3_1_False_resize, 1);
  c_4_3_0_False_resize <= c_3;
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  c_4_0_4_False_resize <= resize(c_0, 22);
  c_4_0_4_False_shift <= shift_left(c_4_0_4_False_resize, 4);
  with config_select_3 select c_4_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  with c_4_sel select c_4 <=
    c_4_0_5_False_shift when "00",
    c_4_3_1_False_shift when "01",
    c_4_3_0_False_shift when "10",
    c_4_0_4_False_shift when others;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[1], [64], [1], [264]]
  c_5_0_0_False_resize <= resize(c_0, 25);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_0_6_False_resize <= resize(c_0, 25);
  c_5_0_6_False_shift <= shift_left(c_5_0_6_False_resize, 6);
  c_5_3_3_False_resize <= resize(c_3, 25);
  c_5_3_3_False_shift <= shift_left(c_5_3_3_False_resize, 3);
  with config_select_3 select c_5_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_5_sel select c_5 <=
    c_5_0_0_False_shift when "00",
    c_5_0_6_False_shift when "01",
    c_5_3_3_False_shift when others;
  -- node of type 'sub' in stage 4 with id 6 and associated fundamentals [[127], [200], [191], [-8]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 25,
      w_o => 24,
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
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[68], [1], [48], [1]]
  c_7_0_0_False_resize <= resize(c_0, 23);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  c_7_3_2_False_resize <= resize(c_3, 23);
  c_7_3_2_False_shift <= shift_left(c_7_3_2_False_resize, 2);
  with config_select_3 select c_7_sel <= 
    "0" when "01",
    "0" when "11",
    "1" when "10",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_0_0_False_shift when "0",
    c_7_3_2_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 8 and associated fundamentals [[59], [199], [143], [-7]]
  with config_select_5 select c_8_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
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
      sub_i => c_8_sub_sel,
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(23 downto 0);
  -- node of type 'mux' in stage 6 with id 9 and associated fundamentals [[236], [8], [1], [1]]
  c_9_0_0_False_resize <= resize(c_0, 24);
  c_9_0_0_False_shift <= shift_left(c_9_0_0_False_resize, 0);
  c_9_0_3_False_resize <= resize(c_0, 24);
  c_9_0_3_False_shift <= shift_left(c_9_0_3_False_resize, 3);
  c_9_8_2_False_resize <= c_8;
  c_9_8_2_False_shift <= shift_left(c_9_8_2_False_resize, 2);
  with config_select_6 select c_9_sel <= 
    "00" when "10",
    "00" when "11",
    "01" when "01",
    "10" when others;
  with c_9_sel select c_9 <=
    c_9_0_0_False_shift when "00",
    c_9_0_3_False_shift when "01",
    c_9_8_2_False_shift when others;
  -- node of type 'mux' in stage 5 with id 10 and associated fundamentals [[127], [32], [32], [4]]
  c_10_0_2_False_resize <= resize(c_0, 23);
  c_10_0_2_False_shift <= shift_left(c_10_0_2_False_resize, 2);
  c_10_6_0_False_resize <= c_6(22 downto 0);
  c_10_6_0_False_shift <= shift_left(c_10_6_0_False_resize, 0);
  c_10_0_5_False_resize <= resize(c_0, 23);
  c_10_0_5_False_shift <= shift_left(c_10_0_5_False_resize, 5);
  with config_select_5 select c_10_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "10" when others;
  with c_10_sel select c_10 <=
    c_10_0_2_False_shift when "00",
    c_10_6_0_False_shift when "01",
    c_10_0_5_False_shift when others;
  -- node of type 'add_sub' in stage 7 with id 11 and associated fundamentals [[109], [40], [33], [5]]
  with config_select_7 select c_11_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
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
      sub_i => c_11_sub_sel,
      x_i => c_9,
      y_i => c_10,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(22 downto 0);
  -- node of type 'mux' in stage 8 with id 12 and associated fundamentals [[109], [80], [143], [66]]
  c_12_11_0_False_resize <= resize(c_11, 24);
  c_12_11_0_False_shift <= shift_left(c_12_11_0_False_resize, 0);
  c_12_11_1_False_resize <= resize(c_11, 24);
  c_12_11_1_False_shift <= shift_left(c_12_11_1_False_resize, 1);
  c_12_3_1_False_resize <= resize(c_3, 24);
  c_12_3_1_False_shift <= shift_left(c_12_3_1_False_resize, 1);
  c_12_8_0_False_resize <= c_8;
  c_12_8_0_False_shift <= shift_left(c_12_8_0_False_resize, 0);
  with config_select_8 select c_12_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  with c_12_sel select c_12 <=
    c_12_11_0_False_shift when "00",
    c_12_11_1_False_shift when "01",
    c_12_3_1_False_shift when "10",
    c_12_8_0_False_shift when others;
  -- node of type 'mux' in stage 8 with id 13 and associated fundamentals [[32], [33], [66], [32]]
  c_13_0_5_False_resize <= resize(c_0, 23);
  c_13_0_5_False_shift <= shift_left(c_13_0_5_False_resize, 5);
  c_13_3_0_False_resize <= resize(c_3, 23);
  c_13_3_0_False_shift <= shift_left(c_13_3_0_False_resize, 0);
  c_13_11_1_False_resize <= c_11;
  c_13_11_1_False_shift <= shift_left(c_13_11_1_False_resize, 1);
  with config_select_8 select c_13_sel <= 
    "00" when "11",
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_13_sel select c_13 <=
    c_13_0_5_False_shift when "00",
    c_13_3_0_False_shift when "01",
    c_13_11_1_False_shift when others;
  -- node of type 'add_sub' in stage 9 with id 14 and associated fundamentals [[77], [47], [77], [98]]
  with config_select_9 select c_14_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
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
      sub_i => c_14_sub_sel,
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  c_14 <= c_14_oshift(22 downto 0);
  -- node of type 'mux' in stage 10 with id 15 and associated fundamentals [[77], [2], [8], [33]]
  c_15_0_3_False_resize <= resize(c_0, 23);
  c_15_0_3_False_shift <= shift_left(c_15_0_3_False_resize, 3);
  c_15_0_1_False_resize <= resize(c_0, 23);
  c_15_0_1_False_shift <= shift_left(c_15_0_1_False_resize, 1);
  c_15_3_0_False_resize <= resize(c_3, 23);
  c_15_3_0_False_shift <= shift_left(c_15_3_0_False_resize, 0);
  c_15_14_0_False_resize <= c_14;
  c_15_14_0_False_shift <= shift_left(c_15_14_0_False_resize, 0);
  with config_select_10 select c_15_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  with c_15_sel select c_15 <=
    c_15_0_3_False_shift when "00",
    c_15_0_1_False_shift when "01",
    c_15_3_0_False_shift when "10",
    c_15_14_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 16 and associated fundamentals [[17], [33], [1], [4]]
  c_16_0_2_False_resize <= resize(c_0, 22);
  c_16_0_2_False_shift <= shift_left(c_16_0_2_False_resize, 2);
  c_16_0_0_False_resize <= resize(c_0, 22);
  c_16_0_0_False_shift <= shift_left(c_16_0_0_False_resize, 0);
  c_16_3_0_False_resize <= c_3;
  c_16_3_0_False_shift <= shift_left(c_16_3_0_False_resize, 0);
  with config_select_3 select c_16_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "10" when others;
  with c_16_sel select c_16 <=
    c_16_0_2_False_shift when "00",
    c_16_0_0_False_shift when "01",
    c_16_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 11 with id 17 and associated fundamentals [[171], [37], [17], [62]]
  with config_select_11 select c_17_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_17_sub_sel,
      x_i => c_15,
      y_i => c_16,
      z_o => c_17_oshift
    );
  c_17 <= c_17_oshift(23 downto 0);
  -- node of type 'mux' in stage 8 with id 18 and associated fundamentals [[109], [40], [382], [5]]
  c_18_11_0_False_resize <= resize(c_11, 25);
  c_18_11_0_False_shift <= shift_left(c_18_11_0_False_resize, 0);
  c_18_6_1_False_resize <= resize(c_6, 25);
  c_18_6_1_False_shift <= shift_left(c_18_6_1_False_resize, 1);
  with config_select_8 select c_18_sel <= 
    "0" when "01",
    "0" when "11",
    "0" when "00",
    "1" when others;
  with c_18_sel select c_18 <=
    c_18_11_0_False_shift when "0",
    c_18_6_1_False_shift when others;
  -- node of type 'mux' in stage 12 with id 19 and associated fundamentals [[59], [37], [143], [80]]
  c_19_11_4_False_resize <= resize(c_11, 24);
  c_19_11_4_False_shift <= shift_left(c_19_11_4_False_resize, 4);
  c_19_8_0_False_resize <= c_8;
  c_19_8_0_False_shift <= shift_left(c_19_8_0_False_resize, 0);
  c_19_17_0_False_resize <= c_17;
  c_19_17_0_False_shift <= shift_left(c_19_17_0_False_resize, 0);
  with config_select_12 select c_19_sel <= 
    "00" when "11",
    "01" when "00",
    "01" when "10",
    "10" when others;
  with c_19_sel select c_19 <=
    c_19_11_4_False_shift when "00",
    c_19_8_0_False_shift when "01",
    c_19_17_0_False_shift when others;
  -- node of type 'add_sub' in stage 13 with id 20 and associated fundamentals [[50], [3], [525], [85]]
  with config_select_13 select c_20_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_20_sub_sel,
      x_i => c_18,
      y_i => c_19,
      z_o => c_20_oshift
    );
  c_20 <= c_20_oshift(25 downto 0);
  -- node of type 'mux' in stage 10 with id 21 and associated fundamentals [[77], [47], [77], [-7]]
  c_21_14_0_False_resize <= c_14;
  c_21_14_0_False_shift <= shift_left(c_21_14_0_False_resize, 0);
  c_21_8_0_False_resize <= c_8(22 downto 0);
  c_21_8_0_False_shift <= shift_left(c_21_8_0_False_resize, 0);
  with config_select_10 select c_21_sel <= 
    "0" when "10",
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_21_sel select c_21 <=
    c_21_14_0_False_shift when "0",
    c_21_8_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 22 and associated fundamentals [[34], [33], [12], [33]]
  c_22_3_0_False_resize <= c_3;
  c_22_3_0_False_shift <= shift_left(c_22_3_0_False_resize, 0);
  c_22_3_1_False_resize <= c_3;
  c_22_3_1_False_shift <= shift_left(c_22_3_1_False_resize, 1);
  with config_select_3 select c_22_sel <= 
    "0" when "11",
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_22_sel select c_22 <=
    c_22_3_0_False_shift when "0",
    c_22_3_1_False_shift when others;
  -- node of type 'add' in stage 11 with id 23 and associated fundamentals [[145], [113], [101], [59]]
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      x_i => c_21,
      y_i => c_22,
      z_o => c_23_oshift
    );
  c_23 <= c_23_oshift(23 downto 0);
  -- node of type 'mux' in stage 14 with id 24 and associated fundamentals [[50], [6], [525], [170]]
  c_24_20_1_False_resize <= c_20;
  c_24_20_1_False_shift <= shift_left(c_24_20_1_False_resize, 1);
  c_24_20_0_False_resize <= c_20;
  c_24_20_0_False_shift <= shift_left(c_24_20_0_False_resize, 0);
  with config_select_14 select c_24_sel <= 
    "0" when "11",
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_24_sel select c_24 <=
    c_24_20_1_False_shift when "0",
    c_24_20_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 25 and associated fundamentals [[17], [33], [512], [33]]
  c_25_3_0_False_resize <= resize(c_3, 25);
  c_25_3_0_False_shift <= shift_left(c_25_3_0_False_resize, 0);
  c_25_0_9_False_resize <= resize(c_0, 25);
  c_25_0_9_False_shift <= shift_left(c_25_0_9_False_resize, 9);
  with config_select_3 select c_25_sel <= 
    "0" when "11",
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_25_sel select c_25 <=
    c_25_3_0_False_shift when "0",
    c_25_0_9_False_shift when others;
  -- node of type 'add_sub' in stage 15 with id 26 and associated fundamentals [[67], [39], [13], [137]]
  with config_select_15 select c_26_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_26_sub_sel,
      x_i => c_24,
      y_i => c_25,
      z_o => c_26_oshift
    );
  c_26 <= c_26_oshift(23 downto 0);
  -- node of type 'mux' in stage 16 with id 27 and associated fundamentals [[77], [113], [26], [98]]
  c_27_23_0_False_resize <= c_23(22 downto 0);
  c_27_23_0_False_shift <= shift_left(c_27_23_0_False_resize, 0);
  c_27_14_0_False_resize <= c_14;
  c_27_14_0_False_shift <= shift_left(c_27_14_0_False_resize, 0);
  c_27_26_1_False_resize <= c_26(22 downto 0);
  c_27_26_1_False_shift <= shift_left(c_27_26_1_False_resize, 1);
  with config_select_16 select c_27_sel <= 
    "00" when "01",
    "01" when "11",
    "01" when "00",
    "10" when others;
  with c_27_sel select c_27 <=
    c_27_23_0_False_shift when "00",
    c_27_14_0_False_shift when "01",
    c_27_26_1_False_shift when others;
  -- node of type 'mux' in stage 6 with id 28 and associated fundamentals [[59], [1], [1], [-7]]
  c_28_0_0_False_resize <= resize(c_0, 22);
  c_28_0_0_False_shift <= shift_left(c_28_0_0_False_resize, 0);
  c_28_8_0_False_resize <= c_8(21 downto 0);
  c_28_8_0_False_shift <= shift_left(c_28_8_0_False_resize, 0);
  with config_select_6 select c_28_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when "11",
    "1" when others;
  with c_28_sel select c_28 <=
    c_28_0_0_False_shift when "0",
    c_28_8_0_False_shift when others;
  -- node of type 'add_sub' in stage 17 with id 29 and associated fundamentals [[95], [225], [53], [189]]
  with config_select_17 select c_29_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_29_sub_sel,
      x_i => c_27,
      y_i => c_28,
      z_o => c_29_oshift
    );
  c_29 <= c_29_oshift(23 downto 0);
  -- node of type 'mux' in stage 14 with id 30 and associated fundamentals [[200], [128], [128], [85]]
  c_30_20_0_False_resize <= c_20(23 downto 0);
  c_30_20_0_False_shift <= shift_left(c_30_20_0_False_resize, 0);
  c_30_0_7_False_resize <= resize(c_0, 24);
  c_30_0_7_False_shift <= shift_left(c_30_0_7_False_resize, 7);
  c_30_20_2_False_resize <= c_20(23 downto 0);
  c_30_20_2_False_shift <= shift_left(c_30_20_2_False_resize, 2);
  with config_select_14 select c_30_sel <= 
    "00" when "11",
    "01" when "01",
    "01" when "10",
    "10" when others;
  with c_30_sel select c_30 <=
    c_30_20_0_False_shift when "00",
    c_30_0_7_False_shift when "01",
    c_30_20_2_False_shift when others;
  -- node of type 'mux' in stage 16 with id 31 and associated fundamentals [[109], [74], [13], [160]]
  c_31_11_5_False_resize <= resize(c_11, 24);
  c_31_11_5_False_shift <= shift_left(c_31_11_5_False_resize, 5);
  c_31_17_1_False_resize <= c_17;
  c_31_17_1_False_shift <= shift_left(c_31_17_1_False_resize, 1);
  c_31_26_0_False_resize <= c_26;
  c_31_26_0_False_shift <= shift_left(c_31_26_0_False_resize, 0);
  c_31_11_0_False_resize <= resize(c_11, 24);
  c_31_11_0_False_shift <= shift_left(c_31_11_0_False_resize, 0);
  with config_select_16 select c_31_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  with c_31_sel select c_31 <=
    c_31_11_5_False_shift when "00",
    c_31_17_1_False_shift when "01",
    c_31_26_0_False_shift when "10",
    c_31_11_0_False_shift when others;
  -- node of type 'add_sub' in stage 17 with id 32 and associated fundamentals [[91], [54], [115], [245]]
  with config_select_17 select c_32_sub_sel <= 
    '1' when "00",
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
  c_32 <= c_32_oshift(23 downto 0);
  -- node of type 'mux' in stage 18 with id 33 and associated fundamentals [[91], [78], [26], [196]]
  c_33_32_0_False_resize <= c_32;
  c_33_32_0_False_shift <= shift_left(c_33_32_0_False_resize, 0);
  c_33_14_1_False_resize <= resize(c_14, 24);
  c_33_14_1_False_shift <= shift_left(c_33_14_1_False_resize, 1);
  c_33_26_1_False_resize <= c_26;
  c_33_26_1_False_shift <= shift_left(c_33_26_1_False_resize, 1);
  with config_select_18 select c_33_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "10" when others;
  with c_33_sel select c_33 <=
    c_33_32_0_False_shift when "00",
    c_33_14_1_False_shift when "01",
    c_33_26_1_False_shift when others;
  -- node of type 'output' in stage 18 with id 34 and associated fundamentals [[91], [78], [26], [196]]
  c_34_resize <= c_33;
  c_34 <= shift_left(c_34_resize, 0);
  -- node of type 'mux' in stage 18 with id 35 and associated fundamentals [[171], [108], [143], [66]]
  c_35_17_0_False_resize <= c_17;
  c_35_17_0_False_shift <= shift_left(c_35_17_0_False_resize, 0);
  c_35_32_1_False_resize <= c_32;
  c_35_32_1_False_shift <= shift_left(c_35_32_1_False_resize, 1);
  c_35_3_1_False_resize <= resize(c_3, 24);
  c_35_3_1_False_shift <= shift_left(c_35_3_1_False_resize, 1);
  c_35_8_0_False_resize <= c_8;
  c_35_8_0_False_shift <= shift_left(c_35_8_0_False_resize, 0);
  with config_select_18 select c_35_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  with c_35_sel select c_35 <=
    c_35_17_0_False_shift when "00",
    c_35_32_1_False_shift when "01",
    c_35_3_1_False_shift when "10",
    c_35_8_0_False_shift when others;
  -- node of type 'output' in stage 18 with id 36 and associated fundamentals [[171], [108], [143], [66]]
  c_36_resize <= c_35;
  c_36 <= shift_left(c_36_resize, 0);
  -- node of type 'mux' in stage 12 with id 37 and associated fundamentals [[254], [200], [191], [118]]
  c_37_6_1_False_resize <= c_6;
  c_37_6_1_False_shift <= shift_left(c_37_6_1_False_resize, 1);
  c_37_6_0_False_resize <= c_6;
  c_37_6_0_False_shift <= shift_left(c_37_6_0_False_resize, 0);
  c_37_23_1_False_resize <= c_23;
  c_37_23_1_False_shift <= shift_left(c_37_23_1_False_resize, 1);
  with config_select_12 select c_37_sel <= 
    "00" when "00",
    "01" when "01",
    "01" when "10",
    "10" when others;
  with c_37_sel select c_37 <=
    c_37_6_1_False_shift when "00",
    c_37_6_0_False_shift when "01",
    c_37_23_1_False_shift when others;
  -- node of type 'output' in stage 12 with id 38 and associated fundamentals [[254], [200], [191], [118]]
  c_38_resize <= c_37;
  c_38 <= shift_left(c_38_resize, 0);
  -- node of type 'mux' in stage 18 with id 39 and associated fundamentals [[218], [192], [212], [137]]
  c_39_29_2_False_resize <= c_29;
  c_39_29_2_False_shift <= shift_left(c_39_29_2_False_resize, 2);
  c_39_11_1_False_resize <= resize(c_11, 24);
  c_39_11_1_False_shift <= shift_left(c_39_11_1_False_resize, 1);
  c_39_20_6_False_resize <= c_20(23 downto 0);
  c_39_20_6_False_shift <= shift_left(c_39_20_6_False_resize, 6);
  c_39_26_0_False_resize <= c_26;
  c_39_26_0_False_shift <= shift_left(c_39_26_0_False_resize, 0);
  with config_select_18 select c_39_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  with c_39_sel select c_39 <=
    c_39_29_2_False_shift when "00",
    c_39_11_1_False_shift when "01",
    c_39_20_6_False_shift when "10",
    c_39_26_0_False_shift when others;
  -- node of type 'output' in stage 18 with id 40 and associated fundamentals [[218], [192], [212], [137]]
  c_40_resize <= c_39;
  c_40 <= shift_left(c_40_resize, 0);
  -- node of type 'mux' in stage 18 with id 41 and associated fundamentals [[134], [216], [33], [170]]
  c_41_20_1_False_resize <= c_20(23 downto 0);
  c_41_20_1_False_shift <= shift_left(c_41_20_1_False_resize, 1);
  c_41_11_0_False_resize <= resize(c_11, 24);
  c_41_11_0_False_shift <= shift_left(c_41_11_0_False_resize, 0);
  c_41_32_2_False_resize <= c_32;
  c_41_32_2_False_shift <= shift_left(c_41_32_2_False_resize, 2);
  c_41_26_1_False_resize <= c_26;
  c_41_26_1_False_shift <= shift_left(c_41_26_1_False_resize, 1);
  with config_select_18 select c_41_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  with c_41_sel select c_41 <=
    c_41_20_1_False_shift when "00",
    c_41_11_0_False_shift when "01",
    c_41_32_2_False_shift when "10",
    c_41_26_1_False_shift when others;
  -- node of type 'output' in stage 18 with id 42 and associated fundamentals [[134], [216], [33], [170]]
  c_42_resize <= c_41;
  c_42 <= shift_left(c_42_resize, 0);
  -- node of type 'mux' in stage 10 with id 43 and associated fundamentals [[77], [160], [154], [5]]
  c_43_14_0_False_resize <= resize(c_14, 24);
  c_43_14_0_False_shift <= shift_left(c_43_14_0_False_resize, 0);
  c_43_11_0_False_resize <= resize(c_11, 24);
  c_43_11_0_False_shift <= shift_left(c_43_11_0_False_resize, 0);
  c_43_11_2_False_resize <= resize(c_11, 24);
  c_43_11_2_False_shift <= shift_left(c_43_11_2_False_resize, 2);
  c_43_14_1_False_resize <= resize(c_14, 24);
  c_43_14_1_False_shift <= shift_left(c_43_14_1_False_resize, 1);
  with config_select_10 select c_43_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "11" when others;
  with c_43_sel select c_43 <=
    c_43_14_0_False_shift when "00",
    c_43_11_0_False_shift when "01",
    c_43_11_2_False_shift when "10",
    c_43_14_1_False_shift when others;
  -- node of type 'output' in stage 10 with id 44 and associated fundamentals [[77], [160], [154], [5]]
  c_44_resize <= c_43;
  c_44 <= shift_left(c_44_resize, 0);
  -- node of type 'mux' in stage 18 with id 45 and associated fundamentals [[145], [225], [136], [189]]
  c_45_29_0_False_resize <= c_29;
  c_45_29_0_False_shift <= shift_left(c_45_29_0_False_resize, 0);
  c_45_17_3_False_resize <= c_17;
  c_45_17_3_False_shift <= shift_left(c_45_17_3_False_resize, 3);
  c_45_23_0_False_resize <= c_23;
  c_45_23_0_False_shift <= shift_left(c_45_23_0_False_resize, 0);
  with config_select_18 select c_45_sel <= 
    "00" when "01",
    "00" when "11",
    "01" when "10",
    "10" when others;
  with c_45_sel select c_45 <=
    c_45_29_0_False_shift when "00",
    c_45_17_3_False_shift when "01",
    c_45_23_0_False_shift when others;
  -- node of type 'output' in stage 18 with id 46 and associated fundamentals [[145], [225], [136], [189]]
  c_46_resize <= c_45;
  c_46 <= shift_left(c_46_resize, 0);
  -- node of type 'mux' in stage 14 with id 47 and associated fundamentals [[100], [37], [202], [20]]
  c_47_11_2_False_resize <= resize(c_11, 24);
  c_47_11_2_False_shift <= shift_left(c_47_11_2_False_resize, 2);
  c_47_23_1_False_resize <= c_23;
  c_47_23_1_False_shift <= shift_left(c_47_23_1_False_resize, 1);
  c_47_20_1_False_resize <= c_20(23 downto 0);
  c_47_20_1_False_shift <= shift_left(c_47_20_1_False_resize, 1);
  c_47_17_0_False_resize <= c_17;
  c_47_17_0_False_shift <= shift_left(c_47_17_0_False_resize, 0);
  with config_select_14 select c_47_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  with c_47_sel select c_47 <=
    c_47_11_2_False_shift when "00",
    c_47_23_1_False_shift when "01",
    c_47_20_1_False_shift when "10",
    c_47_17_0_False_shift when others;
  -- node of type 'output' in stage 14 with id 48 and associated fundamentals [[100], [37], [202], [20]]
  c_48_resize <= c_47;
  c_48 <= shift_left(c_48_resize, 0);
  -- node of type 'mux' in stage 18 with id 49 and associated fundamentals [[190], [199], [115], [245]]
  c_49_32_0_False_resize <= c_32;
  c_49_32_0_False_shift <= shift_left(c_49_32_0_False_resize, 0);
  c_49_29_1_False_resize <= c_29;
  c_49_29_1_False_shift <= shift_left(c_49_29_1_False_resize, 1);
  c_49_8_0_False_resize <= c_8;
  c_49_8_0_False_shift <= shift_left(c_49_8_0_False_resize, 0);
  with config_select_18 select c_49_sel <= 
    "00" when "11",
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_49_sel select c_49 <=
    c_49_32_0_False_shift when "00",
    c_49_29_1_False_shift when "01",
    c_49_8_0_False_shift when others;
  -- node of type 'output' in stage 18 with id 50 and associated fundamentals [[190], [199], [115], [245]]
  c_50_resize <= c_49;
  c_50 <= shift_left(c_50_resize, 0);
  -- node of type 'mux' in stage 12 with id 51 and associated fundamentals [[59], [113], [8], [124]]
  c_51_0_3_False_resize <= resize(c_0, 23);
  c_51_0_3_False_shift <= shift_left(c_51_0_3_False_resize, 3);
  c_51_8_0_False_resize <= c_8(22 downto 0);
  c_51_8_0_False_shift <= shift_left(c_51_8_0_False_resize, 0);
  c_51_17_1_False_resize <= c_17(22 downto 0);
  c_51_17_1_False_shift <= shift_left(c_51_17_1_False_resize, 1);
  c_51_23_0_False_resize <= c_23(22 downto 0);
  c_51_23_0_False_shift <= shift_left(c_51_23_0_False_resize, 0);
  with config_select_12 select c_51_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  with c_51_sel select c_51 <=
    c_51_0_3_False_shift when "00",
    c_51_8_0_False_shift when "01",
    c_51_17_1_False_shift when "10",
    c_51_23_0_False_shift when others;
  -- node of type 'output' in stage 12 with id 52 and associated fundamentals [[59], [113], [8], [124]]
  c_52_resize <= c_51;
  c_52 <= shift_left(c_52_resize, 0);
end architecture;
