library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(24 downto 0);
    y_1: out std_logic_vector(24 downto 0);
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
  signal config_select_16: std_logic_vector(0 downto 0);
  signal config_select_17: std_logic_vector(0 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_0_4_False_resize: signed(19 downto 0);
  signal c_1_0_4_False_shift: signed(19 downto 0);
  signal c_1_0_0_False_resize: signed(19 downto 0);
  signal c_1_0_0_False_shift: signed(19 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(23 downto 0);
  signal c_3_i0_resize: signed(23 downto 0);
  signal c_3_i1_resize: signed(23 downto 0);
  signal c_3_i0_shift: signed(23 downto 0);
  signal c_3_i1_shift: signed(23 downto 0);
  signal c_3_arith: signed(23 downto 0);
  signal c_3_oshift: signed(23 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_5: signed(24 downto 0);
  signal c_5_4_9_False_resize: signed(24 downto 0);
  signal c_5_4_9_False_shift: signed(24 downto 0);
  signal c_5_3_0_False_resize: signed(24 downto 0);
  signal c_5_3_0_False_shift: signed(24 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(18 downto 0);
  signal c_6_0_3_False_resize: signed(18 downto 0);
  signal c_6_0_3_False_shift: signed(18 downto 0);
  signal c_6_0_0_False_resize: signed(18 downto 0);
  signal c_6_0_0_False_shift: signed(18 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(18 downto 0);
  signal c_8: signed(18 downto 0);
  signal c_9: signed(24 downto 0);
  signal c_9_i0_resize: signed(24 downto 0);
  signal c_9_i1_resize: signed(24 downto 0);
  signal c_9_i0_shift: signed(24 downto 0);
  signal c_9_i1_shift: signed(24 downto 0);
  signal c_9_arith: signed(24 downto 0);
  signal c_9_oshift: signed(24 downto 0);
  signal c_10: signed(17 downto 0);
  signal c_10_0_0_False_resize: signed(17 downto 0);
  signal c_10_0_0_False_shift: signed(17 downto 0);
  signal c_10_0_2_False_resize: signed(17 downto 0);
  signal c_10_0_2_False_shift: signed(17 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(15 downto 0);
  signal c_12: signed(15 downto 0);
  signal c_13: signed(24 downto 0);
  signal c_13_9_0_False_resize: signed(24 downto 0);
  signal c_13_9_0_False_shift: signed(24 downto 0);
  signal c_13_12_2_False_resize: signed(24 downto 0);
  signal c_13_12_2_False_shift: signed(24 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(17 downto 0);
  signal c_15: signed(17 downto 0);
  signal c_16: signed(17 downto 0);
  signal c_17: signed(17 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_i0_resize: signed(25 downto 0);
  signal c_18_i1_resize: signed(25 downto 0);
  signal c_18_i0_shift: signed(25 downto 0);
  signal c_18_i1_shift: signed(25 downto 0);
  signal c_18_arith: signed(25 downto 0);
  signal c_18_oshift: signed(25 downto 0);
  signal c_19: signed(15 downto 0);
  signal c_20: signed(15 downto 0);
  signal c_21: signed(19 downto 0);
  signal c_21_20_2_False_resize: signed(19 downto 0);
  signal c_21_20_2_False_shift: signed(19 downto 0);
  signal c_21_18_0_False_resize: signed(19 downto 0);
  signal c_21_18_0_False_shift: signed(19 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_9_0_False_resize: signed(23 downto 0);
  signal c_24_9_0_False_shift: signed(23 downto 0);
  signal c_24_23_0_False_resize: signed(23 downto 0);
  signal c_24_23_0_False_shift: signed(23 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_i0_resize: signed(23 downto 0);
  signal c_27_i1_resize: signed(23 downto 0);
  signal c_27_i0_shift: signed(23 downto 0);
  signal c_27_i1_shift: signed(23 downto 0);
  signal c_27_arith: signed(23 downto 0);
  signal c_27_oshift: signed(23 downto 0);
  signal c_28: signed(21 downto 0);
  signal c_28_3_0_False_resize: signed(21 downto 0);
  signal c_28_3_0_False_shift: signed(21 downto 0);
  signal c_28_4_6_False_resize: signed(21 downto 0);
  signal c_28_4_6_False_shift: signed(21 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_9_0_False_resize: signed(23 downto 0);
  signal c_29_9_0_False_shift: signed(23 downto 0);
  signal c_29_23_4_False_resize: signed(23 downto 0);
  signal c_29_23_4_False_shift: signed(23 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(21 downto 0);
  signal c_31: signed(21 downto 0);
  signal c_32: signed(24 downto 0);
  signal c_32_i0_resize: signed(24 downto 0);
  signal c_32_i1_resize: signed(24 downto 0);
  signal c_32_i0_shift: signed(24 downto 0);
  signal c_32_i1_shift: signed(24 downto 0);
  signal c_32_arith: signed(24 downto 0);
  signal c_32_oshift: signed(24 downto 0);
  signal c_33: signed(15 downto 0);
  signal c_34: signed(15 downto 0);
  signal c_35: signed(22 downto 0);
  signal c_35_27_0_False_resize: signed(22 downto 0);
  signal c_35_27_0_False_shift: signed(22 downto 0);
  signal c_35_34_0_False_resize: signed(22 downto 0);
  signal c_35_34_0_False_shift: signed(22 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_27_0_False_resize: signed(23 downto 0);
  signal c_36_27_0_False_shift: signed(23 downto 0);
  signal c_36_34_3_False_resize: signed(23 downto 0);
  signal c_36_34_3_False_shift: signed(23 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_i0_resize: signed(25 downto 0);
  signal c_37_i1_resize: signed(25 downto 0);
  signal c_37_i0_shift: signed(25 downto 0);
  signal c_37_i1_shift: signed(25 downto 0);
  signal c_37_arith: signed(25 downto 0);
  signal c_37_oshift: signed(25 downto 0);
  signal c_37_sub_sel: std_logic;
  signal c_38: signed(24 downto 0);
  signal c_38_20_0_False_resize: signed(24 downto 0);
  signal c_38_20_0_False_shift: signed(24 downto 0);
  signal c_38_32_0_False_resize: signed(24 downto 0);
  signal c_38_32_0_False_shift: signed(24 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(22 downto 0);
  signal c_39_i0_resize: signed(22 downto 0);
  signal c_39_i1_resize: signed(22 downto 0);
  signal c_39_i0_shift: signed(22 downto 0);
  signal c_39_i1_shift: signed(22 downto 0);
  signal c_39_arith: signed(22 downto 0);
  signal c_39_oshift: signed(22 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_9_0_False_resize: signed(23 downto 0);
  signal c_40_9_0_False_shift: signed(23 downto 0);
  signal c_40_23_2_False_resize: signed(23 downto 0);
  signal c_40_23_2_False_shift: signed(23 downto 0);
  signal c_40_sel: std_logic_vector(0 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_43_42_0_False_resize: signed(25 downto 0);
  signal c_43_42_0_False_shift: signed(25 downto 0);
  signal c_43_39_0_False_resize: signed(25 downto 0);
  signal c_43_39_0_False_shift: signed(25 downto 0);
  signal c_43_sel: std_logic_vector(0 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_48: signed(24 downto 0);
  signal c_48_i0_resize: signed(24 downto 0);
  signal c_48_i1_resize: signed(24 downto 0);
  signal c_48_i0_shift: signed(24 downto 0);
  signal c_48_i1_shift: signed(24 downto 0);
  signal c_48_arith: signed(24 downto 0);
  signal c_48_oshift: signed(24 downto 0);
  signal c_49: signed(15 downto 0);
  signal c_50: signed(15 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_51_50_6_False_resize: signed(23 downto 0);
  signal c_51_50_6_False_shift: signed(23 downto 0);
  signal c_51_37_0_False_resize: signed(23 downto 0);
  signal c_51_37_0_False_shift: signed(23 downto 0);
  signal c_51_sel: std_logic_vector(0 downto 0);
  signal c_52: signed(24 downto 0);
  signal c_53: signed(24 downto 0);
  signal c_54: signed(24 downto 0);
  signal c_55: signed(24 downto 0);
  signal c_56: signed(24 downto 0);
  signal c_57: signed(24 downto 0);
  signal c_58: signed(24 downto 0);
  signal c_58_37_1_False_resize: signed(24 downto 0);
  signal c_58_37_1_False_shift: signed(24 downto 0);
  signal c_58_57_0_False_resize: signed(24 downto 0);
  signal c_58_57_0_False_shift: signed(24 downto 0);
  signal c_58_sel: std_logic_vector(0 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_59_i0_resize: signed(25 downto 0);
  signal c_59_i1_resize: signed(25 downto 0);
  signal c_59_i0_shift: signed(25 downto 0);
  signal c_59_i1_shift: signed(25 downto 0);
  signal c_59_arith: signed(25 downto 0);
  signal c_59_oshift: signed(25 downto 0);
  signal c_59_sub_sel: std_logic;
  signal c_60: signed(22 downto 0);
  signal c_60_4_0_False_resize: signed(22 downto 0);
  signal c_60_4_0_False_shift: signed(22 downto 0);
  signal c_60_3_3_False_resize: signed(22 downto 0);
  signal c_60_3_3_False_shift: signed(22 downto 0);
  signal c_60_sel: std_logic_vector(0 downto 0);
  signal c_61: signed(20 downto 0);
  signal c_61_20_0_False_resize: signed(20 downto 0);
  signal c_61_20_0_False_shift: signed(20 downto 0);
  signal c_61_18_1_False_resize: signed(20 downto 0);
  signal c_61_18_1_False_shift: signed(20 downto 0);
  signal c_61_sel: std_logic_vector(0 downto 0);
  signal c_62: signed(22 downto 0);
  signal c_63: signed(22 downto 0);
  signal c_64: signed(22 downto 0);
  signal c_65: signed(22 downto 0);
  signal c_66: signed(25 downto 0);
  signal c_66_i0_resize: signed(25 downto 0);
  signal c_66_i1_resize: signed(25 downto 0);
  signal c_66_i0_shift: signed(25 downto 0);
  signal c_66_i1_shift: signed(25 downto 0);
  signal c_66_arith: signed(25 downto 0);
  signal c_66_oshift: signed(25 downto 0);
  signal c_66_sub_sel: std_logic;
  signal c_67: signed(25 downto 0);
  signal c_68: signed(25 downto 0);
  signal c_69: signed(23 downto 0);
  signal c_69_68_1_False_resize: signed(23 downto 0);
  signal c_69_68_1_False_shift: signed(23 downto 0);
  signal c_69_37_0_False_resize: signed(23 downto 0);
  signal c_69_37_0_False_shift: signed(23 downto 0);
  signal c_69_sel: std_logic_vector(0 downto 0);
  signal c_70: signed(26 downto 0);
  signal c_70_18_1_False_resize: signed(26 downto 0);
  signal c_70_18_1_False_shift: signed(26 downto 0);
  signal c_70_53_0_False_resize: signed(26 downto 0);
  signal c_70_53_0_False_shift: signed(26 downto 0);
  signal c_70_sel: std_logic_vector(0 downto 0);
  signal c_71: signed(26 downto 0);
  signal c_72: signed(26 downto 0);
  signal c_73: signed(26 downto 0);
  signal c_74: signed(26 downto 0);
  signal c_75: signed(25 downto 0);
  signal c_75_i0_resize: signed(25 downto 0);
  signal c_75_i1_resize: signed(25 downto 0);
  signal c_75_i0_shift: signed(25 downto 0);
  signal c_75_i1_shift: signed(25 downto 0);
  signal c_75_arith: signed(25 downto 0);
  signal c_75_oshift: signed(25 downto 0);
  signal c_75_sub_sel: std_logic;
  signal c_76: signed(24 downto 0);
  signal c_76_27_0_False_resize: signed(24 downto 0);
  signal c_76_27_0_False_shift: signed(24 downto 0);
  signal c_76_55_0_False_resize: signed(24 downto 0);
  signal c_76_55_0_False_shift: signed(24 downto 0);
  signal c_76_sel: std_logic_vector(0 downto 0);
  signal c_77: signed(25 downto 0);
  signal c_78: signed(25 downto 0);
  signal c_78_i0_resize: signed(25 downto 0);
  signal c_78_i1_resize: signed(25 downto 0);
  signal c_78_i0_shift: signed(25 downto 0);
  signal c_78_i1_shift: signed(25 downto 0);
  signal c_78_arith: signed(25 downto 0);
  signal c_78_oshift: signed(25 downto 0);
  signal c_79: signed(23 downto 0);
  signal c_80: signed(23 downto 0);
  signal c_81: signed(23 downto 0);
  signal c_82: signed(23 downto 0);
  signal c_83: signed(23 downto 0);
  signal c_84: signed(23 downto 0);
  signal c_85: signed(23 downto 0);
  signal c_86: signed(23 downto 0);
  signal c_87: signed(25 downto 0);
  signal c_87_86_0_False_resize: signed(25 downto 0);
  signal c_87_86_0_False_shift: signed(25 downto 0);
  signal c_87_59_0_False_resize: signed(25 downto 0);
  signal c_87_59_0_False_shift: signed(25 downto 0);
  signal c_87_sel: std_logic_vector(0 downto 0);
  signal c_88: signed(25 downto 0);
  signal c_88_32_1_False_resize: signed(25 downto 0);
  signal c_88_32_1_False_shift: signed(25 downto 0);
  signal c_88_80_0_False_resize: signed(25 downto 0);
  signal c_88_80_0_False_shift: signed(25 downto 0);
  signal c_88_sel: std_logic_vector(0 downto 0);
  signal c_89: signed(25 downto 0);
  signal c_90: signed(25 downto 0);
  signal c_91: signed(25 downto 0);
  signal c_92: signed(25 downto 0);
  signal c_93: signed(25 downto 0);
  signal c_94: signed(25 downto 0);
  signal c_95: signed(25 downto 0);
  signal c_95_i0_resize: signed(25 downto 0);
  signal c_95_i1_resize: signed(25 downto 0);
  signal c_95_i0_shift: signed(25 downto 0);
  signal c_95_i1_shift: signed(25 downto 0);
  signal c_95_arith: signed(25 downto 0);
  signal c_95_oshift: signed(25 downto 0);
  signal c_95_sub_sel: std_logic;
  signal c_96: signed(24 downto 0);
  signal c_97: signed(24 downto 0);
  signal c_98: signed(24 downto 0);
  signal c_98_59_0_False_resize: signed(24 downto 0);
  signal c_98_59_0_False_shift: signed(24 downto 0);
  signal c_98_97_0_False_resize: signed(24 downto 0);
  signal c_98_97_0_False_shift: signed(24 downto 0);
  signal c_98_sel: std_logic_vector(0 downto 0);
  signal c_99: signed(22 downto 0);
  signal c_100: signed(22 downto 0);
  signal c_101: signed(24 downto 0);
  signal c_101_48_0_False_resize: signed(24 downto 0);
  signal c_101_48_0_False_shift: signed(24 downto 0);
  signal c_101_100_0_False_resize: signed(24 downto 0);
  signal c_101_100_0_False_shift: signed(24 downto 0);
  signal c_101_sel: std_logic_vector(0 downto 0);
  signal c_102: signed(25 downto 0);
  signal c_103: signed(25 downto 0);
  signal c_104: signed(25 downto 0);
  signal c_105: signed(25 downto 0);
  signal c_106: signed(25 downto 0);
  signal c_107: signed(25 downto 0);
  signal c_107_106_2_False_resize: signed(25 downto 0);
  signal c_107_106_2_False_shift: signed(25 downto 0);
  signal c_107_95_0_False_resize: signed(25 downto 0);
  signal c_107_95_0_False_shift: signed(25 downto 0);
  signal c_107_sel: std_logic_vector(0 downto 0);
  signal c_108: signed(24 downto 0);
  signal c_109: signed(24 downto 0);
  signal c_110: signed(24 downto 0);
  signal c_110_109_0_False_resize: signed(24 downto 0);
  signal c_110_109_0_False_shift: signed(24 downto 0);
  signal c_110_27_0_False_resize: signed(24 downto 0);
  signal c_110_27_0_False_shift: signed(24 downto 0);
  signal c_110_sel: std_logic_vector(0 downto 0);
  signal c_111: signed(25 downto 0);
  signal c_112: signed(25 downto 0);
  signal c_113: signed(25 downto 0);
  signal c_113_75_0_False_resize: signed(25 downto 0);
  signal c_113_75_0_False_shift: signed(25 downto 0);
  signal c_113_112_0_False_resize: signed(25 downto 0);
  signal c_113_112_0_False_shift: signed(25 downto 0);
  signal c_113_sel: std_logic_vector(0 downto 0);
  signal c_114: signed(25 downto 0);
  signal c_114_32_0_False_resize: signed(25 downto 0);
  signal c_114_32_0_False_shift: signed(25 downto 0);
  signal c_114_53_2_False_resize: signed(25 downto 0);
  signal c_114_53_2_False_shift: signed(25 downto 0);
  signal c_114_sel: std_logic_vector(0 downto 0);
  signal c_115: signed(25 downto 0);
  signal c_116: signed(25 downto 0);
  signal c_117: signed(25 downto 0);
  signal c_117_116_0_False_resize: signed(25 downto 0);
  signal c_117_116_0_False_shift: signed(25 downto 0);
  signal c_117_75_0_False_resize: signed(25 downto 0);
  signal c_117_75_0_False_shift: signed(25 downto 0);
  signal c_117_sel: std_logic_vector(0 downto 0);
  signal c_118: signed(25 downto 0);
  signal c_119: signed(25 downto 0);
  signal c_120: signed(25 downto 0);
  signal c_120_119_0_False_resize: signed(25 downto 0);
  signal c_120_119_0_False_shift: signed(25 downto 0);
  signal c_120_59_0_False_resize: signed(25 downto 0);
  signal c_120_59_0_False_shift: signed(25 downto 0);
  signal c_120_sel: std_logic_vector(0 downto 0);
  signal c_121: signed(25 downto 0);
  signal c_121_102_0_False_resize: signed(25 downto 0);
  signal c_121_102_0_False_shift: signed(25 downto 0);
  signal c_121_78_0_False_resize: signed(25 downto 0);
  signal c_121_78_0_False_shift: signed(25 downto 0);
  signal c_121_sel: std_logic_vector(0 downto 0);
  signal c_122: signed(22 downto 0);
  signal c_123: signed(22 downto 0);
  signal c_124: signed(22 downto 0);
  signal c_125: signed(22 downto 0);
  signal c_126: signed(25 downto 0);
  signal c_126_95_0_False_resize: signed(25 downto 0);
  signal c_126_95_0_False_shift: signed(25 downto 0);
  signal c_126_125_0_False_resize: signed(25 downto 0);
  signal c_126_125_0_False_shift: signed(25 downto 0);
  signal c_126_sel: std_logic_vector(0 downto 0);
  signal c_127: signed(24 downto 0);
  signal c_128: signed(24 downto 0);
  signal c_129: signed(24 downto 0);
  signal c_129_resize: signed(24 downto 0);
  signal c_130: signed(24 downto 0);
  signal c_131: signed(24 downto 0);
  signal c_132: signed(24 downto 0);
  signal c_133: signed(24 downto 0);
  signal c_134: signed(24 downto 0);
  signal c_134_resize: signed(24 downto 0);
  signal c_135: signed(25 downto 0);
  signal c_135_resize: signed(25 downto 0);
  signal c_136: signed(24 downto 0);
  signal c_137: signed(24 downto 0);
  signal c_138: signed(24 downto 0);
  signal c_139: signed(24 downto 0);
  signal c_140: signed(24 downto 0);
  signal c_141: signed(24 downto 0);
  signal c_142: signed(25 downto 0);
  signal c_142_resize: signed(25 downto 0);
  signal c_143: signed(25 downto 0);
  signal c_144: signed(25 downto 0);
  signal c_145: signed(25 downto 0);
  signal c_145_resize: signed(25 downto 0);
  signal c_146: signed(25 downto 0);
  signal c_147: signed(25 downto 0);
  signal c_148: signed(25 downto 0);
  signal c_149: signed(25 downto 0);
  signal c_150: signed(25 downto 0);
  signal c_151: signed(25 downto 0);
  signal c_152: signed(25 downto 0);
  signal c_153: signed(25 downto 0);
  signal c_154: signed(25 downto 0);
  signal c_154_resize: signed(25 downto 0);
  signal c_155: signed(25 downto 0);
  signal c_156: signed(25 downto 0);
  signal c_157: signed(25 downto 0);
  signal c_157_resize: signed(25 downto 0);
  signal c_158: signed(25 downto 0);
  signal c_159: signed(25 downto 0);
  signal c_160: signed(25 downto 0);
  signal c_160_resize: signed(25 downto 0);
  signal c_161: signed(25 downto 0);
  signal c_162: signed(25 downto 0);
  signal c_163: signed(25 downto 0);
  signal c_164: signed(25 downto 0);
  signal c_165: signed(25 downto 0);
  signal c_165_resize: signed(25 downto 0);
  signal c_166: signed(25 downto 0);
  signal c_166_resize: signed(25 downto 0);
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
  -- output node 0 with id 129
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_129);
    end if;
  end process;
  -- output node 1 with id 134
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_134);
    end if;
  end process;
  -- output node 2 with id 135
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_135);
    end if;
  end process;
  -- output node 3 with id 142
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_142);
    end if;
  end process;
  -- output node 4 with id 145
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_145);
    end if;
  end process;
  -- output node 5 with id 154
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_154);
    end if;
  end process;
  -- output node 6 with id 157
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_157);
    end if;
  end process;
  -- output node 7 with id 160
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_160);
    end if;
  end process;
  -- output node 8 with id 165
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_165);
    end if;
  end process;
  -- output node 9 with id 166
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_166);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [16]]
  c_1_0_4_False_resize <= resize(c_0, 20);
  c_1_0_4_False_shift <= shift_left(c_1_0_4_False_resize, 4);
  c_1_0_0_False_resize <= resize(c_0, 20);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  with config_select_1 select c_1_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_4_False_shift;
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
  -- node of type 'sub' in stage 2 with id 3 and associated fundamentals [[15], [255]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 16,
      w_o => 24,
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
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[512], [255]]
  c_5_4_9_False_resize <= resize(c_4, 25);
  c_5_4_9_False_shift <= shift_left(c_5_4_9_False_resize, 9);
  c_5_3_0_False_resize <= resize(c_3, 25);
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  with config_select_3 select c_5_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_4_9_False_shift;
        when others => c_5 <= c_5_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 6 and associated fundamentals [[1], [8]]
  c_6_0_3_False_resize <= resize(c_0, 19);
  c_6_0_3_False_shift <= shift_left(c_6_0_3_False_resize, 3);
  c_6_0_0_False_resize <= resize(c_0, 19);
  c_6_0_0_False_shift <= shift_left(c_6_0_0_False_resize, 0);
  with config_select_1 select c_6_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_0_3_False_shift;
        when others => c_6 <= c_6_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 7 and associated fundamentals [[1], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[1], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_7 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 9 and associated fundamentals [[511], [247]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 19,
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
      x_i => c_5,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 10 and associated fundamentals [[4], [1]]
  c_10_0_0_False_resize <= resize(c_0, 18);
  c_10_0_0_False_shift <= shift_left(c_10_0_0_False_resize, 0);
  c_10_0_2_False_resize <= resize(c_0, 18);
  c_10_0_2_False_shift <= shift_left(c_10_0_2_False_resize, 2);
  with config_select_1 select c_10_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_0_0_False_shift;
        when others => c_10 <= c_10_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 13 and associated fundamentals [[511], [4]]
  c_13_9_0_False_resize <= c_9;
  c_13_9_0_False_shift <= shift_left(c_13_9_0_False_resize, 0);
  c_13_12_2_False_resize <= resize(c_12, 25);
  c_13_12_2_False_shift <= shift_left(c_13_12_2_False_resize, 2);
  with config_select_5 select c_13_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_9_0_False_shift;
        when others => c_13 <= c_13_12_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 14 and associated fundamentals [[4], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 15 and associated fundamentals [[4], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 16 and associated fundamentals [[4], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 17 and associated fundamentals [[4], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'add' in stage 6 with id 18 and associated fundamentals [[543], [12]]
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 25,
      w_o => 26,
      s_x_i => 3,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_17,
      y_i => c_13,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 19 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 20 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 21 and associated fundamentals [[4], [12]]
  c_21_20_2_False_resize <= resize(c_20, 20);
  c_21_20_2_False_shift <= shift_left(c_21_20_2_False_resize, 2);
  c_21_18_0_False_resize <= c_18(19 downto 0);
  c_21_18_0_False_shift <= shift_left(c_21_18_0_False_resize, 0);
  with config_select_7 select c_21_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_20_2_False_shift;
        when others => c_21 <= c_21_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 22 and associated fundamentals [[15], [255]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 23 and associated fundamentals [[15], [255]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 24 and associated fundamentals [[15], [247]]
  c_24_9_0_False_resize <= c_9(23 downto 0);
  c_24_9_0_False_shift <= shift_left(c_24_9_0_False_resize, 0);
  c_24_23_0_False_resize <= c_23;
  c_24_23_0_False_shift <= shift_left(c_24_23_0_False_resize, 0);
  with config_select_5 select c_24_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_9_0_False_shift;
        when others => c_24 <= c_24_23_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 25 and associated fundamentals [[15], [247]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 26 and associated fundamentals [[15], [247]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 8 with id 27 and associated fundamentals [[113], [137]]
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 24,
      w_o => 24,
      s_x_i => 5,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_21,
      y_i => c_26,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 28 and associated fundamentals [[15], [64]]
  c_28_3_0_False_resize <= c_3(21 downto 0);
  c_28_3_0_False_shift <= shift_left(c_28_3_0_False_resize, 0);
  c_28_4_6_False_resize <= resize(c_4, 22);
  c_28_4_6_False_shift <= shift_left(c_28_4_6_False_resize, 6);
  with config_select_3 select c_28_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "0" => c_28 <= c_28_3_0_False_shift;
        when others => c_28 <= c_28_4_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 29 and associated fundamentals [[240], [247]]
  c_29_9_0_False_resize <= c_9(23 downto 0);
  c_29_9_0_False_shift <= shift_left(c_29_9_0_False_resize, 0);
  c_29_23_4_False_resize <= c_23;
  c_29_23_4_False_shift <= shift_left(c_29_23_4_False_resize, 4);
  with config_select_5 select c_29_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_9_0_False_shift;
        when others => c_29 <= c_29_23_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 30 and associated fundamentals [[15], [64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 31 and associated fundamentals [[15], [64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'add' in stage 6 with id 32 and associated fundamentals [[255], [311]]
  inst_adder_node_32: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 24,
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
  -- node of type 'register' in stage 7 with id 33 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 34 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 35 and associated fundamentals [[113], [1]]
  c_35_27_0_False_resize <= c_27(22 downto 0);
  c_35_27_0_False_shift <= shift_left(c_35_27_0_False_resize, 0);
  c_35_34_0_False_resize <= resize(c_34, 23);
  c_35_34_0_False_shift <= shift_left(c_35_34_0_False_resize, 0);
  with config_select_9 select c_35_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_27_0_False_shift;
        when others => c_35 <= c_35_34_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 36 and associated fundamentals [[8], [137]]
  c_36_27_0_False_resize <= c_27;
  c_36_27_0_False_shift <= shift_left(c_36_27_0_False_resize, 0);
  c_36_34_3_False_resize <= resize(c_34, 24);
  c_36_34_3_False_shift <= shift_left(c_36_34_3_False_resize, 3);
  with config_select_9 select c_36_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "0" => c_36 <= c_36_27_0_False_shift;
        when others => c_36 <= c_36_34_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 37 and associated fundamentals [[145], [-547]]
  with config_select_10 select c_37_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_37: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
      w_o => 26,
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
      sub_i => c_37_sub_sel,
      x_i => c_35,
      y_i => c_36,
      z_o => c_37_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_37_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 38 and associated fundamentals [[1], [311]]
  c_38_20_0_False_resize <= resize(c_20, 25);
  c_38_20_0_False_shift <= shift_left(c_38_20_0_False_resize, 0);
  c_38_32_0_False_resize <= c_32;
  c_38_32_0_False_shift <= shift_left(c_38_32_0_False_resize, 0);
  with config_select_7 select c_38_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "0" => c_38 <= c_38_20_0_False_shift;
        when others => c_38 <= c_38_32_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 8 with id 39 and associated fundamentals [[127], [73]]
  inst_adder_node_39: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 25,
      w_o => 23,
      s_x_i => 5,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_21,
      y_i => c_38,
      z_o => c_39_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_39_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 40 and associated fundamentals [[60], [247]]
  c_40_9_0_False_resize <= c_9(23 downto 0);
  c_40_9_0_False_shift <= shift_left(c_40_9_0_False_resize, 0);
  c_40_23_2_False_resize <= c_23;
  c_40_23_2_False_shift <= shift_left(c_40_23_2_False_resize, 2);
  with config_select_5 select c_40_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "0" => c_40 <= c_40_9_0_False_shift;
        when others => c_40 <= c_40_23_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 41 and associated fundamentals [[543], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 42 and associated fundamentals [[543], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 43 and associated fundamentals [[543], [73]]
  c_43_42_0_False_resize <= c_42;
  c_43_42_0_False_shift <= shift_left(c_43_42_0_False_resize, 0);
  c_43_39_0_False_resize <= resize(c_39, 26);
  c_43_39_0_False_shift <= shift_left(c_43_39_0_False_resize, 0);
  with config_select_9 select c_43_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "0" => c_43 <= c_43_42_0_False_shift;
        when others => c_43 <= c_43_39_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 44 and associated fundamentals [[60], [247]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 45 and associated fundamentals [[60], [247]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 46 and associated fundamentals [[60], [247]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 47 and associated fundamentals [[60], [247]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 10 with id 48 and associated fundamentals [[-423], [421]]
  inst_adder_node_48: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 26,
      w_o => 25,
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
      x_i => c_47,
      y_i => c_43,
      z_o => c_48_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_48_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 49 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 50 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 51 and associated fundamentals [[145], [64]]
  c_51_50_6_False_resize <= resize(c_50, 24);
  c_51_50_6_False_shift <= shift_left(c_51_50_6_False_resize, 6);
  c_51_37_0_False_resize <= c_37(23 downto 0);
  c_51_37_0_False_shift <= shift_left(c_51_37_0_False_resize, 0);
  with config_select_11 select c_51_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_51_sel is
        when "0" => c_51 <= c_51_50_6_False_shift;
        when others => c_51 <= c_51_37_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 52 and associated fundamentals [[511], [247]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 53 and associated fundamentals [[511], [247]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 54 and associated fundamentals [[511], [247]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 55 and associated fundamentals [[511], [247]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 56 and associated fundamentals [[511], [247]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 57 and associated fundamentals [[511], [247]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 58 and associated fundamentals [[290], [247]]
  c_58_37_1_False_resize <= c_37(24 downto 0);
  c_58_37_1_False_shift <= shift_left(c_58_37_1_False_resize, 1);
  c_58_57_0_False_resize <= c_57;
  c_58_57_0_False_shift <= shift_left(c_58_57_0_False_resize, 0);
  with config_select_11 select c_58_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_58_sel is
        when "0" => c_58 <= c_58_37_1_False_shift;
        when others => c_58 <= c_58_57_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 59 and associated fundamentals [[725], [-430]]
  with config_select_12 select c_59_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_59: entity work.adder_node
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
      sub_i => c_59_sub_sel,
      x_i => c_51,
      y_i => c_58,
      z_o => c_59_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_59_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 60 and associated fundamentals [[120], [1]]
  c_60_4_0_False_resize <= resize(c_4, 23);
  c_60_4_0_False_shift <= shift_left(c_60_4_0_False_resize, 0);
  c_60_3_3_False_resize <= c_3(22 downto 0);
  c_60_3_3_False_shift <= shift_left(c_60_3_3_False_resize, 3);
  with config_select_3 select c_60_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_60_sel is
        when "0" => c_60 <= c_60_4_0_False_shift;
        when others => c_60 <= c_60_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 61 and associated fundamentals [[1], [24]]
  c_61_20_0_False_resize <= resize(c_20, 21);
  c_61_20_0_False_shift <= shift_left(c_61_20_0_False_resize, 0);
  c_61_18_1_False_resize <= c_18(20 downto 0);
  c_61_18_1_False_shift <= shift_left(c_61_18_1_False_resize, 1);
  with config_select_7 select c_61_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_61_sel is
        when "0" => c_61 <= c_61_20_0_False_shift;
        when others => c_61 <= c_61_18_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 62 and associated fundamentals [[120], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 63 and associated fundamentals [[120], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 64 and associated fundamentals [[120], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 65 and associated fundamentals [[120], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 66 and associated fundamentals [[208], [770]]
  with config_select_8 select c_66_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_66: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
      w_o => 26,
      s_x_i => 1,
      s_y_i => 5,
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
      y_i => c_61,
      z_o => c_66_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_66_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 67 and associated fundamentals [[543], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 68 and associated fundamentals [[543], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 69 and associated fundamentals [[145], [24]]
  c_69_68_1_False_resize <= c_68(23 downto 0);
  c_69_68_1_False_shift <= shift_left(c_69_68_1_False_resize, 1);
  c_69_37_0_False_resize <= c_37(23 downto 0);
  c_69_37_0_False_shift <= shift_left(c_69_37_0_False_resize, 0);
  with config_select_11 select c_69_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_69_sel is
        when "0" => c_69 <= c_69_68_1_False_shift;
        when others => c_69 <= c_69_37_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 70 and associated fundamentals [[1086], [247]]
  c_70_18_1_False_resize <= resize(c_18, 27);
  c_70_18_1_False_shift <= shift_left(c_70_18_1_False_resize, 1);
  c_70_53_0_False_resize <= resize(c_53, 27);
  c_70_53_0_False_shift <= shift_left(c_70_53_0_False_resize, 0);
  with config_select_7 select c_70_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_70_sel is
        when "0" => c_70 <= c_70_18_1_False_shift;
        when others => c_70 <= c_70_53_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 71 and associated fundamentals [[1086], [247]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 72 and associated fundamentals [[1086], [247]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 73 and associated fundamentals [[1086], [247]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_72 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 74 and associated fundamentals [[1086], [247]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_73 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 75 and associated fundamentals [[-941], [271]]
  with config_select_12 select c_75_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_75: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_75_sub_sel,
      x_i => c_69,
      y_i => c_74,
      z_o => c_75_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_75_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 76 and associated fundamentals [[511], [137]]
  c_76_27_0_False_resize <= resize(c_27, 25);
  c_76_27_0_False_shift <= shift_left(c_76_27_0_False_resize, 0);
  c_76_55_0_False_resize <= c_55;
  c_76_55_0_False_shift <= shift_left(c_76_55_0_False_resize, 0);
  with config_select_9 select c_76_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_76_sel is
        when "0" => c_76 <= c_76_27_0_False_shift;
        when others => c_76 <= c_76_55_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 77 and associated fundamentals [[208], [770]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_66 & "";
    end if;
  end process;
  -- node of type 'add' in stage 10 with id 78 and associated fundamentals [[719], [907]]
  inst_adder_node_78: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 26,
      w_o => 26,
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
      x_i => c_76,
      y_i => c_77,
      z_o => c_78_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_78_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 79 and associated fundamentals [[15], [255]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 80 and associated fundamentals [[15], [255]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 81 and associated fundamentals [[15], [255]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_80 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 82 and associated fundamentals [[15], [255]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_81 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 83 and associated fundamentals [[15], [255]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_82 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 84 and associated fundamentals [[15], [255]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_83 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 85 and associated fundamentals [[15], [255]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_84 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 86 and associated fundamentals [[15], [255]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_85 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 87 and associated fundamentals [[725], [255]]
  c_87_86_0_False_resize <= resize(c_86, 26);
  c_87_86_0_False_shift <= shift_left(c_87_86_0_False_resize, 0);
  c_87_59_0_False_resize <= c_59;
  c_87_59_0_False_shift <= shift_left(c_87_59_0_False_resize, 0);
  with config_select_13 select c_87_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_87_sel is
        when "0" => c_87 <= c_87_86_0_False_shift;
        when others => c_87 <= c_87_59_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 88 and associated fundamentals [[15], [622]]
  c_88_32_1_False_resize <= resize(c_32, 26);
  c_88_32_1_False_shift <= shift_left(c_88_32_1_False_resize, 1);
  c_88_80_0_False_resize <= resize(c_80, 26);
  c_88_80_0_False_shift <= shift_left(c_88_80_0_False_resize, 0);
  with config_select_7 select c_88_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_88_sel is
        when "0" => c_88 <= c_88_32_1_False_shift;
        when others => c_88 <= c_88_80_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 89 and associated fundamentals [[15], [622]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_88 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 90 and associated fundamentals [[15], [622]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_89 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 91 and associated fundamentals [[15], [622]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_90 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 92 and associated fundamentals [[15], [622]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 93 and associated fundamentals [[15], [622]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_92 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 94 and associated fundamentals [[15], [622]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_93 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 95 and associated fundamentals [[710], [877]]
  with config_select_14 select c_95_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_95: entity work.adder_node
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
      sub_i => c_95_sub_sel,
      x_i => c_87,
      y_i => c_94,
      z_o => c_95_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_95_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 96 and associated fundamentals [[-423], [421]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 97 and associated fundamentals [[-423], [421]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_96 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 98 and associated fundamentals [[-423], [-430]]
  c_98_59_0_False_resize <= c_59(24 downto 0);
  c_98_59_0_False_shift <= shift_left(c_98_59_0_False_resize, 0);
  c_98_97_0_False_resize <= c_97;
  c_98_97_0_False_shift <= shift_left(c_98_97_0_False_resize, 0);
  with config_select_13 select c_98_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_98_sel is
        when "0" => c_98 <= c_98_59_0_False_shift;
        when others => c_98 <= c_98_97_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 99 and associated fundamentals [[127], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 100 and associated fundamentals [[127], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_99 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 101 and associated fundamentals [[127], [421]]
  c_101_48_0_False_resize <= c_48;
  c_101_48_0_False_shift <= shift_left(c_101_48_0_False_resize, 0);
  c_101_100_0_False_resize <= resize(c_100, 25);
  c_101_100_0_False_shift <= shift_left(c_101_100_0_False_resize, 0);
  with config_select_11 select c_101_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_101_sel is
        when "0" => c_101 <= c_101_48_0_False_shift;
        when others => c_101 <= c_101_100_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 102 and associated fundamentals [[208], [770]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 103 and associated fundamentals [[208], [770]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_102 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 104 and associated fundamentals [[208], [770]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_103 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 105 and associated fundamentals [[208], [770]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_104 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 106 and associated fundamentals [[208], [770]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_105 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 107 and associated fundamentals [[832], [877]]
  c_107_106_2_False_resize <= c_106;
  c_107_106_2_False_shift <= shift_left(c_107_106_2_False_resize, 2);
  c_107_95_0_False_resize <= c_95;
  c_107_95_0_False_shift <= shift_left(c_107_95_0_False_resize, 0);
  with config_select_15 select c_107_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_107_sel is
        when "0" => c_107 <= c_107_106_2_False_shift;
        when others => c_107 <= c_107_95_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 108 and associated fundamentals [[255], [311]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_108 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 109 and associated fundamentals [[255], [311]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_109 <= c_108 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 110 and associated fundamentals [[113], [311]]
  c_110_109_0_False_resize <= c_109;
  c_110_109_0_False_shift <= shift_left(c_110_109_0_False_resize, 0);
  c_110_27_0_False_resize <= resize(c_27, 25);
  c_110_27_0_False_shift <= shift_left(c_110_27_0_False_resize, 0);
  with config_select_9 select c_110_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_110_sel is
        when "0" => c_110 <= c_110_109_0_False_shift;
        when others => c_110 <= c_110_27_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 111 and associated fundamentals [[543], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 112 and associated fundamentals [[543], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_111 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 113 and associated fundamentals [[543], [271]]
  c_113_75_0_False_resize <= c_75;
  c_113_75_0_False_shift <= shift_left(c_113_75_0_False_resize, 0);
  c_113_112_0_False_resize <= c_112;
  c_113_112_0_False_shift <= shift_left(c_113_112_0_False_resize, 0);
  with config_select_13 select c_113_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_113_sel is
        when "0" => c_113 <= c_113_75_0_False_shift;
        when others => c_113 <= c_113_112_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 114 and associated fundamentals [[255], [988]]
  c_114_32_0_False_resize <= resize(c_32, 26);
  c_114_32_0_False_shift <= shift_left(c_114_32_0_False_resize, 0);
  c_114_53_2_False_resize <= resize(c_53, 26);
  c_114_53_2_False_shift <= shift_left(c_114_53_2_False_resize, 2);
  with config_select_7 select c_114_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_114_sel is
        when "0" => c_114 <= c_114_32_0_False_shift;
        when others => c_114 <= c_114_53_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 115 and associated fundamentals [[145], [-547]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 116 and associated fundamentals [[145], [-547]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_116 <= c_115 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 117 and associated fundamentals [[-941], [-547]]
  c_117_116_0_False_resize <= c_116;
  c_117_116_0_False_shift <= shift_left(c_117_116_0_False_resize, 0);
  c_117_75_0_False_resize <= c_75;
  c_117_75_0_False_shift <= shift_left(c_117_75_0_False_resize, 0);
  with config_select_13 select c_117_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_117_sel is
        when "0" => c_117 <= c_117_116_0_False_shift;
        when others => c_117 <= c_117_75_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 118 and associated fundamentals [[719], [907]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_118 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 119 and associated fundamentals [[719], [907]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_119 <= c_118 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 120 and associated fundamentals [[725], [907]]
  c_120_119_0_False_resize <= c_119;
  c_120_119_0_False_shift <= shift_left(c_120_119_0_False_resize, 0);
  c_120_59_0_False_resize <= c_59;
  c_120_59_0_False_shift <= shift_left(c_120_59_0_False_resize, 0);
  with config_select_13 select c_120_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_120_sel is
        when "0" => c_120 <= c_120_119_0_False_shift;
        when others => c_120 <= c_120_59_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 121 and associated fundamentals [[719], [770]]
  c_121_102_0_False_resize <= c_102;
  c_121_102_0_False_shift <= shift_left(c_121_102_0_False_resize, 0);
  c_121_78_0_False_resize <= c_78;
  c_121_78_0_False_shift <= shift_left(c_121_78_0_False_resize, 0);
  with config_select_11 select c_121_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_121_sel is
        when "0" => c_121 <= c_121_102_0_False_shift;
        when others => c_121 <= c_121_78_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 122 and associated fundamentals [[127], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_122 <= c_100 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 123 and associated fundamentals [[127], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_123 <= c_122 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 124 and associated fundamentals [[127], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_124 <= c_123 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 125 and associated fundamentals [[127], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_125 <= c_124 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 126 and associated fundamentals [[710], [73]]
  c_126_95_0_False_resize <= c_95;
  c_126_95_0_False_shift <= shift_left(c_126_95_0_False_resize, 0);
  c_126_125_0_False_resize <= resize(c_125, 26);
  c_126_125_0_False_shift <= shift_left(c_126_125_0_False_resize, 0);
  with config_select_15 select c_126_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_126_sel is
        when "0" => c_126 <= c_126_95_0_False_shift;
        when others => c_126 <= c_126_125_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 127 and associated fundamentals [[-423], [-430]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_127 <= c_98 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 128 and associated fundamentals [[-423], [-430]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_128 <= c_127 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 129 and associated fundamentals [[423], [430]]
  c_129_resize <= c_128;
  c_129 <= -shift_left(c_129_resize, 0);
  -- node of type 'register' in stage 12 with id 130 and associated fundamentals [[127], [421]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_130 <= c_101 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 131 and associated fundamentals [[127], [421]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_131 <= c_130 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 132 and associated fundamentals [[127], [421]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_132 <= c_131 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 133 and associated fundamentals [[127], [421]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_133 <= c_132 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 134 and associated fundamentals [[127], [421]]
  c_134_resize <= c_133;
  c_134 <= shift_left(c_134_resize, 0);
  -- node of type 'output' in stage 15 with id 135 and associated fundamentals [[832], [877]]
  c_135_resize <= c_107;
  c_135 <= shift_left(c_135_resize, 0);
  -- node of type 'register' in stage 10 with id 136 and associated fundamentals [[113], [311]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_136 <= c_110 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 137 and associated fundamentals [[113], [311]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_137 <= c_136 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 138 and associated fundamentals [[113], [311]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_138 <= c_137 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 139 and associated fundamentals [[113], [311]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_139 <= c_138 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 140 and associated fundamentals [[113], [311]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_140 <= c_139 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 141 and associated fundamentals [[113], [311]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_141 <= c_140 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 142 and associated fundamentals [[226], [622]]
  c_142_resize <= resize(c_141, 26);
  c_142 <= shift_left(c_142_resize, 1);
  -- node of type 'register' in stage 14 with id 143 and associated fundamentals [[543], [271]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_143 <= c_113 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 144 and associated fundamentals [[543], [271]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_144 <= c_143 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 145 and associated fundamentals [[543], [271]]
  c_145_resize <= c_144;
  c_145 <= shift_left(c_145_resize, 0);
  -- node of type 'register' in stage 8 with id 146 and associated fundamentals [[255], [988]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_146 <= c_114 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 147 and associated fundamentals [[255], [988]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_147 <= c_146 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 148 and associated fundamentals [[255], [988]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_148 <= c_147 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 149 and associated fundamentals [[255], [988]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_149 <= c_148 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 150 and associated fundamentals [[255], [988]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_150 <= c_149 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 151 and associated fundamentals [[255], [988]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_151 <= c_150 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 152 and associated fundamentals [[255], [988]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_152 <= c_151 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 153 and associated fundamentals [[255], [988]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_153 <= c_152 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 154 and associated fundamentals [[255], [988]]
  c_154_resize <= c_153;
  c_154 <= shift_left(c_154_resize, 0);
  -- node of type 'register' in stage 14 with id 155 and associated fundamentals [[-941], [-547]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_155 <= c_117 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 156 and associated fundamentals [[-941], [-547]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_156 <= c_155 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 157 and associated fundamentals [[941], [547]]
  c_157_resize <= c_156;
  c_157 <= -shift_left(c_157_resize, 0);
  -- node of type 'register' in stage 14 with id 158 and associated fundamentals [[725], [907]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_158 <= c_120 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 159 and associated fundamentals [[725], [907]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_159 <= c_158 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 160 and associated fundamentals [[725], [907]]
  c_160_resize <= c_159;
  c_160 <= shift_left(c_160_resize, 0);
  -- node of type 'register' in stage 12 with id 161 and associated fundamentals [[719], [770]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_161 <= c_121 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 162 and associated fundamentals [[719], [770]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_162 <= c_161 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 163 and associated fundamentals [[719], [770]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_163 <= c_162 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 164 and associated fundamentals [[719], [770]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_164 <= c_163 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 165 and associated fundamentals [[719], [770]]
  c_165_resize <= c_164;
  c_165 <= shift_left(c_165_resize, 0);
  -- node of type 'output' in stage 15 with id 166 and associated fundamentals [[710], [73]]
  c_166_resize <= c_126;
  c_166 <= shift_left(c_166_resize, 0);
end architecture;
