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
    y_9: out std_logic_vector(22 downto 0);
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
  signal c_4: signed(18 downto 0);
  signal c_4_0_0_False_resize: signed(18 downto 0);
  signal c_4_0_0_False_shift: signed(18 downto 0);
  signal c_4_0_3_False_resize: signed(18 downto 0);
  signal c_4_0_3_False_shift: signed(18 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_7: signed(20 downto 0);
  signal c_7_3_0_False_resize: signed(20 downto 0);
  signal c_7_3_0_False_shift: signed(20 downto 0);
  signal c_7_6_0_False_resize: signed(20 downto 0);
  signal c_7_6_0_False_shift: signed(20 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(18 downto 0);
  signal c_9: signed(18 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_i0_resize: signed(22 downto 0);
  signal c_10_i1_resize: signed(22 downto 0);
  signal c_10_i0_shift: signed(22 downto 0);
  signal c_10_i1_shift: signed(22 downto 0);
  signal c_10_arith: signed(22 downto 0);
  signal c_10_oshift: signed(22 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(20 downto 0);
  signal c_12: signed(20 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_12_4_False_resize: signed(23 downto 0);
  signal c_13_12_4_False_shift: signed(23 downto 0);
  signal c_13_10_0_False_resize: signed(23 downto 0);
  signal c_13_10_0_False_shift: signed(23 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(15 downto 0);
  signal c_15: signed(15 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_12_0_False_resize: signed(23 downto 0);
  signal c_16_12_0_False_shift: signed(23 downto 0);
  signal c_16_15_3_False_resize: signed(23 downto 0);
  signal c_16_15_3_False_shift: signed(23 downto 0);
  signal c_16_10_3_False_resize: signed(23 downto 0);
  signal c_16_10_3_False_shift: signed(23 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_i0_resize: signed(23 downto 0);
  signal c_17_i1_resize: signed(23 downto 0);
  signal c_17_i0_shift: signed(23 downto 0);
  signal c_17_i1_shift: signed(23 downto 0);
  signal c_17_arith: signed(23 downto 0);
  signal c_17_oshift: signed(23 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(22 downto 0);
  signal c_18_12_0_False_resize: signed(22 downto 0);
  signal c_18_12_0_False_shift: signed(22 downto 0);
  signal c_18_10_0_False_resize: signed(22 downto 0);
  signal c_18_10_0_False_shift: signed(22 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(22 downto 0);
  signal c_19_15_4_False_resize: signed(22 downto 0);
  signal c_19_15_4_False_shift: signed(22 downto 0);
  signal c_19_15_0_False_resize: signed(22 downto 0);
  signal c_19_15_0_False_shift: signed(22 downto 0);
  signal c_19_10_0_False_resize: signed(22 downto 0);
  signal c_19_10_0_False_shift: signed(22 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
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
  signal c_23: signed(22 downto 0);
  signal c_24: signed(22 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_24_2_False_resize: signed(23 downto 0);
  signal c_25_24_2_False_shift: signed(23 downto 0);
  signal c_25_22_2_False_resize: signed(23 downto 0);
  signal c_25_22_2_False_shift: signed(23 downto 0);
  signal c_25_17_0_False_resize: signed(23 downto 0);
  signal c_25_17_0_False_shift: signed(23 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(15 downto 0);
  signal c_27: signed(15 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_27_0_False_resize: signed(23 downto 0);
  signal c_28_27_0_False_shift: signed(23 downto 0);
  signal c_28_24_1_False_resize: signed(23 downto 0);
  signal c_28_24_1_False_shift: signed(23 downto 0);
  signal c_28_22_0_False_resize: signed(23 downto 0);
  signal c_28_22_0_False_shift: signed(23 downto 0);
  signal c_28_20_1_False_resize: signed(23 downto 0);
  signal c_28_20_1_False_shift: signed(23 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_i0_resize: signed(23 downto 0);
  signal c_29_i1_resize: signed(23 downto 0);
  signal c_29_i0_shift: signed(23 downto 0);
  signal c_29_i1_shift: signed(23 downto 0);
  signal c_29_arith: signed(23 downto 0);
  signal c_29_oshift: signed(23 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(23 downto 0);
  signal c_30_3_0_False_resize: signed(23 downto 0);
  signal c_30_3_0_False_shift: signed(23 downto 0);
  signal c_30_6_4_False_resize: signed(23 downto 0);
  signal c_30_6_4_False_shift: signed(23 downto 0);
  signal c_30_3_5_False_resize: signed(23 downto 0);
  signal c_30_3_5_False_shift: signed(23 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(20 downto 0);
  signal c_31_27_2_False_resize: signed(20 downto 0);
  signal c_31_27_2_False_shift: signed(20 downto 0);
  signal c_31_20_0_False_resize: signed(20 downto 0);
  signal c_31_20_0_False_shift: signed(20 downto 0);
  signal c_31_27_0_False_resize: signed(20 downto 0);
  signal c_31_27_0_False_shift: signed(20 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_i0_resize: signed(23 downto 0);
  signal c_36_i1_resize: signed(23 downto 0);
  signal c_36_i0_shift: signed(23 downto 0);
  signal c_36_i1_shift: signed(23 downto 0);
  signal c_36_arith: signed(23 downto 0);
  signal c_36_oshift: signed(23 downto 0);
  signal c_36_sub_sel: std_logic;
  signal c_37: signed(21 downto 0);
  signal c_37_3_3_False_resize: signed(21 downto 0);
  signal c_37_3_3_False_shift: signed(21 downto 0);
  signal c_37_6_2_False_resize: signed(21 downto 0);
  signal c_37_6_2_False_shift: signed(21 downto 0);
  signal c_37_3_0_False_resize: signed(21 downto 0);
  signal c_37_3_0_False_shift: signed(21 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(21 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_i0_resize: signed(23 downto 0);
  signal c_39_i1_resize: signed(23 downto 0);
  signal c_39_i0_shift: signed(23 downto 0);
  signal c_39_i1_shift: signed(23 downto 0);
  signal c_39_arith: signed(23 downto 0);
  signal c_39_oshift: signed(23 downto 0);
  signal c_39_sub_sel: std_logic;
  signal c_40: signed(22 downto 0);
  signal c_41: signed(22 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_36_0_False_resize: signed(23 downto 0);
  signal c_42_36_0_False_shift: signed(23 downto 0);
  signal c_42_41_1_False_resize: signed(23 downto 0);
  signal c_42_41_1_False_shift: signed(23 downto 0);
  signal c_42_sel: std_logic_vector(0 downto 0);
  signal c_43: signed(15 downto 0);
  signal c_44: signed(15 downto 0);
  signal c_45: signed(20 downto 0);
  signal c_46: signed(20 downto 0);
  signal c_47: signed(24 downto 0);
  signal c_47_44_0_False_resize: signed(24 downto 0);
  signal c_47_44_0_False_shift: signed(24 downto 0);
  signal c_47_29_1_False_resize: signed(24 downto 0);
  signal c_47_29_1_False_shift: signed(24 downto 0);
  signal c_47_46_1_False_resize: signed(24 downto 0);
  signal c_47_46_1_False_shift: signed(24 downto 0);
  signal c_47_sel: std_logic_vector(1 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_48_i0_resize: signed(23 downto 0);
  signal c_48_i1_resize: signed(23 downto 0);
  signal c_48_i0_shift: signed(23 downto 0);
  signal c_48_i1_shift: signed(23 downto 0);
  signal c_48_arith: signed(23 downto 0);
  signal c_48_oshift: signed(23 downto 0);
  signal c_48_sub_sel: std_logic;
  signal c_49: signed(23 downto 0);
  signal c_50: signed(22 downto 0);
  signal c_50_20_0_False_resize: signed(22 downto 0);
  signal c_50_20_0_False_shift: signed(22 downto 0);
  signal c_50_49_1_False_resize: signed(22 downto 0);
  signal c_50_49_1_False_shift: signed(22 downto 0);
  signal c_50_24_0_False_resize: signed(22 downto 0);
  signal c_50_24_0_False_shift: signed(22 downto 0);
  signal c_50_sel: std_logic_vector(1 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_51_17_0_False_resize: signed(23 downto 0);
  signal c_51_17_0_False_shift: signed(23 downto 0);
  signal c_51_27_0_False_resize: signed(23 downto 0);
  signal c_51_27_0_False_shift: signed(23 downto 0);
  signal c_51_24_1_False_resize: signed(23 downto 0);
  signal c_51_24_1_False_shift: signed(23 downto 0);
  signal c_51_sel: std_logic_vector(1 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_52_i0_resize: signed(23 downto 0);
  signal c_52_i1_resize: signed(23 downto 0);
  signal c_52_i0_shift: signed(23 downto 0);
  signal c_52_i1_shift: signed(23 downto 0);
  signal c_52_arith: signed(23 downto 0);
  signal c_52_oshift: signed(23 downto 0);
  signal c_53: signed(22 downto 0);
  signal c_53_49_0_False_resize: signed(22 downto 0);
  signal c_53_49_0_False_shift: signed(22 downto 0);
  signal c_53_20_0_False_resize: signed(22 downto 0);
  signal c_53_20_0_False_shift: signed(22 downto 0);
  signal c_53_sel: std_logic_vector(0 downto 0);
  signal c_54: signed(15 downto 0);
  signal c_55: signed(15 downto 0);
  signal c_56: signed(20 downto 0);
  signal c_57: signed(20 downto 0);
  signal c_58: signed(23 downto 0);
  signal c_58_55_6_False_resize: signed(23 downto 0);
  signal c_58_55_6_False_shift: signed(23 downto 0);
  signal c_58_48_0_False_resize: signed(23 downto 0);
  signal c_58_48_0_False_shift: signed(23 downto 0);
  signal c_58_57_4_False_resize: signed(23 downto 0);
  signal c_58_57_4_False_shift: signed(23 downto 0);
  signal c_58_48_1_False_resize: signed(23 downto 0);
  signal c_58_48_1_False_shift: signed(23 downto 0);
  signal c_58_sel: std_logic_vector(1 downto 0);
  signal c_59: signed(22 downto 0);
  signal c_60: signed(22 downto 0);
  signal c_61: signed(22 downto 0);
  signal c_62: signed(22 downto 0);
  signal c_63: signed(23 downto 0);
  signal c_63_i0_resize: signed(23 downto 0);
  signal c_63_i1_resize: signed(23 downto 0);
  signal c_63_i0_shift: signed(23 downto 0);
  signal c_63_i1_shift: signed(23 downto 0);
  signal c_63_arith: signed(23 downto 0);
  signal c_63_oshift: signed(23 downto 0);
  signal c_64: signed(22 downto 0);
  signal c_65: signed(22 downto 0);
  signal c_66: signed(23 downto 0);
  signal c_67: signed(23 downto 0);
  signal c_68: signed(23 downto 0);
  signal c_69: signed(23 downto 0);
  signal c_70: signed(23 downto 0);
  signal c_70_48_0_False_resize: signed(23 downto 0);
  signal c_70_48_0_False_shift: signed(23 downto 0);
  signal c_70_65_0_False_resize: signed(23 downto 0);
  signal c_70_65_0_False_shift: signed(23 downto 0);
  signal c_70_69_1_False_resize: signed(23 downto 0);
  signal c_70_69_1_False_shift: signed(23 downto 0);
  signal c_70_69_0_False_resize: signed(23 downto 0);
  signal c_70_69_0_False_shift: signed(23 downto 0);
  signal c_70_sel: std_logic_vector(1 downto 0);
  signal c_71: signed(23 downto 0);
  signal c_72: signed(23 downto 0);
  signal c_73: signed(23 downto 0);
  signal c_73_48_0_False_resize: signed(23 downto 0);
  signal c_73_48_0_False_shift: signed(23 downto 0);
  signal c_73_72_3_False_resize: signed(23 downto 0);
  signal c_73_72_3_False_shift: signed(23 downto 0);
  signal c_73_69_0_False_resize: signed(23 downto 0);
  signal c_73_69_0_False_shift: signed(23 downto 0);
  signal c_73_72_2_False_resize: signed(23 downto 0);
  signal c_73_72_2_False_shift: signed(23 downto 0);
  signal c_73_sel: std_logic_vector(1 downto 0);
  signal c_74: signed(20 downto 0);
  signal c_75: signed(20 downto 0);
  signal c_76: signed(23 downto 0);
  signal c_77: signed(23 downto 0);
  signal c_78: signed(23 downto 0);
  signal c_78_77_2_False_resize: signed(23 downto 0);
  signal c_78_77_2_False_shift: signed(23 downto 0);
  signal c_78_75_3_False_resize: signed(23 downto 0);
  signal c_78_75_3_False_shift: signed(23 downto 0);
  signal c_78_63_0_False_resize: signed(23 downto 0);
  signal c_78_63_0_False_shift: signed(23 downto 0);
  signal c_78_sel: std_logic_vector(1 downto 0);
  signal c_79: signed(23 downto 0);
  signal c_80: signed(23 downto 0);
  signal c_81: signed(23 downto 0);
  signal c_81_80_0_False_resize: signed(23 downto 0);
  signal c_81_80_0_False_shift: signed(23 downto 0);
  signal c_81_41_2_False_resize: signed(23 downto 0);
  signal c_81_41_2_False_shift: signed(23 downto 0);
  signal c_81_29_0_False_resize: signed(23 downto 0);
  signal c_81_29_0_False_shift: signed(23 downto 0);
  signal c_81_sel: std_logic_vector(1 downto 0);
  signal c_82: signed(23 downto 0);
  signal c_83: signed(23 downto 0);
  signal c_84: signed(23 downto 0);
  signal c_84_36_0_False_resize: signed(23 downto 0);
  signal c_84_36_0_False_shift: signed(23 downto 0);
  signal c_84_83_0_False_resize: signed(23 downto 0);
  signal c_84_83_0_False_shift: signed(23 downto 0);
  signal c_84_sel: std_logic_vector(0 downto 0);
  signal c_85: signed(23 downto 0);
  signal c_86: signed(23 downto 0);
  signal c_87: signed(23 downto 0);
  signal c_87_86_0_False_resize: signed(23 downto 0);
  signal c_87_86_0_False_shift: signed(23 downto 0);
  signal c_87_48_2_False_resize: signed(23 downto 0);
  signal c_87_48_2_False_shift: signed(23 downto 0);
  signal c_87_sel: std_logic_vector(0 downto 0);
  signal c_88: signed(15 downto 0);
  signal c_89: signed(15 downto 0);
  signal c_90: signed(22 downto 0);
  signal c_91: signed(22 downto 0);
  signal c_92: signed(23 downto 0);
  signal c_92_91_0_False_resize: signed(23 downto 0);
  signal c_92_91_0_False_shift: signed(23 downto 0);
  signal c_92_63_0_False_resize: signed(23 downto 0);
  signal c_92_63_0_False_shift: signed(23 downto 0);
  signal c_92_89_7_False_resize: signed(23 downto 0);
  signal c_92_89_7_False_shift: signed(23 downto 0);
  signal c_92_sel: std_logic_vector(1 downto 0);
  signal c_93: signed(23 downto 0);
  signal c_93_17_0_False_resize: signed(23 downto 0);
  signal c_93_17_0_False_shift: signed(23 downto 0);
  signal c_93_24_0_False_resize: signed(23 downto 0);
  signal c_93_24_0_False_shift: signed(23 downto 0);
  signal c_93_20_2_False_resize: signed(23 downto 0);
  signal c_93_20_2_False_shift: signed(23 downto 0);
  signal c_93_sel: std_logic_vector(1 downto 0);
  signal c_94: signed(23 downto 0);
  signal c_95: signed(23 downto 0);
  signal c_96: signed(22 downto 0);
  signal c_96_75_3_False_resize: signed(22 downto 0);
  signal c_96_75_3_False_shift: signed(22 downto 0);
  signal c_96_63_0_False_resize: signed(22 downto 0);
  signal c_96_63_0_False_shift: signed(22 downto 0);
  signal c_96_95_0_False_resize: signed(22 downto 0);
  signal c_96_95_0_False_shift: signed(22 downto 0);
  signal c_96_75_2_False_resize: signed(22 downto 0);
  signal c_96_75_2_False_shift: signed(22 downto 0);
  signal c_96_sel: std_logic_vector(1 downto 0);
  signal c_97: signed(23 downto 0);
  signal c_98: signed(23 downto 0);
  signal c_99: signed(23 downto 0);
  signal c_100: signed(23 downto 0);
  signal c_101: signed(23 downto 0);
  signal c_102: signed(23 downto 0);
  signal c_102_resize: signed(23 downto 0);
  signal c_103: signed(23 downto 0);
  signal c_104: signed(23 downto 0);
  signal c_105: signed(23 downto 0);
  signal c_105_resize: signed(23 downto 0);
  signal c_106: signed(23 downto 0);
  signal c_107: signed(23 downto 0);
  signal c_108: signed(23 downto 0);
  signal c_108_resize: signed(23 downto 0);
  signal c_109: signed(23 downto 0);
  signal c_109_resize: signed(23 downto 0);
  signal c_110: signed(23 downto 0);
  signal c_111: signed(23 downto 0);
  signal c_112: signed(23 downto 0);
  signal c_113: signed(23 downto 0);
  signal c_114: signed(23 downto 0);
  signal c_114_resize: signed(23 downto 0);
  signal c_115: signed(23 downto 0);
  signal c_116: signed(23 downto 0);
  signal c_117: signed(23 downto 0);
  signal c_118: signed(23 downto 0);
  signal c_119: signed(23 downto 0);
  signal c_119_resize: signed(23 downto 0);
  signal c_120: signed(23 downto 0);
  signal c_121: signed(23 downto 0);
  signal c_122: signed(23 downto 0);
  signal c_122_resize: signed(23 downto 0);
  signal c_123: signed(23 downto 0);
  signal c_123_resize: signed(23 downto 0);
  signal c_124: signed(23 downto 0);
  signal c_125: signed(23 downto 0);
  signal c_126: signed(23 downto 0);
  signal c_127: signed(23 downto 0);
  signal c_128: signed(23 downto 0);
  signal c_129: signed(23 downto 0);
  signal c_130: signed(23 downto 0);
  signal c_130_resize: signed(23 downto 0);
  signal c_131: signed(22 downto 0);
  signal c_131_resize: signed(22 downto 0);
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
  -- output node 0 with id 102
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_102);
    end if;
  end process;
  -- output node 1 with id 105
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_105);
    end if;
  end process;
  -- output node 2 with id 108
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_108);
    end if;
  end process;
  -- output node 3 with id 109
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_109);
    end if;
  end process;
  -- output node 4 with id 114
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_114);
    end if;
  end process;
  -- output node 5 with id 119
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_119);
    end if;
  end process;
  -- output node 6 with id 122
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_122);
    end if;
  end process;
  -- output node 7 with id 123
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_123);
    end if;
  end process;
  -- output node 8 with id 130
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_130);
    end if;
  end process;
  -- output node 9 with id 131
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_131);
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
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[2], [1], [1], [1]]
  c_2_0_0_False_resize <= resize(c_0, 17);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_1_False_resize <= resize(c_0, 17);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "0" when "11",
    "0" when "10",
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
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[6], [17], [15], [9]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
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
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[8], [1], [8], [8]]
  c_4_0_0_False_resize <= resize(c_0, 19);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_3_False_resize <= resize(c_0, 19);
  c_4_0_3_False_shift <= shift_left(c_4_0_3_False_resize, 3);
  with config_select_1 select c_4_sel <= 
    "0" when "01",
    "1" when "11",
    "1" when "10",
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
  -- node of type 'register' in stage 1 with id 5 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_0 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_5 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[6], [17], [1], [9]]
  c_7_3_0_False_resize <= c_3;
  c_7_3_0_False_shift <= shift_left(c_7_3_0_False_resize, 0);
  c_7_6_0_False_resize <= resize(c_6, 21);
  c_7_6_0_False_shift <= shift_left(c_7_6_0_False_resize, 0);
  with config_select_3 select c_7_sel <= 
    "0" when "11",
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_3_0_False_shift;
        when others => c_7 <= c_7_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[8], [1], [8], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[8], [1], [8], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 10 and associated fundamentals [[58], [25], [65], [73]]
  with config_select_4 select c_10_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 21,
      w_o => 23,
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
      sub_i => c_10_sub_sel,
      x_i => c_9,
      y_i => c_7,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[6], [17], [15], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[6], [17], [15], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 13 and associated fundamentals [[96], [25], [65], [144]]
  c_13_12_4_False_resize <= resize(c_12, 24);
  c_13_12_4_False_shift <= shift_left(c_13_12_4_False_resize, 4);
  c_13_10_0_False_resize <= resize(c_10, 24);
  c_13_10_0_False_shift <= shift_left(c_13_10_0_False_resize, 0);
  with config_select_5 select c_13_sel <= 
    "0" when "00",
    "0" when "11",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_12_4_False_shift;
        when others => c_13 <= c_13_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 14 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 16 and associated fundamentals [[6], [200], [8], [9]]
  c_16_12_0_False_resize <= resize(c_12, 24);
  c_16_12_0_False_shift <= shift_left(c_16_12_0_False_resize, 0);
  c_16_15_3_False_resize <= resize(c_15, 24);
  c_16_15_3_False_shift <= shift_left(c_16_15_3_False_resize, 3);
  c_16_10_3_False_resize <= resize(c_10, 24);
  c_16_10_3_False_shift <= shift_left(c_16_10_3_False_resize, 3);
  with config_select_5 select c_16_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_12_0_False_shift;
        when "01" => c_16 <= c_16_15_3_False_shift;
        when others => c_16 <= c_16_10_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 17 and associated fundamentals [[102], [225], [57], [153]]
  with config_select_6 select c_17_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
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
      sub_i => c_17_sub_sel,
      x_i => c_13,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 18 and associated fundamentals [[6], [17], [65], [9]]
  c_18_12_0_False_resize <= resize(c_12, 23);
  c_18_12_0_False_shift <= shift_left(c_18_12_0_False_resize, 0);
  c_18_10_0_False_resize <= c_10;
  c_18_10_0_False_shift <= shift_left(c_18_10_0_False_resize, 0);
  with config_select_5 select c_18_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_12_0_False_shift;
        when others => c_18 <= c_18_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 19 and associated fundamentals [[1], [1], [65], [16]]
  c_19_15_4_False_resize <= resize(c_15, 23);
  c_19_15_4_False_shift <= shift_left(c_19_15_4_False_resize, 4);
  c_19_15_0_False_resize <= resize(c_15, 23);
  c_19_15_0_False_shift <= shift_left(c_19_15_0_False_resize, 0);
  c_19_10_0_False_resize <= c_10;
  c_19_10_0_False_shift <= shift_left(c_19_10_0_False_resize, 0);
  with config_select_5 select c_19_sel <= 
    "00" when "11",
    "01" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_15_4_False_shift;
        when "01" => c_19 <= c_19_15_0_False_shift;
        when others => c_19 <= c_19_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 20 and associated fundamentals [[23], [67], [195], [52]]
  with config_select_6 select c_20_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
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
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[6], [17], [15], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 22 and associated fundamentals [[6], [17], [15], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[58], [25], [65], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 24 and associated fundamentals [[58], [25], [65], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 25 and associated fundamentals [[232], [100], [57], [36]]
  c_25_24_2_False_resize <= resize(c_24, 24);
  c_25_24_2_False_shift <= shift_left(c_25_24_2_False_resize, 2);
  c_25_22_2_False_resize <= resize(c_22, 24);
  c_25_22_2_False_shift <= shift_left(c_25_22_2_False_resize, 2);
  c_25_17_0_False_resize <= c_17;
  c_25_17_0_False_shift <= shift_left(c_25_17_0_False_resize, 0);
  with config_select_7 select c_25_sel <= 
    "00" when "01",
    "00" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_24_2_False_shift;
        when "01" => c_25 <= c_25_22_2_False_shift;
        when others => c_25 <= c_25_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 26 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 28 and associated fundamentals [[1], [134], [130], [9]]
  c_28_27_0_False_resize <= resize(c_27, 24);
  c_28_27_0_False_shift <= shift_left(c_28_27_0_False_resize, 0);
  c_28_24_1_False_resize <= resize(c_24, 24);
  c_28_24_1_False_shift <= shift_left(c_28_24_1_False_resize, 1);
  c_28_22_0_False_resize <= resize(c_22, 24);
  c_28_22_0_False_shift <= shift_left(c_28_22_0_False_resize, 0);
  c_28_20_1_False_resize <= c_20;
  c_28_20_1_False_shift <= shift_left(c_28_20_1_False_resize, 1);
  with config_select_7 select c_28_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "00" => c_28 <= c_28_27_0_False_shift;
        when "01" => c_28 <= c_28_24_1_False_shift;
        when "10" => c_28 <= c_28_22_0_False_shift;
        when others => c_28 <= c_28_20_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 29 and associated fundamentals [[231], [234], [187], [45]]
  with config_select_8 select c_29_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_29: entity work.adder_node
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
      sub_i => c_29_sub_sel,
      x_i => c_25,
      y_i => c_28,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 30 and associated fundamentals [[192], [17], [15], [16]]
  c_30_3_0_False_resize <= resize(c_3, 24);
  c_30_3_0_False_shift <= shift_left(c_30_3_0_False_resize, 0);
  c_30_6_4_False_resize <= resize(c_6, 24);
  c_30_6_4_False_shift <= shift_left(c_30_6_4_False_resize, 4);
  c_30_3_5_False_resize <= resize(c_3, 24);
  c_30_3_5_False_shift <= shift_left(c_30_3_5_False_resize, 5);
  with config_select_3 select c_30_sel <= 
    "00" when "10",
    "00" when "01",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "00" => c_30 <= c_30_3_0_False_shift;
        when "01" => c_30 <= c_30_6_4_False_shift;
        when others => c_30 <= c_30_3_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 31 and associated fundamentals [[23], [1], [4], [1]]
  c_31_27_2_False_resize <= resize(c_27, 21);
  c_31_27_2_False_shift <= shift_left(c_31_27_2_False_resize, 2);
  c_31_20_0_False_resize <= c_20(20 downto 0);
  c_31_20_0_False_shift <= shift_left(c_31_20_0_False_resize, 0);
  c_31_27_0_False_resize <= resize(c_27, 21);
  c_31_27_0_False_shift <= shift_left(c_31_27_0_False_resize, 0);
  with config_select_7 select c_31_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "00" => c_31 <= c_31_27_2_False_shift;
        when "01" => c_31 <= c_31_20_0_False_shift;
        when others => c_31 <= c_31_27_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 32 and associated fundamentals [[192], [17], [15], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 33 and associated fundamentals [[192], [17], [15], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 34 and associated fundamentals [[192], [17], [15], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 35 and associated fundamentals [[192], [17], [15], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 36 and associated fundamentals [[169], [18], [11], [15]]
  with config_select_8 select c_36_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_36: entity work.adder_node
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
      sub_i => c_36_sub_sel,
      x_i => c_35,
      y_i => c_31,
      z_o => c_36_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_36_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 37 and associated fundamentals [[48], [4], [15], [4]]
  c_37_3_3_False_resize <= resize(c_3, 22);
  c_37_3_3_False_shift <= shift_left(c_37_3_3_False_resize, 3);
  c_37_6_2_False_resize <= resize(c_6, 22);
  c_37_6_2_False_shift <= shift_left(c_37_6_2_False_resize, 2);
  c_37_3_0_False_resize <= resize(c_3, 22);
  c_37_3_0_False_shift <= shift_left(c_37_3_0_False_resize, 0);
  with config_select_3 select c_37_sel <= 
    "00" when "00",
    "01" when "01",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "00" => c_37 <= c_37_3_3_False_shift;
        when "01" => c_37 <= c_37_6_2_False_shift;
        when others => c_37 <= c_37_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 38 and associated fundamentals [[48], [4], [15], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 39 and associated fundamentals [[154], [33], [35], [81]]
  with config_select_5 select c_39_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_39: entity work.adder_node
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
      sub_i => c_39_sub_sel,
      x_i => c_10,
      y_i => c_38,
      z_o => c_39_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_39_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 40 and associated fundamentals [[58], [25], [65], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 41 and associated fundamentals [[58], [25], [65], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 42 and associated fundamentals [[169], [50], [11], [15]]
  c_42_36_0_False_resize <= c_36;
  c_42_36_0_False_shift <= shift_left(c_42_36_0_False_resize, 0);
  c_42_41_1_False_resize <= resize(c_41, 24);
  c_42_41_1_False_shift <= shift_left(c_42_41_1_False_resize, 1);
  with config_select_9 select c_42_sel <= 
    "0" when "10",
    "0" when "00",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "0" => c_42 <= c_42_36_0_False_shift;
        when others => c_42 <= c_42_41_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 43 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 44 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 45 and associated fundamentals [[6], [17], [15], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 46 and associated fundamentals [[6], [17], [15], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 47 and associated fundamentals [[462], [1], [1], [18]]
  c_47_44_0_False_resize <= resize(c_44, 25);
  c_47_44_0_False_shift <= shift_left(c_47_44_0_False_resize, 0);
  c_47_29_1_False_resize <= resize(c_29, 25);
  c_47_29_1_False_shift <= shift_left(c_47_29_1_False_resize, 1);
  c_47_46_1_False_resize <= resize(c_46, 25);
  c_47_46_1_False_shift <= shift_left(c_47_46_1_False_resize, 1);
  with config_select_9 select c_47_sel <= 
    "00" when "10",
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "00" => c_47 <= c_47_44_0_False_shift;
        when "01" => c_47 <= c_47_29_1_False_shift;
        when others => c_47 <= c_47_46_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 48 and associated fundamentals [[214], [199], [45], [78]]
  with config_select_10 select c_48_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_48: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 25,
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
      sub_i => c_48_sub_sel,
      x_i => c_42,
      y_i => c_47,
      z_o => c_48_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_48_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 49 and associated fundamentals [[154], [33], [35], [81]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_39 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 50 and associated fundamentals [[23], [67], [70], [73]]
  c_50_20_0_False_resize <= c_20(22 downto 0);
  c_50_20_0_False_shift <= shift_left(c_50_20_0_False_resize, 0);
  c_50_49_1_False_resize <= c_49(22 downto 0);
  c_50_49_1_False_shift <= shift_left(c_50_49_1_False_resize, 1);
  c_50_24_0_False_resize <= c_24;
  c_50_24_0_False_shift <= shift_left(c_50_24_0_False_resize, 0);
  with config_select_7 select c_50_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_50_sel is
        when "00" => c_50 <= c_50_20_0_False_shift;
        when "01" => c_50 <= c_50_49_1_False_shift;
        when others => c_50 <= c_50_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 51 and associated fundamentals [[1], [50], [57], [153]]
  c_51_17_0_False_resize <= c_17;
  c_51_17_0_False_shift <= shift_left(c_51_17_0_False_resize, 0);
  c_51_27_0_False_resize <= resize(c_27, 24);
  c_51_27_0_False_shift <= shift_left(c_51_27_0_False_resize, 0);
  c_51_24_1_False_resize <= resize(c_24, 24);
  c_51_24_1_False_shift <= shift_left(c_51_24_1_False_resize, 1);
  with config_select_7 select c_51_sel <= 
    "00" when "11",
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_51_sel is
        when "00" => c_51 <= c_51_17_0_False_shift;
        when "01" => c_51 <= c_51_27_0_False_shift;
        when others => c_51 <= c_51_24_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 8 with id 52 and associated fundamentals [[91], [218], [223], [139]]
  inst_adder_node_52: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
      w_o => 24,
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
      x_i => c_50,
      y_i => c_51,
      z_o => c_52_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_52_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 53 and associated fundamentals [[23], [67], [35], [81]]
  c_53_49_0_False_resize <= c_49(22 downto 0);
  c_53_49_0_False_shift <= shift_left(c_53_49_0_False_resize, 0);
  c_53_20_0_False_resize <= c_20(22 downto 0);
  c_53_20_0_False_shift <= shift_left(c_53_20_0_False_resize, 0);
  with config_select_7 select c_53_sel <= 
    "0" when "10",
    "0" when "11",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_53_sel is
        when "0" => c_53 <= c_53_49_0_False_shift;
        when others => c_53 <= c_53_20_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 54 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 55 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 56 and associated fundamentals [[6], [17], [15], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 57 and associated fundamentals [[6], [17], [15], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 58 and associated fundamentals [[96], [64], [45], [156]]
  c_58_55_6_False_resize <= resize(c_55, 24);
  c_58_55_6_False_shift <= shift_left(c_58_55_6_False_resize, 6);
  c_58_48_0_False_resize <= c_48;
  c_58_48_0_False_shift <= shift_left(c_58_48_0_False_resize, 0);
  c_58_57_4_False_resize <= resize(c_57, 24);
  c_58_57_4_False_shift <= shift_left(c_58_57_4_False_resize, 4);
  c_58_48_1_False_resize <= c_48;
  c_58_48_1_False_shift <= shift_left(c_58_48_1_False_resize, 1);
  with config_select_11 select c_58_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_58_sel is
        when "00" => c_58 <= c_58_55_6_False_shift;
        when "01" => c_58 <= c_58_48_0_False_shift;
        when "10" => c_58 <= c_58_57_4_False_shift;
        when others => c_58 <= c_58_48_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 59 and associated fundamentals [[23], [67], [35], [81]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 60 and associated fundamentals [[23], [67], [35], [81]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 61 and associated fundamentals [[23], [67], [35], [81]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 62 and associated fundamentals [[23], [67], [35], [81]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'add' in stage 12 with id 63 and associated fundamentals [[119], [131], [80], [237]]
  inst_adder_node_63: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
      w_o => 24,
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
      x_i => c_62,
      y_i => c_58,
      z_o => c_63_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_63_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 64 and associated fundamentals [[58], [25], [65], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 65 and associated fundamentals [[58], [25], [65], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 66 and associated fundamentals [[154], [33], [35], [81]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 67 and associated fundamentals [[154], [33], [35], [81]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 68 and associated fundamentals [[154], [33], [35], [81]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 69 and associated fundamentals [[154], [33], [35], [81]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 70 and associated fundamentals [[214], [33], [65], [162]]
  c_70_48_0_False_resize <= c_48;
  c_70_48_0_False_shift <= shift_left(c_70_48_0_False_resize, 0);
  c_70_65_0_False_resize <= resize(c_65, 24);
  c_70_65_0_False_shift <= shift_left(c_70_65_0_False_resize, 0);
  c_70_69_1_False_resize <= c_69;
  c_70_69_1_False_shift <= shift_left(c_70_69_1_False_resize, 1);
  c_70_69_0_False_resize <= c_69;
  c_70_69_0_False_shift <= shift_left(c_70_69_0_False_resize, 0);
  with config_select_11 select c_70_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_70_sel is
        when "00" => c_70 <= c_70_48_0_False_shift;
        when "01" => c_70 <= c_70_65_0_False_shift;
        when "10" => c_70 <= c_70_69_1_False_shift;
        when others => c_70 <= c_70_69_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 71 and associated fundamentals [[169], [18], [11], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 72 and associated fundamentals [[169], [18], [11], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 73 and associated fundamentals [[154], [199], [44], [120]]
  c_73_48_0_False_resize <= c_48;
  c_73_48_0_False_shift <= shift_left(c_73_48_0_False_resize, 0);
  c_73_72_3_False_resize <= c_72;
  c_73_72_3_False_shift <= shift_left(c_73_72_3_False_resize, 3);
  c_73_69_0_False_resize <= c_69;
  c_73_69_0_False_shift <= shift_left(c_73_69_0_False_resize, 0);
  c_73_72_2_False_resize <= c_72;
  c_73_72_2_False_shift <= shift_left(c_73_72_2_False_resize, 2);
  with config_select_11 select c_73_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_73_sel is
        when "00" => c_73 <= c_73_48_0_False_shift;
        when "01" => c_73 <= c_73_72_3_False_shift;
        when "10" => c_73 <= c_73_69_0_False_shift;
        when others => c_73 <= c_73_72_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 74 and associated fundamentals [[6], [17], [15], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 75 and associated fundamentals [[6], [17], [15], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 76 and associated fundamentals [[154], [33], [35], [81]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 77 and associated fundamentals [[154], [33], [35], [81]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 78 and associated fundamentals [[119], [131], [140], [72]]
  c_78_77_2_False_resize <= c_77;
  c_78_77_2_False_shift <= shift_left(c_78_77_2_False_resize, 2);
  c_78_75_3_False_resize <= resize(c_75, 24);
  c_78_75_3_False_shift <= shift_left(c_78_75_3_False_resize, 3);
  c_78_63_0_False_resize <= c_63;
  c_78_63_0_False_shift <= shift_left(c_78_63_0_False_resize, 0);
  with config_select_13 select c_78_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_78_sel is
        when "00" => c_78 <= c_78_77_2_False_shift;
        when "01" => c_78 <= c_78_75_3_False_shift;
        when others => c_78 <= c_78_63_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 79 and associated fundamentals [[102], [225], [57], [153]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 80 and associated fundamentals [[102], [225], [57], [153]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 81 and associated fundamentals [[102], [100], [187], [153]]
  c_81_80_0_False_resize <= c_80;
  c_81_80_0_False_shift <= shift_left(c_81_80_0_False_resize, 0);
  c_81_41_2_False_resize <= resize(c_41, 24);
  c_81_41_2_False_shift <= shift_left(c_81_41_2_False_resize, 2);
  c_81_29_0_False_resize <= c_29;
  c_81_29_0_False_shift <= shift_left(c_81_29_0_False_resize, 0);
  with config_select_9 select c_81_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_81_sel is
        when "00" => c_81 <= c_81_80_0_False_shift;
        when "01" => c_81 <= c_81_41_2_False_shift;
        when others => c_81 <= c_81_29_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 82 and associated fundamentals [[23], [67], [195], [52]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 83 and associated fundamentals [[23], [67], [195], [52]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_82 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 84 and associated fundamentals [[169], [18], [195], [52]]
  c_84_36_0_False_resize <= c_36;
  c_84_36_0_False_shift <= shift_left(c_84_36_0_False_resize, 0);
  c_84_83_0_False_resize <= c_83;
  c_84_83_0_False_shift <= shift_left(c_84_83_0_False_resize, 0);
  with config_select_9 select c_84_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_84_sel is
        when "0" => c_84 <= c_84_36_0_False_shift;
        when others => c_84 <= c_84_83_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 85 and associated fundamentals [[231], [234], [187], [45]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 86 and associated fundamentals [[231], [234], [187], [45]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_85 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 87 and associated fundamentals [[231], [234], [180], [45]]
  c_87_86_0_False_resize <= c_86;
  c_87_86_0_False_shift <= shift_left(c_87_86_0_False_resize, 0);
  c_87_48_2_False_resize <= c_48;
  c_87_48_2_False_shift <= shift_left(c_87_48_2_False_resize, 2);
  with config_select_11 select c_87_sel <= 
    "0" when "01",
    "0" when "11",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_87_sel is
        when "0" => c_87 <= c_87_86_0_False_shift;
        when others => c_87 <= c_87_48_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 88 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 89 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_88 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 90 and associated fundamentals [[58], [25], [65], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 91 and associated fundamentals [[58], [25], [65], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_90 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 92 and associated fundamentals [[58], [25], [128], [237]]
  c_92_91_0_False_resize <= resize(c_91, 24);
  c_92_91_0_False_shift <= shift_left(c_92_91_0_False_resize, 0);
  c_92_63_0_False_resize <= c_63;
  c_92_63_0_False_shift <= shift_left(c_92_63_0_False_resize, 0);
  c_92_89_7_False_resize <= resize(c_89, 24);
  c_92_89_7_False_shift <= shift_left(c_92_89_7_False_resize, 7);
  with config_select_13 select c_92_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_92_sel is
        when "00" => c_92 <= c_92_91_0_False_shift;
        when "01" => c_92 <= c_92_63_0_False_shift;
        when others => c_92 <= c_92_89_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 93 and associated fundamentals [[92], [225], [57], [73]]
  c_93_17_0_False_resize <= c_17;
  c_93_17_0_False_shift <= shift_left(c_93_17_0_False_resize, 0);
  c_93_24_0_False_resize <= resize(c_24, 24);
  c_93_24_0_False_shift <= shift_left(c_93_24_0_False_resize, 0);
  c_93_20_2_False_resize <= c_20;
  c_93_20_2_False_shift <= shift_left(c_93_20_2_False_resize, 2);
  with config_select_7 select c_93_sel <= 
    "00" when "10",
    "00" when "01",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_93_sel is
        when "00" => c_93 <= c_93_17_0_False_shift;
        when "01" => c_93 <= c_93_24_0_False_shift;
        when others => c_93 <= c_93_20_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 94 and associated fundamentals [[214], [199], [45], [78]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 95 and associated fundamentals [[214], [199], [45], [78]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_94 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 96 and associated fundamentals [[48], [68], [80], [78]]
  c_96_75_3_False_resize <= resize(c_75, 23);
  c_96_75_3_False_shift <= shift_left(c_96_75_3_False_resize, 3);
  c_96_63_0_False_resize <= c_63(22 downto 0);
  c_96_63_0_False_shift <= shift_left(c_96_63_0_False_resize, 0);
  c_96_95_0_False_resize <= c_95(22 downto 0);
  c_96_95_0_False_shift <= shift_left(c_96_95_0_False_resize, 0);
  c_96_75_2_False_resize <= resize(c_75, 23);
  c_96_75_2_False_shift <= shift_left(c_96_75_2_False_resize, 2);
  with config_select_13 select c_96_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_96_sel is
        when "00" => c_96 <= c_96_75_3_False_shift;
        when "01" => c_96 <= c_96_63_0_False_shift;
        when "10" => c_96 <= c_96_95_0_False_shift;
        when others => c_96 <= c_96_75_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 97 and associated fundamentals [[91], [218], [223], [139]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 98 and associated fundamentals [[91], [218], [223], [139]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_97 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 99 and associated fundamentals [[91], [218], [223], [139]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_98 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 100 and associated fundamentals [[91], [218], [223], [139]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_99 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 101 and associated fundamentals [[91], [218], [223], [139]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_100 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 102 and associated fundamentals [[91], [218], [223], [139]]
  c_102_resize <= c_101;
  c_102 <= shift_left(c_102_resize, 0);
  -- node of type 'register' in stage 12 with id 103 and associated fundamentals [[214], [33], [65], [162]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_70 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 104 and associated fundamentals [[214], [33], [65], [162]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_103 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 105 and associated fundamentals [[214], [33], [65], [162]]
  c_105_resize <= c_104;
  c_105 <= shift_left(c_105_resize, 0);
  -- node of type 'register' in stage 12 with id 106 and associated fundamentals [[154], [199], [44], [120]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 107 and associated fundamentals [[154], [199], [44], [120]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_106 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 108 and associated fundamentals [[154], [199], [44], [120]]
  c_108_resize <= c_107;
  c_108 <= shift_left(c_108_resize, 0);
  -- node of type 'output' in stage 13 with id 109 and associated fundamentals [[119], [131], [140], [72]]
  c_109_resize <= c_78;
  c_109 <= shift_left(c_109_resize, 0);
  -- node of type 'register' in stage 10 with id 110 and associated fundamentals [[102], [100], [187], [153]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_110 <= c_81 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 111 and associated fundamentals [[102], [100], [187], [153]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_110 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 112 and associated fundamentals [[102], [100], [187], [153]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_111 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 113 and associated fundamentals [[102], [100], [187], [153]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_112 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 114 and associated fundamentals [[102], [100], [187], [153]]
  c_114_resize <= c_113;
  c_114 <= shift_left(c_114_resize, 0);
  -- node of type 'register' in stage 10 with id 115 and associated fundamentals [[169], [18], [195], [52]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_84 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 116 and associated fundamentals [[169], [18], [195], [52]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_116 <= c_115 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 117 and associated fundamentals [[169], [18], [195], [52]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_117 <= c_116 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 118 and associated fundamentals [[169], [18], [195], [52]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_118 <= c_117 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 119 and associated fundamentals [[169], [18], [195], [52]]
  c_119_resize <= c_118;
  c_119 <= shift_left(c_119_resize, 0);
  -- node of type 'register' in stage 12 with id 120 and associated fundamentals [[231], [234], [180], [45]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_120 <= c_87 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 121 and associated fundamentals [[231], [234], [180], [45]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_121 <= c_120 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 122 and associated fundamentals [[231], [234], [180], [45]]
  c_122_resize <= c_121;
  c_122 <= shift_left(c_122_resize, 0);
  -- node of type 'output' in stage 13 with id 123 and associated fundamentals [[58], [25], [128], [237]]
  c_123_resize <= c_92;
  c_123 <= shift_left(c_123_resize, 0);
  -- node of type 'register' in stage 8 with id 124 and associated fundamentals [[92], [225], [57], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_124 <= c_93 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 125 and associated fundamentals [[92], [225], [57], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_125 <= c_124 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 126 and associated fundamentals [[92], [225], [57], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_126 <= c_125 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 127 and associated fundamentals [[92], [225], [57], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_127 <= c_126 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 128 and associated fundamentals [[92], [225], [57], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_128 <= c_127 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 129 and associated fundamentals [[92], [225], [57], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_129 <= c_128 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 130 and associated fundamentals [[92], [225], [57], [73]]
  c_130_resize <= c_129;
  c_130 <= shift_left(c_130_resize, 0);
  -- node of type 'output' in stage 13 with id 131 and associated fundamentals [[48], [68], [80], [78]]
  c_131_resize <= c_96;
  c_131 <= shift_left(c_131_resize, 0);
end architecture;
