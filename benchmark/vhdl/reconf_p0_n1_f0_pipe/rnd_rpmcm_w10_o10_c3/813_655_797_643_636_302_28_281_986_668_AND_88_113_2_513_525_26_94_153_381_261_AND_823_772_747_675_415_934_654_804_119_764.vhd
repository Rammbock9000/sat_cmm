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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_0_0_False_resize: signed(18 downto 0);
  signal c_1_0_0_False_shift: signed(18 downto 0);
  signal c_1_0_1_False_resize: signed(18 downto 0);
  signal c_1_0_1_False_shift: signed(18 downto 0);
  signal c_1_0_3_False_resize: signed(18 downto 0);
  signal c_1_0_3_False_shift: signed(18 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
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
  signal c_5: signed(22 downto 0);
  signal c_5_4_4_False_resize: signed(22 downto 0);
  signal c_5_4_4_False_shift: signed(22 downto 0);
  signal c_5_3_0_False_resize: signed(22 downto 0);
  signal c_5_3_0_False_shift: signed(22 downto 0);
  signal c_5_4_7_False_resize: signed(22 downto 0);
  signal c_5_4_7_False_shift: signed(22 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_4_0_False_resize: signed(22 downto 0);
  signal c_6_4_0_False_shift: signed(22 downto 0);
  signal c_6_4_7_False_resize: signed(22 downto 0);
  signal c_6_4_7_False_shift: signed(22 downto 0);
  signal c_6_3_0_False_resize: signed(22 downto 0);
  signal c_6_3_0_False_shift: signed(22 downto 0);
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
  signal c_10_9_0_False_resize: signed(20 downto 0);
  signal c_10_9_0_False_shift: signed(20 downto 0);
  signal c_10_9_1_False_resize: signed(20 downto 0);
  signal c_10_9_1_False_shift: signed(20 downto 0);
  signal c_10_7_0_False_resize: signed(20 downto 0);
  signal c_10_7_0_False_shift: signed(20 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(20 downto 0);
  signal c_12: signed(20 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_7_0_False_resize: signed(23 downto 0);
  signal c_13_7_0_False_shift: signed(23 downto 0);
  signal c_13_12_2_False_resize: signed(23 downto 0);
  signal c_13_12_2_False_shift: signed(23 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_i0_resize: signed(23 downto 0);
  signal c_14_i1_resize: signed(23 downto 0);
  signal c_14_i0_shift: signed(23 downto 0);
  signal c_14_i1_shift: signed(23 downto 0);
  signal c_14_arith: signed(23 downto 0);
  signal c_14_oshift: signed(23 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_12_0_False_resize: signed(23 downto 0);
  signal c_15_12_0_False_shift: signed(23 downto 0);
  signal c_15_7_3_False_resize: signed(23 downto 0);
  signal c_15_7_3_False_shift: signed(23 downto 0);
  signal c_15_9_5_False_resize: signed(23 downto 0);
  signal c_15_9_5_False_shift: signed(23 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(22 downto 0);
  signal c_16_9_0_False_resize: signed(22 downto 0);
  signal c_16_9_0_False_shift: signed(22 downto 0);
  signal c_16_12_2_False_resize: signed(22 downto 0);
  signal c_16_12_2_False_shift: signed(22 downto 0);
  signal c_16_7_0_False_resize: signed(22 downto 0);
  signal c_16_7_0_False_shift: signed(22 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_17_i0_resize: signed(24 downto 0);
  signal c_17_i1_resize: signed(24 downto 0);
  signal c_17_i0_shift: signed(24 downto 0);
  signal c_17_i1_shift: signed(24 downto 0);
  signal c_17_arith: signed(24 downto 0);
  signal c_17_oshift: signed(24 downto 0);
  signal c_18: signed(15 downto 0);
  signal c_19: signed(15 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_20_14_0_False_resize: signed(22 downto 0);
  signal c_20_14_0_False_shift: signed(22 downto 0);
  signal c_20_17_2_False_resize: signed(22 downto 0);
  signal c_20_17_2_False_shift: signed(22 downto 0);
  signal c_20_19_5_False_resize: signed(22 downto 0);
  signal c_20_19_5_False_shift: signed(22 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_22_3_False_resize: signed(23 downto 0);
  signal c_23_22_3_False_shift: signed(23 downto 0);
  signal c_23_22_0_False_resize: signed(23 downto 0);
  signal c_23_22_0_False_shift: signed(23 downto 0);
  signal c_23_14_0_False_resize: signed(23 downto 0);
  signal c_23_14_0_False_shift: signed(23 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(24 downto 0);
  signal c_24_i0_resize: signed(24 downto 0);
  signal c_24_i1_resize: signed(24 downto 0);
  signal c_24_i0_shift: signed(24 downto 0);
  signal c_24_i1_shift: signed(24 downto 0);
  signal c_24_arith: signed(24 downto 0);
  signal c_24_oshift: signed(24 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(24 downto 0);
  signal c_25_22_2_False_resize: signed(24 downto 0);
  signal c_25_22_2_False_shift: signed(24 downto 0);
  signal c_25_22_0_False_resize: signed(24 downto 0);
  signal c_25_22_0_False_shift: signed(24 downto 0);
  signal c_25_17_0_False_resize: signed(24 downto 0);
  signal c_25_17_0_False_shift: signed(24 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(20 downto 0);
  signal c_27: signed(20 downto 0);
  signal c_28: signed(24 downto 0);
  signal c_28_27_5_False_resize: signed(24 downto 0);
  signal c_28_27_5_False_shift: signed(24 downto 0);
  signal c_28_14_0_False_resize: signed(24 downto 0);
  signal c_28_14_0_False_shift: signed(24 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_i0_resize: signed(25 downto 0);
  signal c_29_i1_resize: signed(25 downto 0);
  signal c_29_i0_shift: signed(25 downto 0);
  signal c_29_i1_shift: signed(25 downto 0);
  signal c_29_arith: signed(25 downto 0);
  signal c_29_oshift: signed(25 downto 0);
  signal c_30: signed(15 downto 0);
  signal c_31: signed(15 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_31_3_False_resize: signed(25 downto 0);
  signal c_32_31_3_False_shift: signed(25 downto 0);
  signal c_32_29_0_False_resize: signed(25 downto 0);
  signal c_32_29_0_False_shift: signed(25 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_19_2_False_resize: signed(23 downto 0);
  signal c_33_19_2_False_shift: signed(23 downto 0);
  signal c_33_22_0_False_resize: signed(23 downto 0);
  signal c_33_22_0_False_shift: signed(23 downto 0);
  signal c_33_17_3_False_resize: signed(23 downto 0);
  signal c_33_17_3_False_shift: signed(23 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_36_i0_resize: signed(25 downto 0);
  signal c_36_i1_resize: signed(25 downto 0);
  signal c_36_i0_shift: signed(25 downto 0);
  signal c_36_i1_shift: signed(25 downto 0);
  signal c_36_arith: signed(25 downto 0);
  signal c_36_oshift: signed(25 downto 0);
  signal c_36_sub_sel: std_logic;
  signal c_37: signed(21 downto 0);
  signal c_37_14_0_False_resize: signed(21 downto 0);
  signal c_37_14_0_False_shift: signed(21 downto 0);
  signal c_37_27_1_False_resize: signed(21 downto 0);
  signal c_37_27_1_False_shift: signed(21 downto 0);
  signal c_37_sel: std_logic_vector(0 downto 0);
  signal c_38: signed(20 downto 0);
  signal c_39: signed(20 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_29_0_False_resize: signed(23 downto 0);
  signal c_40_29_0_False_shift: signed(23 downto 0);
  signal c_40_39_0_False_resize: signed(23 downto 0);
  signal c_40_39_0_False_shift: signed(23 downto 0);
  signal c_40_31_1_False_resize: signed(23 downto 0);
  signal c_40_31_1_False_shift: signed(23 downto 0);
  signal c_40_sel: std_logic_vector(1 downto 0);
  signal c_41: signed(21 downto 0);
  signal c_42: signed(21 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_43_i0_resize: signed(25 downto 0);
  signal c_43_i1_resize: signed(25 downto 0);
  signal c_43_i0_shift: signed(25 downto 0);
  signal c_43_i1_shift: signed(25 downto 0);
  signal c_43_arith: signed(25 downto 0);
  signal c_43_oshift: signed(25 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_48_47_3_False_resize: signed(25 downto 0);
  signal c_48_47_3_False_shift: signed(25 downto 0);
  signal c_48_24_1_False_resize: signed(25 downto 0);
  signal c_48_24_1_False_shift: signed(25 downto 0);
  signal c_48_45_0_False_resize: signed(25 downto 0);
  signal c_48_45_0_False_shift: signed(25 downto 0);
  signal c_48_sel: std_logic_vector(1 downto 0);
  signal c_49: signed(24 downto 0);
  signal c_49_19_0_False_resize: signed(24 downto 0);
  signal c_49_19_0_False_shift: signed(24 downto 0);
  signal c_49_27_0_False_resize: signed(24 downto 0);
  signal c_49_27_0_False_shift: signed(24 downto 0);
  signal c_49_14_1_False_resize: signed(24 downto 0);
  signal c_49_14_1_False_shift: signed(24 downto 0);
  signal c_49_sel: std_logic_vector(1 downto 0);
  signal c_50: signed(24 downto 0);
  signal c_51: signed(24 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_52_i0_resize: signed(25 downto 0);
  signal c_52_i1_resize: signed(25 downto 0);
  signal c_52_i0_shift: signed(25 downto 0);
  signal c_52_i1_shift: signed(25 downto 0);
  signal c_52_arith: signed(25 downto 0);
  signal c_52_oshift: signed(25 downto 0);
  signal c_52_sub_sel: std_logic;
  signal c_53: signed(24 downto 0);
  signal c_53_24_0_False_resize: signed(24 downto 0);
  signal c_53_24_0_False_shift: signed(24 downto 0);
  signal c_53_31_4_False_resize: signed(24 downto 0);
  signal c_53_31_4_False_shift: signed(24 downto 0);
  signal c_53_47_2_False_resize: signed(24 downto 0);
  signal c_53_47_2_False_shift: signed(24 downto 0);
  signal c_53_sel: std_logic_vector(1 downto 0);
  signal c_54: signed(20 downto 0);
  signal c_55: signed(20 downto 0);
  signal c_56: signed(24 downto 0);
  signal c_57: signed(24 downto 0);
  signal c_58: signed(24 downto 0);
  signal c_59: signed(24 downto 0);
  signal c_60: signed(25 downto 0);
  signal c_60_55_0_False_resize: signed(25 downto 0);
  signal c_60_55_0_False_shift: signed(25 downto 0);
  signal c_60_43_0_False_resize: signed(25 downto 0);
  signal c_60_43_0_False_shift: signed(25 downto 0);
  signal c_60_59_0_False_resize: signed(25 downto 0);
  signal c_60_59_0_False_shift: signed(25 downto 0);
  signal c_60_sel: std_logic_vector(1 downto 0);
  signal c_61: signed(24 downto 0);
  signal c_62: signed(24 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_63_i0_resize: signed(25 downto 0);
  signal c_63_i1_resize: signed(25 downto 0);
  signal c_63_i0_shift: signed(25 downto 0);
  signal c_63_i1_shift: signed(25 downto 0);
  signal c_63_arith: signed(25 downto 0);
  signal c_63_oshift: signed(25 downto 0);
  signal c_63_sub_sel: std_logic;
  signal c_64: signed(20 downto 0);
  signal c_65: signed(20 downto 0);
  signal c_66: signed(23 downto 0);
  signal c_67: signed(23 downto 0);
  signal c_68: signed(23 downto 0);
  signal c_69: signed(23 downto 0);
  signal c_70: signed(25 downto 0);
  signal c_70_65_7_False_resize: signed(25 downto 0);
  signal c_70_65_7_False_shift: signed(25 downto 0);
  signal c_70_63_0_False_resize: signed(25 downto 0);
  signal c_70_63_0_False_shift: signed(25 downto 0);
  signal c_70_69_0_False_resize: signed(25 downto 0);
  signal c_70_69_0_False_shift: signed(25 downto 0);
  signal c_70_sel: std_logic_vector(1 downto 0);
  signal c_71: signed(24 downto 0);
  signal c_71_3_4_False_resize: signed(24 downto 0);
  signal c_71_3_4_False_shift: signed(24 downto 0);
  signal c_71_3_0_False_resize: signed(24 downto 0);
  signal c_71_3_0_False_shift: signed(24 downto 0);
  signal c_71_3_3_False_resize: signed(24 downto 0);
  signal c_71_3_3_False_shift: signed(24 downto 0);
  signal c_71_sel: std_logic_vector(1 downto 0);
  signal c_72: signed(24 downto 0);
  signal c_73: signed(24 downto 0);
  signal c_74: signed(24 downto 0);
  signal c_75: signed(24 downto 0);
  signal c_76: signed(24 downto 0);
  signal c_77: signed(24 downto 0);
  signal c_78: signed(24 downto 0);
  signal c_79: signed(24 downto 0);
  signal c_80: signed(24 downto 0);
  signal c_81: signed(24 downto 0);
  signal c_82: signed(25 downto 0);
  signal c_82_i0_resize: signed(25 downto 0);
  signal c_82_i1_resize: signed(25 downto 0);
  signal c_82_i0_shift: signed(25 downto 0);
  signal c_82_i1_shift: signed(25 downto 0);
  signal c_82_arith: signed(25 downto 0);
  signal c_82_oshift: signed(25 downto 0);
  signal c_82_sub_sel: std_logic;
  signal c_83: signed(15 downto 0);
  signal c_84: signed(15 downto 0);
  signal c_85: signed(23 downto 0);
  signal c_86: signed(23 downto 0);
  signal c_87: signed(25 downto 0);
  signal c_87_84_0_False_resize: signed(25 downto 0);
  signal c_87_84_0_False_shift: signed(25 downto 0);
  signal c_87_36_0_False_resize: signed(25 downto 0);
  signal c_87_36_0_False_shift: signed(25 downto 0);
  signal c_87_86_0_False_resize: signed(25 downto 0);
  signal c_87_86_0_False_shift: signed(25 downto 0);
  signal c_87_sel: std_logic_vector(1 downto 0);
  signal c_88: signed(23 downto 0);
  signal c_88_9_4_False_resize: signed(23 downto 0);
  signal c_88_9_4_False_shift: signed(23 downto 0);
  signal c_88_9_8_False_resize: signed(23 downto 0);
  signal c_88_9_8_False_shift: signed(23 downto 0);
  signal c_88_7_0_False_resize: signed(23 downto 0);
  signal c_88_7_0_False_shift: signed(23 downto 0);
  signal c_88_sel: std_logic_vector(1 downto 0);
  signal c_89: signed(23 downto 0);
  signal c_90: signed(23 downto 0);
  signal c_91: signed(23 downto 0);
  signal c_92: signed(23 downto 0);
  signal c_93: signed(23 downto 0);
  signal c_94: signed(23 downto 0);
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
  signal c_98: signed(25 downto 0);
  signal c_99: signed(25 downto 0);
  signal c_100: signed(25 downto 0);
  signal c_100_97_0_False_resize: signed(25 downto 0);
  signal c_100_97_0_False_shift: signed(25 downto 0);
  signal c_100_99_0_False_resize: signed(25 downto 0);
  signal c_100_99_0_False_shift: signed(25 downto 0);
  signal c_100_63_0_False_resize: signed(25 downto 0);
  signal c_100_63_0_False_shift: signed(25 downto 0);
  signal c_100_sel: std_logic_vector(1 downto 0);
  signal c_101: signed(25 downto 0);
  signal c_102: signed(25 downto 0);
  signal c_103: signed(25 downto 0);
  signal c_104: signed(25 downto 0);
  signal c_105: signed(25 downto 0);
  signal c_106: signed(25 downto 0);
  signal c_107: signed(25 downto 0);
  signal c_108: signed(25 downto 0);
  signal c_109: signed(25 downto 0);
  signal c_110: signed(25 downto 0);
  signal c_111: signed(25 downto 0);
  signal c_111_106_0_False_resize: signed(25 downto 0);
  signal c_111_106_0_False_shift: signed(25 downto 0);
  signal c_111_110_0_False_resize: signed(25 downto 0);
  signal c_111_110_0_False_shift: signed(25 downto 0);
  signal c_111_82_0_False_resize: signed(25 downto 0);
  signal c_111_82_0_False_shift: signed(25 downto 0);
  signal c_111_sel: std_logic_vector(1 downto 0);
  signal c_112: signed(15 downto 0);
  signal c_113: signed(15 downto 0);
  signal c_114: signed(15 downto 0);
  signal c_115: signed(15 downto 0);
  signal c_116: signed(25 downto 0);
  signal c_117: signed(25 downto 0);
  signal c_118: signed(25 downto 0);
  signal c_118_82_0_False_resize: signed(25 downto 0);
  signal c_118_82_0_False_shift: signed(25 downto 0);
  signal c_118_115_1_False_resize: signed(25 downto 0);
  signal c_118_115_1_False_shift: signed(25 downto 0);
  signal c_118_117_0_False_resize: signed(25 downto 0);
  signal c_118_117_0_False_shift: signed(25 downto 0);
  signal c_118_sel: std_logic_vector(1 downto 0);
  signal c_119: signed(25 downto 0);
  signal c_119_63_0_False_resize: signed(25 downto 0);
  signal c_119_63_0_False_shift: signed(25 downto 0);
  signal c_119_95_0_False_resize: signed(25 downto 0);
  signal c_119_95_0_False_shift: signed(25 downto 0);
  signal c_119_108_0_False_resize: signed(25 downto 0);
  signal c_119_108_0_False_shift: signed(25 downto 0);
  signal c_119_sel: std_logic_vector(1 downto 0);
  signal c_120: signed(25 downto 0);
  signal c_120_52_0_False_resize: signed(25 downto 0);
  signal c_120_52_0_False_shift: signed(25 downto 0);
  signal c_120_67_2_False_resize: signed(25 downto 0);
  signal c_120_67_2_False_shift: signed(25 downto 0);
  signal c_120_sel: std_logic_vector(0 downto 0);
  signal c_121: signed(25 downto 0);
  signal c_121_95_1_False_resize: signed(25 downto 0);
  signal c_121_95_1_False_shift: signed(25 downto 0);
  signal c_121_108_0_False_resize: signed(25 downto 0);
  signal c_121_108_0_False_shift: signed(25 downto 0);
  signal c_121_97_1_False_resize: signed(25 downto 0);
  signal c_121_97_1_False_shift: signed(25 downto 0);
  signal c_121_sel: std_logic_vector(1 downto 0);
  signal c_122: signed(24 downto 0);
  signal c_123: signed(24 downto 0);
  signal c_124: signed(25 downto 0);
  signal c_124_43_0_False_resize: signed(25 downto 0);
  signal c_124_43_0_False_shift: signed(25 downto 0);
  signal c_124_59_0_False_resize: signed(25 downto 0);
  signal c_124_59_0_False_shift: signed(25 downto 0);
  signal c_124_123_1_False_resize: signed(25 downto 0);
  signal c_124_123_1_False_shift: signed(25 downto 0);
  signal c_124_sel: std_logic_vector(1 downto 0);
  signal c_125: signed(23 downto 0);
  signal c_126: signed(23 downto 0);
  signal c_127: signed(24 downto 0);
  signal c_128: signed(24 downto 0);
  signal c_129: signed(25 downto 0);
  signal c_129_128_0_False_resize: signed(25 downto 0);
  signal c_129_128_0_False_shift: signed(25 downto 0);
  signal c_129_95_0_False_resize: signed(25 downto 0);
  signal c_129_95_0_False_shift: signed(25 downto 0);
  signal c_129_126_0_False_resize: signed(25 downto 0);
  signal c_129_126_0_False_shift: signed(25 downto 0);
  signal c_129_sel: std_logic_vector(1 downto 0);
  signal c_130: signed(23 downto 0);
  signal c_131: signed(23 downto 0);
  signal c_132: signed(25 downto 0);
  signal c_133: signed(25 downto 0);
  signal c_134: signed(25 downto 0);
  signal c_135: signed(25 downto 0);
  signal c_136: signed(25 downto 0);
  signal c_136_131_0_False_resize: signed(25 downto 0);
  signal c_136_131_0_False_shift: signed(25 downto 0);
  signal c_136_135_1_False_resize: signed(25 downto 0);
  signal c_136_135_1_False_shift: signed(25 downto 0);
  signal c_136_82_0_False_resize: signed(25 downto 0);
  signal c_136_82_0_False_shift: signed(25 downto 0);
  signal c_136_sel: std_logic_vector(1 downto 0);
  signal c_137: signed(25 downto 0);
  signal c_137_126_2_False_resize: signed(25 downto 0);
  signal c_137_126_2_False_shift: signed(25 downto 0);
  signal c_137_104_0_False_resize: signed(25 downto 0);
  signal c_137_104_0_False_shift: signed(25 downto 0);
  signal c_137_63_0_False_resize: signed(25 downto 0);
  signal c_137_63_0_False_shift: signed(25 downto 0);
  signal c_137_sel: std_logic_vector(1 downto 0);
  signal c_138: signed(25 downto 0);
  signal c_139: signed(25 downto 0);
  signal c_140: signed(25 downto 0);
  signal c_140_resize: signed(25 downto 0);
  signal c_141: signed(25 downto 0);
  signal c_141_resize: signed(25 downto 0);
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
  signal c_150_resize: signed(25 downto 0);
  signal c_151: signed(25 downto 0);
  signal c_152: signed(25 downto 0);
  signal c_153: signed(25 downto 0);
  signal c_153_resize: signed(25 downto 0);
  signal c_154: signed(25 downto 0);
  signal c_155: signed(25 downto 0);
  signal c_156: signed(25 downto 0);
  signal c_157: signed(25 downto 0);
  signal c_158: signed(25 downto 0);
  signal c_158_resize: signed(25 downto 0);
  signal c_159: signed(25 downto 0);
  signal c_160: signed(25 downto 0);
  signal c_161: signed(25 downto 0);
  signal c_161_resize: signed(25 downto 0);
  signal c_162: signed(25 downto 0);
  signal c_162_resize: signed(25 downto 0);
  signal c_163: signed(25 downto 0);
  signal c_164: signed(25 downto 0);
  signal c_165: signed(25 downto 0);
  signal c_165_resize: signed(25 downto 0);
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
  -- output node 2 with id 142
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_142);
    end if;
  end process;
  -- output node 3 with id 145
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_145);
    end if;
  end process;
  -- output node 4 with id 150
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_150);
    end if;
  end process;
  -- output node 5 with id 153
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_153);
    end if;
  end process;
  -- output node 6 with id 158
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_158);
    end if;
  end process;
  -- output node 7 with id 161
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_161);
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
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[8], [1], [2]]
  c_1_0_0_False_resize <= resize(c_0, 19);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 19);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  c_1_0_3_False_resize <= resize(c_0, 19);
  c_1_0_3_False_shift <= shift_left(c_1_0_3_False_resize, 3);
  with config_select_1 select c_1_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "00" => c_1 <= c_1_0_0_False_shift;
        when "01" => c_1 <= c_1_0_1_False_shift;
        when others => c_1 <= c_1_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[31], [3], [9]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 19,
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
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[31], [16], [128]]
  c_5_4_4_False_resize <= resize(c_4, 23);
  c_5_4_4_False_shift <= shift_left(c_5_4_4_False_resize, 4);
  c_5_3_0_False_resize <= resize(c_3, 23);
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  c_5_4_7_False_resize <= resize(c_4, 23);
  c_5_4_7_False_shift <= shift_left(c_5_4_7_False_resize, 7);
  with config_select_3 select c_5_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_4_4_False_shift;
        when "01" => c_5 <= c_5_3_0_False_shift;
        when others => c_5 <= c_5_4_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[128], [1], [9]]
  c_6_4_0_False_resize <= resize(c_4, 23);
  c_6_4_0_False_shift <= shift_left(c_6_4_0_False_resize, 0);
  c_6_4_7_False_resize <= resize(c_4, 23);
  c_6_4_7_False_shift <= shift_left(c_6_4_7_False_resize, 7);
  c_6_3_0_False_resize <= resize(c_3, 23);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_4_0_False_shift;
        when "01" => c_6 <= c_6_4_7_False_shift;
        when others => c_6 <= c_6_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[159], [17], [119]]
  with config_select_4 select c_7_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
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
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 9 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 10 and associated fundamentals [[1], [17], [2]]
  c_10_9_0_False_resize <= resize(c_9, 21);
  c_10_9_0_False_shift <= shift_left(c_10_9_0_False_resize, 0);
  c_10_9_1_False_resize <= resize(c_9, 21);
  c_10_9_1_False_shift <= shift_left(c_10_9_1_False_resize, 1);
  c_10_7_0_False_resize <= c_7(20 downto 0);
  c_10_7_0_False_shift <= shift_left(c_10_7_0_False_resize, 0);
  with config_select_5 select c_10_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_9_0_False_shift;
        when "01" => c_10 <= c_10_9_1_False_shift;
        when others => c_10 <= c_10_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[31], [3], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[31], [3], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 13 and associated fundamentals [[159], [17], [36]]
  c_13_7_0_False_resize <= c_7;
  c_13_7_0_False_shift <= shift_left(c_13_7_0_False_resize, 0);
  c_13_12_2_False_resize <= resize(c_12, 24);
  c_13_12_2_False_shift <= shift_left(c_13_12_2_False_resize, 2);
  with config_select_5 select c_13_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_7_0_False_shift;
        when others => c_13 <= c_13_12_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 6 with id 14 and associated fundamentals [[167], [153], [52]]
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 24,
      w_o => 24,
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
      x_i => c_10,
      y_i => c_13,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 15 and associated fundamentals [[32], [136], [9]]
  c_15_12_0_False_resize <= resize(c_12, 24);
  c_15_12_0_False_shift <= shift_left(c_15_12_0_False_resize, 0);
  c_15_7_3_False_resize <= c_7;
  c_15_7_3_False_shift <= shift_left(c_15_7_3_False_resize, 3);
  c_15_9_5_False_resize <= resize(c_9, 24);
  c_15_9_5_False_shift <= shift_left(c_15_9_5_False_resize, 5);
  with config_select_5 select c_15_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "00" => c_15 <= c_15_12_0_False_shift;
        when "01" => c_15 <= c_15_7_3_False_shift;
        when others => c_15 <= c_15_9_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 16 and associated fundamentals [[1], [12], [119]]
  c_16_9_0_False_resize <= resize(c_9, 23);
  c_16_9_0_False_shift <= shift_left(c_16_9_0_False_resize, 0);
  c_16_12_2_False_resize <= resize(c_12, 23);
  c_16_12_2_False_shift <= shift_left(c_16_12_2_False_resize, 2);
  c_16_7_0_False_resize <= c_7(22 downto 0);
  c_16_7_0_False_shift <= shift_left(c_16_7_0_False_resize, 0);
  with config_select_5 select c_16_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_9_0_False_shift;
        when "01" => c_16 <= c_16_12_2_False_shift;
        when others => c_16 <= c_16_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 6 with id 17 and associated fundamentals [[28], [88], [-467]]
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
      w_o => 25,
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
      x_i => c_15,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 19 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 20 and associated fundamentals [[112], [32], [52]]
  c_20_14_0_False_resize <= c_14(22 downto 0);
  c_20_14_0_False_shift <= shift_left(c_20_14_0_False_resize, 0);
  c_20_17_2_False_resize <= c_17(22 downto 0);
  c_20_17_2_False_shift <= shift_left(c_20_17_2_False_resize, 2);
  c_20_19_5_False_resize <= resize(c_19, 23);
  c_20_19_5_False_shift <= shift_left(c_20_19_5_False_resize, 5);
  with config_select_7 select c_20_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_14_0_False_shift;
        when "01" => c_20 <= c_20_17_2_False_shift;
        when others => c_20 <= c_20_19_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[159], [17], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 22 and associated fundamentals [[159], [17], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 23 and associated fundamentals [[167], [136], [119]]
  c_23_22_3_False_resize <= c_22;
  c_23_22_3_False_shift <= shift_left(c_23_22_3_False_resize, 3);
  c_23_22_0_False_resize <= c_22;
  c_23_22_0_False_shift <= shift_left(c_23_22_0_False_resize, 0);
  c_23_14_0_False_resize <= c_14;
  c_23_14_0_False_shift <= shift_left(c_23_14_0_False_resize, 0);
  with config_select_7 select c_23_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "00" => c_23 <= c_23_22_3_False_shift;
        when "01" => c_23 <= c_23_22_0_False_shift;
        when others => c_23 <= c_23_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 24 and associated fundamentals [[281], [264], [327]]
  with config_select_8 select c_24_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
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
      sub_i => c_24_sub_sel,
      x_i => c_20,
      y_i => c_23,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 25 and associated fundamentals [[28], [17], [476]]
  c_25_22_2_False_resize <= resize(c_22, 25);
  c_25_22_2_False_shift <= shift_left(c_25_22_2_False_resize, 2);
  c_25_22_0_False_resize <= resize(c_22, 25);
  c_25_22_0_False_shift <= shift_left(c_25_22_0_False_resize, 0);
  c_25_17_0_False_resize <= c_17;
  c_25_17_0_False_shift <= shift_left(c_25_17_0_False_resize, 0);
  with config_select_7 select c_25_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_22_2_False_shift;
        when "01" => c_25 <= c_25_22_0_False_shift;
        when others => c_25 <= c_25_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 26 and associated fundamentals [[31], [3], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[31], [3], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 28 and associated fundamentals [[167], [96], [288]]
  c_28_27_5_False_resize <= resize(c_27, 25);
  c_28_27_5_False_shift <= shift_left(c_28_27_5_False_resize, 5);
  c_28_14_0_False_resize <= resize(c_14, 25);
  c_28_14_0_False_shift <= shift_left(c_28_14_0_False_resize, 0);
  with config_select_7 select c_28_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "0" => c_28 <= c_28_27_5_False_shift;
        when others => c_28 <= c_28_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 8 with id 29 and associated fundamentals [[195], [113], [764]]
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
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
      x_i => c_25,
      y_i => c_28,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 30 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 31 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 32 and associated fundamentals [[195], [8], [764]]
  c_32_31_3_False_resize <= resize(c_31, 26);
  c_32_31_3_False_shift <= shift_left(c_32_31_3_False_resize, 3);
  c_32_29_0_False_resize <= c_29;
  c_32_29_0_False_shift <= shift_left(c_32_29_0_False_resize, 0);
  with config_select_9 select c_32_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "0" => c_32 <= c_32_31_3_False_shift;
        when others => c_32 <= c_32_29_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 33 and associated fundamentals [[224], [17], [4]]
  c_33_19_2_False_resize <= resize(c_19, 24);
  c_33_19_2_False_shift <= shift_left(c_33_19_2_False_resize, 2);
  c_33_22_0_False_resize <= c_22;
  c_33_22_0_False_shift <= shift_left(c_33_22_0_False_resize, 0);
  c_33_17_3_False_resize <= c_17(23 downto 0);
  c_33_17_3_False_shift <= shift_left(c_33_17_3_False_resize, 3);
  with config_select_7 select c_33_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "00" => c_33 <= c_33_19_2_False_shift;
        when "01" => c_33 <= c_33_22_0_False_shift;
        when others => c_33 <= c_33_17_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 34 and associated fundamentals [[224], [17], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 35 and associated fundamentals [[224], [17], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 36 and associated fundamentals [[643], [-26], [772]]
  with config_select_10 select c_36_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_36: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
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
      sub_i => c_36_sub_sel,
      x_i => c_32,
      y_i => c_35,
      z_o => c_36_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_36_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 37 and associated fundamentals [[62], [6], [52]]
  c_37_14_0_False_resize <= c_14(21 downto 0);
  c_37_14_0_False_shift <= shift_left(c_37_14_0_False_resize, 0);
  c_37_27_1_False_resize <= resize(c_27, 22);
  c_37_27_1_False_shift <= shift_left(c_37_27_1_False_resize, 1);
  with config_select_7 select c_37_sel <= 
    "0" when "10",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "0" => c_37 <= c_37_14_0_False_shift;
        when others => c_37 <= c_37_27_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 38 and associated fundamentals [[31], [3], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 39 and associated fundamentals [[31], [3], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 40 and associated fundamentals [[195], [2], [9]]
  c_40_29_0_False_resize <= c_29(23 downto 0);
  c_40_29_0_False_shift <= shift_left(c_40_29_0_False_resize, 0);
  c_40_39_0_False_resize <= resize(c_39, 24);
  c_40_39_0_False_shift <= shift_left(c_40_39_0_False_resize, 0);
  c_40_31_1_False_resize <= resize(c_31, 24);
  c_40_31_1_False_shift <= shift_left(c_40_31_1_False_resize, 1);
  with config_select_9 select c_40_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "00" => c_40 <= c_40_29_0_False_shift;
        when "01" => c_40 <= c_40_39_0_False_shift;
        when others => c_40 <= c_40_31_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 41 and associated fundamentals [[62], [6], [52]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 42 and associated fundamentals [[62], [6], [52]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 10 with id 43 and associated fundamentals [[797], [94], [823]]
  inst_adder_node_43: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 24,
      w_o => 26,
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
      x_i => c_42,
      y_i => c_40,
      z_o => c_43_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_43_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 44 and associated fundamentals [[159], [17], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 45 and associated fundamentals [[159], [17], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 46 and associated fundamentals [[167], [153], [52]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 47 and associated fundamentals [[167], [153], [52]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 48 and associated fundamentals [[159], [528], [416]]
  c_48_47_3_False_resize <= resize(c_47, 26);
  c_48_47_3_False_shift <= shift_left(c_48_47_3_False_resize, 3);
  c_48_24_1_False_resize <= resize(c_24, 26);
  c_48_24_1_False_shift <= shift_left(c_48_24_1_False_resize, 1);
  c_48_45_0_False_resize <= resize(c_45, 26);
  c_48_45_0_False_shift <= shift_left(c_48_45_0_False_resize, 0);
  with config_select_9 select c_48_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "00" => c_48 <= c_48_47_3_False_shift;
        when "01" => c_48 <= c_48_24_1_False_shift;
        when others => c_48 <= c_48_45_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 49 and associated fundamentals [[334], [3], [1]]
  c_49_19_0_False_resize <= resize(c_19, 25);
  c_49_19_0_False_shift <= shift_left(c_49_19_0_False_resize, 0);
  c_49_27_0_False_resize <= resize(c_27, 25);
  c_49_27_0_False_shift <= shift_left(c_49_27_0_False_resize, 0);
  c_49_14_1_False_resize <= resize(c_14, 25);
  c_49_14_1_False_shift <= shift_left(c_49_14_1_False_resize, 1);
  with config_select_7 select c_49_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_49_sel is
        when "00" => c_49 <= c_49_19_0_False_shift;
        when "01" => c_49 <= c_49_27_0_False_shift;
        when others => c_49 <= c_49_14_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 50 and associated fundamentals [[334], [3], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 51 and associated fundamentals [[334], [3], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 52 and associated fundamentals [[493], [525], [415]]
  with config_select_10 select c_52_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_52: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
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
      sub_i => c_52_sub_sel,
      x_i => c_48,
      y_i => c_51,
      z_o => c_52_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_52_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 53 and associated fundamentals [[16], [264], [208]]
  c_53_24_0_False_resize <= c_24;
  c_53_24_0_False_shift <= shift_left(c_53_24_0_False_resize, 0);
  c_53_31_4_False_resize <= resize(c_31, 25);
  c_53_31_4_False_shift <= shift_left(c_53_31_4_False_resize, 4);
  c_53_47_2_False_resize <= resize(c_47, 25);
  c_53_47_2_False_shift <= shift_left(c_53_47_2_False_resize, 2);
  with config_select_9 select c_53_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_53_sel is
        when "00" => c_53 <= c_53_24_0_False_shift;
        when "01" => c_53 <= c_53_31_4_False_shift;
        when others => c_53 <= c_53_47_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 54 and associated fundamentals [[31], [3], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 55 and associated fundamentals [[31], [3], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 56 and associated fundamentals [[28], [88], [-467]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 57 and associated fundamentals [[28], [88], [-467]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 58 and associated fundamentals [[28], [88], [-467]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 59 and associated fundamentals [[28], [88], [-467]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 60 and associated fundamentals [[797], [3], [-467]]
  c_60_55_0_False_resize <= resize(c_55, 26);
  c_60_55_0_False_shift <= shift_left(c_60_55_0_False_resize, 0);
  c_60_43_0_False_resize <= c_43;
  c_60_43_0_False_shift <= shift_left(c_60_43_0_False_resize, 0);
  c_60_59_0_False_resize <= resize(c_59, 26);
  c_60_59_0_False_shift <= shift_left(c_60_59_0_False_resize, 0);
  with config_select_11 select c_60_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_60_sel is
        when "00" => c_60 <= c_60_55_0_False_shift;
        when "01" => c_60 <= c_60_43_0_False_shift;
        when others => c_60 <= c_60_59_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 61 and associated fundamentals [[16], [264], [208]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 62 and associated fundamentals [[16], [264], [208]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 63 and associated fundamentals [[813], [261], [675]]
  with config_select_12 select c_63_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_63: entity work.adder_node
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
      sub_i => c_63_sub_sel,
      x_i => c_62,
      y_i => c_60,
      z_o => c_63_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_63_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 64 and associated fundamentals [[31], [3], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 65 and associated fundamentals [[31], [3], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 66 and associated fundamentals [[159], [17], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 67 and associated fundamentals [[159], [17], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 68 and associated fundamentals [[159], [17], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 69 and associated fundamentals [[159], [17], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 70 and associated fundamentals [[159], [384], [675]]
  c_70_65_7_False_resize <= resize(c_65, 26);
  c_70_65_7_False_shift <= shift_left(c_70_65_7_False_resize, 7);
  c_70_63_0_False_resize <= c_63;
  c_70_63_0_False_shift <= shift_left(c_70_63_0_False_resize, 0);
  c_70_69_0_False_resize <= resize(c_69, 26);
  c_70_69_0_False_shift <= shift_left(c_70_69_0_False_resize, 0);
  with config_select_13 select c_70_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_70_sel is
        when "00" => c_70 <= c_70_65_7_False_shift;
        when "01" => c_70 <= c_70_63_0_False_shift;
        when others => c_70 <= c_70_69_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 71 and associated fundamentals [[496], [3], [72]]
  c_71_3_4_False_resize <= resize(c_3, 25);
  c_71_3_4_False_shift <= shift_left(c_71_3_4_False_resize, 4);
  c_71_3_0_False_resize <= resize(c_3, 25);
  c_71_3_0_False_shift <= shift_left(c_71_3_0_False_resize, 0);
  c_71_3_3_False_resize <= resize(c_3, 25);
  c_71_3_3_False_shift <= shift_left(c_71_3_3_False_resize, 3);
  with config_select_3 select c_71_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_71_sel is
        when "00" => c_71 <= c_71_3_4_False_shift;
        when "01" => c_71 <= c_71_3_0_False_shift;
        when others => c_71 <= c_71_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 72 and associated fundamentals [[496], [3], [72]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 73 and associated fundamentals [[496], [3], [72]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_72 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 74 and associated fundamentals [[496], [3], [72]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 75 and associated fundamentals [[496], [3], [72]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 76 and associated fundamentals [[496], [3], [72]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 77 and associated fundamentals [[496], [3], [72]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 78 and associated fundamentals [[496], [3], [72]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 79 and associated fundamentals [[496], [3], [72]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 80 and associated fundamentals [[496], [3], [72]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 81 and associated fundamentals [[496], [3], [72]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_80 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 82 and associated fundamentals [[655], [381], [747]]
  with config_select_14 select c_82_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
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
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_82_sub_sel,
      x_i => c_70,
      y_i => c_81,
      z_o => c_82_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_82_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 83 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 84 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_83 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 85 and associated fundamentals [[167], [153], [52]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 86 and associated fundamentals [[167], [153], [52]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_85 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 87 and associated fundamentals [[167], [1], [772]]
  c_87_84_0_False_resize <= resize(c_84, 26);
  c_87_84_0_False_shift <= shift_left(c_87_84_0_False_resize, 0);
  c_87_36_0_False_resize <= c_36;
  c_87_36_0_False_shift <= shift_left(c_87_36_0_False_resize, 0);
  c_87_86_0_False_resize <= resize(c_86, 26);
  c_87_86_0_False_shift <= shift_left(c_87_86_0_False_resize, 0);
  with config_select_11 select c_87_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_87_sel is
        when "00" => c_87 <= c_87_84_0_False_shift;
        when "01" => c_87 <= c_87_36_0_False_shift;
        when others => c_87 <= c_87_86_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 88 and associated fundamentals [[159], [256], [16]]
  c_88_9_4_False_resize <= resize(c_9, 24);
  c_88_9_4_False_shift <= shift_left(c_88_9_4_False_resize, 4);
  c_88_9_8_False_resize <= resize(c_9, 24);
  c_88_9_8_False_shift <= shift_left(c_88_9_8_False_resize, 8);
  c_88_7_0_False_resize <= c_7;
  c_88_7_0_False_shift <= shift_left(c_88_7_0_False_resize, 0);
  with config_select_5 select c_88_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_88_sel is
        when "00" => c_88 <= c_88_9_4_False_shift;
        when "01" => c_88 <= c_88_9_8_False_shift;
        when others => c_88 <= c_88_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 89 and associated fundamentals [[159], [256], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_88 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 90 and associated fundamentals [[159], [256], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_89 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 91 and associated fundamentals [[159], [256], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_90 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 92 and associated fundamentals [[159], [256], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 93 and associated fundamentals [[159], [256], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_92 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 94 and associated fundamentals [[159], [256], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_93 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 95 and associated fundamentals [[-151], [513], [804]]
  with config_select_12 select c_95_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_95: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
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
  -- node of type 'register' in stage 11 with id 96 and associated fundamentals [[28], [88], [-467]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 97 and associated fundamentals [[28], [88], [-467]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_96 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 98 and associated fundamentals [[797], [94], [823]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 99 and associated fundamentals [[797], [94], [823]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_98 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 100 and associated fundamentals [[813], [88], [823]]
  c_100_97_0_False_resize <= resize(c_97, 26);
  c_100_97_0_False_shift <= shift_left(c_100_97_0_False_resize, 0);
  c_100_99_0_False_resize <= c_99;
  c_100_99_0_False_shift <= shift_left(c_100_99_0_False_resize, 0);
  c_100_63_0_False_resize <= c_63;
  c_100_63_0_False_shift <= shift_left(c_100_63_0_False_resize, 0);
  with config_select_13 select c_100_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_100_sel is
        when "00" => c_100 <= c_100_97_0_False_shift;
        when "01" => c_100 <= c_100_99_0_False_shift;
        when others => c_100 <= c_100_63_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 101 and associated fundamentals [[195], [113], [764]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 102 and associated fundamentals [[195], [113], [764]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_101 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 103 and associated fundamentals [[195], [113], [764]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_102 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 104 and associated fundamentals [[195], [113], [764]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_103 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 105 and associated fundamentals [[195], [113], [764]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_104 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 106 and associated fundamentals [[195], [113], [764]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_105 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 107 and associated fundamentals [[643], [-26], [772]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 108 and associated fundamentals [[643], [-26], [772]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_108 <= c_107 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 109 and associated fundamentals [[643], [-26], [772]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_109 <= c_108 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 110 and associated fundamentals [[643], [-26], [772]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_110 <= c_109 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 111 and associated fundamentals [[655], [113], [772]]
  c_111_106_0_False_resize <= c_106;
  c_111_106_0_False_shift <= shift_left(c_111_106_0_False_resize, 0);
  c_111_110_0_False_resize <= c_110;
  c_111_110_0_False_shift <= shift_left(c_111_110_0_False_resize, 0);
  c_111_82_0_False_resize <= c_82;
  c_111_82_0_False_shift <= shift_left(c_111_82_0_False_resize, 0);
  with config_select_15 select c_111_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_111_sel is
        when "00" => c_111 <= c_111_106_0_False_shift;
        when "01" => c_111 <= c_111_110_0_False_shift;
        when others => c_111 <= c_111_82_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 112 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_84 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 113 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_112 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 114 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_113 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 115 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_114 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 116 and associated fundamentals [[797], [94], [823]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_116 <= c_99 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 117 and associated fundamentals [[797], [94], [823]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_117 <= c_116 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 118 and associated fundamentals [[797], [2], [747]]
  c_118_82_0_False_resize <= c_82;
  c_118_82_0_False_shift <= shift_left(c_118_82_0_False_resize, 0);
  c_118_115_1_False_resize <= resize(c_115, 26);
  c_118_115_1_False_shift <= shift_left(c_118_115_1_False_resize, 1);
  c_118_117_0_False_resize <= c_117;
  c_118_117_0_False_shift <= shift_left(c_118_117_0_False_resize, 0);
  with config_select_15 select c_118_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_118_sel is
        when "00" => c_118 <= c_118_82_0_False_shift;
        when "01" => c_118 <= c_118_115_1_False_shift;
        when others => c_118 <= c_118_117_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 119 and associated fundamentals [[643], [513], [675]]
  c_119_63_0_False_resize <= c_63;
  c_119_63_0_False_shift <= shift_left(c_119_63_0_False_resize, 0);
  c_119_95_0_False_resize <= c_95;
  c_119_95_0_False_shift <= shift_left(c_119_95_0_False_resize, 0);
  c_119_108_0_False_resize <= c_108;
  c_119_108_0_False_shift <= shift_left(c_119_108_0_False_resize, 0);
  with config_select_13 select c_119_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_119_sel is
        when "00" => c_119 <= c_119_63_0_False_shift;
        when "01" => c_119 <= c_119_95_0_False_shift;
        when others => c_119 <= c_119_108_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 120 and associated fundamentals [[636], [525], [415]]
  c_120_52_0_False_resize <= c_52;
  c_120_52_0_False_shift <= shift_left(c_120_52_0_False_resize, 0);
  c_120_67_2_False_resize <= resize(c_67, 26);
  c_120_67_2_False_shift <= shift_left(c_120_67_2_False_resize, 2);
  with config_select_11 select c_120_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_120_sel is
        when "0" => c_120 <= c_120_52_0_False_shift;
        when others => c_120 <= c_120_67_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 121 and associated fundamentals [[-302], [-26], [-934]]
  c_121_95_1_False_resize <= c_95;
  c_121_95_1_False_shift <= shift_left(c_121_95_1_False_resize, 1);
  c_121_108_0_False_resize <= c_108;
  c_121_108_0_False_shift <= shift_left(c_121_108_0_False_resize, 0);
  c_121_97_1_False_resize <= resize(c_97, 26);
  c_121_97_1_False_shift <= shift_left(c_121_97_1_False_resize, 1);
  with config_select_13 select c_121_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_121_sel is
        when "00" => c_121 <= c_121_95_1_False_shift;
        when "01" => c_121 <= c_121_108_0_False_shift;
        when others => c_121 <= c_121_97_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 122 and associated fundamentals [[281], [264], [327]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_122 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 123 and associated fundamentals [[281], [264], [327]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_123 <= c_122 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 124 and associated fundamentals [[28], [94], [654]]
  c_124_43_0_False_resize <= c_43;
  c_124_43_0_False_shift <= shift_left(c_124_43_0_False_resize, 0);
  c_124_59_0_False_resize <= resize(c_59, 26);
  c_124_59_0_False_shift <= shift_left(c_124_59_0_False_resize, 0);
  c_124_123_1_False_resize <= resize(c_123, 26);
  c_124_123_1_False_shift <= shift_left(c_124_123_1_False_resize, 1);
  with config_select_11 select c_124_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_124_sel is
        when "00" => c_124 <= c_124_43_0_False_shift;
        when "01" => c_124 <= c_124_59_0_False_shift;
        when others => c_124 <= c_124_123_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 125 and associated fundamentals [[167], [153], [52]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_125 <= c_86 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 126 and associated fundamentals [[167], [153], [52]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_126 <= c_125 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 127 and associated fundamentals [[281], [264], [327]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_127 <= c_123 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 128 and associated fundamentals [[281], [264], [327]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_128 <= c_127 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 129 and associated fundamentals [[281], [153], [804]]
  c_129_128_0_False_resize <= resize(c_128, 26);
  c_129_128_0_False_shift <= shift_left(c_129_128_0_False_resize, 0);
  c_129_95_0_False_resize <= c_95;
  c_129_95_0_False_shift <= shift_left(c_129_95_0_False_resize, 0);
  c_129_126_0_False_resize <= resize(c_126, 26);
  c_129_126_0_False_shift <= shift_left(c_129_126_0_False_resize, 0);
  with config_select_13 select c_129_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_129_sel is
        when "00" => c_129 <= c_129_128_0_False_shift;
        when "01" => c_129 <= c_129_95_0_False_shift;
        when others => c_129 <= c_129_126_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 130 and associated fundamentals [[159], [17], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_130 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 131 and associated fundamentals [[159], [17], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_131 <= c_130 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 132 and associated fundamentals [[493], [525], [415]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_132 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 133 and associated fundamentals [[493], [525], [415]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_133 <= c_132 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 134 and associated fundamentals [[493], [525], [415]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_134 <= c_133 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 135 and associated fundamentals [[493], [525], [415]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_135 <= c_134 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 136 and associated fundamentals [[986], [381], [119]]
  c_136_131_0_False_resize <= resize(c_131, 26);
  c_136_131_0_False_shift <= shift_left(c_136_131_0_False_resize, 0);
  c_136_135_1_False_resize <= c_135;
  c_136_135_1_False_shift <= shift_left(c_136_135_1_False_resize, 1);
  c_136_82_0_False_resize <= c_82;
  c_136_82_0_False_shift <= shift_left(c_136_82_0_False_resize, 0);
  with config_select_15 select c_136_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_136_sel is
        when "00" => c_136 <= c_136_131_0_False_shift;
        when "01" => c_136 <= c_136_135_1_False_shift;
        when others => c_136 <= c_136_82_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 137 and associated fundamentals [[668], [261], [764]]
  c_137_126_2_False_resize <= resize(c_126, 26);
  c_137_126_2_False_shift <= shift_left(c_137_126_2_False_resize, 2);
  c_137_104_0_False_resize <= c_104;
  c_137_104_0_False_shift <= shift_left(c_137_104_0_False_resize, 0);
  c_137_63_0_False_resize <= c_63;
  c_137_63_0_False_shift <= shift_left(c_137_63_0_False_resize, 0);
  with config_select_13 select c_137_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_137_sel is
        when "00" => c_137 <= c_137_126_2_False_shift;
        when "01" => c_137 <= c_137_104_0_False_shift;
        when others => c_137 <= c_137_63_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 138 and associated fundamentals [[813], [88], [823]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_138 <= c_100 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 139 and associated fundamentals [[813], [88], [823]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_139 <= c_138 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 140 and associated fundamentals [[813], [88], [823]]
  c_140_resize <= c_139;
  c_140 <= shift_left(c_140_resize, 0);
  -- node of type 'output' in stage 15 with id 141 and associated fundamentals [[655], [113], [772]]
  c_141_resize <= c_111;
  c_141 <= shift_left(c_141_resize, 0);
  -- node of type 'output' in stage 15 with id 142 and associated fundamentals [[797], [2], [747]]
  c_142_resize <= c_118;
  c_142 <= shift_left(c_142_resize, 0);
  -- node of type 'register' in stage 14 with id 143 and associated fundamentals [[643], [513], [675]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_143 <= c_119 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 144 and associated fundamentals [[643], [513], [675]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_144 <= c_143 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 145 and associated fundamentals [[643], [513], [675]]
  c_145_resize <= c_144;
  c_145 <= shift_left(c_145_resize, 0);
  -- node of type 'register' in stage 12 with id 146 and associated fundamentals [[636], [525], [415]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_146 <= c_120 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 147 and associated fundamentals [[636], [525], [415]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_147 <= c_146 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 148 and associated fundamentals [[636], [525], [415]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_148 <= c_147 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 149 and associated fundamentals [[636], [525], [415]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_149 <= c_148 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 150 and associated fundamentals [[636], [525], [415]]
  c_150_resize <= c_149;
  c_150 <= shift_left(c_150_resize, 0);
  -- node of type 'register' in stage 14 with id 151 and associated fundamentals [[-302], [-26], [-934]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_151 <= c_121 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 152 and associated fundamentals [[-302], [-26], [-934]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_152 <= c_151 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 153 and associated fundamentals [[302], [26], [934]]
  c_153_resize <= c_152;
  c_153 <= -shift_left(c_153_resize, 0);
  -- node of type 'register' in stage 12 with id 154 and associated fundamentals [[28], [94], [654]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_154 <= c_124 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 155 and associated fundamentals [[28], [94], [654]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_155 <= c_154 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 156 and associated fundamentals [[28], [94], [654]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_156 <= c_155 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 157 and associated fundamentals [[28], [94], [654]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_157 <= c_156 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 158 and associated fundamentals [[28], [94], [654]]
  c_158_resize <= c_157;
  c_158 <= shift_left(c_158_resize, 0);
  -- node of type 'register' in stage 14 with id 159 and associated fundamentals [[281], [153], [804]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_159 <= c_129 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 160 and associated fundamentals [[281], [153], [804]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_160 <= c_159 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 161 and associated fundamentals [[281], [153], [804]]
  c_161_resize <= c_160;
  c_161 <= shift_left(c_161_resize, 0);
  -- node of type 'output' in stage 15 with id 162 and associated fundamentals [[986], [381], [119]]
  c_162_resize <= c_136;
  c_162 <= shift_left(c_162_resize, 0);
  -- node of type 'register' in stage 14 with id 163 and associated fundamentals [[668], [261], [764]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_163 <= c_137 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 164 and associated fundamentals [[668], [261], [764]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_164 <= c_163 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 165 and associated fundamentals [[668], [261], [764]]
  c_165_resize <= c_164;
  c_165 <= shift_left(c_165_resize, 0);
end architecture;
