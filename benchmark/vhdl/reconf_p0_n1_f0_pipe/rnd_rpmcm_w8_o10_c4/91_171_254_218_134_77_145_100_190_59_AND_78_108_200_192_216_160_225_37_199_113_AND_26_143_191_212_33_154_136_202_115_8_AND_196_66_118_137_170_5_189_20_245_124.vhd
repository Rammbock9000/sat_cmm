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
  signal config_select_20: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(16 downto 0);
  signal c_1_0_0_False_resize: signed(16 downto 0);
  signal c_1_0_0_False_shift: signed(16 downto 0);
  signal c_1_0_1_False_resize: signed(16 downto 0);
  signal c_1_0_1_False_shift: signed(16 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(17 downto 0);
  signal c_2_0_0_False_resize: signed(17 downto 0);
  signal c_2_0_0_False_shift: signed(17 downto 0);
  signal c_2_0_2_False_resize: signed(17 downto 0);
  signal c_2_0_2_False_shift: signed(17 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(21 downto 0);
  signal c_6_5_4_False_resize: signed(21 downto 0);
  signal c_6_5_4_False_shift: signed(21 downto 0);
  signal c_6_3_1_False_resize: signed(21 downto 0);
  signal c_6_3_1_False_shift: signed(21 downto 0);
  signal c_6_3_0_False_resize: signed(21 downto 0);
  signal c_6_3_0_False_shift: signed(21 downto 0);
  signal c_6_5_5_False_resize: signed(21 downto 0);
  signal c_6_5_5_False_shift: signed(21 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(24 downto 0);
  signal c_7_5_0_False_resize: signed(24 downto 0);
  signal c_7_5_0_False_shift: signed(24 downto 0);
  signal c_7_5_6_False_resize: signed(24 downto 0);
  signal c_7_5_6_False_shift: signed(24 downto 0);
  signal c_7_3_3_False_resize: signed(24 downto 0);
  signal c_7_3_3_False_shift: signed(24 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_8_i0_resize: signed(23 downto 0);
  signal c_8_i1_resize: signed(23 downto 0);
  signal c_8_i0_shift: signed(23 downto 0);
  signal c_8_i1_shift: signed(23 downto 0);
  signal c_8_arith: signed(23 downto 0);
  signal c_8_oshift: signed(23 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_3_2_False_resize: signed(22 downto 0);
  signal c_9_3_2_False_shift: signed(22 downto 0);
  signal c_9_5_0_False_resize: signed(22 downto 0);
  signal c_9_5_0_False_shift: signed(22 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_i0_resize: signed(23 downto 0);
  signal c_11_i1_resize: signed(23 downto 0);
  signal c_11_i0_shift: signed(23 downto 0);
  signal c_11_i1_shift: signed(23 downto 0);
  signal c_11_arith: signed(23 downto 0);
  signal c_11_oshift: signed(23 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(15 downto 0);
  signal c_13: signed(15 downto 0);
  signal c_14: signed(15 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_14_0_False_resize: signed(23 downto 0);
  signal c_15_14_0_False_shift: signed(23 downto 0);
  signal c_15_14_3_False_resize: signed(23 downto 0);
  signal c_15_14_3_False_shift: signed(23 downto 0);
  signal c_15_11_2_False_resize: signed(23 downto 0);
  signal c_15_11_2_False_shift: signed(23 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(22 downto 0);
  signal c_16_13_5_False_resize: signed(22 downto 0);
  signal c_16_13_5_False_shift: signed(22 downto 0);
  signal c_16_13_2_False_resize: signed(22 downto 0);
  signal c_16_13_2_False_shift: signed(22 downto 0);
  signal c_16_8_0_False_resize: signed(22 downto 0);
  signal c_16_8_0_False_shift: signed(22 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(22 downto 0);
  signal c_18: signed(22 downto 0);
  signal c_18_i0_resize: signed(22 downto 0);
  signal c_18_i1_resize: signed(22 downto 0);
  signal c_18_i0_shift: signed(22 downto 0);
  signal c_18_i1_shift: signed(22 downto 0);
  signal c_18_arith: signed(22 downto 0);
  signal c_18_oshift: signed(22 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(21 downto 0);
  signal c_20: signed(21 downto 0);
  signal c_21: signed(21 downto 0);
  signal c_22: signed(21 downto 0);
  signal c_23: signed(21 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_18_0_False_resize: signed(23 downto 0);
  signal c_26_18_0_False_shift: signed(23 downto 0);
  signal c_26_18_1_False_resize: signed(23 downto 0);
  signal c_26_18_1_False_shift: signed(23 downto 0);
  signal c_26_25_0_False_resize: signed(23 downto 0);
  signal c_26_25_0_False_shift: signed(23 downto 0);
  signal c_26_23_1_False_resize: signed(23 downto 0);
  signal c_26_23_1_False_shift: signed(23 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(15 downto 0);
  signal c_28: signed(15 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_29_23_0_False_resize: signed(22 downto 0);
  signal c_29_23_0_False_shift: signed(22 downto 0);
  signal c_29_28_5_False_resize: signed(22 downto 0);
  signal c_29_28_5_False_shift: signed(22 downto 0);
  signal c_29_18_1_False_resize: signed(22 downto 0);
  signal c_29_18_1_False_shift: signed(22 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(22 downto 0);
  signal c_30_i0_resize: signed(22 downto 0);
  signal c_30_i1_resize: signed(22 downto 0);
  signal c_30_i0_shift: signed(22 downto 0);
  signal c_30_i1_shift: signed(22 downto 0);
  signal c_30_arith: signed(22 downto 0);
  signal c_30_oshift: signed(22 downto 0);
  signal c_30_sub_sel: std_logic;
  signal c_31: signed(15 downto 0);
  signal c_32: signed(15 downto 0);
  signal c_33: signed(21 downto 0);
  signal c_34: signed(21 downto 0);
  signal c_35: signed(22 downto 0);
  signal c_35_34_0_False_resize: signed(22 downto 0);
  signal c_35_34_0_False_shift: signed(22 downto 0);
  signal c_35_32_1_False_resize: signed(22 downto 0);
  signal c_35_32_1_False_shift: signed(22 downto 0);
  signal c_35_30_0_False_resize: signed(22 downto 0);
  signal c_35_30_0_False_shift: signed(22 downto 0);
  signal c_35_32_3_False_resize: signed(22 downto 0);
  signal c_35_32_3_False_shift: signed(22 downto 0);
  signal c_35_sel: std_logic_vector(1 downto 0);
  signal c_36: signed(21 downto 0);
  signal c_36_3_0_False_resize: signed(21 downto 0);
  signal c_36_3_0_False_shift: signed(21 downto 0);
  signal c_36_5_2_False_resize: signed(21 downto 0);
  signal c_36_5_2_False_shift: signed(21 downto 0);
  signal c_36_5_0_False_resize: signed(21 downto 0);
  signal c_36_5_0_False_shift: signed(21 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(21 downto 0);
  signal c_38: signed(21 downto 0);
  signal c_39: signed(21 downto 0);
  signal c_40: signed(21 downto 0);
  signal c_41: signed(21 downto 0);
  signal c_42: signed(21 downto 0);
  signal c_43: signed(21 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_i0_resize: signed(23 downto 0);
  signal c_44_i1_resize: signed(23 downto 0);
  signal c_44_i0_shift: signed(23 downto 0);
  signal c_44_i1_shift: signed(23 downto 0);
  signal c_44_arith: signed(23 downto 0);
  signal c_44_oshift: signed(23 downto 0);
  signal c_44_sub_sel: std_logic;
  signal c_45: signed(23 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_48: signed(24 downto 0);
  signal c_48_18_0_False_resize: signed(24 downto 0);
  signal c_48_18_0_False_shift: signed(24 downto 0);
  signal c_48_47_1_False_resize: signed(24 downto 0);
  signal c_48_47_1_False_shift: signed(24 downto 0);
  signal c_48_sel: std_logic_vector(0 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_53: signed(22 downto 0);
  signal c_54: signed(22 downto 0);
  signal c_55: signed(22 downto 0);
  signal c_56: signed(22 downto 0);
  signal c_57: signed(23 downto 0);
  signal c_57_52_0_False_resize: signed(23 downto 0);
  signal c_57_52_0_False_shift: signed(23 downto 0);
  signal c_57_44_0_False_resize: signed(23 downto 0);
  signal c_57_44_0_False_shift: signed(23 downto 0);
  signal c_57_56_4_False_resize: signed(23 downto 0);
  signal c_57_56_4_False_shift: signed(23 downto 0);
  signal c_57_sel: std_logic_vector(1 downto 0);
  signal c_58: signed(24 downto 0);
  signal c_59: signed(24 downto 0);
  signal c_60: signed(24 downto 0);
  signal c_61: signed(24 downto 0);
  signal c_62: signed(25 downto 0);
  signal c_62_i0_resize: signed(25 downto 0);
  signal c_62_i1_resize: signed(25 downto 0);
  signal c_62_i0_shift: signed(25 downto 0);
  signal c_62_i1_shift: signed(25 downto 0);
  signal c_62_arith: signed(25 downto 0);
  signal c_62_oshift: signed(25 downto 0);
  signal c_62_sub_sel: std_logic;
  signal c_63: signed(22 downto 0);
  signal c_63_30_0_False_resize: signed(22 downto 0);
  signal c_63_30_0_False_shift: signed(22 downto 0);
  signal c_63_50_0_False_resize: signed(22 downto 0);
  signal c_63_50_0_False_shift: signed(22 downto 0);
  signal c_63_sel: std_logic_vector(0 downto 0);
  signal c_64: signed(21 downto 0);
  signal c_64_3_0_False_resize: signed(21 downto 0);
  signal c_64_3_0_False_shift: signed(21 downto 0);
  signal c_64_3_1_False_resize: signed(21 downto 0);
  signal c_64_3_1_False_shift: signed(21 downto 0);
  signal c_64_sel: std_logic_vector(0 downto 0);
  signal c_65: signed(21 downto 0);
  signal c_66: signed(21 downto 0);
  signal c_67: signed(21 downto 0);
  signal c_68: signed(21 downto 0);
  signal c_69: signed(21 downto 0);
  signal c_70: signed(21 downto 0);
  signal c_71: signed(21 downto 0);
  signal c_72: signed(23 downto 0);
  signal c_72_i0_resize: signed(23 downto 0);
  signal c_72_i1_resize: signed(23 downto 0);
  signal c_72_i0_shift: signed(23 downto 0);
  signal c_72_i1_shift: signed(23 downto 0);
  signal c_72_arith: signed(23 downto 0);
  signal c_72_oshift: signed(23 downto 0);
  signal c_73: signed(25 downto 0);
  signal c_73_62_0_False_resize: signed(25 downto 0);
  signal c_73_62_0_False_shift: signed(25 downto 0);
  signal c_73_62_1_False_resize: signed(25 downto 0);
  signal c_73_62_1_False_shift: signed(25 downto 0);
  signal c_73_sel: std_logic_vector(0 downto 0);
  signal c_74: signed(24 downto 0);
  signal c_74_3_0_False_resize: signed(24 downto 0);
  signal c_74_3_0_False_shift: signed(24 downto 0);
  signal c_74_5_9_False_resize: signed(24 downto 0);
  signal c_74_5_9_False_shift: signed(24 downto 0);
  signal c_74_sel: std_logic_vector(0 downto 0);
  signal c_75: signed(24 downto 0);
  signal c_76: signed(24 downto 0);
  signal c_77: signed(24 downto 0);
  signal c_78: signed(24 downto 0);
  signal c_79: signed(24 downto 0);
  signal c_80: signed(24 downto 0);
  signal c_81: signed(24 downto 0);
  signal c_82: signed(24 downto 0);
  signal c_83: signed(24 downto 0);
  signal c_84: signed(24 downto 0);
  signal c_85: signed(24 downto 0);
  signal c_86: signed(23 downto 0);
  signal c_86_i0_resize: signed(23 downto 0);
  signal c_86_i1_resize: signed(23 downto 0);
  signal c_86_i0_shift: signed(23 downto 0);
  signal c_86_i1_shift: signed(23 downto 0);
  signal c_86_arith: signed(23 downto 0);
  signal c_86_oshift: signed(23 downto 0);
  signal c_86_sub_sel: std_logic;
  signal c_87: signed(22 downto 0);
  signal c_88: signed(22 downto 0);
  signal c_89: signed(22 downto 0);
  signal c_90: signed(22 downto 0);
  signal c_91: signed(22 downto 0);
  signal c_92: signed(22 downto 0);
  signal c_93: signed(23 downto 0);
  signal c_94: signed(23 downto 0);
  signal c_95: signed(23 downto 0);
  signal c_96: signed(23 downto 0);
  signal c_97: signed(22 downto 0);
  signal c_97_92_0_False_resize: signed(22 downto 0);
  signal c_97_92_0_False_shift: signed(22 downto 0);
  signal c_97_86_1_False_resize: signed(22 downto 0);
  signal c_97_86_1_False_shift: signed(22 downto 0);
  signal c_97_96_0_False_resize: signed(22 downto 0);
  signal c_97_96_0_False_shift: signed(22 downto 0);
  signal c_97_sel: std_logic_vector(1 downto 0);
  signal c_98: signed(21 downto 0);
  signal c_98_14_0_False_resize: signed(21 downto 0);
  signal c_98_14_0_False_shift: signed(21 downto 0);
  signal c_98_11_0_False_resize: signed(21 downto 0);
  signal c_98_11_0_False_shift: signed(21 downto 0);
  signal c_98_sel: std_logic_vector(0 downto 0);
  signal c_99: signed(21 downto 0);
  signal c_100: signed(21 downto 0);
  signal c_101: signed(21 downto 0);
  signal c_102: signed(21 downto 0);
  signal c_103: signed(21 downto 0);
  signal c_104: signed(21 downto 0);
  signal c_105: signed(21 downto 0);
  signal c_106: signed(21 downto 0);
  signal c_107: signed(21 downto 0);
  signal c_108: signed(21 downto 0);
  signal c_109: signed(23 downto 0);
  signal c_109_i0_resize: signed(23 downto 0);
  signal c_109_i1_resize: signed(23 downto 0);
  signal c_109_i0_shift: signed(23 downto 0);
  signal c_109_i1_shift: signed(23 downto 0);
  signal c_109_arith: signed(23 downto 0);
  signal c_109_oshift: signed(23 downto 0);
  signal c_109_sub_sel: std_logic;
  signal c_110: signed(15 downto 0);
  signal c_111: signed(15 downto 0);
  signal c_112: signed(15 downto 0);
  signal c_113: signed(15 downto 0);
  signal c_114: signed(23 downto 0);
  signal c_114_62_2_False_resize: signed(23 downto 0);
  signal c_114_62_2_False_shift: signed(23 downto 0);
  signal c_114_113_7_False_resize: signed(23 downto 0);
  signal c_114_113_7_False_shift: signed(23 downto 0);
  signal c_114_62_0_False_resize: signed(23 downto 0);
  signal c_114_62_0_False_shift: signed(23 downto 0);
  signal c_114_sel: std_logic_vector(1 downto 0);
  signal c_115: signed(22 downto 0);
  signal c_116: signed(22 downto 0);
  signal c_117: signed(22 downto 0);
  signal c_118: signed(22 downto 0);
  signal c_119: signed(23 downto 0);
  signal c_120: signed(23 downto 0);
  signal c_121: signed(23 downto 0);
  signal c_122: signed(23 downto 0);
  signal c_123: signed(23 downto 0);
  signal c_123_86_0_False_resize: signed(23 downto 0);
  signal c_123_86_0_False_shift: signed(23 downto 0);
  signal c_123_122_1_False_resize: signed(23 downto 0);
  signal c_123_122_1_False_shift: signed(23 downto 0);
  signal c_123_118_5_False_resize: signed(23 downto 0);
  signal c_123_118_5_False_shift: signed(23 downto 0);
  signal c_123_118_0_False_resize: signed(23 downto 0);
  signal c_123_118_0_False_shift: signed(23 downto 0);
  signal c_123_sel: std_logic_vector(1 downto 0);
  signal c_124: signed(23 downto 0);
  signal c_125: signed(23 downto 0);
  signal c_126: signed(23 downto 0);
  signal c_126_i0_resize: signed(23 downto 0);
  signal c_126_i1_resize: signed(23 downto 0);
  signal c_126_i0_shift: signed(23 downto 0);
  signal c_126_i1_shift: signed(23 downto 0);
  signal c_126_arith: signed(23 downto 0);
  signal c_126_oshift: signed(23 downto 0);
  signal c_126_sub_sel: std_logic;
  signal c_127: signed(22 downto 0);
  signal c_128: signed(22 downto 0);
  signal c_129: signed(23 downto 0);
  signal c_130: signed(23 downto 0);
  signal c_131: signed(23 downto 0);
  signal c_131_128_1_False_resize: signed(23 downto 0);
  signal c_131_128_1_False_shift: signed(23 downto 0);
  signal c_131_130_1_False_resize: signed(23 downto 0);
  signal c_131_130_1_False_shift: signed(23 downto 0);
  signal c_131_126_0_False_resize: signed(23 downto 0);
  signal c_131_126_0_False_shift: signed(23 downto 0);
  signal c_131_sel: std_logic_vector(1 downto 0);
  signal c_132: signed(21 downto 0);
  signal c_133: signed(21 downto 0);
  signal c_134: signed(21 downto 0);
  signal c_135: signed(21 downto 0);
  signal c_136: signed(21 downto 0);
  signal c_137: signed(21 downto 0);
  signal c_138: signed(21 downto 0);
  signal c_139: signed(21 downto 0);
  signal c_140: signed(23 downto 0);
  signal c_141: signed(23 downto 0);
  signal c_142: signed(23 downto 0);
  signal c_143: signed(23 downto 0);
  signal c_144: signed(23 downto 0);
  signal c_145: signed(23 downto 0);
  signal c_146: signed(23 downto 0);
  signal c_147: signed(23 downto 0);
  signal c_148: signed(23 downto 0);
  signal c_148_139_1_False_resize: signed(23 downto 0);
  signal c_148_139_1_False_shift: signed(23 downto 0);
  signal c_148_126_1_False_resize: signed(23 downto 0);
  signal c_148_126_1_False_shift: signed(23 downto 0);
  signal c_148_145_0_False_resize: signed(23 downto 0);
  signal c_148_145_0_False_shift: signed(23 downto 0);
  signal c_148_147_0_False_resize: signed(23 downto 0);
  signal c_148_147_0_False_shift: signed(23 downto 0);
  signal c_148_sel: std_logic_vector(1 downto 0);
  signal c_149: signed(23 downto 0);
  signal c_150: signed(23 downto 0);
  signal c_151: signed(23 downto 0);
  signal c_152: signed(23 downto 0);
  signal c_153: signed(23 downto 0);
  signal c_153_152_1_False_resize: signed(23 downto 0);
  signal c_153_152_1_False_shift: signed(23 downto 0);
  signal c_153_152_0_False_resize: signed(23 downto 0);
  signal c_153_152_0_False_shift: signed(23 downto 0);
  signal c_153_72_1_False_resize: signed(23 downto 0);
  signal c_153_72_1_False_shift: signed(23 downto 0);
  signal c_153_sel: std_logic_vector(1 downto 0);
  signal c_154: signed(22 downto 0);
  signal c_155: signed(22 downto 0);
  signal c_156: signed(25 downto 0);
  signal c_157: signed(25 downto 0);
  signal c_158: signed(25 downto 0);
  signal c_159: signed(25 downto 0);
  signal c_160: signed(23 downto 0);
  signal c_160_155_1_False_resize: signed(23 downto 0);
  signal c_160_155_1_False_shift: signed(23 downto 0);
  signal c_160_109_2_False_resize: signed(23 downto 0);
  signal c_160_109_2_False_shift: signed(23 downto 0);
  signal c_160_159_6_False_resize: signed(23 downto 0);
  signal c_160_159_6_False_shift: signed(23 downto 0);
  signal c_160_130_0_False_resize: signed(23 downto 0);
  signal c_160_130_0_False_shift: signed(23 downto 0);
  signal c_160_sel: std_logic_vector(1 downto 0);
  signal c_161: signed(23 downto 0);
  signal c_161_159_1_False_resize: signed(23 downto 0);
  signal c_161_159_1_False_shift: signed(23 downto 0);
  signal c_161_155_0_False_resize: signed(23 downto 0);
  signal c_161_155_0_False_shift: signed(23 downto 0);
  signal c_161_126_2_False_resize: signed(23 downto 0);
  signal c_161_126_2_False_shift: signed(23 downto 0);
  signal c_161_130_1_False_resize: signed(23 downto 0);
  signal c_161_130_1_False_shift: signed(23 downto 0);
  signal c_161_sel: std_logic_vector(1 downto 0);
  signal c_162: signed(23 downto 0);
  signal c_162_54_2_False_resize: signed(23 downto 0);
  signal c_162_54_2_False_shift: signed(23 downto 0);
  signal c_162_30_0_False_resize: signed(23 downto 0);
  signal c_162_30_0_False_shift: signed(23 downto 0);
  signal c_162_30_1_False_resize: signed(23 downto 0);
  signal c_162_30_1_False_shift: signed(23 downto 0);
  signal c_162_54_0_False_resize: signed(23 downto 0);
  signal c_162_54_0_False_shift: signed(23 downto 0);
  signal c_162_sel: std_logic_vector(1 downto 0);
  signal c_163: signed(23 downto 0);
  signal c_164: signed(23 downto 0);
  signal c_165: signed(23 downto 0);
  signal c_165_147_3_False_resize: signed(23 downto 0);
  signal c_165_147_3_False_shift: signed(23 downto 0);
  signal c_165_109_0_False_resize: signed(23 downto 0);
  signal c_165_109_0_False_shift: signed(23 downto 0);
  signal c_165_164_0_False_resize: signed(23 downto 0);
  signal c_165_164_0_False_shift: signed(23 downto 0);
  signal c_165_sel: std_logic_vector(1 downto 0);
  signal c_166: signed(23 downto 0);
  signal c_166_116_2_False_resize: signed(23 downto 0);
  signal c_166_116_2_False_shift: signed(23 downto 0);
  signal c_166_120_0_False_resize: signed(23 downto 0);
  signal c_166_120_0_False_shift: signed(23 downto 0);
  signal c_166_94_1_False_resize: signed(23 downto 0);
  signal c_166_94_1_False_shift: signed(23 downto 0);
  signal c_166_62_1_False_resize: signed(23 downto 0);
  signal c_166_62_1_False_shift: signed(23 downto 0);
  signal c_166_sel: std_logic_vector(1 downto 0);
  signal c_167: signed(23 downto 0);
  signal c_167_126_0_False_resize: signed(23 downto 0);
  signal c_167_126_0_False_shift: signed(23 downto 0);
  signal c_167_109_1_False_resize: signed(23 downto 0);
  signal c_167_109_1_False_shift: signed(23 downto 0);
  signal c_167_145_0_False_resize: signed(23 downto 0);
  signal c_167_145_0_False_shift: signed(23 downto 0);
  signal c_167_sel: std_logic_vector(1 downto 0);
  signal c_168: signed(22 downto 0);
  signal c_168_52_0_False_resize: signed(22 downto 0);
  signal c_168_52_0_False_shift: signed(22 downto 0);
  signal c_168_111_3_False_resize: signed(22 downto 0);
  signal c_168_111_3_False_shift: signed(22 downto 0);
  signal c_168_72_0_False_resize: signed(22 downto 0);
  signal c_168_72_0_False_shift: signed(22 downto 0);
  signal c_168_44_1_False_resize: signed(22 downto 0);
  signal c_168_44_1_False_shift: signed(22 downto 0);
  signal c_168_sel: std_logic_vector(1 downto 0);
  signal c_169: signed(23 downto 0);
  signal c_169_resize: signed(23 downto 0);
  signal c_170: signed(23 downto 0);
  signal c_170_resize: signed(23 downto 0);
  signal c_171: signed(23 downto 0);
  signal c_172: signed(23 downto 0);
  signal c_173: signed(23 downto 0);
  signal c_174: signed(23 downto 0);
  signal c_175: signed(23 downto 0);
  signal c_176: signed(23 downto 0);
  signal c_177: signed(23 downto 0);
  signal c_177_resize: signed(23 downto 0);
  signal c_178: signed(23 downto 0);
  signal c_178_resize: signed(23 downto 0);
  signal c_179: signed(23 downto 0);
  signal c_179_resize: signed(23 downto 0);
  signal c_180: signed(23 downto 0);
  signal c_181: signed(23 downto 0);
  signal c_182: signed(23 downto 0);
  signal c_183: signed(23 downto 0);
  signal c_184: signed(23 downto 0);
  signal c_185: signed(23 downto 0);
  signal c_186: signed(23 downto 0);
  signal c_187: signed(23 downto 0);
  signal c_188: signed(23 downto 0);
  signal c_188_resize: signed(23 downto 0);
  signal c_189: signed(23 downto 0);
  signal c_189_resize: signed(23 downto 0);
  signal c_190: signed(23 downto 0);
  signal c_191: signed(23 downto 0);
  signal c_192: signed(23 downto 0);
  signal c_193: signed(23 downto 0);
  signal c_194: signed(23 downto 0);
  signal c_194_resize: signed(23 downto 0);
  signal c_195: signed(23 downto 0);
  signal c_195_resize: signed(23 downto 0);
  signal c_196: signed(22 downto 0);
  signal c_197: signed(22 downto 0);
  signal c_198: signed(22 downto 0);
  signal c_199: signed(22 downto 0);
  signal c_200: signed(22 downto 0);
  signal c_201: signed(22 downto 0);
  signal c_202: signed(22 downto 0);
  signal c_202_resize: signed(22 downto 0);
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
      config_select_20 <= config_select_19;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 169
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_169);
    end if;
  end process;
  -- output node 1 with id 170
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_170);
    end if;
  end process;
  -- output node 2 with id 177
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_177);
    end if;
  end process;
  -- output node 3 with id 178
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_178);
    end if;
  end process;
  -- output node 4 with id 179
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_179);
    end if;
  end process;
  -- output node 5 with id 188
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_188);
    end if;
  end process;
  -- output node 6 with id 189
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_189);
    end if;
  end process;
  -- output node 7 with id 194
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_194);
    end if;
  end process;
  -- output node 8 with id 195
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_195);
    end if;
  end process;
  -- output node 9 with id 202
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_202);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [2], [1], [2]]
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [1], [4], [1]]
  c_2_0_0_False_resize <= resize(c_0, 18);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_2_False_resize <= resize(c_0, 18);
  c_2_0_2_False_shift <= shift_left(c_2_0_2_False_resize, 2);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "0" when "11",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[17], [33], [12], [33]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 18,
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
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[16], [33], [24], [32]]
  c_6_5_4_False_resize <= resize(c_5, 22);
  c_6_5_4_False_shift <= shift_left(c_6_5_4_False_resize, 4);
  c_6_3_1_False_resize <= c_3;
  c_6_3_1_False_shift <= shift_left(c_6_3_1_False_resize, 1);
  c_6_3_0_False_resize <= c_3;
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  c_6_5_5_False_resize <= resize(c_5, 22);
  c_6_5_5_False_shift <= shift_left(c_6_5_5_False_resize, 5);
  with config_select_3 select c_6_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_5_4_False_shift;
        when "01" => c_6 <= c_6_3_1_False_shift;
        when "10" => c_6 <= c_6_3_0_False_shift;
        when others => c_6 <= c_6_5_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[1], [64], [1], [264]]
  c_7_5_0_False_resize <= resize(c_5, 25);
  c_7_5_0_False_shift <= shift_left(c_7_5_0_False_resize, 0);
  c_7_5_6_False_resize <= resize(c_5, 25);
  c_7_5_6_False_shift <= shift_left(c_7_5_6_False_resize, 6);
  c_7_3_3_False_resize <= resize(c_3, 25);
  c_7_3_3_False_shift <= shift_left(c_7_3_3_False_resize, 3);
  with config_select_3 select c_7_sel <= 
    "00" when "00",
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_5_0_False_shift;
        when "01" => c_7 <= c_7_5_6_False_shift;
        when others => c_7 <= c_7_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 8 and associated fundamentals [[127], [200], [191], [-8]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 25,
      w_o => 24,
      s_x_i => 3,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[68], [1], [48], [1]]
  c_9_3_2_False_resize <= resize(c_3, 23);
  c_9_3_2_False_shift <= shift_left(c_9_3_2_False_resize, 2);
  c_9_5_0_False_resize <= resize(c_5, 23);
  c_9_5_0_False_shift <= shift_left(c_9_5_0_False_resize, 0);
  with config_select_3 select c_9_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_3_2_False_shift;
        when others => c_9 <= c_9_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 10 and associated fundamentals [[68], [1], [48], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 11 and associated fundamentals [[59], [199], [143], [-7]]
  with config_select_5 select c_11_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
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
      sub_i => c_11_sub_sel,
      x_i => c_8,
      y_i => c_10,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(23 downto 0);
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
  -- node of type 'register' in stage 5 with id 14 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 15 and associated fundamentals [[236], [8], [1], [1]]
  c_15_14_0_False_resize <= resize(c_14, 24);
  c_15_14_0_False_shift <= shift_left(c_15_14_0_False_resize, 0);
  c_15_14_3_False_resize <= resize(c_14, 24);
  c_15_14_3_False_shift <= shift_left(c_15_14_3_False_resize, 3);
  c_15_11_2_False_resize <= c_11;
  c_15_11_2_False_shift <= shift_left(c_15_11_2_False_resize, 2);
  with config_select_6 select c_15_sel <= 
    "00" when "10",
    "00" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "00" => c_15 <= c_15_14_0_False_shift;
        when "01" => c_15 <= c_15_14_3_False_shift;
        when others => c_15 <= c_15_11_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 16 and associated fundamentals [[127], [32], [32], [4]]
  c_16_13_5_False_resize <= resize(c_13, 23);
  c_16_13_5_False_shift <= shift_left(c_16_13_5_False_resize, 5);
  c_16_13_2_False_resize <= resize(c_13, 23);
  c_16_13_2_False_shift <= shift_left(c_16_13_2_False_resize, 2);
  c_16_8_0_False_resize <= c_8(22 downto 0);
  c_16_8_0_False_shift <= shift_left(c_16_8_0_False_resize, 0);
  with config_select_5 select c_16_sel <= 
    "00" when "10",
    "00" when "01",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_13_5_False_shift;
        when "01" => c_16 <= c_16_13_2_False_shift;
        when others => c_16 <= c_16_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 17 and associated fundamentals [[127], [32], [32], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 18 and associated fundamentals [[109], [40], [33], [5]]
  with config_select_7 select c_18_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_18_sub_sel,
      x_i => c_15,
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 19 and associated fundamentals [[17], [33], [12], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 20 and associated fundamentals [[17], [33], [12], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[17], [33], [12], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 22 and associated fundamentals [[17], [33], [12], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 23 and associated fundamentals [[17], [33], [12], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 24 and associated fundamentals [[59], [199], [143], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 25 and associated fundamentals [[59], [199], [143], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 26 and associated fundamentals [[109], [80], [143], [66]]
  c_26_18_0_False_resize <= resize(c_18, 24);
  c_26_18_0_False_shift <= shift_left(c_26_18_0_False_resize, 0);
  c_26_18_1_False_resize <= resize(c_18, 24);
  c_26_18_1_False_shift <= shift_left(c_26_18_1_False_resize, 1);
  c_26_25_0_False_resize <= c_25;
  c_26_25_0_False_shift <= shift_left(c_26_25_0_False_resize, 0);
  c_26_23_1_False_resize <= resize(c_23, 24);
  c_26_23_1_False_shift <= shift_left(c_26_23_1_False_resize, 1);
  with config_select_8 select c_26_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "00" => c_26 <= c_26_18_0_False_shift;
        when "01" => c_26 <= c_26_18_1_False_shift;
        when "10" => c_26 <= c_26_25_0_False_shift;
        when others => c_26 <= c_26_23_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 28 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 29 and associated fundamentals [[32], [33], [66], [32]]
  c_29_23_0_False_resize <= resize(c_23, 23);
  c_29_23_0_False_shift <= shift_left(c_29_23_0_False_resize, 0);
  c_29_28_5_False_resize <= resize(c_28, 23);
  c_29_28_5_False_shift <= shift_left(c_29_28_5_False_resize, 5);
  c_29_18_1_False_resize <= c_18;
  c_29_18_1_False_shift <= shift_left(c_29_18_1_False_resize, 1);
  with config_select_8 select c_29_sel <= 
    "00" when "01",
    "01" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "00" => c_29 <= c_29_23_0_False_shift;
        when "01" => c_29 <= c_29_28_5_False_shift;
        when others => c_29 <= c_29_18_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 30 and associated fundamentals [[77], [47], [77], [98]]
  with config_select_9 select c_30_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_30_sub_sel,
      x_i => c_26,
      y_i => c_29,
      z_o => c_30_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_30_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 31 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 32 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 33 and associated fundamentals [[17], [33], [12], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 34 and associated fundamentals [[17], [33], [12], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 35 and associated fundamentals [[77], [2], [8], [33]]
  c_35_34_0_False_resize <= resize(c_34, 23);
  c_35_34_0_False_shift <= shift_left(c_35_34_0_False_resize, 0);
  c_35_32_1_False_resize <= resize(c_32, 23);
  c_35_32_1_False_shift <= shift_left(c_35_32_1_False_resize, 1);
  c_35_30_0_False_resize <= c_30;
  c_35_30_0_False_shift <= shift_left(c_35_30_0_False_resize, 0);
  c_35_32_3_False_resize <= resize(c_32, 23);
  c_35_32_3_False_shift <= shift_left(c_35_32_3_False_resize, 3);
  with config_select_10 select c_35_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "00" => c_35 <= c_35_34_0_False_shift;
        when "01" => c_35 <= c_35_32_1_False_shift;
        when "10" => c_35 <= c_35_30_0_False_shift;
        when others => c_35 <= c_35_32_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 36 and associated fundamentals [[17], [33], [1], [4]]
  c_36_3_0_False_resize <= c_3;
  c_36_3_0_False_shift <= shift_left(c_36_3_0_False_resize, 0);
  c_36_5_2_False_resize <= resize(c_5, 22);
  c_36_5_2_False_shift <= shift_left(c_36_5_2_False_resize, 2);
  c_36_5_0_False_resize <= resize(c_5, 22);
  c_36_5_0_False_shift <= shift_left(c_36_5_0_False_resize, 0);
  with config_select_3 select c_36_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "00" => c_36 <= c_36_3_0_False_shift;
        when "01" => c_36 <= c_36_5_2_False_shift;
        when others => c_36 <= c_36_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 37 and associated fundamentals [[17], [33], [1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 38 and associated fundamentals [[17], [33], [1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 39 and associated fundamentals [[17], [33], [1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 40 and associated fundamentals [[17], [33], [1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 41 and associated fundamentals [[17], [33], [1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 42 and associated fundamentals [[17], [33], [1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 43 and associated fundamentals [[17], [33], [1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 11 with id 44 and associated fundamentals [[171], [37], [17], [62]]
  with config_select_11 select c_44_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_44: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
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
      sub_i => c_44_sub_sel,
      x_i => c_35,
      y_i => c_43,
      z_o => c_44_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_44_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 45 and associated fundamentals [[127], [200], [191], [-8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 46 and associated fundamentals [[127], [200], [191], [-8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 47 and associated fundamentals [[127], [200], [191], [-8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 48 and associated fundamentals [[109], [40], [382], [5]]
  c_48_18_0_False_resize <= resize(c_18, 25);
  c_48_18_0_False_shift <= shift_left(c_48_18_0_False_resize, 0);
  c_48_47_1_False_resize <= resize(c_47, 25);
  c_48_47_1_False_shift <= shift_left(c_48_47_1_False_resize, 1);
  with config_select_8 select c_48_sel <= 
    "0" when "00",
    "0" when "11",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "0" => c_48 <= c_48_18_0_False_shift;
        when others => c_48 <= c_48_47_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 49 and associated fundamentals [[59], [199], [143], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 50 and associated fundamentals [[59], [199], [143], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 51 and associated fundamentals [[59], [199], [143], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 52 and associated fundamentals [[59], [199], [143], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 53 and associated fundamentals [[109], [40], [33], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 54 and associated fundamentals [[109], [40], [33], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 55 and associated fundamentals [[109], [40], [33], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 56 and associated fundamentals [[109], [40], [33], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 57 and associated fundamentals [[59], [37], [143], [80]]
  c_57_52_0_False_resize <= c_52;
  c_57_52_0_False_shift <= shift_left(c_57_52_0_False_resize, 0);
  c_57_44_0_False_resize <= c_44;
  c_57_44_0_False_shift <= shift_left(c_57_44_0_False_resize, 0);
  c_57_56_4_False_resize <= resize(c_56, 24);
  c_57_56_4_False_shift <= shift_left(c_57_56_4_False_resize, 4);
  with config_select_12 select c_57_sel <= 
    "00" when "00",
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_57_sel is
        when "00" => c_57 <= c_57_52_0_False_shift;
        when "01" => c_57 <= c_57_44_0_False_shift;
        when others => c_57 <= c_57_56_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 58 and associated fundamentals [[109], [40], [382], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 59 and associated fundamentals [[109], [40], [382], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 60 and associated fundamentals [[109], [40], [382], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 61 and associated fundamentals [[109], [40], [382], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 13 with id 62 and associated fundamentals [[50], [3], [525], [85]]
  with config_select_13 select c_62_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_62: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_62_sub_sel,
      x_i => c_61,
      y_i => c_57,
      z_o => c_62_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_62_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 63 and associated fundamentals [[77], [47], [77], [-7]]
  c_63_30_0_False_resize <= c_30;
  c_63_30_0_False_shift <= shift_left(c_63_30_0_False_resize, 0);
  c_63_50_0_False_resize <= c_50(22 downto 0);
  c_63_50_0_False_shift <= shift_left(c_63_50_0_False_resize, 0);
  with config_select_10 select c_63_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_63_sel is
        when "0" => c_63 <= c_63_30_0_False_shift;
        when others => c_63 <= c_63_50_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 64 and associated fundamentals [[34], [33], [12], [33]]
  c_64_3_0_False_resize <= c_3;
  c_64_3_0_False_shift <= shift_left(c_64_3_0_False_resize, 0);
  c_64_3_1_False_resize <= c_3;
  c_64_3_1_False_shift <= shift_left(c_64_3_1_False_resize, 1);
  with config_select_3 select c_64_sel <= 
    "0" when "11",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_64_sel is
        when "0" => c_64 <= c_64_3_0_False_shift;
        when others => c_64 <= c_64_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 65 and associated fundamentals [[34], [33], [12], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 66 and associated fundamentals [[34], [33], [12], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 67 and associated fundamentals [[34], [33], [12], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 68 and associated fundamentals [[34], [33], [12], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 69 and associated fundamentals [[34], [33], [12], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 70 and associated fundamentals [[34], [33], [12], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 71 and associated fundamentals [[34], [33], [12], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'add' in stage 11 with id 72 and associated fundamentals [[145], [113], [101], [59]]
  inst_adder_node_72: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
      w_o => 24,
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
      x_i => c_63,
      y_i => c_71,
      z_o => c_72_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_72_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 14 with id 73 and associated fundamentals [[50], [6], [525], [170]]
  c_73_62_0_False_resize <= c_62;
  c_73_62_0_False_shift <= shift_left(c_73_62_0_False_resize, 0);
  c_73_62_1_False_resize <= c_62;
  c_73_62_1_False_shift <= shift_left(c_73_62_1_False_resize, 1);
  with config_select_14 select c_73_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_73_sel is
        when "0" => c_73 <= c_73_62_0_False_shift;
        when others => c_73 <= c_73_62_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 74 and associated fundamentals [[17], [33], [512], [33]]
  c_74_3_0_False_resize <= resize(c_3, 25);
  c_74_3_0_False_shift <= shift_left(c_74_3_0_False_resize, 0);
  c_74_5_9_False_resize <= resize(c_5, 25);
  c_74_5_9_False_shift <= shift_left(c_74_5_9_False_resize, 9);
  with config_select_3 select c_74_sel <= 
    "0" when "11",
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_74_sel is
        when "0" => c_74 <= c_74_3_0_False_shift;
        when others => c_74 <= c_74_5_9_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 75 and associated fundamentals [[17], [33], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 76 and associated fundamentals [[17], [33], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 77 and associated fundamentals [[17], [33], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 78 and associated fundamentals [[17], [33], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 79 and associated fundamentals [[17], [33], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 80 and associated fundamentals [[17], [33], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 81 and associated fundamentals [[17], [33], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_80 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 82 and associated fundamentals [[17], [33], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_81 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 83 and associated fundamentals [[17], [33], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_82 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 84 and associated fundamentals [[17], [33], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_83 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 85 and associated fundamentals [[17], [33], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_84 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 15 with id 86 and associated fundamentals [[67], [39], [13], [137]]
  with config_select_15 select c_86_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_86: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_86_sub_sel,
      x_i => c_73,
      y_i => c_85,
      z_o => c_86_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_86_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 87 and associated fundamentals [[77], [47], [77], [98]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 88 and associated fundamentals [[77], [47], [77], [98]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_87 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 89 and associated fundamentals [[77], [47], [77], [98]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_88 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 90 and associated fundamentals [[77], [47], [77], [98]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_89 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 91 and associated fundamentals [[77], [47], [77], [98]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_90 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 92 and associated fundamentals [[77], [47], [77], [98]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 93 and associated fundamentals [[145], [113], [101], [59]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_72 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 94 and associated fundamentals [[145], [113], [101], [59]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_93 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 95 and associated fundamentals [[145], [113], [101], [59]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_94 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 96 and associated fundamentals [[145], [113], [101], [59]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_95 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 16 with id 97 and associated fundamentals [[77], [113], [26], [98]]
  c_97_92_0_False_resize <= c_92;
  c_97_92_0_False_shift <= shift_left(c_97_92_0_False_resize, 0);
  c_97_86_1_False_resize <= c_86(22 downto 0);
  c_97_86_1_False_shift <= shift_left(c_97_86_1_False_resize, 1);
  c_97_96_0_False_resize <= c_96(22 downto 0);
  c_97_96_0_False_shift <= shift_left(c_97_96_0_False_resize, 0);
  with config_select_16 select c_97_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_97_sel is
        when "00" => c_97 <= c_97_92_0_False_shift;
        when "01" => c_97 <= c_97_86_1_False_shift;
        when others => c_97 <= c_97_96_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 98 and associated fundamentals [[59], [1], [1], [-7]]
  c_98_14_0_False_resize <= resize(c_14, 22);
  c_98_14_0_False_shift <= shift_left(c_98_14_0_False_resize, 0);
  c_98_11_0_False_resize <= c_11(21 downto 0);
  c_98_11_0_False_shift <= shift_left(c_98_11_0_False_resize, 0);
  with config_select_6 select c_98_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_98_sel is
        when "0" => c_98 <= c_98_14_0_False_shift;
        when others => c_98 <= c_98_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 99 and associated fundamentals [[59], [1], [1], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_98 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 100 and associated fundamentals [[59], [1], [1], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_99 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 101 and associated fundamentals [[59], [1], [1], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_100 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 102 and associated fundamentals [[59], [1], [1], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_101 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 103 and associated fundamentals [[59], [1], [1], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_102 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 104 and associated fundamentals [[59], [1], [1], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_103 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 105 and associated fundamentals [[59], [1], [1], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_104 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 106 and associated fundamentals [[59], [1], [1], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_105 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 107 and associated fundamentals [[59], [1], [1], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_106 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 108 and associated fundamentals [[59], [1], [1], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_108 <= c_107 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 17 with id 109 and associated fundamentals [[95], [225], [53], [189]]
  with config_select_17 select c_109_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_109: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
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
      sub_i => c_109_sub_sel,
      x_i => c_97,
      y_i => c_108,
      z_o => c_109_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_109 <= c_109_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 110 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_110 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 111 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_110 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 112 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_111 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 113 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_112 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 14 with id 114 and associated fundamentals [[200], [128], [128], [85]]
  c_114_62_2_False_resize <= c_62(23 downto 0);
  c_114_62_2_False_shift <= shift_left(c_114_62_2_False_resize, 2);
  c_114_113_7_False_resize <= resize(c_113, 24);
  c_114_113_7_False_shift <= shift_left(c_114_113_7_False_resize, 7);
  c_114_62_0_False_resize <= c_62(23 downto 0);
  c_114_62_0_False_shift <= shift_left(c_114_62_0_False_resize, 0);
  with config_select_14 select c_114_sel <= 
    "00" when "00",
    "01" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_114_sel is
        when "00" => c_114 <= c_114_62_2_False_shift;
        when "01" => c_114 <= c_114_113_7_False_shift;
        when others => c_114 <= c_114_62_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 115 and associated fundamentals [[109], [40], [33], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 116 and associated fundamentals [[109], [40], [33], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_116 <= c_115 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 117 and associated fundamentals [[109], [40], [33], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_117 <= c_116 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 118 and associated fundamentals [[109], [40], [33], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_118 <= c_117 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 119 and associated fundamentals [[171], [37], [17], [62]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_119 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 120 and associated fundamentals [[171], [37], [17], [62]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_120 <= c_119 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 121 and associated fundamentals [[171], [37], [17], [62]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_121 <= c_120 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 122 and associated fundamentals [[171], [37], [17], [62]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_122 <= c_121 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 16 with id 123 and associated fundamentals [[109], [74], [13], [160]]
  c_123_86_0_False_resize <= c_86;
  c_123_86_0_False_shift <= shift_left(c_123_86_0_False_resize, 0);
  c_123_122_1_False_resize <= c_122;
  c_123_122_1_False_shift <= shift_left(c_123_122_1_False_resize, 1);
  c_123_118_5_False_resize <= resize(c_118, 24);
  c_123_118_5_False_shift <= shift_left(c_123_118_5_False_resize, 5);
  c_123_118_0_False_resize <= resize(c_118, 24);
  c_123_118_0_False_shift <= shift_left(c_123_118_0_False_resize, 0);
  with config_select_16 select c_123_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_123_sel is
        when "00" => c_123 <= c_123_86_0_False_shift;
        when "01" => c_123 <= c_123_122_1_False_shift;
        when "10" => c_123 <= c_123_118_5_False_shift;
        when others => c_123 <= c_123_118_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 124 and associated fundamentals [[200], [128], [128], [85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_124 <= c_114 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 125 and associated fundamentals [[200], [128], [128], [85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_125 <= c_124 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 17 with id 126 and associated fundamentals [[91], [54], [115], [245]]
  with config_select_17 select c_126_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_126: entity work.adder_node
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
      sub_i => c_126_sub_sel,
      x_i => c_125,
      y_i => c_123,
      z_o => c_126_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_126 <= c_126_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 127 and associated fundamentals [[77], [47], [77], [98]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_127 <= c_92 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 128 and associated fundamentals [[77], [47], [77], [98]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_128 <= c_127 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 129 and associated fundamentals [[67], [39], [13], [137]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_129 <= c_86 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 130 and associated fundamentals [[67], [39], [13], [137]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_130 <= c_129 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 18 with id 131 and associated fundamentals [[91], [78], [26], [196]]
  c_131_128_1_False_resize <= resize(c_128, 24);
  c_131_128_1_False_shift <= shift_left(c_131_128_1_False_resize, 1);
  c_131_130_1_False_resize <= c_130;
  c_131_130_1_False_shift <= shift_left(c_131_130_1_False_resize, 1);
  c_131_126_0_False_resize <= c_126;
  c_131_126_0_False_shift <= shift_left(c_131_126_0_False_resize, 0);
  with config_select_18 select c_131_sel <= 
    "00" when "11",
    "01" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_131_sel is
        when "00" => c_131 <= c_131_128_1_False_shift;
        when "01" => c_131 <= c_131_130_1_False_shift;
        when others => c_131 <= c_131_126_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 132 and associated fundamentals [[17], [33], [12], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_132 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 133 and associated fundamentals [[17], [33], [12], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_133 <= c_132 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 134 and associated fundamentals [[17], [33], [12], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_134 <= c_133 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 135 and associated fundamentals [[17], [33], [12], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_135 <= c_134 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 136 and associated fundamentals [[17], [33], [12], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_136 <= c_135 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 137 and associated fundamentals [[17], [33], [12], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_137 <= c_136 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 138 and associated fundamentals [[17], [33], [12], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_138 <= c_137 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 139 and associated fundamentals [[17], [33], [12], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_139 <= c_138 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 140 and associated fundamentals [[59], [199], [143], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_140 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 141 and associated fundamentals [[59], [199], [143], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_141 <= c_140 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 142 and associated fundamentals [[59], [199], [143], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_142 <= c_141 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 143 and associated fundamentals [[59], [199], [143], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_143 <= c_142 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 144 and associated fundamentals [[59], [199], [143], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_144 <= c_143 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 145 and associated fundamentals [[59], [199], [143], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_145 <= c_144 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 146 and associated fundamentals [[171], [37], [17], [62]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_146 <= c_122 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 147 and associated fundamentals [[171], [37], [17], [62]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_147 <= c_146 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 18 with id 148 and associated fundamentals [[171], [108], [143], [66]]
  c_148_139_1_False_resize <= resize(c_139, 24);
  c_148_139_1_False_shift <= shift_left(c_148_139_1_False_resize, 1);
  c_148_126_1_False_resize <= c_126;
  c_148_126_1_False_shift <= shift_left(c_148_126_1_False_resize, 1);
  c_148_145_0_False_resize <= c_145;
  c_148_145_0_False_shift <= shift_left(c_148_145_0_False_resize, 0);
  c_148_147_0_False_resize <= c_147;
  c_148_147_0_False_shift <= shift_left(c_148_147_0_False_resize, 0);
  with config_select_18 select c_148_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_148_sel is
        when "00" => c_148 <= c_148_139_1_False_shift;
        when "01" => c_148 <= c_148_126_1_False_shift;
        when "10" => c_148 <= c_148_145_0_False_shift;
        when others => c_148 <= c_148_147_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 149 and associated fundamentals [[127], [200], [191], [-8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_149 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 150 and associated fundamentals [[127], [200], [191], [-8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_150 <= c_149 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 151 and associated fundamentals [[127], [200], [191], [-8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_151 <= c_150 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 152 and associated fundamentals [[127], [200], [191], [-8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_152 <= c_151 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 153 and associated fundamentals [[254], [200], [191], [118]]
  c_153_152_1_False_resize <= c_152;
  c_153_152_1_False_shift <= shift_left(c_153_152_1_False_resize, 1);
  c_153_152_0_False_resize <= c_152;
  c_153_152_0_False_shift <= shift_left(c_153_152_0_False_resize, 0);
  c_153_72_1_False_resize <= c_72;
  c_153_72_1_False_shift <= shift_left(c_153_72_1_False_resize, 1);
  with config_select_12 select c_153_sel <= 
    "00" when "00",
    "01" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_153_sel is
        when "00" => c_153 <= c_153_152_1_False_shift;
        when "01" => c_153 <= c_153_152_0_False_shift;
        when others => c_153 <= c_153_72_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 154 and associated fundamentals [[109], [40], [33], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_154 <= c_118 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 155 and associated fundamentals [[109], [40], [33], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_155 <= c_154 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 156 and associated fundamentals [[50], [3], [525], [85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_156 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 157 and associated fundamentals [[50], [3], [525], [85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_157 <= c_156 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 158 and associated fundamentals [[50], [3], [525], [85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_158 <= c_157 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 159 and associated fundamentals [[50], [3], [525], [85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_159 <= c_158 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 18 with id 160 and associated fundamentals [[218], [192], [212], [137]]
  c_160_155_1_False_resize <= resize(c_155, 24);
  c_160_155_1_False_shift <= shift_left(c_160_155_1_False_resize, 1);
  c_160_109_2_False_resize <= c_109;
  c_160_109_2_False_shift <= shift_left(c_160_109_2_False_resize, 2);
  c_160_159_6_False_resize <= c_159(23 downto 0);
  c_160_159_6_False_shift <= shift_left(c_160_159_6_False_resize, 6);
  c_160_130_0_False_resize <= c_130;
  c_160_130_0_False_shift <= shift_left(c_160_130_0_False_resize, 0);
  with config_select_18 select c_160_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_160_sel is
        when "00" => c_160 <= c_160_155_1_False_shift;
        when "01" => c_160 <= c_160_109_2_False_shift;
        when "10" => c_160 <= c_160_159_6_False_shift;
        when others => c_160 <= c_160_130_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 18 with id 161 and associated fundamentals [[134], [216], [33], [170]]
  c_161_159_1_False_resize <= c_159(23 downto 0);
  c_161_159_1_False_shift <= shift_left(c_161_159_1_False_resize, 1);
  c_161_155_0_False_resize <= resize(c_155, 24);
  c_161_155_0_False_shift <= shift_left(c_161_155_0_False_resize, 0);
  c_161_126_2_False_resize <= c_126;
  c_161_126_2_False_shift <= shift_left(c_161_126_2_False_resize, 2);
  c_161_130_1_False_resize <= c_130;
  c_161_130_1_False_shift <= shift_left(c_161_130_1_False_resize, 1);
  with config_select_18 select c_161_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_161_sel is
        when "00" => c_161 <= c_161_159_1_False_shift;
        when "01" => c_161 <= c_161_155_0_False_shift;
        when "10" => c_161 <= c_161_126_2_False_shift;
        when others => c_161 <= c_161_130_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 162 and associated fundamentals [[77], [160], [154], [5]]
  c_162_54_2_False_resize <= resize(c_54, 24);
  c_162_54_2_False_shift <= shift_left(c_162_54_2_False_resize, 2);
  c_162_30_0_False_resize <= resize(c_30, 24);
  c_162_30_0_False_shift <= shift_left(c_162_30_0_False_resize, 0);
  c_162_30_1_False_resize <= resize(c_30, 24);
  c_162_30_1_False_shift <= shift_left(c_162_30_1_False_resize, 1);
  c_162_54_0_False_resize <= resize(c_54, 24);
  c_162_54_0_False_shift <= shift_left(c_162_54_0_False_resize, 0);
  with config_select_10 select c_162_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_162_sel is
        when "00" => c_162 <= c_162_54_2_False_shift;
        when "01" => c_162 <= c_162_30_0_False_shift;
        when "10" => c_162 <= c_162_30_1_False_shift;
        when others => c_162 <= c_162_54_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 163 and associated fundamentals [[145], [113], [101], [59]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_163 <= c_96 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 164 and associated fundamentals [[145], [113], [101], [59]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_164 <= c_163 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 18 with id 165 and associated fundamentals [[145], [225], [136], [189]]
  c_165_147_3_False_resize <= c_147;
  c_165_147_3_False_shift <= shift_left(c_165_147_3_False_resize, 3);
  c_165_109_0_False_resize <= c_109;
  c_165_109_0_False_shift <= shift_left(c_165_109_0_False_resize, 0);
  c_165_164_0_False_resize <= c_164;
  c_165_164_0_False_shift <= shift_left(c_165_164_0_False_resize, 0);
  with config_select_18 select c_165_sel <= 
    "00" when "10",
    "01" when "01",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_165_sel is
        when "00" => c_165 <= c_165_147_3_False_shift;
        when "01" => c_165 <= c_165_109_0_False_shift;
        when others => c_165 <= c_165_164_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 14 with id 166 and associated fundamentals [[100], [37], [202], [20]]
  c_166_116_2_False_resize <= resize(c_116, 24);
  c_166_116_2_False_shift <= shift_left(c_166_116_2_False_resize, 2);
  c_166_120_0_False_resize <= c_120;
  c_166_120_0_False_shift <= shift_left(c_166_120_0_False_resize, 0);
  c_166_94_1_False_resize <= c_94;
  c_166_94_1_False_shift <= shift_left(c_166_94_1_False_resize, 1);
  c_166_62_1_False_resize <= c_62(23 downto 0);
  c_166_62_1_False_shift <= shift_left(c_166_62_1_False_resize, 1);
  with config_select_14 select c_166_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_166_sel is
        when "00" => c_166 <= c_166_116_2_False_shift;
        when "01" => c_166 <= c_166_120_0_False_shift;
        when "10" => c_166 <= c_166_94_1_False_shift;
        when others => c_166 <= c_166_62_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 18 with id 167 and associated fundamentals [[190], [199], [115], [245]]
  c_167_126_0_False_resize <= c_126;
  c_167_126_0_False_shift <= shift_left(c_167_126_0_False_resize, 0);
  c_167_109_1_False_resize <= c_109;
  c_167_109_1_False_shift <= shift_left(c_167_109_1_False_resize, 1);
  c_167_145_0_False_resize <= c_145;
  c_167_145_0_False_shift <= shift_left(c_167_145_0_False_resize, 0);
  with config_select_18 select c_167_sel <= 
    "00" when "11",
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_167_sel is
        when "00" => c_167 <= c_167_126_0_False_shift;
        when "01" => c_167 <= c_167_109_1_False_shift;
        when others => c_167 <= c_167_145_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 168 and associated fundamentals [[59], [113], [8], [124]]
  c_168_52_0_False_resize <= c_52(22 downto 0);
  c_168_52_0_False_shift <= shift_left(c_168_52_0_False_resize, 0);
  c_168_111_3_False_resize <= resize(c_111, 23);
  c_168_111_3_False_shift <= shift_left(c_168_111_3_False_resize, 3);
  c_168_72_0_False_resize <= c_72(22 downto 0);
  c_168_72_0_False_shift <= shift_left(c_168_72_0_False_resize, 0);
  c_168_44_1_False_resize <= c_44(22 downto 0);
  c_168_44_1_False_shift <= shift_left(c_168_44_1_False_resize, 1);
  with config_select_12 select c_168_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_168_sel is
        when "00" => c_168 <= c_168_52_0_False_shift;
        when "01" => c_168 <= c_168_111_3_False_shift;
        when "10" => c_168 <= c_168_72_0_False_shift;
        when others => c_168 <= c_168_44_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 18 with id 169 and associated fundamentals [[91], [78], [26], [196]]
  c_169_resize <= c_131;
  c_169 <= shift_left(c_169_resize, 0);
  -- node of type 'output' in stage 18 with id 170 and associated fundamentals [[171], [108], [143], [66]]
  c_170_resize <= c_148;
  c_170 <= shift_left(c_170_resize, 0);
  -- node of type 'register' in stage 13 with id 171 and associated fundamentals [[254], [200], [191], [118]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_171 <= c_153 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 172 and associated fundamentals [[254], [200], [191], [118]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_172 <= c_171 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 173 and associated fundamentals [[254], [200], [191], [118]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_173 <= c_172 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 174 and associated fundamentals [[254], [200], [191], [118]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_174 <= c_173 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 175 and associated fundamentals [[254], [200], [191], [118]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_175 <= c_174 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 176 and associated fundamentals [[254], [200], [191], [118]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_176 <= c_175 & "";
    end if;
  end process;
  -- node of type 'output' in stage 18 with id 177 and associated fundamentals [[254], [200], [191], [118]]
  c_177_resize <= c_176;
  c_177 <= shift_left(c_177_resize, 0);
  -- node of type 'output' in stage 18 with id 178 and associated fundamentals [[218], [192], [212], [137]]
  c_178_resize <= c_160;
  c_178 <= shift_left(c_178_resize, 0);
  -- node of type 'output' in stage 18 with id 179 and associated fundamentals [[134], [216], [33], [170]]
  c_179_resize <= c_161;
  c_179 <= shift_left(c_179_resize, 0);
  -- node of type 'register' in stage 11 with id 180 and associated fundamentals [[77], [160], [154], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_180 <= c_162 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 181 and associated fundamentals [[77], [160], [154], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_181 <= c_180 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 182 and associated fundamentals [[77], [160], [154], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_182 <= c_181 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 183 and associated fundamentals [[77], [160], [154], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_183 <= c_182 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 184 and associated fundamentals [[77], [160], [154], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_184 <= c_183 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 185 and associated fundamentals [[77], [160], [154], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_185 <= c_184 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 186 and associated fundamentals [[77], [160], [154], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_186 <= c_185 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 187 and associated fundamentals [[77], [160], [154], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_187 <= c_186 & "";
    end if;
  end process;
  -- node of type 'output' in stage 18 with id 188 and associated fundamentals [[77], [160], [154], [5]]
  c_188_resize <= c_187;
  c_188 <= shift_left(c_188_resize, 0);
  -- node of type 'output' in stage 18 with id 189 and associated fundamentals [[145], [225], [136], [189]]
  c_189_resize <= c_165;
  c_189 <= shift_left(c_189_resize, 0);
  -- node of type 'register' in stage 15 with id 190 and associated fundamentals [[100], [37], [202], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_190 <= c_166 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 191 and associated fundamentals [[100], [37], [202], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_191 <= c_190 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 192 and associated fundamentals [[100], [37], [202], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_192 <= c_191 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 193 and associated fundamentals [[100], [37], [202], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_193 <= c_192 & "";
    end if;
  end process;
  -- node of type 'output' in stage 18 with id 194 and associated fundamentals [[100], [37], [202], [20]]
  c_194_resize <= c_193;
  c_194 <= shift_left(c_194_resize, 0);
  -- node of type 'output' in stage 18 with id 195 and associated fundamentals [[190], [199], [115], [245]]
  c_195_resize <= c_167;
  c_195 <= shift_left(c_195_resize, 0);
  -- node of type 'register' in stage 13 with id 196 and associated fundamentals [[59], [113], [8], [124]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_196 <= c_168 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 197 and associated fundamentals [[59], [113], [8], [124]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_197 <= c_196 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 198 and associated fundamentals [[59], [113], [8], [124]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_198 <= c_197 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 199 and associated fundamentals [[59], [113], [8], [124]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_199 <= c_198 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 200 and associated fundamentals [[59], [113], [8], [124]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_200 <= c_199 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 201 and associated fundamentals [[59], [113], [8], [124]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_201 <= c_200 & "";
    end if;
  end process;
  -- node of type 'output' in stage 18 with id 202 and associated fundamentals [[59], [113], [8], [124]]
  c_202_resize <= c_201;
  c_202 <= shift_left(c_202_resize, 0);
end architecture;
