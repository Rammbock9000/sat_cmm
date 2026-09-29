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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_0_0_False_resize: signed(18 downto 0);
  signal c_1_0_0_False_shift: signed(18 downto 0);
  signal c_1_0_1_False_resize: signed(18 downto 0);
  signal c_1_0_1_False_shift: signed(18 downto 0);
  signal c_1_0_3_False_resize: signed(18 downto 0);
  signal c_1_0_3_False_shift: signed(18 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(20 downto 0);
  signal c_2_i0_resize: signed(20 downto 0);
  signal c_2_i1_resize: signed(20 downto 0);
  signal c_2_i0_shift: signed(20 downto 0);
  signal c_2_i1_shift: signed(20 downto 0);
  signal c_2_arith: signed(20 downto 0);
  signal c_2_oshift: signed(20 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(22 downto 0);
  signal c_3_0_4_False_resize: signed(22 downto 0);
  signal c_3_0_4_False_shift: signed(22 downto 0);
  signal c_3_0_7_False_resize: signed(22 downto 0);
  signal c_3_0_7_False_shift: signed(22 downto 0);
  signal c_3_2_0_False_resize: signed(22 downto 0);
  signal c_3_2_0_False_shift: signed(22 downto 0);
  signal c_3_sel: std_logic_vector(1 downto 0);
  signal c_4: signed(22 downto 0);
  signal c_4_0_0_False_resize: signed(22 downto 0);
  signal c_4_0_0_False_shift: signed(22 downto 0);
  signal c_4_0_7_False_resize: signed(22 downto 0);
  signal c_4_0_7_False_shift: signed(22 downto 0);
  signal c_4_2_0_False_resize: signed(22 downto 0);
  signal c_4_2_0_False_shift: signed(22 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(23 downto 0);
  signal c_5_i0_resize: signed(23 downto 0);
  signal c_5_i1_resize: signed(23 downto 0);
  signal c_5_i0_shift: signed(23 downto 0);
  signal c_5_i1_shift: signed(23 downto 0);
  signal c_5_arith: signed(23 downto 0);
  signal c_5_oshift: signed(23 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(20 downto 0);
  signal c_6_0_1_False_resize: signed(20 downto 0);
  signal c_6_0_1_False_shift: signed(20 downto 0);
  signal c_6_5_0_False_resize: signed(20 downto 0);
  signal c_6_5_0_False_shift: signed(20 downto 0);
  signal c_6_0_0_False_resize: signed(20 downto 0);
  signal c_6_0_0_False_shift: signed(20 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_2_2_False_resize: signed(23 downto 0);
  signal c_7_2_2_False_shift: signed(23 downto 0);
  signal c_7_5_0_False_resize: signed(23 downto 0);
  signal c_7_5_0_False_shift: signed(23 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_8_i0_resize: signed(23 downto 0);
  signal c_8_i1_resize: signed(23 downto 0);
  signal c_8_i0_shift: signed(23 downto 0);
  signal c_8_i1_shift: signed(23 downto 0);
  signal c_8_arith: signed(23 downto 0);
  signal c_8_oshift: signed(23 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_2_0_False_resize: signed(23 downto 0);
  signal c_9_2_0_False_shift: signed(23 downto 0);
  signal c_9_5_3_False_resize: signed(23 downto 0);
  signal c_9_5_3_False_shift: signed(23 downto 0);
  signal c_9_0_5_False_resize: signed(23 downto 0);
  signal c_9_0_5_False_shift: signed(23 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_2_2_False_resize: signed(22 downto 0);
  signal c_10_2_2_False_shift: signed(22 downto 0);
  signal c_10_5_0_False_resize: signed(22 downto 0);
  signal c_10_5_0_False_shift: signed(22 downto 0);
  signal c_10_0_0_False_resize: signed(22 downto 0);
  signal c_10_0_0_False_shift: signed(22 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(24 downto 0);
  signal c_11_i0_resize: signed(24 downto 0);
  signal c_11_i1_resize: signed(24 downto 0);
  signal c_11_i0_shift: signed(24 downto 0);
  signal c_11_i1_shift: signed(24 downto 0);
  signal c_11_arith: signed(24 downto 0);
  signal c_11_oshift: signed(24 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_11_2_False_resize: signed(22 downto 0);
  signal c_12_11_2_False_shift: signed(22 downto 0);
  signal c_12_0_5_False_resize: signed(22 downto 0);
  signal c_12_0_5_False_shift: signed(22 downto 0);
  signal c_12_8_0_False_resize: signed(22 downto 0);
  signal c_12_8_0_False_shift: signed(22 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_5_3_False_resize: signed(23 downto 0);
  signal c_13_5_3_False_shift: signed(23 downto 0);
  signal c_13_8_0_False_resize: signed(23 downto 0);
  signal c_13_8_0_False_shift: signed(23 downto 0);
  signal c_13_5_0_False_resize: signed(23 downto 0);
  signal c_13_5_0_False_shift: signed(23 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(24 downto 0);
  signal c_14_i0_resize: signed(24 downto 0);
  signal c_14_i1_resize: signed(24 downto 0);
  signal c_14_i0_shift: signed(24 downto 0);
  signal c_14_i1_shift: signed(24 downto 0);
  signal c_14_arith: signed(24 downto 0);
  signal c_14_oshift: signed(24 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(24 downto 0);
  signal c_15_5_2_False_resize: signed(24 downto 0);
  signal c_15_5_2_False_shift: signed(24 downto 0);
  signal c_15_5_0_False_resize: signed(24 downto 0);
  signal c_15_5_0_False_shift: signed(24 downto 0);
  signal c_15_11_0_False_resize: signed(24 downto 0);
  signal c_15_11_0_False_shift: signed(24 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(24 downto 0);
  signal c_16_8_0_False_resize: signed(24 downto 0);
  signal c_16_8_0_False_shift: signed(24 downto 0);
  signal c_16_2_5_False_resize: signed(24 downto 0);
  signal c_16_2_5_False_shift: signed(24 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_i0_resize: signed(25 downto 0);
  signal c_17_i1_resize: signed(25 downto 0);
  signal c_17_i0_shift: signed(25 downto 0);
  signal c_17_i1_shift: signed(25 downto 0);
  signal c_17_arith: signed(25 downto 0);
  signal c_17_oshift: signed(25 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_17_0_False_resize: signed(25 downto 0);
  signal c_18_17_0_False_shift: signed(25 downto 0);
  signal c_18_0_3_False_resize: signed(25 downto 0);
  signal c_18_0_3_False_shift: signed(25 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_11_3_False_resize: signed(23 downto 0);
  signal c_19_11_3_False_shift: signed(23 downto 0);
  signal c_19_5_0_False_resize: signed(23 downto 0);
  signal c_19_5_0_False_shift: signed(23 downto 0);
  signal c_19_0_2_False_resize: signed(23 downto 0);
  signal c_19_0_2_False_shift: signed(23 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_i0_resize: signed(25 downto 0);
  signal c_20_i1_resize: signed(25 downto 0);
  signal c_20_i0_shift: signed(25 downto 0);
  signal c_20_i1_shift: signed(25 downto 0);
  signal c_20_arith: signed(25 downto 0);
  signal c_20_oshift: signed(25 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(21 downto 0);
  signal c_21_2_1_False_resize: signed(21 downto 0);
  signal c_21_2_1_False_shift: signed(21 downto 0);
  signal c_21_8_0_False_resize: signed(21 downto 0);
  signal c_21_8_0_False_shift: signed(21 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_2_0_False_resize: signed(23 downto 0);
  signal c_22_2_0_False_shift: signed(23 downto 0);
  signal c_22_0_1_False_resize: signed(23 downto 0);
  signal c_22_0_1_False_shift: signed(23 downto 0);
  signal c_22_17_0_False_resize: signed(23 downto 0);
  signal c_22_17_0_False_shift: signed(23 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_i0_resize: signed(25 downto 0);
  signal c_23_i1_resize: signed(25 downto 0);
  signal c_23_i0_shift: signed(25 downto 0);
  signal c_23_i1_shift: signed(25 downto 0);
  signal c_23_arith: signed(25 downto 0);
  signal c_23_oshift: signed(25 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_14_1_False_resize: signed(25 downto 0);
  signal c_24_14_1_False_shift: signed(25 downto 0);
  signal c_24_5_0_False_resize: signed(25 downto 0);
  signal c_24_5_0_False_shift: signed(25 downto 0);
  signal c_24_8_3_False_resize: signed(25 downto 0);
  signal c_24_8_3_False_shift: signed(25 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(24 downto 0);
  signal c_25_8_1_False_resize: signed(24 downto 0);
  signal c_25_8_1_False_shift: signed(24 downto 0);
  signal c_25_0_0_False_resize: signed(24 downto 0);
  signal c_25_0_0_False_shift: signed(24 downto 0);
  signal c_25_2_0_False_resize: signed(24 downto 0);
  signal c_25_2_0_False_shift: signed(24 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_i0_resize: signed(25 downto 0);
  signal c_26_i1_resize: signed(25 downto 0);
  signal c_26_i0_shift: signed(25 downto 0);
  signal c_26_i1_shift: signed(25 downto 0);
  signal c_26_arith: signed(25 downto 0);
  signal c_26_oshift: signed(25 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(24 downto 0);
  signal c_27_8_2_False_resize: signed(24 downto 0);
  signal c_27_8_2_False_shift: signed(24 downto 0);
  signal c_27_14_0_False_resize: signed(24 downto 0);
  signal c_27_14_0_False_shift: signed(24 downto 0);
  signal c_27_0_4_False_resize: signed(24 downto 0);
  signal c_27_0_4_False_shift: signed(24 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_11_0_False_resize: signed(25 downto 0);
  signal c_28_11_0_False_shift: signed(25 downto 0);
  signal c_28_23_0_False_resize: signed(25 downto 0);
  signal c_28_23_0_False_shift: signed(25 downto 0);
  signal c_28_2_0_False_resize: signed(25 downto 0);
  signal c_28_2_0_False_shift: signed(25 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_i0_resize: signed(25 downto 0);
  signal c_29_i1_resize: signed(25 downto 0);
  signal c_29_i0_shift: signed(25 downto 0);
  signal c_29_i1_shift: signed(25 downto 0);
  signal c_29_arith: signed(25 downto 0);
  signal c_29_oshift: signed(25 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(25 downto 0);
  signal c_30_2_7_False_resize: signed(25 downto 0);
  signal c_30_2_7_False_shift: signed(25 downto 0);
  signal c_30_5_0_False_resize: signed(25 downto 0);
  signal c_30_5_0_False_shift: signed(25 downto 0);
  signal c_30_29_0_False_resize: signed(25 downto 0);
  signal c_30_29_0_False_shift: signed(25 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(24 downto 0);
  signal c_31_2_4_False_resize: signed(24 downto 0);
  signal c_31_2_4_False_shift: signed(24 downto 0);
  signal c_31_2_3_False_resize: signed(24 downto 0);
  signal c_31_2_3_False_shift: signed(24 downto 0);
  signal c_31_2_0_False_resize: signed(24 downto 0);
  signal c_31_2_0_False_shift: signed(24 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_i0_resize: signed(25 downto 0);
  signal c_32_i1_resize: signed(25 downto 0);
  signal c_32_i0_shift: signed(25 downto 0);
  signal c_32_i1_shift: signed(25 downto 0);
  signal c_32_arith: signed(25 downto 0);
  signal c_32_oshift: signed(25 downto 0);
  signal c_32_sub_sel: std_logic;
  signal c_33: signed(25 downto 0);
  signal c_33_0_0_False_resize: signed(25 downto 0);
  signal c_33_0_0_False_shift: signed(25 downto 0);
  signal c_33_20_0_False_resize: signed(25 downto 0);
  signal c_33_20_0_False_shift: signed(25 downto 0);
  signal c_33_8_0_False_resize: signed(25 downto 0);
  signal c_33_8_0_False_shift: signed(25 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_0_4_False_resize: signed(23 downto 0);
  signal c_34_0_4_False_shift: signed(23 downto 0);
  signal c_34_5_0_False_resize: signed(23 downto 0);
  signal c_34_5_0_False_shift: signed(23 downto 0);
  signal c_34_0_8_False_resize: signed(23 downto 0);
  signal c_34_0_8_False_shift: signed(23 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_i0_resize: signed(25 downto 0);
  signal c_35_i1_resize: signed(25 downto 0);
  signal c_35_i0_shift: signed(25 downto 0);
  signal c_35_i1_shift: signed(25 downto 0);
  signal c_35_arith: signed(25 downto 0);
  signal c_35_oshift: signed(25 downto 0);
  signal c_35_sub_sel: std_logic;
  signal c_36: signed(25 downto 0);
  signal c_36_11_0_False_resize: signed(25 downto 0);
  signal c_36_11_0_False_shift: signed(25 downto 0);
  signal c_36_29_0_False_resize: signed(25 downto 0);
  signal c_36_29_0_False_shift: signed(25 downto 0);
  signal c_36_23_0_False_resize: signed(25 downto 0);
  signal c_36_23_0_False_shift: signed(25 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_resize: signed(25 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_38_32_0_False_resize: signed(25 downto 0);
  signal c_38_32_0_False_shift: signed(25 downto 0);
  signal c_38_20_0_False_resize: signed(25 downto 0);
  signal c_38_20_0_False_shift: signed(25 downto 0);
  signal c_38_17_0_False_resize: signed(25 downto 0);
  signal c_38_17_0_False_shift: signed(25 downto 0);
  signal c_38_sel: std_logic_vector(1 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_resize: signed(25 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_40_0_1_False_resize: signed(25 downto 0);
  signal c_40_0_1_False_shift: signed(25 downto 0);
  signal c_40_32_0_False_resize: signed(25 downto 0);
  signal c_40_32_0_False_shift: signed(25 downto 0);
  signal c_40_23_0_False_resize: signed(25 downto 0);
  signal c_40_23_0_False_shift: signed(25 downto 0);
  signal c_40_sel: std_logic_vector(1 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_41_resize: signed(25 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_42_20_0_False_resize: signed(25 downto 0);
  signal c_42_20_0_False_shift: signed(25 downto 0);
  signal c_42_35_0_False_resize: signed(25 downto 0);
  signal c_42_35_0_False_shift: signed(25 downto 0);
  signal c_42_29_0_False_resize: signed(25 downto 0);
  signal c_42_29_0_False_shift: signed(25 downto 0);
  signal c_42_sel: std_logic_vector(1 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_43_resize: signed(25 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_44_5_2_False_resize: signed(25 downto 0);
  signal c_44_5_2_False_shift: signed(25 downto 0);
  signal c_44_26_0_False_resize: signed(25 downto 0);
  signal c_44_26_0_False_shift: signed(25 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_resize: signed(25 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_46_20_0_False_resize: signed(25 downto 0);
  signal c_46_20_0_False_shift: signed(25 downto 0);
  signal c_46_11_1_False_resize: signed(25 downto 0);
  signal c_46_11_1_False_shift: signed(25 downto 0);
  signal c_46_35_1_False_resize: signed(25 downto 0);
  signal c_46_35_1_False_shift: signed(25 downto 0);
  signal c_46_sel: std_logic_vector(1 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_resize: signed(25 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_48_23_0_False_resize: signed(25 downto 0);
  signal c_48_23_0_False_shift: signed(25 downto 0);
  signal c_48_14_1_False_resize: signed(25 downto 0);
  signal c_48_14_1_False_shift: signed(25 downto 0);
  signal c_48_11_0_False_resize: signed(25 downto 0);
  signal c_48_11_0_False_shift: signed(25 downto 0);
  signal c_48_sel: std_logic_vector(1 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_49_resize: signed(25 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_50_35_0_False_resize: signed(25 downto 0);
  signal c_50_35_0_False_shift: signed(25 downto 0);
  signal c_50_14_0_False_resize: signed(25 downto 0);
  signal c_50_14_0_False_shift: signed(25 downto 0);
  signal c_50_8_0_False_resize: signed(25 downto 0);
  signal c_50_8_0_False_shift: signed(25 downto 0);
  signal c_50_sel: std_logic_vector(1 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_51_resize: signed(25 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_52_32_0_False_resize: signed(25 downto 0);
  signal c_52_32_0_False_shift: signed(25 downto 0);
  signal c_52_26_1_False_resize: signed(25 downto 0);
  signal c_52_26_1_False_shift: signed(25 downto 0);
  signal c_52_5_0_False_resize: signed(25 downto 0);
  signal c_52_5_0_False_shift: signed(25 downto 0);
  signal c_52_sel: std_logic_vector(1 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_53_resize: signed(25 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_54_17_0_False_resize: signed(25 downto 0);
  signal c_54_17_0_False_shift: signed(25 downto 0);
  signal c_54_29_0_False_resize: signed(25 downto 0);
  signal c_54_29_0_False_shift: signed(25 downto 0);
  signal c_54_8_2_False_resize: signed(25 downto 0);
  signal c_54_8_2_False_shift: signed(25 downto 0);
  signal c_54_sel: std_logic_vector(1 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_55_resize: signed(25 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 37
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_37);
    end if;
  end process;
  -- output node 1 with id 39
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_39);
    end if;
  end process;
  -- output node 2 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 3 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_43);
    end if;
  end process;
  -- output node 4 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_45);
    end if;
  end process;
  -- output node 5 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_47);
    end if;
  end process;
  -- output node 6 with id 49
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_49);
    end if;
  end process;
  -- output node 7 with id 51
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_51);
    end if;
  end process;
  -- output node 8 with id 53
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_53);
    end if;
  end process;
  -- output node 9 with id 55
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_55);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[8], [1], [2]]
  c_1_0_0_False_resize <= resize(c_0, 19);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 19);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  c_1_0_3_False_resize <= resize(c_0, 19);
  c_1_0_3_False_shift <= shift_left(c_1_0_3_False_resize, 3);
  with config_select_1 select c_1_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "00",
    c_1_0_1_False_shift when "01",
    c_1_0_3_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 2 and associated fundamentals [[31], [3], [9]]
  with config_select_2 select c_2_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
      w_o => 21,
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
      sub_i => c_2_sub_sel,
      x_i => c_1,
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(20 downto 0);
  -- node of type 'mux' in stage 3 with id 3 and associated fundamentals [[31], [16], [128]]
  c_3_0_4_False_resize <= resize(c_0, 23);
  c_3_0_4_False_shift <= shift_left(c_3_0_4_False_resize, 4);
  c_3_0_7_False_resize <= resize(c_0, 23);
  c_3_0_7_False_shift <= shift_left(c_3_0_7_False_resize, 7);
  c_3_2_0_False_resize <= resize(c_2, 23);
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  with config_select_3 select c_3_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_3_sel select c_3 <=
    c_3_0_4_False_shift when "00",
    c_3_0_7_False_shift when "01",
    c_3_2_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[128], [1], [9]]
  c_4_0_0_False_resize <= resize(c_0, 23);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_7_False_resize <= resize(c_0, 23);
  c_4_0_7_False_shift <= shift_left(c_4_0_7_False_resize, 7);
  c_4_2_0_False_resize <= resize(c_2, 23);
  c_4_2_0_False_shift <= shift_left(c_4_2_0_False_resize, 0);
  with config_select_3 select c_4_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_4_sel select c_4 <=
    c_4_0_0_False_shift when "00",
    c_4_0_7_False_shift when "01",
    c_4_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 5 and associated fundamentals [[159], [17], [119]]
  with config_select_4 select c_5_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
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
      sub_i => c_5_sub_sel,
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(23 downto 0);
  -- node of type 'mux' in stage 5 with id 6 and associated fundamentals [[1], [17], [2]]
  c_6_0_1_False_resize <= resize(c_0, 21);
  c_6_0_1_False_shift <= shift_left(c_6_0_1_False_resize, 1);
  c_6_5_0_False_resize <= c_5(20 downto 0);
  c_6_5_0_False_shift <= shift_left(c_6_5_0_False_resize, 0);
  c_6_0_0_False_resize <= resize(c_0, 21);
  c_6_0_0_False_shift <= shift_left(c_6_0_0_False_resize, 0);
  with config_select_5 select c_6_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_6_sel select c_6 <=
    c_6_0_1_False_shift when "00",
    c_6_5_0_False_shift when "01",
    c_6_0_0_False_shift when others;
  -- node of type 'mux' in stage 5 with id 7 and associated fundamentals [[159], [17], [36]]
  c_7_2_2_False_resize <= resize(c_2, 24);
  c_7_2_2_False_shift <= shift_left(c_7_2_2_False_resize, 2);
  c_7_5_0_False_resize <= c_5;
  c_7_5_0_False_shift <= shift_left(c_7_5_0_False_resize, 0);
  with config_select_5 select c_7_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_2_2_False_shift when "0",
    c_7_5_0_False_shift when others;
  -- node of type 'add' in stage 6 with id 8 and associated fundamentals [[167], [153], [52]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 24,
      w_o => 24,
      s_x_i => 3,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(23 downto 0);
  -- node of type 'mux' in stage 5 with id 9 and associated fundamentals [[32], [136], [9]]
  c_9_2_0_False_resize <= resize(c_2, 24);
  c_9_2_0_False_shift <= shift_left(c_9_2_0_False_resize, 0);
  c_9_5_3_False_resize <= c_5;
  c_9_5_3_False_shift <= shift_left(c_9_5_3_False_resize, 3);
  c_9_0_5_False_resize <= resize(c_0, 24);
  c_9_0_5_False_shift <= shift_left(c_9_0_5_False_resize, 5);
  with config_select_5 select c_9_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_9_sel select c_9 <=
    c_9_2_0_False_shift when "00",
    c_9_5_3_False_shift when "01",
    c_9_0_5_False_shift when others;
  -- node of type 'mux' in stage 5 with id 10 and associated fundamentals [[1], [12], [119]]
  c_10_2_2_False_resize <= resize(c_2, 23);
  c_10_2_2_False_shift <= shift_left(c_10_2_2_False_resize, 2);
  c_10_5_0_False_resize <= c_5(22 downto 0);
  c_10_5_0_False_shift <= shift_left(c_10_5_0_False_resize, 0);
  c_10_0_0_False_resize <= resize(c_0, 23);
  c_10_0_0_False_shift <= shift_left(c_10_0_0_False_resize, 0);
  with config_select_5 select c_10_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_10_sel select c_10 <=
    c_10_2_2_False_shift when "00",
    c_10_5_0_False_shift when "01",
    c_10_0_0_False_shift when others;
  -- node of type 'sub' in stage 6 with id 11 and associated fundamentals [[28], [88], [-467]]
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
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
      x_i => c_9,
      y_i => c_10,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(24 downto 0);
  -- node of type 'mux' in stage 7 with id 12 and associated fundamentals [[112], [32], [52]]
  c_12_11_2_False_resize <= c_11(22 downto 0);
  c_12_11_2_False_shift <= shift_left(c_12_11_2_False_resize, 2);
  c_12_0_5_False_resize <= resize(c_0, 23);
  c_12_0_5_False_shift <= shift_left(c_12_0_5_False_resize, 5);
  c_12_8_0_False_resize <= c_8(22 downto 0);
  c_12_8_0_False_shift <= shift_left(c_12_8_0_False_resize, 0);
  with config_select_7 select c_12_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_12_sel select c_12 <=
    c_12_11_2_False_shift when "00",
    c_12_0_5_False_shift when "01",
    c_12_8_0_False_shift when others;
  -- node of type 'mux' in stage 7 with id 13 and associated fundamentals [[167], [136], [119]]
  c_13_5_3_False_resize <= c_5;
  c_13_5_3_False_shift <= shift_left(c_13_5_3_False_resize, 3);
  c_13_8_0_False_resize <= c_8;
  c_13_8_0_False_shift <= shift_left(c_13_8_0_False_resize, 0);
  c_13_5_0_False_resize <= c_5;
  c_13_5_0_False_shift <= shift_left(c_13_5_0_False_resize, 0);
  with config_select_7 select c_13_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_13_sel select c_13 <=
    c_13_5_3_False_shift when "00",
    c_13_8_0_False_shift when "01",
    c_13_5_0_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 14 and associated fundamentals [[281], [264], [327]]
  with config_select_8 select c_14_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
      w_o => 25,
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
      sub_i => c_14_sub_sel,
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  c_14 <= c_14_oshift(24 downto 0);
  -- node of type 'mux' in stage 7 with id 15 and associated fundamentals [[28], [17], [476]]
  c_15_5_2_False_resize <= resize(c_5, 25);
  c_15_5_2_False_shift <= shift_left(c_15_5_2_False_resize, 2);
  c_15_5_0_False_resize <= resize(c_5, 25);
  c_15_5_0_False_shift <= shift_left(c_15_5_0_False_resize, 0);
  c_15_11_0_False_resize <= c_11;
  c_15_11_0_False_shift <= shift_left(c_15_11_0_False_resize, 0);
  with config_select_7 select c_15_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_15_sel select c_15 <=
    c_15_5_2_False_shift when "00",
    c_15_5_0_False_shift when "01",
    c_15_11_0_False_shift when others;
  -- node of type 'mux' in stage 7 with id 16 and associated fundamentals [[167], [96], [288]]
  c_16_8_0_False_resize <= resize(c_8, 25);
  c_16_8_0_False_shift <= shift_left(c_16_8_0_False_resize, 0);
  c_16_2_5_False_resize <= resize(c_2, 25);
  c_16_2_5_False_shift <= shift_left(c_16_2_5_False_resize, 5);
  with config_select_7 select c_16_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_8_0_False_shift when "0",
    c_16_2_5_False_shift when others;
  -- node of type 'add' in stage 8 with id 17 and associated fundamentals [[195], [113], [764]]
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      x_i => c_15,
      y_i => c_16,
      z_o => c_17_oshift
    );
  c_17 <= c_17_oshift(25 downto 0);
  -- node of type 'mux' in stage 9 with id 18 and associated fundamentals [[195], [8], [764]]
  c_18_17_0_False_resize <= c_17;
  c_18_17_0_False_shift <= shift_left(c_18_17_0_False_resize, 0);
  c_18_0_3_False_resize <= resize(c_0, 26);
  c_18_0_3_False_shift <= shift_left(c_18_0_3_False_resize, 3);
  with config_select_9 select c_18_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_18_sel select c_18 <=
    c_18_17_0_False_shift when "0",
    c_18_0_3_False_shift when others;
  -- node of type 'mux' in stage 7 with id 19 and associated fundamentals [[224], [17], [4]]
  c_19_11_3_False_resize <= c_11(23 downto 0);
  c_19_11_3_False_shift <= shift_left(c_19_11_3_False_resize, 3);
  c_19_5_0_False_resize <= c_5;
  c_19_5_0_False_shift <= shift_left(c_19_5_0_False_resize, 0);
  c_19_0_2_False_resize <= resize(c_0, 24);
  c_19_0_2_False_shift <= shift_left(c_19_0_2_False_resize, 2);
  with config_select_7 select c_19_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_19_sel select c_19 <=
    c_19_11_3_False_shift when "00",
    c_19_5_0_False_shift when "01",
    c_19_0_2_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 20 and associated fundamentals [[643], [-26], [772]]
  with config_select_10 select c_20_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_20: entity work.adder_node
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
      sub_i => c_20_sub_sel,
      x_i => c_18,
      y_i => c_19,
      z_o => c_20_oshift
    );
  c_20 <= c_20_oshift(25 downto 0);
  -- node of type 'mux' in stage 7 with id 21 and associated fundamentals [[62], [6], [52]]
  c_21_2_1_False_resize <= resize(c_2, 22);
  c_21_2_1_False_shift <= shift_left(c_21_2_1_False_resize, 1);
  c_21_8_0_False_resize <= c_8(21 downto 0);
  c_21_8_0_False_shift <= shift_left(c_21_8_0_False_resize, 0);
  with config_select_7 select c_21_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_21_sel select c_21 <=
    c_21_2_1_False_shift when "0",
    c_21_8_0_False_shift when others;
  -- node of type 'mux' in stage 9 with id 22 and associated fundamentals [[195], [2], [9]]
  c_22_2_0_False_resize <= resize(c_2, 24);
  c_22_2_0_False_shift <= shift_left(c_22_2_0_False_resize, 0);
  c_22_0_1_False_resize <= resize(c_0, 24);
  c_22_0_1_False_shift <= shift_left(c_22_0_1_False_resize, 1);
  c_22_17_0_False_resize <= c_17(23 downto 0);
  c_22_17_0_False_shift <= shift_left(c_22_17_0_False_resize, 0);
  with config_select_9 select c_22_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_22_sel select c_22 <=
    c_22_2_0_False_shift when "00",
    c_22_0_1_False_shift when "01",
    c_22_17_0_False_shift when others;
  -- node of type 'sub' in stage 10 with id 23 and associated fundamentals [[797], [94], [823]]
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 24,
      w_o => 26,
      s_x_i => 4,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_21,
      y_i => c_22,
      z_o => c_23_oshift
    );
  c_23 <= c_23_oshift(25 downto 0);
  -- node of type 'mux' in stage 9 with id 24 and associated fundamentals [[159], [528], [416]]
  c_24_14_1_False_resize <= resize(c_14, 26);
  c_24_14_1_False_shift <= shift_left(c_24_14_1_False_resize, 1);
  c_24_5_0_False_resize <= resize(c_5, 26);
  c_24_5_0_False_shift <= shift_left(c_24_5_0_False_resize, 0);
  c_24_8_3_False_resize <= resize(c_8, 26);
  c_24_8_3_False_shift <= shift_left(c_24_8_3_False_resize, 3);
  with config_select_9 select c_24_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_24_sel select c_24 <=
    c_24_14_1_False_shift when "00",
    c_24_5_0_False_shift when "01",
    c_24_8_3_False_shift when others;
  -- node of type 'mux' in stage 7 with id 25 and associated fundamentals [[334], [3], [1]]
  c_25_8_1_False_resize <= resize(c_8, 25);
  c_25_8_1_False_shift <= shift_left(c_25_8_1_False_resize, 1);
  c_25_0_0_False_resize <= resize(c_0, 25);
  c_25_0_0_False_shift <= shift_left(c_25_0_0_False_resize, 0);
  c_25_2_0_False_resize <= resize(c_2, 25);
  c_25_2_0_False_shift <= shift_left(c_25_2_0_False_resize, 0);
  with config_select_7 select c_25_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_25_sel select c_25 <=
    c_25_8_1_False_shift when "00",
    c_25_0_0_False_shift when "01",
    c_25_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 26 and associated fundamentals [[493], [525], [415]]
  with config_select_10 select c_26_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_26: entity work.adder_node
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
      sub_i => c_26_sub_sel,
      x_i => c_24,
      y_i => c_25,
      z_o => c_26_oshift
    );
  c_26 <= c_26_oshift(25 downto 0);
  -- node of type 'mux' in stage 9 with id 27 and associated fundamentals [[16], [264], [208]]
  c_27_8_2_False_resize <= resize(c_8, 25);
  c_27_8_2_False_shift <= shift_left(c_27_8_2_False_resize, 2);
  c_27_14_0_False_resize <= c_14;
  c_27_14_0_False_shift <= shift_left(c_27_14_0_False_resize, 0);
  c_27_0_4_False_resize <= resize(c_0, 25);
  c_27_0_4_False_shift <= shift_left(c_27_0_4_False_resize, 4);
  with config_select_9 select c_27_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_27_sel select c_27 <=
    c_27_8_2_False_shift when "00",
    c_27_14_0_False_shift when "01",
    c_27_0_4_False_shift when others;
  -- node of type 'mux' in stage 11 with id 28 and associated fundamentals [[797], [3], [-467]]
  c_28_11_0_False_resize <= resize(c_11, 26);
  c_28_11_0_False_shift <= shift_left(c_28_11_0_False_resize, 0);
  c_28_23_0_False_resize <= c_23;
  c_28_23_0_False_shift <= shift_left(c_28_23_0_False_resize, 0);
  c_28_2_0_False_resize <= resize(c_2, 26);
  c_28_2_0_False_shift <= shift_left(c_28_2_0_False_resize, 0);
  with config_select_11 select c_28_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_28_sel select c_28 <=
    c_28_11_0_False_shift when "00",
    c_28_23_0_False_shift when "01",
    c_28_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 12 with id 29 and associated fundamentals [[813], [261], [675]]
  with config_select_12 select c_29_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_29: entity work.adder_node
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
      sub_i => c_29_sub_sel,
      x_i => c_27,
      y_i => c_28,
      z_o => c_29_oshift
    );
  c_29 <= c_29_oshift(25 downto 0);
  -- node of type 'mux' in stage 13 with id 30 and associated fundamentals [[159], [384], [675]]
  c_30_2_7_False_resize <= resize(c_2, 26);
  c_30_2_7_False_shift <= shift_left(c_30_2_7_False_resize, 7);
  c_30_5_0_False_resize <= resize(c_5, 26);
  c_30_5_0_False_shift <= shift_left(c_30_5_0_False_resize, 0);
  c_30_29_0_False_resize <= c_29;
  c_30_29_0_False_shift <= shift_left(c_30_29_0_False_resize, 0);
  with config_select_13 select c_30_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_30_sel select c_30 <=
    c_30_2_7_False_shift when "00",
    c_30_5_0_False_shift when "01",
    c_30_29_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 31 and associated fundamentals [[496], [3], [72]]
  c_31_2_4_False_resize <= resize(c_2, 25);
  c_31_2_4_False_shift <= shift_left(c_31_2_4_False_resize, 4);
  c_31_2_3_False_resize <= resize(c_2, 25);
  c_31_2_3_False_shift <= shift_left(c_31_2_3_False_resize, 3);
  c_31_2_0_False_resize <= resize(c_2, 25);
  c_31_2_0_False_shift <= shift_left(c_31_2_0_False_resize, 0);
  with config_select_3 select c_31_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_31_sel select c_31 <=
    c_31_2_4_False_shift when "00",
    c_31_2_3_False_shift when "01",
    c_31_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 14 with id 32 and associated fundamentals [[655], [381], [747]]
  with config_select_14 select c_32_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_32: entity work.adder_node
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
      sub_i => c_32_sub_sel,
      x_i => c_30,
      y_i => c_31,
      z_o => c_32_oshift
    );
  c_32 <= c_32_oshift(25 downto 0);
  -- node of type 'mux' in stage 11 with id 33 and associated fundamentals [[167], [1], [772]]
  c_33_0_0_False_resize <= resize(c_0, 26);
  c_33_0_0_False_shift <= shift_left(c_33_0_0_False_resize, 0);
  c_33_20_0_False_resize <= c_20;
  c_33_20_0_False_shift <= shift_left(c_33_20_0_False_resize, 0);
  c_33_8_0_False_resize <= resize(c_8, 26);
  c_33_8_0_False_shift <= shift_left(c_33_8_0_False_resize, 0);
  with config_select_11 select c_33_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_33_sel select c_33 <=
    c_33_0_0_False_shift when "00",
    c_33_20_0_False_shift when "01",
    c_33_8_0_False_shift when others;
  -- node of type 'mux' in stage 5 with id 34 and associated fundamentals [[159], [256], [16]]
  c_34_0_4_False_resize <= resize(c_0, 24);
  c_34_0_4_False_shift <= shift_left(c_34_0_4_False_resize, 4);
  c_34_5_0_False_resize <= c_5;
  c_34_5_0_False_shift <= shift_left(c_34_5_0_False_resize, 0);
  c_34_0_8_False_resize <= resize(c_0, 24);
  c_34_0_8_False_shift <= shift_left(c_34_0_8_False_resize, 8);
  with config_select_5 select c_34_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_34_sel select c_34 <=
    c_34_0_4_False_shift when "00",
    c_34_5_0_False_shift when "01",
    c_34_0_8_False_shift when others;
  -- node of type 'add_sub' in stage 12 with id 35 and associated fundamentals [[-151], [513], [804]]
  with config_select_12 select c_35_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_35: entity work.adder_node
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
      sub_i => c_35_sub_sel,
      x_i => c_33,
      y_i => c_34,
      z_o => c_35_oshift
    );
  c_35 <= c_35_oshift(25 downto 0);
  -- node of type 'mux' in stage 13 with id 36 and associated fundamentals [[813], [88], [823]]
  c_36_11_0_False_resize <= resize(c_11, 26);
  c_36_11_0_False_shift <= shift_left(c_36_11_0_False_resize, 0);
  c_36_29_0_False_resize <= c_29;
  c_36_29_0_False_shift <= shift_left(c_36_29_0_False_resize, 0);
  c_36_23_0_False_resize <= c_23;
  c_36_23_0_False_shift <= shift_left(c_36_23_0_False_resize, 0);
  with config_select_13 select c_36_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_36_sel select c_36 <=
    c_36_11_0_False_shift when "00",
    c_36_29_0_False_shift when "01",
    c_36_23_0_False_shift when others;
  -- node of type 'output' in stage 13 with id 37 and associated fundamentals [[813], [88], [823]]
  c_37_resize <= c_36;
  c_37 <= shift_left(c_37_resize, 0);
  -- node of type 'mux' in stage 15 with id 38 and associated fundamentals [[655], [113], [772]]
  c_38_32_0_False_resize <= c_32;
  c_38_32_0_False_shift <= shift_left(c_38_32_0_False_resize, 0);
  c_38_20_0_False_resize <= c_20;
  c_38_20_0_False_shift <= shift_left(c_38_20_0_False_resize, 0);
  c_38_17_0_False_resize <= c_17;
  c_38_17_0_False_shift <= shift_left(c_38_17_0_False_resize, 0);
  with config_select_15 select c_38_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_38_sel select c_38 <=
    c_38_32_0_False_shift when "00",
    c_38_20_0_False_shift when "01",
    c_38_17_0_False_shift when others;
  -- node of type 'output' in stage 15 with id 39 and associated fundamentals [[655], [113], [772]]
  c_39_resize <= c_38;
  c_39 <= shift_left(c_39_resize, 0);
  -- node of type 'mux' in stage 15 with id 40 and associated fundamentals [[797], [2], [747]]
  c_40_0_1_False_resize <= resize(c_0, 26);
  c_40_0_1_False_shift <= shift_left(c_40_0_1_False_resize, 1);
  c_40_32_0_False_resize <= c_32;
  c_40_32_0_False_shift <= shift_left(c_40_32_0_False_resize, 0);
  c_40_23_0_False_resize <= c_23;
  c_40_23_0_False_shift <= shift_left(c_40_23_0_False_resize, 0);
  with config_select_15 select c_40_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_40_sel select c_40 <=
    c_40_0_1_False_shift when "00",
    c_40_32_0_False_shift when "01",
    c_40_23_0_False_shift when others;
  -- node of type 'output' in stage 15 with id 41 and associated fundamentals [[797], [2], [747]]
  c_41_resize <= c_40;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'mux' in stage 13 with id 42 and associated fundamentals [[643], [513], [675]]
  c_42_20_0_False_resize <= c_20;
  c_42_20_0_False_shift <= shift_left(c_42_20_0_False_resize, 0);
  c_42_35_0_False_resize <= c_35;
  c_42_35_0_False_shift <= shift_left(c_42_35_0_False_resize, 0);
  c_42_29_0_False_resize <= c_29;
  c_42_29_0_False_shift <= shift_left(c_42_29_0_False_resize, 0);
  with config_select_13 select c_42_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_42_sel select c_42 <=
    c_42_20_0_False_shift when "00",
    c_42_35_0_False_shift when "01",
    c_42_29_0_False_shift when others;
  -- node of type 'output' in stage 13 with id 43 and associated fundamentals [[643], [513], [675]]
  c_43_resize <= c_42;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'mux' in stage 11 with id 44 and associated fundamentals [[636], [525], [415]]
  c_44_5_2_False_resize <= resize(c_5, 26);
  c_44_5_2_False_shift <= shift_left(c_44_5_2_False_resize, 2);
  c_44_26_0_False_resize <= c_26;
  c_44_26_0_False_shift <= shift_left(c_44_26_0_False_resize, 0);
  with config_select_11 select c_44_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_44_sel select c_44 <=
    c_44_5_2_False_shift when "0",
    c_44_26_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 45 and associated fundamentals [[636], [525], [415]]
  c_45_resize <= c_44;
  c_45 <= shift_left(c_45_resize, 0);
  -- node of type 'mux' in stage 13 with id 46 and associated fundamentals [[-302], [-26], [-934]]
  c_46_20_0_False_resize <= c_20;
  c_46_20_0_False_shift <= shift_left(c_46_20_0_False_resize, 0);
  c_46_11_1_False_resize <= resize(c_11, 26);
  c_46_11_1_False_shift <= shift_left(c_46_11_1_False_resize, 1);
  c_46_35_1_False_resize <= c_35;
  c_46_35_1_False_shift <= shift_left(c_46_35_1_False_resize, 1);
  with config_select_13 select c_46_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_46_sel select c_46 <=
    c_46_20_0_False_shift when "00",
    c_46_11_1_False_shift when "01",
    c_46_35_1_False_shift when others;
  -- node of type 'output' in stage 13 with id 47 and associated fundamentals [[302], [26], [934]]
  c_47_resize <= c_46;
  c_47 <= -shift_left(c_47_resize, 0);
  -- node of type 'mux' in stage 11 with id 48 and associated fundamentals [[28], [94], [654]]
  c_48_23_0_False_resize <= c_23;
  c_48_23_0_False_shift <= shift_left(c_48_23_0_False_resize, 0);
  c_48_14_1_False_resize <= resize(c_14, 26);
  c_48_14_1_False_shift <= shift_left(c_48_14_1_False_resize, 1);
  c_48_11_0_False_resize <= resize(c_11, 26);
  c_48_11_0_False_shift <= shift_left(c_48_11_0_False_resize, 0);
  with config_select_11 select c_48_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_48_sel select c_48 <=
    c_48_23_0_False_shift when "00",
    c_48_14_1_False_shift when "01",
    c_48_11_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 49 and associated fundamentals [[28], [94], [654]]
  c_49_resize <= c_48;
  c_49 <= shift_left(c_49_resize, 0);
  -- node of type 'mux' in stage 13 with id 50 and associated fundamentals [[281], [153], [804]]
  c_50_35_0_False_resize <= c_35;
  c_50_35_0_False_shift <= shift_left(c_50_35_0_False_resize, 0);
  c_50_14_0_False_resize <= resize(c_14, 26);
  c_50_14_0_False_shift <= shift_left(c_50_14_0_False_resize, 0);
  c_50_8_0_False_resize <= resize(c_8, 26);
  c_50_8_0_False_shift <= shift_left(c_50_8_0_False_resize, 0);
  with config_select_13 select c_50_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_50_sel select c_50 <=
    c_50_35_0_False_shift when "00",
    c_50_14_0_False_shift when "01",
    c_50_8_0_False_shift when others;
  -- node of type 'output' in stage 13 with id 51 and associated fundamentals [[281], [153], [804]]
  c_51_resize <= c_50;
  c_51 <= shift_left(c_51_resize, 0);
  -- node of type 'mux' in stage 15 with id 52 and associated fundamentals [[986], [381], [119]]
  c_52_32_0_False_resize <= c_32;
  c_52_32_0_False_shift <= shift_left(c_52_32_0_False_resize, 0);
  c_52_26_1_False_resize <= c_26;
  c_52_26_1_False_shift <= shift_left(c_52_26_1_False_resize, 1);
  c_52_5_0_False_resize <= resize(c_5, 26);
  c_52_5_0_False_shift <= shift_left(c_52_5_0_False_resize, 0);
  with config_select_15 select c_52_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_52_sel select c_52 <=
    c_52_32_0_False_shift when "00",
    c_52_26_1_False_shift when "01",
    c_52_5_0_False_shift when others;
  -- node of type 'output' in stage 15 with id 53 and associated fundamentals [[986], [381], [119]]
  c_53_resize <= c_52;
  c_53 <= shift_left(c_53_resize, 0);
  -- node of type 'mux' in stage 13 with id 54 and associated fundamentals [[668], [261], [764]]
  c_54_17_0_False_resize <= c_17;
  c_54_17_0_False_shift <= shift_left(c_54_17_0_False_resize, 0);
  c_54_29_0_False_resize <= c_29;
  c_54_29_0_False_shift <= shift_left(c_54_29_0_False_resize, 0);
  c_54_8_2_False_resize <= resize(c_8, 26);
  c_54_8_2_False_shift <= shift_left(c_54_8_2_False_resize, 2);
  with config_select_13 select c_54_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_54_sel select c_54 <=
    c_54_17_0_False_shift when "00",
    c_54_29_0_False_shift when "01",
    c_54_8_2_False_shift when others;
  -- node of type 'output' in stage 13 with id 55 and associated fundamentals [[668], [261], [764]]
  c_55_resize <= c_54;
  c_55 <= shift_left(c_55_resize, 0);
end architecture;
