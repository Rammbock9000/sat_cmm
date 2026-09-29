library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(24 downto 0);
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
  signal c_1_0_2_False_resize: signed(17 downto 0);
  signal c_1_0_2_False_shift: signed(17 downto 0);
  signal c_1_0_0_False_resize: signed(17 downto 0);
  signal c_1_0_0_False_shift: signed(17 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(21 downto 0);
  signal c_2_0_0_False_resize: signed(21 downto 0);
  signal c_2_0_0_False_shift: signed(21 downto 0);
  signal c_2_0_6_False_resize: signed(21 downto 0);
  signal c_2_0_6_False_shift: signed(21 downto 0);
  signal c_2_0_3_False_resize: signed(21 downto 0);
  signal c_2_0_3_False_shift: signed(21 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
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
  signal c_6_3_0_False_resize: signed(21 downto 0);
  signal c_6_3_0_False_shift: signed(21 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_3_1_False_resize: signed(22 downto 0);
  signal c_7_3_1_False_shift: signed(22 downto 0);
  signal c_7_5_7_False_resize: signed(22 downto 0);
  signal c_7_5_7_False_shift: signed(22 downto 0);
  signal c_7_5_0_False_resize: signed(22 downto 0);
  signal c_7_5_0_False_shift: signed(22 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_i0_resize: signed(22 downto 0);
  signal c_8_i1_resize: signed(22 downto 0);
  signal c_8_i0_shift: signed(22 downto 0);
  signal c_8_i1_shift: signed(22 downto 0);
  signal c_8_arith: signed(22 downto 0);
  signal c_8_oshift: signed(22 downto 0);
  signal c_9: signed(15 downto 0);
  signal c_10: signed(15 downto 0);
  signal c_11: signed(21 downto 0);
  signal c_12: signed(21 downto 0);
  signal c_13: signed(25 downto 0);
  signal c_13_8_3_False_resize: signed(25 downto 0);
  signal c_13_8_3_False_shift: signed(25 downto 0);
  signal c_13_12_4_False_resize: signed(25 downto 0);
  signal c_13_12_4_False_shift: signed(25 downto 0);
  signal c_13_10_0_False_resize: signed(25 downto 0);
  signal c_13_10_0_False_shift: signed(25 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(25 downto 0);
  signal c_14_12_0_False_resize: signed(25 downto 0);
  signal c_14_12_0_False_shift: signed(25 downto 0);
  signal c_14_8_1_False_resize: signed(25 downto 0);
  signal c_14_8_1_False_shift: signed(25 downto 0);
  signal c_14_10_10_False_resize: signed(25 downto 0);
  signal c_14_10_10_False_shift: signed(25 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_i0_resize: signed(25 downto 0);
  signal c_15_i1_resize: signed(25 downto 0);
  signal c_15_i0_shift: signed(25 downto 0);
  signal c_15_i1_shift: signed(25 downto 0);
  signal c_15_arith: signed(25 downto 0);
  signal c_15_oshift: signed(25 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(21 downto 0);
  signal c_16_8_0_False_resize: signed(21 downto 0);
  signal c_16_8_0_False_shift: signed(21 downto 0);
  signal c_16_12_1_False_resize: signed(21 downto 0);
  signal c_16_12_1_False_shift: signed(21 downto 0);
  signal c_16_10_1_False_resize: signed(21 downto 0);
  signal c_16_10_1_False_shift: signed(21 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(20 downto 0);
  signal c_17_5_3_False_resize: signed(20 downto 0);
  signal c_17_5_3_False_shift: signed(20 downto 0);
  signal c_17_5_0_False_resize: signed(20 downto 0);
  signal c_17_5_0_False_shift: signed(20 downto 0);
  signal c_17_3_1_False_resize: signed(20 downto 0);
  signal c_17_3_1_False_shift: signed(20 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(20 downto 0);
  signal c_19: signed(20 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_20_i0_resize: signed(22 downto 0);
  signal c_20_i1_resize: signed(22 downto 0);
  signal c_20_i0_shift: signed(22 downto 0);
  signal c_20_i1_shift: signed(22 downto 0);
  signal c_20_arith: signed(22 downto 0);
  signal c_20_oshift: signed(22 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(15 downto 0);
  signal c_22: signed(15 downto 0);
  signal c_23: signed(22 downto 0);
  signal c_24: signed(22 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_24_7_False_resize: signed(25 downto 0);
  signal c_25_24_7_False_shift: signed(25 downto 0);
  signal c_25_20_0_False_resize: signed(25 downto 0);
  signal c_25_20_0_False_shift: signed(25 downto 0);
  signal c_25_22_1_False_resize: signed(25 downto 0);
  signal c_25_22_1_False_shift: signed(25 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(22 downto 0);
  signal c_26_0_0_False_resize: signed(22 downto 0);
  signal c_26_0_0_False_shift: signed(22 downto 0);
  signal c_26_0_7_False_resize: signed(22 downto 0);
  signal c_26_0_7_False_shift: signed(22 downto 0);
  signal c_26_0_2_False_resize: signed(22 downto 0);
  signal c_26_0_2_False_shift: signed(22 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(22 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_30: signed(22 downto 0);
  signal c_31: signed(22 downto 0);
  signal c_32: signed(22 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_i0_resize: signed(25 downto 0);
  signal c_33_i1_resize: signed(25 downto 0);
  signal c_33_i0_shift: signed(25 downto 0);
  signal c_33_i1_shift: signed(25 downto 0);
  signal c_33_arith: signed(25 downto 0);
  signal c_33_oshift: signed(25 downto 0);
  signal c_33_sub_sel: std_logic;
  signal c_34: signed(21 downto 0);
  signal c_35: signed(21 downto 0);
  signal c_36: signed(22 downto 0);
  signal c_36_22_7_False_resize: signed(22 downto 0);
  signal c_36_22_7_False_shift: signed(22 downto 0);
  signal c_36_35_0_False_resize: signed(22 downto 0);
  signal c_36_35_0_False_shift: signed(22 downto 0);
  signal c_36_20_1_False_resize: signed(22 downto 0);
  signal c_36_20_1_False_shift: signed(22 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(22 downto 0);
  signal c_37_3_4_False_resize: signed(22 downto 0);
  signal c_37_3_4_False_shift: signed(22 downto 0);
  signal c_37_3_2_False_resize: signed(22 downto 0);
  signal c_37_3_2_False_shift: signed(22 downto 0);
  signal c_37_5_0_False_resize: signed(22 downto 0);
  signal c_37_5_0_False_shift: signed(22 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(22 downto 0);
  signal c_39: signed(22 downto 0);
  signal c_40: signed(22 downto 0);
  signal c_41: signed(22 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_i0_resize: signed(23 downto 0);
  signal c_42_i1_resize: signed(23 downto 0);
  signal c_42_i0_shift: signed(23 downto 0);
  signal c_42_i1_shift: signed(23 downto 0);
  signal c_42_arith: signed(23 downto 0);
  signal c_42_oshift: signed(23 downto 0);
  signal c_42_sub_sel: std_logic;
  signal c_43: signed(25 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_45: signed(22 downto 0);
  signal c_46: signed(22 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_33_0_False_resize: signed(25 downto 0);
  signal c_47_33_0_False_shift: signed(25 downto 0);
  signal c_47_46_3_False_resize: signed(25 downto 0);
  signal c_47_46_3_False_shift: signed(25 downto 0);
  signal c_47_44_0_False_resize: signed(25 downto 0);
  signal c_47_44_0_False_shift: signed(25 downto 0);
  signal c_47_sel: std_logic_vector(1 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_48_42_0_False_resize: signed(23 downto 0);
  signal c_48_42_0_False_shift: signed(23 downto 0);
  signal c_48_46_0_False_resize: signed(23 downto 0);
  signal c_48_46_0_False_shift: signed(23 downto 0);
  signal c_48_sel: std_logic_vector(0 downto 0);
  signal c_49: signed(26 downto 0);
  signal c_49_i0_resize: signed(26 downto 0);
  signal c_49_i1_resize: signed(26 downto 0);
  signal c_49_i0_shift: signed(26 downto 0);
  signal c_49_i1_shift: signed(26 downto 0);
  signal c_49_arith: signed(26 downto 0);
  signal c_49_oshift: signed(26 downto 0);
  signal c_49_sub_sel: std_logic;
  signal c_50: signed(15 downto 0);
  signal c_51: signed(15 downto 0);
  signal c_52: signed(15 downto 0);
  signal c_53: signed(15 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_56: signed(26 downto 0);
  signal c_56_49_0_False_resize: signed(26 downto 0);
  signal c_56_49_0_False_shift: signed(26 downto 0);
  signal c_56_55_2_False_resize: signed(26 downto 0);
  signal c_56_55_2_False_shift: signed(26 downto 0);
  signal c_56_53_3_False_resize: signed(26 downto 0);
  signal c_56_53_3_False_shift: signed(26 downto 0);
  signal c_56_sel: std_logic_vector(1 downto 0);
  signal c_57: signed(22 downto 0);
  signal c_58: signed(22 downto 0);
  signal c_59: signed(22 downto 0);
  signal c_60: signed(22 downto 0);
  signal c_61: signed(22 downto 0);
  signal c_62: signed(22 downto 0);
  signal c_63: signed(26 downto 0);
  signal c_63_62_0_False_resize: signed(26 downto 0);
  signal c_63_62_0_False_shift: signed(26 downto 0);
  signal c_63_60_4_False_resize: signed(26 downto 0);
  signal c_63_60_4_False_shift: signed(26 downto 0);
  signal c_63_49_0_False_resize: signed(26 downto 0);
  signal c_63_49_0_False_shift: signed(26 downto 0);
  signal c_63_sel: std_logic_vector(1 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_64_i0_resize: signed(25 downto 0);
  signal c_64_i1_resize: signed(25 downto 0);
  signal c_64_i0_shift: signed(25 downto 0);
  signal c_64_i1_shift: signed(25 downto 0);
  signal c_64_arith: signed(25 downto 0);
  signal c_64_oshift: signed(25 downto 0);
  signal c_65: signed(21 downto 0);
  signal c_65_53_1_False_resize: signed(21 downto 0);
  signal c_65_53_1_False_shift: signed(21 downto 0);
  signal c_65_53_6_False_resize: signed(21 downto 0);
  signal c_65_53_6_False_shift: signed(21 downto 0);
  signal c_65_49_0_False_resize: signed(21 downto 0);
  signal c_65_49_0_False_shift: signed(21 downto 0);
  signal c_65_sel: std_logic_vector(1 downto 0);
  signal c_66: signed(25 downto 0);
  signal c_67: signed(25 downto 0);
  signal c_68: signed(25 downto 0);
  signal c_69: signed(25 downto 0);
  signal c_70: signed(25 downto 0);
  signal c_70_64_0_False_resize: signed(25 downto 0);
  signal c_70_64_0_False_shift: signed(25 downto 0);
  signal c_70_69_0_False_resize: signed(25 downto 0);
  signal c_70_69_0_False_shift: signed(25 downto 0);
  signal c_70_sel: std_logic_vector(0 downto 0);
  signal c_71: signed(21 downto 0);
  signal c_72: signed(21 downto 0);
  signal c_73: signed(25 downto 0);
  signal c_73_i0_resize: signed(25 downto 0);
  signal c_73_i1_resize: signed(25 downto 0);
  signal c_73_i0_shift: signed(25 downto 0);
  signal c_73_i1_shift: signed(25 downto 0);
  signal c_73_arith: signed(25 downto 0);
  signal c_73_oshift: signed(25 downto 0);
  signal c_73_sub_sel: std_logic;
  signal c_74: signed(25 downto 0);
  signal c_75: signed(25 downto 0);
  signal c_76: signed(23 downto 0);
  signal c_76_60_0_False_resize: signed(23 downto 0);
  signal c_76_60_0_False_shift: signed(23 downto 0);
  signal c_76_49_1_False_resize: signed(23 downto 0);
  signal c_76_49_1_False_shift: signed(23 downto 0);
  signal c_76_75_0_False_resize: signed(23 downto 0);
  signal c_76_75_0_False_shift: signed(23 downto 0);
  signal c_76_sel: std_logic_vector(1 downto 0);
  signal c_77: signed(24 downto 0);
  signal c_77_12_0_False_resize: signed(24 downto 0);
  signal c_77_12_0_False_shift: signed(24 downto 0);
  signal c_77_10_5_False_resize: signed(24 downto 0);
  signal c_77_10_5_False_shift: signed(24 downto 0);
  signal c_77_8_3_False_resize: signed(24 downto 0);
  signal c_77_8_3_False_shift: signed(24 downto 0);
  signal c_77_sel: std_logic_vector(1 downto 0);
  signal c_78: signed(24 downto 0);
  signal c_79: signed(24 downto 0);
  signal c_80: signed(24 downto 0);
  signal c_81: signed(24 downto 0);
  signal c_82: signed(24 downto 0);
  signal c_83: signed(24 downto 0);
  signal c_84: signed(24 downto 0);
  signal c_84_i0_resize: signed(24 downto 0);
  signal c_84_i1_resize: signed(24 downto 0);
  signal c_84_i0_shift: signed(24 downto 0);
  signal c_84_i1_shift: signed(24 downto 0);
  signal c_84_arith: signed(24 downto 0);
  signal c_84_oshift: signed(24 downto 0);
  signal c_84_sub_sel: std_logic;
  signal c_85: signed(22 downto 0);
  signal c_86: signed(22 downto 0);
  signal c_87: signed(23 downto 0);
  signal c_88: signed(23 downto 0);
  signal c_89: signed(24 downto 0);
  signal c_89_64_0_False_resize: signed(24 downto 0);
  signal c_89_64_0_False_shift: signed(24 downto 0);
  signal c_89_86_2_False_resize: signed(24 downto 0);
  signal c_89_86_2_False_shift: signed(24 downto 0);
  signal c_89_88_2_False_resize: signed(24 downto 0);
  signal c_89_88_2_False_shift: signed(24 downto 0);
  signal c_89_sel: std_logic_vector(1 downto 0);
  signal c_90: signed(15 downto 0);
  signal c_91: signed(15 downto 0);
  signal c_92: signed(21 downto 0);
  signal c_93: signed(21 downto 0);
  signal c_94: signed(21 downto 0);
  signal c_95: signed(21 downto 0);
  signal c_96: signed(21 downto 0);
  signal c_97: signed(21 downto 0);
  signal c_98: signed(25 downto 0);
  signal c_98_64_0_False_resize: signed(25 downto 0);
  signal c_98_64_0_False_shift: signed(25 downto 0);
  signal c_98_91_2_False_resize: signed(25 downto 0);
  signal c_98_91_2_False_shift: signed(25 downto 0);
  signal c_98_97_7_False_resize: signed(25 downto 0);
  signal c_98_97_7_False_shift: signed(25 downto 0);
  signal c_98_sel: std_logic_vector(1 downto 0);
  signal c_99: signed(25 downto 0);
  signal c_99_i0_resize: signed(25 downto 0);
  signal c_99_i1_resize: signed(25 downto 0);
  signal c_99_i0_shift: signed(25 downto 0);
  signal c_99_i1_shift: signed(25 downto 0);
  signal c_99_arith: signed(25 downto 0);
  signal c_99_oshift: signed(25 downto 0);
  signal c_99_sub_sel: std_logic;
  signal c_100: signed(22 downto 0);
  signal c_101: signed(22 downto 0);
  signal c_102: signed(22 downto 0);
  signal c_103: signed(22 downto 0);
  signal c_104: signed(26 downto 0);
  signal c_105: signed(26 downto 0);
  signal c_106: signed(26 downto 0);
  signal c_107: signed(26 downto 0);
  signal c_108: signed(25 downto 0);
  signal c_108_103_2_False_resize: signed(25 downto 0);
  signal c_108_103_2_False_shift: signed(25 downto 0);
  signal c_108_107_2_False_resize: signed(25 downto 0);
  signal c_108_107_2_False_shift: signed(25 downto 0);
  signal c_108_73_0_False_resize: signed(25 downto 0);
  signal c_108_73_0_False_shift: signed(25 downto 0);
  signal c_108_sel: std_logic_vector(1 downto 0);
  signal c_109: signed(23 downto 0);
  signal c_109_58_0_False_resize: signed(23 downto 0);
  signal c_109_58_0_False_shift: signed(23 downto 0);
  signal c_109_42_1_False_resize: signed(23 downto 0);
  signal c_109_42_1_False_shift: signed(23 downto 0);
  signal c_109_46_1_False_resize: signed(23 downto 0);
  signal c_109_46_1_False_shift: signed(23 downto 0);
  signal c_109_sel: std_logic_vector(1 downto 0);
  signal c_110: signed(23 downto 0);
  signal c_111: signed(23 downto 0);
  signal c_112: signed(23 downto 0);
  signal c_113: signed(23 downto 0);
  signal c_114: signed(23 downto 0);
  signal c_115: signed(23 downto 0);
  signal c_116: signed(25 downto 0);
  signal c_116_i0_resize: signed(25 downto 0);
  signal c_116_i1_resize: signed(25 downto 0);
  signal c_116_i0_shift: signed(25 downto 0);
  signal c_116_i1_shift: signed(25 downto 0);
  signal c_116_arith: signed(25 downto 0);
  signal c_116_oshift: signed(25 downto 0);
  signal c_116_sub_sel: std_logic;
  signal c_117: signed(25 downto 0);
  signal c_118: signed(25 downto 0);
  signal c_119: signed(23 downto 0);
  signal c_119_118_0_False_resize: signed(23 downto 0);
  signal c_119_118_0_False_shift: signed(23 downto 0);
  signal c_119_84_0_False_resize: signed(23 downto 0);
  signal c_119_84_0_False_shift: signed(23 downto 0);
  signal c_119_97_1_False_resize: signed(23 downto 0);
  signal c_119_97_1_False_shift: signed(23 downto 0);
  signal c_119_sel: std_logic_vector(1 downto 0);
  signal c_120: signed(25 downto 0);
  signal c_120_64_3_False_resize: signed(25 downto 0);
  signal c_120_64_3_False_shift: signed(25 downto 0);
  signal c_120_69_0_False_resize: signed(25 downto 0);
  signal c_120_69_0_False_shift: signed(25 downto 0);
  signal c_120_91_9_False_resize: signed(25 downto 0);
  signal c_120_91_9_False_shift: signed(25 downto 0);
  signal c_120_sel: std_logic_vector(1 downto 0);
  signal c_121: signed(25 downto 0);
  signal c_121_i0_resize: signed(25 downto 0);
  signal c_121_i1_resize: signed(25 downto 0);
  signal c_121_i0_shift: signed(25 downto 0);
  signal c_121_i1_shift: signed(25 downto 0);
  signal c_121_arith: signed(25 downto 0);
  signal c_121_oshift: signed(25 downto 0);
  signal c_121_sub_sel: std_logic;
  signal c_122: signed(25 downto 0);
  signal c_123: signed(25 downto 0);
  signal c_124: signed(25 downto 0);
  signal c_124_73_0_False_resize: signed(25 downto 0);
  signal c_124_73_0_False_shift: signed(25 downto 0);
  signal c_124_107_0_False_resize: signed(25 downto 0);
  signal c_124_107_0_False_shift: signed(25 downto 0);
  signal c_124_123_1_False_resize: signed(25 downto 0);
  signal c_124_123_1_False_shift: signed(25 downto 0);
  signal c_124_sel: std_logic_vector(1 downto 0);
  signal c_125: signed(25 downto 0);
  signal c_126: signed(25 downto 0);
  signal c_127: signed(23 downto 0);
  signal c_128: signed(23 downto 0);
  signal c_129: signed(25 downto 0);
  signal c_129_99_1_False_resize: signed(25 downto 0);
  signal c_129_99_1_False_shift: signed(25 downto 0);
  signal c_129_128_0_False_resize: signed(25 downto 0);
  signal c_129_128_0_False_shift: signed(25 downto 0);
  signal c_129_126_0_False_resize: signed(25 downto 0);
  signal c_129_126_0_False_shift: signed(25 downto 0);
  signal c_129_sel: std_logic_vector(1 downto 0);
  signal c_130: signed(22 downto 0);
  signal c_131: signed(22 downto 0);
  signal c_132: signed(24 downto 0);
  signal c_132_99_0_False_resize: signed(24 downto 0);
  signal c_132_99_0_False_shift: signed(24 downto 0);
  signal c_132_131_0_False_resize: signed(24 downto 0);
  signal c_132_131_0_False_shift: signed(24 downto 0);
  signal c_132_sel: std_logic_vector(0 downto 0);
  signal c_133: signed(15 downto 0);
  signal c_134: signed(15 downto 0);
  signal c_135: signed(25 downto 0);
  signal c_136: signed(25 downto 0);
  signal c_137: signed(25 downto 0);
  signal c_137_121_0_False_resize: signed(25 downto 0);
  signal c_137_121_0_False_shift: signed(25 downto 0);
  signal c_137_134_8_False_resize: signed(25 downto 0);
  signal c_137_134_8_False_shift: signed(25 downto 0);
  signal c_137_136_6_False_resize: signed(25 downto 0);
  signal c_137_136_6_False_shift: signed(25 downto 0);
  signal c_137_sel: std_logic_vector(1 downto 0);
  signal c_138: signed(25 downto 0);
  signal c_138_136_1_False_resize: signed(25 downto 0);
  signal c_138_136_1_False_shift: signed(25 downto 0);
  signal c_138_73_0_False_resize: signed(25 downto 0);
  signal c_138_73_0_False_shift: signed(25 downto 0);
  signal c_138_126_0_False_resize: signed(25 downto 0);
  signal c_138_126_0_False_shift: signed(25 downto 0);
  signal c_138_sel: std_logic_vector(1 downto 0);
  signal c_139: signed(24 downto 0);
  signal c_140: signed(24 downto 0);
  signal c_141: signed(25 downto 0);
  signal c_141_140_1_False_resize: signed(25 downto 0);
  signal c_141_140_1_False_shift: signed(25 downto 0);
  signal c_141_99_0_False_resize: signed(25 downto 0);
  signal c_141_99_0_False_shift: signed(25 downto 0);
  signal c_141_sel: std_logic_vector(0 downto 0);
  signal c_142: signed(26 downto 0);
  signal c_143: signed(26 downto 0);
  signal c_144: signed(24 downto 0);
  signal c_145: signed(24 downto 0);
  signal c_146: signed(25 downto 0);
  signal c_146_143_1_False_resize: signed(25 downto 0);
  signal c_146_143_1_False_shift: signed(25 downto 0);
  signal c_146_145_0_False_resize: signed(25 downto 0);
  signal c_146_145_0_False_shift: signed(25 downto 0);
  signal c_146_116_0_False_resize: signed(25 downto 0);
  signal c_146_116_0_False_shift: signed(25 downto 0);
  signal c_146_sel: std_logic_vector(1 downto 0);
  signal c_147: signed(25 downto 0);
  signal c_147_128_0_False_resize: signed(25 downto 0);
  signal c_147_128_0_False_shift: signed(25 downto 0);
  signal c_147_126_0_False_resize: signed(25 downto 0);
  signal c_147_126_0_False_shift: signed(25 downto 0);
  signal c_147_121_1_False_resize: signed(25 downto 0);
  signal c_147_121_1_False_shift: signed(25 downto 0);
  signal c_147_sel: std_logic_vector(1 downto 0);
  signal c_148: signed(25 downto 0);
  signal c_149: signed(25 downto 0);
  signal c_150: signed(25 downto 0);
  signal c_150_116_0_False_resize: signed(25 downto 0);
  signal c_150_116_0_False_shift: signed(25 downto 0);
  signal c_150_149_0_False_resize: signed(25 downto 0);
  signal c_150_149_0_False_shift: signed(25 downto 0);
  signal c_150_sel: std_logic_vector(0 downto 0);
  signal c_151: signed(25 downto 0);
  signal c_151_136_0_False_resize: signed(25 downto 0);
  signal c_151_136_0_False_shift: signed(25 downto 0);
  signal c_151_73_0_False_resize: signed(25 downto 0);
  signal c_151_73_0_False_shift: signed(25 downto 0);
  signal c_151_128_1_False_resize: signed(25 downto 0);
  signal c_151_128_1_False_shift: signed(25 downto 0);
  signal c_151_sel: std_logic_vector(1 downto 0);
  signal c_152: signed(25 downto 0);
  signal c_153: signed(25 downto 0);
  signal c_154: signed(25 downto 0);
  signal c_154_resize: signed(25 downto 0);
  signal c_155: signed(25 downto 0);
  signal c_156: signed(25 downto 0);
  signal c_157: signed(25 downto 0);
  signal c_157_resize: signed(25 downto 0);
  signal c_158: signed(24 downto 0);
  signal c_159: signed(24 downto 0);
  signal c_160: signed(24 downto 0);
  signal c_160_resize: signed(24 downto 0);
  signal c_161: signed(25 downto 0);
  signal c_162: signed(25 downto 0);
  signal c_163: signed(25 downto 0);
  signal c_163_resize: signed(25 downto 0);
  signal c_164: signed(25 downto 0);
  signal c_165: signed(25 downto 0);
  signal c_166: signed(25 downto 0);
  signal c_166_resize: signed(25 downto 0);
  signal c_167: signed(25 downto 0);
  signal c_168: signed(25 downto 0);
  signal c_169: signed(25 downto 0);
  signal c_169_resize: signed(25 downto 0);
  signal c_170: signed(25 downto 0);
  signal c_170_resize: signed(25 downto 0);
  signal c_171: signed(25 downto 0);
  signal c_172: signed(25 downto 0);
  signal c_173: signed(25 downto 0);
  signal c_173_resize: signed(25 downto 0);
  signal c_174: signed(25 downto 0);
  signal c_174_resize: signed(25 downto 0);
  signal c_175: signed(25 downto 0);
  signal c_176: signed(25 downto 0);
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
  -- output node 0 with id 154
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_154);
    end if;
  end process;
  -- output node 1 with id 157
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_157);
    end if;
  end process;
  -- output node 2 with id 160
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_160);
    end if;
  end process;
  -- output node 3 with id 163
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_163);
    end if;
  end process;
  -- output node 4 with id 166
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_166);
    end if;
  end process;
  -- output node 5 with id 169
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_169);
    end if;
  end process;
  -- output node 6 with id 170
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_170);
    end if;
  end process;
  -- output node 7 with id 173
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_173);
    end if;
  end process;
  -- output node 8 with id 174
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_174);
    end if;
  end process;
  -- output node 9 with id 177
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_177);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [4], [4]]
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  with config_select_1 select c_1_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_2_False_shift;
        when others => c_1 <= c_1_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[8], [1], [64]]
  c_2_0_0_False_resize <= resize(c_0, 22);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_6_False_resize <= resize(c_0, 22);
  c_2_0_6_False_shift <= shift_left(c_2_0_6_False_resize, 6);
  c_2_0_3_False_resize <= resize(c_0, 22);
  c_2_0_3_False_shift <= shift_left(c_2_0_3_False_resize, 3);
  with config_select_1 select c_2_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_0_False_shift;
        when "01" => c_2 <= c_2_0_6_False_shift;
        when others => c_2 <= c_2_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[9], [5], [-60]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
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
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[9], [16], [-60]]
  c_6_5_4_False_resize <= resize(c_5, 22);
  c_6_5_4_False_shift <= shift_left(c_6_5_4_False_resize, 4);
  c_6_3_0_False_resize <= c_3;
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_5_4_False_shift;
        when others => c_6 <= c_6_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[128], [10], [1]]
  c_7_3_1_False_resize <= resize(c_3, 23);
  c_7_3_1_False_shift <= shift_left(c_7_3_1_False_resize, 1);
  c_7_5_7_False_resize <= resize(c_5, 23);
  c_7_5_7_False_shift <= shift_left(c_7_5_7_False_resize, 7);
  c_7_5_0_False_resize <= resize(c_5, 23);
  c_7_5_0_False_shift <= shift_left(c_7_5_0_False_resize, 0);
  with config_select_3 select c_7_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_3_1_False_shift;
        when "01" => c_7 <= c_7_5_7_False_shift;
        when others => c_7 <= c_7_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 8 and associated fundamentals [[-119], [6], [-61]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
      w_o => 23,
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
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 10 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[9], [5], [-60]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[9], [5], [-60]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 13 and associated fundamentals [[-952], [1], [-960]]
  c_13_8_3_False_resize <= resize(c_8, 26);
  c_13_8_3_False_shift <= shift_left(c_13_8_3_False_resize, 3);
  c_13_12_4_False_resize <= resize(c_12, 26);
  c_13_12_4_False_shift <= shift_left(c_13_12_4_False_resize, 4);
  c_13_10_0_False_resize <= resize(c_10, 26);
  c_13_10_0_False_shift <= shift_left(c_13_10_0_False_resize, 0);
  with config_select_5 select c_13_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_8_3_False_shift;
        when "01" => c_13 <= c_13_12_4_False_shift;
        when others => c_13 <= c_13_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 14 and associated fundamentals [[9], [1024], [-122]]
  c_14_12_0_False_resize <= resize(c_12, 26);
  c_14_12_0_False_shift <= shift_left(c_14_12_0_False_resize, 0);
  c_14_8_1_False_resize <= resize(c_8, 26);
  c_14_8_1_False_shift <= shift_left(c_14_8_1_False_resize, 1);
  c_14_10_10_False_resize <= resize(c_10, 26);
  c_14_10_10_False_shift <= shift_left(c_14_10_10_False_resize, 10);
  with config_select_5 select c_14_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_12_0_False_shift;
        when "01" => c_14 <= c_14_8_1_False_shift;
        when others => c_14 <= c_14_10_10_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 15 and associated fundamentals [[-943], [-1023], [-838]]
  with config_select_6 select c_15_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
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
      sub_i => c_15_sub_sel,
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 16 and associated fundamentals [[2], [10], [-61]]
  c_16_8_0_False_resize <= c_8(21 downto 0);
  c_16_8_0_False_shift <= shift_left(c_16_8_0_False_resize, 0);
  c_16_12_1_False_resize <= c_12;
  c_16_12_1_False_shift <= shift_left(c_16_12_1_False_resize, 1);
  c_16_10_1_False_resize <= resize(c_10, 22);
  c_16_10_1_False_shift <= shift_left(c_16_10_1_False_resize, 1);
  with config_select_5 select c_16_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_8_0_False_shift;
        when "01" => c_16 <= c_16_12_1_False_shift;
        when others => c_16 <= c_16_10_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 17 and associated fundamentals [[18], [8], [1]]
  c_17_5_3_False_resize <= resize(c_5, 21);
  c_17_5_3_False_shift <= shift_left(c_17_5_3_False_resize, 3);
  c_17_5_0_False_resize <= resize(c_5, 21);
  c_17_5_0_False_shift <= shift_left(c_17_5_0_False_resize, 0);
  c_17_3_1_False_resize <= c_3(20 downto 0);
  c_17_3_1_False_shift <= shift_left(c_17_3_1_False_resize, 1);
  with config_select_3 select c_17_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "00" => c_17 <= c_17_5_3_False_shift;
        when "01" => c_17 <= c_17_5_0_False_shift;
        when others => c_17 <= c_17_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 18 and associated fundamentals [[18], [8], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 19 and associated fundamentals [[18], [8], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 20 and associated fundamentals [[74], [-22], [-57]]
  with config_select_6 select c_20_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 21,
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
      sub_i => c_20_sub_sel,
      x_i => c_16,
      y_i => c_19,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 22 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[-119], [6], [-61]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 24 and associated fundamentals [[-119], [6], [-61]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 25 and associated fundamentals [[74], [768], [2]]
  c_25_24_7_False_resize <= resize(c_24, 26);
  c_25_24_7_False_shift <= shift_left(c_25_24_7_False_resize, 7);
  c_25_20_0_False_resize <= resize(c_20, 26);
  c_25_20_0_False_shift <= shift_left(c_25_20_0_False_resize, 0);
  c_25_22_1_False_resize <= resize(c_22, 26);
  c_25_22_1_False_shift <= shift_left(c_25_22_1_False_resize, 1);
  with config_select_7 select c_25_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_24_7_False_shift;
        when "01" => c_25 <= c_25_20_0_False_shift;
        when others => c_25 <= c_25_22_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 26 and associated fundamentals [[128], [1], [4]]
  c_26_0_0_False_resize <= resize(c_0, 23);
  c_26_0_0_False_shift <= shift_left(c_26_0_0_False_resize, 0);
  c_26_0_7_False_resize <= resize(c_0, 23);
  c_26_0_7_False_shift <= shift_left(c_26_0_7_False_resize, 7);
  c_26_0_2_False_resize <= resize(c_0, 23);
  c_26_0_2_False_shift <= shift_left(c_26_0_2_False_resize, 2);
  with config_select_1 select c_26_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "00" => c_26 <= c_26_0_0_False_shift;
        when "01" => c_26 <= c_26_0_7_False_shift;
        when others => c_26 <= c_26_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 27 and associated fundamentals [[128], [1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 28 and associated fundamentals [[128], [1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 29 and associated fundamentals [[128], [1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 30 and associated fundamentals [[128], [1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 31 and associated fundamentals [[128], [1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 32 and associated fundamentals [[128], [1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 33 and associated fundamentals [[-182], [770], [10]]
  with config_select_8 select c_33_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_33: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 23,
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
      sub_i => c_33_sub_sel,
      x_i => c_25,
      y_i => c_32,
      z_o => c_33_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_33_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 34 and associated fundamentals [[9], [5], [-60]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 35 and associated fundamentals [[9], [5], [-60]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 36 and associated fundamentals [[128], [5], [-114]]
  c_36_22_7_False_resize <= resize(c_22, 23);
  c_36_22_7_False_shift <= shift_left(c_36_22_7_False_resize, 7);
  c_36_35_0_False_resize <= resize(c_35, 23);
  c_36_35_0_False_shift <= shift_left(c_36_35_0_False_resize, 0);
  c_36_20_1_False_resize <= c_20;
  c_36_20_1_False_shift <= shift_left(c_36_20_1_False_resize, 1);
  with config_select_7 select c_36_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "00" => c_36 <= c_36_22_7_False_shift;
        when "01" => c_36 <= c_36_35_0_False_shift;
        when others => c_36 <= c_36_20_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 37 and associated fundamentals [[36], [80], [1]]
  c_37_3_4_False_resize <= resize(c_3, 23);
  c_37_3_4_False_shift <= shift_left(c_37_3_4_False_resize, 4);
  c_37_3_2_False_resize <= resize(c_3, 23);
  c_37_3_2_False_shift <= shift_left(c_37_3_2_False_resize, 2);
  c_37_5_0_False_resize <= resize(c_5, 23);
  c_37_5_0_False_shift <= shift_left(c_37_5_0_False_resize, 0);
  with config_select_3 select c_37_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "00" => c_37 <= c_37_3_4_False_shift;
        when "01" => c_37 <= c_37_3_2_False_shift;
        when others => c_37 <= c_37_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 38 and associated fundamentals [[36], [80], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 39 and associated fundamentals [[36], [80], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 40 and associated fundamentals [[36], [80], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 41 and associated fundamentals [[36], [80], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 42 and associated fundamentals [[164], [-75], [-115]]
  with config_select_8 select c_42_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_42: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_42_sub_sel,
      x_i => c_36,
      y_i => c_41,
      z_o => c_42_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_42_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 43 and associated fundamentals [[-943], [-1023], [-838]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 44 and associated fundamentals [[-943], [-1023], [-838]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 45 and associated fundamentals [[74], [-22], [-57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 46 and associated fundamentals [[74], [-22], [-57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 47 and associated fundamentals [[-943], [-176], [10]]
  c_47_33_0_False_resize <= c_33;
  c_47_33_0_False_shift <= shift_left(c_47_33_0_False_resize, 0);
  c_47_46_3_False_resize <= resize(c_46, 26);
  c_47_46_3_False_shift <= shift_left(c_47_46_3_False_resize, 3);
  c_47_44_0_False_resize <= c_44;
  c_47_44_0_False_shift <= shift_left(c_47_44_0_False_resize, 0);
  with config_select_9 select c_47_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "00" => c_47 <= c_47_33_0_False_shift;
        when "01" => c_47 <= c_47_46_3_False_shift;
        when others => c_47 <= c_47_44_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 48 and associated fundamentals [[164], [-75], [-57]]
  c_48_42_0_False_resize <= c_42;
  c_48_42_0_False_shift <= shift_left(c_48_42_0_False_resize, 0);
  c_48_46_0_False_resize <= resize(c_46, 24);
  c_48_46_0_False_shift <= shift_left(c_48_46_0_False_resize, 0);
  with config_select_9 select c_48_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "0" => c_48 <= c_48_42_0_False_shift;
        when others => c_48 <= c_48_46_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 49 and associated fundamentals [[-1107], [-101], [-47]]
  with config_select_10 select c_49_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_49: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
      w_o => 27,
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
      sub_i => c_49_sub_sel,
      x_i => c_47,
      y_i => c_48,
      z_o => c_49_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_49_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 50 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 51 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 52 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 53 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 54 and associated fundamentals [[164], [-75], [-115]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 55 and associated fundamentals [[164], [-75], [-115]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 56 and associated fundamentals [[-1107], [8], [-460]]
  c_56_49_0_False_resize <= c_49;
  c_56_49_0_False_shift <= shift_left(c_56_49_0_False_resize, 0);
  c_56_55_2_False_resize <= resize(c_55, 27);
  c_56_55_2_False_shift <= shift_left(c_56_55_2_False_resize, 2);
  c_56_53_3_False_resize <= resize(c_53, 27);
  c_56_53_3_False_shift <= shift_left(c_56_53_3_False_resize, 3);
  with config_select_11 select c_56_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_56_sel is
        when "00" => c_56 <= c_56_49_0_False_shift;
        when "01" => c_56 <= c_56_55_2_False_shift;
        when others => c_56 <= c_56_53_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 57 and associated fundamentals [[-119], [6], [-61]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 58 and associated fundamentals [[-119], [6], [-61]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 59 and associated fundamentals [[-119], [6], [-61]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 60 and associated fundamentals [[-119], [6], [-61]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 61 and associated fundamentals [[74], [-22], [-57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 62 and associated fundamentals [[74], [-22], [-57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 63 and associated fundamentals [[-1904], [-101], [-57]]
  c_63_62_0_False_resize <= resize(c_62, 27);
  c_63_62_0_False_shift <= shift_left(c_63_62_0_False_resize, 0);
  c_63_60_4_False_resize <= resize(c_60, 27);
  c_63_60_4_False_shift <= shift_left(c_63_60_4_False_resize, 4);
  c_63_49_0_False_resize <= c_49;
  c_63_49_0_False_shift <= shift_left(c_63_49_0_False_resize, 0);
  with config_select_11 select c_63_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_63_sel is
        when "00" => c_63 <= c_63_62_0_False_shift;
        when "01" => c_63 <= c_63_60_4_False_shift;
        when others => c_63 <= c_63_49_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 12 with id 64 and associated fundamentals [[797], [109], [-403]]
  inst_adder_node_64: entity work.adder_node
    generic map (
      w_x_i => 27,
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
      x_i => c_56,
      y_i => c_63,
      z_o => c_64_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_64_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 65 and associated fundamentals [[64], [2], [-47]]
  c_65_53_1_False_resize <= resize(c_53, 22);
  c_65_53_1_False_shift <= shift_left(c_65_53_1_False_resize, 1);
  c_65_53_6_False_resize <= resize(c_53, 22);
  c_65_53_6_False_shift <= shift_left(c_65_53_6_False_resize, 6);
  c_65_49_0_False_resize <= c_49(21 downto 0);
  c_65_49_0_False_shift <= shift_left(c_65_49_0_False_resize, 0);
  with config_select_11 select c_65_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_65_sel is
        when "00" => c_65 <= c_65_53_1_False_shift;
        when "01" => c_65 <= c_65_53_6_False_shift;
        when others => c_65 <= c_65_49_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 66 and associated fundamentals [[-943], [-1023], [-838]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 67 and associated fundamentals [[-943], [-1023], [-838]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 68 and associated fundamentals [[-943], [-1023], [-838]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 69 and associated fundamentals [[-943], [-1023], [-838]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 70 and associated fundamentals [[797], [-1023], [-838]]
  c_70_64_0_False_resize <= c_64;
  c_70_64_0_False_shift <= shift_left(c_70_64_0_False_resize, 0);
  c_70_69_0_False_resize <= c_69;
  c_70_69_0_False_shift <= shift_left(c_70_69_0_False_resize, 0);
  with config_select_13 select c_70_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_70_sel is
        when "0" => c_70 <= c_70_64_0_False_shift;
        when others => c_70 <= c_70_69_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 71 and associated fundamentals [[64], [2], [-47]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 72 and associated fundamentals [[64], [2], [-47]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 73 and associated fundamentals [[-541], [-1015], [650]]
  with config_select_14 select c_73_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_73: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 26,
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
      sub_i => c_73_sub_sel,
      x_i => c_72,
      y_i => c_70,
      z_o => c_73_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_73_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 74 and associated fundamentals [[-182], [770], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 75 and associated fundamentals [[-182], [770], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 76 and associated fundamentals [[-119], [-202], [10]]
  c_76_60_0_False_resize <= resize(c_60, 24);
  c_76_60_0_False_shift <= shift_left(c_76_60_0_False_resize, 0);
  c_76_49_1_False_resize <= c_49(23 downto 0);
  c_76_49_1_False_shift <= shift_left(c_76_49_1_False_resize, 1);
  c_76_75_0_False_resize <= c_75(23 downto 0);
  c_76_75_0_False_shift <= shift_left(c_76_75_0_False_resize, 0);
  with config_select_11 select c_76_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_76_sel is
        when "00" => c_76 <= c_76_60_0_False_shift;
        when "01" => c_76 <= c_76_49_1_False_shift;
        when others => c_76 <= c_76_75_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 77 and associated fundamentals [[32], [5], [-488]]
  c_77_12_0_False_resize <= resize(c_12, 25);
  c_77_12_0_False_shift <= shift_left(c_77_12_0_False_resize, 0);
  c_77_10_5_False_resize <= resize(c_10, 25);
  c_77_10_5_False_shift <= shift_left(c_77_10_5_False_resize, 5);
  c_77_8_3_False_resize <= resize(c_8, 25);
  c_77_8_3_False_shift <= shift_left(c_77_8_3_False_resize, 3);
  with config_select_5 select c_77_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_77_sel is
        when "00" => c_77 <= c_77_12_0_False_shift;
        when "01" => c_77 <= c_77_10_5_False_shift;
        when others => c_77 <= c_77_8_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 78 and associated fundamentals [[32], [5], [-488]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 79 and associated fundamentals [[32], [5], [-488]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 80 and associated fundamentals [[32], [5], [-488]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 81 and associated fundamentals [[32], [5], [-488]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_80 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 82 and associated fundamentals [[32], [5], [-488]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_81 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 83 and associated fundamentals [[32], [5], [-488]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_82 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 84 and associated fundamentals [[-151], [-207], [-478]]
  with config_select_12 select c_84_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_84: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_84_sub_sel,
      x_i => c_76,
      y_i => c_83,
      z_o => c_84_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_84_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 85 and associated fundamentals [[74], [-22], [-57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 86 and associated fundamentals [[74], [-22], [-57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_85 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 87 and associated fundamentals [[164], [-75], [-115]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 88 and associated fundamentals [[164], [-75], [-115]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_87 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 89 and associated fundamentals [[296], [109], [-460]]
  c_89_64_0_False_resize <= c_64(24 downto 0);
  c_89_64_0_False_shift <= shift_left(c_89_64_0_False_resize, 0);
  c_89_86_2_False_resize <= resize(c_86, 25);
  c_89_86_2_False_shift <= shift_left(c_89_86_2_False_resize, 2);
  c_89_88_2_False_resize <= resize(c_88, 25);
  c_89_88_2_False_shift <= shift_left(c_89_88_2_False_resize, 2);
  with config_select_13 select c_89_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_89_sel is
        when "00" => c_89 <= c_89_64_0_False_shift;
        when "01" => c_89 <= c_89_86_2_False_shift;
        when others => c_89 <= c_89_88_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 90 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 91 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_90 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 92 and associated fundamentals [[9], [5], [-60]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 93 and associated fundamentals [[9], [5], [-60]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_92 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 94 and associated fundamentals [[9], [5], [-60]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_93 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 95 and associated fundamentals [[9], [5], [-60]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_94 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 96 and associated fundamentals [[9], [5], [-60]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_95 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 97 and associated fundamentals [[9], [5], [-60]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_96 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 98 and associated fundamentals [[797], [640], [4]]
  c_98_64_0_False_resize <= c_64;
  c_98_64_0_False_shift <= shift_left(c_98_64_0_False_resize, 0);
  c_98_91_2_False_resize <= resize(c_91, 26);
  c_98_91_2_False_shift <= shift_left(c_98_91_2_False_resize, 2);
  c_98_97_7_False_resize <= resize(c_97, 26);
  c_98_97_7_False_shift <= shift_left(c_98_97_7_False_resize, 7);
  with config_select_13 select c_98_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_98_sel is
        when "00" => c_98 <= c_98_64_0_False_shift;
        when "01" => c_98 <= c_98_91_2_False_shift;
        when others => c_98 <= c_98_97_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 99 and associated fundamentals [[-501], [-531], [-456]]
  with config_select_14 select c_99_sub_sel <= 
    '1' when "00",
    '1' when "01",
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
      x_i => c_89,
      y_i => c_98,
      z_o => c_99_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_99_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 100 and associated fundamentals [[-119], [6], [-61]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 101 and associated fundamentals [[-119], [6], [-61]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_100 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 102 and associated fundamentals [[-119], [6], [-61]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_101 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 103 and associated fundamentals [[-119], [6], [-61]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_102 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 104 and associated fundamentals [[-1107], [-101], [-47]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 105 and associated fundamentals [[-1107], [-101], [-47]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_104 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 106 and associated fundamentals [[-1107], [-101], [-47]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_105 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 107 and associated fundamentals [[-1107], [-101], [-47]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_106 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 108 and associated fundamentals [[-541], [-404], [-244]]
  c_108_103_2_False_resize <= resize(c_103, 26);
  c_108_103_2_False_shift <= shift_left(c_108_103_2_False_resize, 2);
  c_108_107_2_False_resize <= c_107(25 downto 0);
  c_108_107_2_False_shift <= shift_left(c_108_107_2_False_resize, 2);
  c_108_73_0_False_resize <= c_73;
  c_108_73_0_False_shift <= shift_left(c_108_73_0_False_resize, 0);
  with config_select_15 select c_108_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_108_sel is
        when "00" => c_108 <= c_108_103_2_False_shift;
        when "01" => c_108 <= c_108_107_2_False_shift;
        when others => c_108 <= c_108_73_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 109 and associated fundamentals [[-119], [-150], [-114]]
  c_109_58_0_False_resize <= resize(c_58, 24);
  c_109_58_0_False_shift <= shift_left(c_109_58_0_False_resize, 0);
  c_109_42_1_False_resize <= c_42;
  c_109_42_1_False_shift <= shift_left(c_109_42_1_False_resize, 1);
  c_109_46_1_False_resize <= resize(c_46, 24);
  c_109_46_1_False_shift <= shift_left(c_109_46_1_False_resize, 1);
  with config_select_9 select c_109_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_109_sel is
        when "00" => c_109 <= c_109_58_0_False_shift;
        when "01" => c_109 <= c_109_42_1_False_shift;
        when others => c_109 <= c_109_46_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 110 and associated fundamentals [[-119], [-150], [-114]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_110 <= c_109 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 111 and associated fundamentals [[-119], [-150], [-114]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_110 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 112 and associated fundamentals [[-119], [-150], [-114]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_111 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 113 and associated fundamentals [[-119], [-150], [-114]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_112 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 114 and associated fundamentals [[-119], [-150], [-114]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_113 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 115 and associated fundamentals [[-119], [-150], [-114]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_114 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 16 with id 116 and associated fundamentals [[-963], [-958], [-374]]
  with config_select_16 select c_116_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_116: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_116_sub_sel,
      x_i => c_108,
      y_i => c_115,
      z_o => c_116_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_116 <= c_116_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 117 and associated fundamentals [[-182], [770], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_117 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 118 and associated fundamentals [[-182], [770], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_118 <= c_117 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 119 and associated fundamentals [[18], [-207], [10]]
  c_119_118_0_False_resize <= c_118(23 downto 0);
  c_119_118_0_False_shift <= shift_left(c_119_118_0_False_resize, 0);
  c_119_84_0_False_resize <= c_84(23 downto 0);
  c_119_84_0_False_shift <= shift_left(c_119_84_0_False_resize, 0);
  c_119_97_1_False_resize <= resize(c_97, 24);
  c_119_97_1_False_shift <= shift_left(c_119_97_1_False_resize, 1);
  with config_select_13 select c_119_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_119_sel is
        when "00" => c_119 <= c_119_118_0_False_shift;
        when "01" => c_119 <= c_119_84_0_False_shift;
        when others => c_119 <= c_119_97_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 120 and associated fundamentals [[-943], [872], [512]]
  c_120_64_3_False_resize <= c_64;
  c_120_64_3_False_shift <= shift_left(c_120_64_3_False_resize, 3);
  c_120_69_0_False_resize <= c_69;
  c_120_69_0_False_shift <= shift_left(c_120_69_0_False_resize, 0);
  c_120_91_9_False_resize <= resize(c_91, 26);
  c_120_91_9_False_shift <= shift_left(c_120_91_9_False_resize, 9);
  with config_select_13 select c_120_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_120_sel is
        when "00" => c_120 <= c_120_64_3_False_shift;
        when "01" => c_120 <= c_120_69_0_False_shift;
        when others => c_120 <= c_120_91_9_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 121 and associated fundamentals [[-925], [665], [-502]]
  with config_select_14 select c_121_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_121: entity work.adder_node
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
      sub_i => c_121_sub_sel,
      x_i => c_119,
      y_i => c_120,
      z_o => c_121_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_121 <= c_121_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 122 and associated fundamentals [[797], [109], [-403]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_122 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 123 and associated fundamentals [[797], [109], [-403]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_123 <= c_122 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 124 and associated fundamentals [[-541], [-101], [-806]]
  c_124_73_0_False_resize <= c_73;
  c_124_73_0_False_shift <= shift_left(c_124_73_0_False_resize, 0);
  c_124_107_0_False_resize <= c_107(25 downto 0);
  c_124_107_0_False_shift <= shift_left(c_124_107_0_False_resize, 0);
  c_124_123_1_False_resize <= c_123;
  c_124_123_1_False_shift <= shift_left(c_124_123_1_False_resize, 1);
  with config_select_15 select c_124_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_124_sel is
        when "00" => c_124 <= c_124_73_0_False_shift;
        when "01" => c_124 <= c_124_107_0_False_shift;
        when others => c_124 <= c_124_123_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 125 and associated fundamentals [[-943], [-1023], [-838]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_125 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 126 and associated fundamentals [[-943], [-1023], [-838]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_126 <= c_125 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 127 and associated fundamentals [[164], [-75], [-115]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_127 <= c_88 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 128 and associated fundamentals [[164], [-75], [-115]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_128 <= c_127 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 129 and associated fundamentals [[-1002], [-1023], [-115]]
  c_129_99_1_False_resize <= c_99;
  c_129_99_1_False_shift <= shift_left(c_129_99_1_False_resize, 1);
  c_129_128_0_False_resize <= resize(c_128, 26);
  c_129_128_0_False_shift <= shift_left(c_129_128_0_False_resize, 0);
  c_129_126_0_False_resize <= c_126;
  c_129_126_0_False_shift <= shift_left(c_129_126_0_False_resize, 0);
  with config_select_15 select c_129_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_129_sel is
        when "00" => c_129 <= c_129_99_1_False_shift;
        when "01" => c_129 <= c_129_128_0_False_shift;
        when others => c_129 <= c_129_126_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 130 and associated fundamentals [[74], [-22], [-57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_130 <= c_86 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 131 and associated fundamentals [[74], [-22], [-57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_131 <= c_130 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 132 and associated fundamentals [[-501], [-22], [-456]]
  c_132_99_0_False_resize <= c_99(24 downto 0);
  c_132_99_0_False_shift <= shift_left(c_132_99_0_False_resize, 0);
  c_132_131_0_False_resize <= resize(c_131, 25);
  c_132_131_0_False_shift <= shift_left(c_132_131_0_False_resize, 0);
  with config_select_15 select c_132_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_132_sel is
        when "0" => c_132 <= c_132_99_0_False_shift;
        when others => c_132 <= c_132_131_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 133 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_133 <= c_91 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 134 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_134 <= c_133 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 135 and associated fundamentals [[-182], [770], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_135 <= c_118 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 136 and associated fundamentals [[-182], [770], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_136 <= c_135 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 137 and associated fundamentals [[256], [665], [640]]
  c_137_121_0_False_resize <= c_121;
  c_137_121_0_False_shift <= shift_left(c_137_121_0_False_resize, 0);
  c_137_134_8_False_resize <= resize(c_134, 26);
  c_137_134_8_False_shift <= shift_left(c_137_134_8_False_resize, 8);
  c_137_136_6_False_resize <= c_136;
  c_137_136_6_False_shift <= shift_left(c_137_136_6_False_resize, 6);
  with config_select_15 select c_137_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_137_sel is
        when "00" => c_137 <= c_137_121_0_False_shift;
        when "01" => c_137 <= c_137_134_8_False_shift;
        when others => c_137 <= c_137_136_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 138 and associated fundamentals [[-364], [-1015], [-838]]
  c_138_136_1_False_resize <= c_136;
  c_138_136_1_False_shift <= shift_left(c_138_136_1_False_resize, 1);
  c_138_73_0_False_resize <= c_73;
  c_138_73_0_False_shift <= shift_left(c_138_73_0_False_resize, 0);
  c_138_126_0_False_resize <= c_126;
  c_138_126_0_False_shift <= shift_left(c_138_126_0_False_resize, 0);
  with config_select_15 select c_138_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_138_sel is
        when "00" => c_138 <= c_138_136_1_False_shift;
        when "01" => c_138 <= c_138_73_0_False_shift;
        when others => c_138 <= c_138_126_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 139 and associated fundamentals [[-151], [-207], [-478]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_139 <= c_84 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 140 and associated fundamentals [[-151], [-207], [-478]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_140 <= c_139 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 141 and associated fundamentals [[-302], [-531], [-956]]
  c_141_140_1_False_resize <= resize(c_140, 26);
  c_141_140_1_False_shift <= shift_left(c_141_140_1_False_resize, 1);
  c_141_99_0_False_resize <= c_99;
  c_141_99_0_False_shift <= shift_left(c_141_99_0_False_resize, 0);
  with config_select_15 select c_141_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_141_sel is
        when "0" => c_141 <= c_141_140_1_False_shift;
        when others => c_141 <= c_141_99_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 142 and associated fundamentals [[-1107], [-101], [-47]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_142 <= c_107 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 143 and associated fundamentals [[-1107], [-101], [-47]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_143 <= c_142 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 144 and associated fundamentals [[-151], [-207], [-478]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_144 <= c_140 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 145 and associated fundamentals [[-151], [-207], [-478]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_145 <= c_144 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 146 and associated fundamentals [[-963], [-207], [-94]]
  c_146_143_1_False_resize <= c_143(25 downto 0);
  c_146_143_1_False_shift <= shift_left(c_146_143_1_False_resize, 1);
  c_146_145_0_False_resize <= resize(c_145, 26);
  c_146_145_0_False_shift <= shift_left(c_146_145_0_False_resize, 0);
  c_146_116_0_False_resize <= c_116;
  c_146_116_0_False_shift <= shift_left(c_146_116_0_False_resize, 0);
  with config_select_17 select c_146_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_146_sel is
        when "00" => c_146 <= c_146_143_1_False_shift;
        when "01" => c_146 <= c_146_145_0_False_shift;
        when others => c_146 <= c_146_116_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 147 and associated fundamentals [[-943], [-75], [-1004]]
  c_147_128_0_False_resize <= resize(c_128, 26);
  c_147_128_0_False_shift <= shift_left(c_147_128_0_False_resize, 0);
  c_147_126_0_False_resize <= c_126;
  c_147_126_0_False_shift <= shift_left(c_147_126_0_False_resize, 0);
  c_147_121_1_False_resize <= c_121;
  c_147_121_1_False_shift <= shift_left(c_147_121_1_False_resize, 1);
  with config_select_15 select c_147_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_147_sel is
        when "00" => c_147 <= c_147_128_0_False_shift;
        when "01" => c_147 <= c_147_126_0_False_shift;
        when others => c_147 <= c_147_121_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 148 and associated fundamentals [[-925], [665], [-502]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_148 <= c_121 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 149 and associated fundamentals [[-925], [665], [-502]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_149 <= c_148 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 150 and associated fundamentals [[-925], [-958], [-374]]
  c_150_116_0_False_resize <= c_116;
  c_150_116_0_False_shift <= shift_left(c_150_116_0_False_resize, 0);
  c_150_149_0_False_resize <= c_149;
  c_150_149_0_False_shift <= shift_left(c_150_149_0_False_resize, 0);
  with config_select_17 select c_150_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_150_sel is
        when "0" => c_150 <= c_150_116_0_False_shift;
        when others => c_150 <= c_150_149_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 151 and associated fundamentals [[328], [770], [650]]
  c_151_136_0_False_resize <= c_136;
  c_151_136_0_False_shift <= shift_left(c_151_136_0_False_resize, 0);
  c_151_73_0_False_resize <= c_73;
  c_151_73_0_False_shift <= shift_left(c_151_73_0_False_resize, 0);
  c_151_128_1_False_resize <= resize(c_128, 26);
  c_151_128_1_False_shift <= shift_left(c_151_128_1_False_resize, 1);
  with config_select_15 select c_151_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_151_sel is
        when "00" => c_151 <= c_151_136_0_False_shift;
        when "01" => c_151 <= c_151_73_0_False_shift;
        when others => c_151 <= c_151_128_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 152 and associated fundamentals [[-541], [-101], [-806]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_152 <= c_124 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 153 and associated fundamentals [[-541], [-101], [-806]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_153 <= c_152 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 154 and associated fundamentals [[541], [101], [806]]
  c_154_resize <= c_153;
  c_154 <= -shift_left(c_154_resize, 0);
  -- node of type 'register' in stage 16 with id 155 and associated fundamentals [[-1002], [-1023], [-115]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_155 <= c_129 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 156 and associated fundamentals [[-1002], [-1023], [-115]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_156 <= c_155 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 157 and associated fundamentals [[1002], [1023], [115]]
  c_157_resize <= c_156;
  c_157 <= -shift_left(c_157_resize, 0);
  -- node of type 'register' in stage 16 with id 158 and associated fundamentals [[-501], [-22], [-456]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_158 <= c_132 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 159 and associated fundamentals [[-501], [-22], [-456]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_159 <= c_158 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 160 and associated fundamentals [[501], [22], [456]]
  c_160_resize <= c_159;
  c_160 <= -shift_left(c_160_resize, 0);
  -- node of type 'register' in stage 16 with id 161 and associated fundamentals [[256], [665], [640]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_161 <= c_137 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 162 and associated fundamentals [[256], [665], [640]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_162 <= c_161 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 163 and associated fundamentals [[256], [665], [640]]
  c_163_resize <= c_162;
  c_163 <= shift_left(c_163_resize, 0);
  -- node of type 'register' in stage 16 with id 164 and associated fundamentals [[-364], [-1015], [-838]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_164 <= c_138 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 165 and associated fundamentals [[-364], [-1015], [-838]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_165 <= c_164 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 166 and associated fundamentals [[364], [1015], [838]]
  c_166_resize <= c_165;
  c_166 <= -shift_left(c_166_resize, 0);
  -- node of type 'register' in stage 16 with id 167 and associated fundamentals [[-302], [-531], [-956]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_167 <= c_141 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 168 and associated fundamentals [[-302], [-531], [-956]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_168 <= c_167 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 169 and associated fundamentals [[302], [531], [956]]
  c_169_resize <= c_168;
  c_169 <= -shift_left(c_169_resize, 0);
  -- node of type 'output' in stage 17 with id 170 and associated fundamentals [[963], [207], [94]]
  c_170_resize <= c_146;
  c_170 <= -shift_left(c_170_resize, 0);
  -- node of type 'register' in stage 16 with id 171 and associated fundamentals [[-943], [-75], [-1004]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_171 <= c_147 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 172 and associated fundamentals [[-943], [-75], [-1004]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_172 <= c_171 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 173 and associated fundamentals [[943], [75], [1004]]
  c_173_resize <= c_172;
  c_173 <= -shift_left(c_173_resize, 0);
  -- node of type 'output' in stage 17 with id 174 and associated fundamentals [[925], [958], [374]]
  c_174_resize <= c_150;
  c_174 <= -shift_left(c_174_resize, 0);
  -- node of type 'register' in stage 16 with id 175 and associated fundamentals [[328], [770], [650]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_175 <= c_151 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 176 and associated fundamentals [[328], [770], [650]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_176 <= c_175 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 177 and associated fundamentals [[328], [770], [650]]
  c_177_resize <= c_176;
  c_177 <= shift_left(c_177_resize, 0);
end architecture;
