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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(16 downto 0);
  signal c_1_0_1_False_resize: signed(16 downto 0);
  signal c_1_0_1_False_shift: signed(16 downto 0);
  signal c_1_0_0_False_resize: signed(16 downto 0);
  signal c_1_0_0_False_shift: signed(16 downto 0);
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
  signal c_4: signed(22 downto 0);
  signal c_4_3_0_False_resize: signed(22 downto 0);
  signal c_4_3_0_False_shift: signed(22 downto 0);
  signal c_4_3_3_False_resize: signed(22 downto 0);
  signal c_4_3_3_False_shift: signed(22 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(19 downto 0);
  signal c_6_5_2_False_resize: signed(19 downto 0);
  signal c_6_5_2_False_shift: signed(19 downto 0);
  signal c_6_3_0_False_resize: signed(19 downto 0);
  signal c_6_3_0_False_shift: signed(19 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(25 downto 0);
  signal c_7_i0_resize: signed(25 downto 0);
  signal c_7_i1_resize: signed(25 downto 0);
  signal c_7_i0_shift: signed(25 downto 0);
  signal c_7_i1_shift: signed(25 downto 0);
  signal c_7_arith: signed(25 downto 0);
  signal c_7_oshift: signed(25 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(19 downto 0);
  signal c_8_5_1_False_resize: signed(19 downto 0);
  signal c_8_5_1_False_shift: signed(19 downto 0);
  signal c_8_3_0_False_resize: signed(19 downto 0);
  signal c_8_3_0_False_shift: signed(19 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(19 downto 0);
  signal c_10: signed(25 downto 0);
  signal c_10_i0_resize: signed(25 downto 0);
  signal c_10_i1_resize: signed(25 downto 0);
  signal c_10_i0_shift: signed(25 downto 0);
  signal c_10_i1_shift: signed(25 downto 0);
  signal c_10_arith: signed(25 downto 0);
  signal c_10_oshift: signed(25 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(21 downto 0);
  signal c_11_3_0_False_resize: signed(21 downto 0);
  signal c_11_3_0_False_shift: signed(21 downto 0);
  signal c_11_3_2_False_resize: signed(21 downto 0);
  signal c_11_3_2_False_shift: signed(21 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_i0_resize: signed(23 downto 0);
  signal c_12_i1_resize: signed(23 downto 0);
  signal c_12_i0_shift: signed(23 downto 0);
  signal c_12_i1_shift: signed(23 downto 0);
  signal c_12_arith: signed(23 downto 0);
  signal c_12_oshift: signed(23 downto 0);
  signal c_13: signed(22 downto 0);
  signal c_13_12_0_False_resize: signed(22 downto 0);
  signal c_13_12_0_False_shift: signed(22 downto 0);
  signal c_13_10_0_False_resize: signed(22 downto 0);
  signal c_13_10_0_False_shift: signed(22 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(15 downto 0);
  signal c_15: signed(15 downto 0);
  signal c_16: signed(20 downto 0);
  signal c_16_12_0_False_resize: signed(20 downto 0);
  signal c_16_12_0_False_shift: signed(20 downto 0);
  signal c_16_15_5_False_resize: signed(20 downto 0);
  signal c_16_15_5_False_shift: signed(20 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_i0_resize: signed(25 downto 0);
  signal c_17_i1_resize: signed(25 downto 0);
  signal c_17_i0_shift: signed(25 downto 0);
  signal c_17_i1_shift: signed(25 downto 0);
  signal c_17_arith: signed(25 downto 0);
  signal c_17_oshift: signed(25 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_7_3_False_resize: signed(25 downto 0);
  signal c_18_7_3_False_shift: signed(25 downto 0);
  signal c_18_15_0_False_resize: signed(25 downto 0);
  signal c_18_15_0_False_shift: signed(25 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_12_0_False_resize: signed(23 downto 0);
  signal c_19_12_0_False_shift: signed(23 downto 0);
  signal c_19_15_0_False_resize: signed(23 downto 0);
  signal c_19_15_0_False_shift: signed(23 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_i0_resize: signed(25 downto 0);
  signal c_20_i1_resize: signed(25 downto 0);
  signal c_20_i0_shift: signed(25 downto 0);
  signal c_20_i1_shift: signed(25 downto 0);
  signal c_20_arith: signed(25 downto 0);
  signal c_20_oshift: signed(25 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_21_15_7_False_resize: signed(22 downto 0);
  signal c_21_15_7_False_shift: signed(22 downto 0);
  signal c_21_10_0_False_resize: signed(22 downto 0);
  signal c_21_10_0_False_shift: signed(22 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(15 downto 0);
  signal c_23: signed(15 downto 0);
  signal c_24: signed(24 downto 0);
  signal c_24_23_0_False_resize: signed(24 downto 0);
  signal c_24_23_0_False_shift: signed(24 downto 0);
  signal c_24_17_0_False_resize: signed(24 downto 0);
  signal c_24_17_0_False_shift: signed(24 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_26: signed(22 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_i0_resize: signed(25 downto 0);
  signal c_27_i1_resize: signed(25 downto 0);
  signal c_27_i0_shift: signed(25 downto 0);
  signal c_27_i1_shift: signed(25 downto 0);
  signal c_27_arith: signed(25 downto 0);
  signal c_27_oshift: signed(25 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(23 downto 0);
  signal c_28_10_1_False_resize: signed(23 downto 0);
  signal c_28_10_1_False_shift: signed(23 downto 0);
  signal c_28_7_0_False_resize: signed(23 downto 0);
  signal c_28_7_0_False_shift: signed(23 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_17_0_False_resize: signed(25 downto 0);
  signal c_29_17_0_False_shift: signed(25 downto 0);
  signal c_29_23_0_False_resize: signed(25 downto 0);
  signal c_29_23_0_False_shift: signed(25 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_32: signed(24 downto 0);
  signal c_32_i0_resize: signed(24 downto 0);
  signal c_32_i1_resize: signed(24 downto 0);
  signal c_32_i0_shift: signed(24 downto 0);
  signal c_32_i1_shift: signed(24 downto 0);
  signal c_32_arith: signed(24 downto 0);
  signal c_32_oshift: signed(24 downto 0);
  signal c_32_sub_sel: std_logic;
  signal c_33: signed(25 downto 0);
  signal c_33_i0_resize: signed(26 downto 0);
  signal c_33_i1_resize: signed(26 downto 0);
  signal c_33_i0_shift: signed(26 downto 0);
  signal c_33_i1_shift: signed(26 downto 0);
  signal c_33_arith: signed(26 downto 0);
  signal c_33_oshift: signed(25 downto 0);
  signal c_33_sub_sel: std_logic;
  signal c_34: signed(19 downto 0);
  signal c_34_3_0_False_resize: signed(19 downto 0);
  signal c_34_3_0_False_shift: signed(19 downto 0);
  signal c_34_5_0_False_resize: signed(19 downto 0);
  signal c_34_5_0_False_shift: signed(19 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_37: signed(24 downto 0);
  signal c_37_32_0_False_resize: signed(24 downto 0);
  signal c_37_32_0_False_shift: signed(24 downto 0);
  signal c_37_36_1_False_resize: signed(24 downto 0);
  signal c_37_36_1_False_shift: signed(24 downto 0);
  signal c_37_sel: std_logic_vector(0 downto 0);
  signal c_38: signed(19 downto 0);
  signal c_39: signed(19 downto 0);
  signal c_40: signed(19 downto 0);
  signal c_41: signed(19 downto 0);
  signal c_42: signed(19 downto 0);
  signal c_43: signed(19 downto 0);
  signal c_44: signed(24 downto 0);
  signal c_44_i0_resize: signed(24 downto 0);
  signal c_44_i1_resize: signed(24 downto 0);
  signal c_44_i0_shift: signed(24 downto 0);
  signal c_44_i1_shift: signed(24 downto 0);
  signal c_44_arith: signed(24 downto 0);
  signal c_44_oshift: signed(24 downto 0);
  signal c_45: signed(19 downto 0);
  signal c_46: signed(19 downto 0);
  signal c_47: signed(19 downto 0);
  signal c_48: signed(24 downto 0);
  signal c_48_20_0_False_resize: signed(24 downto 0);
  signal c_48_20_0_False_shift: signed(24 downto 0);
  signal c_48_47_5_False_resize: signed(24 downto 0);
  signal c_48_47_5_False_shift: signed(24 downto 0);
  signal c_48_sel: std_logic_vector(0 downto 0);
  signal c_49: signed(15 downto 0);
  signal c_50: signed(15 downto 0);
  signal c_51: signed(15 downto 0);
  signal c_52: signed(15 downto 0);
  signal c_53: signed(24 downto 0);
  signal c_53_52_7_False_resize: signed(24 downto 0);
  signal c_53_52_7_False_shift: signed(24 downto 0);
  signal c_53_44_0_False_resize: signed(24 downto 0);
  signal c_53_44_0_False_shift: signed(24 downto 0);
  signal c_53_sel: std_logic_vector(0 downto 0);
  signal c_54: signed(24 downto 0);
  signal c_55: signed(24 downto 0);
  signal c_56: signed(24 downto 0);
  signal c_57: signed(24 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_58_i0_resize: signed(25 downto 0);
  signal c_58_i1_resize: signed(25 downto 0);
  signal c_58_i0_shift: signed(25 downto 0);
  signal c_58_i1_shift: signed(25 downto 0);
  signal c_58_arith: signed(25 downto 0);
  signal c_58_oshift: signed(25 downto 0);
  signal c_58_sub_sel: std_logic;
  signal c_59: signed(25 downto 0);
  signal c_60: signed(25 downto 0);
  signal c_61: signed(25 downto 0);
  signal c_62: signed(25 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_63_62_0_False_resize: signed(25 downto 0);
  signal c_63_62_0_False_shift: signed(25 downto 0);
  signal c_63_27_0_False_resize: signed(25 downto 0);
  signal c_63_27_0_False_shift: signed(25 downto 0);
  signal c_63_sel: std_logic_vector(0 downto 0);
  signal c_64: signed(20 downto 0);
  signal c_64_5_5_False_resize: signed(20 downto 0);
  signal c_64_5_5_False_shift: signed(20 downto 0);
  signal c_64_3_0_False_resize: signed(20 downto 0);
  signal c_64_3_0_False_shift: signed(20 downto 0);
  signal c_64_sel: std_logic_vector(0 downto 0);
  signal c_65: signed(20 downto 0);
  signal c_66: signed(20 downto 0);
  signal c_67: signed(20 downto 0);
  signal c_68: signed(20 downto 0);
  signal c_69: signed(20 downto 0);
  signal c_70: signed(20 downto 0);
  signal c_71: signed(25 downto 0);
  signal c_71_i0_resize: signed(25 downto 0);
  signal c_71_i1_resize: signed(25 downto 0);
  signal c_71_i0_shift: signed(25 downto 0);
  signal c_71_i1_shift: signed(25 downto 0);
  signal c_71_arith: signed(25 downto 0);
  signal c_71_oshift: signed(25 downto 0);
  signal c_72: signed(24 downto 0);
  signal c_73: signed(24 downto 0);
  signal c_74: signed(25 downto 0);
  signal c_74_73_1_False_resize: signed(25 downto 0);
  signal c_74_73_1_False_shift: signed(25 downto 0);
  signal c_74_71_0_False_resize: signed(25 downto 0);
  signal c_74_71_0_False_shift: signed(25 downto 0);
  signal c_74_sel: std_logic_vector(0 downto 0);
  signal c_75: signed(25 downto 0);
  signal c_76: signed(25 downto 0);
  signal c_77: signed(25 downto 0);
  signal c_78: signed(25 downto 0);
  signal c_79: signed(25 downto 0);
  signal c_80: signed(25 downto 0);
  signal c_81: signed(24 downto 0);
  signal c_81_80_2_False_resize: signed(24 downto 0);
  signal c_81_80_2_False_shift: signed(24 downto 0);
  signal c_81_44_0_False_resize: signed(24 downto 0);
  signal c_81_44_0_False_shift: signed(24 downto 0);
  signal c_81_sel: std_logic_vector(0 downto 0);
  signal c_82: signed(25 downto 0);
  signal c_82_i0_resize: signed(25 downto 0);
  signal c_82_i1_resize: signed(25 downto 0);
  signal c_82_i0_shift: signed(25 downto 0);
  signal c_82_i1_shift: signed(25 downto 0);
  signal c_82_arith: signed(25 downto 0);
  signal c_82_oshift: signed(25 downto 0);
  signal c_83: signed(25 downto 0);
  signal c_83_33_1_False_resize: signed(25 downto 0);
  signal c_83_33_1_False_shift: signed(25 downto 0);
  signal c_83_33_0_False_resize: signed(25 downto 0);
  signal c_83_33_0_False_shift: signed(25 downto 0);
  signal c_83_sel: std_logic_vector(0 downto 0);
  signal c_84: signed(25 downto 0);
  signal c_85: signed(25 downto 0);
  signal c_86: signed(25 downto 0);
  signal c_86_85_0_False_resize: signed(25 downto 0);
  signal c_86_85_0_False_shift: signed(25 downto 0);
  signal c_86_82_1_False_resize: signed(25 downto 0);
  signal c_86_82_1_False_shift: signed(25 downto 0);
  signal c_86_sel: std_logic_vector(0 downto 0);
  signal c_87: signed(25 downto 0);
  signal c_88: signed(25 downto 0);
  signal c_89: signed(25 downto 0);
  signal c_90: signed(25 downto 0);
  signal c_91: signed(25 downto 0);
  signal c_92: signed(25 downto 0);
  signal c_93: signed(25 downto 0);
  signal c_93_58_0_False_resize: signed(25 downto 0);
  signal c_93_58_0_False_shift: signed(25 downto 0);
  signal c_93_92_0_False_resize: signed(25 downto 0);
  signal c_93_92_0_False_shift: signed(25 downto 0);
  signal c_93_sel: std_logic_vector(0 downto 0);
  signal c_94: signed(25 downto 0);
  signal c_94_71_0_False_resize: signed(25 downto 0);
  signal c_94_71_0_False_shift: signed(25 downto 0);
  signal c_94_80_0_False_resize: signed(25 downto 0);
  signal c_94_80_0_False_shift: signed(25 downto 0);
  signal c_94_sel: std_logic_vector(0 downto 0);
  signal c_95: signed(23 downto 0);
  signal c_96: signed(23 downto 0);
  signal c_97: signed(23 downto 0);
  signal c_98: signed(23 downto 0);
  signal c_99: signed(23 downto 0);
  signal c_100: signed(23 downto 0);
  signal c_101: signed(24 downto 0);
  signal c_101_100_2_False_resize: signed(24 downto 0);
  signal c_101_100_2_False_shift: signed(24 downto 0);
  signal c_101_44_0_False_resize: signed(24 downto 0);
  signal c_101_44_0_False_shift: signed(24 downto 0);
  signal c_101_sel: std_logic_vector(0 downto 0);
  signal c_102: signed(24 downto 0);
  signal c_103: signed(24 downto 0);
  signal c_104: signed(25 downto 0);
  signal c_104_103_0_False_resize: signed(25 downto 0);
  signal c_104_103_0_False_shift: signed(25 downto 0);
  signal c_104_82_0_False_resize: signed(25 downto 0);
  signal c_104_82_0_False_shift: signed(25 downto 0);
  signal c_104_sel: std_logic_vector(0 downto 0);
  signal c_105: signed(25 downto 0);
  signal c_105_100_2_False_resize: signed(25 downto 0);
  signal c_105_100_2_False_shift: signed(25 downto 0);
  signal c_105_44_0_False_resize: signed(25 downto 0);
  signal c_105_44_0_False_shift: signed(25 downto 0);
  signal c_105_sel: std_logic_vector(0 downto 0);
  signal c_106: signed(25 downto 0);
  signal c_107: signed(25 downto 0);
  signal c_108: signed(25 downto 0);
  signal c_109: signed(25 downto 0);
  signal c_110: signed(25 downto 0);
  signal c_110_58_1_False_resize: signed(25 downto 0);
  signal c_110_58_1_False_shift: signed(25 downto 0);
  signal c_110_109_0_False_resize: signed(25 downto 0);
  signal c_110_109_0_False_shift: signed(25 downto 0);
  signal c_110_sel: std_logic_vector(0 downto 0);
  signal c_111: signed(25 downto 0);
  signal c_112: signed(25 downto 0);
  signal c_113: signed(25 downto 0);
  signal c_114: signed(25 downto 0);
  signal c_115: signed(25 downto 0);
  signal c_116: signed(25 downto 0);
  signal c_116_resize: signed(25 downto 0);
  signal c_117: signed(25 downto 0);
  signal c_117_resize: signed(25 downto 0);
  signal c_118: signed(25 downto 0);
  signal c_119: signed(25 downto 0);
  signal c_120: signed(25 downto 0);
  signal c_121: signed(25 downto 0);
  signal c_122: signed(25 downto 0);
  signal c_123: signed(25 downto 0);
  signal c_123_resize: signed(25 downto 0);
  signal c_124: signed(25 downto 0);
  signal c_124_resize: signed(25 downto 0);
  signal c_125: signed(25 downto 0);
  signal c_126: signed(25 downto 0);
  signal c_127: signed(25 downto 0);
  signal c_127_resize: signed(25 downto 0);
  signal c_128: signed(24 downto 0);
  signal c_129: signed(24 downto 0);
  signal c_130: signed(25 downto 0);
  signal c_130_resize: signed(25 downto 0);
  signal c_131: signed(25 downto 0);
  signal c_132: signed(25 downto 0);
  signal c_133: signed(25 downto 0);
  signal c_134: signed(25 downto 0);
  signal c_135: signed(25 downto 0);
  signal c_135_resize: signed(25 downto 0);
  signal c_136: signed(25 downto 0);
  signal c_136_resize: signed(25 downto 0);
  signal c_137: signed(25 downto 0);
  signal c_138: signed(25 downto 0);
  signal c_139: signed(25 downto 0);
  signal c_139_resize: signed(25 downto 0);
  signal c_140: signed(25 downto 0);
  signal c_140_resize: signed(25 downto 0);
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
  -- output node 0 with id 116
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_116);
    end if;
  end process;
  -- output node 1 with id 117
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_117);
    end if;
  end process;
  -- output node 2 with id 123
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_123);
    end if;
  end process;
  -- output node 3 with id 124
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_124);
    end if;
  end process;
  -- output node 4 with id 127
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_127);
    end if;
  end process;
  -- output node 5 with id 130
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_130);
    end if;
  end process;
  -- output node 6 with id 135
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_135);
    end if;
  end process;
  -- output node 7 with id 136
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_136);
    end if;
  end process;
  -- output node 8 with id 139
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_139);
    end if;
  end process;
  -- output node 9 with id 140
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_140);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [2]]
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  with config_select_1 select c_1_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_1_False_shift;
        when others => c_1 <= c_1_0_0_False_shift;
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
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[9], [15]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 17,
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
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[9], [120]]
  c_4_3_0_False_resize <= resize(c_3, 23);
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  c_4_3_3_False_resize <= resize(c_3, 23);
  c_4_3_3_False_shift <= shift_left(c_4_3_3_False_resize, 3);
  with config_select_3 select c_4_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_3_0_False_shift;
        when others => c_4 <= c_4_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[4], [15]]
  c_6_5_2_False_resize <= resize(c_5, 20);
  c_6_5_2_False_shift <= shift_left(c_6_5_2_False_resize, 2);
  c_6_3_0_False_resize <= c_3;
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_5_2_False_shift;
        when others => c_6 <= c_6_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[76], [945]]
  with config_select_4 select c_7_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 20,
      w_o => 26,
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
      sub_i => c_7_sub_sel,
      x_i => c_4,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[9], [2]]
  c_8_5_1_False_resize <= resize(c_5, 20);
  c_8_5_1_False_shift <= shift_left(c_8_5_1_False_resize, 1);
  c_8_3_0_False_resize <= c_3;
  c_8_3_0_False_shift <= shift_left(c_8_3_0_False_resize, 0);
  with config_select_3 select c_8_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_5_1_False_shift;
        when others => c_8 <= c_8_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[9], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_3 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 10 and associated fundamentals [[585], [113]]
  with config_select_4 select c_10_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
      w_o => 26,
      s_x_i => 6,
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
      x_i => c_8,
      y_i => c_9,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[9], [60]]
  c_11_3_0_False_resize <= resize(c_3, 22);
  c_11_3_0_False_shift <= shift_left(c_11_3_0_False_resize, 0);
  c_11_3_2_False_resize <= resize(c_3, 22);
  c_11_3_2_False_shift <= shift_left(c_11_3_2_False_resize, 2);
  with config_select_3 select c_11_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_3_0_False_shift;
        when others => c_11 <= c_11_3_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 12 and associated fundamentals [[-27], [-180]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 24,
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
      x_i => c_11,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 13 and associated fundamentals [[-27], [113]]
  c_13_12_0_False_resize <= c_12(22 downto 0);
  c_13_12_0_False_shift <= shift_left(c_13_12_0_False_resize, 0);
  c_13_10_0_False_resize <= c_10(22 downto 0);
  c_13_10_0_False_shift <= shift_left(c_13_10_0_False_resize, 0);
  with config_select_5 select c_13_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_12_0_False_shift;
        when others => c_13 <= c_13_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 14 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 16 and associated fundamentals [[-27], [32]]
  c_16_12_0_False_resize <= c_12(20 downto 0);
  c_16_12_0_False_shift <= shift_left(c_16_12_0_False_resize, 0);
  c_16_15_5_False_resize <= resize(c_15, 21);
  c_16_15_5_False_shift <= shift_left(c_16_15_5_False_resize, 5);
  with config_select_5 select c_16_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_12_0_False_shift;
        when others => c_16 <= c_16_15_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 6 with id 17 and associated fundamentals [[-459], [625]]
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_13,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 18 and associated fundamentals [[608], [1]]
  c_18_7_3_False_resize <= c_7;
  c_18_7_3_False_shift <= shift_left(c_18_7_3_False_resize, 3);
  c_18_15_0_False_resize <= resize(c_15, 26);
  c_18_15_0_False_shift <= shift_left(c_18_15_0_False_resize, 0);
  with config_select_5 select c_18_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_7_3_False_shift;
        when others => c_18 <= c_18_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 19 and associated fundamentals [[1], [-180]]
  c_19_12_0_False_resize <= c_12;
  c_19_12_0_False_shift <= shift_left(c_19_12_0_False_resize, 0);
  c_19_15_0_False_resize <= resize(c_15, 24);
  c_19_15_0_False_shift <= shift_left(c_19_15_0_False_resize, 0);
  with config_select_5 select c_19_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_12_0_False_shift;
        when others => c_19 <= c_19_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 6 with id 20 and associated fundamentals [[607], [181]]
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
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
      x_i => c_18,
      y_i => c_19,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 21 and associated fundamentals [[128], [113]]
  c_21_15_7_False_resize <= resize(c_15, 23);
  c_21_15_7_False_shift <= shift_left(c_21_15_7_False_resize, 7);
  c_21_10_0_False_resize <= c_10(22 downto 0);
  c_21_10_0_False_shift <= shift_left(c_21_10_0_False_resize, 0);
  with config_select_5 select c_21_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_15_7_False_shift;
        when others => c_21 <= c_21_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 22 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 23 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 24 and associated fundamentals [[-459], [1]]
  c_24_23_0_False_resize <= resize(c_23, 25);
  c_24_23_0_False_shift <= shift_left(c_24_23_0_False_resize, 0);
  c_24_17_0_False_resize <= c_17(24 downto 0);
  c_24_17_0_False_shift <= shift_left(c_24_17_0_False_resize, 0);
  with config_select_7 select c_24_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_23_0_False_shift;
        when others => c_24 <= c_24_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 25 and associated fundamentals [[128], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 26 and associated fundamentals [[128], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 27 and associated fundamentals [[971], [453]]
  with config_select_8 select c_27_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 25,
      w_o => 26,
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
      sub_i => c_27_sub_sel,
      x_i => c_26,
      y_i => c_24,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 28 and associated fundamentals [[76], [226]]
  c_28_10_1_False_resize <= c_10(23 downto 0);
  c_28_10_1_False_shift <= shift_left(c_28_10_1_False_resize, 1);
  c_28_7_0_False_resize <= c_7(23 downto 0);
  c_28_7_0_False_shift <= shift_left(c_28_7_0_False_resize, 0);
  with config_select_5 select c_28_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "0" => c_28 <= c_28_10_1_False_shift;
        when others => c_28 <= c_28_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 29 and associated fundamentals [[1], [625]]
  c_29_17_0_False_resize <= c_17;
  c_29_17_0_False_shift <= shift_left(c_29_17_0_False_resize, 0);
  c_29_23_0_False_resize <= resize(c_23, 26);
  c_29_23_0_False_shift <= shift_left(c_29_23_0_False_resize, 0);
  with config_select_7 select c_29_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_17_0_False_shift;
        when others => c_29 <= c_29_23_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 30 and associated fundamentals [[76], [226]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 31 and associated fundamentals [[76], [226]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 32 and associated fundamentals [[305], [279]]
  with config_select_8 select c_32_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_32: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 26,
      w_o => 25,
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
      sub_i => c_32_sub_sel,
      x_i => c_31,
      y_i => c_29,
      z_o => c_32_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_32_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 33 and associated fundamentals [[533], [403]]
  with config_select_7 select c_33_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_33: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 26,
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
      sub_i => c_33_sub_sel,
      x_i => c_20,
      y_i => c_17,
      z_o => c_33_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_33_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 34 and associated fundamentals [[9], [1]]
  c_34_3_0_False_resize <= c_3;
  c_34_3_0_False_shift <= shift_left(c_34_3_0_False_resize, 0);
  c_34_5_0_False_resize <= resize(c_5, 20);
  c_34_5_0_False_shift <= shift_left(c_34_5_0_False_resize, 0);
  with config_select_3 select c_34_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_3_0_False_shift;
        when others => c_34 <= c_34_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 35 and associated fundamentals [[607], [181]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 36 and associated fundamentals [[607], [181]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 37 and associated fundamentals [[305], [362]]
  c_37_32_0_False_resize <= c_32;
  c_37_32_0_False_shift <= shift_left(c_37_32_0_False_resize, 0);
  c_37_36_1_False_resize <= c_36(24 downto 0);
  c_37_36_1_False_shift <= shift_left(c_37_36_1_False_resize, 1);
  with config_select_9 select c_37_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "0" => c_37 <= c_37_32_0_False_shift;
        when others => c_37 <= c_37_36_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 38 and associated fundamentals [[9], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 39 and associated fundamentals [[9], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 40 and associated fundamentals [[9], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 41 and associated fundamentals [[9], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 42 and associated fundamentals [[9], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 43 and associated fundamentals [[9], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 10 with id 44 and associated fundamentals [[-269], [-358]]
  inst_adder_node_44: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 25,
      w_o => 25,
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
      x_i => c_43,
      y_i => c_37,
      z_o => c_44_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_44_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 45 and associated fundamentals [[9], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 46 and associated fundamentals [[9], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 47 and associated fundamentals [[9], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 48 and associated fundamentals [[288], [181]]
  c_48_20_0_False_resize <= c_20(24 downto 0);
  c_48_20_0_False_shift <= shift_left(c_48_20_0_False_resize, 0);
  c_48_47_5_False_resize <= resize(c_47, 25);
  c_48_47_5_False_shift <= shift_left(c_48_47_5_False_resize, 5);
  with config_select_7 select c_48_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "0" => c_48 <= c_48_20_0_False_shift;
        when others => c_48 <= c_48_47_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 49 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 50 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 51 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 52 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 53 and associated fundamentals [[-269], [128]]
  c_53_52_7_False_resize <= resize(c_52, 25);
  c_53_52_7_False_shift <= shift_left(c_53_52_7_False_resize, 7);
  c_53_44_0_False_resize <= c_44;
  c_53_44_0_False_shift <= shift_left(c_53_44_0_False_resize, 0);
  with config_select_11 select c_53_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_53_sel is
        when "0" => c_53 <= c_53_52_7_False_shift;
        when others => c_53 <= c_53_44_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 54 and associated fundamentals [[288], [181]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 55 and associated fundamentals [[288], [181]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 56 and associated fundamentals [[288], [181]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 57 and associated fundamentals [[288], [181]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 58 and associated fundamentals [[845], [490]]
  with config_select_12 select c_58_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_58: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
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
      sub_i => c_58_sub_sel,
      x_i => c_57,
      y_i => c_53,
      z_o => c_58_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_58_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 59 and associated fundamentals [[585], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 60 and associated fundamentals [[585], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 61 and associated fundamentals [[585], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 62 and associated fundamentals [[585], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 63 and associated fundamentals [[585], [453]]
  c_63_62_0_False_resize <= c_62;
  c_63_62_0_False_shift <= shift_left(c_63_62_0_False_resize, 0);
  c_63_27_0_False_resize <= c_27;
  c_63_27_0_False_shift <= shift_left(c_63_27_0_False_resize, 0);
  with config_select_9 select c_63_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_63_sel is
        when "0" => c_63 <= c_63_62_0_False_shift;
        when others => c_63 <= c_63_27_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 64 and associated fundamentals [[9], [32]]
  c_64_5_5_False_resize <= resize(c_5, 21);
  c_64_5_5_False_shift <= shift_left(c_64_5_5_False_resize, 5);
  c_64_3_0_False_resize <= resize(c_3, 21);
  c_64_3_0_False_shift <= shift_left(c_64_3_0_False_resize, 0);
  with config_select_3 select c_64_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_64_sel is
        when "0" => c_64 <= c_64_5_5_False_shift;
        when others => c_64 <= c_64_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 65 and associated fundamentals [[9], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 66 and associated fundamentals [[9], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 67 and associated fundamentals [[9], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 68 and associated fundamentals [[9], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 69 and associated fundamentals [[9], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 70 and associated fundamentals [[9], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 10 with id 71 and associated fundamentals [[567], [389]]
  inst_adder_node_71: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 21,
      w_o => 26,
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
      x_i => c_63,
      y_i => c_70,
      z_o => c_71_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_71_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 72 and associated fundamentals [[305], [279]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 73 and associated fundamentals [[305], [279]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_72 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 74 and associated fundamentals [[567], [558]]
  c_74_73_1_False_resize <= resize(c_73, 26);
  c_74_73_1_False_shift <= shift_left(c_74_73_1_False_resize, 1);
  c_74_71_0_False_resize <= c_71;
  c_74_71_0_False_shift <= shift_left(c_74_71_0_False_resize, 0);
  with config_select_11 select c_74_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_74_sel is
        when "0" => c_74 <= c_74_73_1_False_shift;
        when others => c_74 <= c_74_71_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 75 and associated fundamentals [[76], [945]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 76 and associated fundamentals [[76], [945]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 77 and associated fundamentals [[76], [945]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 78 and associated fundamentals [[76], [945]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 79 and associated fundamentals [[76], [945]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 80 and associated fundamentals [[76], [945]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 81 and associated fundamentals [[304], [-358]]
  c_81_80_2_False_resize <= c_80(24 downto 0);
  c_81_80_2_False_shift <= shift_left(c_81_80_2_False_resize, 2);
  c_81_44_0_False_resize <= c_44;
  c_81_44_0_False_shift <= shift_left(c_81_44_0_False_resize, 0);
  with config_select_11 select c_81_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_81_sel is
        when "0" => c_81 <= c_81_80_2_False_shift;
        when others => c_81 <= c_81_44_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 12 with id 82 and associated fundamentals [[263], [916]]
  inst_adder_node_82: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
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
      x_i => c_74,
      y_i => c_81,
      z_o => c_82_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_82_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 83 and associated fundamentals [[533], [806]]
  c_83_33_1_False_resize <= c_33;
  c_83_33_1_False_shift <= shift_left(c_83_33_1_False_resize, 1);
  c_83_33_0_False_resize <= c_33;
  c_83_33_0_False_shift <= shift_left(c_83_33_0_False_resize, 0);
  with config_select_8 select c_83_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_83_sel is
        when "0" => c_83 <= c_83_33_1_False_shift;
        when others => c_83 <= c_83_33_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 84 and associated fundamentals [[567], [389]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_71 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 85 and associated fundamentals [[567], [389]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_84 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 86 and associated fundamentals [[526], [389]]
  c_86_85_0_False_resize <= c_85;
  c_86_85_0_False_shift <= shift_left(c_86_85_0_False_resize, 0);
  c_86_82_1_False_resize <= c_82;
  c_86_82_1_False_shift <= shift_left(c_86_82_1_False_resize, 1);
  with config_select_13 select c_86_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_86_sel is
        when "0" => c_86 <= c_86_85_0_False_shift;
        when others => c_86 <= c_86_82_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 87 and associated fundamentals [[-459], [625]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 88 and associated fundamentals [[-459], [625]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_87 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 89 and associated fundamentals [[-459], [625]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_88 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 90 and associated fundamentals [[-459], [625]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_89 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 91 and associated fundamentals [[-459], [625]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_90 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 92 and associated fundamentals [[-459], [625]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 93 and associated fundamentals [[845], [625]]
  c_93_58_0_False_resize <= c_58;
  c_93_58_0_False_shift <= shift_left(c_93_58_0_False_resize, 0);
  c_93_92_0_False_resize <= c_92;
  c_93_92_0_False_shift <= shift_left(c_93_92_0_False_resize, 0);
  with config_select_13 select c_93_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_93_sel is
        when "0" => c_93 <= c_93_58_0_False_shift;
        when others => c_93 <= c_93_92_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 94 and associated fundamentals [[567], [945]]
  c_94_71_0_False_resize <= c_71;
  c_94_71_0_False_shift <= shift_left(c_94_71_0_False_resize, 0);
  c_94_80_0_False_resize <= c_80;
  c_94_80_0_False_shift <= shift_left(c_94_80_0_False_resize, 0);
  with config_select_11 select c_94_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_94_sel is
        when "0" => c_94 <= c_94_71_0_False_shift;
        when others => c_94 <= c_94_80_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 95 and associated fundamentals [[-27], [-180]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 96 and associated fundamentals [[-27], [-180]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_95 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 97 and associated fundamentals [[-27], [-180]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_96 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 98 and associated fundamentals [[-27], [-180]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_97 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 99 and associated fundamentals [[-27], [-180]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_98 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 100 and associated fundamentals [[-27], [-180]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_99 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 101 and associated fundamentals [[-108], [-358]]
  c_101_100_2_False_resize <= resize(c_100, 25);
  c_101_100_2_False_shift <= shift_left(c_101_100_2_False_resize, 2);
  c_101_44_0_False_resize <= c_44;
  c_101_44_0_False_shift <= shift_left(c_101_44_0_False_resize, 0);
  with config_select_11 select c_101_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_101_sel is
        when "0" => c_101 <= c_101_100_2_False_shift;
        when others => c_101 <= c_101_44_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 102 and associated fundamentals [[305], [279]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 103 and associated fundamentals [[305], [279]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_102 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 104 and associated fundamentals [[305], [916]]
  c_104_103_0_False_resize <= resize(c_103, 26);
  c_104_103_0_False_shift <= shift_left(c_104_103_0_False_resize, 0);
  c_104_82_0_False_resize <= c_82;
  c_104_82_0_False_shift <= shift_left(c_104_82_0_False_resize, 0);
  with config_select_13 select c_104_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_104_sel is
        when "0" => c_104 <= c_104_103_0_False_shift;
        when others => c_104 <= c_104_82_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 105 and associated fundamentals [[-269], [-720]]
  c_105_100_2_False_resize <= resize(c_100, 26);
  c_105_100_2_False_shift <= shift_left(c_105_100_2_False_resize, 2);
  c_105_44_0_False_resize <= resize(c_44, 26);
  c_105_44_0_False_shift <= shift_left(c_105_44_0_False_resize, 0);
  with config_select_11 select c_105_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_105_sel is
        when "0" => c_105 <= c_105_100_2_False_shift;
        when others => c_105 <= c_105_44_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 106 and associated fundamentals [[971], [453]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 107 and associated fundamentals [[971], [453]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_106 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 108 and associated fundamentals [[971], [453]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_108 <= c_107 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 109 and associated fundamentals [[971], [453]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_109 <= c_108 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 110 and associated fundamentals [[971], [980]]
  c_110_58_1_False_resize <= c_58;
  c_110_58_1_False_shift <= shift_left(c_110_58_1_False_resize, 1);
  c_110_109_0_False_resize <= c_109;
  c_110_109_0_False_shift <= shift_left(c_110_109_0_False_resize, 0);
  with config_select_13 select c_110_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_110_sel is
        when "0" => c_110 <= c_110_58_1_False_shift;
        when others => c_110 <= c_110_109_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 111 and associated fundamentals [[533], [806]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_83 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 112 and associated fundamentals [[533], [806]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_111 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 113 and associated fundamentals [[533], [806]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_112 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 114 and associated fundamentals [[533], [806]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_113 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 115 and associated fundamentals [[533], [806]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_114 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 116 and associated fundamentals [[533], [806]]
  c_116_resize <= c_115;
  c_116 <= shift_left(c_116_resize, 0);
  -- node of type 'output' in stage 13 with id 117 and associated fundamentals [[526], [389]]
  c_117_resize <= c_86;
  c_117 <= shift_left(c_117_resize, 0);
  -- node of type 'register' in stage 9 with id 118 and associated fundamentals [[607], [181]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_118 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 119 and associated fundamentals [[607], [181]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_119 <= c_118 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 120 and associated fundamentals [[607], [181]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_120 <= c_119 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 121 and associated fundamentals [[607], [181]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_121 <= c_120 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 122 and associated fundamentals [[607], [181]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_122 <= c_121 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 123 and associated fundamentals [[607], [181]]
  c_123_resize <= c_122;
  c_123 <= shift_left(c_123_resize, 0);
  -- node of type 'output' in stage 13 with id 124 and associated fundamentals [[845], [625]]
  c_124_resize <= c_93;
  c_124 <= shift_left(c_124_resize, 0);
  -- node of type 'register' in stage 12 with id 125 and associated fundamentals [[567], [945]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_125 <= c_94 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 126 and associated fundamentals [[567], [945]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_126 <= c_125 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 127 and associated fundamentals [[567], [945]]
  c_127_resize <= c_126;
  c_127 <= shift_left(c_127_resize, 0);
  -- node of type 'register' in stage 12 with id 128 and associated fundamentals [[-108], [-358]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_128 <= c_101 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 129 and associated fundamentals [[-108], [-358]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_129 <= c_128 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 130 and associated fundamentals [[216], [716]]
  c_130_resize <= resize(c_129, 26);
  c_130 <= -shift_left(c_130_resize, 1);
  -- node of type 'register' in stage 10 with id 131 and associated fundamentals [[585], [453]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_131 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 132 and associated fundamentals [[585], [453]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_132 <= c_131 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 133 and associated fundamentals [[585], [453]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_133 <= c_132 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 134 and associated fundamentals [[585], [453]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_134 <= c_133 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 135 and associated fundamentals [[585], [453]]
  c_135_resize <= c_134;
  c_135 <= shift_left(c_135_resize, 0);
  -- node of type 'output' in stage 13 with id 136 and associated fundamentals [[305], [916]]
  c_136_resize <= c_104;
  c_136 <= shift_left(c_136_resize, 0);
  -- node of type 'register' in stage 12 with id 137 and associated fundamentals [[-269], [-720]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_137 <= c_105 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 138 and associated fundamentals [[-269], [-720]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_138 <= c_137 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 139 and associated fundamentals [[269], [720]]
  c_139_resize <= c_138;
  c_139 <= -shift_left(c_139_resize, 0);
  -- node of type 'output' in stage 13 with id 140 and associated fundamentals [[971], [980]]
  c_140_resize <= c_110;
  c_140 <= shift_left(c_140_resize, 0);
end architecture;
