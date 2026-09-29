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
  signal c_2: signed(22 downto 0);
  signal c_2_0_7_False_resize: signed(22 downto 0);
  signal c_2_0_7_False_shift: signed(22 downto 0);
  signal c_2_0_0_False_resize: signed(22 downto 0);
  signal c_2_0_0_False_shift: signed(22 downto 0);
  signal c_2_0_5_False_resize: signed(22 downto 0);
  signal c_2_0_5_False_shift: signed(22 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(23 downto 0);
  signal c_3_i0_resize: signed(23 downto 0);
  signal c_3_i1_resize: signed(23 downto 0);
  signal c_3_i0_shift: signed(23 downto 0);
  signal c_3_i1_shift: signed(23 downto 0);
  signal c_3_arith: signed(23 downto 0);
  signal c_3_oshift: signed(23 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(18 downto 0);
  signal c_6_3_0_False_resize: signed(18 downto 0);
  signal c_6_3_0_False_shift: signed(18 downto 0);
  signal c_6_5_1_False_resize: signed(18 downto 0);
  signal c_6_5_1_False_shift: signed(18 downto 0);
  signal c_6_5_0_False_resize: signed(18 downto 0);
  signal c_6_5_0_False_shift: signed(18 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(18 downto 0);
  signal c_7_3_0_False_resize: signed(18 downto 0);
  signal c_7_3_0_False_shift: signed(18 downto 0);
  signal c_7_5_0_False_resize: signed(18 downto 0);
  signal c_7_5_0_False_shift: signed(18 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_i0_resize: signed(22 downto 0);
  signal c_8_i1_resize: signed(22 downto 0);
  signal c_8_i0_shift: signed(22 downto 0);
  signal c_8_i1_shift: signed(22 downto 0);
  signal c_8_arith: signed(22 downto 0);
  signal c_8_oshift: signed(22 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(24 downto 0);
  signal c_9_5_0_False_resize: signed(24 downto 0);
  signal c_9_5_0_False_shift: signed(24 downto 0);
  signal c_9_5_8_False_resize: signed(24 downto 0);
  signal c_9_5_8_False_shift: signed(24 downto 0);
  signal c_9_3_3_False_resize: signed(24 downto 0);
  signal c_9_3_3_False_shift: signed(24 downto 0);
  signal c_9_3_4_False_resize: signed(24 downto 0);
  signal c_9_3_4_False_shift: signed(24 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(15 downto 0);
  signal c_11: signed(15 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_8_0_False_resize: signed(22 downto 0);
  signal c_12_8_0_False_shift: signed(22 downto 0);
  signal c_12_11_0_False_resize: signed(22 downto 0);
  signal c_12_11_0_False_shift: signed(22 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(24 downto 0);
  signal c_14: signed(24 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_i0_resize: signed(25 downto 0);
  signal c_15_i1_resize: signed(25 downto 0);
  signal c_15_i0_shift: signed(25 downto 0);
  signal c_15_i1_shift: signed(25 downto 0);
  signal c_15_arith: signed(25 downto 0);
  signal c_15_oshift: signed(25 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(23 downto 0);
  signal c_16_11_7_False_resize: signed(23 downto 0);
  signal c_16_11_7_False_shift: signed(23 downto 0);
  signal c_16_8_0_False_resize: signed(23 downto 0);
  signal c_16_8_0_False_shift: signed(23 downto 0);
  signal c_16_11_2_False_resize: signed(23 downto 0);
  signal c_16_11_2_False_shift: signed(23 downto 0);
  signal c_16_11_8_False_resize: signed(23 downto 0);
  signal c_16_11_8_False_shift: signed(23 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(15 downto 0);
  signal c_18: signed(15 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_22_3_False_resize: signed(25 downto 0);
  signal c_23_22_3_False_shift: signed(25 downto 0);
  signal c_23_18_2_False_resize: signed(25 downto 0);
  signal c_23_18_2_False_shift: signed(25 downto 0);
  signal c_23_15_5_False_resize: signed(25 downto 0);
  signal c_23_15_5_False_shift: signed(25 downto 0);
  signal c_23_15_0_False_resize: signed(25 downto 0);
  signal c_23_15_0_False_shift: signed(25 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_i0_resize: signed(25 downto 0);
  signal c_26_i1_resize: signed(25 downto 0);
  signal c_26_i0_shift: signed(25 downto 0);
  signal c_26_i1_shift: signed(25 downto 0);
  signal c_26_arith: signed(25 downto 0);
  signal c_26_oshift: signed(25 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(23 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_30: signed(22 downto 0);
  signal c_31: signed(22 downto 0);
  signal c_32: signed(22 downto 0);
  signal c_33: signed(24 downto 0);
  signal c_33_32_5_False_resize: signed(24 downto 0);
  signal c_33_32_5_False_shift: signed(24 downto 0);
  signal c_33_32_4_False_resize: signed(24 downto 0);
  signal c_33_32_4_False_shift: signed(24 downto 0);
  signal c_33_26_0_False_resize: signed(24 downto 0);
  signal c_33_26_0_False_shift: signed(24 downto 0);
  signal c_33_28_0_False_resize: signed(24 downto 0);
  signal c_33_28_0_False_shift: signed(24 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(15 downto 0);
  signal c_35: signed(15 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_36_28_2_False_resize: signed(25 downto 0);
  signal c_36_28_2_False_shift: signed(25 downto 0);
  signal c_36_26_0_False_resize: signed(25 downto 0);
  signal c_36_26_0_False_shift: signed(25 downto 0);
  signal c_36_32_0_False_resize: signed(25 downto 0);
  signal c_36_32_0_False_shift: signed(25 downto 0);
  signal c_36_35_4_False_resize: signed(25 downto 0);
  signal c_36_35_4_False_shift: signed(25 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(24 downto 0);
  signal c_37_i0_resize: signed(24 downto 0);
  signal c_37_i1_resize: signed(24 downto 0);
  signal c_37_i0_shift: signed(24 downto 0);
  signal c_37_i1_shift: signed(24 downto 0);
  signal c_37_arith: signed(24 downto 0);
  signal c_37_oshift: signed(24 downto 0);
  signal c_37_sub_sel: std_logic;
  signal c_38: signed(22 downto 0);
  signal c_39: signed(22 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_44: signed(26 downto 0);
  signal c_44_39_1_False_resize: signed(26 downto 0);
  signal c_44_39_1_False_shift: signed(26 downto 0);
  signal c_44_43_0_False_resize: signed(26 downto 0);
  signal c_44_43_0_False_shift: signed(26 downto 0);
  signal c_44_37_2_False_resize: signed(26 downto 0);
  signal c_44_37_2_False_shift: signed(26 downto 0);
  signal c_44_sel: std_logic_vector(1 downto 0);
  signal c_45: signed(15 downto 0);
  signal c_46: signed(15 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_37_0_False_resize: signed(25 downto 0);
  signal c_47_37_0_False_shift: signed(25 downto 0);
  signal c_47_46_10_False_resize: signed(25 downto 0);
  signal c_47_46_10_False_shift: signed(25 downto 0);
  signal c_47_46_0_False_resize: signed(25 downto 0);
  signal c_47_46_0_False_shift: signed(25 downto 0);
  signal c_47_sel: std_logic_vector(1 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_48_i0_resize: signed(25 downto 0);
  signal c_48_i1_resize: signed(25 downto 0);
  signal c_48_i0_shift: signed(25 downto 0);
  signal c_48_i1_shift: signed(25 downto 0);
  signal c_48_arith: signed(25 downto 0);
  signal c_48_oshift: signed(25 downto 0);
  signal c_48_sub_sel: std_logic;
  signal c_49: signed(15 downto 0);
  signal c_50: signed(15 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_55: signed(22 downto 0);
  signal c_56: signed(22 downto 0);
  signal c_57: signed(27 downto 0);
  signal c_57_56_1_False_resize: signed(27 downto 0);
  signal c_57_56_1_False_shift: signed(27 downto 0);
  signal c_57_50_8_False_resize: signed(27 downto 0);
  signal c_57_50_8_False_shift: signed(27 downto 0);
  signal c_57_54_4_False_resize: signed(27 downto 0);
  signal c_57_54_4_False_shift: signed(27 downto 0);
  signal c_57_48_0_False_resize: signed(27 downto 0);
  signal c_57_48_0_False_shift: signed(27 downto 0);
  signal c_57_sel: std_logic_vector(1 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_60: signed(25 downto 0);
  signal c_61: signed(25 downto 0);
  signal c_62: signed(25 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_64: signed(26 downto 0);
  signal c_64_59_0_False_resize: signed(26 downto 0);
  signal c_64_59_0_False_shift: signed(26 downto 0);
  signal c_64_48_2_False_resize: signed(26 downto 0);
  signal c_64_48_2_False_shift: signed(26 downto 0);
  signal c_64_54_1_False_resize: signed(26 downto 0);
  signal c_64_54_1_False_shift: signed(26 downto 0);
  signal c_64_63_0_False_resize: signed(26 downto 0);
  signal c_64_63_0_False_shift: signed(26 downto 0);
  signal c_64_sel: std_logic_vector(1 downto 0);
  signal c_65: signed(25 downto 0);
  signal c_65_i0_resize: signed(25 downto 0);
  signal c_65_i1_resize: signed(25 downto 0);
  signal c_65_i0_shift: signed(25 downto 0);
  signal c_65_i1_shift: signed(25 downto 0);
  signal c_65_arith: signed(25 downto 0);
  signal c_65_oshift: signed(25 downto 0);
  signal c_66: signed(15 downto 0);
  signal c_67: signed(15 downto 0);
  signal c_68: signed(25 downto 0);
  signal c_69: signed(25 downto 0);
  signal c_70: signed(24 downto 0);
  signal c_71: signed(24 downto 0);
  signal c_72: signed(24 downto 0);
  signal c_73: signed(24 downto 0);
  signal c_74: signed(25 downto 0);
  signal c_74_65_0_False_resize: signed(25 downto 0);
  signal c_74_65_0_False_shift: signed(25 downto 0);
  signal c_74_69_0_False_resize: signed(25 downto 0);
  signal c_74_69_0_False_shift: signed(25 downto 0);
  signal c_74_67_7_False_resize: signed(25 downto 0);
  signal c_74_67_7_False_shift: signed(25 downto 0);
  signal c_74_73_2_False_resize: signed(25 downto 0);
  signal c_74_73_2_False_shift: signed(25 downto 0);
  signal c_74_sel: std_logic_vector(1 downto 0);
  signal c_75: signed(24 downto 0);
  signal c_75_37_0_False_resize: signed(24 downto 0);
  signal c_75_37_0_False_shift: signed(24 downto 0);
  signal c_75_39_0_False_resize: signed(24 downto 0);
  signal c_75_39_0_False_shift: signed(24 downto 0);
  signal c_75_61_0_False_resize: signed(24 downto 0);
  signal c_75_61_0_False_shift: signed(24 downto 0);
  signal c_75_39_4_False_resize: signed(24 downto 0);
  signal c_75_39_4_False_shift: signed(24 downto 0);
  signal c_75_sel: std_logic_vector(1 downto 0);
  signal c_76: signed(24 downto 0);
  signal c_77: signed(24 downto 0);
  signal c_78: signed(24 downto 0);
  signal c_79: signed(24 downto 0);
  signal c_80: signed(25 downto 0);
  signal c_80_i0_resize: signed(25 downto 0);
  signal c_80_i1_resize: signed(25 downto 0);
  signal c_80_i0_shift: signed(25 downto 0);
  signal c_80_i1_shift: signed(25 downto 0);
  signal c_80_arith: signed(25 downto 0);
  signal c_80_oshift: signed(25 downto 0);
  signal c_80_sub_sel: std_logic;
  signal c_81: signed(24 downto 0);
  signal c_81_48_0_False_resize: signed(24 downto 0);
  signal c_81_48_0_False_shift: signed(24 downto 0);
  signal c_81_63_0_False_resize: signed(24 downto 0);
  signal c_81_63_0_False_shift: signed(24 downto 0);
  signal c_81_sel: std_logic_vector(0 downto 0);
  signal c_82: signed(21 downto 0);
  signal c_82_15_0_False_resize: signed(21 downto 0);
  signal c_82_15_0_False_shift: signed(21 downto 0);
  signal c_82_18_6_False_resize: signed(21 downto 0);
  signal c_82_18_6_False_shift: signed(21 downto 0);
  signal c_82_18_1_False_resize: signed(21 downto 0);
  signal c_82_18_1_False_shift: signed(21 downto 0);
  signal c_82_22_0_False_resize: signed(21 downto 0);
  signal c_82_22_0_False_shift: signed(21 downto 0);
  signal c_82_sel: std_logic_vector(1 downto 0);
  signal c_83: signed(21 downto 0);
  signal c_84: signed(21 downto 0);
  signal c_85: signed(21 downto 0);
  signal c_86: signed(21 downto 0);
  signal c_87: signed(21 downto 0);
  signal c_88: signed(21 downto 0);
  signal c_89: signed(25 downto 0);
  signal c_89_i0_resize: signed(25 downto 0);
  signal c_89_i1_resize: signed(25 downto 0);
  signal c_89_i0_shift: signed(25 downto 0);
  signal c_89_i1_shift: signed(25 downto 0);
  signal c_89_arith: signed(25 downto 0);
  signal c_89_oshift: signed(25 downto 0);
  signal c_90: signed(25 downto 0);
  signal c_91: signed(25 downto 0);
  signal c_92: signed(25 downto 0);
  signal c_92_89_0_False_resize: signed(25 downto 0);
  signal c_92_89_0_False_shift: signed(25 downto 0);
  signal c_92_91_0_False_resize: signed(25 downto 0);
  signal c_92_91_0_False_shift: signed(25 downto 0);
  signal c_92_69_0_False_resize: signed(25 downto 0);
  signal c_92_69_0_False_shift: signed(25 downto 0);
  signal c_92_sel: std_logic_vector(1 downto 0);
  signal c_93: signed(24 downto 0);
  signal c_94: signed(24 downto 0);
  signal c_95: signed(25 downto 0);
  signal c_96: signed(25 downto 0);
  signal c_97: signed(25 downto 0);
  signal c_97_96_0_False_resize: signed(25 downto 0);
  signal c_97_96_0_False_shift: signed(25 downto 0);
  signal c_97_94_0_False_resize: signed(25 downto 0);
  signal c_97_94_0_False_shift: signed(25 downto 0);
  signal c_97_80_1_False_resize: signed(25 downto 0);
  signal c_97_80_1_False_shift: signed(25 downto 0);
  signal c_97_sel: std_logic_vector(1 downto 0);
  signal c_98: signed(23 downto 0);
  signal c_99: signed(23 downto 0);
  signal c_100: signed(23 downto 0);
  signal c_101: signed(23 downto 0);
  signal c_102: signed(25 downto 0);
  signal c_103: signed(25 downto 0);
  signal c_104: signed(25 downto 0);
  signal c_105: signed(25 downto 0);
  signal c_106: signed(25 downto 0);
  signal c_106_103_0_False_resize: signed(25 downto 0);
  signal c_106_103_0_False_shift: signed(25 downto 0);
  signal c_106_80_1_False_resize: signed(25 downto 0);
  signal c_106_80_1_False_shift: signed(25 downto 0);
  signal c_106_101_2_False_resize: signed(25 downto 0);
  signal c_106_101_2_False_shift: signed(25 downto 0);
  signal c_106_105_0_False_resize: signed(25 downto 0);
  signal c_106_105_0_False_shift: signed(25 downto 0);
  signal c_106_sel: std_logic_vector(1 downto 0);
  signal c_107: signed(25 downto 0);
  signal c_107_105_0_False_resize: signed(25 downto 0);
  signal c_107_105_0_False_shift: signed(25 downto 0);
  signal c_107_80_0_False_resize: signed(25 downto 0);
  signal c_107_80_0_False_shift: signed(25 downto 0);
  signal c_107_sel: std_logic_vector(0 downto 0);
  signal c_108: signed(25 downto 0);
  signal c_109: signed(25 downto 0);
  signal c_110: signed(25 downto 0);
  signal c_110_73_1_False_resize: signed(25 downto 0);
  signal c_110_73_1_False_shift: signed(25 downto 0);
  signal c_110_65_0_False_resize: signed(25 downto 0);
  signal c_110_65_0_False_shift: signed(25 downto 0);
  signal c_110_89_0_False_resize: signed(25 downto 0);
  signal c_110_89_0_False_shift: signed(25 downto 0);
  signal c_110_109_0_False_resize: signed(25 downto 0);
  signal c_110_109_0_False_shift: signed(25 downto 0);
  signal c_110_sel: std_logic_vector(1 downto 0);
  signal c_111: signed(25 downto 0);
  signal c_112: signed(25 downto 0);
  signal c_113: signed(25 downto 0);
  signal c_113_resize: signed(25 downto 0);
  signal c_114: signed(25 downto 0);
  signal c_114_resize: signed(25 downto 0);
  signal c_115: signed(25 downto 0);
  signal c_115_resize: signed(25 downto 0);
  signal c_116: signed(25 downto 0);
  signal c_116_resize: signed(25 downto 0);
  signal c_117: signed(25 downto 0);
  signal c_118: signed(25 downto 0);
  signal c_119: signed(25 downto 0);
  signal c_119_resize: signed(25 downto 0);
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
  -- output node 0 with id 113
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_113);
    end if;
  end process;
  -- output node 1 with id 114
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_114);
    end if;
  end process;
  -- output node 2 with id 115
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_115);
    end if;
  end process;
  -- output node 3 with id 116
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_116);
    end if;
  end process;
  -- output node 4 with id 119
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_119);
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
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[128], [32], [1], [1]]
  c_2_0_7_False_resize <= resize(c_0, 23);
  c_2_0_7_False_shift <= shift_left(c_2_0_7_False_resize, 7);
  c_2_0_0_False_resize <= resize(c_0, 23);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_5_False_resize <= resize(c_0, 23);
  c_2_0_5_False_shift <= shift_left(c_2_0_5_False_resize, 5);
  with config_select_1 select c_2_sel <= 
    "00" when "00",
    "01" when "11",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_7_False_shift;
        when "01" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[144], [36], [3], [5]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
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
      sub_i => c_3_sub_sel,
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
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[1], [1], [2], [5]]
  c_6_3_0_False_resize <= c_3(18 downto 0);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  c_6_5_1_False_resize <= resize(c_5, 19);
  c_6_5_1_False_shift <= shift_left(c_6_5_1_False_resize, 1);
  c_6_5_0_False_resize <= resize(c_5, 19);
  c_6_5_0_False_shift <= shift_left(c_6_5_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_3_0_False_shift;
        when "01" => c_6 <= c_6_5_1_False_shift;
        when others => c_6 <= c_6_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[1], [1], [3], [5]]
  c_7_3_0_False_resize <= c_3(18 downto 0);
  c_7_3_0_False_shift <= shift_left(c_7_3_0_False_resize, 0);
  c_7_5_0_False_resize <= resize(c_5, 19);
  c_7_5_0_False_shift <= shift_left(c_7_5_0_False_resize, 0);
  with config_select_3 select c_7_sel <= 
    "0" when "11",
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_3_0_False_shift;
        when others => c_7 <= c_7_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 8 and associated fundamentals [[-15], [-15], [50], [85]]
  with config_select_4 select c_8_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 4,
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
      c_8 <= c_8_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[1], [288], [48], [256]]
  c_9_5_0_False_resize <= resize(c_5, 25);
  c_9_5_0_False_shift <= shift_left(c_9_5_0_False_resize, 0);
  c_9_5_8_False_resize <= resize(c_5, 25);
  c_9_5_8_False_shift <= shift_left(c_9_5_8_False_resize, 8);
  c_9_3_3_False_resize <= resize(c_3, 25);
  c_9_3_3_False_shift <= shift_left(c_9_3_3_False_resize, 3);
  c_9_3_4_False_resize <= resize(c_3, 25);
  c_9_3_4_False_shift <= shift_left(c_9_3_4_False_resize, 4);
  with config_select_3 select c_9_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "00" => c_9 <= c_9_5_0_False_shift;
        when "01" => c_9 <= c_9_5_8_False_shift;
        when "10" => c_9 <= c_9_3_3_False_shift;
        when others => c_9 <= c_9_3_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 12 and associated fundamentals [[-15], [-15], [1], [85]]
  c_12_8_0_False_resize <= c_8;
  c_12_8_0_False_shift <= shift_left(c_12_8_0_False_resize, 0);
  c_12_11_0_False_resize <= resize(c_11, 23);
  c_12_11_0_False_shift <= shift_left(c_12_11_0_False_resize, 0);
  with config_select_5 select c_12_sel <= 
    "0" when "11",
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_8_0_False_shift;
        when others => c_12 <= c_12_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 13 and associated fundamentals [[1], [288], [48], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 14 and associated fundamentals [[1], [288], [48], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 15 and associated fundamentals [[-13], [591], [97], [597]]
  with config_select_6 select c_15_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
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
      sub_i => c_15_sub_sel,
      x_i => c_14,
      y_i => c_12,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 16 and associated fundamentals [[-15], [4], [256], [128]]
  c_16_11_7_False_resize <= resize(c_11, 24);
  c_16_11_7_False_shift <= shift_left(c_16_11_7_False_resize, 7);
  c_16_8_0_False_resize <= resize(c_8, 24);
  c_16_8_0_False_shift <= shift_left(c_16_8_0_False_resize, 0);
  c_16_11_2_False_resize <= resize(c_11, 24);
  c_16_11_2_False_shift <= shift_left(c_16_11_2_False_resize, 2);
  c_16_11_8_False_resize <= resize(c_11, 24);
  c_16_11_8_False_shift <= shift_left(c_16_11_8_False_resize, 8);
  with config_select_5 select c_16_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_11_7_False_shift;
        when "01" => c_16 <= c_16_8_0_False_shift;
        when "10" => c_16 <= c_16_11_2_False_shift;
        when others => c_16 <= c_16_11_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 17 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 18 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 19 and associated fundamentals [[144], [36], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 20 and associated fundamentals [[144], [36], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[144], [36], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 22 and associated fundamentals [[144], [36], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 23 and associated fundamentals [[-416], [591], [24], [4]]
  c_23_22_3_False_resize <= resize(c_22, 26);
  c_23_22_3_False_shift <= shift_left(c_23_22_3_False_resize, 3);
  c_23_18_2_False_resize <= resize(c_18, 26);
  c_23_18_2_False_shift <= shift_left(c_23_18_2_False_resize, 2);
  c_23_15_5_False_resize <= c_15;
  c_23_15_5_False_shift <= shift_left(c_23_15_5_False_resize, 5);
  c_23_15_0_False_resize <= c_15;
  c_23_15_0_False_shift <= shift_left(c_23_15_0_False_resize, 0);
  with config_select_7 select c_23_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "00" => c_23 <= c_23_22_3_False_shift;
        when "01" => c_23 <= c_23_18_2_False_shift;
        when "10" => c_23 <= c_23_15_5_False_shift;
        when others => c_23 <= c_23_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 24 and associated fundamentals [[-15], [4], [256], [128]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 25 and associated fundamentals [[-15], [4], [256], [128]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 26 and associated fundamentals [[401], [-587], [280], [124]]
  with config_select_8 select c_26_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_26: entity work.adder_node
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
      sub_i => c_26_sub_sel,
      x_i => c_25,
      y_i => c_23,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 27 and associated fundamentals [[144], [36], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 28 and associated fundamentals [[144], [36], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 29 and associated fundamentals [[-15], [-15], [50], [85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 30 and associated fundamentals [[-15], [-15], [50], [85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 31 and associated fundamentals [[-15], [-15], [50], [85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 32 and associated fundamentals [[-15], [-15], [50], [85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 33 and associated fundamentals [[-480], [-240], [3], [124]]
  c_33_32_5_False_resize <= resize(c_32, 25);
  c_33_32_5_False_shift <= shift_left(c_33_32_5_False_resize, 5);
  c_33_32_4_False_resize <= resize(c_32, 25);
  c_33_32_4_False_shift <= shift_left(c_33_32_4_False_resize, 4);
  c_33_26_0_False_resize <= c_26(24 downto 0);
  c_33_26_0_False_shift <= shift_left(c_33_26_0_False_resize, 0);
  c_33_28_0_False_resize <= resize(c_28, 25);
  c_33_28_0_False_shift <= shift_left(c_33_28_0_False_resize, 0);
  with config_select_9 select c_33_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "00" => c_33 <= c_33_32_5_False_shift;
        when "01" => c_33 <= c_33_32_4_False_shift;
        when "10" => c_33 <= c_33_26_0_False_shift;
        when others => c_33 <= c_33_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 34 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 35 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 36 and associated fundamentals [[16], [-587], [12], [85]]
  c_36_28_2_False_resize <= resize(c_28, 26);
  c_36_28_2_False_shift <= shift_left(c_36_28_2_False_resize, 2);
  c_36_26_0_False_resize <= c_26;
  c_36_26_0_False_shift <= shift_left(c_36_26_0_False_resize, 0);
  c_36_32_0_False_resize <= resize(c_32, 26);
  c_36_32_0_False_shift <= shift_left(c_36_32_0_False_resize, 0);
  c_36_35_4_False_resize <= resize(c_35, 26);
  c_36_35_4_False_shift <= shift_left(c_36_35_4_False_resize, 4);
  with config_select_9 select c_36_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "00" => c_36 <= c_36_28_2_False_shift;
        when "01" => c_36 <= c_36_26_0_False_shift;
        when "10" => c_36 <= c_36_32_0_False_shift;
        when others => c_36 <= c_36_35_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 37 and associated fundamentals [[-496], [347], [15], [209]]
  with config_select_10 select c_37_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_37: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_37_sub_sel,
      x_i => c_33,
      y_i => c_36,
      z_o => c_37_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_37_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 38 and associated fundamentals [[-15], [-15], [50], [85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 39 and associated fundamentals [[-15], [-15], [50], [85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 40 and associated fundamentals [[-13], [591], [97], [597]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 41 and associated fundamentals [[-13], [591], [97], [597]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 42 and associated fundamentals [[-13], [591], [97], [597]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 43 and associated fundamentals [[-13], [591], [97], [597]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 44 and associated fundamentals [[-13], [1388], [100], [836]]
  c_44_39_1_False_resize <= resize(c_39, 27);
  c_44_39_1_False_shift <= shift_left(c_44_39_1_False_resize, 1);
  c_44_43_0_False_resize <= resize(c_43, 27);
  c_44_43_0_False_shift <= shift_left(c_44_43_0_False_resize, 0);
  c_44_37_2_False_resize <= resize(c_37, 27);
  c_44_37_2_False_shift <= shift_left(c_44_37_2_False_resize, 2);
  with config_select_11 select c_44_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "00" => c_44 <= c_44_39_1_False_shift;
        when "01" => c_44 <= c_44_43_0_False_shift;
        when others => c_44 <= c_44_37_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 45 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 46 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 47 and associated fundamentals [[-496], [1024], [15], [1]]
  c_47_37_0_False_resize <= resize(c_37, 26);
  c_47_37_0_False_shift <= shift_left(c_47_37_0_False_resize, 0);
  c_47_46_10_False_resize <= resize(c_46, 26);
  c_47_46_10_False_shift <= shift_left(c_47_46_10_False_resize, 10);
  c_47_46_0_False_resize <= resize(c_46, 26);
  c_47_46_0_False_shift <= shift_left(c_47_46_0_False_resize, 0);
  with config_select_11 select c_47_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "00" => c_47 <= c_47_37_0_False_shift;
        when "01" => c_47 <= c_47_46_10_False_shift;
        when others => c_47 <= c_47_46_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 48 and associated fundamentals [[483], [364], [115], [835]]
  with config_select_12 select c_48_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_48: entity work.adder_node
    generic map (
      w_x_i => 27,
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
      sub_i => c_48_sub_sel,
      x_i => c_44,
      y_i => c_47,
      z_o => c_48_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_48_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 49 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 50 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 51 and associated fundamentals [[144], [36], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 52 and associated fundamentals [[144], [36], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 53 and associated fundamentals [[144], [36], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 54 and associated fundamentals [[144], [36], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 55 and associated fundamentals [[-15], [-15], [50], [85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 56 and associated fundamentals [[-15], [-15], [50], [85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 57 and associated fundamentals [[2304], [-30], [256], [835]]
  c_57_56_1_False_resize <= resize(c_56, 28);
  c_57_56_1_False_shift <= shift_left(c_57_56_1_False_resize, 1);
  c_57_50_8_False_resize <= resize(c_50, 28);
  c_57_50_8_False_shift <= shift_left(c_57_50_8_False_resize, 8);
  c_57_54_4_False_resize <= resize(c_54, 28);
  c_57_54_4_False_shift <= shift_left(c_57_54_4_False_resize, 4);
  c_57_48_0_False_resize <= resize(c_48, 28);
  c_57_48_0_False_shift <= shift_left(c_57_48_0_False_resize, 0);
  with config_select_13 select c_57_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_57_sel is
        when "00" => c_57 <= c_57_56_1_False_shift;
        when "01" => c_57 <= c_57_50_8_False_shift;
        when "10" => c_57 <= c_57_54_4_False_shift;
        when others => c_57 <= c_57_48_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 58 and associated fundamentals [[-13], [591], [97], [597]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 59 and associated fundamentals [[-13], [591], [97], [597]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 60 and associated fundamentals [[401], [-587], [280], [124]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 61 and associated fundamentals [[401], [-587], [280], [124]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 62 and associated fundamentals [[401], [-587], [280], [124]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 63 and associated fundamentals [[401], [-587], [280], [124]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 64 and associated fundamentals [[1932], [-587], [97], [10]]
  c_64_59_0_False_resize <= resize(c_59, 27);
  c_64_59_0_False_shift <= shift_left(c_64_59_0_False_resize, 0);
  c_64_48_2_False_resize <= resize(c_48, 27);
  c_64_48_2_False_shift <= shift_left(c_64_48_2_False_resize, 2);
  c_64_54_1_False_resize <= resize(c_54, 27);
  c_64_54_1_False_shift <= shift_left(c_64_54_1_False_resize, 1);
  c_64_63_0_False_resize <= resize(c_63, 27);
  c_64_63_0_False_shift <= shift_left(c_64_63_0_False_resize, 0);
  with config_select_13 select c_64_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_64_sel is
        when "00" => c_64 <= c_64_59_0_False_shift;
        when "01" => c_64 <= c_64_48_2_False_shift;
        when "10" => c_64 <= c_64_54_1_False_shift;
        when others => c_64 <= c_64_63_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 14 with id 65 and associated fundamentals [[372], [557], [159], [825]]
  inst_adder_node_65: entity work.adder_node
    generic map (
      w_x_i => 28,
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
      x_i => c_57,
      y_i => c_64,
      z_o => c_65_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_65_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 66 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 67 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 68 and associated fundamentals [[-13], [591], [97], [597]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 69 and associated fundamentals [[-13], [591], [97], [597]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 70 and associated fundamentals [[-496], [347], [15], [209]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 71 and associated fundamentals [[-496], [347], [15], [209]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 72 and associated fundamentals [[-496], [347], [15], [209]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 73 and associated fundamentals [[-496], [347], [15], [209]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_72 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 74 and associated fundamentals [[-13], [128], [159], [836]]
  c_74_65_0_False_resize <= c_65;
  c_74_65_0_False_shift <= shift_left(c_74_65_0_False_resize, 0);
  c_74_69_0_False_resize <= c_69;
  c_74_69_0_False_shift <= shift_left(c_74_69_0_False_resize, 0);
  c_74_67_7_False_resize <= resize(c_67, 26);
  c_74_67_7_False_shift <= shift_left(c_74_67_7_False_resize, 7);
  c_74_73_2_False_resize <= resize(c_73, 26);
  c_74_73_2_False_shift <= shift_left(c_74_73_2_False_resize, 2);
  with config_select_15 select c_74_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_74_sel is
        when "00" => c_74 <= c_74_65_0_False_shift;
        when "01" => c_74 <= c_74_69_0_False_shift;
        when "10" => c_74 <= c_74_67_7_False_shift;
        when others => c_74 <= c_74_73_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 75 and associated fundamentals [[-240], [347], [280], [85]]
  c_75_37_0_False_resize <= c_37;
  c_75_37_0_False_shift <= shift_left(c_75_37_0_False_resize, 0);
  c_75_39_0_False_resize <= resize(c_39, 25);
  c_75_39_0_False_shift <= shift_left(c_75_39_0_False_resize, 0);
  c_75_61_0_False_resize <= c_61(24 downto 0);
  c_75_61_0_False_shift <= shift_left(c_75_61_0_False_resize, 0);
  c_75_39_4_False_resize <= resize(c_39, 25);
  c_75_39_4_False_shift <= shift_left(c_75_39_4_False_resize, 4);
  with config_select_11 select c_75_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_75_sel is
        when "00" => c_75 <= c_75_37_0_False_shift;
        when "01" => c_75 <= c_75_39_0_False_shift;
        when "10" => c_75 <= c_75_61_0_False_shift;
        when others => c_75 <= c_75_39_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 76 and associated fundamentals [[-240], [347], [280], [85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 77 and associated fundamentals [[-240], [347], [280], [85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 78 and associated fundamentals [[-240], [347], [280], [85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 79 and associated fundamentals [[-240], [347], [280], [85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 16 with id 80 and associated fundamentals [[227], [475], [439], [751]]
  with config_select_16 select c_80_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_80: entity work.adder_node
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
      sub_i => c_80_sub_sel,
      x_i => c_74,
      y_i => c_79,
      z_o => c_80_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_80_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 81 and associated fundamentals [[483], [364], [115], [124]]
  c_81_48_0_False_resize <= c_48(24 downto 0);
  c_81_48_0_False_shift <= shift_left(c_81_48_0_False_resize, 0);
  c_81_63_0_False_resize <= c_63(24 downto 0);
  c_81_63_0_False_shift <= shift_left(c_81_63_0_False_resize, 0);
  with config_select_13 select c_81_sel <= 
    "0" when "10",
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_81_sel is
        when "0" => c_81 <= c_81_48_0_False_shift;
        when others => c_81 <= c_81_63_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 82 and associated fundamentals [[-13], [2], [64], [5]]
  c_82_15_0_False_resize <= c_15(21 downto 0);
  c_82_15_0_False_shift <= shift_left(c_82_15_0_False_resize, 0);
  c_82_18_6_False_resize <= resize(c_18, 22);
  c_82_18_6_False_shift <= shift_left(c_82_18_6_False_resize, 6);
  c_82_18_1_False_resize <= resize(c_18, 22);
  c_82_18_1_False_shift <= shift_left(c_82_18_1_False_resize, 1);
  c_82_22_0_False_resize <= c_22(21 downto 0);
  c_82_22_0_False_shift <= shift_left(c_82_22_0_False_resize, 0);
  with config_select_7 select c_82_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_82_sel is
        when "00" => c_82 <= c_82_15_0_False_shift;
        when "01" => c_82 <= c_82_18_6_False_shift;
        when "10" => c_82 <= c_82_18_1_False_shift;
        when others => c_82 <= c_82_22_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 83 and associated fundamentals [[-13], [2], [64], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_82 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 84 and associated fundamentals [[-13], [2], [64], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_83 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 85 and associated fundamentals [[-13], [2], [64], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_84 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 86 and associated fundamentals [[-13], [2], [64], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_85 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 87 and associated fundamentals [[-13], [2], [64], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_86 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 88 and associated fundamentals [[-13], [2], [64], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_87 & "";
    end if;
  end process;
  -- node of type 'add' in stage 14 with id 89 and associated fundamentals [[953], [730], [294], [253]]
  inst_adder_node_89: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 22,
      w_o => 26,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_81,
      y_i => c_88,
      z_o => c_89_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_89_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 90 and associated fundamentals [[483], [364], [115], [835]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 91 and associated fundamentals [[483], [364], [115], [835]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_90 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 92 and associated fundamentals [[953], [591], [115], [835]]
  c_92_89_0_False_resize <= c_89;
  c_92_89_0_False_shift <= shift_left(c_92_89_0_False_resize, 0);
  c_92_91_0_False_resize <= c_91;
  c_92_91_0_False_shift <= shift_left(c_92_91_0_False_resize, 0);
  c_92_69_0_False_resize <= c_69;
  c_92_69_0_False_shift <= shift_left(c_92_69_0_False_resize, 0);
  with config_select_15 select c_92_sel <= 
    "00" when "00",
    "01" when "11",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_92_sel is
        when "00" => c_92 <= c_92_89_0_False_shift;
        when "01" => c_92 <= c_92_91_0_False_shift;
        when others => c_92 <= c_92_69_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 93 and associated fundamentals [[-496], [347], [15], [209]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 94 and associated fundamentals [[-496], [347], [15], [209]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_93 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 95 and associated fundamentals [[953], [730], [294], [253]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_89 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 96 and associated fundamentals [[953], [730], [294], [253]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_95 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 97 and associated fundamentals [[454], [730], [15], [253]]
  c_97_96_0_False_resize <= c_96;
  c_97_96_0_False_shift <= shift_left(c_97_96_0_False_resize, 0);
  c_97_94_0_False_resize <= resize(c_94, 26);
  c_97_94_0_False_shift <= shift_left(c_97_94_0_False_resize, 0);
  c_97_80_1_False_resize <= c_80;
  c_97_80_1_False_shift <= shift_left(c_97_80_1_False_resize, 1);
  with config_select_17 select c_97_sel <= 
    "00" when "11",
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_97_sel is
        when "00" => c_97 <= c_97_96_0_False_shift;
        when "01" => c_97 <= c_97_94_0_False_shift;
        when others => c_97 <= c_97_80_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 98 and associated fundamentals [[144], [36], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 99 and associated fundamentals [[144], [36], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_98 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 100 and associated fundamentals [[144], [36], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_99 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 101 and associated fundamentals [[144], [36], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_100 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 102 and associated fundamentals [[-13], [591], [97], [597]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 103 and associated fundamentals [[-13], [591], [97], [597]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_102 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 104 and associated fundamentals [[372], [557], [159], [825]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 105 and associated fundamentals [[372], [557], [159], [825]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_104 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 106 and associated fundamentals [[576], [557], [878], [597]]
  c_106_103_0_False_resize <= c_103;
  c_106_103_0_False_shift <= shift_left(c_106_103_0_False_resize, 0);
  c_106_80_1_False_resize <= c_80;
  c_106_80_1_False_shift <= shift_left(c_106_80_1_False_resize, 1);
  c_106_101_2_False_resize <= resize(c_101, 26);
  c_106_101_2_False_shift <= shift_left(c_106_101_2_False_resize, 2);
  c_106_105_0_False_resize <= c_105;
  c_106_105_0_False_shift <= shift_left(c_106_105_0_False_resize, 0);
  with config_select_17 select c_106_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_106_sel is
        when "00" => c_106 <= c_106_103_0_False_shift;
        when "01" => c_106 <= c_106_80_1_False_shift;
        when "10" => c_106 <= c_106_101_2_False_shift;
        when others => c_106 <= c_106_105_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 107 and associated fundamentals [[372], [475], [159], [751]]
  c_107_105_0_False_resize <= c_105;
  c_107_105_0_False_shift <= shift_left(c_107_105_0_False_resize, 0);
  c_107_80_0_False_resize <= c_80;
  c_107_80_0_False_shift <= shift_left(c_107_80_0_False_resize, 0);
  with config_select_17 select c_107_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_107_sel is
        when "0" => c_107 <= c_107_105_0_False_shift;
        when others => c_107 <= c_107_80_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 108 and associated fundamentals [[401], [-587], [280], [124]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_108 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 109 and associated fundamentals [[401], [-587], [280], [124]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_109 <= c_108 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 110 and associated fundamentals [[401], [694], [294], [825]]
  c_110_73_1_False_resize <= resize(c_73, 26);
  c_110_73_1_False_shift <= shift_left(c_110_73_1_False_resize, 1);
  c_110_65_0_False_resize <= c_65;
  c_110_65_0_False_shift <= shift_left(c_110_65_0_False_resize, 0);
  c_110_89_0_False_resize <= c_89;
  c_110_89_0_False_shift <= shift_left(c_110_89_0_False_resize, 0);
  c_110_109_0_False_resize <= c_109;
  c_110_109_0_False_shift <= shift_left(c_110_109_0_False_resize, 0);
  with config_select_15 select c_110_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_110_sel is
        when "00" => c_110 <= c_110_73_1_False_shift;
        when "01" => c_110 <= c_110_65_0_False_shift;
        when "10" => c_110 <= c_110_89_0_False_shift;
        when others => c_110 <= c_110_109_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 111 and associated fundamentals [[953], [591], [115], [835]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_92 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 112 and associated fundamentals [[953], [591], [115], [835]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_111 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 113 and associated fundamentals [[953], [591], [115], [835]]
  c_113_resize <= c_112;
  c_113 <= shift_left(c_113_resize, 0);
  -- node of type 'output' in stage 17 with id 114 and associated fundamentals [[454], [730], [15], [253]]
  c_114_resize <= c_97;
  c_114 <= shift_left(c_114_resize, 0);
  -- node of type 'output' in stage 17 with id 115 and associated fundamentals [[576], [557], [878], [597]]
  c_115_resize <= c_106;
  c_115 <= shift_left(c_115_resize, 0);
  -- node of type 'output' in stage 17 with id 116 and associated fundamentals [[372], [475], [159], [751]]
  c_116_resize <= c_107;
  c_116 <= shift_left(c_116_resize, 0);
  -- node of type 'register' in stage 16 with id 117 and associated fundamentals [[401], [694], [294], [825]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_117 <= c_110 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 118 and associated fundamentals [[401], [694], [294], [825]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_118 <= c_117 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 119 and associated fundamentals [[401], [694], [294], [825]]
  c_119_resize <= c_118;
  c_119 <= shift_left(c_119_resize, 0);
end architecture;
