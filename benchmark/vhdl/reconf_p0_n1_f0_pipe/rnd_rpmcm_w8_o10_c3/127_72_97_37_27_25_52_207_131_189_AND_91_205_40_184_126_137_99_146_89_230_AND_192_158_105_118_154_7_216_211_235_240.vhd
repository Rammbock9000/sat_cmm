library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(22 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(16 downto 0);
  signal c_1_0_1_False_resize: signed(16 downto 0);
  signal c_1_0_1_False_shift: signed(16 downto 0);
  signal c_1_0_0_False_resize: signed(16 downto 0);
  signal c_1_0_0_False_shift: signed(16 downto 0);
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
  signal c_4: signed(19 downto 0);
  signal c_4_0_0_False_resize: signed(19 downto 0);
  signal c_4_0_0_False_shift: signed(19 downto 0);
  signal c_4_0_4_False_resize: signed(19 downto 0);
  signal c_4_0_4_False_shift: signed(19 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(21 downto 0);
  signal c_6_3_0_False_resize: signed(21 downto 0);
  signal c_6_3_0_False_shift: signed(21 downto 0);
  signal c_6_5_6_False_resize: signed(21 downto 0);
  signal c_6_5_6_False_shift: signed(21 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(19 downto 0);
  signal c_8: signed(19 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_9_i0_resize: signed(21 downto 0);
  signal c_9_i1_resize: signed(21 downto 0);
  signal c_9_i0_shift: signed(21 downto 0);
  signal c_9_i1_shift: signed(21 downto 0);
  signal c_9_arith: signed(21 downto 0);
  signal c_9_oshift: signed(21 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(19 downto 0);
  signal c_11: signed(19 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_11_0_False_resize: signed(22 downto 0);
  signal c_12_11_0_False_shift: signed(22 downto 0);
  signal c_12_9_4_False_resize: signed(22 downto 0);
  signal c_12_9_4_False_shift: signed(22 downto 0);
  signal c_12_11_3_False_resize: signed(22 downto 0);
  signal c_12_11_3_False_shift: signed(22 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_14_i0_resize: signed(22 downto 0);
  signal c_14_i1_resize: signed(22 downto 0);
  signal c_14_i0_shift: signed(22 downto 0);
  signal c_14_i1_shift: signed(22 downto 0);
  signal c_14_arith: signed(22 downto 0);
  signal c_14_oshift: signed(22 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(15 downto 0);
  signal c_16: signed(15 downto 0);
  signal c_17: signed(20 downto 0);
  signal c_17_9_2_False_resize: signed(20 downto 0);
  signal c_17_9_2_False_shift: signed(20 downto 0);
  signal c_17_16_4_False_resize: signed(20 downto 0);
  signal c_17_16_4_False_shift: signed(20 downto 0);
  signal c_17_11_0_False_resize: signed(20 downto 0);
  signal c_17_11_0_False_shift: signed(20 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(19 downto 0);
  signal c_19: signed(19 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_20_14_0_False_resize: signed(22 downto 0);
  signal c_20_14_0_False_shift: signed(22 downto 0);
  signal c_20_19_2_False_resize: signed(22 downto 0);
  signal c_20_19_2_False_shift: signed(22 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(20 downto 0);
  signal c_22: signed(20 downto 0);
  signal c_23: signed(22 downto 0);
  signal c_23_i0_resize: signed(22 downto 0);
  signal c_23_i1_resize: signed(22 downto 0);
  signal c_23_i0_shift: signed(22 downto 0);
  signal c_23_i1_shift: signed(22 downto 0);
  signal c_23_arith: signed(22 downto 0);
  signal c_23_oshift: signed(22 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(22 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_23_0_False_resize: signed(23 downto 0);
  signal c_26_23_0_False_shift: signed(23 downto 0);
  signal c_26_25_1_False_resize: signed(23 downto 0);
  signal c_26_25_1_False_shift: signed(23 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(19 downto 0);
  signal c_28: signed(19 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_23_3_False_resize: signed(23 downto 0);
  signal c_29_23_3_False_shift: signed(23 downto 0);
  signal c_29_28_0_False_resize: signed(23 downto 0);
  signal c_29_28_0_False_shift: signed(23 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_i0_resize: signed(23 downto 0);
  signal c_30_i1_resize: signed(23 downto 0);
  signal c_30_i0_shift: signed(23 downto 0);
  signal c_30_i1_shift: signed(23 downto 0);
  signal c_30_arith: signed(23 downto 0);
  signal c_30_oshift: signed(23 downto 0);
  signal c_30_sub_sel: std_logic;
  signal c_31: signed(21 downto 0);
  signal c_31_9_1_False_resize: signed(21 downto 0);
  signal c_31_9_1_False_shift: signed(21 downto 0);
  signal c_31_16_0_False_resize: signed(21 downto 0);
  signal c_31_16_0_False_shift: signed(21 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(15 downto 0);
  signal c_33: signed(15 downto 0);
  signal c_34: signed(15 downto 0);
  signal c_35: signed(15 downto 0);
  signal c_36: signed(22 downto 0);
  signal c_36_23_0_False_resize: signed(22 downto 0);
  signal c_36_23_0_False_shift: signed(22 downto 0);
  signal c_36_35_5_False_resize: signed(22 downto 0);
  signal c_36_35_5_False_shift: signed(22 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(21 downto 0);
  signal c_38: signed(21 downto 0);
  signal c_39: signed(21 downto 0);
  signal c_40: signed(21 downto 0);
  signal c_41: signed(22 downto 0);
  signal c_41_i0_resize: signed(22 downto 0);
  signal c_41_i1_resize: signed(22 downto 0);
  signal c_41_i0_shift: signed(22 downto 0);
  signal c_41_i1_shift: signed(22 downto 0);
  signal c_41_arith: signed(22 downto 0);
  signal c_41_oshift: signed(22 downto 0);
  signal c_41_sub_sel: std_logic;
  signal c_42: signed(21 downto 0);
  signal c_42_9_0_False_resize: signed(21 downto 0);
  signal c_42_9_0_False_shift: signed(21 downto 0);
  signal c_42_16_1_False_resize: signed(21 downto 0);
  signal c_42_16_1_False_shift: signed(21 downto 0);
  signal c_42_sel: std_logic_vector(0 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_23_0_False_resize: signed(23 downto 0);
  signal c_43_23_0_False_shift: signed(23 downto 0);
  signal c_43_23_1_False_resize: signed(23 downto 0);
  signal c_43_23_1_False_shift: signed(23 downto 0);
  signal c_43_sel: std_logic_vector(0 downto 0);
  signal c_44: signed(21 downto 0);
  signal c_45: signed(21 downto 0);
  signal c_46: signed(21 downto 0);
  signal c_47: signed(21 downto 0);
  signal c_48: signed(22 downto 0);
  signal c_48_i0_resize: signed(22 downto 0);
  signal c_48_i1_resize: signed(22 downto 0);
  signal c_48_i0_shift: signed(22 downto 0);
  signal c_48_i1_shift: signed(22 downto 0);
  signal c_48_arith: signed(22 downto 0);
  signal c_48_oshift: signed(22 downto 0);
  signal c_48_sub_sel: std_logic;
  signal c_49: signed(15 downto 0);
  signal c_50: signed(15 downto 0);
  signal c_51: signed(22 downto 0);
  signal c_51_48_0_False_resize: signed(22 downto 0);
  signal c_51_48_0_False_shift: signed(22 downto 0);
  signal c_51_50_4_False_resize: signed(22 downto 0);
  signal c_51_50_4_False_shift: signed(22 downto 0);
  signal c_51_sel: std_logic_vector(0 downto 0);
  signal c_52: signed(22 downto 0);
  signal c_52_14_0_False_resize: signed(22 downto 0);
  signal c_52_14_0_False_shift: signed(22 downto 0);
  signal c_52_33_0_False_resize: signed(22 downto 0);
  signal c_52_33_0_False_shift: signed(22 downto 0);
  signal c_52_sel: std_logic_vector(0 downto 0);
  signal c_53: signed(22 downto 0);
  signal c_54: signed(22 downto 0);
  signal c_55: signed(22 downto 0);
  signal c_56: signed(22 downto 0);
  signal c_57: signed(23 downto 0);
  signal c_57_i0_resize: signed(23 downto 0);
  signal c_57_i1_resize: signed(23 downto 0);
  signal c_57_i0_shift: signed(23 downto 0);
  signal c_57_i1_shift: signed(23 downto 0);
  signal c_57_arith: signed(23 downto 0);
  signal c_57_oshift: signed(23 downto 0);
  signal c_57_sub_sel: std_logic;
  signal c_58: signed(19 downto 0);
  signal c_59: signed(19 downto 0);
  signal c_60: signed(23 downto 0);
  signal c_60_48_0_False_resize: signed(23 downto 0);
  signal c_60_48_0_False_shift: signed(23 downto 0);
  signal c_60_59_4_False_resize: signed(23 downto 0);
  signal c_60_59_4_False_shift: signed(23 downto 0);
  signal c_60_sel: std_logic_vector(0 downto 0);
  signal c_61: signed(22 downto 0);
  signal c_62: signed(22 downto 0);
  signal c_63: signed(22 downto 0);
  signal c_63_48_0_False_resize: signed(22 downto 0);
  signal c_63_48_0_False_shift: signed(22 downto 0);
  signal c_63_62_0_False_resize: signed(22 downto 0);
  signal c_63_62_0_False_shift: signed(22 downto 0);
  signal c_63_sel: std_logic_vector(0 downto 0);
  signal c_64: signed(23 downto 0);
  signal c_64_i0_resize: signed(23 downto 0);
  signal c_64_i1_resize: signed(23 downto 0);
  signal c_64_i0_shift: signed(23 downto 0);
  signal c_64_i1_shift: signed(23 downto 0);
  signal c_64_arith: signed(23 downto 0);
  signal c_64_oshift: signed(23 downto 0);
  signal c_65: signed(22 downto 0);
  signal c_65_41_0_False_resize: signed(22 downto 0);
  signal c_65_41_0_False_shift: signed(22 downto 0);
  signal c_65_59_1_False_resize: signed(22 downto 0);
  signal c_65_59_1_False_shift: signed(22 downto 0);
  signal c_65_sel: std_logic_vector(0 downto 0);
  signal c_66: signed(16 downto 0);
  signal c_67: signed(16 downto 0);
  signal c_68: signed(16 downto 0);
  signal c_69: signed(16 downto 0);
  signal c_70: signed(16 downto 0);
  signal c_71: signed(16 downto 0);
  signal c_72: signed(16 downto 0);
  signal c_73: signed(16 downto 0);
  signal c_74: signed(16 downto 0);
  signal c_75: signed(16 downto 0);
  signal c_76: signed(23 downto 0);
  signal c_76_i0_resize: signed(23 downto 0);
  signal c_76_i1_resize: signed(23 downto 0);
  signal c_76_i0_shift: signed(23 downto 0);
  signal c_76_i1_shift: signed(23 downto 0);
  signal c_76_arith: signed(23 downto 0);
  signal c_76_oshift: signed(23 downto 0);
  signal c_76_sub_sel: std_logic;
  signal c_77: signed(23 downto 0);
  signal c_77_41_0_False_resize: signed(23 downto 0);
  signal c_77_41_0_False_shift: signed(23 downto 0);
  signal c_77_59_5_False_resize: signed(23 downto 0);
  signal c_77_59_5_False_shift: signed(23 downto 0);
  signal c_77_sel: std_logic_vector(0 downto 0);
  signal c_78: signed(19 downto 0);
  signal c_79: signed(19 downto 0);
  signal c_80: signed(22 downto 0);
  signal c_81: signed(22 downto 0);
  signal c_82: signed(23 downto 0);
  signal c_82_64_0_False_resize: signed(23 downto 0);
  signal c_82_64_0_False_shift: signed(23 downto 0);
  signal c_82_81_1_False_resize: signed(23 downto 0);
  signal c_82_81_1_False_shift: signed(23 downto 0);
  signal c_82_79_3_False_resize: signed(23 downto 0);
  signal c_82_79_3_False_shift: signed(23 downto 0);
  signal c_82_sel: std_logic_vector(1 downto 0);
  signal c_83: signed(22 downto 0);
  signal c_83_14_0_False_resize: signed(22 downto 0);
  signal c_83_14_0_False_shift: signed(22 downto 0);
  signal c_83_19_2_False_resize: signed(22 downto 0);
  signal c_83_19_2_False_shift: signed(22 downto 0);
  signal c_83_sel: std_logic_vector(0 downto 0);
  signal c_84: signed(21 downto 0);
  signal c_85: signed(21 downto 0);
  signal c_86: signed(21 downto 0);
  signal c_87: signed(23 downto 0);
  signal c_87_23_1_False_resize: signed(23 downto 0);
  signal c_87_23_1_False_shift: signed(23 downto 0);
  signal c_87_86_1_False_resize: signed(23 downto 0);
  signal c_87_86_1_False_shift: signed(23 downto 0);
  signal c_87_23_0_False_resize: signed(23 downto 0);
  signal c_87_23_0_False_shift: signed(23 downto 0);
  signal c_87_sel: std_logic_vector(1 downto 0);
  signal c_88: signed(21 downto 0);
  signal c_89: signed(21 downto 0);
  signal c_90: signed(21 downto 0);
  signal c_91: signed(21 downto 0);
  signal c_92: signed(23 downto 0);
  signal c_92_91_0_False_resize: signed(23 downto 0);
  signal c_92_91_0_False_shift: signed(23 downto 0);
  signal c_92_57_0_False_resize: signed(23 downto 0);
  signal c_92_57_0_False_shift: signed(23 downto 0);
  signal c_92_sel: std_logic_vector(0 downto 0);
  signal c_93: signed(23 downto 0);
  signal c_93_30_0_False_resize: signed(23 downto 0);
  signal c_93_30_0_False_shift: signed(23 downto 0);
  signal c_93_48_0_False_resize: signed(23 downto 0);
  signal c_93_48_0_False_shift: signed(23 downto 0);
  signal c_93_sel: std_logic_vector(0 downto 0);
  signal c_94: signed(22 downto 0);
  signal c_95: signed(22 downto 0);
  signal c_96: signed(22 downto 0);
  signal c_97: signed(22 downto 0);
  signal c_98: signed(23 downto 0);
  signal c_98_57_0_False_resize: signed(23 downto 0);
  signal c_98_57_0_False_shift: signed(23 downto 0);
  signal c_98_97_1_False_resize: signed(23 downto 0);
  signal c_98_97_1_False_shift: signed(23 downto 0);
  signal c_98_sel: std_logic_vector(0 downto 0);
  signal c_99: signed(22 downto 0);
  signal c_100: signed(22 downto 0);
  signal c_101: signed(23 downto 0);
  signal c_101_64_0_False_resize: signed(23 downto 0);
  signal c_101_64_0_False_shift: signed(23 downto 0);
  signal c_101_100_0_False_resize: signed(23 downto 0);
  signal c_101_100_0_False_shift: signed(23 downto 0);
  signal c_101_sel: std_logic_vector(0 downto 0);
  signal c_102: signed(23 downto 0);
  signal c_102_30_0_False_resize: signed(23 downto 0);
  signal c_102_30_0_False_shift: signed(23 downto 0);
  signal c_102_48_1_False_resize: signed(23 downto 0);
  signal c_102_48_1_False_shift: signed(23 downto 0);
  signal c_102_41_2_False_resize: signed(23 downto 0);
  signal c_102_41_2_False_shift: signed(23 downto 0);
  signal c_102_sel: std_logic_vector(1 downto 0);
  signal c_103: signed(23 downto 0);
  signal c_104: signed(23 downto 0);
  signal c_105: signed(23 downto 0);
  signal c_105_resize: signed(23 downto 0);
  signal c_106: signed(23 downto 0);
  signal c_106_resize: signed(23 downto 0);
  signal c_107: signed(22 downto 0);
  signal c_108: signed(22 downto 0);
  signal c_109: signed(22 downto 0);
  signal c_110: signed(22 downto 0);
  signal c_111: signed(22 downto 0);
  signal c_112: signed(22 downto 0);
  signal c_113: signed(22 downto 0);
  signal c_113_resize: signed(22 downto 0);
  signal c_114: signed(23 downto 0);
  signal c_115: signed(23 downto 0);
  signal c_115_resize: signed(23 downto 0);
  signal c_116: signed(23 downto 0);
  signal c_117: signed(23 downto 0);
  signal c_118: signed(23 downto 0);
  signal c_119: signed(23 downto 0);
  signal c_120: signed(23 downto 0);
  signal c_120_resize: signed(23 downto 0);
  signal c_121: signed(23 downto 0);
  signal c_121_resize: signed(23 downto 0);
  signal c_122: signed(23 downto 0);
  signal c_123: signed(23 downto 0);
  signal c_124: signed(23 downto 0);
  signal c_124_resize: signed(23 downto 0);
  signal c_125: signed(23 downto 0);
  signal c_125_resize: signed(23 downto 0);
  signal c_126: signed(23 downto 0);
  signal c_126_resize: signed(23 downto 0);
  signal c_127: signed(23 downto 0);
  signal c_128: signed(23 downto 0);
  signal c_129: signed(23 downto 0);
  signal c_129_resize: signed(23 downto 0);
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
  -- output node 0 with id 105
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_105);
    end if;
  end process;
  -- output node 1 with id 106
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_106);
    end if;
  end process;
  -- output node 2 with id 113
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_113);
    end if;
  end process;
  -- output node 3 with id 115
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_115);
    end if;
  end process;
  -- output node 4 with id 120
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_120);
    end if;
  end process;
  -- output node 5 with id 121
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_121);
    end if;
  end process;
  -- output node 6 with id 124
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_124);
    end if;
  end process;
  -- output node 7 with id 125
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_125);
    end if;
  end process;
  -- output node 8 with id 126
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_126);
    end if;
  end process;
  -- output node 9 with id 129
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_129);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [2], [2]]
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "10",
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
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[9], [10], [6]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 17,
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
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[16], [1], [1]]
  c_4_0_0_False_resize <= resize(c_0, 20);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_4_False_resize <= resize(c_0, 20);
  c_4_0_4_False_shift <= shift_left(c_4_0_4_False_resize, 4);
  with config_select_1 select c_4_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_0_False_shift;
        when others => c_4 <= c_4_0_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[9], [64], [6]]
  c_6_3_0_False_resize <= resize(c_3, 22);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  c_6_5_6_False_resize <= resize(c_5, 22);
  c_6_5_6_False_shift <= shift_left(c_6_5_6_False_resize, 6);
  with config_select_3 select c_6_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_3_0_False_shift;
        when others => c_6 <= c_6_5_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 7 and associated fundamentals [[16], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[16], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_7 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 9 and associated fundamentals [[25], [-63], [7]]
  with config_select_4 select c_9_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 20,
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
      sub_i => c_9_sub_sel,
      x_i => c_8,
      y_i => c_6,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[9], [10], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[9], [10], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 12 and associated fundamentals [[72], [10], [112]]
  c_12_11_0_False_resize <= resize(c_11, 23);
  c_12_11_0_False_shift <= shift_left(c_12_11_0_False_resize, 0);
  c_12_9_4_False_resize <= resize(c_9, 23);
  c_12_9_4_False_shift <= shift_left(c_12_9_4_False_resize, 4);
  c_12_11_3_False_resize <= resize(c_11, 23);
  c_12_11_3_False_shift <= shift_left(c_12_11_3_False_resize, 3);
  with config_select_5 select c_12_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "00" => c_12 <= c_12_11_0_False_shift;
        when "01" => c_12 <= c_12_9_4_False_shift;
        when others => c_12 <= c_12_11_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 13 and associated fundamentals [[25], [-63], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_9 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 14 and associated fundamentals [[97], [73], [105]]
  with config_select_6 select c_14_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_14_sub_sel,
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 15 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 16 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 17 and associated fundamentals [[9], [16], [28]]
  c_17_9_2_False_resize <= c_9(20 downto 0);
  c_17_9_2_False_shift <= shift_left(c_17_9_2_False_resize, 2);
  c_17_16_4_False_resize <= resize(c_16, 21);
  c_17_16_4_False_shift <= shift_left(c_17_16_4_False_resize, 4);
  c_17_11_0_False_resize <= resize(c_11, 21);
  c_17_11_0_False_shift <= shift_left(c_17_11_0_False_resize, 0);
  with config_select_5 select c_17_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "00" => c_17 <= c_17_9_2_False_shift;
        when "01" => c_17 <= c_17_16_4_False_shift;
        when others => c_17 <= c_17_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[9], [10], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 19 and associated fundamentals [[9], [10], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 20 and associated fundamentals [[36], [73], [105]]
  c_20_14_0_False_resize <= c_14;
  c_20_14_0_False_shift <= shift_left(c_20_14_0_False_resize, 0);
  c_20_19_2_False_resize <= resize(c_19, 23);
  c_20_19_2_False_shift <= shift_left(c_20_19_2_False_resize, 2);
  with config_select_7 select c_20_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_14_0_False_shift;
        when others => c_20 <= c_20_19_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 21 and associated fundamentals [[9], [16], [28]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 22 and associated fundamentals [[9], [16], [28]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 23 and associated fundamentals [[-27], [89], [-77]]
  with config_select_8 select c_23_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 23,
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
      sub_i => c_23_sub_sel,
      x_i => c_22,
      y_i => c_20,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 24 and associated fundamentals [[97], [73], [105]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 25 and associated fundamentals [[97], [73], [105]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 26 and associated fundamentals [[-27], [89], [210]]
  c_26_23_0_False_resize <= resize(c_23, 24);
  c_26_23_0_False_shift <= shift_left(c_26_23_0_False_resize, 0);
  c_26_25_1_False_resize <= resize(c_25, 24);
  c_26_25_1_False_shift <= shift_left(c_26_25_1_False_resize, 1);
  with config_select_9 select c_26_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_23_0_False_shift;
        when others => c_26 <= c_26_25_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 27 and associated fundamentals [[9], [10], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 28 and associated fundamentals [[9], [10], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 29 and associated fundamentals [[-216], [10], [6]]
  c_29_23_3_False_resize <= resize(c_23, 24);
  c_29_23_3_False_shift <= shift_left(c_29_23_3_False_resize, 3);
  c_29_28_0_False_resize <= resize(c_28, 24);
  c_29_28_0_False_shift <= shift_left(c_29_28_0_False_resize, 0);
  with config_select_9 select c_29_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_23_3_False_shift;
        when others => c_29 <= c_29_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 30 and associated fundamentals [[189], [99], [216]]
  with config_select_10 select c_30_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_30: entity work.adder_node
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
      sub_i => c_30_sub_sel,
      x_i => c_26,
      y_i => c_29,
      z_o => c_30_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_30_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 31 and associated fundamentals [[50], [1], [14]]
  c_31_9_1_False_resize <= c_9;
  c_31_9_1_False_shift <= shift_left(c_31_9_1_False_resize, 1);
  c_31_16_0_False_resize <= resize(c_16, 22);
  c_31_16_0_False_shift <= shift_left(c_31_16_0_False_resize, 0);
  with config_select_5 select c_31_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_9_1_False_shift;
        when others => c_31 <= c_31_16_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 32 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 33 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 34 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 35 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 36 and associated fundamentals [[-27], [89], [32]]
  c_36_23_0_False_resize <= c_23;
  c_36_23_0_False_shift <= shift_left(c_36_23_0_False_resize, 0);
  c_36_35_5_False_resize <= resize(c_35, 23);
  c_36_35_5_False_shift <= shift_left(c_36_35_5_False_resize, 5);
  with config_select_9 select c_36_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "0" => c_36 <= c_36_23_0_False_shift;
        when others => c_36 <= c_36_35_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 37 and associated fundamentals [[50], [1], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 38 and associated fundamentals [[50], [1], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 39 and associated fundamentals [[50], [1], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 40 and associated fundamentals [[50], [1], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 41 and associated fundamentals [[127], [91], [60]]
  with config_select_10 select c_41_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_41: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_41_sub_sel,
      x_i => c_40,
      y_i => c_36,
      z_o => c_41_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_41_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 42 and associated fundamentals [[25], [-63], [2]]
  c_42_9_0_False_resize <= c_9;
  c_42_9_0_False_shift <= shift_left(c_42_9_0_False_resize, 0);
  c_42_16_1_False_resize <= resize(c_16, 22);
  c_42_16_1_False_shift <= shift_left(c_42_16_1_False_resize, 1);
  with config_select_5 select c_42_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "0" => c_42 <= c_42_9_0_False_shift;
        when others => c_42 <= c_42_16_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 43 and associated fundamentals [[-27], [178], [-77]]
  c_43_23_0_False_resize <= resize(c_23, 24);
  c_43_23_0_False_shift <= shift_left(c_43_23_0_False_resize, 0);
  c_43_23_1_False_resize <= resize(c_23, 24);
  c_43_23_1_False_shift <= shift_left(c_43_23_1_False_resize, 1);
  with config_select_9 select c_43_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "0" => c_43 <= c_43_23_0_False_shift;
        when others => c_43 <= c_43_23_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 44 and associated fundamentals [[25], [-63], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 45 and associated fundamentals [[25], [-63], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 46 and associated fundamentals [[25], [-63], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 47 and associated fundamentals [[25], [-63], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 48 and associated fundamentals [[52], [115], [79]]
  with config_select_10 select c_48_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_48: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_48_sub_sel,
      x_i => c_47,
      y_i => c_43,
      z_o => c_48_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_48_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 49 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 50 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 51 and associated fundamentals [[52], [16], [79]]
  c_51_48_0_False_resize <= c_48;
  c_51_48_0_False_shift <= shift_left(c_51_48_0_False_resize, 0);
  c_51_50_4_False_resize <= resize(c_50, 23);
  c_51_50_4_False_shift <= shift_left(c_51_50_4_False_resize, 4);
  with config_select_11 select c_51_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_51_sel is
        when "0" => c_51 <= c_51_48_0_False_shift;
        when others => c_51 <= c_51_50_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 52 and associated fundamentals [[1], [73], [105]]
  c_52_14_0_False_resize <= c_14;
  c_52_14_0_False_shift <= shift_left(c_52_14_0_False_resize, 0);
  c_52_33_0_False_resize <= resize(c_33, 23);
  c_52_33_0_False_shift <= shift_left(c_52_33_0_False_resize, 0);
  with config_select_7 select c_52_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_52_sel is
        when "0" => c_52 <= c_52_14_0_False_shift;
        when others => c_52 <= c_52_33_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 53 and associated fundamentals [[1], [73], [105]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 54 and associated fundamentals [[1], [73], [105]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 55 and associated fundamentals [[1], [73], [105]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 56 and associated fundamentals [[1], [73], [105]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 57 and associated fundamentals [[207], [137], [211]]
  with config_select_12 select c_57_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_57: entity work.adder_node
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
      sub_i => c_57_sub_sel,
      x_i => c_51,
      y_i => c_56,
      z_o => c_57_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_57_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 58 and associated fundamentals [[9], [10], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 59 and associated fundamentals [[9], [10], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 60 and associated fundamentals [[52], [160], [79]]
  c_60_48_0_False_resize <= resize(c_48, 24);
  c_60_48_0_False_shift <= shift_left(c_60_48_0_False_resize, 0);
  c_60_59_4_False_resize <= resize(c_59, 24);
  c_60_59_4_False_shift <= shift_left(c_60_59_4_False_resize, 4);
  with config_select_11 select c_60_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_60_sel is
        when "0" => c_60 <= c_60_48_0_False_shift;
        when others => c_60 <= c_60_59_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 61 and associated fundamentals [[-27], [89], [-77]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 62 and associated fundamentals [[-27], [89], [-77]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 63 and associated fundamentals [[-27], [115], [-77]]
  c_63_48_0_False_resize <= c_48;
  c_63_48_0_False_shift <= shift_left(c_63_48_0_False_resize, 0);
  c_63_62_0_False_resize <= c_62;
  c_63_62_0_False_shift <= shift_left(c_63_62_0_False_resize, 0);
  with config_select_11 select c_63_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_63_sel is
        when "0" => c_63 <= c_63_48_0_False_shift;
        when others => c_63 <= c_63_62_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 12 with id 64 and associated fundamentals [[131], [205], [235]]
  inst_adder_node_64: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
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
      x_i => c_60,
      y_i => c_63,
      z_o => c_64_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_64_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 65 and associated fundamentals [[18], [91], [60]]
  c_65_41_0_False_resize <= c_41;
  c_65_41_0_False_shift <= shift_left(c_65_41_0_False_resize, 0);
  c_65_59_1_False_resize <= resize(c_59, 23);
  c_65_59_1_False_shift <= shift_left(c_65_59_1_False_resize, 1);
  with config_select_11 select c_65_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_65_sel is
        when "0" => c_65 <= c_65_41_0_False_shift;
        when others => c_65 <= c_65_59_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 66 and associated fundamentals [[1], [2], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 67 and associated fundamentals [[1], [2], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 68 and associated fundamentals [[1], [2], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 69 and associated fundamentals [[1], [2], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 70 and associated fundamentals [[1], [2], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 71 and associated fundamentals [[1], [2], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 72 and associated fundamentals [[1], [2], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 73 and associated fundamentals [[1], [2], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_72 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 74 and associated fundamentals [[1], [2], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 75 and associated fundamentals [[1], [2], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 76 and associated fundamentals [[37], [184], [118]]
  with config_select_12 select c_76_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_76: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 17,
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
      sub_i => c_76_sub_sel,
      x_i => c_65,
      y_i => c_75,
      z_o => c_76_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_76_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 77 and associated fundamentals [[127], [91], [192]]
  c_77_41_0_False_resize <= resize(c_41, 24);
  c_77_41_0_False_shift <= shift_left(c_77_41_0_False_resize, 0);
  c_77_59_5_False_resize <= resize(c_59, 24);
  c_77_59_5_False_shift <= shift_left(c_77_59_5_False_resize, 5);
  with config_select_11 select c_77_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_77_sel is
        when "0" => c_77 <= c_77_41_0_False_shift;
        when others => c_77 <= c_77_59_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 78 and associated fundamentals [[9], [10], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 79 and associated fundamentals [[9], [10], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 80 and associated fundamentals [[52], [115], [79]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 81 and associated fundamentals [[52], [115], [79]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_80 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 82 and associated fundamentals [[72], [205], [158]]
  c_82_64_0_False_resize <= c_64;
  c_82_64_0_False_shift <= shift_left(c_82_64_0_False_resize, 0);
  c_82_81_1_False_resize <= resize(c_81, 24);
  c_82_81_1_False_shift <= shift_left(c_82_81_1_False_resize, 1);
  c_82_79_3_False_resize <= resize(c_79, 24);
  c_82_79_3_False_shift <= shift_left(c_82_79_3_False_resize, 3);
  with config_select_13 select c_82_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_82_sel is
        when "00" => c_82 <= c_82_64_0_False_shift;
        when "01" => c_82 <= c_82_81_1_False_shift;
        when others => c_82 <= c_82_79_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 83 and associated fundamentals [[97], [40], [105]]
  c_83_14_0_False_resize <= c_14;
  c_83_14_0_False_shift <= shift_left(c_83_14_0_False_resize, 0);
  c_83_19_2_False_resize <= resize(c_19, 23);
  c_83_19_2_False_shift <= shift_left(c_83_19_2_False_resize, 2);
  with config_select_7 select c_83_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_83_sel is
        when "0" => c_83 <= c_83_14_0_False_shift;
        when others => c_83 <= c_83_19_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 84 and associated fundamentals [[25], [-63], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 85 and associated fundamentals [[25], [-63], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_84 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 86 and associated fundamentals [[25], [-63], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_85 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 87 and associated fundamentals [[-27], [-126], [-154]]
  c_87_23_1_False_resize <= resize(c_23, 24);
  c_87_23_1_False_shift <= shift_left(c_87_23_1_False_resize, 1);
  c_87_86_1_False_resize <= resize(c_86, 24);
  c_87_86_1_False_shift <= shift_left(c_87_86_1_False_resize, 1);
  c_87_23_0_False_resize <= resize(c_23, 24);
  c_87_23_0_False_shift <= shift_left(c_87_23_0_False_resize, 0);
  with config_select_9 select c_87_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_87_sel is
        when "00" => c_87 <= c_87_23_1_False_shift;
        when "01" => c_87 <= c_87_86_1_False_shift;
        when others => c_87 <= c_87_23_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 88 and associated fundamentals [[25], [-63], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_86 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 89 and associated fundamentals [[25], [-63], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_88 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 90 and associated fundamentals [[25], [-63], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_89 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 91 and associated fundamentals [[25], [-63], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_90 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 92 and associated fundamentals [[25], [137], [7]]
  c_92_91_0_False_resize <= resize(c_91, 24);
  c_92_91_0_False_shift <= shift_left(c_92_91_0_False_resize, 0);
  c_92_57_0_False_resize <= c_57;
  c_92_57_0_False_shift <= shift_left(c_92_57_0_False_resize, 0);
  with config_select_13 select c_92_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_92_sel is
        when "0" => c_92 <= c_92_91_0_False_shift;
        when others => c_92 <= c_92_57_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 93 and associated fundamentals [[52], [99], [216]]
  c_93_30_0_False_resize <= c_30;
  c_93_30_0_False_shift <= shift_left(c_93_30_0_False_resize, 0);
  c_93_48_0_False_resize <= resize(c_48, 24);
  c_93_48_0_False_shift <= shift_left(c_93_48_0_False_resize, 0);
  with config_select_11 select c_93_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_93_sel is
        when "0" => c_93 <= c_93_30_0_False_shift;
        when others => c_93 <= c_93_48_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 94 and associated fundamentals [[97], [73], [105]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 95 and associated fundamentals [[97], [73], [105]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_94 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 96 and associated fundamentals [[97], [73], [105]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_95 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 97 and associated fundamentals [[97], [73], [105]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_96 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 98 and associated fundamentals [[207], [146], [211]]
  c_98_57_0_False_resize <= c_57;
  c_98_57_0_False_shift <= shift_left(c_98_57_0_False_resize, 0);
  c_98_97_1_False_resize <= resize(c_97, 24);
  c_98_97_1_False_shift <= shift_left(c_98_97_1_False_resize, 1);
  with config_select_13 select c_98_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_98_sel is
        when "0" => c_98 <= c_98_57_0_False_shift;
        when others => c_98 <= c_98_97_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 99 and associated fundamentals [[-27], [89], [-77]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 100 and associated fundamentals [[-27], [89], [-77]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_99 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 101 and associated fundamentals [[131], [89], [235]]
  c_101_64_0_False_resize <= c_64;
  c_101_64_0_False_shift <= shift_left(c_101_64_0_False_resize, 0);
  c_101_100_0_False_resize <= resize(c_100, 24);
  c_101_100_0_False_shift <= shift_left(c_101_100_0_False_resize, 0);
  with config_select_13 select c_101_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_101_sel is
        when "0" => c_101 <= c_101_64_0_False_shift;
        when others => c_101 <= c_101_100_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 102 and associated fundamentals [[189], [230], [240]]
  c_102_30_0_False_resize <= c_30;
  c_102_30_0_False_shift <= shift_left(c_102_30_0_False_resize, 0);
  c_102_48_1_False_resize <= resize(c_48, 24);
  c_102_48_1_False_shift <= shift_left(c_102_48_1_False_resize, 1);
  c_102_41_2_False_resize <= resize(c_41, 24);
  c_102_41_2_False_shift <= shift_left(c_102_41_2_False_resize, 2);
  with config_select_11 select c_102_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_102_sel is
        when "00" => c_102 <= c_102_30_0_False_shift;
        when "01" => c_102 <= c_102_48_1_False_shift;
        when others => c_102 <= c_102_41_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 103 and associated fundamentals [[127], [91], [192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 104 and associated fundamentals [[127], [91], [192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_103 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 105 and associated fundamentals [[127], [91], [192]]
  c_105_resize <= c_104;
  c_105 <= shift_left(c_105_resize, 0);
  -- node of type 'output' in stage 13 with id 106 and associated fundamentals [[72], [205], [158]]
  c_106_resize <= c_82;
  c_106 <= shift_left(c_106_resize, 0);
  -- node of type 'register' in stage 8 with id 107 and associated fundamentals [[97], [40], [105]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_83 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 108 and associated fundamentals [[97], [40], [105]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_108 <= c_107 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 109 and associated fundamentals [[97], [40], [105]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_109 <= c_108 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 110 and associated fundamentals [[97], [40], [105]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_110 <= c_109 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 111 and associated fundamentals [[97], [40], [105]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_110 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 112 and associated fundamentals [[97], [40], [105]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_111 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 113 and associated fundamentals [[97], [40], [105]]
  c_113_resize <= c_112;
  c_113 <= shift_left(c_113_resize, 0);
  -- node of type 'register' in stage 13 with id 114 and associated fundamentals [[37], [184], [118]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_76 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 115 and associated fundamentals [[37], [184], [118]]
  c_115_resize <= c_114;
  c_115 <= shift_left(c_115_resize, 0);
  -- node of type 'register' in stage 10 with id 116 and associated fundamentals [[-27], [-126], [-154]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_116 <= c_87 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 117 and associated fundamentals [[-27], [-126], [-154]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_117 <= c_116 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 118 and associated fundamentals [[-27], [-126], [-154]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_118 <= c_117 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 119 and associated fundamentals [[-27], [-126], [-154]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_119 <= c_118 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 120 and associated fundamentals [[27], [126], [154]]
  c_120_resize <= c_119;
  c_120 <= -shift_left(c_120_resize, 0);
  -- node of type 'output' in stage 13 with id 121 and associated fundamentals [[25], [137], [7]]
  c_121_resize <= c_92;
  c_121 <= shift_left(c_121_resize, 0);
  -- node of type 'register' in stage 12 with id 122 and associated fundamentals [[52], [99], [216]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_122 <= c_93 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 123 and associated fundamentals [[52], [99], [216]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_123 <= c_122 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 124 and associated fundamentals [[52], [99], [216]]
  c_124_resize <= c_123;
  c_124 <= shift_left(c_124_resize, 0);
  -- node of type 'output' in stage 13 with id 125 and associated fundamentals [[207], [146], [211]]
  c_125_resize <= c_98;
  c_125 <= shift_left(c_125_resize, 0);
  -- node of type 'output' in stage 13 with id 126 and associated fundamentals [[131], [89], [235]]
  c_126_resize <= c_101;
  c_126 <= shift_left(c_126_resize, 0);
  -- node of type 'register' in stage 12 with id 127 and associated fundamentals [[189], [230], [240]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_127 <= c_102 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 128 and associated fundamentals [[189], [230], [240]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_128 <= c_127 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 129 and associated fundamentals [[189], [230], [240]]
  c_129_resize <= c_128;
  c_129 <= shift_left(c_129_resize, 0);
end architecture;
