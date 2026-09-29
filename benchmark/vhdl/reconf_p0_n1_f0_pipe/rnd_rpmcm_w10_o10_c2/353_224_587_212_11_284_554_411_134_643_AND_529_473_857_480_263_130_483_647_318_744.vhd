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
    y_4: out std_logic_vector(24 downto 0);
    y_5: out std_logic_vector(24 downto 0);
    y_6: out std_logic_vector(25 downto 0);
    y_7: out std_logic_vector(25 downto 0);
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
  signal c_1: signed(17 downto 0);
  signal c_1_i0_resize: signed(17 downto 0);
  signal c_1_i1_resize: signed(17 downto 0);
  signal c_1_i0_shift: signed(17 downto 0);
  signal c_1_i1_shift: signed(17 downto 0);
  signal c_1_arith: signed(17 downto 0);
  signal c_1_oshift: signed(17 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(24 downto 0);
  signal c_3_1_7_False_resize: signed(24 downto 0);
  signal c_3_1_7_False_shift: signed(24 downto 0);
  signal c_3_2_0_False_resize: signed(24 downto 0);
  signal c_3_2_0_False_shift: signed(24 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(19 downto 0);
  signal c_4_2_4_False_resize: signed(19 downto 0);
  signal c_4_2_4_False_shift: signed(19 downto 0);
  signal c_4_1_0_False_resize: signed(19 downto 0);
  signal c_4_1_0_False_shift: signed(19 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(24 downto 0);
  signal c_5_i0_resize: signed(24 downto 0);
  signal c_5_i1_resize: signed(24 downto 0);
  signal c_5_i0_shift: signed(24 downto 0);
  signal c_5_i1_shift: signed(24 downto 0);
  signal c_5_arith: signed(24 downto 0);
  signal c_5_oshift: signed(24 downto 0);
  signal c_6: signed(16 downto 0);
  signal c_6_0_1_False_resize: signed(16 downto 0);
  signal c_6_0_1_False_shift: signed(16 downto 0);
  signal c_6_0_0_False_resize: signed(16 downto 0);
  signal c_6_0_0_False_shift: signed(16 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(24 downto 0);
  signal c_7_i0_resize: signed(24 downto 0);
  signal c_7_i1_resize: signed(24 downto 0);
  signal c_7_i0_shift: signed(24 downto 0);
  signal c_7_i1_shift: signed(24 downto 0);
  signal c_7_arith: signed(24 downto 0);
  signal c_7_oshift: signed(24 downto 0);
  signal c_8: signed(17 downto 0);
  signal c_8_1_0_False_resize: signed(17 downto 0);
  signal c_8_1_0_False_shift: signed(17 downto 0);
  signal c_8_2_0_False_resize: signed(17 downto 0);
  signal c_8_2_0_False_shift: signed(17 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(15 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_i0_resize: signed(23 downto 0);
  signal c_10_i1_resize: signed(23 downto 0);
  signal c_10_i0_shift: signed(23 downto 0);
  signal c_10_i1_shift: signed(23 downto 0);
  signal c_10_arith: signed(23 downto 0);
  signal c_10_oshift: signed(23 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(15 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_11_2_False_resize: signed(23 downto 0);
  signal c_12_11_2_False_shift: signed(23 downto 0);
  signal c_12_10_0_False_resize: signed(23 downto 0);
  signal c_12_10_0_False_shift: signed(23 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(17 downto 0);
  signal c_14: signed(17 downto 0);
  signal c_15: signed(17 downto 0);
  signal c_16: signed(24 downto 0);
  signal c_16_i0_resize: signed(24 downto 0);
  signal c_16_i1_resize: signed(24 downto 0);
  signal c_16_i0_shift: signed(24 downto 0);
  signal c_16_i1_shift: signed(24 downto 0);
  signal c_16_arith: signed(24 downto 0);
  signal c_16_oshift: signed(24 downto 0);
  signal c_17: signed(21 downto 0);
  signal c_17_0_0_False_resize: signed(21 downto 0);
  signal c_17_0_0_False_shift: signed(21 downto 0);
  signal c_17_0_6_False_resize: signed(21 downto 0);
  signal c_17_0_6_False_shift: signed(21 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(17 downto 0);
  signal c_19: signed(21 downto 0);
  signal c_19_16_0_False_resize: signed(21 downto 0);
  signal c_19_16_0_False_shift: signed(21 downto 0);
  signal c_19_18_4_False_resize: signed(21 downto 0);
  signal c_19_18_4_False_shift: signed(21 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(21 downto 0);
  signal c_21: signed(21 downto 0);
  signal c_22: signed(21 downto 0);
  signal c_23: signed(21 downto 0);
  signal c_24: signed(21 downto 0);
  signal c_25: signed(21 downto 0);
  signal c_25_i0_resize: signed(21 downto 0);
  signal c_25_i1_resize: signed(21 downto 0);
  signal c_25_i0_shift: signed(21 downto 0);
  signal c_25_i1_shift: signed(21 downto 0);
  signal c_25_arith: signed(21 downto 0);
  signal c_25_oshift: signed(21 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(24 downto 0);
  signal c_27: signed(24 downto 0);
  signal c_28: signed(24 downto 0);
  signal c_29: signed(24 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_25_2_False_resize: signed(23 downto 0);
  signal c_30_25_2_False_shift: signed(23 downto 0);
  signal c_30_29_0_False_resize: signed(23 downto 0);
  signal c_30_29_0_False_shift: signed(23 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_36: signed(24 downto 0);
  signal c_36_i0_resize: signed(24 downto 0);
  signal c_36_i1_resize: signed(24 downto 0);
  signal c_36_i0_shift: signed(24 downto 0);
  signal c_36_i1_shift: signed(24 downto 0);
  signal c_36_arith: signed(24 downto 0);
  signal c_36_oshift: signed(24 downto 0);
  signal c_36_sub_sel: std_logic;
  signal c_37: signed(17 downto 0);
  signal c_38: signed(17 downto 0);
  signal c_39: signed(17 downto 0);
  signal c_40: signed(17 downto 0);
  signal c_41: signed(22 downto 0);
  signal c_41_36_0_False_resize: signed(22 downto 0);
  signal c_41_36_0_False_shift: signed(22 downto 0);
  signal c_41_40_0_False_resize: signed(22 downto 0);
  signal c_41_40_0_False_shift: signed(22 downto 0);
  signal c_41_sel: std_logic_vector(0 downto 0);
  signal c_42: signed(24 downto 0);
  signal c_43: signed(24 downto 0);
  signal c_44: signed(24 downto 0);
  signal c_44_25_2_False_resize: signed(24 downto 0);
  signal c_44_25_2_False_shift: signed(24 downto 0);
  signal c_44_43_0_False_resize: signed(24 downto 0);
  signal c_44_43_0_False_shift: signed(24 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(24 downto 0);
  signal c_46: signed(24 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_i0_resize: signed(25 downto 0);
  signal c_47_i1_resize: signed(25 downto 0);
  signal c_47_i0_shift: signed(25 downto 0);
  signal c_47_i1_shift: signed(25 downto 0);
  signal c_47_arith: signed(25 downto 0);
  signal c_47_oshift: signed(25 downto 0);
  signal c_48: signed(21 downto 0);
  signal c_48_38_0_False_resize: signed(21 downto 0);
  signal c_48_38_0_False_shift: signed(21 downto 0);
  signal c_48_25_0_False_resize: signed(21 downto 0);
  signal c_48_25_0_False_shift: signed(21 downto 0);
  signal c_48_sel: std_logic_vector(0 downto 0);
  signal c_49: signed(24 downto 0);
  signal c_50: signed(24 downto 0);
  signal c_51: signed(24 downto 0);
  signal c_52: signed(24 downto 0);
  signal c_53: signed(24 downto 0);
  signal c_54: signed(24 downto 0);
  signal c_55: signed(24 downto 0);
  signal c_55_i0_resize: signed(24 downto 0);
  signal c_55_i1_resize: signed(24 downto 0);
  signal c_55_i0_shift: signed(24 downto 0);
  signal c_55_i1_shift: signed(24 downto 0);
  signal c_55_arith: signed(24 downto 0);
  signal c_55_oshift: signed(24 downto 0);
  signal c_55_sub_sel: std_logic;
  signal c_56: signed(23 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_57_55_0_False_resize: signed(25 downto 0);
  signal c_57_55_0_False_shift: signed(25 downto 0);
  signal c_57_56_2_False_resize: signed(25 downto 0);
  signal c_57_56_2_False_shift: signed(25 downto 0);
  signal c_57_sel: std_logic_vector(0 downto 0);
  signal c_58: signed(23 downto 0);
  signal c_58_25_0_False_resize: signed(23 downto 0);
  signal c_58_25_0_False_shift: signed(23 downto 0);
  signal c_58_34_0_False_resize: signed(23 downto 0);
  signal c_58_34_0_False_shift: signed(23 downto 0);
  signal c_58_sel: std_logic_vector(0 downto 0);
  signal c_59: signed(23 downto 0);
  signal c_60: signed(23 downto 0);
  signal c_61: signed(24 downto 0);
  signal c_61_i0_resize: signed(24 downto 0);
  signal c_61_i1_resize: signed(24 downto 0);
  signal c_61_i0_shift: signed(24 downto 0);
  signal c_61_i1_shift: signed(24 downto 0);
  signal c_61_arith: signed(24 downto 0);
  signal c_61_oshift: signed(24 downto 0);
  signal c_62: signed(20 downto 0);
  signal c_62_16_0_False_resize: signed(20 downto 0);
  signal c_62_16_0_False_shift: signed(20 downto 0);
  signal c_62_18_3_False_resize: signed(20 downto 0);
  signal c_62_18_3_False_shift: signed(20 downto 0);
  signal c_62_sel: std_logic_vector(0 downto 0);
  signal c_63: signed(20 downto 0);
  signal c_64: signed(20 downto 0);
  signal c_65: signed(20 downto 0);
  signal c_66: signed(20 downto 0);
  signal c_67: signed(20 downto 0);
  signal c_68: signed(25 downto 0);
  signal c_68_i0_resize: signed(25 downto 0);
  signal c_68_i1_resize: signed(25 downto 0);
  signal c_68_i0_shift: signed(25 downto 0);
  signal c_68_i1_shift: signed(25 downto 0);
  signal c_68_arith: signed(25 downto 0);
  signal c_68_oshift: signed(25 downto 0);
  signal c_68_sub_sel: std_logic;
  signal c_69: signed(24 downto 0);
  signal c_70: signed(24 downto 0);
  signal c_71: signed(24 downto 0);
  signal c_72: signed(24 downto 0);
  signal c_73: signed(25 downto 0);
  signal c_73_72_0_False_resize: signed(25 downto 0);
  signal c_73_72_0_False_shift: signed(25 downto 0);
  signal c_73_47_1_False_resize: signed(25 downto 0);
  signal c_73_47_1_False_shift: signed(25 downto 0);
  signal c_73_sel: std_logic_vector(0 downto 0);
  signal c_74: signed(24 downto 0);
  signal c_74_14_7_False_resize: signed(24 downto 0);
  signal c_74_14_7_False_shift: signed(24 downto 0);
  signal c_74_5_0_False_resize: signed(24 downto 0);
  signal c_74_5_0_False_shift: signed(24 downto 0);
  signal c_74_sel: std_logic_vector(0 downto 0);
  signal c_75: signed(24 downto 0);
  signal c_76: signed(24 downto 0);
  signal c_77: signed(24 downto 0);
  signal c_78: signed(24 downto 0);
  signal c_79: signed(24 downto 0);
  signal c_80: signed(24 downto 0);
  signal c_81: signed(24 downto 0);
  signal c_82: signed(24 downto 0);
  signal c_83: signed(25 downto 0);
  signal c_83_i0_resize: signed(25 downto 0);
  signal c_83_i1_resize: signed(25 downto 0);
  signal c_83_i0_shift: signed(25 downto 0);
  signal c_83_i1_shift: signed(25 downto 0);
  signal c_83_arith: signed(25 downto 0);
  signal c_83_oshift: signed(25 downto 0);
  signal c_84: signed(24 downto 0);
  signal c_85: signed(24 downto 0);
  signal c_86: signed(24 downto 0);
  signal c_87: signed(24 downto 0);
  signal c_87_61_0_False_resize: signed(24 downto 0);
  signal c_87_61_0_False_shift: signed(24 downto 0);
  signal c_87_86_0_False_resize: signed(24 downto 0);
  signal c_87_86_0_False_shift: signed(24 downto 0);
  signal c_87_sel: std_logic_vector(0 downto 0);
  signal c_88: signed(24 downto 0);
  signal c_88_53_0_False_resize: signed(24 downto 0);
  signal c_88_53_0_False_shift: signed(24 downto 0);
  signal c_88_25_2_False_resize: signed(24 downto 0);
  signal c_88_25_2_False_shift: signed(24 downto 0);
  signal c_88_sel: std_logic_vector(0 downto 0);
  signal c_89: signed(24 downto 0);
  signal c_89_36_2_False_resize: signed(24 downto 0);
  signal c_89_36_2_False_shift: signed(24 downto 0);
  signal c_89_56_0_False_resize: signed(24 downto 0);
  signal c_89_56_0_False_shift: signed(24 downto 0);
  signal c_89_sel: std_logic_vector(0 downto 0);
  signal c_90: signed(25 downto 0);
  signal c_90_55_1_False_resize: signed(25 downto 0);
  signal c_90_55_1_False_shift: signed(25 downto 0);
  signal c_90_55_0_False_resize: signed(25 downto 0);
  signal c_90_55_0_False_shift: signed(25 downto 0);
  signal c_90_sel: std_logic_vector(0 downto 0);
  signal c_91: signed(24 downto 0);
  signal c_92: signed(24 downto 0);
  signal c_93: signed(25 downto 0);
  signal c_93_83_0_False_resize: signed(25 downto 0);
  signal c_93_83_0_False_shift: signed(25 downto 0);
  signal c_93_92_0_False_resize: signed(25 downto 0);
  signal c_93_92_0_False_shift: signed(25 downto 0);
  signal c_93_sel: std_logic_vector(0 downto 0);
  signal c_94: signed(24 downto 0);
  signal c_94_36_0_False_resize: signed(24 downto 0);
  signal c_94_36_0_False_shift: signed(24 downto 0);
  signal c_94_56_0_False_resize: signed(24 downto 0);
  signal c_94_56_0_False_shift: signed(24 downto 0);
  signal c_94_sel: std_logic_vector(0 downto 0);
  signal c_95: signed(24 downto 0);
  signal c_96: signed(24 downto 0);
  signal c_97: signed(24 downto 0);
  signal c_98: signed(24 downto 0);
  signal c_99: signed(24 downto 0);
  signal c_100: signed(24 downto 0);
  signal c_101: signed(25 downto 0);
  signal c_101_83_0_False_resize: signed(25 downto 0);
  signal c_101_83_0_False_shift: signed(25 downto 0);
  signal c_101_100_1_False_resize: signed(25 downto 0);
  signal c_101_100_1_False_shift: signed(25 downto 0);
  signal c_101_sel: std_logic_vector(0 downto 0);
  signal c_102: signed(25 downto 0);
  signal c_103: signed(25 downto 0);
  signal c_104: signed(25 downto 0);
  signal c_105: signed(25 downto 0);
  signal c_105_resize: signed(25 downto 0);
  signal c_106: signed(24 downto 0);
  signal c_107: signed(24 downto 0);
  signal c_108: signed(24 downto 0);
  signal c_108_resize: signed(24 downto 0);
  signal c_109: signed(25 downto 0);
  signal c_110: signed(25 downto 0);
  signal c_111: signed(25 downto 0);
  signal c_111_resize: signed(25 downto 0);
  signal c_112: signed(24 downto 0);
  signal c_113: signed(24 downto 0);
  signal c_114: signed(24 downto 0);
  signal c_115: signed(24 downto 0);
  signal c_116: signed(24 downto 0);
  signal c_117: signed(24 downto 0);
  signal c_118: signed(24 downto 0);
  signal c_118_resize: signed(24 downto 0);
  signal c_119: signed(24 downto 0);
  signal c_120: signed(24 downto 0);
  signal c_121: signed(24 downto 0);
  signal c_122: signed(24 downto 0);
  signal c_122_resize: signed(24 downto 0);
  signal c_123: signed(24 downto 0);
  signal c_124: signed(24 downto 0);
  signal c_125: signed(24 downto 0);
  signal c_126: signed(24 downto 0);
  signal c_127: signed(24 downto 0);
  signal c_127_resize: signed(24 downto 0);
  signal c_128: signed(25 downto 0);
  signal c_129: signed(25 downto 0);
  signal c_130: signed(25 downto 0);
  signal c_131: signed(25 downto 0);
  signal c_132: signed(25 downto 0);
  signal c_132_resize: signed(25 downto 0);
  signal c_133: signed(25 downto 0);
  signal c_133_resize: signed(25 downto 0);
  signal c_134: signed(24 downto 0);
  signal c_135: signed(24 downto 0);
  signal c_136: signed(24 downto 0);
  signal c_137: signed(24 downto 0);
  signal c_138: signed(24 downto 0);
  signal c_138_resize: signed(24 downto 0);
  signal c_139: signed(25 downto 0);
  signal c_139_resize: signed(25 downto 0);
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
  -- output node 1 with id 108
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_108);
    end if;
  end process;
  -- output node 2 with id 111
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_111);
    end if;
  end process;
  -- output node 3 with id 118
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_118);
    end if;
  end process;
  -- output node 4 with id 122
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_122);
    end if;
  end process;
  -- output node 5 with id 127
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_127);
    end if;
  end process;
  -- output node 6 with id 132
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_132);
    end if;
  end process;
  -- output node 7 with id 133
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_133);
    end if;
  end process;
  -- output node 8 with id 138
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_138);
    end if;
  end process;
  -- output node 9 with id 139
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_139);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 1 and associated fundamentals [[-3], [-3]]
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 18,
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(17 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[1], [-384]]
  c_3_1_7_False_resize <= resize(c_1, 25);
  c_3_1_7_False_shift <= shift_left(c_3_1_7_False_resize, 7);
  c_3_2_0_False_resize <= resize(c_2, 25);
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  with config_select_2 select c_3_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_1_7_False_shift;
        when others => c_3 <= c_3_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[16], [-3]]
  c_4_2_4_False_resize <= resize(c_2, 20);
  c_4_2_4_False_shift <= shift_left(c_4_2_4_False_resize, 4);
  c_4_1_0_False_resize <= resize(c_1, 20);
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  with config_select_2 select c_4_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_2_4_False_shift;
        when others => c_4 <= c_4_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 5 and associated fundamentals [[-63], [-372]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 20,
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
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 6 and associated fundamentals [[1], [2]]
  c_6_0_1_False_resize <= resize(c_0, 17);
  c_6_0_1_False_shift <= shift_left(c_6_0_1_False_resize, 1);
  c_6_0_0_False_resize <= resize(c_0, 17);
  c_6_0_0_False_shift <= shift_left(c_6_0_0_False_resize, 0);
  with config_select_1 select c_6_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_0_1_False_shift;
        when others => c_6 <= c_6_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 7 and associated fundamentals [[224], [480]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 16,
      w_o => 25,
      s_x_i => 8,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_6,
      y_i => c_2,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 8 and associated fundamentals [[-3], [1]]
  c_8_1_0_False_resize <= c_1;
  c_8_1_0_False_shift <= shift_left(c_8_1_0_False_resize, 0);
  c_8_2_0_False_resize <= resize(c_2, 18);
  c_8_2_0_False_shift <= shift_left(c_8_2_0_False_resize, 0);
  with config_select_2 select c_8_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_1_0_False_shift;
        when others => c_8 <= c_8_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 9 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_2 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 10 and associated fundamentals [[134], [130]]
  with config_select_3 select c_10_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 18,
      w_o => 24,
      s_x_i => 7,
      s_y_i => 1,
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
      y_i => c_8,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_9 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 12 and associated fundamentals [[4], [130]]
  c_12_11_2_False_resize <= resize(c_11, 24);
  c_12_11_2_False_shift <= shift_left(c_12_11_2_False_resize, 2);
  c_12_10_0_False_resize <= c_10;
  c_12_10_0_False_shift <= shift_left(c_12_10_0_False_resize, 0);
  with config_select_4 select c_12_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_11_2_False_shift;
        when others => c_12 <= c_12_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 13 and associated fundamentals [[-3], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 14 and associated fundamentals [[-3], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[-3], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 5 with id 16 and associated fundamentals [[11], [263]]
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 18,
      w_o => 25,
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
      x_i => c_12,
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 17 and associated fundamentals [[64], [1]]
  c_17_0_0_False_resize <= resize(c_0, 22);
  c_17_0_0_False_shift <= shift_left(c_17_0_0_False_resize, 0);
  c_17_0_6_False_resize <= resize(c_0, 22);
  c_17_0_6_False_shift <= shift_left(c_17_0_6_False_resize, 6);
  with config_select_1 select c_17_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_0_0_False_shift;
        when others => c_17 <= c_17_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[-3], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_15 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 19 and associated fundamentals [[11], [-48]]
  c_19_16_0_False_resize <= c_16(21 downto 0);
  c_19_16_0_False_shift <= shift_left(c_19_16_0_False_resize, 0);
  c_19_18_4_False_resize <= resize(c_18, 22);
  c_19_18_4_False_shift <= shift_left(c_19_18_4_False_resize, 4);
  with config_select_6 select c_19_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_16_0_False_shift;
        when others => c_19 <= c_19_18_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 20 and associated fundamentals [[64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 21 and associated fundamentals [[64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 22 and associated fundamentals [[64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 24 and associated fundamentals [[64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 25 and associated fundamentals [[53], [-47]]
  with config_select_7 select c_25_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_25_sub_sel,
      x_i => c_24,
      y_i => c_19,
      z_o => c_25_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 26 and associated fundamentals [[-63], [-372]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 27 and associated fundamentals [[-63], [-372]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 28 and associated fundamentals [[-63], [-372]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 29 and associated fundamentals [[-63], [-372]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 30 and associated fundamentals [[-63], [-188]]
  c_30_25_2_False_resize <= resize(c_25, 24);
  c_30_25_2_False_shift <= shift_left(c_30_25_2_False_resize, 2);
  c_30_29_0_False_resize <= c_29(23 downto 0);
  c_30_29_0_False_shift <= shift_left(c_30_29_0_False_resize, 0);
  with config_select_8 select c_30_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "0" => c_30 <= c_30_25_2_False_shift;
        when others => c_30 <= c_30_29_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 31 and associated fundamentals [[134], [130]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 32 and associated fundamentals [[134], [130]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 33 and associated fundamentals [[134], [130]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 34 and associated fundamentals [[134], [130]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 35 and associated fundamentals [[134], [130]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 36 and associated fundamentals [[71], [318]]
  with config_select_9 select c_36_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_36: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
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
      sub_i => c_36_sub_sel,
      x_i => c_35,
      y_i => c_30,
      z_o => c_36_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_36_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 37 and associated fundamentals [[-3], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 38 and associated fundamentals [[-3], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 39 and associated fundamentals [[-3], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 40 and associated fundamentals [[-3], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 41 and associated fundamentals [[71], [-3]]
  c_41_36_0_False_resize <= c_36(22 downto 0);
  c_41_36_0_False_shift <= shift_left(c_41_36_0_False_resize, 0);
  c_41_40_0_False_resize <= resize(c_40, 23);
  c_41_40_0_False_shift <= shift_left(c_41_40_0_False_resize, 0);
  with config_select_10 select c_41_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "0" => c_41 <= c_41_36_0_False_shift;
        when others => c_41 <= c_41_40_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 42 and associated fundamentals [[11], [263]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 43 and associated fundamentals [[11], [263]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 44 and associated fundamentals [[212], [263]]
  c_44_25_2_False_resize <= resize(c_25, 25);
  c_44_25_2_False_shift <= shift_left(c_44_25_2_False_resize, 2);
  c_44_43_0_False_resize <= c_43;
  c_44_43_0_False_shift <= shift_left(c_44_43_0_False_resize, 0);
  with config_select_8 select c_44_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "0" => c_44 <= c_44_25_2_False_shift;
        when others => c_44 <= c_44_43_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 45 and associated fundamentals [[212], [263]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 46 and associated fundamentals [[212], [263]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 11 with id 47 and associated fundamentals [[-353], [-529]]
  inst_adder_node_47: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      x_i => c_41,
      y_i => c_46,
      z_o => c_47_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_47_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 48 and associated fundamentals [[53], [-3]]
  c_48_38_0_False_resize <= resize(c_38, 22);
  c_48_38_0_False_shift <= shift_left(c_48_38_0_False_resize, 0);
  c_48_25_0_False_resize <= c_25;
  c_48_25_0_False_shift <= shift_left(c_48_25_0_False_resize, 0);
  with config_select_8 select c_48_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "0" => c_48 <= c_48_38_0_False_shift;
        when others => c_48 <= c_48_25_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 49 and associated fundamentals [[224], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 50 and associated fundamentals [[224], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 51 and associated fundamentals [[224], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 52 and associated fundamentals [[224], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 53 and associated fundamentals [[224], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 54 and associated fundamentals [[224], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 55 and associated fundamentals [[277], [483]]
  with config_select_9 select c_55_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_55: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 22,
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
      sub_i => c_55_sub_sel,
      x_i => c_54,
      y_i => c_48,
      z_o => c_55_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_55_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 56 and associated fundamentals [[134], [130]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_35 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 57 and associated fundamentals [[277], [520]]
  c_57_55_0_False_resize <= resize(c_55, 26);
  c_57_55_0_False_shift <= shift_left(c_57_55_0_False_resize, 0);
  c_57_56_2_False_resize <= resize(c_56, 26);
  c_57_56_2_False_shift <= shift_left(c_57_56_2_False_resize, 2);
  with config_select_10 select c_57_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_57_sel is
        when "0" => c_57 <= c_57_55_0_False_shift;
        when others => c_57 <= c_57_56_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 58 and associated fundamentals [[134], [-47]]
  c_58_25_0_False_resize <= resize(c_25, 24);
  c_58_25_0_False_shift <= shift_left(c_58_25_0_False_resize, 0);
  c_58_34_0_False_resize <= c_34;
  c_58_34_0_False_shift <= shift_left(c_58_34_0_False_resize, 0);
  with config_select_8 select c_58_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_58_sel is
        when "0" => c_58 <= c_58_25_0_False_shift;
        when others => c_58 <= c_58_34_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 59 and associated fundamentals [[134], [-47]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 60 and associated fundamentals [[134], [-47]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'add' in stage 11 with id 61 and associated fundamentals [[411], [473]]
  inst_adder_node_61: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
      w_o => 25,
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
      x_i => c_57,
      y_i => c_60,
      z_o => c_61_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_61_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 62 and associated fundamentals [[11], [-24]]
  c_62_16_0_False_resize <= c_16(20 downto 0);
  c_62_16_0_False_shift <= shift_left(c_62_16_0_False_resize, 0);
  c_62_18_3_False_resize <= resize(c_18, 21);
  c_62_18_3_False_shift <= shift_left(c_62_18_3_False_resize, 3);
  with config_select_6 select c_62_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_62_sel is
        when "0" => c_62 <= c_62_16_0_False_shift;
        when others => c_62 <= c_62_18_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 63 and associated fundamentals [[11], [-24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 64 and associated fundamentals [[11], [-24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 65 and associated fundamentals [[11], [-24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 66 and associated fundamentals [[11], [-24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 67 and associated fundamentals [[11], [-24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 68 and associated fundamentals [[587], [857]]
  with config_select_12 select c_68_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_68: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 21,
      w_o => 26,
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
      sub_i => c_68_sub_sel,
      x_i => c_61,
      y_i => c_67,
      z_o => c_68_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_68_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 69 and associated fundamentals [[11], [263]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 70 and associated fundamentals [[11], [263]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 71 and associated fundamentals [[11], [263]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 72 and associated fundamentals [[11], [263]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 73 and associated fundamentals [[-706], [263]]
  c_73_72_0_False_resize <= resize(c_72, 26);
  c_73_72_0_False_shift <= shift_left(c_73_72_0_False_resize, 0);
  c_73_47_1_False_resize <= c_47;
  c_73_47_1_False_shift <= shift_left(c_73_47_1_False_resize, 1);
  with config_select_12 select c_73_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_73_sel is
        when "0" => c_73 <= c_73_72_0_False_shift;
        when others => c_73 <= c_73_47_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 74 and associated fundamentals [[-63], [-384]]
  c_74_14_7_False_resize <= resize(c_14, 25);
  c_74_14_7_False_shift <= shift_left(c_74_14_7_False_resize, 7);
  c_74_5_0_False_resize <= c_5;
  c_74_5_0_False_shift <= shift_left(c_74_5_0_False_resize, 0);
  with config_select_4 select c_74_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_74_sel is
        when "0" => c_74 <= c_74_14_7_False_shift;
        when others => c_74 <= c_74_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 75 and associated fundamentals [[-63], [-384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 76 and associated fundamentals [[-63], [-384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 77 and associated fundamentals [[-63], [-384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 78 and associated fundamentals [[-63], [-384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 79 and associated fundamentals [[-63], [-384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 80 and associated fundamentals [[-63], [-384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 81 and associated fundamentals [[-63], [-384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_80 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 82 and associated fundamentals [[-63], [-384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_81 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 13 with id 83 and associated fundamentals [[-643], [647]]
  inst_adder_node_83: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
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
      x_i => c_73,
      y_i => c_82,
      z_o => c_83_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_83_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 84 and associated fundamentals [[224], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 85 and associated fundamentals [[224], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_84 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 86 and associated fundamentals [[224], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_85 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 87 and associated fundamentals [[224], [473]]
  c_87_61_0_False_resize <= c_61;
  c_87_61_0_False_shift <= shift_left(c_87_61_0_False_resize, 0);
  c_87_86_0_False_resize <= c_86;
  c_87_86_0_False_shift <= shift_left(c_87_86_0_False_resize, 0);
  with config_select_12 select c_87_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_87_sel is
        when "0" => c_87 <= c_87_61_0_False_shift;
        when others => c_87 <= c_87_86_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 88 and associated fundamentals [[212], [480]]
  c_88_53_0_False_resize <= c_53;
  c_88_53_0_False_shift <= shift_left(c_88_53_0_False_resize, 0);
  c_88_25_2_False_resize <= resize(c_25, 25);
  c_88_25_2_False_shift <= shift_left(c_88_25_2_False_resize, 2);
  with config_select_8 select c_88_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_88_sel is
        when "0" => c_88 <= c_88_53_0_False_shift;
        when others => c_88 <= c_88_25_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 89 and associated fundamentals [[284], [130]]
  c_89_36_2_False_resize <= c_36;
  c_89_36_2_False_shift <= shift_left(c_89_36_2_False_resize, 2);
  c_89_56_0_False_resize <= resize(c_56, 25);
  c_89_56_0_False_shift <= shift_left(c_89_56_0_False_resize, 0);
  with config_select_10 select c_89_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_89_sel is
        when "0" => c_89 <= c_89_36_2_False_shift;
        when others => c_89 <= c_89_56_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 90 and associated fundamentals [[554], [483]]
  c_90_55_1_False_resize <= resize(c_55, 26);
  c_90_55_1_False_shift <= shift_left(c_90_55_1_False_resize, 1);
  c_90_55_0_False_resize <= resize(c_55, 26);
  c_90_55_0_False_shift <= shift_left(c_90_55_0_False_resize, 0);
  with config_select_10 select c_90_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_90_sel is
        when "0" => c_90 <= c_90_55_1_False_shift;
        when others => c_90 <= c_90_55_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 91 and associated fundamentals [[411], [473]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 92 and associated fundamentals [[411], [473]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 14 with id 93 and associated fundamentals [[411], [647]]
  c_93_83_0_False_resize <= c_83;
  c_93_83_0_False_shift <= shift_left(c_93_83_0_False_resize, 0);
  c_93_92_0_False_resize <= resize(c_92, 26);
  c_93_92_0_False_shift <= shift_left(c_93_92_0_False_resize, 0);
  with config_select_14 select c_93_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_93_sel is
        when "0" => c_93 <= c_93_83_0_False_shift;
        when others => c_93 <= c_93_92_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 94 and associated fundamentals [[134], [318]]
  c_94_36_0_False_resize <= c_36;
  c_94_36_0_False_shift <= shift_left(c_94_36_0_False_resize, 0);
  c_94_56_0_False_resize <= resize(c_56, 25);
  c_94_56_0_False_shift <= shift_left(c_94_56_0_False_resize, 0);
  with config_select_10 select c_94_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_94_sel is
        when "0" => c_94 <= c_94_36_0_False_shift;
        when others => c_94 <= c_94_56_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 95 and associated fundamentals [[-63], [-372]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 96 and associated fundamentals [[-63], [-372]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_95 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 97 and associated fundamentals [[-63], [-372]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_96 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 98 and associated fundamentals [[-63], [-372]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_97 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 99 and associated fundamentals [[-63], [-372]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_98 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 100 and associated fundamentals [[-63], [-372]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_99 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 14 with id 101 and associated fundamentals [[-643], [-744]]
  c_101_83_0_False_resize <= c_83;
  c_101_83_0_False_shift <= shift_left(c_101_83_0_False_resize, 0);
  c_101_100_1_False_resize <= resize(c_100, 26);
  c_101_100_1_False_shift <= shift_left(c_101_100_1_False_resize, 1);
  with config_select_14 select c_101_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_101_sel is
        when "0" => c_101 <= c_101_83_0_False_shift;
        when others => c_101 <= c_101_100_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 102 and associated fundamentals [[-353], [-529]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 103 and associated fundamentals [[-353], [-529]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_102 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 104 and associated fundamentals [[-353], [-529]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_103 & "";
    end if;
  end process;
  -- node of type 'output' in stage 14 with id 105 and associated fundamentals [[353], [529]]
  c_105_resize <= c_104;
  c_105 <= -shift_left(c_105_resize, 0);
  -- node of type 'register' in stage 13 with id 106 and associated fundamentals [[224], [473]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_87 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 107 and associated fundamentals [[224], [473]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_106 & "";
    end if;
  end process;
  -- node of type 'output' in stage 14 with id 108 and associated fundamentals [[224], [473]]
  c_108_resize <= c_107;
  c_108 <= shift_left(c_108_resize, 0);
  -- node of type 'register' in stage 13 with id 109 and associated fundamentals [[587], [857]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_109 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 110 and associated fundamentals [[587], [857]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_110 <= c_109 & "";
    end if;
  end process;
  -- node of type 'output' in stage 14 with id 111 and associated fundamentals [[587], [857]]
  c_111_resize <= c_110;
  c_111 <= shift_left(c_111_resize, 0);
  -- node of type 'register' in stage 9 with id 112 and associated fundamentals [[212], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_88 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 113 and associated fundamentals [[212], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_112 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 114 and associated fundamentals [[212], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_113 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 115 and associated fundamentals [[212], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_114 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 116 and associated fundamentals [[212], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_116 <= c_115 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 117 and associated fundamentals [[212], [480]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_117 <= c_116 & "";
    end if;
  end process;
  -- node of type 'output' in stage 14 with id 118 and associated fundamentals [[212], [480]]
  c_118_resize <= c_117;
  c_118 <= shift_left(c_118_resize, 0);
  -- node of type 'register' in stage 12 with id 119 and associated fundamentals [[11], [263]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_119 <= c_72 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 120 and associated fundamentals [[11], [263]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_120 <= c_119 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 121 and associated fundamentals [[11], [263]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_121 <= c_120 & "";
    end if;
  end process;
  -- node of type 'output' in stage 14 with id 122 and associated fundamentals [[11], [263]]
  c_122_resize <= c_121;
  c_122 <= shift_left(c_122_resize, 0);
  -- node of type 'register' in stage 11 with id 123 and associated fundamentals [[284], [130]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_123 <= c_89 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 124 and associated fundamentals [[284], [130]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_124 <= c_123 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 125 and associated fundamentals [[284], [130]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_125 <= c_124 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 126 and associated fundamentals [[284], [130]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_126 <= c_125 & "";
    end if;
  end process;
  -- node of type 'output' in stage 14 with id 127 and associated fundamentals [[284], [130]]
  c_127_resize <= c_126;
  c_127 <= shift_left(c_127_resize, 0);
  -- node of type 'register' in stage 11 with id 128 and associated fundamentals [[554], [483]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_128 <= c_90 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 129 and associated fundamentals [[554], [483]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_129 <= c_128 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 130 and associated fundamentals [[554], [483]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_130 <= c_129 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 131 and associated fundamentals [[554], [483]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_131 <= c_130 & "";
    end if;
  end process;
  -- node of type 'output' in stage 14 with id 132 and associated fundamentals [[554], [483]]
  c_132_resize <= c_131;
  c_132 <= shift_left(c_132_resize, 0);
  -- node of type 'output' in stage 14 with id 133 and associated fundamentals [[411], [647]]
  c_133_resize <= c_93;
  c_133 <= shift_left(c_133_resize, 0);
  -- node of type 'register' in stage 11 with id 134 and associated fundamentals [[134], [318]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_134 <= c_94 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 135 and associated fundamentals [[134], [318]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_135 <= c_134 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 136 and associated fundamentals [[134], [318]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_136 <= c_135 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 137 and associated fundamentals [[134], [318]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_137 <= c_136 & "";
    end if;
  end process;
  -- node of type 'output' in stage 14 with id 138 and associated fundamentals [[134], [318]]
  c_138_resize <= c_137;
  c_138 <= shift_left(c_138_resize, 0);
  -- node of type 'output' in stage 14 with id 139 and associated fundamentals [[643], [744]]
  c_139_resize <= c_101;
  c_139 <= -shift_left(c_139_resize, 0);
end architecture;
