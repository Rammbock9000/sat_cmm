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
  signal c_1: signed(20 downto 0);
  signal c_1_0_0_False_resize: signed(20 downto 0);
  signal c_1_0_0_False_shift: signed(20 downto 0);
  signal c_1_0_2_False_resize: signed(20 downto 0);
  signal c_1_0_2_False_shift: signed(20 downto 0);
  signal c_1_0_5_False_resize: signed(20 downto 0);
  signal c_1_0_5_False_shift: signed(20 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(19 downto 0);
  signal c_2_0_0_False_resize: signed(19 downto 0);
  signal c_2_0_0_False_shift: signed(19 downto 0);
  signal c_2_0_4_False_resize: signed(19 downto 0);
  signal c_2_0_4_False_shift: signed(19 downto 0);
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
  signal c_6: signed(19 downto 0);
  signal c_6_5_2_False_resize: signed(19 downto 0);
  signal c_6_5_2_False_shift: signed(19 downto 0);
  signal c_6_5_4_False_resize: signed(19 downto 0);
  signal c_6_5_4_False_shift: signed(19 downto 0);
  signal c_6_3_0_False_resize: signed(19 downto 0);
  signal c_6_3_0_False_shift: signed(19 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(18 downto 0);
  signal c_7_3_0_False_resize: signed(18 downto 0);
  signal c_7_3_0_False_shift: signed(18 downto 0);
  signal c_7_5_3_False_resize: signed(18 downto 0);
  signal c_7_5_3_False_shift: signed(18 downto 0);
  signal c_7_5_0_False_resize: signed(18 downto 0);
  signal c_7_5_0_False_shift: signed(18 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(21 downto 0);
  signal c_8_i0_resize: signed(21 downto 0);
  signal c_8_i1_resize: signed(21 downto 0);
  signal c_8_i0_shift: signed(21 downto 0);
  signal c_8_i1_shift: signed(21 downto 0);
  signal c_8_arith: signed(21 downto 0);
  signal c_8_oshift: signed(21 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(23 downto 0);
  signal c_9_5_6_False_resize: signed(23 downto 0);
  signal c_9_5_6_False_shift: signed(23 downto 0);
  signal c_9_5_8_False_resize: signed(23 downto 0);
  signal c_9_5_8_False_shift: signed(23 downto 0);
  signal c_9_3_0_False_resize: signed(23 downto 0);
  signal c_9_3_0_False_shift: signed(23 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(19 downto 0);
  signal c_10_0_4_False_resize: signed(19 downto 0);
  signal c_10_0_4_False_shift: signed(19 downto 0);
  signal c_10_0_0_False_resize: signed(19 downto 0);
  signal c_10_0_0_False_shift: signed(19 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(19 downto 0);
  signal c_12: signed(19 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(15 downto 0);
  signal c_15: signed(15 downto 0);
  signal c_16: signed(21 downto 0);
  signal c_17: signed(21 downto 0);
  signal c_18: signed(22 downto 0);
  signal c_18_17_1_False_resize: signed(22 downto 0);
  signal c_18_17_1_False_shift: signed(22 downto 0);
  signal c_18_15_7_False_resize: signed(22 downto 0);
  signal c_18_15_7_False_shift: signed(22 downto 0);
  signal c_18_13_0_False_resize: signed(22 downto 0);
  signal c_18_13_0_False_shift: signed(22 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(20 downto 0);
  signal c_19_0_0_False_resize: signed(20 downto 0);
  signal c_19_0_0_False_shift: signed(20 downto 0);
  signal c_19_0_5_False_resize: signed(20 downto 0);
  signal c_19_0_5_False_shift: signed(20 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(20 downto 0);
  signal c_21: signed(20 downto 0);
  signal c_22: signed(20 downto 0);
  signal c_23: signed(20 downto 0);
  signal c_24: signed(22 downto 0);
  signal c_24_i0_resize: signed(22 downto 0);
  signal c_24_i1_resize: signed(22 downto 0);
  signal c_24_i0_shift: signed(22 downto 0);
  signal c_24_i1_shift: signed(22 downto 0);
  signal c_24_arith: signed(22 downto 0);
  signal c_24_oshift: signed(22 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(21 downto 0);
  signal c_26: signed(21 downto 0);
  signal c_27: signed(22 downto 0);
  signal c_27_26_2_False_resize: signed(22 downto 0);
  signal c_27_26_2_False_shift: signed(22 downto 0);
  signal c_27_26_0_False_resize: signed(22 downto 0);
  signal c_27_26_0_False_shift: signed(22 downto 0);
  signal c_27_24_0_False_resize: signed(22 downto 0);
  signal c_27_24_0_False_shift: signed(22 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_28_17_2_False_resize: signed(22 downto 0);
  signal c_28_17_2_False_shift: signed(22 downto 0);
  signal c_28_13_0_False_resize: signed(22 downto 0);
  signal c_28_13_0_False_shift: signed(22 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_30: signed(22 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_i0_resize: signed(23 downto 0);
  signal c_31_i1_resize: signed(23 downto 0);
  signal c_31_i0_shift: signed(23 downto 0);
  signal c_31_i1_shift: signed(23 downto 0);
  signal c_31_arith: signed(23 downto 0);
  signal c_31_oshift: signed(23 downto 0);
  signal c_31_sub_sel: std_logic;
  signal c_32: signed(22 downto 0);
  signal c_32_5_7_False_resize: signed(22 downto 0);
  signal c_32_5_7_False_shift: signed(22 downto 0);
  signal c_32_5_2_False_resize: signed(22 downto 0);
  signal c_32_5_2_False_shift: signed(22 downto 0);
  signal c_32_5_0_False_resize: signed(22 downto 0);
  signal c_32_5_0_False_shift: signed(22 downto 0);
  signal c_32_3_1_False_resize: signed(22 downto 0);
  signal c_32_3_1_False_shift: signed(22 downto 0);
  signal c_32_sel: std_logic_vector(1 downto 0);
  signal c_33: signed(22 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_i0_resize: signed(23 downto 0);
  signal c_34_i1_resize: signed(23 downto 0);
  signal c_34_i0_shift: signed(23 downto 0);
  signal c_34_i1_shift: signed(23 downto 0);
  signal c_34_arith: signed(23 downto 0);
  signal c_34_oshift: signed(23 downto 0);
  signal c_34_sub_sel: std_logic;
  signal c_35: signed(22 downto 0);
  signal c_35_24_1_False_resize: signed(22 downto 0);
  signal c_35_24_1_False_shift: signed(22 downto 0);
  signal c_35_24_0_False_resize: signed(22 downto 0);
  signal c_35_24_0_False_shift: signed(22 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(21 downto 0);
  signal c_36_8_0_False_resize: signed(21 downto 0);
  signal c_36_8_0_False_shift: signed(21 downto 0);
  signal c_36_15_3_False_resize: signed(21 downto 0);
  signal c_36_15_3_False_shift: signed(21 downto 0);
  signal c_36_17_0_False_resize: signed(21 downto 0);
  signal c_36_17_0_False_shift: signed(21 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(21 downto 0);
  signal c_38: signed(21 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_i0_resize: signed(23 downto 0);
  signal c_39_i1_resize: signed(23 downto 0);
  signal c_39_i0_shift: signed(23 downto 0);
  signal c_39_i1_shift: signed(23 downto 0);
  signal c_39_arith: signed(23 downto 0);
  signal c_39_oshift: signed(23 downto 0);
  signal c_40: signed(21 downto 0);
  signal c_41: signed(21 downto 0);
  signal c_42: signed(21 downto 0);
  signal c_43: signed(21 downto 0);
  signal c_44: signed(21 downto 0);
  signal c_45: signed(21 downto 0);
  signal c_46: signed(22 downto 0);
  signal c_46_43_0_False_resize: signed(22 downto 0);
  signal c_46_43_0_False_shift: signed(22 downto 0);
  signal c_46_39_1_False_resize: signed(22 downto 0);
  signal c_46_39_1_False_shift: signed(22 downto 0);
  signal c_46_45_0_False_resize: signed(22 downto 0);
  signal c_46_45_0_False_shift: signed(22 downto 0);
  signal c_46_sel: std_logic_vector(1 downto 0);
  signal c_47: signed(22 downto 0);
  signal c_48: signed(22 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_49_45_0_False_resize: signed(23 downto 0);
  signal c_49_45_0_False_shift: signed(23 downto 0);
  signal c_49_31_0_False_resize: signed(23 downto 0);
  signal c_49_31_0_False_shift: signed(23 downto 0);
  signal c_49_48_2_False_resize: signed(23 downto 0);
  signal c_49_48_2_False_shift: signed(23 downto 0);
  signal c_49_43_0_False_resize: signed(23 downto 0);
  signal c_49_43_0_False_shift: signed(23 downto 0);
  signal c_49_sel: std_logic_vector(1 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_50_i0_resize: signed(23 downto 0);
  signal c_50_i1_resize: signed(23 downto 0);
  signal c_50_i0_shift: signed(23 downto 0);
  signal c_50_i1_shift: signed(23 downto 0);
  signal c_50_arith: signed(23 downto 0);
  signal c_50_oshift: signed(23 downto 0);
  signal c_50_sub_sel: std_logic;
  signal c_51: signed(22 downto 0);
  signal c_52: signed(22 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_55_50_0_False_resize: signed(23 downto 0);
  signal c_55_50_0_False_shift: signed(23 downto 0);
  signal c_55_52_0_False_resize: signed(23 downto 0);
  signal c_55_52_0_False_shift: signed(23 downto 0);
  signal c_55_54_0_False_resize: signed(23 downto 0);
  signal c_55_54_0_False_shift: signed(23 downto 0);
  signal c_55_sel: std_logic_vector(1 downto 0);
  signal c_56: signed(21 downto 0);
  signal c_56_17_0_False_resize: signed(21 downto 0);
  signal c_56_17_0_False_shift: signed(21 downto 0);
  signal c_56_13_0_False_resize: signed(21 downto 0);
  signal c_56_13_0_False_shift: signed(21 downto 0);
  signal c_56_15_4_False_resize: signed(21 downto 0);
  signal c_56_15_4_False_shift: signed(21 downto 0);
  signal c_56_15_2_False_resize: signed(21 downto 0);
  signal c_56_15_2_False_shift: signed(21 downto 0);
  signal c_56_sel: std_logic_vector(1 downto 0);
  signal c_57: signed(21 downto 0);
  signal c_58: signed(21 downto 0);
  signal c_59: signed(21 downto 0);
  signal c_60: signed(21 downto 0);
  signal c_61: signed(21 downto 0);
  signal c_62: signed(21 downto 0);
  signal c_63: signed(23 downto 0);
  signal c_63_i0_resize: signed(23 downto 0);
  signal c_63_i1_resize: signed(23 downto 0);
  signal c_63_i0_shift: signed(23 downto 0);
  signal c_63_i1_shift: signed(23 downto 0);
  signal c_63_arith: signed(23 downto 0);
  signal c_63_oshift: signed(23 downto 0);
  signal c_63_sub_sel: std_logic;
  signal c_64: signed(15 downto 0);
  signal c_65: signed(15 downto 0);
  signal c_66: signed(15 downto 0);
  signal c_67: signed(15 downto 0);
  signal c_68: signed(15 downto 0);
  signal c_69: signed(15 downto 0);
  signal c_70: signed(15 downto 0);
  signal c_71: signed(15 downto 0);
  signal c_72: signed(22 downto 0);
  signal c_72_63_0_False_resize: signed(22 downto 0);
  signal c_72_63_0_False_shift: signed(22 downto 0);
  signal c_72_63_1_False_resize: signed(22 downto 0);
  signal c_72_63_1_False_shift: signed(22 downto 0);
  signal c_72_71_3_False_resize: signed(22 downto 0);
  signal c_72_71_3_False_shift: signed(22 downto 0);
  signal c_72_sel: std_logic_vector(1 downto 0);
  signal c_73: signed(23 downto 0);
  signal c_73_64_0_False_resize: signed(23 downto 0);
  signal c_73_64_0_False_shift: signed(23 downto 0);
  signal c_73_34_0_False_resize: signed(23 downto 0);
  signal c_73_34_0_False_shift: signed(23 downto 0);
  signal c_73_sel: std_logic_vector(0 downto 0);
  signal c_74: signed(23 downto 0);
  signal c_75: signed(23 downto 0);
  signal c_76: signed(23 downto 0);
  signal c_77: signed(23 downto 0);
  signal c_78: signed(23 downto 0);
  signal c_79: signed(23 downto 0);
  signal c_80: signed(23 downto 0);
  signal c_81: signed(23 downto 0);
  signal c_81_i0_resize: signed(23 downto 0);
  signal c_81_i1_resize: signed(23 downto 0);
  signal c_81_i0_shift: signed(23 downto 0);
  signal c_81_i1_shift: signed(23 downto 0);
  signal c_81_arith: signed(23 downto 0);
  signal c_81_oshift: signed(23 downto 0);
  signal c_81_sub_sel: std_logic;
  signal c_82: signed(15 downto 0);
  signal c_83: signed(15 downto 0);
  signal c_84: signed(23 downto 0);
  signal c_85: signed(23 downto 0);
  signal c_86: signed(23 downto 0);
  signal c_87: signed(23 downto 0);
  signal c_88: signed(23 downto 0);
  signal c_89: signed(23 downto 0);
  signal c_90: signed(23 downto 0);
  signal c_90_81_0_False_resize: signed(23 downto 0);
  signal c_90_81_0_False_shift: signed(23 downto 0);
  signal c_90_89_1_False_resize: signed(23 downto 0);
  signal c_90_89_1_False_shift: signed(23 downto 0);
  signal c_90_83_2_False_resize: signed(23 downto 0);
  signal c_90_83_2_False_shift: signed(23 downto 0);
  signal c_90_sel: std_logic_vector(1 downto 0);
  signal c_91: signed(21 downto 0);
  signal c_92: signed(21 downto 0);
  signal c_93: signed(21 downto 0);
  signal c_94: signed(21 downto 0);
  signal c_95: signed(23 downto 0);
  signal c_95_63_0_False_resize: signed(23 downto 0);
  signal c_95_63_0_False_shift: signed(23 downto 0);
  signal c_95_94_0_False_resize: signed(23 downto 0);
  signal c_95_94_0_False_shift: signed(23 downto 0);
  signal c_95_sel: std_logic_vector(0 downto 0);
  signal c_96: signed(23 downto 0);
  signal c_97: signed(23 downto 0);
  signal c_98: signed(23 downto 0);
  signal c_98_i0_resize: signed(23 downto 0);
  signal c_98_i1_resize: signed(23 downto 0);
  signal c_98_i0_shift: signed(23 downto 0);
  signal c_98_i1_shift: signed(23 downto 0);
  signal c_98_arith: signed(23 downto 0);
  signal c_98_oshift: signed(23 downto 0);
  signal c_98_sub_sel: std_logic;
  signal c_99: signed(23 downto 0);
  signal c_100: signed(23 downto 0);
  signal c_100_25_0_False_resize: signed(23 downto 0);
  signal c_100_25_0_False_shift: signed(23 downto 0);
  signal c_100_40_1_False_resize: signed(23 downto 0);
  signal c_100_40_1_False_shift: signed(23 downto 0);
  signal c_100_99_1_False_resize: signed(23 downto 0);
  signal c_100_99_1_False_shift: signed(23 downto 0);
  signal c_100_34_0_False_resize: signed(23 downto 0);
  signal c_100_34_0_False_shift: signed(23 downto 0);
  signal c_100_sel: std_logic_vector(1 downto 0);
  signal c_101: signed(22 downto 0);
  signal c_102: signed(22 downto 0);
  signal c_103: signed(22 downto 0);
  signal c_104: signed(22 downto 0);
  signal c_105: signed(23 downto 0);
  signal c_105_81_0_False_resize: signed(23 downto 0);
  signal c_105_81_0_False_shift: signed(23 downto 0);
  signal c_105_104_1_False_resize: signed(23 downto 0);
  signal c_105_104_1_False_shift: signed(23 downto 0);
  signal c_105_104_2_False_resize: signed(23 downto 0);
  signal c_105_104_2_False_shift: signed(23 downto 0);
  signal c_105_sel: std_logic_vector(1 downto 0);
  signal c_106: signed(21 downto 0);
  signal c_107: signed(21 downto 0);
  signal c_108: signed(21 downto 0);
  signal c_109: signed(21 downto 0);
  signal c_110: signed(21 downto 0);
  signal c_111: signed(21 downto 0);
  signal c_112: signed(21 downto 0);
  signal c_113: signed(21 downto 0);
  signal c_114: signed(23 downto 0);
  signal c_115: signed(23 downto 0);
  signal c_116: signed(23 downto 0);
  signal c_117: signed(23 downto 0);
  signal c_118: signed(23 downto 0);
  signal c_118_117_0_False_resize: signed(23 downto 0);
  signal c_118_117_0_False_shift: signed(23 downto 0);
  signal c_118_81_0_False_resize: signed(23 downto 0);
  signal c_118_81_0_False_shift: signed(23 downto 0);
  signal c_118_113_2_False_resize: signed(23 downto 0);
  signal c_118_113_2_False_shift: signed(23 downto 0);
  signal c_118_111_3_False_resize: signed(23 downto 0);
  signal c_118_111_3_False_shift: signed(23 downto 0);
  signal c_118_sel: std_logic_vector(1 downto 0);
  signal c_119: signed(23 downto 0);
  signal c_120: signed(23 downto 0);
  signal c_121: signed(23 downto 0);
  signal c_122: signed(23 downto 0);
  signal c_123: signed(23 downto 0);
  signal c_124: signed(23 downto 0);
  signal c_124_85_0_False_resize: signed(23 downto 0);
  signal c_124_85_0_False_shift: signed(23 downto 0);
  signal c_124_50_0_False_resize: signed(23 downto 0);
  signal c_124_50_0_False_shift: signed(23 downto 0);
  signal c_124_54_0_False_resize: signed(23 downto 0);
  signal c_124_54_0_False_shift: signed(23 downto 0);
  signal c_124_123_0_False_resize: signed(23 downto 0);
  signal c_124_123_0_False_shift: signed(23 downto 0);
  signal c_124_sel: std_logic_vector(1 downto 0);
  signal c_125: signed(23 downto 0);
  signal c_126: signed(23 downto 0);
  signal c_126_41_1_False_resize: signed(23 downto 0);
  signal c_126_41_1_False_shift: signed(23 downto 0);
  signal c_126_24_1_False_resize: signed(23 downto 0);
  signal c_126_24_1_False_shift: signed(23 downto 0);
  signal c_126_125_2_False_resize: signed(23 downto 0);
  signal c_126_125_2_False_shift: signed(23 downto 0);
  signal c_126_41_0_False_resize: signed(23 downto 0);
  signal c_126_41_0_False_shift: signed(23 downto 0);
  signal c_126_sel: std_logic_vector(1 downto 0);
  signal c_127: signed(23 downto 0);
  signal c_128: signed(23 downto 0);
  signal c_129: signed(23 downto 0);
  signal c_130: signed(23 downto 0);
  signal c_131: signed(23 downto 0);
  signal c_132: signed(23 downto 0);
  signal c_133: signed(23 downto 0);
  signal c_134: signed(23 downto 0);
  signal c_135: signed(23 downto 0);
  signal c_135_98_0_False_resize: signed(23 downto 0);
  signal c_135_98_0_False_shift: signed(23 downto 0);
  signal c_135_134_0_False_resize: signed(23 downto 0);
  signal c_135_134_0_False_shift: signed(23 downto 0);
  signal c_135_132_0_False_resize: signed(23 downto 0);
  signal c_135_132_0_False_shift: signed(23 downto 0);
  signal c_135_sel: std_logic_vector(1 downto 0);
  signal c_136: signed(23 downto 0);
  signal c_137: signed(23 downto 0);
  signal c_138: signed(23 downto 0);
  signal c_139: signed(23 downto 0);
  signal c_140: signed(23 downto 0);
  signal c_141: signed(23 downto 0);
  signal c_142: signed(23 downto 0);
  signal c_143: signed(23 downto 0);
  signal c_144: signed(23 downto 0);
  signal c_145: signed(23 downto 0);
  signal c_146: signed(23 downto 0);
  signal c_146_98_0_False_resize: signed(23 downto 0);
  signal c_146_98_0_False_shift: signed(23 downto 0);
  signal c_146_145_0_False_resize: signed(23 downto 0);
  signal c_146_145_0_False_shift: signed(23 downto 0);
  signal c_146_sel: std_logic_vector(0 downto 0);
  signal c_147: signed(23 downto 0);
  signal c_147_39_1_False_resize: signed(23 downto 0);
  signal c_147_39_1_False_shift: signed(23 downto 0);
  signal c_147_31_0_False_resize: signed(23 downto 0);
  signal c_147_31_0_False_shift: signed(23 downto 0);
  signal c_147_39_0_False_resize: signed(23 downto 0);
  signal c_147_39_0_False_shift: signed(23 downto 0);
  signal c_147_sel: std_logic_vector(1 downto 0);
  signal c_148: signed(23 downto 0);
  signal c_148_48_0_False_resize: signed(23 downto 0);
  signal c_148_48_0_False_shift: signed(23 downto 0);
  signal c_148_121_2_False_resize: signed(23 downto 0);
  signal c_148_121_2_False_shift: signed(23 downto 0);
  signal c_148_31_0_False_resize: signed(23 downto 0);
  signal c_148_31_0_False_shift: signed(23 downto 0);
  signal c_148_sel: std_logic_vector(1 downto 0);
  signal c_149: signed(23 downto 0);
  signal c_150: signed(23 downto 0);
  signal c_151: signed(23 downto 0);
  signal c_152: signed(23 downto 0);
  signal c_153: signed(23 downto 0);
  signal c_154: signed(23 downto 0);
  signal c_155: signed(23 downto 0);
  signal c_156: signed(23 downto 0);
  signal c_157: signed(23 downto 0);
  signal c_158: signed(23 downto 0);
  signal c_159: signed(23 downto 0);
  signal c_160: signed(23 downto 0);
  signal c_160_resize: signed(23 downto 0);
  signal c_161: signed(23 downto 0);
  signal c_162: signed(23 downto 0);
  signal c_163: signed(23 downto 0);
  signal c_164: signed(23 downto 0);
  signal c_165: signed(23 downto 0);
  signal c_166: signed(23 downto 0);
  signal c_166_resize: signed(23 downto 0);
  signal c_167: signed(23 downto 0);
  signal c_168: signed(23 downto 0);
  signal c_169: signed(23 downto 0);
  signal c_169_resize: signed(23 downto 0);
  signal c_170: signed(23 downto 0);
  signal c_171: signed(23 downto 0);
  signal c_172: signed(23 downto 0);
  signal c_172_resize: signed(23 downto 0);
  signal c_173: signed(23 downto 0);
  signal c_174: signed(23 downto 0);
  signal c_175: signed(23 downto 0);
  signal c_176: signed(23 downto 0);
  signal c_177: signed(23 downto 0);
  signal c_178: signed(23 downto 0);
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
  signal c_189: signed(23 downto 0);
  signal c_190: signed(23 downto 0);
  signal c_190_resize: signed(23 downto 0);
  signal c_191: signed(23 downto 0);
  signal c_191_resize: signed(23 downto 0);
  signal c_192: signed(23 downto 0);
  signal c_192_resize: signed(23 downto 0);
  signal c_193: signed(23 downto 0);
  signal c_194: signed(23 downto 0);
  signal c_195: signed(23 downto 0);
  signal c_196: signed(23 downto 0);
  signal c_197: signed(23 downto 0);
  signal c_198: signed(23 downto 0);
  signal c_199: signed(23 downto 0);
  signal c_200: signed(23 downto 0);
  signal c_201: signed(23 downto 0);
  signal c_201_resize: signed(23 downto 0);
  signal c_202: signed(23 downto 0);
  signal c_203: signed(23 downto 0);
  signal c_204: signed(23 downto 0);
  signal c_205: signed(23 downto 0);
  signal c_206: signed(23 downto 0);
  signal c_207: signed(23 downto 0);
  signal c_208: signed(23 downto 0);
  signal c_209: signed(23 downto 0);
  signal c_210: signed(23 downto 0);
  signal c_210_resize: signed(23 downto 0);
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
  -- output node 0 with id 160
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_160);
    end if;
  end process;
  -- output node 1 with id 166
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_166);
    end if;
  end process;
  -- output node 2 with id 169
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_169);
    end if;
  end process;
  -- output node 3 with id 172
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_172);
    end if;
  end process;
  -- output node 4 with id 179
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_179);
    end if;
  end process;
  -- output node 5 with id 190
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_190);
    end if;
  end process;
  -- output node 6 with id 191
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_191);
    end if;
  end process;
  -- output node 7 with id 192
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_192);
    end if;
  end process;
  -- output node 8 with id 201
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_201);
    end if;
  end process;
  -- output node 9 with id 210
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_210);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [4], [32], [1]]
  c_1_0_0_False_resize <= resize(c_0, 21);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 21);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  c_1_0_5_False_resize <= resize(c_0, 21);
  c_1_0_5_False_shift <= shift_left(c_1_0_5_False_resize, 5);
  with config_select_1 select c_1_sel <= 
    "00" when "11",
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "00" => c_1 <= c_1_0_0_False_shift;
        when "01" => c_1 <= c_1_0_2_False_shift;
        when others => c_1 <= c_1_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[16], [1], [1], [1]]
  c_2_0_0_False_resize <= resize(c_0, 20);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_4_False_resize <= resize(c_0, 20);
  c_2_0_4_False_shift <= shift_left(c_2_0_4_False_resize, 4);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[18], [9], [63], [3]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 20,
      w_o => 22,
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
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[4], [9], [16], [3]]
  c_6_5_2_False_resize <= resize(c_5, 20);
  c_6_5_2_False_shift <= shift_left(c_6_5_2_False_resize, 2);
  c_6_5_4_False_resize <= resize(c_5, 20);
  c_6_5_4_False_shift <= shift_left(c_6_5_4_False_resize, 4);
  c_6_3_0_False_resize <= c_3(19 downto 0);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_5_2_False_shift;
        when "01" => c_6 <= c_6_5_4_False_shift;
        when others => c_6 <= c_6_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[8], [1], [8], [3]]
  c_7_3_0_False_resize <= c_3(18 downto 0);
  c_7_3_0_False_shift <= shift_left(c_7_3_0_False_resize, 0);
  c_7_5_3_False_resize <= resize(c_5, 19);
  c_7_5_3_False_shift <= shift_left(c_7_5_3_False_resize, 3);
  c_7_5_0_False_resize <= resize(c_5, 19);
  c_7_5_0_False_shift <= shift_left(c_7_5_0_False_resize, 0);
  with config_select_3 select c_7_sel <= 
    "00" when "11",
    "01" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_3_0_False_shift;
        when "01" => c_7 <= c_7_5_3_False_shift;
        when others => c_7 <= c_7_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 8 and associated fundamentals [[24], [35], [56], [9]]
  with config_select_4 select c_8_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 19,
      w_o => 22,
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
      sub_i => c_8_sub_sel,
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[18], [256], [64], [64]]
  c_9_5_6_False_resize <= resize(c_5, 24);
  c_9_5_6_False_shift <= shift_left(c_9_5_6_False_resize, 6);
  c_9_5_8_False_resize <= resize(c_5, 24);
  c_9_5_8_False_shift <= shift_left(c_9_5_8_False_resize, 8);
  c_9_3_0_False_resize <= resize(c_3, 24);
  c_9_3_0_False_shift <= shift_left(c_9_3_0_False_resize, 0);
  with config_select_3 select c_9_sel <= 
    "00" when "11",
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "00" => c_9 <= c_9_5_6_False_shift;
        when "01" => c_9 <= c_9_5_8_False_shift;
        when others => c_9 <= c_9_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 10 and associated fundamentals [[1], [16], [16], [1]]
  c_10_0_4_False_resize <= resize(c_0, 20);
  c_10_0_4_False_shift <= shift_left(c_10_0_4_False_resize, 4);
  c_10_0_0_False_resize <= resize(c_0, 20);
  c_10_0_0_False_shift <= shift_left(c_10_0_0_False_resize, 0);
  with config_select_1 select c_10_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_0_4_False_shift;
        when others => c_10 <= c_10_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 11 and associated fundamentals [[1], [16], [16], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 12 and associated fundamentals [[1], [16], [16], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 13 and associated fundamentals [[19], [240], [48], [65]]
  with config_select_4 select c_13_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
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
      sub_i => c_13_sub_sel,
      x_i => c_9,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 14 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 16 and associated fundamentals [[18], [9], [63], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 17 and associated fundamentals [[18], [9], [63], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 18 and associated fundamentals [[128], [18], [48], [65]]
  c_18_17_1_False_resize <= resize(c_17, 23);
  c_18_17_1_False_shift <= shift_left(c_18_17_1_False_resize, 1);
  c_18_15_7_False_resize <= resize(c_15, 23);
  c_18_15_7_False_shift <= shift_left(c_18_15_7_False_resize, 7);
  c_18_13_0_False_resize <= c_13(22 downto 0);
  c_18_13_0_False_shift <= shift_left(c_18_13_0_False_resize, 0);
  with config_select_5 select c_18_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "00" => c_18 <= c_18_17_1_False_shift;
        when "01" => c_18 <= c_18_15_7_False_shift;
        when others => c_18 <= c_18_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 19 and associated fundamentals [[1], [32], [1], [32]]
  c_19_0_0_False_resize <= resize(c_0, 21);
  c_19_0_0_False_shift <= shift_left(c_19_0_0_False_resize, 0);
  c_19_0_5_False_resize <= resize(c_0, 21);
  c_19_0_5_False_shift <= shift_left(c_19_0_5_False_resize, 5);
  with config_select_1 select c_19_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_0_0_False_shift;
        when others => c_19 <= c_19_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 20 and associated fundamentals [[1], [32], [1], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 21 and associated fundamentals [[1], [32], [1], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 22 and associated fundamentals [[1], [32], [1], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[1], [32], [1], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 24 and associated fundamentals [[127], [50], [49], [33]]
  with config_select_6 select c_24_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
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
      sub_i => c_24_sub_sel,
      x_i => c_18,
      y_i => c_23,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 25 and associated fundamentals [[24], [35], [56], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 26 and associated fundamentals [[24], [35], [56], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 27 and associated fundamentals [[96], [35], [49], [36]]
  c_27_26_2_False_resize <= resize(c_26, 23);
  c_27_26_2_False_shift <= shift_left(c_27_26_2_False_resize, 2);
  c_27_26_0_False_resize <= resize(c_26, 23);
  c_27_26_0_False_shift <= shift_left(c_27_26_0_False_resize, 0);
  c_27_24_0_False_resize <= c_24;
  c_27_24_0_False_shift <= shift_left(c_27_24_0_False_resize, 0);
  with config_select_7 select c_27_sel <= 
    "00" when "11",
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "00" => c_27 <= c_27_26_2_False_shift;
        when "01" => c_27 <= c_27_26_0_False_shift;
        when others => c_27 <= c_27_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 28 and associated fundamentals [[19], [36], [48], [65]]
  c_28_17_2_False_resize <= resize(c_17, 23);
  c_28_17_2_False_shift <= shift_left(c_28_17_2_False_resize, 2);
  c_28_13_0_False_resize <= c_13(22 downto 0);
  c_28_13_0_False_shift <= shift_left(c_28_13_0_False_resize, 0);
  with config_select_5 select c_28_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "0" => c_28 <= c_28_17_2_False_shift;
        when others => c_28 <= c_28_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 29 and associated fundamentals [[19], [36], [48], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 30 and associated fundamentals [[19], [36], [48], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 31 and associated fundamentals [[173], [106], [146], [137]]
  with config_select_8 select c_31_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 23,
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
  -- node of type 'mux' in stage 3 with id 32 and associated fundamentals [[36], [1], [4], [128]]
  c_32_5_7_False_resize <= resize(c_5, 23);
  c_32_5_7_False_shift <= shift_left(c_32_5_7_False_resize, 7);
  c_32_5_2_False_resize <= resize(c_5, 23);
  c_32_5_2_False_shift <= shift_left(c_32_5_2_False_resize, 2);
  c_32_5_0_False_resize <= resize(c_5, 23);
  c_32_5_0_False_shift <= shift_left(c_32_5_0_False_resize, 0);
  c_32_3_1_False_resize <= resize(c_3, 23);
  c_32_3_1_False_shift <= shift_left(c_32_3_1_False_resize, 1);
  with config_select_3 select c_32_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "00" => c_32 <= c_32_5_7_False_shift;
        when "01" => c_32 <= c_32_5_2_False_shift;
        when "10" => c_32 <= c_32_5_0_False_shift;
        when others => c_32 <= c_32_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 33 and associated fundamentals [[36], [1], [4], [128]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 34 and associated fundamentals [[55], [239], [52], [-63]]
  with config_select_5 select c_34_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_34: entity work.adder_node
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
      sub_i => c_34_sub_sel,
      x_i => c_13,
      y_i => c_33,
      z_o => c_34_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_34_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 35 and associated fundamentals [[127], [50], [98], [33]]
  c_35_24_1_False_resize <= c_24;
  c_35_24_1_False_shift <= shift_left(c_35_24_1_False_resize, 1);
  c_35_24_0_False_resize <= c_24;
  c_35_24_0_False_shift <= shift_left(c_35_24_0_False_resize, 0);
  with config_select_7 select c_35_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_24_1_False_shift;
        when others => c_35 <= c_35_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 36 and associated fundamentals [[24], [35], [63], [8]]
  c_36_8_0_False_resize <= c_8;
  c_36_8_0_False_shift <= shift_left(c_36_8_0_False_resize, 0);
  c_36_15_3_False_resize <= resize(c_15, 22);
  c_36_15_3_False_shift <= shift_left(c_36_15_3_False_resize, 3);
  c_36_17_0_False_resize <= c_17;
  c_36_17_0_False_shift <= shift_left(c_36_17_0_False_resize, 0);
  with config_select_5 select c_36_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "00" => c_36 <= c_36_8_0_False_shift;
        when "01" => c_36 <= c_36_15_3_False_shift;
        when others => c_36 <= c_36_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 37 and associated fundamentals [[24], [35], [63], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 38 and associated fundamentals [[24], [35], [63], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 8 with id 39 and associated fundamentals [[230], [65], [133], [58]]
  inst_adder_node_39: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
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
      x_i => c_35,
      y_i => c_38,
      z_o => c_39_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_39_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 40 and associated fundamentals [[18], [9], [63], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 41 and associated fundamentals [[18], [9], [63], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 42 and associated fundamentals [[18], [9], [63], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 43 and associated fundamentals [[18], [9], [63], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 44 and associated fundamentals [[24], [35], [56], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 45 and associated fundamentals [[24], [35], [56], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 46 and associated fundamentals [[18], [35], [56], [116]]
  c_46_43_0_False_resize <= resize(c_43, 23);
  c_46_43_0_False_shift <= shift_left(c_46_43_0_False_resize, 0);
  c_46_39_1_False_resize <= c_39(22 downto 0);
  c_46_39_1_False_shift <= shift_left(c_46_39_1_False_resize, 1);
  c_46_45_0_False_resize <= resize(c_45, 23);
  c_46_45_0_False_shift <= shift_left(c_46_45_0_False_resize, 0);
  with config_select_9 select c_46_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "00" => c_46 <= c_46_43_0_False_shift;
        when "01" => c_46 <= c_46_39_1_False_shift;
        when others => c_46 <= c_46_45_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 47 and associated fundamentals [[127], [50], [49], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 48 and associated fundamentals [[127], [50], [49], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 49 and associated fundamentals [[173], [200], [63], [9]]
  c_49_45_0_False_resize <= resize(c_45, 24);
  c_49_45_0_False_shift <= shift_left(c_49_45_0_False_resize, 0);
  c_49_31_0_False_resize <= c_31;
  c_49_31_0_False_shift <= shift_left(c_49_31_0_False_resize, 0);
  c_49_48_2_False_resize <= resize(c_48, 24);
  c_49_48_2_False_shift <= shift_left(c_49_48_2_False_resize, 2);
  c_49_43_0_False_resize <= resize(c_43, 24);
  c_49_43_0_False_shift <= shift_left(c_49_43_0_False_resize, 0);
  with config_select_9 select c_49_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_49_sel is
        when "00" => c_49 <= c_49_45_0_False_shift;
        when "01" => c_49 <= c_49_31_0_False_shift;
        when "10" => c_49 <= c_49_48_2_False_shift;
        when others => c_49 <= c_49_43_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 50 and associated fundamentals [[-155], [-165], [119], [107]]
  with config_select_10 select c_50_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_50: entity work.adder_node
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
      sub_i => c_50_sub_sel,
      x_i => c_46,
      y_i => c_49,
      z_o => c_50_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_50_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 51 and associated fundamentals [[127], [50], [49], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 52 and associated fundamentals [[127], [50], [49], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 53 and associated fundamentals [[230], [65], [133], [58]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 54 and associated fundamentals [[230], [65], [133], [58]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 55 and associated fundamentals [[230], [65], [119], [33]]
  c_55_50_0_False_resize <= c_50;
  c_55_50_0_False_shift <= shift_left(c_55_50_0_False_resize, 0);
  c_55_52_0_False_resize <= resize(c_52, 24);
  c_55_52_0_False_shift <= shift_left(c_55_52_0_False_resize, 0);
  c_55_54_0_False_resize <= c_54;
  c_55_54_0_False_shift <= shift_left(c_55_54_0_False_resize, 0);
  with config_select_11 select c_55_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_55_sel is
        when "00" => c_55 <= c_55_50_0_False_shift;
        when "01" => c_55 <= c_55_52_0_False_shift;
        when others => c_55 <= c_55_54_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 56 and associated fundamentals [[16], [4], [48], [3]]
  c_56_17_0_False_resize <= c_17;
  c_56_17_0_False_shift <= shift_left(c_56_17_0_False_resize, 0);
  c_56_13_0_False_resize <= c_13(21 downto 0);
  c_56_13_0_False_shift <= shift_left(c_56_13_0_False_resize, 0);
  c_56_15_4_False_resize <= resize(c_15, 22);
  c_56_15_4_False_shift <= shift_left(c_56_15_4_False_resize, 4);
  c_56_15_2_False_resize <= resize(c_15, 22);
  c_56_15_2_False_shift <= shift_left(c_56_15_2_False_resize, 2);
  with config_select_5 select c_56_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_56_sel is
        when "00" => c_56 <= c_56_17_0_False_shift;
        when "01" => c_56 <= c_56_13_0_False_shift;
        when "10" => c_56 <= c_56_15_4_False_shift;
        when others => c_56 <= c_56_15_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 57 and associated fundamentals [[16], [4], [48], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 58 and associated fundamentals [[16], [4], [48], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 59 and associated fundamentals [[16], [4], [48], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 60 and associated fundamentals [[16], [4], [48], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 61 and associated fundamentals [[16], [4], [48], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 62 and associated fundamentals [[16], [4], [48], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 63 and associated fundamentals [[198], [57], [215], [39]]
  with config_select_12 select c_63_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_63: entity work.adder_node
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
      sub_i => c_63_sub_sel,
      x_i => c_55,
      y_i => c_62,
      z_o => c_63_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_63_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 64 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 65 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 66 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 67 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 68 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 69 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 70 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 71 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 72 and associated fundamentals [[8], [114], [8], [39]]
  c_72_63_0_False_resize <= c_63(22 downto 0);
  c_72_63_0_False_shift <= shift_left(c_72_63_0_False_resize, 0);
  c_72_63_1_False_resize <= c_63(22 downto 0);
  c_72_63_1_False_shift <= shift_left(c_72_63_1_False_resize, 1);
  c_72_71_3_False_resize <= resize(c_71, 23);
  c_72_71_3_False_shift <= shift_left(c_72_71_3_False_resize, 3);
  with config_select_13 select c_72_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_72_sel is
        when "00" => c_72 <= c_72_63_0_False_shift;
        when "01" => c_72 <= c_72_63_1_False_shift;
        when others => c_72 <= c_72_71_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 73 and associated fundamentals [[1], [239], [52], [1]]
  c_73_64_0_False_resize <= resize(c_64, 24);
  c_73_64_0_False_shift <= shift_left(c_73_64_0_False_resize, 0);
  c_73_34_0_False_resize <= c_34;
  c_73_34_0_False_shift <= shift_left(c_73_34_0_False_resize, 0);
  with config_select_6 select c_73_sel <= 
    "0" when "00",
    "0" when "11",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_73_sel is
        when "0" => c_73 <= c_73_64_0_False_shift;
        when others => c_73 <= c_73_34_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 74 and associated fundamentals [[1], [239], [52], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 75 and associated fundamentals [[1], [239], [52], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 76 and associated fundamentals [[1], [239], [52], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 77 and associated fundamentals [[1], [239], [52], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 78 and associated fundamentals [[1], [239], [52], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 79 and associated fundamentals [[1], [239], [52], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 80 and associated fundamentals [[1], [239], [52], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 81 and associated fundamentals [[33], [217], [-20], [157]]
  with config_select_14 select c_81_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_81: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
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
      sub_i => c_81_sub_sel,
      x_i => c_72,
      y_i => c_80,
      z_o => c_81_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_81_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 82 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_71 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 83 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_82 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 84 and associated fundamentals [[173], [106], [146], [137]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 85 and associated fundamentals [[173], [106], [146], [137]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_84 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 86 and associated fundamentals [[173], [106], [146], [137]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_85 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 87 and associated fundamentals [[173], [106], [146], [137]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_86 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 88 and associated fundamentals [[173], [106], [146], [137]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_87 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 89 and associated fundamentals [[173], [106], [146], [137]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_88 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 90 and associated fundamentals [[4], [212], [-20], [157]]
  c_90_81_0_False_resize <= c_81;
  c_90_81_0_False_shift <= shift_left(c_90_81_0_False_resize, 0);
  c_90_89_1_False_resize <= c_89;
  c_90_89_1_False_shift <= shift_left(c_90_89_1_False_resize, 1);
  c_90_83_2_False_resize <= resize(c_83, 24);
  c_90_83_2_False_shift <= shift_left(c_90_83_2_False_resize, 2);
  with config_select_15 select c_90_sel <= 
    "00" when "10",
    "00" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_90_sel is
        when "00" => c_90 <= c_90_81_0_False_shift;
        when "01" => c_90 <= c_90_89_1_False_shift;
        when others => c_90 <= c_90_83_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 91 and associated fundamentals [[24], [35], [56], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 92 and associated fundamentals [[24], [35], [56], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 93 and associated fundamentals [[24], [35], [56], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_92 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 94 and associated fundamentals [[24], [35], [56], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_93 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 95 and associated fundamentals [[198], [35], [215], [9]]
  c_95_63_0_False_resize <= c_63;
  c_95_63_0_False_shift <= shift_left(c_95_63_0_False_resize, 0);
  c_95_94_0_False_resize <= resize(c_94, 24);
  c_95_94_0_False_shift <= shift_left(c_95_94_0_False_resize, 0);
  with config_select_13 select c_95_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_95_sel is
        when "0" => c_95 <= c_95_63_0_False_shift;
        when others => c_95 <= c_95_94_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 96 and associated fundamentals [[198], [35], [215], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_95 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 97 and associated fundamentals [[198], [35], [215], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_96 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 16 with id 98 and associated fundamentals [[202], [177], [-235], [148]]
  with config_select_16 select c_98_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_98: entity work.adder_node
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
      sub_i => c_98_sub_sel,
      x_i => c_90,
      y_i => c_97,
      z_o => c_98_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_98_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 99 and associated fundamentals [[19], [240], [48], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_13 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 100 and associated fundamentals [[24], [239], [126], [130]]
  c_100_25_0_False_resize <= resize(c_25, 24);
  c_100_25_0_False_shift <= shift_left(c_100_25_0_False_resize, 0);
  c_100_40_1_False_resize <= resize(c_40, 24);
  c_100_40_1_False_shift <= shift_left(c_100_40_1_False_resize, 1);
  c_100_99_1_False_resize <= c_99;
  c_100_99_1_False_shift <= shift_left(c_100_99_1_False_resize, 1);
  c_100_34_0_False_resize <= c_34;
  c_100_34_0_False_shift <= shift_left(c_100_34_0_False_resize, 0);
  with config_select_6 select c_100_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_100_sel is
        when "00" => c_100 <= c_100_25_0_False_shift;
        when "01" => c_100 <= c_100_40_1_False_shift;
        when "10" => c_100 <= c_100_99_1_False_shift;
        when others => c_100 <= c_100_34_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 101 and associated fundamentals [[127], [50], [49], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 102 and associated fundamentals [[127], [50], [49], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_101 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 103 and associated fundamentals [[127], [50], [49], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_102 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 104 and associated fundamentals [[127], [50], [49], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_103 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 105 and associated fundamentals [[33], [217], [98], [132]]
  c_105_81_0_False_resize <= c_81;
  c_105_81_0_False_shift <= shift_left(c_105_81_0_False_resize, 0);
  c_105_104_1_False_resize <= resize(c_104, 24);
  c_105_104_1_False_shift <= shift_left(c_105_104_1_False_resize, 1);
  c_105_104_2_False_resize <= resize(c_104, 24);
  c_105_104_2_False_shift <= shift_left(c_105_104_2_False_resize, 2);
  with config_select_15 select c_105_sel <= 
    "00" when "01",
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_105_sel is
        when "00" => c_105 <= c_105_81_0_False_shift;
        when "01" => c_105 <= c_105_104_1_False_shift;
        when others => c_105 <= c_105_104_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 106 and associated fundamentals [[18], [9], [63], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 107 and associated fundamentals [[18], [9], [63], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_106 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 108 and associated fundamentals [[18], [9], [63], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_108 <= c_107 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 109 and associated fundamentals [[18], [9], [63], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_109 <= c_108 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 110 and associated fundamentals [[18], [9], [63], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_110 <= c_109 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 111 and associated fundamentals [[18], [9], [63], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_110 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 112 and associated fundamentals [[24], [35], [56], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_94 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 113 and associated fundamentals [[24], [35], [56], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_112 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 114 and associated fundamentals [[-155], [-165], [119], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 115 and associated fundamentals [[-155], [-165], [119], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_114 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 116 and associated fundamentals [[-155], [-165], [119], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_116 <= c_115 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 117 and associated fundamentals [[-155], [-165], [119], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_117 <= c_116 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 118 and associated fundamentals [[144], [140], [119], [157]]
  c_118_117_0_False_resize <= c_117;
  c_118_117_0_False_shift <= shift_left(c_118_117_0_False_resize, 0);
  c_118_81_0_False_resize <= c_81;
  c_118_81_0_False_shift <= shift_left(c_118_81_0_False_resize, 0);
  c_118_113_2_False_resize <= resize(c_113, 24);
  c_118_113_2_False_shift <= shift_left(c_118_113_2_False_resize, 2);
  c_118_111_3_False_resize <= resize(c_111, 24);
  c_118_111_3_False_shift <= shift_left(c_118_111_3_False_resize, 3);
  with config_select_15 select c_118_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_118_sel is
        when "00" => c_118 <= c_118_117_0_False_shift;
        when "01" => c_118 <= c_118_81_0_False_shift;
        when "10" => c_118 <= c_118_113_2_False_shift;
        when others => c_118 <= c_118_111_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 119 and associated fundamentals [[55], [239], [52], [-63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_119 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 120 and associated fundamentals [[55], [239], [52], [-63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_120 <= c_119 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 121 and associated fundamentals [[55], [239], [52], [-63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_121 <= c_120 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 122 and associated fundamentals [[55], [239], [52], [-63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_122 <= c_121 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 123 and associated fundamentals [[55], [239], [52], [-63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_123 <= c_122 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 124 and associated fundamentals [[55], [65], [146], [107]]
  c_124_85_0_False_resize <= c_85;
  c_124_85_0_False_shift <= shift_left(c_124_85_0_False_resize, 0);
  c_124_50_0_False_resize <= c_50;
  c_124_50_0_False_shift <= shift_left(c_124_50_0_False_resize, 0);
  c_124_54_0_False_resize <= c_54;
  c_124_54_0_False_shift <= shift_left(c_124_54_0_False_resize, 0);
  c_124_123_0_False_resize <= c_123;
  c_124_123_0_False_shift <= shift_left(c_124_123_0_False_resize, 0);
  with config_select_11 select c_124_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_124_sel is
        when "00" => c_124 <= c_124_85_0_False_shift;
        when "01" => c_124 <= c_124_50_0_False_shift;
        when "10" => c_124 <= c_124_54_0_False_shift;
        when others => c_124 <= c_124_123_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 125 and associated fundamentals [[19], [240], [48], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_125 <= c_99 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 126 and associated fundamentals [[254], [9], [192], [6]]
  c_126_41_1_False_resize <= resize(c_41, 24);
  c_126_41_1_False_shift <= shift_left(c_126_41_1_False_resize, 1);
  c_126_24_1_False_resize <= resize(c_24, 24);
  c_126_24_1_False_shift <= shift_left(c_126_24_1_False_resize, 1);
  c_126_125_2_False_resize <= c_125;
  c_126_125_2_False_shift <= shift_left(c_126_125_2_False_resize, 2);
  c_126_41_0_False_resize <= resize(c_41, 24);
  c_126_41_0_False_shift <= shift_left(c_126_41_0_False_resize, 0);
  with config_select_7 select c_126_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_126_sel is
        when "00" => c_126 <= c_126_41_1_False_shift;
        when "01" => c_126 <= c_126_24_1_False_shift;
        when "10" => c_126 <= c_126_125_2_False_shift;
        when others => c_126 <= c_126_41_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 127 and associated fundamentals [[55], [239], [52], [-63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_127 <= c_123 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 128 and associated fundamentals [[55], [239], [52], [-63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_128 <= c_127 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 129 and associated fundamentals [[55], [239], [52], [-63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_129 <= c_128 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 130 and associated fundamentals [[55], [239], [52], [-63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_130 <= c_129 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 131 and associated fundamentals [[55], [239], [52], [-63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_131 <= c_130 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 132 and associated fundamentals [[55], [239], [52], [-63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_132 <= c_131 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 133 and associated fundamentals [[-155], [-165], [119], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_133 <= c_117 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 134 and associated fundamentals [[-155], [-165], [119], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_134 <= c_133 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 135 and associated fundamentals [[-155], [-165], [-235], [-63]]
  c_135_98_0_False_resize <= c_98;
  c_135_98_0_False_shift <= shift_left(c_135_98_0_False_resize, 0);
  c_135_134_0_False_resize <= c_134;
  c_135_134_0_False_shift <= shift_left(c_135_134_0_False_resize, 0);
  c_135_132_0_False_resize <= c_132;
  c_135_132_0_False_shift <= shift_left(c_135_132_0_False_resize, 0);
  with config_select_17 select c_135_sel <= 
    "00" when "10",
    "01" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_135_sel is
        when "00" => c_135 <= c_135_98_0_False_shift;
        when "01" => c_135 <= c_135_134_0_False_shift;
        when others => c_135 <= c_135_132_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 136 and associated fundamentals [[19], [240], [48], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_136 <= c_125 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 137 and associated fundamentals [[19], [240], [48], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_137 <= c_136 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 138 and associated fundamentals [[19], [240], [48], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_138 <= c_137 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 139 and associated fundamentals [[19], [240], [48], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_139 <= c_138 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 140 and associated fundamentals [[19], [240], [48], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_140 <= c_139 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 141 and associated fundamentals [[19], [240], [48], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_141 <= c_140 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 142 and associated fundamentals [[19], [240], [48], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_142 <= c_141 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 143 and associated fundamentals [[19], [240], [48], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_143 <= c_142 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 144 and associated fundamentals [[19], [240], [48], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_144 <= c_143 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 145 and associated fundamentals [[19], [240], [48], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_145 <= c_144 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 146 and associated fundamentals [[202], [177], [48], [148]]
  c_146_98_0_False_resize <= c_98;
  c_146_98_0_False_shift <= shift_left(c_146_98_0_False_resize, 0);
  c_146_145_0_False_resize <= c_145;
  c_146_145_0_False_shift <= shift_left(c_146_145_0_False_resize, 0);
  with config_select_17 select c_146_sel <= 
    "0" when "11",
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_146_sel is
        when "0" => c_146 <= c_146_98_0_False_shift;
        when others => c_146 <= c_146_145_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 147 and associated fundamentals [[173], [106], [133], [116]]
  c_147_39_1_False_resize <= c_39;
  c_147_39_1_False_shift <= shift_left(c_147_39_1_False_resize, 1);
  c_147_31_0_False_resize <= c_31;
  c_147_31_0_False_shift <= shift_left(c_147_31_0_False_resize, 0);
  c_147_39_0_False_resize <= c_39;
  c_147_39_0_False_shift <= shift_left(c_147_39_0_False_resize, 0);
  with config_select_9 select c_147_sel <= 
    "00" when "11",
    "01" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_147_sel is
        when "00" => c_147 <= c_147_39_1_False_shift;
        when "01" => c_147 <= c_147_31_0_False_shift;
        when others => c_147 <= c_147_39_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 148 and associated fundamentals [[127], [50], [208], [137]]
  c_148_48_0_False_resize <= resize(c_48, 24);
  c_148_48_0_False_shift <= shift_left(c_148_48_0_False_resize, 0);
  c_148_121_2_False_resize <= c_121;
  c_148_121_2_False_shift <= shift_left(c_148_121_2_False_resize, 2);
  c_148_31_0_False_resize <= c_31;
  c_148_31_0_False_shift <= shift_left(c_148_31_0_False_resize, 0);
  with config_select_9 select c_148_sel <= 
    "00" when "01",
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_148_sel is
        when "00" => c_148 <= c_148_48_0_False_shift;
        when "01" => c_148 <= c_148_121_2_False_shift;
        when others => c_148 <= c_148_31_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 149 and associated fundamentals [[24], [239], [126], [130]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_149 <= c_100 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 150 and associated fundamentals [[24], [239], [126], [130]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_150 <= c_149 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 151 and associated fundamentals [[24], [239], [126], [130]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_151 <= c_150 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 152 and associated fundamentals [[24], [239], [126], [130]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_152 <= c_151 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 153 and associated fundamentals [[24], [239], [126], [130]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_153 <= c_152 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 154 and associated fundamentals [[24], [239], [126], [130]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_154 <= c_153 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 155 and associated fundamentals [[24], [239], [126], [130]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_155 <= c_154 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 156 and associated fundamentals [[24], [239], [126], [130]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_156 <= c_155 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 157 and associated fundamentals [[24], [239], [126], [130]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_157 <= c_156 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 158 and associated fundamentals [[24], [239], [126], [130]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_158 <= c_157 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 159 and associated fundamentals [[24], [239], [126], [130]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_159 <= c_158 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 160 and associated fundamentals [[24], [239], [126], [130]]
  c_160_resize <= c_159;
  c_160 <= shift_left(c_160_resize, 0);
  -- node of type 'register' in stage 13 with id 161 and associated fundamentals [[198], [57], [215], [39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_161 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 162 and associated fundamentals [[198], [57], [215], [39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_162 <= c_161 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 163 and associated fundamentals [[198], [57], [215], [39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_163 <= c_162 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 164 and associated fundamentals [[198], [57], [215], [39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_164 <= c_163 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 165 and associated fundamentals [[198], [57], [215], [39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_165 <= c_164 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 166 and associated fundamentals [[198], [57], [215], [39]]
  c_166_resize <= c_165;
  c_166 <= shift_left(c_166_resize, 0);
  -- node of type 'register' in stage 16 with id 167 and associated fundamentals [[33], [217], [98], [132]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_167 <= c_105 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 168 and associated fundamentals [[33], [217], [98], [132]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_168 <= c_167 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 169 and associated fundamentals [[33], [217], [98], [132]]
  c_169_resize <= c_168;
  c_169 <= shift_left(c_169_resize, 0);
  -- node of type 'register' in stage 16 with id 170 and associated fundamentals [[144], [140], [119], [157]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_170 <= c_118 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 171 and associated fundamentals [[144], [140], [119], [157]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_171 <= c_170 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 172 and associated fundamentals [[144], [140], [119], [157]]
  c_172_resize <= c_171;
  c_172 <= shift_left(c_172_resize, 0);
  -- node of type 'register' in stage 12 with id 173 and associated fundamentals [[55], [65], [146], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_173 <= c_124 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 174 and associated fundamentals [[55], [65], [146], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_174 <= c_173 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 175 and associated fundamentals [[55], [65], [146], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_175 <= c_174 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 176 and associated fundamentals [[55], [65], [146], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_176 <= c_175 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 177 and associated fundamentals [[55], [65], [146], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_177 <= c_176 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 178 and associated fundamentals [[55], [65], [146], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_178 <= c_177 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 179 and associated fundamentals [[55], [65], [146], [107]]
  c_179_resize <= c_178;
  c_179 <= shift_left(c_179_resize, 0);
  -- node of type 'register' in stage 8 with id 180 and associated fundamentals [[254], [9], [192], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_180 <= c_126 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 181 and associated fundamentals [[254], [9], [192], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_181 <= c_180 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 182 and associated fundamentals [[254], [9], [192], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_182 <= c_181 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 183 and associated fundamentals [[254], [9], [192], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_183 <= c_182 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 184 and associated fundamentals [[254], [9], [192], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_184 <= c_183 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 185 and associated fundamentals [[254], [9], [192], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_185 <= c_184 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 186 and associated fundamentals [[254], [9], [192], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_186 <= c_185 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 187 and associated fundamentals [[254], [9], [192], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_187 <= c_186 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 188 and associated fundamentals [[254], [9], [192], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_188 <= c_187 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 189 and associated fundamentals [[254], [9], [192], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_189 <= c_188 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 190 and associated fundamentals [[254], [9], [192], [6]]
  c_190_resize <= c_189;
  c_190 <= shift_left(c_190_resize, 0);
  -- node of type 'output' in stage 17 with id 191 and associated fundamentals [[155], [165], [235], [63]]
  c_191_resize <= c_135;
  c_191 <= -shift_left(c_191_resize, 0);
  -- node of type 'output' in stage 17 with id 192 and associated fundamentals [[202], [177], [48], [148]]
  c_192_resize <= c_146;
  c_192 <= shift_left(c_192_resize, 0);
  -- node of type 'register' in stage 10 with id 193 and associated fundamentals [[173], [106], [133], [116]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_193 <= c_147 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 194 and associated fundamentals [[173], [106], [133], [116]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_194 <= c_193 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 195 and associated fundamentals [[173], [106], [133], [116]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_195 <= c_194 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 196 and associated fundamentals [[173], [106], [133], [116]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_196 <= c_195 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 197 and associated fundamentals [[173], [106], [133], [116]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_197 <= c_196 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 198 and associated fundamentals [[173], [106], [133], [116]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_198 <= c_197 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 199 and associated fundamentals [[173], [106], [133], [116]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_199 <= c_198 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 200 and associated fundamentals [[173], [106], [133], [116]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_200 <= c_199 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 201 and associated fundamentals [[173], [106], [133], [116]]
  c_201_resize <= c_200;
  c_201 <= shift_left(c_201_resize, 0);
  -- node of type 'register' in stage 10 with id 202 and associated fundamentals [[127], [50], [208], [137]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_202 <= c_148 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 203 and associated fundamentals [[127], [50], [208], [137]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_203 <= c_202 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 204 and associated fundamentals [[127], [50], [208], [137]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_204 <= c_203 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 205 and associated fundamentals [[127], [50], [208], [137]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_205 <= c_204 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 206 and associated fundamentals [[127], [50], [208], [137]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_206 <= c_205 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 207 and associated fundamentals [[127], [50], [208], [137]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_207 <= c_206 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 208 and associated fundamentals [[127], [50], [208], [137]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_208 <= c_207 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 209 and associated fundamentals [[127], [50], [208], [137]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_209 <= c_208 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 210 and associated fundamentals [[127], [50], [208], [137]]
  c_210_resize <= c_209;
  c_210 <= shift_left(c_210_resize, 0);
end architecture;
