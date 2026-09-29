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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(19 downto 0);
  signal c_2_i0_resize: signed(19 downto 0);
  signal c_2_i1_resize: signed(19 downto 0);
  signal c_2_i0_shift: signed(19 downto 0);
  signal c_2_i1_shift: signed(19 downto 0);
  signal c_2_arith: signed(19 downto 0);
  signal c_2_oshift: signed(19 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(19 downto 0);
  signal c_3_i1_resize: signed(19 downto 0);
  signal c_3_i0_shift: signed(19 downto 0);
  signal c_3_i1_shift: signed(19 downto 0);
  signal c_3_arith: signed(19 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(23 downto 0);
  signal c_4_3_0_False_resize: signed(23 downto 0);
  signal c_4_3_0_False_shift: signed(23 downto 0);
  signal c_4_2_0_False_resize: signed(23 downto 0);
  signal c_4_2_0_False_shift: signed(23 downto 0);
  signal c_4_3_5_False_resize: signed(23 downto 0);
  signal c_4_3_5_False_shift: signed(23 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(23 downto 0);
  signal c_5_1_0_False_resize: signed(23 downto 0);
  signal c_5_1_0_False_shift: signed(23 downto 0);
  signal c_5_3_4_False_resize: signed(23 downto 0);
  signal c_5_3_4_False_shift: signed(23 downto 0);
  signal c_5_2_4_False_resize: signed(23 downto 0);
  signal c_5_2_4_False_shift: signed(23 downto 0);
  signal c_5_2_0_False_resize: signed(23 downto 0);
  signal c_5_2_0_False_shift: signed(23 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(23 downto 0);
  signal c_6_i0_resize: signed(23 downto 0);
  signal c_6_i1_resize: signed(23 downto 0);
  signal c_6_i0_shift: signed(23 downto 0);
  signal c_6_i1_shift: signed(23 downto 0);
  signal c_6_arith: signed(23 downto 0);
  signal c_6_oshift: signed(23 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(21 downto 0);
  signal c_7_3_0_False_resize: signed(21 downto 0);
  signal c_7_3_0_False_shift: signed(21 downto 0);
  signal c_7_1_5_False_resize: signed(21 downto 0);
  signal c_7_1_5_False_shift: signed(21 downto 0);
  signal c_7_1_6_False_resize: signed(21 downto 0);
  signal c_7_1_6_False_shift: signed(21 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_3_4_False_resize: signed(22 downto 0);
  signal c_8_3_4_False_shift: signed(22 downto 0);
  signal c_8_3_0_False_resize: signed(22 downto 0);
  signal c_8_3_0_False_shift: signed(22 downto 0);
  signal c_8_1_2_False_resize: signed(22 downto 0);
  signal c_8_1_2_False_shift: signed(22 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_i0_resize: signed(22 downto 0);
  signal c_9_i1_resize: signed(22 downto 0);
  signal c_9_i0_shift: signed(22 downto 0);
  signal c_9_i1_shift: signed(22 downto 0);
  signal c_9_arith: signed(22 downto 0);
  signal c_9_oshift: signed(22 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(23 downto 0);
  signal c_10_2_3_False_resize: signed(23 downto 0);
  signal c_10_2_3_False_shift: signed(23 downto 0);
  signal c_10_3_5_False_resize: signed(23 downto 0);
  signal c_10_3_5_False_shift: signed(23 downto 0);
  signal c_10_1_0_False_resize: signed(23 downto 0);
  signal c_10_1_0_False_shift: signed(23 downto 0);
  signal c_10_3_4_False_resize: signed(23 downto 0);
  signal c_10_3_4_False_shift: signed(23 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(19 downto 0);
  signal c_11_2_1_False_resize: signed(19 downto 0);
  signal c_11_2_1_False_shift: signed(19 downto 0);
  signal c_11_2_0_False_resize: signed(19 downto 0);
  signal c_11_2_0_False_shift: signed(19 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_i0_resize: signed(23 downto 0);
  signal c_12_i1_resize: signed(23 downto 0);
  signal c_12_i0_shift: signed(23 downto 0);
  signal c_12_i1_shift: signed(23 downto 0);
  signal c_12_arith: signed(23 downto 0);
  signal c_12_oshift: signed(23 downto 0);
  signal c_13: signed(26 downto 0);
  signal c_13_1_2_False_resize: signed(26 downto 0);
  signal c_13_1_2_False_shift: signed(26 downto 0);
  signal c_13_1_1_False_resize: signed(26 downto 0);
  signal c_13_1_1_False_shift: signed(26 downto 0);
  signal c_13_1_11_False_resize: signed(26 downto 0);
  signal c_13_1_11_False_shift: signed(26 downto 0);
  signal c_13_2_0_False_resize: signed(26 downto 0);
  signal c_13_2_0_False_shift: signed(26 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_3_0_False_resize: signed(23 downto 0);
  signal c_14_3_0_False_shift: signed(23 downto 0);
  signal c_14_3_4_False_resize: signed(23 downto 0);
  signal c_14_3_4_False_shift: signed(23 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_i0_resize: signed(23 downto 0);
  signal c_15_i1_resize: signed(23 downto 0);
  signal c_15_i0_shift: signed(23 downto 0);
  signal c_15_i1_shift: signed(23 downto 0);
  signal c_15_arith: signed(23 downto 0);
  signal c_15_oshift: signed(23 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(22 downto 0);
  signal c_16_i0_resize: signed(22 downto 0);
  signal c_16_i1_resize: signed(22 downto 0);
  signal c_16_i0_shift: signed(22 downto 0);
  signal c_16_i1_shift: signed(22 downto 0);
  signal c_16_arith: signed(22 downto 0);
  signal c_16_oshift: signed(22 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(19 downto 0);
  signal c_17_i0_resize: signed(19 downto 0);
  signal c_17_i1_resize: signed(19 downto 0);
  signal c_17_i0_shift: signed(19 downto 0);
  signal c_17_i1_shift: signed(19 downto 0);
  signal c_17_arith: signed(19 downto 0);
  signal c_17_oshift: signed(19 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(23 downto 0);
  signal c_18_i0_resize: signed(23 downto 0);
  signal c_18_i1_resize: signed(23 downto 0);
  signal c_18_i0_shift: signed(23 downto 0);
  signal c_18_i1_shift: signed(23 downto 0);
  signal c_18_arith: signed(23 downto 0);
  signal c_18_oshift: signed(23 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(22 downto 0);
  signal c_19_i0_resize: signed(22 downto 0);
  signal c_19_i1_resize: signed(22 downto 0);
  signal c_19_i0_shift: signed(22 downto 0);
  signal c_19_i1_shift: signed(22 downto 0);
  signal c_19_arith: signed(22 downto 0);
  signal c_19_oshift: signed(22 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(19 downto 0);
  signal c_20_1_4_False_resize: signed(19 downto 0);
  signal c_20_1_4_False_shift: signed(19 downto 0);
  signal c_20_1_3_False_resize: signed(19 downto 0);
  signal c_20_1_3_False_shift: signed(19 downto 0);
  signal c_20_3_0_False_resize: signed(19 downto 0);
  signal c_20_3_0_False_shift: signed(19 downto 0);
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
  signal c_22_0_1_False_resize: signed(23 downto 0);
  signal c_22_0_1_False_shift: signed(23 downto 0);
  signal c_22_0_0_False_resize: signed(23 downto 0);
  signal c_22_0_0_False_shift: signed(23 downto 0);
  signal c_22_0_3_False_resize: signed(23 downto 0);
  signal c_22_0_3_False_shift: signed(23 downto 0);
  signal c_22_0_8_False_resize: signed(23 downto 0);
  signal c_22_0_8_False_shift: signed(23 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_i0_resize: signed(23 downto 0);
  signal c_23_i1_resize: signed(23 downto 0);
  signal c_23_i0_shift: signed(23 downto 0);
  signal c_23_i1_shift: signed(23 downto 0);
  signal c_23_arith: signed(23 downto 0);
  signal c_23_oshift: signed(23 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(22 downto 0);
  signal c_24_16_0_False_resize: signed(22 downto 0);
  signal c_24_16_0_False_shift: signed(22 downto 0);
  signal c_24_2_1_False_resize: signed(22 downto 0);
  signal c_24_2_1_False_shift: signed(22 downto 0);
  signal c_24_1_0_False_resize: signed(22 downto 0);
  signal c_24_1_0_False_shift: signed(22 downto 0);
  signal c_24_18_0_False_resize: signed(22 downto 0);
  signal c_24_18_0_False_shift: signed(22 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_i0_resize: signed(23 downto 0);
  signal c_25_i1_resize: signed(23 downto 0);
  signal c_25_i0_shift: signed(23 downto 0);
  signal c_25_i1_shift: signed(23 downto 0);
  signal c_25_arith: signed(23 downto 0);
  signal c_25_oshift: signed(23 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(23 downto 0);
  signal c_26_3_0_False_resize: signed(23 downto 0);
  signal c_26_3_0_False_shift: signed(23 downto 0);
  signal c_26_1_5_False_resize: signed(23 downto 0);
  signal c_26_1_5_False_shift: signed(23 downto 0);
  signal c_26_17_0_False_resize: signed(23 downto 0);
  signal c_26_17_0_False_shift: signed(23 downto 0);
  signal c_26_3_5_False_resize: signed(23 downto 0);
  signal c_26_3_5_False_shift: signed(23 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_2_3_False_resize: signed(23 downto 0);
  signal c_27_2_3_False_shift: signed(23 downto 0);
  signal c_27_1_0_False_resize: signed(23 downto 0);
  signal c_27_1_0_False_shift: signed(23 downto 0);
  signal c_27_16_2_False_resize: signed(23 downto 0);
  signal c_27_16_2_False_shift: signed(23 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_i0_resize: signed(23 downto 0);
  signal c_28_i1_resize: signed(23 downto 0);
  signal c_28_i0_shift: signed(23 downto 0);
  signal c_28_i1_shift: signed(23 downto 0);
  signal c_28_arith: signed(23 downto 0);
  signal c_28_oshift: signed(23 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(24 downto 0);
  signal c_29_1_3_False_resize: signed(24 downto 0);
  signal c_29_1_3_False_shift: signed(24 downto 0);
  signal c_29_17_0_False_resize: signed(24 downto 0);
  signal c_29_17_0_False_shift: signed(24 downto 0);
  signal c_29_2_6_False_resize: signed(24 downto 0);
  signal c_29_2_6_False_shift: signed(24 downto 0);
  signal c_29_17_5_False_resize: signed(24 downto 0);
  signal c_29_17_5_False_shift: signed(24 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_i0_resize: signed(23 downto 0);
  signal c_30_i1_resize: signed(23 downto 0);
  signal c_30_i0_shift: signed(23 downto 0);
  signal c_30_i1_shift: signed(23 downto 0);
  signal c_30_arith: signed(23 downto 0);
  signal c_30_oshift: signed(23 downto 0);
  signal c_30_sub_sel: std_logic;
  signal c_31: signed(25 downto 0);
  signal c_31_17_0_False_resize: signed(25 downto 0);
  signal c_31_17_0_False_shift: signed(25 downto 0);
  signal c_31_3_7_False_resize: signed(25 downto 0);
  signal c_31_3_7_False_shift: signed(25 downto 0);
  signal c_31_2_0_False_resize: signed(25 downto 0);
  signal c_31_2_0_False_shift: signed(25 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(22 downto 0);
  signal c_32_i0_resize: signed(22 downto 0);
  signal c_32_i1_resize: signed(22 downto 0);
  signal c_32_i0_shift: signed(22 downto 0);
  signal c_32_i1_shift: signed(22 downto 0);
  signal c_32_arith: signed(22 downto 0);
  signal c_32_oshift: signed(22 downto 0);
  signal c_32_sub_sel: std_logic;
  signal c_33: signed(23 downto 0);
  signal c_33_18_1_False_resize: signed(23 downto 0);
  signal c_33_18_1_False_shift: signed(23 downto 0);
  signal c_33_18_0_False_resize: signed(23 downto 0);
  signal c_33_18_0_False_shift: signed(23 downto 0);
  signal c_33_3_3_False_resize: signed(23 downto 0);
  signal c_33_3_3_False_shift: signed(23 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(19 downto 0);
  signal c_34_3_0_False_resize: signed(19 downto 0);
  signal c_34_3_0_False_shift: signed(19 downto 0);
  signal c_34_17_0_False_resize: signed(19 downto 0);
  signal c_34_17_0_False_shift: signed(19 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_i0_resize: signed(23 downto 0);
  signal c_35_i1_resize: signed(23 downto 0);
  signal c_35_i0_shift: signed(23 downto 0);
  signal c_35_i1_shift: signed(23 downto 0);
  signal c_35_arith: signed(23 downto 0);
  signal c_35_oshift: signed(23 downto 0);
  signal c_35_sub_sel: std_logic;
  signal c_36: signed(23 downto 0);
  signal c_36_21_0_False_resize: signed(23 downto 0);
  signal c_36_21_0_False_shift: signed(23 downto 0);
  signal c_36_12_0_False_resize: signed(23 downto 0);
  signal c_36_12_0_False_shift: signed(23 downto 0);
  signal c_36_25_0_False_resize: signed(23 downto 0);
  signal c_36_25_0_False_shift: signed(23 downto 0);
  signal c_36_28_0_False_resize: signed(23 downto 0);
  signal c_36_28_0_False_shift: signed(23 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_resize: signed(23 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_35_1_False_resize: signed(23 downto 0);
  signal c_38_35_1_False_shift: signed(23 downto 0);
  signal c_38_6_0_False_resize: signed(23 downto 0);
  signal c_38_6_0_False_shift: signed(23 downto 0);
  signal c_38_35_0_False_resize: signed(23 downto 0);
  signal c_38_35_0_False_shift: signed(23 downto 0);
  signal c_38_28_0_False_resize: signed(23 downto 0);
  signal c_38_28_0_False_shift: signed(23 downto 0);
  signal c_38_sel: std_logic_vector(1 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_resize: signed(23 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_15_0_False_resize: signed(23 downto 0);
  signal c_40_15_0_False_shift: signed(23 downto 0);
  signal c_40_12_2_False_resize: signed(23 downto 0);
  signal c_40_12_2_False_shift: signed(23 downto 0);
  signal c_40_35_0_False_resize: signed(23 downto 0);
  signal c_40_35_0_False_shift: signed(23 downto 0);
  signal c_40_21_1_False_resize: signed(23 downto 0);
  signal c_40_21_1_False_shift: signed(23 downto 0);
  signal c_40_sel: std_logic_vector(1 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_resize: signed(23 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_9_0_False_resize: signed(23 downto 0);
  signal c_42_9_0_False_shift: signed(23 downto 0);
  signal c_42_12_1_False_resize: signed(23 downto 0);
  signal c_42_12_1_False_shift: signed(23 downto 0);
  signal c_42_21_0_False_resize: signed(23 downto 0);
  signal c_42_21_0_False_shift: signed(23 downto 0);
  signal c_42_30_0_False_resize: signed(23 downto 0);
  signal c_42_30_0_False_shift: signed(23 downto 0);
  signal c_42_sel: std_logic_vector(1 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_resize: signed(23 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_12_0_False_resize: signed(23 downto 0);
  signal c_44_12_0_False_shift: signed(23 downto 0);
  signal c_44_9_2_False_resize: signed(23 downto 0);
  signal c_44_9_2_False_shift: signed(23 downto 0);
  signal c_44_21_0_False_resize: signed(23 downto 0);
  signal c_44_21_0_False_shift: signed(23 downto 0);
  signal c_44_6_0_False_resize: signed(23 downto 0);
  signal c_44_6_0_False_shift: signed(23 downto 0);
  signal c_44_sel: std_logic_vector(1 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_resize: signed(23 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_25_0_False_resize: signed(23 downto 0);
  signal c_46_25_0_False_shift: signed(23 downto 0);
  signal c_46_30_0_False_resize: signed(23 downto 0);
  signal c_46_30_0_False_shift: signed(23 downto 0);
  signal c_46_9_2_False_resize: signed(23 downto 0);
  signal c_46_9_2_False_shift: signed(23 downto 0);
  signal c_46_35_0_False_resize: signed(23 downto 0);
  signal c_46_35_0_False_shift: signed(23 downto 0);
  signal c_46_sel: std_logic_vector(1 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_resize: signed(23 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_48_32_0_False_resize: signed(23 downto 0);
  signal c_48_32_0_False_shift: signed(23 downto 0);
  signal c_48_6_1_False_resize: signed(23 downto 0);
  signal c_48_6_1_False_shift: signed(23 downto 0);
  signal c_48_25_1_False_resize: signed(23 downto 0);
  signal c_48_25_1_False_shift: signed(23 downto 0);
  signal c_48_28_0_False_resize: signed(23 downto 0);
  signal c_48_28_0_False_shift: signed(23 downto 0);
  signal c_48_sel: std_logic_vector(1 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_49_resize: signed(23 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_50_9_0_False_resize: signed(23 downto 0);
  signal c_50_9_0_False_shift: signed(23 downto 0);
  signal c_50_32_0_False_resize: signed(23 downto 0);
  signal c_50_32_0_False_shift: signed(23 downto 0);
  signal c_50_30_0_False_resize: signed(23 downto 0);
  signal c_50_30_0_False_shift: signed(23 downto 0);
  signal c_50_15_7_False_resize: signed(23 downto 0);
  signal c_50_15_7_False_shift: signed(23 downto 0);
  signal c_50_sel: std_logic_vector(1 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_51_resize: signed(23 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_52_9_0_False_resize: signed(23 downto 0);
  signal c_52_9_0_False_shift: signed(23 downto 0);
  signal c_52_6_0_False_resize: signed(23 downto 0);
  signal c_52_6_0_False_shift: signed(23 downto 0);
  signal c_52_15_2_False_resize: signed(23 downto 0);
  signal c_52_15_2_False_shift: signed(23 downto 0);
  signal c_52_25_0_False_resize: signed(23 downto 0);
  signal c_52_25_0_False_shift: signed(23 downto 0);
  signal c_52_sel: std_logic_vector(1 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_53_resize: signed(23 downto 0);
  signal c_54: signed(22 downto 0);
  signal c_54_32_1_False_resize: signed(22 downto 0);
  signal c_54_32_1_False_shift: signed(22 downto 0);
  signal c_54_32_0_False_resize: signed(22 downto 0);
  signal c_54_32_0_False_shift: signed(22 downto 0);
  signal c_54_30_4_False_resize: signed(22 downto 0);
  signal c_54_30_4_False_shift: signed(22 downto 0);
  signal c_54_28_1_False_resize: signed(22 downto 0);
  signal c_54_28_1_False_shift: signed(22 downto 0);
  signal c_54_sel: std_logic_vector(1 downto 0);
  signal c_55: signed(22 downto 0);
  signal c_55_resize: signed(22 downto 0);
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
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 2 and associated fundamentals [[10], [6], [6], [6]]
  with config_select_1 select c_2_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
      s_x_i => 3,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_2_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_2_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_2_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 3 and associated fundamentals [[7], [7], [7], [9]]
  with config_select_1 select c_3_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
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
      sub_i => c_3_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[224], [224], [6], [9]]
  c_4_3_0_False_resize <= resize(c_3, 24);
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  c_4_2_0_False_resize <= resize(c_2, 24);
  c_4_2_0_False_shift <= shift_left(c_4_2_0_False_resize, 0);
  c_4_3_5_False_resize <= resize(c_3, 24);
  c_4_3_5_False_shift <= shift_left(c_4_3_5_False_resize, 5);
  with config_select_2 select c_4_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "00" => c_4 <= c_4_3_0_False_shift;
        when "01" => c_4 <= c_4_2_0_False_shift;
        when others => c_4 <= c_4_3_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 5 and associated fundamentals [[10], [1], [96], [144]]
  c_5_1_0_False_resize <= resize(c_1, 24);
  c_5_1_0_False_shift <= shift_left(c_5_1_0_False_resize, 0);
  c_5_3_4_False_resize <= resize(c_3, 24);
  c_5_3_4_False_shift <= shift_left(c_5_3_4_False_resize, 4);
  c_5_2_4_False_resize <= resize(c_2, 24);
  c_5_2_4_False_shift <= shift_left(c_5_2_4_False_resize, 4);
  c_5_2_0_False_resize <= resize(c_2, 24);
  c_5_2_0_False_shift <= shift_left(c_5_2_0_False_resize, 0);
  with config_select_2 select c_5_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_1_0_False_shift;
        when "01" => c_5 <= c_5_3_4_False_shift;
        when "10" => c_5 <= c_5_2_4_False_shift;
        when others => c_5 <= c_5_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 6 and associated fundamentals [[214], [225], [-90], [153]]
  with config_select_3 select c_6_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
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
      sub_i => c_6_sub_sel,
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 7 and associated fundamentals [[7], [32], [64], [9]]
  c_7_3_0_False_resize <= resize(c_3, 22);
  c_7_3_0_False_shift <= shift_left(c_7_3_0_False_resize, 0);
  c_7_1_5_False_resize <= resize(c_1, 22);
  c_7_1_5_False_shift <= shift_left(c_7_1_5_False_resize, 5);
  c_7_1_6_False_resize <= resize(c_1, 22);
  c_7_1_6_False_shift <= shift_left(c_7_1_6_False_resize, 6);
  with config_select_2 select c_7_sel <= 
    "00" when "11",
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_3_0_False_shift;
        when "01" => c_7 <= c_7_1_5_False_shift;
        when others => c_7 <= c_7_1_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 8 and associated fundamentals [[112], [7], [7], [4]]
  c_8_3_4_False_resize <= resize(c_3, 23);
  c_8_3_4_False_shift <= shift_left(c_8_3_4_False_resize, 4);
  c_8_3_0_False_resize <= resize(c_3, 23);
  c_8_3_0_False_shift <= shift_left(c_8_3_0_False_resize, 0);
  c_8_1_2_False_resize <= resize(c_1, 23);
  c_8_1_2_False_shift <= shift_left(c_8_1_2_False_resize, 2);
  with config_select_2 select c_8_sel <= 
    "00" when "00",
    "01" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "00" => c_8 <= c_8_3_4_False_shift;
        when "01" => c_8 <= c_8_3_0_False_shift;
        when others => c_8 <= c_8_1_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 9 and associated fundamentals [[119], [25], [57], [13]]
  with config_select_3 select c_9_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
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
      sub_i => c_9_sub_sel,
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 10 and associated fundamentals [[112], [224], [1], [48]]
  c_10_2_3_False_resize <= resize(c_2, 24);
  c_10_2_3_False_shift <= shift_left(c_10_2_3_False_resize, 3);
  c_10_3_5_False_resize <= resize(c_3, 24);
  c_10_3_5_False_shift <= shift_left(c_10_3_5_False_resize, 5);
  c_10_1_0_False_resize <= resize(c_1, 24);
  c_10_1_0_False_shift <= shift_left(c_10_1_0_False_resize, 0);
  c_10_3_4_False_resize <= resize(c_3, 24);
  c_10_3_4_False_shift <= shift_left(c_10_3_4_False_resize, 4);
  with config_select_2 select c_10_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_2_3_False_shift;
        when "01" => c_10 <= c_10_3_5_False_shift;
        when "10" => c_10 <= c_10_1_0_False_shift;
        when others => c_10 <= c_10_3_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 11 and associated fundamentals [[10], [6], [12], [12]]
  c_11_2_1_False_resize <= c_2;
  c_11_2_1_False_shift <= shift_left(c_11_2_1_False_resize, 1);
  c_11_2_0_False_resize <= c_2;
  c_11_2_0_False_shift <= shift_left(c_11_2_0_False_resize, 0);
  with config_select_2 select c_11_sel <= 
    "0" when "11",
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_2_1_False_shift;
        when others => c_11 <= c_11_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 12 and associated fundamentals [[102], [218], [-11], [36]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 20,
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
  -- node of type 'mux' in stage 2 with id 13 and associated fundamentals [[4], [2048], [2], [6]]
  c_13_1_2_False_resize <= resize(c_1, 27);
  c_13_1_2_False_shift <= shift_left(c_13_1_2_False_resize, 2);
  c_13_1_1_False_resize <= resize(c_1, 27);
  c_13_1_1_False_shift <= shift_left(c_13_1_1_False_resize, 1);
  c_13_1_11_False_resize <= resize(c_1, 27);
  c_13_1_11_False_shift <= shift_left(c_13_1_11_False_resize, 11);
  c_13_2_0_False_resize <= resize(c_2, 27);
  c_13_2_0_False_shift <= shift_left(c_13_2_0_False_resize, 0);
  with config_select_2 select c_13_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_1_2_False_shift;
        when "01" => c_13 <= c_13_1_1_False_shift;
        when "10" => c_13 <= c_13_1_11_False_shift;
        when others => c_13 <= c_13_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 14 and associated fundamentals [[7], [7], [7], [144]]
  c_14_3_0_False_resize <= resize(c_3, 24);
  c_14_3_0_False_shift <= shift_left(c_14_3_0_False_resize, 0);
  c_14_3_4_False_resize <= resize(c_3, 24);
  c_14_3_4_False_shift <= shift_left(c_14_3_4_False_resize, 4);
  with config_select_2 select c_14_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_3_0_False_shift;
        when others => c_14 <= c_14_3_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 15 and associated fundamentals [[23], [8185], [1], [-120]]
  with config_select_3 select c_15_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 24,
      w_o => 24,
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
      sub_i => c_15_sub_sel,
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 16 and associated fundamentals [[60], [68], [68], [68]]
  with config_select_1 select c_16_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 23,
      s_x_i => 6,
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 17 and associated fundamentals [[9], [7], [9], [7]]
  with config_select_1 select c_17_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_17: entity work.adder_node
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
      sub_i => c_17_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 18 and associated fundamentals [[160], [-96], [160], [160]]
  with config_select_1 select c_18_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 24,
      s_x_i => 5,
      s_y_i => 7,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_18_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 19 and associated fundamentals [[51], [75], [59], [75]]
  with config_select_2 select c_19_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_19_sub_sel,
      x_i => c_16,
      y_i => c_17,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 20 and associated fundamentals [[16], [7], [16], [8]]
  c_20_1_4_False_resize <= resize(c_1, 20);
  c_20_1_4_False_shift <= shift_left(c_20_1_4_False_resize, 4);
  c_20_1_3_False_resize <= resize(c_1, 20);
  c_20_1_3_False_shift <= shift_left(c_20_1_3_False_resize, 3);
  c_20_3_0_False_resize <= c_3;
  c_20_3_0_False_shift <= shift_left(c_20_3_0_False_resize, 0);
  with config_select_2 select c_20_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_1_4_False_shift;
        when "01" => c_20 <= c_20_1_3_False_shift;
        when others => c_20 <= c_20_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 21 and associated fundamentals [[-77], [131], [187], [139]]
  with config_select_3 select c_21_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 20,
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
      sub_i => c_21_sub_sel,
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 22 and associated fundamentals [[8], [2], [256], [1]]
  c_22_0_1_False_resize <= resize(c_0, 24);
  c_22_0_1_False_shift <= shift_left(c_22_0_1_False_resize, 1);
  c_22_0_0_False_resize <= resize(c_0, 24);
  c_22_0_0_False_shift <= shift_left(c_22_0_0_False_resize, 0);
  c_22_0_3_False_resize <= resize(c_0, 24);
  c_22_0_3_False_shift <= shift_left(c_22_0_3_False_resize, 3);
  c_22_0_8_False_resize <= resize(c_0, 24);
  c_22_0_8_False_shift <= shift_left(c_22_0_8_False_resize, 8);
  with config_select_1 select c_22_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_0_1_False_shift;
        when "01" => c_22 <= c_22_0_0_False_shift;
        when "10" => c_22 <= c_22_0_3_False_shift;
        when others => c_22 <= c_22_0_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 23 and associated fundamentals [[-12], [-10], [244], [13]]
  with config_select_2 select c_23_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 20,
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
      sub_i => c_23_sub_sel,
      x_i => c_22,
      y_i => c_2,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 24 and associated fundamentals [[20], [-96], [68], [1]]
  c_24_16_0_False_resize <= c_16;
  c_24_16_0_False_shift <= shift_left(c_24_16_0_False_resize, 0);
  c_24_2_1_False_resize <= resize(c_2, 23);
  c_24_2_1_False_shift <= shift_left(c_24_2_1_False_resize, 1);
  c_24_1_0_False_resize <= resize(c_1, 23);
  c_24_1_0_False_shift <= shift_left(c_24_1_0_False_resize, 0);
  c_24_18_0_False_resize <= c_18(22 downto 0);
  c_24_18_0_False_shift <= shift_left(c_24_18_0_False_resize, 0);
  with config_select_2 select c_24_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_16_0_False_shift;
        when "01" => c_24 <= c_24_2_1_False_shift;
        when "10" => c_24 <= c_24_1_0_False_shift;
        when others => c_24 <= c_24_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 25 and associated fundamentals [[91], [-117], [195], [73]]
  with config_select_3 select c_25_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_25: entity work.adder_node
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
      sub_i => c_25_sub_sel,
      x_i => c_19,
      y_i => c_24,
      z_o => c_25_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 26 and associated fundamentals [[9], [32], [224], [9]]
  c_26_3_0_False_resize <= resize(c_3, 24);
  c_26_3_0_False_shift <= shift_left(c_26_3_0_False_resize, 0);
  c_26_1_5_False_resize <= resize(c_1, 24);
  c_26_1_5_False_shift <= shift_left(c_26_1_5_False_resize, 5);
  c_26_17_0_False_resize <= resize(c_17, 24);
  c_26_17_0_False_shift <= shift_left(c_26_17_0_False_resize, 0);
  c_26_3_5_False_resize <= resize(c_3, 24);
  c_26_3_5_False_shift <= shift_left(c_26_3_5_False_resize, 5);
  with config_select_2 select c_26_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "00" => c_26 <= c_26_3_0_False_shift;
        when "01" => c_26 <= c_26_1_5_False_shift;
        when "10" => c_26 <= c_26_17_0_False_shift;
        when others => c_26 <= c_26_3_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 27 and associated fundamentals [[240], [1], [1], [48]]
  c_27_2_3_False_resize <= resize(c_2, 24);
  c_27_2_3_False_shift <= shift_left(c_27_2_3_False_resize, 3);
  c_27_1_0_False_resize <= resize(c_1, 24);
  c_27_1_0_False_shift <= shift_left(c_27_1_0_False_resize, 0);
  c_27_16_2_False_resize <= resize(c_16, 24);
  c_27_16_2_False_shift <= shift_left(c_27_16_2_False_resize, 2);
  with config_select_2 select c_27_sel <= 
    "00" when "11",
    "01" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "00" => c_27 <= c_27_2_3_False_shift;
        when "01" => c_27 <= c_27_1_0_False_shift;
        when others => c_27 <= c_27_16_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 28 and associated fundamentals [[-231], [33], [223], [-39]]
  with config_select_3 select c_28_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_28: entity work.adder_node
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
  -- node of type 'mux' in stage 2 with id 29 and associated fundamentals [[9], [8], [384], [224]]
  c_29_1_3_False_resize <= resize(c_1, 25);
  c_29_1_3_False_shift <= shift_left(c_29_1_3_False_resize, 3);
  c_29_17_0_False_resize <= resize(c_17, 25);
  c_29_17_0_False_shift <= shift_left(c_29_17_0_False_resize, 0);
  c_29_2_6_False_resize <= resize(c_2, 25);
  c_29_2_6_False_shift <= shift_left(c_29_2_6_False_resize, 6);
  c_29_17_5_False_resize <= resize(c_17, 25);
  c_29_17_5_False_shift <= shift_left(c_29_17_5_False_resize, 5);
  with config_select_2 select c_29_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "00" => c_29 <= c_29_1_3_False_shift;
        when "01" => c_29 <= c_29_17_0_False_shift;
        when "10" => c_29 <= c_29_2_6_False_shift;
        when others => c_29 <= c_29_17_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 30 and associated fundamentals [[-3], [18], [140], [237]]
  with config_select_3 select c_30_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      x_i => c_29,
      y_i => c_23,
      z_o => c_30_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_30_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 31 and associated fundamentals [[10], [6], [896], [7]]
  c_31_17_0_False_resize <= resize(c_17, 26);
  c_31_17_0_False_shift <= shift_left(c_31_17_0_False_resize, 0);
  c_31_3_7_False_resize <= resize(c_3, 26);
  c_31_3_7_False_shift <= shift_left(c_31_3_7_False_resize, 7);
  c_31_2_0_False_resize <= resize(c_2, 26);
  c_31_2_0_False_shift <= shift_left(c_31_2_0_False_resize, 0);
  with config_select_2 select c_31_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "00" => c_31 <= c_31_17_0_False_shift;
        when "01" => c_31 <= c_31_3_7_False_shift;
        when others => c_31 <= c_31_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 32 and associated fundamentals [[58], [-34], [-80], [-45]]
  with config_select_3 select c_32_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_32: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
      w_o => 23,
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
      sub_i => c_32_sub_sel,
      x_i => c_31,
      y_i => c_23,
      z_o => c_32_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_32_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 33 and associated fundamentals [[160], [-192], [56], [72]]
  c_33_18_1_False_resize <= c_18;
  c_33_18_1_False_shift <= shift_left(c_33_18_1_False_resize, 1);
  c_33_18_0_False_resize <= c_18;
  c_33_18_0_False_shift <= shift_left(c_33_18_0_False_resize, 0);
  c_33_3_3_False_resize <= resize(c_3, 24);
  c_33_3_3_False_shift <= shift_left(c_33_3_3_False_resize, 3);
  with config_select_2 select c_33_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "00" => c_33 <= c_33_18_1_False_shift;
        when "01" => c_33 <= c_33_18_0_False_shift;
        when others => c_33 <= c_33_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 34 and associated fundamentals [[9], [7], [9], [9]]
  c_34_3_0_False_resize <= c_3;
  c_34_3_0_False_shift <= shift_left(c_34_3_0_False_resize, 0);
  c_34_17_0_False_resize <= c_17;
  c_34_17_0_False_shift <= shift_left(c_34_17_0_False_resize, 0);
  with config_select_2 select c_34_sel <= 
    "0" when "11",
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_3_0_False_shift;
        when others => c_34 <= c_34_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 35 and associated fundamentals [[169], [-199], [65], [81]]
  with config_select_3 select c_35_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_35: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 20,
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
      sub_i => c_35_sub_sel,
      x_i => c_33,
      y_i => c_34,
      z_o => c_35_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_35_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 36 and associated fundamentals [[91], [218], [223], [139]]
  c_36_21_0_False_resize <= c_21;
  c_36_21_0_False_shift <= shift_left(c_36_21_0_False_resize, 0);
  c_36_12_0_False_resize <= c_12;
  c_36_12_0_False_shift <= shift_left(c_36_12_0_False_resize, 0);
  c_36_25_0_False_resize <= c_25;
  c_36_25_0_False_shift <= shift_left(c_36_25_0_False_resize, 0);
  c_36_28_0_False_resize <= c_28;
  c_36_28_0_False_shift <= shift_left(c_36_28_0_False_resize, 0);
  with config_select_4 select c_36_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "00" => c_36 <= c_36_21_0_False_shift;
        when "01" => c_36 <= c_36_12_0_False_shift;
        when "10" => c_36 <= c_36_25_0_False_shift;
        when others => c_36 <= c_36_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 37 and associated fundamentals [[91], [218], [223], [139]]
  c_37_resize <= c_36;
  c_37 <= shift_left(c_37_resize, 0);
  -- node of type 'mux' in stage 4 with id 38 and associated fundamentals [[214], [33], [65], [162]]
  c_38_35_1_False_resize <= c_35;
  c_38_35_1_False_shift <= shift_left(c_38_35_1_False_resize, 1);
  c_38_6_0_False_resize <= c_6;
  c_38_6_0_False_shift <= shift_left(c_38_6_0_False_resize, 0);
  c_38_35_0_False_resize <= c_35;
  c_38_35_0_False_shift <= shift_left(c_38_35_0_False_resize, 0);
  c_38_28_0_False_resize <= c_28;
  c_38_28_0_False_shift <= shift_left(c_38_28_0_False_resize, 0);
  with config_select_4 select c_38_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "00" => c_38 <= c_38_35_1_False_shift;
        when "01" => c_38 <= c_38_6_0_False_shift;
        when "10" => c_38 <= c_38_35_0_False_shift;
        when others => c_38 <= c_38_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 39 and associated fundamentals [[214], [33], [65], [162]]
  c_39_resize <= c_38;
  c_39 <= shift_left(c_39_resize, 0);
  -- node of type 'mux' in stage 4 with id 40 and associated fundamentals [[-154], [-199], [-44], [-120]]
  c_40_15_0_False_resize <= c_15;
  c_40_15_0_False_shift <= shift_left(c_40_15_0_False_resize, 0);
  c_40_12_2_False_resize <= c_12;
  c_40_12_2_False_shift <= shift_left(c_40_12_2_False_resize, 2);
  c_40_35_0_False_resize <= c_35;
  c_40_35_0_False_shift <= shift_left(c_40_35_0_False_resize, 0);
  c_40_21_1_False_resize <= c_21;
  c_40_21_1_False_shift <= shift_left(c_40_21_1_False_resize, 1);
  with config_select_4 select c_40_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "00" => c_40 <= c_40_15_0_False_shift;
        when "01" => c_40 <= c_40_12_2_False_shift;
        when "10" => c_40 <= c_40_35_0_False_shift;
        when others => c_40 <= c_40_21_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 41 and associated fundamentals [[154], [199], [44], [120]]
  c_41_resize <= c_40;
  c_41 <= -shift_left(c_41_resize, 0);
  -- node of type 'mux' in stage 4 with id 42 and associated fundamentals [[119], [131], [140], [72]]
  c_42_9_0_False_resize <= resize(c_9, 24);
  c_42_9_0_False_shift <= shift_left(c_42_9_0_False_resize, 0);
  c_42_12_1_False_resize <= c_12;
  c_42_12_1_False_shift <= shift_left(c_42_12_1_False_resize, 1);
  c_42_21_0_False_resize <= c_21;
  c_42_21_0_False_shift <= shift_left(c_42_21_0_False_resize, 0);
  c_42_30_0_False_resize <= c_30;
  c_42_30_0_False_shift <= shift_left(c_42_30_0_False_resize, 0);
  with config_select_4 select c_42_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "00" => c_42 <= c_42_9_0_False_shift;
        when "01" => c_42 <= c_42_12_1_False_shift;
        when "10" => c_42 <= c_42_21_0_False_shift;
        when others => c_42 <= c_42_30_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 43 and associated fundamentals [[119], [131], [140], [72]]
  c_43_resize <= c_42;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'mux' in stage 4 with id 44 and associated fundamentals [[102], [100], [187], [153]]
  c_44_12_0_False_resize <= c_12;
  c_44_12_0_False_shift <= shift_left(c_44_12_0_False_resize, 0);
  c_44_9_2_False_resize <= resize(c_9, 24);
  c_44_9_2_False_shift <= shift_left(c_44_9_2_False_resize, 2);
  c_44_21_0_False_resize <= c_21;
  c_44_21_0_False_shift <= shift_left(c_44_21_0_False_resize, 0);
  c_44_6_0_False_resize <= c_6;
  c_44_6_0_False_shift <= shift_left(c_44_6_0_False_resize, 0);
  with config_select_4 select c_44_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "00" => c_44 <= c_44_12_0_False_shift;
        when "01" => c_44 <= c_44_9_2_False_shift;
        when "10" => c_44 <= c_44_21_0_False_shift;
        when others => c_44 <= c_44_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 45 and associated fundamentals [[102], [100], [187], [153]]
  c_45_resize <= c_44;
  c_45 <= shift_left(c_45_resize, 0);
  -- node of type 'mux' in stage 4 with id 46 and associated fundamentals [[169], [18], [195], [52]]
  c_46_25_0_False_resize <= c_25;
  c_46_25_0_False_shift <= shift_left(c_46_25_0_False_resize, 0);
  c_46_30_0_False_resize <= c_30;
  c_46_30_0_False_shift <= shift_left(c_46_30_0_False_resize, 0);
  c_46_9_2_False_resize <= resize(c_9, 24);
  c_46_9_2_False_shift <= shift_left(c_46_9_2_False_resize, 2);
  c_46_35_0_False_resize <= c_35;
  c_46_35_0_False_shift <= shift_left(c_46_35_0_False_resize, 0);
  with config_select_4 select c_46_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "00" => c_46 <= c_46_25_0_False_shift;
        when "01" => c_46 <= c_46_30_0_False_shift;
        when "10" => c_46 <= c_46_9_2_False_shift;
        when others => c_46 <= c_46_35_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 47 and associated fundamentals [[169], [18], [195], [52]]
  c_47_resize <= c_46;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'mux' in stage 4 with id 48 and associated fundamentals [[-231], [-234], [-180], [-45]]
  c_48_32_0_False_resize <= resize(c_32, 24);
  c_48_32_0_False_shift <= shift_left(c_48_32_0_False_resize, 0);
  c_48_6_1_False_resize <= c_6;
  c_48_6_1_False_shift <= shift_left(c_48_6_1_False_resize, 1);
  c_48_25_1_False_resize <= c_25;
  c_48_25_1_False_shift <= shift_left(c_48_25_1_False_resize, 1);
  c_48_28_0_False_resize <= c_28;
  c_48_28_0_False_shift <= shift_left(c_48_28_0_False_resize, 0);
  with config_select_4 select c_48_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "00" => c_48 <= c_48_32_0_False_shift;
        when "01" => c_48 <= c_48_6_1_False_shift;
        when "10" => c_48 <= c_48_25_1_False_shift;
        when others => c_48 <= c_48_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 49 and associated fundamentals [[231], [234], [180], [45]]
  c_49_resize <= c_48;
  c_49 <= -shift_left(c_49_resize, 0);
  -- node of type 'mux' in stage 4 with id 50 and associated fundamentals [[58], [25], [128], [237]]
  c_50_9_0_False_resize <= resize(c_9, 24);
  c_50_9_0_False_shift <= shift_left(c_50_9_0_False_resize, 0);
  c_50_32_0_False_resize <= resize(c_32, 24);
  c_50_32_0_False_shift <= shift_left(c_50_32_0_False_resize, 0);
  c_50_30_0_False_resize <= c_30;
  c_50_30_0_False_shift <= shift_left(c_50_30_0_False_resize, 0);
  c_50_15_7_False_resize <= c_15;
  c_50_15_7_False_shift <= shift_left(c_50_15_7_False_resize, 7);
  with config_select_4 select c_50_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_50_sel is
        when "00" => c_50 <= c_50_9_0_False_shift;
        when "01" => c_50 <= c_50_32_0_False_shift;
        when "10" => c_50 <= c_50_30_0_False_shift;
        when others => c_50 <= c_50_15_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 51 and associated fundamentals [[58], [25], [128], [237]]
  c_51_resize <= c_50;
  c_51 <= shift_left(c_51_resize, 0);
  -- node of type 'mux' in stage 4 with id 52 and associated fundamentals [[92], [225], [57], [73]]
  c_52_9_0_False_resize <= resize(c_9, 24);
  c_52_9_0_False_shift <= shift_left(c_52_9_0_False_resize, 0);
  c_52_6_0_False_resize <= c_6;
  c_52_6_0_False_shift <= shift_left(c_52_6_0_False_resize, 0);
  c_52_15_2_False_resize <= c_15;
  c_52_15_2_False_shift <= shift_left(c_52_15_2_False_resize, 2);
  c_52_25_0_False_resize <= c_25;
  c_52_25_0_False_shift <= shift_left(c_52_25_0_False_resize, 0);
  with config_select_4 select c_52_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_52_sel is
        when "00" => c_52 <= c_52_9_0_False_shift;
        when "01" => c_52 <= c_52_6_0_False_shift;
        when "10" => c_52 <= c_52_15_2_False_shift;
        when others => c_52 <= c_52_25_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 53 and associated fundamentals [[92], [225], [57], [73]]
  c_53_resize <= c_52;
  c_53 <= shift_left(c_53_resize, 0);
  -- node of type 'mux' in stage 4 with id 54 and associated fundamentals [[-48], [-68], [-80], [-78]]
  c_54_32_1_False_resize <= c_32;
  c_54_32_1_False_shift <= shift_left(c_54_32_1_False_resize, 1);
  c_54_32_0_False_resize <= c_32;
  c_54_32_0_False_shift <= shift_left(c_54_32_0_False_resize, 0);
  c_54_30_4_False_resize <= c_30(22 downto 0);
  c_54_30_4_False_shift <= shift_left(c_54_30_4_False_resize, 4);
  c_54_28_1_False_resize <= c_28(22 downto 0);
  c_54_28_1_False_shift <= shift_left(c_54_28_1_False_resize, 1);
  with config_select_4 select c_54_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_54_sel is
        when "00" => c_54 <= c_54_32_1_False_shift;
        when "01" => c_54 <= c_54_32_0_False_shift;
        when "10" => c_54 <= c_54_30_4_False_shift;
        when others => c_54 <= c_54_28_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 55 and associated fundamentals [[48], [68], [80], [78]]
  c_55_resize <= c_54;
  c_55 <= -shift_left(c_55_resize, 0);
end architecture;
