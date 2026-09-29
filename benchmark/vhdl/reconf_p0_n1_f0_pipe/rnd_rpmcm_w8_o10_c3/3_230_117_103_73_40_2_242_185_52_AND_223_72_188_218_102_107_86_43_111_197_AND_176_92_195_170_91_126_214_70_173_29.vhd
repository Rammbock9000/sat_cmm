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
    y_4: out std_logic_vector(22 downto 0);
    y_5: out std_logic_vector(22 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_0_0_False_resize: signed(18 downto 0);
  signal c_1_0_0_False_shift: signed(18 downto 0);
  signal c_1_0_3_False_resize: signed(18 downto 0);
  signal c_1_0_3_False_shift: signed(18 downto 0);
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
  signal c_4: signed(17 downto 0);
  signal c_4_0_2_False_resize: signed(17 downto 0);
  signal c_4_0_2_False_shift: signed(17 downto 0);
  signal c_4_0_0_False_resize: signed(17 downto 0);
  signal c_4_0_0_False_shift: signed(17 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(18 downto 0);
  signal c_5_i0_resize: signed(18 downto 0);
  signal c_5_i1_resize: signed(18 downto 0);
  signal c_5_i0_shift: signed(18 downto 0);
  signal c_5_i1_shift: signed(18 downto 0);
  signal c_5_arith: signed(18 downto 0);
  signal c_5_oshift: signed(18 downto 0);
  signal c_6: signed(20 downto 0);
  signal c_6_3_1_False_resize: signed(20 downto 0);
  signal c_6_3_1_False_shift: signed(20 downto 0);
  signal c_6_5_0_False_resize: signed(20 downto 0);
  signal c_6_5_0_False_shift: signed(20 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(15 downto 0);
  signal c_8: signed(15 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_i0_resize: signed(22 downto 0);
  signal c_9_i1_resize: signed(22 downto 0);
  signal c_9_i0_shift: signed(22 downto 0);
  signal c_9_i1_shift: signed(22 downto 0);
  signal c_9_arith: signed(22 downto 0);
  signal c_9_oshift: signed(22 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(18 downto 0);
  signal c_11: signed(18 downto 0);
  signal c_12: signed(20 downto 0);
  signal c_12_11_1_False_resize: signed(20 downto 0);
  signal c_12_11_1_False_shift: signed(20 downto 0);
  signal c_12_9_0_False_resize: signed(20 downto 0);
  signal c_12_9_0_False_shift: signed(20 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(15 downto 0);
  signal c_14: signed(15 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_15_i0_resize: signed(22 downto 0);
  signal c_15_i1_resize: signed(22 downto 0);
  signal c_15_i0_shift: signed(22 downto 0);
  signal c_15_i1_shift: signed(22 downto 0);
  signal c_15_arith: signed(22 downto 0);
  signal c_15_oshift: signed(22 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(18 downto 0);
  signal c_16_0_0_False_resize: signed(18 downto 0);
  signal c_16_0_0_False_shift: signed(18 downto 0);
  signal c_16_0_2_False_resize: signed(18 downto 0);
  signal c_16_0_2_False_shift: signed(18 downto 0);
  signal c_16_0_3_False_resize: signed(18 downto 0);
  signal c_16_0_3_False_shift: signed(18 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(18 downto 0);
  signal c_18: signed(18 downto 0);
  signal c_19: signed(18 downto 0);
  signal c_20: signed(18 downto 0);
  signal c_21: signed(18 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_22_i0_resize: signed(22 downto 0);
  signal c_22_i1_resize: signed(22 downto 0);
  signal c_22_i0_shift: signed(22 downto 0);
  signal c_22_i1_shift: signed(22 downto 0);
  signal c_22_arith: signed(22 downto 0);
  signal c_22_oshift: signed(22 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(22 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_23_0_False_resize: signed(23 downto 0);
  signal c_24_23_0_False_shift: signed(23 downto 0);
  signal c_24_22_1_False_resize: signed(23 downto 0);
  signal c_24_22_1_False_shift: signed(23 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(21 downto 0);
  signal c_25_7_0_False_resize: signed(21 downto 0);
  signal c_25_7_0_False_shift: signed(21 downto 0);
  signal c_25_5_3_False_resize: signed(21 downto 0);
  signal c_25_5_3_False_shift: signed(21 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(21 downto 0);
  signal c_27: signed(21 downto 0);
  signal c_28: signed(21 downto 0);
  signal c_29: signed(21 downto 0);
  signal c_30: signed(21 downto 0);
  signal c_31: signed(22 downto 0);
  signal c_31_i0_resize: signed(22 downto 0);
  signal c_31_i1_resize: signed(22 downto 0);
  signal c_31_i0_shift: signed(22 downto 0);
  signal c_31_i1_shift: signed(22 downto 0);
  signal c_31_arith: signed(22 downto 0);
  signal c_31_oshift: signed(22 downto 0);
  signal c_31_sub_sel: std_logic;
  signal c_32: signed(22 downto 0);
  signal c_33: signed(22 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_33_1_False_resize: signed(23 downto 0);
  signal c_34_33_1_False_shift: signed(23 downto 0);
  signal c_34_31_0_False_resize: signed(23 downto 0);
  signal c_34_31_0_False_shift: signed(23 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(21 downto 0);
  signal c_36: signed(21 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_i0_resize: signed(23 downto 0);
  signal c_37_i1_resize: signed(23 downto 0);
  signal c_37_i0_shift: signed(23 downto 0);
  signal c_37_i1_shift: signed(23 downto 0);
  signal c_37_arith: signed(23 downto 0);
  signal c_37_oshift: signed(23 downto 0);
  signal c_37_sub_sel: std_logic;
  signal c_38: signed(15 downto 0);
  signal c_39: signed(15 downto 0);
  signal c_40: signed(15 downto 0);
  signal c_41: signed(15 downto 0);
  signal c_42: signed(15 downto 0);
  signal c_43: signed(15 downto 0);
  signal c_44: signed(21 downto 0);
  signal c_45: signed(21 downto 0);
  signal c_46: signed(21 downto 0);
  signal c_47: signed(21 downto 0);
  signal c_48: signed(21 downto 0);
  signal c_49: signed(21 downto 0);
  signal c_50: signed(21 downto 0);
  signal c_51: signed(21 downto 0);
  signal c_52: signed(21 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_53_37_1_False_resize: signed(23 downto 0);
  signal c_53_37_1_False_shift: signed(23 downto 0);
  signal c_53_43_0_False_resize: signed(23 downto 0);
  signal c_53_43_0_False_shift: signed(23 downto 0);
  signal c_53_52_4_False_resize: signed(23 downto 0);
  signal c_53_52_4_False_shift: signed(23 downto 0);
  signal c_53_sel: std_logic_vector(1 downto 0);
  signal c_54: signed(22 downto 0);
  signal c_55: signed(22 downto 0);
  signal c_56: signed(22 downto 0);
  signal c_57: signed(23 downto 0);
  signal c_57_i0_resize: signed(23 downto 0);
  signal c_57_i1_resize: signed(23 downto 0);
  signal c_57_i0_shift: signed(23 downto 0);
  signal c_57_i1_shift: signed(23 downto 0);
  signal c_57_arith: signed(23 downto 0);
  signal c_57_oshift: signed(23 downto 0);
  signal c_57_sub_sel: std_logic;
  signal c_58: signed(15 downto 0);
  signal c_59: signed(15 downto 0);
  signal c_60: signed(23 downto 0);
  signal c_60_57_0_False_resize: signed(23 downto 0);
  signal c_60_57_0_False_shift: signed(23 downto 0);
  signal c_60_59_3_False_resize: signed(23 downto 0);
  signal c_60_59_3_False_shift: signed(23 downto 0);
  signal c_60_59_2_False_resize: signed(23 downto 0);
  signal c_60_59_2_False_shift: signed(23 downto 0);
  signal c_60_sel: std_logic_vector(1 downto 0);
  signal c_61: signed(22 downto 0);
  signal c_62: signed(22 downto 0);
  signal c_63: signed(22 downto 0);
  signal c_64: signed(22 downto 0);
  signal c_65: signed(22 downto 0);
  signal c_66: signed(23 downto 0);
  signal c_66_i0_resize: signed(23 downto 0);
  signal c_66_i1_resize: signed(23 downto 0);
  signal c_66_i0_shift: signed(23 downto 0);
  signal c_66_i1_shift: signed(23 downto 0);
  signal c_66_arith: signed(23 downto 0);
  signal c_66_oshift: signed(23 downto 0);
  signal c_66_sub_sel: std_logic;
  signal c_67: signed(22 downto 0);
  signal c_68: signed(22 downto 0);
  signal c_69: signed(21 downto 0);
  signal c_69_15_0_False_resize: signed(21 downto 0);
  signal c_69_15_0_False_shift: signed(21 downto 0);
  signal c_69_68_0_False_resize: signed(21 downto 0);
  signal c_69_68_0_False_shift: signed(21 downto 0);
  signal c_69_sel: std_logic_vector(0 downto 0);
  signal c_70: signed(21 downto 0);
  signal c_70_5_4_False_resize: signed(21 downto 0);
  signal c_70_5_4_False_shift: signed(21 downto 0);
  signal c_70_3_0_False_resize: signed(21 downto 0);
  signal c_70_3_0_False_shift: signed(21 downto 0);
  signal c_70_sel: std_logic_vector(0 downto 0);
  signal c_71: signed(21 downto 0);
  signal c_72: signed(21 downto 0);
  signal c_73: signed(21 downto 0);
  signal c_74: signed(21 downto 0);
  signal c_75: signed(23 downto 0);
  signal c_75_i0_resize: signed(23 downto 0);
  signal c_75_i1_resize: signed(23 downto 0);
  signal c_75_i0_shift: signed(23 downto 0);
  signal c_75_i1_shift: signed(23 downto 0);
  signal c_75_arith: signed(23 downto 0);
  signal c_75_oshift: signed(23 downto 0);
  signal c_75_sub_sel: std_logic;
  signal c_76: signed(22 downto 0);
  signal c_76_22_0_False_resize: signed(22 downto 0);
  signal c_76_22_0_False_shift: signed(22 downto 0);
  signal c_76_48_2_False_resize: signed(22 downto 0);
  signal c_76_48_2_False_shift: signed(22 downto 0);
  signal c_76_sel: std_logic_vector(0 downto 0);
  signal c_77: signed(21 downto 0);
  signal c_77_7_0_False_resize: signed(21 downto 0);
  signal c_77_7_0_False_shift: signed(21 downto 0);
  signal c_77_5_3_False_resize: signed(21 downto 0);
  signal c_77_5_3_False_shift: signed(21 downto 0);
  signal c_77_sel: std_logic_vector(0 downto 0);
  signal c_78: signed(21 downto 0);
  signal c_79: signed(21 downto 0);
  signal c_80: signed(21 downto 0);
  signal c_81: signed(21 downto 0);
  signal c_82: signed(21 downto 0);
  signal c_83: signed(22 downto 0);
  signal c_83_i0_resize: signed(22 downto 0);
  signal c_83_i1_resize: signed(22 downto 0);
  signal c_83_i0_shift: signed(22 downto 0);
  signal c_83_i1_shift: signed(22 downto 0);
  signal c_83_arith: signed(22 downto 0);
  signal c_83_oshift: signed(22 downto 0);
  signal c_83_sub_sel: std_logic;
  signal c_84: signed(18 downto 0);
  signal c_85: signed(18 downto 0);
  signal c_86: signed(18 downto 0);
  signal c_87: signed(18 downto 0);
  signal c_88: signed(18 downto 0);
  signal c_89: signed(18 downto 0);
  signal c_90: signed(18 downto 0);
  signal c_91: signed(23 downto 0);
  signal c_91_90_0_False_resize: signed(23 downto 0);
  signal c_91_90_0_False_shift: signed(23 downto 0);
  signal c_91_37_0_False_resize: signed(23 downto 0);
  signal c_91_37_0_False_shift: signed(23 downto 0);
  signal c_91_62_3_False_resize: signed(23 downto 0);
  signal c_91_62_3_False_shift: signed(23 downto 0);
  signal c_91_sel: std_logic_vector(1 downto 0);
  signal c_92: signed(22 downto 0);
  signal c_93: signed(22 downto 0);
  signal c_94: signed(22 downto 0);
  signal c_95: signed(22 downto 0);
  signal c_96: signed(22 downto 0);
  signal c_97: signed(23 downto 0);
  signal c_97_52_3_False_resize: signed(23 downto 0);
  signal c_97_52_3_False_shift: signed(23 downto 0);
  signal c_97_96_2_False_resize: signed(23 downto 0);
  signal c_97_96_2_False_shift: signed(23 downto 0);
  signal c_97_37_0_False_resize: signed(23 downto 0);
  signal c_97_37_0_False_shift: signed(23 downto 0);
  signal c_97_sel: std_logic_vector(1 downto 0);
  signal c_98: signed(22 downto 0);
  signal c_99: signed(22 downto 0);
  signal c_100: signed(22 downto 0);
  signal c_101: signed(22 downto 0);
  signal c_102: signed(22 downto 0);
  signal c_103: signed(22 downto 0);
  signal c_104: signed(22 downto 0);
  signal c_105: signed(22 downto 0);
  signal c_106: signed(23 downto 0);
  signal c_106_66_0_False_resize: signed(23 downto 0);
  signal c_106_66_0_False_shift: signed(23 downto 0);
  signal c_106_105_2_False_resize: signed(23 downto 0);
  signal c_106_105_2_False_shift: signed(23 downto 0);
  signal c_106_sel: std_logic_vector(0 downto 0);
  signal c_107: signed(22 downto 0);
  signal c_108: signed(22 downto 0);
  signal c_109: signed(22 downto 0);
  signal c_110: signed(22 downto 0);
  signal c_111: signed(22 downto 0);
  signal c_112: signed(23 downto 0);
  signal c_112_57_1_False_resize: signed(23 downto 0);
  signal c_112_57_1_False_shift: signed(23 downto 0);
  signal c_112_111_1_False_resize: signed(23 downto 0);
  signal c_112_111_1_False_shift: signed(23 downto 0);
  signal c_112_107_0_False_resize: signed(23 downto 0);
  signal c_112_107_0_False_shift: signed(23 downto 0);
  signal c_112_sel: std_logic_vector(1 downto 0);
  signal c_113: signed(22 downto 0);
  signal c_114: signed(22 downto 0);
  signal c_115: signed(22 downto 0);
  signal c_116: signed(22 downto 0);
  signal c_117: signed(22 downto 0);
  signal c_117_66_1_False_resize: signed(22 downto 0);
  signal c_117_66_1_False_shift: signed(22 downto 0);
  signal c_117_105_0_False_resize: signed(22 downto 0);
  signal c_117_105_0_False_shift: signed(22 downto 0);
  signal c_117_116_0_False_resize: signed(22 downto 0);
  signal c_117_116_0_False_shift: signed(22 downto 0);
  signal c_117_sel: std_logic_vector(1 downto 0);
  signal c_118: signed(22 downto 0);
  signal c_118_83_0_False_resize: signed(22 downto 0);
  signal c_118_83_0_False_shift: signed(22 downto 0);
  signal c_118_50_1_False_resize: signed(22 downto 0);
  signal c_118_50_1_False_shift: signed(22 downto 0);
  signal c_118_sel: std_logic_vector(0 downto 0);
  signal c_119: signed(22 downto 0);
  signal c_119_33_0_False_resize: signed(22 downto 0);
  signal c_119_33_0_False_shift: signed(22 downto 0);
  signal c_119_31_0_False_resize: signed(22 downto 0);
  signal c_119_31_0_False_shift: signed(22 downto 0);
  signal c_119_41_0_False_resize: signed(22 downto 0);
  signal c_119_41_0_False_shift: signed(22 downto 0);
  signal c_119_sel: std_logic_vector(1 downto 0);
  signal c_120: signed(23 downto 0);
  signal c_120_62_1_False_resize: signed(23 downto 0);
  signal c_120_62_1_False_shift: signed(23 downto 0);
  signal c_120_37_0_False_resize: signed(23 downto 0);
  signal c_120_37_0_False_shift: signed(23 downto 0);
  signal c_120_62_0_False_resize: signed(23 downto 0);
  signal c_120_62_0_False_shift: signed(23 downto 0);
  signal c_120_sel: std_logic_vector(1 downto 0);
  signal c_121: signed(23 downto 0);
  signal c_121_57_0_False_resize: signed(23 downto 0);
  signal c_121_57_0_False_shift: signed(23 downto 0);
  signal c_121_107_0_False_resize: signed(23 downto 0);
  signal c_121_107_0_False_shift: signed(23 downto 0);
  signal c_121_sel: std_logic_vector(0 downto 0);
  signal c_122: signed(23 downto 0);
  signal c_123: signed(23 downto 0);
  signal c_124: signed(23 downto 0);
  signal c_125: signed(23 downto 0);
  signal c_126: signed(23 downto 0);
  signal c_126_resize: signed(23 downto 0);
  signal c_127: signed(23 downto 0);
  signal c_128: signed(23 downto 0);
  signal c_129: signed(23 downto 0);
  signal c_130: signed(23 downto 0);
  signal c_131: signed(23 downto 0);
  signal c_131_resize: signed(23 downto 0);
  signal c_132: signed(23 downto 0);
  signal c_132_resize: signed(23 downto 0);
  signal c_133: signed(23 downto 0);
  signal c_134: signed(23 downto 0);
  signal c_135: signed(23 downto 0);
  signal c_135_resize: signed(23 downto 0);
  signal c_136: signed(22 downto 0);
  signal c_136_resize: signed(22 downto 0);
  signal c_137: signed(22 downto 0);
  signal c_138: signed(22 downto 0);
  signal c_139: signed(22 downto 0);
  signal c_140: signed(22 downto 0);
  signal c_141: signed(22 downto 0);
  signal c_142: signed(22 downto 0);
  signal c_143: signed(22 downto 0);
  signal c_143_resize: signed(22 downto 0);
  signal c_144: signed(22 downto 0);
  signal c_145: signed(22 downto 0);
  signal c_146: signed(22 downto 0);
  signal c_147: signed(22 downto 0);
  signal c_148: signed(22 downto 0);
  signal c_149: signed(22 downto 0);
  signal c_150: signed(23 downto 0);
  signal c_150_resize: signed(23 downto 0);
  signal c_151: signed(23 downto 0);
  signal c_152: signed(23 downto 0);
  signal c_153: signed(23 downto 0);
  signal c_154: signed(23 downto 0);
  signal c_155: signed(23 downto 0);
  signal c_155_resize: signed(23 downto 0);
  signal c_156: signed(23 downto 0);
  signal c_157: signed(23 downto 0);
  signal c_158: signed(23 downto 0);
  signal c_158_resize: signed(23 downto 0);
  signal c_159: signed(23 downto 0);
  signal c_160: signed(23 downto 0);
  signal c_161: signed(23 downto 0);
  signal c_162: signed(23 downto 0);
  signal c_163: signed(23 downto 0);
  signal c_164: signed(23 downto 0);
  signal c_165: signed(23 downto 0);
  signal c_166: signed(23 downto 0);
  signal c_167: signed(23 downto 0);
  signal c_167_resize: signed(23 downto 0);
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
  -- output node 0 with id 126
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_126);
    end if;
  end process;
  -- output node 1 with id 131
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_131);
    end if;
  end process;
  -- output node 2 with id 132
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_132);
    end if;
  end process;
  -- output node 3 with id 135
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_135);
    end if;
  end process;
  -- output node 4 with id 136
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_136);
    end if;
  end process;
  -- output node 5 with id 143
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_143);
    end if;
  end process;
  -- output node 6 with id 150
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_150);
    end if;
  end process;
  -- output node 7 with id 155
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_155);
    end if;
  end process;
  -- output node 8 with id 158
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_158);
    end if;
  end process;
  -- output node 9 with id 167
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_167);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [1], [8]]
  c_1_0_0_False_resize <= resize(c_0, 19);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_3_False_resize <= resize(c_0, 19);
  c_1_0_3_False_shift <= shift_left(c_1_0_3_False_resize, 3);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_3_False_shift;
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
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[9], [9], [63]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
      w_o => 22,
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
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[1], [4], [4]]
  c_4_0_2_False_resize <= resize(c_0, 18);
  c_4_0_2_False_shift <= shift_left(c_4_0_2_False_resize, 2);
  c_4_0_0_False_resize <= resize(c_0, 18);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  with config_select_1 select c_4_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_2_False_shift;
        when others => c_4 <= c_4_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 5 and associated fundamentals [[3], [6], [6]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 18,
      w_o => 19,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_2,
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[18], [18], [6]]
  c_6_3_1_False_resize <= c_3(20 downto 0);
  c_6_3_1_False_shift <= shift_left(c_6_3_1_False_resize, 1);
  c_6_5_0_False_resize <= resize(c_5, 21);
  c_6_5_0_False_shift <= shift_left(c_6_5_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_3_1_False_shift;
        when others => c_6 <= c_6_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 7 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_7 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 9 and associated fundamentals [[73], [73], [23]]
  with config_select_4 select c_9_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 16,
      w_o => 23,
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
      x_i => c_6,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[3], [6], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[3], [6], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 12 and associated fundamentals [[6], [12], [23]]
  c_12_11_1_False_resize <= resize(c_11, 21);
  c_12_11_1_False_shift <= shift_left(c_12_11_1_False_resize, 1);
  c_12_9_0_False_resize <= c_9(20 downto 0);
  c_12_9_0_False_shift <= shift_left(c_12_9_0_False_resize, 0);
  with config_select_5 select c_12_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_11_1_False_shift;
        when others => c_12 <= c_12_9_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 13 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 14 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 15 and associated fundamentals [[25], [47], [91]]
  with config_select_6 select c_15_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 16,
      w_o => 23,
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
      x_i => c_12,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 16 and associated fundamentals [[8], [4], [1]]
  c_16_0_0_False_resize <= resize(c_0, 19);
  c_16_0_0_False_shift <= shift_left(c_16_0_0_False_resize, 0);
  c_16_0_2_False_resize <= resize(c_0, 19);
  c_16_0_2_False_shift <= shift_left(c_16_0_2_False_resize, 2);
  c_16_0_3_False_resize <= resize(c_0, 19);
  c_16_0_3_False_shift <= shift_left(c_16_0_3_False_resize, 3);
  with config_select_1 select c_16_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_0_0_False_shift;
        when "01" => c_16 <= c_16_0_2_False_shift;
        when others => c_16 <= c_16_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 17 and associated fundamentals [[8], [4], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 18 and associated fundamentals [[8], [4], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 19 and associated fundamentals [[8], [4], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 20 and associated fundamentals [[8], [4], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 21 and associated fundamentals [[8], [4], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 22 and associated fundamentals [[-103], [111], [107]]
  with config_select_7 select c_22_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 19,
      w_o => 23,
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
      sub_i => c_22_sub_sel,
      x_i => c_15,
      y_i => c_21,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 23 and associated fundamentals [[25], [47], [91]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_15 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 24 and associated fundamentals [[25], [47], [214]]
  c_24_23_0_False_resize <= resize(c_23, 24);
  c_24_23_0_False_shift <= shift_left(c_24_23_0_False_resize, 0);
  c_24_22_1_False_resize <= resize(c_22, 24);
  c_24_22_1_False_shift <= shift_left(c_24_22_1_False_resize, 1);
  with config_select_8 select c_24_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_23_0_False_shift;
        when others => c_24 <= c_24_22_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 25 and associated fundamentals [[24], [1], [48]]
  c_25_7_0_False_resize <= resize(c_7, 22);
  c_25_7_0_False_shift <= shift_left(c_25_7_0_False_resize, 0);
  c_25_5_3_False_resize <= resize(c_5, 22);
  c_25_5_3_False_shift <= shift_left(c_25_5_3_False_resize, 3);
  with config_select_3 select c_25_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_7_0_False_shift;
        when others => c_25 <= c_25_5_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 26 and associated fundamentals [[24], [1], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 27 and associated fundamentals [[24], [1], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 28 and associated fundamentals [[24], [1], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 29 and associated fundamentals [[24], [1], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 30 and associated fundamentals [[24], [1], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 31 and associated fundamentals [[121], [43], [22]]
  with config_select_9 select c_31_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
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
      sub_i => c_31_sub_sel,
      x_i => c_24,
      y_i => c_30,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 32 and associated fundamentals [[-103], [111], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 33 and associated fundamentals [[-103], [111], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 34 and associated fundamentals [[-206], [222], [22]]
  c_34_33_1_False_resize <= resize(c_33, 24);
  c_34_33_1_False_shift <= shift_left(c_34_33_1_False_resize, 1);
  c_34_31_0_False_resize <= resize(c_31, 24);
  c_34_31_0_False_shift <= shift_left(c_34_31_0_False_resize, 0);
  with config_select_10 select c_34_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_33_1_False_shift;
        when others => c_34 <= c_34_31_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 35 and associated fundamentals [[24], [1], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 36 and associated fundamentals [[24], [1], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 11 with id 37 and associated fundamentals [[230], [223], [70]]
  with config_select_11 select c_37_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_37: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_37_sub_sel,
      x_i => c_36,
      y_i => c_34,
      z_o => c_37_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_37_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 38 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 39 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 40 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 41 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 42 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 43 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 44 and associated fundamentals [[9], [9], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 45 and associated fundamentals [[9], [9], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 46 and associated fundamentals [[9], [9], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 47 and associated fundamentals [[9], [9], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 48 and associated fundamentals [[9], [9], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 49 and associated fundamentals [[9], [9], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 50 and associated fundamentals [[9], [9], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 51 and associated fundamentals [[9], [9], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 52 and associated fundamentals [[9], [9], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 53 and associated fundamentals [[144], [1], [140]]
  c_53_37_1_False_resize <= c_37;
  c_53_37_1_False_shift <= shift_left(c_53_37_1_False_resize, 1);
  c_53_43_0_False_resize <= resize(c_43, 24);
  c_53_43_0_False_shift <= shift_left(c_53_43_0_False_resize, 0);
  c_53_52_4_False_resize <= resize(c_52, 24);
  c_53_52_4_False_shift <= shift_left(c_53_52_4_False_resize, 4);
  with config_select_12 select c_53_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_53_sel is
        when "00" => c_53 <= c_53_37_1_False_shift;
        when "01" => c_53 <= c_53_43_0_False_shift;
        when others => c_53 <= c_53_52_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 54 and associated fundamentals [[-103], [111], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 55 and associated fundamentals [[-103], [111], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 56 and associated fundamentals [[-103], [111], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 13 with id 57 and associated fundamentals [[185], [-109], [173]]
  with config_select_13 select c_57_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_57: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_57_sub_sel,
      x_i => c_53,
      y_i => c_56,
      z_o => c_57_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_57_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 58 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 59 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 14 with id 60 and associated fundamentals [[4], [8], [173]]
  c_60_57_0_False_resize <= c_57;
  c_60_57_0_False_shift <= shift_left(c_60_57_0_False_resize, 0);
  c_60_59_3_False_resize <= resize(c_59, 24);
  c_60_59_3_False_shift <= shift_left(c_60_59_3_False_resize, 3);
  c_60_59_2_False_resize <= resize(c_59, 24);
  c_60_59_2_False_shift <= shift_left(c_60_59_2_False_resize, 2);
  with config_select_14 select c_60_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_60_sel is
        when "00" => c_60 <= c_60_57_0_False_shift;
        when "01" => c_60 <= c_60_59_3_False_shift;
        when others => c_60 <= c_60_59_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 61 and associated fundamentals [[121], [43], [22]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 62 and associated fundamentals [[121], [43], [22]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 63 and associated fundamentals [[121], [43], [22]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 64 and associated fundamentals [[121], [43], [22]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 65 and associated fundamentals [[121], [43], [22]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 15 with id 66 and associated fundamentals [[117], [51], [195]]
  with config_select_15 select c_66_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_66: entity work.adder_node
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
      sub_i => c_66_sub_sel,
      x_i => c_65,
      y_i => c_60,
      z_o => c_66_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_66_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 67 and associated fundamentals [[73], [73], [23]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 68 and associated fundamentals [[73], [73], [23]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 69 and associated fundamentals [[25], [47], [23]]
  c_69_15_0_False_resize <= c_15(21 downto 0);
  c_69_15_0_False_shift <= shift_left(c_69_15_0_False_resize, 0);
  c_69_68_0_False_resize <= c_68(21 downto 0);
  c_69_68_0_False_shift <= shift_left(c_69_68_0_False_resize, 0);
  with config_select_7 select c_69_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_69_sel is
        when "0" => c_69 <= c_69_15_0_False_shift;
        when others => c_69 <= c_69_68_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 70 and associated fundamentals [[48], [9], [63]]
  c_70_5_4_False_resize <= resize(c_5, 22);
  c_70_5_4_False_shift <= shift_left(c_70_5_4_False_resize, 4);
  c_70_3_0_False_resize <= c_3;
  c_70_3_0_False_shift <= shift_left(c_70_3_0_False_resize, 0);
  with config_select_3 select c_70_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_70_sel is
        when "0" => c_70 <= c_70_5_4_False_shift;
        when others => c_70 <= c_70_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 71 and associated fundamentals [[48], [9], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 72 and associated fundamentals [[48], [9], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 73 and associated fundamentals [[48], [9], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_72 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 74 and associated fundamentals [[48], [9], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_73 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 75 and associated fundamentals [[52], [197], [29]]
  with config_select_8 select c_75_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_75: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
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
      sub_i => c_75_sub_sel,
      x_i => c_69,
      y_i => c_74,
      z_o => c_75_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_75_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 76 and associated fundamentals [[36], [111], [107]]
  c_76_22_0_False_resize <= c_22;
  c_76_22_0_False_shift <= shift_left(c_76_22_0_False_resize, 0);
  c_76_48_2_False_resize <= resize(c_48, 23);
  c_76_48_2_False_shift <= shift_left(c_76_48_2_False_resize, 2);
  with config_select_8 select c_76_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_76_sel is
        when "0" => c_76 <= c_76_22_0_False_shift;
        when others => c_76 <= c_76_48_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 77 and associated fundamentals [[1], [1], [48]]
  c_77_7_0_False_resize <= resize(c_7, 22);
  c_77_7_0_False_shift <= shift_left(c_77_7_0_False_resize, 0);
  c_77_5_3_False_resize <= resize(c_5, 22);
  c_77_5_3_False_shift <= shift_left(c_77_5_3_False_resize, 3);
  with config_select_3 select c_77_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_77_sel is
        when "0" => c_77 <= c_77_7_0_False_shift;
        when others => c_77 <= c_77_5_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 78 and associated fundamentals [[1], [1], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 79 and associated fundamentals [[1], [1], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 80 and associated fundamentals [[1], [1], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 81 and associated fundamentals [[1], [1], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_80 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 82 and associated fundamentals [[1], [1], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_81 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 83 and associated fundamentals [[40], [107], [-85]]
  with config_select_9 select c_83_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_83: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
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
      sub_i => c_83_sub_sel,
      x_i => c_76,
      y_i => c_82,
      z_o => c_83_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_83_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 84 and associated fundamentals [[3], [6], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 85 and associated fundamentals [[3], [6], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_84 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 86 and associated fundamentals [[3], [6], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_85 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 87 and associated fundamentals [[3], [6], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_86 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 88 and associated fundamentals [[3], [6], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_87 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 89 and associated fundamentals [[3], [6], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_88 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 90 and associated fundamentals [[3], [6], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_89 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 91 and associated fundamentals [[3], [223], [176]]
  c_91_90_0_False_resize <= resize(c_90, 24);
  c_91_90_0_False_shift <= shift_left(c_91_90_0_False_resize, 0);
  c_91_37_0_False_resize <= c_37;
  c_91_37_0_False_shift <= shift_left(c_91_37_0_False_resize, 0);
  c_91_62_3_False_resize <= resize(c_62, 24);
  c_91_62_3_False_shift <= shift_left(c_91_62_3_False_resize, 3);
  with config_select_12 select c_91_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_91_sel is
        when "00" => c_91 <= c_91_90_0_False_shift;
        when "01" => c_91 <= c_91_37_0_False_shift;
        when others => c_91 <= c_91_62_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 92 and associated fundamentals [[73], [73], [23]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 93 and associated fundamentals [[73], [73], [23]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_92 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 94 and associated fundamentals [[73], [73], [23]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_93 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 95 and associated fundamentals [[73], [73], [23]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_94 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 96 and associated fundamentals [[73], [73], [23]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_95 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 97 and associated fundamentals [[230], [72], [92]]
  c_97_52_3_False_resize <= resize(c_52, 24);
  c_97_52_3_False_shift <= shift_left(c_97_52_3_False_resize, 3);
  c_97_96_2_False_resize <= resize(c_96, 24);
  c_97_96_2_False_shift <= shift_left(c_97_96_2_False_resize, 2);
  c_97_37_0_False_resize <= c_37;
  c_97_37_0_False_shift <= shift_left(c_97_37_0_False_resize, 0);
  with config_select_12 select c_97_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_97_sel is
        when "00" => c_97 <= c_97_52_3_False_shift;
        when "01" => c_97 <= c_97_96_2_False_shift;
        when others => c_97 <= c_97_37_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 98 and associated fundamentals [[25], [47], [91]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 99 and associated fundamentals [[25], [47], [91]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_98 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 100 and associated fundamentals [[25], [47], [91]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_99 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 101 and associated fundamentals [[25], [47], [91]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_100 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 102 and associated fundamentals [[25], [47], [91]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_101 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 103 and associated fundamentals [[25], [47], [91]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_102 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 104 and associated fundamentals [[25], [47], [91]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_103 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 105 and associated fundamentals [[25], [47], [91]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_104 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 16 with id 106 and associated fundamentals [[117], [188], [195]]
  c_106_66_0_False_resize <= c_66;
  c_106_66_0_False_shift <= shift_left(c_106_66_0_False_resize, 0);
  c_106_105_2_False_resize <= resize(c_105, 24);
  c_106_105_2_False_shift <= shift_left(c_106_105_2_False_resize, 2);
  with config_select_16 select c_106_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_106_sel is
        when "0" => c_106 <= c_106_66_0_False_shift;
        when others => c_106 <= c_106_105_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 107 and associated fundamentals [[-103], [111], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 108 and associated fundamentals [[40], [107], [-85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_108 <= c_83 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 109 and associated fundamentals [[40], [107], [-85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_109 <= c_108 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 110 and associated fundamentals [[40], [107], [-85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_110 <= c_109 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 111 and associated fundamentals [[40], [107], [-85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_110 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 14 with id 112 and associated fundamentals [[-103], [-218], [-170]]
  c_112_57_1_False_resize <= c_57;
  c_112_57_1_False_shift <= shift_left(c_112_57_1_False_resize, 1);
  c_112_111_1_False_resize <= resize(c_111, 24);
  c_112_111_1_False_shift <= shift_left(c_112_111_1_False_resize, 1);
  c_112_107_0_False_resize <= resize(c_107, 24);
  c_112_107_0_False_shift <= shift_left(c_112_107_0_False_resize, 0);
  with config_select_14 select c_112_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_112_sel is
        when "00" => c_112 <= c_112_57_1_False_shift;
        when "01" => c_112 <= c_112_111_1_False_shift;
        when others => c_112 <= c_112_107_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 113 and associated fundamentals [[73], [73], [23]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_96 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 114 and associated fundamentals [[73], [73], [23]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_113 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 115 and associated fundamentals [[73], [73], [23]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_114 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 116 and associated fundamentals [[73], [73], [23]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_116 <= c_115 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 16 with id 117 and associated fundamentals [[73], [102], [91]]
  c_117_66_1_False_resize <= c_66(22 downto 0);
  c_117_66_1_False_shift <= shift_left(c_117_66_1_False_resize, 1);
  c_117_105_0_False_resize <= c_105;
  c_117_105_0_False_shift <= shift_left(c_117_105_0_False_resize, 0);
  c_117_116_0_False_resize <= c_116;
  c_117_116_0_False_shift <= shift_left(c_117_116_0_False_resize, 0);
  with config_select_16 select c_117_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_117_sel is
        when "00" => c_117 <= c_117_66_1_False_shift;
        when "01" => c_117 <= c_117_105_0_False_shift;
        when others => c_117 <= c_117_116_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 118 and associated fundamentals [[40], [107], [126]]
  c_118_83_0_False_resize <= c_83;
  c_118_83_0_False_shift <= shift_left(c_118_83_0_False_resize, 0);
  c_118_50_1_False_resize <= resize(c_50, 23);
  c_118_50_1_False_shift <= shift_left(c_118_50_1_False_resize, 1);
  with config_select_10 select c_118_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_118_sel is
        when "0" => c_118 <= c_118_83_0_False_shift;
        when others => c_118 <= c_118_50_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 119 and associated fundamentals [[1], [43], [107]]
  c_119_33_0_False_resize <= c_33;
  c_119_33_0_False_shift <= shift_left(c_119_33_0_False_resize, 0);
  c_119_31_0_False_resize <= c_31;
  c_119_31_0_False_shift <= shift_left(c_119_31_0_False_resize, 0);
  c_119_41_0_False_resize <= resize(c_41, 23);
  c_119_41_0_False_shift <= shift_left(c_119_41_0_False_resize, 0);
  with config_select_10 select c_119_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_119_sel is
        when "00" => c_119 <= c_119_33_0_False_shift;
        when "01" => c_119 <= c_119_31_0_False_shift;
        when others => c_119 <= c_119_41_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 120 and associated fundamentals [[242], [43], [70]]
  c_120_62_1_False_resize <= resize(c_62, 24);
  c_120_62_1_False_shift <= shift_left(c_120_62_1_False_resize, 1);
  c_120_37_0_False_resize <= c_37;
  c_120_37_0_False_shift <= shift_left(c_120_37_0_False_resize, 0);
  c_120_62_0_False_resize <= resize(c_62, 24);
  c_120_62_0_False_shift <= shift_left(c_120_62_0_False_resize, 0);
  with config_select_12 select c_120_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_120_sel is
        when "00" => c_120 <= c_120_62_1_False_shift;
        when "01" => c_120 <= c_120_37_0_False_shift;
        when others => c_120 <= c_120_62_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 14 with id 121 and associated fundamentals [[185], [111], [173]]
  c_121_57_0_False_resize <= c_57;
  c_121_57_0_False_shift <= shift_left(c_121_57_0_False_resize, 0);
  c_121_107_0_False_resize <= resize(c_107, 24);
  c_121_107_0_False_shift <= shift_left(c_121_107_0_False_resize, 0);
  with config_select_14 select c_121_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_121_sel is
        when "0" => c_121 <= c_121_57_0_False_shift;
        when others => c_121 <= c_121_107_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 122 and associated fundamentals [[3], [223], [176]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_122 <= c_91 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 123 and associated fundamentals [[3], [223], [176]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_123 <= c_122 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 124 and associated fundamentals [[3], [223], [176]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_124 <= c_123 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 125 and associated fundamentals [[3], [223], [176]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_125 <= c_124 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 126 and associated fundamentals [[3], [223], [176]]
  c_126_resize <= c_125;
  c_126 <= shift_left(c_126_resize, 0);
  -- node of type 'register' in stage 13 with id 127 and associated fundamentals [[230], [72], [92]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_127 <= c_97 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 128 and associated fundamentals [[230], [72], [92]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_128 <= c_127 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 129 and associated fundamentals [[230], [72], [92]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_129 <= c_128 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 130 and associated fundamentals [[230], [72], [92]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_130 <= c_129 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 131 and associated fundamentals [[230], [72], [92]]
  c_131_resize <= c_130;
  c_131 <= shift_left(c_131_resize, 0);
  -- node of type 'output' in stage 16 with id 132 and associated fundamentals [[117], [188], [195]]
  c_132_resize <= c_106;
  c_132 <= shift_left(c_132_resize, 0);
  -- node of type 'register' in stage 15 with id 133 and associated fundamentals [[-103], [-218], [-170]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_133 <= c_112 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 134 and associated fundamentals [[-103], [-218], [-170]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_134 <= c_133 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 135 and associated fundamentals [[103], [218], [170]]
  c_135_resize <= c_134;
  c_135 <= -shift_left(c_135_resize, 0);
  -- node of type 'output' in stage 16 with id 136 and associated fundamentals [[73], [102], [91]]
  c_136_resize <= c_117;
  c_136 <= shift_left(c_136_resize, 0);
  -- node of type 'register' in stage 11 with id 137 and associated fundamentals [[40], [107], [126]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_137 <= c_118 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 138 and associated fundamentals [[40], [107], [126]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_138 <= c_137 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 139 and associated fundamentals [[40], [107], [126]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_139 <= c_138 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 140 and associated fundamentals [[40], [107], [126]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_140 <= c_139 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 141 and associated fundamentals [[40], [107], [126]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_141 <= c_140 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 142 and associated fundamentals [[40], [107], [126]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_142 <= c_141 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 143 and associated fundamentals [[40], [107], [126]]
  c_143_resize <= c_142;
  c_143 <= shift_left(c_143_resize, 0);
  -- node of type 'register' in stage 11 with id 144 and associated fundamentals [[1], [43], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_144 <= c_119 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 145 and associated fundamentals [[1], [43], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_145 <= c_144 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 146 and associated fundamentals [[1], [43], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_146 <= c_145 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 147 and associated fundamentals [[1], [43], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_147 <= c_146 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 148 and associated fundamentals [[1], [43], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_148 <= c_147 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 149 and associated fundamentals [[1], [43], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_149 <= c_148 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 150 and associated fundamentals [[2], [86], [214]]
  c_150_resize <= resize(c_149, 24);
  c_150 <= shift_left(c_150_resize, 1);
  -- node of type 'register' in stage 13 with id 151 and associated fundamentals [[242], [43], [70]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_151 <= c_120 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 152 and associated fundamentals [[242], [43], [70]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_152 <= c_151 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 153 and associated fundamentals [[242], [43], [70]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_153 <= c_152 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 154 and associated fundamentals [[242], [43], [70]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_154 <= c_153 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 155 and associated fundamentals [[242], [43], [70]]
  c_155_resize <= c_154;
  c_155 <= shift_left(c_155_resize, 0);
  -- node of type 'register' in stage 15 with id 156 and associated fundamentals [[185], [111], [173]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_156 <= c_121 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 157 and associated fundamentals [[185], [111], [173]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_157 <= c_156 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 158 and associated fundamentals [[185], [111], [173]]
  c_158_resize <= c_157;
  c_158 <= shift_left(c_158_resize, 0);
  -- node of type 'register' in stage 9 with id 159 and associated fundamentals [[52], [197], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_159 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 160 and associated fundamentals [[52], [197], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_160 <= c_159 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 161 and associated fundamentals [[52], [197], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_161 <= c_160 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 162 and associated fundamentals [[52], [197], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_162 <= c_161 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 163 and associated fundamentals [[52], [197], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_163 <= c_162 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 164 and associated fundamentals [[52], [197], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_164 <= c_163 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 165 and associated fundamentals [[52], [197], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_165 <= c_164 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 166 and associated fundamentals [[52], [197], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_166 <= c_165 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 167 and associated fundamentals [[52], [197], [29]]
  c_167_resize <= c_166;
  c_167 <= shift_left(c_167_resize, 0);
end architecture;
