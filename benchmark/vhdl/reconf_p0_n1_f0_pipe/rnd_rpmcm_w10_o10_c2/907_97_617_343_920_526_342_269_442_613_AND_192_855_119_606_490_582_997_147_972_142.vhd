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
    y_7: out std_logic_vector(24 downto 0);
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
  signal config_select_10: std_logic_vector(0 downto 0);
  signal config_select_11: std_logic_vector(0 downto 0);
  signal config_select_12: std_logic_vector(0 downto 0);
  signal config_select_13: std_logic_vector(0 downto 0);
  signal config_select_14: std_logic_vector(0 downto 0);
  signal config_select_15: std_logic_vector(0 downto 0);
  signal config_select_16: std_logic_vector(0 downto 0);
  signal config_select_17: std_logic_vector(0 downto 0);
  signal config_select_18: std_logic_vector(0 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_0_0_False_resize: signed(19 downto 0);
  signal c_1_0_0_False_shift: signed(19 downto 0);
  signal c_1_0_4_False_resize: signed(19 downto 0);
  signal c_1_0_4_False_shift: signed(19 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(19 downto 0);
  signal c_3_i1_resize: signed(19 downto 0);
  signal c_3_i0_shift: signed(19 downto 0);
  signal c_3_i1_shift: signed(19 downto 0);
  signal c_3_arith: signed(19 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_5: signed(19 downto 0);
  signal c_5_4_0_False_resize: signed(19 downto 0);
  signal c_5_4_0_False_shift: signed(19 downto 0);
  signal c_5_3_2_False_resize: signed(19 downto 0);
  signal c_5_3_2_False_shift: signed(19 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_7: signed(20 downto 0);
  signal c_7_i0_resize: signed(20 downto 0);
  signal c_7_i1_resize: signed(20 downto 0);
  signal c_7_i0_shift: signed(20 downto 0);
  signal c_7_i1_shift: signed(20 downto 0);
  signal c_7_arith: signed(20 downto 0);
  signal c_7_oshift: signed(20 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(19 downto 0);
  signal c_8_3_0_False_resize: signed(19 downto 0);
  signal c_8_3_0_False_shift: signed(19 downto 0);
  signal c_8_3_2_False_resize: signed(19 downto 0);
  signal c_8_3_2_False_shift: signed(19 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(19 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_i0_resize: signed(22 downto 0);
  signal c_10_i1_resize: signed(22 downto 0);
  signal c_10_i0_shift: signed(22 downto 0);
  signal c_10_i1_shift: signed(22 downto 0);
  signal c_10_arith: signed(22 downto 0);
  signal c_10_oshift: signed(22 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(19 downto 0);
  signal c_12: signed(19 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_12_0_False_resize: signed(23 downto 0);
  signal c_13_12_0_False_shift: signed(23 downto 0);
  signal c_13_7_3_False_resize: signed(23 downto 0);
  signal c_13_7_3_False_shift: signed(23 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(25 downto 0);
  signal c_14_i0_resize: signed(25 downto 0);
  signal c_14_i1_resize: signed(25 downto 0);
  signal c_14_i0_shift: signed(25 downto 0);
  signal c_14_i1_shift: signed(25 downto 0);
  signal c_14_arith: signed(25 downto 0);
  signal c_14_oshift: signed(25 downto 0);
  signal c_15: signed(15 downto 0);
  signal c_16: signed(24 downto 0);
  signal c_16_7_7_False_resize: signed(24 downto 0);
  signal c_16_7_7_False_shift: signed(24 downto 0);
  signal c_16_15_0_False_resize: signed(24 downto 0);
  signal c_16_15_0_False_shift: signed(24 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_10_1_False_resize: signed(23 downto 0);
  signal c_17_10_1_False_shift: signed(23 downto 0);
  signal c_17_10_0_False_resize: signed(23 downto 0);
  signal c_17_10_0_False_shift: signed(23 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_19: signed(24 downto 0);
  signal c_19_i0_resize: signed(24 downto 0);
  signal c_19_i1_resize: signed(24 downto 0);
  signal c_19_i0_shift: signed(24 downto 0);
  signal c_19_i1_shift: signed(24 downto 0);
  signal c_19_arith: signed(24 downto 0);
  signal c_19_oshift: signed(24 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(20 downto 0);
  signal c_21: signed(20 downto 0);
  signal c_22: signed(20 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_22_0_False_resize: signed(25 downto 0);
  signal c_23_22_0_False_shift: signed(25 downto 0);
  signal c_23_19_2_False_resize: signed(25 downto 0);
  signal c_23_19_2_False_shift: signed(25 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(20 downto 0);
  signal c_24_3_0_False_resize: signed(20 downto 0);
  signal c_24_3_0_False_shift: signed(20 downto 0);
  signal c_24_3_1_False_resize: signed(20 downto 0);
  signal c_24_3_1_False_shift: signed(20 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(20 downto 0);
  signal c_26: signed(20 downto 0);
  signal c_27: signed(20 downto 0);
  signal c_28: signed(20 downto 0);
  signal c_29: signed(20 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_i0_resize: signed(25 downto 0);
  signal c_30_i1_resize: signed(25 downto 0);
  signal c_30_i0_shift: signed(25 downto 0);
  signal c_30_i1_shift: signed(25 downto 0);
  signal c_30_arith: signed(25 downto 0);
  signal c_30_oshift: signed(25 downto 0);
  signal c_30_sub_sel: std_logic;
  signal c_31: signed(23 downto 0);
  signal c_31_22_2_False_resize: signed(23 downto 0);
  signal c_31_22_2_False_shift: signed(23 downto 0);
  signal c_31_19_0_False_resize: signed(23 downto 0);
  signal c_31_19_0_False_shift: signed(23 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(19 downto 0);
  signal c_33: signed(19 downto 0);
  signal c_34: signed(19 downto 0);
  signal c_35: signed(24 downto 0);
  signal c_35_34_6_False_resize: signed(24 downto 0);
  signal c_35_34_6_False_shift: signed(24 downto 0);
  signal c_35_19_0_False_resize: signed(24 downto 0);
  signal c_35_19_0_False_shift: signed(24 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_36_i0_resize: signed(25 downto 0);
  signal c_36_i1_resize: signed(25 downto 0);
  signal c_36_i0_shift: signed(25 downto 0);
  signal c_36_i1_shift: signed(25 downto 0);
  signal c_36_arith: signed(25 downto 0);
  signal c_36_oshift: signed(25 downto 0);
  signal c_36_sub_sel: std_logic;
  signal c_37: signed(15 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_10_1_False_resize: signed(23 downto 0);
  signal c_38_10_1_False_shift: signed(23 downto 0);
  signal c_38_37_0_False_resize: signed(23 downto 0);
  signal c_38_37_0_False_shift: signed(23 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_21_3_False_resize: signed(23 downto 0);
  signal c_39_21_3_False_shift: signed(23 downto 0);
  signal c_39_14_0_False_resize: signed(23 downto 0);
  signal c_39_14_0_False_shift: signed(23 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_41_i0_resize: signed(25 downto 0);
  signal c_41_i1_resize: signed(25 downto 0);
  signal c_41_i0_shift: signed(25 downto 0);
  signal c_41_i1_shift: signed(25 downto 0);
  signal c_41_arith: signed(25 downto 0);
  signal c_41_oshift: signed(25 downto 0);
  signal c_41_sub_sel: std_logic;
  signal c_42: signed(22 downto 0);
  signal c_42_12_0_False_resize: signed(22 downto 0);
  signal c_42_12_0_False_shift: signed(22 downto 0);
  signal c_42_7_5_False_resize: signed(22 downto 0);
  signal c_42_7_5_False_shift: signed(22 downto 0);
  signal c_42_sel: std_logic_vector(0 downto 0);
  signal c_43: signed(15 downto 0);
  signal c_44: signed(15 downto 0);
  signal c_45: signed(15 downto 0);
  signal c_46: signed(15 downto 0);
  signal c_47: signed(24 downto 0);
  signal c_47_46_0_False_resize: signed(24 downto 0);
  signal c_47_46_0_False_shift: signed(24 downto 0);
  signal c_47_36_1_False_resize: signed(24 downto 0);
  signal c_47_36_1_False_shift: signed(24 downto 0);
  signal c_47_sel: std_logic_vector(0 downto 0);
  signal c_48: signed(22 downto 0);
  signal c_49: signed(22 downto 0);
  signal c_50: signed(22 downto 0);
  signal c_51: signed(22 downto 0);
  signal c_52: signed(22 downto 0);
  signal c_53: signed(24 downto 0);
  signal c_53_i0_resize: signed(24 downto 0);
  signal c_53_i1_resize: signed(24 downto 0);
  signal c_53_i0_shift: signed(24 downto 0);
  signal c_53_i1_shift: signed(24 downto 0);
  signal c_53_arith: signed(24 downto 0);
  signal c_53_oshift: signed(24 downto 0);
  signal c_53_sub_sel: std_logic;
  signal c_54: signed(19 downto 0);
  signal c_55: signed(24 downto 0);
  signal c_55_54_4_False_resize: signed(24 downto 0);
  signal c_55_54_4_False_shift: signed(24 downto 0);
  signal c_55_41_0_False_resize: signed(24 downto 0);
  signal c_55_41_0_False_shift: signed(24 downto 0);
  signal c_55_sel: std_logic_vector(0 downto 0);
  signal c_56: signed(22 downto 0);
  signal c_57: signed(22 downto 0);
  signal c_58: signed(22 downto 0);
  signal c_59: signed(22 downto 0);
  signal c_60: signed(23 downto 0);
  signal c_60_59_1_False_resize: signed(23 downto 0);
  signal c_60_59_1_False_shift: signed(23 downto 0);
  signal c_60_30_0_False_resize: signed(23 downto 0);
  signal c_60_30_0_False_shift: signed(23 downto 0);
  signal c_60_sel: std_logic_vector(0 downto 0);
  signal c_61: signed(24 downto 0);
  signal c_62: signed(25 downto 0);
  signal c_62_i0_resize: signed(25 downto 0);
  signal c_62_i1_resize: signed(25 downto 0);
  signal c_62_i0_shift: signed(25 downto 0);
  signal c_62_i1_shift: signed(25 downto 0);
  signal c_62_arith: signed(25 downto 0);
  signal c_62_oshift: signed(25 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_65: signed(24 downto 0);
  signal c_65_62_0_False_resize: signed(24 downto 0);
  signal c_65_62_0_False_shift: signed(24 downto 0);
  signal c_65_64_1_False_resize: signed(24 downto 0);
  signal c_65_64_1_False_shift: signed(24 downto 0);
  signal c_65_sel: std_logic_vector(0 downto 0);
  signal c_66: signed(25 downto 0);
  signal c_67: signed(25 downto 0);
  signal c_68: signed(25 downto 0);
  signal c_69: signed(25 downto 0);
  signal c_70: signed(25 downto 0);
  signal c_71: signed(25 downto 0);
  signal c_72: signed(25 downto 0);
  signal c_72_i0_resize: signed(25 downto 0);
  signal c_72_i1_resize: signed(25 downto 0);
  signal c_72_i0_shift: signed(25 downto 0);
  signal c_72_i1_shift: signed(25 downto 0);
  signal c_72_arith: signed(25 downto 0);
  signal c_72_oshift: signed(25 downto 0);
  signal c_72_sub_sel: std_logic;
  signal c_73: signed(23 downto 0);
  signal c_73_44_1_False_resize: signed(23 downto 0);
  signal c_73_44_1_False_shift: signed(23 downto 0);
  signal c_73_19_0_False_resize: signed(23 downto 0);
  signal c_73_19_0_False_shift: signed(23 downto 0);
  signal c_73_sel: std_logic_vector(0 downto 0);
  signal c_74: signed(15 downto 0);
  signal c_75: signed(15 downto 0);
  signal c_76: signed(15 downto 0);
  signal c_77: signed(15 downto 0);
  signal c_78: signed(25 downto 0);
  signal c_78_77_4_False_resize: signed(25 downto 0);
  signal c_78_77_4_False_shift: signed(25 downto 0);
  signal c_78_72_0_False_resize: signed(25 downto 0);
  signal c_78_72_0_False_shift: signed(25 downto 0);
  signal c_78_sel: std_logic_vector(0 downto 0);
  signal c_79: signed(23 downto 0);
  signal c_80: signed(23 downto 0);
  signal c_81: signed(23 downto 0);
  signal c_82: signed(23 downto 0);
  signal c_83: signed(23 downto 0);
  signal c_84: signed(23 downto 0);
  signal c_85: signed(25 downto 0);
  signal c_85_i0_resize: signed(25 downto 0);
  signal c_85_i1_resize: signed(25 downto 0);
  signal c_85_i0_shift: signed(25 downto 0);
  signal c_85_i1_shift: signed(25 downto 0);
  signal c_85_arith: signed(25 downto 0);
  signal c_85_oshift: signed(25 downto 0);
  signal c_86: signed(19 downto 0);
  signal c_87: signed(19 downto 0);
  signal c_88: signed(19 downto 0);
  signal c_89: signed(25 downto 0);
  signal c_89_62_0_False_resize: signed(25 downto 0);
  signal c_89_62_0_False_shift: signed(25 downto 0);
  signal c_89_88_6_False_resize: signed(25 downto 0);
  signal c_89_88_6_False_shift: signed(25 downto 0);
  signal c_89_sel: std_logic_vector(0 downto 0);
  signal c_90: signed(25 downto 0);
  signal c_90_53_0_False_resize: signed(25 downto 0);
  signal c_90_53_0_False_shift: signed(25 downto 0);
  signal c_90_70_0_False_resize: signed(25 downto 0);
  signal c_90_70_0_False_shift: signed(25 downto 0);
  signal c_90_sel: std_logic_vector(0 downto 0);
  signal c_91: signed(22 downto 0);
  signal c_92: signed(22 downto 0);
  signal c_93: signed(22 downto 0);
  signal c_94: signed(22 downto 0);
  signal c_95: signed(22 downto 0);
  signal c_96: signed(22 downto 0);
  signal c_97: signed(25 downto 0);
  signal c_97_96_0_False_resize: signed(25 downto 0);
  signal c_97_96_0_False_shift: signed(25 downto 0);
  signal c_97_85_0_False_resize: signed(25 downto 0);
  signal c_97_85_0_False_shift: signed(25 downto 0);
  signal c_97_sel: std_logic_vector(0 downto 0);
  signal c_98: signed(25 downto 0);
  signal c_98_85_0_False_resize: signed(25 downto 0);
  signal c_98_85_0_False_shift: signed(25 downto 0);
  signal c_98_96_3_False_resize: signed(25 downto 0);
  signal c_98_96_3_False_shift: signed(25 downto 0);
  signal c_98_sel: std_logic_vector(0 downto 0);
  signal c_99: signed(25 downto 0);
  signal c_100: signed(25 downto 0);
  signal c_101: signed(25 downto 0);
  signal c_101_53_1_False_resize: signed(25 downto 0);
  signal c_101_53_1_False_shift: signed(25 downto 0);
  signal c_101_100_0_False_resize: signed(25 downto 0);
  signal c_101_100_0_False_shift: signed(25 downto 0);
  signal c_101_sel: std_logic_vector(0 downto 0);
  signal c_102: signed(25 downto 0);
  signal c_103: signed(25 downto 0);
  signal c_103_72_0_False_resize: signed(25 downto 0);
  signal c_103_72_0_False_shift: signed(25 downto 0);
  signal c_103_102_1_False_resize: signed(25 downto 0);
  signal c_103_102_1_False_shift: signed(25 downto 0);
  signal c_103_sel: std_logic_vector(0 downto 0);
  signal c_104: signed(24 downto 0);
  signal c_105: signed(24 downto 0);
  signal c_106: signed(24 downto 0);
  signal c_106_36_0_False_resize: signed(24 downto 0);
  signal c_106_36_0_False_shift: signed(24 downto 0);
  signal c_106_105_0_False_resize: signed(24 downto 0);
  signal c_106_105_0_False_shift: signed(24 downto 0);
  signal c_106_sel: std_logic_vector(0 downto 0);
  signal c_107: signed(25 downto 0);
  signal c_107_30_1_False_resize: signed(25 downto 0);
  signal c_107_30_1_False_shift: signed(25 downto 0);
  signal c_107_30_0_False_resize: signed(25 downto 0);
  signal c_107_30_0_False_shift: signed(25 downto 0);
  signal c_107_sel: std_logic_vector(0 downto 0);
  signal c_108: signed(25 downto 0);
  signal c_109: signed(25 downto 0);
  signal c_110: signed(25 downto 0);
  signal c_110_109_0_False_resize: signed(25 downto 0);
  signal c_110_109_0_False_shift: signed(25 downto 0);
  signal c_110_72_0_False_resize: signed(25 downto 0);
  signal c_110_72_0_False_shift: signed(25 downto 0);
  signal c_110_sel: std_logic_vector(0 downto 0);
  signal c_111: signed(25 downto 0);
  signal c_112: signed(25 downto 0);
  signal c_113: signed(25 downto 0);
  signal c_114: signed(25 downto 0);
  signal c_115: signed(25 downto 0);
  signal c_115_resize: signed(25 downto 0);
  signal c_116: signed(25 downto 0);
  signal c_117: signed(25 downto 0);
  signal c_118: signed(25 downto 0);
  signal c_119: signed(25 downto 0);
  signal c_120: signed(25 downto 0);
  signal c_120_resize: signed(25 downto 0);
  signal c_121: signed(25 downto 0);
  signal c_121_resize: signed(25 downto 0);
  signal c_122: signed(25 downto 0);
  signal c_123: signed(25 downto 0);
  signal c_124: signed(25 downto 0);
  signal c_125: signed(25 downto 0);
  signal c_126: signed(25 downto 0);
  signal c_127: signed(25 downto 0);
  signal c_128: signed(25 downto 0);
  signal c_129: signed(25 downto 0);
  signal c_130: signed(25 downto 0);
  signal c_130_resize: signed(25 downto 0);
  signal c_131: signed(25 downto 0);
  signal c_131_resize: signed(25 downto 0);
  signal c_132: signed(25 downto 0);
  signal c_133: signed(25 downto 0);
  signal c_134: signed(25 downto 0);
  signal c_135: signed(25 downto 0);
  signal c_136: signed(25 downto 0);
  signal c_136_resize: signed(25 downto 0);
  signal c_137: signed(25 downto 0);
  signal c_138: signed(25 downto 0);
  signal c_139: signed(25 downto 0);
  signal c_139_resize: signed(25 downto 0);
  signal c_140: signed(24 downto 0);
  signal c_141: signed(24 downto 0);
  signal c_142: signed(24 downto 0);
  signal c_143: signed(24 downto 0);
  signal c_144: signed(24 downto 0);
  signal c_145: signed(24 downto 0);
  signal c_146: signed(24 downto 0);
  signal c_146_resize: signed(24 downto 0);
  signal c_147: signed(25 downto 0);
  signal c_148: signed(25 downto 0);
  signal c_149: signed(25 downto 0);
  signal c_150: signed(25 downto 0);
  signal c_151: signed(25 downto 0);
  signal c_152: signed(25 downto 0);
  signal c_153: signed(25 downto 0);
  signal c_153_resize: signed(25 downto 0);
  signal c_154: signed(25 downto 0);
  signal c_155: signed(25 downto 0);
  signal c_156: signed(25 downto 0);
  signal c_156_resize: signed(25 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 115
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_115);
    end if;
  end process;
  -- output node 1 with id 120
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_120);
    end if;
  end process;
  -- output node 2 with id 121
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_121);
    end if;
  end process;
  -- output node 3 with id 130
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_130);
    end if;
  end process;
  -- output node 4 with id 131
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_131);
    end if;
  end process;
  -- output node 5 with id 136
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_136);
    end if;
  end process;
  -- output node 6 with id 139
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_139);
    end if;
  end process;
  -- output node 7 with id 146
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_146);
    end if;
  end process;
  -- output node 8 with id 153
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_153);
    end if;
  end process;
  -- output node 9 with id 156
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_156);
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
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[-14], [3]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 20,
      w_o => 20,
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
      x_i => c_2,
      y_i => c_1,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[1], [12]]
  c_5_4_0_False_resize <= resize(c_4, 20);
  c_5_4_0_False_shift <= shift_left(c_5_4_0_False_resize, 0);
  c_5_3_2_False_resize <= c_3;
  c_5_3_2_False_shift <= shift_left(c_5_3_2_False_resize, 2);
  with config_select_3 select c_5_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_4_0_False_shift;
        when others => c_5 <= c_5_3_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 6 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[3], [23]]
  with config_select_4 select c_7_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 16,
      w_o => 21,
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
      sub_i => c_7_sub_sel,
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[-14], [12]]
  c_8_3_0_False_resize <= c_3;
  c_8_3_0_False_shift <= shift_left(c_8_3_0_False_resize, 0);
  c_8_3_2_False_resize <= c_3;
  c_8_3_2_False_shift <= shift_left(c_8_3_2_False_resize, 2);
  with config_select_3 select c_8_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_3_0_False_shift;
        when others => c_8 <= c_8_3_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 9 and associated fundamentals [[-14], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 10 and associated fundamentals [[-115], [119]]
  with config_select_5 select c_10_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 21,
      w_o => 23,
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
      sub_i => c_10_sub_sel,
      x_i => c_9,
      y_i => c_7,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[-14], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[-14], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 13 and associated fundamentals [[-14], [184]]
  c_13_12_0_False_resize <= resize(c_12, 24);
  c_13_12_0_False_shift <= shift_left(c_13_12_0_False_resize, 0);
  c_13_7_3_False_resize <= resize(c_7, 24);
  c_13_7_3_False_shift <= shift_left(c_13_7_3_False_resize, 3);
  with config_select_5 select c_13_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_12_0_False_shift;
        when others => c_13 <= c_13_7_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 6 with id 14 and associated fundamentals [[-171], [855]]
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
      w_o => 26,
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
      x_i => c_13,
      y_i => c_10,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_6 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 16 and associated fundamentals [[384], [1]]
  c_16_7_7_False_resize <= resize(c_7, 25);
  c_16_7_7_False_shift <= shift_left(c_16_7_7_False_resize, 7);
  c_16_15_0_False_resize <= resize(c_15, 25);
  c_16_15_0_False_shift <= shift_left(c_16_15_0_False_resize, 0);
  with config_select_5 select c_16_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_7_7_False_shift;
        when others => c_16 <= c_16_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 17 and associated fundamentals [[-115], [238]]
  c_17_10_1_False_resize <= resize(c_10, 24);
  c_17_10_1_False_shift <= shift_left(c_17_10_1_False_resize, 1);
  c_17_10_0_False_resize <= resize(c_10, 24);
  c_17_10_0_False_shift <= shift_left(c_17_10_0_False_resize, 0);
  with config_select_6 select c_17_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_10_1_False_shift;
        when others => c_17 <= c_17_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 18 and associated fundamentals [[384], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_16 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 19 and associated fundamentals [[269], [-237]]
  with config_select_7 select c_19_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_19: entity work.adder_node
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
      sub_i => c_19_sub_sel,
      x_i => c_18,
      y_i => c_17,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 20 and associated fundamentals [[3], [23]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 21 and associated fundamentals [[3], [23]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 22 and associated fundamentals [[3], [23]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 23 and associated fundamentals [[3], [-948]]
  c_23_22_0_False_resize <= resize(c_22, 26);
  c_23_22_0_False_shift <= shift_left(c_23_22_0_False_resize, 0);
  c_23_19_2_False_resize <= resize(c_19, 26);
  c_23_19_2_False_shift <= shift_left(c_23_19_2_False_resize, 2);
  with config_select_8 select c_23_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_22_0_False_shift;
        when others => c_23 <= c_23_19_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 24 and associated fundamentals [[-28], [3]]
  c_24_3_0_False_resize <= resize(c_3, 21);
  c_24_3_0_False_shift <= shift_left(c_24_3_0_False_resize, 0);
  c_24_3_1_False_resize <= resize(c_3, 21);
  c_24_3_1_False_shift <= shift_left(c_24_3_1_False_resize, 1);
  with config_select_3 select c_24_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_3_0_False_shift;
        when others => c_24 <= c_24_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 25 and associated fundamentals [[-28], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 26 and associated fundamentals [[-28], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[-28], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 28 and associated fundamentals [[-28], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 29 and associated fundamentals [[-28], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 30 and associated fundamentals [[-221], [-972]]
  with config_select_9 select c_30_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 21,
      w_o => 26,
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
      sub_i => c_30_sub_sel,
      x_i => c_23,
      y_i => c_29,
      z_o => c_30_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_30_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 31 and associated fundamentals [[12], [-237]]
  c_31_22_2_False_resize <= resize(c_22, 24);
  c_31_22_2_False_shift <= shift_left(c_31_22_2_False_resize, 2);
  c_31_19_0_False_resize <= c_19(23 downto 0);
  c_31_19_0_False_shift <= shift_left(c_31_19_0_False_resize, 0);
  with config_select_8 select c_31_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_22_2_False_shift;
        when others => c_31 <= c_31_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 32 and associated fundamentals [[-14], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 33 and associated fundamentals [[-14], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 34 and associated fundamentals [[-14], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 35 and associated fundamentals [[269], [192]]
  c_35_34_6_False_resize <= resize(c_34, 25);
  c_35_34_6_False_shift <= shift_left(c_35_34_6_False_resize, 6);
  c_35_19_0_False_resize <= c_19;
  c_35_19_0_False_shift <= shift_left(c_35_19_0_False_resize, 0);
  with config_select_8 select c_35_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_34_6_False_shift;
        when others => c_35 <= c_35_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 36 and associated fundamentals [[-526], [147]]
  with config_select_9 select c_36_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_36: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_36_sub_sel,
      x_i => c_31,
      y_i => c_35,
      z_o => c_36_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_36_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 37 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_15 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 38 and associated fundamentals [[1], [238]]
  c_38_10_1_False_resize <= resize(c_10, 24);
  c_38_10_1_False_shift <= shift_left(c_38_10_1_False_resize, 1);
  c_38_37_0_False_resize <= resize(c_37, 24);
  c_38_37_0_False_shift <= shift_left(c_38_37_0_False_resize, 0);
  with config_select_6 select c_38_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "0" => c_38 <= c_38_10_1_False_shift;
        when others => c_38 <= c_38_37_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 39 and associated fundamentals [[-171], [184]]
  c_39_21_3_False_resize <= resize(c_21, 24);
  c_39_21_3_False_shift <= shift_left(c_39_21_3_False_resize, 3);
  c_39_14_0_False_resize <= c_14(23 downto 0);
  c_39_14_0_False_shift <= shift_left(c_39_14_0_False_resize, 0);
  with config_select_7 select c_39_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "0" => c_39 <= c_39_21_3_False_shift;
        when others => c_39 <= c_39_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 40 and associated fundamentals [[1], [238]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_38 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 41 and associated fundamentals [[343], [606]]
  with config_select_8 select c_41_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_41: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_41_sub_sel,
      x_i => c_40,
      y_i => c_39,
      z_o => c_41_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_41_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 42 and associated fundamentals [[96], [3]]
  c_42_12_0_False_resize <= resize(c_12, 23);
  c_42_12_0_False_shift <= shift_left(c_42_12_0_False_resize, 0);
  c_42_7_5_False_resize <= resize(c_7, 23);
  c_42_7_5_False_shift <= shift_left(c_42_7_5_False_resize, 5);
  with config_select_5 select c_42_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "0" => c_42 <= c_42_12_0_False_shift;
        when others => c_42 <= c_42_7_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 43 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 44 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 45 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 46 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 47 and associated fundamentals [[1], [294]]
  c_47_46_0_False_resize <= resize(c_46, 25);
  c_47_46_0_False_shift <= shift_left(c_47_46_0_False_resize, 0);
  c_47_36_1_False_resize <= c_36(24 downto 0);
  c_47_36_1_False_shift <= shift_left(c_47_36_1_False_resize, 1);
  with config_select_10 select c_47_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "0" => c_47 <= c_47_46_0_False_shift;
        when others => c_47 <= c_47_36_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 48 and associated fundamentals [[96], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 49 and associated fundamentals [[96], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 50 and associated fundamentals [[96], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 51 and associated fundamentals [[96], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 52 and associated fundamentals [[96], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 11 with id 53 and associated fundamentals [[97], [-291]]
  with config_select_11 select c_53_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_53: entity work.adder_node
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
      sub_i => c_53_sub_sel,
      x_i => c_52,
      y_i => c_47,
      z_o => c_53_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_53_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 54 and associated fundamentals [[-14], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_34 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 55 and associated fundamentals [[343], [48]]
  c_55_54_4_False_resize <= resize(c_54, 25);
  c_55_54_4_False_shift <= shift_left(c_55_54_4_False_resize, 4);
  c_55_41_0_False_resize <= c_41(24 downto 0);
  c_55_41_0_False_shift <= shift_left(c_55_41_0_False_resize, 0);
  with config_select_9 select c_55_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_55_sel is
        when "0" => c_55 <= c_55_54_4_False_shift;
        when others => c_55 <= c_55_41_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 56 and associated fundamentals [[-115], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 57 and associated fundamentals [[-115], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 58 and associated fundamentals [[-115], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 59 and associated fundamentals [[-115], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 60 and associated fundamentals [[-221], [238]]
  c_60_59_1_False_resize <= resize(c_59, 24);
  c_60_59_1_False_shift <= shift_left(c_60_59_1_False_resize, 1);
  c_60_30_0_False_resize <= c_30(23 downto 0);
  c_60_30_0_False_shift <= shift_left(c_60_30_0_False_resize, 0);
  with config_select_10 select c_60_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_60_sel is
        when "0" => c_60 <= c_60_59_1_False_shift;
        when others => c_60 <= c_60_30_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 61 and associated fundamentals [[343], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_55 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 11 with id 62 and associated fundamentals [[907], [-142]]
  inst_adder_node_62: entity work.adder_node
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
      x_i => c_61,
      y_i => c_60,
      z_o => c_62_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_62_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 63 and associated fundamentals [[-221], [-972]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 64 and associated fundamentals [[-221], [-972]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 65 and associated fundamentals [[-442], [-142]]
  c_65_62_0_False_resize <= c_62(24 downto 0);
  c_65_62_0_False_shift <= shift_left(c_65_62_0_False_resize, 0);
  c_65_64_1_False_resize <= c_64(24 downto 0);
  c_65_64_1_False_shift <= shift_left(c_65_64_1_False_resize, 1);
  with config_select_12 select c_65_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_65_sel is
        when "0" => c_65 <= c_65_62_0_False_shift;
        when others => c_65 <= c_65_64_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 66 and associated fundamentals [[-171], [855]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 67 and associated fundamentals [[-171], [855]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 68 and associated fundamentals [[-171], [855]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 69 and associated fundamentals [[-171], [855]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 70 and associated fundamentals [[-171], [855]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 71 and associated fundamentals [[-171], [855]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 13 with id 72 and associated fundamentals [[-613], [-997]]
  with config_select_13 select c_72_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_72: entity work.adder_node
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
      sub_i => c_72_sub_sel,
      x_i => c_65,
      y_i => c_71,
      z_o => c_72_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_72_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 73 and associated fundamentals [[2], [-237]]
  c_73_44_1_False_resize <= resize(c_44, 24);
  c_73_44_1_False_shift <= shift_left(c_73_44_1_False_resize, 1);
  c_73_19_0_False_resize <= c_19(23 downto 0);
  c_73_19_0_False_shift <= shift_left(c_73_19_0_False_resize, 0);
  with config_select_8 select c_73_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_73_sel is
        when "0" => c_73 <= c_73_44_1_False_shift;
        when others => c_73 <= c_73_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 74 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 75 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 76 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 77 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 14 with id 78 and associated fundamentals [[-613], [16]]
  c_78_77_4_False_resize <= resize(c_77, 26);
  c_78_77_4_False_shift <= shift_left(c_78_77_4_False_resize, 4);
  c_78_72_0_False_resize <= c_72;
  c_78_72_0_False_shift <= shift_left(c_78_72_0_False_resize, 0);
  with config_select_14 select c_78_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_78_sel is
        when "0" => c_78 <= c_78_77_4_False_shift;
        when others => c_78 <= c_78_72_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 79 and associated fundamentals [[2], [-237]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 80 and associated fundamentals [[2], [-237]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 81 and associated fundamentals [[2], [-237]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_80 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 82 and associated fundamentals [[2], [-237]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_81 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 83 and associated fundamentals [[2], [-237]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_82 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 84 and associated fundamentals [[2], [-237]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_83 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 15 with id 85 and associated fundamentals [[617], [-490]]
  inst_adder_node_85: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 26,
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
      x_i => c_84,
      y_i => c_78,
      z_o => c_85_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_85_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 86 and associated fundamentals [[-14], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 87 and associated fundamentals [[-14], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_86 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 88 and associated fundamentals [[-14], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_87 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 89 and associated fundamentals [[907], [192]]
  c_89_62_0_False_resize <= c_62;
  c_89_62_0_False_shift <= shift_left(c_89_62_0_False_resize, 0);
  c_89_88_6_False_resize <= resize(c_88, 26);
  c_89_88_6_False_shift <= shift_left(c_89_88_6_False_resize, 6);
  with config_select_12 select c_89_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_89_sel is
        when "0" => c_89 <= c_89_62_0_False_shift;
        when others => c_89 <= c_89_88_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 90 and associated fundamentals [[97], [855]]
  c_90_53_0_False_resize <= resize(c_53, 26);
  c_90_53_0_False_shift <= shift_left(c_90_53_0_False_resize, 0);
  c_90_70_0_False_resize <= c_70;
  c_90_70_0_False_shift <= shift_left(c_90_70_0_False_resize, 0);
  with config_select_12 select c_90_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_90_sel is
        when "0" => c_90 <= c_90_53_0_False_shift;
        when others => c_90 <= c_90_70_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 91 and associated fundamentals [[-115], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 92 and associated fundamentals [[-115], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 93 and associated fundamentals [[-115], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_92 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 94 and associated fundamentals [[-115], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_93 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 95 and associated fundamentals [[-115], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_94 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 96 and associated fundamentals [[-115], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_95 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 16 with id 97 and associated fundamentals [[617], [119]]
  c_97_96_0_False_resize <= resize(c_96, 26);
  c_97_96_0_False_shift <= shift_left(c_97_96_0_False_resize, 0);
  c_97_85_0_False_resize <= c_85;
  c_97_85_0_False_shift <= shift_left(c_97_85_0_False_resize, 0);
  with config_select_16 select c_97_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_97_sel is
        when "0" => c_97 <= c_97_96_0_False_shift;
        when others => c_97 <= c_97_85_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 16 with id 98 and associated fundamentals [[-920], [-490]]
  c_98_85_0_False_resize <= c_85;
  c_98_85_0_False_shift <= shift_left(c_98_85_0_False_resize, 0);
  c_98_96_3_False_resize <= resize(c_96, 26);
  c_98_96_3_False_shift <= shift_left(c_98_96_3_False_resize, 3);
  with config_select_16 select c_98_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_98_sel is
        when "0" => c_98 <= c_98_85_0_False_shift;
        when others => c_98 <= c_98_96_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 99 and associated fundamentals [[-526], [147]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 100 and associated fundamentals [[-526], [147]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_99 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 101 and associated fundamentals [[-526], [-582]]
  c_101_53_1_False_resize <= resize(c_53, 26);
  c_101_53_1_False_shift <= shift_left(c_101_53_1_False_resize, 1);
  c_101_100_0_False_resize <= c_100;
  c_101_100_0_False_shift <= shift_left(c_101_100_0_False_resize, 0);
  with config_select_12 select c_101_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_101_sel is
        when "0" => c_101 <= c_101_53_1_False_shift;
        when others => c_101 <= c_101_100_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 102 and associated fundamentals [[-171], [855]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_71 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 14 with id 103 and associated fundamentals [[-342], [-997]]
  c_103_72_0_False_resize <= c_72;
  c_103_72_0_False_shift <= shift_left(c_103_72_0_False_resize, 0);
  c_103_102_1_False_resize <= c_102;
  c_103_102_1_False_shift <= shift_left(c_103_102_1_False_resize, 1);
  with config_select_14 select c_103_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_103_sel is
        when "0" => c_103 <= c_103_72_0_False_shift;
        when others => c_103 <= c_103_102_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 104 and associated fundamentals [[269], [-237]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 105 and associated fundamentals [[269], [-237]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_104 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 106 and associated fundamentals [[269], [147]]
  c_106_36_0_False_resize <= c_36(24 downto 0);
  c_106_36_0_False_shift <= shift_left(c_106_36_0_False_resize, 0);
  c_106_105_0_False_resize <= c_105;
  c_106_105_0_False_shift <= shift_left(c_106_105_0_False_resize, 0);
  with config_select_10 select c_106_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_106_sel is
        when "0" => c_106 <= c_106_36_0_False_shift;
        when others => c_106 <= c_106_105_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 107 and associated fundamentals [[-442], [-972]]
  c_107_30_1_False_resize <= c_30;
  c_107_30_1_False_shift <= shift_left(c_107_30_1_False_resize, 1);
  c_107_30_0_False_resize <= c_30;
  c_107_30_0_False_shift <= shift_left(c_107_30_0_False_resize, 0);
  with config_select_10 select c_107_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_107_sel is
        when "0" => c_107 <= c_107_30_1_False_shift;
        when others => c_107 <= c_107_30_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 108 and associated fundamentals [[907], [-142]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_108 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 109 and associated fundamentals [[907], [-142]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_109 <= c_108 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 14 with id 110 and associated fundamentals [[-613], [-142]]
  c_110_109_0_False_resize <= c_109;
  c_110_109_0_False_shift <= shift_left(c_110_109_0_False_resize, 0);
  c_110_72_0_False_resize <= c_72;
  c_110_72_0_False_shift <= shift_left(c_110_72_0_False_resize, 0);
  with config_select_14 select c_110_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_110_sel is
        when "0" => c_110 <= c_110_109_0_False_shift;
        when others => c_110 <= c_110_72_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 111 and associated fundamentals [[907], [192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_89 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 112 and associated fundamentals [[907], [192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_111 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 113 and associated fundamentals [[907], [192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_112 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 114 and associated fundamentals [[907], [192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_113 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 115 and associated fundamentals [[907], [192]]
  c_115_resize <= c_114;
  c_115 <= shift_left(c_115_resize, 0);
  -- node of type 'register' in stage 13 with id 116 and associated fundamentals [[97], [855]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_116 <= c_90 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 117 and associated fundamentals [[97], [855]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_117 <= c_116 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 118 and associated fundamentals [[97], [855]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_118 <= c_117 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 119 and associated fundamentals [[97], [855]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_119 <= c_118 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 120 and associated fundamentals [[97], [855]]
  c_120_resize <= c_119;
  c_120 <= shift_left(c_120_resize, 0);
  -- node of type 'output' in stage 16 with id 121 and associated fundamentals [[617], [119]]
  c_121_resize <= c_97;
  c_121 <= shift_left(c_121_resize, 0);
  -- node of type 'register' in stage 9 with id 122 and associated fundamentals [[343], [606]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_122 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 123 and associated fundamentals [[343], [606]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_123 <= c_122 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 124 and associated fundamentals [[343], [606]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_124 <= c_123 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 125 and associated fundamentals [[343], [606]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_125 <= c_124 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 126 and associated fundamentals [[343], [606]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_126 <= c_125 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 127 and associated fundamentals [[343], [606]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_127 <= c_126 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 128 and associated fundamentals [[343], [606]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_128 <= c_127 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 129 and associated fundamentals [[343], [606]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_129 <= c_128 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 130 and associated fundamentals [[343], [606]]
  c_130_resize <= c_129;
  c_130 <= shift_left(c_130_resize, 0);
  -- node of type 'output' in stage 16 with id 131 and associated fundamentals [[920], [490]]
  c_131_resize <= c_98;
  c_131 <= -shift_left(c_131_resize, 0);
  -- node of type 'register' in stage 13 with id 132 and associated fundamentals [[-526], [-582]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_132 <= c_101 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 133 and associated fundamentals [[-526], [-582]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_133 <= c_132 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 134 and associated fundamentals [[-526], [-582]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_134 <= c_133 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 135 and associated fundamentals [[-526], [-582]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_135 <= c_134 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 136 and associated fundamentals [[526], [582]]
  c_136_resize <= c_135;
  c_136 <= -shift_left(c_136_resize, 0);
  -- node of type 'register' in stage 15 with id 137 and associated fundamentals [[-342], [-997]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_137 <= c_103 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 138 and associated fundamentals [[-342], [-997]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_138 <= c_137 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 139 and associated fundamentals [[342], [997]]
  c_139_resize <= c_138;
  c_139 <= -shift_left(c_139_resize, 0);
  -- node of type 'register' in stage 11 with id 140 and associated fundamentals [[269], [147]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_140 <= c_106 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 141 and associated fundamentals [[269], [147]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_141 <= c_140 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 142 and associated fundamentals [[269], [147]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_142 <= c_141 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 143 and associated fundamentals [[269], [147]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_143 <= c_142 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 144 and associated fundamentals [[269], [147]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_144 <= c_143 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 145 and associated fundamentals [[269], [147]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_145 <= c_144 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 146 and associated fundamentals [[269], [147]]
  c_146_resize <= c_145;
  c_146 <= shift_left(c_146_resize, 0);
  -- node of type 'register' in stage 11 with id 147 and associated fundamentals [[-442], [-972]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_147 <= c_107 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 148 and associated fundamentals [[-442], [-972]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_148 <= c_147 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 149 and associated fundamentals [[-442], [-972]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_149 <= c_148 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 150 and associated fundamentals [[-442], [-972]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_150 <= c_149 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 151 and associated fundamentals [[-442], [-972]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_151 <= c_150 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 152 and associated fundamentals [[-442], [-972]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_152 <= c_151 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 153 and associated fundamentals [[442], [972]]
  c_153_resize <= c_152;
  c_153 <= -shift_left(c_153_resize, 0);
  -- node of type 'register' in stage 15 with id 154 and associated fundamentals [[-613], [-142]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_154 <= c_110 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 155 and associated fundamentals [[-613], [-142]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_155 <= c_154 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 156 and associated fundamentals [[613], [142]]
  c_156_resize <= c_155;
  c_156 <= -shift_left(c_156_resize, 0);
end architecture;
