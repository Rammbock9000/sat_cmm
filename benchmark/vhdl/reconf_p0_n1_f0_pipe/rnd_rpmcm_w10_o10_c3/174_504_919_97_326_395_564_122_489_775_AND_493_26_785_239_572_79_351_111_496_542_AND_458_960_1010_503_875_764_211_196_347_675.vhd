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
    y_4: out std_logic_vector(25 downto 0);
    y_5: out std_logic_vector(25 downto 0);
    y_6: out std_logic_vector(25 downto 0);
    y_7: out std_logic_vector(23 downto 0);
    y_8: out std_logic_vector(24 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(21 downto 0);
  signal c_1_0_0_False_resize: signed(21 downto 0);
  signal c_1_0_0_False_shift: signed(21 downto 0);
  signal c_1_0_6_False_resize: signed(21 downto 0);
  signal c_1_0_6_False_shift: signed(21 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(23 downto 0);
  signal c_2_0_8_False_resize: signed(23 downto 0);
  signal c_2_0_8_False_shift: signed(23 downto 0);
  signal c_2_0_1_False_resize: signed(23 downto 0);
  signal c_2_0_1_False_shift: signed(23 downto 0);
  signal c_2_0_0_False_resize: signed(23 downto 0);
  signal c_2_0_0_False_shift: signed(23 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(25 downto 0);
  signal c_3_i0_resize: signed(25 downto 0);
  signal c_3_i1_resize: signed(25 downto 0);
  signal c_3_i0_shift: signed(25 downto 0);
  signal c_3_i1_shift: signed(25 downto 0);
  signal c_3_arith: signed(25 downto 0);
  signal c_3_oshift: signed(25 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(25 downto 0);
  signal c_6_5_3_False_resize: signed(25 downto 0);
  signal c_6_5_3_False_shift: signed(25 downto 0);
  signal c_6_3_5_False_resize: signed(25 downto 0);
  signal c_6_3_5_False_shift: signed(25 downto 0);
  signal c_6_3_0_False_resize: signed(25 downto 0);
  signal c_6_3_0_False_shift: signed(25 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_0_3_False_resize: signed(23 downto 0);
  signal c_7_0_3_False_shift: signed(23 downto 0);
  signal c_7_0_8_False_resize: signed(23 downto 0);
  signal c_7_0_8_False_shift: signed(23 downto 0);
  signal c_7_0_0_False_resize: signed(23 downto 0);
  signal c_7_0_0_False_shift: signed(23 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_10: signed(24 downto 0);
  signal c_10_i0_resize: signed(24 downto 0);
  signal c_10_i1_resize: signed(24 downto 0);
  signal c_10_i0_shift: signed(24 downto 0);
  signal c_10_i1_shift: signed(24 downto 0);
  signal c_10_arith: signed(24 downto 0);
  signal c_10_oshift: signed(24 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(21 downto 0);
  signal c_11_5_4_False_resize: signed(21 downto 0);
  signal c_11_5_4_False_shift: signed(21 downto 0);
  signal c_11_5_2_False_resize: signed(21 downto 0);
  signal c_11_5_2_False_shift: signed(21 downto 0);
  signal c_11_3_0_False_resize: signed(21 downto 0);
  signal c_11_3_0_False_shift: signed(21 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(15 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_14: signed(15 downto 0);
  signal c_15: signed(24 downto 0);
  signal c_15_14_9_False_resize: signed(24 downto 0);
  signal c_15_14_9_False_shift: signed(24 downto 0);
  signal c_15_14_0_False_resize: signed(24 downto 0);
  signal c_15_14_0_False_shift: signed(24 downto 0);
  signal c_15_13_0_False_resize: signed(24 downto 0);
  signal c_15_13_0_False_shift: signed(24 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_14_7_False_resize: signed(23 downto 0);
  signal c_16_14_7_False_shift: signed(23 downto 0);
  signal c_16_13_0_False_resize: signed(23 downto 0);
  signal c_16_13_0_False_shift: signed(23 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_i0_resize: signed(25 downto 0);
  signal c_17_i1_resize: signed(25 downto 0);
  signal c_17_i0_shift: signed(25 downto 0);
  signal c_17_i1_shift: signed(25 downto 0);
  signal c_17_arith: signed(25 downto 0);
  signal c_17_oshift: signed(25 downto 0);
  signal c_18: signed(21 downto 0);
  signal c_18_13_2_False_resize: signed(21 downto 0);
  signal c_18_13_2_False_shift: signed(21 downto 0);
  signal c_18_14_0_False_resize: signed(21 downto 0);
  signal c_18_14_0_False_shift: signed(21 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_21: signed(19 downto 0);
  signal c_21_14_4_False_resize: signed(19 downto 0);
  signal c_21_14_4_False_shift: signed(19 downto 0);
  signal c_21_20_2_False_resize: signed(19 downto 0);
  signal c_21_20_2_False_shift: signed(19 downto 0);
  signal c_21_13_0_False_resize: signed(19 downto 0);
  signal c_21_13_0_False_shift: signed(19 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(21 downto 0);
  signal c_22_i0_resize: signed(21 downto 0);
  signal c_22_i1_resize: signed(21 downto 0);
  signal c_22_i0_shift: signed(21 downto 0);
  signal c_22_i1_shift: signed(21 downto 0);
  signal c_22_arith: signed(21 downto 0);
  signal c_22_oshift: signed(21 downto 0);
  signal c_23: signed(15 downto 0);
  signal c_24: signed(15 downto 0);
  signal c_25: signed(21 downto 0);
  signal c_25_22_0_False_resize: signed(21 downto 0);
  signal c_25_22_0_False_shift: signed(21 downto 0);
  signal c_25_24_1_False_resize: signed(21 downto 0);
  signal c_25_24_1_False_shift: signed(21 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(24 downto 0);
  signal c_27: signed(24 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_30: signed(24 downto 0);
  signal c_30_22_0_False_resize: signed(24 downto 0);
  signal c_30_22_0_False_shift: signed(24 downto 0);
  signal c_30_29_0_False_resize: signed(24 downto 0);
  signal c_30_29_0_False_shift: signed(24 downto 0);
  signal c_30_27_2_False_resize: signed(24 downto 0);
  signal c_30_27_2_False_shift: signed(24 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_i0_resize: signed(25 downto 0);
  signal c_31_i1_resize: signed(25 downto 0);
  signal c_31_i0_shift: signed(25 downto 0);
  signal c_31_i1_shift: signed(25 downto 0);
  signal c_31_arith: signed(25 downto 0);
  signal c_31_oshift: signed(25 downto 0);
  signal c_31_sub_sel: std_logic;
  signal c_32: signed(24 downto 0);
  signal c_32_14_9_False_resize: signed(24 downto 0);
  signal c_32_14_9_False_shift: signed(24 downto 0);
  signal c_32_20_7_False_resize: signed(24 downto 0);
  signal c_32_20_7_False_shift: signed(24 downto 0);
  signal c_32_10_0_False_resize: signed(24 downto 0);
  signal c_32_10_0_False_shift: signed(24 downto 0);
  signal c_32_sel: std_logic_vector(1 downto 0);
  signal c_33: signed(15 downto 0);
  signal c_34: signed(15 downto 0);
  signal c_35: signed(21 downto 0);
  signal c_36: signed(21 downto 0);
  signal c_37: signed(26 downto 0);
  signal c_37_31_2_False_resize: signed(26 downto 0);
  signal c_37_31_2_False_shift: signed(26 downto 0);
  signal c_37_34_1_False_resize: signed(26 downto 0);
  signal c_37_34_1_False_shift: signed(26 downto 0);
  signal c_37_36_0_False_resize: signed(26 downto 0);
  signal c_37_36_0_False_shift: signed(26 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(24 downto 0);
  signal c_39: signed(24 downto 0);
  signal c_40: signed(24 downto 0);
  signal c_41: signed(24 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_42_i0_resize: signed(25 downto 0);
  signal c_42_i1_resize: signed(25 downto 0);
  signal c_42_i0_shift: signed(25 downto 0);
  signal c_42_i1_shift: signed(25 downto 0);
  signal c_42_arith: signed(25 downto 0);
  signal c_42_oshift: signed(25 downto 0);
  signal c_43: signed(22 downto 0);
  signal c_43_24_0_False_resize: signed(22 downto 0);
  signal c_43_24_0_False_shift: signed(22 downto 0);
  signal c_43_24_6_False_resize: signed(22 downto 0);
  signal c_43_24_6_False_shift: signed(22 downto 0);
  signal c_43_17_0_False_resize: signed(22 downto 0);
  signal c_43_17_0_False_shift: signed(22 downto 0);
  signal c_43_sel: std_logic_vector(1 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_29_0_False_resize: signed(23 downto 0);
  signal c_44_29_0_False_shift: signed(23 downto 0);
  signal c_44_22_4_False_resize: signed(23 downto 0);
  signal c_44_22_4_False_shift: signed(23 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_i0_resize: signed(23 downto 0);
  signal c_45_i1_resize: signed(23 downto 0);
  signal c_45_i0_shift: signed(23 downto 0);
  signal c_45_i1_shift: signed(23 downto 0);
  signal c_45_arith: signed(23 downto 0);
  signal c_45_oshift: signed(23 downto 0);
  signal c_45_sub_sel: std_logic;
  signal c_46: signed(25 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_48: signed(24 downto 0);
  signal c_48_45_1_False_resize: signed(24 downto 0);
  signal c_48_45_1_False_shift: signed(24 downto 0);
  signal c_48_47_3_False_resize: signed(24 downto 0);
  signal c_48_47_3_False_shift: signed(24 downto 0);
  signal c_48_47_0_False_resize: signed(24 downto 0);
  signal c_48_47_0_False_shift: signed(24 downto 0);
  signal c_48_sel: std_logic_vector(1 downto 0);
  signal c_49: signed(24 downto 0);
  signal c_49_22_3_False_resize: signed(24 downto 0);
  signal c_49_22_3_False_shift: signed(24 downto 0);
  signal c_49_24_0_False_resize: signed(24 downto 0);
  signal c_49_24_0_False_shift: signed(24 downto 0);
  signal c_49_27_0_False_resize: signed(24 downto 0);
  signal c_49_27_0_False_shift: signed(24 downto 0);
  signal c_49_sel: std_logic_vector(1 downto 0);
  signal c_50: signed(24 downto 0);
  signal c_51: signed(24 downto 0);
  signal c_52: signed(24 downto 0);
  signal c_52_i0_resize: signed(24 downto 0);
  signal c_52_i1_resize: signed(24 downto 0);
  signal c_52_i0_shift: signed(24 downto 0);
  signal c_52_i1_shift: signed(24 downto 0);
  signal c_52_arith: signed(24 downto 0);
  signal c_52_oshift: signed(24 downto 0);
  signal c_53: signed(24 downto 0);
  signal c_53_45_1_False_resize: signed(24 downto 0);
  signal c_53_45_1_False_shift: signed(24 downto 0);
  signal c_53_45_0_False_resize: signed(24 downto 0);
  signal c_53_45_0_False_shift: signed(24 downto 0);
  signal c_53_47_2_False_resize: signed(24 downto 0);
  signal c_53_47_2_False_shift: signed(24 downto 0);
  signal c_53_sel: std_logic_vector(1 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_54_22_0_False_resize: signed(23 downto 0);
  signal c_54_22_0_False_shift: signed(23 downto 0);
  signal c_54_22_1_False_resize: signed(23 downto 0);
  signal c_54_22_1_False_shift: signed(23 downto 0);
  signal c_54_22_4_False_resize: signed(23 downto 0);
  signal c_54_22_4_False_shift: signed(23 downto 0);
  signal c_54_sel: std_logic_vector(1 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_57: signed(24 downto 0);
  signal c_57_i0_resize: signed(24 downto 0);
  signal c_57_i1_resize: signed(24 downto 0);
  signal c_57_i0_shift: signed(24 downto 0);
  signal c_57_i1_shift: signed(24 downto 0);
  signal c_57_arith: signed(24 downto 0);
  signal c_57_oshift: signed(24 downto 0);
  signal c_57_sub_sel: std_logic;
  signal c_58: signed(25 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_60: signed(23 downto 0);
  signal c_61: signed(23 downto 0);
  signal c_62: signed(24 downto 0);
  signal c_62_59_0_False_resize: signed(24 downto 0);
  signal c_62_59_0_False_shift: signed(24 downto 0);
  signal c_62_52_0_False_resize: signed(24 downto 0);
  signal c_62_52_0_False_shift: signed(24 downto 0);
  signal c_62_61_1_False_resize: signed(24 downto 0);
  signal c_62_61_1_False_shift: signed(24 downto 0);
  signal c_62_sel: std_logic_vector(1 downto 0);
  signal c_63: signed(23 downto 0);
  signal c_64: signed(23 downto 0);
  signal c_65: signed(26 downto 0);
  signal c_65_64_5_False_resize: signed(26 downto 0);
  signal c_65_64_5_False_shift: signed(26 downto 0);
  signal c_65_31_0_False_resize: signed(26 downto 0);
  signal c_65_31_0_False_shift: signed(26 downto 0);
  signal c_65_36_7_False_resize: signed(26 downto 0);
  signal c_65_36_7_False_shift: signed(26 downto 0);
  signal c_65_sel: std_logic_vector(1 downto 0);
  signal c_66: signed(26 downto 0);
  signal c_67: signed(26 downto 0);
  signal c_68: signed(25 downto 0);
  signal c_68_i0_resize: signed(25 downto 0);
  signal c_68_i1_resize: signed(25 downto 0);
  signal c_68_i0_shift: signed(25 downto 0);
  signal c_68_i1_shift: signed(25 downto 0);
  signal c_68_arith: signed(25 downto 0);
  signal c_68_oshift: signed(25 downto 0);
  signal c_68_sub_sel: std_logic;
  signal c_69: signed(25 downto 0);
  signal c_69_10_3_False_resize: signed(25 downto 0);
  signal c_69_10_3_False_shift: signed(25 downto 0);
  signal c_69_14_6_False_resize: signed(25 downto 0);
  signal c_69_14_6_False_shift: signed(25 downto 0);
  signal c_69_20_0_False_resize: signed(25 downto 0);
  signal c_69_20_0_False_shift: signed(25 downto 0);
  signal c_69_sel: std_logic_vector(1 downto 0);
  signal c_70: signed(15 downto 0);
  signal c_71: signed(15 downto 0);
  signal c_72: signed(21 downto 0);
  signal c_73: signed(21 downto 0);
  signal c_74: signed(26 downto 0);
  signal c_74_57_2_False_resize: signed(26 downto 0);
  signal c_74_57_2_False_shift: signed(26 downto 0);
  signal c_74_73_0_False_resize: signed(26 downto 0);
  signal c_74_73_0_False_shift: signed(26 downto 0);
  signal c_74_71_0_False_resize: signed(26 downto 0);
  signal c_74_71_0_False_shift: signed(26 downto 0);
  signal c_74_sel: std_logic_vector(1 downto 0);
  signal c_75: signed(25 downto 0);
  signal c_76: signed(25 downto 0);
  signal c_77: signed(25 downto 0);
  signal c_78: signed(25 downto 0);
  signal c_79: signed(25 downto 0);
  signal c_80: signed(25 downto 0);
  signal c_81: signed(25 downto 0);
  signal c_81_i0_resize: signed(25 downto 0);
  signal c_81_i1_resize: signed(25 downto 0);
  signal c_81_i0_shift: signed(25 downto 0);
  signal c_81_i1_shift: signed(25 downto 0);
  signal c_81_arith: signed(25 downto 0);
  signal c_81_oshift: signed(25 downto 0);
  signal c_81_sub_sel: std_logic;
  signal c_82: signed(23 downto 0);
  signal c_83: signed(23 downto 0);
  signal c_84: signed(24 downto 0);
  signal c_85: signed(24 downto 0);
  signal c_86: signed(24 downto 0);
  signal c_86_83_0_False_resize: signed(24 downto 0);
  signal c_86_83_0_False_shift: signed(24 downto 0);
  signal c_86_85_0_False_resize: signed(24 downto 0);
  signal c_86_85_0_False_shift: signed(24 downto 0);
  signal c_86_68_0_False_resize: signed(24 downto 0);
  signal c_86_68_0_False_shift: signed(24 downto 0);
  signal c_86_sel: std_logic_vector(1 downto 0);
  signal c_87: signed(23 downto 0);
  signal c_88: signed(23 downto 0);
  signal c_89: signed(25 downto 0);
  signal c_89_88_6_False_resize: signed(25 downto 0);
  signal c_89_88_6_False_shift: signed(25 downto 0);
  signal c_89_52_0_False_resize: signed(25 downto 0);
  signal c_89_52_0_False_shift: signed(25 downto 0);
  signal c_89_88_3_False_resize: signed(25 downto 0);
  signal c_89_88_3_False_shift: signed(25 downto 0);
  signal c_89_sel: std_logic_vector(1 downto 0);
  signal c_90: signed(24 downto 0);
  signal c_91: signed(24 downto 0);
  signal c_92: signed(24 downto 0);
  signal c_93: signed(24 downto 0);
  signal c_94: signed(24 downto 0);
  signal c_95: signed(24 downto 0);
  signal c_96: signed(25 downto 0);
  signal c_97: signed(25 downto 0);
  signal c_98: signed(25 downto 0);
  signal c_98_97_0_False_resize: signed(25 downto 0);
  signal c_98_97_0_False_shift: signed(25 downto 0);
  signal c_98_95_1_False_resize: signed(25 downto 0);
  signal c_98_95_1_False_shift: signed(25 downto 0);
  signal c_98_68_0_False_resize: signed(25 downto 0);
  signal c_98_68_0_False_shift: signed(25 downto 0);
  signal c_98_sel: std_logic_vector(1 downto 0);
  signal c_99: signed(24 downto 0);
  signal c_99_88_0_False_resize: signed(24 downto 0);
  signal c_99_88_0_False_shift: signed(24 downto 0);
  signal c_99_93_0_False_resize: signed(24 downto 0);
  signal c_99_93_0_False_shift: signed(24 downto 0);
  signal c_99_42_0_False_resize: signed(24 downto 0);
  signal c_99_42_0_False_shift: signed(24 downto 0);
  signal c_99_sel: std_logic_vector(1 downto 0);
  signal c_100: signed(25 downto 0);
  signal c_101: signed(25 downto 0);
  signal c_102: signed(24 downto 0);
  signal c_103: signed(24 downto 0);
  signal c_104: signed(25 downto 0);
  signal c_104_81_0_False_resize: signed(25 downto 0);
  signal c_104_81_0_False_shift: signed(25 downto 0);
  signal c_104_101_0_False_resize: signed(25 downto 0);
  signal c_104_101_0_False_shift: signed(25 downto 0);
  signal c_104_103_0_False_resize: signed(25 downto 0);
  signal c_104_103_0_False_shift: signed(25 downto 0);
  signal c_104_sel: std_logic_vector(1 downto 0);
  signal c_105: signed(25 downto 0);
  signal c_105_81_0_False_resize: signed(25 downto 0);
  signal c_105_81_0_False_shift: signed(25 downto 0);
  signal c_105_101_0_False_resize: signed(25 downto 0);
  signal c_105_101_0_False_shift: signed(25 downto 0);
  signal c_105_68_1_False_resize: signed(25 downto 0);
  signal c_105_68_1_False_shift: signed(25 downto 0);
  signal c_105_sel: std_logic_vector(1 downto 0);
  signal c_106: signed(25 downto 0);
  signal c_107: signed(25 downto 0);
  signal c_108: signed(25 downto 0);
  signal c_108_57_0_False_resize: signed(25 downto 0);
  signal c_108_57_0_False_shift: signed(25 downto 0);
  signal c_108_107_0_False_resize: signed(25 downto 0);
  signal c_108_107_0_False_shift: signed(25 downto 0);
  signal c_108_61_0_False_resize: signed(25 downto 0);
  signal c_108_61_0_False_shift: signed(25 downto 0);
  signal c_108_sel: std_logic_vector(1 downto 0);
  signal c_109: signed(23 downto 0);
  signal c_109_47_1_False_resize: signed(23 downto 0);
  signal c_109_47_1_False_shift: signed(23 downto 0);
  signal c_109_45_0_False_resize: signed(23 downto 0);
  signal c_109_45_0_False_shift: signed(23 downto 0);
  signal c_109_sel: std_logic_vector(0 downto 0);
  signal c_110: signed(24 downto 0);
  signal c_110_52_0_False_resize: signed(24 downto 0);
  signal c_110_52_0_False_shift: signed(24 downto 0);
  signal c_110_57_0_False_resize: signed(24 downto 0);
  signal c_110_57_0_False_shift: signed(24 downto 0);
  signal c_110_93_1_False_resize: signed(24 downto 0);
  signal c_110_93_1_False_shift: signed(24 downto 0);
  signal c_110_sel: std_logic_vector(1 downto 0);
  signal c_111: signed(25 downto 0);
  signal c_112: signed(25 downto 0);
  signal c_113: signed(25 downto 0);
  signal c_113_112_0_False_resize: signed(25 downto 0);
  signal c_113_112_0_False_shift: signed(25 downto 0);
  signal c_113_112_1_False_resize: signed(25 downto 0);
  signal c_113_112_1_False_shift: signed(25 downto 0);
  signal c_113_81_0_False_resize: signed(25 downto 0);
  signal c_113_81_0_False_shift: signed(25 downto 0);
  signal c_113_sel: std_logic_vector(1 downto 0);
  signal c_114: signed(24 downto 0);
  signal c_114_resize: signed(24 downto 0);
  signal c_115: signed(25 downto 0);
  signal c_116: signed(25 downto 0);
  signal c_117: signed(25 downto 0);
  signal c_117_resize: signed(25 downto 0);
  signal c_118: signed(25 downto 0);
  signal c_118_resize: signed(25 downto 0);
  signal c_119: signed(24 downto 0);
  signal c_120: signed(24 downto 0);
  signal c_121: signed(24 downto 0);
  signal c_121_resize: signed(24 downto 0);
  signal c_122: signed(25 downto 0);
  signal c_122_resize: signed(25 downto 0);
  signal c_123: signed(25 downto 0);
  signal c_123_resize: signed(25 downto 0);
  signal c_124: signed(25 downto 0);
  signal c_125: signed(25 downto 0);
  signal c_126: signed(25 downto 0);
  signal c_126_resize: signed(25 downto 0);
  signal c_127: signed(23 downto 0);
  signal c_128: signed(23 downto 0);
  signal c_129: signed(23 downto 0);
  signal c_130: signed(23 downto 0);
  signal c_131: signed(23 downto 0);
  signal c_131_resize: signed(23 downto 0);
  signal c_132: signed(24 downto 0);
  signal c_133: signed(24 downto 0);
  signal c_134: signed(24 downto 0);
  signal c_134_resize: signed(24 downto 0);
  signal c_135: signed(25 downto 0);
  signal c_135_resize: signed(25 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 114
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_114);
    end if;
  end process;
  -- output node 1 with id 117
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_117);
    end if;
  end process;
  -- output node 2 with id 118
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_118);
    end if;
  end process;
  -- output node 3 with id 121
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_121);
    end if;
  end process;
  -- output node 4 with id 122
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_122);
    end if;
  end process;
  -- output node 5 with id 123
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_123);
    end if;
  end process;
  -- output node 6 with id 126
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_126);
    end if;
  end process;
  -- output node 7 with id 131
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_131);
    end if;
  end process;
  -- output node 8 with id 134
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_134);
    end if;
  end process;
  -- output node 9 with id 135
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_135);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [64], [1]]
  c_1_0_0_False_resize <= resize(c_0, 22);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_6_False_resize <= resize(c_0, 22);
  c_1_0_6_False_shift <= shift_left(c_1_0_6_False_resize, 6);
  with config_select_1 select c_1_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [2], [256]]
  c_2_0_8_False_resize <= resize(c_0, 24);
  c_2_0_8_False_shift <= shift_left(c_2_0_8_False_resize, 8);
  c_2_0_1_False_resize <= resize(c_0, 24);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  c_2_0_0_False_resize <= resize(c_0, 24);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_8_False_shift;
        when "01" => c_2 <= c_2_0_1_False_shift;
        when others => c_2 <= c_2_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[3], [60], [513]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 4 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_0 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_4 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[96], [8], [513]]
  c_6_5_3_False_resize <= resize(c_5, 26);
  c_6_5_3_False_shift <= shift_left(c_6_5_3_False_resize, 3);
  c_6_3_5_False_resize <= c_3;
  c_6_3_5_False_shift <= shift_left(c_6_3_5_False_resize, 5);
  c_6_3_0_False_resize <= c_3;
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_5_3_False_shift;
        when "01" => c_6 <= c_6_3_5_False_shift;
        when others => c_6 <= c_6_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[1], [256], [8]]
  c_7_0_3_False_resize <= resize(c_0, 24);
  c_7_0_3_False_shift <= shift_left(c_7_0_3_False_resize, 3);
  c_7_0_8_False_resize <= resize(c_0, 24);
  c_7_0_8_False_shift <= shift_left(c_7_0_8_False_resize, 8);
  c_7_0_0_False_resize <= resize(c_0, 24);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  with config_select_1 select c_7_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_0_3_False_shift;
        when "01" => c_7 <= c_7_0_8_False_shift;
        when others => c_7 <= c_7_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[1], [256], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[1], [256], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 10 and associated fundamentals [[97], [-248], [505]]
  with config_select_4 select c_10_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
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
      sub_i => c_10_sub_sel,
      x_i => c_6,
      y_i => c_9,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[16], [60], [4]]
  c_11_5_4_False_resize <= resize(c_5, 22);
  c_11_5_4_False_shift <= shift_left(c_11_5_4_False_resize, 4);
  c_11_5_2_False_resize <= resize(c_5, 22);
  c_11_5_2_False_shift <= shift_left(c_11_5_2_False_resize, 2);
  c_11_3_0_False_resize <= c_3(21 downto 0);
  c_11_3_0_False_shift <= shift_left(c_11_3_0_False_resize, 0);
  with config_select_3 select c_11_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_5_4_False_shift;
        when "01" => c_11 <= c_11_5_2_False_shift;
        when others => c_11 <= c_11_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 12 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_5 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 13 and associated fundamentals [[63], [239], [15]]
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 16,
      w_o => 24,
      s_x_i => 2,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 14 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_12 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 15 and associated fundamentals [[1], [512], [15]]
  c_15_14_9_False_resize <= resize(c_14, 25);
  c_15_14_9_False_shift <= shift_left(c_15_14_9_False_resize, 9);
  c_15_14_0_False_resize <= resize(c_14, 25);
  c_15_14_0_False_shift <= shift_left(c_15_14_0_False_resize, 0);
  c_15_13_0_False_resize <= resize(c_13, 25);
  c_15_13_0_False_shift <= shift_left(c_15_13_0_False_resize, 0);
  with config_select_5 select c_15_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "00" => c_15 <= c_15_14_9_False_shift;
        when "01" => c_15 <= c_15_14_0_False_shift;
        when others => c_15 <= c_15_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 16 and associated fundamentals [[63], [239], [128]]
  c_16_14_7_False_resize <= resize(c_14, 24);
  c_16_14_7_False_shift <= shift_left(c_16_14_7_False_resize, 7);
  c_16_13_0_False_resize <= c_13;
  c_16_13_0_False_shift <= shift_left(c_16_13_0_False_resize, 0);
  with config_select_5 select c_16_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_14_7_False_shift;
        when others => c_16 <= c_16_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 6 with id 17 and associated fundamentals [[-61], [785], [-98]]
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 24,
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
      x_i => c_15,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 18 and associated fundamentals [[1], [1], [60]]
  c_18_13_2_False_resize <= c_13(21 downto 0);
  c_18_13_2_False_shift <= shift_left(c_18_13_2_False_resize, 2);
  c_18_14_0_False_resize <= resize(c_14, 22);
  c_18_14_0_False_shift <= shift_left(c_18_14_0_False_resize, 0);
  with config_select_5 select c_18_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_13_2_False_shift;
        when others => c_18 <= c_18_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 19 and associated fundamentals [[3], [60], [513]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 20 and associated fundamentals [[3], [60], [513]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 21 and associated fundamentals [[12], [16], [15]]
  c_21_14_4_False_resize <= resize(c_14, 20);
  c_21_14_4_False_shift <= shift_left(c_21_14_4_False_resize, 4);
  c_21_20_2_False_resize <= c_20(19 downto 0);
  c_21_20_2_False_shift <= shift_left(c_21_20_2_False_resize, 2);
  c_21_13_0_False_resize <= c_13(19 downto 0);
  c_21_13_0_False_shift <= shift_left(c_21_13_0_False_resize, 0);
  with config_select_5 select c_21_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "00" => c_21 <= c_21_14_4_False_shift;
        when "01" => c_21 <= c_21_20_2_False_shift;
        when others => c_21 <= c_21_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 6 with id 22 and associated fundamentals [[-11], [-15], [45]]
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
      w_o => 22,
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
      x_i => c_18,
      y_i => c_21,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 24 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 25 and associated fundamentals [[-11], [2], [45]]
  c_25_22_0_False_resize <= c_22;
  c_25_22_0_False_shift <= shift_left(c_25_22_0_False_resize, 0);
  c_25_24_1_False_resize <= resize(c_24, 22);
  c_25_24_1_False_shift <= shift_left(c_25_24_1_False_resize, 1);
  with config_select_7 select c_25_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_22_0_False_shift;
        when others => c_25 <= c_25_24_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 26 and associated fundamentals [[97], [-248], [505]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[97], [-248], [505]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 28 and associated fundamentals [[63], [239], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 29 and associated fundamentals [[63], [239], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 30 and associated fundamentals [[388], [239], [45]]
  c_30_22_0_False_resize <= resize(c_22, 25);
  c_30_22_0_False_shift <= shift_left(c_30_22_0_False_resize, 0);
  c_30_29_0_False_resize <= resize(c_29, 25);
  c_30_29_0_False_shift <= shift_left(c_30_29_0_False_resize, 0);
  c_30_27_2_False_resize <= c_27;
  c_30_27_2_False_shift <= shift_left(c_30_27_2_False_resize, 2);
  with config_select_7 select c_30_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "00" => c_30 <= c_30_22_0_False_shift;
        when "01" => c_30 <= c_30_29_0_False_shift;
        when others => c_30 <= c_30_27_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 31 and associated fundamentals [[-564], [271], [675]]
  with config_select_8 select c_31_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 25,
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
  -- node of type 'mux' in stage 5 with id 32 and associated fundamentals [[384], [512], [505]]
  c_32_14_9_False_resize <= resize(c_14, 25);
  c_32_14_9_False_shift <= shift_left(c_32_14_9_False_resize, 9);
  c_32_20_7_False_resize <= c_20(24 downto 0);
  c_32_20_7_False_shift <= shift_left(c_32_20_7_False_resize, 7);
  c_32_10_0_False_resize <= c_10;
  c_32_10_0_False_shift <= shift_left(c_32_10_0_False_resize, 0);
  with config_select_5 select c_32_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "00" => c_32 <= c_32_14_9_False_shift;
        when "01" => c_32 <= c_32_20_7_False_shift;
        when others => c_32 <= c_32_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 33 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 34 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 35 and associated fundamentals [[-11], [-15], [45]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 36 and associated fundamentals [[-11], [-15], [45]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 37 and associated fundamentals [[-11], [1084], [2]]
  c_37_31_2_False_resize <= resize(c_31, 27);
  c_37_31_2_False_shift <= shift_left(c_37_31_2_False_resize, 2);
  c_37_34_1_False_resize <= resize(c_34, 27);
  c_37_34_1_False_shift <= shift_left(c_37_34_1_False_resize, 1);
  c_37_36_0_False_resize <= resize(c_36, 27);
  c_37_36_0_False_shift <= shift_left(c_37_36_0_False_resize, 0);
  with config_select_9 select c_37_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "00" => c_37 <= c_37_31_2_False_shift;
        when "01" => c_37 <= c_37_34_1_False_shift;
        when others => c_37 <= c_37_36_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 38 and associated fundamentals [[384], [512], [505]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 39 and associated fundamentals [[384], [512], [505]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 40 and associated fundamentals [[384], [512], [505]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 41 and associated fundamentals [[384], [512], [505]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 10 with id 42 and associated fundamentals [[395], [-572], [503]]
  inst_adder_node_42: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 27,
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
      x_i => c_41,
      y_i => c_37,
      z_o => c_42_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_42_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 43 and associated fundamentals [[1], [64], [-98]]
  c_43_24_0_False_resize <= resize(c_24, 23);
  c_43_24_0_False_shift <= shift_left(c_43_24_0_False_resize, 0);
  c_43_24_6_False_resize <= resize(c_24, 23);
  c_43_24_6_False_shift <= shift_left(c_43_24_6_False_resize, 6);
  c_43_17_0_False_resize <= c_17(22 downto 0);
  c_43_17_0_False_shift <= shift_left(c_43_17_0_False_resize, 0);
  with config_select_7 select c_43_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "00" => c_43 <= c_43_24_0_False_shift;
        when "01" => c_43 <= c_43_24_6_False_shift;
        when others => c_43 <= c_43_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 44 and associated fundamentals [[-176], [239], [15]]
  c_44_29_0_False_resize <= c_29;
  c_44_29_0_False_shift <= shift_left(c_44_29_0_False_resize, 0);
  c_44_22_4_False_resize <= resize(c_22, 24);
  c_44_22_4_False_shift <= shift_left(c_44_22_4_False_resize, 4);
  with config_select_7 select c_44_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "0" => c_44 <= c_44_29_0_False_shift;
        when others => c_44 <= c_44_22_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 45 and associated fundamentals [[-174], [-111], [-211]]
  with config_select_8 select c_45_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_45: entity work.adder_node
    generic map (
      w_x_i => 23,
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
  -- node of type 'register' in stage 7 with id 46 and associated fundamentals [[-61], [785], [-98]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 47 and associated fundamentals [[-61], [785], [-98]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 48 and associated fundamentals [[-488], [-222], [-98]]
  c_48_45_1_False_resize <= resize(c_45, 25);
  c_48_45_1_False_shift <= shift_left(c_48_45_1_False_resize, 1);
  c_48_47_3_False_resize <= c_47(24 downto 0);
  c_48_47_3_False_shift <= shift_left(c_48_47_3_False_resize, 3);
  c_48_47_0_False_resize <= c_47(24 downto 0);
  c_48_47_0_False_shift <= shift_left(c_48_47_0_False_resize, 0);
  with config_select_9 select c_48_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "00" => c_48 <= c_48_45_1_False_shift;
        when "01" => c_48 <= c_48_47_3_False_shift;
        when others => c_48 <= c_48_47_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 49 and associated fundamentals [[1], [-248], [360]]
  c_49_22_3_False_resize <= resize(c_22, 25);
  c_49_22_3_False_shift <= shift_left(c_49_22_3_False_resize, 3);
  c_49_24_0_False_resize <= resize(c_24, 25);
  c_49_24_0_False_shift <= shift_left(c_49_24_0_False_resize, 0);
  c_49_27_0_False_resize <= c_27;
  c_49_27_0_False_shift <= shift_left(c_49_27_0_False_resize, 0);
  with config_select_7 select c_49_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_49_sel is
        when "00" => c_49 <= c_49_22_3_False_shift;
        when "01" => c_49 <= c_49_24_0_False_shift;
        when others => c_49 <= c_49_27_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 50 and associated fundamentals [[1], [-248], [360]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 51 and associated fundamentals [[1], [-248], [360]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 10 with id 52 and associated fundamentals [[-489], [26], [-458]]
  inst_adder_node_52: entity work.adder_node
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
      x_i => c_48,
      y_i => c_51,
      z_o => c_52_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_52_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 53 and associated fundamentals [[-348], [-111], [-392]]
  c_53_45_1_False_resize <= resize(c_45, 25);
  c_53_45_1_False_shift <= shift_left(c_53_45_1_False_resize, 1);
  c_53_45_0_False_resize <= resize(c_45, 25);
  c_53_45_0_False_shift <= shift_left(c_53_45_0_False_resize, 0);
  c_53_47_2_False_resize <= c_47(24 downto 0);
  c_53_47_2_False_shift <= shift_left(c_53_47_2_False_resize, 2);
  with config_select_9 select c_53_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_53_sel is
        when "00" => c_53 <= c_53_45_1_False_shift;
        when "01" => c_53 <= c_53_45_0_False_shift;
        when others => c_53 <= c_53_47_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 54 and associated fundamentals [[-22], [-240], [45]]
  c_54_22_0_False_resize <= resize(c_22, 24);
  c_54_22_0_False_shift <= shift_left(c_54_22_0_False_resize, 0);
  c_54_22_1_False_resize <= resize(c_22, 24);
  c_54_22_1_False_shift <= shift_left(c_54_22_1_False_resize, 1);
  c_54_22_4_False_resize <= resize(c_22, 24);
  c_54_22_4_False_shift <= shift_left(c_54_22_4_False_resize, 4);
  with config_select_7 select c_54_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_54_sel is
        when "00" => c_54 <= c_54_22_0_False_shift;
        when "01" => c_54 <= c_54_22_1_False_shift;
        when others => c_54 <= c_54_22_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 55 and associated fundamentals [[-22], [-240], [45]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 56 and associated fundamentals [[-22], [-240], [45]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 57 and associated fundamentals [[-326], [-351], [-347]]
  with config_select_10 select c_57_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_57: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 24,
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
      sub_i => c_57_sub_sel,
      x_i => c_53,
      y_i => c_56,
      z_o => c_57_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_57_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 58 and associated fundamentals [[-61], [785], [-98]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 59 and associated fundamentals [[-61], [785], [-98]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 60 and associated fundamentals [[-174], [-111], [-211]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 61 and associated fundamentals [[-174], [-111], [-211]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 62 and associated fundamentals [[-489], [-222], [-98]]
  c_62_59_0_False_resize <= c_59(24 downto 0);
  c_62_59_0_False_shift <= shift_left(c_62_59_0_False_resize, 0);
  c_62_52_0_False_resize <= c_52;
  c_62_52_0_False_shift <= shift_left(c_62_52_0_False_resize, 0);
  c_62_61_1_False_resize <= resize(c_61, 25);
  c_62_61_1_False_shift <= shift_left(c_62_61_1_False_resize, 1);
  with config_select_11 select c_62_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_62_sel is
        when "00" => c_62 <= c_62_59_0_False_shift;
        when "01" => c_62 <= c_62_52_0_False_shift;
        when others => c_62 <= c_62_61_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 63 and associated fundamentals [[63], [239], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 64 and associated fundamentals [[63], [239], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 65 and associated fundamentals [[-1408], [271], [480]]
  c_65_64_5_False_resize <= resize(c_64, 27);
  c_65_64_5_False_shift <= shift_left(c_65_64_5_False_resize, 5);
  c_65_31_0_False_resize <= resize(c_31, 27);
  c_65_31_0_False_shift <= shift_left(c_65_31_0_False_resize, 0);
  c_65_36_7_False_resize <= resize(c_36, 27);
  c_65_36_7_False_shift <= shift_left(c_65_36_7_False_resize, 7);
  with config_select_9 select c_65_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_65_sel is
        when "00" => c_65 <= c_65_64_5_False_shift;
        when "01" => c_65 <= c_65_31_0_False_shift;
        when others => c_65 <= c_65_36_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 66 and associated fundamentals [[-1408], [271], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 67 and associated fundamentals [[-1408], [271], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 68 and associated fundamentals [[919], [-493], [382]]
  with config_select_12 select c_68_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_68: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_68_sub_sel,
      x_i => c_62,
      y_i => c_67,
      z_o => c_68_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_68_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 69 and associated fundamentals [[776], [64], [513]]
  c_69_10_3_False_resize <= resize(c_10, 26);
  c_69_10_3_False_shift <= shift_left(c_69_10_3_False_resize, 3);
  c_69_14_6_False_resize <= resize(c_14, 26);
  c_69_14_6_False_shift <= shift_left(c_69_14_6_False_resize, 6);
  c_69_20_0_False_resize <= c_20;
  c_69_20_0_False_shift <= shift_left(c_69_20_0_False_resize, 0);
  with config_select_5 select c_69_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_69_sel is
        when "00" => c_69 <= c_69_10_3_False_shift;
        when "01" => c_69 <= c_69_14_6_False_shift;
        when others => c_69 <= c_69_20_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 70 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 71 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 72 and associated fundamentals [[-11], [-15], [45]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 73 and associated fundamentals [[-11], [-15], [45]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_72 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 74 and associated fundamentals [[1], [-15], [-1388]]
  c_74_57_2_False_resize <= resize(c_57, 27);
  c_74_57_2_False_shift <= shift_left(c_74_57_2_False_resize, 2);
  c_74_73_0_False_resize <= resize(c_73, 27);
  c_74_73_0_False_shift <= shift_left(c_74_73_0_False_resize, 0);
  c_74_71_0_False_resize <= resize(c_71, 27);
  c_74_71_0_False_shift <= shift_left(c_74_71_0_False_resize, 0);
  with config_select_11 select c_74_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_74_sel is
        when "00" => c_74 <= c_74_57_2_False_shift;
        when "01" => c_74 <= c_74_73_0_False_shift;
        when others => c_74 <= c_74_71_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 75 and associated fundamentals [[776], [64], [513]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 76 and associated fundamentals [[776], [64], [513]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 77 and associated fundamentals [[776], [64], [513]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 78 and associated fundamentals [[776], [64], [513]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 79 and associated fundamentals [[776], [64], [513]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 80 and associated fundamentals [[776], [64], [513]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 81 and associated fundamentals [[775], [79], [-875]]
  with config_select_12 select c_81_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_81: entity work.adder_node
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
      sub_i => c_81_sub_sel,
      x_i => c_80,
      y_i => c_74,
      z_o => c_81_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_81_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 82 and associated fundamentals [[-174], [-111], [-211]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 83 and associated fundamentals [[-174], [-111], [-211]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_82 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 84 and associated fundamentals [[-489], [26], [-458]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 85 and associated fundamentals [[-489], [26], [-458]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_84 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 86 and associated fundamentals [[-174], [-493], [-458]]
  c_86_83_0_False_resize <= resize(c_83, 25);
  c_86_83_0_False_shift <= shift_left(c_86_83_0_False_resize, 0);
  c_86_85_0_False_resize <= c_85;
  c_86_85_0_False_shift <= shift_left(c_86_85_0_False_resize, 0);
  c_86_68_0_False_resize <= c_68(24 downto 0);
  c_86_68_0_False_shift <= shift_left(c_86_68_0_False_resize, 0);
  with config_select_13 select c_86_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_86_sel is
        when "00" => c_86 <= c_86_83_0_False_shift;
        when "01" => c_86 <= c_86_85_0_False_shift;
        when others => c_86 <= c_86_68_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 87 and associated fundamentals [[63], [239], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 88 and associated fundamentals [[63], [239], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_87 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 89 and associated fundamentals [[504], [26], [960]]
  c_89_88_6_False_resize <= resize(c_88, 26);
  c_89_88_6_False_shift <= shift_left(c_89_88_6_False_resize, 6);
  c_89_52_0_False_resize <= resize(c_52, 26);
  c_89_52_0_False_shift <= shift_left(c_89_52_0_False_resize, 0);
  c_89_88_3_False_resize <= resize(c_88, 26);
  c_89_88_3_False_shift <= shift_left(c_89_88_3_False_resize, 3);
  with config_select_11 select c_89_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_89_sel is
        when "00" => c_89 <= c_89_88_6_False_shift;
        when "01" => c_89 <= c_89_52_0_False_shift;
        when others => c_89 <= c_89_88_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 90 and associated fundamentals [[97], [-248], [505]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 91 and associated fundamentals [[97], [-248], [505]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_90 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 92 and associated fundamentals [[97], [-248], [505]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 93 and associated fundamentals [[97], [-248], [505]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_92 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 94 and associated fundamentals [[97], [-248], [505]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_93 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 95 and associated fundamentals [[97], [-248], [505]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_94 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 96 and associated fundamentals [[-61], [785], [-98]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 97 and associated fundamentals [[-61], [785], [-98]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_96 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 98 and associated fundamentals [[919], [785], [1010]]
  c_98_97_0_False_resize <= c_97;
  c_98_97_0_False_shift <= shift_left(c_98_97_0_False_resize, 0);
  c_98_95_1_False_resize <= resize(c_95, 26);
  c_98_95_1_False_shift <= shift_left(c_98_95_1_False_resize, 1);
  c_98_68_0_False_resize <= c_68;
  c_98_68_0_False_shift <= shift_left(c_98_68_0_False_resize, 0);
  with config_select_13 select c_98_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_98_sel is
        when "00" => c_98 <= c_98_97_0_False_shift;
        when "01" => c_98 <= c_98_95_1_False_shift;
        when others => c_98 <= c_98_68_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 99 and associated fundamentals [[97], [239], [503]]
  c_99_88_0_False_resize <= resize(c_88, 25);
  c_99_88_0_False_shift <= shift_left(c_99_88_0_False_resize, 0);
  c_99_93_0_False_resize <= c_93;
  c_99_93_0_False_shift <= shift_left(c_99_93_0_False_resize, 0);
  c_99_42_0_False_resize <= c_42(24 downto 0);
  c_99_42_0_False_shift <= shift_left(c_99_42_0_False_resize, 0);
  with config_select_11 select c_99_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_99_sel is
        when "00" => c_99 <= c_99_88_0_False_shift;
        when "01" => c_99 <= c_99_93_0_False_shift;
        when others => c_99 <= c_99_42_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 100 and associated fundamentals [[395], [-572], [503]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 101 and associated fundamentals [[395], [-572], [503]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_100 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 102 and associated fundamentals [[-326], [-351], [-347]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 103 and associated fundamentals [[-326], [-351], [-347]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_102 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 104 and associated fundamentals [[-326], [-572], [-875]]
  c_104_81_0_False_resize <= c_81;
  c_104_81_0_False_shift <= shift_left(c_104_81_0_False_resize, 0);
  c_104_101_0_False_resize <= c_101;
  c_104_101_0_False_shift <= shift_left(c_104_101_0_False_resize, 0);
  c_104_103_0_False_resize <= resize(c_103, 26);
  c_104_103_0_False_shift <= shift_left(c_104_103_0_False_resize, 0);
  with config_select_13 select c_104_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_104_sel is
        when "00" => c_104 <= c_104_81_0_False_shift;
        when "01" => c_104 <= c_104_101_0_False_shift;
        when others => c_104 <= c_104_103_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 105 and associated fundamentals [[395], [79], [764]]
  c_105_81_0_False_resize <= c_81;
  c_105_81_0_False_shift <= shift_left(c_105_81_0_False_resize, 0);
  c_105_101_0_False_resize <= c_101;
  c_105_101_0_False_shift <= shift_left(c_105_101_0_False_resize, 0);
  c_105_68_1_False_resize <= c_68;
  c_105_68_1_False_shift <= shift_left(c_105_68_1_False_resize, 1);
  with config_select_13 select c_105_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_105_sel is
        when "00" => c_105 <= c_105_81_0_False_shift;
        when "01" => c_105 <= c_105_101_0_False_shift;
        when others => c_105 <= c_105_68_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 106 and associated fundamentals [[-564], [271], [675]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 107 and associated fundamentals [[-564], [271], [675]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_106 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 108 and associated fundamentals [[-564], [-351], [-211]]
  c_108_57_0_False_resize <= resize(c_57, 26);
  c_108_57_0_False_shift <= shift_left(c_108_57_0_False_resize, 0);
  c_108_107_0_False_resize <= c_107;
  c_108_107_0_False_shift <= shift_left(c_108_107_0_False_resize, 0);
  c_108_61_0_False_resize <= resize(c_61, 26);
  c_108_61_0_False_shift <= shift_left(c_108_61_0_False_resize, 0);
  with config_select_11 select c_108_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_108_sel is
        when "00" => c_108 <= c_108_57_0_False_shift;
        when "01" => c_108 <= c_108_107_0_False_shift;
        when others => c_108 <= c_108_61_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 109 and associated fundamentals [[-122], [-111], [-196]]
  c_109_47_1_False_resize <= c_47(23 downto 0);
  c_109_47_1_False_shift <= shift_left(c_109_47_1_False_resize, 1);
  c_109_45_0_False_resize <= c_45;
  c_109_45_0_False_shift <= shift_left(c_109_45_0_False_resize, 0);
  with config_select_9 select c_109_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_109_sel is
        when "0" => c_109 <= c_109_47_1_False_shift;
        when others => c_109 <= c_109_45_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 110 and associated fundamentals [[-489], [-496], [-347]]
  c_110_52_0_False_resize <= c_52;
  c_110_52_0_False_shift <= shift_left(c_110_52_0_False_resize, 0);
  c_110_57_0_False_resize <= c_57;
  c_110_57_0_False_shift <= shift_left(c_110_57_0_False_resize, 0);
  c_110_93_1_False_resize <= c_93;
  c_110_93_1_False_shift <= shift_left(c_110_93_1_False_resize, 1);
  with config_select_11 select c_110_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_110_sel is
        when "00" => c_110 <= c_110_52_0_False_shift;
        when "01" => c_110 <= c_110_57_0_False_shift;
        when others => c_110 <= c_110_93_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 111 and associated fundamentals [[-564], [271], [675]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_107 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 112 and associated fundamentals [[-564], [271], [675]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_111 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 113 and associated fundamentals [[775], [542], [675]]
  c_113_112_0_False_resize <= c_112;
  c_113_112_0_False_shift <= shift_left(c_113_112_0_False_resize, 0);
  c_113_112_1_False_resize <= c_112;
  c_113_112_1_False_shift <= shift_left(c_113_112_1_False_resize, 1);
  c_113_81_0_False_resize <= c_81;
  c_113_81_0_False_shift <= shift_left(c_113_81_0_False_resize, 0);
  with config_select_13 select c_113_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_113_sel is
        when "00" => c_113 <= c_113_112_0_False_shift;
        when "01" => c_113 <= c_113_112_1_False_shift;
        when others => c_113 <= c_113_81_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 114 and associated fundamentals [[174], [493], [458]]
  c_114_resize <= c_86;
  c_114 <= -shift_left(c_114_resize, 0);
  -- node of type 'register' in stage 12 with id 115 and associated fundamentals [[504], [26], [960]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_89 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 116 and associated fundamentals [[504], [26], [960]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_116 <= c_115 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 117 and associated fundamentals [[504], [26], [960]]
  c_117_resize <= c_116;
  c_117 <= shift_left(c_117_resize, 0);
  -- node of type 'output' in stage 13 with id 118 and associated fundamentals [[919], [785], [1010]]
  c_118_resize <= c_98;
  c_118 <= shift_left(c_118_resize, 0);
  -- node of type 'register' in stage 12 with id 119 and associated fundamentals [[97], [239], [503]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_119 <= c_99 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 120 and associated fundamentals [[97], [239], [503]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_120 <= c_119 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 121 and associated fundamentals [[97], [239], [503]]
  c_121_resize <= c_120;
  c_121 <= shift_left(c_121_resize, 0);
  -- node of type 'output' in stage 13 with id 122 and associated fundamentals [[326], [572], [875]]
  c_122_resize <= c_104;
  c_122 <= -shift_left(c_122_resize, 0);
  -- node of type 'output' in stage 13 with id 123 and associated fundamentals [[395], [79], [764]]
  c_123_resize <= c_105;
  c_123 <= shift_left(c_123_resize, 0);
  -- node of type 'register' in stage 12 with id 124 and associated fundamentals [[-564], [-351], [-211]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_124 <= c_108 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 125 and associated fundamentals [[-564], [-351], [-211]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_125 <= c_124 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 126 and associated fundamentals [[564], [351], [211]]
  c_126_resize <= c_125;
  c_126 <= -shift_left(c_126_resize, 0);
  -- node of type 'register' in stage 10 with id 127 and associated fundamentals [[-122], [-111], [-196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_127 <= c_109 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 128 and associated fundamentals [[-122], [-111], [-196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_128 <= c_127 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 129 and associated fundamentals [[-122], [-111], [-196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_129 <= c_128 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 130 and associated fundamentals [[-122], [-111], [-196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_130 <= c_129 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 131 and associated fundamentals [[122], [111], [196]]
  c_131_resize <= c_130;
  c_131 <= -shift_left(c_131_resize, 0);
  -- node of type 'register' in stage 12 with id 132 and associated fundamentals [[-489], [-496], [-347]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_132 <= c_110 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 133 and associated fundamentals [[-489], [-496], [-347]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_133 <= c_132 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 134 and associated fundamentals [[489], [496], [347]]
  c_134_resize <= c_133;
  c_134 <= -shift_left(c_134_resize, 0);
  -- node of type 'output' in stage 13 with id 135 and associated fundamentals [[775], [542], [675]]
  c_135_resize <= c_113;
  c_135 <= shift_left(c_135_resize, 0);
end architecture;
