library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(22 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_0_0_False_resize: signed(17 downto 0);
  signal c_1_0_0_False_shift: signed(17 downto 0);
  signal c_1_0_2_False_resize: signed(17 downto 0);
  signal c_1_0_2_False_shift: signed(17 downto 0);
  signal c_1_0_1_False_resize: signed(17 downto 0);
  signal c_1_0_1_False_shift: signed(17 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(19 downto 0);
  signal c_2_0_0_False_resize: signed(19 downto 0);
  signal c_2_0_0_False_shift: signed(19 downto 0);
  signal c_2_0_4_False_resize: signed(19 downto 0);
  signal c_2_0_4_False_shift: signed(19 downto 0);
  signal c_2_0_2_False_resize: signed(19 downto 0);
  signal c_2_0_2_False_shift: signed(19 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(22 downto 0);
  signal c_3_i0_resize: signed(22 downto 0);
  signal c_3_i1_resize: signed(22 downto 0);
  signal c_3_i0_shift: signed(22 downto 0);
  signal c_3_i1_shift: signed(22 downto 0);
  signal c_3_arith: signed(22 downto 0);
  signal c_3_oshift: signed(22 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(18 downto 0);
  signal c_4_0_0_False_resize: signed(18 downto 0);
  signal c_4_0_0_False_shift: signed(18 downto 0);
  signal c_4_0_3_False_resize: signed(18 downto 0);
  signal c_4_0_3_False_shift: signed(18 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(23 downto 0);
  signal c_5_0_0_False_resize: signed(23 downto 0);
  signal c_5_0_0_False_shift: signed(23 downto 0);
  signal c_5_0_2_False_resize: signed(23 downto 0);
  signal c_5_0_2_False_shift: signed(23 downto 0);
  signal c_5_0_8_False_resize: signed(23 downto 0);
  signal c_5_0_8_False_shift: signed(23 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(23 downto 0);
  signal c_6_i0_resize: signed(23 downto 0);
  signal c_6_i1_resize: signed(23 downto 0);
  signal c_6_i0_shift: signed(23 downto 0);
  signal c_6_i1_shift: signed(23 downto 0);
  signal c_6_arith: signed(23 downto 0);
  signal c_6_oshift: signed(23 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(23 downto 0);
  signal c_7_6_6_False_resize: signed(23 downto 0);
  signal c_7_6_6_False_shift: signed(23 downto 0);
  signal c_7_6_0_False_resize: signed(23 downto 0);
  signal c_7_6_0_False_shift: signed(23 downto 0);
  signal c_7_6_3_False_resize: signed(23 downto 0);
  signal c_7_6_3_False_shift: signed(23 downto 0);
  signal c_7_3_3_False_resize: signed(23 downto 0);
  signal c_7_3_3_False_shift: signed(23 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(15 downto 0);
  signal c_9: signed(15 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_9_0_False_resize: signed(22 downto 0);
  signal c_10_9_0_False_shift: signed(22 downto 0);
  signal c_10_3_0_False_resize: signed(22 downto 0);
  signal c_10_3_0_False_shift: signed(22 downto 0);
  signal c_10_9_1_False_resize: signed(22 downto 0);
  signal c_10_9_1_False_shift: signed(22 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
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
  signal c_14: signed(23 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_16: signed(20 downto 0);
  signal c_16_15_3_False_resize: signed(20 downto 0);
  signal c_16_15_3_False_shift: signed(20 downto 0);
  signal c_16_11_1_False_resize: signed(20 downto 0);
  signal c_16_11_1_False_shift: signed(20 downto 0);
  signal c_16_13_0_False_resize: signed(20 downto 0);
  signal c_16_13_0_False_shift: signed(20 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(21 downto 0);
  signal c_17_3_0_False_resize: signed(21 downto 0);
  signal c_17_3_0_False_shift: signed(21 downto 0);
  signal c_17_6_0_False_resize: signed(21 downto 0);
  signal c_17_6_0_False_shift: signed(21 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(21 downto 0);
  signal c_19: signed(21 downto 0);
  signal c_20: signed(21 downto 0);
  signal c_20_i0_resize: signed(21 downto 0);
  signal c_20_i1_resize: signed(21 downto 0);
  signal c_20_i0_shift: signed(21 downto 0);
  signal c_20_i1_shift: signed(21 downto 0);
  signal c_20_arith: signed(21 downto 0);
  signal c_20_oshift: signed(21 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(23 downto 0);
  signal c_21_9_6_False_resize: signed(23 downto 0);
  signal c_21_9_6_False_shift: signed(23 downto 0);
  signal c_21_6_0_False_resize: signed(23 downto 0);
  signal c_21_6_0_False_shift: signed(23 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(15 downto 0);
  signal c_23: signed(15 downto 0);
  signal c_24: signed(22 downto 0);
  signal c_24_23_7_False_resize: signed(22 downto 0);
  signal c_24_23_7_False_shift: signed(22 downto 0);
  signal c_24_23_2_False_resize: signed(22 downto 0);
  signal c_24_23_2_False_shift: signed(22 downto 0);
  signal c_24_20_0_False_resize: signed(22 downto 0);
  signal c_24_20_0_False_shift: signed(22 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_i0_resize: signed(23 downto 0);
  signal c_29_i1_resize: signed(23 downto 0);
  signal c_29_i0_shift: signed(23 downto 0);
  signal c_29_i1_shift: signed(23 downto 0);
  signal c_29_arith: signed(23 downto 0);
  signal c_29_oshift: signed(23 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(23 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_34: signed(22 downto 0);
  signal c_34_31_4_False_resize: signed(22 downto 0);
  signal c_34_31_4_False_shift: signed(22 downto 0);
  signal c_34_20_3_False_resize: signed(22 downto 0);
  signal c_34_20_3_False_shift: signed(22 downto 0);
  signal c_34_31_2_False_resize: signed(22 downto 0);
  signal c_34_31_2_False_shift: signed(22 downto 0);
  signal c_34_33_0_False_resize: signed(22 downto 0);
  signal c_34_33_0_False_shift: signed(22 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_29_0_False_resize: signed(23 downto 0);
  signal c_39_29_0_False_shift: signed(23 downto 0);
  signal c_39_36_3_False_resize: signed(23 downto 0);
  signal c_39_36_3_False_shift: signed(23 downto 0);
  signal c_39_38_0_False_resize: signed(23 downto 0);
  signal c_39_38_0_False_shift: signed(23 downto 0);
  signal c_39_sel: std_logic_vector(1 downto 0);
  signal c_40: signed(22 downto 0);
  signal c_41: signed(22 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_i0_resize: signed(23 downto 0);
  signal c_42_i1_resize: signed(23 downto 0);
  signal c_42_i0_shift: signed(23 downto 0);
  signal c_42_i1_shift: signed(23 downto 0);
  signal c_42_arith: signed(23 downto 0);
  signal c_42_oshift: signed(23 downto 0);
  signal c_43: signed(15 downto 0);
  signal c_44: signed(15 downto 0);
  signal c_45: signed(21 downto 0);
  signal c_46: signed(21 downto 0);
  signal c_47: signed(22 downto 0);
  signal c_47_44_4_False_resize: signed(22 downto 0);
  signal c_47_44_4_False_shift: signed(22 downto 0);
  signal c_47_46_3_False_resize: signed(22 downto 0);
  signal c_47_46_3_False_shift: signed(22 downto 0);
  signal c_47_29_0_False_resize: signed(22 downto 0);
  signal c_47_29_0_False_shift: signed(22 downto 0);
  signal c_47_sel: std_logic_vector(1 downto 0);
  signal c_48: signed(18 downto 0);
  signal c_48_0_3_False_resize: signed(18 downto 0);
  signal c_48_0_3_False_shift: signed(18 downto 0);
  signal c_48_0_1_False_resize: signed(18 downto 0);
  signal c_48_0_1_False_shift: signed(18 downto 0);
  signal c_48_0_0_False_resize: signed(18 downto 0);
  signal c_48_0_0_False_shift: signed(18 downto 0);
  signal c_48_sel: std_logic_vector(1 downto 0);
  signal c_49: signed(18 downto 0);
  signal c_50: signed(18 downto 0);
  signal c_51: signed(18 downto 0);
  signal c_52: signed(18 downto 0);
  signal c_53: signed(18 downto 0);
  signal c_54: signed(18 downto 0);
  signal c_55: signed(18 downto 0);
  signal c_56: signed(18 downto 0);
  signal c_57: signed(22 downto 0);
  signal c_57_i0_resize: signed(22 downto 0);
  signal c_57_i1_resize: signed(22 downto 0);
  signal c_57_i0_shift: signed(22 downto 0);
  signal c_57_i1_shift: signed(22 downto 0);
  signal c_57_arith: signed(22 downto 0);
  signal c_57_oshift: signed(22 downto 0);
  signal c_57_sub_sel: std_logic;
  signal c_58: signed(23 downto 0);
  signal c_58_20_0_False_resize: signed(23 downto 0);
  signal c_58_20_0_False_shift: signed(23 downto 0);
  signal c_58_33_0_False_resize: signed(23 downto 0);
  signal c_58_33_0_False_shift: signed(23 downto 0);
  signal c_58_sel: std_logic_vector(0 downto 0);
  signal c_59: signed(22 downto 0);
  signal c_60: signed(22 downto 0);
  signal c_61: signed(22 downto 0);
  signal c_62: signed(22 downto 0);
  signal c_63: signed(22 downto 0);
  signal c_64: signed(22 downto 0);
  signal c_65: signed(22 downto 0);
  signal c_66: signed(22 downto 0);
  signal c_67: signed(22 downto 0);
  signal c_67_66_1_False_resize: signed(22 downto 0);
  signal c_67_66_1_False_shift: signed(22 downto 0);
  signal c_67_57_0_False_resize: signed(22 downto 0);
  signal c_67_57_0_False_shift: signed(22 downto 0);
  signal c_67_sel: std_logic_vector(0 downto 0);
  signal c_68: signed(23 downto 0);
  signal c_69: signed(23 downto 0);
  signal c_70: signed(23 downto 0);
  signal c_71: signed(23 downto 0);
  signal c_72: signed(22 downto 0);
  signal c_72_i0_resize: signed(22 downto 0);
  signal c_72_i1_resize: signed(22 downto 0);
  signal c_72_i0_shift: signed(22 downto 0);
  signal c_72_i1_shift: signed(22 downto 0);
  signal c_72_arith: signed(22 downto 0);
  signal c_72_oshift: signed(22 downto 0);
  signal c_72_sub_sel: std_logic;
  signal c_73: signed(15 downto 0);
  signal c_74: signed(15 downto 0);
  signal c_75: signed(21 downto 0);
  signal c_76: signed(21 downto 0);
  signal c_77: signed(22 downto 0);
  signal c_77_74_7_False_resize: signed(22 downto 0);
  signal c_77_74_7_False_shift: signed(22 downto 0);
  signal c_77_57_0_False_resize: signed(22 downto 0);
  signal c_77_57_0_False_shift: signed(22 downto 0);
  signal c_77_76_0_False_resize: signed(22 downto 0);
  signal c_77_76_0_False_shift: signed(22 downto 0);
  signal c_77_sel: std_logic_vector(1 downto 0);
  signal c_78: signed(21 downto 0);
  signal c_78_62_0_False_resize: signed(21 downto 0);
  signal c_78_62_0_False_shift: signed(21 downto 0);
  signal c_78_20_1_False_resize: signed(21 downto 0);
  signal c_78_20_1_False_shift: signed(21 downto 0);
  signal c_78_sel: std_logic_vector(0 downto 0);
  signal c_79: signed(21 downto 0);
  signal c_80: signed(21 downto 0);
  signal c_81: signed(21 downto 0);
  signal c_82: signed(21 downto 0);
  signal c_83: signed(23 downto 0);
  signal c_83_i0_resize: signed(23 downto 0);
  signal c_83_i1_resize: signed(23 downto 0);
  signal c_83_i0_shift: signed(23 downto 0);
  signal c_83_i1_shift: signed(23 downto 0);
  signal c_83_arith: signed(23 downto 0);
  signal c_83_oshift: signed(23 downto 0);
  signal c_83_sub_sel: std_logic;
  signal c_84: signed(24 downto 0);
  signal c_84_57_0_False_resize: signed(24 downto 0);
  signal c_84_57_0_False_shift: signed(24 downto 0);
  signal c_84_57_2_False_resize: signed(24 downto 0);
  signal c_84_57_2_False_shift: signed(24 downto 0);
  signal c_84_sel: std_logic_vector(0 downto 0);
  signal c_85: signed(15 downto 0);
  signal c_86: signed(15 downto 0);
  signal c_87: signed(23 downto 0);
  signal c_87_72_0_False_resize: signed(23 downto 0);
  signal c_87_72_0_False_shift: signed(23 downto 0);
  signal c_87_83_1_False_resize: signed(23 downto 0);
  signal c_87_83_1_False_shift: signed(23 downto 0);
  signal c_87_86_2_False_resize: signed(23 downto 0);
  signal c_87_86_2_False_shift: signed(23 downto 0);
  signal c_87_83_0_False_resize: signed(23 downto 0);
  signal c_87_83_0_False_shift: signed(23 downto 0);
  signal c_87_sel: std_logic_vector(1 downto 0);
  signal c_88: signed(24 downto 0);
  signal c_89: signed(24 downto 0);
  signal c_90: signed(23 downto 0);
  signal c_90_i0_resize: signed(23 downto 0);
  signal c_90_i1_resize: signed(23 downto 0);
  signal c_90_i0_shift: signed(23 downto 0);
  signal c_90_i1_shift: signed(23 downto 0);
  signal c_90_arith: signed(23 downto 0);
  signal c_90_oshift: signed(23 downto 0);
  signal c_90_sub_sel: std_logic;
  signal c_91: signed(23 downto 0);
  signal c_92: signed(23 downto 0);
  signal c_93: signed(23 downto 0);
  signal c_93_57_2_False_resize: signed(23 downto 0);
  signal c_93_57_2_False_shift: signed(23 downto 0);
  signal c_93_74_3_False_resize: signed(23 downto 0);
  signal c_93_74_3_False_shift: signed(23 downto 0);
  signal c_93_92_0_False_resize: signed(23 downto 0);
  signal c_93_92_0_False_shift: signed(23 downto 0);
  signal c_93_sel: std_logic_vector(1 downto 0);
  signal c_94: signed(19 downto 0);
  signal c_94_20_0_False_resize: signed(19 downto 0);
  signal c_94_20_0_False_shift: signed(19 downto 0);
  signal c_94_23_4_False_resize: signed(19 downto 0);
  signal c_94_23_4_False_shift: signed(19 downto 0);
  signal c_94_sel: std_logic_vector(0 downto 0);
  signal c_95: signed(19 downto 0);
  signal c_96: signed(19 downto 0);
  signal c_97: signed(19 downto 0);
  signal c_98: signed(19 downto 0);
  signal c_99: signed(23 downto 0);
  signal c_99_i0_resize: signed(23 downto 0);
  signal c_99_i1_resize: signed(23 downto 0);
  signal c_99_i0_shift: signed(23 downto 0);
  signal c_99_i1_shift: signed(23 downto 0);
  signal c_99_arith: signed(23 downto 0);
  signal c_99_oshift: signed(23 downto 0);
  signal c_99_sub_sel: std_logic;
  signal c_100: signed(23 downto 0);
  signal c_101: signed(23 downto 0);
  signal c_102: signed(23 downto 0);
  signal c_103: signed(23 downto 0);
  signal c_104: signed(21 downto 0);
  signal c_105: signed(21 downto 0);
  signal c_106: signed(23 downto 0);
  signal c_107: signed(23 downto 0);
  signal c_108: signed(22 downto 0);
  signal c_108_107_0_False_resize: signed(22 downto 0);
  signal c_108_107_0_False_shift: signed(22 downto 0);
  signal c_108_83_0_False_resize: signed(22 downto 0);
  signal c_108_83_0_False_shift: signed(22 downto 0);
  signal c_108_105_0_False_resize: signed(22 downto 0);
  signal c_108_105_0_False_shift: signed(22 downto 0);
  signal c_108_103_1_False_resize: signed(22 downto 0);
  signal c_108_103_1_False_shift: signed(22 downto 0);
  signal c_108_sel: std_logic_vector(1 downto 0);
  signal c_109: signed(23 downto 0);
  signal c_110: signed(23 downto 0);
  signal c_111: signed(23 downto 0);
  signal c_112: signed(23 downto 0);
  signal c_113: signed(23 downto 0);
  signal c_114: signed(23 downto 0);
  signal c_115: signed(23 downto 0);
  signal c_116: signed(23 downto 0);
  signal c_117: signed(23 downto 0);
  signal c_118: signed(23 downto 0);
  signal c_119: signed(23 downto 0);
  signal c_119_118_0_False_resize: signed(23 downto 0);
  signal c_119_118_0_False_shift: signed(23 downto 0);
  signal c_119_114_0_False_resize: signed(23 downto 0);
  signal c_119_114_0_False_shift: signed(23 downto 0);
  signal c_119_90_0_False_resize: signed(23 downto 0);
  signal c_119_90_0_False_shift: signed(23 downto 0);
  signal c_119_sel: std_logic_vector(1 downto 0);
  signal c_120: signed(23 downto 0);
  signal c_120_64_1_False_resize: signed(23 downto 0);
  signal c_120_64_1_False_shift: signed(23 downto 0);
  signal c_120_29_0_False_resize: signed(23 downto 0);
  signal c_120_29_0_False_shift: signed(23 downto 0);
  signal c_120_64_4_False_resize: signed(23 downto 0);
  signal c_120_64_4_False_shift: signed(23 downto 0);
  signal c_120_sel: std_logic_vector(1 downto 0);
  signal c_121: signed(22 downto 0);
  signal c_122: signed(22 downto 0);
  signal c_123: signed(23 downto 0);
  signal c_123_112_3_False_resize: signed(23 downto 0);
  signal c_123_112_3_False_shift: signed(23 downto 0);
  signal c_123_72_1_False_resize: signed(23 downto 0);
  signal c_123_72_1_False_shift: signed(23 downto 0);
  signal c_123_122_4_False_resize: signed(23 downto 0);
  signal c_123_122_4_False_shift: signed(23 downto 0);
  signal c_123_83_0_False_resize: signed(23 downto 0);
  signal c_123_83_0_False_shift: signed(23 downto 0);
  signal c_123_sel: std_logic_vector(1 downto 0);
  signal c_124: signed(23 downto 0);
  signal c_125: signed(23 downto 0);
  signal c_126: signed(23 downto 0);
  signal c_127: signed(23 downto 0);
  signal c_128: signed(23 downto 0);
  signal c_129: signed(23 downto 0);
  signal c_130: signed(23 downto 0);
  signal c_130_127_0_False_resize: signed(23 downto 0);
  signal c_130_127_0_False_shift: signed(23 downto 0);
  signal c_130_90_0_False_resize: signed(23 downto 0);
  signal c_130_90_0_False_shift: signed(23 downto 0);
  signal c_130_129_1_False_resize: signed(23 downto 0);
  signal c_130_129_1_False_shift: signed(23 downto 0);
  signal c_130_125_0_False_resize: signed(23 downto 0);
  signal c_130_125_0_False_shift: signed(23 downto 0);
  signal c_130_sel: std_logic_vector(1 downto 0);
  signal c_131: signed(23 downto 0);
  signal c_131_90_0_False_resize: signed(23 downto 0);
  signal c_131_90_0_False_shift: signed(23 downto 0);
  signal c_131_114_1_False_resize: signed(23 downto 0);
  signal c_131_114_1_False_shift: signed(23 downto 0);
  signal c_131_114_0_False_resize: signed(23 downto 0);
  signal c_131_114_0_False_shift: signed(23 downto 0);
  signal c_131_sel: std_logic_vector(1 downto 0);
  signal c_132: signed(22 downto 0);
  signal c_133: signed(22 downto 0);
  signal c_134: signed(23 downto 0);
  signal c_134_72_2_False_resize: signed(23 downto 0);
  signal c_134_72_2_False_shift: signed(23 downto 0);
  signal c_134_107_1_False_resize: signed(23 downto 0);
  signal c_134_107_1_False_shift: signed(23 downto 0);
  signal c_134_133_0_False_resize: signed(23 downto 0);
  signal c_134_133_0_False_shift: signed(23 downto 0);
  signal c_134_sel: std_logic_vector(1 downto 0);
  signal c_135: signed(23 downto 0);
  signal c_135_99_0_False_resize: signed(23 downto 0);
  signal c_135_99_0_False_shift: signed(23 downto 0);
  signal c_135_107_0_False_resize: signed(23 downto 0);
  signal c_135_107_0_False_shift: signed(23 downto 0);
  signal c_135_sel: std_logic_vector(0 downto 0);
  signal c_136: signed(23 downto 0);
  signal c_136_103_3_False_resize: signed(23 downto 0);
  signal c_136_103_3_False_shift: signed(23 downto 0);
  signal c_136_133_4_False_resize: signed(23 downto 0);
  signal c_136_133_4_False_shift: signed(23 downto 0);
  signal c_136_83_0_False_resize: signed(23 downto 0);
  signal c_136_83_0_False_shift: signed(23 downto 0);
  signal c_136_sel: std_logic_vector(1 downto 0);
  signal c_137: signed(23 downto 0);
  signal c_137_133_0_False_resize: signed(23 downto 0);
  signal c_137_133_0_False_shift: signed(23 downto 0);
  signal c_137_133_2_False_resize: signed(23 downto 0);
  signal c_137_133_2_False_shift: signed(23 downto 0);
  signal c_137_122_2_False_resize: signed(23 downto 0);
  signal c_137_122_2_False_shift: signed(23 downto 0);
  signal c_137_72_1_False_resize: signed(23 downto 0);
  signal c_137_72_1_False_shift: signed(23 downto 0);
  signal c_137_sel: std_logic_vector(1 downto 0);
  signal c_138: signed(22 downto 0);
  signal c_139: signed(22 downto 0);
  signal c_140: signed(22 downto 0);
  signal c_140_resize: signed(22 downto 0);
  signal c_141: signed(23 downto 0);
  signal c_141_resize: signed(23 downto 0);
  signal c_142: signed(23 downto 0);
  signal c_143: signed(23 downto 0);
  signal c_144: signed(23 downto 0);
  signal c_145: signed(23 downto 0);
  signal c_146: signed(23 downto 0);
  signal c_147: signed(23 downto 0);
  signal c_148: signed(23 downto 0);
  signal c_148_resize: signed(23 downto 0);
  signal c_149: signed(23 downto 0);
  signal c_150: signed(23 downto 0);
  signal c_151: signed(23 downto 0);
  signal c_151_resize: signed(23 downto 0);
  signal c_152: signed(23 downto 0);
  signal c_152_resize: signed(23 downto 0);
  signal c_153: signed(23 downto 0);
  signal c_153_resize: signed(23 downto 0);
  signal c_154: signed(23 downto 0);
  signal c_155: signed(23 downto 0);
  signal c_156: signed(23 downto 0);
  signal c_156_resize: signed(23 downto 0);
  signal c_157: signed(23 downto 0);
  signal c_158: signed(23 downto 0);
  signal c_159: signed(23 downto 0);
  signal c_159_resize: signed(23 downto 0);
  signal c_160: signed(23 downto 0);
  signal c_161: signed(23 downto 0);
  signal c_162: signed(23 downto 0);
  signal c_162_resize: signed(23 downto 0);
  signal c_163: signed(23 downto 0);
  signal c_164: signed(23 downto 0);
  signal c_165: signed(23 downto 0);
  signal c_165_resize: signed(23 downto 0);
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
  -- output node 0 with id 140
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_140);
    end if;
  end process;
  -- output node 1 with id 141
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_141);
    end if;
  end process;
  -- output node 2 with id 148
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_148);
    end if;
  end process;
  -- output node 3 with id 151
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_151);
    end if;
  end process;
  -- output node 4 with id 152
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_152);
    end if;
  end process;
  -- output node 5 with id 153
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_153);
    end if;
  end process;
  -- output node 6 with id 156
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_156);
    end if;
  end process;
  -- output node 7 with id 159
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_159);
    end if;
  end process;
  -- output node 8 with id 162
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_162);
    end if;
  end process;
  -- output node 9 with id 165
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_165);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [1], [4], [2]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  c_1_0_1_False_resize <= resize(c_0, 18);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "00" when "01",
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "00" => c_1 <= c_1_0_0_False_shift;
        when "01" => c_1 <= c_1_0_2_False_shift;
        when others => c_1 <= c_1_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[4], [1], [16], [1]]
  c_2_0_0_False_resize <= resize(c_0, 20);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_4_False_resize <= resize(c_0, 20);
  c_2_0_4_False_shift <= shift_left(c_2_0_4_False_resize, 4);
  c_2_0_2_False_resize <= resize(c_0, 20);
  c_2_0_2_False_shift <= shift_left(c_2_0_2_False_resize, 2);
  with config_select_1 select c_2_sel <= 
    "00" when "01",
    "00" when "11",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_0_False_shift;
        when "01" => c_2 <= c_2_0_4_False_shift;
        when others => c_2 <= c_2_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[33], [-7], [-124], [10]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 20,
      w_o => 23,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[1], [8], [1], [1]]
  c_4_0_0_False_resize <= resize(c_0, 19);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_3_False_resize <= resize(c_0, 19);
  c_4_0_3_False_shift <= shift_left(c_4_0_3_False_resize, 3);
  with config_select_1 select c_4_sel <= 
    "0" when "10",
    "0" when "11",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_0_False_shift;
        when others => c_4 <= c_4_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[1], [1], [4], [256]]
  c_5_0_0_False_resize <= resize(c_0, 24);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_0_2_False_resize <= resize(c_0, 24);
  c_5_0_2_False_shift <= shift_left(c_5_0_2_False_resize, 2);
  c_5_0_8_False_resize <= resize(c_0, 24);
  c_5_0_8_False_shift <= shift_left(c_5_0_8_False_resize, 8);
  with config_select_1 select c_5_sel <= 
    "00" when "01",
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_0_0_False_shift;
        when "01" => c_5 <= c_5_0_2_False_shift;
        when others => c_5 <= c_5_0_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 6 and associated fundamentals [[3], [17], [6], [-254]]
  with config_select_2 select c_6_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 19,
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
      sub_i => c_6_sub_sel,
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[192], [17], [48], [80]]
  c_7_6_6_False_resize <= c_6;
  c_7_6_6_False_shift <= shift_left(c_7_6_6_False_resize, 6);
  c_7_6_0_False_resize <= c_6;
  c_7_6_0_False_shift <= shift_left(c_7_6_0_False_resize, 0);
  c_7_6_3_False_resize <= c_6;
  c_7_6_3_False_shift <= shift_left(c_7_6_3_False_resize, 3);
  c_7_3_3_False_resize <= resize(c_3, 24);
  c_7_3_3_False_shift <= shift_left(c_7_3_3_False_resize, 3);
  with config_select_3 select c_7_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_6_6_False_shift;
        when "01" => c_7 <= c_7_6_0_False_shift;
        when "10" => c_7 <= c_7_6_3_False_shift;
        when others => c_7 <= c_7_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 8 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_0 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 9 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[1], [2], [-124], [2]]
  c_10_9_0_False_resize <= resize(c_9, 23);
  c_10_9_0_False_shift <= shift_left(c_10_9_0_False_resize, 0);
  c_10_3_0_False_resize <= c_3;
  c_10_3_0_False_shift <= shift_left(c_10_3_0_False_resize, 0);
  c_10_9_1_False_resize <= resize(c_9, 23);
  c_10_9_1_False_shift <= shift_left(c_10_9_1_False_resize, 1);
  with config_select_3 select c_10_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_9_0_False_shift;
        when "01" => c_10 <= c_10_3_0_False_shift;
        when others => c_10 <= c_10_9_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 11 and associated fundamentals [[191], [15], [172], [82]]
  with config_select_4 select c_11_sub_sel <= 
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
      x_i => c_7,
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
      c_12 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 13 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 14 and associated fundamentals [[3], [17], [6], [-254]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[3], [17], [6], [-254]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 16 and associated fundamentals [[24], [30], [1], [1]]
  c_16_15_3_False_resize <= c_15(20 downto 0);
  c_16_15_3_False_shift <= shift_left(c_16_15_3_False_resize, 3);
  c_16_11_1_False_resize <= c_11(20 downto 0);
  c_16_11_1_False_shift <= shift_left(c_16_11_1_False_resize, 1);
  c_16_13_0_False_resize <= resize(c_13, 21);
  c_16_13_0_False_shift <= shift_left(c_16_13_0_False_resize, 0);
  with config_select_5 select c_16_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_15_3_False_shift;
        when "01" => c_16 <= c_16_11_1_False_shift;
        when others => c_16 <= c_16_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 17 and associated fundamentals [[33], [17], [6], [10]]
  c_17_3_0_False_resize <= c_3(21 downto 0);
  c_17_3_0_False_shift <= shift_left(c_17_3_0_False_resize, 0);
  c_17_6_0_False_resize <= c_6(21 downto 0);
  c_17_6_0_False_shift <= shift_left(c_17_6_0_False_resize, 0);
  with config_select_3 select c_17_sel <= 
    "0" when "11",
    "0" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_3_0_False_shift;
        when others => c_17 <= c_17_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 18 and associated fundamentals [[33], [17], [6], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 19 and associated fundamentals [[33], [17], [6], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 20 and associated fundamentals [[57], [13], [-5], [11]]
  with config_select_6 select c_20_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 22,
      w_o => 22,
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
      sub_i => c_20_sub_sel,
      x_i => c_16,
      y_i => c_19,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 21 and associated fundamentals [[3], [64], [64], [-254]]
  c_21_9_6_False_resize <= resize(c_9, 24);
  c_21_9_6_False_shift <= shift_left(c_21_9_6_False_resize, 6);
  c_21_6_0_False_resize <= c_6;
  c_21_6_0_False_shift <= shift_left(c_21_6_0_False_resize, 0);
  with config_select_3 select c_21_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_9_6_False_shift;
        when others => c_21 <= c_21_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 22 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 23 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 24 and associated fundamentals [[128], [128], [-5], [4]]
  c_24_23_7_False_resize <= resize(c_23, 23);
  c_24_23_7_False_shift <= shift_left(c_24_23_7_False_resize, 7);
  c_24_23_2_False_resize <= resize(c_23, 23);
  c_24_23_2_False_shift <= shift_left(c_24_23_2_False_resize, 2);
  c_24_20_0_False_resize <= resize(c_20, 23);
  c_24_20_0_False_shift <= shift_left(c_24_20_0_False_resize, 0);
  with config_select_7 select c_24_sel <= 
    "00" when "01",
    "00" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_23_7_False_shift;
        when "01" => c_24 <= c_24_23_2_False_shift;
        when others => c_24 <= c_24_20_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 25 and associated fundamentals [[3], [64], [64], [-254]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 26 and associated fundamentals [[3], [64], [64], [-254]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[3], [64], [64], [-254]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 28 and associated fundamentals [[3], [64], [64], [-254]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 29 and associated fundamentals [[-125], [192], [69], [-250]]
  with config_select_8 select c_29_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_29: entity work.adder_node
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
      sub_i => c_29_sub_sel,
      x_i => c_28,
      y_i => c_24,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 30 and associated fundamentals [[3], [17], [6], [-254]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 31 and associated fundamentals [[3], [17], [6], [-254]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 32 and associated fundamentals [[191], [15], [172], [82]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 33 and associated fundamentals [[191], [15], [172], [82]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 34 and associated fundamentals [[12], [15], [96], [88]]
  c_34_31_4_False_resize <= c_31(22 downto 0);
  c_34_31_4_False_shift <= shift_left(c_34_31_4_False_resize, 4);
  c_34_20_3_False_resize <= resize(c_20, 23);
  c_34_20_3_False_shift <= shift_left(c_34_20_3_False_resize, 3);
  c_34_31_2_False_resize <= c_31(22 downto 0);
  c_34_31_2_False_shift <= shift_left(c_34_31_2_False_resize, 2);
  c_34_33_0_False_resize <= c_33(22 downto 0);
  c_34_33_0_False_shift <= shift_left(c_34_33_0_False_resize, 0);
  with config_select_7 select c_34_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "00" => c_34 <= c_34_31_4_False_shift;
        when "01" => c_34 <= c_34_20_3_False_shift;
        when "10" => c_34 <= c_34_31_2_False_shift;
        when others => c_34 <= c_34_33_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 35 and associated fundamentals [[3], [17], [6], [-254]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 36 and associated fundamentals [[3], [17], [6], [-254]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 37 and associated fundamentals [[191], [15], [172], [82]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 38 and associated fundamentals [[191], [15], [172], [82]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 39 and associated fundamentals [[-125], [136], [69], [82]]
  c_39_29_0_False_resize <= c_29;
  c_39_29_0_False_shift <= shift_left(c_39_29_0_False_resize, 0);
  c_39_36_3_False_resize <= c_36;
  c_39_36_3_False_shift <= shift_left(c_39_36_3_False_resize, 3);
  c_39_38_0_False_resize <= c_38;
  c_39_38_0_False_shift <= shift_left(c_39_38_0_False_resize, 0);
  with config_select_9 select c_39_sel <= 
    "00" when "00",
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "00" => c_39 <= c_39_29_0_False_shift;
        when "01" => c_39 <= c_39_36_3_False_shift;
        when others => c_39 <= c_39_38_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 40 and associated fundamentals [[12], [15], [96], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 41 and associated fundamentals [[12], [15], [96], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 10 with id 42 and associated fundamentals [[149], [-106], [123], [94]]
  inst_adder_node_42: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
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
      x_i => c_41,
      y_i => c_39,
      z_o => c_42_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_42_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 43 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 44 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 45 and associated fundamentals [[57], [13], [-5], [11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 46 and associated fundamentals [[57], [13], [-5], [11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 47 and associated fundamentals [[16], [16], [69], [88]]
  c_47_44_4_False_resize <= resize(c_44, 23);
  c_47_44_4_False_shift <= shift_left(c_47_44_4_False_resize, 4);
  c_47_46_3_False_resize <= resize(c_46, 23);
  c_47_46_3_False_shift <= shift_left(c_47_46_3_False_resize, 3);
  c_47_29_0_False_resize <= c_29(22 downto 0);
  c_47_29_0_False_shift <= shift_left(c_47_29_0_False_resize, 0);
  with config_select_9 select c_47_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "00" => c_47 <= c_47_44_4_False_shift;
        when "01" => c_47 <= c_47_46_3_False_shift;
        when others => c_47 <= c_47_29_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 48 and associated fundamentals [[1], [2], [8], [1]]
  c_48_0_3_False_resize <= resize(c_0, 19);
  c_48_0_3_False_shift <= shift_left(c_48_0_3_False_resize, 3);
  c_48_0_1_False_resize <= resize(c_0, 19);
  c_48_0_1_False_shift <= shift_left(c_48_0_1_False_resize, 1);
  c_48_0_0_False_resize <= resize(c_0, 19);
  c_48_0_0_False_shift <= shift_left(c_48_0_0_False_resize, 0);
  with config_select_1 select c_48_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "00" => c_48 <= c_48_0_3_False_shift;
        when "01" => c_48 <= c_48_0_1_False_shift;
        when others => c_48 <= c_48_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 49 and associated fundamentals [[1], [2], [8], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 50 and associated fundamentals [[1], [2], [8], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 51 and associated fundamentals [[1], [2], [8], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 52 and associated fundamentals [[1], [2], [8], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 53 and associated fundamentals [[1], [2], [8], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 54 and associated fundamentals [[1], [2], [8], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 55 and associated fundamentals [[1], [2], [8], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 56 and associated fundamentals [[1], [2], [8], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 57 and associated fundamentals [[15], [18], [61], [87]]
  with config_select_10 select c_57_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_57: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 19,
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
      sub_i => c_57_sub_sel,
      x_i => c_47,
      y_i => c_56,
      z_o => c_57_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_57_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 58 and associated fundamentals [[191], [15], [-5], [11]]
  c_58_20_0_False_resize <= resize(c_20, 24);
  c_58_20_0_False_shift <= shift_left(c_58_20_0_False_resize, 0);
  c_58_33_0_False_resize <= c_33;
  c_58_33_0_False_shift <= shift_left(c_58_33_0_False_resize, 0);
  with config_select_7 select c_58_sel <= 
    "0" when "11",
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_58_sel is
        when "0" => c_58 <= c_58_20_0_False_shift;
        when others => c_58 <= c_58_33_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 59 and associated fundamentals [[33], [-7], [-124], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 60 and associated fundamentals [[33], [-7], [-124], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 61 and associated fundamentals [[33], [-7], [-124], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 62 and associated fundamentals [[33], [-7], [-124], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 63 and associated fundamentals [[33], [-7], [-124], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 64 and associated fundamentals [[33], [-7], [-124], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 65 and associated fundamentals [[33], [-7], [-124], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 66 and associated fundamentals [[33], [-7], [-124], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 67 and associated fundamentals [[66], [-14], [61], [20]]
  c_67_66_1_False_resize <= c_66;
  c_67_66_1_False_shift <= shift_left(c_67_66_1_False_resize, 1);
  c_67_57_0_False_resize <= c_57;
  c_67_57_0_False_shift <= shift_left(c_67_57_0_False_resize, 0);
  with config_select_11 select c_67_sel <= 
    "0" when "01",
    "0" when "11",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_67_sel is
        when "0" => c_67 <= c_67_66_1_False_shift;
        when others => c_67 <= c_67_57_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 68 and associated fundamentals [[191], [15], [-5], [11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 69 and associated fundamentals [[191], [15], [-5], [11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 70 and associated fundamentals [[191], [15], [-5], [11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 71 and associated fundamentals [[191], [15], [-5], [11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 72 and associated fundamentals [[59], [43], [117], [51]]
  with config_select_12 select c_72_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_72: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
      w_o => 23,
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
      sub_i => c_72_sub_sel,
      x_i => c_71,
      y_i => c_67,
      z_o => c_72_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_72_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 73 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 74 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 75 and associated fundamentals [[57], [13], [-5], [11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 76 and associated fundamentals [[57], [13], [-5], [11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 77 and associated fundamentals [[128], [13], [61], [87]]
  c_77_74_7_False_resize <= resize(c_74, 23);
  c_77_74_7_False_shift <= shift_left(c_77_74_7_False_resize, 7);
  c_77_57_0_False_resize <= c_57;
  c_77_57_0_False_shift <= shift_left(c_77_57_0_False_resize, 0);
  c_77_76_0_False_resize <= resize(c_76, 23);
  c_77_76_0_False_shift <= shift_left(c_77_76_0_False_resize, 0);
  with config_select_11 select c_77_sel <= 
    "00" when "00",
    "01" when "10",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_77_sel is
        when "00" => c_77 <= c_77_74_7_False_shift;
        when "01" => c_77 <= c_77_57_0_False_shift;
        when others => c_77 <= c_77_76_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 78 and associated fundamentals [[33], [-7], [-10], [10]]
  c_78_62_0_False_resize <= c_62(21 downto 0);
  c_78_62_0_False_shift <= shift_left(c_78_62_0_False_resize, 0);
  c_78_20_1_False_resize <= c_20;
  c_78_20_1_False_shift <= shift_left(c_78_20_1_False_resize, 1);
  with config_select_7 select c_78_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_78_sel is
        when "0" => c_78 <= c_78_62_0_False_shift;
        when others => c_78 <= c_78_20_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 79 and associated fundamentals [[33], [-7], [-10], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 80 and associated fundamentals [[33], [-7], [-10], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 81 and associated fundamentals [[33], [-7], [-10], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_80 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 82 and associated fundamentals [[33], [-7], [-10], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_81 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 83 and associated fundamentals [[194], [27], [81], [107]]
  with config_select_12 select c_83_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_83: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_83_sub_sel,
      x_i => c_77,
      y_i => c_82,
      z_o => c_83_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_83_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 84 and associated fundamentals [[15], [72], [61], [348]]
  c_84_57_0_False_resize <= resize(c_57, 25);
  c_84_57_0_False_shift <= shift_left(c_84_57_0_False_resize, 0);
  c_84_57_2_False_resize <= resize(c_57, 25);
  c_84_57_2_False_shift <= shift_left(c_84_57_2_False_resize, 2);
  with config_select_11 select c_84_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_84_sel is
        when "0" => c_84 <= c_84_57_0_False_shift;
        when others => c_84 <= c_84_57_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 85 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 86 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_85 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 87 and associated fundamentals [[4], [43], [162], [107]]
  c_87_72_0_False_resize <= resize(c_72, 24);
  c_87_72_0_False_shift <= shift_left(c_87_72_0_False_resize, 0);
  c_87_83_1_False_resize <= c_83;
  c_87_83_1_False_shift <= shift_left(c_87_83_1_False_resize, 1);
  c_87_86_2_False_resize <= resize(c_86, 24);
  c_87_86_2_False_shift <= shift_left(c_87_86_2_False_resize, 2);
  c_87_83_0_False_resize <= c_83;
  c_87_83_0_False_shift <= shift_left(c_87_83_0_False_resize, 0);
  with config_select_13 select c_87_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_87_sel is
        when "00" => c_87 <= c_87_72_0_False_shift;
        when "01" => c_87 <= c_87_83_1_False_shift;
        when "10" => c_87 <= c_87_86_2_False_shift;
        when others => c_87 <= c_87_83_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 88 and associated fundamentals [[15], [72], [61], [348]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_84 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 89 and associated fundamentals [[15], [72], [61], [348]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_88 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 90 and associated fundamentals [[11], [115], [-101], [241]]
  with config_select_14 select c_90_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_90: entity work.adder_node
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
      sub_i => c_90_sub_sel,
      x_i => c_89,
      y_i => c_87,
      z_o => c_90_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_90_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 91 and associated fundamentals [[-125], [192], [69], [-250]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 92 and associated fundamentals [[-125], [192], [69], [-250]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 93 and associated fundamentals [[-125], [192], [244], [8]]
  c_93_57_2_False_resize <= resize(c_57, 24);
  c_93_57_2_False_shift <= shift_left(c_93_57_2_False_resize, 2);
  c_93_74_3_False_resize <= resize(c_74, 24);
  c_93_74_3_False_shift <= shift_left(c_93_74_3_False_resize, 3);
  c_93_92_0_False_resize <= c_92;
  c_93_92_0_False_shift <= shift_left(c_93_92_0_False_resize, 0);
  with config_select_11 select c_93_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_93_sel is
        when "00" => c_93 <= c_93_57_2_False_shift;
        when "01" => c_93 <= c_93_74_3_False_shift;
        when others => c_93 <= c_93_92_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 94 and associated fundamentals [[16], [13], [-5], [11]]
  c_94_20_0_False_resize <= c_20(19 downto 0);
  c_94_20_0_False_shift <= shift_left(c_94_20_0_False_resize, 0);
  c_94_23_4_False_resize <= resize(c_23, 20);
  c_94_23_4_False_shift <= shift_left(c_94_23_4_False_resize, 4);
  with config_select_7 select c_94_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_94_sel is
        when "0" => c_94 <= c_94_20_0_False_shift;
        when others => c_94 <= c_94_23_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 95 and associated fundamentals [[16], [13], [-5], [11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_94 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 96 and associated fundamentals [[16], [13], [-5], [11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_95 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 97 and associated fundamentals [[16], [13], [-5], [11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_96 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 98 and associated fundamentals [[16], [13], [-5], [11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_97 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 99 and associated fundamentals [[-109], [205], [249], [19]]
  with config_select_12 select c_99_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_99: entity work.adder_node
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
      sub_i => c_99_sub_sel,
      x_i => c_93,
      y_i => c_98,
      z_o => c_99_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_99_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 100 and associated fundamentals [[3], [17], [6], [-254]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 101 and associated fundamentals [[3], [17], [6], [-254]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_100 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 102 and associated fundamentals [[3], [17], [6], [-254]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_101 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 103 and associated fundamentals [[3], [17], [6], [-254]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_102 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 104 and associated fundamentals [[57], [13], [-5], [11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 105 and associated fundamentals [[57], [13], [-5], [11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_104 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 106 and associated fundamentals [[149], [-106], [123], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 107 and associated fundamentals [[149], [-106], [123], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_106 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 108 and associated fundamentals [[57], [34], [81], [94]]
  c_108_107_0_False_resize <= c_107(22 downto 0);
  c_108_107_0_False_shift <= shift_left(c_108_107_0_False_resize, 0);
  c_108_83_0_False_resize <= c_83(22 downto 0);
  c_108_83_0_False_shift <= shift_left(c_108_83_0_False_resize, 0);
  c_108_105_0_False_resize <= resize(c_105, 23);
  c_108_105_0_False_shift <= shift_left(c_108_105_0_False_resize, 0);
  c_108_103_1_False_resize <= c_103(22 downto 0);
  c_108_103_1_False_shift <= shift_left(c_108_103_1_False_resize, 1);
  with config_select_13 select c_108_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_108_sel is
        when "00" => c_108 <= c_108_107_0_False_shift;
        when "01" => c_108 <= c_108_83_0_False_shift;
        when "10" => c_108 <= c_108_105_0_False_shift;
        when others => c_108 <= c_108_103_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 109 and associated fundamentals [[191], [15], [172], [82]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_109 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 110 and associated fundamentals [[191], [15], [172], [82]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_110 <= c_109 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 111 and associated fundamentals [[191], [15], [172], [82]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_110 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 112 and associated fundamentals [[191], [15], [172], [82]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_111 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 113 and associated fundamentals [[191], [15], [172], [82]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_112 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 114 and associated fundamentals [[191], [15], [172], [82]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_113 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 115 and associated fundamentals [[-125], [192], [69], [-250]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_92 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 116 and associated fundamentals [[-125], [192], [69], [-250]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_116 <= c_115 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 117 and associated fundamentals [[-125], [192], [69], [-250]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_117 <= c_116 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 118 and associated fundamentals [[-125], [192], [69], [-250]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_118 <= c_117 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 119 and associated fundamentals [[191], [192], [69], [241]]
  c_119_118_0_False_resize <= c_118;
  c_119_118_0_False_shift <= shift_left(c_119_118_0_False_resize, 0);
  c_119_114_0_False_resize <= c_114;
  c_119_114_0_False_shift <= shift_left(c_119_114_0_False_resize, 0);
  c_119_90_0_False_resize <= c_90;
  c_119_90_0_False_shift <= shift_left(c_119_90_0_False_resize, 0);
  with config_select_15 select c_119_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_119_sel is
        when "00" => c_119 <= c_119_118_0_False_shift;
        when "01" => c_119 <= c_119_114_0_False_shift;
        when others => c_119 <= c_119_90_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 120 and associated fundamentals [[-125], [-112], [-248], [-250]]
  c_120_64_1_False_resize <= resize(c_64, 24);
  c_120_64_1_False_shift <= shift_left(c_120_64_1_False_resize, 1);
  c_120_29_0_False_resize <= c_29;
  c_120_29_0_False_shift <= shift_left(c_120_29_0_False_resize, 0);
  c_120_64_4_False_resize <= resize(c_64, 24);
  c_120_64_4_False_shift <= shift_left(c_120_64_4_False_resize, 4);
  with config_select_9 select c_120_sel <= 
    "00" when "10",
    "01" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_120_sel is
        when "00" => c_120 <= c_120_64_1_False_shift;
        when "01" => c_120 <= c_120_29_0_False_shift;
        when others => c_120 <= c_120_64_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 121 and associated fundamentals [[33], [-7], [-124], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_121 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 122 and associated fundamentals [[33], [-7], [-124], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_122 <= c_121 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 123 and associated fundamentals [[194], [120], [234], [160]]
  c_123_112_3_False_resize <= c_112;
  c_123_112_3_False_shift <= shift_left(c_123_112_3_False_resize, 3);
  c_123_72_1_False_resize <= resize(c_72, 24);
  c_123_72_1_False_shift <= shift_left(c_123_72_1_False_resize, 1);
  c_123_122_4_False_resize <= resize(c_122, 24);
  c_123_122_4_False_shift <= shift_left(c_123_122_4_False_resize, 4);
  c_123_83_0_False_resize <= c_83;
  c_123_83_0_False_shift <= shift_left(c_123_83_0_False_resize, 0);
  with config_select_13 select c_123_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_123_sel is
        when "00" => c_123 <= c_123_112_3_False_shift;
        when "01" => c_123 <= c_123_72_1_False_shift;
        when "10" => c_123 <= c_123_122_4_False_shift;
        when others => c_123 <= c_123_83_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 124 and associated fundamentals [[3], [17], [6], [-254]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_124 <= c_103 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 125 and associated fundamentals [[3], [17], [6], [-254]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_125 <= c_124 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 126 and associated fundamentals [[149], [-106], [123], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_126 <= c_107 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 127 and associated fundamentals [[149], [-106], [123], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_127 <= c_126 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 128 and associated fundamentals [[-109], [205], [249], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_128 <= c_99 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 129 and associated fundamentals [[-109], [205], [249], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_129 <= c_128 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 130 and associated fundamentals [[-218], [-106], [-101], [-254]]
  c_130_127_0_False_resize <= c_127;
  c_130_127_0_False_shift <= shift_left(c_130_127_0_False_resize, 0);
  c_130_90_0_False_resize <= c_90;
  c_130_90_0_False_shift <= shift_left(c_130_90_0_False_resize, 0);
  c_130_129_1_False_resize <= c_129;
  c_130_129_1_False_shift <= shift_left(c_130_129_1_False_resize, 1);
  c_130_125_0_False_resize <= c_125;
  c_130_125_0_False_shift <= shift_left(c_130_125_0_False_resize, 0);
  with config_select_15 select c_130_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_130_sel is
        when "00" => c_130 <= c_130_127_0_False_shift;
        when "01" => c_130 <= c_130_90_0_False_shift;
        when "10" => c_130 <= c_130_129_1_False_shift;
        when others => c_130 <= c_130_125_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 131 and associated fundamentals [[11], [115], [172], [164]]
  c_131_90_0_False_resize <= c_90;
  c_131_90_0_False_shift <= shift_left(c_131_90_0_False_resize, 0);
  c_131_114_1_False_resize <= c_114;
  c_131_114_1_False_shift <= shift_left(c_131_114_1_False_resize, 1);
  c_131_114_0_False_resize <= c_114;
  c_131_114_0_False_shift <= shift_left(c_131_114_0_False_resize, 0);
  with config_select_15 select c_131_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_131_sel is
        when "00" => c_131 <= c_131_90_0_False_shift;
        when "01" => c_131 <= c_131_114_1_False_shift;
        when others => c_131 <= c_131_114_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 132 and associated fundamentals [[15], [18], [61], [87]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_132 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 133 and associated fundamentals [[15], [18], [61], [87]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_133 <= c_132 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 134 and associated fundamentals [[236], [18], [246], [204]]
  c_134_72_2_False_resize <= resize(c_72, 24);
  c_134_72_2_False_shift <= shift_left(c_134_72_2_False_resize, 2);
  c_134_107_1_False_resize <= c_107;
  c_134_107_1_False_shift <= shift_left(c_134_107_1_False_resize, 1);
  c_134_133_0_False_resize <= resize(c_133, 24);
  c_134_133_0_False_shift <= shift_left(c_134_133_0_False_resize, 0);
  with config_select_13 select c_134_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_134_sel is
        when "00" => c_134 <= c_134_72_2_False_shift;
        when "01" => c_134 <= c_134_107_1_False_shift;
        when others => c_134 <= c_134_133_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 135 and associated fundamentals [[149], [205], [249], [19]]
  c_135_99_0_False_resize <= c_99;
  c_135_99_0_False_shift <= shift_left(c_135_99_0_False_resize, 0);
  c_135_107_0_False_resize <= c_107;
  c_135_107_0_False_shift <= shift_left(c_135_107_0_False_resize, 0);
  with config_select_13 select c_135_sel <= 
    "0" when "10",
    "0" when "01",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_135_sel is
        when "0" => c_135 <= c_135_99_0_False_shift;
        when others => c_135 <= c_135_107_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 136 and associated fundamentals [[240], [27], [48], [107]]
  c_136_103_3_False_resize <= c_103;
  c_136_103_3_False_shift <= shift_left(c_136_103_3_False_resize, 3);
  c_136_133_4_False_resize <= resize(c_133, 24);
  c_136_133_4_False_shift <= shift_left(c_136_133_4_False_resize, 4);
  c_136_83_0_False_resize <= c_83;
  c_136_83_0_False_shift <= shift_left(c_136_83_0_False_resize, 0);
  with config_select_13 select c_136_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_136_sel is
        when "00" => c_136 <= c_136_103_3_False_shift;
        when "01" => c_136 <= c_136_133_4_False_shift;
        when others => c_136 <= c_136_83_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 137 and associated fundamentals [[132], [86], [244], [87]]
  c_137_133_0_False_resize <= resize(c_133, 24);
  c_137_133_0_False_shift <= shift_left(c_137_133_0_False_resize, 0);
  c_137_133_2_False_resize <= resize(c_133, 24);
  c_137_133_2_False_shift <= shift_left(c_137_133_2_False_resize, 2);
  c_137_122_2_False_resize <= resize(c_122, 24);
  c_137_122_2_False_shift <= shift_left(c_137_122_2_False_resize, 2);
  c_137_72_1_False_resize <= resize(c_72, 24);
  c_137_72_1_False_shift <= shift_left(c_137_72_1_False_resize, 1);
  with config_select_13 select c_137_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_137_sel is
        when "00" => c_137 <= c_137_133_0_False_shift;
        when "01" => c_137 <= c_137_133_2_False_shift;
        when "10" => c_137 <= c_137_122_2_False_shift;
        when others => c_137 <= c_137_72_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 138 and associated fundamentals [[57], [34], [81], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_138 <= c_108 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 139 and associated fundamentals [[57], [34], [81], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_139 <= c_138 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 140 and associated fundamentals [[57], [34], [81], [94]]
  c_140_resize <= c_139;
  c_140 <= shift_left(c_140_resize, 0);
  -- node of type 'output' in stage 15 with id 141 and associated fundamentals [[191], [192], [69], [241]]
  c_141_resize <= c_119;
  c_141 <= shift_left(c_141_resize, 0);
  -- node of type 'register' in stage 10 with id 142 and associated fundamentals [[-125], [-112], [-248], [-250]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_142 <= c_120 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 143 and associated fundamentals [[-125], [-112], [-248], [-250]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_143 <= c_142 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 144 and associated fundamentals [[-125], [-112], [-248], [-250]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_144 <= c_143 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 145 and associated fundamentals [[-125], [-112], [-248], [-250]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_145 <= c_144 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 146 and associated fundamentals [[-125], [-112], [-248], [-250]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_146 <= c_145 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 147 and associated fundamentals [[-125], [-112], [-248], [-250]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_147 <= c_146 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 148 and associated fundamentals [[125], [112], [248], [250]]
  c_148_resize <= c_147;
  c_148 <= -shift_left(c_148_resize, 0);
  -- node of type 'register' in stage 14 with id 149 and associated fundamentals [[194], [120], [234], [160]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_149 <= c_123 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 150 and associated fundamentals [[194], [120], [234], [160]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_150 <= c_149 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 151 and associated fundamentals [[194], [120], [234], [160]]
  c_151_resize <= c_150;
  c_151 <= shift_left(c_151_resize, 0);
  -- node of type 'output' in stage 15 with id 152 and associated fundamentals [[218], [106], [101], [254]]
  c_152_resize <= c_130;
  c_152 <= -shift_left(c_152_resize, 0);
  -- node of type 'output' in stage 15 with id 153 and associated fundamentals [[11], [115], [172], [164]]
  c_153_resize <= c_131;
  c_153 <= shift_left(c_153_resize, 0);
  -- node of type 'register' in stage 14 with id 154 and associated fundamentals [[236], [18], [246], [204]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_154 <= c_134 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 155 and associated fundamentals [[236], [18], [246], [204]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_155 <= c_154 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 156 and associated fundamentals [[236], [18], [246], [204]]
  c_156_resize <= c_155;
  c_156 <= shift_left(c_156_resize, 0);
  -- node of type 'register' in stage 14 with id 157 and associated fundamentals [[149], [205], [249], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_157 <= c_135 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 158 and associated fundamentals [[149], [205], [249], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_158 <= c_157 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 159 and associated fundamentals [[149], [205], [249], [19]]
  c_159_resize <= c_158;
  c_159 <= shift_left(c_159_resize, 0);
  -- node of type 'register' in stage 14 with id 160 and associated fundamentals [[240], [27], [48], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_160 <= c_136 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 161 and associated fundamentals [[240], [27], [48], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_161 <= c_160 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 162 and associated fundamentals [[240], [27], [48], [107]]
  c_162_resize <= c_161;
  c_162 <= shift_left(c_162_resize, 0);
  -- node of type 'register' in stage 14 with id 163 and associated fundamentals [[132], [86], [244], [87]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_163 <= c_137 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 164 and associated fundamentals [[132], [86], [244], [87]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_164 <= c_163 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 165 and associated fundamentals [[132], [86], [244], [87]]
  c_165_resize <= c_164;
  c_165 <= shift_left(c_165_resize, 0);
end architecture;
