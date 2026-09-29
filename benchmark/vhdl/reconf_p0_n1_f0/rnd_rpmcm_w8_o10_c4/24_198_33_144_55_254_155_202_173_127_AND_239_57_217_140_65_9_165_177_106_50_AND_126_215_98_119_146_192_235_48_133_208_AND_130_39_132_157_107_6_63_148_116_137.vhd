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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(20 downto 0);
  signal c_1_0_0_False_resize: signed(20 downto 0);
  signal c_1_0_0_False_shift: signed(20 downto 0);
  signal c_1_0_2_False_resize: signed(20 downto 0);
  signal c_1_0_2_False_shift: signed(20 downto 0);
  signal c_1_0_5_False_resize: signed(20 downto 0);
  signal c_1_0_5_False_shift: signed(20 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(19 downto 0);
  signal c_2_0_0_False_resize: signed(19 downto 0);
  signal c_2_0_0_False_shift: signed(19 downto 0);
  signal c_2_0_4_False_resize: signed(19 downto 0);
  signal c_2_0_4_False_shift: signed(19 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(19 downto 0);
  signal c_4_3_0_False_resize: signed(19 downto 0);
  signal c_4_3_0_False_shift: signed(19 downto 0);
  signal c_4_0_4_False_resize: signed(19 downto 0);
  signal c_4_0_4_False_shift: signed(19 downto 0);
  signal c_4_0_2_False_resize: signed(19 downto 0);
  signal c_4_0_2_False_shift: signed(19 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(18 downto 0);
  signal c_5_0_0_False_resize: signed(18 downto 0);
  signal c_5_0_0_False_shift: signed(18 downto 0);
  signal c_5_3_0_False_resize: signed(18 downto 0);
  signal c_5_3_0_False_shift: signed(18 downto 0);
  signal c_5_0_3_False_resize: signed(18 downto 0);
  signal c_5_0_3_False_shift: signed(18 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(21 downto 0);
  signal c_6_i0_resize: signed(21 downto 0);
  signal c_6_i1_resize: signed(21 downto 0);
  signal c_6_i0_shift: signed(21 downto 0);
  signal c_6_i1_shift: signed(21 downto 0);
  signal c_6_arith: signed(21 downto 0);
  signal c_6_oshift: signed(21 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(23 downto 0);
  signal c_7_3_0_False_resize: signed(23 downto 0);
  signal c_7_3_0_False_shift: signed(23 downto 0);
  signal c_7_0_8_False_resize: signed(23 downto 0);
  signal c_7_0_8_False_shift: signed(23 downto 0);
  signal c_7_0_6_False_resize: signed(23 downto 0);
  signal c_7_0_6_False_shift: signed(23 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(19 downto 0);
  signal c_8_0_4_False_resize: signed(19 downto 0);
  signal c_8_0_4_False_shift: signed(19 downto 0);
  signal c_8_0_0_False_resize: signed(19 downto 0);
  signal c_8_0_0_False_shift: signed(19 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(22 downto 0);
  signal c_10_3_1_False_resize: signed(22 downto 0);
  signal c_10_3_1_False_shift: signed(22 downto 0);
  signal c_10_0_7_False_resize: signed(22 downto 0);
  signal c_10_0_7_False_shift: signed(22 downto 0);
  signal c_10_9_0_False_resize: signed(22 downto 0);
  signal c_10_9_0_False_shift: signed(22 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(20 downto 0);
  signal c_11_0_0_False_resize: signed(20 downto 0);
  signal c_11_0_0_False_shift: signed(20 downto 0);
  signal c_11_0_5_False_resize: signed(20 downto 0);
  signal c_11_0_5_False_shift: signed(20 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_i0_resize: signed(22 downto 0);
  signal c_12_i1_resize: signed(22 downto 0);
  signal c_12_i0_shift: signed(22 downto 0);
  signal c_12_i1_shift: signed(22 downto 0);
  signal c_12_arith: signed(22 downto 0);
  signal c_12_oshift: signed(22 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(22 downto 0);
  signal c_13_12_0_False_resize: signed(22 downto 0);
  signal c_13_12_0_False_shift: signed(22 downto 0);
  signal c_13_6_2_False_resize: signed(22 downto 0);
  signal c_13_6_2_False_shift: signed(22 downto 0);
  signal c_13_6_0_False_resize: signed(22 downto 0);
  signal c_13_6_0_False_shift: signed(22 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_14_9_0_False_resize: signed(22 downto 0);
  signal c_14_9_0_False_shift: signed(22 downto 0);
  signal c_14_3_2_False_resize: signed(22 downto 0);
  signal c_14_3_2_False_shift: signed(22 downto 0);
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
  signal c_16_0_0_False_resize: signed(22 downto 0);
  signal c_16_0_0_False_shift: signed(22 downto 0);
  signal c_16_0_7_False_resize: signed(22 downto 0);
  signal c_16_0_7_False_shift: signed(22 downto 0);
  signal c_16_0_2_False_resize: signed(22 downto 0);
  signal c_16_0_2_False_shift: signed(22 downto 0);
  signal c_16_3_1_False_resize: signed(22 downto 0);
  signal c_16_3_1_False_shift: signed(22 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_i0_resize: signed(23 downto 0);
  signal c_17_i1_resize: signed(23 downto 0);
  signal c_17_i0_shift: signed(23 downto 0);
  signal c_17_i1_shift: signed(23 downto 0);
  signal c_17_arith: signed(23 downto 0);
  signal c_17_oshift: signed(23 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(22 downto 0);
  signal c_18_12_0_False_resize: signed(22 downto 0);
  signal c_18_12_0_False_shift: signed(22 downto 0);
  signal c_18_12_1_False_resize: signed(22 downto 0);
  signal c_18_12_1_False_shift: signed(22 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(21 downto 0);
  signal c_19_0_3_False_resize: signed(21 downto 0);
  signal c_19_0_3_False_shift: signed(21 downto 0);
  signal c_19_6_0_False_resize: signed(21 downto 0);
  signal c_19_6_0_False_shift: signed(21 downto 0);
  signal c_19_3_0_False_resize: signed(21 downto 0);
  signal c_19_3_0_False_shift: signed(21 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_i0_resize: signed(23 downto 0);
  signal c_20_i1_resize: signed(23 downto 0);
  signal c_20_i0_shift: signed(23 downto 0);
  signal c_20_i1_shift: signed(23 downto 0);
  signal c_20_arith: signed(23 downto 0);
  signal c_20_oshift: signed(23 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_21_20_1_False_resize: signed(22 downto 0);
  signal c_21_20_1_False_shift: signed(22 downto 0);
  signal c_21_3_0_False_resize: signed(22 downto 0);
  signal c_21_3_0_False_shift: signed(22 downto 0);
  signal c_21_6_0_False_resize: signed(22 downto 0);
  signal c_21_6_0_False_shift: signed(22 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_12_2_False_resize: signed(23 downto 0);
  signal c_22_12_2_False_shift: signed(23 downto 0);
  signal c_22_15_0_False_resize: signed(23 downto 0);
  signal c_22_15_0_False_shift: signed(23 downto 0);
  signal c_22_3_0_False_resize: signed(23 downto 0);
  signal c_22_3_0_False_shift: signed(23 downto 0);
  signal c_22_6_0_False_resize: signed(23 downto 0);
  signal c_22_6_0_False_shift: signed(23 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_i0_resize: signed(23 downto 0);
  signal c_23_i1_resize: signed(23 downto 0);
  signal c_23_i0_shift: signed(23 downto 0);
  signal c_23_i1_shift: signed(23 downto 0);
  signal c_23_arith: signed(23 downto 0);
  signal c_23_oshift: signed(23 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(23 downto 0);
  signal c_24_20_0_False_resize: signed(23 downto 0);
  signal c_24_20_0_False_shift: signed(23 downto 0);
  signal c_24_12_0_False_resize: signed(23 downto 0);
  signal c_24_12_0_False_shift: signed(23 downto 0);
  signal c_24_23_0_False_resize: signed(23 downto 0);
  signal c_24_23_0_False_shift: signed(23 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(21 downto 0);
  signal c_25_3_0_False_resize: signed(21 downto 0);
  signal c_25_3_0_False_shift: signed(21 downto 0);
  signal c_25_9_0_False_resize: signed(21 downto 0);
  signal c_25_9_0_False_shift: signed(21 downto 0);
  signal c_25_0_2_False_resize: signed(21 downto 0);
  signal c_25_0_2_False_shift: signed(21 downto 0);
  signal c_25_0_4_False_resize: signed(21 downto 0);
  signal c_25_0_4_False_shift: signed(21 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_i0_resize: signed(23 downto 0);
  signal c_26_i1_resize: signed(23 downto 0);
  signal c_26_i0_shift: signed(23 downto 0);
  signal c_26_i1_shift: signed(23 downto 0);
  signal c_26_arith: signed(23 downto 0);
  signal c_26_oshift: signed(23 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(22 downto 0);
  signal c_27_0_3_False_resize: signed(22 downto 0);
  signal c_27_0_3_False_shift: signed(22 downto 0);
  signal c_27_26_1_False_resize: signed(22 downto 0);
  signal c_27_26_1_False_shift: signed(22 downto 0);
  signal c_27_26_0_False_resize: signed(22 downto 0);
  signal c_27_26_0_False_shift: signed(22 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_17_0_False_resize: signed(23 downto 0);
  signal c_28_17_0_False_shift: signed(23 downto 0);
  signal c_28_0_0_False_resize: signed(23 downto 0);
  signal c_28_0_0_False_shift: signed(23 downto 0);
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
  signal c_30_15_1_False_resize: signed(23 downto 0);
  signal c_30_15_1_False_shift: signed(23 downto 0);
  signal c_30_0_2_False_resize: signed(23 downto 0);
  signal c_30_0_2_False_shift: signed(23 downto 0);
  signal c_30_29_0_False_resize: signed(23 downto 0);
  signal c_30_29_0_False_shift: signed(23 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_26_0_False_resize: signed(23 downto 0);
  signal c_31_26_0_False_shift: signed(23 downto 0);
  signal c_31_6_0_False_resize: signed(23 downto 0);
  signal c_31_6_0_False_shift: signed(23 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_32_i0_resize: signed(23 downto 0);
  signal c_32_i1_resize: signed(23 downto 0);
  signal c_32_i0_shift: signed(23 downto 0);
  signal c_32_i1_shift: signed(23 downto 0);
  signal c_32_arith: signed(23 downto 0);
  signal c_32_oshift: signed(23 downto 0);
  signal c_32_sub_sel: std_logic;
  signal c_33: signed(23 downto 0);
  signal c_33_3_1_False_resize: signed(23 downto 0);
  signal c_33_3_1_False_shift: signed(23 downto 0);
  signal c_33_6_0_False_resize: signed(23 downto 0);
  signal c_33_6_0_False_shift: signed(23 downto 0);
  signal c_33_17_0_False_resize: signed(23 downto 0);
  signal c_33_17_0_False_shift: signed(23 downto 0);
  signal c_33_9_1_False_resize: signed(23 downto 0);
  signal c_33_9_1_False_shift: signed(23 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_resize: signed(23 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_resize: signed(23 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_29_0_False_resize: signed(23 downto 0);
  signal c_36_29_0_False_shift: signed(23 downto 0);
  signal c_36_12_2_False_resize: signed(23 downto 0);
  signal c_36_12_2_False_shift: signed(23 downto 0);
  signal c_36_12_1_False_resize: signed(23 downto 0);
  signal c_36_12_1_False_shift: signed(23 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_resize: signed(23 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_23_0_False_resize: signed(23 downto 0);
  signal c_38_23_0_False_shift: signed(23 downto 0);
  signal c_38_3_3_False_resize: signed(23 downto 0);
  signal c_38_3_3_False_shift: signed(23 downto 0);
  signal c_38_6_2_False_resize: signed(23 downto 0);
  signal c_38_6_2_False_shift: signed(23 downto 0);
  signal c_38_29_0_False_resize: signed(23 downto 0);
  signal c_38_29_0_False_shift: signed(23 downto 0);
  signal c_38_sel: std_logic_vector(1 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_resize: signed(23 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_15_0_False_resize: signed(23 downto 0);
  signal c_40_15_0_False_shift: signed(23 downto 0);
  signal c_40_20_0_False_resize: signed(23 downto 0);
  signal c_40_20_0_False_shift: signed(23 downto 0);
  signal c_40_17_0_False_resize: signed(23 downto 0);
  signal c_40_17_0_False_shift: signed(23 downto 0);
  signal c_40_23_0_False_resize: signed(23 downto 0);
  signal c_40_23_0_False_shift: signed(23 downto 0);
  signal c_40_sel: std_logic_vector(1 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_resize: signed(23 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_12_1_False_resize: signed(23 downto 0);
  signal c_42_12_1_False_shift: signed(23 downto 0);
  signal c_42_3_1_False_resize: signed(23 downto 0);
  signal c_42_3_1_False_shift: signed(23 downto 0);
  signal c_42_9_2_False_resize: signed(23 downto 0);
  signal c_42_9_2_False_shift: signed(23 downto 0);
  signal c_42_3_0_False_resize: signed(23 downto 0);
  signal c_42_3_0_False_shift: signed(23 downto 0);
  signal c_42_sel: std_logic_vector(1 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_resize: signed(23 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_17_0_False_resize: signed(23 downto 0);
  signal c_44_17_0_False_shift: signed(23 downto 0);
  signal c_44_32_0_False_resize: signed(23 downto 0);
  signal c_44_32_0_False_shift: signed(23 downto 0);
  signal c_44_23_0_False_resize: signed(23 downto 0);
  signal c_44_23_0_False_shift: signed(23 downto 0);
  signal c_44_sel: std_logic_vector(1 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_resize: signed(23 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_32_0_False_resize: signed(23 downto 0);
  signal c_46_32_0_False_shift: signed(23 downto 0);
  signal c_46_9_0_False_resize: signed(23 downto 0);
  signal c_46_9_0_False_shift: signed(23 downto 0);
  signal c_46_sel: std_logic_vector(0 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_resize: signed(23 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_48_20_1_False_resize: signed(23 downto 0);
  signal c_48_20_1_False_shift: signed(23 downto 0);
  signal c_48_20_0_False_resize: signed(23 downto 0);
  signal c_48_20_0_False_shift: signed(23 downto 0);
  signal c_48_15_0_False_resize: signed(23 downto 0);
  signal c_48_15_0_False_shift: signed(23 downto 0);
  signal c_48_sel: std_logic_vector(1 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_49_resize: signed(23 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_50_12_0_False_resize: signed(23 downto 0);
  signal c_50_12_0_False_shift: signed(23 downto 0);
  signal c_50_15_0_False_resize: signed(23 downto 0);
  signal c_50_15_0_False_shift: signed(23 downto 0);
  signal c_50_17_2_False_resize: signed(23 downto 0);
  signal c_50_17_2_False_shift: signed(23 downto 0);
  signal c_50_sel: std_logic_vector(1 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_51_resize: signed(23 downto 0);
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
  -- output node 1 with id 35
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_35);
    end if;
  end process;
  -- output node 2 with id 37
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_37);
    end if;
  end process;
  -- output node 3 with id 39
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_39);
    end if;
  end process;
  -- output node 4 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 5 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_43);
    end if;
  end process;
  -- output node 6 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_45);
    end if;
  end process;
  -- output node 7 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_47);
    end if;
  end process;
  -- output node 8 with id 49
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_49);
    end if;
  end process;
  -- output node 9 with id 51
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_51);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [4], [32], [1]]
  c_1_0_0_False_resize <= resize(c_0, 21);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 21);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  c_1_0_5_False_resize <= resize(c_0, 21);
  c_1_0_5_False_shift <= shift_left(c_1_0_5_False_resize, 5);
  with config_select_1 select c_1_sel <= 
    "00" when "11",
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "00",
    c_1_0_2_False_shift when "01",
    c_1_0_5_False_shift when others;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[16], [1], [1], [1]]
  c_2_0_0_False_resize <= resize(c_0, 20);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_4_False_resize <= resize(c_0, 20);
  c_2_0_4_False_shift <= shift_left(c_2_0_4_False_resize, 4);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "11",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_0_0_False_shift when "0",
    c_2_0_4_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[18], [9], [63], [3]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 20,
      w_o => 22,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(21 downto 0);
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[4], [9], [16], [3]]
  c_4_3_0_False_resize <= c_3(19 downto 0);
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  c_4_0_4_False_resize <= resize(c_0, 20);
  c_4_0_4_False_shift <= shift_left(c_4_0_4_False_resize, 4);
  c_4_0_2_False_resize <= resize(c_0, 20);
  c_4_0_2_False_shift <= shift_left(c_4_0_2_False_resize, 2);
  with config_select_3 select c_4_sel <= 
    "00" when "11",
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_4_sel select c_4 <=
    c_4_3_0_False_shift when "00",
    c_4_0_4_False_shift when "01",
    c_4_0_2_False_shift when others;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[8], [1], [8], [3]]
  c_5_0_0_False_resize <= resize(c_0, 19);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_3_0_False_resize <= c_3(18 downto 0);
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  c_5_0_3_False_resize <= resize(c_0, 19);
  c_5_0_3_False_shift <= shift_left(c_5_0_3_False_resize, 3);
  with config_select_3 select c_5_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "10" when others;
  with c_5_sel select c_5 <=
    c_5_0_0_False_shift when "00",
    c_5_3_0_False_shift when "01",
    c_5_0_3_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 6 and associated fundamentals [[24], [35], [56], [9]]
  with config_select_4 select c_6_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 19,
      w_o => 22,
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
      sub_i => c_6_sub_sel,
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(21 downto 0);
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[18], [256], [64], [64]]
  c_7_3_0_False_resize <= resize(c_3, 24);
  c_7_3_0_False_shift <= shift_left(c_7_3_0_False_resize, 0);
  c_7_0_8_False_resize <= resize(c_0, 24);
  c_7_0_8_False_shift <= shift_left(c_7_0_8_False_resize, 8);
  c_7_0_6_False_resize <= resize(c_0, 24);
  c_7_0_6_False_shift <= shift_left(c_7_0_6_False_resize, 6);
  with config_select_3 select c_7_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "10" when others;
  with c_7_sel select c_7 <=
    c_7_3_0_False_shift when "00",
    c_7_0_8_False_shift when "01",
    c_7_0_6_False_shift when others;
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[1], [16], [16], [1]]
  c_8_0_4_False_resize <= resize(c_0, 20);
  c_8_0_4_False_shift <= shift_left(c_8_0_4_False_resize, 4);
  c_8_0_0_False_resize <= resize(c_0, 20);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  with config_select_1 select c_8_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when "11",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_0_4_False_shift when "0",
    c_8_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 9 and associated fundamentals [[19], [240], [48], [65]]
  with config_select_4 select c_9_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
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
      sub_i => c_9_sub_sel,
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(23 downto 0);
  -- node of type 'mux' in stage 5 with id 10 and associated fundamentals [[128], [18], [48], [65]]
  c_10_3_1_False_resize <= resize(c_3, 23);
  c_10_3_1_False_shift <= shift_left(c_10_3_1_False_resize, 1);
  c_10_0_7_False_resize <= resize(c_0, 23);
  c_10_0_7_False_shift <= shift_left(c_10_0_7_False_resize, 7);
  c_10_9_0_False_resize <= c_9(22 downto 0);
  c_10_9_0_False_shift <= shift_left(c_10_9_0_False_resize, 0);
  with config_select_5 select c_10_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "10" when others;
  with c_10_sel select c_10 <=
    c_10_3_1_False_shift when "00",
    c_10_0_7_False_shift when "01",
    c_10_9_0_False_shift when others;
  -- node of type 'mux' in stage 1 with id 11 and associated fundamentals [[1], [32], [1], [32]]
  c_11_0_0_False_resize <= resize(c_0, 21);
  c_11_0_0_False_shift <= shift_left(c_11_0_0_False_resize, 0);
  c_11_0_5_False_resize <= resize(c_0, 21);
  c_11_0_5_False_shift <= shift_left(c_11_0_5_False_resize, 5);
  with config_select_1 select c_11_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_0_0_False_shift when "0",
    c_11_0_5_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 12 and associated fundamentals [[127], [50], [49], [33]]
  with config_select_6 select c_12_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
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
      sub_i => c_12_sub_sel,
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(22 downto 0);
  -- node of type 'mux' in stage 7 with id 13 and associated fundamentals [[96], [35], [49], [36]]
  c_13_12_0_False_resize <= c_12;
  c_13_12_0_False_shift <= shift_left(c_13_12_0_False_resize, 0);
  c_13_6_2_False_resize <= resize(c_6, 23);
  c_13_6_2_False_shift <= shift_left(c_13_6_2_False_resize, 2);
  c_13_6_0_False_resize <= resize(c_6, 23);
  c_13_6_0_False_shift <= shift_left(c_13_6_0_False_resize, 0);
  with config_select_7 select c_13_sel <= 
    "00" when "10",
    "01" when "00",
    "01" when "11",
    "10" when others;
  with c_13_sel select c_13 <=
    c_13_12_0_False_shift when "00",
    c_13_6_2_False_shift when "01",
    c_13_6_0_False_shift when others;
  -- node of type 'mux' in stage 5 with id 14 and associated fundamentals [[19], [36], [48], [65]]
  c_14_9_0_False_resize <= c_9(22 downto 0);
  c_14_9_0_False_shift <= shift_left(c_14_9_0_False_resize, 0);
  c_14_3_2_False_resize <= resize(c_3, 23);
  c_14_3_2_False_shift <= shift_left(c_14_3_2_False_resize, 2);
  with config_select_5 select c_14_sel <= 
    "0" when "00",
    "0" when "10",
    "0" when "11",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_9_0_False_shift when "0",
    c_14_3_2_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 15 and associated fundamentals [[173], [106], [146], [137]]
  with config_select_8 select c_15_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
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
      sub_i => c_15_sub_sel,
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 16 and associated fundamentals [[36], [1], [4], [128]]
  c_16_0_0_False_resize <= resize(c_0, 23);
  c_16_0_0_False_shift <= shift_left(c_16_0_0_False_resize, 0);
  c_16_0_7_False_resize <= resize(c_0, 23);
  c_16_0_7_False_shift <= shift_left(c_16_0_7_False_resize, 7);
  c_16_0_2_False_resize <= resize(c_0, 23);
  c_16_0_2_False_shift <= shift_left(c_16_0_2_False_resize, 2);
  c_16_3_1_False_resize <= resize(c_3, 23);
  c_16_3_1_False_shift <= shift_left(c_16_3_1_False_resize, 1);
  with config_select_3 select c_16_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "11" when others;
  with c_16_sel select c_16 <=
    c_16_0_0_False_shift when "00",
    c_16_0_7_False_shift when "01",
    c_16_0_2_False_shift when "10",
    c_16_3_1_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 17 and associated fundamentals [[55], [239], [52], [-63]]
  with config_select_5 select c_17_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_17: entity work.adder_node
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
      sub_i => c_17_sub_sel,
      x_i => c_9,
      y_i => c_16,
      z_o => c_17_oshift
    );
  c_17 <= c_17_oshift(23 downto 0);
  -- node of type 'mux' in stage 7 with id 18 and associated fundamentals [[127], [50], [98], [33]]
  c_18_12_0_False_resize <= c_12;
  c_18_12_0_False_shift <= shift_left(c_18_12_0_False_resize, 0);
  c_18_12_1_False_resize <= c_12;
  c_18_12_1_False_shift <= shift_left(c_18_12_1_False_resize, 1);
  with config_select_7 select c_18_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "11",
    "1" when others;
  with c_18_sel select c_18 <=
    c_18_12_0_False_shift when "0",
    c_18_12_1_False_shift when others;
  -- node of type 'mux' in stage 5 with id 19 and associated fundamentals [[24], [35], [63], [8]]
  c_19_0_3_False_resize <= resize(c_0, 22);
  c_19_0_3_False_shift <= shift_left(c_19_0_3_False_resize, 3);
  c_19_6_0_False_resize <= c_6;
  c_19_6_0_False_shift <= shift_left(c_19_6_0_False_resize, 0);
  c_19_3_0_False_resize <= c_3;
  c_19_3_0_False_shift <= shift_left(c_19_3_0_False_resize, 0);
  with config_select_5 select c_19_sel <= 
    "00" when "11",
    "01" when "00",
    "01" when "01",
    "10" when others;
  with c_19_sel select c_19 <=
    c_19_0_3_False_shift when "00",
    c_19_6_0_False_shift when "01",
    c_19_3_0_False_shift when others;
  -- node of type 'sub' in stage 8 with id 20 and associated fundamentals [[230], [65], [133], [58]]
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
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
      x_i => c_18,
      y_i => c_19,
      z_o => c_20_oshift
    );
  c_20 <= c_20_oshift(23 downto 0);
  -- node of type 'mux' in stage 9 with id 21 and associated fundamentals [[18], [35], [56], [116]]
  c_21_20_1_False_resize <= c_20(22 downto 0);
  c_21_20_1_False_shift <= shift_left(c_21_20_1_False_resize, 1);
  c_21_3_0_False_resize <= resize(c_3, 23);
  c_21_3_0_False_shift <= shift_left(c_21_3_0_False_resize, 0);
  c_21_6_0_False_resize <= resize(c_6, 23);
  c_21_6_0_False_shift <= shift_left(c_21_6_0_False_resize, 0);
  with config_select_9 select c_21_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "10",
    "10" when others;
  with c_21_sel select c_21 <=
    c_21_20_1_False_shift when "00",
    c_21_3_0_False_shift when "01",
    c_21_6_0_False_shift when others;
  -- node of type 'mux' in stage 9 with id 22 and associated fundamentals [[173], [200], [63], [9]]
  c_22_12_2_False_resize <= resize(c_12, 24);
  c_22_12_2_False_shift <= shift_left(c_22_12_2_False_resize, 2);
  c_22_15_0_False_resize <= c_15;
  c_22_15_0_False_shift <= shift_left(c_22_15_0_False_resize, 0);
  c_22_3_0_False_resize <= resize(c_3, 24);
  c_22_3_0_False_shift <= shift_left(c_22_3_0_False_resize, 0);
  c_22_6_0_False_resize <= resize(c_6, 24);
  c_22_6_0_False_shift <= shift_left(c_22_6_0_False_resize, 0);
  with config_select_9 select c_22_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  with c_22_sel select c_22 <=
    c_22_12_2_False_shift when "00",
    c_22_15_0_False_shift when "01",
    c_22_3_0_False_shift when "10",
    c_22_6_0_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 23 and associated fundamentals [[-155], [-165], [119], [107]]
  with config_select_10 select c_23_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_23: entity work.adder_node
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
      sub_i => c_23_sub_sel,
      x_i => c_21,
      y_i => c_22,
      z_o => c_23_oshift
    );
  c_23 <= c_23_oshift(23 downto 0);
  -- node of type 'mux' in stage 11 with id 24 and associated fundamentals [[230], [65], [119], [33]]
  c_24_20_0_False_resize <= c_20;
  c_24_20_0_False_shift <= shift_left(c_24_20_0_False_resize, 0);
  c_24_12_0_False_resize <= resize(c_12, 24);
  c_24_12_0_False_shift <= shift_left(c_24_12_0_False_resize, 0);
  c_24_23_0_False_resize <= c_23;
  c_24_23_0_False_shift <= shift_left(c_24_23_0_False_resize, 0);
  with config_select_11 select c_24_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "11",
    "10" when others;
  with c_24_sel select c_24 <=
    c_24_20_0_False_shift when "00",
    c_24_12_0_False_shift when "01",
    c_24_23_0_False_shift when others;
  -- node of type 'mux' in stage 5 with id 25 and associated fundamentals [[16], [4], [48], [3]]
  c_25_3_0_False_resize <= c_3;
  c_25_3_0_False_shift <= shift_left(c_25_3_0_False_resize, 0);
  c_25_9_0_False_resize <= c_9(21 downto 0);
  c_25_9_0_False_shift <= shift_left(c_25_9_0_False_resize, 0);
  c_25_0_2_False_resize <= resize(c_0, 22);
  c_25_0_2_False_shift <= shift_left(c_25_0_2_False_resize, 2);
  c_25_0_4_False_resize <= resize(c_0, 22);
  c_25_0_4_False_shift <= shift_left(c_25_0_4_False_resize, 4);
  with config_select_5 select c_25_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  with c_25_sel select c_25 <=
    c_25_3_0_False_shift when "00",
    c_25_9_0_False_shift when "01",
    c_25_0_2_False_shift when "10",
    c_25_0_4_False_shift when others;
  -- node of type 'add_sub' in stage 12 with id 26 and associated fundamentals [[198], [57], [215], [39]]
  with config_select_12 select c_26_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_26_sub_sel,
      x_i => c_24,
      y_i => c_25,
      z_o => c_26_oshift
    );
  c_26 <= c_26_oshift(23 downto 0);
  -- node of type 'mux' in stage 13 with id 27 and associated fundamentals [[8], [114], [8], [39]]
  c_27_0_3_False_resize <= resize(c_0, 23);
  c_27_0_3_False_shift <= shift_left(c_27_0_3_False_resize, 3);
  c_27_26_1_False_resize <= c_26(22 downto 0);
  c_27_26_1_False_shift <= shift_left(c_27_26_1_False_resize, 1);
  c_27_26_0_False_resize <= c_26(22 downto 0);
  c_27_26_0_False_shift <= shift_left(c_27_26_0_False_resize, 0);
  with config_select_13 select c_27_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_27_sel select c_27 <=
    c_27_0_3_False_shift when "00",
    c_27_26_1_False_shift when "01",
    c_27_26_0_False_shift when others;
  -- node of type 'mux' in stage 6 with id 28 and associated fundamentals [[1], [239], [52], [1]]
  c_28_17_0_False_resize <= c_17;
  c_28_17_0_False_shift <= shift_left(c_28_17_0_False_resize, 0);
  c_28_0_0_False_resize <= resize(c_0, 24);
  c_28_0_0_False_shift <= shift_left(c_28_0_0_False_resize, 0);
  with config_select_6 select c_28_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when "11",
    "1" when others;
  with c_28_sel select c_28 <=
    c_28_17_0_False_shift when "0",
    c_28_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 14 with id 29 and associated fundamentals [[33], [217], [-20], [157]]
  with config_select_14 select c_29_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_29_sub_sel,
      x_i => c_27,
      y_i => c_28,
      z_o => c_29_oshift
    );
  c_29 <= c_29_oshift(23 downto 0);
  -- node of type 'mux' in stage 15 with id 30 and associated fundamentals [[4], [212], [-20], [157]]
  c_30_15_1_False_resize <= c_15;
  c_30_15_1_False_shift <= shift_left(c_30_15_1_False_resize, 1);
  c_30_0_2_False_resize <= resize(c_0, 24);
  c_30_0_2_False_shift <= shift_left(c_30_0_2_False_resize, 2);
  c_30_29_0_False_resize <= c_29;
  c_30_29_0_False_shift <= shift_left(c_30_29_0_False_resize, 0);
  with config_select_15 select c_30_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "10" when others;
  with c_30_sel select c_30 <=
    c_30_15_1_False_shift when "00",
    c_30_0_2_False_shift when "01",
    c_30_29_0_False_shift when others;
  -- node of type 'mux' in stage 13 with id 31 and associated fundamentals [[198], [35], [215], [9]]
  c_31_26_0_False_resize <= c_26;
  c_31_26_0_False_shift <= shift_left(c_31_26_0_False_resize, 0);
  c_31_6_0_False_resize <= resize(c_6, 24);
  c_31_6_0_False_shift <= shift_left(c_31_6_0_False_resize, 0);
  with config_select_13 select c_31_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when "01",
    "1" when others;
  with c_31_sel select c_31 <=
    c_31_26_0_False_shift when "0",
    c_31_6_0_False_shift when others;
  -- node of type 'add_sub' in stage 16 with id 32 and associated fundamentals [[202], [177], [-235], [148]]
  with config_select_16 select c_32_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
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
  -- node of type 'mux' in stage 6 with id 33 and associated fundamentals [[24], [239], [126], [130]]
  c_33_3_1_False_resize <= resize(c_3, 24);
  c_33_3_1_False_shift <= shift_left(c_33_3_1_False_resize, 1);
  c_33_6_0_False_resize <= resize(c_6, 24);
  c_33_6_0_False_shift <= shift_left(c_33_6_0_False_resize, 0);
  c_33_17_0_False_resize <= c_17;
  c_33_17_0_False_shift <= shift_left(c_33_17_0_False_resize, 0);
  c_33_9_1_False_resize <= c_9;
  c_33_9_1_False_shift <= shift_left(c_33_9_1_False_resize, 1);
  with config_select_6 select c_33_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  with c_33_sel select c_33 <=
    c_33_3_1_False_shift when "00",
    c_33_6_0_False_shift when "01",
    c_33_17_0_False_shift when "10",
    c_33_9_1_False_shift when others;
  -- node of type 'output' in stage 6 with id 34 and associated fundamentals [[24], [239], [126], [130]]
  c_34_resize <= c_33;
  c_34 <= shift_left(c_34_resize, 0);
  -- node of type 'output' in stage 12 with id 35 and associated fundamentals [[198], [57], [215], [39]]
  c_35_resize <= c_26;
  c_35 <= shift_left(c_35_resize, 0);
  -- node of type 'mux' in stage 15 with id 36 and associated fundamentals [[33], [217], [98], [132]]
  c_36_29_0_False_resize <= c_29;
  c_36_29_0_False_shift <= shift_left(c_36_29_0_False_resize, 0);
  c_36_12_2_False_resize <= resize(c_12, 24);
  c_36_12_2_False_shift <= shift_left(c_36_12_2_False_resize, 2);
  c_36_12_1_False_resize <= resize(c_12, 24);
  c_36_12_1_False_shift <= shift_left(c_36_12_1_False_resize, 1);
  with config_select_15 select c_36_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "11",
    "10" when others;
  with c_36_sel select c_36 <=
    c_36_29_0_False_shift when "00",
    c_36_12_2_False_shift when "01",
    c_36_12_1_False_shift when others;
  -- node of type 'output' in stage 15 with id 37 and associated fundamentals [[33], [217], [98], [132]]
  c_37_resize <= c_36;
  c_37 <= shift_left(c_37_resize, 0);
  -- node of type 'mux' in stage 15 with id 38 and associated fundamentals [[144], [140], [119], [157]]
  c_38_23_0_False_resize <= c_23;
  c_38_23_0_False_shift <= shift_left(c_38_23_0_False_resize, 0);
  c_38_3_3_False_resize <= resize(c_3, 24);
  c_38_3_3_False_shift <= shift_left(c_38_3_3_False_resize, 3);
  c_38_6_2_False_resize <= resize(c_6, 24);
  c_38_6_2_False_shift <= shift_left(c_38_6_2_False_resize, 2);
  c_38_29_0_False_resize <= c_29;
  c_38_29_0_False_shift <= shift_left(c_38_29_0_False_resize, 0);
  with config_select_15 select c_38_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  with c_38_sel select c_38 <=
    c_38_23_0_False_shift when "00",
    c_38_3_3_False_shift when "01",
    c_38_6_2_False_shift when "10",
    c_38_29_0_False_shift when others;
  -- node of type 'output' in stage 15 with id 39 and associated fundamentals [[144], [140], [119], [157]]
  c_39_resize <= c_38;
  c_39 <= shift_left(c_39_resize, 0);
  -- node of type 'mux' in stage 11 with id 40 and associated fundamentals [[55], [65], [146], [107]]
  c_40_15_0_False_resize <= c_15;
  c_40_15_0_False_shift <= shift_left(c_40_15_0_False_resize, 0);
  c_40_20_0_False_resize <= c_20;
  c_40_20_0_False_shift <= shift_left(c_40_20_0_False_resize, 0);
  c_40_17_0_False_resize <= c_17;
  c_40_17_0_False_shift <= shift_left(c_40_17_0_False_resize, 0);
  c_40_23_0_False_resize <= c_23;
  c_40_23_0_False_shift <= shift_left(c_40_23_0_False_resize, 0);
  with config_select_11 select c_40_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  with c_40_sel select c_40 <=
    c_40_15_0_False_shift when "00",
    c_40_20_0_False_shift when "01",
    c_40_17_0_False_shift when "10",
    c_40_23_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 41 and associated fundamentals [[55], [65], [146], [107]]
  c_41_resize <= c_40;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'mux' in stage 7 with id 42 and associated fundamentals [[254], [9], [192], [6]]
  c_42_12_1_False_resize <= resize(c_12, 24);
  c_42_12_1_False_shift <= shift_left(c_42_12_1_False_resize, 1);
  c_42_3_1_False_resize <= resize(c_3, 24);
  c_42_3_1_False_shift <= shift_left(c_42_3_1_False_resize, 1);
  c_42_9_2_False_resize <= c_9;
  c_42_9_2_False_shift <= shift_left(c_42_9_2_False_resize, 2);
  c_42_3_0_False_resize <= resize(c_3, 24);
  c_42_3_0_False_shift <= shift_left(c_42_3_0_False_resize, 0);
  with config_select_7 select c_42_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "10",
    "11" when others;
  with c_42_sel select c_42 <=
    c_42_12_1_False_shift when "00",
    c_42_3_1_False_shift when "01",
    c_42_9_2_False_shift when "10",
    c_42_3_0_False_shift when others;
  -- node of type 'output' in stage 7 with id 43 and associated fundamentals [[254], [9], [192], [6]]
  c_43_resize <= c_42;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'mux' in stage 17 with id 44 and associated fundamentals [[-155], [-165], [-235], [-63]]
  c_44_17_0_False_resize <= c_17;
  c_44_17_0_False_shift <= shift_left(c_44_17_0_False_resize, 0);
  c_44_32_0_False_resize <= c_32;
  c_44_32_0_False_shift <= shift_left(c_44_32_0_False_resize, 0);
  c_44_23_0_False_resize <= c_23;
  c_44_23_0_False_shift <= shift_left(c_44_23_0_False_resize, 0);
  with config_select_17 select c_44_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "10" when others;
  with c_44_sel select c_44 <=
    c_44_17_0_False_shift when "00",
    c_44_32_0_False_shift when "01",
    c_44_23_0_False_shift when others;
  -- node of type 'output' in stage 17 with id 45 and associated fundamentals [[155], [165], [235], [63]]
  c_45_resize <= c_44;
  c_45 <= -shift_left(c_45_resize, 0);
  -- node of type 'mux' in stage 17 with id 46 and associated fundamentals [[202], [177], [48], [148]]
  c_46_32_0_False_resize <= c_32;
  c_46_32_0_False_shift <= shift_left(c_46_32_0_False_resize, 0);
  c_46_9_0_False_resize <= c_9;
  c_46_9_0_False_shift <= shift_left(c_46_9_0_False_resize, 0);
  with config_select_17 select c_46_sel <= 
    "0" when "11",
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_46_sel select c_46 <=
    c_46_32_0_False_shift when "0",
    c_46_9_0_False_shift when others;
  -- node of type 'output' in stage 17 with id 47 and associated fundamentals [[202], [177], [48], [148]]
  c_47_resize <= c_46;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'mux' in stage 9 with id 48 and associated fundamentals [[173], [106], [133], [116]]
  c_48_20_1_False_resize <= c_20;
  c_48_20_1_False_shift <= shift_left(c_48_20_1_False_resize, 1);
  c_48_20_0_False_resize <= c_20;
  c_48_20_0_False_shift <= shift_left(c_48_20_0_False_resize, 0);
  c_48_15_0_False_resize <= c_15;
  c_48_15_0_False_shift <= shift_left(c_48_15_0_False_resize, 0);
  with config_select_9 select c_48_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "10" when others;
  with c_48_sel select c_48 <=
    c_48_20_1_False_shift when "00",
    c_48_20_0_False_shift when "01",
    c_48_15_0_False_shift when others;
  -- node of type 'output' in stage 9 with id 49 and associated fundamentals [[173], [106], [133], [116]]
  c_49_resize <= c_48;
  c_49 <= shift_left(c_49_resize, 0);
  -- node of type 'mux' in stage 9 with id 50 and associated fundamentals [[127], [50], [208], [137]]
  c_50_12_0_False_resize <= resize(c_12, 24);
  c_50_12_0_False_shift <= shift_left(c_50_12_0_False_resize, 0);
  c_50_15_0_False_resize <= c_15;
  c_50_15_0_False_shift <= shift_left(c_50_15_0_False_resize, 0);
  c_50_17_2_False_resize <= c_17;
  c_50_17_2_False_shift <= shift_left(c_50_17_2_False_resize, 2);
  with config_select_9 select c_50_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "11",
    "10" when others;
  with c_50_sel select c_50 <=
    c_50_12_0_False_shift when "00",
    c_50_15_0_False_shift when "01",
    c_50_17_2_False_shift when others;
  -- node of type 'output' in stage 9 with id 51 and associated fundamentals [[127], [50], [208], [137]]
  c_51_resize <= c_50;
  c_51 <= shift_left(c_51_resize, 0);
end architecture;
