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
    y_6: out std_logic_vector(22 downto 0);
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
  signal c_1: signed(16 downto 0);
  signal c_1_0_1_False_resize: signed(16 downto 0);
  signal c_1_0_1_False_shift: signed(16 downto 0);
  signal c_1_0_0_False_resize: signed(16 downto 0);
  signal c_1_0_0_False_shift: signed(16 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(16 downto 0);
  signal c_2_0_0_False_resize: signed(16 downto 0);
  signal c_2_0_0_False_shift: signed(16 downto 0);
  signal c_2_0_1_False_resize: signed(16 downto 0);
  signal c_2_0_1_False_shift: signed(16 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(20 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_3_0_False_resize: signed(22 downto 0);
  signal c_6_3_0_False_shift: signed(22 downto 0);
  signal c_6_5_7_False_resize: signed(22 downto 0);
  signal c_6_5_7_False_shift: signed(22 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(20 downto 0);
  signal c_7_3_2_False_resize: signed(20 downto 0);
  signal c_7_3_2_False_shift: signed(20 downto 0);
  signal c_7_5_0_False_resize: signed(20 downto 0);
  signal c_7_5_0_False_shift: signed(20 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(20 downto 0);
  signal c_8_i0_resize: signed(20 downto 0);
  signal c_8_i1_resize: signed(20 downto 0);
  signal c_8_i0_shift: signed(20 downto 0);
  signal c_8_i1_shift: signed(20 downto 0);
  signal c_8_arith: signed(20 downto 0);
  signal c_8_oshift: signed(20 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(15 downto 0);
  signal c_10: signed(15 downto 0);
  signal c_11: signed(19 downto 0);
  signal c_11_8_0_False_resize: signed(19 downto 0);
  signal c_11_8_0_False_shift: signed(19 downto 0);
  signal c_11_10_3_False_resize: signed(19 downto 0);
  signal c_11_10_3_False_shift: signed(19 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(21 downto 0);
  signal c_12_0_0_False_resize: signed(21 downto 0);
  signal c_12_0_0_False_shift: signed(21 downto 0);
  signal c_12_0_6_False_resize: signed(21 downto 0);
  signal c_12_0_6_False_shift: signed(21 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_14: signed(21 downto 0);
  signal c_15: signed(21 downto 0);
  signal c_16: signed(21 downto 0);
  signal c_17: signed(22 downto 0);
  signal c_17_i0_resize: signed(22 downto 0);
  signal c_17_i1_resize: signed(22 downto 0);
  signal c_17_i0_shift: signed(22 downto 0);
  signal c_17_i1_shift: signed(22 downto 0);
  signal c_17_arith: signed(22 downto 0);
  signal c_17_oshift: signed(22 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(21 downto 0);
  signal c_18_3_1_False_resize: signed(21 downto 0);
  signal c_18_3_1_False_shift: signed(21 downto 0);
  signal c_18_3_0_False_resize: signed(21 downto 0);
  signal c_18_3_0_False_shift: signed(21 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(20 downto 0);
  signal c_19_5_0_False_resize: signed(20 downto 0);
  signal c_19_5_0_False_shift: signed(20 downto 0);
  signal c_19_3_0_False_resize: signed(20 downto 0);
  signal c_19_3_0_False_shift: signed(20 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_i0_resize: signed(23 downto 0);
  signal c_20_i1_resize: signed(23 downto 0);
  signal c_20_i0_shift: signed(23 downto 0);
  signal c_20_i1_shift: signed(23 downto 0);
  signal c_20_arith: signed(23 downto 0);
  signal c_20_oshift: signed(23 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(20 downto 0);
  signal c_22: signed(20 downto 0);
  signal c_23: signed(20 downto 0);
  signal c_24: signed(20 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_27: signed(22 downto 0);
  signal c_27_17_0_False_resize: signed(22 downto 0);
  signal c_27_17_0_False_shift: signed(22 downto 0);
  signal c_27_24_1_False_resize: signed(22 downto 0);
  signal c_27_24_1_False_shift: signed(22 downto 0);
  signal c_27_26_0_False_resize: signed(22 downto 0);
  signal c_27_26_0_False_shift: signed(22 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(20 downto 0);
  signal c_28_8_0_False_resize: signed(20 downto 0);
  signal c_28_8_0_False_shift: signed(20 downto 0);
  signal c_28_10_0_False_resize: signed(20 downto 0);
  signal c_28_10_0_False_shift: signed(20 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(20 downto 0);
  signal c_30: signed(20 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_i0_resize: signed(23 downto 0);
  signal c_31_i1_resize: signed(23 downto 0);
  signal c_31_i0_shift: signed(23 downto 0);
  signal c_31_i1_shift: signed(23 downto 0);
  signal c_31_arith: signed(23 downto 0);
  signal c_31_oshift: signed(23 downto 0);
  signal c_31_sub_sel: std_logic;
  signal c_32: signed(15 downto 0);
  signal c_33: signed(15 downto 0);
  signal c_34: signed(15 downto 0);
  signal c_35: signed(15 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_31_0_False_resize: signed(23 downto 0);
  signal c_36_31_0_False_shift: signed(23 downto 0);
  signal c_36_35_8_False_resize: signed(23 downto 0);
  signal c_36_35_8_False_shift: signed(23 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(22 downto 0);
  signal c_37_22_3_False_resize: signed(22 downto 0);
  signal c_37_22_3_False_shift: signed(22 downto 0);
  signal c_37_10_0_False_resize: signed(22 downto 0);
  signal c_37_10_0_False_shift: signed(22 downto 0);
  signal c_37_22_2_False_resize: signed(22 downto 0);
  signal c_37_22_2_False_shift: signed(22 downto 0);
  signal c_37_8_0_False_resize: signed(22 downto 0);
  signal c_37_8_0_False_shift: signed(22 downto 0);
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
  signal c_43: signed(22 downto 0);
  signal c_44: signed(22 downto 0);
  signal c_45: signed(22 downto 0);
  signal c_46: signed(22 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_46_0_False_resize: signed(23 downto 0);
  signal c_47_46_0_False_shift: signed(23 downto 0);
  signal c_47_42_0_False_resize: signed(23 downto 0);
  signal c_47_42_0_False_shift: signed(23 downto 0);
  signal c_47_sel: std_logic_vector(0 downto 0);
  signal c_48: signed(20 downto 0);
  signal c_49: signed(20 downto 0);
  signal c_50: signed(22 downto 0);
  signal c_50_33_2_False_resize: signed(22 downto 0);
  signal c_50_33_2_False_shift: signed(22 downto 0);
  signal c_50_49_0_False_resize: signed(22 downto 0);
  signal c_50_49_0_False_shift: signed(22 downto 0);
  signal c_50_17_0_False_resize: signed(22 downto 0);
  signal c_50_17_0_False_shift: signed(22 downto 0);
  signal c_50_49_2_False_resize: signed(22 downto 0);
  signal c_50_49_2_False_shift: signed(22 downto 0);
  signal c_50_sel: std_logic_vector(1 downto 0);
  signal c_51: signed(22 downto 0);
  signal c_52: signed(22 downto 0);
  signal c_53: signed(22 downto 0);
  signal c_54: signed(22 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_55_i0_resize: signed(23 downto 0);
  signal c_55_i1_resize: signed(23 downto 0);
  signal c_55_i0_shift: signed(23 downto 0);
  signal c_55_i1_shift: signed(23 downto 0);
  signal c_55_arith: signed(23 downto 0);
  signal c_55_oshift: signed(23 downto 0);
  signal c_55_sub_sel: std_logic;
  signal c_56: signed(23 downto 0);
  signal c_57: signed(23 downto 0);
  signal c_58: signed(23 downto 0);
  signal c_59: signed(23 downto 0);
  signal c_60: signed(23 downto 0);
  signal c_61: signed(23 downto 0);
  signal c_62: signed(24 downto 0);
  signal c_62_55_1_False_resize: signed(24 downto 0);
  signal c_62_55_1_False_shift: signed(24 downto 0);
  signal c_62_61_0_False_resize: signed(24 downto 0);
  signal c_62_61_0_False_shift: signed(24 downto 0);
  signal c_62_sel: std_logic_vector(0 downto 0);
  signal c_63: signed(20 downto 0);
  signal c_64: signed(20 downto 0);
  signal c_65: signed(21 downto 0);
  signal c_65_64_0_False_resize: signed(21 downto 0);
  signal c_65_64_0_False_shift: signed(21 downto 0);
  signal c_65_35_5_False_resize: signed(21 downto 0);
  signal c_65_35_5_False_shift: signed(21 downto 0);
  signal c_65_31_0_False_resize: signed(21 downto 0);
  signal c_65_31_0_False_shift: signed(21 downto 0);
  signal c_65_64_2_False_resize: signed(21 downto 0);
  signal c_65_64_2_False_shift: signed(21 downto 0);
  signal c_65_sel: std_logic_vector(1 downto 0);
  signal c_66: signed(21 downto 0);
  signal c_67: signed(21 downto 0);
  signal c_68: signed(21 downto 0);
  signal c_69: signed(21 downto 0);
  signal c_70: signed(23 downto 0);
  signal c_70_i0_resize: signed(23 downto 0);
  signal c_70_i1_resize: signed(23 downto 0);
  signal c_70_i0_shift: signed(23 downto 0);
  signal c_70_i1_shift: signed(23 downto 0);
  signal c_70_arith: signed(23 downto 0);
  signal c_70_oshift: signed(23 downto 0);
  signal c_70_sub_sel: std_logic;
  signal c_71: signed(20 downto 0);
  signal c_72: signed(20 downto 0);
  signal c_73: signed(22 downto 0);
  signal c_73_72_3_False_resize: signed(22 downto 0);
  signal c_73_72_3_False_shift: signed(22 downto 0);
  signal c_73_46_2_False_resize: signed(22 downto 0);
  signal c_73_46_2_False_shift: signed(22 downto 0);
  signal c_73_42_0_False_resize: signed(22 downto 0);
  signal c_73_42_0_False_shift: signed(22 downto 0);
  signal c_73_sel: std_logic_vector(1 downto 0);
  signal c_74: signed(21 downto 0);
  signal c_74_10_0_False_resize: signed(21 downto 0);
  signal c_74_10_0_False_shift: signed(21 downto 0);
  signal c_74_20_0_False_resize: signed(21 downto 0);
  signal c_74_20_0_False_shift: signed(21 downto 0);
  signal c_74_sel: std_logic_vector(0 downto 0);
  signal c_75: signed(21 downto 0);
  signal c_76: signed(21 downto 0);
  signal c_77: signed(21 downto 0);
  signal c_78: signed(21 downto 0);
  signal c_79: signed(21 downto 0);
  signal c_80: signed(21 downto 0);
  signal c_81: signed(23 downto 0);
  signal c_81_i0_resize: signed(23 downto 0);
  signal c_81_i1_resize: signed(23 downto 0);
  signal c_81_i0_shift: signed(23 downto 0);
  signal c_81_i1_shift: signed(23 downto 0);
  signal c_81_arith: signed(23 downto 0);
  signal c_81_oshift: signed(23 downto 0);
  signal c_81_sub_sel: std_logic;
  signal c_82: signed(23 downto 0);
  signal c_82_26_2_False_resize: signed(23 downto 0);
  signal c_82_26_2_False_shift: signed(23 downto 0);
  signal c_82_17_0_False_resize: signed(23 downto 0);
  signal c_82_17_0_False_shift: signed(23 downto 0);
  signal c_82_24_3_False_resize: signed(23 downto 0);
  signal c_82_24_3_False_shift: signed(23 downto 0);
  signal c_82_sel: std_logic_vector(1 downto 0);
  signal c_83: signed(20 downto 0);
  signal c_83_22_0_False_resize: signed(20 downto 0);
  signal c_83_22_0_False_shift: signed(20 downto 0);
  signal c_83_8_0_False_resize: signed(20 downto 0);
  signal c_83_8_0_False_shift: signed(20 downto 0);
  signal c_83_sel: std_logic_vector(0 downto 0);
  signal c_84: signed(20 downto 0);
  signal c_85: signed(20 downto 0);
  signal c_86: signed(23 downto 0);
  signal c_86_i0_resize: signed(23 downto 0);
  signal c_86_i1_resize: signed(23 downto 0);
  signal c_86_i0_shift: signed(23 downto 0);
  signal c_86_i1_shift: signed(23 downto 0);
  signal c_86_arith: signed(23 downto 0);
  signal c_86_oshift: signed(23 downto 0);
  signal c_86_sub_sel: std_logic;
  signal c_87: signed(23 downto 0);
  signal c_88: signed(23 downto 0);
  signal c_89: signed(23 downto 0);
  signal c_89_88_0_False_resize: signed(23 downto 0);
  signal c_89_88_0_False_shift: signed(23 downto 0);
  signal c_89_42_1_False_resize: signed(23 downto 0);
  signal c_89_42_1_False_shift: signed(23 downto 0);
  signal c_89_sel: std_logic_vector(0 downto 0);
  signal c_90: signed(23 downto 0);
  signal c_91: signed(23 downto 0);
  signal c_92: signed(23 downto 0);
  signal c_93: signed(23 downto 0);
  signal c_94: signed(23 downto 0);
  signal c_95: signed(23 downto 0);
  signal c_96: signed(23 downto 0);
  signal c_96_95_0_False_resize: signed(23 downto 0);
  signal c_96_95_0_False_shift: signed(23 downto 0);
  signal c_96_93_1_False_resize: signed(23 downto 0);
  signal c_96_93_1_False_shift: signed(23 downto 0);
  signal c_96_81_1_False_resize: signed(23 downto 0);
  signal c_96_81_1_False_shift: signed(23 downto 0);
  signal c_96_sel: std_logic_vector(1 downto 0);
  signal c_97: signed(23 downto 0);
  signal c_97_64_2_False_resize: signed(23 downto 0);
  signal c_97_64_2_False_shift: signed(23 downto 0);
  signal c_97_44_1_False_resize: signed(23 downto 0);
  signal c_97_44_1_False_shift: signed(23 downto 0);
  signal c_97_31_0_False_resize: signed(23 downto 0);
  signal c_97_31_0_False_shift: signed(23 downto 0);
  signal c_97_sel: std_logic_vector(1 downto 0);
  signal c_98: signed(20 downto 0);
  signal c_99: signed(20 downto 0);
  signal c_100: signed(20 downto 0);
  signal c_101: signed(20 downto 0);
  signal c_102: signed(23 downto 0);
  signal c_103: signed(23 downto 0);
  signal c_104: signed(23 downto 0);
  signal c_104_103_0_False_resize: signed(23 downto 0);
  signal c_104_103_0_False_shift: signed(23 downto 0);
  signal c_104_70_0_False_resize: signed(23 downto 0);
  signal c_104_70_0_False_shift: signed(23 downto 0);
  signal c_104_101_2_False_resize: signed(23 downto 0);
  signal c_104_101_2_False_shift: signed(23 downto 0);
  signal c_104_sel: std_logic_vector(1 downto 0);
  signal c_105: signed(22 downto 0);
  signal c_106: signed(22 downto 0);
  signal c_107: signed(22 downto 0);
  signal c_108: signed(22 downto 0);
  signal c_109: signed(23 downto 0);
  signal c_110: signed(23 downto 0);
  signal c_111: signed(23 downto 0);
  signal c_112: signed(23 downto 0);
  signal c_113: signed(23 downto 0);
  signal c_113_101_4_False_resize: signed(23 downto 0);
  signal c_113_101_4_False_shift: signed(23 downto 0);
  signal c_113_108_1_False_resize: signed(23 downto 0);
  signal c_113_108_1_False_shift: signed(23 downto 0);
  signal c_113_112_0_False_resize: signed(23 downto 0);
  signal c_113_112_0_False_shift: signed(23 downto 0);
  signal c_113_70_0_False_resize: signed(23 downto 0);
  signal c_113_70_0_False_shift: signed(23 downto 0);
  signal c_113_sel: std_logic_vector(1 downto 0);
  signal c_114: signed(23 downto 0);
  signal c_114_93_0_False_resize: signed(23 downto 0);
  signal c_114_93_0_False_shift: signed(23 downto 0);
  signal c_114_61_0_False_resize: signed(23 downto 0);
  signal c_114_61_0_False_shift: signed(23 downto 0);
  signal c_114_81_0_False_resize: signed(23 downto 0);
  signal c_114_81_0_False_shift: signed(23 downto 0);
  signal c_114_61_2_False_resize: signed(23 downto 0);
  signal c_114_61_2_False_shift: signed(23 downto 0);
  signal c_114_sel: std_logic_vector(1 downto 0);
  signal c_115: signed(15 downto 0);
  signal c_116: signed(15 downto 0);
  signal c_117: signed(15 downto 0);
  signal c_118: signed(15 downto 0);
  signal c_119: signed(15 downto 0);
  signal c_120: signed(15 downto 0);
  signal c_121: signed(22 downto 0);
  signal c_121_70_0_False_resize: signed(22 downto 0);
  signal c_121_70_0_False_shift: signed(22 downto 0);
  signal c_121_120_0_False_resize: signed(22 downto 0);
  signal c_121_120_0_False_shift: signed(22 downto 0);
  signal c_121_103_0_False_resize: signed(22 downto 0);
  signal c_121_103_0_False_shift: signed(22 downto 0);
  signal c_121_120_1_False_resize: signed(22 downto 0);
  signal c_121_120_1_False_shift: signed(22 downto 0);
  signal c_121_sel: std_logic_vector(1 downto 0);
  signal c_122: signed(23 downto 0);
  signal c_122_91_3_False_resize: signed(23 downto 0);
  signal c_122_91_3_False_shift: signed(23 downto 0);
  signal c_122_46_0_False_resize: signed(23 downto 0);
  signal c_122_46_0_False_shift: signed(23 downto 0);
  signal c_122_91_0_False_resize: signed(23 downto 0);
  signal c_122_91_0_False_shift: signed(23 downto 0);
  signal c_122_42_0_False_resize: signed(23 downto 0);
  signal c_122_42_0_False_shift: signed(23 downto 0);
  signal c_122_sel: std_logic_vector(1 downto 0);
  signal c_123: signed(20 downto 0);
  signal c_124: signed(20 downto 0);
  signal c_125: signed(20 downto 0);
  signal c_126: signed(20 downto 0);
  signal c_127: signed(20 downto 0);
  signal c_128: signed(20 downto 0);
  signal c_129: signed(23 downto 0);
  signal c_129_81_0_False_resize: signed(23 downto 0);
  signal c_129_81_0_False_shift: signed(23 downto 0);
  signal c_129_128_2_False_resize: signed(23 downto 0);
  signal c_129_128_2_False_shift: signed(23 downto 0);
  signal c_129_61_0_False_resize: signed(23 downto 0);
  signal c_129_61_0_False_shift: signed(23 downto 0);
  signal c_129_sel: std_logic_vector(1 downto 0);
  signal c_130: signed(23 downto 0);
  signal c_130_61_1_False_resize: signed(23 downto 0);
  signal c_130_61_1_False_shift: signed(23 downto 0);
  signal c_130_106_3_False_resize: signed(23 downto 0);
  signal c_130_106_3_False_shift: signed(23 downto 0);
  signal c_130_55_0_False_resize: signed(23 downto 0);
  signal c_130_55_0_False_shift: signed(23 downto 0);
  signal c_130_sel: std_logic_vector(1 downto 0);
  signal c_131: signed(23 downto 0);
  signal c_132: signed(23 downto 0);
  signal c_133: signed(23 downto 0);
  signal c_134: signed(23 downto 0);
  signal c_135: signed(23 downto 0);
  signal c_135_resize: signed(23 downto 0);
  signal c_136: signed(23 downto 0);
  signal c_137: signed(23 downto 0);
  signal c_138: signed(23 downto 0);
  signal c_138_resize: signed(23 downto 0);
  signal c_139: signed(23 downto 0);
  signal c_140: signed(23 downto 0);
  signal c_141: signed(23 downto 0);
  signal c_142: signed(23 downto 0);
  signal c_143: signed(23 downto 0);
  signal c_144: signed(23 downto 0);
  signal c_145: signed(23 downto 0);
  signal c_145_resize: signed(23 downto 0);
  signal c_146: signed(23 downto 0);
  signal c_146_resize: signed(23 downto 0);
  signal c_147: signed(23 downto 0);
  signal c_147_resize: signed(23 downto 0);
  signal c_148: signed(23 downto 0);
  signal c_149: signed(23 downto 0);
  signal c_150: signed(23 downto 0);
  signal c_150_resize: signed(23 downto 0);
  signal c_151: signed(22 downto 0);
  signal c_151_resize: signed(22 downto 0);
  signal c_152: signed(23 downto 0);
  signal c_153: signed(23 downto 0);
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
  -- output node 0 with id 135
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_135);
    end if;
  end process;
  -- output node 1 with id 138
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_138);
    end if;
  end process;
  -- output node 2 with id 145
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_145);
    end if;
  end process;
  -- output node 3 with id 146
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_146);
    end if;
  end process;
  -- output node 4 with id 147
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_147);
    end if;
  end process;
  -- output node 5 with id 150
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_150);
    end if;
  end process;
  -- output node 6 with id 151
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_151);
    end if;
  end process;
  -- output node 7 with id 156
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_156);
    end if;
  end process;
  -- output node 8 with id 159
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_159);
    end if;
  end process;
  -- output node 9 with id 162
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_162);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [2], [2], [1]]
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when "00",
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
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [2], [1], [1]]
  c_2_0_0_False_resize <= resize(c_0, 17);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_1_False_resize <= resize(c_0, 17);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  with config_select_1 select c_2_sel <= 
    "0" when "10",
    "0" when "11",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[7], [18], [17], [9]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 17,
      w_o => 21,
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
      c_3 <= c_3_oshift(20 downto 0);
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
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[128], [18], [17], [9]]
  c_6_3_0_False_resize <= resize(c_3, 23);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  c_6_5_7_False_resize <= resize(c_5, 23);
  c_6_5_7_False_shift <= shift_left(c_6_5_7_False_resize, 7);
  with config_select_3 select c_6_sel <= 
    "0" when "11",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_3_0_False_shift;
        when others => c_6 <= c_6_5_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[28], [1], [1], [1]]
  c_7_3_2_False_resize <= c_3;
  c_7_3_2_False_shift <= shift_left(c_7_3_2_False_resize, 2);
  c_7_5_0_False_resize <= resize(c_5, 21);
  c_7_5_0_False_shift <= shift_left(c_7_5_0_False_resize, 0);
  with config_select_3 select c_7_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_3_2_False_shift;
        when others => c_7 <= c_7_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 8 and associated fundamentals [[16], [22], [13], [5]]
  with config_select_4 select c_8_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
      w_o => 21,
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
      sub_i => c_8_sub_sel,
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 10 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 11 and associated fundamentals [[8], [8], [13], [5]]
  c_11_8_0_False_resize <= c_8(19 downto 0);
  c_11_8_0_False_shift <= shift_left(c_11_8_0_False_resize, 0);
  c_11_10_3_False_resize <= resize(c_10, 20);
  c_11_10_3_False_shift <= shift_left(c_11_10_3_False_resize, 3);
  with config_select_5 select c_11_sel <= 
    "0" when "11",
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_8_0_False_shift;
        when others => c_11 <= c_11_10_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 12 and associated fundamentals [[1], [1], [64], [1]]
  c_12_0_0_False_resize <= resize(c_0, 22);
  c_12_0_0_False_shift <= shift_left(c_12_0_0_False_resize, 0);
  c_12_0_6_False_resize <= resize(c_0, 22);
  c_12_0_6_False_shift <= shift_left(c_12_0_6_False_resize, 6);
  with config_select_1 select c_12_sel <= 
    "0" when "01",
    "0" when "11",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_0_0_False_shift;
        when others => c_12 <= c_12_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 13 and associated fundamentals [[1], [1], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 14 and associated fundamentals [[1], [1], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[1], [1], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 16 and associated fundamentals [[1], [1], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 17 and associated fundamentals [[31], [33], [116], [21]]
  with config_select_6 select c_17_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 22,
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
      sub_i => c_17_sub_sel,
      x_i => c_11,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[14], [36], [34], [9]]
  c_18_3_1_False_resize <= resize(c_3, 22);
  c_18_3_1_False_shift <= shift_left(c_18_3_1_False_resize, 1);
  c_18_3_0_False_resize <= resize(c_3, 22);
  c_18_3_0_False_shift <= shift_left(c_18_3_0_False_resize, 0);
  with config_select_3 select c_18_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_3_1_False_shift;
        when others => c_18 <= c_18_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 19 and associated fundamentals [[1], [1], [17], [1]]
  c_19_5_0_False_resize <= resize(c_5, 21);
  c_19_5_0_False_shift <= shift_left(c_19_5_0_False_resize, 0);
  c_19_3_0_False_resize <= c_3;
  c_19_3_0_False_shift <= shift_left(c_19_3_0_False_resize, 0);
  with config_select_3 select c_19_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_5_0_False_shift;
        when others => c_19 <= c_19_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 20 and associated fundamentals [[57], [143], [119], [37]]
  with config_select_4 select c_20_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 21,
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
      sub_i => c_20_sub_sel,
      x_i => c_18,
      y_i => c_19,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 21 and associated fundamentals [[7], [18], [17], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 22 and associated fundamentals [[7], [18], [17], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[7], [18], [17], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 24 and associated fundamentals [[7], [18], [17], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 25 and associated fundamentals [[57], [143], [119], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 26 and associated fundamentals [[57], [143], [119], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 27 and associated fundamentals [[57], [36], [116], [18]]
  c_27_17_0_False_resize <= c_17;
  c_27_17_0_False_shift <= shift_left(c_27_17_0_False_resize, 0);
  c_27_24_1_False_resize <= resize(c_24, 23);
  c_27_24_1_False_shift <= shift_left(c_27_24_1_False_resize, 1);
  c_27_26_0_False_resize <= c_26(22 downto 0);
  c_27_26_0_False_shift <= shift_left(c_27_26_0_False_resize, 0);
  with config_select_7 select c_27_sel <= 
    "00" when "10",
    "01" when "01",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "00" => c_27 <= c_27_17_0_False_shift;
        when "01" => c_27 <= c_27_24_1_False_shift;
        when others => c_27 <= c_27_26_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 28 and associated fundamentals [[1], [22], [1], [5]]
  c_28_8_0_False_resize <= c_8;
  c_28_8_0_False_shift <= shift_left(c_28_8_0_False_resize, 0);
  c_28_10_0_False_resize <= resize(c_10, 21);
  c_28_10_0_False_shift <= shift_left(c_28_10_0_False_resize, 0);
  with config_select_5 select c_28_sel <= 
    "0" when "11",
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "0" => c_28 <= c_28_8_0_False_shift;
        when others => c_28 <= c_28_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 29 and associated fundamentals [[1], [22], [1], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 30 and associated fundamentals [[1], [22], [1], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 31 and associated fundamentals [[115], [94], [231], [31]]
  with config_select_8 select c_31_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_31: entity work.adder_node
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
      sub_i => c_31_sub_sel,
      x_i => c_27,
      y_i => c_30,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 32 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 33 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 34 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 35 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 36 and associated fundamentals [[115], [94], [256], [31]]
  c_36_31_0_False_resize <= c_31;
  c_36_31_0_False_shift <= shift_left(c_36_31_0_False_resize, 0);
  c_36_35_8_False_resize <= resize(c_35, 24);
  c_36_35_8_False_shift <= shift_left(c_36_35_8_False_resize, 8);
  with config_select_9 select c_36_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "0" => c_36 <= c_36_31_0_False_shift;
        when others => c_36 <= c_36_35_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 37 and associated fundamentals [[28], [1], [13], [72]]
  c_37_22_3_False_resize <= resize(c_22, 23);
  c_37_22_3_False_shift <= shift_left(c_37_22_3_False_resize, 3);
  c_37_10_0_False_resize <= resize(c_10, 23);
  c_37_10_0_False_shift <= shift_left(c_37_10_0_False_resize, 0);
  c_37_22_2_False_resize <= resize(c_22, 23);
  c_37_22_2_False_shift <= shift_left(c_37_22_2_False_resize, 2);
  c_37_8_0_False_resize <= resize(c_8, 23);
  c_37_8_0_False_shift <= shift_left(c_37_8_0_False_resize, 0);
  with config_select_5 select c_37_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "00" => c_37 <= c_37_22_3_False_shift;
        when "01" => c_37 <= c_37_10_0_False_shift;
        when "10" => c_37 <= c_37_22_2_False_shift;
        when others => c_37 <= c_37_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 38 and associated fundamentals [[28], [1], [13], [72]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 39 and associated fundamentals [[28], [1], [13], [72]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 40 and associated fundamentals [[28], [1], [13], [72]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 41 and associated fundamentals [[28], [1], [13], [72]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 42 and associated fundamentals [[87], [93], [243], [103]]
  with config_select_10 select c_42_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_42: entity work.adder_node
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
  -- node of type 'register' in stage 7 with id 43 and associated fundamentals [[31], [33], [116], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 44 and associated fundamentals [[31], [33], [116], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 45 and associated fundamentals [[31], [33], [116], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 46 and associated fundamentals [[31], [33], [116], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 47 and associated fundamentals [[31], [93], [243], [103]]
  c_47_46_0_False_resize <= resize(c_46, 24);
  c_47_46_0_False_shift <= shift_left(c_47_46_0_False_resize, 0);
  c_47_42_0_False_resize <= c_42;
  c_47_42_0_False_shift <= shift_left(c_47_42_0_False_resize, 0);
  with config_select_11 select c_47_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "0" => c_47 <= c_47_46_0_False_shift;
        when others => c_47 <= c_47_42_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 48 and associated fundamentals [[16], [22], [13], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 49 and associated fundamentals [[16], [22], [13], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 50 and associated fundamentals [[64], [4], [116], [5]]
  c_50_33_2_False_resize <= resize(c_33, 23);
  c_50_33_2_False_shift <= shift_left(c_50_33_2_False_resize, 2);
  c_50_49_0_False_resize <= resize(c_49, 23);
  c_50_49_0_False_shift <= shift_left(c_50_49_0_False_resize, 0);
  c_50_17_0_False_resize <= c_17;
  c_50_17_0_False_shift <= shift_left(c_50_17_0_False_resize, 0);
  c_50_49_2_False_resize <= resize(c_49, 23);
  c_50_49_2_False_shift <= shift_left(c_50_49_2_False_resize, 2);
  with config_select_7 select c_50_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_50_sel is
        when "00" => c_50 <= c_50_33_2_False_shift;
        when "01" => c_50 <= c_50_49_0_False_shift;
        when "10" => c_50 <= c_50_17_0_False_shift;
        when others => c_50 <= c_50_49_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 51 and associated fundamentals [[64], [4], [116], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 52 and associated fundamentals [[64], [4], [116], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 53 and associated fundamentals [[64], [4], [116], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 54 and associated fundamentals [[64], [4], [116], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 55 and associated fundamentals [[159], [101], [11], [113]]
  with config_select_12 select c_55_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_55: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
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
      sub_i => c_55_sub_sel,
      x_i => c_47,
      y_i => c_54,
      z_o => c_55_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_55_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 56 and associated fundamentals [[57], [143], [119], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 57 and associated fundamentals [[57], [143], [119], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 58 and associated fundamentals [[57], [143], [119], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 59 and associated fundamentals [[57], [143], [119], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 60 and associated fundamentals [[57], [143], [119], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 61 and associated fundamentals [[57], [143], [119], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 62 and associated fundamentals [[318], [202], [119], [37]]
  c_62_55_1_False_resize <= resize(c_55, 25);
  c_62_55_1_False_shift <= shift_left(c_62_55_1_False_resize, 1);
  c_62_61_0_False_resize <= resize(c_61, 25);
  c_62_61_0_False_shift <= shift_left(c_62_61_0_False_resize, 0);
  with config_select_13 select c_62_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_62_sel is
        when "0" => c_62 <= c_62_55_1_False_shift;
        when others => c_62 <= c_62_61_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 63 and associated fundamentals [[16], [22], [13], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 64 and associated fundamentals [[16], [22], [13], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 65 and associated fundamentals [[64], [22], [32], [31]]
  c_65_64_0_False_resize <= resize(c_64, 22);
  c_65_64_0_False_shift <= shift_left(c_65_64_0_False_resize, 0);
  c_65_35_5_False_resize <= resize(c_35, 22);
  c_65_35_5_False_shift <= shift_left(c_65_35_5_False_resize, 5);
  c_65_31_0_False_resize <= c_31(21 downto 0);
  c_65_31_0_False_shift <= shift_left(c_65_31_0_False_resize, 0);
  c_65_64_2_False_resize <= resize(c_64, 22);
  c_65_64_2_False_shift <= shift_left(c_65_64_2_False_resize, 2);
  with config_select_9 select c_65_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_65_sel is
        when "00" => c_65 <= c_65_64_0_False_shift;
        when "01" => c_65 <= c_65_35_5_False_shift;
        when "10" => c_65 <= c_65_31_0_False_shift;
        when others => c_65 <= c_65_64_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 66 and associated fundamentals [[64], [22], [32], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 67 and associated fundamentals [[64], [22], [32], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 68 and associated fundamentals [[64], [22], [32], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 69 and associated fundamentals [[64], [22], [32], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 70 and associated fundamentals [[190], [246], [183], [99]]
  with config_select_14 select c_70_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_70: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_70_sub_sel,
      x_i => c_62,
      y_i => c_69,
      z_o => c_70_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_70_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 71 and associated fundamentals [[16], [22], [13], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 72 and associated fundamentals [[16], [22], [13], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 73 and associated fundamentals [[87], [93], [104], [84]]
  c_73_72_3_False_resize <= resize(c_72, 23);
  c_73_72_3_False_shift <= shift_left(c_73_72_3_False_resize, 3);
  c_73_46_2_False_resize <= c_46;
  c_73_46_2_False_shift <= shift_left(c_73_46_2_False_resize, 2);
  c_73_42_0_False_resize <= c_42(22 downto 0);
  c_73_42_0_False_shift <= shift_left(c_73_42_0_False_resize, 0);
  with config_select_11 select c_73_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_73_sel is
        when "00" => c_73 <= c_73_72_3_False_shift;
        when "01" => c_73 <= c_73_46_2_False_shift;
        when others => c_73 <= c_73_42_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 74 and associated fundamentals [[57], [1], [1], [1]]
  c_74_10_0_False_resize <= resize(c_10, 22);
  c_74_10_0_False_shift <= shift_left(c_74_10_0_False_resize, 0);
  c_74_20_0_False_resize <= c_20(21 downto 0);
  c_74_20_0_False_shift <= shift_left(c_74_20_0_False_resize, 0);
  with config_select_5 select c_74_sel <= 
    "0" when "11",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_74_sel is
        when "0" => c_74 <= c_74_10_0_False_shift;
        when others => c_74 <= c_74_20_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 75 and associated fundamentals [[57], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 76 and associated fundamentals [[57], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 77 and associated fundamentals [[57], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 78 and associated fundamentals [[57], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 79 and associated fundamentals [[57], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 80 and associated fundamentals [[57], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 81 and associated fundamentals [[201], [91], [102], [82]]
  with config_select_12 select c_81_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_81: entity work.adder_node
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
      sub_i => c_81_sub_sel,
      x_i => c_73,
      y_i => c_80,
      z_o => c_81_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_81_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 82 and associated fundamentals [[228], [33], [136], [72]]
  c_82_26_2_False_resize <= c_26;
  c_82_26_2_False_shift <= shift_left(c_82_26_2_False_resize, 2);
  c_82_17_0_False_resize <= resize(c_17, 24);
  c_82_17_0_False_shift <= shift_left(c_82_17_0_False_resize, 0);
  c_82_24_3_False_resize <= resize(c_24, 24);
  c_82_24_3_False_shift <= shift_left(c_82_24_3_False_resize, 3);
  with config_select_7 select c_82_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_82_sel is
        when "00" => c_82 <= c_82_26_2_False_shift;
        when "01" => c_82 <= c_82_17_0_False_shift;
        when others => c_82 <= c_82_24_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 83 and associated fundamentals [[7], [18], [13], [5]]
  c_83_22_0_False_resize <= c_22;
  c_83_22_0_False_shift <= shift_left(c_83_22_0_False_resize, 0);
  c_83_8_0_False_resize <= c_8;
  c_83_8_0_False_shift <= shift_left(c_83_8_0_False_resize, 0);
  with config_select_5 select c_83_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_83_sel is
        when "0" => c_83 <= c_83_22_0_False_shift;
        when others => c_83 <= c_83_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 84 and associated fundamentals [[7], [18], [13], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_83 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 85 and associated fundamentals [[7], [18], [13], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_84 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 86 and associated fundamentals [[235], [51], [123], [77]]
  with config_select_8 select c_86_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_86: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 21,
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
      x_i => c_82,
      y_i => c_85,
      z_o => c_86_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_86_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 87 and associated fundamentals [[235], [51], [123], [77]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_86 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 88 and associated fundamentals [[235], [51], [123], [77]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_87 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 89 and associated fundamentals [[235], [51], [123], [206]]
  c_89_88_0_False_resize <= c_88;
  c_89_88_0_False_shift <= shift_left(c_89_88_0_False_resize, 0);
  c_89_42_1_False_resize <= c_42;
  c_89_42_1_False_shift <= shift_left(c_89_42_1_False_resize, 1);
  with config_select_11 select c_89_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_89_sel is
        when "0" => c_89 <= c_89_88_0_False_shift;
        when others => c_89 <= c_89_42_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 90 and associated fundamentals [[115], [94], [231], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 91 and associated fundamentals [[115], [94], [231], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_90 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 92 and associated fundamentals [[115], [94], [231], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 93 and associated fundamentals [[115], [94], [231], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_92 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 94 and associated fundamentals [[87], [93], [243], [103]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 95 and associated fundamentals [[87], [93], [243], [103]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_94 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 96 and associated fundamentals [[230], [93], [243], [164]]
  c_96_95_0_False_resize <= c_95;
  c_96_95_0_False_shift <= shift_left(c_96_95_0_False_resize, 0);
  c_96_93_1_False_resize <= c_93;
  c_96_93_1_False_shift <= shift_left(c_96_93_1_False_resize, 1);
  c_96_81_1_False_resize <= c_81;
  c_96_81_1_False_shift <= shift_left(c_96_81_1_False_resize, 1);
  with config_select_13 select c_96_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_96_sel is
        when "00" => c_96 <= c_96_95_0_False_shift;
        when "01" => c_96 <= c_96_93_1_False_shift;
        when others => c_96 <= c_96_81_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 97 and associated fundamentals [[64], [94], [232], [20]]
  c_97_64_2_False_resize <= resize(c_64, 24);
  c_97_64_2_False_shift <= shift_left(c_97_64_2_False_resize, 2);
  c_97_44_1_False_resize <= resize(c_44, 24);
  c_97_44_1_False_shift <= shift_left(c_97_44_1_False_resize, 1);
  c_97_31_0_False_resize <= c_31;
  c_97_31_0_False_shift <= shift_left(c_97_31_0_False_resize, 0);
  with config_select_9 select c_97_sel <= 
    "00" when "11",
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_97_sel is
        when "00" => c_97 <= c_97_64_2_False_shift;
        when "01" => c_97 <= c_97_44_1_False_shift;
        when others => c_97 <= c_97_31_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 98 and associated fundamentals [[16], [22], [13], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_72 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 99 and associated fundamentals [[16], [22], [13], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_98 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 100 and associated fundamentals [[16], [22], [13], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_99 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 101 and associated fundamentals [[16], [22], [13], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_100 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 102 and associated fundamentals [[159], [101], [11], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 103 and associated fundamentals [[159], [101], [11], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_102 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 104 and associated fundamentals [[190], [88], [183], [113]]
  c_104_103_0_False_resize <= c_103;
  c_104_103_0_False_shift <= shift_left(c_104_103_0_False_resize, 0);
  c_104_70_0_False_resize <= c_70;
  c_104_70_0_False_shift <= shift_left(c_104_70_0_False_resize, 0);
  c_104_101_2_False_resize <= resize(c_101, 24);
  c_104_101_2_False_shift <= shift_left(c_104_101_2_False_resize, 2);
  with config_select_15 select c_104_sel <= 
    "00" when "11",
    "01" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_104_sel is
        when "00" => c_104 <= c_104_103_0_False_shift;
        when "01" => c_104 <= c_104_70_0_False_shift;
        when others => c_104 <= c_104_101_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 105 and associated fundamentals [[31], [33], [116], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 106 and associated fundamentals [[31], [33], [116], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_105 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 107 and associated fundamentals [[31], [33], [116], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_106 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 108 and associated fundamentals [[31], [33], [116], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_108 <= c_107 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 109 and associated fundamentals [[235], [51], [123], [77]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_109 <= c_88 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 110 and associated fundamentals [[235], [51], [123], [77]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_110 <= c_109 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 111 and associated fundamentals [[235], [51], [123], [77]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_110 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 112 and associated fundamentals [[235], [51], [123], [77]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_111 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 113 and associated fundamentals [[62], [246], [208], [77]]
  c_113_101_4_False_resize <= resize(c_101, 24);
  c_113_101_4_False_shift <= shift_left(c_113_101_4_False_resize, 4);
  c_113_108_1_False_resize <= resize(c_108, 24);
  c_113_108_1_False_shift <= shift_left(c_113_108_1_False_resize, 1);
  c_113_112_0_False_resize <= c_112;
  c_113_112_0_False_shift <= shift_left(c_113_112_0_False_resize, 0);
  c_113_70_0_False_resize <= c_70;
  c_113_70_0_False_shift <= shift_left(c_113_70_0_False_resize, 0);
  with config_select_15 select c_113_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_113_sel is
        when "00" => c_113 <= c_113_101_4_False_shift;
        when "01" => c_113 <= c_113_108_1_False_shift;
        when "10" => c_113 <= c_113_112_0_False_shift;
        when others => c_113 <= c_113_70_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 114 and associated fundamentals [[228], [143], [102], [31]]
  c_114_93_0_False_resize <= c_93;
  c_114_93_0_False_shift <= shift_left(c_114_93_0_False_resize, 0);
  c_114_61_0_False_resize <= c_61;
  c_114_61_0_False_shift <= shift_left(c_114_61_0_False_resize, 0);
  c_114_81_0_False_resize <= c_81;
  c_114_81_0_False_shift <= shift_left(c_114_81_0_False_resize, 0);
  c_114_61_2_False_resize <= c_61;
  c_114_61_2_False_shift <= shift_left(c_114_61_2_False_resize, 2);
  with config_select_13 select c_114_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_114_sel is
        when "00" => c_114 <= c_114_93_0_False_shift;
        when "01" => c_114 <= c_114_61_0_False_shift;
        when "10" => c_114 <= c_114_81_0_False_shift;
        when others => c_114 <= c_114_61_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 115 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 116 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_116 <= c_115 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 117 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_117 <= c_116 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 118 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_118 <= c_117 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 119 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_119 <= c_118 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 120 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_120 <= c_119 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 121 and associated fundamentals [[2], [1], [11], [99]]
  c_121_70_0_False_resize <= c_70(22 downto 0);
  c_121_70_0_False_shift <= shift_left(c_121_70_0_False_resize, 0);
  c_121_120_0_False_resize <= resize(c_120, 23);
  c_121_120_0_False_shift <= shift_left(c_121_120_0_False_resize, 0);
  c_121_103_0_False_resize <= c_103(22 downto 0);
  c_121_103_0_False_shift <= shift_left(c_121_103_0_False_resize, 0);
  c_121_120_1_False_resize <= resize(c_120, 23);
  c_121_120_1_False_shift <= shift_left(c_121_120_1_False_resize, 1);
  with config_select_15 select c_121_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_121_sel is
        when "00" => c_121 <= c_121_70_0_False_shift;
        when "01" => c_121 <= c_121_120_0_False_shift;
        when "10" => c_121 <= c_121_103_0_False_shift;
        when others => c_121 <= c_121_120_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 122 and associated fundamentals [[87], [33], [231], [248]]
  c_122_91_3_False_resize <= c_91;
  c_122_91_3_False_shift <= shift_left(c_122_91_3_False_resize, 3);
  c_122_46_0_False_resize <= resize(c_46, 24);
  c_122_46_0_False_shift <= shift_left(c_122_46_0_False_resize, 0);
  c_122_91_0_False_resize <= c_91;
  c_122_91_0_False_shift <= shift_left(c_122_91_0_False_resize, 0);
  c_122_42_0_False_resize <= c_42;
  c_122_42_0_False_shift <= shift_left(c_122_42_0_False_resize, 0);
  with config_select_11 select c_122_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_122_sel is
        when "00" => c_122 <= c_122_91_3_False_shift;
        when "01" => c_122 <= c_122_46_0_False_shift;
        when "10" => c_122 <= c_122_91_0_False_shift;
        when others => c_122 <= c_122_42_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 123 and associated fundamentals [[7], [18], [17], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_123 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 124 and associated fundamentals [[7], [18], [17], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_124 <= c_123 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 125 and associated fundamentals [[7], [18], [17], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_125 <= c_124 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 126 and associated fundamentals [[7], [18], [17], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_126 <= c_125 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 127 and associated fundamentals [[7], [18], [17], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_127 <= c_126 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 128 and associated fundamentals [[7], [18], [17], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_128 <= c_127 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 129 and associated fundamentals [[201], [91], [68], [37]]
  c_129_81_0_False_resize <= c_81;
  c_129_81_0_False_shift <= shift_left(c_129_81_0_False_resize, 0);
  c_129_128_2_False_resize <= resize(c_128, 24);
  c_129_128_2_False_shift <= shift_left(c_129_128_2_False_resize, 2);
  c_129_61_0_False_resize <= c_61;
  c_129_61_0_False_shift <= shift_left(c_129_61_0_False_resize, 0);
  with config_select_13 select c_129_sel <= 
    "00" when "01",
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_129_sel is
        when "00" => c_129 <= c_129_81_0_False_shift;
        when "01" => c_129 <= c_129_128_2_False_shift;
        when others => c_129 <= c_129_61_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 130 and associated fundamentals [[159], [101], [238], [168]]
  c_130_61_1_False_resize <= c_61;
  c_130_61_1_False_shift <= shift_left(c_130_61_1_False_resize, 1);
  c_130_106_3_False_resize <= resize(c_106, 24);
  c_130_106_3_False_shift <= shift_left(c_130_106_3_False_resize, 3);
  c_130_55_0_False_resize <= c_55;
  c_130_55_0_False_shift <= shift_left(c_130_55_0_False_resize, 0);
  with config_select_13 select c_130_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_130_sel is
        when "00" => c_130 <= c_130_61_1_False_shift;
        when "01" => c_130 <= c_130_106_3_False_shift;
        when others => c_130 <= c_130_55_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 131 and associated fundamentals [[235], [51], [123], [206]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_131 <= c_89 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 132 and associated fundamentals [[235], [51], [123], [206]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_132 <= c_131 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 133 and associated fundamentals [[235], [51], [123], [206]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_133 <= c_132 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 134 and associated fundamentals [[235], [51], [123], [206]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_134 <= c_133 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 135 and associated fundamentals [[235], [51], [123], [206]]
  c_135_resize <= c_134;
  c_135 <= shift_left(c_135_resize, 0);
  -- node of type 'register' in stage 14 with id 136 and associated fundamentals [[230], [93], [243], [164]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_136 <= c_96 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 137 and associated fundamentals [[230], [93], [243], [164]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_137 <= c_136 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 138 and associated fundamentals [[230], [93], [243], [164]]
  c_138_resize <= c_137;
  c_138 <= shift_left(c_138_resize, 0);
  -- node of type 'register' in stage 10 with id 139 and associated fundamentals [[64], [94], [232], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_139 <= c_97 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 140 and associated fundamentals [[64], [94], [232], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_140 <= c_139 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 141 and associated fundamentals [[64], [94], [232], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_141 <= c_140 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 142 and associated fundamentals [[64], [94], [232], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_142 <= c_141 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 143 and associated fundamentals [[64], [94], [232], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_143 <= c_142 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 144 and associated fundamentals [[64], [94], [232], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_144 <= c_143 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 145 and associated fundamentals [[64], [94], [232], [20]]
  c_145_resize <= c_144;
  c_145 <= shift_left(c_145_resize, 0);
  -- node of type 'output' in stage 15 with id 146 and associated fundamentals [[190], [88], [183], [113]]
  c_146_resize <= c_104;
  c_146 <= shift_left(c_146_resize, 0);
  -- node of type 'output' in stage 15 with id 147 and associated fundamentals [[62], [246], [208], [77]]
  c_147_resize <= c_113;
  c_147 <= shift_left(c_147_resize, 0);
  -- node of type 'register' in stage 14 with id 148 and associated fundamentals [[228], [143], [102], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_148 <= c_114 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 149 and associated fundamentals [[228], [143], [102], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_149 <= c_148 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 150 and associated fundamentals [[228], [143], [102], [31]]
  c_150_resize <= c_149;
  c_150 <= shift_left(c_150_resize, 0);
  -- node of type 'output' in stage 15 with id 151 and associated fundamentals [[2], [1], [11], [99]]
  c_151_resize <= c_121;
  c_151 <= shift_left(c_151_resize, 0);
  -- node of type 'register' in stage 12 with id 152 and associated fundamentals [[87], [33], [231], [248]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_152 <= c_122 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 153 and associated fundamentals [[87], [33], [231], [248]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_153 <= c_152 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 154 and associated fundamentals [[87], [33], [231], [248]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_154 <= c_153 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 155 and associated fundamentals [[87], [33], [231], [248]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_155 <= c_154 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 156 and associated fundamentals [[87], [33], [231], [248]]
  c_156_resize <= c_155;
  c_156 <= shift_left(c_156_resize, 0);
  -- node of type 'register' in stage 14 with id 157 and associated fundamentals [[201], [91], [68], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_157 <= c_129 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 158 and associated fundamentals [[201], [91], [68], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_158 <= c_157 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 159 and associated fundamentals [[201], [91], [68], [37]]
  c_159_resize <= c_158;
  c_159 <= shift_left(c_159_resize, 0);
  -- node of type 'register' in stage 14 with id 160 and associated fundamentals [[159], [101], [238], [168]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_160 <= c_130 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 161 and associated fundamentals [[159], [101], [238], [168]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_161 <= c_160 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 162 and associated fundamentals [[159], [101], [238], [168]]
  c_162_resize <= c_161;
  c_162 <= shift_left(c_162_resize, 0);
end architecture;
