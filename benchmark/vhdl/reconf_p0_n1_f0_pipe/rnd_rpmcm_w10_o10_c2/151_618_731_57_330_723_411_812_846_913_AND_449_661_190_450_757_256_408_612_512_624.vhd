library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(24 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(25 downto 0);
    y_3: out std_logic_vector(24 downto 0);
    y_4: out std_logic_vector(25 downto 0);
    y_5: out std_logic_vector(25 downto 0);
    y_6: out std_logic_vector(24 downto 0);
    y_7: out std_logic_vector(25 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(20 downto 0);
  signal c_1_0_0_False_resize: signed(20 downto 0);
  signal c_1_0_0_False_shift: signed(20 downto 0);
  signal c_1_0_5_False_resize: signed(20 downto 0);
  signal c_1_0_5_False_shift: signed(20 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(22 downto 0);
  signal c_3_i0_resize: signed(22 downto 0);
  signal c_3_i1_resize: signed(22 downto 0);
  signal c_3_i0_shift: signed(22 downto 0);
  signal c_3_i1_shift: signed(22 downto 0);
  signal c_3_arith: signed(22 downto 0);
  signal c_3_oshift: signed(22 downto 0);
  signal c_4: signed(17 downto 0);
  signal c_4_0_0_False_resize: signed(17 downto 0);
  signal c_4_0_0_False_shift: signed(17 downto 0);
  signal c_4_0_2_False_resize: signed(17 downto 0);
  signal c_4_0_2_False_shift: signed(17 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(17 downto 0);
  signal c_6: signed(21 downto 0);
  signal c_6_i0_resize: signed(21 downto 0);
  signal c_6_i1_resize: signed(21 downto 0);
  signal c_6_i0_shift: signed(21 downto 0);
  signal c_6_i1_shift: signed(21 downto 0);
  signal c_6_arith: signed(21 downto 0);
  signal c_6_oshift: signed(21 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(15 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_8_3_6_False_resize: signed(23 downto 0);
  signal c_8_3_6_False_shift: signed(23 downto 0);
  signal c_8_7_0_False_resize: signed(23 downto 0);
  signal c_8_7_0_False_shift: signed(23 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(15 downto 0);
  signal c_10: signed(24 downto 0);
  signal c_10_9_0_False_resize: signed(24 downto 0);
  signal c_10_9_0_False_shift: signed(24 downto 0);
  signal c_10_6_3_False_resize: signed(24 downto 0);
  signal c_10_6_3_False_shift: signed(24 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_12: signed(25 downto 0);
  signal c_12_i0_resize: signed(25 downto 0);
  signal c_12_i1_resize: signed(25 downto 0);
  signal c_12_i0_shift: signed(25 downto 0);
  signal c_12_i1_shift: signed(25 downto 0);
  signal c_12_arith: signed(25 downto 0);
  signal c_12_oshift: signed(25 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(22 downto 0);
  signal c_13_7_2_False_resize: signed(22 downto 0);
  signal c_13_7_2_False_shift: signed(22 downto 0);
  signal c_13_3_0_False_resize: signed(22 downto 0);
  signal c_13_3_0_False_shift: signed(22 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_i0_resize: signed(23 downto 0);
  signal c_14_i1_resize: signed(23 downto 0);
  signal c_14_i0_shift: signed(23 downto 0);
  signal c_14_i1_shift: signed(23 downto 0);
  signal c_14_arith: signed(23 downto 0);
  signal c_14_oshift: signed(23 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(25 downto 0);
  signal c_15_7_10_False_resize: signed(25 downto 0);
  signal c_15_7_10_False_shift: signed(25 downto 0);
  signal c_15_3_0_False_resize: signed(25 downto 0);
  signal c_15_3_0_False_shift: signed(25 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_i0_resize: signed(25 downto 0);
  signal c_17_i1_resize: signed(25 downto 0);
  signal c_17_i0_shift: signed(25 downto 0);
  signal c_17_i1_shift: signed(25 downto 0);
  signal c_17_arith: signed(25 downto 0);
  signal c_17_oshift: signed(25 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(23 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_17_0_False_resize: signed(25 downto 0);
  signal c_19_17_0_False_shift: signed(25 downto 0);
  signal c_19_18_0_False_resize: signed(25 downto 0);
  signal c_19_18_0_False_shift: signed(25 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(21 downto 0);
  signal c_21: signed(21 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_12_0_False_resize: signed(25 downto 0);
  signal c_22_12_0_False_shift: signed(25 downto 0);
  signal c_22_21_7_False_resize: signed(25 downto 0);
  signal c_22_21_7_False_shift: signed(25 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_i0_resize: signed(25 downto 0);
  signal c_23_i1_resize: signed(25 downto 0);
  signal c_23_i0_shift: signed(25 downto 0);
  signal c_23_i1_shift: signed(25 downto 0);
  signal c_23_arith: signed(25 downto 0);
  signal c_23_oshift: signed(25 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(22 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_26: signed(22 downto 0);
  signal c_27: signed(22 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_29: signed(24 downto 0);
  signal c_29_28_5_False_resize: signed(24 downto 0);
  signal c_29_28_5_False_shift: signed(24 downto 0);
  signal c_29_23_0_False_resize: signed(24 downto 0);
  signal c_29_23_0_False_shift: signed(24 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(22 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_i0_resize: signed(23 downto 0);
  signal c_31_i1_resize: signed(23 downto 0);
  signal c_31_i0_shift: signed(23 downto 0);
  signal c_31_i1_shift: signed(23 downto 0);
  signal c_31_arith: signed(23 downto 0);
  signal c_31_oshift: signed(23 downto 0);
  signal c_32: signed(22 downto 0);
  signal c_33: signed(24 downto 0);
  signal c_33_32_2_False_resize: signed(24 downto 0);
  signal c_33_32_2_False_shift: signed(24 downto 0);
  signal c_33_31_0_False_resize: signed(24 downto 0);
  signal c_33_31_0_False_shift: signed(24 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_i0_resize: signed(25 downto 0);
  signal c_39_i1_resize: signed(25 downto 0);
  signal c_39_i0_shift: signed(25 downto 0);
  signal c_39_i1_shift: signed(25 downto 0);
  signal c_39_arith: signed(25 downto 0);
  signal c_39_oshift: signed(25 downto 0);
  signal c_39_sub_sel: std_logic;
  signal c_40: signed(23 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_41_40_1_False_resize: signed(25 downto 0);
  signal c_41_40_1_False_shift: signed(25 downto 0);
  signal c_41_39_0_False_resize: signed(25 downto 0);
  signal c_41_39_0_False_shift: signed(25 downto 0);
  signal c_41_sel: std_logic_vector(0 downto 0);
  signal c_42: signed(15 downto 0);
  signal c_43: signed(15 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_43_1_False_resize: signed(23 downto 0);
  signal c_44_43_1_False_shift: signed(23 downto 0);
  signal c_44_12_0_False_resize: signed(23 downto 0);
  signal c_44_12_0_False_shift: signed(23 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_51_i0_resize: signed(25 downto 0);
  signal c_51_i1_resize: signed(25 downto 0);
  signal c_51_i0_shift: signed(25 downto 0);
  signal c_51_i1_shift: signed(25 downto 0);
  signal c_51_arith: signed(25 downto 0);
  signal c_51_oshift: signed(25 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_60: signed(24 downto 0);
  signal c_60_i0_resize: signed(26 downto 0);
  signal c_60_i1_resize: signed(26 downto 0);
  signal c_60_i0_shift: signed(26 downto 0);
  signal c_60_i1_shift: signed(26 downto 0);
  signal c_60_arith: signed(26 downto 0);
  signal c_60_oshift: signed(24 downto 0);
  signal c_60_sub_sel: std_logic;
  signal c_61: signed(24 downto 0);
  signal c_61_7_0_False_resize: signed(24 downto 0);
  signal c_61_7_0_False_shift: signed(24 downto 0);
  signal c_61_3_2_False_resize: signed(24 downto 0);
  signal c_61_3_2_False_shift: signed(24 downto 0);
  signal c_61_sel: std_logic_vector(0 downto 0);
  signal c_62: signed(25 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_65: signed(24 downto 0);
  signal c_65_64_1_False_resize: signed(24 downto 0);
  signal c_65_64_1_False_shift: signed(24 downto 0);
  signal c_65_60_0_False_resize: signed(24 downto 0);
  signal c_65_60_0_False_shift: signed(24 downto 0);
  signal c_65_sel: std_logic_vector(0 downto 0);
  signal c_66: signed(24 downto 0);
  signal c_67: signed(24 downto 0);
  signal c_68: signed(24 downto 0);
  signal c_69: signed(24 downto 0);
  signal c_70: signed(24 downto 0);
  signal c_71: signed(24 downto 0);
  signal c_72: signed(24 downto 0);
  signal c_73: signed(24 downto 0);
  signal c_74: signed(24 downto 0);
  signal c_75: signed(24 downto 0);
  signal c_76: signed(24 downto 0);
  signal c_77: signed(24 downto 0);
  signal c_78: signed(24 downto 0);
  signal c_78_i0_resize: signed(24 downto 0);
  signal c_78_i1_resize: signed(24 downto 0);
  signal c_78_i0_shift: signed(24 downto 0);
  signal c_78_i1_shift: signed(24 downto 0);
  signal c_78_arith: signed(24 downto 0);
  signal c_78_oshift: signed(24 downto 0);
  signal c_79: signed(23 downto 0);
  signal c_79_6_2_False_resize: signed(23 downto 0);
  signal c_79_6_2_False_shift: signed(23 downto 0);
  signal c_79_24_0_False_resize: signed(23 downto 0);
  signal c_79_24_0_False_shift: signed(23 downto 0);
  signal c_79_sel: std_logic_vector(0 downto 0);
  signal c_80: signed(25 downto 0);
  signal c_80_12_2_False_resize: signed(25 downto 0);
  signal c_80_12_2_False_shift: signed(25 downto 0);
  signal c_80_17_0_False_resize: signed(25 downto 0);
  signal c_80_17_0_False_shift: signed(25 downto 0);
  signal c_80_sel: std_logic_vector(0 downto 0);
  signal c_81: signed(23 downto 0);
  signal c_82: signed(23 downto 0);
  signal c_83: signed(25 downto 0);
  signal c_83_i0_resize: signed(25 downto 0);
  signal c_83_i1_resize: signed(25 downto 0);
  signal c_83_i0_shift: signed(25 downto 0);
  signal c_83_i1_shift: signed(25 downto 0);
  signal c_83_arith: signed(25 downto 0);
  signal c_83_oshift: signed(25 downto 0);
  signal c_83_sub_sel: std_logic;
  signal c_84: signed(25 downto 0);
  signal c_85: signed(25 downto 0);
  signal c_86: signed(25 downto 0);
  signal c_86_23_0_False_resize: signed(25 downto 0);
  signal c_86_23_0_False_shift: signed(25 downto 0);
  signal c_86_85_0_False_resize: signed(25 downto 0);
  signal c_86_85_0_False_shift: signed(25 downto 0);
  signal c_86_sel: std_logic_vector(0 downto 0);
  signal c_87: signed(25 downto 0);
  signal c_87_51_0_False_resize: signed(25 downto 0);
  signal c_87_51_0_False_shift: signed(25 downto 0);
  signal c_87_59_0_False_resize: signed(25 downto 0);
  signal c_87_59_0_False_shift: signed(25 downto 0);
  signal c_87_sel: std_logic_vector(0 downto 0);
  signal c_88: signed(21 downto 0);
  signal c_89: signed(21 downto 0);
  signal c_90: signed(21 downto 0);
  signal c_91: signed(21 downto 0);
  signal c_92: signed(21 downto 0);
  signal c_93: signed(21 downto 0);
  signal c_94: signed(24 downto 0);
  signal c_94_39_1_False_resize: signed(24 downto 0);
  signal c_94_39_1_False_shift: signed(24 downto 0);
  signal c_94_93_0_False_resize: signed(24 downto 0);
  signal c_94_93_0_False_shift: signed(24 downto 0);
  signal c_94_sel: std_logic_vector(0 downto 0);
  signal c_95: signed(25 downto 0);
  signal c_96: signed(25 downto 0);
  signal c_97: signed(25 downto 0);
  signal c_97_96_0_False_resize: signed(25 downto 0);
  signal c_97_96_0_False_shift: signed(25 downto 0);
  signal c_97_31_1_False_resize: signed(25 downto 0);
  signal c_97_31_1_False_shift: signed(25 downto 0);
  signal c_97_sel: std_logic_vector(0 downto 0);
  signal c_98: signed(15 downto 0);
  signal c_99: signed(15 downto 0);
  signal c_100: signed(15 downto 0);
  signal c_101: signed(15 downto 0);
  signal c_102: signed(15 downto 0);
  signal c_103: signed(15 downto 0);
  signal c_104: signed(25 downto 0);
  signal c_104_39_0_False_resize: signed(25 downto 0);
  signal c_104_39_0_False_shift: signed(25 downto 0);
  signal c_104_103_8_False_resize: signed(25 downto 0);
  signal c_104_103_8_False_shift: signed(25 downto 0);
  signal c_104_sel: std_logic_vector(0 downto 0);
  signal c_105: signed(23 downto 0);
  signal c_106: signed(23 downto 0);
  signal c_107: signed(23 downto 0);
  signal c_108: signed(23 downto 0);
  signal c_109: signed(23 downto 0);
  signal c_110: signed(24 downto 0);
  signal c_110_60_0_False_resize: signed(24 downto 0);
  signal c_110_60_0_False_shift: signed(24 downto 0);
  signal c_110_109_2_False_resize: signed(24 downto 0);
  signal c_110_109_2_False_shift: signed(24 downto 0);
  signal c_110_sel: std_logic_vector(0 downto 0);
  signal c_111: signed(23 downto 0);
  signal c_112: signed(23 downto 0);
  signal c_113: signed(23 downto 0);
  signal c_114: signed(23 downto 0);
  signal c_114_113_0_False_resize: signed(23 downto 0);
  signal c_114_113_0_False_shift: signed(23 downto 0);
  signal c_114_60_0_False_resize: signed(23 downto 0);
  signal c_114_60_0_False_shift: signed(23 downto 0);
  signal c_114_sel: std_logic_vector(0 downto 0);
  signal c_115: signed(25 downto 0);
  signal c_115_83_0_False_resize: signed(25 downto 0);
  signal c_115_83_0_False_shift: signed(25 downto 0);
  signal c_115_99_9_False_resize: signed(25 downto 0);
  signal c_115_99_9_False_shift: signed(25 downto 0);
  signal c_115_sel: std_logic_vector(0 downto 0);
  signal c_116: signed(25 downto 0);
  signal c_116_12_0_False_resize: signed(25 downto 0);
  signal c_116_12_0_False_shift: signed(25 downto 0);
  signal c_116_17_4_False_resize: signed(25 downto 0);
  signal c_116_17_4_False_shift: signed(25 downto 0);
  signal c_116_sel: std_logic_vector(0 downto 0);
  signal c_117: signed(24 downto 0);
  signal c_117_resize: signed(24 downto 0);
  signal c_118: signed(25 downto 0);
  signal c_119: signed(25 downto 0);
  signal c_120: signed(25 downto 0);
  signal c_121: signed(25 downto 0);
  signal c_122: signed(25 downto 0);
  signal c_123: signed(25 downto 0);
  signal c_124: signed(25 downto 0);
  signal c_125: signed(25 downto 0);
  signal c_126: signed(25 downto 0);
  signal c_126_resize: signed(25 downto 0);
  signal c_127: signed(25 downto 0);
  signal c_128: signed(25 downto 0);
  signal c_129: signed(25 downto 0);
  signal c_129_resize: signed(25 downto 0);
  signal c_130: signed(24 downto 0);
  signal c_131: signed(24 downto 0);
  signal c_132: signed(24 downto 0);
  signal c_133: signed(24 downto 0);
  signal c_134: signed(24 downto 0);
  signal c_134_resize: signed(24 downto 0);
  signal c_135: signed(25 downto 0);
  signal c_136: signed(25 downto 0);
  signal c_137: signed(25 downto 0);
  signal c_138: signed(25 downto 0);
  signal c_139: signed(25 downto 0);
  signal c_140: signed(25 downto 0);
  signal c_141: signed(25 downto 0);
  signal c_141_resize: signed(25 downto 0);
  signal c_142: signed(25 downto 0);
  signal c_143: signed(25 downto 0);
  signal c_144: signed(25 downto 0);
  signal c_145: signed(25 downto 0);
  signal c_146: signed(25 downto 0);
  signal c_146_resize: signed(25 downto 0);
  signal c_147: signed(24 downto 0);
  signal c_148: signed(24 downto 0);
  signal c_148_resize: signed(24 downto 0);
  signal c_149: signed(23 downto 0);
  signal c_150: signed(25 downto 0);
  signal c_150_resize: signed(25 downto 0);
  signal c_151: signed(25 downto 0);
  signal c_152: signed(25 downto 0);
  signal c_153: signed(25 downto 0);
  signal c_154: signed(25 downto 0);
  signal c_155: signed(25 downto 0);
  signal c_156: signed(25 downto 0);
  signal c_157: signed(25 downto 0);
  signal c_158: signed(25 downto 0);
  signal c_159: signed(25 downto 0);
  signal c_159_resize: signed(25 downto 0);
  signal c_160: signed(25 downto 0);
  signal c_161: signed(25 downto 0);
  signal c_162: signed(25 downto 0);
  signal c_163: signed(25 downto 0);
  signal c_164: signed(25 downto 0);
  signal c_165: signed(25 downto 0);
  signal c_166: signed(25 downto 0);
  signal c_167: signed(25 downto 0);
  signal c_168: signed(25 downto 0);
  signal c_169: signed(25 downto 0);
  signal c_170: signed(25 downto 0);
  signal c_170_resize: signed(25 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 117
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_117);
    end if;
  end process;
  -- output node 1 with id 126
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_126);
    end if;
  end process;
  -- output node 2 with id 129
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_129);
    end if;
  end process;
  -- output node 3 with id 134
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_134);
    end if;
  end process;
  -- output node 4 with id 141
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_141);
    end if;
  end process;
  -- output node 5 with id 146
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_146);
    end if;
  end process;
  -- output node 6 with id 148
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_148);
    end if;
  end process;
  -- output node 7 with id 150
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_150);
    end if;
  end process;
  -- output node 8 with id 159
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_159);
    end if;
  end process;
  -- output node 9 with id 170
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_170);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[32], [1]]
  c_1_0_0_False_resize <= resize(c_0, 21);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_5_False_resize <= resize(c_0, 21);
  c_1_0_5_False_shift <= shift_left(c_1_0_5_False_resize, 5);
  with config_select_1 select c_1_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_5_False_shift;
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
  -- node of type 'add' in stage 2 with id 3 and associated fundamentals [[65], [3]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 21,
      w_o => 23,
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
      x_i => c_2,
      y_i => c_1,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[4], [1]]
  c_4_0_0_False_resize <= resize(c_0, 18);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_2_False_resize <= resize(c_0, 18);
  c_4_0_2_False_shift <= shift_left(c_4_0_2_False_resize, 2);
  with config_select_1 select c_4_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_0_False_shift;
        when others => c_4 <= c_4_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[4], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 6 and associated fundamentals [[57], [5]]
  with config_select_3 select c_6_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 18,
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
      sub_i => c_6_sub_sel,
      x_i => c_3,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 7 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[1], [192]]
  c_8_3_6_False_resize <= resize(c_3, 24);
  c_8_3_6_False_shift <= shift_left(c_8_3_6_False_resize, 6);
  c_8_7_0_False_resize <= resize(c_7, 24);
  c_8_7_0_False_shift <= shift_left(c_8_7_0_False_resize, 0);
  with config_select_3 select c_8_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_3_6_False_shift;
        when others => c_8 <= c_8_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_7 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 10 and associated fundamentals [[456], [1]]
  c_10_9_0_False_resize <= resize(c_9, 25);
  c_10_9_0_False_shift <= shift_left(c_10_9_0_False_resize, 0);
  c_10_6_3_False_resize <= resize(c_6, 25);
  c_10_6_3_False_shift <= shift_left(c_10_6_3_False_resize, 3);
  with config_select_4 select c_10_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_9_0_False_shift;
        when others => c_10 <= c_10_6_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[1], [192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_8 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 12 and associated fundamentals [[913], [190]]
  with config_select_5 select c_12_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
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
      sub_i => c_12_sub_sel,
      x_i => c_11,
      y_i => c_10,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[65], [4]]
  c_13_7_2_False_resize <= resize(c_7, 23);
  c_13_7_2_False_shift <= shift_left(c_13_7_2_False_resize, 2);
  c_13_3_0_False_resize <= c_3;
  c_13_3_0_False_shift <= shift_left(c_13_3_0_False_resize, 0);
  with config_select_3 select c_13_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_7_2_False_shift;
        when others => c_13 <= c_13_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 14 and associated fundamentals [[-203], [21]]
  with config_select_4 select c_14_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
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
      sub_i => c_14_sub_sel,
      x_i => c_6,
      y_i => c_13,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[1024], [3]]
  c_15_7_10_False_resize <= resize(c_7, 26);
  c_15_7_10_False_shift <= shift_left(c_15_7_10_False_resize, 10);
  c_15_3_0_False_resize <= resize(c_3, 26);
  c_15_3_0_False_shift <= shift_left(c_15_3_0_False_resize, 0);
  with config_select_3 select c_15_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_7_10_False_shift;
        when others => c_15 <= c_15_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 16 and associated fundamentals [[1024], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 17 and associated fundamentals [[618], [39]]
  with config_select_5 select c_17_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 26,
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
      sub_i => c_17_sub_sel,
      x_i => c_14,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[-203], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_14 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 19 and associated fundamentals [[618], [21]]
  c_19_17_0_False_resize <= c_17;
  c_19_17_0_False_shift <= shift_left(c_19_17_0_False_resize, 0);
  c_19_18_0_False_resize <= resize(c_18, 26);
  c_19_18_0_False_shift <= shift_left(c_19_18_0_False_resize, 0);
  with config_select_6 select c_19_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_17_0_False_shift;
        when others => c_19 <= c_19_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 20 and associated fundamentals [[57], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[57], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 22 and associated fundamentals [[913], [640]]
  c_22_12_0_False_resize <= c_12;
  c_22_12_0_False_shift <= shift_left(c_22_12_0_False_resize, 0);
  c_22_21_7_False_resize <= resize(c_21, 26);
  c_22_21_7_False_shift <= shift_left(c_22_21_7_False_resize, 7);
  with config_select_6 select c_22_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_12_0_False_shift;
        when others => c_22 <= c_22_21_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 23 and associated fundamentals [[-295], [661]]
  with config_select_7 select c_23_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_23: entity work.adder_node
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
      sub_i => c_23_sub_sel,
      x_i => c_19,
      y_i => c_22,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 24 and associated fundamentals [[65], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 25 and associated fundamentals [[65], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 26 and associated fundamentals [[65], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[65], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 28 and associated fundamentals [[65], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 29 and associated fundamentals [[-295], [96]]
  c_29_28_5_False_resize <= resize(c_28, 25);
  c_29_28_5_False_shift <= shift_left(c_29_28_5_False_resize, 5);
  c_29_23_0_False_resize <= c_23(24 downto 0);
  c_29_23_0_False_shift <= shift_left(c_29_23_0_False_resize, 0);
  with config_select_8 select c_29_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_28_5_False_shift;
        when others => c_29 <= c_29_23_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 30 and associated fundamentals [[65], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_28 & "";
    end if;
  end process;
  -- node of type 'add' in stage 9 with id 31 and associated fundamentals [[-165], [102]]
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 25,
      w_o => 24,
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
      x_i => c_30,
      y_i => c_29,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 32 and associated fundamentals [[65], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_30 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 33 and associated fundamentals [[260], [102]]
  c_33_32_2_False_resize <= resize(c_32, 25);
  c_33_32_2_False_shift <= shift_left(c_33_32_2_False_resize, 2);
  c_33_31_0_False_resize <= resize(c_31, 25);
  c_33_31_0_False_shift <= shift_left(c_33_31_0_False_resize, 0);
  with config_select_10 select c_33_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "0" => c_33 <= c_33_32_2_False_shift;
        when others => c_33 <= c_33_31_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 34 and associated fundamentals [[-203], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 35 and associated fundamentals [[-203], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 36 and associated fundamentals [[-203], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 37 and associated fundamentals [[-203], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 38 and associated fundamentals [[-203], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 11 with id 39 and associated fundamentals [[723], [225]]
  with config_select_11 select c_39_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_39: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 24,
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
      sub_i => c_39_sub_sel,
      x_i => c_33,
      y_i => c_38,
      z_o => c_39_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_39_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 40 and associated fundamentals [[-203], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_38 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 41 and associated fundamentals [[723], [42]]
  c_41_40_1_False_resize <= resize(c_40, 26);
  c_41_40_1_False_shift <= shift_left(c_41_40_1_False_resize, 1);
  c_41_39_0_False_resize <= c_39;
  c_41_39_0_False_shift <= shift_left(c_41_39_0_False_resize, 0);
  with config_select_12 select c_41_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "0" => c_41 <= c_41_40_1_False_shift;
        when others => c_41 <= c_41_39_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 42 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 43 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 44 and associated fundamentals [[2], [190]]
  c_44_43_1_False_resize <= resize(c_43, 24);
  c_44_43_1_False_shift <= shift_left(c_44_43_1_False_resize, 1);
  c_44_12_0_False_resize <= c_12(23 downto 0);
  c_44_12_0_False_shift <= shift_left(c_44_12_0_False_resize, 0);
  with config_select_6 select c_44_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "0" => c_44 <= c_44_43_1_False_shift;
        when others => c_44 <= c_44_12_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 45 and associated fundamentals [[2], [190]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 46 and associated fundamentals [[2], [190]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 47 and associated fundamentals [[2], [190]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 48 and associated fundamentals [[2], [190]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 49 and associated fundamentals [[2], [190]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 50 and associated fundamentals [[2], [190]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'add' in stage 13 with id 51 and associated fundamentals [[731], [802]]
  inst_adder_node_51: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
      w_o => 26,
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
      x_i => c_41,
      y_i => c_50,
      z_o => c_51_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_51_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 52 and associated fundamentals [[913], [190]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 53 and associated fundamentals [[913], [190]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 54 and associated fundamentals [[913], [190]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 55 and associated fundamentals [[913], [190]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 56 and associated fundamentals [[913], [190]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 57 and associated fundamentals [[913], [190]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 58 and associated fundamentals [[913], [190]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 59 and associated fundamentals [[913], [190]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 60 and associated fundamentals [[411], [-153]]
  with config_select_14 select c_60_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_60: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 26,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 2,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_60_sub_sel,
      x_i => c_59,
      y_i => c_51,
      z_o => c_60_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_60_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 61 and associated fundamentals [[260], [1]]
  c_61_7_0_False_resize <= resize(c_7, 25);
  c_61_7_0_False_shift <= shift_left(c_61_7_0_False_resize, 0);
  c_61_3_2_False_resize <= resize(c_3, 25);
  c_61_3_2_False_shift <= shift_left(c_61_3_2_False_resize, 2);
  with config_select_3 select c_61_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_61_sel is
        when "0" => c_61 <= c_61_7_0_False_shift;
        when others => c_61 <= c_61_3_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 62 and associated fundamentals [[723], [225]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 63 and associated fundamentals [[723], [225]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 64 and associated fundamentals [[723], [225]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 65 and associated fundamentals [[411], [450]]
  c_65_64_1_False_resize <= c_64(24 downto 0);
  c_65_64_1_False_shift <= shift_left(c_65_64_1_False_resize, 1);
  c_65_60_0_False_resize <= c_60;
  c_65_60_0_False_shift <= shift_left(c_65_60_0_False_resize, 0);
  with config_select_15 select c_65_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_65_sel is
        when "0" => c_65 <= c_65_64_1_False_shift;
        when others => c_65 <= c_65_60_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 66 and associated fundamentals [[260], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 67 and associated fundamentals [[260], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 68 and associated fundamentals [[260], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 69 and associated fundamentals [[260], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 70 and associated fundamentals [[260], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 71 and associated fundamentals [[260], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 72 and associated fundamentals [[260], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 73 and associated fundamentals [[260], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_72 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 74 and associated fundamentals [[260], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 75 and associated fundamentals [[260], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 76 and associated fundamentals [[260], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 77 and associated fundamentals [[260], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 16 with id 78 and associated fundamentals [[-151], [-449]]
  inst_adder_node_78: entity work.adder_node
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
      x_i => c_77,
      y_i => c_65,
      z_o => c_78_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_78_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 79 and associated fundamentals [[228], [3]]
  c_79_6_2_False_resize <= resize(c_6, 24);
  c_79_6_2_False_shift <= shift_left(c_79_6_2_False_resize, 2);
  c_79_24_0_False_resize <= resize(c_24, 24);
  c_79_24_0_False_shift <= shift_left(c_79_24_0_False_resize, 0);
  with config_select_4 select c_79_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_79_sel is
        when "0" => c_79 <= c_79_6_2_False_shift;
        when others => c_79 <= c_79_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 80 and associated fundamentals [[618], [760]]
  c_80_12_2_False_resize <= c_12;
  c_80_12_2_False_shift <= shift_left(c_80_12_2_False_resize, 2);
  c_80_17_0_False_resize <= c_17;
  c_80_17_0_False_shift <= shift_left(c_80_17_0_False_resize, 0);
  with config_select_6 select c_80_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_80_sel is
        when "0" => c_80 <= c_80_12_2_False_shift;
        when others => c_80 <= c_80_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 81 and associated fundamentals [[228], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_79 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 82 and associated fundamentals [[228], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_81 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 83 and associated fundamentals [[846], [-757]]
  with config_select_7 select c_83_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_83: entity work.adder_node
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
      sub_i => c_83_sub_sel,
      x_i => c_82,
      y_i => c_80,
      z_o => c_83_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_83_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 84 and associated fundamentals [[618], [39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 85 and associated fundamentals [[618], [39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_84 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 86 and associated fundamentals [[618], [661]]
  c_86_23_0_False_resize <= c_23;
  c_86_23_0_False_shift <= shift_left(c_86_23_0_False_resize, 0);
  c_86_85_0_False_resize <= c_85;
  c_86_85_0_False_shift <= shift_left(c_86_85_0_False_resize, 0);
  with config_select_8 select c_86_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_86_sel is
        when "0" => c_86 <= c_86_23_0_False_shift;
        when others => c_86 <= c_86_85_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 14 with id 87 and associated fundamentals [[731], [190]]
  c_87_51_0_False_resize <= c_51;
  c_87_51_0_False_shift <= shift_left(c_87_51_0_False_resize, 0);
  c_87_59_0_False_resize <= c_59;
  c_87_59_0_False_shift <= shift_left(c_87_59_0_False_resize, 0);
  with config_select_14 select c_87_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_87_sel is
        when "0" => c_87 <= c_87_51_0_False_shift;
        when others => c_87 <= c_87_59_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 88 and associated fundamentals [[57], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 89 and associated fundamentals [[57], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_88 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 90 and associated fundamentals [[57], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_89 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 91 and associated fundamentals [[57], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_90 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 92 and associated fundamentals [[57], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 93 and associated fundamentals [[57], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_92 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 94 and associated fundamentals [[57], [450]]
  c_94_39_1_False_resize <= c_39(24 downto 0);
  c_94_39_1_False_shift <= shift_left(c_94_39_1_False_resize, 1);
  c_94_93_0_False_resize <= resize(c_93, 25);
  c_94_93_0_False_shift <= shift_left(c_94_93_0_False_resize, 0);
  with config_select_12 select c_94_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_94_sel is
        when "0" => c_94 <= c_94_39_1_False_shift;
        when others => c_94 <= c_94_93_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 95 and associated fundamentals [[846], [-757]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_83 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 96 and associated fundamentals [[846], [-757]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_95 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 97 and associated fundamentals [[-330], [-757]]
  c_97_96_0_False_resize <= c_96;
  c_97_96_0_False_shift <= shift_left(c_97_96_0_False_resize, 0);
  c_97_31_1_False_resize <= resize(c_31, 26);
  c_97_31_1_False_shift <= shift_left(c_97_31_1_False_resize, 1);
  with config_select_10 select c_97_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_97_sel is
        when "0" => c_97 <= c_97_96_0_False_shift;
        when others => c_97 <= c_97_31_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 98 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 99 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_98 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 100 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_99 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 101 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_100 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 102 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_101 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 103 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_102 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 104 and associated fundamentals [[723], [256]]
  c_104_39_0_False_resize <= c_39;
  c_104_39_0_False_shift <= shift_left(c_104_39_0_False_resize, 0);
  c_104_103_8_False_resize <= resize(c_103, 26);
  c_104_103_8_False_shift <= shift_left(c_104_103_8_False_resize, 8);
  with config_select_12 select c_104_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_104_sel is
        when "0" => c_104 <= c_104_39_0_False_shift;
        when others => c_104 <= c_104_103_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 105 and associated fundamentals [[-165], [102]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 106 and associated fundamentals [[-165], [102]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_105 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 107 and associated fundamentals [[-165], [102]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_106 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 108 and associated fundamentals [[-165], [102]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_108 <= c_107 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 109 and associated fundamentals [[-165], [102]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_109 <= c_108 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 110 and associated fundamentals [[411], [408]]
  c_110_60_0_False_resize <= c_60;
  c_110_60_0_False_shift <= shift_left(c_110_60_0_False_resize, 0);
  c_110_109_2_False_resize <= resize(c_109, 25);
  c_110_109_2_False_shift <= shift_left(c_110_109_2_False_resize, 2);
  with config_select_15 select c_110_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_110_sel is
        when "0" => c_110 <= c_110_60_0_False_shift;
        when others => c_110 <= c_110_109_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 111 and associated fundamentals [[-203], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 112 and associated fundamentals [[-203], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_111 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 113 and associated fundamentals [[-203], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_112 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 114 and associated fundamentals [[-203], [-153]]
  c_114_113_0_False_resize <= c_113;
  c_114_113_0_False_shift <= shift_left(c_114_113_0_False_resize, 0);
  c_114_60_0_False_resize <= c_60(23 downto 0);
  c_114_60_0_False_shift <= shift_left(c_114_60_0_False_resize, 0);
  with config_select_15 select c_114_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_114_sel is
        when "0" => c_114 <= c_114_113_0_False_shift;
        when others => c_114 <= c_114_60_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 115 and associated fundamentals [[846], [512]]
  c_115_83_0_False_resize <= c_83;
  c_115_83_0_False_shift <= shift_left(c_115_83_0_False_resize, 0);
  c_115_99_9_False_resize <= resize(c_99, 26);
  c_115_99_9_False_shift <= shift_left(c_115_99_9_False_resize, 9);
  with config_select_8 select c_115_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_115_sel is
        when "0" => c_115 <= c_115_83_0_False_shift;
        when others => c_115 <= c_115_99_9_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 116 and associated fundamentals [[913], [624]]
  c_116_12_0_False_resize <= c_12;
  c_116_12_0_False_shift <= shift_left(c_116_12_0_False_resize, 0);
  c_116_17_4_False_resize <= c_17;
  c_116_17_4_False_shift <= shift_left(c_116_17_4_False_resize, 4);
  with config_select_6 select c_116_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_116_sel is
        when "0" => c_116 <= c_116_12_0_False_shift;
        when others => c_116 <= c_116_17_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 117 and associated fundamentals [[151], [449]]
  c_117_resize <= c_78;
  c_117 <= -shift_left(c_117_resize, 0);
  -- node of type 'register' in stage 9 with id 118 and associated fundamentals [[618], [661]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_118 <= c_86 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 119 and associated fundamentals [[618], [661]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_119 <= c_118 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 120 and associated fundamentals [[618], [661]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_120 <= c_119 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 121 and associated fundamentals [[618], [661]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_121 <= c_120 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 122 and associated fundamentals [[618], [661]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_122 <= c_121 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 123 and associated fundamentals [[618], [661]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_123 <= c_122 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 124 and associated fundamentals [[618], [661]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_124 <= c_123 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 125 and associated fundamentals [[618], [661]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_125 <= c_124 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 126 and associated fundamentals [[618], [661]]
  c_126_resize <= c_125;
  c_126 <= shift_left(c_126_resize, 0);
  -- node of type 'register' in stage 15 with id 127 and associated fundamentals [[731], [190]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_127 <= c_87 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 128 and associated fundamentals [[731], [190]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_128 <= c_127 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 129 and associated fundamentals [[731], [190]]
  c_129_resize <= c_128;
  c_129 <= shift_left(c_129_resize, 0);
  -- node of type 'register' in stage 13 with id 130 and associated fundamentals [[57], [450]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_130 <= c_94 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 131 and associated fundamentals [[57], [450]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_131 <= c_130 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 132 and associated fundamentals [[57], [450]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_132 <= c_131 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 133 and associated fundamentals [[57], [450]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_133 <= c_132 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 134 and associated fundamentals [[57], [450]]
  c_134_resize <= c_133;
  c_134 <= shift_left(c_134_resize, 0);
  -- node of type 'register' in stage 11 with id 135 and associated fundamentals [[-330], [-757]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_135 <= c_97 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 136 and associated fundamentals [[-330], [-757]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_136 <= c_135 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 137 and associated fundamentals [[-330], [-757]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_137 <= c_136 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 138 and associated fundamentals [[-330], [-757]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_138 <= c_137 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 139 and associated fundamentals [[-330], [-757]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_139 <= c_138 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 140 and associated fundamentals [[-330], [-757]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_140 <= c_139 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 141 and associated fundamentals [[330], [757]]
  c_141_resize <= c_140;
  c_141 <= -shift_left(c_141_resize, 0);
  -- node of type 'register' in stage 13 with id 142 and associated fundamentals [[723], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_142 <= c_104 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 143 and associated fundamentals [[723], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_143 <= c_142 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 144 and associated fundamentals [[723], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_144 <= c_143 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 145 and associated fundamentals [[723], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_145 <= c_144 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 146 and associated fundamentals [[723], [256]]
  c_146_resize <= c_145;
  c_146 <= shift_left(c_146_resize, 0);
  -- node of type 'register' in stage 16 with id 147 and associated fundamentals [[411], [408]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_147 <= c_110 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 148 and associated fundamentals [[411], [408]]
  c_148_resize <= c_147;
  c_148 <= shift_left(c_148_resize, 0);
  -- node of type 'register' in stage 16 with id 149 and associated fundamentals [[-203], [-153]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_149 <= c_114 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 150 and associated fundamentals [[812], [612]]
  c_150_resize <= resize(c_149, 26);
  c_150 <= -shift_left(c_150_resize, 2);
  -- node of type 'register' in stage 9 with id 151 and associated fundamentals [[846], [512]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_151 <= c_115 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 152 and associated fundamentals [[846], [512]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_152 <= c_151 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 153 and associated fundamentals [[846], [512]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_153 <= c_152 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 154 and associated fundamentals [[846], [512]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_154 <= c_153 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 155 and associated fundamentals [[846], [512]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_155 <= c_154 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 156 and associated fundamentals [[846], [512]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_156 <= c_155 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 157 and associated fundamentals [[846], [512]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_157 <= c_156 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 158 and associated fundamentals [[846], [512]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_158 <= c_157 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 159 and associated fundamentals [[846], [512]]
  c_159_resize <= c_158;
  c_159 <= shift_left(c_159_resize, 0);
  -- node of type 'register' in stage 7 with id 160 and associated fundamentals [[913], [624]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_160 <= c_116 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 161 and associated fundamentals [[913], [624]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_161 <= c_160 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 162 and associated fundamentals [[913], [624]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_162 <= c_161 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 163 and associated fundamentals [[913], [624]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_163 <= c_162 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 164 and associated fundamentals [[913], [624]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_164 <= c_163 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 165 and associated fundamentals [[913], [624]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_165 <= c_164 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 166 and associated fundamentals [[913], [624]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_166 <= c_165 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 167 and associated fundamentals [[913], [624]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_167 <= c_166 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 168 and associated fundamentals [[913], [624]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_168 <= c_167 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 169 and associated fundamentals [[913], [624]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_169 <= c_168 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 170 and associated fundamentals [[913], [624]]
  c_170_resize <= c_169;
  c_170 <= shift_left(c_170_resize, 0);
end architecture;
