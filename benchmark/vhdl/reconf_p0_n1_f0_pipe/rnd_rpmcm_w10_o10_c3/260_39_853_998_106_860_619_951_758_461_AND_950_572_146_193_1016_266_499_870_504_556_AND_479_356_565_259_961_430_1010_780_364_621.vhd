library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
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
  signal config_select_21: std_logic_vector(1 downto 0);
  signal config_select_22: std_logic_vector(1 downto 0);
  signal config_select_23: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(20 downto 0);
  signal c_1_0_0_False_resize: signed(20 downto 0);
  signal c_1_0_0_False_shift: signed(20 downto 0);
  signal c_1_0_5_False_resize: signed(20 downto 0);
  signal c_1_0_5_False_shift: signed(20 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(18 downto 0);
  signal c_2_0_0_False_resize: signed(18 downto 0);
  signal c_2_0_0_False_shift: signed(18 downto 0);
  signal c_2_0_3_False_resize: signed(18 downto 0);
  signal c_2_0_3_False_shift: signed(18 downto 0);
  signal c_2_0_2_False_resize: signed(18 downto 0);
  signal c_2_0_2_False_shift: signed(18 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(20 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(20 downto 0);
  signal c_6_3_0_False_resize: signed(20 downto 0);
  signal c_6_3_0_False_shift: signed(20 downto 0);
  signal c_6_3_3_False_resize: signed(20 downto 0);
  signal c_6_3_3_False_shift: signed(20 downto 0);
  signal c_6_5_1_False_resize: signed(20 downto 0);
  signal c_6_5_1_False_shift: signed(20 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(25 downto 0);
  signal c_7_3_5_False_resize: signed(25 downto 0);
  signal c_7_3_5_False_shift: signed(25 downto 0);
  signal c_7_5_7_False_resize: signed(25 downto 0);
  signal c_7_5_7_False_shift: signed(25 downto 0);
  signal c_7_5_0_False_resize: signed(25 downto 0);
  signal c_7_5_0_False_shift: signed(25 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(25 downto 0);
  signal c_8_i0_resize: signed(25 downto 0);
  signal c_8_i1_resize: signed(25 downto 0);
  signal c_8_i0_shift: signed(25 downto 0);
  signal c_8_i1_shift: signed(25 downto 0);
  signal c_8_arith: signed(25 downto 0);
  signal c_8_oshift: signed(25 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(15 downto 0);
  signal c_10: signed(15 downto 0);
  signal c_11: signed(20 downto 0);
  signal c_12: signed(20 downto 0);
  signal c_13: signed(20 downto 0);
  signal c_13_12_0_False_resize: signed(20 downto 0);
  signal c_13_12_0_False_shift: signed(20 downto 0);
  signal c_13_10_2_False_resize: signed(20 downto 0);
  signal c_13_10_2_False_shift: signed(20 downto 0);
  signal c_13_8_0_False_resize: signed(20 downto 0);
  signal c_13_8_0_False_shift: signed(20 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(21 downto 0);
  signal c_14_0_0_False_resize: signed(21 downto 0);
  signal c_14_0_0_False_shift: signed(21 downto 0);
  signal c_14_0_5_False_resize: signed(21 downto 0);
  signal c_14_0_5_False_shift: signed(21 downto 0);
  signal c_14_0_6_False_resize: signed(21 downto 0);
  signal c_14_0_6_False_shift: signed(21 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(21 downto 0);
  signal c_16: signed(21 downto 0);
  signal c_17: signed(21 downto 0);
  signal c_18: signed(21 downto 0);
  signal c_19: signed(22 downto 0);
  signal c_19_i0_resize: signed(22 downto 0);
  signal c_19_i1_resize: signed(22 downto 0);
  signal c_19_i0_shift: signed(22 downto 0);
  signal c_19_i1_shift: signed(22 downto 0);
  signal c_19_arith: signed(22 downto 0);
  signal c_19_oshift: signed(22 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_5_0_False_resize: signed(23 downto 0);
  signal c_20_5_0_False_shift: signed(23 downto 0);
  signal c_20_5_8_False_resize: signed(23 downto 0);
  signal c_20_5_8_False_shift: signed(23 downto 0);
  signal c_20_3_3_False_resize: signed(23 downto 0);
  signal c_20_3_3_False_shift: signed(23 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(15 downto 0);
  signal c_22: signed(15 downto 0);
  signal c_23: signed(21 downto 0);
  signal c_23_19_0_False_resize: signed(21 downto 0);
  signal c_23_19_0_False_shift: signed(21 downto 0);
  signal c_23_22_5_False_resize: signed(21 downto 0);
  signal c_23_22_5_False_shift: signed(21 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_28: signed(24 downto 0);
  signal c_28_i0_resize: signed(24 downto 0);
  signal c_28_i1_resize: signed(24 downto 0);
  signal c_28_i0_shift: signed(24 downto 0);
  signal c_28_i1_shift: signed(24 downto 0);
  signal c_28_arith: signed(24 downto 0);
  signal c_28_oshift: signed(24 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(20 downto 0);
  signal c_30: signed(20 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_32_2_False_resize: signed(25 downto 0);
  signal c_33_32_2_False_shift: signed(25 downto 0);
  signal c_33_30_0_False_resize: signed(25 downto 0);
  signal c_33_30_0_False_shift: signed(25 downto 0);
  signal c_33_19_0_False_resize: signed(25 downto 0);
  signal c_33_19_0_False_shift: signed(25 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(15 downto 0);
  signal c_35: signed(15 downto 0);
  signal c_36: signed(22 downto 0);
  signal c_37: signed(22 downto 0);
  signal c_38: signed(24 downto 0);
  signal c_38_37_0_False_resize: signed(24 downto 0);
  signal c_38_37_0_False_shift: signed(24 downto 0);
  signal c_38_28_3_False_resize: signed(24 downto 0);
  signal c_38_28_3_False_shift: signed(24 downto 0);
  signal c_38_35_6_False_resize: signed(24 downto 0);
  signal c_38_35_6_False_shift: signed(24 downto 0);
  signal c_38_sel: std_logic_vector(1 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_41_i0_resize: signed(25 downto 0);
  signal c_41_i1_resize: signed(25 downto 0);
  signal c_41_i0_shift: signed(25 downto 0);
  signal c_41_i1_shift: signed(25 downto 0);
  signal c_41_arith: signed(25 downto 0);
  signal c_41_oshift: signed(25 downto 0);
  signal c_42: signed(22 downto 0);
  signal c_43: signed(22 downto 0);
  signal c_44: signed(22 downto 0);
  signal c_44_43_0_False_resize: signed(22 downto 0);
  signal c_44_43_0_False_shift: signed(22 downto 0);
  signal c_44_41_1_False_resize: signed(22 downto 0);
  signal c_44_41_1_False_shift: signed(22 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(22 downto 0);
  signal c_45_3_0_False_resize: signed(22 downto 0);
  signal c_45_3_0_False_shift: signed(22 downto 0);
  signal c_45_5_0_False_resize: signed(22 downto 0);
  signal c_45_5_0_False_shift: signed(22 downto 0);
  signal c_45_3_2_False_resize: signed(22 downto 0);
  signal c_45_3_2_False_shift: signed(22 downto 0);
  signal c_45_sel: std_logic_vector(1 downto 0);
  signal c_46: signed(22 downto 0);
  signal c_47: signed(22 downto 0);
  signal c_48: signed(22 downto 0);
  signal c_49: signed(22 downto 0);
  signal c_50: signed(22 downto 0);
  signal c_51: signed(22 downto 0);
  signal c_52: signed(22 downto 0);
  signal c_53: signed(22 downto 0);
  signal c_54: signed(24 downto 0);
  signal c_54_i0_resize: signed(24 downto 0);
  signal c_54_i1_resize: signed(24 downto 0);
  signal c_54_i0_shift: signed(24 downto 0);
  signal c_54_i1_shift: signed(24 downto 0);
  signal c_54_arith: signed(24 downto 0);
  signal c_54_oshift: signed(24 downto 0);
  signal c_54_sub_sel: std_logic;
  signal c_55: signed(20 downto 0);
  signal c_56: signed(20 downto 0);
  signal c_57: signed(20 downto 0);
  signal c_58: signed(20 downto 0);
  signal c_59: signed(20 downto 0);
  signal c_60: signed(20 downto 0);
  signal c_61: signed(22 downto 0);
  signal c_62: signed(22 downto 0);
  signal c_63: signed(21 downto 0);
  signal c_63_62_0_False_resize: signed(21 downto 0);
  signal c_63_62_0_False_shift: signed(21 downto 0);
  signal c_63_60_2_False_resize: signed(21 downto 0);
  signal c_63_60_2_False_shift: signed(21 downto 0);
  signal c_63_54_0_False_resize: signed(21 downto 0);
  signal c_63_54_0_False_shift: signed(21 downto 0);
  signal c_63_sel: std_logic_vector(1 downto 0);
  signal c_64: signed(20 downto 0);
  signal c_64_58_0_False_resize: signed(20 downto 0);
  signal c_64_58_0_False_shift: signed(20 downto 0);
  signal c_64_41_1_False_resize: signed(20 downto 0);
  signal c_64_41_1_False_shift: signed(20 downto 0);
  signal c_64_58_1_False_resize: signed(20 downto 0);
  signal c_64_58_1_False_shift: signed(20 downto 0);
  signal c_64_sel: std_logic_vector(1 downto 0);
  signal c_65: signed(20 downto 0);
  signal c_66: signed(20 downto 0);
  signal c_67: signed(25 downto 0);
  signal c_67_i0_resize: signed(25 downto 0);
  signal c_67_i1_resize: signed(25 downto 0);
  signal c_67_i0_shift: signed(25 downto 0);
  signal c_67_i1_shift: signed(25 downto 0);
  signal c_67_arith: signed(25 downto 0);
  signal c_67_oshift: signed(25 downto 0);
  signal c_67_sub_sel: std_logic;
  signal c_68: signed(25 downto 0);
  signal c_69: signed(25 downto 0);
  signal c_70: signed(25 downto 0);
  signal c_71: signed(25 downto 0);
  signal c_72: signed(26 downto 0);
  signal c_72_41_4_False_resize: signed(26 downto 0);
  signal c_72_41_4_False_shift: signed(26 downto 0);
  signal c_72_71_0_False_resize: signed(26 downto 0);
  signal c_72_71_0_False_shift: signed(26 downto 0);
  signal c_72_71_3_False_resize: signed(26 downto 0);
  signal c_72_71_3_False_shift: signed(26 downto 0);
  signal c_72_sel: std_logic_vector(1 downto 0);
  signal c_73: signed(22 downto 0);
  signal c_73_35_0_False_resize: signed(22 downto 0);
  signal c_73_35_0_False_shift: signed(22 downto 0);
  signal c_73_28_0_False_resize: signed(22 downto 0);
  signal c_73_28_0_False_shift: signed(22 downto 0);
  signal c_73_56_5_False_resize: signed(22 downto 0);
  signal c_73_56_5_False_shift: signed(22 downto 0);
  signal c_73_sel: std_logic_vector(1 downto 0);
  signal c_74: signed(22 downto 0);
  signal c_75: signed(22 downto 0);
  signal c_76: signed(26 downto 0);
  signal c_76_i0_resize: signed(26 downto 0);
  signal c_76_i1_resize: signed(26 downto 0);
  signal c_76_i0_shift: signed(26 downto 0);
  signal c_76_i1_shift: signed(26 downto 0);
  signal c_76_arith: signed(26 downto 0);
  signal c_76_oshift: signed(26 downto 0);
  signal c_76_sub_sel: std_logic;
  signal c_77: signed(25 downto 0);
  signal c_78: signed(25 downto 0);
  signal c_79: signed(25 downto 0);
  signal c_79_78_0_False_resize: signed(25 downto 0);
  signal c_79_78_0_False_shift: signed(25 downto 0);
  signal c_79_62_0_False_resize: signed(25 downto 0);
  signal c_79_62_0_False_shift: signed(25 downto 0);
  signal c_79_54_0_False_resize: signed(25 downto 0);
  signal c_79_54_0_False_shift: signed(25 downto 0);
  signal c_79_sel: std_logic_vector(1 downto 0);
  signal c_80: signed(25 downto 0);
  signal c_81: signed(25 downto 0);
  signal c_82: signed(23 downto 0);
  signal c_82_76_0_False_resize: signed(23 downto 0);
  signal c_82_76_0_False_shift: signed(23 downto 0);
  signal c_82_81_0_False_resize: signed(23 downto 0);
  signal c_82_81_0_False_shift: signed(23 downto 0);
  signal c_82_54_0_False_resize: signed(23 downto 0);
  signal c_82_54_0_False_shift: signed(23 downto 0);
  signal c_82_sel: std_logic_vector(1 downto 0);
  signal c_83: signed(24 downto 0);
  signal c_83_i0_resize: signed(25 downto 0);
  signal c_83_i1_resize: signed(25 downto 0);
  signal c_83_i0_shift: signed(25 downto 0);
  signal c_83_i1_shift: signed(25 downto 0);
  signal c_83_arith: signed(25 downto 0);
  signal c_83_oshift: signed(24 downto 0);
  signal c_83_sub_sel: std_logic;
  signal c_84: signed(25 downto 0);
  signal c_84_12_0_False_resize: signed(25 downto 0);
  signal c_84_12_0_False_shift: signed(25 downto 0);
  signal c_84_8_0_False_resize: signed(25 downto 0);
  signal c_84_8_0_False_shift: signed(25 downto 0);
  signal c_84_sel: std_logic_vector(0 downto 0);
  signal c_85: signed(26 downto 0);
  signal c_85_62_8_False_resize: signed(26 downto 0);
  signal c_85_62_8_False_shift: signed(26 downto 0);
  signal c_85_76_0_False_resize: signed(26 downto 0);
  signal c_85_76_0_False_shift: signed(26 downto 0);
  signal c_85_76_3_False_resize: signed(26 downto 0);
  signal c_85_76_3_False_shift: signed(26 downto 0);
  signal c_85_sel: std_logic_vector(1 downto 0);
  signal c_86: signed(25 downto 0);
  signal c_87: signed(25 downto 0);
  signal c_88: signed(25 downto 0);
  signal c_89: signed(25 downto 0);
  signal c_90: signed(25 downto 0);
  signal c_91: signed(25 downto 0);
  signal c_92: signed(25 downto 0);
  signal c_93: signed(25 downto 0);
  signal c_94: signed(25 downto 0);
  signal c_94_i0_resize: signed(25 downto 0);
  signal c_94_i1_resize: signed(25 downto 0);
  signal c_94_i0_shift: signed(25 downto 0);
  signal c_94_i1_shift: signed(25 downto 0);
  signal c_94_arith: signed(25 downto 0);
  signal c_94_oshift: signed(25 downto 0);
  signal c_94_sub_sel: std_logic;
  signal c_95: signed(15 downto 0);
  signal c_96: signed(15 downto 0);
  signal c_97: signed(15 downto 0);
  signal c_98: signed(15 downto 0);
  signal c_99: signed(15 downto 0);
  signal c_100: signed(15 downto 0);
  signal c_101: signed(24 downto 0);
  signal c_102: signed(24 downto 0);
  signal c_103: signed(24 downto 0);
  signal c_104: signed(24 downto 0);
  signal c_105: signed(24 downto 0);
  signal c_106: signed(24 downto 0);
  signal c_107: signed(25 downto 0);
  signal c_107_100_7_False_resize: signed(25 downto 0);
  signal c_107_100_7_False_shift: signed(25 downto 0);
  signal c_107_106_0_False_resize: signed(25 downto 0);
  signal c_107_106_0_False_shift: signed(25 downto 0);
  signal c_107_83_1_False_resize: signed(25 downto 0);
  signal c_107_83_1_False_shift: signed(25 downto 0);
  signal c_107_sel: std_logic_vector(1 downto 0);
  signal c_108: signed(25 downto 0);
  signal c_108_28_1_False_resize: signed(25 downto 0);
  signal c_108_28_1_False_shift: signed(25 downto 0);
  signal c_108_35_0_False_resize: signed(25 downto 0);
  signal c_108_35_0_False_shift: signed(25 downto 0);
  signal c_108_28_2_False_resize: signed(25 downto 0);
  signal c_108_28_2_False_shift: signed(25 downto 0);
  signal c_108_sel: std_logic_vector(1 downto 0);
  signal c_109: signed(25 downto 0);
  signal c_110: signed(25 downto 0);
  signal c_111: signed(25 downto 0);
  signal c_112: signed(25 downto 0);
  signal c_113: signed(25 downto 0);
  signal c_114: signed(25 downto 0);
  signal c_115: signed(25 downto 0);
  signal c_115_i0_resize: signed(25 downto 0);
  signal c_115_i1_resize: signed(25 downto 0);
  signal c_115_i0_shift: signed(25 downto 0);
  signal c_115_i1_shift: signed(25 downto 0);
  signal c_115_arith: signed(25 downto 0);
  signal c_115_oshift: signed(25 downto 0);
  signal c_115_sub_sel: std_logic;
  signal c_116: signed(25 downto 0);
  signal c_116_106_0_False_resize: signed(25 downto 0);
  signal c_116_106_0_False_shift: signed(25 downto 0);
  signal c_116_67_2_False_resize: signed(25 downto 0);
  signal c_116_67_2_False_shift: signed(25 downto 0);
  signal c_116_sel: std_logic_vector(0 downto 0);
  signal c_117: signed(22 downto 0);
  signal c_118: signed(22 downto 0);
  signal c_119: signed(25 downto 0);
  signal c_119_118_3_False_resize: signed(25 downto 0);
  signal c_119_118_3_False_shift: signed(25 downto 0);
  signal c_119_94_0_False_resize: signed(25 downto 0);
  signal c_119_94_0_False_shift: signed(25 downto 0);
  signal c_119_100_8_False_resize: signed(25 downto 0);
  signal c_119_100_8_False_shift: signed(25 downto 0);
  signal c_119_sel: std_logic_vector(1 downto 0);
  signal c_120: signed(24 downto 0);
  signal c_120_i0_resize: signed(24 downto 0);
  signal c_120_i1_resize: signed(24 downto 0);
  signal c_120_i0_shift: signed(24 downto 0);
  signal c_120_i1_shift: signed(24 downto 0);
  signal c_120_arith: signed(24 downto 0);
  signal c_120_oshift: signed(24 downto 0);
  signal c_120_sub_sel: std_logic;
  signal c_121: signed(22 downto 0);
  signal c_122: signed(22 downto 0);
  signal c_123: signed(25 downto 0);
  signal c_124: signed(25 downto 0);
  signal c_125: signed(25 downto 0);
  signal c_125_120_0_False_resize: signed(25 downto 0);
  signal c_125_120_0_False_shift: signed(25 downto 0);
  signal c_125_122_3_False_resize: signed(25 downto 0);
  signal c_125_122_3_False_shift: signed(25 downto 0);
  signal c_125_124_0_False_resize: signed(25 downto 0);
  signal c_125_124_0_False_shift: signed(25 downto 0);
  signal c_125_sel: std_logic_vector(1 downto 0);
  signal c_126: signed(25 downto 0);
  signal c_126_67_0_False_resize: signed(25 downto 0);
  signal c_126_67_0_False_shift: signed(25 downto 0);
  signal c_126_83_0_False_resize: signed(25 downto 0);
  signal c_126_83_0_False_shift: signed(25 downto 0);
  signal c_126_sel: std_logic_vector(0 downto 0);
  signal c_127: signed(25 downto 0);
  signal c_128: signed(25 downto 0);
  signal c_129: signed(25 downto 0);
  signal c_129_i0_resize: signed(25 downto 0);
  signal c_129_i1_resize: signed(25 downto 0);
  signal c_129_i0_shift: signed(25 downto 0);
  signal c_129_i1_shift: signed(25 downto 0);
  signal c_129_arith: signed(25 downto 0);
  signal c_129_oshift: signed(25 downto 0);
  signal c_129_sub_sel: std_logic;
  signal c_130: signed(20 downto 0);
  signal c_131: signed(20 downto 0);
  signal c_132: signed(20 downto 0);
  signal c_133: signed(20 downto 0);
  signal c_134: signed(20 downto 0);
  signal c_135: signed(20 downto 0);
  signal c_136: signed(25 downto 0);
  signal c_137: signed(25 downto 0);
  signal c_138: signed(25 downto 0);
  signal c_139: signed(25 downto 0);
  signal c_140: signed(25 downto 0);
  signal c_140_135_0_False_resize: signed(25 downto 0);
  signal c_140_135_0_False_shift: signed(25 downto 0);
  signal c_140_139_0_False_resize: signed(25 downto 0);
  signal c_140_139_0_False_shift: signed(25 downto 0);
  signal c_140_129_2_False_resize: signed(25 downto 0);
  signal c_140_129_2_False_shift: signed(25 downto 0);
  signal c_140_sel: std_logic_vector(1 downto 0);
  signal c_141: signed(24 downto 0);
  signal c_142: signed(24 downto 0);
  signal c_143: signed(24 downto 0);
  signal c_143_122_3_False_resize: signed(24 downto 0);
  signal c_143_122_3_False_shift: signed(24 downto 0);
  signal c_143_142_1_False_resize: signed(24 downto 0);
  signal c_143_142_1_False_shift: signed(24 downto 0);
  signal c_143_115_0_False_resize: signed(24 downto 0);
  signal c_143_115_0_False_shift: signed(24 downto 0);
  signal c_143_sel: std_logic_vector(1 downto 0);
  signal c_144: signed(24 downto 0);
  signal c_145: signed(24 downto 0);
  signal c_146: signed(25 downto 0);
  signal c_146_i0_resize: signed(25 downto 0);
  signal c_146_i1_resize: signed(25 downto 0);
  signal c_146_i0_shift: signed(25 downto 0);
  signal c_146_i1_shift: signed(25 downto 0);
  signal c_146_arith: signed(25 downto 0);
  signal c_146_oshift: signed(25 downto 0);
  signal c_147: signed(24 downto 0);
  signal c_147_35_0_False_resize: signed(24 downto 0);
  signal c_147_35_0_False_shift: signed(24 downto 0);
  signal c_147_56_0_False_resize: signed(24 downto 0);
  signal c_147_56_0_False_shift: signed(24 downto 0);
  signal c_147_28_0_False_resize: signed(24 downto 0);
  signal c_147_28_0_False_shift: signed(24 downto 0);
  signal c_147_sel: std_logic_vector(1 downto 0);
  signal c_148: signed(25 downto 0);
  signal c_149: signed(25 downto 0);
  signal c_150: signed(25 downto 0);
  signal c_151: signed(25 downto 0);
  signal c_152: signed(25 downto 0);
  signal c_153: signed(25 downto 0);
  signal c_154: signed(24 downto 0);
  signal c_155: signed(24 downto 0);
  signal c_156: signed(25 downto 0);
  signal c_156_153_0_False_resize: signed(25 downto 0);
  signal c_156_153_0_False_shift: signed(25 downto 0);
  signal c_156_129_0_False_resize: signed(25 downto 0);
  signal c_156_129_0_False_shift: signed(25 downto 0);
  signal c_156_155_2_False_resize: signed(25 downto 0);
  signal c_156_155_2_False_shift: signed(25 downto 0);
  signal c_156_sel: std_logic_vector(1 downto 0);
  signal c_157: signed(24 downto 0);
  signal c_158: signed(24 downto 0);
  signal c_159: signed(24 downto 0);
  signal c_160: signed(24 downto 0);
  signal c_161: signed(24 downto 0);
  signal c_162: signed(24 downto 0);
  signal c_163: signed(24 downto 0);
  signal c_164: signed(24 downto 0);
  signal c_165: signed(24 downto 0);
  signal c_166: signed(24 downto 0);
  signal c_167: signed(25 downto 0);
  signal c_167_i0_resize: signed(25 downto 0);
  signal c_167_i1_resize: signed(25 downto 0);
  signal c_167_i0_shift: signed(25 downto 0);
  signal c_167_i1_shift: signed(25 downto 0);
  signal c_167_arith: signed(25 downto 0);
  signal c_167_oshift: signed(25 downto 0);
  signal c_167_sub_sel: std_logic;
  signal c_168: signed(25 downto 0);
  signal c_168_120_1_False_resize: signed(25 downto 0);
  signal c_168_120_1_False_shift: signed(25 downto 0);
  signal c_168_151_1_False_resize: signed(25 downto 0);
  signal c_168_151_1_False_shift: signed(25 downto 0);
  signal c_168_115_0_False_resize: signed(25 downto 0);
  signal c_168_115_0_False_shift: signed(25 downto 0);
  signal c_168_sel: std_logic_vector(1 downto 0);
  signal c_169: signed(25 downto 0);
  signal c_169_62_0_False_resize: signed(25 downto 0);
  signal c_169_62_0_False_shift: signed(25 downto 0);
  signal c_169_76_2_False_resize: signed(25 downto 0);
  signal c_169_76_2_False_shift: signed(25 downto 0);
  signal c_169_62_2_False_resize: signed(25 downto 0);
  signal c_169_62_2_False_shift: signed(25 downto 0);
  signal c_169_sel: std_logic_vector(1 downto 0);
  signal c_170: signed(24 downto 0);
  signal c_171: signed(24 downto 0);
  signal c_172: signed(24 downto 0);
  signal c_173: signed(24 downto 0);
  signal c_174: signed(24 downto 0);
  signal c_175: signed(24 downto 0);
  signal c_176: signed(25 downto 0);
  signal c_177: signed(25 downto 0);
  signal c_178: signed(25 downto 0);
  signal c_179: signed(25 downto 0);
  signal c_180: signed(25 downto 0);
  signal c_180_179_0_False_resize: signed(25 downto 0);
  signal c_180_179_0_False_shift: signed(25 downto 0);
  signal c_180_175_1_False_resize: signed(25 downto 0);
  signal c_180_175_1_False_shift: signed(25 downto 0);
  signal c_180_167_0_False_resize: signed(25 downto 0);
  signal c_180_167_0_False_shift: signed(25 downto 0);
  signal c_180_sel: std_logic_vector(1 downto 0);
  signal c_181: signed(25 downto 0);
  signal c_182: signed(25 downto 0);
  signal c_183: signed(25 downto 0);
  signal c_184: signed(25 downto 0);
  signal c_185: signed(25 downto 0);
  signal c_186: signed(25 downto 0);
  signal c_187: signed(25 downto 0);
  signal c_188: signed(25 downto 0);
  signal c_189: signed(25 downto 0);
  signal c_189_179_0_False_resize: signed(25 downto 0);
  signal c_189_179_0_False_shift: signed(25 downto 0);
  signal c_189_146_0_False_resize: signed(25 downto 0);
  signal c_189_146_0_False_shift: signed(25 downto 0);
  signal c_189_188_0_False_resize: signed(25 downto 0);
  signal c_189_188_0_False_shift: signed(25 downto 0);
  signal c_189_sel: std_logic_vector(1 downto 0);
  signal c_190: signed(24 downto 0);
  signal c_191: signed(24 downto 0);
  signal c_192: signed(24 downto 0);
  signal c_193: signed(24 downto 0);
  signal c_194: signed(24 downto 0);
  signal c_195: signed(24 downto 0);
  signal c_196: signed(24 downto 0);
  signal c_197: signed(24 downto 0);
  signal c_198: signed(25 downto 0);
  signal c_199: signed(25 downto 0);
  signal c_200: signed(25 downto 0);
  signal c_200_146_0_False_resize: signed(25 downto 0);
  signal c_200_146_0_False_shift: signed(25 downto 0);
  signal c_200_199_3_False_resize: signed(25 downto 0);
  signal c_200_199_3_False_shift: signed(25 downto 0);
  signal c_200_197_1_False_resize: signed(25 downto 0);
  signal c_200_197_1_False_shift: signed(25 downto 0);
  signal c_200_sel: std_logic_vector(1 downto 0);
  signal c_201: signed(25 downto 0);
  signal c_201_120_1_False_resize: signed(25 downto 0);
  signal c_201_120_1_False_shift: signed(25 downto 0);
  signal c_201_193_0_False_resize: signed(25 downto 0);
  signal c_201_193_0_False_shift: signed(25 downto 0);
  signal c_201_120_2_False_resize: signed(25 downto 0);
  signal c_201_120_2_False_shift: signed(25 downto 0);
  signal c_201_sel: std_logic_vector(1 downto 0);
  signal c_202: signed(24 downto 0);
  signal c_203: signed(24 downto 0);
  signal c_204: signed(24 downto 0);
  signal c_205: signed(24 downto 0);
  signal c_206: signed(25 downto 0);
  signal c_206_167_1_False_resize: signed(25 downto 0);
  signal c_206_167_1_False_shift: signed(25 downto 0);
  signal c_206_199_0_False_resize: signed(25 downto 0);
  signal c_206_199_0_False_shift: signed(25 downto 0);
  signal c_206_205_0_False_resize: signed(25 downto 0);
  signal c_206_205_0_False_shift: signed(25 downto 0);
  signal c_206_sel: std_logic_vector(1 downto 0);
  signal c_207: signed(25 downto 0);
  signal c_207_124_0_False_resize: signed(25 downto 0);
  signal c_207_124_0_False_shift: signed(25 downto 0);
  signal c_207_137_2_False_resize: signed(25 downto 0);
  signal c_207_137_2_False_shift: signed(25 downto 0);
  signal c_207_115_0_False_resize: signed(25 downto 0);
  signal c_207_115_0_False_shift: signed(25 downto 0);
  signal c_207_sel: std_logic_vector(1 downto 0);
  signal c_208: signed(25 downto 0);
  signal c_209: signed(25 downto 0);
  signal c_210: signed(25 downto 0);
  signal c_211: signed(25 downto 0);
  signal c_212: signed(25 downto 0);
  signal c_212_175_2_False_resize: signed(25 downto 0);
  signal c_212_175_2_False_shift: signed(25 downto 0);
  signal c_212_167_2_False_resize: signed(25 downto 0);
  signal c_212_167_2_False_shift: signed(25 downto 0);
  signal c_212_211_0_False_resize: signed(25 downto 0);
  signal c_212_211_0_False_shift: signed(25 downto 0);
  signal c_212_sel: std_logic_vector(1 downto 0);
  signal c_213: signed(25 downto 0);
  signal c_213_199_0_False_resize: signed(25 downto 0);
  signal c_213_199_0_False_shift: signed(25 downto 0);
  signal c_213_146_0_False_resize: signed(25 downto 0);
  signal c_213_146_0_False_shift: signed(25 downto 0);
  signal c_213_175_0_False_resize: signed(25 downto 0);
  signal c_213_175_0_False_shift: signed(25 downto 0);
  signal c_213_sel: std_logic_vector(1 downto 0);
  signal c_214: signed(25 downto 0);
  signal c_215: signed(25 downto 0);
  signal c_216: signed(25 downto 0);
  signal c_217: signed(25 downto 0);
  signal c_218: signed(25 downto 0);
  signal c_218_resize: signed(25 downto 0);
  signal c_219: signed(25 downto 0);
  signal c_220: signed(25 downto 0);
  signal c_221: signed(25 downto 0);
  signal c_222: signed(25 downto 0);
  signal c_223: signed(25 downto 0);
  signal c_224: signed(25 downto 0);
  signal c_225: signed(25 downto 0);
  signal c_226: signed(25 downto 0);
  signal c_227: signed(25 downto 0);
  signal c_227_resize: signed(25 downto 0);
  signal c_228: signed(25 downto 0);
  signal c_228_resize: signed(25 downto 0);
  signal c_229: signed(25 downto 0);
  signal c_229_resize: signed(25 downto 0);
  signal c_230: signed(25 downto 0);
  signal c_230_resize: signed(25 downto 0);
  signal c_231: signed(25 downto 0);
  signal c_232: signed(25 downto 0);
  signal c_233: signed(25 downto 0);
  signal c_234: signed(25 downto 0);
  signal c_235: signed(25 downto 0);
  signal c_235_resize: signed(25 downto 0);
  signal c_236: signed(25 downto 0);
  signal c_236_resize: signed(25 downto 0);
  signal c_237: signed(25 downto 0);
  signal c_238: signed(25 downto 0);
  signal c_239: signed(25 downto 0);
  signal c_240: signed(25 downto 0);
  signal c_241: signed(25 downto 0);
  signal c_241_resize: signed(25 downto 0);
  signal c_242: signed(25 downto 0);
  signal c_242_resize: signed(25 downto 0);
  signal c_243: signed(25 downto 0);
  signal c_243_resize: signed(25 downto 0);
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
      config_select_21 <= config_select_20;
      config_select_22 <= config_select_21;
      config_select_23 <= config_select_22;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 218
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_218);
    end if;
  end process;
  -- output node 1 with id 227
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_227);
    end if;
  end process;
  -- output node 2 with id 228
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_228);
    end if;
  end process;
  -- output node 3 with id 229
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_229);
    end if;
  end process;
  -- output node 4 with id 230
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_230);
    end if;
  end process;
  -- output node 5 with id 235
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_235);
    end if;
  end process;
  -- output node 6 with id 236
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_236);
    end if;
  end process;
  -- output node 7 with id 241
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_241);
    end if;
  end process;
  -- output node 8 with id 242
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_242);
    end if;
  end process;
  -- output node 9 with id 243
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_243);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [32], [1]]
  c_1_0_0_False_resize <= resize(c_0, 21);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_5_False_resize <= resize(c_0, 21);
  c_1_0_5_False_shift <= shift_left(c_1_0_5_False_resize, 5);
  with config_select_1 select c_1_sel <= 
    "0" when "10",
    "0" when "00",
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
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[8], [1], [4]]
  c_2_0_0_False_resize <= resize(c_0, 19);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_3_False_resize <= resize(c_0, 19);
  c_2_0_3_False_shift <= shift_left(c_2_0_3_False_resize, 3);
  c_2_0_2_False_resize <= resize(c_0, 19);
  c_2_0_2_False_shift <= shift_left(c_2_0_2_False_resize, 2);
  with config_select_1 select c_2_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_0_False_shift;
        when "01" => c_2 <= c_2_0_3_False_shift;
        when others => c_2 <= c_2_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 3 and associated fundamentals [[-7], [31], [-3]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 19,
      w_o => 21,
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
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[2], [31], [-24]]
  c_6_3_0_False_resize <= c_3;
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  c_6_3_3_False_resize <= c_3;
  c_6_3_3_False_shift <= shift_left(c_6_3_3_False_resize, 3);
  c_6_5_1_False_resize <= resize(c_5, 21);
  c_6_5_1_False_shift <= shift_left(c_6_5_1_False_resize, 1);
  with config_select_3 select c_6_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_3_0_False_shift;
        when "01" => c_6 <= c_6_3_3_False_shift;
        when others => c_6 <= c_6_5_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[128], [992], [1]]
  c_7_3_5_False_resize <= resize(c_3, 26);
  c_7_3_5_False_shift <= shift_left(c_7_3_5_False_resize, 5);
  c_7_5_7_False_resize <= resize(c_5, 26);
  c_7_5_7_False_shift <= shift_left(c_7_5_7_False_resize, 7);
  c_7_5_0_False_resize <= resize(c_5, 26);
  c_7_5_0_False_shift <= shift_left(c_7_5_0_False_resize, 0);
  with config_select_3 select c_7_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_3_5_False_shift;
        when "01" => c_7 <= c_7_5_7_False_shift;
        when others => c_7 <= c_7_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 8 and associated fundamentals [[130], [-961], [-25]]
  with config_select_4 select c_8_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 21,
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
      sub_i => c_8_sub_sel,
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(25 downto 0);
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
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[-7], [31], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[-7], [31], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 13 and associated fundamentals [[-7], [4], [-25]]
  c_13_12_0_False_resize <= c_12;
  c_13_12_0_False_shift <= shift_left(c_13_12_0_False_resize, 0);
  c_13_10_2_False_resize <= resize(c_10, 21);
  c_13_10_2_False_shift <= shift_left(c_13_10_2_False_resize, 2);
  c_13_8_0_False_resize <= c_8(20 downto 0);
  c_13_8_0_False_shift <= shift_left(c_13_8_0_False_resize, 0);
  with config_select_5 select c_13_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_12_0_False_shift;
        when "01" => c_13 <= c_13_10_2_False_shift;
        when others => c_13 <= c_13_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 14 and associated fundamentals [[32], [1], [64]]
  c_14_0_0_False_resize <= resize(c_0, 22);
  c_14_0_0_False_shift <= shift_left(c_14_0_0_False_resize, 0);
  c_14_0_5_False_resize <= resize(c_0, 22);
  c_14_0_5_False_shift <= shift_left(c_14_0_5_False_resize, 5);
  c_14_0_6_False_resize <= resize(c_0, 22);
  c_14_0_6_False_shift <= shift_left(c_14_0_6_False_resize, 6);
  with config_select_1 select c_14_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_0_0_False_shift;
        when "01" => c_14 <= c_14_0_5_False_shift;
        when others => c_14 <= c_14_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 15 and associated fundamentals [[32], [1], [64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 16 and associated fundamentals [[32], [1], [64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 17 and associated fundamentals [[32], [1], [64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[32], [1], [64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 6 with id 19 and associated fundamentals [[-39], [3], [-89]]
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 22,
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
      x_i => c_13,
      y_i => c_18,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 20 and associated fundamentals [[1], [248], [256]]
  c_20_5_0_False_resize <= resize(c_5, 24);
  c_20_5_0_False_shift <= shift_left(c_20_5_0_False_resize, 0);
  c_20_5_8_False_resize <= resize(c_5, 24);
  c_20_5_8_False_shift <= shift_left(c_20_5_8_False_resize, 8);
  c_20_3_3_False_resize <= resize(c_3, 24);
  c_20_3_3_False_shift <= shift_left(c_20_3_3_False_resize, 3);
  with config_select_3 select c_20_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_5_0_False_shift;
        when "01" => c_20 <= c_20_5_8_False_shift;
        when others => c_20 <= c_20_3_3_False_shift;
      end case;
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
  -- node of type 'mux' in stage 7 with id 23 and associated fundamentals [[-39], [3], [32]]
  c_23_19_0_False_resize <= c_19(21 downto 0);
  c_23_19_0_False_shift <= shift_left(c_23_19_0_False_resize, 0);
  c_23_22_5_False_resize <= resize(c_22, 22);
  c_23_22_5_False_shift <= shift_left(c_23_22_5_False_resize, 5);
  with config_select_7 select c_23_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_19_0_False_shift;
        when others => c_23 <= c_23_22_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 24 and associated fundamentals [[1], [248], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 25 and associated fundamentals [[1], [248], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 26 and associated fundamentals [[1], [248], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 27 and associated fundamentals [[1], [248], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 28 and associated fundamentals [[41], [499], [480]]
  with config_select_8 select c_28_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
      w_o => 25,
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
      sub_i => c_28_sub_sel,
      x_i => c_27,
      y_i => c_23,
      z_o => c_28_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_28_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 29 and associated fundamentals [[-7], [31], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 30 and associated fundamentals [[-7], [31], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 31 and associated fundamentals [[130], [-961], [-25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 32 and associated fundamentals [[130], [-961], [-25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 33 and associated fundamentals [[520], [3], [-3]]
  c_33_32_2_False_resize <= c_32;
  c_33_32_2_False_shift <= shift_left(c_33_32_2_False_resize, 2);
  c_33_30_0_False_resize <= resize(c_30, 26);
  c_33_30_0_False_shift <= shift_left(c_33_30_0_False_resize, 0);
  c_33_19_0_False_resize <= resize(c_19, 26);
  c_33_19_0_False_shift <= shift_left(c_33_19_0_False_resize, 0);
  with config_select_7 select c_33_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "00" => c_33 <= c_33_32_2_False_shift;
        when "01" => c_33 <= c_33_30_0_False_shift;
        when others => c_33 <= c_33_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 34 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 35 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 36 and associated fundamentals [[-39], [3], [-89]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 37 and associated fundamentals [[-39], [3], [-89]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 38 and associated fundamentals [[328], [3], [64]]
  c_38_37_0_False_resize <= resize(c_37, 25);
  c_38_37_0_False_shift <= shift_left(c_38_37_0_False_resize, 0);
  c_38_28_3_False_resize <= c_28;
  c_38_28_3_False_shift <= shift_left(c_38_28_3_False_resize, 3);
  c_38_35_6_False_resize <= resize(c_35, 25);
  c_38_35_6_False_shift <= shift_left(c_38_35_6_False_resize, 6);
  with config_select_9 select c_38_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "00" => c_38 <= c_38_37_0_False_shift;
        when "01" => c_38 <= c_38_28_3_False_shift;
        when others => c_38 <= c_38_35_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 39 and associated fundamentals [[520], [3], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 40 and associated fundamentals [[520], [3], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 10 with id 41 and associated fundamentals [[-792], [-9], [-259]]
  inst_adder_node_41: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
      w_o => 26,
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
      x_i => c_40,
      y_i => c_38,
      z_o => c_41_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_41_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 42 and associated fundamentals [[-39], [3], [-89]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 43 and associated fundamentals [[-39], [3], [-89]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 44 and associated fundamentals [[-39], [-18], [-89]]
  c_44_43_0_False_resize <= c_43;
  c_44_43_0_False_shift <= shift_left(c_44_43_0_False_resize, 0);
  c_44_41_1_False_resize <= c_41(22 downto 0);
  c_44_41_1_False_shift <= shift_left(c_44_41_1_False_resize, 1);
  with config_select_11 select c_44_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "0" => c_44 <= c_44_43_0_False_shift;
        when others => c_44 <= c_44_41_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 45 and associated fundamentals [[-7], [124], [1]]
  c_45_3_0_False_resize <= resize(c_3, 23);
  c_45_3_0_False_shift <= shift_left(c_45_3_0_False_resize, 0);
  c_45_5_0_False_resize <= resize(c_5, 23);
  c_45_5_0_False_shift <= shift_left(c_45_5_0_False_resize, 0);
  c_45_3_2_False_resize <= resize(c_3, 23);
  c_45_3_2_False_shift <= shift_left(c_45_3_2_False_resize, 2);
  with config_select_3 select c_45_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "00" => c_45 <= c_45_3_0_False_shift;
        when "01" => c_45 <= c_45_5_0_False_shift;
        when others => c_45 <= c_45_3_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 46 and associated fundamentals [[-7], [124], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 47 and associated fundamentals [[-7], [124], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 48 and associated fundamentals [[-7], [124], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 49 and associated fundamentals [[-7], [124], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 50 and associated fundamentals [[-7], [124], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 51 and associated fundamentals [[-7], [124], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 52 and associated fundamentals [[-7], [124], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 53 and associated fundamentals [[-7], [124], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 54 and associated fundamentals [[-53], [-266], [-91]]
  with config_select_12 select c_54_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_54: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 25,
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
      sub_i => c_54_sub_sel,
      x_i => c_44,
      y_i => c_53,
      z_o => c_54_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_54_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 55 and associated fundamentals [[-7], [31], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 56 and associated fundamentals [[-7], [31], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 57 and associated fundamentals [[-7], [31], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 58 and associated fundamentals [[-7], [31], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 59 and associated fundamentals [[-7], [31], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 60 and associated fundamentals [[-7], [31], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 61 and associated fundamentals [[-39], [3], [-89]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 62 and associated fundamentals [[-39], [3], [-89]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 63 and associated fundamentals [[-53], [3], [-12]]
  c_63_62_0_False_resize <= c_62(21 downto 0);
  c_63_62_0_False_shift <= shift_left(c_63_62_0_False_resize, 0);
  c_63_60_2_False_resize <= resize(c_60, 22);
  c_63_60_2_False_shift <= shift_left(c_63_60_2_False_resize, 2);
  c_63_54_0_False_resize <= c_54(21 downto 0);
  c_63_54_0_False_shift <= shift_left(c_63_54_0_False_resize, 0);
  with config_select_13 select c_63_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_63_sel is
        when "00" => c_63 <= c_63_62_0_False_shift;
        when "01" => c_63 <= c_63_60_2_False_shift;
        when others => c_63 <= c_63_54_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 64 and associated fundamentals [[-14], [-18], [-3]]
  c_64_58_0_False_resize <= c_58;
  c_64_58_0_False_shift <= shift_left(c_64_58_0_False_resize, 0);
  c_64_41_1_False_resize <= c_41(20 downto 0);
  c_64_41_1_False_shift <= shift_left(c_64_41_1_False_resize, 1);
  c_64_58_1_False_resize <= c_58;
  c_64_58_1_False_shift <= shift_left(c_64_58_1_False_resize, 1);
  with config_select_11 select c_64_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_64_sel is
        when "00" => c_64 <= c_64_58_0_False_shift;
        when "01" => c_64 <= c_64_41_1_False_shift;
        when others => c_64 <= c_64_58_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 65 and associated fundamentals [[-14], [-18], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 66 and associated fundamentals [[-14], [-18], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 67 and associated fundamentals [[-834], [66], [-195]]
  with config_select_14 select c_67_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_67: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 21,
      w_o => 26,
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
      sub_i => c_67_sub_sel,
      x_i => c_63,
      y_i => c_66,
      z_o => c_67_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_67_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 68 and associated fundamentals [[130], [-961], [-25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 69 and associated fundamentals [[130], [-961], [-25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 70 and associated fundamentals [[130], [-961], [-25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 71 and associated fundamentals [[130], [-961], [-25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 72 and associated fundamentals [[1040], [-144], [-25]]
  c_72_41_4_False_resize <= resize(c_41, 27);
  c_72_41_4_False_shift <= shift_left(c_72_41_4_False_resize, 4);
  c_72_71_0_False_resize <= resize(c_71, 27);
  c_72_71_0_False_shift <= shift_left(c_72_71_0_False_resize, 0);
  c_72_71_3_False_resize <= resize(c_71, 27);
  c_72_71_3_False_shift <= shift_left(c_72_71_3_False_resize, 3);
  with config_select_11 select c_72_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_72_sel is
        when "00" => c_72 <= c_72_41_4_False_shift;
        when "01" => c_72 <= c_72_71_0_False_shift;
        when others => c_72 <= c_72_71_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 73 and associated fundamentals [[41], [1], [-96]]
  c_73_35_0_False_resize <= resize(c_35, 23);
  c_73_35_0_False_shift <= shift_left(c_73_35_0_False_resize, 0);
  c_73_28_0_False_resize <= c_28(22 downto 0);
  c_73_28_0_False_shift <= shift_left(c_73_28_0_False_resize, 0);
  c_73_56_5_False_resize <= resize(c_56, 23);
  c_73_56_5_False_shift <= shift_left(c_73_56_5_False_resize, 5);
  with config_select_9 select c_73_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_73_sel is
        when "00" => c_73 <= c_73_35_0_False_shift;
        when "01" => c_73 <= c_73_28_0_False_shift;
        when others => c_73 <= c_73_56_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 74 and associated fundamentals [[41], [1], [-96]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 75 and associated fundamentals [[41], [1], [-96]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 76 and associated fundamentals [[1081], [-143], [71]]
  with config_select_12 select c_76_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_76: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 23,
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
      sub_i => c_76_sub_sel,
      x_i => c_72,
      y_i => c_75,
      z_o => c_76_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_76_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 77 and associated fundamentals [[-792], [-9], [-259]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 78 and associated fundamentals [[-792], [-9], [-259]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 79 and associated fundamentals [[-792], [3], [-91]]
  c_79_78_0_False_resize <= c_78;
  c_79_78_0_False_shift <= shift_left(c_79_78_0_False_resize, 0);
  c_79_62_0_False_resize <= resize(c_62, 26);
  c_79_62_0_False_shift <= shift_left(c_79_62_0_False_resize, 0);
  c_79_54_0_False_resize <= resize(c_54, 26);
  c_79_54_0_False_shift <= shift_left(c_79_54_0_False_resize, 0);
  with config_select_13 select c_79_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_79_sel is
        when "00" => c_79 <= c_79_78_0_False_shift;
        when "01" => c_79 <= c_79_62_0_False_shift;
        when others => c_79 <= c_79_54_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 80 and associated fundamentals [[130], [-961], [-25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_71 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 81 and associated fundamentals [[130], [-961], [-25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_80 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 82 and associated fundamentals [[130], [-143], [-91]]
  c_82_76_0_False_resize <= c_76(23 downto 0);
  c_82_76_0_False_shift <= shift_left(c_82_76_0_False_resize, 0);
  c_82_81_0_False_resize <= c_81(23 downto 0);
  c_82_81_0_False_shift <= shift_left(c_82_81_0_False_resize, 0);
  c_82_54_0_False_resize <= c_54(23 downto 0);
  c_82_54_0_False_shift <= shift_left(c_82_54_0_False_resize, 0);
  with config_select_13 select c_82_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_82_sel is
        when "00" => c_82 <= c_82_76_0_False_shift;
        when "01" => c_82 <= c_82_81_0_False_shift;
        when others => c_82 <= c_82_54_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 83 and associated fundamentals [[-461], [73], [-91]]
  with config_select_14 select c_83_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_83: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
      w_o => 25,
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
      sub_i => c_83_sub_sel,
      x_i => c_79,
      y_i => c_82,
      z_o => c_83_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_83_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 84 and associated fundamentals [[130], [-961], [-3]]
  c_84_12_0_False_resize <= resize(c_12, 26);
  c_84_12_0_False_shift <= shift_left(c_84_12_0_False_resize, 0);
  c_84_8_0_False_resize <= c_8;
  c_84_8_0_False_shift <= shift_left(c_84_8_0_False_resize, 0);
  with config_select_5 select c_84_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_84_sel is
        when "0" => c_84 <= c_84_12_0_False_shift;
        when others => c_84 <= c_84_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 85 and associated fundamentals [[1081], [768], [568]]
  c_85_62_8_False_resize <= resize(c_62, 27);
  c_85_62_8_False_shift <= shift_left(c_85_62_8_False_resize, 8);
  c_85_76_0_False_resize <= c_76;
  c_85_76_0_False_shift <= shift_left(c_85_76_0_False_resize, 0);
  c_85_76_3_False_resize <= c_76;
  c_85_76_3_False_shift <= shift_left(c_85_76_3_False_resize, 3);
  with config_select_13 select c_85_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_85_sel is
        when "00" => c_85 <= c_85_62_8_False_shift;
        when "01" => c_85 <= c_85_76_0_False_shift;
        when others => c_85 <= c_85_76_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 86 and associated fundamentals [[130], [-961], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_84 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 87 and associated fundamentals [[130], [-961], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_86 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 88 and associated fundamentals [[130], [-961], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_87 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 89 and associated fundamentals [[130], [-961], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_88 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 90 and associated fundamentals [[130], [-961], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_89 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 91 and associated fundamentals [[130], [-961], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_90 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 92 and associated fundamentals [[130], [-961], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 93 and associated fundamentals [[130], [-961], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_92 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 94 and associated fundamentals [[-951], [-193], [565]]
  with config_select_14 select c_94_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_94: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_94_sub_sel,
      x_i => c_93,
      y_i => c_85,
      z_o => c_94_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_94_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 95 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 96 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_95 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 97 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_96 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 98 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_97 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 99 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_98 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 100 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_99 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 101 and associated fundamentals [[41], [499], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 102 and associated fundamentals [[41], [499], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_101 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 103 and associated fundamentals [[41], [499], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_102 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 104 and associated fundamentals [[41], [499], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_103 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 105 and associated fundamentals [[41], [499], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_104 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 106 and associated fundamentals [[41], [499], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_105 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 107 and associated fundamentals [[-922], [128], [480]]
  c_107_100_7_False_resize <= resize(c_100, 26);
  c_107_100_7_False_shift <= shift_left(c_107_100_7_False_resize, 7);
  c_107_106_0_False_resize <= resize(c_106, 26);
  c_107_106_0_False_shift <= shift_left(c_107_106_0_False_resize, 0);
  c_107_83_1_False_resize <= resize(c_83, 26);
  c_107_83_1_False_shift <= shift_left(c_107_83_1_False_resize, 1);
  with config_select_15 select c_107_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_107_sel is
        when "00" => c_107 <= c_107_100_7_False_shift;
        when "01" => c_107 <= c_107_106_0_False_shift;
        when others => c_107 <= c_107_83_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 108 and associated fundamentals [[164], [998], [1]]
  c_108_28_1_False_resize <= resize(c_28, 26);
  c_108_28_1_False_shift <= shift_left(c_108_28_1_False_resize, 1);
  c_108_35_0_False_resize <= resize(c_35, 26);
  c_108_35_0_False_shift <= shift_left(c_108_35_0_False_resize, 0);
  c_108_28_2_False_resize <= resize(c_28, 26);
  c_108_28_2_False_shift <= shift_left(c_108_28_2_False_resize, 2);
  with config_select_9 select c_108_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_108_sel is
        when "00" => c_108 <= c_108_28_1_False_shift;
        when "01" => c_108 <= c_108_35_0_False_shift;
        when others => c_108 <= c_108_28_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 109 and associated fundamentals [[164], [998], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_109 <= c_108 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 110 and associated fundamentals [[164], [998], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_110 <= c_109 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 111 and associated fundamentals [[164], [998], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_110 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 112 and associated fundamentals [[164], [998], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_111 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 113 and associated fundamentals [[164], [998], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_112 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 114 and associated fundamentals [[164], [998], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_113 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 16 with id 115 and associated fundamentals [[-758], [-870], [479]]
  with config_select_16 select c_115_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_115: entity work.adder_node
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
      sub_i => c_115_sub_sel,
      x_i => c_107,
      y_i => c_114,
      z_o => c_115_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_115_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 116 and associated fundamentals [[41], [499], [-780]]
  c_116_106_0_False_resize <= resize(c_106, 26);
  c_116_106_0_False_shift <= shift_left(c_116_106_0_False_resize, 0);
  c_116_67_2_False_resize <= c_67;
  c_116_67_2_False_shift <= shift_left(c_116_67_2_False_resize, 2);
  with config_select_15 select c_116_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_116_sel is
        when "0" => c_116 <= c_116_106_0_False_shift;
        when others => c_116 <= c_116_67_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 117 and associated fundamentals [[-39], [3], [-89]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_117 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 118 and associated fundamentals [[-39], [3], [-89]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_118 <= c_117 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 119 and associated fundamentals [[256], [24], [565]]
  c_119_118_3_False_resize <= resize(c_118, 26);
  c_119_118_3_False_shift <= shift_left(c_119_118_3_False_resize, 3);
  c_119_94_0_False_resize <= c_94;
  c_119_94_0_False_shift <= shift_left(c_119_94_0_False_resize, 0);
  c_119_100_8_False_resize <= resize(c_100, 26);
  c_119_100_8_False_shift <= shift_left(c_119_100_8_False_resize, 8);
  with config_select_15 select c_119_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_119_sel is
        when "00" => c_119 <= c_119_118_3_False_shift;
        when "01" => c_119 <= c_119_94_0_False_shift;
        when others => c_119 <= c_119_100_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 16 with id 120 and associated fundamentals [[-215], [475], [-215]]
  with config_select_16 select c_120_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_120: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 26,
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
      sub_i => c_120_sub_sel,
      x_i => c_116,
      y_i => c_119,
      z_o => c_120_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_120 <= c_120_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 121 and associated fundamentals [[-39], [3], [-89]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_121 <= c_118 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 122 and associated fundamentals [[-39], [3], [-89]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_122 <= c_121 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 123 and associated fundamentals [[-951], [-193], [565]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_123 <= c_94 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 124 and associated fundamentals [[-951], [-193], [565]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_124 <= c_123 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 125 and associated fundamentals [[-215], [-193], [-712]]
  c_125_120_0_False_resize <= resize(c_120, 26);
  c_125_120_0_False_shift <= shift_left(c_125_120_0_False_resize, 0);
  c_125_122_3_False_resize <= resize(c_122, 26);
  c_125_122_3_False_shift <= shift_left(c_125_122_3_False_resize, 3);
  c_125_124_0_False_resize <= c_124;
  c_125_124_0_False_shift <= shift_left(c_125_124_0_False_resize, 0);
  with config_select_17 select c_125_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_125_sel is
        when "00" => c_125 <= c_125_120_0_False_shift;
        when "01" => c_125 <= c_125_122_3_False_shift;
        when others => c_125 <= c_125_124_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 126 and associated fundamentals [[-834], [66], [-91]]
  c_126_67_0_False_resize <= c_67;
  c_126_67_0_False_shift <= shift_left(c_126_67_0_False_resize, 0);
  c_126_83_0_False_resize <= resize(c_83, 26);
  c_126_83_0_False_shift <= shift_left(c_126_83_0_False_resize, 0);
  with config_select_15 select c_126_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_126_sel is
        when "0" => c_126 <= c_126_67_0_False_shift;
        when others => c_126 <= c_126_83_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 127 and associated fundamentals [[-834], [66], [-91]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_127 <= c_126 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 128 and associated fundamentals [[-834], [66], [-91]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_128 <= c_127 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 18 with id 129 and associated fundamentals [[619], [-127], [-621]]
  with config_select_18 select c_129_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_129: entity work.adder_node
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
      sub_i => c_129_sub_sel,
      x_i => c_125,
      y_i => c_128,
      z_o => c_129_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_129 <= c_129_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 130 and associated fundamentals [[-7], [31], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_130 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 131 and associated fundamentals [[-7], [31], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_131 <= c_130 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 132 and associated fundamentals [[-7], [31], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_132 <= c_131 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 133 and associated fundamentals [[-7], [31], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_133 <= c_132 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 134 and associated fundamentals [[-7], [31], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_134 <= c_133 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 135 and associated fundamentals [[-7], [31], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_135 <= c_134 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 136 and associated fundamentals [[-834], [66], [-195]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_136 <= c_67 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 137 and associated fundamentals [[-834], [66], [-195]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_137 <= c_136 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 138 and associated fundamentals [[-834], [66], [-195]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_138 <= c_137 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 139 and associated fundamentals [[-834], [66], [-195]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_139 <= c_138 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 19 with id 140 and associated fundamentals [[-834], [-508], [-3]]
  c_140_135_0_False_resize <= resize(c_135, 26);
  c_140_135_0_False_shift <= shift_left(c_140_135_0_False_resize, 0);
  c_140_139_0_False_resize <= c_139;
  c_140_139_0_False_shift <= shift_left(c_140_139_0_False_resize, 0);
  c_140_129_2_False_resize <= c_129;
  c_140_129_2_False_shift <= shift_left(c_140_129_2_False_resize, 2);
  with config_select_19 select c_140_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_140_sel is
        when "00" => c_140 <= c_140_135_0_False_shift;
        when "01" => c_140 <= c_140_139_0_False_shift;
        when others => c_140 <= c_140_129_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 141 and associated fundamentals [[41], [499], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_141 <= c_106 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 142 and associated fundamentals [[41], [499], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_142 <= c_141 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 143 and associated fundamentals [[82], [24], [479]]
  c_143_122_3_False_resize <= resize(c_122, 25);
  c_143_122_3_False_shift <= shift_left(c_143_122_3_False_resize, 3);
  c_143_142_1_False_resize <= c_142;
  c_143_142_1_False_shift <= shift_left(c_143_142_1_False_resize, 1);
  c_143_115_0_False_resize <= c_115(24 downto 0);
  c_143_115_0_False_shift <= shift_left(c_143_115_0_False_resize, 0);
  with config_select_17 select c_143_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_143_sel is
        when "00" => c_143 <= c_143_122_3_False_shift;
        when "01" => c_143 <= c_143_142_1_False_shift;
        when others => c_143 <= c_143_115_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 144 and associated fundamentals [[82], [24], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_144 <= c_143 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 145 and associated fundamentals [[82], [24], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_145 <= c_144 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 20 with id 146 and associated fundamentals [[-998], [-556], [-961]]
  inst_adder_node_146: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
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
      x_i => c_140,
      y_i => c_145,
      z_o => c_146_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_146 <= c_146_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 147 and associated fundamentals [[-7], [1], [480]]
  c_147_35_0_False_resize <= resize(c_35, 25);
  c_147_35_0_False_shift <= shift_left(c_147_35_0_False_resize, 0);
  c_147_56_0_False_resize <= resize(c_56, 25);
  c_147_56_0_False_shift <= shift_left(c_147_56_0_False_resize, 0);
  c_147_28_0_False_resize <= c_28;
  c_147_28_0_False_shift <= shift_left(c_147_28_0_False_resize, 0);
  with config_select_9 select c_147_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_147_sel is
        when "00" => c_147 <= c_147_35_0_False_shift;
        when "01" => c_147 <= c_147_56_0_False_shift;
        when others => c_147 <= c_147_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 148 and associated fundamentals [[130], [-961], [-25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_148 <= c_81 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 149 and associated fundamentals [[130], [-961], [-25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_149 <= c_148 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 150 and associated fundamentals [[130], [-961], [-25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_150 <= c_149 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 151 and associated fundamentals [[130], [-961], [-25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_151 <= c_150 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 152 and associated fundamentals [[130], [-961], [-25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_152 <= c_151 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 153 and associated fundamentals [[130], [-961], [-25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_153 <= c_152 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 154 and associated fundamentals [[-215], [475], [-215]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_154 <= c_120 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 155 and associated fundamentals [[-215], [475], [-215]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_155 <= c_154 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 19 with id 156 and associated fundamentals [[-860], [-127], [-25]]
  c_156_153_0_False_resize <= c_153;
  c_156_153_0_False_shift <= shift_left(c_156_153_0_False_resize, 0);
  c_156_129_0_False_resize <= c_129;
  c_156_129_0_False_shift <= shift_left(c_156_129_0_False_resize, 0);
  c_156_155_2_False_resize <= resize(c_155, 26);
  c_156_155_2_False_shift <= shift_left(c_156_155_2_False_resize, 2);
  with config_select_19 select c_156_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_156_sel is
        when "00" => c_156 <= c_156_153_0_False_shift;
        when "01" => c_156 <= c_156_129_0_False_shift;
        when others => c_156 <= c_156_155_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 157 and associated fundamentals [[-7], [1], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_157 <= c_147 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 158 and associated fundamentals [[-7], [1], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_158 <= c_157 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 159 and associated fundamentals [[-7], [1], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_159 <= c_158 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 160 and associated fundamentals [[-7], [1], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_160 <= c_159 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 161 and associated fundamentals [[-7], [1], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_161 <= c_160 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 162 and associated fundamentals [[-7], [1], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_162 <= c_161 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 163 and associated fundamentals [[-7], [1], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_163 <= c_162 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 164 and associated fundamentals [[-7], [1], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_164 <= c_163 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 165 and associated fundamentals [[-7], [1], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_165 <= c_164 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 166 and associated fundamentals [[-7], [1], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_166 <= c_165 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 20 with id 167 and associated fundamentals [[853], [-126], [505]]
  with config_select_20 select c_167_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_167: entity work.adder_node
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
      sub_i => c_167_sub_sel,
      x_i => c_166,
      y_i => c_156,
      z_o => c_167_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_167 <= c_167_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 168 and associated fundamentals [[260], [950], [479]]
  c_168_120_1_False_resize <= resize(c_120, 26);
  c_168_120_1_False_shift <= shift_left(c_168_120_1_False_resize, 1);
  c_168_151_1_False_resize <= c_151;
  c_168_151_1_False_shift <= shift_left(c_168_151_1_False_resize, 1);
  c_168_115_0_False_resize <= c_115;
  c_168_115_0_False_shift <= shift_left(c_168_115_0_False_resize, 0);
  with config_select_17 select c_168_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_168_sel is
        when "00" => c_168 <= c_168_120_1_False_shift;
        when "01" => c_168 <= c_168_151_1_False_shift;
        when others => c_168 <= c_168_115_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 169 and associated fundamentals [[-39], [-572], [-356]]
  c_169_62_0_False_resize <= resize(c_62, 26);
  c_169_62_0_False_shift <= shift_left(c_169_62_0_False_resize, 0);
  c_169_76_2_False_resize <= c_76(25 downto 0);
  c_169_76_2_False_shift <= shift_left(c_169_76_2_False_resize, 2);
  c_169_62_2_False_resize <= resize(c_62, 26);
  c_169_62_2_False_shift <= shift_left(c_169_62_2_False_resize, 2);
  with config_select_13 select c_169_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_169_sel is
        when "00" => c_169 <= c_169_62_0_False_shift;
        when "01" => c_169 <= c_169_76_2_False_shift;
        when others => c_169 <= c_169_62_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 170 and associated fundamentals [[-461], [73], [-91]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_170 <= c_83 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 171 and associated fundamentals [[-461], [73], [-91]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_171 <= c_170 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 172 and associated fundamentals [[-461], [73], [-91]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_172 <= c_171 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 173 and associated fundamentals [[-461], [73], [-91]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_173 <= c_172 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 174 and associated fundamentals [[-461], [73], [-91]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_174 <= c_173 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 175 and associated fundamentals [[-461], [73], [-91]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_175 <= c_174 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 176 and associated fundamentals [[-951], [-193], [565]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_176 <= c_124 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 177 and associated fundamentals [[-951], [-193], [565]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_177 <= c_176 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 178 and associated fundamentals [[-951], [-193], [565]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_178 <= c_177 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 179 and associated fundamentals [[-951], [-193], [565]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_179 <= c_178 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 21 with id 180 and associated fundamentals [[853], [146], [565]]
  c_180_179_0_False_resize <= c_179;
  c_180_179_0_False_shift <= shift_left(c_180_179_0_False_resize, 0);
  c_180_175_1_False_resize <= resize(c_175, 26);
  c_180_175_1_False_shift <= shift_left(c_180_175_1_False_resize, 1);
  c_180_167_0_False_resize <= c_167;
  c_180_167_0_False_shift <= shift_left(c_180_167_0_False_resize, 0);
  with config_select_21 select c_180_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_180_sel is
        when "00" => c_180 <= c_180_179_0_False_shift;
        when "01" => c_180 <= c_180_175_1_False_shift;
        when others => c_180 <= c_180_167_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 181 and associated fundamentals [[-792], [-9], [-259]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_181 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 182 and associated fundamentals [[-792], [-9], [-259]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_182 <= c_181 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 183 and associated fundamentals [[-792], [-9], [-259]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_183 <= c_182 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 184 and associated fundamentals [[-792], [-9], [-259]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_184 <= c_183 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 185 and associated fundamentals [[-792], [-9], [-259]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_185 <= c_184 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 186 and associated fundamentals [[-792], [-9], [-259]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_186 <= c_185 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 187 and associated fundamentals [[-792], [-9], [-259]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_187 <= c_186 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 188 and associated fundamentals [[-792], [-9], [-259]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_188 <= c_187 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 21 with id 189 and associated fundamentals [[-998], [-193], [-259]]
  c_189_179_0_False_resize <= c_179;
  c_189_179_0_False_shift <= shift_left(c_189_179_0_False_resize, 0);
  c_189_146_0_False_resize <= c_146;
  c_189_146_0_False_shift <= shift_left(c_189_146_0_False_resize, 0);
  c_189_188_0_False_resize <= c_188;
  c_189_188_0_False_shift <= shift_left(c_189_188_0_False_resize, 0);
  with config_select_21 select c_189_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_189_sel is
        when "00" => c_189 <= c_189_179_0_False_shift;
        when "01" => c_189 <= c_189_146_0_False_shift;
        when others => c_189 <= c_189_188_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 190 and associated fundamentals [[-53], [-266], [-91]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_190 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 191 and associated fundamentals [[-53], [-266], [-91]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_191 <= c_190 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 192 and associated fundamentals [[-53], [-266], [-91]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_192 <= c_191 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 193 and associated fundamentals [[-53], [-266], [-91]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_193 <= c_192 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 194 and associated fundamentals [[-53], [-266], [-91]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_194 <= c_193 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 195 and associated fundamentals [[-53], [-266], [-91]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_195 <= c_194 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 196 and associated fundamentals [[-53], [-266], [-91]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_196 <= c_195 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 197 and associated fundamentals [[-53], [-266], [-91]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_197 <= c_196 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 198 and associated fundamentals [[619], [-127], [-621]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_198 <= c_129 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 199 and associated fundamentals [[619], [-127], [-621]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_199 <= c_198 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 21 with id 200 and associated fundamentals [[-106], [-1016], [-961]]
  c_200_146_0_False_resize <= c_146;
  c_200_146_0_False_shift <= shift_left(c_200_146_0_False_resize, 0);
  c_200_199_3_False_resize <= c_199;
  c_200_199_3_False_shift <= shift_left(c_200_199_3_False_resize, 3);
  c_200_197_1_False_resize <= resize(c_197, 26);
  c_200_197_1_False_shift <= shift_left(c_200_197_1_False_resize, 1);
  with config_select_21 select c_200_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_200_sel is
        when "00" => c_200 <= c_200_146_0_False_shift;
        when "01" => c_200 <= c_200_199_3_False_shift;
        when others => c_200 <= c_200_197_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 201 and associated fundamentals [[-860], [-266], [-430]]
  c_201_120_1_False_resize <= resize(c_120, 26);
  c_201_120_1_False_shift <= shift_left(c_201_120_1_False_resize, 1);
  c_201_193_0_False_resize <= resize(c_193, 26);
  c_201_193_0_False_shift <= shift_left(c_201_193_0_False_resize, 0);
  c_201_120_2_False_resize <= resize(c_120, 26);
  c_201_120_2_False_shift <= shift_left(c_201_120_2_False_resize, 2);
  with config_select_17 select c_201_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_201_sel is
        when "00" => c_201 <= c_201_120_1_False_shift;
        when "01" => c_201 <= c_201_193_0_False_shift;
        when others => c_201 <= c_201_120_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 202 and associated fundamentals [[41], [499], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_202 <= c_142 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 203 and associated fundamentals [[41], [499], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_203 <= c_202 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 204 and associated fundamentals [[41], [499], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_204 <= c_203 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 205 and associated fundamentals [[41], [499], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_205 <= c_204 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 21 with id 206 and associated fundamentals [[619], [499], [1010]]
  c_206_167_1_False_resize <= c_167;
  c_206_167_1_False_shift <= shift_left(c_206_167_1_False_resize, 1);
  c_206_199_0_False_resize <= c_199;
  c_206_199_0_False_shift <= shift_left(c_206_199_0_False_resize, 0);
  c_206_205_0_False_resize <= resize(c_205, 26);
  c_206_205_0_False_shift <= shift_left(c_206_205_0_False_resize, 0);
  with config_select_21 select c_206_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_206_sel is
        when "00" => c_206 <= c_206_167_1_False_shift;
        when "01" => c_206 <= c_206_199_0_False_shift;
        when others => c_206 <= c_206_205_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 207 and associated fundamentals [[-951], [-870], [-780]]
  c_207_124_0_False_resize <= c_124;
  c_207_124_0_False_shift <= shift_left(c_207_124_0_False_resize, 0);
  c_207_137_2_False_resize <= c_137;
  c_207_137_2_False_shift <= shift_left(c_207_137_2_False_resize, 2);
  c_207_115_0_False_resize <= c_115;
  c_207_115_0_False_shift <= shift_left(c_207_115_0_False_resize, 0);
  with config_select_17 select c_207_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_207_sel is
        when "00" => c_207 <= c_207_124_0_False_shift;
        when "01" => c_207 <= c_207_137_2_False_shift;
        when others => c_207 <= c_207_115_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 208 and associated fundamentals [[-758], [-870], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_208 <= c_115 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 209 and associated fundamentals [[-758], [-870], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_209 <= c_208 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 210 and associated fundamentals [[-758], [-870], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_210 <= c_209 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 211 and associated fundamentals [[-758], [-870], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_211 <= c_210 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 21 with id 212 and associated fundamentals [[-758], [-504], [-364]]
  c_212_175_2_False_resize <= resize(c_175, 26);
  c_212_175_2_False_shift <= shift_left(c_212_175_2_False_resize, 2);
  c_212_167_2_False_resize <= c_167;
  c_212_167_2_False_shift <= shift_left(c_212_167_2_False_resize, 2);
  c_212_211_0_False_resize <= c_211;
  c_212_211_0_False_shift <= shift_left(c_212_211_0_False_resize, 0);
  with config_select_21 select c_212_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_212_sel is
        when "00" => c_212 <= c_212_175_2_False_shift;
        when "01" => c_212 <= c_212_167_2_False_shift;
        when others => c_212 <= c_212_211_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 21 with id 213 and associated fundamentals [[-461], [-556], [-621]]
  c_213_199_0_False_resize <= c_199;
  c_213_199_0_False_shift <= shift_left(c_213_199_0_False_resize, 0);
  c_213_146_0_False_resize <= c_146;
  c_213_146_0_False_shift <= shift_left(c_213_146_0_False_resize, 0);
  c_213_175_0_False_resize <= resize(c_175, 26);
  c_213_175_0_False_shift <= shift_left(c_213_175_0_False_resize, 0);
  with config_select_21 select c_213_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_213_sel is
        when "00" => c_213 <= c_213_199_0_False_shift;
        when "01" => c_213 <= c_213_146_0_False_shift;
        when others => c_213 <= c_213_175_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 214 and associated fundamentals [[260], [950], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_214 <= c_168 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 215 and associated fundamentals [[260], [950], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_215 <= c_214 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 216 and associated fundamentals [[260], [950], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_216 <= c_215 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 217 and associated fundamentals [[260], [950], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_217 <= c_216 & "";
    end if;
  end process;
  -- node of type 'output' in stage 21 with id 218 and associated fundamentals [[260], [950], [479]]
  c_218_resize <= c_217;
  c_218 <= shift_left(c_218_resize, 0);
  -- node of type 'register' in stage 14 with id 219 and associated fundamentals [[-39], [-572], [-356]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_219 <= c_169 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 220 and associated fundamentals [[-39], [-572], [-356]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_220 <= c_219 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 221 and associated fundamentals [[-39], [-572], [-356]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_221 <= c_220 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 222 and associated fundamentals [[-39], [-572], [-356]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_222 <= c_221 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 223 and associated fundamentals [[-39], [-572], [-356]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_223 <= c_222 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 224 and associated fundamentals [[-39], [-572], [-356]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_224 <= c_223 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 225 and associated fundamentals [[-39], [-572], [-356]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_225 <= c_224 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 226 and associated fundamentals [[-39], [-572], [-356]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_226 <= c_225 & "";
    end if;
  end process;
  -- node of type 'output' in stage 21 with id 227 and associated fundamentals [[39], [572], [356]]
  c_227_resize <= c_226;
  c_227 <= -shift_left(c_227_resize, 0);
  -- node of type 'output' in stage 21 with id 228 and associated fundamentals [[853], [146], [565]]
  c_228_resize <= c_180;
  c_228 <= shift_left(c_228_resize, 0);
  -- node of type 'output' in stage 21 with id 229 and associated fundamentals [[998], [193], [259]]
  c_229_resize <= c_189;
  c_229 <= -shift_left(c_229_resize, 0);
  -- node of type 'output' in stage 21 with id 230 and associated fundamentals [[106], [1016], [961]]
  c_230_resize <= c_200;
  c_230 <= -shift_left(c_230_resize, 0);
  -- node of type 'register' in stage 18 with id 231 and associated fundamentals [[-860], [-266], [-430]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_231 <= c_201 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 232 and associated fundamentals [[-860], [-266], [-430]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_232 <= c_231 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 233 and associated fundamentals [[-860], [-266], [-430]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_233 <= c_232 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 234 and associated fundamentals [[-860], [-266], [-430]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_234 <= c_233 & "";
    end if;
  end process;
  -- node of type 'output' in stage 21 with id 235 and associated fundamentals [[860], [266], [430]]
  c_235_resize <= c_234;
  c_235 <= -shift_left(c_235_resize, 0);
  -- node of type 'output' in stage 21 with id 236 and associated fundamentals [[619], [499], [1010]]
  c_236_resize <= c_206;
  c_236 <= shift_left(c_236_resize, 0);
  -- node of type 'register' in stage 18 with id 237 and associated fundamentals [[-951], [-870], [-780]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_237 <= c_207 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 238 and associated fundamentals [[-951], [-870], [-780]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_238 <= c_237 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 239 and associated fundamentals [[-951], [-870], [-780]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_239 <= c_238 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 240 and associated fundamentals [[-951], [-870], [-780]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_240 <= c_239 & "";
    end if;
  end process;
  -- node of type 'output' in stage 21 with id 241 and associated fundamentals [[951], [870], [780]]
  c_241_resize <= c_240;
  c_241 <= -shift_left(c_241_resize, 0);
  -- node of type 'output' in stage 21 with id 242 and associated fundamentals [[758], [504], [364]]
  c_242_resize <= c_212;
  c_242 <= -shift_left(c_242_resize, 0);
  -- node of type 'output' in stage 21 with id 243 and associated fundamentals [[461], [556], [621]]
  c_243_resize <= c_213;
  c_243 <= -shift_left(c_243_resize, 0);
end architecture;
