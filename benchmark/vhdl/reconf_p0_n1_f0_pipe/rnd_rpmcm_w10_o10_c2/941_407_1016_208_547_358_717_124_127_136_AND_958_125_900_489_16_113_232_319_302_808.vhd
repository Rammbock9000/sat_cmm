library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(24 downto 0);
    y_2: out std_logic_vector(25 downto 0);
    y_3: out std_logic_vector(24 downto 0);
    y_4: out std_logic_vector(25 downto 0);
    y_5: out std_logic_vector(24 downto 0);
    y_6: out std_logic_vector(25 downto 0);
    y_7: out std_logic_vector(24 downto 0);
    y_8: out std_logic_vector(24 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(21 downto 0);
  signal c_1_i0_resize: signed(21 downto 0);
  signal c_1_i1_resize: signed(21 downto 0);
  signal c_1_i0_shift: signed(21 downto 0);
  signal c_1_i1_shift: signed(21 downto 0);
  signal c_1_arith: signed(21 downto 0);
  signal c_1_oshift: signed(21 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(15 downto 0);
  signal c_3: signed(22 downto 0);
  signal c_3_2_7_False_resize: signed(22 downto 0);
  signal c_3_2_7_False_shift: signed(22 downto 0);
  signal c_3_1_0_False_resize: signed(22 downto 0);
  signal c_3_1_0_False_shift: signed(22 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(17 downto 0);
  signal c_4_0_2_False_resize: signed(17 downto 0);
  signal c_4_0_2_False_shift: signed(17 downto 0);
  signal c_4_0_0_False_resize: signed(17 downto 0);
  signal c_4_0_0_False_shift: signed(17 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(17 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_i0_resize: signed(22 downto 0);
  signal c_6_i1_resize: signed(22 downto 0);
  signal c_6_i0_shift: signed(22 downto 0);
  signal c_6_i1_shift: signed(22 downto 0);
  signal c_6_arith: signed(22 downto 0);
  signal c_6_oshift: signed(22 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_0_7_False_resize: signed(22 downto 0);
  signal c_7_0_7_False_shift: signed(22 downto 0);
  signal c_7_0_0_False_resize: signed(22 downto 0);
  signal c_7_0_0_False_shift: signed(22 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(24 downto 0);
  signal c_8_i0_resize: signed(24 downto 0);
  signal c_8_i1_resize: signed(24 downto 0);
  signal c_8_i0_shift: signed(24 downto 0);
  signal c_8_i1_shift: signed(24 downto 0);
  signal c_8_arith: signed(24 downto 0);
  signal c_8_oshift: signed(24 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(15 downto 0);
  signal c_10: signed(15 downto 0);
  signal c_11: signed(20 downto 0);
  signal c_11_10_0_False_resize: signed(20 downto 0);
  signal c_11_10_0_False_shift: signed(20 downto 0);
  signal c_11_6_0_False_resize: signed(20 downto 0);
  signal c_11_6_0_False_shift: signed(20 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(24 downto 0);
  signal c_13: signed(24 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_i0_resize: signed(24 downto 0);
  signal c_14_i1_resize: signed(24 downto 0);
  signal c_14_i0_shift: signed(24 downto 0);
  signal c_14_i1_shift: signed(24 downto 0);
  signal c_14_arith: signed(24 downto 0);
  signal c_14_oshift: signed(23 downto 0);
  signal c_15: signed(21 downto 0);
  signal c_15_9_0_False_resize: signed(21 downto 0);
  signal c_15_9_0_False_shift: signed(21 downto 0);
  signal c_15_8_0_False_resize: signed(21 downto 0);
  signal c_15_8_0_False_shift: signed(21 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(21 downto 0);
  signal c_17: signed(21 downto 0);
  signal c_18: signed(22 downto 0);
  signal c_18_i0_resize: signed(23 downto 0);
  signal c_18_i1_resize: signed(23 downto 0);
  signal c_18_i0_shift: signed(23 downto 0);
  signal c_18_i1_shift: signed(23 downto 0);
  signal c_18_arith: signed(23 downto 0);
  signal c_18_oshift: signed(22 downto 0);
  signal c_19: signed(21 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_20_19_1_False_resize: signed(22 downto 0);
  signal c_20_19_1_False_shift: signed(22 downto 0);
  signal c_20_8_0_False_resize: signed(22 downto 0);
  signal c_20_8_0_False_shift: signed(22 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_23: signed(22 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_18_1_False_resize: signed(23 downto 0);
  signal c_24_18_1_False_shift: signed(23 downto 0);
  signal c_24_23_0_False_resize: signed(23 downto 0);
  signal c_24_23_0_False_shift: signed(23 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_26: signed(22 downto 0);
  signal c_27: signed(22 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_29: signed(24 downto 0);
  signal c_29_i0_resize: signed(24 downto 0);
  signal c_29_i1_resize: signed(24 downto 0);
  signal c_29_i0_shift: signed(24 downto 0);
  signal c_29_i1_shift: signed(24 downto 0);
  signal c_29_arith: signed(24 downto 0);
  signal c_29_oshift: signed(24 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(24 downto 0);
  signal c_30_12_0_False_resize: signed(24 downto 0);
  signal c_30_12_0_False_shift: signed(24 downto 0);
  signal c_30_6_0_False_resize: signed(24 downto 0);
  signal c_30_6_0_False_shift: signed(24 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(24 downto 0);
  signal c_32: signed(24 downto 0);
  signal c_33: signed(24 downto 0);
  signal c_34: signed(24 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_i0_resize: signed(25 downto 0);
  signal c_35_i1_resize: signed(25 downto 0);
  signal c_35_i0_shift: signed(25 downto 0);
  signal c_35_i1_shift: signed(25 downto 0);
  signal c_35_arith: signed(25 downto 0);
  signal c_35_oshift: signed(25 downto 0);
  signal c_35_sub_sel: std_logic;
  signal c_36: signed(22 downto 0);
  signal c_37: signed(22 downto 0);
  signal c_38: signed(22 downto 0);
  signal c_39: signed(22 downto 0);
  signal c_39_35_0_False_resize: signed(22 downto 0);
  signal c_39_35_0_False_shift: signed(22 downto 0);
  signal c_39_38_0_False_resize: signed(22 downto 0);
  signal c_39_38_0_False_shift: signed(22 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(22 downto 0);
  signal c_41: signed(22 downto 0);
  signal c_42: signed(22 downto 0);
  signal c_43: signed(22 downto 0);
  signal c_44: signed(24 downto 0);
  signal c_44_i0_resize: signed(24 downto 0);
  signal c_44_i1_resize: signed(24 downto 0);
  signal c_44_i0_shift: signed(24 downto 0);
  signal c_44_i1_shift: signed(24 downto 0);
  signal c_44_arith: signed(24 downto 0);
  signal c_44_oshift: signed(24 downto 0);
  signal c_44_sub_sel: std_logic;
  signal c_45: signed(24 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_45_0_False_resize: signed(23 downto 0);
  signal c_46_45_0_False_shift: signed(23 downto 0);
  signal c_46_14_0_False_resize: signed(23 downto 0);
  signal c_46_14_0_False_shift: signed(23 downto 0);
  signal c_46_sel: std_logic_vector(0 downto 0);
  signal c_47: signed(21 downto 0);
  signal c_47_2_6_False_resize: signed(21 downto 0);
  signal c_47_2_6_False_shift: signed(21 downto 0);
  signal c_47_1_0_False_resize: signed(21 downto 0);
  signal c_47_1_0_False_shift: signed(21 downto 0);
  signal c_47_sel: std_logic_vector(0 downto 0);
  signal c_48: signed(21 downto 0);
  signal c_49: signed(21 downto 0);
  signal c_50: signed(21 downto 0);
  signal c_51: signed(21 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_52_i0_resize: signed(25 downto 0);
  signal c_52_i1_resize: signed(25 downto 0);
  signal c_52_i0_shift: signed(25 downto 0);
  signal c_52_i1_shift: signed(25 downto 0);
  signal c_52_arith: signed(25 downto 0);
  signal c_52_oshift: signed(25 downto 0);
  signal c_53: signed(24 downto 0);
  signal c_53_44_1_False_resize: signed(24 downto 0);
  signal c_53_44_1_False_shift: signed(24 downto 0);
  signal c_53_44_0_False_resize: signed(24 downto 0);
  signal c_53_44_0_False_shift: signed(24 downto 0);
  signal c_53_sel: std_logic_vector(0 downto 0);
  signal c_54: signed(15 downto 0);
  signal c_55: signed(15 downto 0);
  signal c_56: signed(15 downto 0);
  signal c_57: signed(15 downto 0);
  signal c_58: signed(24 downto 0);
  signal c_58_57_0_False_resize: signed(24 downto 0);
  signal c_58_57_0_False_shift: signed(24 downto 0);
  signal c_58_52_0_False_resize: signed(24 downto 0);
  signal c_58_52_0_False_shift: signed(24 downto 0);
  signal c_58_sel: std_logic_vector(0 downto 0);
  signal c_59: signed(24 downto 0);
  signal c_60: signed(24 downto 0);
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
  signal c_64: signed(24 downto 0);
  signal c_65: signed(24 downto 0);
  signal c_66: signed(24 downto 0);
  signal c_67: signed(24 downto 0);
  signal c_68: signed(25 downto 0);
  signal c_68_67_1_False_resize: signed(25 downto 0);
  signal c_68_67_1_False_shift: signed(25 downto 0);
  signal c_68_35_0_False_resize: signed(25 downto 0);
  signal c_68_35_0_False_shift: signed(25 downto 0);
  signal c_68_sel: std_logic_vector(0 downto 0);
  signal c_69: signed(24 downto 0);
  signal c_70: signed(24 downto 0);
  signal c_70_69_0_False_resize: signed(24 downto 0);
  signal c_70_69_0_False_shift: signed(24 downto 0);
  signal c_70_35_0_False_resize: signed(24 downto 0);
  signal c_70_35_0_False_shift: signed(24 downto 0);
  signal c_70_sel: std_logic_vector(0 downto 0);
  signal c_71: signed(23 downto 0);
  signal c_71_22_1_False_resize: signed(23 downto 0);
  signal c_71_22_1_False_shift: signed(23 downto 0);
  signal c_71_14_0_False_resize: signed(23 downto 0);
  signal c_71_14_0_False_shift: signed(23 downto 0);
  signal c_71_sel: std_logic_vector(0 downto 0);
  signal c_72: signed(24 downto 0);
  signal c_72_52_0_False_resize: signed(24 downto 0);
  signal c_72_52_0_False_shift: signed(24 downto 0);
  signal c_72_40_3_False_resize: signed(24 downto 0);
  signal c_72_40_3_False_shift: signed(24 downto 0);
  signal c_72_sel: std_logic_vector(0 downto 0);
  signal c_73: signed(25 downto 0);
  signal c_73_52_0_False_resize: signed(25 downto 0);
  signal c_73_52_0_False_shift: signed(25 downto 0);
  signal c_73_57_4_False_resize: signed(25 downto 0);
  signal c_73_57_4_False_shift: signed(25 downto 0);
  signal c_73_sel: std_logic_vector(0 downto 0);
  signal c_74: signed(22 downto 0);
  signal c_75: signed(24 downto 0);
  signal c_75_44_0_False_resize: signed(24 downto 0);
  signal c_75_44_0_False_shift: signed(24 downto 0);
  signal c_75_74_0_False_resize: signed(24 downto 0);
  signal c_75_74_0_False_shift: signed(24 downto 0);
  signal c_75_sel: std_logic_vector(0 downto 0);
  signal c_76: signed(22 downto 0);
  signal c_77: signed(22 downto 0);
  signal c_78: signed(22 downto 0);
  signal c_79: signed(22 downto 0);
  signal c_80: signed(25 downto 0);
  signal c_80_63_0_False_resize: signed(25 downto 0);
  signal c_80_63_0_False_shift: signed(25 downto 0);
  signal c_80_79_3_False_resize: signed(25 downto 0);
  signal c_80_79_3_False_shift: signed(25 downto 0);
  signal c_80_sel: std_logic_vector(0 downto 0);
  signal c_81: signed(21 downto 0);
  signal c_82: signed(21 downto 0);
  signal c_83: signed(21 downto 0);
  signal c_84: signed(21 downto 0);
  signal c_85: signed(21 downto 0);
  signal c_86: signed(21 downto 0);
  signal c_87: signed(21 downto 0);
  signal c_88: signed(21 downto 0);
  signal c_89: signed(21 downto 0);
  signal c_90: signed(21 downto 0);
  signal c_91: signed(21 downto 0);
  signal c_92: signed(24 downto 0);
  signal c_92_63_0_False_resize: signed(24 downto 0);
  signal c_92_63_0_False_shift: signed(24 downto 0);
  signal c_92_91_2_False_resize: signed(24 downto 0);
  signal c_92_91_2_False_shift: signed(24 downto 0);
  signal c_92_sel: std_logic_vector(0 downto 0);
  signal c_93: signed(24 downto 0);
  signal c_93_29_0_False_resize: signed(24 downto 0);
  signal c_93_29_0_False_shift: signed(24 downto 0);
  signal c_93_37_0_False_resize: signed(24 downto 0);
  signal c_93_37_0_False_shift: signed(24 downto 0);
  signal c_93_sel: std_logic_vector(0 downto 0);
  signal c_94: signed(23 downto 0);
  signal c_95: signed(23 downto 0);
  signal c_96: signed(23 downto 0);
  signal c_97: signed(23 downto 0);
  signal c_98: signed(23 downto 0);
  signal c_99: signed(23 downto 0);
  signal c_100: signed(23 downto 0);
  signal c_100_99_1_False_resize: signed(23 downto 0);
  signal c_100_99_1_False_shift: signed(23 downto 0);
  signal c_100_44_0_False_resize: signed(23 downto 0);
  signal c_100_44_0_False_shift: signed(23 downto 0);
  signal c_100_sel: std_logic_vector(0 downto 0);
  signal c_101: signed(25 downto 0);
  signal c_102: signed(25 downto 0);
  signal c_103: signed(25 downto 0);
  signal c_104: signed(25 downto 0);
  signal c_105: signed(25 downto 0);
  signal c_105_resize: signed(25 downto 0);
  signal c_106: signed(24 downto 0);
  signal c_107: signed(24 downto 0);
  signal c_108: signed(24 downto 0);
  signal c_109: signed(24 downto 0);
  signal c_110: signed(24 downto 0);
  signal c_110_resize: signed(24 downto 0);
  signal c_111: signed(23 downto 0);
  signal c_112: signed(23 downto 0);
  signal c_113: signed(23 downto 0);
  signal c_114: signed(23 downto 0);
  signal c_115: signed(23 downto 0);
  signal c_116: signed(23 downto 0);
  signal c_117: signed(23 downto 0);
  signal c_118: signed(23 downto 0);
  signal c_119: signed(25 downto 0);
  signal c_119_resize: signed(25 downto 0);
  signal c_120: signed(24 downto 0);
  signal c_121: signed(24 downto 0);
  signal c_122: signed(24 downto 0);
  signal c_123: signed(24 downto 0);
  signal c_124: signed(24 downto 0);
  signal c_125: signed(24 downto 0);
  signal c_126: signed(24 downto 0);
  signal c_126_resize: signed(24 downto 0);
  signal c_127: signed(25 downto 0);
  signal c_128: signed(25 downto 0);
  signal c_129: signed(25 downto 0);
  signal c_130: signed(25 downto 0);
  signal c_131: signed(25 downto 0);
  signal c_132: signed(25 downto 0);
  signal c_133: signed(25 downto 0);
  signal c_133_resize: signed(25 downto 0);
  signal c_134: signed(24 downto 0);
  signal c_135: signed(24 downto 0);
  signal c_136: signed(24 downto 0);
  signal c_136_resize: signed(24 downto 0);
  signal c_137: signed(25 downto 0);
  signal c_137_resize: signed(25 downto 0);
  signal c_138: signed(24 downto 0);
  signal c_138_resize: signed(24 downto 0);
  signal c_139: signed(24 downto 0);
  signal c_140: signed(24 downto 0);
  signal c_141: signed(24 downto 0);
  signal c_142: signed(24 downto 0);
  signal c_143: signed(24 downto 0);
  signal c_144: signed(24 downto 0);
  signal c_144_resize: signed(24 downto 0);
  signal c_145: signed(23 downto 0);
  signal c_146: signed(23 downto 0);
  signal c_147: signed(25 downto 0);
  signal c_147_resize: signed(25 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 105
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_105);
    end if;
  end process;
  -- output node 1 with id 110
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_110);
    end if;
  end process;
  -- output node 2 with id 119
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_119);
    end if;
  end process;
  -- output node 3 with id 126
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_126);
    end if;
  end process;
  -- output node 4 with id 133
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_133);
    end if;
  end process;
  -- output node 5 with id 136
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_136);
    end if;
  end process;
  -- output node 6 with id 137
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_137);
    end if;
  end process;
  -- output node 7 with id 138
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_138);
    end if;
  end process;
  -- output node 8 with id 144
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_144);
    end if;
  end process;
  -- output node 9 with id 147
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_147);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[31], [33]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 22,
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
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[128], [33]]
  c_3_2_7_False_resize <= resize(c_2, 23);
  c_3_2_7_False_shift <= shift_left(c_3_2_7_False_resize, 7);
  c_3_1_0_False_resize <= resize(c_1, 23);
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  with config_select_2 select c_3_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_2_7_False_shift;
        when others => c_3 <= c_3_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[1], [4]]
  c_4_0_2_False_resize <= resize(c_0, 18);
  c_4_0_2_False_shift <= shift_left(c_4_0_2_False_resize, 2);
  c_4_0_0_False_resize <= resize(c_0, 18);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  with config_select_1 select c_4_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_2_False_shift;
        when others => c_4 <= c_4_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_4 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 6 and associated fundamentals [[127], [29]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 18,
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
      x_i => c_3,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[1], [128]]
  c_7_0_7_False_resize <= resize(c_0, 23);
  c_7_0_7_False_shift <= shift_left(c_7_0_7_False_resize, 7);
  c_7_0_0_False_resize <= resize(c_0, 23);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  with config_select_1 select c_7_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_0_7_False_shift;
        when others => c_7 <= c_7_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 8 and associated fundamentals [[35], [479]]
  with config_select_2 select c_8_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
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
      sub_i => c_8_sub_sel,
      x_i => c_7,
      y_i => c_1,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 9 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 11 and associated fundamentals [[1], [29]]
  c_11_10_0_False_resize <= resize(c_10, 21);
  c_11_10_0_False_shift <= shift_left(c_11_10_0_False_resize, 0);
  c_11_6_0_False_resize <= c_6(20 downto 0);
  c_11_6_0_False_shift <= shift_left(c_11_6_0_False_resize, 0);
  with config_select_4 select c_11_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_10_0_False_shift;
        when others => c_11 <= c_11_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 12 and associated fundamentals [[35], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 13 and associated fundamentals [[35], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 5 with id 14 and associated fundamentals [[17], [225]]
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 21,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 1,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_13,
      y_i => c_11,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[35], [1]]
  c_15_9_0_False_resize <= resize(c_9, 22);
  c_15_9_0_False_shift <= shift_left(c_15_9_0_False_resize, 0);
  c_15_8_0_False_resize <= c_8(21 downto 0);
  c_15_8_0_False_shift <= shift_left(c_15_8_0_False_resize, 0);
  with config_select_3 select c_15_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_9_0_False_shift;
        when others => c_15 <= c_15_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 16 and associated fundamentals [[35], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 17 and associated fundamentals [[35], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'add' in stage 6 with id 18 and associated fundamentals [[26], [113]]
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 1,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_14,
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 19 and associated fundamentals [[31], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_1 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 20 and associated fundamentals [[35], [66]]
  c_20_19_1_False_resize <= resize(c_19, 23);
  c_20_19_1_False_shift <= shift_left(c_20_19_1_False_resize, 1);
  c_20_8_0_False_resize <= c_8(22 downto 0);
  c_20_8_0_False_shift <= shift_left(c_20_8_0_False_resize, 0);
  with config_select_3 select c_20_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_19_1_False_shift;
        when others => c_20 <= c_20_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 21 and associated fundamentals [[127], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 22 and associated fundamentals [[127], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 23 and associated fundamentals [[127], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 24 and associated fundamentals [[127], [226]]
  c_24_18_1_False_resize <= resize(c_18, 24);
  c_24_18_1_False_shift <= shift_left(c_24_18_1_False_resize, 1);
  c_24_23_0_False_resize <= resize(c_23, 24);
  c_24_23_0_False_shift <= shift_left(c_24_23_0_False_resize, 0);
  with config_select_7 select c_24_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_18_1_False_shift;
        when others => c_24 <= c_24_23_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 25 and associated fundamentals [[35], [66]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 26 and associated fundamentals [[35], [66]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[35], [66]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 28 and associated fundamentals [[35], [66]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 29 and associated fundamentals [[407], [302]]
  with config_select_8 select c_29_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
      w_o => 25,
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
      sub_i => c_29_sub_sel,
      x_i => c_28,
      y_i => c_24,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 30 and associated fundamentals [[127], [479]]
  c_30_12_0_False_resize <= c_12;
  c_30_12_0_False_shift <= shift_left(c_30_12_0_False_resize, 0);
  c_30_6_0_False_resize <= resize(c_6, 25);
  c_30_6_0_False_shift <= shift_left(c_30_6_0_False_resize, 0);
  with config_select_4 select c_30_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "0" => c_30 <= c_30_12_0_False_shift;
        when others => c_30 <= c_30_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 31 and associated fundamentals [[127], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 32 and associated fundamentals [[127], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 33 and associated fundamentals [[127], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 34 and associated fundamentals [[127], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 35 and associated fundamentals [[941], [125]]
  with config_select_9 select c_35_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_35: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
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
      sub_i => c_35_sub_sel,
      x_i => c_29,
      y_i => c_34,
      z_o => c_35_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_35_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 36 and associated fundamentals [[127], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 37 and associated fundamentals [[127], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 38 and associated fundamentals [[127], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 39 and associated fundamentals [[127], [125]]
  c_39_35_0_False_resize <= c_35(22 downto 0);
  c_39_35_0_False_shift <= shift_left(c_39_35_0_False_resize, 0);
  c_39_38_0_False_resize <= c_38;
  c_39_38_0_False_shift <= shift_left(c_39_38_0_False_resize, 0);
  with config_select_10 select c_39_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "0" => c_39 <= c_39_35_0_False_shift;
        when others => c_39 <= c_39_38_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 40 and associated fundamentals [[26], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 41 and associated fundamentals [[26], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 42 and associated fundamentals [[26], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 43 and associated fundamentals [[26], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 11 with id 44 and associated fundamentals [[358], [202]]
  with config_select_11 select c_44_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_44: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 25,
      s_x_i => 2,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_44_sub_sel,
      x_i => c_43,
      y_i => c_39,
      z_o => c_44_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_44_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 45 and associated fundamentals [[35], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_13 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 46 and associated fundamentals [[35], [225]]
  c_46_45_0_False_resize <= c_45(23 downto 0);
  c_46_45_0_False_shift <= shift_left(c_46_45_0_False_resize, 0);
  c_46_14_0_False_resize <= c_14;
  c_46_14_0_False_shift <= shift_left(c_46_14_0_False_resize, 0);
  with config_select_6 select c_46_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "0" => c_46 <= c_46_45_0_False_shift;
        when others => c_46 <= c_46_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 47 and associated fundamentals [[64], [33]]
  c_47_2_6_False_resize <= resize(c_2, 22);
  c_47_2_6_False_shift <= shift_left(c_47_2_6_False_resize, 6);
  c_47_1_0_False_resize <= c_1;
  c_47_1_0_False_shift <= shift_left(c_47_1_0_False_resize, 0);
  with config_select_2 select c_47_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "0" => c_47 <= c_47_2_6_False_shift;
        when others => c_47 <= c_47_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 48 and associated fundamentals [[64], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 49 and associated fundamentals [[64], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 50 and associated fundamentals [[64], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 51 and associated fundamentals [[64], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'add' in stage 7 with id 52 and associated fundamentals [[547], [489]]
  inst_adder_node_52: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_46,
      y_i => c_51,
      z_o => c_52_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_52_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 53 and associated fundamentals [[358], [404]]
  c_53_44_1_False_resize <= c_44;
  c_53_44_1_False_shift <= shift_left(c_53_44_1_False_resize, 1);
  c_53_44_0_False_resize <= c_44;
  c_53_44_0_False_shift <= shift_left(c_53_44_0_False_resize, 0);
  with config_select_12 select c_53_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_53_sel is
        when "0" => c_53 <= c_53_44_1_False_shift;
        when others => c_53 <= c_53_44_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 54 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 55 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 56 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 57 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 58 and associated fundamentals [[1], [489]]
  c_58_57_0_False_resize <= resize(c_57, 25);
  c_58_57_0_False_shift <= shift_left(c_58_57_0_False_resize, 0);
  c_58_52_0_False_resize <= c_52(24 downto 0);
  c_58_52_0_False_shift <= shift_left(c_58_52_0_False_resize, 0);
  with config_select_8 select c_58_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_58_sel is
        when "0" => c_58 <= c_58_57_0_False_shift;
        when others => c_58 <= c_58_52_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 59 and associated fundamentals [[1], [489]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 60 and associated fundamentals [[1], [489]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 61 and associated fundamentals [[1], [489]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 62 and associated fundamentals [[1], [489]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 13 with id 63 and associated fundamentals [[717], [319]]
  with config_select_13 select c_63_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_63: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
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
      sub_i => c_63_sub_sel,
      x_i => c_53,
      y_i => c_62,
      z_o => c_63_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_63_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 64 and associated fundamentals [[35], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 65 and associated fundamentals [[35], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 66 and associated fundamentals [[35], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 67 and associated fundamentals [[35], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 68 and associated fundamentals [[941], [958]]
  c_68_67_1_False_resize <= resize(c_67, 26);
  c_68_67_1_False_shift <= shift_left(c_68_67_1_False_resize, 1);
  c_68_35_0_False_resize <= c_35;
  c_68_35_0_False_shift <= shift_left(c_68_35_0_False_resize, 0);
  with config_select_10 select c_68_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_68_sel is
        when "0" => c_68 <= c_68_67_1_False_shift;
        when others => c_68 <= c_68_35_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 69 and associated fundamentals [[407], [302]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_29 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 70 and associated fundamentals [[407], [125]]
  c_70_69_0_False_resize <= c_69;
  c_70_69_0_False_shift <= shift_left(c_70_69_0_False_resize, 0);
  c_70_35_0_False_resize <= c_35(24 downto 0);
  c_70_35_0_False_shift <= shift_left(c_70_35_0_False_resize, 0);
  with config_select_10 select c_70_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_70_sel is
        when "0" => c_70 <= c_70_69_0_False_shift;
        when others => c_70 <= c_70_35_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 71 and associated fundamentals [[254], [225]]
  c_71_22_1_False_resize <= resize(c_22, 24);
  c_71_22_1_False_shift <= shift_left(c_71_22_1_False_resize, 1);
  c_71_14_0_False_resize <= c_14;
  c_71_14_0_False_shift <= shift_left(c_71_14_0_False_resize, 0);
  with config_select_6 select c_71_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_71_sel is
        when "0" => c_71 <= c_71_22_1_False_shift;
        when others => c_71 <= c_71_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 72 and associated fundamentals [[208], [489]]
  c_72_52_0_False_resize <= c_52(24 downto 0);
  c_72_52_0_False_shift <= shift_left(c_72_52_0_False_resize, 0);
  c_72_40_3_False_resize <= resize(c_40, 25);
  c_72_40_3_False_shift <= shift_left(c_72_40_3_False_resize, 3);
  with config_select_8 select c_72_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_72_sel is
        when "0" => c_72 <= c_72_52_0_False_shift;
        when others => c_72 <= c_72_40_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 73 and associated fundamentals [[547], [16]]
  c_73_52_0_False_resize <= c_52;
  c_73_52_0_False_shift <= shift_left(c_73_52_0_False_resize, 0);
  c_73_57_4_False_resize <= resize(c_57, 26);
  c_73_57_4_False_shift <= shift_left(c_73_57_4_False_resize, 4);
  with config_select_8 select c_73_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_73_sel is
        when "0" => c_73 <= c_73_52_0_False_shift;
        when others => c_73 <= c_73_57_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 74 and associated fundamentals [[26], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_43 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 75 and associated fundamentals [[358], [113]]
  c_75_44_0_False_resize <= c_44;
  c_75_44_0_False_shift <= shift_left(c_75_44_0_False_resize, 0);
  c_75_74_0_False_resize <= resize(c_74, 25);
  c_75_74_0_False_shift <= shift_left(c_75_74_0_False_resize, 0);
  with config_select_12 select c_75_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_75_sel is
        when "0" => c_75 <= c_75_44_0_False_shift;
        when others => c_75 <= c_75_74_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 76 and associated fundamentals [[127], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 77 and associated fundamentals [[127], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 78 and associated fundamentals [[127], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 79 and associated fundamentals [[127], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 14 with id 80 and associated fundamentals [[717], [232]]
  c_80_63_0_False_resize <= c_63;
  c_80_63_0_False_shift <= shift_left(c_80_63_0_False_resize, 0);
  c_80_79_3_False_resize <= resize(c_79, 26);
  c_80_79_3_False_shift <= shift_left(c_80_79_3_False_resize, 3);
  with config_select_14 select c_80_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_80_sel is
        when "0" => c_80 <= c_80_63_0_False_shift;
        when others => c_80 <= c_80_79_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 81 and associated fundamentals [[31], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 82 and associated fundamentals [[31], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_81 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 83 and associated fundamentals [[31], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_82 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 84 and associated fundamentals [[31], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_83 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 85 and associated fundamentals [[31], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_84 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 86 and associated fundamentals [[31], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_85 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 87 and associated fundamentals [[31], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_86 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 88 and associated fundamentals [[31], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_87 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 89 and associated fundamentals [[31], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_88 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 90 and associated fundamentals [[31], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_89 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 91 and associated fundamentals [[31], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_90 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 14 with id 92 and associated fundamentals [[124], [319]]
  c_92_63_0_False_resize <= c_63(24 downto 0);
  c_92_63_0_False_shift <= shift_left(c_92_63_0_False_resize, 0);
  c_92_91_2_False_resize <= resize(c_91, 25);
  c_92_91_2_False_shift <= shift_left(c_92_91_2_False_resize, 2);
  with config_select_14 select c_92_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_92_sel is
        when "0" => c_92 <= c_92_63_0_False_shift;
        when others => c_92 <= c_92_91_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 93 and associated fundamentals [[127], [302]]
  c_93_29_0_False_resize <= c_29;
  c_93_29_0_False_shift <= shift_left(c_93_29_0_False_resize, 0);
  c_93_37_0_False_resize <= resize(c_37, 25);
  c_93_37_0_False_shift <= shift_left(c_93_37_0_False_resize, 0);
  with config_select_9 select c_93_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_93_sel is
        when "0" => c_93 <= c_93_29_0_False_shift;
        when others => c_93 <= c_93_37_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 94 and associated fundamentals [[17], [225]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 95 and associated fundamentals [[17], [225]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_94 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 96 and associated fundamentals [[17], [225]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_95 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 97 and associated fundamentals [[17], [225]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_96 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 98 and associated fundamentals [[17], [225]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_97 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 99 and associated fundamentals [[17], [225]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_98 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 100 and associated fundamentals [[34], [202]]
  c_100_99_1_False_resize <= c_99;
  c_100_99_1_False_shift <= shift_left(c_100_99_1_False_resize, 1);
  c_100_44_0_False_resize <= c_44(23 downto 0);
  c_100_44_0_False_shift <= shift_left(c_100_44_0_False_resize, 0);
  with config_select_12 select c_100_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_100_sel is
        when "0" => c_100 <= c_100_99_1_False_shift;
        when others => c_100 <= c_100_44_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 101 and associated fundamentals [[941], [958]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 102 and associated fundamentals [[941], [958]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_101 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 103 and associated fundamentals [[941], [958]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_102 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 104 and associated fundamentals [[941], [958]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_103 & "";
    end if;
  end process;
  -- node of type 'output' in stage 14 with id 105 and associated fundamentals [[941], [958]]
  c_105_resize <= c_104;
  c_105 <= shift_left(c_105_resize, 0);
  -- node of type 'register' in stage 11 with id 106 and associated fundamentals [[407], [125]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_70 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 107 and associated fundamentals [[407], [125]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_106 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 108 and associated fundamentals [[407], [125]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_108 <= c_107 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 109 and associated fundamentals [[407], [125]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_109 <= c_108 & "";
    end if;
  end process;
  -- node of type 'output' in stage 14 with id 110 and associated fundamentals [[407], [125]]
  c_110_resize <= c_109;
  c_110 <= shift_left(c_110_resize, 0);
  -- node of type 'register' in stage 7 with id 111 and associated fundamentals [[254], [225]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_71 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 112 and associated fundamentals [[254], [225]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_111 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 113 and associated fundamentals [[254], [225]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_112 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 114 and associated fundamentals [[254], [225]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_113 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 115 and associated fundamentals [[254], [225]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_114 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 116 and associated fundamentals [[254], [225]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_116 <= c_115 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 117 and associated fundamentals [[254], [225]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_117 <= c_116 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 118 and associated fundamentals [[254], [225]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_118 <= c_117 & "";
    end if;
  end process;
  -- node of type 'output' in stage 14 with id 119 and associated fundamentals [[1016], [900]]
  c_119_resize <= resize(c_118, 26);
  c_119 <= shift_left(c_119_resize, 2);
  -- node of type 'register' in stage 9 with id 120 and associated fundamentals [[208], [489]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_120 <= c_72 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 121 and associated fundamentals [[208], [489]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_121 <= c_120 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 122 and associated fundamentals [[208], [489]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_122 <= c_121 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 123 and associated fundamentals [[208], [489]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_123 <= c_122 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 124 and associated fundamentals [[208], [489]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_124 <= c_123 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 125 and associated fundamentals [[208], [489]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_125 <= c_124 & "";
    end if;
  end process;
  -- node of type 'output' in stage 14 with id 126 and associated fundamentals [[208], [489]]
  c_126_resize <= c_125;
  c_126 <= shift_left(c_126_resize, 0);
  -- node of type 'register' in stage 9 with id 127 and associated fundamentals [[547], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_127 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 128 and associated fundamentals [[547], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_128 <= c_127 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 129 and associated fundamentals [[547], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_129 <= c_128 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 130 and associated fundamentals [[547], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_130 <= c_129 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 131 and associated fundamentals [[547], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_131 <= c_130 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 132 and associated fundamentals [[547], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_132 <= c_131 & "";
    end if;
  end process;
  -- node of type 'output' in stage 14 with id 133 and associated fundamentals [[547], [16]]
  c_133_resize <= c_132;
  c_133 <= shift_left(c_133_resize, 0);
  -- node of type 'register' in stage 13 with id 134 and associated fundamentals [[358], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_134 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 135 and associated fundamentals [[358], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_135 <= c_134 & "";
    end if;
  end process;
  -- node of type 'output' in stage 14 with id 136 and associated fundamentals [[358], [113]]
  c_136_resize <= c_135;
  c_136 <= shift_left(c_136_resize, 0);
  -- node of type 'output' in stage 14 with id 137 and associated fundamentals [[717], [232]]
  c_137_resize <= c_80;
  c_137 <= shift_left(c_137_resize, 0);
  -- node of type 'output' in stage 14 with id 138 and associated fundamentals [[124], [319]]
  c_138_resize <= c_92;
  c_138 <= shift_left(c_138_resize, 0);
  -- node of type 'register' in stage 10 with id 139 and associated fundamentals [[127], [302]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_139 <= c_93 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 140 and associated fundamentals [[127], [302]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_140 <= c_139 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 141 and associated fundamentals [[127], [302]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_141 <= c_140 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 142 and associated fundamentals [[127], [302]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_142 <= c_141 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 143 and associated fundamentals [[127], [302]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_143 <= c_142 & "";
    end if;
  end process;
  -- node of type 'output' in stage 14 with id 144 and associated fundamentals [[127], [302]]
  c_144_resize <= c_143;
  c_144 <= shift_left(c_144_resize, 0);
  -- node of type 'register' in stage 13 with id 145 and associated fundamentals [[34], [202]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_145 <= c_100 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 146 and associated fundamentals [[34], [202]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_146 <= c_145 & "";
    end if;
  end process;
  -- node of type 'output' in stage 14 with id 147 and associated fundamentals [[136], [808]]
  c_147_resize <= resize(c_146, 26);
  c_147 <= shift_left(c_147_resize, 2);
end architecture;
