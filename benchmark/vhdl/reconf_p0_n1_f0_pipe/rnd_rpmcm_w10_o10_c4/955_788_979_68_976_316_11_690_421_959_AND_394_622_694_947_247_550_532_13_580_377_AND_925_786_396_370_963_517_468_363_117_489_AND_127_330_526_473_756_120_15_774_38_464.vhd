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
  signal config_select_18: std_logic_vector(1 downto 0);
  signal config_select_19: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_0_0_False_resize: signed(17 downto 0);
  signal c_1_0_0_False_shift: signed(17 downto 0);
  signal c_1_0_2_False_resize: signed(17 downto 0);
  signal c_1_0_2_False_shift: signed(17 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(18 downto 0);
  signal c_2_0_2_False_resize: signed(18 downto 0);
  signal c_2_0_2_False_shift: signed(18 downto 0);
  signal c_2_0_3_False_resize: signed(18 downto 0);
  signal c_2_0_3_False_shift: signed(18 downto 0);
  signal c_2_0_0_False_resize: signed(18 downto 0);
  signal c_2_0_0_False_shift: signed(18 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(19 downto 0);
  signal c_3_i1_resize: signed(19 downto 0);
  signal c_3_i0_shift: signed(19 downto 0);
  signal c_3_i1_shift: signed(19 downto 0);
  signal c_3_arith: signed(19 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_5_0_False_resize: signed(22 downto 0);
  signal c_6_5_0_False_shift: signed(22 downto 0);
  signal c_6_5_2_False_resize: signed(22 downto 0);
  signal c_6_5_2_False_shift: signed(22 downto 0);
  signal c_6_5_6_False_resize: signed(22 downto 0);
  signal c_6_5_6_False_shift: signed(22 downto 0);
  signal c_6_3_4_False_resize: signed(22 downto 0);
  signal c_6_3_4_False_shift: signed(22 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(19 downto 0);
  signal c_7_0_0_False_resize: signed(19 downto 0);
  signal c_7_0_0_False_shift: signed(19 downto 0);
  signal c_7_0_1_False_resize: signed(19 downto 0);
  signal c_7_0_1_False_shift: signed(19 downto 0);
  signal c_7_0_4_False_resize: signed(19 downto 0);
  signal c_7_0_4_False_shift: signed(19 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(19 downto 0);
  signal c_9: signed(19 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_i0_resize: signed(22 downto 0);
  signal c_10_i1_resize: signed(22 downto 0);
  signal c_10_i0_shift: signed(22 downto 0);
  signal c_10_i1_shift: signed(22 downto 0);
  signal c_10_arith: signed(22 downto 0);
  signal c_10_oshift: signed(22 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(25 downto 0);
  signal c_11_3_5_False_resize: signed(25 downto 0);
  signal c_11_3_5_False_shift: signed(25 downto 0);
  signal c_11_5_10_False_resize: signed(25 downto 0);
  signal c_11_5_10_False_shift: signed(25 downto 0);
  signal c_11_3_0_False_resize: signed(25 downto 0);
  signal c_11_3_0_False_shift: signed(25 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(15 downto 0);
  signal c_13: signed(15 downto 0);
  signal c_14: signed(19 downto 0);
  signal c_15: signed(19 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_15_3_False_resize: signed(23 downto 0);
  signal c_16_15_3_False_shift: signed(23 downto 0);
  signal c_16_10_1_False_resize: signed(23 downto 0);
  signal c_16_10_1_False_shift: signed(23 downto 0);
  signal c_16_10_0_False_resize: signed(23 downto 0);
  signal c_16_10_0_False_shift: signed(23 downto 0);
  signal c_16_13_3_False_resize: signed(23 downto 0);
  signal c_16_13_3_False_shift: signed(23 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_19: signed(26 downto 0);
  signal c_19_i0_resize: signed(26 downto 0);
  signal c_19_i1_resize: signed(26 downto 0);
  signal c_19_i0_shift: signed(26 downto 0);
  signal c_19_i1_shift: signed(26 downto 0);
  signal c_19_arith: signed(26 downto 0);
  signal c_19_oshift: signed(26 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(24 downto 0);
  signal c_20_15_0_False_resize: signed(24 downto 0);
  signal c_20_15_0_False_shift: signed(24 downto 0);
  signal c_20_10_1_False_resize: signed(24 downto 0);
  signal c_20_10_1_False_shift: signed(24 downto 0);
  signal c_20_10_2_False_resize: signed(24 downto 0);
  signal c_20_10_2_False_shift: signed(24 downto 0);
  signal c_20_13_0_False_resize: signed(24 downto 0);
  signal c_20_13_0_False_shift: signed(24 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_15_7_False_resize: signed(25 downto 0);
  signal c_21_15_7_False_shift: signed(25 downto 0);
  signal c_21_13_0_False_resize: signed(25 downto 0);
  signal c_21_13_0_False_shift: signed(25 downto 0);
  signal c_21_13_7_False_resize: signed(25 downto 0);
  signal c_21_13_7_False_shift: signed(25 downto 0);
  signal c_21_10_0_False_resize: signed(25 downto 0);
  signal c_21_10_0_False_shift: signed(25 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(24 downto 0);
  signal c_22_i0_resize: signed(24 downto 0);
  signal c_22_i1_resize: signed(24 downto 0);
  signal c_22_i0_shift: signed(24 downto 0);
  signal c_22_i1_shift: signed(24 downto 0);
  signal c_22_arith: signed(24 downto 0);
  signal c_22_oshift: signed(24 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(15 downto 0);
  signal c_24: signed(15 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_25_24_7_False_resize: signed(22 downto 0);
  signal c_25_24_7_False_shift: signed(22 downto 0);
  signal c_25_24_1_False_resize: signed(22 downto 0);
  signal c_25_24_1_False_shift: signed(22 downto 0);
  signal c_25_22_0_False_resize: signed(22 downto 0);
  signal c_25_22_0_False_shift: signed(22 downto 0);
  signal c_25_24_6_False_resize: signed(22 downto 0);
  signal c_25_24_6_False_shift: signed(22 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(19 downto 0);
  signal c_27: signed(19 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_30: signed(24 downto 0);
  signal c_30_24_8_False_resize: signed(24 downto 0);
  signal c_30_24_8_False_shift: signed(24 downto 0);
  signal c_30_27_4_False_resize: signed(24 downto 0);
  signal c_30_27_4_False_shift: signed(24 downto 0);
  signal c_30_22_0_False_resize: signed(24 downto 0);
  signal c_30_22_0_False_shift: signed(24 downto 0);
  signal c_30_29_0_False_resize: signed(24 downto 0);
  signal c_30_29_0_False_shift: signed(24 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_i0_resize: signed(25 downto 0);
  signal c_31_i1_resize: signed(25 downto 0);
  signal c_31_i0_shift: signed(25 downto 0);
  signal c_31_i1_shift: signed(25 downto 0);
  signal c_31_arith: signed(25 downto 0);
  signal c_31_oshift: signed(25 downto 0);
  signal c_31_sub_sel: std_logic;
  signal c_32: signed(19 downto 0);
  signal c_33: signed(19 downto 0);
  signal c_34: signed(26 downto 0);
  signal c_35: signed(26 downto 0);
  signal c_36: signed(26 downto 0);
  signal c_36_31_0_False_resize: signed(26 downto 0);
  signal c_36_31_0_False_shift: signed(26 downto 0);
  signal c_36_31_1_False_resize: signed(26 downto 0);
  signal c_36_31_1_False_shift: signed(26 downto 0);
  signal c_36_35_0_False_resize: signed(26 downto 0);
  signal c_36_35_0_False_shift: signed(26 downto 0);
  signal c_36_33_0_False_resize: signed(26 downto 0);
  signal c_36_33_0_False_shift: signed(26 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(15 downto 0);
  signal c_38: signed(15 downto 0);
  signal c_39: signed(22 downto 0);
  signal c_40: signed(22 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_38_2_False_resize: signed(23 downto 0);
  signal c_41_38_2_False_shift: signed(23 downto 0);
  signal c_41_40_3_False_resize: signed(23 downto 0);
  signal c_41_40_3_False_shift: signed(23 downto 0);
  signal c_41_40_0_False_resize: signed(23 downto 0);
  signal c_41_40_0_False_shift: signed(23 downto 0);
  signal c_41_31_2_False_resize: signed(23 downto 0);
  signal c_41_31_2_False_shift: signed(23 downto 0);
  signal c_41_sel: std_logic_vector(1 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_42_i0_resize: signed(25 downto 0);
  signal c_42_i1_resize: signed(25 downto 0);
  signal c_42_i0_shift: signed(25 downto 0);
  signal c_42_i1_shift: signed(25 downto 0);
  signal c_42_arith: signed(25 downto 0);
  signal c_42_oshift: signed(25 downto 0);
  signal c_42_sub_sel: std_logic;
  signal c_43: signed(25 downto 0);
  signal c_43_22_1_False_resize: signed(25 downto 0);
  signal c_43_22_1_False_shift: signed(25 downto 0);
  signal c_43_19_0_False_resize: signed(25 downto 0);
  signal c_43_19_0_False_shift: signed(25 downto 0);
  signal c_43_29_0_False_resize: signed(25 downto 0);
  signal c_43_29_0_False_shift: signed(25 downto 0);
  signal c_43_29_5_False_resize: signed(25 downto 0);
  signal c_43_29_5_False_shift: signed(25 downto 0);
  signal c_43_sel: std_logic_vector(1 downto 0);
  signal c_44: signed(19 downto 0);
  signal c_45: signed(19 downto 0);
  signal c_46: signed(26 downto 0);
  signal c_47: signed(26 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_48_47_0_False_resize: signed(25 downto 0);
  signal c_48_47_0_False_shift: signed(25 downto 0);
  signal c_48_42_0_False_resize: signed(25 downto 0);
  signal c_48_42_0_False_shift: signed(25 downto 0);
  signal c_48_45_0_False_resize: signed(25 downto 0);
  signal c_48_45_0_False_shift: signed(25 downto 0);
  signal c_48_45_7_False_resize: signed(25 downto 0);
  signal c_48_45_7_False_shift: signed(25 downto 0);
  signal c_48_sel: std_logic_vector(1 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_53_i0_resize: signed(25 downto 0);
  signal c_53_i1_resize: signed(25 downto 0);
  signal c_53_i0_shift: signed(25 downto 0);
  signal c_53_i1_shift: signed(25 downto 0);
  signal c_53_arith: signed(25 downto 0);
  signal c_53_oshift: signed(25 downto 0);
  signal c_53_sub_sel: std_logic;
  signal c_54: signed(24 downto 0);
  signal c_55: signed(24 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_56_55_1_False_resize: signed(25 downto 0);
  signal c_56_55_1_False_shift: signed(25 downto 0);
  signal c_56_40_7_False_resize: signed(25 downto 0);
  signal c_56_40_7_False_shift: signed(25 downto 0);
  signal c_56_31_0_False_resize: signed(25 downto 0);
  signal c_56_31_0_False_shift: signed(25 downto 0);
  signal c_56_38_2_False_resize: signed(25 downto 0);
  signal c_56_38_2_False_shift: signed(25 downto 0);
  signal c_56_sel: std_logic_vector(1 downto 0);
  signal c_57: signed(24 downto 0);
  signal c_57_29_0_False_resize: signed(24 downto 0);
  signal c_57_29_0_False_shift: signed(24 downto 0);
  signal c_57_24_8_False_resize: signed(24 downto 0);
  signal c_57_24_8_False_shift: signed(24 downto 0);
  signal c_57_19_0_False_resize: signed(24 downto 0);
  signal c_57_19_0_False_shift: signed(24 downto 0);
  signal c_57_sel: std_logic_vector(1 downto 0);
  signal c_58: signed(24 downto 0);
  signal c_59: signed(24 downto 0);
  signal c_60: signed(24 downto 0);
  signal c_60_i0_resize: signed(24 downto 0);
  signal c_60_i1_resize: signed(24 downto 0);
  signal c_60_i0_shift: signed(24 downto 0);
  signal c_60_i1_shift: signed(24 downto 0);
  signal c_60_arith: signed(24 downto 0);
  signal c_60_oshift: signed(24 downto 0);
  signal c_61: signed(24 downto 0);
  signal c_61_15_0_False_resize: signed(24 downto 0);
  signal c_61_15_0_False_shift: signed(24 downto 0);
  signal c_61_10_0_False_resize: signed(24 downto 0);
  signal c_61_10_0_False_shift: signed(24 downto 0);
  signal c_61_10_2_False_resize: signed(24 downto 0);
  signal c_61_10_2_False_shift: signed(24 downto 0);
  signal c_61_10_6_False_resize: signed(24 downto 0);
  signal c_61_10_6_False_shift: signed(24 downto 0);
  signal c_61_sel: std_logic_vector(1 downto 0);
  signal c_62: signed(15 downto 0);
  signal c_63: signed(15 downto 0);
  signal c_64: signed(22 downto 0);
  signal c_65: signed(22 downto 0);
  signal c_66: signed(24 downto 0);
  signal c_66_60_0_False_resize: signed(24 downto 0);
  signal c_66_60_0_False_shift: signed(24 downto 0);
  signal c_66_65_0_False_resize: signed(24 downto 0);
  signal c_66_65_0_False_shift: signed(24 downto 0);
  signal c_66_63_1_False_resize: signed(24 downto 0);
  signal c_66_63_1_False_shift: signed(24 downto 0);
  signal c_66_sel: std_logic_vector(1 downto 0);
  signal c_67: signed(24 downto 0);
  signal c_68: signed(24 downto 0);
  signal c_69: signed(24 downto 0);
  signal c_70: signed(24 downto 0);
  signal c_71: signed(24 downto 0);
  signal c_72: signed(24 downto 0);
  signal c_73: signed(24 downto 0);
  signal c_73_i0_resize: signed(24 downto 0);
  signal c_73_i1_resize: signed(24 downto 0);
  signal c_73_i0_shift: signed(24 downto 0);
  signal c_73_i1_shift: signed(24 downto 0);
  signal c_73_arith: signed(24 downto 0);
  signal c_73_oshift: signed(24 downto 0);
  signal c_74: signed(25 downto 0);
  signal c_74_31_0_False_resize: signed(25 downto 0);
  signal c_74_31_0_False_shift: signed(25 downto 0);
  signal c_74_55_0_False_resize: signed(25 downto 0);
  signal c_74_55_0_False_shift: signed(25 downto 0);
  signal c_74_33_3_False_resize: signed(25 downto 0);
  signal c_74_33_3_False_shift: signed(25 downto 0);
  signal c_74_sel: std_logic_vector(1 downto 0);
  signal c_75: signed(25 downto 0);
  signal c_76: signed(25 downto 0);
  signal c_77: signed(25 downto 0);
  signal c_78: signed(25 downto 0);
  signal c_79: signed(24 downto 0);
  signal c_80: signed(24 downto 0);
  signal c_81: signed(25 downto 0);
  signal c_81_78_3_False_resize: signed(25 downto 0);
  signal c_81_78_3_False_shift: signed(25 downto 0);
  signal c_81_73_0_False_resize: signed(25 downto 0);
  signal c_81_73_0_False_shift: signed(25 downto 0);
  signal c_81_53_0_False_resize: signed(25 downto 0);
  signal c_81_53_0_False_shift: signed(25 downto 0);
  signal c_81_80_4_False_resize: signed(25 downto 0);
  signal c_81_80_4_False_shift: signed(25 downto 0);
  signal c_81_sel: std_logic_vector(1 downto 0);
  signal c_82: signed(25 downto 0);
  signal c_83: signed(25 downto 0);
  signal c_84: signed(25 downto 0);
  signal c_85: signed(25 downto 0);
  signal c_86: signed(25 downto 0);
  signal c_86_i0_resize: signed(25 downto 0);
  signal c_86_i1_resize: signed(25 downto 0);
  signal c_86_i0_shift: signed(25 downto 0);
  signal c_86_i1_shift: signed(25 downto 0);
  signal c_86_arith: signed(25 downto 0);
  signal c_86_oshift: signed(25 downto 0);
  signal c_86_sub_sel: std_logic;
  signal c_87: signed(15 downto 0);
  signal c_88: signed(15 downto 0);
  signal c_89: signed(22 downto 0);
  signal c_90: signed(22 downto 0);
  signal c_91: signed(25 downto 0);
  signal c_92: signed(25 downto 0);
  signal c_93: signed(24 downto 0);
  signal c_93_92_0_False_resize: signed(24 downto 0);
  signal c_93_92_0_False_shift: signed(24 downto 0);
  signal c_93_88_7_False_resize: signed(24 downto 0);
  signal c_93_88_7_False_shift: signed(24 downto 0);
  signal c_93_90_7_False_resize: signed(24 downto 0);
  signal c_93_90_7_False_shift: signed(24 downto 0);
  signal c_93_73_0_False_resize: signed(24 downto 0);
  signal c_93_73_0_False_shift: signed(24 downto 0);
  signal c_93_sel: std_logic_vector(1 downto 0);
  signal c_94: signed(24 downto 0);
  signal c_95: signed(24 downto 0);
  signal c_96: signed(25 downto 0);
  signal c_96_63_10_False_resize: signed(25 downto 0);
  signal c_96_63_10_False_shift: signed(25 downto 0);
  signal c_96_47_0_False_resize: signed(25 downto 0);
  signal c_96_47_0_False_shift: signed(25 downto 0);
  signal c_96_95_0_False_resize: signed(25 downto 0);
  signal c_96_95_0_False_shift: signed(25 downto 0);
  signal c_96_60_1_False_resize: signed(25 downto 0);
  signal c_96_60_1_False_shift: signed(25 downto 0);
  signal c_96_sel: std_logic_vector(1 downto 0);
  signal c_97: signed(25 downto 0);
  signal c_98: signed(25 downto 0);
  signal c_99: signed(25 downto 0);
  signal c_99_i0_resize: signed(25 downto 0);
  signal c_99_i1_resize: signed(25 downto 0);
  signal c_99_i0_shift: signed(25 downto 0);
  signal c_99_i1_shift: signed(25 downto 0);
  signal c_99_arith: signed(25 downto 0);
  signal c_99_oshift: signed(25 downto 0);
  signal c_99_sub_sel: std_logic;
  signal c_100: signed(25 downto 0);
  signal c_101: signed(25 downto 0);
  signal c_102: signed(24 downto 0);
  signal c_103: signed(24 downto 0);
  signal c_104: signed(25 downto 0);
  signal c_104_103_1_False_resize: signed(25 downto 0);
  signal c_104_103_1_False_shift: signed(25 downto 0);
  signal c_104_101_0_False_resize: signed(25 downto 0);
  signal c_104_101_0_False_shift: signed(25 downto 0);
  signal c_104_99_0_False_resize: signed(25 downto 0);
  signal c_104_99_0_False_shift: signed(25 downto 0);
  signal c_104_86_0_False_resize: signed(25 downto 0);
  signal c_104_86_0_False_shift: signed(25 downto 0);
  signal c_104_sel: std_logic_vector(1 downto 0);
  signal c_105: signed(19 downto 0);
  signal c_106: signed(19 downto 0);
  signal c_107: signed(19 downto 0);
  signal c_108: signed(19 downto 0);
  signal c_109: signed(24 downto 0);
  signal c_110: signed(24 downto 0);
  signal c_111: signed(24 downto 0);
  signal c_112: signed(24 downto 0);
  signal c_113: signed(24 downto 0);
  signal c_114: signed(24 downto 0);
  signal c_115: signed(26 downto 0);
  signal c_115_114_2_False_resize: signed(26 downto 0);
  signal c_115_114_2_False_shift: signed(26 downto 0);
  signal c_115_112_0_False_resize: signed(26 downto 0);
  signal c_115_112_0_False_shift: signed(26 downto 0);
  signal c_115_86_1_False_resize: signed(26 downto 0);
  signal c_115_86_1_False_shift: signed(26 downto 0);
  signal c_115_108_1_False_resize: signed(26 downto 0);
  signal c_115_108_1_False_shift: signed(26 downto 0);
  signal c_115_sel: std_logic_vector(1 downto 0);
  signal c_116: signed(25 downto 0);
  signal c_116_i0_resize: signed(25 downto 0);
  signal c_116_i1_resize: signed(25 downto 0);
  signal c_116_i0_shift: signed(25 downto 0);
  signal c_116_i1_shift: signed(25 downto 0);
  signal c_116_arith: signed(25 downto 0);
  signal c_116_oshift: signed(25 downto 0);
  signal c_116_sub_sel: std_logic;
  signal c_117: signed(26 downto 0);
  signal c_117_63_0_False_resize: signed(26 downto 0);
  signal c_117_63_0_False_shift: signed(26 downto 0);
  signal c_117_63_2_False_resize: signed(26 downto 0);
  signal c_117_63_2_False_shift: signed(26 downto 0);
  signal c_117_60_2_False_resize: signed(26 downto 0);
  signal c_117_60_2_False_shift: signed(26 downto 0);
  signal c_117_45_6_False_resize: signed(26 downto 0);
  signal c_117_45_6_False_shift: signed(26 downto 0);
  signal c_117_sel: std_logic_vector(1 downto 0);
  signal c_118: signed(15 downto 0);
  signal c_119: signed(15 downto 0);
  signal c_120: signed(25 downto 0);
  signal c_120_86_0_False_resize: signed(25 downto 0);
  signal c_120_86_0_False_shift: signed(25 downto 0);
  signal c_120_99_0_False_resize: signed(25 downto 0);
  signal c_120_99_0_False_shift: signed(25 downto 0);
  signal c_120_119_4_False_resize: signed(25 downto 0);
  signal c_120_119_4_False_shift: signed(25 downto 0);
  signal c_120_114_0_False_resize: signed(25 downto 0);
  signal c_120_114_0_False_shift: signed(25 downto 0);
  signal c_120_sel: std_logic_vector(1 downto 0);
  signal c_121: signed(26 downto 0);
  signal c_122: signed(26 downto 0);
  signal c_123: signed(26 downto 0);
  signal c_124: signed(26 downto 0);
  signal c_125: signed(25 downto 0);
  signal c_125_i0_resize: signed(25 downto 0);
  signal c_125_i1_resize: signed(25 downto 0);
  signal c_125_i0_shift: signed(25 downto 0);
  signal c_125_i1_shift: signed(25 downto 0);
  signal c_125_arith: signed(25 downto 0);
  signal c_125_oshift: signed(25 downto 0);
  signal c_125_sub_sel: std_logic;
  signal c_126: signed(25 downto 0);
  signal c_127: signed(25 downto 0);
  signal c_128: signed(25 downto 0);
  signal c_129: signed(25 downto 0);
  signal c_130: signed(25 downto 0);
  signal c_131: signed(25 downto 0);
  signal c_132: signed(25 downto 0);
  signal c_132_131_0_False_resize: signed(25 downto 0);
  signal c_132_131_0_False_shift: signed(25 downto 0);
  signal c_132_125_0_False_resize: signed(25 downto 0);
  signal c_132_125_0_False_shift: signed(25 downto 0);
  signal c_132_129_0_False_resize: signed(25 downto 0);
  signal c_132_129_0_False_shift: signed(25 downto 0);
  signal c_132_sel: std_logic_vector(1 downto 0);
  signal c_133: signed(25 downto 0);
  signal c_134: signed(25 downto 0);
  signal c_135: signed(25 downto 0);
  signal c_135_134_0_False_resize: signed(25 downto 0);
  signal c_135_134_0_False_shift: signed(25 downto 0);
  signal c_135_99_0_False_resize: signed(25 downto 0);
  signal c_135_99_0_False_shift: signed(25 downto 0);
  signal c_135_101_0_False_resize: signed(25 downto 0);
  signal c_135_101_0_False_shift: signed(25 downto 0);
  signal c_135_sel: std_logic_vector(1 downto 0);
  signal c_136: signed(25 downto 0);
  signal c_137: signed(25 downto 0);
  signal c_138: signed(25 downto 0);
  signal c_139: signed(25 downto 0);
  signal c_140: signed(25 downto 0);
  signal c_140_116_1_False_resize: signed(25 downto 0);
  signal c_140_116_1_False_shift: signed(25 downto 0);
  signal c_140_137_2_False_resize: signed(25 downto 0);
  signal c_140_137_2_False_shift: signed(25 downto 0);
  signal c_140_139_0_False_resize: signed(25 downto 0);
  signal c_140_139_0_False_shift: signed(25 downto 0);
  signal c_140_sel: std_logic_vector(1 downto 0);
  signal c_141: signed(24 downto 0);
  signal c_142: signed(24 downto 0);
  signal c_143: signed(25 downto 0);
  signal c_144: signed(25 downto 0);
  signal c_145: signed(25 downto 0);
  signal c_145_142_0_False_resize: signed(25 downto 0);
  signal c_145_142_0_False_shift: signed(25 downto 0);
  signal c_145_142_2_False_resize: signed(25 downto 0);
  signal c_145_142_2_False_shift: signed(25 downto 0);
  signal c_145_125_0_False_resize: signed(25 downto 0);
  signal c_145_125_0_False_shift: signed(25 downto 0);
  signal c_145_144_0_False_resize: signed(25 downto 0);
  signal c_145_144_0_False_shift: signed(25 downto 0);
  signal c_145_sel: std_logic_vector(1 downto 0);
  signal c_146: signed(26 downto 0);
  signal c_147: signed(26 downto 0);
  signal c_148: signed(26 downto 0);
  signal c_149: signed(26 downto 0);
  signal c_150: signed(25 downto 0);
  signal c_150_103_0_False_resize: signed(25 downto 0);
  signal c_150_103_0_False_shift: signed(25 downto 0);
  signal c_150_114_2_False_resize: signed(25 downto 0);
  signal c_150_114_2_False_shift: signed(25 downto 0);
  signal c_150_86_0_False_resize: signed(25 downto 0);
  signal c_150_86_0_False_shift: signed(25 downto 0);
  signal c_150_149_0_False_resize: signed(25 downto 0);
  signal c_150_149_0_False_shift: signed(25 downto 0);
  signal c_150_sel: std_logic_vector(1 downto 0);
  signal c_151: signed(26 downto 0);
  signal c_152: signed(26 downto 0);
  signal c_153: signed(24 downto 0);
  signal c_154: signed(24 downto 0);
  signal c_155: signed(25 downto 0);
  signal c_155_116_0_False_resize: signed(25 downto 0);
  signal c_155_116_0_False_shift: signed(25 downto 0);
  signal c_155_152_1_False_resize: signed(25 downto 0);
  signal c_155_152_1_False_shift: signed(25 downto 0);
  signal c_155_154_1_False_resize: signed(25 downto 0);
  signal c_155_154_1_False_shift: signed(25 downto 0);
  signal c_155_125_3_False_resize: signed(25 downto 0);
  signal c_155_125_3_False_shift: signed(25 downto 0);
  signal c_155_sel: std_logic_vector(1 downto 0);
  signal c_156: signed(24 downto 0);
  signal c_157: signed(24 downto 0);
  signal c_158: signed(25 downto 0);
  signal c_158_154_2_False_resize: signed(25 downto 0);
  signal c_158_154_2_False_shift: signed(25 downto 0);
  signal c_158_125_0_False_resize: signed(25 downto 0);
  signal c_158_125_0_False_shift: signed(25 downto 0);
  signal c_158_144_2_False_resize: signed(25 downto 0);
  signal c_158_144_2_False_shift: signed(25 downto 0);
  signal c_158_157_0_False_resize: signed(25 downto 0);
  signal c_158_157_0_False_shift: signed(25 downto 0);
  signal c_158_sel: std_logic_vector(1 downto 0);
  signal c_159: signed(25 downto 0);
  signal c_159_103_1_False_resize: signed(25 downto 0);
  signal c_159_103_1_False_shift: signed(25 downto 0);
  signal c_159_114_0_False_resize: signed(25 downto 0);
  signal c_159_114_0_False_shift: signed(25 downto 0);
  signal c_159_86_0_False_resize: signed(25 downto 0);
  signal c_159_86_0_False_shift: signed(25 downto 0);
  signal c_159_103_0_False_resize: signed(25 downto 0);
  signal c_159_103_0_False_shift: signed(25 downto 0);
  signal c_159_sel: std_logic_vector(1 downto 0);
  signal c_160: signed(25 downto 0);
  signal c_160_139_0_False_resize: signed(25 downto 0);
  signal c_160_139_0_False_shift: signed(25 downto 0);
  signal c_160_154_0_False_resize: signed(25 downto 0);
  signal c_160_154_0_False_shift: signed(25 downto 0);
  signal c_160_137_2_False_resize: signed(25 downto 0);
  signal c_160_137_2_False_shift: signed(25 downto 0);
  signal c_160_116_0_False_resize: signed(25 downto 0);
  signal c_160_116_0_False_shift: signed(25 downto 0);
  signal c_160_sel: std_logic_vector(1 downto 0);
  signal c_161: signed(25 downto 0);
  signal c_161_129_3_False_resize: signed(25 downto 0);
  signal c_161_129_3_False_shift: signed(25 downto 0);
  signal c_161_125_0_False_resize: signed(25 downto 0);
  signal c_161_125_0_False_shift: signed(25 downto 0);
  signal c_161_131_0_False_resize: signed(25 downto 0);
  signal c_161_131_0_False_shift: signed(25 downto 0);
  signal c_161_139_0_False_resize: signed(25 downto 0);
  signal c_161_139_0_False_shift: signed(25 downto 0);
  signal c_161_sel: std_logic_vector(1 downto 0);
  signal c_162: signed(25 downto 0);
  signal c_162_resize: signed(25 downto 0);
  signal c_163: signed(25 downto 0);
  signal c_164: signed(25 downto 0);
  signal c_165: signed(25 downto 0);
  signal c_165_resize: signed(25 downto 0);
  signal c_166: signed(25 downto 0);
  signal c_166_resize: signed(25 downto 0);
  signal c_167: signed(25 downto 0);
  signal c_167_resize: signed(25 downto 0);
  signal c_168: signed(25 downto 0);
  signal c_169: signed(25 downto 0);
  signal c_170: signed(25 downto 0);
  signal c_170_resize: signed(25 downto 0);
  signal c_171: signed(25 downto 0);
  signal c_171_resize: signed(25 downto 0);
  signal c_172: signed(25 downto 0);
  signal c_172_resize: signed(25 downto 0);
  signal c_173: signed(25 downto 0);
  signal c_174: signed(25 downto 0);
  signal c_175: signed(25 downto 0);
  signal c_175_resize: signed(25 downto 0);
  signal c_176: signed(25 downto 0);
  signal c_176_resize: signed(25 downto 0);
  signal c_177: signed(25 downto 0);
  signal c_177_resize: signed(25 downto 0);
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
      config_select_10 <= config_select_9;
      config_select_11 <= config_select_10;
      config_select_12 <= config_select_11;
      config_select_13 <= config_select_12;
      config_select_14 <= config_select_13;
      config_select_15 <= config_select_14;
      config_select_16 <= config_select_15;
      config_select_17 <= config_select_16;
      config_select_18 <= config_select_17;
      config_select_19 <= config_select_18;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 162
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_162);
    end if;
  end process;
  -- output node 1 with id 165
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_165);
    end if;
  end process;
  -- output node 2 with id 166
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_166);
    end if;
  end process;
  -- output node 3 with id 167
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_167);
    end if;
  end process;
  -- output node 4 with id 170
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_170);
    end if;
  end process;
  -- output node 5 with id 171
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_171);
    end if;
  end process;
  -- output node 6 with id 172
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_172);
    end if;
  end process;
  -- output node 7 with id 175
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_175);
    end if;
  end process;
  -- output node 8 with id 176
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_176);
    end if;
  end process;
  -- output node 9 with id 177
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_177);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [1], [1], [4]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "10",
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
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [8], [4], [4]]
  c_2_0_2_False_resize <= resize(c_0, 19);
  c_2_0_2_False_shift <= shift_left(c_2_0_2_False_resize, 2);
  c_2_0_3_False_resize <= resize(c_0, 19);
  c_2_0_3_False_shift <= shift_left(c_2_0_3_False_resize, 3);
  c_2_0_0_False_resize <= resize(c_0, 19);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "00" when "11",
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_2_False_shift;
        when "01" => c_2 <= c_2_0_3_False_shift;
        when others => c_2 <= c_2_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[3], [-15], [-7], [-4]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 19,
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
  -- node of type 'register' in stage 1 with id 4 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_0 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_4 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[1], [64], [-112], [4]]
  c_6_5_0_False_resize <= resize(c_5, 23);
  c_6_5_0_False_shift <= shift_left(c_6_5_0_False_resize, 0);
  c_6_5_2_False_resize <= resize(c_5, 23);
  c_6_5_2_False_shift <= shift_left(c_6_5_2_False_resize, 2);
  c_6_5_6_False_resize <= resize(c_5, 23);
  c_6_5_6_False_shift <= shift_left(c_6_5_6_False_resize, 6);
  c_6_3_4_False_resize <= resize(c_3, 23);
  c_6_3_4_False_shift <= shift_left(c_6_3_4_False_resize, 4);
  with config_select_3 select c_6_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_5_0_False_shift;
        when "01" => c_6 <= c_6_5_2_False_shift;
        when "10" => c_6 <= c_6_5_6_False_shift;
        when others => c_6 <= c_6_3_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[16], [1], [2], [1]]
  c_7_0_0_False_resize <= resize(c_0, 20);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  c_7_0_1_False_resize <= resize(c_0, 20);
  c_7_0_1_False_shift <= shift_left(c_7_0_1_False_resize, 1);
  c_7_0_4_False_resize <= resize(c_0, 20);
  c_7_0_4_False_shift <= shift_left(c_7_0_4_False_resize, 4);
  with config_select_1 select c_7_sel <= 
    "00" when "01",
    "00" when "11",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_0_0_False_shift;
        when "01" => c_7 <= c_7_0_1_False_shift;
        when others => c_7 <= c_7_0_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[16], [1], [2], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[16], [1], [2], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 10 and associated fundamentals [[-15], [65], [-110], [3]]
  with config_select_4 select c_10_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
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
      sub_i => c_10_sub_sel,
      x_i => c_6,
      y_i => c_9,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[1024], [-15], [1024], [-128]]
  c_11_3_5_False_resize <= resize(c_3, 26);
  c_11_3_5_False_shift <= shift_left(c_11_3_5_False_resize, 5);
  c_11_5_10_False_resize <= resize(c_5, 26);
  c_11_5_10_False_shift <= shift_left(c_11_5_10_False_resize, 10);
  c_11_3_0_False_resize <= resize(c_3, 26);
  c_11_3_0_False_shift <= shift_left(c_11_3_0_False_resize, 0);
  with config_select_3 select c_11_sel <= 
    "00" when "11",
    "01" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_3_5_False_shift;
        when "01" => c_11 <= c_11_5_10_False_shift;
        when others => c_11 <= c_11_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 12 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 13 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 14 and associated fundamentals [[3], [-15], [-7], [-4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[3], [-15], [-7], [-4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 16 and associated fundamentals [[24], [130], [8], [3]]
  c_16_15_3_False_resize <= resize(c_15, 24);
  c_16_15_3_False_shift <= shift_left(c_16_15_3_False_resize, 3);
  c_16_10_1_False_resize <= resize(c_10, 24);
  c_16_10_1_False_shift <= shift_left(c_16_10_1_False_resize, 1);
  c_16_10_0_False_resize <= resize(c_10, 24);
  c_16_10_0_False_shift <= shift_left(c_16_10_0_False_resize, 0);
  c_16_13_3_False_resize <= resize(c_13, 24);
  c_16_13_3_False_shift <= shift_left(c_16_13_3_False_resize, 3);
  with config_select_5 select c_16_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_15_3_False_shift;
        when "01" => c_16 <= c_16_10_1_False_shift;
        when "10" => c_16 <= c_16_10_0_False_shift;
        when others => c_16 <= c_16_13_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 17 and associated fundamentals [[1024], [-15], [1024], [-128]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[1024], [-15], [1024], [-128]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 19 and associated fundamentals [[976], [-275], [1040], [-134]]
  with config_select_6 select c_19_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
      w_o => 27,
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
      sub_i => c_19_sub_sel,
      x_i => c_18,
      y_i => c_16,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 20 and associated fundamentals [[-30], [260], [-7], [1]]
  c_20_15_0_False_resize <= resize(c_15, 25);
  c_20_15_0_False_shift <= shift_left(c_20_15_0_False_resize, 0);
  c_20_10_1_False_resize <= resize(c_10, 25);
  c_20_10_1_False_shift <= shift_left(c_20_10_1_False_resize, 1);
  c_20_10_2_False_resize <= resize(c_10, 25);
  c_20_10_2_False_shift <= shift_left(c_20_10_2_False_resize, 2);
  c_20_13_0_False_resize <= resize(c_13, 25);
  c_20_13_0_False_shift <= shift_left(c_20_13_0_False_resize, 0);
  with config_select_5 select c_20_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_15_0_False_shift;
        when "01" => c_20 <= c_20_10_1_False_shift;
        when "10" => c_20 <= c_20_10_2_False_shift;
        when others => c_20 <= c_20_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 21 and associated fundamentals [[128], [1], [-110], [-512]]
  c_21_15_7_False_resize <= resize(c_15, 26);
  c_21_15_7_False_shift <= shift_left(c_21_15_7_False_resize, 7);
  c_21_13_0_False_resize <= resize(c_13, 26);
  c_21_13_0_False_shift <= shift_left(c_21_13_0_False_resize, 0);
  c_21_13_7_False_resize <= resize(c_13, 26);
  c_21_13_7_False_shift <= shift_left(c_21_13_7_False_resize, 7);
  c_21_10_0_False_resize <= resize(c_10, 26);
  c_21_10_0_False_shift <= shift_left(c_21_10_0_False_resize, 0);
  with config_select_5 select c_21_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "00" => c_21 <= c_21_15_7_False_shift;
        when "01" => c_21 <= c_21_13_0_False_shift;
        when "10" => c_21 <= c_21_13_7_False_shift;
        when others => c_21 <= c_21_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 22 and associated fundamentals [[-158], [261], [-117], [-511]]
  with config_select_6 select c_22_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 26,
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
      sub_i => c_22_sub_sel,
      x_i => c_20,
      y_i => c_21,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 24 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 25 and associated fundamentals [[2], [128], [-117], [64]]
  c_25_24_7_False_resize <= resize(c_24, 23);
  c_25_24_7_False_shift <= shift_left(c_25_24_7_False_resize, 7);
  c_25_24_1_False_resize <= resize(c_24, 23);
  c_25_24_1_False_shift <= shift_left(c_25_24_1_False_resize, 1);
  c_25_22_0_False_resize <= c_22(22 downto 0);
  c_25_22_0_False_shift <= shift_left(c_25_22_0_False_resize, 0);
  c_25_24_6_False_resize <= resize(c_24, 23);
  c_25_24_6_False_shift <= shift_left(c_25_24_6_False_resize, 6);
  with config_select_7 select c_25_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_24_7_False_shift;
        when "01" => c_25 <= c_25_24_1_False_shift;
        when "10" => c_25 <= c_25_22_0_False_shift;
        when others => c_25 <= c_25_24_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 26 and associated fundamentals [[3], [-15], [-7], [-4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[3], [-15], [-7], [-4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 28 and associated fundamentals [[-15], [65], [-110], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 29 and associated fundamentals [[-15], [65], [-110], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 30 and associated fundamentals [[256], [261], [-112], [3]]
  c_30_24_8_False_resize <= resize(c_24, 25);
  c_30_24_8_False_shift <= shift_left(c_30_24_8_False_resize, 8);
  c_30_27_4_False_resize <= resize(c_27, 25);
  c_30_27_4_False_shift <= shift_left(c_30_27_4_False_resize, 4);
  c_30_22_0_False_resize <= c_22;
  c_30_22_0_False_shift <= shift_left(c_30_22_0_False_resize, 0);
  c_30_29_0_False_resize <= resize(c_29, 25);
  c_30_29_0_False_shift <= shift_left(c_30_29_0_False_resize, 0);
  with config_select_7 select c_30_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "00" => c_30 <= c_30_24_8_False_shift;
        when "01" => c_30 <= c_30_27_4_False_shift;
        when "10" => c_30 <= c_30_22_0_False_shift;
        when others => c_30 <= c_30_29_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 31 and associated fundamentals [[514], [-394], [107], [58]]
  with config_select_8 select c_31_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 25,
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
      sub_i => c_31_sub_sel,
      x_i => c_25,
      y_i => c_30,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 32 and associated fundamentals [[3], [-15], [-7], [-4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 33 and associated fundamentals [[3], [-15], [-7], [-4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 34 and associated fundamentals [[976], [-275], [1040], [-134]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 35 and associated fundamentals [[976], [-275], [1040], [-134]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 36 and associated fundamentals [[1028], [-15], [107], [-134]]
  c_36_31_0_False_resize <= resize(c_31, 27);
  c_36_31_0_False_shift <= shift_left(c_36_31_0_False_resize, 0);
  c_36_31_1_False_resize <= resize(c_31, 27);
  c_36_31_1_False_shift <= shift_left(c_36_31_1_False_resize, 1);
  c_36_35_0_False_resize <= c_35;
  c_36_35_0_False_shift <= shift_left(c_36_35_0_False_resize, 0);
  c_36_33_0_False_resize <= resize(c_33, 27);
  c_36_33_0_False_shift <= shift_left(c_36_33_0_False_resize, 0);
  with config_select_9 select c_36_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "00" => c_36 <= c_36_31_0_False_shift;
        when "01" => c_36 <= c_36_31_1_False_shift;
        when "10" => c_36 <= c_36_35_0_False_shift;
        when others => c_36 <= c_36_33_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 37 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 38 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 39 and associated fundamentals [[-15], [65], [-110], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 40 and associated fundamentals [[-15], [65], [-110], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 41 and associated fundamentals [[-120], [65], [4], [232]]
  c_41_38_2_False_resize <= resize(c_38, 24);
  c_41_38_2_False_shift <= shift_left(c_41_38_2_False_resize, 2);
  c_41_40_3_False_resize <= resize(c_40, 24);
  c_41_40_3_False_shift <= shift_left(c_41_40_3_False_resize, 3);
  c_41_40_0_False_resize <= resize(c_40, 24);
  c_41_40_0_False_shift <= shift_left(c_41_40_0_False_resize, 0);
  c_41_31_2_False_resize <= c_31(23 downto 0);
  c_41_31_2_False_shift <= shift_left(c_41_31_2_False_resize, 2);
  with config_select_9 select c_41_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "00" => c_41 <= c_41_38_2_False_shift;
        when "01" => c_41 <= c_41_40_3_False_shift;
        when "10" => c_41 <= c_41_40_0_False_shift;
        when others => c_41 <= c_41_31_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 42 and associated fundamentals [[788], [-145], [99], [330]]
  with config_select_10 select c_42_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_42: entity work.adder_node
    generic map (
      w_x_i => 27,
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
      sub_i => c_42_sub_sel,
      x_i => c_36,
      y_i => c_41,
      z_o => c_42_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_42_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 43 and associated fundamentals [[976], [522], [-110], [96]]
  c_43_22_1_False_resize <= resize(c_22, 26);
  c_43_22_1_False_shift <= shift_left(c_43_22_1_False_resize, 1);
  c_43_19_0_False_resize <= c_19(25 downto 0);
  c_43_19_0_False_shift <= shift_left(c_43_19_0_False_resize, 0);
  c_43_29_0_False_resize <= resize(c_29, 26);
  c_43_29_0_False_shift <= shift_left(c_43_29_0_False_resize, 0);
  c_43_29_5_False_resize <= resize(c_29, 26);
  c_43_29_5_False_shift <= shift_left(c_43_29_5_False_resize, 5);
  with config_select_7 select c_43_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "00" => c_43 <= c_43_22_1_False_shift;
        when "01" => c_43 <= c_43_19_0_False_shift;
        when "10" => c_43 <= c_43_29_0_False_shift;
        when others => c_43 <= c_43_29_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 44 and associated fundamentals [[3], [-15], [-7], [-4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 45 and associated fundamentals [[3], [-15], [-7], [-4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 46 and associated fundamentals [[976], [-275], [1040], [-134]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 47 and associated fundamentals [[976], [-275], [1040], [-134]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 48 and associated fundamentals [[3], [-145], [-896], [-134]]
  c_48_47_0_False_resize <= c_47(25 downto 0);
  c_48_47_0_False_shift <= shift_left(c_48_47_0_False_resize, 0);
  c_48_42_0_False_resize <= c_42;
  c_48_42_0_False_shift <= shift_left(c_48_42_0_False_resize, 0);
  c_48_45_0_False_resize <= resize(c_45, 26);
  c_48_45_0_False_shift <= shift_left(c_48_45_0_False_resize, 0);
  c_48_45_7_False_resize <= resize(c_45, 26);
  c_48_45_7_False_shift <= shift_left(c_48_45_7_False_resize, 7);
  with config_select_11 select c_48_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "00" => c_48 <= c_48_47_0_False_shift;
        when "01" => c_48 <= c_48_42_0_False_shift;
        when "10" => c_48 <= c_48_45_0_False_shift;
        when others => c_48 <= c_48_45_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 49 and associated fundamentals [[976], [522], [-110], [96]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 50 and associated fundamentals [[976], [522], [-110], [96]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 51 and associated fundamentals [[976], [522], [-110], [96]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 52 and associated fundamentals [[976], [522], [-110], [96]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 53 and associated fundamentals [[979], [377], [786], [-38]]
  with config_select_12 select c_53_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_53: entity work.adder_node
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
      sub_i => c_53_sub_sel,
      x_i => c_52,
      y_i => c_48,
      z_o => c_53_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_53_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 54 and associated fundamentals [[-158], [261], [-117], [-511]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 55 and associated fundamentals [[-158], [261], [-117], [-511]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 56 and associated fundamentals [[4], [522], [107], [384]]
  c_56_55_1_False_resize <= resize(c_55, 26);
  c_56_55_1_False_shift <= shift_left(c_56_55_1_False_resize, 1);
  c_56_40_7_False_resize <= resize(c_40, 26);
  c_56_40_7_False_shift <= shift_left(c_56_40_7_False_resize, 7);
  c_56_31_0_False_resize <= c_31;
  c_56_31_0_False_shift <= shift_left(c_56_31_0_False_resize, 0);
  c_56_38_2_False_resize <= resize(c_38, 26);
  c_56_38_2_False_shift <= shift_left(c_56_38_2_False_resize, 2);
  with config_select_9 select c_56_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_56_sel is
        when "00" => c_56 <= c_56_55_1_False_shift;
        when "01" => c_56 <= c_56_40_7_False_shift;
        when "10" => c_56 <= c_56_31_0_False_shift;
        when others => c_56 <= c_56_38_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 57 and associated fundamentals [[-15], [-275], [256], [3]]
  c_57_29_0_False_resize <= resize(c_29, 25);
  c_57_29_0_False_shift <= shift_left(c_57_29_0_False_resize, 0);
  c_57_24_8_False_resize <= resize(c_24, 25);
  c_57_24_8_False_shift <= shift_left(c_57_24_8_False_resize, 8);
  c_57_19_0_False_resize <= c_19(24 downto 0);
  c_57_19_0_False_shift <= shift_left(c_57_19_0_False_resize, 0);
  with config_select_7 select c_57_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_57_sel is
        when "00" => c_57 <= c_57_29_0_False_shift;
        when "01" => c_57 <= c_57_24_8_False_shift;
        when others => c_57 <= c_57_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 58 and associated fundamentals [[-15], [-275], [256], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 59 and associated fundamentals [[-15], [-275], [256], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'add' in stage 10 with id 60 and associated fundamentals [[-11], [247], [363], [387]]
  inst_adder_node_60: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
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
      x_i => c_56,
      y_i => c_59,
      z_o => c_60_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_60_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 61 and associated fundamentals [[-15], [260], [-7], [192]]
  c_61_15_0_False_resize <= resize(c_15, 25);
  c_61_15_0_False_shift <= shift_left(c_61_15_0_False_resize, 0);
  c_61_10_0_False_resize <= resize(c_10, 25);
  c_61_10_0_False_shift <= shift_left(c_61_10_0_False_resize, 0);
  c_61_10_2_False_resize <= resize(c_10, 25);
  c_61_10_2_False_shift <= shift_left(c_61_10_2_False_resize, 2);
  c_61_10_6_False_resize <= resize(c_10, 25);
  c_61_10_6_False_shift <= shift_left(c_61_10_6_False_resize, 6);
  with config_select_5 select c_61_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_61_sel is
        when "00" => c_61 <= c_61_15_0_False_shift;
        when "01" => c_61 <= c_61_10_0_False_shift;
        when "10" => c_61 <= c_61_10_2_False_shift;
        when others => c_61 <= c_61_10_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 62 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 63 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 64 and associated fundamentals [[-15], [65], [-110], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 65 and associated fundamentals [[-15], [65], [-110], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 66 and associated fundamentals [[2], [247], [363], [3]]
  c_66_60_0_False_resize <= c_60;
  c_66_60_0_False_shift <= shift_left(c_66_60_0_False_resize, 0);
  c_66_65_0_False_resize <= resize(c_65, 25);
  c_66_65_0_False_shift <= shift_left(c_66_65_0_False_resize, 0);
  c_66_63_1_False_resize <= resize(c_63, 25);
  c_66_63_1_False_shift <= shift_left(c_66_63_1_False_resize, 1);
  with config_select_11 select c_66_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_66_sel is
        when "00" => c_66 <= c_66_60_0_False_shift;
        when "01" => c_66 <= c_66_65_0_False_shift;
        when others => c_66 <= c_66_63_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 67 and associated fundamentals [[-15], [260], [-7], [192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 68 and associated fundamentals [[-15], [260], [-7], [192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 69 and associated fundamentals [[-15], [260], [-7], [192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 70 and associated fundamentals [[-15], [260], [-7], [192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 71 and associated fundamentals [[-15], [260], [-7], [192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 72 and associated fundamentals [[-15], [260], [-7], [192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 12 with id 73 and associated fundamentals [[-17], [13], [-370], [189]]
  inst_adder_node_73: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
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
      x_i => c_72,
      y_i => c_66,
      z_o => c_73_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_73_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 74 and associated fundamentals [[514], [-120], [107], [-511]]
  c_74_31_0_False_resize <= c_31;
  c_74_31_0_False_shift <= shift_left(c_74_31_0_False_resize, 0);
  c_74_55_0_False_resize <= resize(c_55, 26);
  c_74_55_0_False_shift <= shift_left(c_74_55_0_False_resize, 0);
  c_74_33_3_False_resize <= resize(c_33, 26);
  c_74_33_3_False_shift <= shift_left(c_74_33_3_False_resize, 3);
  with config_select_9 select c_74_sel <= 
    "00" when "00",
    "00" when "10",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_74_sel is
        when "00" => c_74 <= c_74_31_0_False_shift;
        when "01" => c_74 <= c_74_55_0_False_shift;
        when others => c_74 <= c_74_33_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 75 and associated fundamentals [[514], [-394], [107], [58]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 76 and associated fundamentals [[514], [-394], [107], [58]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 77 and associated fundamentals [[514], [-394], [107], [58]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 78 and associated fundamentals [[514], [-394], [107], [58]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 79 and associated fundamentals [[-11], [247], [363], [387]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 80 and associated fundamentals [[-11], [247], [363], [387]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 81 and associated fundamentals [[-176], [13], [856], [-38]]
  c_81_78_3_False_resize <= c_78;
  c_81_78_3_False_shift <= shift_left(c_81_78_3_False_resize, 3);
  c_81_73_0_False_resize <= resize(c_73, 26);
  c_81_73_0_False_shift <= shift_left(c_81_73_0_False_resize, 0);
  c_81_53_0_False_resize <= c_53;
  c_81_53_0_False_shift <= shift_left(c_81_53_0_False_resize, 0);
  c_81_80_4_False_resize <= resize(c_80, 26);
  c_81_80_4_False_shift <= shift_left(c_81_80_4_False_resize, 4);
  with config_select_13 select c_81_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_81_sel is
        when "00" => c_81 <= c_81_78_3_False_shift;
        when "01" => c_81 <= c_81_73_0_False_shift;
        when "10" => c_81 <= c_81_53_0_False_shift;
        when others => c_81 <= c_81_80_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 82 and associated fundamentals [[514], [-120], [107], [-511]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 83 and associated fundamentals [[514], [-120], [107], [-511]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_82 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 84 and associated fundamentals [[514], [-120], [107], [-511]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_83 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 85 and associated fundamentals [[514], [-120], [107], [-511]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_84 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 86 and associated fundamentals [[690], [-133], [963], [-473]]
  with config_select_14 select c_86_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_86: entity work.adder_node
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
      sub_i => c_86_sub_sel,
      x_i => c_85,
      y_i => c_81,
      z_o => c_86_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_86_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 87 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 88 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_87 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 89 and associated fundamentals [[-15], [65], [-110], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 90 and associated fundamentals [[-15], [65], [-110], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_89 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 91 and associated fundamentals [[788], [-145], [99], [330]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 92 and associated fundamentals [[788], [-145], [99], [330]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 93 and associated fundamentals [[-17], [128], [99], [384]]
  c_93_92_0_False_resize <= c_92(24 downto 0);
  c_93_92_0_False_shift <= shift_left(c_93_92_0_False_resize, 0);
  c_93_88_7_False_resize <= resize(c_88, 25);
  c_93_88_7_False_shift <= shift_left(c_93_88_7_False_resize, 7);
  c_93_90_7_False_resize <= resize(c_90, 25);
  c_93_90_7_False_shift <= shift_left(c_93_90_7_False_resize, 7);
  c_93_73_0_False_resize <= c_73;
  c_93_73_0_False_shift <= shift_left(c_93_73_0_False_resize, 0);
  with config_select_13 select c_93_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_93_sel is
        when "00" => c_93 <= c_93_92_0_False_shift;
        when "01" => c_93 <= c_93_88_7_False_shift;
        when "10" => c_93 <= c_93_90_7_False_shift;
        when others => c_93 <= c_93_73_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 94 and associated fundamentals [[-158], [261], [-117], [-511]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 95 and associated fundamentals [[-158], [261], [-117], [-511]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_94 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 96 and associated fundamentals [[976], [494], [1024], [-511]]
  c_96_63_10_False_resize <= resize(c_63, 26);
  c_96_63_10_False_shift <= shift_left(c_96_63_10_False_resize, 10);
  c_96_47_0_False_resize <= c_47(25 downto 0);
  c_96_47_0_False_shift <= shift_left(c_96_47_0_False_resize, 0);
  c_96_95_0_False_resize <= resize(c_95, 26);
  c_96_95_0_False_shift <= shift_left(c_96_95_0_False_resize, 0);
  c_96_60_1_False_resize <= resize(c_60, 26);
  c_96_60_1_False_shift <= shift_left(c_96_60_1_False_resize, 1);
  with config_select_11 select c_96_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_96_sel is
        when "00" => c_96 <= c_96_63_10_False_shift;
        when "01" => c_96 <= c_96_47_0_False_shift;
        when "10" => c_96 <= c_96_95_0_False_shift;
        when others => c_96 <= c_96_60_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 97 and associated fundamentals [[976], [494], [1024], [-511]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_96 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 98 and associated fundamentals [[976], [494], [1024], [-511]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_97 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 99 and associated fundamentals [[959], [622], [-925], [-127]]
  with config_select_14 select c_99_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_99: entity work.adder_node
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
      sub_i => c_99_sub_sel,
      x_i => c_93,
      y_i => c_98,
      z_o => c_99_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_99_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 100 and associated fundamentals [[979], [377], [786], [-38]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 101 and associated fundamentals [[979], [377], [786], [-38]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_100 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 102 and associated fundamentals [[-11], [247], [363], [387]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_80 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 103 and associated fundamentals [[-11], [247], [363], [387]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_102 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 104 and associated fundamentals [[959], [377], [963], [774]]
  c_104_103_1_False_resize <= resize(c_103, 26);
  c_104_103_1_False_shift <= shift_left(c_104_103_1_False_resize, 1);
  c_104_101_0_False_resize <= c_101;
  c_104_101_0_False_shift <= shift_left(c_104_101_0_False_resize, 0);
  c_104_99_0_False_resize <= c_99;
  c_104_99_0_False_shift <= shift_left(c_104_99_0_False_resize, 0);
  c_104_86_0_False_resize <= c_86;
  c_104_86_0_False_shift <= shift_left(c_104_86_0_False_resize, 0);
  with config_select_15 select c_104_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_104_sel is
        when "00" => c_104 <= c_104_103_1_False_shift;
        when "01" => c_104 <= c_104_101_0_False_shift;
        when "10" => c_104 <= c_104_99_0_False_shift;
        when others => c_104 <= c_104_86_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 105 and associated fundamentals [[3], [-15], [-7], [-4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 106 and associated fundamentals [[3], [-15], [-7], [-4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_105 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 107 and associated fundamentals [[3], [-15], [-7], [-4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_106 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 108 and associated fundamentals [[3], [-15], [-7], [-4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_108 <= c_107 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 109 and associated fundamentals [[-158], [261], [-117], [-511]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_109 <= c_95 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 110 and associated fundamentals [[-158], [261], [-117], [-511]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_110 <= c_109 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 111 and associated fundamentals [[-158], [261], [-117], [-511]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_110 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 112 and associated fundamentals [[-158], [261], [-117], [-511]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_111 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 113 and associated fundamentals [[-17], [13], [-370], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 114 and associated fundamentals [[-17], [13], [-370], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_113 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 115 and associated fundamentals [[1380], [-30], [-1480], [-511]]
  c_115_114_2_False_resize <= resize(c_114, 27);
  c_115_114_2_False_shift <= shift_left(c_115_114_2_False_resize, 2);
  c_115_112_0_False_resize <= resize(c_112, 27);
  c_115_112_0_False_shift <= shift_left(c_115_112_0_False_resize, 0);
  c_115_86_1_False_resize <= resize(c_86, 27);
  c_115_86_1_False_shift <= shift_left(c_115_86_1_False_resize, 1);
  c_115_108_1_False_resize <= resize(c_108, 27);
  c_115_108_1_False_shift <= shift_left(c_115_108_1_False_resize, 1);
  with config_select_15 select c_115_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_115_sel is
        when "00" => c_115 <= c_115_114_2_False_shift;
        when "01" => c_115 <= c_115_112_0_False_shift;
        when "10" => c_115 <= c_115_86_1_False_shift;
        when others => c_115 <= c_115_108_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 16 with id 116 and associated fundamentals [[-421], [347], [-517], [263]]
  with config_select_16 select c_116_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_116: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_116_sub_sel,
      x_i => c_104,
      y_i => c_115,
      z_o => c_116_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_116 <= c_116_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 117 and associated fundamentals [[4], [-960], [1452], [1]]
  c_117_63_0_False_resize <= resize(c_63, 27);
  c_117_63_0_False_shift <= shift_left(c_117_63_0_False_resize, 0);
  c_117_63_2_False_resize <= resize(c_63, 27);
  c_117_63_2_False_shift <= shift_left(c_117_63_2_False_resize, 2);
  c_117_60_2_False_resize <= resize(c_60, 27);
  c_117_60_2_False_shift <= shift_left(c_117_60_2_False_resize, 2);
  c_117_45_6_False_resize <= resize(c_45, 27);
  c_117_45_6_False_shift <= shift_left(c_117_45_6_False_resize, 6);
  with config_select_11 select c_117_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_117_sel is
        when "00" => c_117 <= c_117_63_0_False_shift;
        when "01" => c_117 <= c_117_63_2_False_shift;
        when "10" => c_117 <= c_117_60_2_False_shift;
        when others => c_117 <= c_117_45_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 118 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_118 <= c_88 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 119 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_119 <= c_118 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 120 and associated fundamentals [[959], [13], [963], [16]]
  c_120_86_0_False_resize <= c_86;
  c_120_86_0_False_shift <= shift_left(c_120_86_0_False_resize, 0);
  c_120_99_0_False_resize <= c_99;
  c_120_99_0_False_shift <= shift_left(c_120_99_0_False_resize, 0);
  c_120_119_4_False_resize <= resize(c_119, 26);
  c_120_119_4_False_shift <= shift_left(c_120_119_4_False_resize, 4);
  c_120_114_0_False_resize <= resize(c_114, 26);
  c_120_114_0_False_shift <= shift_left(c_120_114_0_False_resize, 0);
  with config_select_15 select c_120_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_120_sel is
        when "00" => c_120 <= c_120_86_0_False_shift;
        when "01" => c_120 <= c_120_99_0_False_shift;
        when "10" => c_120 <= c_120_119_4_False_shift;
        when others => c_120 <= c_120_114_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 121 and associated fundamentals [[4], [-960], [1452], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_121 <= c_117 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 122 and associated fundamentals [[4], [-960], [1452], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_122 <= c_121 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 123 and associated fundamentals [[4], [-960], [1452], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_123 <= c_122 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 124 and associated fundamentals [[4], [-960], [1452], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_124 <= c_123 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 16 with id 125 and associated fundamentals [[-955], [-947], [489], [-15]]
  with config_select_16 select c_125_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_125: entity work.adder_node
    generic map (
      w_x_i => 27,
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
      sub_i => c_125_sub_sel,
      x_i => c_124,
      y_i => c_120,
      z_o => c_125_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_125 <= c_125_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 126 and associated fundamentals [[514], [-394], [107], [58]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_126 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 127 and associated fundamentals [[514], [-394], [107], [58]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_127 <= c_126 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 128 and associated fundamentals [[514], [-394], [107], [58]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_128 <= c_127 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 129 and associated fundamentals [[514], [-394], [107], [58]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_129 <= c_128 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 130 and associated fundamentals [[959], [622], [-925], [-127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_130 <= c_99 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 131 and associated fundamentals [[959], [622], [-925], [-127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_131 <= c_130 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 132 and associated fundamentals [[-955], [-394], [-925], [-127]]
  c_132_131_0_False_resize <= c_131;
  c_132_131_0_False_shift <= shift_left(c_132_131_0_False_resize, 0);
  c_132_125_0_False_resize <= c_125;
  c_132_125_0_False_shift <= shift_left(c_132_125_0_False_resize, 0);
  c_132_129_0_False_resize <= c_129;
  c_132_129_0_False_shift <= shift_left(c_132_129_0_False_resize, 0);
  with config_select_17 select c_132_sel <= 
    "00" when "10",
    "00" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_132_sel is
        when "00" => c_132 <= c_132_131_0_False_shift;
        when "01" => c_132 <= c_132_125_0_False_shift;
        when others => c_132 <= c_132_129_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 133 and associated fundamentals [[788], [-145], [99], [330]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_133 <= c_92 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 134 and associated fundamentals [[788], [-145], [99], [330]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_134 <= c_133 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 135 and associated fundamentals [[788], [622], [786], [330]]
  c_135_134_0_False_resize <= c_134;
  c_135_134_0_False_shift <= shift_left(c_135_134_0_False_resize, 0);
  c_135_99_0_False_resize <= c_99;
  c_135_99_0_False_shift <= shift_left(c_135_99_0_False_resize, 0);
  c_135_101_0_False_resize <= c_101;
  c_135_101_0_False_shift <= shift_left(c_135_101_0_False_resize, 0);
  with config_select_15 select c_135_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_135_sel is
        when "00" => c_135 <= c_135_134_0_False_shift;
        when "01" => c_135 <= c_135_99_0_False_shift;
        when others => c_135 <= c_135_101_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 136 and associated fundamentals [[788], [-145], [99], [330]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_136 <= c_134 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 137 and associated fundamentals [[788], [-145], [99], [330]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_137 <= c_136 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 138 and associated fundamentals [[979], [377], [786], [-38]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_138 <= c_101 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 139 and associated fundamentals [[979], [377], [786], [-38]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_139 <= c_138 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 140 and associated fundamentals [[979], [694], [396], [526]]
  c_140_116_1_False_resize <= c_116;
  c_140_116_1_False_shift <= shift_left(c_140_116_1_False_resize, 1);
  c_140_137_2_False_resize <= c_137;
  c_140_137_2_False_shift <= shift_left(c_140_137_2_False_resize, 2);
  c_140_139_0_False_resize <= c_139;
  c_140_139_0_False_shift <= shift_left(c_140_139_0_False_resize, 0);
  with config_select_17 select c_140_sel <= 
    "00" when "11",
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_140_sel is
        when "00" => c_140 <= c_140_116_1_False_shift;
        when "01" => c_140 <= c_140_137_2_False_shift;
        when others => c_140 <= c_140_139_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 141 and associated fundamentals [[-17], [13], [-370], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_141 <= c_114 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 142 and associated fundamentals [[-17], [13], [-370], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_142 <= c_141 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 143 and associated fundamentals [[690], [-133], [963], [-473]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_143 <= c_86 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 144 and associated fundamentals [[690], [-133], [963], [-473]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_144 <= c_143 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 145 and associated fundamentals [[-68], [-947], [-370], [-473]]
  c_145_142_0_False_resize <= resize(c_142, 26);
  c_145_142_0_False_shift <= shift_left(c_145_142_0_False_resize, 0);
  c_145_142_2_False_resize <= resize(c_142, 26);
  c_145_142_2_False_shift <= shift_left(c_145_142_2_False_resize, 2);
  c_145_125_0_False_resize <= c_125;
  c_145_125_0_False_shift <= shift_left(c_145_125_0_False_resize, 0);
  c_145_144_0_False_resize <= c_144;
  c_145_144_0_False_shift <= shift_left(c_145_144_0_False_resize, 0);
  with config_select_17 select c_145_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_145_sel is
        when "00" => c_145 <= c_145_142_0_False_shift;
        when "01" => c_145 <= c_145_142_2_False_shift;
        when "10" => c_145 <= c_145_125_0_False_shift;
        when others => c_145 <= c_145_144_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 146 and associated fundamentals [[976], [-275], [1040], [-134]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_146 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 147 and associated fundamentals [[976], [-275], [1040], [-134]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_147 <= c_146 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 148 and associated fundamentals [[976], [-275], [1040], [-134]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_148 <= c_147 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 149 and associated fundamentals [[976], [-275], [1040], [-134]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_149 <= c_148 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 150 and associated fundamentals [[976], [247], [963], [756]]
  c_150_103_0_False_resize <= resize(c_103, 26);
  c_150_103_0_False_shift <= shift_left(c_150_103_0_False_resize, 0);
  c_150_114_2_False_resize <= resize(c_114, 26);
  c_150_114_2_False_shift <= shift_left(c_150_114_2_False_resize, 2);
  c_150_86_0_False_resize <= c_86;
  c_150_86_0_False_shift <= shift_left(c_150_86_0_False_resize, 0);
  c_150_149_0_False_resize <= c_149(25 downto 0);
  c_150_149_0_False_shift <= shift_left(c_150_149_0_False_resize, 0);
  with config_select_15 select c_150_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_150_sel is
        when "00" => c_150 <= c_150_103_0_False_shift;
        when "01" => c_150 <= c_150_114_2_False_shift;
        when "10" => c_150 <= c_150_86_0_False_shift;
        when others => c_150 <= c_150_149_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 151 and associated fundamentals [[976], [-275], [1040], [-134]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_151 <= c_149 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 152 and associated fundamentals [[976], [-275], [1040], [-134]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_152 <= c_151 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 153 and associated fundamentals [[-158], [261], [-117], [-511]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_153 <= c_112 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 154 and associated fundamentals [[-158], [261], [-117], [-511]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_154 <= c_153 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 155 and associated fundamentals [[-316], [-550], [-517], [-120]]
  c_155_116_0_False_resize <= c_116;
  c_155_116_0_False_shift <= shift_left(c_155_116_0_False_resize, 0);
  c_155_152_1_False_resize <= c_152(25 downto 0);
  c_155_152_1_False_shift <= shift_left(c_155_152_1_False_resize, 1);
  c_155_154_1_False_resize <= resize(c_154, 26);
  c_155_154_1_False_shift <= shift_left(c_155_154_1_False_resize, 1);
  c_155_125_3_False_resize <= c_125;
  c_155_125_3_False_shift <= shift_left(c_155_125_3_False_resize, 3);
  with config_select_17 select c_155_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_155_sel is
        when "00" => c_155 <= c_155_116_0_False_shift;
        when "01" => c_155 <= c_155_152_1_False_shift;
        when "10" => c_155 <= c_155_154_1_False_shift;
        when others => c_155 <= c_155_125_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 156 and associated fundamentals [[-11], [247], [363], [387]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_156 <= c_103 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 157 and associated fundamentals [[-11], [247], [363], [387]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_157 <= c_156 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 158 and associated fundamentals [[-11], [-532], [-468], [-15]]
  c_158_154_2_False_resize <= resize(c_154, 26);
  c_158_154_2_False_shift <= shift_left(c_158_154_2_False_resize, 2);
  c_158_125_0_False_resize <= c_125;
  c_158_125_0_False_shift <= shift_left(c_158_125_0_False_resize, 0);
  c_158_144_2_False_resize <= c_144;
  c_158_144_2_False_shift <= shift_left(c_158_144_2_False_resize, 2);
  c_158_157_0_False_resize <= resize(c_157, 26);
  c_158_157_0_False_shift <= shift_left(c_158_157_0_False_resize, 0);
  with config_select_17 select c_158_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_158_sel is
        when "00" => c_158 <= c_158_154_2_False_shift;
        when "01" => c_158 <= c_158_125_0_False_shift;
        when "10" => c_158 <= c_158_144_2_False_shift;
        when others => c_158 <= c_158_157_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 159 and associated fundamentals [[690], [13], [363], [774]]
  c_159_103_1_False_resize <= resize(c_103, 26);
  c_159_103_1_False_shift <= shift_left(c_159_103_1_False_resize, 1);
  c_159_114_0_False_resize <= resize(c_114, 26);
  c_159_114_0_False_shift <= shift_left(c_159_114_0_False_resize, 0);
  c_159_86_0_False_resize <= c_86;
  c_159_86_0_False_shift <= shift_left(c_159_86_0_False_resize, 0);
  c_159_103_0_False_resize <= resize(c_103, 26);
  c_159_103_0_False_shift <= shift_left(c_159_103_0_False_resize, 0);
  with config_select_15 select c_159_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_159_sel is
        when "00" => c_159 <= c_159_103_1_False_shift;
        when "01" => c_159 <= c_159_114_0_False_shift;
        when "10" => c_159 <= c_159_86_0_False_shift;
        when others => c_159 <= c_159_103_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 160 and associated fundamentals [[-421], [-580], [-117], [-38]]
  c_160_139_0_False_resize <= c_139;
  c_160_139_0_False_shift <= shift_left(c_160_139_0_False_resize, 0);
  c_160_154_0_False_resize <= resize(c_154, 26);
  c_160_154_0_False_shift <= shift_left(c_160_154_0_False_resize, 0);
  c_160_137_2_False_resize <= c_137;
  c_160_137_2_False_shift <= shift_left(c_160_137_2_False_resize, 2);
  c_160_116_0_False_resize <= c_116;
  c_160_116_0_False_shift <= shift_left(c_160_116_0_False_resize, 0);
  with config_select_17 select c_160_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_160_sel is
        when "00" => c_160 <= c_160_139_0_False_shift;
        when "01" => c_160 <= c_160_154_0_False_shift;
        when "10" => c_160 <= c_160_137_2_False_shift;
        when others => c_160 <= c_160_116_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 161 and associated fundamentals [[959], [377], [489], [464]]
  c_161_129_3_False_resize <= c_129;
  c_161_129_3_False_shift <= shift_left(c_161_129_3_False_resize, 3);
  c_161_125_0_False_resize <= c_125;
  c_161_125_0_False_shift <= shift_left(c_161_125_0_False_resize, 0);
  c_161_131_0_False_resize <= c_131;
  c_161_131_0_False_shift <= shift_left(c_161_131_0_False_resize, 0);
  c_161_139_0_False_resize <= c_139;
  c_161_139_0_False_shift <= shift_left(c_161_139_0_False_resize, 0);
  with config_select_17 select c_161_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_161_sel is
        when "00" => c_161 <= c_161_129_3_False_shift;
        when "01" => c_161 <= c_161_125_0_False_shift;
        when "10" => c_161 <= c_161_131_0_False_shift;
        when others => c_161 <= c_161_139_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 162 and associated fundamentals [[955], [394], [925], [127]]
  c_162_resize <= c_132;
  c_162 <= -shift_left(c_162_resize, 0);
  -- node of type 'register' in stage 16 with id 163 and associated fundamentals [[788], [622], [786], [330]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_163 <= c_135 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 164 and associated fundamentals [[788], [622], [786], [330]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_164 <= c_163 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 165 and associated fundamentals [[788], [622], [786], [330]]
  c_165_resize <= c_164;
  c_165 <= shift_left(c_165_resize, 0);
  -- node of type 'output' in stage 17 with id 166 and associated fundamentals [[979], [694], [396], [526]]
  c_166_resize <= c_140;
  c_166 <= shift_left(c_166_resize, 0);
  -- node of type 'output' in stage 17 with id 167 and associated fundamentals [[68], [947], [370], [473]]
  c_167_resize <= c_145;
  c_167 <= -shift_left(c_167_resize, 0);
  -- node of type 'register' in stage 16 with id 168 and associated fundamentals [[976], [247], [963], [756]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_168 <= c_150 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 169 and associated fundamentals [[976], [247], [963], [756]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_169 <= c_168 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 170 and associated fundamentals [[976], [247], [963], [756]]
  c_170_resize <= c_169;
  c_170 <= shift_left(c_170_resize, 0);
  -- node of type 'output' in stage 17 with id 171 and associated fundamentals [[316], [550], [517], [120]]
  c_171_resize <= c_155;
  c_171 <= -shift_left(c_171_resize, 0);
  -- node of type 'output' in stage 17 with id 172 and associated fundamentals [[11], [532], [468], [15]]
  c_172_resize <= c_158;
  c_172 <= -shift_left(c_172_resize, 0);
  -- node of type 'register' in stage 16 with id 173 and associated fundamentals [[690], [13], [363], [774]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_173 <= c_159 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 174 and associated fundamentals [[690], [13], [363], [774]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_174 <= c_173 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 175 and associated fundamentals [[690], [13], [363], [774]]
  c_175_resize <= c_174;
  c_175 <= shift_left(c_175_resize, 0);
  -- node of type 'output' in stage 17 with id 176 and associated fundamentals [[421], [580], [117], [38]]
  c_176_resize <= c_160;
  c_176 <= -shift_left(c_176_resize, 0);
  -- node of type 'output' in stage 17 with id 177 and associated fundamentals [[959], [377], [489], [464]]
  c_177_resize <= c_161;
  c_177 <= shift_left(c_177_resize, 0);
end architecture;
