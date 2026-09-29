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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_0_2_False_resize: signed(17 downto 0);
  signal c_1_0_2_False_shift: signed(17 downto 0);
  signal c_1_0_0_False_resize: signed(17 downto 0);
  signal c_1_0_0_False_shift: signed(17 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(17 downto 0);
  signal c_2_0_1_False_resize: signed(17 downto 0);
  signal c_2_0_1_False_shift: signed(17 downto 0);
  signal c_2_0_2_False_resize: signed(17 downto 0);
  signal c_2_0_2_False_shift: signed(17 downto 0);
  signal c_2_0_0_False_resize: signed(17 downto 0);
  signal c_2_0_0_False_shift: signed(17 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(23 downto 0);
  signal c_3_i0_resize: signed(23 downto 0);
  signal c_3_i1_resize: signed(23 downto 0);
  signal c_3_i0_shift: signed(23 downto 0);
  signal c_3_i1_shift: signed(23 downto 0);
  signal c_3_arith: signed(23 downto 0);
  signal c_3_oshift: signed(23 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(16 downto 0);
  signal c_4_0_1_False_resize: signed(16 downto 0);
  signal c_4_0_1_False_shift: signed(16 downto 0);
  signal c_4_0_0_False_resize: signed(16 downto 0);
  signal c_4_0_0_False_shift: signed(16 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(16 downto 0);
  signal c_6: signed(23 downto 0);
  signal c_6_i0_resize: signed(23 downto 0);
  signal c_6_i1_resize: signed(23 downto 0);
  signal c_6_i0_shift: signed(23 downto 0);
  signal c_6_i1_shift: signed(23 downto 0);
  signal c_6_arith: signed(23 downto 0);
  signal c_6_oshift: signed(23 downto 0);
  signal c_7: signed(15 downto 0);
  signal c_8: signed(15 downto 0);
  signal c_9: signed(15 downto 0);
  signal c_10: signed(21 downto 0);
  signal c_10_9_4_False_resize: signed(21 downto 0);
  signal c_10_9_4_False_shift: signed(21 downto 0);
  signal c_10_6_0_False_resize: signed(21 downto 0);
  signal c_10_6_0_False_shift: signed(21 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_8_1_False_resize: signed(23 downto 0);
  signal c_11_8_1_False_shift: signed(23 downto 0);
  signal c_11_3_0_False_resize: signed(23 downto 0);
  signal c_11_3_0_False_shift: signed(23 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(23 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_16: signed(20 downto 0);
  signal c_16_i0_resize: signed(23 downto 0);
  signal c_16_i1_resize: signed(23 downto 0);
  signal c_16_i0_shift: signed(23 downto 0);
  signal c_16_i1_shift: signed(23 downto 0);
  signal c_16_arith: signed(23 downto 0);
  signal c_16_oshift: signed(20 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(15 downto 0);
  signal c_18: signed(15 downto 0);
  signal c_19: signed(15 downto 0);
  signal c_20: signed(20 downto 0);
  signal c_20_16_0_False_resize: signed(20 downto 0);
  signal c_20_16_0_False_shift: signed(20 downto 0);
  signal c_20_19_5_False_resize: signed(20 downto 0);
  signal c_20_19_5_False_shift: signed(20 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_i0_resize: signed(23 downto 0);
  signal c_23_i1_resize: signed(23 downto 0);
  signal c_23_i0_shift: signed(23 downto 0);
  signal c_23_i1_shift: signed(23 downto 0);
  signal c_23_arith: signed(23 downto 0);
  signal c_23_oshift: signed(23 downto 0);
  signal c_24: signed(18 downto 0);
  signal c_24_19_1_False_resize: signed(18 downto 0);
  signal c_24_19_1_False_shift: signed(18 downto 0);
  signal c_24_16_0_False_resize: signed(18 downto 0);
  signal c_24_16_0_False_shift: signed(18 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_25_6_1_False_resize: signed(22 downto 0);
  signal c_25_6_1_False_shift: signed(22 downto 0);
  signal c_25_9_0_False_resize: signed(22 downto 0);
  signal c_25_9_0_False_shift: signed(22 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(22 downto 0);
  signal c_27: signed(22 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_29_i0_resize: signed(22 downto 0);
  signal c_29_i1_resize: signed(22 downto 0);
  signal c_29_i0_shift: signed(22 downto 0);
  signal c_29_i1_shift: signed(22 downto 0);
  signal c_29_arith: signed(22 downto 0);
  signal c_29_oshift: signed(22 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(23 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_6_0_False_resize: signed(23 downto 0);
  signal c_31_6_0_False_shift: signed(23 downto 0);
  signal c_31_30_0_False_resize: signed(23 downto 0);
  signal c_31_30_0_False_shift: signed(23 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
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
  signal c_37: signed(23 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_41: signed(24 downto 0);
  signal c_41_40_1_False_resize: signed(24 downto 0);
  signal c_41_40_1_False_shift: signed(24 downto 0);
  signal c_41_36_0_False_resize: signed(24 downto 0);
  signal c_41_36_0_False_shift: signed(24 downto 0);
  signal c_41_sel: std_logic_vector(0 downto 0);
  signal c_42: signed(15 downto 0);
  signal c_43: signed(15 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_23_0_False_resize: signed(23 downto 0);
  signal c_44_23_0_False_shift: signed(23 downto 0);
  signal c_44_43_0_False_resize: signed(23 downto 0);
  signal c_44_43_0_False_shift: signed(23 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_46: signed(22 downto 0);
  signal c_46_i0_resize: signed(22 downto 0);
  signal c_46_i1_resize: signed(22 downto 0);
  signal c_46_i0_shift: signed(22 downto 0);
  signal c_46_i1_shift: signed(22 downto 0);
  signal c_46_arith: signed(22 downto 0);
  signal c_46_oshift: signed(22 downto 0);
  signal c_46_sub_sel: std_logic;
  signal c_47: signed(15 downto 0);
  signal c_48: signed(15 downto 0);
  signal c_49: signed(15 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_54_49_7_False_resize: signed(23 downto 0);
  signal c_54_49_7_False_shift: signed(23 downto 0);
  signal c_54_53_0_False_resize: signed(23 downto 0);
  signal c_54_53_0_False_shift: signed(23 downto 0);
  signal c_54_46_1_False_resize: signed(23 downto 0);
  signal c_54_46_1_False_shift: signed(23 downto 0);
  signal c_54_sel: std_logic_vector(1 downto 0);
  signal c_55: signed(15 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_56_i0_resize: signed(23 downto 0);
  signal c_56_i1_resize: signed(23 downto 0);
  signal c_56_i0_shift: signed(23 downto 0);
  signal c_56_i1_shift: signed(23 downto 0);
  signal c_56_arith: signed(23 downto 0);
  signal c_56_oshift: signed(23 downto 0);
  signal c_57: signed(15 downto 0);
  signal c_58: signed(22 downto 0);
  signal c_59: signed(22 downto 0);
  signal c_60: signed(23 downto 0);
  signal c_60_57_8_False_resize: signed(23 downto 0);
  signal c_60_57_8_False_shift: signed(23 downto 0);
  signal c_60_56_0_False_resize: signed(23 downto 0);
  signal c_60_56_0_False_shift: signed(23 downto 0);
  signal c_60_59_0_False_resize: signed(23 downto 0);
  signal c_60_59_0_False_shift: signed(23 downto 0);
  signal c_60_sel: std_logic_vector(1 downto 0);
  signal c_61: signed(20 downto 0);
  signal c_62: signed(20 downto 0);
  signal c_63: signed(21 downto 0);
  signal c_63_62_1_False_resize: signed(21 downto 0);
  signal c_63_62_1_False_shift: signed(21 downto 0);
  signal c_63_29_0_False_resize: signed(21 downto 0);
  signal c_63_29_0_False_shift: signed(21 downto 0);
  signal c_63_sel: std_logic_vector(0 downto 0);
  signal c_64: signed(21 downto 0);
  signal c_65: signed(21 downto 0);
  signal c_66: signed(21 downto 0);
  signal c_67: signed(21 downto 0);
  signal c_68: signed(21 downto 0);
  signal c_69: signed(23 downto 0);
  signal c_69_i0_resize: signed(23 downto 0);
  signal c_69_i1_resize: signed(23 downto 0);
  signal c_69_i0_shift: signed(23 downto 0);
  signal c_69_i1_shift: signed(23 downto 0);
  signal c_69_arith: signed(23 downto 0);
  signal c_69_oshift: signed(23 downto 0);
  signal c_69_sub_sel: std_logic;
  signal c_70: signed(20 downto 0);
  signal c_71: signed(20 downto 0);
  signal c_72: signed(20 downto 0);
  signal c_73: signed(23 downto 0);
  signal c_73_72_0_False_resize: signed(23 downto 0);
  signal c_73_72_0_False_shift: signed(23 downto 0);
  signal c_73_46_1_False_resize: signed(23 downto 0);
  signal c_73_46_1_False_shift: signed(23 downto 0);
  signal c_73_72_3_False_resize: signed(23 downto 0);
  signal c_73_72_3_False_shift: signed(23 downto 0);
  signal c_73_sel: std_logic_vector(1 downto 0);
  signal c_74: signed(23 downto 0);
  signal c_75: signed(23 downto 0);
  signal c_76: signed(23 downto 0);
  signal c_77: signed(23 downto 0);
  signal c_78: signed(23 downto 0);
  signal c_79: signed(23 downto 0);
  signal c_80: signed(23 downto 0);
  signal c_81: signed(23 downto 0);
  signal c_81_80_0_False_resize: signed(23 downto 0);
  signal c_81_80_0_False_shift: signed(23 downto 0);
  signal c_81_80_2_False_resize: signed(23 downto 0);
  signal c_81_80_2_False_shift: signed(23 downto 0);
  signal c_81_69_0_False_resize: signed(23 downto 0);
  signal c_81_69_0_False_shift: signed(23 downto 0);
  signal c_81_sel: std_logic_vector(1 downto 0);
  signal c_82: signed(23 downto 0);
  signal c_82_8_3_False_resize: signed(23 downto 0);
  signal c_82_8_3_False_shift: signed(23 downto 0);
  signal c_82_3_0_False_resize: signed(23 downto 0);
  signal c_82_3_0_False_shift: signed(23 downto 0);
  signal c_82_sel: std_logic_vector(0 downto 0);
  signal c_83: signed(23 downto 0);
  signal c_83_39_0_False_resize: signed(23 downto 0);
  signal c_83_39_0_False_shift: signed(23 downto 0);
  signal c_83_62_2_False_resize: signed(23 downto 0);
  signal c_83_62_2_False_shift: signed(23 downto 0);
  signal c_83_29_1_False_resize: signed(23 downto 0);
  signal c_83_29_1_False_shift: signed(23 downto 0);
  signal c_83_sel: std_logic_vector(1 downto 0);
  signal c_84: signed(23 downto 0);
  signal c_84_46_0_False_resize: signed(23 downto 0);
  signal c_84_46_0_False_shift: signed(23 downto 0);
  signal c_84_76_0_False_resize: signed(23 downto 0);
  signal c_84_76_0_False_shift: signed(23 downto 0);
  signal c_84_sel: std_logic_vector(0 downto 0);
  signal c_85: signed(23 downto 0);
  signal c_85_53_0_False_resize: signed(23 downto 0);
  signal c_85_53_0_False_shift: signed(23 downto 0);
  signal c_85_46_0_False_resize: signed(23 downto 0);
  signal c_85_46_0_False_shift: signed(23 downto 0);
  signal c_85_53_1_False_resize: signed(23 downto 0);
  signal c_85_53_1_False_shift: signed(23 downto 0);
  signal c_85_sel: std_logic_vector(1 downto 0);
  signal c_86: signed(15 downto 0);
  signal c_87: signed(15 downto 0);
  signal c_88: signed(23 downto 0);
  signal c_88_69_0_False_resize: signed(23 downto 0);
  signal c_88_69_0_False_shift: signed(23 downto 0);
  signal c_88_87_1_False_resize: signed(23 downto 0);
  signal c_88_87_1_False_shift: signed(23 downto 0);
  signal c_88_sel: std_logic_vector(0 downto 0);
  signal c_89: signed(23 downto 0);
  signal c_89_39_2_False_resize: signed(23 downto 0);
  signal c_89_39_2_False_shift: signed(23 downto 0);
  signal c_89_29_0_False_resize: signed(23 downto 0);
  signal c_89_29_0_False_shift: signed(23 downto 0);
  signal c_89_50_0_False_resize: signed(23 downto 0);
  signal c_89_50_0_False_shift: signed(23 downto 0);
  signal c_89_sel: std_logic_vector(1 downto 0);
  signal c_90: signed(23 downto 0);
  signal c_91: signed(23 downto 0);
  signal c_92: signed(23 downto 0);
  signal c_93: signed(23 downto 0);
  signal c_94: signed(23 downto 0);
  signal c_94_resize: signed(23 downto 0);
  signal c_95: signed(23 downto 0);
  signal c_95_resize: signed(23 downto 0);
  signal c_96: signed(23 downto 0);
  signal c_97: signed(23 downto 0);
  signal c_98: signed(23 downto 0);
  signal c_99: signed(23 downto 0);
  signal c_100: signed(23 downto 0);
  signal c_101: signed(23 downto 0);
  signal c_102: signed(23 downto 0);
  signal c_103: signed(23 downto 0);
  signal c_104: signed(23 downto 0);
  signal c_105: signed(23 downto 0);
  signal c_106: signed(23 downto 0);
  signal c_107: signed(23 downto 0);
  signal c_108: signed(23 downto 0);
  signal c_109: signed(23 downto 0);
  signal c_109_resize: signed(23 downto 0);
  signal c_110: signed(23 downto 0);
  signal c_111: signed(23 downto 0);
  signal c_112: signed(23 downto 0);
  signal c_113: signed(23 downto 0);
  signal c_114: signed(23 downto 0);
  signal c_115: signed(23 downto 0);
  signal c_116: signed(23 downto 0);
  signal c_117: signed(23 downto 0);
  signal c_117_resize: signed(23 downto 0);
  signal c_118: signed(23 downto 0);
  signal c_119: signed(23 downto 0);
  signal c_120: signed(23 downto 0);
  signal c_121: signed(23 downto 0);
  signal c_122: signed(23 downto 0);
  signal c_123: signed(23 downto 0);
  signal c_124: signed(23 downto 0);
  signal c_125: signed(23 downto 0);
  signal c_125_resize: signed(23 downto 0);
  signal c_126: signed(23 downto 0);
  signal c_127: signed(23 downto 0);
  signal c_128: signed(23 downto 0);
  signal c_129: signed(23 downto 0);
  signal c_130: signed(23 downto 0);
  signal c_130_resize: signed(23 downto 0);
  signal c_131: signed(23 downto 0);
  signal c_132: signed(23 downto 0);
  signal c_133: signed(23 downto 0);
  signal c_134: signed(23 downto 0);
  signal c_135: signed(23 downto 0);
  signal c_135_resize: signed(23 downto 0);
  signal c_136: signed(23 downto 0);
  signal c_136_resize: signed(23 downto 0);
  signal c_137: signed(23 downto 0);
  signal c_138: signed(23 downto 0);
  signal c_139: signed(23 downto 0);
  signal c_140: signed(23 downto 0);
  signal c_140_resize: signed(23 downto 0);
  signal c_141: signed(23 downto 0);
  signal c_142: signed(23 downto 0);
  signal c_143: signed(23 downto 0);
  signal c_144: signed(23 downto 0);
  signal c_145: signed(23 downto 0);
  signal c_146: signed(23 downto 0);
  signal c_147: signed(23 downto 0);
  signal c_148: signed(23 downto 0);
  signal c_148_resize: signed(23 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 94
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_94);
    end if;
  end process;
  -- output node 1 with id 95
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_95);
    end if;
  end process;
  -- output node 2 with id 109
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_109);
    end if;
  end process;
  -- output node 3 with id 117
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_117);
    end if;
  end process;
  -- output node 4 with id 125
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_125);
    end if;
  end process;
  -- output node 5 with id 130
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_130);
    end if;
  end process;
  -- output node 6 with id 135
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_135);
    end if;
  end process;
  -- output node 7 with id 136
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_136);
    end if;
  end process;
  -- output node 8 with id 140
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_140);
    end if;
  end process;
  -- output node 9 with id 148
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_148);
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
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [2], [4]]
  c_2_0_1_False_resize <= resize(c_0, 18);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  c_2_0_2_False_resize <= resize(c_0, 18);
  c_2_0_2_False_shift <= shift_left(c_2_0_2_False_resize, 2);
  c_2_0_0_False_resize <= resize(c_0, 18);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_1_False_shift;
        when "01" => c_2 <= c_2_0_2_False_shift;
        when others => c_2 <= c_2_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[31], [130], [132]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
      w_o => 24,
      s_x_i => 5,
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
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[1], [2], [2]]
  c_4_0_1_False_resize <= resize(c_0, 17);
  c_4_0_1_False_shift <= shift_left(c_4_0_1_False_resize, 1);
  c_4_0_0_False_resize <= resize(c_0, 17);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  with config_select_1 select c_4_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_1_False_shift;
        when others => c_4 <= c_4_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[1], [2], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 6 and associated fundamentals [[35], [138], [140]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 17,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_3,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 7 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_0 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 10 and associated fundamentals [[35], [16], [16]]
  c_10_9_4_False_resize <= resize(c_9, 22);
  c_10_9_4_False_shift <= shift_left(c_10_9_4_False_resize, 4);
  c_10_6_0_False_resize <= c_6(21 downto 0);
  c_10_6_0_False_shift <= shift_left(c_10_6_0_False_resize, 0);
  with config_select_4 select c_10_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_9_4_False_shift;
        when others => c_10 <= c_10_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[31], [2], [132]]
  c_11_8_1_False_resize <= resize(c_8, 24);
  c_11_8_1_False_shift <= shift_left(c_11_8_1_False_resize, 1);
  c_11_3_0_False_resize <= c_3;
  c_11_3_0_False_shift <= shift_left(c_11_3_0_False_resize, 0);
  with config_select_3 select c_11_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_8_1_False_shift;
        when others => c_11 <= c_11_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[31], [2], [132]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 13 and associated fundamentals [[171], [62], [196]]
  with config_select_5 select c_13_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_13_sub_sel,
      x_i => c_10,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 14 and associated fundamentals [[35], [138], [140]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 15 and associated fundamentals [[35], [138], [140]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 16 and associated fundamentals [[17], [25], [7]]
  with config_select_6 select c_16_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
      w_o => 21,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 3,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_16_sub_sel,
      x_i => c_13,
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 17 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 19 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 20 and associated fundamentals [[17], [32], [7]]
  c_20_16_0_False_resize <= c_16;
  c_20_16_0_False_shift <= shift_left(c_20_16_0_False_resize, 0);
  c_20_19_5_False_resize <= resize(c_19, 21);
  c_20_19_5_False_shift <= shift_left(c_20_19_5_False_resize, 5);
  with config_select_7 select c_20_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_16_0_False_shift;
        when others => c_20 <= c_20_19_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 21 and associated fundamentals [[171], [62], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 22 and associated fundamentals [[171], [62], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 8 with id 23 and associated fundamentals [[154], [30], [189]]
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 21,
      w_o => 24,
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
      x_i => c_22,
      y_i => c_20,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 24 and associated fundamentals [[2], [2], [7]]
  c_24_19_1_False_resize <= resize(c_19, 19);
  c_24_19_1_False_shift <= shift_left(c_24_19_1_False_resize, 1);
  c_24_16_0_False_resize <= c_16(18 downto 0);
  c_24_16_0_False_shift <= shift_left(c_24_16_0_False_resize, 0);
  with config_select_7 select c_24_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_19_1_False_shift;
        when others => c_24 <= c_24_16_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 25 and associated fundamentals [[70], [1], [1]]
  c_25_6_1_False_resize <= c_6(22 downto 0);
  c_25_6_1_False_shift <= shift_left(c_25_6_1_False_resize, 1);
  c_25_9_0_False_resize <= resize(c_9, 23);
  c_25_9_0_False_shift <= shift_left(c_25_9_0_False_resize, 0);
  with config_select_4 select c_25_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_6_1_False_shift;
        when others => c_25 <= c_25_9_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 26 and associated fundamentals [[70], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[70], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 28 and associated fundamentals [[70], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 29 and associated fundamentals [[74], [5], [13]]
  with config_select_8 select c_29_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 23,
      w_o => 23,
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
      sub_i => c_29_sub_sel,
      x_i => c_24,
      y_i => c_28,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 30 and associated fundamentals [[31], [130], [132]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_3 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 31 and associated fundamentals [[35], [138], [132]]
  c_31_6_0_False_resize <= c_6;
  c_31_6_0_False_shift <= shift_left(c_31_6_0_False_resize, 0);
  c_31_30_0_False_resize <= c_30;
  c_31_30_0_False_shift <= shift_left(c_31_30_0_False_resize, 0);
  with config_select_4 select c_31_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_6_0_False_shift;
        when others => c_31 <= c_31_30_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 32 and associated fundamentals [[35], [138], [132]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 33 and associated fundamentals [[35], [138], [132]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 34 and associated fundamentals [[35], [138], [132]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 35 and associated fundamentals [[35], [138], [132]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 36 and associated fundamentals [[109], [133], [145]]
  with config_select_9 select c_36_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_36: entity work.adder_node
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
      sub_i => c_36_sub_sel,
      x_i => c_35,
      y_i => c_29,
      z_o => c_36_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_36_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 37 and associated fundamentals [[35], [138], [140]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 38 and associated fundamentals [[35], [138], [140]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 39 and associated fundamentals [[35], [138], [140]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 40 and associated fundamentals [[35], [138], [140]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 41 and associated fundamentals [[109], [133], [280]]
  c_41_40_1_False_resize <= resize(c_40, 25);
  c_41_40_1_False_shift <= shift_left(c_41_40_1_False_resize, 1);
  c_41_36_0_False_resize <= resize(c_36, 25);
  c_41_36_0_False_shift <= shift_left(c_41_36_0_False_resize, 0);
  with config_select_10 select c_41_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "0" => c_41 <= c_41_40_1_False_shift;
        when others => c_41 <= c_41_36_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 42 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 43 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 44 and associated fundamentals [[1], [30], [189]]
  c_44_23_0_False_resize <= c_23;
  c_44_23_0_False_shift <= shift_left(c_44_23_0_False_resize, 0);
  c_44_43_0_False_resize <= resize(c_43, 24);
  c_44_43_0_False_shift <= shift_left(c_44_43_0_False_resize, 0);
  with config_select_9 select c_44_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "0" => c_44 <= c_44_23_0_False_shift;
        when others => c_44 <= c_44_43_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 45 and associated fundamentals [[1], [30], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 11 with id 46 and associated fundamentals [[110], [103], [91]]
  with config_select_11 select c_46_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_46: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 24,
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
      sub_i => c_46_sub_sel,
      x_i => c_41,
      y_i => c_45,
      z_o => c_46_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_46_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 47 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 48 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 49 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 50 and associated fundamentals [[171], [62], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 51 and associated fundamentals [[171], [62], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 52 and associated fundamentals [[171], [62], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 53 and associated fundamentals [[171], [62], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 54 and associated fundamentals [[220], [62], [128]]
  c_54_49_7_False_resize <= resize(c_49, 24);
  c_54_49_7_False_shift <= shift_left(c_54_49_7_False_resize, 7);
  c_54_53_0_False_resize <= c_53;
  c_54_53_0_False_shift <= shift_left(c_54_53_0_False_resize, 0);
  c_54_46_1_False_resize <= resize(c_46, 24);
  c_54_46_1_False_shift <= shift_left(c_54_46_1_False_resize, 1);
  with config_select_12 select c_54_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_54_sel is
        when "00" => c_54 <= c_54_49_7_False_shift;
        when "01" => c_54 <= c_54_53_0_False_shift;
        when others => c_54 <= c_54_46_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 55 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_49 & "";
    end if;
  end process;
  -- node of type 'add' in stage 13 with id 56 and associated fundamentals [[221], [63], [129]]
  inst_adder_node_56: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 16,
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
      x_i => c_54,
      y_i => c_55,
      z_o => c_56_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_56_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 57 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 58 and associated fundamentals [[110], [103], [91]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 59 and associated fundamentals [[110], [103], [91]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 14 with id 60 and associated fundamentals [[221], [103], [256]]
  c_60_57_8_False_resize <= resize(c_57, 24);
  c_60_57_8_False_shift <= shift_left(c_60_57_8_False_resize, 8);
  c_60_56_0_False_resize <= c_56;
  c_60_56_0_False_shift <= shift_left(c_60_56_0_False_resize, 0);
  c_60_59_0_False_resize <= resize(c_59, 24);
  c_60_59_0_False_shift <= shift_left(c_60_59_0_False_resize, 0);
  with config_select_14 select c_60_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_60_sel is
        when "00" => c_60 <= c_60_57_8_False_shift;
        when "01" => c_60 <= c_60_56_0_False_shift;
        when others => c_60 <= c_60_59_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 61 and associated fundamentals [[17], [25], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 62 and associated fundamentals [[17], [25], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 63 and associated fundamentals [[34], [50], [13]]
  c_63_62_1_False_resize <= resize(c_62, 22);
  c_63_62_1_False_shift <= shift_left(c_63_62_1_False_resize, 1);
  c_63_29_0_False_resize <= c_29(21 downto 0);
  c_63_29_0_False_shift <= shift_left(c_63_29_0_False_resize, 0);
  with config_select_9 select c_63_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_63_sel is
        when "0" => c_63 <= c_63_62_1_False_shift;
        when others => c_63 <= c_63_29_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 64 and associated fundamentals [[34], [50], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 65 and associated fundamentals [[34], [50], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 66 and associated fundamentals [[34], [50], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 67 and associated fundamentals [[34], [50], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 68 and associated fundamentals [[34], [50], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 15 with id 69 and associated fundamentals [[255], [53], [243]]
  with config_select_15 select c_69_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_69: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
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
      sub_i => c_69_sub_sel,
      x_i => c_60,
      y_i => c_68,
      z_o => c_69_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_69_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 70 and associated fundamentals [[17], [25], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 71 and associated fundamentals [[17], [25], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 72 and associated fundamentals [[17], [25], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 73 and associated fundamentals [[136], [25], [182]]
  c_73_72_0_False_resize <= resize(c_72, 24);
  c_73_72_0_False_shift <= shift_left(c_73_72_0_False_resize, 0);
  c_73_46_1_False_resize <= resize(c_46, 24);
  c_73_46_1_False_shift <= shift_left(c_73_46_1_False_resize, 1);
  c_73_72_3_False_resize <= resize(c_72, 24);
  c_73_72_3_False_shift <= shift_left(c_73_72_3_False_resize, 3);
  with config_select_12 select c_73_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_73_sel is
        when "00" => c_73 <= c_73_72_0_False_shift;
        when "01" => c_73 <= c_73_46_1_False_shift;
        when others => c_73 <= c_73_72_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 74 and associated fundamentals [[154], [30], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 75 and associated fundamentals [[154], [30], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 76 and associated fundamentals [[154], [30], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 77 and associated fundamentals [[154], [30], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 78 and associated fundamentals [[154], [30], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 79 and associated fundamentals [[154], [30], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 80 and associated fundamentals [[154], [30], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 16 with id 81 and associated fundamentals [[154], [120], [243]]
  c_81_80_0_False_resize <= c_80;
  c_81_80_0_False_shift <= shift_left(c_81_80_0_False_resize, 0);
  c_81_80_2_False_resize <= c_80;
  c_81_80_2_False_shift <= shift_left(c_81_80_2_False_resize, 2);
  c_81_69_0_False_resize <= c_69;
  c_81_69_0_False_shift <= shift_left(c_81_69_0_False_resize, 0);
  with config_select_16 select c_81_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_81_sel is
        when "00" => c_81 <= c_81_80_0_False_shift;
        when "01" => c_81 <= c_81_80_2_False_shift;
        when others => c_81 <= c_81_69_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 82 and associated fundamentals [[31], [130], [8]]
  c_82_8_3_False_resize <= resize(c_8, 24);
  c_82_8_3_False_shift <= shift_left(c_82_8_3_False_resize, 3);
  c_82_3_0_False_resize <= c_3;
  c_82_3_0_False_shift <= shift_left(c_82_3_0_False_resize, 0);
  with config_select_3 select c_82_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_82_sel is
        when "0" => c_82 <= c_82_8_3_False_shift;
        when others => c_82 <= c_82_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 83 and associated fundamentals [[148], [138], [28]]
  c_83_39_0_False_resize <= c_39;
  c_83_39_0_False_shift <= shift_left(c_83_39_0_False_resize, 0);
  c_83_62_2_False_resize <= resize(c_62, 24);
  c_83_62_2_False_shift <= shift_left(c_83_62_2_False_resize, 2);
  c_83_29_1_False_resize <= resize(c_29, 24);
  c_83_29_1_False_shift <= shift_left(c_83_29_1_False_resize, 1);
  with config_select_9 select c_83_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_83_sel is
        when "00" => c_83 <= c_83_39_0_False_shift;
        when "01" => c_83 <= c_83_62_2_False_shift;
        when others => c_83 <= c_83_29_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 84 and associated fundamentals [[110], [103], [189]]
  c_84_46_0_False_resize <= resize(c_46, 24);
  c_84_46_0_False_shift <= shift_left(c_84_46_0_False_resize, 0);
  c_84_76_0_False_resize <= c_76;
  c_84_76_0_False_shift <= shift_left(c_84_76_0_False_resize, 0);
  with config_select_12 select c_84_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_84_sel is
        when "0" => c_84 <= c_84_46_0_False_shift;
        when others => c_84 <= c_84_76_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 85 and associated fundamentals [[171], [124], [91]]
  c_85_53_0_False_resize <= c_53;
  c_85_53_0_False_shift <= shift_left(c_85_53_0_False_resize, 0);
  c_85_46_0_False_resize <= resize(c_46, 24);
  c_85_46_0_False_shift <= shift_left(c_85_46_0_False_resize, 0);
  c_85_53_1_False_resize <= c_53;
  c_85_53_1_False_shift <= shift_left(c_85_53_1_False_resize, 1);
  with config_select_12 select c_85_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_85_sel is
        when "00" => c_85 <= c_85_53_0_False_shift;
        when "01" => c_85 <= c_85_46_0_False_shift;
        when others => c_85 <= c_85_53_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 86 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 87 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_86 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 16 with id 88 and associated fundamentals [[255], [53], [2]]
  c_88_69_0_False_resize <= c_69;
  c_88_69_0_False_shift <= shift_left(c_88_69_0_False_resize, 0);
  c_88_87_1_False_resize <= resize(c_87, 24);
  c_88_87_1_False_shift <= shift_left(c_88_87_1_False_resize, 1);
  with config_select_16 select c_88_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_88_sel is
        when "0" => c_88 <= c_88_69_0_False_shift;
        when others => c_88 <= c_88_87_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 89 and associated fundamentals [[140], [5], [196]]
  c_89_39_2_False_resize <= c_39;
  c_89_39_2_False_shift <= shift_left(c_89_39_2_False_resize, 2);
  c_89_29_0_False_resize <= resize(c_29, 24);
  c_89_29_0_False_shift <= shift_left(c_89_29_0_False_resize, 0);
  c_89_50_0_False_resize <= c_50;
  c_89_50_0_False_shift <= shift_left(c_89_50_0_False_resize, 0);
  with config_select_9 select c_89_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_89_sel is
        when "00" => c_89 <= c_89_39_2_False_shift;
        when "01" => c_89 <= c_89_29_0_False_shift;
        when others => c_89 <= c_89_50_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 90 and associated fundamentals [[136], [25], [182]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 91 and associated fundamentals [[136], [25], [182]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_90 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 92 and associated fundamentals [[136], [25], [182]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 93 and associated fundamentals [[136], [25], [182]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_92 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 94 and associated fundamentals [[136], [25], [182]]
  c_94_resize <= c_93;
  c_94 <= shift_left(c_94_resize, 0);
  -- node of type 'output' in stage 16 with id 95 and associated fundamentals [[154], [120], [243]]
  c_95_resize <= c_81;
  c_95 <= shift_left(c_95_resize, 0);
  -- node of type 'register' in stage 4 with id 96 and associated fundamentals [[31], [130], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_82 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 97 and associated fundamentals [[31], [130], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_96 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 98 and associated fundamentals [[31], [130], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_97 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 99 and associated fundamentals [[31], [130], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_98 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 100 and associated fundamentals [[31], [130], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_99 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 101 and associated fundamentals [[31], [130], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_100 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 102 and associated fundamentals [[31], [130], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_101 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 103 and associated fundamentals [[31], [130], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_102 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 104 and associated fundamentals [[31], [130], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_103 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 105 and associated fundamentals [[31], [130], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_104 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 106 and associated fundamentals [[31], [130], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_105 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 107 and associated fundamentals [[31], [130], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_106 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 108 and associated fundamentals [[31], [130], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_108 <= c_107 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 109 and associated fundamentals [[31], [130], [8]]
  c_109_resize <= c_108;
  c_109 <= shift_left(c_109_resize, 0);
  -- node of type 'register' in stage 10 with id 110 and associated fundamentals [[109], [133], [145]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_110 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 111 and associated fundamentals [[109], [133], [145]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_110 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 112 and associated fundamentals [[109], [133], [145]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_111 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 113 and associated fundamentals [[109], [133], [145]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_112 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 114 and associated fundamentals [[109], [133], [145]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_113 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 115 and associated fundamentals [[109], [133], [145]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_114 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 116 and associated fundamentals [[109], [133], [145]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_116 <= c_115 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 117 and associated fundamentals [[109], [133], [145]]
  c_117_resize <= c_116;
  c_117 <= shift_left(c_117_resize, 0);
  -- node of type 'register' in stage 10 with id 118 and associated fundamentals [[148], [138], [28]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_118 <= c_83 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 119 and associated fundamentals [[148], [138], [28]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_119 <= c_118 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 120 and associated fundamentals [[148], [138], [28]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_120 <= c_119 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 121 and associated fundamentals [[148], [138], [28]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_121 <= c_120 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 122 and associated fundamentals [[148], [138], [28]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_122 <= c_121 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 123 and associated fundamentals [[148], [138], [28]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_123 <= c_122 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 124 and associated fundamentals [[148], [138], [28]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_124 <= c_123 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 125 and associated fundamentals [[148], [138], [28]]
  c_125_resize <= c_124;
  c_125 <= shift_left(c_125_resize, 0);
  -- node of type 'register' in stage 13 with id 126 and associated fundamentals [[110], [103], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_126 <= c_84 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 127 and associated fundamentals [[110], [103], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_127 <= c_126 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 128 and associated fundamentals [[110], [103], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_128 <= c_127 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 129 and associated fundamentals [[110], [103], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_129 <= c_128 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 130 and associated fundamentals [[110], [103], [189]]
  c_130_resize <= c_129;
  c_130 <= shift_left(c_130_resize, 0);
  -- node of type 'register' in stage 13 with id 131 and associated fundamentals [[171], [124], [91]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_131 <= c_85 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 132 and associated fundamentals [[171], [124], [91]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_132 <= c_131 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 133 and associated fundamentals [[171], [124], [91]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_133 <= c_132 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 134 and associated fundamentals [[171], [124], [91]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_134 <= c_133 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 135 and associated fundamentals [[171], [124], [91]]
  c_135_resize <= c_134;
  c_135 <= shift_left(c_135_resize, 0);
  -- node of type 'output' in stage 16 with id 136 and associated fundamentals [[255], [53], [2]]
  c_136_resize <= c_88;
  c_136 <= shift_left(c_136_resize, 0);
  -- node of type 'register' in stage 14 with id 137 and associated fundamentals [[221], [63], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_137 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 138 and associated fundamentals [[221], [63], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_138 <= c_137 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 139 and associated fundamentals [[221], [63], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_139 <= c_138 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 140 and associated fundamentals [[221], [63], [129]]
  c_140_resize <= c_139;
  c_140 <= shift_left(c_140_resize, 0);
  -- node of type 'register' in stage 10 with id 141 and associated fundamentals [[140], [5], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_141 <= c_89 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 142 and associated fundamentals [[140], [5], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_142 <= c_141 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 143 and associated fundamentals [[140], [5], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_143 <= c_142 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 144 and associated fundamentals [[140], [5], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_144 <= c_143 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 145 and associated fundamentals [[140], [5], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_145 <= c_144 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 146 and associated fundamentals [[140], [5], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_146 <= c_145 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 147 and associated fundamentals [[140], [5], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_147 <= c_146 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 148 and associated fundamentals [[140], [5], [196]]
  c_148_resize <= c_147;
  c_148 <= shift_left(c_148_resize, 0);
end architecture;
