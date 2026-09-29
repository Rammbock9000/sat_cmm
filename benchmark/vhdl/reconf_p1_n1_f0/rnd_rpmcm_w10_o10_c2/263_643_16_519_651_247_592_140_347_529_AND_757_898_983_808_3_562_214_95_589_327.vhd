library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(25 downto 0);
    y_3: out std_logic_vector(25 downto 0);
    y_4: out std_logic_vector(25 downto 0);
    y_5: out std_logic_vector(25 downto 0);
    y_6: out std_logic_vector(25 downto 0);
    y_7: out std_logic_vector(23 downto 0);
    y_8: out std_logic_vector(25 downto 0);
    y_9: out std_logic_vector(25 downto 0);
    clk: in std_logic
);
end entity;
architecture const_mul of const_mul is
  signal config_select_0: std_logic_vector(0 downto 0);
  signal config_select_1: std_logic_vector(0 downto 0);
  signal config_select_2: std_logic_vector(0 downto 0);
  signal config_select_3: std_logic_vector(0 downto 0);
  signal config_select_4: std_logic_vector(0 downto 0);
  signal config_select_5: std_logic_vector(0 downto 0);
  signal config_select_6: std_logic_vector(0 downto 0);
  signal config_select_7: std_logic_vector(0 downto 0);
  signal config_select_8: std_logic_vector(0 downto 0);
  signal config_select_9: std_logic_vector(0 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_0_0_False_resize: signed(19 downto 0);
  signal c_1_0_0_False_shift: signed(19 downto 0);
  signal c_1_0_4_False_resize: signed(19 downto 0);
  signal c_1_0_4_False_shift: signed(19 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(16 downto 0);
  signal c_2_0_1_False_resize: signed(16 downto 0);
  signal c_2_0_1_False_shift: signed(16 downto 0);
  signal c_2_0_0_False_resize: signed(16 downto 0);
  signal c_2_0_0_False_shift: signed(16 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(20 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(19 downto 0);
  signal c_4_0_4_False_resize: signed(19 downto 0);
  signal c_4_0_4_False_shift: signed(19 downto 0);
  signal c_4_0_0_False_resize: signed(19 downto 0);
  signal c_4_0_0_False_shift: signed(19 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(19 downto 0);
  signal c_6_i0_resize: signed(19 downto 0);
  signal c_6_i1_resize: signed(19 downto 0);
  signal c_6_i0_shift: signed(19 downto 0);
  signal c_6_i1_shift: signed(19 downto 0);
  signal c_6_arith: signed(19 downto 0);
  signal c_6_oshift: signed(19 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(16 downto 0);
  signal c_7_0_0_False_resize: signed(16 downto 0);
  signal c_7_0_0_False_shift: signed(16 downto 0);
  signal c_7_0_1_False_resize: signed(16 downto 0);
  signal c_7_0_1_False_shift: signed(16 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(18 downto 0);
  signal c_8_i0_resize: signed(18 downto 0);
  signal c_8_i1_resize: signed(18 downto 0);
  signal c_8_i0_shift: signed(18 downto 0);
  signal c_8_i1_shift: signed(18 downto 0);
  signal c_8_arith: signed(18 downto 0);
  signal c_8_oshift: signed(18 downto 0);
  signal c_9: signed(18 downto 0);
  signal c_9_0_3_False_resize: signed(18 downto 0);
  signal c_9_0_3_False_shift: signed(18 downto 0);
  signal c_9_0_0_False_resize: signed(18 downto 0);
  signal c_9_0_0_False_shift: signed(18 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_i0_resize: signed(22 downto 0);
  signal c_10_i1_resize: signed(22 downto 0);
  signal c_10_i0_shift: signed(22 downto 0);
  signal c_10_i1_shift: signed(22 downto 0);
  signal c_10_arith: signed(22 downto 0);
  signal c_10_oshift: signed(22 downto 0);
  signal c_11: signed(22 downto 0);
  signal c_11_6_0_False_resize: signed(22 downto 0);
  signal c_11_6_0_False_shift: signed(22 downto 0);
  signal c_11_10_0_False_resize: signed(22 downto 0);
  signal c_11_10_0_False_shift: signed(22 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(18 downto 0);
  signal c_12_8_1_False_resize: signed(18 downto 0);
  signal c_12_8_1_False_shift: signed(18 downto 0);
  signal c_12_3_0_False_resize: signed(18 downto 0);
  signal c_12_3_0_False_shift: signed(18 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(22 downto 0);
  signal c_13_i0_resize: signed(22 downto 0);
  signal c_13_i1_resize: signed(22 downto 0);
  signal c_13_i0_shift: signed(22 downto 0);
  signal c_13_i1_shift: signed(22 downto 0);
  signal c_13_arith: signed(22 downto 0);
  signal c_13_oshift: signed(22 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_15: signed(24 downto 0);
  signal c_15_13_2_False_resize: signed(24 downto 0);
  signal c_15_13_2_False_shift: signed(24 downto 0);
  signal c_15_13_0_False_resize: signed(24 downto 0);
  signal c_15_13_0_False_shift: signed(24 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(24 downto 0);
  signal c_16_i0_resize: signed(24 downto 0);
  signal c_16_i1_resize: signed(24 downto 0);
  signal c_16_i0_shift: signed(24 downto 0);
  signal c_16_i1_shift: signed(24 downto 0);
  signal c_16_arith: signed(24 downto 0);
  signal c_16_oshift: signed(24 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(24 downto 0);
  signal c_17_3_4_False_resize: signed(24 downto 0);
  signal c_17_3_4_False_shift: signed(24 downto 0);
  signal c_17_3_0_False_resize: signed(24 downto 0);
  signal c_17_3_0_False_shift: signed(24 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(21 downto 0);
  signal c_18_8_4_False_resize: signed(21 downto 0);
  signal c_18_8_4_False_shift: signed(21 downto 0);
  signal c_18_3_0_False_resize: signed(21 downto 0);
  signal c_18_3_0_False_shift: signed(21 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(19 downto 0);
  signal c_19_i0_resize: signed(19 downto 0);
  signal c_19_i1_resize: signed(19 downto 0);
  signal c_19_i0_shift: signed(19 downto 0);
  signal c_19_i1_shift: signed(19 downto 0);
  signal c_19_arith: signed(19 downto 0);
  signal c_19_oshift: signed(19 downto 0);
  signal c_20: signed(27 downto 0);
  signal c_20_6_0_False_resize: signed(27 downto 0);
  signal c_20_6_0_False_shift: signed(27 downto 0);
  signal c_20_10_5_False_resize: signed(27 downto 0);
  signal c_20_10_5_False_shift: signed(27 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(29 downto 0);
  signal c_21_3_0_False_resize: signed(29 downto 0);
  signal c_21_3_0_False_shift: signed(29 downto 0);
  signal c_21_10_7_False_resize: signed(29 downto 0);
  signal c_21_10_7_False_shift: signed(29 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(21 downto 0);
  signal c_22_i0_resize: signed(21 downto 0);
  signal c_22_i1_resize: signed(21 downto 0);
  signal c_22_i0_shift: signed(21 downto 0);
  signal c_22_i1_shift: signed(21 downto 0);
  signal c_22_arith: signed(21 downto 0);
  signal c_22_oshift: signed(21 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(19 downto 0);
  signal c_23_i0_resize: signed(19 downto 0);
  signal c_23_i1_resize: signed(19 downto 0);
  signal c_23_i0_shift: signed(19 downto 0);
  signal c_23_i1_shift: signed(19 downto 0);
  signal c_23_arith: signed(19 downto 0);
  signal c_23_oshift: signed(19 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(19 downto 0);
  signal c_24_8_1_False_resize: signed(19 downto 0);
  signal c_24_8_1_False_shift: signed(19 downto 0);
  signal c_24_6_0_False_resize: signed(19 downto 0);
  signal c_24_6_0_False_shift: signed(19 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_25_6_0_False_resize: signed(22 downto 0);
  signal c_25_6_0_False_shift: signed(22 downto 0);
  signal c_25_6_3_False_resize: signed(22 downto 0);
  signal c_25_6_3_False_shift: signed(22 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(26 downto 0);
  signal c_26_i0_resize: signed(26 downto 0);
  signal c_26_i1_resize: signed(26 downto 0);
  signal c_26_i0_shift: signed(26 downto 0);
  signal c_26_i1_shift: signed(26 downto 0);
  signal c_26_arith: signed(26 downto 0);
  signal c_26_oshift: signed(26 downto 0);
  signal c_27: signed(22 downto 0);
  signal c_27_3_0_False_resize: signed(22 downto 0);
  signal c_27_3_0_False_shift: signed(22 downto 0);
  signal c_27_10_0_False_resize: signed(22 downto 0);
  signal c_27_10_0_False_shift: signed(22 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(24 downto 0);
  signal c_28_i0_resize: signed(24 downto 0);
  signal c_28_i1_resize: signed(24 downto 0);
  signal c_28_i0_shift: signed(24 downto 0);
  signal c_28_i1_shift: signed(24 downto 0);
  signal c_28_arith: signed(24 downto 0);
  signal c_28_oshift: signed(24 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_16_0_False_resize: signed(25 downto 0);
  signal c_29_16_0_False_shift: signed(25 downto 0);
  signal c_29_16_3_False_resize: signed(25 downto 0);
  signal c_29_16_3_False_shift: signed(25 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(30 downto 0);
  signal c_30_16_0_False_resize: signed(30 downto 0);
  signal c_30_16_0_False_shift: signed(30 downto 0);
  signal c_30_16_8_False_resize: signed(30 downto 0);
  signal c_30_16_8_False_shift: signed(30 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(30 downto 0);
  signal c_31_i0_resize: signed(30 downto 0);
  signal c_31_i1_resize: signed(30 downto 0);
  signal c_31_i0_shift: signed(30 downto 0);
  signal c_31_i1_shift: signed(30 downto 0);
  signal c_31_arith: signed(30 downto 0);
  signal c_31_oshift: signed(30 downto 0);
  signal c_32: signed(17 downto 0);
  signal c_32_0_2_False_resize: signed(17 downto 0);
  signal c_32_0_2_False_shift: signed(17 downto 0);
  signal c_32_0_0_False_resize: signed(17 downto 0);
  signal c_32_0_0_False_shift: signed(17 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(17 downto 0);
  signal c_33_0_0_False_resize: signed(17 downto 0);
  signal c_33_0_0_False_shift: signed(17 downto 0);
  signal c_33_0_2_False_resize: signed(17 downto 0);
  signal c_33_0_2_False_shift: signed(17 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(22 downto 0);
  signal c_34_i0_resize: signed(22 downto 0);
  signal c_34_i1_resize: signed(22 downto 0);
  signal c_34_i0_shift: signed(22 downto 0);
  signal c_34_i1_shift: signed(22 downto 0);
  signal c_34_arith: signed(22 downto 0);
  signal c_34_oshift: signed(22 downto 0);
  signal c_34_sub_sel: std_logic;
  signal c_35: signed(27 downto 0);
  signal c_35_34_0_False_resize: signed(27 downto 0);
  signal c_35_34_0_False_shift: signed(27 downto 0);
  signal c_35_3_11_False_resize: signed(27 downto 0);
  signal c_35_3_11_False_shift: signed(27 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_6_0_False_resize: signed(23 downto 0);
  signal c_36_6_0_False_shift: signed(23 downto 0);
  signal c_36_34_2_False_resize: signed(23 downto 0);
  signal c_36_34_2_False_shift: signed(23 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(26 downto 0);
  signal c_37_i0_resize: signed(26 downto 0);
  signal c_37_i1_resize: signed(26 downto 0);
  signal c_37_i0_shift: signed(26 downto 0);
  signal c_37_i1_shift: signed(26 downto 0);
  signal c_37_arith: signed(26 downto 0);
  signal c_37_oshift: signed(26 downto 0);
  signal c_37_sub_sel: std_logic;
  signal c_38: signed(20 downto 0);
  signal c_38_6_1_False_resize: signed(20 downto 0);
  signal c_38_6_1_False_shift: signed(20 downto 0);
  signal c_38_8_0_False_resize: signed(20 downto 0);
  signal c_38_8_0_False_shift: signed(20 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(22 downto 0);
  signal c_39_10_3_False_resize: signed(22 downto 0);
  signal c_39_10_3_False_shift: signed(22 downto 0);
  signal c_39_8_0_False_resize: signed(22 downto 0);
  signal c_39_8_0_False_shift: signed(22 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(24 downto 0);
  signal c_40_i0_resize: signed(24 downto 0);
  signal c_40_i1_resize: signed(24 downto 0);
  signal c_40_i0_shift: signed(24 downto 0);
  signal c_40_i1_shift: signed(24 downto 0);
  signal c_40_arith: signed(24 downto 0);
  signal c_40_oshift: signed(24 downto 0);
  signal c_40_sub_sel: std_logic;
  signal c_41: signed(25 downto 0);
  signal c_41_i0_resize: signed(25 downto 0);
  signal c_41_i1_resize: signed(25 downto 0);
  signal c_41_i0_shift: signed(25 downto 0);
  signal c_41_i1_shift: signed(25 downto 0);
  signal c_41_arith: signed(25 downto 0);
  signal c_41_oshift: signed(25 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_42_i0_resize: signed(26 downto 0);
  signal c_42_i1_resize: signed(26 downto 0);
  signal c_42_i0_shift: signed(26 downto 0);
  signal c_42_i1_shift: signed(26 downto 0);
  signal c_42_arith: signed(26 downto 0);
  signal c_42_oshift: signed(25 downto 0);
  signal c_42_sub_sel: std_logic;
  signal c_43: signed(19 downto 0);
  signal c_43_8_0_False_resize: signed(19 downto 0);
  signal c_43_8_0_False_shift: signed(19 downto 0);
  signal c_43_3_3_False_resize: signed(19 downto 0);
  signal c_43_3_3_False_shift: signed(19 downto 0);
  signal c_43_sel: std_logic_vector(0 downto 0);
  signal c_44: signed(22 downto 0);
  signal c_44_8_4_False_resize: signed(22 downto 0);
  signal c_44_8_4_False_shift: signed(22 downto 0);
  signal c_44_10_0_False_resize: signed(22 downto 0);
  signal c_44_10_0_False_shift: signed(22 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(22 downto 0);
  signal c_45_i0_resize: signed(22 downto 0);
  signal c_45_i1_resize: signed(22 downto 0);
  signal c_45_i0_shift: signed(22 downto 0);
  signal c_45_i1_shift: signed(22 downto 0);
  signal c_45_arith: signed(22 downto 0);
  signal c_45_oshift: signed(22 downto 0);
  signal c_46: signed(24 downto 0);
  signal c_46_6_5_False_resize: signed(24 downto 0);
  signal c_46_6_5_False_shift: signed(24 downto 0);
  signal c_46_34_0_False_resize: signed(24 downto 0);
  signal c_46_34_0_False_shift: signed(24 downto 0);
  signal c_46_sel: std_logic_vector(0 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_3_3_False_resize: signed(23 downto 0);
  signal c_47_3_3_False_shift: signed(23 downto 0);
  signal c_47_3_0_False_resize: signed(23 downto 0);
  signal c_47_3_0_False_shift: signed(23 downto 0);
  signal c_47_sel: std_logic_vector(0 downto 0);
  signal c_48: signed(24 downto 0);
  signal c_48_i0_resize: signed(24 downto 0);
  signal c_48_i1_resize: signed(24 downto 0);
  signal c_48_i0_shift: signed(24 downto 0);
  signal c_48_i1_shift: signed(24 downto 0);
  signal c_48_arith: signed(24 downto 0);
  signal c_48_oshift: signed(24 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_49_i0_resize: signed(25 downto 0);
  signal c_49_i1_resize: signed(25 downto 0);
  signal c_49_i0_shift: signed(25 downto 0);
  signal c_49_i1_shift: signed(25 downto 0);
  signal c_49_arith: signed(25 downto 0);
  signal c_49_oshift: signed(25 downto 0);
  signal c_49_sub_sel: std_logic;
  signal c_50: signed(24 downto 0);
  signal c_50_10_2_False_resize: signed(24 downto 0);
  signal c_50_10_2_False_shift: signed(24 downto 0);
  signal c_50_49_0_False_resize: signed(24 downto 0);
  signal c_50_49_0_False_shift: signed(24 downto 0);
  signal c_50_sel: std_logic_vector(0 downto 0);
  signal c_51: signed(22 downto 0);
  signal c_51_34_0_False_resize: signed(22 downto 0);
  signal c_51_34_0_False_shift: signed(22 downto 0);
  signal c_51_8_0_False_resize: signed(22 downto 0);
  signal c_51_8_0_False_shift: signed(22 downto 0);
  signal c_51_sel: std_logic_vector(0 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_52_i0_resize: signed(25 downto 0);
  signal c_52_i1_resize: signed(25 downto 0);
  signal c_52_i0_shift: signed(25 downto 0);
  signal c_52_i1_shift: signed(25 downto 0);
  signal c_52_arith: signed(25 downto 0);
  signal c_52_oshift: signed(25 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_53_6_2_False_resize: signed(25 downto 0);
  signal c_53_6_2_False_shift: signed(25 downto 0);
  signal c_53_49_0_False_resize: signed(25 downto 0);
  signal c_53_49_0_False_shift: signed(25 downto 0);
  signal c_53_sel: std_logic_vector(0 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_54_49_1_False_resize: signed(25 downto 0);
  signal c_54_49_1_False_shift: signed(25 downto 0);
  signal c_54_6_0_False_resize: signed(25 downto 0);
  signal c_54_6_0_False_shift: signed(25 downto 0);
  signal c_54_sel: std_logic_vector(0 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_55_i0_resize: signed(25 downto 0);
  signal c_55_i1_resize: signed(25 downto 0);
  signal c_55_i0_shift: signed(25 downto 0);
  signal c_55_i1_shift: signed(25 downto 0);
  signal c_55_arith: signed(25 downto 0);
  signal c_55_oshift: signed(25 downto 0);
  signal c_55_sub_sel: std_logic;
  signal c_56: signed(25 downto 0);
  signal c_56_i0_resize: signed(25 downto 0);
  signal c_56_i1_resize: signed(25 downto 0);
  signal c_56_i0_shift: signed(25 downto 0);
  signal c_56_i1_shift: signed(25 downto 0);
  signal c_56_arith: signed(25 downto 0);
  signal c_56_oshift: signed(25 downto 0);
  signal c_56_sub_sel: std_logic;
  signal c_57: signed(25 downto 0);
  signal c_57_34_4_False_resize: signed(25 downto 0);
  signal c_57_34_4_False_shift: signed(25 downto 0);
  signal c_57_56_0_False_resize: signed(25 downto 0);
  signal c_57_56_0_False_shift: signed(25 downto 0);
  signal c_57_sel: std_logic_vector(0 downto 0);
  signal c_58: signed(19 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_59_i0_resize: signed(25 downto 0);
  signal c_59_i1_resize: signed(25 downto 0);
  signal c_59_i0_shift: signed(25 downto 0);
  signal c_59_i1_shift: signed(25 downto 0);
  signal c_59_arith: signed(25 downto 0);
  signal c_59_oshift: signed(25 downto 0);
  signal c_59_sub_sel: std_logic;
  signal c_60: signed(25 downto 0);
  signal c_61: signed(22 downto 0);
  signal c_61_8_3_False_resize: signed(22 downto 0);
  signal c_61_8_3_False_shift: signed(22 downto 0);
  signal c_61_34_0_False_resize: signed(22 downto 0);
  signal c_61_34_0_False_shift: signed(22 downto 0);
  signal c_61_sel: std_logic_vector(0 downto 0);
  signal c_62: signed(25 downto 0);
  signal c_62_i0_resize: signed(25 downto 0);
  signal c_62_i1_resize: signed(25 downto 0);
  signal c_62_i0_shift: signed(25 downto 0);
  signal c_62_i1_shift: signed(25 downto 0);
  signal c_62_arith: signed(25 downto 0);
  signal c_62_oshift: signed(25 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_63_52_0_False_resize: signed(25 downto 0);
  signal c_63_52_0_False_shift: signed(25 downto 0);
  signal c_63_48_0_False_resize: signed(25 downto 0);
  signal c_63_48_0_False_shift: signed(25 downto 0);
  signal c_63_sel: std_logic_vector(0 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_64_resize: signed(25 downto 0);
  signal c_65: signed(25 downto 0);
  signal c_65_62_0_False_resize: signed(25 downto 0);
  signal c_65_62_0_False_shift: signed(25 downto 0);
  signal c_65_48_1_False_resize: signed(25 downto 0);
  signal c_65_48_1_False_shift: signed(25 downto 0);
  signal c_65_sel: std_logic_vector(0 downto 0);
  signal c_66: signed(25 downto 0);
  signal c_66_resize: signed(25 downto 0);
  signal c_67: signed(25 downto 0);
  signal c_67_62_0_False_resize: signed(25 downto 0);
  signal c_67_62_0_False_shift: signed(25 downto 0);
  signal c_67_19_0_False_resize: signed(25 downto 0);
  signal c_67_19_0_False_shift: signed(25 downto 0);
  signal c_67_sel: std_logic_vector(0 downto 0);
  signal c_68: signed(25 downto 0);
  signal c_68_resize: signed(25 downto 0);
  signal c_69: signed(25 downto 0);
  signal c_69_55_0_False_resize: signed(25 downto 0);
  signal c_69_55_0_False_shift: signed(25 downto 0);
  signal c_69_59_0_False_resize: signed(25 downto 0);
  signal c_69_59_0_False_shift: signed(25 downto 0);
  signal c_69_sel: std_logic_vector(0 downto 0);
  signal c_70: signed(25 downto 0);
  signal c_70_resize: signed(25 downto 0);
  signal c_71: signed(25 downto 0);
  signal c_71_55_0_False_resize: signed(25 downto 0);
  signal c_71_55_0_False_shift: signed(25 downto 0);
  signal c_71_19_0_False_resize: signed(25 downto 0);
  signal c_71_19_0_False_shift: signed(25 downto 0);
  signal c_71_sel: std_logic_vector(0 downto 0);
  signal c_72: signed(25 downto 0);
  signal c_72_resize: signed(25 downto 0);
  signal c_73: signed(25 downto 0);
  signal c_73_52_0_False_resize: signed(25 downto 0);
  signal c_73_52_0_False_shift: signed(25 downto 0);
  signal c_73_59_0_False_resize: signed(25 downto 0);
  signal c_73_59_0_False_shift: signed(25 downto 0);
  signal c_73_sel: std_logic_vector(0 downto 0);
  signal c_74: signed(25 downto 0);
  signal c_74_resize: signed(25 downto 0);
  signal c_75: signed(25 downto 0);
  signal c_75_40_0_False_resize: signed(25 downto 0);
  signal c_75_40_0_False_shift: signed(25 downto 0);
  signal c_75_22_4_False_resize: signed(25 downto 0);
  signal c_75_22_4_False_shift: signed(25 downto 0);
  signal c_75_sel: std_logic_vector(0 downto 0);
  signal c_76: signed(25 downto 0);
  signal c_76_resize: signed(25 downto 0);
  signal c_77: signed(23 downto 0);
  signal c_77_45_0_False_resize: signed(23 downto 0);
  signal c_77_45_0_False_shift: signed(23 downto 0);
  signal c_77_13_2_False_resize: signed(23 downto 0);
  signal c_77_13_2_False_shift: signed(23 downto 0);
  signal c_77_sel: std_logic_vector(0 downto 0);
  signal c_78: signed(23 downto 0);
  signal c_78_resize: signed(23 downto 0);
  signal c_79: signed(25 downto 0);
  signal c_79_resize: signed(25 downto 0);
  signal c_80: signed(25 downto 0);
  signal c_80_resize: signed(25 downto 0);
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
      config_select_8 <= config_select_7;
      config_select_9 <= config_select_8;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 64
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_64);
    end if;
  end process;
  -- output node 1 with id 66
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_66);
    end if;
  end process;
  -- output node 2 with id 68
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_68);
    end if;
  end process;
  -- output node 3 with id 70
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_70);
    end if;
  end process;
  -- output node 4 with id 72
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_72);
    end if;
  end process;
  -- output node 5 with id 74
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_74);
    end if;
  end process;
  -- output node 6 with id 76
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_76);
    end if;
  end process;
  -- output node 7 with id 78
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_78);
    end if;
  end process;
  -- output node 8 with id 79
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_79);
    end if;
  end process;
  -- output node 9 with id 80
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_80);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[16], [1]]
  c_1_0_0_False_resize <= resize(c_0, 20);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_4_False_resize <= resize(c_0, 20);
  c_1_0_4_False_shift <= shift_left(c_1_0_4_False_resize, 4);
  with config_select_1 select c_1_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [2]]
  c_2_0_1_False_resize <= resize(c_0, 17);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  c_2_0_0_False_resize <= resize(c_0, 17);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_1_False_shift;
        when others => c_2 <= c_2_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[17], [-1]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 20,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[1], [16]]
  c_4_0_4_False_resize <= resize(c_0, 20);
  c_4_0_4_False_shift <= shift_left(c_4_0_4_False_resize, 4);
  c_4_0_0_False_resize <= resize(c_0, 20);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  with config_select_1 select c_4_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_4_False_shift;
        when others => c_4 <= c_4_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 5 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 6 and associated fundamentals [[3], [14]]
  with config_select_2 select c_6_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 16,
      w_o => 20,
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
      sub_i => c_6_sub_sel,
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
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[2], [1]]
  c_7_0_0_False_resize <= resize(c_0, 17);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  c_7_0_1_False_resize <= resize(c_0, 17);
  c_7_0_1_False_shift <= shift_left(c_7_0_1_False_resize, 1);
  with config_select_1 select c_7_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_0_0_False_shift;
        when others => c_7 <= c_7_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 8 and associated fundamentals [[4], [5]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 17,
      w_o => 19,
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
      x_i => c_7,
      y_i => c_2,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 9 and associated fundamentals [[1], [8]]
  c_9_0_3_False_resize <= resize(c_0, 19);
  c_9_0_3_False_shift <= shift_left(c_9_0_3_False_resize, 3);
  c_9_0_0_False_resize <= resize(c_0, 19);
  c_9_0_0_False_shift <= shift_left(c_9_0_0_False_resize, 0);
  with config_select_1 select c_9_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_0_3_False_shift;
        when others => c_9 <= c_9_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 10 and associated fundamentals [[15], [127]]
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
      w_o => 23,
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
      x_i => c_9,
      y_i => c_5,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[3], [127]]
  c_11_6_0_False_resize <= resize(c_6, 23);
  c_11_6_0_False_shift <= shift_left(c_11_6_0_False_resize, 0);
  c_11_10_0_False_resize <= c_10;
  c_11_10_0_False_shift <= shift_left(c_11_10_0_False_resize, 0);
  with config_select_3 select c_11_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_6_0_False_shift;
        when others => c_11 <= c_11_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[8], [-1]]
  c_12_8_1_False_resize <= c_8;
  c_12_8_1_False_shift <= shift_left(c_12_8_1_False_resize, 1);
  c_12_3_0_False_resize <= c_3(18 downto 0);
  c_12_3_0_False_shift <= shift_left(c_12_3_0_False_resize, 0);
  with config_select_3 select c_12_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_8_1_False_shift;
        when others => c_12 <= c_12_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 13 and associated fundamentals [[35], [123]]
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 19,
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
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 14 and associated fundamentals [[35], [123]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 15 and associated fundamentals [[35], [492]]
  c_15_13_2_False_resize <= resize(c_13, 25);
  c_15_13_2_False_shift <= shift_left(c_15_13_2_False_resize, 2);
  c_15_13_0_False_resize <= resize(c_13, 25);
  c_15_13_0_False_shift <= shift_left(c_15_13_0_False_resize, 0);
  with config_select_5 select c_15_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_13_2_False_shift;
        when others => c_15 <= c_15_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 16 and associated fundamentals [[70], [-369]]
  with config_select_6 select c_16_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 25,
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
      sub_i => c_16_sub_sel,
      x_i => c_14,
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 17 and associated fundamentals [[272], [-1]]
  c_17_3_4_False_resize <= resize(c_3, 25);
  c_17_3_4_False_shift <= shift_left(c_17_3_4_False_resize, 4);
  c_17_3_0_False_resize <= resize(c_3, 25);
  c_17_3_0_False_shift <= shift_left(c_17_3_0_False_resize, 0);
  with config_select_3 select c_17_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_3_4_False_shift;
        when others => c_17 <= c_17_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[64], [-1]]
  c_18_8_4_False_resize <= resize(c_8, 22);
  c_18_8_4_False_shift <= shift_left(c_18_8_4_False_resize, 4);
  c_18_3_0_False_resize <= resize(c_3, 22);
  c_18_3_0_False_shift <= shift_left(c_18_3_0_False_resize, 0);
  with config_select_3 select c_18_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_8_4_False_shift;
        when others => c_18 <= c_18_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 19 and associated fundamentals [[16], [3]]
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 22,
      w_o => 20,
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
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 20 and associated fundamentals [[3], [4064]]
  c_20_6_0_False_resize <= resize(c_6, 28);
  c_20_6_0_False_shift <= shift_left(c_20_6_0_False_resize, 0);
  c_20_10_5_False_resize <= resize(c_10, 28);
  c_20_10_5_False_shift <= shift_left(c_20_10_5_False_resize, 5);
  with config_select_3 select c_20_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_6_0_False_shift;
        when others => c_20 <= c_20_10_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 21 and associated fundamentals [[17], [16256]]
  c_21_3_0_False_resize <= resize(c_3, 30);
  c_21_3_0_False_shift <= shift_left(c_21_3_0_False_resize, 0);
  c_21_10_7_False_resize <= resize(c_10, 30);
  c_21_10_7_False_shift <= shift_left(c_21_10_7_False_resize, 7);
  with config_select_3 select c_21_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_3_0_False_shift;
        when others => c_21 <= c_21_10_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 22 and associated fundamentals [[37], [-28448]]
  with config_select_4 select c_22_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 30,
      w_o => 22,
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
      sub_i => c_22_sub_sel,
      x_i => c_20,
      y_i => c_21,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 23 and associated fundamentals [[10], [6]]
  with config_select_1 select c_23_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_23: entity work.adder_node
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
      sub_i => c_23_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 24 and associated fundamentals [[3], [10]]
  c_24_8_1_False_resize <= resize(c_8, 20);
  c_24_8_1_False_shift <= shift_left(c_24_8_1_False_resize, 1);
  c_24_6_0_False_resize <= c_6;
  c_24_6_0_False_shift <= shift_left(c_24_6_0_False_resize, 0);
  with config_select_3 select c_24_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_8_1_False_shift;
        when others => c_24 <= c_24_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 25 and associated fundamentals [[3], [112]]
  c_25_6_0_False_resize <= resize(c_6, 23);
  c_25_6_0_False_shift <= shift_left(c_25_6_0_False_resize, 0);
  c_25_6_3_False_resize <= resize(c_6, 23);
  c_25_6_3_False_shift <= shift_left(c_25_6_3_False_resize, 3);
  with config_select_3 select c_25_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_6_0_False_shift;
        when others => c_25 <= c_25_6_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 26 and associated fundamentals [[-189], [-7158]]
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 23,
      w_o => 27,
      s_x_i => 0,
      s_y_i => 6,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_24,
      y_i => c_25,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 27 and associated fundamentals [[17], [127]]
  c_27_3_0_False_resize <= resize(c_3, 23);
  c_27_3_0_False_shift <= shift_left(c_27_3_0_False_resize, 0);
  c_27_10_0_False_resize <= c_10;
  c_27_10_0_False_shift <= shift_left(c_27_10_0_False_resize, 0);
  with config_select_3 select c_27_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_3_0_False_shift;
        when others => c_27 <= c_27_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 28 and associated fundamentals [[-495], [135]]
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_27,
      y_i => c_18,
      z_o => c_28_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_28_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 29 and associated fundamentals [[560], [-369]]
  c_29_16_0_False_resize <= resize(c_16, 26);
  c_29_16_0_False_shift <= shift_left(c_29_16_0_False_resize, 0);
  c_29_16_3_False_resize <= resize(c_16, 26);
  c_29_16_3_False_shift <= shift_left(c_29_16_3_False_resize, 3);
  with config_select_7 select c_29_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_16_0_False_shift;
        when others => c_29 <= c_29_16_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 30 and associated fundamentals [[17920], [-369]]
  c_30_16_0_False_resize <= resize(c_16, 31);
  c_30_16_0_False_shift <= shift_left(c_30_16_0_False_resize, 0);
  c_30_16_8_False_resize <= resize(c_16, 31);
  c_30_16_8_False_shift <= shift_left(c_30_16_8_False_resize, 8);
  with config_select_7 select c_30_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "0" => c_30 <= c_30_16_0_False_shift;
        when others => c_30 <= c_30_16_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 8 with id 31 and associated fundamentals [[0], [-22878]]
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 31,
      w_o => 31,
      s_x_i => 6,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_29,
      y_i => c_30,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(30 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 32 and associated fundamentals [[1], [4]]
  c_32_0_2_False_resize <= resize(c_0, 18);
  c_32_0_2_False_shift <= shift_left(c_32_0_2_False_resize, 2);
  c_32_0_0_False_resize <= resize(c_0, 18);
  c_32_0_0_False_shift <= shift_left(c_32_0_0_False_resize, 0);
  with config_select_1 select c_32_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "0" => c_32 <= c_32_0_2_False_shift;
        when others => c_32 <= c_32_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 33 and associated fundamentals [[4], [1]]
  c_33_0_0_False_resize <= resize(c_0, 18);
  c_33_0_0_False_shift <= shift_left(c_33_0_0_False_resize, 0);
  c_33_0_2_False_resize <= resize(c_0, 18);
  c_33_0_2_False_shift <= shift_left(c_33_0_2_False_resize, 2);
  with config_select_1 select c_33_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "0" => c_33 <= c_33_0_0_False_shift;
        when others => c_33 <= c_33_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 34 and associated fundamentals [[-127], [36]]
  with config_select_2 select c_34_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_34: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 5,
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
      c_34 <= c_34_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 35 and associated fundamentals [[-127], [-2048]]
  c_35_34_0_False_resize <= resize(c_34, 28);
  c_35_34_0_False_shift <= shift_left(c_35_34_0_False_resize, 0);
  c_35_3_11_False_resize <= resize(c_3, 28);
  c_35_3_11_False_shift <= shift_left(c_35_3_11_False_resize, 11);
  with config_select_3 select c_35_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_34_0_False_shift;
        when others => c_35 <= c_35_3_11_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 36 and associated fundamentals [[3], [144]]
  c_36_6_0_False_resize <= resize(c_6, 24);
  c_36_6_0_False_shift <= shift_left(c_36_6_0_False_resize, 0);
  c_36_34_2_False_resize <= resize(c_34, 24);
  c_36_34_2_False_shift <= shift_left(c_36_34_2_False_resize, 2);
  with config_select_3 select c_36_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "0" => c_36 <= c_36_6_0_False_shift;
        when others => c_36 <= c_36_34_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 37 and associated fundamentals [[-505], [-8336]]
  with config_select_4 select c_37_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_37: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 24,
      w_o => 27,
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
      sub_i => c_37_sub_sel,
      x_i => c_35,
      y_i => c_36,
      z_o => c_37_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_37_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 38 and associated fundamentals [[4], [28]]
  c_38_6_1_False_resize <= resize(c_6, 21);
  c_38_6_1_False_shift <= shift_left(c_38_6_1_False_resize, 1);
  c_38_8_0_False_resize <= resize(c_8, 21);
  c_38_8_0_False_shift <= shift_left(c_38_8_0_False_resize, 0);
  with config_select_3 select c_38_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "0" => c_38 <= c_38_6_1_False_shift;
        when others => c_38 <= c_38_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 39 and associated fundamentals [[120], [5]]
  c_39_10_3_False_resize <= c_10;
  c_39_10_3_False_shift <= shift_left(c_39_10_3_False_resize, 3);
  c_39_8_0_False_resize <= resize(c_8, 23);
  c_39_8_0_False_shift <= shift_left(c_39_8_0_False_resize, 0);
  with config_select_3 select c_39_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "0" => c_39 <= c_39_10_3_False_shift;
        when others => c_39 <= c_39_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 40 and associated fundamentals [[272], [214]]
  with config_select_4 select c_40_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_40: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 23,
      w_o => 25,
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
      sub_i => c_40_sub_sel,
      x_i => c_38,
      y_i => c_39,
      z_o => c_40_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_40_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 5 with id 41 and associated fundamentals [[529], [327]]
  inst_adder_node_41: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 25,
      w_o => 26,
      s_x_i => 6,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_19,
      y_i => c_28,
      z_o => c_41_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_41_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 42 and associated fundamentals [[-347], [-589]]
  with config_select_5 select c_42_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_42: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 27,
      w_o => 26,
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
      sub_i => c_42_sub_sel,
      x_i => c_37,
      y_i => c_26,
      z_o => c_42_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_42_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 43 and associated fundamentals [[4], [-8]]
  c_43_8_0_False_resize <= resize(c_8, 20);
  c_43_8_0_False_shift <= shift_left(c_43_8_0_False_resize, 0);
  c_43_3_3_False_resize <= c_3(19 downto 0);
  c_43_3_3_False_shift <= shift_left(c_43_3_3_False_resize, 3);
  with config_select_3 select c_43_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "0" => c_43 <= c_43_8_0_False_shift;
        when others => c_43 <= c_43_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 44 and associated fundamentals [[64], [127]]
  c_44_8_4_False_resize <= resize(c_8, 23);
  c_44_8_4_False_shift <= shift_left(c_44_8_4_False_resize, 4);
  c_44_10_0_False_resize <= c_10;
  c_44_10_0_False_shift <= shift_left(c_44_10_0_False_resize, 0);
  with config_select_3 select c_44_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "0" => c_44 <= c_44_8_4_False_shift;
        when others => c_44 <= c_44_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 45 and associated fundamentals [[80], [95]]
  inst_adder_node_45: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 23,
      w_o => 23,
      s_x_i => 2,
      s_y_i => 0,
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
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_45_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 46 and associated fundamentals [[-127], [448]]
  c_46_6_5_False_resize <= resize(c_6, 25);
  c_46_6_5_False_shift <= shift_left(c_46_6_5_False_resize, 5);
  c_46_34_0_False_resize <= resize(c_34, 25);
  c_46_34_0_False_shift <= shift_left(c_46_34_0_False_resize, 0);
  with config_select_3 select c_46_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "0" => c_46 <= c_46_6_5_False_shift;
        when others => c_46 <= c_46_34_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 47 and associated fundamentals [[136], [-1]]
  c_47_3_3_False_resize <= resize(c_3, 24);
  c_47_3_3_False_shift <= shift_left(c_47_3_3_False_resize, 3);
  c_47_3_0_False_resize <= resize(c_3, 24);
  c_47_3_0_False_shift <= shift_left(c_47_3_0_False_resize, 0);
  with config_select_3 select c_47_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "0" => c_47 <= c_47_3_3_False_shift;
        when others => c_47 <= c_47_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 48 and associated fundamentals [[-263], [449]]
  inst_adder_node_48: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 24,
      w_o => 25,
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
      x_i => c_46,
      y_i => c_47,
      z_o => c_48_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_48_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 49 and associated fundamentals [[648], [-376]]
  with config_select_2 select c_49_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_49: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 20,
      w_o => 26,
      s_x_i => 3,
      s_y_i => 6,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_49_sub_sel,
      x_i => c_5,
      y_i => c_23,
      z_o => c_49_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_49_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 50 and associated fundamentals [[60], [-376]]
  c_50_10_2_False_resize <= resize(c_10, 25);
  c_50_10_2_False_shift <= shift_left(c_50_10_2_False_resize, 2);
  c_50_49_0_False_resize <= c_49(24 downto 0);
  c_50_49_0_False_shift <= shift_left(c_50_49_0_False_resize, 0);
  with config_select_3 select c_50_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_50_sel is
        when "0" => c_50 <= c_50_10_2_False_shift;
        when others => c_50 <= c_50_49_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 51 and associated fundamentals [[-127], [5]]
  c_51_34_0_False_resize <= c_34;
  c_51_34_0_False_shift <= shift_left(c_51_34_0_False_resize, 0);
  c_51_8_0_False_resize <= resize(c_8, 23);
  c_51_8_0_False_shift <= shift_left(c_51_8_0_False_resize, 0);
  with config_select_3 select c_51_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_51_sel is
        when "0" => c_51 <= c_51_34_0_False_shift;
        when others => c_51 <= c_51_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 52 and associated fundamentals [[247], [-757]]
  inst_adder_node_52: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
      w_o => 26,
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
      x_i => c_50,
      y_i => c_51,
      z_o => c_52_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_52_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 53 and associated fundamentals [[648], [56]]
  c_53_6_2_False_resize <= resize(c_6, 26);
  c_53_6_2_False_shift <= shift_left(c_53_6_2_False_resize, 2);
  c_53_49_0_False_resize <= c_49;
  c_53_49_0_False_shift <= shift_left(c_53_49_0_False_resize, 0);
  with config_select_3 select c_53_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_53_sel is
        when "0" => c_53 <= c_53_6_2_False_shift;
        when others => c_53 <= c_53_49_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 54 and associated fundamentals [[3], [-752]]
  c_54_49_1_False_resize <= c_49;
  c_54_49_1_False_shift <= shift_left(c_54_49_1_False_resize, 1);
  c_54_6_0_False_resize <= resize(c_6, 26);
  c_54_6_0_False_shift <= shift_left(c_54_6_0_False_resize, 0);
  with config_select_3 select c_54_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_54_sel is
        when "0" => c_54 <= c_54_49_1_False_shift;
        when others => c_54 <= c_54_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 55 and associated fundamentals [[651], [808]]
  with config_select_4 select c_55_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_55: entity work.adder_node
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
      sub_i => c_55_sub_sel,
      x_i => c_53,
      y_i => c_54,
      z_o => c_55_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_55_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 56 and associated fundamentals [[516], [1023]]
  with config_select_2 select c_56_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_56: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 18,
      w_o => 26,
      s_x_i => 9,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_56_sub_sel,
      x_i => c_2,
      y_i => c_33,
      z_o => c_56_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_56_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 57 and associated fundamentals [[516], [576]]
  c_57_34_4_False_resize <= resize(c_34, 26);
  c_57_34_4_False_shift <= shift_left(c_57_34_4_False_resize, 4);
  c_57_56_0_False_resize <= c_56;
  c_57_56_0_False_shift <= shift_left(c_57_56_0_False_resize, 0);
  with config_select_3 select c_57_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_57_sel is
        when "0" => c_57 <= c_57_34_4_False_shift;
        when others => c_57 <= c_57_56_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 58 and associated fundamentals [[3], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_6 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 59 and associated fundamentals [[519], [562]]
  with config_select_4 select c_59_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_59: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 20,
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
      sub_i => c_59_sub_sel,
      x_i => c_57,
      y_i => c_58,
      z_o => c_59_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_59_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 60 and associated fundamentals [[516], [1023]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_56 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 61 and associated fundamentals [[-127], [40]]
  c_61_8_3_False_resize <= resize(c_8, 23);
  c_61_8_3_False_shift <= shift_left(c_61_8_3_False_resize, 3);
  c_61_34_0_False_resize <= c_34;
  c_61_34_0_False_shift <= shift_left(c_61_34_0_False_resize, 0);
  with config_select_3 select c_61_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_61_sel is
        when "0" => c_61 <= c_61_8_3_False_shift;
        when others => c_61 <= c_61_34_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 62 and associated fundamentals [[643], [983]]
  inst_adder_node_62: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 23,
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
      x_i => c_60,
      y_i => c_61,
      z_o => c_62_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_62_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 63 and associated fundamentals [[-263], [-757]]
  c_63_52_0_False_resize <= c_52;
  c_63_52_0_False_shift <= shift_left(c_63_52_0_False_resize, 0);
  c_63_48_0_False_resize <= resize(c_48, 26);
  c_63_48_0_False_shift <= shift_left(c_63_48_0_False_resize, 0);
  with config_select_5 select c_63_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_63_sel is
        when "0" => c_63 <= c_63_52_0_False_shift;
        when others => c_63 <= c_63_48_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 64 and associated fundamentals [[263], [757]]
  c_64_resize <= c_63;
  c_64 <= -shift_left(c_64_resize, 0);
  -- node of type 'mux' in stage 5 with id 65 and associated fundamentals [[643], [898]]
  c_65_62_0_False_resize <= c_62;
  c_65_62_0_False_shift <= shift_left(c_65_62_0_False_resize, 0);
  c_65_48_1_False_resize <= resize(c_48, 26);
  c_65_48_1_False_shift <= shift_left(c_65_48_1_False_resize, 1);
  with config_select_5 select c_65_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_65_sel is
        when "0" => c_65 <= c_65_62_0_False_shift;
        when others => c_65 <= c_65_48_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 66 and associated fundamentals [[643], [898]]
  c_66_resize <= c_65;
  c_66 <= shift_left(c_66_resize, 0);
  -- node of type 'mux' in stage 5 with id 67 and associated fundamentals [[16], [983]]
  c_67_62_0_False_resize <= c_62;
  c_67_62_0_False_shift <= shift_left(c_67_62_0_False_resize, 0);
  c_67_19_0_False_resize <= resize(c_19, 26);
  c_67_19_0_False_shift <= shift_left(c_67_19_0_False_resize, 0);
  with config_select_5 select c_67_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_67_sel is
        when "0" => c_67 <= c_67_62_0_False_shift;
        when others => c_67 <= c_67_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 68 and associated fundamentals [[16], [983]]
  c_68_resize <= c_67;
  c_68 <= shift_left(c_68_resize, 0);
  -- node of type 'mux' in stage 5 with id 69 and associated fundamentals [[519], [808]]
  c_69_55_0_False_resize <= c_55;
  c_69_55_0_False_shift <= shift_left(c_69_55_0_False_resize, 0);
  c_69_59_0_False_resize <= c_59;
  c_69_59_0_False_shift <= shift_left(c_69_59_0_False_resize, 0);
  with config_select_5 select c_69_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_69_sel is
        when "0" => c_69 <= c_69_55_0_False_shift;
        when others => c_69 <= c_69_59_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 70 and associated fundamentals [[519], [808]]
  c_70_resize <= c_69;
  c_70 <= shift_left(c_70_resize, 0);
  -- node of type 'mux' in stage 5 with id 71 and associated fundamentals [[651], [3]]
  c_71_55_0_False_resize <= c_55;
  c_71_55_0_False_shift <= shift_left(c_71_55_0_False_resize, 0);
  c_71_19_0_False_resize <= resize(c_19, 26);
  c_71_19_0_False_shift <= shift_left(c_71_19_0_False_resize, 0);
  with config_select_5 select c_71_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_71_sel is
        when "0" => c_71 <= c_71_55_0_False_shift;
        when others => c_71 <= c_71_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 72 and associated fundamentals [[651], [3]]
  c_72_resize <= c_71;
  c_72 <= shift_left(c_72_resize, 0);
  -- node of type 'mux' in stage 5 with id 73 and associated fundamentals [[247], [562]]
  c_73_52_0_False_resize <= c_52;
  c_73_52_0_False_shift <= shift_left(c_73_52_0_False_resize, 0);
  c_73_59_0_False_resize <= c_59;
  c_73_59_0_False_shift <= shift_left(c_73_59_0_False_resize, 0);
  with config_select_5 select c_73_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_73_sel is
        when "0" => c_73 <= c_73_52_0_False_shift;
        when others => c_73 <= c_73_59_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 74 and associated fundamentals [[247], [562]]
  c_74_resize <= c_73;
  c_74 <= shift_left(c_74_resize, 0);
  -- node of type 'mux' in stage 5 with id 75 and associated fundamentals [[592], [214]]
  c_75_40_0_False_resize <= resize(c_40, 26);
  c_75_40_0_False_shift <= shift_left(c_75_40_0_False_resize, 0);
  c_75_22_4_False_resize <= resize(c_22, 26);
  c_75_22_4_False_shift <= shift_left(c_75_22_4_False_resize, 4);
  with config_select_5 select c_75_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_75_sel is
        when "0" => c_75 <= c_75_40_0_False_shift;
        when others => c_75 <= c_75_22_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 76 and associated fundamentals [[592], [214]]
  c_76_resize <= c_75;
  c_76 <= shift_left(c_76_resize, 0);
  -- node of type 'mux' in stage 5 with id 77 and associated fundamentals [[140], [95]]
  c_77_45_0_False_resize <= resize(c_45, 24);
  c_77_45_0_False_shift <= shift_left(c_77_45_0_False_resize, 0);
  c_77_13_2_False_resize <= resize(c_13, 24);
  c_77_13_2_False_shift <= shift_left(c_77_13_2_False_resize, 2);
  with config_select_5 select c_77_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_77_sel is
        when "0" => c_77 <= c_77_45_0_False_shift;
        when others => c_77 <= c_77_13_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 78 and associated fundamentals [[140], [95]]
  c_78_resize <= c_77;
  c_78 <= shift_left(c_78_resize, 0);
  -- node of type 'output' in stage 5 with id 79 and associated fundamentals [[347], [589]]
  c_79_resize <= c_42;
  c_79 <= -shift_left(c_79_resize, 0);
  -- node of type 'output' in stage 5 with id 80 and associated fundamentals [[529], [327]]
  c_80_resize <= c_41;
  c_80 <= shift_left(c_80_resize, 0);
end architecture;
