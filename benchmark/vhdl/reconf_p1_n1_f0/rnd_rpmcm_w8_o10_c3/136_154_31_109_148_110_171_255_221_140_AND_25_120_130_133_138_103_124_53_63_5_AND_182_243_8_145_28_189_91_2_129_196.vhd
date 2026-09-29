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
  signal c_1: signed(17 downto 0);
  signal c_1_0_0_False_resize: signed(17 downto 0);
  signal c_1_0_0_False_shift: signed(17 downto 0);
  signal c_1_0_2_False_resize: signed(17 downto 0);
  signal c_1_0_2_False_shift: signed(17 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(19 downto 0);
  signal c_4_0_4_False_resize: signed(19 downto 0);
  signal c_4_0_4_False_shift: signed(19 downto 0);
  signal c_4_0_1_False_resize: signed(19 downto 0);
  signal c_4_0_1_False_shift: signed(19 downto 0);
  signal c_4_0_0_False_resize: signed(19 downto 0);
  signal c_4_0_0_False_shift: signed(19 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(18 downto 0);
  signal c_5_0_0_False_resize: signed(18 downto 0);
  signal c_5_0_0_False_shift: signed(18 downto 0);
  signal c_5_0_3_False_resize: signed(18 downto 0);
  signal c_5_0_3_False_shift: signed(18 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(19 downto 0);
  signal c_6_i0_resize: signed(19 downto 0);
  signal c_6_i1_resize: signed(19 downto 0);
  signal c_6_i0_shift: signed(19 downto 0);
  signal c_6_i1_shift: signed(19 downto 0);
  signal c_6_arith: signed(19 downto 0);
  signal c_6_oshift: signed(19 downto 0);
  signal c_7: signed(21 downto 0);
  signal c_7_0_0_False_resize: signed(21 downto 0);
  signal c_7_0_0_False_shift: signed(21 downto 0);
  signal c_7_0_6_False_resize: signed(21 downto 0);
  signal c_7_0_6_False_shift: signed(21 downto 0);
  signal c_7_0_2_False_resize: signed(21 downto 0);
  signal c_7_0_2_False_shift: signed(21 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(19 downto 0);
  signal c_8_0_0_False_resize: signed(19 downto 0);
  signal c_8_0_0_False_shift: signed(19 downto 0);
  signal c_8_0_1_False_resize: signed(19 downto 0);
  signal c_8_0_1_False_shift: signed(19 downto 0);
  signal c_8_0_4_False_resize: signed(19 downto 0);
  signal c_8_0_4_False_shift: signed(19 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(20 downto 0);
  signal c_10_9_0_False_resize: signed(20 downto 0);
  signal c_10_9_0_False_shift: signed(20 downto 0);
  signal c_10_6_2_False_resize: signed(20 downto 0);
  signal c_10_6_2_False_shift: signed(20 downto 0);
  signal c_10_6_0_False_resize: signed(20 downto 0);
  signal c_10_6_0_False_shift: signed(20 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(19 downto 0);
  signal c_11_6_1_False_resize: signed(19 downto 0);
  signal c_11_6_1_False_shift: signed(19 downto 0);
  signal c_11_9_0_False_resize: signed(19 downto 0);
  signal c_11_9_0_False_shift: signed(19 downto 0);
  signal c_11_6_3_False_resize: signed(19 downto 0);
  signal c_11_6_3_False_shift: signed(19 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_i0_resize: signed(23 downto 0);
  signal c_12_i1_resize: signed(23 downto 0);
  signal c_12_i0_shift: signed(23 downto 0);
  signal c_12_i1_shift: signed(23 downto 0);
  signal c_12_arith: signed(23 downto 0);
  signal c_12_oshift: signed(23 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(20 downto 0);
  signal c_13_0_0_False_resize: signed(20 downto 0);
  signal c_13_0_0_False_shift: signed(20 downto 0);
  signal c_13_0_5_False_resize: signed(20 downto 0);
  signal c_13_0_5_False_shift: signed(20 downto 0);
  signal c_13_0_3_False_resize: signed(20 downto 0);
  signal c_13_0_3_False_shift: signed(20 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(16 downto 0);
  signal c_14_0_0_False_resize: signed(16 downto 0);
  signal c_14_0_0_False_shift: signed(16 downto 0);
  signal c_14_0_1_False_resize: signed(16 downto 0);
  signal c_14_0_1_False_shift: signed(16 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(20 downto 0);
  signal c_15_i0_resize: signed(20 downto 0);
  signal c_15_i1_resize: signed(20 downto 0);
  signal c_15_i0_shift: signed(20 downto 0);
  signal c_15_i1_shift: signed(20 downto 0);
  signal c_15_arith: signed(20 downto 0);
  signal c_15_oshift: signed(20 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(22 downto 0);
  signal c_16_6_1_False_resize: signed(22 downto 0);
  signal c_16_6_1_False_shift: signed(22 downto 0);
  signal c_16_3_0_False_resize: signed(22 downto 0);
  signal c_16_3_0_False_shift: signed(22 downto 0);
  signal c_16_6_4_False_resize: signed(22 downto 0);
  signal c_16_6_4_False_shift: signed(22 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(18 downto 0);
  signal c_17_15_1_False_resize: signed(18 downto 0);
  signal c_17_15_1_False_shift: signed(18 downto 0);
  signal c_17_6_0_False_resize: signed(18 downto 0);
  signal c_17_6_0_False_shift: signed(18 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_i0_resize: signed(23 downto 0);
  signal c_18_i1_resize: signed(23 downto 0);
  signal c_18_i0_shift: signed(23 downto 0);
  signal c_18_i1_shift: signed(23 downto 0);
  signal c_18_arith: signed(23 downto 0);
  signal c_18_oshift: signed(23 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(22 downto 0);
  signal c_19_15_3_False_resize: signed(22 downto 0);
  signal c_19_15_3_False_shift: signed(22 downto 0);
  signal c_19_15_2_False_resize: signed(22 downto 0);
  signal c_19_15_2_False_shift: signed(22 downto 0);
  signal c_19_6_0_False_resize: signed(22 downto 0);
  signal c_19_6_0_False_shift: signed(22 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_15_6_False_resize: signed(25 downto 0);
  signal c_20_15_6_False_shift: signed(25 downto 0);
  signal c_20_3_0_False_resize: signed(25 downto 0);
  signal c_20_3_0_False_shift: signed(25 downto 0);
  signal c_20_15_7_False_resize: signed(25 downto 0);
  signal c_20_15_7_False_shift: signed(25 downto 0);
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
  signal c_22_3_2_False_resize: signed(23 downto 0);
  signal c_22_3_2_False_shift: signed(23 downto 0);
  signal c_22_15_5_False_resize: signed(23 downto 0);
  signal c_22_15_5_False_shift: signed(23 downto 0);
  signal c_22_15_0_False_resize: signed(23 downto 0);
  signal c_22_15_0_False_shift: signed(23 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(21 downto 0);
  signal c_23_15_0_False_resize: signed(21 downto 0);
  signal c_23_15_0_False_shift: signed(21 downto 0);
  signal c_23_6_1_False_resize: signed(21 downto 0);
  signal c_23_6_1_False_shift: signed(21 downto 0);
  signal c_23_15_1_False_resize: signed(21 downto 0);
  signal c_23_15_1_False_shift: signed(21 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_i0_resize: signed(23 downto 0);
  signal c_24_i1_resize: signed(23 downto 0);
  signal c_24_i0_shift: signed(23 downto 0);
  signal c_24_i1_shift: signed(23 downto 0);
  signal c_24_arith: signed(23 downto 0);
  signal c_24_oshift: signed(23 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(23 downto 0);
  signal c_25_15_2_False_resize: signed(23 downto 0);
  signal c_25_15_2_False_shift: signed(23 downto 0);
  signal c_25_15_0_False_resize: signed(23 downto 0);
  signal c_25_15_0_False_shift: signed(23 downto 0);
  signal c_25_15_4_False_resize: signed(23 downto 0);
  signal c_25_15_4_False_shift: signed(23 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(19 downto 0);
  signal c_26_6_1_False_resize: signed(19 downto 0);
  signal c_26_6_1_False_shift: signed(19 downto 0);
  signal c_26_6_0_False_resize: signed(19 downto 0);
  signal c_26_6_0_False_shift: signed(19 downto 0);
  signal c_26_15_2_False_resize: signed(19 downto 0);
  signal c_26_15_2_False_shift: signed(19 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_i0_resize: signed(23 downto 0);
  signal c_27_i1_resize: signed(23 downto 0);
  signal c_27_i0_shift: signed(23 downto 0);
  signal c_27_i1_shift: signed(23 downto 0);
  signal c_27_arith: signed(23 downto 0);
  signal c_27_oshift: signed(23 downto 0);
  signal c_28: signed(20 downto 0);
  signal c_28_9_0_False_resize: signed(20 downto 0);
  signal c_28_9_0_False_shift: signed(20 downto 0);
  signal c_28_9_1_False_resize: signed(20 downto 0);
  signal c_28_9_1_False_shift: signed(20 downto 0);
  signal c_28_3_1_False_resize: signed(20 downto 0);
  signal c_28_3_1_False_shift: signed(20 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_6_0_False_resize: signed(23 downto 0);
  signal c_29_6_0_False_shift: signed(23 downto 0);
  signal c_29_9_4_False_resize: signed(23 downto 0);
  signal c_29_9_4_False_shift: signed(23 downto 0);
  signal c_29_15_7_False_resize: signed(23 downto 0);
  signal c_29_15_7_False_shift: signed(23 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_i0_resize: signed(23 downto 0);
  signal c_30_i1_resize: signed(23 downto 0);
  signal c_30_i0_shift: signed(23 downto 0);
  signal c_30_i1_shift: signed(23 downto 0);
  signal c_30_arith: signed(23 downto 0);
  signal c_30_oshift: signed(23 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_i0_resize: signed(23 downto 0);
  signal c_31_i1_resize: signed(23 downto 0);
  signal c_31_i0_shift: signed(23 downto 0);
  signal c_31_i1_shift: signed(23 downto 0);
  signal c_31_arith: signed(23 downto 0);
  signal c_31_oshift: signed(23 downto 0);
  signal c_31_sub_sel: std_logic;
  signal c_32: signed(22 downto 0);
  signal c_32_3_1_False_resize: signed(22 downto 0);
  signal c_32_3_1_False_shift: signed(22 downto 0);
  signal c_32_15_0_False_resize: signed(22 downto 0);
  signal c_32_15_0_False_shift: signed(22 downto 0);
  signal c_32_6_3_False_resize: signed(22 downto 0);
  signal c_32_6_3_False_shift: signed(22 downto 0);
  signal c_32_sel: std_logic_vector(1 downto 0);
  signal c_33: signed(21 downto 0);
  signal c_33_6_1_False_resize: signed(21 downto 0);
  signal c_33_6_1_False_shift: signed(21 downto 0);
  signal c_33_3_0_False_resize: signed(21 downto 0);
  signal c_33_3_0_False_shift: signed(21 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_i0_resize: signed(23 downto 0);
  signal c_34_i1_resize: signed(23 downto 0);
  signal c_34_i0_shift: signed(23 downto 0);
  signal c_34_i1_shift: signed(23 downto 0);
  signal c_34_arith: signed(23 downto 0);
  signal c_34_oshift: signed(23 downto 0);
  signal c_34_sub_sel: std_logic;
  signal c_35: signed(22 downto 0);
  signal c_35_3_1_False_resize: signed(22 downto 0);
  signal c_35_3_1_False_shift: signed(22 downto 0);
  signal c_35_3_0_False_resize: signed(22 downto 0);
  signal c_35_3_0_False_shift: signed(22 downto 0);
  signal c_35_6_0_False_resize: signed(22 downto 0);
  signal c_35_6_0_False_shift: signed(22 downto 0);
  signal c_35_sel: std_logic_vector(1 downto 0);
  signal c_36: signed(21 downto 0);
  signal c_36_3_1_False_resize: signed(21 downto 0);
  signal c_36_3_1_False_shift: signed(21 downto 0);
  signal c_36_15_0_False_resize: signed(21 downto 0);
  signal c_36_15_0_False_shift: signed(21 downto 0);
  signal c_36_9_1_False_resize: signed(21 downto 0);
  signal c_36_9_1_False_shift: signed(21 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_i0_resize: signed(23 downto 0);
  signal c_37_i1_resize: signed(23 downto 0);
  signal c_37_i0_shift: signed(23 downto 0);
  signal c_37_i1_shift: signed(23 downto 0);
  signal c_37_arith: signed(23 downto 0);
  signal c_37_oshift: signed(23 downto 0);
  signal c_37_sub_sel: std_logic;
  signal c_38: signed(23 downto 0);
  signal c_38_i0_resize: signed(23 downto 0);
  signal c_38_i1_resize: signed(23 downto 0);
  signal c_38_i0_shift: signed(23 downto 0);
  signal c_38_i1_shift: signed(23 downto 0);
  signal c_38_arith: signed(23 downto 0);
  signal c_38_oshift: signed(23 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_15_0_False_resize: signed(23 downto 0);
  signal c_39_15_0_False_shift: signed(23 downto 0);
  signal c_39_6_5_False_resize: signed(23 downto 0);
  signal c_39_6_5_False_shift: signed(23 downto 0);
  signal c_39_9_0_False_resize: signed(23 downto 0);
  signal c_39_9_0_False_shift: signed(23 downto 0);
  signal c_39_sel: std_logic_vector(1 downto 0);
  signal c_40: signed(22 downto 0);
  signal c_40_15_6_False_resize: signed(22 downto 0);
  signal c_40_15_6_False_shift: signed(22 downto 0);
  signal c_40_6_1_False_resize: signed(22 downto 0);
  signal c_40_6_1_False_shift: signed(22 downto 0);
  signal c_40_15_0_False_resize: signed(22 downto 0);
  signal c_40_15_0_False_shift: signed(22 downto 0);
  signal c_40_sel: std_logic_vector(1 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_i0_resize: signed(23 downto 0);
  signal c_41_i1_resize: signed(23 downto 0);
  signal c_41_i0_shift: signed(23 downto 0);
  signal c_41_i1_shift: signed(23 downto 0);
  signal c_41_arith: signed(23 downto 0);
  signal c_41_oshift: signed(23 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_34_3_False_resize: signed(23 downto 0);
  signal c_42_34_3_False_shift: signed(23 downto 0);
  signal c_42_37_0_False_resize: signed(23 downto 0);
  signal c_42_37_0_False_shift: signed(23 downto 0);
  signal c_42_18_0_False_resize: signed(23 downto 0);
  signal c_42_18_0_False_shift: signed(23 downto 0);
  signal c_42_sel: std_logic_vector(1 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_resize: signed(23 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_37_1_False_resize: signed(23 downto 0);
  signal c_44_37_1_False_shift: signed(23 downto 0);
  signal c_44_24_0_False_resize: signed(23 downto 0);
  signal c_44_24_0_False_shift: signed(23 downto 0);
  signal c_44_21_0_False_resize: signed(23 downto 0);
  signal c_44_21_0_False_shift: signed(23 downto 0);
  signal c_44_sel: std_logic_vector(1 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_resize: signed(23 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_18_2_False_resize: signed(23 downto 0);
  signal c_46_18_2_False_shift: signed(23 downto 0);
  signal c_46_12_1_False_resize: signed(23 downto 0);
  signal c_46_12_1_False_shift: signed(23 downto 0);
  signal c_46_24_0_False_resize: signed(23 downto 0);
  signal c_46_24_0_False_shift: signed(23 downto 0);
  signal c_46_sel: std_logic_vector(1 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_resize: signed(23 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_48_30_0_False_resize: signed(23 downto 0);
  signal c_48_30_0_False_shift: signed(23 downto 0);
  signal c_48_27_0_False_resize: signed(23 downto 0);
  signal c_48_27_0_False_shift: signed(23 downto 0);
  signal c_48_21_0_False_resize: signed(23 downto 0);
  signal c_48_21_0_False_shift: signed(23 downto 0);
  signal c_48_sel: std_logic_vector(1 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_49_resize: signed(23 downto 0);
  signal c_50: signed(22 downto 0);
  signal c_50_30_1_False_resize: signed(22 downto 0);
  signal c_50_30_1_False_shift: signed(22 downto 0);
  signal c_50_41_1_False_resize: signed(22 downto 0);
  signal c_50_41_1_False_shift: signed(22 downto 0);
  signal c_50_41_0_False_resize: signed(22 downto 0);
  signal c_50_41_0_False_shift: signed(22 downto 0);
  signal c_50_sel: std_logic_vector(1 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_51_resize: signed(23 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_52_27_0_False_resize: signed(23 downto 0);
  signal c_52_27_0_False_shift: signed(23 downto 0);
  signal c_52_34_0_False_resize: signed(23 downto 0);
  signal c_52_34_0_False_shift: signed(23 downto 0);
  signal c_52_sel: std_logic_vector(0 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_53_resize: signed(23 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_54_resize: signed(23 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_55_18_0_False_resize: signed(23 downto 0);
  signal c_55_18_0_False_shift: signed(23 downto 0);
  signal c_55_37_0_False_resize: signed(23 downto 0);
  signal c_55_37_0_False_shift: signed(23 downto 0);
  signal c_55_41_0_False_resize: signed(23 downto 0);
  signal c_55_41_0_False_shift: signed(23 downto 0);
  signal c_55_sel: std_logic_vector(1 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_56_resize: signed(23 downto 0);
  signal c_57: signed(23 downto 0);
  signal c_57_resize: signed(23 downto 0);
  signal c_58: signed(23 downto 0);
  signal c_58_27_0_False_resize: signed(23 downto 0);
  signal c_58_27_0_False_shift: signed(23 downto 0);
  signal c_58_18_0_False_resize: signed(23 downto 0);
  signal c_58_18_0_False_shift: signed(23 downto 0);
  signal c_58_30_0_False_resize: signed(23 downto 0);
  signal c_58_30_0_False_shift: signed(23 downto 0);
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
  -- output node 6 with id 54
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_54);
    end if;
  end process;
  -- output node 7 with id 56
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_56);
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
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [1], [4]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[15], [17], [63]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
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
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[1], [16], [2]]
  c_4_0_4_False_resize <= resize(c_0, 20);
  c_4_0_4_False_shift <= shift_left(c_4_0_4_False_resize, 4);
  c_4_0_1_False_resize <= resize(c_0, 20);
  c_4_0_1_False_shift <= shift_left(c_4_0_1_False_resize, 1);
  c_4_0_0_False_resize <= resize(c_0, 20);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  with config_select_1 select c_4_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "00" => c_4 <= c_4_0_4_False_shift;
        when "01" => c_4 <= c_4_0_1_False_shift;
        when others => c_4 <= c_4_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[8], [1], [1]]
  c_5_0_0_False_resize <= resize(c_0, 19);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_0_3_False_resize <= resize(c_0, 19);
  c_5_0_3_False_shift <= shift_left(c_5_0_3_False_resize, 3);
  with config_select_1 select c_5_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_0_0_False_shift;
        when others => c_5 <= c_5_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 6 and associated fundamentals [[-7], [15], [1]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 19,
      w_o => 20,
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
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[64], [1], [4]]
  c_7_0_0_False_resize <= resize(c_0, 22);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  c_7_0_6_False_resize <= resize(c_0, 22);
  c_7_0_6_False_shift <= shift_left(c_7_0_6_False_resize, 6);
  c_7_0_2_False_resize <= resize(c_0, 22);
  c_7_0_2_False_shift <= shift_left(c_7_0_2_False_resize, 2);
  with config_select_1 select c_7_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_0_0_False_shift;
        when "01" => c_7 <= c_7_0_6_False_shift;
        when others => c_7 <= c_7_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[16], [1], [2]]
  c_8_0_0_False_resize <= resize(c_0, 20);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  c_8_0_1_False_resize <= resize(c_0, 20);
  c_8_0_1_False_shift <= shift_left(c_8_0_1_False_resize, 1);
  c_8_0_4_False_resize <= resize(c_0, 20);
  c_8_0_4_False_shift <= shift_left(c_8_0_4_False_resize, 4);
  with config_select_1 select c_8_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "00" => c_8 <= c_8_0_0_False_shift;
        when "01" => c_8 <= c_8_0_1_False_shift;
        when others => c_8 <= c_8_0_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 9 and associated fundamentals [[240], [5], [14]]
  with config_select_2 select c_9_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
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
      sub_i => c_9_sub_sel,
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[-28], [15], [14]]
  c_10_9_0_False_resize <= c_9(20 downto 0);
  c_10_9_0_False_shift <= shift_left(c_10_9_0_False_resize, 0);
  c_10_6_2_False_resize <= resize(c_6, 21);
  c_10_6_2_False_shift <= shift_left(c_10_6_2_False_resize, 2);
  c_10_6_0_False_resize <= resize(c_6, 21);
  c_10_6_0_False_shift <= shift_left(c_10_6_0_False_resize, 0);
  with config_select_3 select c_10_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_9_0_False_shift;
        when "01" => c_10 <= c_10_6_2_False_shift;
        when others => c_10 <= c_10_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[-14], [5], [8]]
  c_11_6_1_False_resize <= c_6;
  c_11_6_1_False_shift <= shift_left(c_11_6_1_False_resize, 1);
  c_11_9_0_False_resize <= c_9(19 downto 0);
  c_11_9_0_False_shift <= shift_left(c_11_9_0_False_resize, 0);
  c_11_6_3_False_resize <= c_6;
  c_11_6_3_False_shift <= shift_left(c_11_6_3_False_resize, 3);
  with config_select_3 select c_11_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_6_1_False_shift;
        when "01" => c_11 <= c_11_9_0_False_shift;
        when others => c_11 <= c_11_6_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 12 and associated fundamentals [[-252], [-65], [-114]]
  with config_select_4 select c_12_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 20,
      w_o => 24,
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
  -- node of type 'mux' in stage 1 with id 13 and associated fundamentals [[32], [1], [8]]
  c_13_0_0_False_resize <= resize(c_0, 21);
  c_13_0_0_False_shift <= shift_left(c_13_0_0_False_resize, 0);
  c_13_0_5_False_resize <= resize(c_0, 21);
  c_13_0_5_False_shift <= shift_left(c_13_0_5_False_resize, 5);
  c_13_0_3_False_resize <= resize(c_0, 21);
  c_13_0_3_False_shift <= shift_left(c_13_0_3_False_resize, 3);
  with config_select_1 select c_13_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_0_0_False_shift;
        when "01" => c_13 <= c_13_0_5_False_shift;
        when others => c_13 <= c_13_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 14 and associated fundamentals [[1], [2], [1]]
  c_14_0_0_False_resize <= resize(c_0, 17);
  c_14_0_0_False_shift <= shift_left(c_14_0_0_False_resize, 0);
  c_14_0_1_False_resize <= resize(c_0, 17);
  c_14_0_1_False_shift <= shift_left(c_14_0_1_False_resize, 1);
  with config_select_1 select c_14_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_0_0_False_shift;
        when others => c_14 <= c_14_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 15 and associated fundamentals [[31], [-1], [9]]
  with config_select_2 select c_15_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 17,
      w_o => 21,
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
      c_15 <= c_15_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 16 and associated fundamentals [[-112], [17], [2]]
  c_16_6_1_False_resize <= resize(c_6, 23);
  c_16_6_1_False_shift <= shift_left(c_16_6_1_False_resize, 1);
  c_16_3_0_False_resize <= resize(c_3, 23);
  c_16_3_0_False_shift <= shift_left(c_16_3_0_False_resize, 0);
  c_16_6_4_False_resize <= resize(c_6, 23);
  c_16_6_4_False_shift <= shift_left(c_16_6_4_False_resize, 4);
  with config_select_3 select c_16_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_6_1_False_shift;
        when "01" => c_16 <= c_16_3_0_False_shift;
        when others => c_16 <= c_16_6_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 17 and associated fundamentals [[-7], [-2], [1]]
  c_17_15_1_False_resize <= c_15(18 downto 0);
  c_17_15_1_False_shift <= shift_left(c_17_15_1_False_resize, 1);
  c_17_6_0_False_resize <= c_6(18 downto 0);
  c_17_6_0_False_shift <= shift_left(c_17_6_0_False_resize, 0);
  with config_select_3 select c_17_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_15_1_False_shift;
        when others => c_17 <= c_17_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 18 and associated fundamentals [[-140], [25], [-2]]
  with config_select_4 select c_18_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 19,
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
  -- node of type 'mux' in stage 3 with id 19 and associated fundamentals [[124], [-8], [1]]
  c_19_15_3_False_resize <= resize(c_15, 23);
  c_19_15_3_False_shift <= shift_left(c_19_15_3_False_resize, 3);
  c_19_15_2_False_resize <= resize(c_15, 23);
  c_19_15_2_False_shift <= shift_left(c_19_15_2_False_resize, 2);
  c_19_6_0_False_resize <= resize(c_6, 23);
  c_19_6_0_False_shift <= shift_left(c_19_6_0_False_resize, 0);
  with config_select_3 select c_19_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_15_3_False_shift;
        when "01" => c_19 <= c_19_15_2_False_shift;
        when others => c_19 <= c_19_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 20 and associated fundamentals [[15], [-128], [576]]
  c_20_15_6_False_resize <= resize(c_15, 26);
  c_20_15_6_False_shift <= shift_left(c_20_15_6_False_resize, 6);
  c_20_3_0_False_resize <= resize(c_3, 26);
  c_20_3_0_False_shift <= shift_left(c_20_3_0_False_resize, 0);
  c_20_15_7_False_resize <= resize(c_15, 26);
  c_20_15_7_False_shift <= shift_left(c_20_15_7_False_resize, 7);
  with config_select_3 select c_20_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_15_6_False_shift;
        when "01" => c_20 <= c_20_3_0_False_shift;
        when others => c_20 <= c_20_15_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 21 and associated fundamentals [[109], [120], [577]]
  with config_select_4 select c_21_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 23,
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
  -- node of type 'mux' in stage 3 with id 22 and associated fundamentals [[31], [-32], [252]]
  c_22_3_2_False_resize <= resize(c_3, 24);
  c_22_3_2_False_shift <= shift_left(c_22_3_2_False_resize, 2);
  c_22_15_5_False_resize <= resize(c_15, 24);
  c_22_15_5_False_shift <= shift_left(c_22_15_5_False_resize, 5);
  c_22_15_0_False_resize <= resize(c_15, 24);
  c_22_15_0_False_shift <= shift_left(c_22_15_0_False_resize, 0);
  with config_select_3 select c_22_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_3_2_False_shift;
        when "01" => c_22 <= c_22_15_5_False_shift;
        when others => c_22 <= c_22_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 23 and associated fundamentals [[62], [30], [9]]
  c_23_15_0_False_resize <= resize(c_15, 22);
  c_23_15_0_False_shift <= shift_left(c_23_15_0_False_resize, 0);
  c_23_6_1_False_resize <= resize(c_6, 22);
  c_23_6_1_False_shift <= shift_left(c_23_6_1_False_resize, 1);
  c_23_15_1_False_resize <= resize(c_15, 22);
  c_23_15_1_False_shift <= shift_left(c_23_15_1_False_resize, 1);
  with config_select_3 select c_23_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "00" => c_23 <= c_23_15_0_False_shift;
        when "01" => c_23 <= c_23_6_1_False_shift;
        when others => c_23 <= c_23_15_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 24 and associated fundamentals [[-31], [-2], [243]]
  with config_select_4 select c_24_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_24_sub_sel,
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
  -- node of type 'mux' in stage 3 with id 25 and associated fundamentals [[124], [-1], [144]]
  c_25_15_2_False_resize <= resize(c_15, 24);
  c_25_15_2_False_shift <= shift_left(c_25_15_2_False_resize, 2);
  c_25_15_0_False_resize <= resize(c_15, 24);
  c_25_15_0_False_shift <= shift_left(c_25_15_0_False_resize, 0);
  c_25_15_4_False_resize <= resize(c_15, 24);
  c_25_15_4_False_shift <= shift_left(c_25_15_4_False_resize, 4);
  with config_select_3 select c_25_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_15_2_False_shift;
        when "01" => c_25 <= c_25_15_0_False_shift;
        when others => c_25 <= c_25_15_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 26 and associated fundamentals [[-14], [-4], [1]]
  c_26_6_1_False_resize <= c_6;
  c_26_6_1_False_shift <= shift_left(c_26_6_1_False_resize, 1);
  c_26_6_0_False_resize <= c_6;
  c_26_6_0_False_shift <= shift_left(c_26_6_0_False_resize, 0);
  c_26_15_2_False_resize <= c_15(19 downto 0);
  c_26_15_2_False_shift <= shift_left(c_26_15_2_False_resize, 2);
  with config_select_3 select c_26_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "00" => c_26 <= c_26_6_1_False_shift;
        when "01" => c_26 <= c_26_6_0_False_shift;
        when others => c_26 <= c_26_15_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 27 and associated fundamentals [[110], [-5], [145]]
  inst_adder_node_27: entity work.adder_node
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
      sub => False
    )
    port map (
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
  -- node of type 'mux' in stage 3 with id 28 and associated fundamentals [[30], [5], [28]]
  c_28_9_0_False_resize <= c_9(20 downto 0);
  c_28_9_0_False_shift <= shift_left(c_28_9_0_False_resize, 0);
  c_28_9_1_False_resize <= c_9(20 downto 0);
  c_28_9_1_False_shift <= shift_left(c_28_9_1_False_resize, 1);
  c_28_3_1_False_resize <= c_3(20 downto 0);
  c_28_3_1_False_shift <= shift_left(c_28_3_1_False_resize, 1);
  with config_select_3 select c_28_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "00" => c_28 <= c_28_9_0_False_shift;
        when "01" => c_28 <= c_28_9_1_False_shift;
        when others => c_28 <= c_28_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 29 and associated fundamentals [[-7], [-128], [224]]
  c_29_6_0_False_resize <= resize(c_6, 24);
  c_29_6_0_False_shift <= shift_left(c_29_6_0_False_resize, 0);
  c_29_9_4_False_resize <= c_9;
  c_29_9_4_False_shift <= shift_left(c_29_9_4_False_resize, 4);
  c_29_15_7_False_resize <= resize(c_15, 24);
  c_29_15_7_False_shift <= shift_left(c_29_15_7_False_resize, 7);
  with config_select_3 select c_29_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "00" => c_29 <= c_29_6_0_False_shift;
        when "01" => c_29 <= c_29_9_4_False_shift;
        when others => c_29 <= c_29_15_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 30 and associated fundamentals [[37], [133], [-196]]
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 21,
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
  -- node of type 'add_sub' in stage 5 with id 31 and associated fundamentals [[221], [63], [129]]
  with config_select_5 select c_31_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_31: entity work.adder_node
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
      sub_i => c_31_sub_sel,
      x_i => c_24,
      y_i => c_12,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 32 and associated fundamentals [[31], [120], [126]]
  c_32_3_1_False_resize <= resize(c_3, 23);
  c_32_3_1_False_shift <= shift_left(c_32_3_1_False_resize, 1);
  c_32_15_0_False_resize <= resize(c_15, 23);
  c_32_15_0_False_shift <= shift_left(c_32_15_0_False_resize, 0);
  c_32_6_3_False_resize <= resize(c_6, 23);
  c_32_6_3_False_shift <= shift_left(c_32_6_3_False_resize, 3);
  with config_select_3 select c_32_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "00" => c_32 <= c_32_3_1_False_shift;
        when "01" => c_32 <= c_32_15_0_False_shift;
        when others => c_32 <= c_32_6_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 33 and associated fundamentals [[-14], [17], [63]]
  c_33_6_1_False_resize <= resize(c_6, 22);
  c_33_6_1_False_shift <= shift_left(c_33_6_1_False_resize, 1);
  c_33_3_0_False_resize <= c_3;
  c_33_3_0_False_shift <= shift_left(c_33_3_0_False_resize, 0);
  with config_select_3 select c_33_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "0" => c_33 <= c_33_6_1_False_shift;
        when others => c_33 <= c_33_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 34 and associated fundamentals [[17], [103], [189]]
  with config_select_4 select c_34_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_34: entity work.adder_node
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
      sub_i => c_34_sub_sel,
      x_i => c_32,
      y_i => c_33,
      z_o => c_34_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_34_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 35 and associated fundamentals [[15], [15], [126]]
  c_35_3_1_False_resize <= resize(c_3, 23);
  c_35_3_1_False_shift <= shift_left(c_35_3_1_False_resize, 1);
  c_35_3_0_False_resize <= resize(c_3, 23);
  c_35_3_0_False_shift <= shift_left(c_35_3_0_False_resize, 0);
  c_35_6_0_False_resize <= resize(c_6, 23);
  c_35_6_0_False_shift <= shift_left(c_35_6_0_False_resize, 0);
  with config_select_3 select c_35_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "00" => c_35 <= c_35_3_1_False_shift;
        when "01" => c_35 <= c_35_3_0_False_shift;
        when others => c_35 <= c_35_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 36 and associated fundamentals [[31], [34], [28]]
  c_36_3_1_False_resize <= c_3;
  c_36_3_1_False_shift <= shift_left(c_36_3_1_False_resize, 1);
  c_36_15_0_False_resize <= resize(c_15, 22);
  c_36_15_0_False_shift <= shift_left(c_36_15_0_False_resize, 0);
  c_36_9_1_False_resize <= c_9(21 downto 0);
  c_36_9_1_False_shift <= shift_left(c_36_9_1_False_resize, 1);
  with config_select_3 select c_36_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "00" => c_36 <= c_36_3_1_False_shift;
        when "01" => c_36 <= c_36_15_0_False_shift;
        when others => c_36 <= c_36_9_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 37 and associated fundamentals [[77], [-53], [182]]
  with config_select_4 select c_37_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_37: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_37_sub_sel,
      x_i => c_35,
      y_i => c_36,
      z_o => c_37_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_37_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 5 with id 38 and associated fundamentals [[171], [124], [91]]
  inst_adder_node_38: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_21,
      y_i => c_24,
      z_o => c_38_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_38_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 39 and associated fundamentals [[-224], [5], [9]]
  c_39_15_0_False_resize <= resize(c_15, 24);
  c_39_15_0_False_shift <= shift_left(c_39_15_0_False_resize, 0);
  c_39_6_5_False_resize <= resize(c_6, 24);
  c_39_6_5_False_shift <= shift_left(c_39_6_5_False_resize, 5);
  c_39_9_0_False_resize <= c_9;
  c_39_9_0_False_shift <= shift_left(c_39_9_0_False_resize, 0);
  with config_select_3 select c_39_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "00" => c_39 <= c_39_15_0_False_shift;
        when "01" => c_39 <= c_39_6_5_False_shift;
        when others => c_39 <= c_39_9_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 40 and associated fundamentals [[31], [-64], [2]]
  c_40_15_6_False_resize <= resize(c_15, 23);
  c_40_15_6_False_shift <= shift_left(c_40_15_6_False_resize, 6);
  c_40_6_1_False_resize <= resize(c_6, 23);
  c_40_6_1_False_shift <= shift_left(c_40_6_1_False_resize, 1);
  c_40_15_0_False_resize <= resize(c_15, 23);
  c_40_15_0_False_shift <= shift_left(c_40_15_0_False_resize, 0);
  with config_select_3 select c_40_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "00" => c_40 <= c_40_15_6_False_shift;
        when "01" => c_40 <= c_40_6_1_False_shift;
        when others => c_40 <= c_40_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 41 and associated fundamentals [[-255], [69], [7]]
  inst_adder_node_41: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
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
      x_i => c_39,
      y_i => c_40,
      z_o => c_41_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_41_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 42 and associated fundamentals [[136], [25], [182]]
  c_42_34_3_False_resize <= c_34;
  c_42_34_3_False_shift <= shift_left(c_42_34_3_False_resize, 3);
  c_42_37_0_False_resize <= c_37;
  c_42_37_0_False_shift <= shift_left(c_42_37_0_False_resize, 0);
  c_42_18_0_False_resize <= c_18;
  c_42_18_0_False_shift <= shift_left(c_42_18_0_False_resize, 0);
  with config_select_5 select c_42_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "00" => c_42 <= c_42_34_3_False_shift;
        when "01" => c_42 <= c_42_37_0_False_shift;
        when others => c_42 <= c_42_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 43 and associated fundamentals [[136], [25], [182]]
  c_43_resize <= c_42;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'mux' in stage 5 with id 44 and associated fundamentals [[154], [120], [243]]
  c_44_37_1_False_resize <= c_37;
  c_44_37_1_False_shift <= shift_left(c_44_37_1_False_resize, 1);
  c_44_24_0_False_resize <= c_24;
  c_44_24_0_False_shift <= shift_left(c_44_24_0_False_resize, 0);
  c_44_21_0_False_resize <= c_21;
  c_44_21_0_False_shift <= shift_left(c_44_21_0_False_resize, 0);
  with config_select_5 select c_44_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "00" => c_44 <= c_44_37_1_False_shift;
        when "01" => c_44 <= c_44_24_0_False_shift;
        when others => c_44 <= c_44_21_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 45 and associated fundamentals [[154], [120], [243]]
  c_45_resize <= c_44;
  c_45 <= shift_left(c_45_resize, 0);
  -- node of type 'mux' in stage 5 with id 46 and associated fundamentals [[-31], [-130], [-8]]
  c_46_18_2_False_resize <= c_18;
  c_46_18_2_False_shift <= shift_left(c_46_18_2_False_resize, 2);
  c_46_12_1_False_resize <= c_12;
  c_46_12_1_False_shift <= shift_left(c_46_12_1_False_resize, 1);
  c_46_24_0_False_resize <= c_24;
  c_46_24_0_False_shift <= shift_left(c_46_24_0_False_resize, 0);
  with config_select_5 select c_46_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "00" => c_46 <= c_46_18_2_False_shift;
        when "01" => c_46 <= c_46_12_1_False_shift;
        when others => c_46 <= c_46_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 47 and associated fundamentals [[31], [130], [8]]
  c_47_resize <= c_46;
  c_47 <= -shift_left(c_47_resize, 0);
  -- node of type 'mux' in stage 5 with id 48 and associated fundamentals [[109], [133], [145]]
  c_48_30_0_False_resize <= c_30;
  c_48_30_0_False_shift <= shift_left(c_48_30_0_False_resize, 0);
  c_48_27_0_False_resize <= c_27;
  c_48_27_0_False_shift <= shift_left(c_48_27_0_False_resize, 0);
  c_48_21_0_False_resize <= c_21;
  c_48_21_0_False_shift <= shift_left(c_48_21_0_False_resize, 0);
  with config_select_5 select c_48_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "00" => c_48 <= c_48_30_0_False_shift;
        when "01" => c_48 <= c_48_27_0_False_shift;
        when others => c_48 <= c_48_21_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 49 and associated fundamentals [[109], [133], [145]]
  c_49_resize <= c_48;
  c_49 <= shift_left(c_49_resize, 0);
  -- node of type 'mux' in stage 5 with id 50 and associated fundamentals [[74], [69], [14]]
  c_50_30_1_False_resize <= c_30(22 downto 0);
  c_50_30_1_False_shift <= shift_left(c_50_30_1_False_resize, 1);
  c_50_41_1_False_resize <= c_41(22 downto 0);
  c_50_41_1_False_shift <= shift_left(c_50_41_1_False_resize, 1);
  c_50_41_0_False_resize <= c_41(22 downto 0);
  c_50_41_0_False_shift <= shift_left(c_50_41_0_False_resize, 0);
  with config_select_5 select c_50_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_50_sel is
        when "00" => c_50 <= c_50_30_1_False_shift;
        when "01" => c_50 <= c_50_41_1_False_shift;
        when others => c_50 <= c_50_41_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 51 and associated fundamentals [[148], [138], [28]]
  c_51_resize <= resize(c_50, 24);
  c_51 <= shift_left(c_51_resize, 1);
  -- node of type 'mux' in stage 5 with id 52 and associated fundamentals [[110], [103], [189]]
  c_52_27_0_False_resize <= c_27;
  c_52_27_0_False_shift <= shift_left(c_52_27_0_False_resize, 0);
  c_52_34_0_False_resize <= c_34;
  c_52_34_0_False_shift <= shift_left(c_52_34_0_False_resize, 0);
  with config_select_5 select c_52_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_52_sel is
        when "0" => c_52 <= c_52_27_0_False_shift;
        when others => c_52 <= c_52_34_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 53 and associated fundamentals [[110], [103], [189]]
  c_53_resize <= c_52;
  c_53 <= shift_left(c_53_resize, 0);
  -- node of type 'output' in stage 5 with id 54 and associated fundamentals [[171], [124], [91]]
  c_54_resize <= c_38;
  c_54 <= shift_left(c_54_resize, 0);
  -- node of type 'mux' in stage 5 with id 55 and associated fundamentals [[-255], [-53], [-2]]
  c_55_18_0_False_resize <= c_18;
  c_55_18_0_False_shift <= shift_left(c_55_18_0_False_resize, 0);
  c_55_37_0_False_resize <= c_37;
  c_55_37_0_False_shift <= shift_left(c_55_37_0_False_resize, 0);
  c_55_41_0_False_resize <= c_41;
  c_55_41_0_False_shift <= shift_left(c_55_41_0_False_resize, 0);
  with config_select_5 select c_55_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_55_sel is
        when "00" => c_55 <= c_55_18_0_False_shift;
        when "01" => c_55 <= c_55_37_0_False_shift;
        when others => c_55 <= c_55_41_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 56 and associated fundamentals [[255], [53], [2]]
  c_56_resize <= c_55;
  c_56 <= -shift_left(c_56_resize, 0);
  -- node of type 'output' in stage 5 with id 57 and associated fundamentals [[221], [63], [129]]
  c_57_resize <= c_31;
  c_57 <= shift_left(c_57_resize, 0);
  -- node of type 'mux' in stage 5 with id 58 and associated fundamentals [[-140], [-5], [-196]]
  c_58_27_0_False_resize <= c_27;
  c_58_27_0_False_shift <= shift_left(c_58_27_0_False_resize, 0);
  c_58_18_0_False_resize <= c_18;
  c_58_18_0_False_shift <= shift_left(c_58_18_0_False_resize, 0);
  c_58_30_0_False_resize <= c_30;
  c_58_30_0_False_shift <= shift_left(c_58_30_0_False_resize, 0);
  with config_select_5 select c_58_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_58_sel is
        when "00" => c_58 <= c_58_27_0_False_shift;
        when "01" => c_58 <= c_58_18_0_False_shift;
        when others => c_58 <= c_58_30_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 59 and associated fundamentals [[140], [5], [196]]
  c_59_resize <= c_58;
  c_59 <= -shift_left(c_59_resize, 0);
end architecture;
