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
  signal c_1: signed(17 downto 0);
  signal c_1_0_0_False_resize: signed(17 downto 0);
  signal c_1_0_0_False_shift: signed(17 downto 0);
  signal c_1_0_2_False_resize: signed(17 downto 0);
  signal c_1_0_2_False_shift: signed(17 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(20 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_5: signed(20 downto 0);
  signal c_5_3_2_False_resize: signed(20 downto 0);
  signal c_5_3_2_False_shift: signed(20 downto 0);
  signal c_5_4_4_False_resize: signed(20 downto 0);
  signal c_5_4_4_False_shift: signed(20 downto 0);
  signal c_5_3_0_False_resize: signed(20 downto 0);
  signal c_5_3_0_False_shift: signed(20 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(19 downto 0);
  signal c_6_4_0_False_resize: signed(19 downto 0);
  signal c_6_4_0_False_shift: signed(19 downto 0);
  signal c_6_4_4_False_resize: signed(19 downto 0);
  signal c_6_4_4_False_shift: signed(19 downto 0);
  signal c_6_3_0_False_resize: signed(19 downto 0);
  signal c_6_3_0_False_shift: signed(19 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_i0_resize: signed(23 downto 0);
  signal c_7_i1_resize: signed(23 downto 0);
  signal c_7_i0_shift: signed(23 downto 0);
  signal c_7_i1_shift: signed(23 downto 0);
  signal c_7_arith: signed(23 downto 0);
  signal c_7_oshift: signed(23 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(15 downto 0);
  signal c_9: signed(15 downto 0);
  signal c_10: signed(20 downto 0);
  signal c_11: signed(20 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_11_1_False_resize: signed(22 downto 0);
  signal c_12_11_1_False_shift: signed(22 downto 0);
  signal c_12_9_5_False_resize: signed(22 downto 0);
  signal c_12_9_5_False_shift: signed(22 downto 0);
  signal c_12_7_0_False_resize: signed(22 downto 0);
  signal c_12_7_0_False_shift: signed(22 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(20 downto 0);
  signal c_13_3_0_False_resize: signed(20 downto 0);
  signal c_13_3_0_False_shift: signed(20 downto 0);
  signal c_13_4_1_False_resize: signed(20 downto 0);
  signal c_13_4_1_False_shift: signed(20 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(20 downto 0);
  signal c_15: signed(20 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_i0_resize: signed(23 downto 0);
  signal c_16_i1_resize: signed(23 downto 0);
  signal c_16_i0_shift: signed(23 downto 0);
  signal c_16_i1_shift: signed(23 downto 0);
  signal c_16_arith: signed(23 downto 0);
  signal c_16_oshift: signed(23 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(19 downto 0);
  signal c_17_3_0_False_resize: signed(19 downto 0);
  signal c_17_3_0_False_shift: signed(19 downto 0);
  signal c_17_4_4_False_resize: signed(19 downto 0);
  signal c_17_4_4_False_shift: signed(19 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(20 downto 0);
  signal c_19: signed(20 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_16_0_False_resize: signed(23 downto 0);
  signal c_20_16_0_False_shift: signed(23 downto 0);
  signal c_20_19_2_False_resize: signed(23 downto 0);
  signal c_20_19_2_False_shift: signed(23 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(19 downto 0);
  signal c_22: signed(19 downto 0);
  signal c_23: signed(19 downto 0);
  signal c_24: signed(19 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_i0_resize: signed(23 downto 0);
  signal c_25_i1_resize: signed(23 downto 0);
  signal c_25_i0_shift: signed(23 downto 0);
  signal c_25_i1_shift: signed(23 downto 0);
  signal c_25_arith: signed(23 downto 0);
  signal c_25_oshift: signed(23 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(20 downto 0);
  signal c_27: signed(20 downto 0);
  signal c_28: signed(24 downto 0);
  signal c_28_27_7_False_resize: signed(24 downto 0);
  signal c_28_27_7_False_shift: signed(24 downto 0);
  signal c_28_27_5_False_resize: signed(24 downto 0);
  signal c_28_27_5_False_shift: signed(24 downto 0);
  signal c_28_27_1_False_resize: signed(24 downto 0);
  signal c_28_27_1_False_shift: signed(24 downto 0);
  signal c_28_25_0_False_resize: signed(24 downto 0);
  signal c_28_25_0_False_shift: signed(24 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(15 downto 0);
  signal c_30: signed(15 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_30_1_False_resize: signed(23 downto 0);
  signal c_31_30_1_False_shift: signed(23 downto 0);
  signal c_31_30_0_False_resize: signed(23 downto 0);
  signal c_31_30_0_False_shift: signed(23 downto 0);
  signal c_31_16_0_False_resize: signed(23 downto 0);
  signal c_31_16_0_False_shift: signed(23 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_i0_resize: signed(23 downto 0);
  signal c_34_i1_resize: signed(23 downto 0);
  signal c_34_i0_shift: signed(23 downto 0);
  signal c_34_i1_shift: signed(23 downto 0);
  signal c_34_arith: signed(23 downto 0);
  signal c_34_oshift: signed(23 downto 0);
  signal c_34_sub_sel: std_logic;
  signal c_35: signed(15 downto 0);
  signal c_36: signed(15 downto 0);
  signal c_37: signed(15 downto 0);
  signal c_38: signed(15 downto 0);
  signal c_39: signed(20 downto 0);
  signal c_40: signed(20 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_38_0_False_resize: signed(23 downto 0);
  signal c_41_38_0_False_shift: signed(23 downto 0);
  signal c_41_34_0_False_resize: signed(23 downto 0);
  signal c_41_34_0_False_shift: signed(23 downto 0);
  signal c_41_40_4_False_resize: signed(23 downto 0);
  signal c_41_40_4_False_shift: signed(23 downto 0);
  signal c_41_sel: std_logic_vector(1 downto 0);
  signal c_42: signed(21 downto 0);
  signal c_42_30_5_False_resize: signed(21 downto 0);
  signal c_42_30_5_False_shift: signed(21 downto 0);
  signal c_42_19_0_False_resize: signed(21 downto 0);
  signal c_42_19_0_False_shift: signed(21 downto 0);
  signal c_42_16_2_False_resize: signed(21 downto 0);
  signal c_42_16_2_False_shift: signed(21 downto 0);
  signal c_42_sel: std_logic_vector(1 downto 0);
  signal c_43: signed(21 downto 0);
  signal c_44: signed(21 downto 0);
  signal c_45: signed(21 downto 0);
  signal c_46: signed(21 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_i0_resize: signed(23 downto 0);
  signal c_47_i1_resize: signed(23 downto 0);
  signal c_47_i0_shift: signed(23 downto 0);
  signal c_47_i1_shift: signed(23 downto 0);
  signal c_47_arith: signed(23 downto 0);
  signal c_47_oshift: signed(23 downto 0);
  signal c_47_sub_sel: std_logic;
  signal c_48: signed(17 downto 0);
  signal c_48_0_0_False_resize: signed(17 downto 0);
  signal c_48_0_0_False_shift: signed(17 downto 0);
  signal c_48_0_1_False_resize: signed(17 downto 0);
  signal c_48_0_1_False_shift: signed(17 downto 0);
  signal c_48_0_2_False_resize: signed(17 downto 0);
  signal c_48_0_2_False_shift: signed(17 downto 0);
  signal c_48_sel: std_logic_vector(1 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_55_54_0_False_resize: signed(23 downto 0);
  signal c_55_54_0_False_shift: signed(23 downto 0);
  signal c_55_52_0_False_resize: signed(23 downto 0);
  signal c_55_52_0_False_shift: signed(23 downto 0);
  signal c_55_34_0_False_resize: signed(23 downto 0);
  signal c_55_34_0_False_shift: signed(23 downto 0);
  signal c_55_sel: std_logic_vector(1 downto 0);
  signal c_56: signed(17 downto 0);
  signal c_57: signed(17 downto 0);
  signal c_58: signed(17 downto 0);
  signal c_59: signed(17 downto 0);
  signal c_60: signed(17 downto 0);
  signal c_61: signed(17 downto 0);
  signal c_62: signed(17 downto 0);
  signal c_63: signed(17 downto 0);
  signal c_64: signed(17 downto 0);
  signal c_65: signed(17 downto 0);
  signal c_66: signed(23 downto 0);
  signal c_66_i0_resize: signed(23 downto 0);
  signal c_66_i1_resize: signed(23 downto 0);
  signal c_66_i0_shift: signed(23 downto 0);
  signal c_66_i1_shift: signed(23 downto 0);
  signal c_66_arith: signed(23 downto 0);
  signal c_66_oshift: signed(23 downto 0);
  signal c_67: signed(23 downto 0);
  signal c_67_50_0_False_resize: signed(23 downto 0);
  signal c_67_50_0_False_shift: signed(23 downto 0);
  signal c_67_25_0_False_resize: signed(23 downto 0);
  signal c_67_25_0_False_shift: signed(23 downto 0);
  signal c_67_36_6_False_resize: signed(23 downto 0);
  signal c_67_36_6_False_shift: signed(23 downto 0);
  signal c_67_sel: std_logic_vector(1 downto 0);
  signal c_68: signed(23 downto 0);
  signal c_68_i0_resize: signed(23 downto 0);
  signal c_68_i1_resize: signed(23 downto 0);
  signal c_68_i0_shift: signed(23 downto 0);
  signal c_68_i1_shift: signed(23 downto 0);
  signal c_68_arith: signed(23 downto 0);
  signal c_68_oshift: signed(23 downto 0);
  signal c_68_sub_sel: std_logic;
  signal c_69: signed(15 downto 0);
  signal c_70: signed(15 downto 0);
  signal c_71: signed(23 downto 0);
  signal c_72: signed(23 downto 0);
  signal c_73: signed(23 downto 0);
  signal c_74: signed(23 downto 0);
  signal c_75: signed(23 downto 0);
  signal c_76: signed(23 downto 0);
  signal c_77: signed(23 downto 0);
  signal c_78: signed(23 downto 0);
  signal c_79: signed(23 downto 0);
  signal c_79_70_6_False_resize: signed(23 downto 0);
  signal c_79_70_6_False_shift: signed(23 downto 0);
  signal c_79_78_0_False_resize: signed(23 downto 0);
  signal c_79_78_0_False_shift: signed(23 downto 0);
  signal c_79_66_0_False_resize: signed(23 downto 0);
  signal c_79_66_0_False_shift: signed(23 downto 0);
  signal c_79_sel: std_logic_vector(1 downto 0);
  signal c_80: signed(21 downto 0);
  signal c_80_4_0_False_resize: signed(21 downto 0);
  signal c_80_4_0_False_shift: signed(21 downto 0);
  signal c_80_3_0_False_resize: signed(21 downto 0);
  signal c_80_3_0_False_shift: signed(21 downto 0);
  signal c_80_3_4_False_resize: signed(21 downto 0);
  signal c_80_3_4_False_shift: signed(21 downto 0);
  signal c_80_sel: std_logic_vector(1 downto 0);
  signal c_81: signed(21 downto 0);
  signal c_82: signed(21 downto 0);
  signal c_83: signed(21 downto 0);
  signal c_84: signed(21 downto 0);
  signal c_85: signed(21 downto 0);
  signal c_86: signed(21 downto 0);
  signal c_87: signed(21 downto 0);
  signal c_88: signed(21 downto 0);
  signal c_89: signed(21 downto 0);
  signal c_90: signed(21 downto 0);
  signal c_91: signed(23 downto 0);
  signal c_91_i0_resize: signed(23 downto 0);
  signal c_91_i1_resize: signed(23 downto 0);
  signal c_91_i0_shift: signed(23 downto 0);
  signal c_91_i1_shift: signed(23 downto 0);
  signal c_91_arith: signed(23 downto 0);
  signal c_91_oshift: signed(23 downto 0);
  signal c_91_sub_sel: std_logic;
  signal c_92: signed(23 downto 0);
  signal c_92_78_0_False_resize: signed(23 downto 0);
  signal c_92_78_0_False_shift: signed(23 downto 0);
  signal c_92_66_1_False_resize: signed(23 downto 0);
  signal c_92_66_1_False_shift: signed(23 downto 0);
  signal c_92_66_0_False_resize: signed(23 downto 0);
  signal c_92_66_0_False_shift: signed(23 downto 0);
  signal c_92_47_1_False_resize: signed(23 downto 0);
  signal c_92_47_1_False_shift: signed(23 downto 0);
  signal c_92_sel: std_logic_vector(1 downto 0);
  signal c_93: signed(21 downto 0);
  signal c_93_3_0_False_resize: signed(21 downto 0);
  signal c_93_3_0_False_shift: signed(21 downto 0);
  signal c_93_3_1_False_resize: signed(21 downto 0);
  signal c_93_3_1_False_shift: signed(21 downto 0);
  signal c_93_sel: std_logic_vector(0 downto 0);
  signal c_94: signed(21 downto 0);
  signal c_95: signed(21 downto 0);
  signal c_96: signed(21 downto 0);
  signal c_97: signed(21 downto 0);
  signal c_98: signed(21 downto 0);
  signal c_99: signed(21 downto 0);
  signal c_100: signed(21 downto 0);
  signal c_101: signed(21 downto 0);
  signal c_102: signed(21 downto 0);
  signal c_103: signed(21 downto 0);
  signal c_104: signed(23 downto 0);
  signal c_104_i0_resize: signed(23 downto 0);
  signal c_104_i1_resize: signed(23 downto 0);
  signal c_104_i0_shift: signed(23 downto 0);
  signal c_104_i1_shift: signed(23 downto 0);
  signal c_104_arith: signed(23 downto 0);
  signal c_104_oshift: signed(23 downto 0);
  signal c_104_sub_sel: std_logic;
  signal c_105: signed(24 downto 0);
  signal c_105_104_0_False_resize: signed(24 downto 0);
  signal c_105_104_0_False_shift: signed(24 downto 0);
  signal c_105_91_1_False_resize: signed(24 downto 0);
  signal c_105_91_1_False_shift: signed(24 downto 0);
  signal c_105_sel: std_logic_vector(0 downto 0);
  signal c_106: signed(20 downto 0);
  signal c_107: signed(20 downto 0);
  signal c_108: signed(23 downto 0);
  signal c_108_70_2_False_resize: signed(23 downto 0);
  signal c_108_70_2_False_shift: signed(23 downto 0);
  signal c_108_47_1_False_resize: signed(23 downto 0);
  signal c_108_47_1_False_shift: signed(23 downto 0);
  signal c_108_107_0_False_resize: signed(23 downto 0);
  signal c_108_107_0_False_shift: signed(23 downto 0);
  signal c_108_sel: std_logic_vector(1 downto 0);
  signal c_109: signed(23 downto 0);
  signal c_110: signed(23 downto 0);
  signal c_111: signed(23 downto 0);
  signal c_111_i0_resize: signed(23 downto 0);
  signal c_111_i1_resize: signed(23 downto 0);
  signal c_111_i0_shift: signed(23 downto 0);
  signal c_111_i1_shift: signed(23 downto 0);
  signal c_111_arith: signed(23 downto 0);
  signal c_111_oshift: signed(23 downto 0);
  signal c_111_sub_sel: std_logic;
  signal c_112: signed(20 downto 0);
  signal c_113: signed(20 downto 0);
  signal c_114: signed(23 downto 0);
  signal c_115: signed(23 downto 0);
  signal c_116: signed(23 downto 0);
  signal c_116_91_0_False_resize: signed(23 downto 0);
  signal c_116_91_0_False_shift: signed(23 downto 0);
  signal c_116_115_1_False_resize: signed(23 downto 0);
  signal c_116_115_1_False_shift: signed(23 downto 0);
  signal c_116_113_6_False_resize: signed(23 downto 0);
  signal c_116_113_6_False_shift: signed(23 downto 0);
  signal c_116_sel: std_logic_vector(1 downto 0);
  signal c_117: signed(23 downto 0);
  signal c_117_76_1_False_resize: signed(23 downto 0);
  signal c_117_76_1_False_shift: signed(23 downto 0);
  signal c_117_68_0_False_resize: signed(23 downto 0);
  signal c_117_68_0_False_shift: signed(23 downto 0);
  signal c_117_52_0_False_resize: signed(23 downto 0);
  signal c_117_52_0_False_shift: signed(23 downto 0);
  signal c_117_sel: std_logic_vector(1 downto 0);
  signal c_118: signed(15 downto 0);
  signal c_119: signed(15 downto 0);
  signal c_120: signed(23 downto 0);
  signal c_121: signed(23 downto 0);
  signal c_122: signed(23 downto 0);
  signal c_123: signed(23 downto 0);
  signal c_124: signed(23 downto 0);
  signal c_124_123_1_False_resize: signed(23 downto 0);
  signal c_124_123_1_False_shift: signed(23 downto 0);
  signal c_124_91_0_False_resize: signed(23 downto 0);
  signal c_124_91_0_False_shift: signed(23 downto 0);
  signal c_124_104_0_False_resize: signed(23 downto 0);
  signal c_124_104_0_False_shift: signed(23 downto 0);
  signal c_124_119_1_False_resize: signed(23 downto 0);
  signal c_124_119_1_False_shift: signed(23 downto 0);
  signal c_124_sel: std_logic_vector(1 downto 0);
  signal c_125: signed(23 downto 0);
  signal c_126: signed(23 downto 0);
  signal c_127: signed(23 downto 0);
  signal c_128: signed(23 downto 0);
  signal c_129: signed(23 downto 0);
  signal c_130: signed(23 downto 0);
  signal c_131: signed(23 downto 0);
  signal c_131_111_0_False_resize: signed(23 downto 0);
  signal c_131_111_0_False_shift: signed(23 downto 0);
  signal c_131_130_0_False_resize: signed(23 downto 0);
  signal c_131_130_0_False_shift: signed(23 downto 0);
  signal c_131_128_0_False_resize: signed(23 downto 0);
  signal c_131_128_0_False_shift: signed(23 downto 0);
  signal c_131_sel: std_logic_vector(1 downto 0);
  signal c_132: signed(23 downto 0);
  signal c_132_123_0_False_resize: signed(23 downto 0);
  signal c_132_123_0_False_shift: signed(23 downto 0);
  signal c_132_91_0_False_resize: signed(23 downto 0);
  signal c_132_91_0_False_shift: signed(23 downto 0);
  signal c_132_sel: std_logic_vector(0 downto 0);
  signal c_133: signed(23 downto 0);
  signal c_134: signed(23 downto 0);
  signal c_135: signed(23 downto 0);
  signal c_135_119_2_False_resize: signed(23 downto 0);
  signal c_135_119_2_False_shift: signed(23 downto 0);
  signal c_135_134_0_False_resize: signed(23 downto 0);
  signal c_135_134_0_False_shift: signed(23 downto 0);
  signal c_135_104_0_False_resize: signed(23 downto 0);
  signal c_135_104_0_False_shift: signed(23 downto 0);
  signal c_135_sel: std_logic_vector(1 downto 0);
  signal c_136: signed(23 downto 0);
  signal c_136_34_0_False_resize: signed(23 downto 0);
  signal c_136_34_0_False_shift: signed(23 downto 0);
  signal c_136_54_0_False_resize: signed(23 downto 0);
  signal c_136_54_0_False_shift: signed(23 downto 0);
  signal c_136_54_1_False_resize: signed(23 downto 0);
  signal c_136_54_1_False_shift: signed(23 downto 0);
  signal c_136_sel: std_logic_vector(1 downto 0);
  signal c_137: signed(23 downto 0);
  signal c_138: signed(23 downto 0);
  signal c_139: signed(23 downto 0);
  signal c_140: signed(23 downto 0);
  signal c_141: signed(23 downto 0);
  signal c_142: signed(23 downto 0);
  signal c_143: signed(23 downto 0);
  signal c_143_111_0_False_resize: signed(23 downto 0);
  signal c_143_111_0_False_shift: signed(23 downto 0);
  signal c_143_142_0_False_resize: signed(23 downto 0);
  signal c_143_142_0_False_shift: signed(23 downto 0);
  signal c_143_sel: std_logic_vector(0 downto 0);
  signal c_144: signed(23 downto 0);
  signal c_145: signed(23 downto 0);
  signal c_146: signed(23 downto 0);
  signal c_147: signed(23 downto 0);
  signal c_148: signed(23 downto 0);
  signal c_148_47_0_False_resize: signed(23 downto 0);
  signal c_148_47_0_False_shift: signed(23 downto 0);
  signal c_148_145_0_False_resize: signed(23 downto 0);
  signal c_148_145_0_False_shift: signed(23 downto 0);
  signal c_148_147_0_False_resize: signed(23 downto 0);
  signal c_148_147_0_False_shift: signed(23 downto 0);
  signal c_148_sel: std_logic_vector(1 downto 0);
  signal c_149: signed(23 downto 0);
  signal c_150: signed(23 downto 0);
  signal c_151: signed(23 downto 0);
  signal c_151_104_0_False_resize: signed(23 downto 0);
  signal c_151_104_0_False_shift: signed(23 downto 0);
  signal c_151_126_0_False_resize: signed(23 downto 0);
  signal c_151_126_0_False_shift: signed(23 downto 0);
  signal c_151_113_2_False_resize: signed(23 downto 0);
  signal c_151_113_2_False_shift: signed(23 downto 0);
  signal c_151_150_0_False_resize: signed(23 downto 0);
  signal c_151_150_0_False_shift: signed(23 downto 0);
  signal c_151_sel: std_logic_vector(1 downto 0);
  signal c_152: signed(23 downto 0);
  signal c_153: signed(23 downto 0);
  signal c_154: signed(23 downto 0);
  signal c_154_resize: signed(23 downto 0);
  signal c_155: signed(23 downto 0);
  signal c_156: signed(23 downto 0);
  signal c_157: signed(23 downto 0);
  signal c_158: signed(23 downto 0);
  signal c_159: signed(23 downto 0);
  signal c_160: signed(23 downto 0);
  signal c_161: signed(23 downto 0);
  signal c_161_resize: signed(23 downto 0);
  signal c_162: signed(23 downto 0);
  signal c_163: signed(23 downto 0);
  signal c_164: signed(23 downto 0);
  signal c_164_resize: signed(23 downto 0);
  signal c_165: signed(23 downto 0);
  signal c_165_resize: signed(23 downto 0);
  signal c_166: signed(23 downto 0);
  signal c_167: signed(23 downto 0);
  signal c_168: signed(23 downto 0);
  signal c_168_resize: signed(23 downto 0);
  signal c_169: signed(23 downto 0);
  signal c_170: signed(23 downto 0);
  signal c_171: signed(23 downto 0);
  signal c_171_resize: signed(23 downto 0);
  signal c_172: signed(23 downto 0);
  signal c_173: signed(23 downto 0);
  signal c_174: signed(23 downto 0);
  signal c_175: signed(23 downto 0);
  signal c_176: signed(23 downto 0);
  signal c_177: signed(23 downto 0);
  signal c_178: signed(23 downto 0);
  signal c_178_resize: signed(23 downto 0);
  signal c_179: signed(23 downto 0);
  signal c_179_resize: signed(23 downto 0);
  signal c_180: signed(23 downto 0);
  signal c_181: signed(23 downto 0);
  signal c_182: signed(23 downto 0);
  signal c_183: signed(23 downto 0);
  signal c_184: signed(23 downto 0);
  signal c_184_resize: signed(23 downto 0);
  signal c_185: signed(23 downto 0);
  signal c_186: signed(23 downto 0);
  signal c_187: signed(23 downto 0);
  signal c_187_resize: signed(23 downto 0);
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
  -- output node 0 with id 154
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_154);
    end if;
  end process;
  -- output node 1 with id 161
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_161);
    end if;
  end process;
  -- output node 2 with id 164
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_164);
    end if;
  end process;
  -- output node 3 with id 165
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_165);
    end if;
  end process;
  -- output node 4 with id 168
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_168);
    end if;
  end process;
  -- output node 5 with id 171
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_171);
    end if;
  end process;
  -- output node 6 with id 178
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_178);
    end if;
  end process;
  -- output node 7 with id 179
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_179);
    end if;
  end process;
  -- output node 8 with id 184
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_184);
    end if;
  end process;
  -- output node 9 with id 187
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_187);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[4], [1], [1], [1]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "11",
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
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[17], [3], [5], [3]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
      w_o => 21,
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
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[17], [16], [20], [12]]
  c_5_3_2_False_resize <= c_3;
  c_5_3_2_False_shift <= shift_left(c_5_3_2_False_resize, 2);
  c_5_4_4_False_resize <= resize(c_4, 21);
  c_5_4_4_False_shift <= shift_left(c_5_4_4_False_resize, 4);
  c_5_3_0_False_resize <= c_3;
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  with config_select_3 select c_5_sel <= 
    "00" when "10",
    "00" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_3_2_False_shift;
        when "01" => c_5 <= c_5_4_4_False_shift;
        when others => c_5 <= c_5_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[1], [3], [1], [16]]
  c_6_4_0_False_resize <= resize(c_4, 20);
  c_6_4_0_False_shift <= shift_left(c_6_4_0_False_resize, 0);
  c_6_4_4_False_resize <= resize(c_4, 20);
  c_6_4_4_False_shift <= shift_left(c_6_4_4_False_resize, 4);
  c_6_3_0_False_resize <= c_3(19 downto 0);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "00" when "00",
    "00" when "10",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_4_0_False_shift;
        when "01" => c_6 <= c_6_4_4_False_shift;
        when others => c_6 <= c_6_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[137], [125], [161], [80]]
  with config_select_4 select c_7_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 20,
      w_o => 24,
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
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 9 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[17], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[17], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 12 and associated fundamentals [[34], [6], [32], [80]]
  c_12_11_1_False_resize <= resize(c_11, 23);
  c_12_11_1_False_shift <= shift_left(c_12_11_1_False_resize, 1);
  c_12_9_5_False_resize <= resize(c_9, 23);
  c_12_9_5_False_shift <= shift_left(c_12_9_5_False_resize, 5);
  c_12_7_0_False_resize <= c_7(22 downto 0);
  c_12_7_0_False_shift <= shift_left(c_12_7_0_False_resize, 0);
  with config_select_5 select c_12_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "00" => c_12 <= c_12_11_1_False_shift;
        when "01" => c_12 <= c_12_9_5_False_shift;
        when others => c_12 <= c_12_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[17], [2], [5], [3]]
  c_13_3_0_False_resize <= c_3;
  c_13_3_0_False_shift <= shift_left(c_13_3_0_False_resize, 0);
  c_13_4_1_False_resize <= resize(c_4, 21);
  c_13_4_1_False_shift <= shift_left(c_13_4_1_False_resize, 1);
  with config_select_3 select c_13_sel <= 
    "0" when "11",
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_3_0_False_shift;
        when others => c_13 <= c_13_4_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 14 and associated fundamentals [[17], [2], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 15 and associated fundamentals [[17], [2], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 16 and associated fundamentals [[85], [14], [59], [163]]
  with config_select_6 select c_16_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
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
      sub_i => c_16_sub_sel,
      x_i => c_12,
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 17 and associated fundamentals [[16], [16], [16], [3]]
  c_17_3_0_False_resize <= c_3(19 downto 0);
  c_17_3_0_False_shift <= shift_left(c_17_3_0_False_resize, 0);
  c_17_4_4_False_resize <= resize(c_4, 20);
  c_17_4_4_False_shift <= shift_left(c_17_4_4_False_resize, 4);
  with config_select_3 select c_17_sel <= 
    "0" when "11",
    "1" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_3_0_False_shift;
        when others => c_17 <= c_17_4_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[17], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 19 and associated fundamentals [[17], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 20 and associated fundamentals [[85], [14], [20], [163]]
  c_20_16_0_False_resize <= c_16;
  c_20_16_0_False_shift <= shift_left(c_20_16_0_False_resize, 0);
  c_20_19_2_False_resize <= resize(c_19, 24);
  c_20_19_2_False_shift <= shift_left(c_20_19_2_False_resize, 2);
  with config_select_7 select c_20_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_16_0_False_shift;
        when others => c_20 <= c_20_19_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 21 and associated fundamentals [[16], [16], [16], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 22 and associated fundamentals [[16], [16], [16], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 23 and associated fundamentals [[16], [16], [16], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 24 and associated fundamentals [[16], [16], [16], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 25 and associated fundamentals [[213], [114], [108], [187]]
  with config_select_8 select c_25_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 24,
      w_o => 24,
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
      sub_i => c_25_sub_sel,
      x_i => c_24,
      y_i => c_20,
      z_o => c_25_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 26 and associated fundamentals [[17], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 27 and associated fundamentals [[17], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 28 and associated fundamentals [[213], [96], [10], [384]]
  c_28_27_7_False_resize <= resize(c_27, 25);
  c_28_27_7_False_shift <= shift_left(c_28_27_7_False_resize, 7);
  c_28_27_5_False_resize <= resize(c_27, 25);
  c_28_27_5_False_shift <= shift_left(c_28_27_5_False_resize, 5);
  c_28_27_1_False_resize <= resize(c_27, 25);
  c_28_27_1_False_shift <= shift_left(c_28_27_1_False_resize, 1);
  c_28_25_0_False_resize <= resize(c_25, 25);
  c_28_25_0_False_shift <= shift_left(c_28_25_0_False_resize, 0);
  with config_select_9 select c_28_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "00" => c_28 <= c_28_27_7_False_shift;
        when "01" => c_28 <= c_28_27_5_False_shift;
        when "10" => c_28 <= c_28_27_1_False_shift;
        when others => c_28 <= c_28_25_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 29 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 30 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 31 and associated fundamentals [[2], [1], [1], [163]]
  c_31_30_1_False_resize <= resize(c_30, 24);
  c_31_30_1_False_shift <= shift_left(c_31_30_1_False_resize, 1);
  c_31_30_0_False_resize <= resize(c_30, 24);
  c_31_30_0_False_shift <= shift_left(c_31_30_0_False_resize, 0);
  c_31_16_0_False_resize <= c_16;
  c_31_16_0_False_shift <= shift_left(c_31_16_0_False_resize, 0);
  with config_select_7 select c_31_sel <= 
    "00" when "00",
    "01" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "00" => c_31 <= c_31_30_1_False_shift;
        when "01" => c_31 <= c_31_30_0_False_shift;
        when others => c_31 <= c_31_16_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 32 and associated fundamentals [[2], [1], [1], [163]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 33 and associated fundamentals [[2], [1], [1], [163]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 34 and associated fundamentals [[215], [95], [11], [221]]
  with config_select_10 select c_34_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_34: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_34_sub_sel,
      x_i => c_28,
      y_i => c_33,
      z_o => c_34_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_34_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 35 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 36 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 37 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 38 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 39 and associated fundamentals [[17], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 40 and associated fundamentals [[17], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 41 and associated fundamentals [[215], [1], [1], [48]]
  c_41_38_0_False_resize <= resize(c_38, 24);
  c_41_38_0_False_shift <= shift_left(c_41_38_0_False_resize, 0);
  c_41_34_0_False_resize <= c_34;
  c_41_34_0_False_shift <= shift_left(c_41_34_0_False_resize, 0);
  c_41_40_4_False_resize <= resize(c_40, 24);
  c_41_40_4_False_shift <= shift_left(c_41_40_4_False_resize, 4);
  with config_select_11 select c_41_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "00" => c_41 <= c_41_38_0_False_shift;
        when "01" => c_41 <= c_41_34_0_False_shift;
        when others => c_41 <= c_41_40_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 42 and associated fundamentals [[32], [56], [32], [3]]
  c_42_30_5_False_resize <= resize(c_30, 22);
  c_42_30_5_False_shift <= shift_left(c_42_30_5_False_resize, 5);
  c_42_19_0_False_resize <= resize(c_19, 22);
  c_42_19_0_False_shift <= shift_left(c_42_19_0_False_resize, 0);
  c_42_16_2_False_resize <= c_16(21 downto 0);
  c_42_16_2_False_shift <= shift_left(c_42_16_2_False_resize, 2);
  with config_select_7 select c_42_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "00" => c_42 <= c_42_30_5_False_shift;
        when "01" => c_42 <= c_42_19_0_False_shift;
        when others => c_42 <= c_42_16_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 43 and associated fundamentals [[32], [56], [32], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 44 and associated fundamentals [[32], [56], [32], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 45 and associated fundamentals [[32], [56], [32], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 46 and associated fundamentals [[32], [56], [32], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 47 and associated fundamentals [[151], [113], [65], [42]]
  with config_select_12 select c_47_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_47: entity work.adder_node
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
      sub_i => c_47_sub_sel,
      x_i => c_41,
      y_i => c_46,
      z_o => c_47_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_47_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 48 and associated fundamentals [[4], [2], [2], [1]]
  c_48_0_0_False_resize <= resize(c_0, 18);
  c_48_0_0_False_shift <= shift_left(c_48_0_0_False_resize, 0);
  c_48_0_1_False_resize <= resize(c_0, 18);
  c_48_0_1_False_shift <= shift_left(c_48_0_1_False_resize, 1);
  c_48_0_2_False_resize <= resize(c_0, 18);
  c_48_0_2_False_shift <= shift_left(c_48_0_2_False_resize, 2);
  with config_select_1 select c_48_sel <= 
    "00" when "11",
    "01" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "00" => c_48 <= c_48_0_0_False_shift;
        when "01" => c_48 <= c_48_0_1_False_shift;
        when others => c_48 <= c_48_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 49 and associated fundamentals [[85], [14], [59], [163]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 50 and associated fundamentals [[85], [14], [59], [163]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 51 and associated fundamentals [[85], [14], [59], [163]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 52 and associated fundamentals [[85], [14], [59], [163]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 53 and associated fundamentals [[213], [114], [108], [187]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 54 and associated fundamentals [[213], [114], [108], [187]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 55 and associated fundamentals [[215], [114], [59], [187]]
  c_55_54_0_False_resize <= c_54;
  c_55_54_0_False_shift <= shift_left(c_55_54_0_False_resize, 0);
  c_55_52_0_False_resize <= c_52;
  c_55_52_0_False_shift <= shift_left(c_55_52_0_False_resize, 0);
  c_55_34_0_False_resize <= c_34;
  c_55_34_0_False_shift <= shift_left(c_55_34_0_False_resize, 0);
  with config_select_11 select c_55_sel <= 
    "00" when "11",
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_55_sel is
        when "00" => c_55 <= c_55_54_0_False_shift;
        when "01" => c_55 <= c_55_52_0_False_shift;
        when others => c_55 <= c_55_34_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 56 and associated fundamentals [[4], [2], [2], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 57 and associated fundamentals [[4], [2], [2], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 58 and associated fundamentals [[4], [2], [2], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 59 and associated fundamentals [[4], [2], [2], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 60 and associated fundamentals [[4], [2], [2], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 61 and associated fundamentals [[4], [2], [2], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 62 and associated fundamentals [[4], [2], [2], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 63 and associated fundamentals [[4], [2], [2], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 64 and associated fundamentals [[4], [2], [2], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 65 and associated fundamentals [[4], [2], [2], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'add' in stage 12 with id 66 and associated fundamentals [[231], [122], [67], [191]]
  inst_adder_node_66: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 24,
      w_o => 24,
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
      x_i => c_65,
      y_i => c_55,
      z_o => c_66_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_66_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 67 and associated fundamentals [[213], [14], [59], [64]]
  c_67_50_0_False_resize <= c_50;
  c_67_50_0_False_shift <= shift_left(c_67_50_0_False_resize, 0);
  c_67_25_0_False_resize <= c_25;
  c_67_25_0_False_shift <= shift_left(c_67_25_0_False_resize, 0);
  c_67_36_6_False_resize <= resize(c_36, 24);
  c_67_36_6_False_shift <= shift_left(c_67_36_6_False_resize, 6);
  with config_select_9 select c_67_sel <= 
    "00" when "10",
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_67_sel is
        when "00" => c_67 <= c_67_50_0_False_shift;
        when "01" => c_67 <= c_67_25_0_False_shift;
        when others => c_67 <= c_67_36_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 68 and associated fundamentals [[214], [15], [58], [63]]
  with config_select_10 select c_68_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_68: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 16,
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
      sub_i => c_68_sub_sel,
      x_i => c_67,
      y_i => c_37,
      z_o => c_68_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_68_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 69 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 70 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 71 and associated fundamentals [[137], [125], [161], [80]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 72 and associated fundamentals [[137], [125], [161], [80]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 73 and associated fundamentals [[137], [125], [161], [80]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_72 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 74 and associated fundamentals [[137], [125], [161], [80]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 75 and associated fundamentals [[137], [125], [161], [80]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 76 and associated fundamentals [[137], [125], [161], [80]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 77 and associated fundamentals [[137], [125], [161], [80]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 78 and associated fundamentals [[137], [125], [161], [80]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 79 and associated fundamentals [[64], [64], [161], [191]]
  c_79_70_6_False_resize <= resize(c_70, 24);
  c_79_70_6_False_shift <= shift_left(c_79_70_6_False_resize, 6);
  c_79_78_0_False_resize <= c_78;
  c_79_78_0_False_shift <= shift_left(c_79_78_0_False_resize, 0);
  c_79_66_0_False_resize <= c_66;
  c_79_66_0_False_shift <= shift_left(c_79_66_0_False_resize, 0);
  with config_select_13 select c_79_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_79_sel is
        when "00" => c_79 <= c_79_70_6_False_shift;
        when "01" => c_79 <= c_79_78_0_False_shift;
        when others => c_79 <= c_79_66_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 80 and associated fundamentals [[17], [3], [1], [48]]
  c_80_4_0_False_resize <= resize(c_4, 22);
  c_80_4_0_False_shift <= shift_left(c_80_4_0_False_resize, 0);
  c_80_3_0_False_resize <= resize(c_3, 22);
  c_80_3_0_False_shift <= shift_left(c_80_3_0_False_resize, 0);
  c_80_3_4_False_resize <= resize(c_3, 22);
  c_80_3_4_False_shift <= shift_left(c_80_3_4_False_resize, 4);
  with config_select_3 select c_80_sel <= 
    "00" when "10",
    "01" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_80_sel is
        when "00" => c_80 <= c_80_4_0_False_shift;
        when "01" => c_80 <= c_80_3_0_False_shift;
        when others => c_80 <= c_80_3_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 81 and associated fundamentals [[17], [3], [1], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_80 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 82 and associated fundamentals [[17], [3], [1], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_81 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 83 and associated fundamentals [[17], [3], [1], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_82 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 84 and associated fundamentals [[17], [3], [1], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_83 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 85 and associated fundamentals [[17], [3], [1], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_84 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 86 and associated fundamentals [[17], [3], [1], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_85 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 87 and associated fundamentals [[17], [3], [1], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_86 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 88 and associated fundamentals [[17], [3], [1], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_87 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 89 and associated fundamentals [[17], [3], [1], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_88 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 90 and associated fundamentals [[17], [3], [1], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_89 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 91 and associated fundamentals [[47], [67], [162], [239]]
  with config_select_14 select c_91_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_91: entity work.adder_node
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
      sub_i => c_91_sub_sel,
      x_i => c_79,
      y_i => c_90,
      z_o => c_91_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_91_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 92 and associated fundamentals [[231], [226], [134], [80]]
  c_92_78_0_False_resize <= c_78;
  c_92_78_0_False_shift <= shift_left(c_92_78_0_False_resize, 0);
  c_92_66_1_False_resize <= c_66;
  c_92_66_1_False_shift <= shift_left(c_92_66_1_False_resize, 1);
  c_92_66_0_False_resize <= c_66;
  c_92_66_0_False_shift <= shift_left(c_92_66_0_False_resize, 0);
  c_92_47_1_False_resize <= c_47;
  c_92_47_1_False_shift <= shift_left(c_92_47_1_False_resize, 1);
  with config_select_13 select c_92_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_92_sel is
        when "00" => c_92 <= c_92_78_0_False_shift;
        when "01" => c_92 <= c_92_66_1_False_shift;
        when "10" => c_92 <= c_92_66_0_False_shift;
        when others => c_92 <= c_92_47_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 93 and associated fundamentals [[34], [3], [5], [3]]
  c_93_3_0_False_resize <= resize(c_3, 22);
  c_93_3_0_False_shift <= shift_left(c_93_3_0_False_resize, 0);
  c_93_3_1_False_resize <= resize(c_3, 22);
  c_93_3_1_False_shift <= shift_left(c_93_3_1_False_resize, 1);
  with config_select_3 select c_93_sel <= 
    "0" when "11",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_93_sel is
        when "0" => c_93 <= c_93_3_0_False_shift;
        when others => c_93 <= c_93_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 94 and associated fundamentals [[34], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_93 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 95 and associated fundamentals [[34], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_94 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 96 and associated fundamentals [[34], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_95 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 97 and associated fundamentals [[34], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_96 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 98 and associated fundamentals [[34], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_97 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 99 and associated fundamentals [[34], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_98 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 100 and associated fundamentals [[34], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_99 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 101 and associated fundamentals [[34], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_100 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 102 and associated fundamentals [[34], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_101 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 103 and associated fundamentals [[34], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_102 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 104 and associated fundamentals [[163], [232], [124], [74]]
  with config_select_14 select c_104_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_104: entity work.adder_node
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
      sub_i => c_104_sub_sel,
      x_i => c_92,
      y_i => c_103,
      z_o => c_104_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_104_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 105 and associated fundamentals [[163], [232], [324], [74]]
  c_105_104_0_False_resize <= resize(c_104, 25);
  c_105_104_0_False_shift <= shift_left(c_105_104_0_False_resize, 0);
  c_105_91_1_False_resize <= resize(c_91, 25);
  c_105_91_1_False_shift <= shift_left(c_105_91_1_False_resize, 1);
  with config_select_15 select c_105_sel <= 
    "0" when "11",
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_105_sel is
        when "0" => c_105 <= c_105_104_0_False_shift;
        when others => c_105 <= c_105_91_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 106 and associated fundamentals [[17], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 107 and associated fundamentals [[17], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_106 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 108 and associated fundamentals [[4], [3], [130], [4]]
  c_108_70_2_False_resize <= resize(c_70, 24);
  c_108_70_2_False_shift <= shift_left(c_108_70_2_False_resize, 2);
  c_108_47_1_False_resize <= c_47;
  c_108_47_1_False_shift <= shift_left(c_108_47_1_False_resize, 1);
  c_108_107_0_False_resize <= resize(c_107, 24);
  c_108_107_0_False_shift <= shift_left(c_108_107_0_False_resize, 0);
  with config_select_13 select c_108_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_108_sel is
        when "00" => c_108 <= c_108_70_2_False_shift;
        when "01" => c_108 <= c_108_47_1_False_shift;
        when others => c_108 <= c_108_107_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 109 and associated fundamentals [[4], [3], [130], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_109 <= c_108 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 110 and associated fundamentals [[4], [3], [130], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_110 <= c_109 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 16 with id 111 and associated fundamentals [[159], [235], [194], [78]]
  with config_select_16 select c_111_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_111: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_111_sub_sel,
      x_i => c_105,
      y_i => c_110,
      z_o => c_111_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_111_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 112 and associated fundamentals [[17], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_107 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 113 and associated fundamentals [[17], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_112 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 114 and associated fundamentals [[231], [122], [67], [191]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 115 and associated fundamentals [[231], [122], [67], [191]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_114 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 116 and associated fundamentals [[47], [244], [134], [192]]
  c_116_91_0_False_resize <= c_91;
  c_116_91_0_False_shift <= shift_left(c_116_91_0_False_resize, 0);
  c_116_115_1_False_resize <= c_115;
  c_116_115_1_False_shift <= shift_left(c_116_115_1_False_resize, 1);
  c_116_113_6_False_resize <= resize(c_113, 24);
  c_116_113_6_False_shift <= shift_left(c_116_113_6_False_resize, 6);
  with config_select_15 select c_116_sel <= 
    "00" when "00",
    "01" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_116_sel is
        when "00" => c_116 <= c_116_91_0_False_shift;
        when "01" => c_116 <= c_116_115_1_False_shift;
        when others => c_116 <= c_116_113_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 117 and associated fundamentals [[85], [250], [58], [160]]
  c_117_76_1_False_resize <= c_76;
  c_117_76_1_False_shift <= shift_left(c_117_76_1_False_resize, 1);
  c_117_68_0_False_resize <= c_68;
  c_117_68_0_False_shift <= shift_left(c_117_68_0_False_resize, 0);
  c_117_52_0_False_resize <= c_52;
  c_117_52_0_False_shift <= shift_left(c_117_52_0_False_resize, 0);
  with config_select_11 select c_117_sel <= 
    "00" when "01",
    "00" when "11",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_117_sel is
        when "00" => c_117 <= c_117_76_1_False_shift;
        when "01" => c_117 <= c_117_68_0_False_shift;
        when others => c_117 <= c_117_52_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 118 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_118 <= c_70 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 119 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_119 <= c_118 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 120 and associated fundamentals [[214], [15], [58], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_120 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 121 and associated fundamentals [[214], [15], [58], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_121 <= c_120 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 122 and associated fundamentals [[214], [15], [58], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_122 <= c_121 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 123 and associated fundamentals [[214], [15], [58], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_123 <= c_122 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 124 and associated fundamentals [[163], [67], [2], [126]]
  c_124_123_1_False_resize <= c_123;
  c_124_123_1_False_shift <= shift_left(c_124_123_1_False_resize, 1);
  c_124_91_0_False_resize <= c_91;
  c_124_91_0_False_shift <= shift_left(c_124_91_0_False_resize, 0);
  c_124_104_0_False_resize <= c_104;
  c_124_104_0_False_shift <= shift_left(c_124_104_0_False_resize, 0);
  c_124_119_1_False_resize <= resize(c_119, 24);
  c_124_119_1_False_shift <= shift_left(c_124_119_1_False_resize, 1);
  with config_select_15 select c_124_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_124_sel is
        when "00" => c_124 <= c_124_123_1_False_shift;
        when "01" => c_124 <= c_124_91_0_False_shift;
        when "10" => c_124 <= c_124_104_0_False_shift;
        when others => c_124 <= c_124_119_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 125 and associated fundamentals [[137], [125], [161], [80]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_125 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 126 and associated fundamentals [[137], [125], [161], [80]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_126 <= c_125 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 127 and associated fundamentals [[137], [125], [161], [80]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_127 <= c_126 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 128 and associated fundamentals [[137], [125], [161], [80]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_128 <= c_127 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 129 and associated fundamentals [[231], [122], [67], [191]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_129 <= c_115 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 130 and associated fundamentals [[231], [122], [67], [191]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_130 <= c_129 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 131 and associated fundamentals [[231], [235], [161], [191]]
  c_131_111_0_False_resize <= c_111;
  c_131_111_0_False_shift <= shift_left(c_131_111_0_False_resize, 0);
  c_131_130_0_False_resize <= c_130;
  c_131_130_0_False_shift <= shift_left(c_131_130_0_False_resize, 0);
  c_131_128_0_False_resize <= c_128;
  c_131_128_0_False_shift <= shift_left(c_131_128_0_False_resize, 0);
  with config_select_17 select c_131_sel <= 
    "00" when "01",
    "01" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_131_sel is
        when "00" => c_131 <= c_131_111_0_False_shift;
        when "01" => c_131 <= c_131_130_0_False_shift;
        when others => c_131 <= c_131_128_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 132 and associated fundamentals [[214], [15], [162], [239]]
  c_132_123_0_False_resize <= c_123;
  c_132_123_0_False_shift <= shift_left(c_132_123_0_False_resize, 0);
  c_132_91_0_False_resize <= c_91;
  c_132_91_0_False_shift <= shift_left(c_132_91_0_False_resize, 0);
  with config_select_15 select c_132_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_132_sel is
        when "0" => c_132 <= c_132_123_0_False_shift;
        when others => c_132 <= c_132_91_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 133 and associated fundamentals [[151], [113], [65], [42]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_133 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 134 and associated fundamentals [[151], [113], [65], [42]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_134 <= c_133 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 135 and associated fundamentals [[151], [232], [124], [4]]
  c_135_119_2_False_resize <= resize(c_119, 24);
  c_135_119_2_False_shift <= shift_left(c_135_119_2_False_resize, 2);
  c_135_134_0_False_resize <= c_134;
  c_135_134_0_False_shift <= shift_left(c_135_134_0_False_resize, 0);
  c_135_104_0_False_resize <= c_104;
  c_135_104_0_False_shift <= shift_left(c_135_104_0_False_resize, 0);
  with config_select_15 select c_135_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_135_sel is
        when "00" => c_135 <= c_135_119_2_False_shift;
        when "01" => c_135 <= c_135_134_0_False_shift;
        when others => c_135 <= c_135_104_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 136 and associated fundamentals [[213], [95], [216], [221]]
  c_136_34_0_False_resize <= c_34;
  c_136_34_0_False_shift <= shift_left(c_136_34_0_False_resize, 0);
  c_136_54_0_False_resize <= c_54;
  c_136_54_0_False_shift <= shift_left(c_136_54_0_False_resize, 0);
  c_136_54_1_False_resize <= c_54;
  c_136_54_1_False_shift <= shift_left(c_136_54_1_False_resize, 1);
  with config_select_11 select c_136_sel <= 
    "00" when "11",
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_136_sel is
        when "00" => c_136 <= c_136_34_0_False_shift;
        when "01" => c_136 <= c_136_54_0_False_shift;
        when others => c_136 <= c_136_54_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 137 and associated fundamentals [[213], [114], [108], [187]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_137 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 138 and associated fundamentals [[213], [114], [108], [187]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_138 <= c_137 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 139 and associated fundamentals [[213], [114], [108], [187]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_139 <= c_138 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 140 and associated fundamentals [[213], [114], [108], [187]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_140 <= c_139 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 141 and associated fundamentals [[213], [114], [108], [187]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_141 <= c_140 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 142 and associated fundamentals [[213], [114], [108], [187]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_142 <= c_141 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 143 and associated fundamentals [[159], [114], [194], [187]]
  c_143_111_0_False_resize <= c_111;
  c_143_111_0_False_shift <= shift_left(c_143_111_0_False_resize, 0);
  c_143_142_0_False_resize <= c_142;
  c_143_142_0_False_shift <= shift_left(c_143_142_0_False_resize, 0);
  with config_select_17 select c_143_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_143_sel is
        when "0" => c_143 <= c_143_111_0_False_shift;
        when others => c_143 <= c_143_142_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 144 and associated fundamentals [[85], [14], [59], [163]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_144 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 145 and associated fundamentals [[85], [14], [59], [163]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_145 <= c_144 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 146 and associated fundamentals [[215], [95], [11], [221]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_146 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 147 and associated fundamentals [[215], [95], [11], [221]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_147 <= c_146 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 148 and associated fundamentals [[215], [14], [59], [42]]
  c_148_47_0_False_resize <= c_47;
  c_148_47_0_False_shift <= shift_left(c_148_47_0_False_resize, 0);
  c_148_145_0_False_resize <= c_145;
  c_148_145_0_False_shift <= shift_left(c_148_145_0_False_resize, 0);
  c_148_147_0_False_resize <= c_147;
  c_148_147_0_False_shift <= shift_left(c_148_147_0_False_resize, 0);
  with config_select_13 select c_148_sel <= 
    "00" when "11",
    "01" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_148_sel is
        when "00" => c_148 <= c_148_47_0_False_shift;
        when "01" => c_148 <= c_148_145_0_False_shift;
        when others => c_148 <= c_148_147_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 149 and associated fundamentals [[215], [95], [11], [221]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_149 <= c_147 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 150 and associated fundamentals [[215], [95], [11], [221]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_150 <= c_149 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 151 and associated fundamentals [[137], [12], [11], [74]]
  c_151_104_0_False_resize <= c_104;
  c_151_104_0_False_shift <= shift_left(c_151_104_0_False_resize, 0);
  c_151_126_0_False_resize <= c_126;
  c_151_126_0_False_shift <= shift_left(c_151_126_0_False_resize, 0);
  c_151_113_2_False_resize <= resize(c_113, 24);
  c_151_113_2_False_shift <= shift_left(c_151_113_2_False_resize, 2);
  c_151_150_0_False_resize <= c_150;
  c_151_150_0_False_shift <= shift_left(c_151_150_0_False_resize, 0);
  with config_select_15 select c_151_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_151_sel is
        when "00" => c_151 <= c_151_104_0_False_shift;
        when "01" => c_151 <= c_151_126_0_False_shift;
        when "10" => c_151 <= c_151_113_2_False_shift;
        when others => c_151 <= c_151_150_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 152 and associated fundamentals [[47], [244], [134], [192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_152 <= c_116 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 153 and associated fundamentals [[47], [244], [134], [192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_153 <= c_152 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 154 and associated fundamentals [[47], [244], [134], [192]]
  c_154_resize <= c_153;
  c_154 <= shift_left(c_154_resize, 0);
  -- node of type 'register' in stage 12 with id 155 and associated fundamentals [[85], [250], [58], [160]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_155 <= c_117 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 156 and associated fundamentals [[85], [250], [58], [160]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_156 <= c_155 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 157 and associated fundamentals [[85], [250], [58], [160]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_157 <= c_156 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 158 and associated fundamentals [[85], [250], [58], [160]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_158 <= c_157 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 159 and associated fundamentals [[85], [250], [58], [160]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_159 <= c_158 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 160 and associated fundamentals [[85], [250], [58], [160]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_160 <= c_159 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 161 and associated fundamentals [[85], [250], [58], [160]]
  c_161_resize <= c_160;
  c_161 <= shift_left(c_161_resize, 0);
  -- node of type 'register' in stage 16 with id 162 and associated fundamentals [[163], [67], [2], [126]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_162 <= c_124 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 163 and associated fundamentals [[163], [67], [2], [126]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_163 <= c_162 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 164 and associated fundamentals [[163], [67], [2], [126]]
  c_164_resize <= c_163;
  c_164 <= shift_left(c_164_resize, 0);
  -- node of type 'output' in stage 17 with id 165 and associated fundamentals [[231], [235], [161], [191]]
  c_165_resize <= c_131;
  c_165 <= shift_left(c_165_resize, 0);
  -- node of type 'register' in stage 16 with id 166 and associated fundamentals [[214], [15], [162], [239]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_166 <= c_132 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 167 and associated fundamentals [[214], [15], [162], [239]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_167 <= c_166 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 168 and associated fundamentals [[214], [15], [162], [239]]
  c_168_resize <= c_167;
  c_168 <= shift_left(c_168_resize, 0);
  -- node of type 'register' in stage 16 with id 169 and associated fundamentals [[151], [232], [124], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_169 <= c_135 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 170 and associated fundamentals [[151], [232], [124], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_170 <= c_169 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 171 and associated fundamentals [[151], [232], [124], [4]]
  c_171_resize <= c_170;
  c_171 <= shift_left(c_171_resize, 0);
  -- node of type 'register' in stage 12 with id 172 and associated fundamentals [[213], [95], [216], [221]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_172 <= c_136 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 173 and associated fundamentals [[213], [95], [216], [221]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_173 <= c_172 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 174 and associated fundamentals [[213], [95], [216], [221]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_174 <= c_173 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 175 and associated fundamentals [[213], [95], [216], [221]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_175 <= c_174 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 176 and associated fundamentals [[213], [95], [216], [221]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_176 <= c_175 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 177 and associated fundamentals [[213], [95], [216], [221]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_177 <= c_176 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 178 and associated fundamentals [[213], [95], [216], [221]]
  c_178_resize <= c_177;
  c_178 <= shift_left(c_178_resize, 0);
  -- node of type 'output' in stage 17 with id 179 and associated fundamentals [[159], [114], [194], [187]]
  c_179_resize <= c_143;
  c_179 <= shift_left(c_179_resize, 0);
  -- node of type 'register' in stage 14 with id 180 and associated fundamentals [[215], [14], [59], [42]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_180 <= c_148 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 181 and associated fundamentals [[215], [14], [59], [42]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_181 <= c_180 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 182 and associated fundamentals [[215], [14], [59], [42]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_182 <= c_181 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 183 and associated fundamentals [[215], [14], [59], [42]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_183 <= c_182 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 184 and associated fundamentals [[215], [14], [59], [42]]
  c_184_resize <= c_183;
  c_184 <= shift_left(c_184_resize, 0);
  -- node of type 'register' in stage 16 with id 185 and associated fundamentals [[137], [12], [11], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_185 <= c_151 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 186 and associated fundamentals [[137], [12], [11], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_186 <= c_185 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 187 and associated fundamentals [[137], [12], [11], [74]]
  c_187_resize <= c_186;
  c_187 <= shift_left(c_187_resize, 0);
end architecture;
