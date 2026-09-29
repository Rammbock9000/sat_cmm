library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(24 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(25 downto 0);
    y_3: out std_logic_vector(24 downto 0);
    y_4: out std_logic_vector(24 downto 0);
    y_5: out std_logic_vector(24 downto 0);
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
  signal c_1: signed(19 downto 0);
  signal c_1_0_0_False_resize: signed(19 downto 0);
  signal c_1_0_0_False_shift: signed(19 downto 0);
  signal c_1_0_4_False_resize: signed(19 downto 0);
  signal c_1_0_4_False_shift: signed(19 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(22 downto 0);
  signal c_2_i0_resize: signed(22 downto 0);
  signal c_2_i1_resize: signed(22 downto 0);
  signal c_2_i0_shift: signed(22 downto 0);
  signal c_2_i1_shift: signed(22 downto 0);
  signal c_2_arith: signed(22 downto 0);
  signal c_2_oshift: signed(22 downto 0);
  signal c_3: signed(23 downto 0);
  signal c_3_0_0_False_resize: signed(23 downto 0);
  signal c_3_0_0_False_shift: signed(23 downto 0);
  signal c_3_0_8_False_resize: signed(23 downto 0);
  signal c_3_0_8_False_shift: signed(23 downto 0);
  signal c_3_2_5_False_resize: signed(23 downto 0);
  signal c_3_2_5_False_shift: signed(23 downto 0);
  signal c_3_sel: std_logic_vector(1 downto 0);
  signal c_4: signed(24 downto 0);
  signal c_4_i0_resize: signed(24 downto 0);
  signal c_4_i1_resize: signed(24 downto 0);
  signal c_4_i0_shift: signed(24 downto 0);
  signal c_4_i1_shift: signed(24 downto 0);
  signal c_4_arith: signed(24 downto 0);
  signal c_4_oshift: signed(24 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(22 downto 0);
  signal c_5_0_1_False_resize: signed(22 downto 0);
  signal c_5_0_1_False_shift: signed(22 downto 0);
  signal c_5_2_2_False_resize: signed(22 downto 0);
  signal c_5_2_2_False_shift: signed(22 downto 0);
  signal c_5_2_0_False_resize: signed(22 downto 0);
  signal c_5_2_0_False_shift: signed(22 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(20 downto 0);
  signal c_6_0_0_False_resize: signed(20 downto 0);
  signal c_6_0_0_False_shift: signed(20 downto 0);
  signal c_6_0_5_False_resize: signed(20 downto 0);
  signal c_6_0_5_False_shift: signed(20 downto 0);
  signal c_6_0_3_False_resize: signed(20 downto 0);
  signal c_6_0_3_False_shift: signed(20 downto 0);
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
  signal c_8_4_3_False_resize: signed(25 downto 0);
  signal c_8_4_3_False_shift: signed(25 downto 0);
  signal c_8_7_0_False_resize: signed(25 downto 0);
  signal c_8_7_0_False_shift: signed(25 downto 0);
  signal c_8_7_2_False_resize: signed(25 downto 0);
  signal c_8_7_2_False_shift: signed(25 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_0_0_False_resize: signed(23 downto 0);
  signal c_9_0_0_False_shift: signed(23 downto 0);
  signal c_9_0_8_False_resize: signed(23 downto 0);
  signal c_9_0_8_False_shift: signed(23 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(25 downto 0);
  signal c_10_i0_resize: signed(25 downto 0);
  signal c_10_i1_resize: signed(25 downto 0);
  signal c_10_i0_shift: signed(25 downto 0);
  signal c_10_i1_shift: signed(25 downto 0);
  signal c_10_arith: signed(25 downto 0);
  signal c_10_oshift: signed(25 downto 0);
  signal c_11: signed(24 downto 0);
  signal c_11_4_0_False_resize: signed(24 downto 0);
  signal c_11_4_0_False_shift: signed(24 downto 0);
  signal c_11_7_1_False_resize: signed(24 downto 0);
  signal c_11_7_1_False_shift: signed(24 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(24 downto 0);
  signal c_12_0_0_False_resize: signed(24 downto 0);
  signal c_12_0_0_False_shift: signed(24 downto 0);
  signal c_12_2_6_False_resize: signed(24 downto 0);
  signal c_12_2_6_False_shift: signed(24 downto 0);
  signal c_12_2_0_False_resize: signed(24 downto 0);
  signal c_12_2_0_False_shift: signed(24 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(23 downto 0);
  signal c_14_0_0_False_resize: signed(23 downto 0);
  signal c_14_0_0_False_shift: signed(23 downto 0);
  signal c_14_13_0_False_resize: signed(23 downto 0);
  signal c_14_13_0_False_shift: signed(23 downto 0);
  signal c_14_13_1_False_resize: signed(23 downto 0);
  signal c_14_13_1_False_shift: signed(23 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_10_2_False_resize: signed(25 downto 0);
  signal c_15_10_2_False_shift: signed(25 downto 0);
  signal c_15_4_0_False_resize: signed(25 downto 0);
  signal c_15_4_0_False_shift: signed(25 downto 0);
  signal c_15_0_3_False_resize: signed(25 downto 0);
  signal c_15_0_3_False_shift: signed(25 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(25 downto 0);
  signal c_16_i1_resize: signed(25 downto 0);
  signal c_16_i0_shift: signed(25 downto 0);
  signal c_16_i1_shift: signed(25 downto 0);
  signal c_16_arith: signed(25 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(25 downto 0);
  signal c_17_16_0_False_resize: signed(25 downto 0);
  signal c_17_16_0_False_shift: signed(25 downto 0);
  signal c_17_2_4_False_resize: signed(25 downto 0);
  signal c_17_2_4_False_shift: signed(25 downto 0);
  signal c_17_2_2_False_resize: signed(25 downto 0);
  signal c_17_2_2_False_shift: signed(25 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_16_0_False_resize: signed(23 downto 0);
  signal c_18_16_0_False_shift: signed(23 downto 0);
  signal c_18_0_5_False_resize: signed(23 downto 0);
  signal c_18_0_5_False_shift: signed(23 downto 0);
  signal c_18_7_0_False_resize: signed(23 downto 0);
  signal c_18_7_0_False_shift: signed(23 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_i0_resize: signed(25 downto 0);
  signal c_19_i1_resize: signed(25 downto 0);
  signal c_19_i0_shift: signed(25 downto 0);
  signal c_19_i1_shift: signed(25 downto 0);
  signal c_19_arith: signed(25 downto 0);
  signal c_19_oshift: signed(25 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(24 downto 0);
  signal c_20_7_2_False_resize: signed(24 downto 0);
  signal c_20_7_2_False_shift: signed(24 downto 0);
  signal c_20_16_1_False_resize: signed(24 downto 0);
  signal c_20_16_1_False_shift: signed(24 downto 0);
  signal c_20_16_0_False_resize: signed(24 downto 0);
  signal c_20_16_0_False_shift: signed(24 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(24 downto 0);
  signal c_21_4_0_False_resize: signed(24 downto 0);
  signal c_21_4_0_False_shift: signed(24 downto 0);
  signal c_21_0_2_False_resize: signed(24 downto 0);
  signal c_21_0_2_False_shift: signed(24 downto 0);
  signal c_21_0_5_False_resize: signed(24 downto 0);
  signal c_21_0_5_False_shift: signed(24 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_i0_resize: signed(25 downto 0);
  signal c_22_i1_resize: signed(25 downto 0);
  signal c_22_i0_shift: signed(25 downto 0);
  signal c_22_i1_shift: signed(25 downto 0);
  signal c_22_arith: signed(25 downto 0);
  signal c_22_oshift: signed(25 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(22 downto 0);
  signal c_23_13_1_False_resize: signed(22 downto 0);
  signal c_23_13_1_False_shift: signed(22 downto 0);
  signal c_23_7_0_False_resize: signed(22 downto 0);
  signal c_23_7_0_False_shift: signed(22 downto 0);
  signal c_23_0_5_False_resize: signed(22 downto 0);
  signal c_23_0_5_False_shift: signed(22 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_16_0_False_resize: signed(25 downto 0);
  signal c_24_16_0_False_shift: signed(25 downto 0);
  signal c_24_4_1_False_resize: signed(25 downto 0);
  signal c_24_4_1_False_shift: signed(25 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_i0_resize: signed(25 downto 0);
  signal c_25_i1_resize: signed(25 downto 0);
  signal c_25_i0_shift: signed(25 downto 0);
  signal c_25_i1_shift: signed(25 downto 0);
  signal c_25_arith: signed(25 downto 0);
  signal c_25_oshift: signed(25 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(25 downto 0);
  signal c_26_22_0_False_resize: signed(25 downto 0);
  signal c_26_22_0_False_shift: signed(25 downto 0);
  signal c_26_10_0_False_resize: signed(25 downto 0);
  signal c_26_10_0_False_shift: signed(25 downto 0);
  signal c_26_7_4_False_resize: signed(25 downto 0);
  signal c_26_7_4_False_shift: signed(25 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_2_0_False_resize: signed(25 downto 0);
  signal c_27_2_0_False_shift: signed(25 downto 0);
  signal c_27_25_0_False_resize: signed(25 downto 0);
  signal c_27_25_0_False_shift: signed(25 downto 0);
  signal c_27_19_0_False_resize: signed(25 downto 0);
  signal c_27_19_0_False_shift: signed(25 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_i0_resize: signed(25 downto 0);
  signal c_28_i1_resize: signed(25 downto 0);
  signal c_28_i0_shift: signed(25 downto 0);
  signal c_28_i1_shift: signed(25 downto 0);
  signal c_28_arith: signed(25 downto 0);
  signal c_28_oshift: signed(25 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(26 downto 0);
  signal c_29_7_6_False_resize: signed(26 downto 0);
  signal c_29_7_6_False_shift: signed(26 downto 0);
  signal c_29_25_0_False_resize: signed(26 downto 0);
  signal c_29_25_0_False_shift: signed(26 downto 0);
  signal c_29_25_1_False_resize: signed(26 downto 0);
  signal c_29_25_1_False_shift: signed(26 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_16_0_False_resize: signed(25 downto 0);
  signal c_30_16_0_False_shift: signed(25 downto 0);
  signal c_30_10_0_False_resize: signed(25 downto 0);
  signal c_30_10_0_False_shift: signed(25 downto 0);
  signal c_30_10_1_False_resize: signed(25 downto 0);
  signal c_30_10_1_False_shift: signed(25 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(26 downto 0);
  signal c_31_i0_resize: signed(26 downto 0);
  signal c_31_i1_resize: signed(26 downto 0);
  signal c_31_i0_shift: signed(26 downto 0);
  signal c_31_i1_shift: signed(26 downto 0);
  signal c_31_arith: signed(26 downto 0);
  signal c_31_oshift: signed(26 downto 0);
  signal c_31_sub_sel: std_logic;
  signal c_32: signed(26 downto 0);
  signal c_32_0_8_False_resize: signed(26 downto 0);
  signal c_32_0_8_False_shift: signed(26 downto 0);
  signal c_32_13_0_False_resize: signed(26 downto 0);
  signal c_32_13_0_False_shift: signed(26 downto 0);
  signal c_32_31_0_False_resize: signed(26 downto 0);
  signal c_32_31_0_False_shift: signed(26 downto 0);
  signal c_32_sel: std_logic_vector(1 downto 0);
  signal c_33: signed(26 downto 0);
  signal c_33_31_0_False_resize: signed(26 downto 0);
  signal c_33_31_0_False_shift: signed(26 downto 0);
  signal c_33_2_4_False_resize: signed(26 downto 0);
  signal c_33_2_4_False_shift: signed(26 downto 0);
  signal c_33_22_1_False_resize: signed(26 downto 0);
  signal c_33_22_1_False_shift: signed(26 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_34_i0_resize: signed(25 downto 0);
  signal c_34_i1_resize: signed(25 downto 0);
  signal c_34_i0_shift: signed(25 downto 0);
  signal c_34_i1_shift: signed(25 downto 0);
  signal c_34_arith: signed(25 downto 0);
  signal c_34_oshift: signed(25 downto 0);
  signal c_34_sub_sel: std_logic;
  signal c_35: signed(24 downto 0);
  signal c_35_4_0_False_resize: signed(24 downto 0);
  signal c_35_4_0_False_shift: signed(24 downto 0);
  signal c_35_22_1_False_resize: signed(24 downto 0);
  signal c_35_22_1_False_shift: signed(24 downto 0);
  signal c_35_7_3_False_resize: signed(24 downto 0);
  signal c_35_7_3_False_shift: signed(24 downto 0);
  signal c_35_sel: std_logic_vector(1 downto 0);
  signal c_36: signed(24 downto 0);
  signal c_36_resize: signed(24 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_19_3_False_resize: signed(25 downto 0);
  signal c_37_19_3_False_shift: signed(25 downto 0);
  signal c_37_22_0_False_resize: signed(25 downto 0);
  signal c_37_22_0_False_shift: signed(25 downto 0);
  signal c_37_2_5_False_resize: signed(25 downto 0);
  signal c_37_2_5_False_shift: signed(25 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_38_resize: signed(25 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_4_0_False_resize: signed(25 downto 0);
  signal c_39_4_0_False_shift: signed(25 downto 0);
  signal c_39_34_0_False_resize: signed(25 downto 0);
  signal c_39_34_0_False_shift: signed(25 downto 0);
  signal c_39_7_2_False_resize: signed(25 downto 0);
  signal c_39_7_2_False_shift: signed(25 downto 0);
  signal c_39_sel: std_logic_vector(1 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_40_resize: signed(25 downto 0);
  signal c_41: signed(24 downto 0);
  signal c_41_7_0_False_resize: signed(24 downto 0);
  signal c_41_7_0_False_shift: signed(24 downto 0);
  signal c_41_13_2_False_resize: signed(24 downto 0);
  signal c_41_13_2_False_shift: signed(24 downto 0);
  signal c_41_10_1_False_resize: signed(24 downto 0);
  signal c_41_10_1_False_shift: signed(24 downto 0);
  signal c_41_sel: std_logic_vector(1 downto 0);
  signal c_42: signed(24 downto 0);
  signal c_42_resize: signed(24 downto 0);
  signal c_43: signed(24 downto 0);
  signal c_43_19_0_False_resize: signed(24 downto 0);
  signal c_43_19_0_False_shift: signed(24 downto 0);
  signal c_43_13_0_False_resize: signed(24 downto 0);
  signal c_43_13_0_False_shift: signed(24 downto 0);
  signal c_43_34_0_False_resize: signed(24 downto 0);
  signal c_43_34_0_False_shift: signed(24 downto 0);
  signal c_43_sel: std_logic_vector(1 downto 0);
  signal c_44: signed(24 downto 0);
  signal c_44_resize: signed(24 downto 0);
  signal c_45: signed(24 downto 0);
  signal c_45_16_0_False_resize: signed(24 downto 0);
  signal c_45_16_0_False_shift: signed(24 downto 0);
  signal c_45_31_0_False_resize: signed(24 downto 0);
  signal c_45_31_0_False_shift: signed(24 downto 0);
  signal c_45_4_1_False_resize: signed(24 downto 0);
  signal c_45_4_1_False_shift: signed(24 downto 0);
  signal c_45_sel: std_logic_vector(1 downto 0);
  signal c_46: signed(24 downto 0);
  signal c_46_resize: signed(24 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_28_2_False_resize: signed(25 downto 0);
  signal c_47_28_2_False_shift: signed(25 downto 0);
  signal c_47_25_0_False_resize: signed(25 downto 0);
  signal c_47_25_0_False_shift: signed(25 downto 0);
  signal c_47_10_0_False_resize: signed(25 downto 0);
  signal c_47_10_0_False_shift: signed(25 downto 0);
  signal c_47_sel: std_logic_vector(1 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_48_resize: signed(25 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_49_34_0_False_resize: signed(25 downto 0);
  signal c_49_34_0_False_shift: signed(25 downto 0);
  signal c_49_25_0_False_resize: signed(25 downto 0);
  signal c_49_25_0_False_shift: signed(25 downto 0);
  signal c_49_19_0_False_resize: signed(25 downto 0);
  signal c_49_19_0_False_shift: signed(25 downto 0);
  signal c_49_sel: std_logic_vector(1 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_50_resize: signed(25 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_51_25_0_False_resize: signed(25 downto 0);
  signal c_51_25_0_False_shift: signed(25 downto 0);
  signal c_51_16_1_False_resize: signed(25 downto 0);
  signal c_51_16_1_False_shift: signed(25 downto 0);
  signal c_51_28_0_False_resize: signed(25 downto 0);
  signal c_51_28_0_False_shift: signed(25 downto 0);
  signal c_51_sel: std_logic_vector(1 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_52_resize: signed(25 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_53_16_0_False_resize: signed(25 downto 0);
  signal c_53_16_0_False_shift: signed(25 downto 0);
  signal c_53_31_0_False_resize: signed(25 downto 0);
  signal c_53_31_0_False_shift: signed(25 downto 0);
  signal c_53_28_0_False_resize: signed(25 downto 0);
  signal c_53_28_0_False_shift: signed(25 downto 0);
  signal c_53_sel: std_logic_vector(1 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_54_resize: signed(25 downto 0);
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
  -- output node 0 with id 36
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_36);
    end if;
  end process;
  -- output node 1 with id 38
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_38);
    end if;
  end process;
  -- output node 2 with id 40
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_40);
    end if;
  end process;
  -- output node 3 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_42);
    end if;
  end process;
  -- output node 4 with id 44
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_44);
    end if;
  end process;
  -- output node 5 with id 46
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_46);
    end if;
  end process;
  -- output node 6 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_48);
    end if;
  end process;
  -- output node 7 with id 50
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_50);
    end if;
  end process;
  -- output node 8 with id 52
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_52);
    end if;
  end process;
  -- output node 9 with id 54
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_54);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [1], [16]]
  c_1_0_0_False_resize <= resize(c_0, 20);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_4_False_resize <= resize(c_0, 20);
  c_1_0_4_False_shift <= shift_left(c_1_0_4_False_resize, 4);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "0",
    c_1_0_4_False_shift when others;
  -- node of type 'add' in stage 2 with id 2 and associated fundamentals [[5], [5], [65]]
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 20,
      w_o => 23,
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
      x_i => c_0,
      y_i => c_1,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(22 downto 0);
  -- node of type 'mux' in stage 3 with id 3 and associated fundamentals [[256], [160], [1]]
  c_3_0_0_False_resize <= resize(c_0, 24);
  c_3_0_0_False_shift <= shift_left(c_3_0_0_False_resize, 0);
  c_3_0_8_False_resize <= resize(c_0, 24);
  c_3_0_8_False_shift <= shift_left(c_3_0_8_False_resize, 8);
  c_3_2_5_False_resize <= resize(c_2, 24);
  c_3_2_5_False_shift <= shift_left(c_3_2_5_False_resize, 5);
  with config_select_3 select c_3_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_3_sel select c_3 <=
    c_3_0_0_False_shift when "00",
    c_3_0_8_False_shift when "01",
    c_3_2_5_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 4 and associated fundamentals [[507], [325], [67]]
  with config_select_4 select c_4_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
      w_o => 25,
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
      sub_i => c_4_sub_sel,
      x_i => c_3,
      y_i => c_2,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(24 downto 0);
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[2], [20], [65]]
  c_5_0_1_False_resize <= resize(c_0, 23);
  c_5_0_1_False_shift <= shift_left(c_5_0_1_False_resize, 1);
  c_5_2_2_False_resize <= c_2;
  c_5_2_2_False_shift <= shift_left(c_5_2_2_False_resize, 2);
  c_5_2_0_False_resize <= c_2;
  c_5_2_0_False_shift <= shift_left(c_5_2_0_False_resize, 0);
  with config_select_3 select c_5_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_5_sel select c_5 <=
    c_5_0_1_False_shift when "00",
    c_5_2_2_False_shift when "01",
    c_5_2_0_False_shift when others;
  -- node of type 'mux' in stage 1 with id 6 and associated fundamentals [[32], [1], [8]]
  c_6_0_0_False_resize <= resize(c_0, 21);
  c_6_0_0_False_shift <= shift_left(c_6_0_0_False_resize, 0);
  c_6_0_5_False_resize <= resize(c_0, 21);
  c_6_0_5_False_shift <= shift_left(c_6_0_5_False_resize, 5);
  c_6_0_3_False_resize <= resize(c_0, 21);
  c_6_0_3_False_shift <= shift_left(c_6_0_3_False_resize, 3);
  with config_select_1 select c_6_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_6_sel select c_6 <=
    c_6_0_0_False_shift when "00",
    c_6_0_5_False_shift when "01",
    c_6_0_3_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[34], [21], [57]]
  with config_select_4 select c_7_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_7_sub_sel,
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(21 downto 0);
  -- node of type 'mux' in stage 5 with id 8 and associated fundamentals [[136], [21], [536]]
  c_8_4_3_False_resize <= resize(c_4, 26);
  c_8_4_3_False_shift <= shift_left(c_8_4_3_False_resize, 3);
  c_8_7_0_False_resize <= resize(c_7, 26);
  c_8_7_0_False_shift <= shift_left(c_8_7_0_False_resize, 0);
  c_8_7_2_False_resize <= resize(c_7, 26);
  c_8_7_2_False_shift <= shift_left(c_8_7_2_False_resize, 2);
  with config_select_5 select c_8_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_8_sel select c_8 <=
    c_8_4_3_False_shift when "00",
    c_8_7_0_False_shift when "01",
    c_8_7_2_False_shift when others;
  -- node of type 'mux' in stage 1 with id 9 and associated fundamentals [[1], [256], [1]]
  c_9_0_0_False_resize <= resize(c_0, 24);
  c_9_0_0_False_shift <= shift_left(c_9_0_0_False_resize, 0);
  c_9_0_8_False_resize <= resize(c_0, 24);
  c_9_0_8_False_shift <= shift_left(c_9_0_8_False_resize, 8);
  with config_select_1 select c_9_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_0_0_False_shift when "0",
    c_9_0_8_False_shift when others;
  -- node of type 'sub' in stage 6 with id 10 and associated fundamentals [[135], [-235], [535]]
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
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
      x_i => c_8,
      y_i => c_9,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(25 downto 0);
  -- node of type 'mux' in stage 5 with id 11 and associated fundamentals [[507], [42], [114]]
  c_11_4_0_False_resize <= c_4;
  c_11_4_0_False_shift <= shift_left(c_11_4_0_False_resize, 0);
  c_11_7_1_False_resize <= resize(c_7, 25);
  c_11_7_1_False_shift <= shift_left(c_11_7_1_False_resize, 1);
  with config_select_5 select c_11_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_4_0_False_shift when "0",
    c_11_7_1_False_shift when others;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[320], [5], [1]]
  c_12_0_0_False_resize <= resize(c_0, 25);
  c_12_0_0_False_shift <= shift_left(c_12_0_0_False_resize, 0);
  c_12_2_6_False_resize <= resize(c_2, 25);
  c_12_2_6_False_shift <= shift_left(c_12_2_6_False_resize, 6);
  c_12_2_0_False_resize <= resize(c_2, 25);
  c_12_2_0_False_shift <= shift_left(c_12_2_0_False_resize, 0);
  with config_select_3 select c_12_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_12_sel select c_12 <=
    c_12_0_0_False_shift when "00",
    c_12_2_6_False_shift when "01",
    c_12_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 13 and associated fundamentals [[187], [47], [113]]
  with config_select_6 select c_13_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_13_sub_sel,
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(23 downto 0);
  -- node of type 'mux' in stage 7 with id 14 and associated fundamentals [[187], [1], [226]]
  c_14_0_0_False_resize <= resize(c_0, 24);
  c_14_0_0_False_shift <= shift_left(c_14_0_0_False_resize, 0);
  c_14_13_0_False_resize <= c_13;
  c_14_13_0_False_shift <= shift_left(c_14_13_0_False_resize, 0);
  c_14_13_1_False_resize <= c_13;
  c_14_13_1_False_shift <= shift_left(c_14_13_1_False_resize, 1);
  with config_select_7 select c_14_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_14_sel select c_14 <=
    c_14_0_0_False_shift when "00",
    c_14_13_0_False_shift when "01",
    c_14_13_1_False_shift when others;
  -- node of type 'mux' in stage 7 with id 15 and associated fundamentals [[8], [-940], [67]]
  c_15_10_2_False_resize <= c_10;
  c_15_10_2_False_shift <= shift_left(c_15_10_2_False_resize, 2);
  c_15_4_0_False_resize <= resize(c_4, 26);
  c_15_4_0_False_shift <= shift_left(c_15_4_0_False_resize, 0);
  c_15_0_3_False_resize <= resize(c_0, 26);
  c_15_0_3_False_shift <= shift_left(c_15_0_3_False_resize, 3);
  with config_select_7 select c_15_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_15_sel select c_15 <=
    c_15_10_2_False_shift when "00",
    c_15_4_0_False_shift when "01",
    c_15_0_3_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 16 and associated fundamentals [[195], [941], [159]]
  with config_select_8 select c_16_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_16_sub_sel,
      x_i => c_14,
      y_i => c_15,
      z_o => c_16_oshift
    );
  c_16 <= c_16_oshift(25 downto 0);
  -- node of type 'mux' in stage 9 with id 17 and associated fundamentals [[80], [941], [260]]
  c_17_16_0_False_resize <= c_16;
  c_17_16_0_False_shift <= shift_left(c_17_16_0_False_resize, 0);
  c_17_2_4_False_resize <= resize(c_2, 26);
  c_17_2_4_False_shift <= shift_left(c_17_2_4_False_resize, 4);
  c_17_2_2_False_resize <= resize(c_2, 26);
  c_17_2_2_False_shift <= shift_left(c_17_2_2_False_resize, 2);
  with config_select_9 select c_17_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_17_sel select c_17 <=
    c_17_16_0_False_shift when "00",
    c_17_2_4_False_shift when "01",
    c_17_2_2_False_shift when others;
  -- node of type 'mux' in stage 9 with id 18 and associated fundamentals [[34], [32], [159]]
  c_18_16_0_False_resize <= c_16(23 downto 0);
  c_18_16_0_False_shift <= shift_left(c_18_16_0_False_resize, 0);
  c_18_0_5_False_resize <= resize(c_0, 24);
  c_18_0_5_False_shift <= shift_left(c_18_0_5_False_resize, 5);
  c_18_7_0_False_resize <= resize(c_7, 24);
  c_18_7_0_False_shift <= shift_left(c_18_7_0_False_resize, 0);
  with config_select_9 select c_18_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_18_sel select c_18 <=
    c_18_16_0_False_shift when "00",
    c_18_0_5_False_shift when "01",
    c_18_7_0_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 19 and associated fundamentals [[114], [909], [419]]
  with config_select_10 select c_19_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_19_sub_sel,
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  c_19 <= c_19_oshift(25 downto 0);
  -- node of type 'mux' in stage 9 with id 20 and associated fundamentals [[390], [84], [159]]
  c_20_7_2_False_resize <= resize(c_7, 25);
  c_20_7_2_False_shift <= shift_left(c_20_7_2_False_resize, 2);
  c_20_16_1_False_resize <= c_16(24 downto 0);
  c_20_16_1_False_shift <= shift_left(c_20_16_1_False_resize, 1);
  c_20_16_0_False_resize <= c_16(24 downto 0);
  c_20_16_0_False_shift <= shift_left(c_20_16_0_False_resize, 0);
  with config_select_9 select c_20_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_20_sel select c_20 <=
    c_20_7_2_False_shift when "00",
    c_20_16_1_False_shift when "01",
    c_20_16_0_False_shift when others;
  -- node of type 'mux' in stage 5 with id 21 and associated fundamentals [[507], [4], [32]]
  c_21_4_0_False_resize <= c_4;
  c_21_4_0_False_shift <= shift_left(c_21_4_0_False_resize, 0);
  c_21_0_2_False_resize <= resize(c_0, 25);
  c_21_0_2_False_shift <= shift_left(c_21_0_2_False_resize, 2);
  c_21_0_5_False_resize <= resize(c_0, 25);
  c_21_0_5_False_shift <= shift_left(c_21_0_5_False_resize, 5);
  with config_select_5 select c_21_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_21_sel select c_21 <=
    c_21_4_0_False_shift when "00",
    c_21_0_2_False_shift when "01",
    c_21_0_5_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 22 and associated fundamentals [[1287], [164], [350]]
  with config_select_10 select c_22_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
      w_o => 26,
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
      sub_i => c_22_sub_sel,
      x_i => c_20,
      y_i => c_21,
      z_o => c_22_oshift
    );
  c_22 <= c_22_oshift(25 downto 0);
  -- node of type 'mux' in stage 7 with id 23 and associated fundamentals [[34], [94], [32]]
  c_23_13_1_False_resize <= c_13(22 downto 0);
  c_23_13_1_False_shift <= shift_left(c_23_13_1_False_resize, 1);
  c_23_7_0_False_resize <= resize(c_7, 23);
  c_23_7_0_False_shift <= shift_left(c_23_7_0_False_resize, 0);
  c_23_0_5_False_resize <= resize(c_0, 23);
  c_23_0_5_False_shift <= shift_left(c_23_0_5_False_resize, 5);
  with config_select_7 select c_23_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_23_sel select c_23 <=
    c_23_13_1_False_shift when "00",
    c_23_7_0_False_shift when "01",
    c_23_0_5_False_shift when others;
  -- node of type 'mux' in stage 9 with id 24 and associated fundamentals [[195], [650], [134]]
  c_24_16_0_False_resize <= c_16;
  c_24_16_0_False_shift <= shift_left(c_24_16_0_False_resize, 0);
  c_24_4_1_False_resize <= resize(c_4, 26);
  c_24_4_1_False_shift <= shift_left(c_24_4_1_False_resize, 1);
  with config_select_9 select c_24_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_24_sel select c_24 <=
    c_24_16_0_False_shift when "0",
    c_24_4_1_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 25 and associated fundamentals [[349], [854], [646]]
  with config_select_10 select c_25_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 26,
      w_o => 26,
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
      sub_i => c_25_sub_sel,
      x_i => c_23,
      y_i => c_24,
      z_o => c_25_oshift
    );
  c_25 <= c_25_oshift(25 downto 0);
  -- node of type 'mux' in stage 11 with id 26 and associated fundamentals [[135], [164], [912]]
  c_26_22_0_False_resize <= c_22;
  c_26_22_0_False_shift <= shift_left(c_26_22_0_False_resize, 0);
  c_26_10_0_False_resize <= c_10;
  c_26_10_0_False_shift <= shift_left(c_26_10_0_False_resize, 0);
  c_26_7_4_False_resize <= resize(c_7, 26);
  c_26_7_4_False_shift <= shift_left(c_26_7_4_False_resize, 4);
  with config_select_11 select c_26_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_26_sel select c_26 <=
    c_26_22_0_False_shift when "00",
    c_26_10_0_False_shift when "01",
    c_26_7_4_False_shift when others;
  -- node of type 'mux' in stage 11 with id 27 and associated fundamentals [[114], [854], [65]]
  c_27_2_0_False_resize <= resize(c_2, 26);
  c_27_2_0_False_shift <= shift_left(c_27_2_0_False_resize, 0);
  c_27_25_0_False_resize <= c_25;
  c_27_25_0_False_shift <= shift_left(c_27_25_0_False_resize, 0);
  c_27_19_0_False_resize <= c_19;
  c_27_19_0_False_shift <= shift_left(c_27_19_0_False_resize, 0);
  with config_select_11 select c_27_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_27_sel select c_27 <=
    c_27_2_0_False_shift when "00",
    c_27_25_0_False_shift when "01",
    c_27_19_0_False_shift when others;
  -- node of type 'add_sub' in stage 12 with id 28 and associated fundamentals [[249], [1018], [847]]
  with config_select_12 select c_28_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_28: entity work.adder_node
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
      sub_i => c_28_sub_sel,
      x_i => c_26,
      y_i => c_27,
      z_o => c_28_oshift
    );
  c_28 <= c_28_oshift(25 downto 0);
  -- node of type 'mux' in stage 11 with id 29 and associated fundamentals [[349], [1344], [1292]]
  c_29_7_6_False_resize <= resize(c_7, 27);
  c_29_7_6_False_shift <= shift_left(c_29_7_6_False_resize, 6);
  c_29_25_0_False_resize <= resize(c_25, 27);
  c_29_25_0_False_shift <= shift_left(c_29_25_0_False_resize, 0);
  c_29_25_1_False_resize <= resize(c_25, 27);
  c_29_25_1_False_shift <= shift_left(c_29_25_1_False_resize, 1);
  with config_select_11 select c_29_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_29_sel select c_29 <=
    c_29_7_6_False_shift when "00",
    c_29_25_0_False_shift when "01",
    c_29_25_1_False_shift when others;
  -- node of type 'mux' in stage 9 with id 30 and associated fundamentals [[270], [941], [535]]
  c_30_16_0_False_resize <= c_16;
  c_30_16_0_False_shift <= shift_left(c_30_16_0_False_resize, 0);
  c_30_10_0_False_resize <= c_10;
  c_30_10_0_False_shift <= shift_left(c_30_10_0_False_resize, 0);
  c_30_10_1_False_resize <= c_10;
  c_30_10_1_False_shift <= shift_left(c_30_10_1_False_resize, 1);
  with config_select_9 select c_30_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_30_sel select c_30 <=
    c_30_16_0_False_shift when "00",
    c_30_10_0_False_shift when "01",
    c_30_10_1_False_shift when others;
  -- node of type 'add_sub' in stage 12 with id 31 and associated fundamentals [[619], [403], [1827]]
  with config_select_12 select c_31_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 26,
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
      sub_i => c_31_sub_sel,
      x_i => c_29,
      y_i => c_30,
      z_o => c_31_oshift
    );
  c_31 <= c_31_oshift(26 downto 0);
  -- node of type 'mux' in stage 13 with id 32 and associated fundamentals [[256], [47], [1827]]
  c_32_0_8_False_resize <= resize(c_0, 27);
  c_32_0_8_False_shift <= shift_left(c_32_0_8_False_resize, 8);
  c_32_13_0_False_resize <= resize(c_13, 27);
  c_32_13_0_False_shift <= shift_left(c_32_13_0_False_resize, 0);
  c_32_31_0_False_resize <= c_31;
  c_32_31_0_False_shift <= shift_left(c_32_31_0_False_resize, 0);
  with config_select_13 select c_32_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_32_sel select c_32 <=
    c_32_0_8_False_shift when "00",
    c_32_13_0_False_shift when "01",
    c_32_31_0_False_shift when others;
  -- node of type 'mux' in stage 13 with id 33 and associated fundamentals [[619], [328], [1040]]
  c_33_31_0_False_resize <= c_31;
  c_33_31_0_False_shift <= shift_left(c_33_31_0_False_resize, 0);
  c_33_2_4_False_resize <= resize(c_2, 27);
  c_33_2_4_False_shift <= shift_left(c_33_2_4_False_resize, 4);
  c_33_22_1_False_resize <= resize(c_22, 27);
  c_33_22_1_False_shift <= shift_left(c_33_22_1_False_resize, 1);
  with config_select_13 select c_33_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_33_sel select c_33 <=
    c_33_31_0_False_shift when "00",
    c_33_2_4_False_shift when "01",
    c_33_22_1_False_shift when others;
  -- node of type 'add_sub' in stage 14 with id 34 and associated fundamentals [[875], [375], [787]]
  with config_select_14 select c_34_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_34: entity work.adder_node
    generic map (
      w_x_i => 27,
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
      sub_i => c_34_sub_sel,
      x_i => c_32,
      y_i => c_33,
      z_o => c_34_oshift
    );
  c_34 <= c_34_oshift(25 downto 0);
  -- node of type 'mux' in stage 11 with id 35 and associated fundamentals [[507], [328], [456]]
  c_35_4_0_False_resize <= c_4;
  c_35_4_0_False_shift <= shift_left(c_35_4_0_False_resize, 0);
  c_35_22_1_False_resize <= c_22(24 downto 0);
  c_35_22_1_False_shift <= shift_left(c_35_22_1_False_resize, 1);
  c_35_7_3_False_resize <= resize(c_7, 25);
  c_35_7_3_False_shift <= shift_left(c_35_7_3_False_resize, 3);
  with config_select_11 select c_35_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_35_sel select c_35 <=
    c_35_4_0_False_shift when "00",
    c_35_22_1_False_shift when "01",
    c_35_7_3_False_shift when others;
  -- node of type 'output' in stage 11 with id 36 and associated fundamentals [[507], [328], [456]]
  c_36_resize <= c_35;
  c_36 <= shift_left(c_36_resize, 0);
  -- node of type 'mux' in stage 11 with id 37 and associated fundamentals [[912], [160], [350]]
  c_37_19_3_False_resize <= c_19;
  c_37_19_3_False_shift <= shift_left(c_37_19_3_False_resize, 3);
  c_37_22_0_False_resize <= c_22;
  c_37_22_0_False_shift <= shift_left(c_37_22_0_False_resize, 0);
  c_37_2_5_False_resize <= resize(c_2, 26);
  c_37_2_5_False_shift <= shift_left(c_37_2_5_False_resize, 5);
  with config_select_11 select c_37_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_37_sel select c_37 <=
    c_37_19_3_False_shift when "00",
    c_37_22_0_False_shift when "01",
    c_37_2_5_False_shift when others;
  -- node of type 'output' in stage 11 with id 38 and associated fundamentals [[912], [160], [350]]
  c_38_resize <= c_37;
  c_38 <= shift_left(c_38_resize, 0);
  -- node of type 'mux' in stage 15 with id 39 and associated fundamentals [[136], [325], [787]]
  c_39_4_0_False_resize <= resize(c_4, 26);
  c_39_4_0_False_shift <= shift_left(c_39_4_0_False_resize, 0);
  c_39_34_0_False_resize <= c_34;
  c_39_34_0_False_shift <= shift_left(c_39_34_0_False_resize, 0);
  c_39_7_2_False_resize <= resize(c_7, 26);
  c_39_7_2_False_shift <= shift_left(c_39_7_2_False_resize, 2);
  with config_select_15 select c_39_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_39_sel select c_39 <=
    c_39_4_0_False_shift when "00",
    c_39_34_0_False_shift when "01",
    c_39_7_2_False_shift when others;
  -- node of type 'output' in stage 15 with id 40 and associated fundamentals [[136], [325], [787]]
  c_40_resize <= c_39;
  c_40 <= shift_left(c_40_resize, 0);
  -- node of type 'mux' in stage 7 with id 41 and associated fundamentals [[270], [21], [452]]
  c_41_7_0_False_resize <= resize(c_7, 25);
  c_41_7_0_False_shift <= shift_left(c_41_7_0_False_resize, 0);
  c_41_13_2_False_resize <= resize(c_13, 25);
  c_41_13_2_False_shift <= shift_left(c_41_13_2_False_resize, 2);
  c_41_10_1_False_resize <= c_10(24 downto 0);
  c_41_10_1_False_shift <= shift_left(c_41_10_1_False_resize, 1);
  with config_select_7 select c_41_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_41_sel select c_41 <=
    c_41_7_0_False_shift when "00",
    c_41_13_2_False_shift when "01",
    c_41_10_1_False_shift when others;
  -- node of type 'output' in stage 7 with id 42 and associated fundamentals [[270], [21], [452]]
  c_42_resize <= c_41;
  c_42 <= shift_left(c_42_resize, 0);
  -- node of type 'mux' in stage 15 with id 43 and associated fundamentals [[187], [375], [419]]
  c_43_19_0_False_resize <= c_19(24 downto 0);
  c_43_19_0_False_shift <= shift_left(c_43_19_0_False_resize, 0);
  c_43_13_0_False_resize <= resize(c_13, 25);
  c_43_13_0_False_shift <= shift_left(c_43_13_0_False_resize, 0);
  c_43_34_0_False_resize <= c_34(24 downto 0);
  c_43_34_0_False_shift <= shift_left(c_43_34_0_False_resize, 0);
  with config_select_15 select c_43_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_43_sel select c_43 <=
    c_43_19_0_False_shift when "00",
    c_43_13_0_False_shift when "01",
    c_43_34_0_False_shift when others;
  -- node of type 'output' in stage 15 with id 44 and associated fundamentals [[187], [375], [419]]
  c_44_resize <= c_43;
  c_44 <= shift_left(c_44_resize, 0);
  -- node of type 'mux' in stage 13 with id 45 and associated fundamentals [[195], [403], [134]]
  c_45_16_0_False_resize <= c_16(24 downto 0);
  c_45_16_0_False_shift <= shift_left(c_45_16_0_False_resize, 0);
  c_45_31_0_False_resize <= c_31(24 downto 0);
  c_45_31_0_False_shift <= shift_left(c_45_31_0_False_resize, 0);
  c_45_4_1_False_resize <= c_4;
  c_45_4_1_False_shift <= shift_left(c_45_4_1_False_resize, 1);
  with config_select_13 select c_45_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_45_sel select c_45 <=
    c_45_16_0_False_shift when "00",
    c_45_31_0_False_shift when "01",
    c_45_4_1_False_shift when others;
  -- node of type 'output' in stage 13 with id 46 and associated fundamentals [[195], [403], [134]]
  c_46_resize <= c_45;
  c_46 <= shift_left(c_46_resize, 0);
  -- node of type 'mux' in stage 13 with id 47 and associated fundamentals [[996], [854], [535]]
  c_47_28_2_False_resize <= c_28;
  c_47_28_2_False_shift <= shift_left(c_47_28_2_False_resize, 2);
  c_47_25_0_False_resize <= c_25;
  c_47_25_0_False_shift <= shift_left(c_47_25_0_False_resize, 0);
  c_47_10_0_False_resize <= c_10;
  c_47_10_0_False_shift <= shift_left(c_47_10_0_False_resize, 0);
  with config_select_13 select c_47_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_47_sel select c_47 <=
    c_47_28_2_False_shift when "00",
    c_47_25_0_False_shift when "01",
    c_47_10_0_False_shift when others;
  -- node of type 'output' in stage 13 with id 48 and associated fundamentals [[996], [854], [535]]
  c_48_resize <= c_47;
  c_48 <= shift_left(c_48_resize, 0);
  -- node of type 'mux' in stage 15 with id 49 and associated fundamentals [[875], [909], [646]]
  c_49_34_0_False_resize <= c_34;
  c_49_34_0_False_shift <= shift_left(c_49_34_0_False_resize, 0);
  c_49_25_0_False_resize <= c_25;
  c_49_25_0_False_shift <= shift_left(c_49_25_0_False_resize, 0);
  c_49_19_0_False_resize <= c_19;
  c_49_19_0_False_shift <= shift_left(c_49_19_0_False_resize, 0);
  with config_select_15 select c_49_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_49_sel select c_49 <=
    c_49_34_0_False_shift when "00",
    c_49_25_0_False_shift when "01",
    c_49_19_0_False_shift when others;
  -- node of type 'output' in stage 15 with id 50 and associated fundamentals [[875], [909], [646]]
  c_50_resize <= c_49;
  c_50 <= shift_left(c_50_resize, 0);
  -- node of type 'mux' in stage 13 with id 51 and associated fundamentals [[349], [1018], [318]]
  c_51_25_0_False_resize <= c_25;
  c_51_25_0_False_shift <= shift_left(c_51_25_0_False_resize, 0);
  c_51_16_1_False_resize <= c_16;
  c_51_16_1_False_shift <= shift_left(c_51_16_1_False_resize, 1);
  c_51_28_0_False_resize <= c_28;
  c_51_28_0_False_shift <= shift_left(c_51_28_0_False_resize, 0);
  with config_select_13 select c_51_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_51_sel select c_51 <=
    c_51_25_0_False_shift when "00",
    c_51_16_1_False_shift when "01",
    c_51_28_0_False_shift when others;
  -- node of type 'output' in stage 13 with id 52 and associated fundamentals [[349], [1018], [318]]
  c_52_resize <= c_51;
  c_52 <= shift_left(c_52_resize, 0);
  -- node of type 'mux' in stage 13 with id 53 and associated fundamentals [[619], [941], [847]]
  c_53_16_0_False_resize <= c_16;
  c_53_16_0_False_shift <= shift_left(c_53_16_0_False_resize, 0);
  c_53_31_0_False_resize <= c_31(25 downto 0);
  c_53_31_0_False_shift <= shift_left(c_53_31_0_False_resize, 0);
  c_53_28_0_False_resize <= c_28;
  c_53_28_0_False_shift <= shift_left(c_53_28_0_False_resize, 0);
  with config_select_13 select c_53_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_53_sel select c_53 <=
    c_53_16_0_False_shift when "00",
    c_53_31_0_False_shift when "01",
    c_53_28_0_False_shift when others;
  -- node of type 'output' in stage 13 with id 54 and associated fundamentals [[619], [941], [847]]
  c_54_resize <= c_53;
  c_54 <= shift_left(c_54_resize, 0);
end architecture;
