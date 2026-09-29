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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_0_0_False_resize: signed(18 downto 0);
  signal c_1_0_0_False_shift: signed(18 downto 0);
  signal c_1_0_3_False_resize: signed(18 downto 0);
  signal c_1_0_3_False_shift: signed(18 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(20 downto 0);
  signal c_2_0_1_False_resize: signed(20 downto 0);
  signal c_2_0_1_False_shift: signed(20 downto 0);
  signal c_2_0_0_False_resize: signed(20 downto 0);
  signal c_2_0_0_False_shift: signed(20 downto 0);
  signal c_2_0_5_False_resize: signed(20 downto 0);
  signal c_2_0_5_False_shift: signed(20 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(20 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(21 downto 0);
  signal c_4_3_1_False_resize: signed(21 downto 0);
  signal c_4_3_1_False_shift: signed(21 downto 0);
  signal c_4_3_0_False_resize: signed(21 downto 0);
  signal c_4_3_0_False_shift: signed(21 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(19 downto 0);
  signal c_5_0_4_False_resize: signed(19 downto 0);
  signal c_5_0_4_False_shift: signed(19 downto 0);
  signal c_5_0_0_False_resize: signed(19 downto 0);
  signal c_5_0_0_False_shift: signed(19 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(19 downto 0);
  signal c_7: signed(19 downto 0);
  signal c_8: signed(21 downto 0);
  signal c_8_i0_resize: signed(21 downto 0);
  signal c_8_i1_resize: signed(21 downto 0);
  signal c_8_i0_shift: signed(21 downto 0);
  signal c_8_i1_shift: signed(21 downto 0);
  signal c_8_arith: signed(21 downto 0);
  signal c_8_oshift: signed(21 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(20 downto 0);
  signal c_10: signed(20 downto 0);
  signal c_11: signed(22 downto 0);
  signal c_11_10_0_False_resize: signed(22 downto 0);
  signal c_11_10_0_False_shift: signed(22 downto 0);
  signal c_11_8_1_False_resize: signed(22 downto 0);
  signal c_11_8_1_False_shift: signed(22 downto 0);
  signal c_11_10_2_False_resize: signed(22 downto 0);
  signal c_11_10_2_False_shift: signed(22 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(15 downto 0);
  signal c_13: signed(15 downto 0);
  signal c_14: signed(15 downto 0);
  signal c_15: signed(15 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_15_0_False_resize: signed(23 downto 0);
  signal c_16_15_0_False_shift: signed(23 downto 0);
  signal c_16_8_3_False_resize: signed(23 downto 0);
  signal c_16_8_3_False_shift: signed(23 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_i0_resize: signed(23 downto 0);
  signal c_17_i1_resize: signed(23 downto 0);
  signal c_17_i0_shift: signed(23 downto 0);
  signal c_17_i1_shift: signed(23 downto 0);
  signal c_17_arith: signed(23 downto 0);
  signal c_17_oshift: signed(23 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(22 downto 0);
  signal c_18_15_0_False_resize: signed(22 downto 0);
  signal c_18_15_0_False_shift: signed(22 downto 0);
  signal c_18_8_1_False_resize: signed(22 downto 0);
  signal c_18_8_1_False_shift: signed(22 downto 0);
  signal c_18_8_2_False_resize: signed(22 downto 0);
  signal c_18_8_2_False_shift: signed(22 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(20 downto 0);
  signal c_19_13_4_False_resize: signed(20 downto 0);
  signal c_19_13_4_False_shift: signed(20 downto 0);
  signal c_19_3_0_False_resize: signed(20 downto 0);
  signal c_19_3_0_False_shift: signed(20 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(20 downto 0);
  signal c_21: signed(20 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_22_i0_resize: signed(22 downto 0);
  signal c_22_i1_resize: signed(22 downto 0);
  signal c_22_i0_shift: signed(22 downto 0);
  signal c_22_i1_shift: signed(22 downto 0);
  signal c_22_arith: signed(22 downto 0);
  signal c_22_oshift: signed(22 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(23 downto 0);
  signal c_23_13_8_False_resize: signed(23 downto 0);
  signal c_23_13_8_False_shift: signed(23 downto 0);
  signal c_23_13_0_False_resize: signed(23 downto 0);
  signal c_23_13_0_False_shift: signed(23 downto 0);
  signal c_23_3_1_False_resize: signed(23 downto 0);
  signal c_23_3_1_False_shift: signed(23 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(15 downto 0);
  signal c_25: signed(15 downto 0);
  signal c_26: signed(20 downto 0);
  signal c_27: signed(20 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_25_8_False_resize: signed(23 downto 0);
  signal c_28_25_8_False_shift: signed(23 downto 0);
  signal c_28_17_0_False_resize: signed(23 downto 0);
  signal c_28_17_0_False_shift: signed(23 downto 0);
  signal c_28_27_3_False_resize: signed(23 downto 0);
  signal c_28_27_3_False_shift: signed(23 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_i0_resize: signed(23 downto 0);
  signal c_33_i1_resize: signed(23 downto 0);
  signal c_33_i0_shift: signed(23 downto 0);
  signal c_33_i1_shift: signed(23 downto 0);
  signal c_33_arith: signed(23 downto 0);
  signal c_33_oshift: signed(23 downto 0);
  signal c_33_sub_sel: std_logic;
  signal c_34: signed(20 downto 0);
  signal c_34_25_4_False_resize: signed(20 downto 0);
  signal c_34_25_4_False_shift: signed(20 downto 0);
  signal c_34_17_0_False_resize: signed(20 downto 0);
  signal c_34_17_0_False_shift: signed(20 downto 0);
  signal c_34_25_2_False_resize: signed(20 downto 0);
  signal c_34_25_2_False_shift: signed(20 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(15 downto 0);
  signal c_36: signed(15 downto 0);
  signal c_37: signed(20 downto 0);
  signal c_38: signed(20 downto 0);
  signal c_39: signed(22 downto 0);
  signal c_39_38_0_False_resize: signed(22 downto 0);
  signal c_39_38_0_False_shift: signed(22 downto 0);
  signal c_39_36_0_False_resize: signed(22 downto 0);
  signal c_39_36_0_False_shift: signed(22 downto 0);
  signal c_39_33_0_False_resize: signed(22 downto 0);
  signal c_39_33_0_False_shift: signed(22 downto 0);
  signal c_39_sel: std_logic_vector(1 downto 0);
  signal c_40: signed(20 downto 0);
  signal c_41: signed(20 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_i0_resize: signed(23 downto 0);
  signal c_42_i1_resize: signed(23 downto 0);
  signal c_42_i0_shift: signed(23 downto 0);
  signal c_42_i1_shift: signed(23 downto 0);
  signal c_42_arith: signed(23 downto 0);
  signal c_42_oshift: signed(23 downto 0);
  signal c_42_sub_sel: std_logic;
  signal c_43: signed(23 downto 0);
  signal c_43_8_0_False_resize: signed(23 downto 0);
  signal c_43_8_0_False_shift: signed(23 downto 0);
  signal c_43_15_7_False_resize: signed(23 downto 0);
  signal c_43_15_7_False_shift: signed(23 downto 0);
  signal c_43_15_8_False_resize: signed(23 downto 0);
  signal c_43_15_8_False_shift: signed(23 downto 0);
  signal c_43_sel: std_logic_vector(1 downto 0);
  signal c_44: signed(22 downto 0);
  signal c_45: signed(22 downto 0);
  signal c_46: signed(22 downto 0);
  signal c_46_38_0_False_resize: signed(22 downto 0);
  signal c_46_38_0_False_shift: signed(22 downto 0);
  signal c_46_45_0_False_resize: signed(22 downto 0);
  signal c_46_45_0_False_shift: signed(22 downto 0);
  signal c_46_33_0_False_resize: signed(22 downto 0);
  signal c_46_33_0_False_shift: signed(22 downto 0);
  signal c_46_sel: std_logic_vector(1 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_51_i0_resize: signed(23 downto 0);
  signal c_51_i1_resize: signed(23 downto 0);
  signal c_51_i0_shift: signed(23 downto 0);
  signal c_51_i1_shift: signed(23 downto 0);
  signal c_51_arith: signed(23 downto 0);
  signal c_51_oshift: signed(23 downto 0);
  signal c_51_sub_sel: std_logic;
  signal c_52: signed(23 downto 0);
  signal c_52_27_0_False_resize: signed(23 downto 0);
  signal c_52_27_0_False_shift: signed(23 downto 0);
  signal c_52_25_8_False_resize: signed(23 downto 0);
  signal c_52_25_8_False_shift: signed(23 downto 0);
  signal c_52_22_1_False_resize: signed(23 downto 0);
  signal c_52_22_1_False_shift: signed(23 downto 0);
  signal c_52_27_3_False_resize: signed(23 downto 0);
  signal c_52_27_3_False_shift: signed(23 downto 0);
  signal c_52_sel: std_logic_vector(1 downto 0);
  signal c_53: signed(21 downto 0);
  signal c_54: signed(21 downto 0);
  signal c_55: signed(21 downto 0);
  signal c_56: signed(21 downto 0);
  signal c_57: signed(22 downto 0);
  signal c_57_56_0_False_resize: signed(22 downto 0);
  signal c_57_56_0_False_shift: signed(22 downto 0);
  signal c_57_33_0_False_resize: signed(22 downto 0);
  signal c_57_33_0_False_shift: signed(22 downto 0);
  signal c_57_sel: std_logic_vector(0 downto 0);
  signal c_58: signed(23 downto 0);
  signal c_59: signed(23 downto 0);
  signal c_60: signed(23 downto 0);
  signal c_60_i0_resize: signed(23 downto 0);
  signal c_60_i1_resize: signed(23 downto 0);
  signal c_60_i0_shift: signed(23 downto 0);
  signal c_60_i1_shift: signed(23 downto 0);
  signal c_60_arith: signed(23 downto 0);
  signal c_60_oshift: signed(23 downto 0);
  signal c_60_sub_sel: std_logic;
  signal c_61: signed(23 downto 0);
  signal c_62: signed(23 downto 0);
  signal c_63: signed(23 downto 0);
  signal c_64: signed(23 downto 0);
  signal c_65: signed(25 downto 0);
  signal c_65_64_5_False_resize: signed(25 downto 0);
  signal c_65_64_5_False_shift: signed(25 downto 0);
  signal c_65_42_0_False_resize: signed(25 downto 0);
  signal c_65_42_0_False_shift: signed(25 downto 0);
  signal c_65_51_0_False_resize: signed(25 downto 0);
  signal c_65_51_0_False_shift: signed(25 downto 0);
  signal c_65_sel: std_logic_vector(1 downto 0);
  signal c_66: signed(15 downto 0);
  signal c_67: signed(15 downto 0);
  signal c_68: signed(23 downto 0);
  signal c_69: signed(23 downto 0);
  signal c_70: signed(24 downto 0);
  signal c_70_60_1_False_resize: signed(24 downto 0);
  signal c_70_60_1_False_shift: signed(24 downto 0);
  signal c_70_69_0_False_resize: signed(24 downto 0);
  signal c_70_69_0_False_shift: signed(24 downto 0);
  signal c_70_67_3_False_resize: signed(24 downto 0);
  signal c_70_67_3_False_shift: signed(24 downto 0);
  signal c_70_sel: std_logic_vector(1 downto 0);
  signal c_71: signed(23 downto 0);
  signal c_71_i0_resize: signed(23 downto 0);
  signal c_71_i1_resize: signed(23 downto 0);
  signal c_71_i0_shift: signed(23 downto 0);
  signal c_71_i1_shift: signed(23 downto 0);
  signal c_71_arith: signed(23 downto 0);
  signal c_71_oshift: signed(23 downto 0);
  signal c_71_sub_sel: std_logic;
  signal c_72: signed(23 downto 0);
  signal c_72_0_0_False_resize: signed(23 downto 0);
  signal c_72_0_0_False_shift: signed(23 downto 0);
  signal c_72_0_8_False_resize: signed(23 downto 0);
  signal c_72_0_8_False_shift: signed(23 downto 0);
  signal c_72_sel: std_logic_vector(0 downto 0);
  signal c_73: signed(20 downto 0);
  signal c_74: signed(20 downto 0);
  signal c_75: signed(20 downto 0);
  signal c_76: signed(20 downto 0);
  signal c_77: signed(24 downto 0);
  signal c_77_76_6_False_resize: signed(24 downto 0);
  signal c_77_76_6_False_shift: signed(24 downto 0);
  signal c_77_71_0_False_resize: signed(24 downto 0);
  signal c_77_71_0_False_shift: signed(24 downto 0);
  signal c_77_76_0_False_resize: signed(24 downto 0);
  signal c_77_76_0_False_shift: signed(24 downto 0);
  signal c_77_sel: std_logic_vector(1 downto 0);
  signal c_78: signed(23 downto 0);
  signal c_79: signed(23 downto 0);
  signal c_80: signed(23 downto 0);
  signal c_81: signed(23 downto 0);
  signal c_82: signed(23 downto 0);
  signal c_83: signed(23 downto 0);
  signal c_84: signed(23 downto 0);
  signal c_85: signed(23 downto 0);
  signal c_86: signed(23 downto 0);
  signal c_87: signed(23 downto 0);
  signal c_88: signed(23 downto 0);
  signal c_89: signed(23 downto 0);
  signal c_90: signed(23 downto 0);
  signal c_90_i0_resize: signed(23 downto 0);
  signal c_90_i1_resize: signed(23 downto 0);
  signal c_90_i0_shift: signed(23 downto 0);
  signal c_90_i1_shift: signed(23 downto 0);
  signal c_90_arith: signed(23 downto 0);
  signal c_90_oshift: signed(23 downto 0);
  signal c_90_sub_sel: std_logic;
  signal c_91: signed(23 downto 0);
  signal c_91_42_1_False_resize: signed(23 downto 0);
  signal c_91_42_1_False_shift: signed(23 downto 0);
  signal c_91_67_5_False_resize: signed(23 downto 0);
  signal c_91_67_5_False_shift: signed(23 downto 0);
  signal c_91_64_0_False_resize: signed(23 downto 0);
  signal c_91_64_0_False_shift: signed(23 downto 0);
  signal c_91_42_0_False_resize: signed(23 downto 0);
  signal c_91_42_0_False_shift: signed(23 downto 0);
  signal c_91_sel: std_logic_vector(1 downto 0);
  signal c_92: signed(21 downto 0);
  signal c_93: signed(21 downto 0);
  signal c_94: signed(21 downto 0);
  signal c_95: signed(21 downto 0);
  signal c_96: signed(21 downto 0);
  signal c_97: signed(21 downto 0);
  signal c_98: signed(23 downto 0);
  signal c_99: signed(23 downto 0);
  signal c_100: signed(23 downto 0);
  signal c_101: signed(23 downto 0);
  signal c_102: signed(23 downto 0);
  signal c_102_90_0_False_resize: signed(23 downto 0);
  signal c_102_90_0_False_shift: signed(23 downto 0);
  signal c_102_101_0_False_resize: signed(23 downto 0);
  signal c_102_101_0_False_shift: signed(23 downto 0);
  signal c_102_97_1_False_resize: signed(23 downto 0);
  signal c_102_97_1_False_shift: signed(23 downto 0);
  signal c_102_sel: std_logic_vector(1 downto 0);
  signal c_103: signed(23 downto 0);
  signal c_103_42_0_False_resize: signed(23 downto 0);
  signal c_103_42_0_False_shift: signed(23 downto 0);
  signal c_103_69_0_False_resize: signed(23 downto 0);
  signal c_103_69_0_False_shift: signed(23 downto 0);
  signal c_103_93_3_False_resize: signed(23 downto 0);
  signal c_103_93_3_False_shift: signed(23 downto 0);
  signal c_103_51_2_False_resize: signed(23 downto 0);
  signal c_103_51_2_False_shift: signed(23 downto 0);
  signal c_103_sel: std_logic_vector(1 downto 0);
  signal c_104: signed(23 downto 0);
  signal c_104_74_4_False_resize: signed(23 downto 0);
  signal c_104_74_4_False_shift: signed(23 downto 0);
  signal c_104_69_0_False_resize: signed(23 downto 0);
  signal c_104_69_0_False_shift: signed(23 downto 0);
  signal c_104_42_1_False_resize: signed(23 downto 0);
  signal c_104_42_1_False_shift: signed(23 downto 0);
  signal c_104_sel: std_logic_vector(1 downto 0);
  signal c_105: signed(23 downto 0);
  signal c_106: signed(23 downto 0);
  signal c_107: signed(23 downto 0);
  signal c_108: signed(23 downto 0);
  signal c_109: signed(23 downto 0);
  signal c_109_97_0_False_resize: signed(23 downto 0);
  signal c_109_97_0_False_shift: signed(23 downto 0);
  signal c_109_90_0_False_resize: signed(23 downto 0);
  signal c_109_90_0_False_shift: signed(23 downto 0);
  signal c_109_108_1_False_resize: signed(23 downto 0);
  signal c_109_108_1_False_shift: signed(23 downto 0);
  signal c_109_sel: std_logic_vector(1 downto 0);
  signal c_110: signed(23 downto 0);
  signal c_110_51_0_False_resize: signed(23 downto 0);
  signal c_110_51_0_False_shift: signed(23 downto 0);
  signal c_110_60_2_False_resize: signed(23 downto 0);
  signal c_110_60_2_False_shift: signed(23 downto 0);
  signal c_110_sel: std_logic_vector(0 downto 0);
  signal c_111: signed(23 downto 0);
  signal c_112: signed(23 downto 0);
  signal c_113: signed(23 downto 0);
  signal c_114: signed(23 downto 0);
  signal c_115: signed(22 downto 0);
  signal c_116: signed(22 downto 0);
  signal c_117: signed(22 downto 0);
  signal c_118: signed(22 downto 0);
  signal c_119: signed(22 downto 0);
  signal c_120: signed(22 downto 0);
  signal c_121: signed(23 downto 0);
  signal c_121_120_1_False_resize: signed(23 downto 0);
  signal c_121_120_1_False_shift: signed(23 downto 0);
  signal c_121_90_1_False_resize: signed(23 downto 0);
  signal c_121_90_1_False_shift: signed(23 downto 0);
  signal c_121_114_0_False_resize: signed(23 downto 0);
  signal c_121_114_0_False_shift: signed(23 downto 0);
  signal c_121_sel: std_logic_vector(1 downto 0);
  signal c_122: signed(15 downto 0);
  signal c_123: signed(15 downto 0);
  signal c_124: signed(23 downto 0);
  signal c_124_118_0_False_resize: signed(23 downto 0);
  signal c_124_118_0_False_shift: signed(23 downto 0);
  signal c_124_71_0_False_resize: signed(23 downto 0);
  signal c_124_71_0_False_shift: signed(23 downto 0);
  signal c_124_123_3_False_resize: signed(23 downto 0);
  signal c_124_123_3_False_shift: signed(23 downto 0);
  signal c_124_sel: std_logic_vector(1 downto 0);
  signal c_125: signed(23 downto 0);
  signal c_125_116_2_False_resize: signed(23 downto 0);
  signal c_125_116_2_False_shift: signed(23 downto 0);
  signal c_125_60_0_False_resize: signed(23 downto 0);
  signal c_125_60_0_False_shift: signed(23 downto 0);
  signal c_125_sel: std_logic_vector(0 downto 0);
  signal c_126: signed(23 downto 0);
  signal c_126_71_0_False_resize: signed(23 downto 0);
  signal c_126_71_0_False_shift: signed(23 downto 0);
  signal c_126_112_0_False_resize: signed(23 downto 0);
  signal c_126_112_0_False_shift: signed(23 downto 0);
  signal c_126_sel: std_logic_vector(0 downto 0);
  signal c_127: signed(23 downto 0);
  signal c_128: signed(23 downto 0);
  signal c_129: signed(23 downto 0);
  signal c_130: signed(23 downto 0);
  signal c_131: signed(23 downto 0);
  signal c_131_resize: signed(23 downto 0);
  signal c_132: signed(23 downto 0);
  signal c_132_resize: signed(23 downto 0);
  signal c_133: signed(23 downto 0);
  signal c_134: signed(23 downto 0);
  signal c_135: signed(23 downto 0);
  signal c_136: signed(23 downto 0);
  signal c_137: signed(23 downto 0);
  signal c_137_resize: signed(23 downto 0);
  signal c_138: signed(23 downto 0);
  signal c_139: signed(23 downto 0);
  signal c_140: signed(23 downto 0);
  signal c_141: signed(23 downto 0);
  signal c_142: signed(23 downto 0);
  signal c_142_resize: signed(23 downto 0);
  signal c_143: signed(23 downto 0);
  signal c_143_resize: signed(23 downto 0);
  signal c_144: signed(23 downto 0);
  signal c_145: signed(23 downto 0);
  signal c_146: signed(23 downto 0);
  signal c_147: signed(23 downto 0);
  signal c_148: signed(23 downto 0);
  signal c_148_resize: signed(23 downto 0);
  signal c_149: signed(23 downto 0);
  signal c_149_resize: signed(23 downto 0);
  signal c_150: signed(23 downto 0);
  signal c_151: signed(23 downto 0);
  signal c_152: signed(23 downto 0);
  signal c_152_resize: signed(23 downto 0);
  signal c_153: signed(23 downto 0);
  signal c_154: signed(23 downto 0);
  signal c_155: signed(23 downto 0);
  signal c_156: signed(23 downto 0);
  signal c_157: signed(23 downto 0);
  signal c_157_resize: signed(23 downto 0);
  signal c_158: signed(23 downto 0);
  signal c_159: signed(23 downto 0);
  signal c_160: signed(23 downto 0);
  signal c_160_resize: signed(23 downto 0);
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
  -- output node 0 with id 131
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_131);
    end if;
  end process;
  -- output node 1 with id 132
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_132);
    end if;
  end process;
  -- output node 2 with id 137
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_137);
    end if;
  end process;
  -- output node 3 with id 142
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_142);
    end if;
  end process;
  -- output node 4 with id 143
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_143);
    end if;
  end process;
  -- output node 5 with id 148
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_148);
    end if;
  end process;
  -- output node 6 with id 149
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_149);
    end if;
  end process;
  -- output node 7 with id 152
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_152);
    end if;
  end process;
  -- output node 8 with id 157
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_157);
    end if;
  end process;
  -- output node 9 with id 160
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_160);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[8], [1], [1], [8]]
  c_1_0_0_False_resize <= resize(c_0, 19);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_3_False_resize <= resize(c_0, 19);
  c_1_0_3_False_shift <= shift_left(c_1_0_3_False_resize, 3);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [2], [32], [1]]
  c_2_0_1_False_resize <= resize(c_0, 21);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  c_2_0_0_False_resize <= resize(c_0, 21);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_5_False_resize <= resize(c_0, 21);
  c_2_0_5_False_shift <= shift_left(c_2_0_5_False_resize, 5);
  with config_select_1 select c_2_sel <= 
    "00" when "01",
    "01" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_1_False_shift;
        when "01" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[7], [3], [-31], [9]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 21,
      w_o => 21,
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
      c_3 <= c_3_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[14], [3], [-62], [18]]
  c_4_3_1_False_resize <= resize(c_3, 22);
  c_4_3_1_False_shift <= shift_left(c_4_3_1_False_resize, 1);
  c_4_3_0_False_resize <= resize(c_3, 22);
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  with config_select_3 select c_4_sel <= 
    "0" when "10",
    "0" when "11",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_3_1_False_shift;
        when others => c_4 <= c_4_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[1], [16], [16], [1]]
  c_5_0_4_False_resize <= resize(c_0, 20);
  c_5_0_4_False_shift <= shift_left(c_5_0_4_False_resize, 4);
  c_5_0_0_False_resize <= resize(c_0, 20);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  with config_select_1 select c_5_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_0_4_False_shift;
        when others => c_5 <= c_5_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[1], [16], [16], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 7 and associated fundamentals [[1], [16], [16], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_6 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 8 and associated fundamentals [[13], [19], [-46], [19]]
  with config_select_4 select c_8_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
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
      sub_i => c_8_sub_sel,
      x_i => c_4,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[7], [3], [-31], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 10 and associated fundamentals [[7], [3], [-31], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 11 and associated fundamentals [[7], [12], [-92], [9]]
  c_11_10_0_False_resize <= resize(c_10, 23);
  c_11_10_0_False_shift <= shift_left(c_11_10_0_False_resize, 0);
  c_11_8_1_False_resize <= resize(c_8, 23);
  c_11_8_1_False_shift <= shift_left(c_11_8_1_False_resize, 1);
  c_11_10_2_False_resize <= resize(c_10, 23);
  c_11_10_2_False_shift <= shift_left(c_11_10_2_False_resize, 2);
  with config_select_5 select c_11_sel <= 
    "00" when "11",
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_10_0_False_shift;
        when "01" => c_11 <= c_11_8_1_False_shift;
        when others => c_11 <= c_11_10_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 12 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_0 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 13 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 14 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 16 and associated fundamentals [[104], [1], [1], [152]]
  c_16_15_0_False_resize <= resize(c_15, 24);
  c_16_15_0_False_shift <= shift_left(c_16_15_0_False_resize, 0);
  c_16_8_3_False_resize <= resize(c_8, 24);
  c_16_8_3_False_shift <= shift_left(c_16_8_3_False_resize, 3);
  with config_select_5 select c_16_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_15_0_False_shift;
        when others => c_16 <= c_16_8_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 17 and associated fundamentals [[-90], [23], [-183], [170]]
  with config_select_6 select c_17_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_17_sub_sel,
      x_i => c_11,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 18 and associated fundamentals [[1], [38], [1], [76]]
  c_18_15_0_False_resize <= resize(c_15, 23);
  c_18_15_0_False_shift <= shift_left(c_18_15_0_False_resize, 0);
  c_18_8_1_False_resize <= resize(c_8, 23);
  c_18_8_1_False_shift <= shift_left(c_18_8_1_False_resize, 1);
  c_18_8_2_False_resize <= resize(c_8, 23);
  c_18_8_2_False_shift <= shift_left(c_18_8_2_False_resize, 2);
  with config_select_5 select c_18_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "00" => c_18 <= c_18_15_0_False_shift;
        when "01" => c_18 <= c_18_8_1_False_shift;
        when others => c_18 <= c_18_8_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 19 and associated fundamentals [[7], [16], [-31], [16]]
  c_19_13_4_False_resize <= resize(c_13, 21);
  c_19_13_4_False_shift <= shift_left(c_19_13_4_False_resize, 4);
  c_19_3_0_False_resize <= c_3;
  c_19_3_0_False_shift <= shift_left(c_19_3_0_False_resize, 0);
  with config_select_3 select c_19_sel <= 
    "0" when "01",
    "0" when "11",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_13_4_False_shift;
        when others => c_19 <= c_19_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 20 and associated fundamentals [[7], [16], [-31], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[7], [16], [-31], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 22 and associated fundamentals [[29], [102], [125], [12]]
  with config_select_6 select c_22_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_22_sub_sel,
      x_i => c_18,
      y_i => c_21,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 23 and associated fundamentals [[1], [256], [256], [18]]
  c_23_13_8_False_resize <= resize(c_13, 24);
  c_23_13_8_False_shift <= shift_left(c_23_13_8_False_resize, 8);
  c_23_13_0_False_resize <= resize(c_13, 24);
  c_23_13_0_False_shift <= shift_left(c_23_13_0_False_resize, 0);
  c_23_3_1_False_resize <= resize(c_3, 24);
  c_23_3_1_False_shift <= shift_left(c_23_3_1_False_resize, 1);
  with config_select_3 select c_23_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "00" => c_23 <= c_23_13_8_False_shift;
        when "01" => c_23 <= c_23_13_0_False_shift;
        when others => c_23 <= c_23_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 24 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 25 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 26 and associated fundamentals [[7], [3], [-31], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[7], [3], [-31], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 28 and associated fundamentals [[-90], [24], [-183], [256]]
  c_28_25_8_False_resize <= resize(c_25, 24);
  c_28_25_8_False_shift <= shift_left(c_28_25_8_False_resize, 8);
  c_28_17_0_False_resize <= c_17;
  c_28_17_0_False_shift <= shift_left(c_28_17_0_False_resize, 0);
  c_28_27_3_False_resize <= resize(c_27, 24);
  c_28_27_3_False_shift <= shift_left(c_28_27_3_False_resize, 3);
  with config_select_7 select c_28_sel <= 
    "00" when "11",
    "01" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "00" => c_28 <= c_28_25_8_False_shift;
        when "01" => c_28 <= c_28_17_0_False_shift;
        when others => c_28 <= c_28_27_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 29 and associated fundamentals [[1], [256], [256], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 30 and associated fundamentals [[1], [256], [256], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 31 and associated fundamentals [[1], [256], [256], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 32 and associated fundamentals [[1], [256], [256], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 33 and associated fundamentals [[91], [232], [73], [-238]]
  with config_select_8 select c_33_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_33: entity work.adder_node
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
      sub_i => c_33_sub_sel,
      x_i => c_32,
      y_i => c_28,
      z_o => c_33_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_33_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 34 and associated fundamentals [[16], [23], [16], [4]]
  c_34_25_4_False_resize <= resize(c_25, 21);
  c_34_25_4_False_shift <= shift_left(c_34_25_4_False_resize, 4);
  c_34_17_0_False_resize <= c_17(20 downto 0);
  c_34_17_0_False_shift <= shift_left(c_34_17_0_False_resize, 0);
  c_34_25_2_False_resize <= resize(c_25, 21);
  c_34_25_2_False_shift <= shift_left(c_34_25_2_False_resize, 2);
  with config_select_7 select c_34_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "00" => c_34 <= c_34_25_4_False_shift;
        when "01" => c_34 <= c_34_17_0_False_shift;
        when others => c_34 <= c_34_25_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 35 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 36 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 37 and associated fundamentals [[7], [3], [-31], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 38 and associated fundamentals [[7], [3], [-31], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 39 and associated fundamentals [[1], [3], [73], [9]]
  c_39_38_0_False_resize <= resize(c_38, 23);
  c_39_38_0_False_shift <= shift_left(c_39_38_0_False_resize, 0);
  c_39_36_0_False_resize <= resize(c_36, 23);
  c_39_36_0_False_shift <= shift_left(c_39_36_0_False_resize, 0);
  c_39_33_0_False_resize <= c_33(22 downto 0);
  c_39_33_0_False_shift <= shift_left(c_39_33_0_False_resize, 0);
  with config_select_9 select c_39_sel <= 
    "00" when "01",
    "00" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "00" => c_39 <= c_39_38_0_False_shift;
        when "01" => c_39 <= c_39_36_0_False_shift;
        when others => c_39 <= c_39_33_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 40 and associated fundamentals [[16], [23], [16], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 41 and associated fundamentals [[16], [23], [16], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 42 and associated fundamentals [[127], [181], [55], [41]]
  with config_select_10 select c_42_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_42: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 23,
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
      sub_i => c_42_sub_sel,
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
  -- node of type 'mux' in stage 5 with id 43 and associated fundamentals [[128], [256], [-46], [19]]
  c_43_8_0_False_resize <= resize(c_8, 24);
  c_43_8_0_False_shift <= shift_left(c_43_8_0_False_resize, 0);
  c_43_15_7_False_resize <= resize(c_15, 24);
  c_43_15_7_False_shift <= shift_left(c_43_15_7_False_resize, 7);
  c_43_15_8_False_resize <= resize(c_15, 24);
  c_43_15_8_False_shift <= shift_left(c_43_15_8_False_resize, 8);
  with config_select_5 select c_43_sel <= 
    "00" when "10",
    "00" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "00" => c_43 <= c_43_8_0_False_shift;
        when "01" => c_43 <= c_43_15_7_False_shift;
        when others => c_43 <= c_43_15_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 44 and associated fundamentals [[29], [102], [125], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 45 and associated fundamentals [[29], [102], [125], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 46 and associated fundamentals [[29], [3], [73], [12]]
  c_46_38_0_False_resize <= resize(c_38, 23);
  c_46_38_0_False_shift <= shift_left(c_46_38_0_False_resize, 0);
  c_46_45_0_False_resize <= c_45;
  c_46_45_0_False_shift <= shift_left(c_46_45_0_False_resize, 0);
  c_46_33_0_False_resize <= c_33(22 downto 0);
  c_46_33_0_False_shift <= shift_left(c_46_33_0_False_resize, 0);
  with config_select_9 select c_46_sel <= 
    "00" when "01",
    "01" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "00" => c_46 <= c_46_38_0_False_shift;
        when "01" => c_46 <= c_46_45_0_False_shift;
        when others => c_46 <= c_46_33_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 47 and associated fundamentals [[128], [256], [-46], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 48 and associated fundamentals [[128], [256], [-46], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 49 and associated fundamentals [[128], [256], [-46], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 50 and associated fundamentals [[128], [256], [-46], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 51 and associated fundamentals [[157], [253], [27], [7]]
  with config_select_10 select c_51_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_51: entity work.adder_node
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
      sub_i => c_51_sub_sel,
      x_i => c_50,
      y_i => c_46,
      z_o => c_51_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_51_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 52 and associated fundamentals [[56], [256], [-31], [24]]
  c_52_27_0_False_resize <= resize(c_27, 24);
  c_52_27_0_False_shift <= shift_left(c_52_27_0_False_resize, 0);
  c_52_25_8_False_resize <= resize(c_25, 24);
  c_52_25_8_False_shift <= shift_left(c_52_25_8_False_resize, 8);
  c_52_22_1_False_resize <= resize(c_22, 24);
  c_52_22_1_False_shift <= shift_left(c_52_22_1_False_resize, 1);
  c_52_27_3_False_resize <= resize(c_27, 24);
  c_52_27_3_False_shift <= shift_left(c_52_27_3_False_resize, 3);
  with config_select_7 select c_52_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_52_sel is
        when "00" => c_52 <= c_52_27_0_False_shift;
        when "01" => c_52 <= c_52_25_8_False_shift;
        when "10" => c_52 <= c_52_22_1_False_shift;
        when others => c_52 <= c_52_27_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 53 and associated fundamentals [[13], [19], [-46], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 54 and associated fundamentals [[13], [19], [-46], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 55 and associated fundamentals [[13], [19], [-46], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 56 and associated fundamentals [[13], [19], [-46], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 57 and associated fundamentals [[91], [19], [-46], [19]]
  c_57_56_0_False_resize <= resize(c_56, 23);
  c_57_56_0_False_shift <= shift_left(c_57_56_0_False_resize, 0);
  c_57_33_0_False_resize <= c_33(22 downto 0);
  c_57_33_0_False_shift <= shift_left(c_57_33_0_False_resize, 0);
  with config_select_9 select c_57_sel <= 
    "0" when "10",
    "0" when "11",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_57_sel is
        when "0" => c_57 <= c_57_56_0_False_shift;
        when others => c_57 <= c_57_33_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 58 and associated fundamentals [[56], [256], [-31], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 59 and associated fundamentals [[56], [256], [-31], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 60 and associated fundamentals [[147], [237], [15], [43]]
  with config_select_10 select c_60_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_60: entity work.adder_node
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
      sub_i => c_60_sub_sel,
      x_i => c_59,
      y_i => c_57,
      z_o => c_60_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_60_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 61 and associated fundamentals [[-90], [23], [-183], [170]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 62 and associated fundamentals [[-90], [23], [-183], [170]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 63 and associated fundamentals [[-90], [23], [-183], [170]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 64 and associated fundamentals [[-90], [23], [-183], [170]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 65 and associated fundamentals [[127], [736], [55], [7]]
  c_65_64_5_False_resize <= resize(c_64, 26);
  c_65_64_5_False_shift <= shift_left(c_65_64_5_False_resize, 5);
  c_65_42_0_False_resize <= resize(c_42, 26);
  c_65_42_0_False_shift <= shift_left(c_65_42_0_False_resize, 0);
  c_65_51_0_False_resize <= resize(c_51, 26);
  c_65_51_0_False_shift <= shift_left(c_65_51_0_False_resize, 0);
  with config_select_11 select c_65_sel <= 
    "00" when "01",
    "01" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_65_sel is
        when "00" => c_65 <= c_65_64_5_False_shift;
        when "01" => c_65 <= c_65_42_0_False_shift;
        when others => c_65 <= c_65_51_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 66 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 67 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 68 and associated fundamentals [[91], [232], [73], [-238]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 69 and associated fundamentals [[91], [232], [73], [-238]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 70 and associated fundamentals [[8], [474], [73], [86]]
  c_70_60_1_False_resize <= resize(c_60, 25);
  c_70_60_1_False_shift <= shift_left(c_70_60_1_False_resize, 1);
  c_70_69_0_False_resize <= resize(c_69, 25);
  c_70_69_0_False_shift <= shift_left(c_70_69_0_False_resize, 0);
  c_70_67_3_False_resize <= resize(c_67, 25);
  c_70_67_3_False_shift <= shift_left(c_70_67_3_False_resize, 3);
  with config_select_11 select c_70_sel <= 
    "00" when "01",
    "00" when "11",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_70_sel is
        when "00" => c_70 <= c_70_60_1_False_shift;
        when "01" => c_70 <= c_70_69_0_False_shift;
        when others => c_70 <= c_70_67_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 71 and associated fundamentals [[111], [-212], [201], [-165]]
  with config_select_12 select c_71_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_71: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
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
      sub_i => c_71_sub_sel,
      x_i => c_65,
      y_i => c_70,
      z_o => c_71_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_71_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 72 and associated fundamentals [[256], [1], [256], [256]]
  c_72_0_0_False_resize <= resize(c_0, 24);
  c_72_0_0_False_shift <= shift_left(c_72_0_0_False_resize, 0);
  c_72_0_8_False_resize <= resize(c_0, 24);
  c_72_0_8_False_shift <= shift_left(c_72_0_8_False_resize, 8);
  with config_select_1 select c_72_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_72_sel is
        when "0" => c_72 <= c_72_0_0_False_shift;
        when others => c_72 <= c_72_0_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 73 and associated fundamentals [[7], [3], [-31], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 74 and associated fundamentals [[7], [3], [-31], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 75 and associated fundamentals [[7], [3], [-31], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 76 and associated fundamentals [[7], [3], [-31], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 77 and associated fundamentals [[448], [192], [-31], [-165]]
  c_77_76_6_False_resize <= resize(c_76, 25);
  c_77_76_6_False_shift <= shift_left(c_77_76_6_False_resize, 6);
  c_77_71_0_False_resize <= resize(c_71, 25);
  c_77_71_0_False_shift <= shift_left(c_77_71_0_False_resize, 0);
  c_77_76_0_False_resize <= resize(c_76, 25);
  c_77_76_0_False_shift <= shift_left(c_77_76_0_False_resize, 0);
  with config_select_13 select c_77_sel <= 
    "00" when "01",
    "00" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_77_sel is
        when "00" => c_77 <= c_77_76_6_False_shift;
        when "01" => c_77 <= c_77_71_0_False_shift;
        when others => c_77 <= c_77_76_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 78 and associated fundamentals [[256], [1], [256], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_72 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 79 and associated fundamentals [[256], [1], [256], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 80 and associated fundamentals [[256], [1], [256], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 81 and associated fundamentals [[256], [1], [256], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_80 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 82 and associated fundamentals [[256], [1], [256], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_81 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 83 and associated fundamentals [[256], [1], [256], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_82 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 84 and associated fundamentals [[256], [1], [256], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_83 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 85 and associated fundamentals [[256], [1], [256], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_84 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 86 and associated fundamentals [[256], [1], [256], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_85 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 87 and associated fundamentals [[256], [1], [256], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_86 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 88 and associated fundamentals [[256], [1], [256], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_87 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 89 and associated fundamentals [[256], [1], [256], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_88 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 90 and associated fundamentals [[-192], [-191], [225], [91]]
  with config_select_14 select c_90_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_90: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 25,
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
      y_i => c_77,
      z_o => c_90_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_90_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 91 and associated fundamentals [[254], [32], [55], [170]]
  c_91_42_1_False_resize <= c_42;
  c_91_42_1_False_shift <= shift_left(c_91_42_1_False_resize, 1);
  c_91_67_5_False_resize <= resize(c_67, 24);
  c_91_67_5_False_shift <= shift_left(c_91_67_5_False_resize, 5);
  c_91_64_0_False_resize <= c_64;
  c_91_64_0_False_shift <= shift_left(c_91_64_0_False_resize, 0);
  c_91_42_0_False_resize <= c_42;
  c_91_42_0_False_shift <= shift_left(c_91_42_0_False_resize, 0);
  with config_select_11 select c_91_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_91_sel is
        when "00" => c_91 <= c_91_42_1_False_shift;
        when "01" => c_91 <= c_91_67_5_False_shift;
        when "10" => c_91 <= c_91_64_0_False_shift;
        when others => c_91 <= c_91_42_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 92 and associated fundamentals [[13], [19], [-46], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 93 and associated fundamentals [[13], [19], [-46], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_92 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 94 and associated fundamentals [[13], [19], [-46], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_93 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 95 and associated fundamentals [[13], [19], [-46], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_94 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 96 and associated fundamentals [[13], [19], [-46], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_95 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 97 and associated fundamentals [[13], [19], [-46], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_96 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 98 and associated fundamentals [[91], [232], [73], [-238]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 99 and associated fundamentals [[91], [232], [73], [-238]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_98 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 100 and associated fundamentals [[91], [232], [73], [-238]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_99 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 101 and associated fundamentals [[91], [232], [73], [-238]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_100 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 102 and associated fundamentals [[-192], [-191], [-92], [-238]]
  c_102_90_0_False_resize <= c_90;
  c_102_90_0_False_shift <= shift_left(c_102_90_0_False_resize, 0);
  c_102_101_0_False_resize <= c_101;
  c_102_101_0_False_shift <= shift_left(c_102_101_0_False_resize, 0);
  c_102_97_1_False_resize <= resize(c_97, 24);
  c_102_97_1_False_shift <= shift_left(c_102_97_1_False_resize, 1);
  with config_select_15 select c_102_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_102_sel is
        when "00" => c_102 <= c_102_90_0_False_shift;
        when "01" => c_102 <= c_102_101_0_False_shift;
        when others => c_102 <= c_102_97_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 103 and associated fundamentals [[91], [181], [108], [152]]
  c_103_42_0_False_resize <= c_42;
  c_103_42_0_False_shift <= shift_left(c_103_42_0_False_resize, 0);
  c_103_69_0_False_resize <= c_69;
  c_103_69_0_False_shift <= shift_left(c_103_69_0_False_resize, 0);
  c_103_93_3_False_resize <= resize(c_93, 24);
  c_103_93_3_False_shift <= shift_left(c_103_93_3_False_resize, 3);
  c_103_51_2_False_resize <= c_51;
  c_103_51_2_False_shift <= shift_left(c_103_51_2_False_resize, 2);
  with config_select_11 select c_103_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_103_sel is
        when "00" => c_103 <= c_103_42_0_False_shift;
        when "01" => c_103 <= c_103_69_0_False_shift;
        when "10" => c_103 <= c_103_93_3_False_shift;
        when others => c_103 <= c_103_51_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 104 and associated fundamentals [[112], [232], [73], [82]]
  c_104_74_4_False_resize <= resize(c_74, 24);
  c_104_74_4_False_shift <= shift_left(c_104_74_4_False_resize, 4);
  c_104_69_0_False_resize <= c_69;
  c_104_69_0_False_shift <= shift_left(c_104_69_0_False_resize, 0);
  c_104_42_1_False_resize <= c_42;
  c_104_42_1_False_shift <= shift_left(c_104_42_1_False_resize, 1);
  with config_select_11 select c_104_sel <= 
    "00" when "00",
    "01" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_104_sel is
        when "00" => c_104 <= c_104_74_4_False_shift;
        when "01" => c_104 <= c_104_69_0_False_shift;
        when others => c_104 <= c_104_42_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 105 and associated fundamentals [[157], [253], [27], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 106 and associated fundamentals [[157], [253], [27], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_105 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 107 and associated fundamentals [[157], [253], [27], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_106 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 108 and associated fundamentals [[157], [253], [27], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_108 <= c_107 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 109 and associated fundamentals [[13], [19], [225], [14]]
  c_109_97_0_False_resize <= resize(c_97, 24);
  c_109_97_0_False_shift <= shift_left(c_109_97_0_False_resize, 0);
  c_109_90_0_False_resize <= c_90;
  c_109_90_0_False_shift <= shift_left(c_109_90_0_False_resize, 0);
  c_109_108_1_False_resize <= c_108;
  c_109_108_1_False_shift <= shift_left(c_109_108_1_False_resize, 1);
  with config_select_15 select c_109_sel <= 
    "00" when "01",
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_109_sel is
        when "00" => c_109 <= c_109_97_0_False_shift;
        when "01" => c_109 <= c_109_90_0_False_shift;
        when others => c_109 <= c_109_108_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 110 and associated fundamentals [[157], [253], [60], [172]]
  c_110_51_0_False_resize <= c_51;
  c_110_51_0_False_shift <= shift_left(c_110_51_0_False_resize, 0);
  c_110_60_2_False_resize <= c_60;
  c_110_60_2_False_shift <= shift_left(c_110_60_2_False_resize, 2);
  with config_select_11 select c_110_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_110_sel is
        when "0" => c_110 <= c_110_51_0_False_shift;
        when others => c_110 <= c_110_60_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 111 and associated fundamentals [[-90], [23], [-183], [170]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 112 and associated fundamentals [[-90], [23], [-183], [170]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_111 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 113 and associated fundamentals [[-90], [23], [-183], [170]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_112 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 114 and associated fundamentals [[-90], [23], [-183], [170]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_113 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 115 and associated fundamentals [[29], [102], [125], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 116 and associated fundamentals [[29], [102], [125], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_116 <= c_115 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 117 and associated fundamentals [[29], [102], [125], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_117 <= c_116 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 118 and associated fundamentals [[29], [102], [125], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_118 <= c_117 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 119 and associated fundamentals [[29], [102], [125], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_119 <= c_118 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 120 and associated fundamentals [[29], [102], [125], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_120 <= c_119 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 121 and associated fundamentals [[58], [23], [250], [182]]
  c_121_120_1_False_resize <= resize(c_120, 24);
  c_121_120_1_False_shift <= shift_left(c_121_120_1_False_resize, 1);
  c_121_90_1_False_resize <= c_90;
  c_121_90_1_False_shift <= shift_left(c_121_90_1_False_resize, 1);
  c_121_114_0_False_resize <= c_114;
  c_121_114_0_False_shift <= shift_left(c_121_114_0_False_resize, 0);
  with config_select_15 select c_121_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_121_sel is
        when "00" => c_121 <= c_121_120_1_False_shift;
        when "01" => c_121 <= c_121_90_1_False_shift;
        when others => c_121 <= c_121_114_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 122 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_122 <= c_67 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 123 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_123 <= c_122 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 124 and associated fundamentals [[111], [102], [201], [8]]
  c_124_118_0_False_resize <= resize(c_118, 24);
  c_124_118_0_False_shift <= shift_left(c_124_118_0_False_resize, 0);
  c_124_71_0_False_resize <= c_71;
  c_124_71_0_False_shift <= shift_left(c_124_71_0_False_resize, 0);
  c_124_123_3_False_resize <= resize(c_123, 24);
  c_124_123_3_False_shift <= shift_left(c_124_123_3_False_resize, 3);
  with config_select_13 select c_124_sel <= 
    "00" when "01",
    "01" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_124_sel is
        when "00" => c_124 <= c_124_118_0_False_shift;
        when "01" => c_124 <= c_124_71_0_False_shift;
        when others => c_124 <= c_124_123_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 125 and associated fundamentals [[147], [237], [15], [48]]
  c_125_116_2_False_resize <= resize(c_116, 24);
  c_125_116_2_False_shift <= shift_left(c_125_116_2_False_resize, 2);
  c_125_60_0_False_resize <= c_60;
  c_125_60_0_False_shift <= shift_left(c_125_60_0_False_resize, 0);
  with config_select_11 select c_125_sel <= 
    "0" when "11",
    "1" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_125_sel is
        when "0" => c_125 <= c_125_116_2_False_shift;
        when others => c_125 <= c_125_60_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 126 and associated fundamentals [[-90], [-212], [-183], [-165]]
  c_126_71_0_False_resize <= c_71;
  c_126_71_0_False_shift <= shift_left(c_126_71_0_False_resize, 0);
  c_126_112_0_False_resize <= c_112;
  c_126_112_0_False_shift <= shift_left(c_126_112_0_False_resize, 0);
  with config_select_13 select c_126_sel <= 
    "0" when "11",
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_126_sel is
        when "0" => c_126 <= c_126_71_0_False_shift;
        when others => c_126 <= c_126_112_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 127 and associated fundamentals [[254], [32], [55], [170]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_127 <= c_91 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 128 and associated fundamentals [[254], [32], [55], [170]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_128 <= c_127 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 129 and associated fundamentals [[254], [32], [55], [170]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_129 <= c_128 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 130 and associated fundamentals [[254], [32], [55], [170]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_130 <= c_129 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 131 and associated fundamentals [[254], [32], [55], [170]]
  c_131_resize <= c_130;
  c_131 <= shift_left(c_131_resize, 0);
  -- node of type 'output' in stage 15 with id 132 and associated fundamentals [[192], [191], [92], [238]]
  c_132_resize <= c_102;
  c_132 <= -shift_left(c_132_resize, 0);
  -- node of type 'register' in stage 12 with id 133 and associated fundamentals [[91], [181], [108], [152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_133 <= c_103 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 134 and associated fundamentals [[91], [181], [108], [152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_134 <= c_133 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 135 and associated fundamentals [[91], [181], [108], [152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_135 <= c_134 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 136 and associated fundamentals [[91], [181], [108], [152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_136 <= c_135 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 137 and associated fundamentals [[91], [181], [108], [152]]
  c_137_resize <= c_136;
  c_137 <= shift_left(c_137_resize, 0);
  -- node of type 'register' in stage 12 with id 138 and associated fundamentals [[112], [232], [73], [82]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_138 <= c_104 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 139 and associated fundamentals [[112], [232], [73], [82]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_139 <= c_138 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 140 and associated fundamentals [[112], [232], [73], [82]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_140 <= c_139 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 141 and associated fundamentals [[112], [232], [73], [82]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_141 <= c_140 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 142 and associated fundamentals [[112], [232], [73], [82]]
  c_142_resize <= c_141;
  c_142 <= shift_left(c_142_resize, 0);
  -- node of type 'output' in stage 15 with id 143 and associated fundamentals [[13], [19], [225], [14]]
  c_143_resize <= c_109;
  c_143 <= shift_left(c_143_resize, 0);
  -- node of type 'register' in stage 12 with id 144 and associated fundamentals [[157], [253], [60], [172]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_144 <= c_110 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 145 and associated fundamentals [[157], [253], [60], [172]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_145 <= c_144 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 146 and associated fundamentals [[157], [253], [60], [172]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_146 <= c_145 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 147 and associated fundamentals [[157], [253], [60], [172]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_147 <= c_146 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 148 and associated fundamentals [[157], [253], [60], [172]]
  c_148_resize <= c_147;
  c_148 <= shift_left(c_148_resize, 0);
  -- node of type 'output' in stage 15 with id 149 and associated fundamentals [[58], [23], [250], [182]]
  c_149_resize <= c_121;
  c_149 <= shift_left(c_149_resize, 0);
  -- node of type 'register' in stage 14 with id 150 and associated fundamentals [[111], [102], [201], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_150 <= c_124 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 151 and associated fundamentals [[111], [102], [201], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_151 <= c_150 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 152 and associated fundamentals [[111], [102], [201], [8]]
  c_152_resize <= c_151;
  c_152 <= shift_left(c_152_resize, 0);
  -- node of type 'register' in stage 12 with id 153 and associated fundamentals [[147], [237], [15], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_153 <= c_125 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 154 and associated fundamentals [[147], [237], [15], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_154 <= c_153 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 155 and associated fundamentals [[147], [237], [15], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_155 <= c_154 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 156 and associated fundamentals [[147], [237], [15], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_156 <= c_155 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 157 and associated fundamentals [[147], [237], [15], [48]]
  c_157_resize <= c_156;
  c_157 <= shift_left(c_157_resize, 0);
  -- node of type 'register' in stage 14 with id 158 and associated fundamentals [[-90], [-212], [-183], [-165]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_158 <= c_126 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 159 and associated fundamentals [[-90], [-212], [-183], [-165]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_159 <= c_158 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 160 and associated fundamentals [[90], [212], [183], [165]]
  c_160_resize <= c_159;
  c_160 <= -shift_left(c_160_resize, 0);
end architecture;
