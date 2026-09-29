library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(22 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(23 downto 0);
    y_5: out std_logic_vector(23 downto 0);
    y_6: out std_logic_vector(23 downto 0);
    y_7: out std_logic_vector(23 downto 0);
    y_8: out std_logic_vector(22 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_0_0_False_resize: signed(19 downto 0);
  signal c_1_0_0_False_shift: signed(19 downto 0);
  signal c_1_0_4_False_resize: signed(19 downto 0);
  signal c_1_0_4_False_shift: signed(19 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(19 downto 0);
  signal c_3_i1_resize: signed(19 downto 0);
  signal c_3_i0_shift: signed(19 downto 0);
  signal c_3_i1_shift: signed(19 downto 0);
  signal c_3_arith: signed(19 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_5: signed(20 downto 0);
  signal c_5_4_0_False_resize: signed(20 downto 0);
  signal c_5_4_0_False_shift: signed(20 downto 0);
  signal c_5_3_2_False_resize: signed(20 downto 0);
  signal c_5_3_2_False_shift: signed(20 downto 0);
  signal c_5_3_0_False_resize: signed(20 downto 0);
  signal c_5_3_0_False_shift: signed(20 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_7: signed(20 downto 0);
  signal c_7_i0_resize: signed(20 downto 0);
  signal c_7_i1_resize: signed(20 downto 0);
  signal c_7_i0_shift: signed(20 downto 0);
  signal c_7_i1_shift: signed(20 downto 0);
  signal c_7_arith: signed(20 downto 0);
  signal c_7_oshift: signed(20 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(15 downto 0);
  signal c_9: signed(19 downto 0);
  signal c_10: signed(19 downto 0);
  signal c_11: signed(21 downto 0);
  signal c_11_7_1_False_resize: signed(21 downto 0);
  signal c_11_7_1_False_shift: signed(21 downto 0);
  signal c_11_8_0_False_resize: signed(21 downto 0);
  signal c_11_8_0_False_shift: signed(21 downto 0);
  signal c_11_10_2_False_resize: signed(21 downto 0);
  signal c_11_10_2_False_shift: signed(21 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(21 downto 0);
  signal c_12_7_1_False_resize: signed(21 downto 0);
  signal c_12_7_1_False_shift: signed(21 downto 0);
  signal c_12_8_0_False_resize: signed(21 downto 0);
  signal c_12_8_0_False_shift: signed(21 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(22 downto 0);
  signal c_13_i0_resize: signed(22 downto 0);
  signal c_13_i1_resize: signed(22 downto 0);
  signal c_13_i0_shift: signed(22 downto 0);
  signal c_13_i1_shift: signed(22 downto 0);
  signal c_13_arith: signed(22 downto 0);
  signal c_13_oshift: signed(22 downto 0);
  signal c_14: signed(19 downto 0);
  signal c_15: signed(19 downto 0);
  signal c_16: signed(22 downto 0);
  signal c_16_13_0_False_resize: signed(22 downto 0);
  signal c_16_13_0_False_shift: signed(22 downto 0);
  signal c_16_15_4_False_resize: signed(22 downto 0);
  signal c_16_15_4_False_shift: signed(22 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(19 downto 0);
  signal c_17_7_1_False_resize: signed(19 downto 0);
  signal c_17_7_1_False_shift: signed(19 downto 0);
  signal c_17_10_0_False_resize: signed(19 downto 0);
  signal c_17_10_0_False_shift: signed(19 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(19 downto 0);
  signal c_19: signed(19 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_20_i0_resize: signed(22 downto 0);
  signal c_20_i1_resize: signed(22 downto 0);
  signal c_20_i0_shift: signed(22 downto 0);
  signal c_20_i1_shift: signed(22 downto 0);
  signal c_20_arith: signed(22 downto 0);
  signal c_20_oshift: signed(22 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(20 downto 0);
  signal c_22: signed(20 downto 0);
  signal c_23: signed(21 downto 0);
  signal c_23_22_1_False_resize: signed(21 downto 0);
  signal c_23_22_1_False_shift: signed(21 downto 0);
  signal c_23_13_0_False_resize: signed(21 downto 0);
  signal c_23_13_0_False_shift: signed(21 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(19 downto 0);
  signal c_25: signed(21 downto 0);
  signal c_25_i0_resize: signed(21 downto 0);
  signal c_25_i1_resize: signed(21 downto 0);
  signal c_25_i0_shift: signed(21 downto 0);
  signal c_25_i1_shift: signed(21 downto 0);
  signal c_25_arith: signed(21 downto 0);
  signal c_25_oshift: signed(21 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(21 downto 0);
  signal c_26_15_1_False_resize: signed(21 downto 0);
  signal c_26_15_1_False_shift: signed(21 downto 0);
  signal c_26_13_0_False_resize: signed(21 downto 0);
  signal c_26_13_0_False_shift: signed(21 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(15 downto 0);
  signal c_28: signed(15 downto 0);
  signal c_29: signed(15 downto 0);
  signal c_30: signed(15 downto 0);
  signal c_31: signed(22 downto 0);
  signal c_31_20_0_False_resize: signed(22 downto 0);
  signal c_31_20_0_False_shift: signed(22 downto 0);
  signal c_31_30_0_False_resize: signed(22 downto 0);
  signal c_31_30_0_False_shift: signed(22 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(21 downto 0);
  signal c_33: signed(21 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_i0_resize: signed(23 downto 0);
  signal c_34_i1_resize: signed(23 downto 0);
  signal c_34_i0_shift: signed(23 downto 0);
  signal c_34_i1_shift: signed(23 downto 0);
  signal c_34_arith: signed(23 downto 0);
  signal c_34_oshift: signed(23 downto 0);
  signal c_34_sub_sel: std_logic;
  signal c_35: signed(20 downto 0);
  signal c_36: signed(20 downto 0);
  signal c_37: signed(22 downto 0);
  signal c_37_36_3_False_resize: signed(22 downto 0);
  signal c_37_36_3_False_shift: signed(22 downto 0);
  signal c_37_20_0_False_resize: signed(22 downto 0);
  signal c_37_20_0_False_shift: signed(22 downto 0);
  signal c_37_25_1_False_resize: signed(22 downto 0);
  signal c_37_25_1_False_shift: signed(22 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(19 downto 0);
  signal c_38_7_0_False_resize: signed(19 downto 0);
  signal c_38_7_0_False_shift: signed(19 downto 0);
  signal c_38_10_1_False_resize: signed(19 downto 0);
  signal c_38_10_1_False_shift: signed(19 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(19 downto 0);
  signal c_40: signed(19 downto 0);
  signal c_41: signed(19 downto 0);
  signal c_42: signed(19 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_i0_resize: signed(23 downto 0);
  signal c_43_i1_resize: signed(23 downto 0);
  signal c_43_i0_shift: signed(23 downto 0);
  signal c_43_i1_shift: signed(23 downto 0);
  signal c_43_arith: signed(23 downto 0);
  signal c_43_oshift: signed(23 downto 0);
  signal c_43_sub_sel: std_logic;
  signal c_44: signed(23 downto 0);
  signal c_44_36_3_False_resize: signed(23 downto 0);
  signal c_44_36_3_False_shift: signed(23 downto 0);
  signal c_44_20_0_False_resize: signed(23 downto 0);
  signal c_44_20_0_False_shift: signed(23 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(19 downto 0);
  signal c_45_4_2_False_resize: signed(19 downto 0);
  signal c_45_4_2_False_shift: signed(19 downto 0);
  signal c_45_3_0_False_resize: signed(19 downto 0);
  signal c_45_3_0_False_shift: signed(19 downto 0);
  signal c_45_sel: std_logic_vector(0 downto 0);
  signal c_46: signed(19 downto 0);
  signal c_47: signed(19 downto 0);
  signal c_48: signed(19 downto 0);
  signal c_49: signed(19 downto 0);
  signal c_50: signed(19 downto 0);
  signal c_51: signed(19 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_52_i0_resize: signed(23 downto 0);
  signal c_52_i1_resize: signed(23 downto 0);
  signal c_52_i0_shift: signed(23 downto 0);
  signal c_52_i1_shift: signed(23 downto 0);
  signal c_52_arith: signed(23 downto 0);
  signal c_52_oshift: signed(23 downto 0);
  signal c_52_sub_sel: std_logic;
  signal c_53: signed(21 downto 0);
  signal c_53_8_6_False_resize: signed(21 downto 0);
  signal c_53_8_6_False_shift: signed(21 downto 0);
  signal c_53_7_0_False_resize: signed(21 downto 0);
  signal c_53_7_0_False_shift: signed(21 downto 0);
  signal c_53_sel: std_logic_vector(0 downto 0);
  signal c_54: signed(21 downto 0);
  signal c_55: signed(21 downto 0);
  signal c_56: signed(21 downto 0);
  signal c_57: signed(22 downto 0);
  signal c_57_i0_resize: signed(22 downto 0);
  signal c_57_i1_resize: signed(22 downto 0);
  signal c_57_i0_shift: signed(22 downto 0);
  signal c_57_i1_shift: signed(22 downto 0);
  signal c_57_arith: signed(22 downto 0);
  signal c_57_oshift: signed(22 downto 0);
  signal c_57_sub_sel: std_logic;
  signal c_58: signed(19 downto 0);
  signal c_59: signed(19 downto 0);
  signal c_60: signed(19 downto 0);
  signal c_61: signed(23 downto 0);
  signal c_61_52_0_False_resize: signed(23 downto 0);
  signal c_61_52_0_False_shift: signed(23 downto 0);
  signal c_61_34_0_False_resize: signed(23 downto 0);
  signal c_61_34_0_False_shift: signed(23 downto 0);
  signal c_61_60_4_False_resize: signed(23 downto 0);
  signal c_61_60_4_False_shift: signed(23 downto 0);
  signal c_61_sel: std_logic_vector(1 downto 0);
  signal c_62: signed(23 downto 0);
  signal c_63: signed(23 downto 0);
  signal c_63_i0_resize: signed(23 downto 0);
  signal c_63_i1_resize: signed(23 downto 0);
  signal c_63_i0_shift: signed(23 downto 0);
  signal c_63_i1_shift: signed(23 downto 0);
  signal c_63_arith: signed(23 downto 0);
  signal c_63_oshift: signed(23 downto 0);
  signal c_63_sub_sel: std_logic;
  signal c_64: signed(24 downto 0);
  signal c_64_30_0_False_resize: signed(24 downto 0);
  signal c_64_30_0_False_shift: signed(24 downto 0);
  signal c_64_25_3_False_resize: signed(24 downto 0);
  signal c_64_25_3_False_shift: signed(24 downto 0);
  signal c_64_sel: std_logic_vector(0 downto 0);
  signal c_65: signed(23 downto 0);
  signal c_65_13_2_False_resize: signed(23 downto 0);
  signal c_65_13_2_False_shift: signed(23 downto 0);
  signal c_65_13_0_False_resize: signed(23 downto 0);
  signal c_65_13_0_False_shift: signed(23 downto 0);
  signal c_65_sel: std_logic_vector(0 downto 0);
  signal c_66: signed(23 downto 0);
  signal c_67: signed(23 downto 0);
  signal c_68: signed(23 downto 0);
  signal c_68_i0_resize: signed(23 downto 0);
  signal c_68_i1_resize: signed(23 downto 0);
  signal c_68_i0_shift: signed(23 downto 0);
  signal c_68_i1_shift: signed(23 downto 0);
  signal c_68_arith: signed(23 downto 0);
  signal c_68_oshift: signed(23 downto 0);
  signal c_68_sub_sel: std_logic;
  signal c_69: signed(22 downto 0);
  signal c_69_20_0_False_resize: signed(22 downto 0);
  signal c_69_20_0_False_shift: signed(22 downto 0);
  signal c_69_58_1_False_resize: signed(22 downto 0);
  signal c_69_58_1_False_shift: signed(22 downto 0);
  signal c_69_sel: std_logic_vector(0 downto 0);
  signal c_70: signed(22 downto 0);
  signal c_71: signed(22 downto 0);
  signal c_72: signed(22 downto 0);
  signal c_73: signed(22 downto 0);
  signal c_74: signed(23 downto 0);
  signal c_74_43_0_False_resize: signed(23 downto 0);
  signal c_74_43_0_False_shift: signed(23 downto 0);
  signal c_74_73_1_False_resize: signed(23 downto 0);
  signal c_74_73_1_False_shift: signed(23 downto 0);
  signal c_74_sel: std_logic_vector(0 downto 0);
  signal c_75: signed(22 downto 0);
  signal c_76: signed(22 downto 0);
  signal c_77: signed(22 downto 0);
  signal c_78: signed(23 downto 0);
  signal c_78_77_0_False_resize: signed(23 downto 0);
  signal c_78_77_0_False_shift: signed(23 downto 0);
  signal c_78_63_1_False_resize: signed(23 downto 0);
  signal c_78_63_1_False_shift: signed(23 downto 0);
  signal c_78_sel: std_logic_vector(0 downto 0);
  signal c_79: signed(22 downto 0);
  signal c_80: signed(22 downto 0);
  signal c_81: signed(22 downto 0);
  signal c_82: signed(22 downto 0);
  signal c_83: signed(23 downto 0);
  signal c_83_63_0_False_resize: signed(23 downto 0);
  signal c_83_63_0_False_shift: signed(23 downto 0);
  signal c_83_82_0_False_resize: signed(23 downto 0);
  signal c_83_82_0_False_shift: signed(23 downto 0);
  signal c_83_sel: std_logic_vector(0 downto 0);
  signal c_84: signed(22 downto 0);
  signal c_84_36_2_False_resize: signed(22 downto 0);
  signal c_84_36_2_False_shift: signed(22 downto 0);
  signal c_84_25_0_False_resize: signed(22 downto 0);
  signal c_84_25_0_False_shift: signed(22 downto 0);
  signal c_84_sel: std_logic_vector(0 downto 0);
  signal c_85: signed(21 downto 0);
  signal c_85_30_1_False_resize: signed(21 downto 0);
  signal c_85_30_1_False_shift: signed(21 downto 0);
  signal c_85_36_3_False_resize: signed(21 downto 0);
  signal c_85_36_3_False_shift: signed(21 downto 0);
  signal c_85_25_0_False_resize: signed(21 downto 0);
  signal c_85_25_0_False_shift: signed(21 downto 0);
  signal c_85_sel: std_logic_vector(1 downto 0);
  signal c_86: signed(22 downto 0);
  signal c_86_73_0_False_resize: signed(22 downto 0);
  signal c_86_73_0_False_shift: signed(22 downto 0);
  signal c_86_43_0_False_resize: signed(22 downto 0);
  signal c_86_43_0_False_shift: signed(22 downto 0);
  signal c_86_75_0_False_resize: signed(22 downto 0);
  signal c_86_75_0_False_shift: signed(22 downto 0);
  signal c_86_sel: std_logic_vector(1 downto 0);
  signal c_87: signed(22 downto 0);
  signal c_88: signed(22 downto 0);
  signal c_89: signed(22 downto 0);
  signal c_90: signed(22 downto 0);
  signal c_91: signed(22 downto 0);
  signal c_91_resize: signed(22 downto 0);
  signal c_92: signed(23 downto 0);
  signal c_93: signed(23 downto 0);
  signal c_94: signed(23 downto 0);
  signal c_94_resize: signed(23 downto 0);
  signal c_95: signed(23 downto 0);
  signal c_95_resize: signed(23 downto 0);
  signal c_96: signed(23 downto 0);
  signal c_96_resize: signed(23 downto 0);
  signal c_97: signed(22 downto 0);
  signal c_98: signed(22 downto 0);
  signal c_99: signed(22 downto 0);
  signal c_100: signed(22 downto 0);
  signal c_101: signed(23 downto 0);
  signal c_101_resize: signed(23 downto 0);
  signal c_102: signed(23 downto 0);
  signal c_103: signed(23 downto 0);
  signal c_104: signed(23 downto 0);
  signal c_105: signed(23 downto 0);
  signal c_105_resize: signed(23 downto 0);
  signal c_106: signed(23 downto 0);
  signal c_107: signed(23 downto 0);
  signal c_108: signed(23 downto 0);
  signal c_108_resize: signed(23 downto 0);
  signal c_109: signed(21 downto 0);
  signal c_110: signed(21 downto 0);
  signal c_111: signed(21 downto 0);
  signal c_112: signed(21 downto 0);
  signal c_113: signed(23 downto 0);
  signal c_113_resize: signed(23 downto 0);
  signal c_114: signed(22 downto 0);
  signal c_115: signed(22 downto 0);
  signal c_116: signed(22 downto 0);
  signal c_116_resize: signed(22 downto 0);
  signal c_117: signed(23 downto 0);
  signal c_118: signed(23 downto 0);
  signal c_119: signed(23 downto 0);
  signal c_120: signed(23 downto 0);
  signal c_120_resize: signed(23 downto 0);
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
  -- output node 0 with id 91
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_91);
    end if;
  end process;
  -- output node 1 with id 94
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_94);
    end if;
  end process;
  -- output node 2 with id 95
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_95);
    end if;
  end process;
  -- output node 3 with id 96
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_96);
    end if;
  end process;
  -- output node 4 with id 101
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_101);
    end if;
  end process;
  -- output node 5 with id 105
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_105);
    end if;
  end process;
  -- output node 6 with id 108
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_108);
    end if;
  end process;
  -- output node 7 with id 113
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_113);
    end if;
  end process;
  -- output node 8 with id 116
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_116);
    end if;
  end process;
  -- output node 9 with id 120
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_120);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [1], [16]]
  c_1_0_0_False_resize <= resize(c_0, 20);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_4_False_resize <= resize(c_0, 20);
  c_1_0_4_False_shift <= shift_left(c_1_0_4_False_resize, 4);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_4_False_shift;
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
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[7], [9], [-8]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 20,
      w_o => 20,
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
      x_i => c_2,
      y_i => c_1,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[28], [9], [1]]
  c_5_4_0_False_resize <= resize(c_4, 21);
  c_5_4_0_False_shift <= shift_left(c_5_4_0_False_resize, 0);
  c_5_3_2_False_resize <= resize(c_3, 21);
  c_5_3_2_False_shift <= shift_left(c_5_3_2_False_resize, 2);
  c_5_3_0_False_resize <= resize(c_3, 21);
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  with config_select_3 select c_5_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_4_0_False_shift;
        when "01" => c_5 <= c_5_3_2_False_shift;
        when others => c_5 <= c_5_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 6 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[24], [13], [5]]
  with config_select_4 select c_7_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 16,
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
      sub_i => c_7_sub_sel,
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 8 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[7], [9], [-8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 10 and associated fundamentals [[7], [9], [-8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 11 and associated fundamentals [[1], [36], [10]]
  c_11_7_1_False_resize <= resize(c_7, 22);
  c_11_7_1_False_shift <= shift_left(c_11_7_1_False_resize, 1);
  c_11_8_0_False_resize <= resize(c_8, 22);
  c_11_8_0_False_shift <= shift_left(c_11_8_0_False_resize, 0);
  c_11_10_2_False_resize <= resize(c_10, 22);
  c_11_10_2_False_shift <= shift_left(c_11_10_2_False_resize, 2);
  with config_select_5 select c_11_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_7_1_False_shift;
        when "01" => c_11 <= c_11_8_0_False_shift;
        when others => c_11 <= c_11_10_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 12 and associated fundamentals [[48], [26], [1]]
  c_12_7_1_False_resize <= resize(c_7, 22);
  c_12_7_1_False_shift <= shift_left(c_12_7_1_False_resize, 1);
  c_12_8_0_False_resize <= resize(c_8, 22);
  c_12_8_0_False_shift <= shift_left(c_12_8_0_False_resize, 0);
  with config_select_5 select c_12_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_7_1_False_shift;
        when others => c_12 <= c_12_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 6 with id 13 and associated fundamentals [[-44], [118], [39]]
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 23,
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
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 14 and associated fundamentals [[7], [9], [-8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 15 and associated fundamentals [[7], [9], [-8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 16 and associated fundamentals [[112], [118], [39]]
  c_16_13_0_False_resize <= c_13;
  c_16_13_0_False_shift <= shift_left(c_16_13_0_False_resize, 0);
  c_16_15_4_False_resize <= resize(c_15, 23);
  c_16_15_4_False_shift <= shift_left(c_16_15_4_False_resize, 4);
  with config_select_7 select c_16_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_13_0_False_shift;
        when others => c_16 <= c_16_15_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 17 and associated fundamentals [[7], [9], [10]]
  c_17_7_1_False_resize <= c_7(19 downto 0);
  c_17_7_1_False_shift <= shift_left(c_17_7_1_False_resize, 1);
  c_17_10_0_False_resize <= c_10;
  c_17_10_0_False_shift <= shift_left(c_17_10_0_False_resize, 0);
  with config_select_5 select c_17_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_7_1_False_shift;
        when others => c_17 <= c_17_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 18 and associated fundamentals [[7], [9], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 19 and associated fundamentals [[7], [9], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 20 and associated fundamentals [[105], [109], [49]]
  with config_select_8 select c_20_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 20,
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
      sub_i => c_20_sub_sel,
      x_i => c_16,
      y_i => c_19,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[24], [13], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 22 and associated fundamentals [[24], [13], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 23 and associated fundamentals [[48], [26], [39]]
  c_23_22_1_False_resize <= resize(c_22, 22);
  c_23_22_1_False_shift <= shift_left(c_23_22_1_False_resize, 1);
  c_23_13_0_False_resize <= c_13(21 downto 0);
  c_23_13_0_False_shift <= shift_left(c_23_13_0_False_resize, 0);
  with config_select_7 select c_23_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_22_1_False_shift;
        when others => c_23 <= c_23_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 24 and associated fundamentals [[7], [9], [-8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_15 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 25 and associated fundamentals [[41], [35], [31]]
  with config_select_8 select c_25_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_25: entity work.adder_node
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
      sub_i => c_25_sub_sel,
      x_i => c_23,
      y_i => c_24,
      z_o => c_25_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 26 and associated fundamentals [[14], [18], [39]]
  c_26_15_1_False_resize <= resize(c_15, 22);
  c_26_15_1_False_shift <= shift_left(c_26_15_1_False_resize, 1);
  c_26_13_0_False_resize <= c_13(21 downto 0);
  c_26_13_0_False_shift <= shift_left(c_26_13_0_False_resize, 0);
  with config_select_7 select c_26_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_15_1_False_shift;
        when others => c_26 <= c_26_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 27 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 28 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 29 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 30 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 31 and associated fundamentals [[105], [1], [49]]
  c_31_20_0_False_resize <= c_20;
  c_31_20_0_False_shift <= shift_left(c_31_20_0_False_resize, 0);
  c_31_30_0_False_resize <= resize(c_30, 23);
  c_31_30_0_False_shift <= shift_left(c_31_30_0_False_resize, 0);
  with config_select_9 select c_31_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_20_0_False_shift;
        when others => c_31 <= c_31_30_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 32 and associated fundamentals [[14], [18], [39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 33 and associated fundamentals [[14], [18], [39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 34 and associated fundamentals [[161], [73], [107]]
  with config_select_10 select c_34_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_34: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_34_sub_sel,
      x_i => c_33,
      y_i => c_31,
      z_o => c_34_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_34_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 35 and associated fundamentals [[24], [13], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 36 and associated fundamentals [[24], [13], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 37 and associated fundamentals [[82], [104], [49]]
  c_37_36_3_False_resize <= resize(c_36, 23);
  c_37_36_3_False_shift <= shift_left(c_37_36_3_False_resize, 3);
  c_37_20_0_False_resize <= c_20;
  c_37_20_0_False_shift <= shift_left(c_37_20_0_False_resize, 0);
  c_37_25_1_False_resize <= resize(c_25, 23);
  c_37_25_1_False_shift <= shift_left(c_37_25_1_False_resize, 1);
  with config_select_9 select c_37_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "00" => c_37 <= c_37_36_3_False_shift;
        when "01" => c_37 <= c_37_20_0_False_shift;
        when others => c_37 <= c_37_25_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 38 and associated fundamentals [[14], [13], [5]]
  c_38_7_0_False_resize <= c_7(19 downto 0);
  c_38_7_0_False_shift <= shift_left(c_38_7_0_False_resize, 0);
  c_38_10_1_False_resize <= c_10;
  c_38_10_1_False_shift <= shift_left(c_38_10_1_False_resize, 1);
  with config_select_5 select c_38_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "0" => c_38 <= c_38_7_0_False_shift;
        when others => c_38 <= c_38_10_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 39 and associated fundamentals [[14], [13], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 40 and associated fundamentals [[14], [13], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 41 and associated fundamentals [[14], [13], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 42 and associated fundamentals [[14], [13], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 43 and associated fundamentals [[150], [195], [103]]
  with config_select_10 select c_43_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_43: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 20,
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
      sub_i => c_43_sub_sel,
      x_i => c_37,
      y_i => c_42,
      z_o => c_43_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_43_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 44 and associated fundamentals [[192], [109], [49]]
  c_44_36_3_False_resize <= resize(c_36, 24);
  c_44_36_3_False_shift <= shift_left(c_44_36_3_False_resize, 3);
  c_44_20_0_False_resize <= resize(c_20, 24);
  c_44_20_0_False_shift <= shift_left(c_44_20_0_False_resize, 0);
  with config_select_9 select c_44_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "0" => c_44 <= c_44_36_3_False_shift;
        when others => c_44 <= c_44_20_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 45 and associated fundamentals [[4], [4], [-8]]
  c_45_4_2_False_resize <= resize(c_4, 20);
  c_45_4_2_False_shift <= shift_left(c_45_4_2_False_resize, 2);
  c_45_3_0_False_resize <= c_3;
  c_45_3_0_False_shift <= shift_left(c_45_3_0_False_resize, 0);
  with config_select_3 select c_45_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "0" => c_45 <= c_45_4_2_False_shift;
        when others => c_45 <= c_45_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 46 and associated fundamentals [[4], [4], [-8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 47 and associated fundamentals [[4], [4], [-8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 48 and associated fundamentals [[4], [4], [-8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 49 and associated fundamentals [[4], [4], [-8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 50 and associated fundamentals [[4], [4], [-8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 51 and associated fundamentals [[4], [4], [-8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 52 and associated fundamentals [[200], [101], [65]]
  with config_select_10 select c_52_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_52: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 20,
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
      sub_i => c_52_sub_sel,
      x_i => c_44,
      y_i => c_51,
      z_o => c_52_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_52_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 53 and associated fundamentals [[24], [64], [64]]
  c_53_8_6_False_resize <= resize(c_8, 22);
  c_53_8_6_False_shift <= shift_left(c_53_8_6_False_resize, 6);
  c_53_7_0_False_resize <= resize(c_7, 22);
  c_53_7_0_False_shift <= shift_left(c_53_7_0_False_resize, 0);
  with config_select_5 select c_53_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_53_sel is
        when "0" => c_53 <= c_53_8_6_False_shift;
        when others => c_53 <= c_53_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 54 and associated fundamentals [[24], [64], [64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 55 and associated fundamentals [[24], [64], [64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 56 and associated fundamentals [[24], [64], [64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 57 and associated fundamentals [[17], [99], [95]]
  with config_select_9 select c_57_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_57: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
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
      sub_i => c_57_sub_sel,
      x_i => c_25,
      y_i => c_56,
      z_o => c_57_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_57_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 58 and associated fundamentals [[7], [9], [-8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 59 and associated fundamentals [[7], [9], [-8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 60 and associated fundamentals [[7], [9], [-8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 61 and associated fundamentals [[200], [73], [-128]]
  c_61_52_0_False_resize <= c_52;
  c_61_52_0_False_shift <= shift_left(c_61_52_0_False_resize, 0);
  c_61_34_0_False_resize <= c_34;
  c_61_34_0_False_shift <= shift_left(c_61_34_0_False_resize, 0);
  c_61_60_4_False_resize <= resize(c_60, 24);
  c_61_60_4_False_shift <= shift_left(c_61_60_4_False_resize, 4);
  with config_select_11 select c_61_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_61_sel is
        when "00" => c_61 <= c_61_52_0_False_shift;
        when "01" => c_61 <= c_61_34_0_False_shift;
        when others => c_61 <= c_61_60_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 62 and associated fundamentals [[161], [73], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_34 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 63 and associated fundamentals [[122], [219], [86]]
  with config_select_12 select c_63_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_63: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_63_sub_sel,
      x_i => c_62,
      y_i => c_61,
      z_o => c_63_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_63_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 64 and associated fundamentals [[1], [280], [1]]
  c_64_30_0_False_resize <= resize(c_30, 25);
  c_64_30_0_False_shift <= shift_left(c_64_30_0_False_resize, 0);
  c_64_25_3_False_resize <= resize(c_25, 25);
  c_64_25_3_False_shift <= shift_left(c_64_25_3_False_resize, 3);
  with config_select_9 select c_64_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_64_sel is
        when "0" => c_64 <= c_64_30_0_False_shift;
        when others => c_64 <= c_64_25_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 65 and associated fundamentals [[-44], [118], [156]]
  c_65_13_2_False_resize <= resize(c_13, 24);
  c_65_13_2_False_shift <= shift_left(c_65_13_2_False_resize, 2);
  c_65_13_0_False_resize <= resize(c_13, 24);
  c_65_13_0_False_shift <= shift_left(c_65_13_0_False_resize, 0);
  with config_select_7 select c_65_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_65_sel is
        when "0" => c_65 <= c_65_13_2_False_shift;
        when others => c_65 <= c_65_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 66 and associated fundamentals [[-44], [118], [156]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 67 and associated fundamentals [[-44], [118], [156]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 68 and associated fundamentals [[45], [162], [157]]
  with config_select_10 select c_68_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_68: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_68_sub_sel,
      x_i => c_64,
      y_i => c_67,
      z_o => c_68_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_68_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 69 and associated fundamentals [[14], [109], [49]]
  c_69_20_0_False_resize <= c_20;
  c_69_20_0_False_shift <= shift_left(c_69_20_0_False_resize, 0);
  c_69_58_1_False_resize <= resize(c_58, 23);
  c_69_58_1_False_shift <= shift_left(c_69_58_1_False_resize, 1);
  with config_select_9 select c_69_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_69_sel is
        when "0" => c_69 <= c_69_20_0_False_shift;
        when others => c_69 <= c_69_58_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 70 and associated fundamentals [[-44], [118], [39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 71 and associated fundamentals [[-44], [118], [39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 72 and associated fundamentals [[-44], [118], [39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 73 and associated fundamentals [[-44], [118], [39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_72 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 74 and associated fundamentals [[150], [195], [78]]
  c_74_43_0_False_resize <= c_43;
  c_74_43_0_False_shift <= shift_left(c_74_43_0_False_resize, 0);
  c_74_73_1_False_resize <= resize(c_73, 24);
  c_74_73_1_False_shift <= shift_left(c_74_73_1_False_resize, 1);
  with config_select_11 select c_74_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_74_sel is
        when "0" => c_74 <= c_74_43_0_False_shift;
        when others => c_74 <= c_74_73_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 75 and associated fundamentals [[17], [99], [95]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 76 and associated fundamentals [[17], [99], [95]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 77 and associated fundamentals [[17], [99], [95]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 78 and associated fundamentals [[244], [99], [95]]
  c_78_77_0_False_resize <= resize(c_77, 24);
  c_78_77_0_False_shift <= shift_left(c_78_77_0_False_resize, 0);
  c_78_63_1_False_resize <= c_63;
  c_78_63_1_False_shift <= shift_left(c_78_63_1_False_resize, 1);
  with config_select_13 select c_78_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_78_sel is
        when "0" => c_78 <= c_78_77_0_False_shift;
        when others => c_78 <= c_78_63_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 79 and associated fundamentals [[105], [109], [49]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 80 and associated fundamentals [[105], [109], [49]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 81 and associated fundamentals [[105], [109], [49]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_80 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 82 and associated fundamentals [[105], [109], [49]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_81 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 83 and associated fundamentals [[105], [219], [86]]
  c_83_63_0_False_resize <= c_63;
  c_83_63_0_False_shift <= shift_left(c_83_63_0_False_resize, 0);
  c_83_82_0_False_resize <= resize(c_82, 24);
  c_83_82_0_False_shift <= shift_left(c_83_82_0_False_resize, 0);
  with config_select_13 select c_83_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_83_sel is
        when "0" => c_83 <= c_83_63_0_False_shift;
        when others => c_83 <= c_83_82_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 84 and associated fundamentals [[96], [52], [31]]
  c_84_36_2_False_resize <= resize(c_36, 23);
  c_84_36_2_False_shift <= shift_left(c_84_36_2_False_resize, 2);
  c_84_25_0_False_resize <= resize(c_25, 23);
  c_84_25_0_False_shift <= shift_left(c_84_25_0_False_resize, 0);
  with config_select_9 select c_84_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_84_sel is
        when "0" => c_84 <= c_84_36_2_False_shift;
        when others => c_84 <= c_84_25_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 85 and associated fundamentals [[2], [35], [40]]
  c_85_30_1_False_resize <= resize(c_30, 22);
  c_85_30_1_False_shift <= shift_left(c_85_30_1_False_resize, 1);
  c_85_36_3_False_resize <= resize(c_36, 22);
  c_85_36_3_False_shift <= shift_left(c_85_36_3_False_resize, 3);
  c_85_25_0_False_resize <= c_25;
  c_85_25_0_False_shift <= shift_left(c_85_25_0_False_resize, 0);
  with config_select_9 select c_85_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_85_sel is
        when "00" => c_85 <= c_85_30_1_False_shift;
        when "01" => c_85 <= c_85_36_3_False_shift;
        when others => c_85 <= c_85_25_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 86 and associated fundamentals [[17], [118], [103]]
  c_86_73_0_False_resize <= c_73;
  c_86_73_0_False_shift <= shift_left(c_86_73_0_False_resize, 0);
  c_86_43_0_False_resize <= c_43(22 downto 0);
  c_86_43_0_False_shift <= shift_left(c_86_43_0_False_resize, 0);
  c_86_75_0_False_resize <= c_75;
  c_86_75_0_False_shift <= shift_left(c_86_75_0_False_resize, 0);
  with config_select_11 select c_86_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_86_sel is
        when "00" => c_86 <= c_86_73_0_False_shift;
        when "01" => c_86 <= c_86_43_0_False_shift;
        when others => c_86 <= c_86_75_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 87 and associated fundamentals [[14], [109], [49]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 88 and associated fundamentals [[14], [109], [49]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_87 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 89 and associated fundamentals [[14], [109], [49]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_88 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 90 and associated fundamentals [[14], [109], [49]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_89 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 91 and associated fundamentals [[14], [109], [49]]
  c_91_resize <= c_90;
  c_91 <= shift_left(c_91_resize, 0);
  -- node of type 'register' in stage 12 with id 92 and associated fundamentals [[150], [195], [78]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 93 and associated fundamentals [[150], [195], [78]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_92 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 94 and associated fundamentals [[150], [195], [78]]
  c_94_resize <= c_93;
  c_94 <= shift_left(c_94_resize, 0);
  -- node of type 'output' in stage 13 with id 95 and associated fundamentals [[244], [99], [95]]
  c_95_resize <= c_78;
  c_95 <= shift_left(c_95_resize, 0);
  -- node of type 'output' in stage 13 with id 96 and associated fundamentals [[105], [219], [86]]
  c_96_resize <= c_83;
  c_96 <= shift_left(c_96_resize, 0);
  -- node of type 'register' in stage 10 with id 97 and associated fundamentals [[96], [52], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_84 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 98 and associated fundamentals [[96], [52], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_97 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 99 and associated fundamentals [[96], [52], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_98 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 100 and associated fundamentals [[96], [52], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_99 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 101 and associated fundamentals [[192], [104], [62]]
  c_101_resize <= resize(c_100, 24);
  c_101 <= shift_left(c_101_resize, 1);
  -- node of type 'register' in stage 11 with id 102 and associated fundamentals [[200], [101], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 103 and associated fundamentals [[200], [101], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_102 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 104 and associated fundamentals [[200], [101], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_103 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 105 and associated fundamentals [[200], [101], [65]]
  c_105_resize <= c_104;
  c_105 <= shift_left(c_105_resize, 0);
  -- node of type 'register' in stage 12 with id 106 and associated fundamentals [[161], [73], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 107 and associated fundamentals [[161], [73], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_106 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 108 and associated fundamentals [[161], [73], [107]]
  c_108_resize <= c_107;
  c_108 <= shift_left(c_108_resize, 0);
  -- node of type 'register' in stage 10 with id 109 and associated fundamentals [[2], [35], [40]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_109 <= c_85 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 110 and associated fundamentals [[2], [35], [40]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_110 <= c_109 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 111 and associated fundamentals [[2], [35], [40]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_110 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 112 and associated fundamentals [[2], [35], [40]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_111 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 113 and associated fundamentals [[8], [140], [160]]
  c_113_resize <= resize(c_112, 24);
  c_113 <= shift_left(c_113_resize, 2);
  -- node of type 'register' in stage 12 with id 114 and associated fundamentals [[17], [118], [103]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_86 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 115 and associated fundamentals [[17], [118], [103]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_114 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 116 and associated fundamentals [[17], [118], [103]]
  c_116_resize <= c_115;
  c_116 <= shift_left(c_116_resize, 0);
  -- node of type 'register' in stage 11 with id 117 and associated fundamentals [[45], [162], [157]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_117 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 118 and associated fundamentals [[45], [162], [157]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_118 <= c_117 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 119 and associated fundamentals [[45], [162], [157]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_119 <= c_118 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 120 and associated fundamentals [[45], [162], [157]]
  c_120_resize <= c_119;
  c_120 <= shift_left(c_120_resize, 0);
end architecture;
