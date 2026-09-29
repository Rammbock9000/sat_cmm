library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(25 downto 0);
    y_3: out std_logic_vector(25 downto 0);
    y_4: out std_logic_vector(24 downto 0);
    y_5: out std_logic_vector(25 downto 0);
    y_6: out std_logic_vector(24 downto 0);
    y_7: out std_logic_vector(24 downto 0);
    y_8: out std_logic_vector(25 downto 0);
    y_9: out std_logic_vector(24 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_0_0_False_resize: signed(18 downto 0);
  signal c_1_0_0_False_shift: signed(18 downto 0);
  signal c_1_0_3_False_resize: signed(18 downto 0);
  signal c_1_0_3_False_shift: signed(18 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_4: signed(19 downto 0);
  signal c_4_0_4_False_resize: signed(19 downto 0);
  signal c_4_0_4_False_shift: signed(19 downto 0);
  signal c_4_0_0_False_resize: signed(19 downto 0);
  signal c_4_0_0_False_shift: signed(19 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(19 downto 0);
  signal c_6: signed(21 downto 0);
  signal c_6_i0_resize: signed(21 downto 0);
  signal c_6_i1_resize: signed(21 downto 0);
  signal c_6_i0_shift: signed(21 downto 0);
  signal c_6_i1_shift: signed(21 downto 0);
  signal c_6_arith: signed(21 downto 0);
  signal c_6_oshift: signed(21 downto 0);
  signal c_7: signed(21 downto 0);
  signal c_8: signed(21 downto 0);
  signal c_8_7_0_False_resize: signed(21 downto 0);
  signal c_8_7_0_False_shift: signed(21 downto 0);
  signal c_8_6_0_False_resize: signed(21 downto 0);
  signal c_8_6_0_False_shift: signed(21 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(15 downto 0);
  signal c_10: signed(15 downto 0);
  signal c_11: signed(15 downto 0);
  signal c_12: signed(24 downto 0);
  signal c_12_i0_resize: signed(24 downto 0);
  signal c_12_i1_resize: signed(24 downto 0);
  signal c_12_i0_shift: signed(24 downto 0);
  signal c_12_i1_shift: signed(24 downto 0);
  signal c_12_arith: signed(24 downto 0);
  signal c_12_oshift: signed(24 downto 0);
  signal c_13: signed(16 downto 0);
  signal c_13_0_1_False_resize: signed(16 downto 0);
  signal c_13_0_1_False_shift: signed(16 downto 0);
  signal c_13_0_0_False_resize: signed(16 downto 0);
  signal c_13_0_0_False_shift: signed(16 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_14_10_7_False_resize: signed(22 downto 0);
  signal c_14_10_7_False_shift: signed(22 downto 0);
  signal c_14_6_0_False_resize: signed(22 downto 0);
  signal c_14_6_0_False_shift: signed(22 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(16 downto 0);
  signal c_16: signed(16 downto 0);
  signal c_17: signed(16 downto 0);
  signal c_18: signed(22 downto 0);
  signal c_18_i0_resize: signed(22 downto 0);
  signal c_18_i1_resize: signed(22 downto 0);
  signal c_18_i0_shift: signed(22 downto 0);
  signal c_18_i1_shift: signed(22 downto 0);
  signal c_18_arith: signed(22 downto 0);
  signal c_18_oshift: signed(22 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(21 downto 0);
  signal c_20: signed(21 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_21_18_0_False_resize: signed(22 downto 0);
  signal c_21_18_0_False_shift: signed(22 downto 0);
  signal c_21_20_2_False_resize: signed(22 downto 0);
  signal c_21_20_2_False_shift: signed(22 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(21 downto 0);
  signal c_23: signed(24 downto 0);
  signal c_23_i0_resize: signed(24 downto 0);
  signal c_23_i1_resize: signed(24 downto 0);
  signal c_23_i0_shift: signed(24 downto 0);
  signal c_23_i1_shift: signed(24 downto 0);
  signal c_23_arith: signed(24 downto 0);
  signal c_23_oshift: signed(24 downto 0);
  signal c_24: signed(15 downto 0);
  signal c_25: signed(21 downto 0);
  signal c_25_12_0_False_resize: signed(21 downto 0);
  signal c_25_12_0_False_shift: signed(21 downto 0);
  signal c_25_24_6_False_resize: signed(21 downto 0);
  signal c_25_24_6_False_shift: signed(21 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(21 downto 0);
  signal c_26_20_0_False_resize: signed(21 downto 0);
  signal c_26_20_0_False_shift: signed(21 downto 0);
  signal c_26_18_0_False_resize: signed(21 downto 0);
  signal c_26_18_0_False_shift: signed(21 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_i0_resize: signed(23 downto 0);
  signal c_27_i1_resize: signed(23 downto 0);
  signal c_27_i0_shift: signed(23 downto 0);
  signal c_27_i1_shift: signed(23 downto 0);
  signal c_27_arith: signed(23 downto 0);
  signal c_27_oshift: signed(23 downto 0);
  signal c_28: signed(21 downto 0);
  signal c_29: signed(21 downto 0);
  signal c_30: signed(21 downto 0);
  signal c_31: signed(21 downto 0);
  signal c_32: signed(22 downto 0);
  signal c_32_23_0_False_resize: signed(22 downto 0);
  signal c_32_23_0_False_shift: signed(22 downto 0);
  signal c_32_31_0_False_resize: signed(22 downto 0);
  signal c_32_31_0_False_shift: signed(22 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(15 downto 0);
  signal c_34: signed(15 downto 0);
  signal c_35: signed(22 downto 0);
  signal c_35_27_0_False_resize: signed(22 downto 0);
  signal c_35_27_0_False_shift: signed(22 downto 0);
  signal c_35_34_2_False_resize: signed(22 downto 0);
  signal c_35_34_2_False_shift: signed(22 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(24 downto 0);
  signal c_36_i0_resize: signed(24 downto 0);
  signal c_36_i1_resize: signed(24 downto 0);
  signal c_36_i0_shift: signed(24 downto 0);
  signal c_36_i1_shift: signed(24 downto 0);
  signal c_36_arith: signed(24 downto 0);
  signal c_36_oshift: signed(24 downto 0);
  signal c_36_sub_sel: std_logic;
  signal c_37: signed(24 downto 0);
  signal c_38: signed(24 downto 0);
  signal c_39: signed(24 downto 0);
  signal c_40: signed(24 downto 0);
  signal c_41: signed(21 downto 0);
  signal c_41_36_0_False_resize: signed(21 downto 0);
  signal c_41_36_0_False_shift: signed(21 downto 0);
  signal c_41_40_0_False_resize: signed(21 downto 0);
  signal c_41_40_0_False_shift: signed(21 downto 0);
  signal c_41_sel: std_logic_vector(0 downto 0);
  signal c_42: signed(22 downto 0);
  signal c_43: signed(22 downto 0);
  signal c_44: signed(24 downto 0);
  signal c_44_43_0_False_resize: signed(24 downto 0);
  signal c_44_43_0_False_shift: signed(24 downto 0);
  signal c_44_27_2_False_resize: signed(24 downto 0);
  signal c_44_27_2_False_shift: signed(24 downto 0);
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
  signal c_48: signed(22 downto 0);
  signal c_49: signed(22 downto 0);
  signal c_50: signed(21 downto 0);
  signal c_50_36_0_False_resize: signed(21 downto 0);
  signal c_50_36_0_False_shift: signed(21 downto 0);
  signal c_50_49_0_False_resize: signed(21 downto 0);
  signal c_50_49_0_False_shift: signed(21 downto 0);
  signal c_50_sel: std_logic_vector(0 downto 0);
  signal c_51: signed(21 downto 0);
  signal c_52: signed(21 downto 0);
  signal c_53: signed(21 downto 0);
  signal c_54: signed(24 downto 0);
  signal c_54_i0_resize: signed(24 downto 0);
  signal c_54_i1_resize: signed(24 downto 0);
  signal c_54_i0_shift: signed(24 downto 0);
  signal c_54_i1_shift: signed(24 downto 0);
  signal c_54_arith: signed(24 downto 0);
  signal c_54_oshift: signed(24 downto 0);
  signal c_55: signed(21 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_56_i0_resize: signed(23 downto 0);
  signal c_56_i1_resize: signed(23 downto 0);
  signal c_56_i0_shift: signed(23 downto 0);
  signal c_56_i1_shift: signed(23 downto 0);
  signal c_56_arith: signed(23 downto 0);
  signal c_56_oshift: signed(23 downto 0);
  signal c_56_sub_sel: std_logic;
  signal c_57: signed(24 downto 0);
  signal c_57_23_2_False_resize: signed(24 downto 0);
  signal c_57_23_2_False_shift: signed(24 downto 0);
  signal c_57_38_0_False_resize: signed(24 downto 0);
  signal c_57_38_0_False_shift: signed(24 downto 0);
  signal c_57_sel: std_logic_vector(0 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_58_i0_resize: signed(25 downto 0);
  signal c_58_i1_resize: signed(25 downto 0);
  signal c_58_i0_shift: signed(25 downto 0);
  signal c_58_i1_shift: signed(25 downto 0);
  signal c_58_arith: signed(25 downto 0);
  signal c_58_oshift: signed(25 downto 0);
  signal c_58_sub_sel: std_logic;
  signal c_59: signed(25 downto 0);
  signal c_60: signed(25 downto 0);
  signal c_61: signed(25 downto 0);
  signal c_61_60_0_False_resize: signed(25 downto 0);
  signal c_61_60_0_False_shift: signed(25 downto 0);
  signal c_61_54_1_False_resize: signed(25 downto 0);
  signal c_61_54_1_False_shift: signed(25 downto 0);
  signal c_61_sel: std_logic_vector(0 downto 0);
  signal c_62: signed(23 downto 0);
  signal c_62_10_0_False_resize: signed(23 downto 0);
  signal c_62_10_0_False_shift: signed(23 downto 0);
  signal c_62_6_2_False_resize: signed(23 downto 0);
  signal c_62_6_2_False_shift: signed(23 downto 0);
  signal c_62_sel: std_logic_vector(0 downto 0);
  signal c_63: signed(23 downto 0);
  signal c_64: signed(23 downto 0);
  signal c_65: signed(23 downto 0);
  signal c_66: signed(23 downto 0);
  signal c_67: signed(23 downto 0);
  signal c_68: signed(23 downto 0);
  signal c_69: signed(23 downto 0);
  signal c_70: signed(23 downto 0);
  signal c_71: signed(25 downto 0);
  signal c_71_i0_resize: signed(25 downto 0);
  signal c_71_i1_resize: signed(25 downto 0);
  signal c_71_i0_shift: signed(25 downto 0);
  signal c_71_i1_shift: signed(25 downto 0);
  signal c_71_arith: signed(25 downto 0);
  signal c_71_oshift: signed(25 downto 0);
  signal c_72: signed(22 downto 0);
  signal c_72_24_0_False_resize: signed(22 downto 0);
  signal c_72_24_0_False_shift: signed(22 downto 0);
  signal c_72_18_1_False_resize: signed(22 downto 0);
  signal c_72_18_1_False_shift: signed(22 downto 0);
  signal c_72_sel: std_logic_vector(0 downto 0);
  signal c_73: signed(24 downto 0);
  signal c_73_i0_resize: signed(24 downto 0);
  signal c_73_i1_resize: signed(24 downto 0);
  signal c_73_i0_shift: signed(24 downto 0);
  signal c_73_i1_shift: signed(24 downto 0);
  signal c_73_arith: signed(24 downto 0);
  signal c_73_oshift: signed(24 downto 0);
  signal c_74: signed(24 downto 0);
  signal c_75: signed(24 downto 0);
  signal c_76: signed(24 downto 0);
  signal c_77: signed(24 downto 0);
  signal c_78: signed(25 downto 0);
  signal c_78_47_0_False_resize: signed(25 downto 0);
  signal c_78_47_0_False_shift: signed(25 downto 0);
  signal c_78_77_0_False_resize: signed(25 downto 0);
  signal c_78_77_0_False_shift: signed(25 downto 0);
  signal c_78_sel: std_logic_vector(0 downto 0);
  signal c_79: signed(23 downto 0);
  signal c_80: signed(23 downto 0);
  signal c_81: signed(23 downto 0);
  signal c_82: signed(23 downto 0);
  signal c_83: signed(25 downto 0);
  signal c_83_54_1_False_resize: signed(25 downto 0);
  signal c_83_54_1_False_shift: signed(25 downto 0);
  signal c_83_82_0_False_resize: signed(25 downto 0);
  signal c_83_82_0_False_shift: signed(25 downto 0);
  signal c_83_sel: std_logic_vector(0 downto 0);
  signal c_84: signed(24 downto 0);
  signal c_84_43_1_False_resize: signed(24 downto 0);
  signal c_84_43_1_False_shift: signed(24 downto 0);
  signal c_84_73_0_False_resize: signed(24 downto 0);
  signal c_84_73_0_False_shift: signed(24 downto 0);
  signal c_84_sel: std_logic_vector(0 downto 0);
  signal c_85: signed(23 downto 0);
  signal c_86: signed(23 downto 0);
  signal c_87: signed(23 downto 0);
  signal c_88: signed(25 downto 0);
  signal c_88_87_0_False_resize: signed(25 downto 0);
  signal c_88_87_0_False_shift: signed(25 downto 0);
  signal c_88_47_1_False_resize: signed(25 downto 0);
  signal c_88_47_1_False_shift: signed(25 downto 0);
  signal c_88_sel: std_logic_vector(0 downto 0);
  signal c_89: signed(24 downto 0);
  signal c_89_54_0_False_resize: signed(24 downto 0);
  signal c_89_54_0_False_shift: signed(24 downto 0);
  signal c_89_77_1_False_resize: signed(24 downto 0);
  signal c_89_77_1_False_shift: signed(24 downto 0);
  signal c_89_sel: std_logic_vector(0 downto 0);
  signal c_90: signed(24 downto 0);
  signal c_90_31_0_False_resize: signed(24 downto 0);
  signal c_90_31_0_False_shift: signed(24 downto 0);
  signal c_90_27_2_False_resize: signed(24 downto 0);
  signal c_90_27_2_False_shift: signed(24 downto 0);
  signal c_90_sel: std_logic_vector(0 downto 0);
  signal c_91: signed(24 downto 0);
  signal c_92: signed(25 downto 0);
  signal c_92_91_0_False_resize: signed(25 downto 0);
  signal c_92_91_0_False_shift: signed(25 downto 0);
  signal c_92_56_2_False_resize: signed(25 downto 0);
  signal c_92_56_2_False_shift: signed(25 downto 0);
  signal c_92_sel: std_logic_vector(0 downto 0);
  signal c_93: signed(24 downto 0);
  signal c_93_40_0_False_resize: signed(24 downto 0);
  signal c_93_40_0_False_shift: signed(24 downto 0);
  signal c_93_36_0_False_resize: signed(24 downto 0);
  signal c_93_36_0_False_shift: signed(24 downto 0);
  signal c_93_sel: std_logic_vector(0 downto 0);
  signal c_94: signed(25 downto 0);
  signal c_95: signed(25 downto 0);
  signal c_95_resize: signed(25 downto 0);
  signal c_96: signed(25 downto 0);
  signal c_96_resize: signed(25 downto 0);
  signal c_97: signed(25 downto 0);
  signal c_98: signed(25 downto 0);
  signal c_98_resize: signed(25 downto 0);
  signal c_99: signed(25 downto 0);
  signal c_100: signed(25 downto 0);
  signal c_101: signed(25 downto 0);
  signal c_101_resize: signed(25 downto 0);
  signal c_102: signed(24 downto 0);
  signal c_103: signed(24 downto 0);
  signal c_104: signed(24 downto 0);
  signal c_105: signed(24 downto 0);
  signal c_106: signed(24 downto 0);
  signal c_107: signed(24 downto 0);
  signal c_107_resize: signed(24 downto 0);
  signal c_108: signed(25 downto 0);
  signal c_109: signed(25 downto 0);
  signal c_109_resize: signed(25 downto 0);
  signal c_110: signed(24 downto 0);
  signal c_111: signed(24 downto 0);
  signal c_111_resize: signed(24 downto 0);
  signal c_112: signed(24 downto 0);
  signal c_113: signed(24 downto 0);
  signal c_114: signed(24 downto 0);
  signal c_115: signed(24 downto 0);
  signal c_116: signed(24 downto 0);
  signal c_117: signed(24 downto 0);
  signal c_117_resize: signed(24 downto 0);
  signal c_118: signed(25 downto 0);
  signal c_119: signed(25 downto 0);
  signal c_120: signed(25 downto 0);
  signal c_121: signed(25 downto 0);
  signal c_122: signed(25 downto 0);
  signal c_122_resize: signed(25 downto 0);
  signal c_123: signed(24 downto 0);
  signal c_124: signed(24 downto 0);
  signal c_125: signed(24 downto 0);
  signal c_126: signed(24 downto 0);
  signal c_126_resize: signed(24 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 95
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_95);
    end if;
  end process;
  -- output node 1 with id 96
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_96);
    end if;
  end process;
  -- output node 2 with id 98
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_98);
    end if;
  end process;
  -- output node 3 with id 101
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_101);
    end if;
  end process;
  -- output node 4 with id 107
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_107);
    end if;
  end process;
  -- output node 5 with id 109
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_109);
    end if;
  end process;
  -- output node 6 with id 111
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_111);
    end if;
  end process;
  -- output node 7 with id 117
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_117);
    end if;
  end process;
  -- output node 8 with id 122
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_122);
    end if;
  end process;
  -- output node 9 with id 126
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_126);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[8], [1]]
  c_1_0_0_False_resize <= resize(c_0, 19);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_3_False_resize <= resize(c_0, 19);
  c_1_0_3_False_shift <= shift_left(c_1_0_3_False_resize, 3);
  with config_select_1 select c_1_sel <= 
    "0" when "1",
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
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 3 and associated fundamentals [[33], [5]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
      w_o => 22,
      s_x_i => 2,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
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
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[1], [16]]
  c_4_0_4_False_resize <= resize(c_0, 20);
  c_4_0_4_False_shift <= shift_left(c_4_0_4_False_resize, 4);
  c_4_0_0_False_resize <= resize(c_0, 20);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  with config_select_1 select c_4_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_4_False_shift;
        when others => c_4 <= c_4_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[1], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 6 and associated fundamentals [[35], [37]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 22,
      w_o => 22,
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
      x_i => c_5,
      y_i => c_3,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 7 and associated fundamentals [[33], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_3 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 8 and associated fundamentals [[35], [5]]
  c_8_7_0_False_resize <= c_7;
  c_8_7_0_False_shift <= shift_left(c_8_7_0_False_resize, 0);
  c_8_6_0_False_resize <= c_6;
  c_8_6_0_False_shift <= shift_left(c_8_6_0_False_resize, 0);
  with config_select_4 select c_8_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_7_0_False_shift;
        when others => c_8 <= c_8_6_0_False_shift;
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
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'add' in stage 5 with id 12 and associated fundamentals [[282], [42]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 22,
      w_o => 25,
      s_x_i => 1,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_11,
      y_i => c_8,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 13 and associated fundamentals [[1], [2]]
  c_13_0_1_False_resize <= resize(c_0, 17);
  c_13_0_1_False_shift <= shift_left(c_13_0_1_False_resize, 1);
  c_13_0_0_False_resize <= resize(c_0, 17);
  c_13_0_0_False_shift <= shift_left(c_13_0_0_False_resize, 0);
  with config_select_1 select c_13_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_0_1_False_shift;
        when others => c_13 <= c_13_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 14 and associated fundamentals [[128], [37]]
  c_14_10_7_False_resize <= resize(c_10, 23);
  c_14_10_7_False_shift <= shift_left(c_14_10_7_False_resize, 7);
  c_14_6_0_False_resize <= resize(c_6, 23);
  c_14_6_0_False_shift <= shift_left(c_14_6_0_False_resize, 0);
  with config_select_4 select c_14_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_10_7_False_shift;
        when others => c_14 <= c_14_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 15 and associated fundamentals [[1], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 16 and associated fundamentals [[1], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 17 and associated fundamentals [[1], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 18 and associated fundamentals [[-120], [53]]
  with config_select_5 select c_18_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 23,
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
      sub_i => c_18_sub_sel,
      x_i => c_17,
      y_i => c_14,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 19 and associated fundamentals [[33], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 20 and associated fundamentals [[33], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 21 and associated fundamentals [[-120], [20]]
  c_21_18_0_False_resize <= c_18;
  c_21_18_0_False_shift <= shift_left(c_21_18_0_False_resize, 0);
  c_21_20_2_False_resize <= resize(c_20, 23);
  c_21_20_2_False_shift <= shift_left(c_21_20_2_False_resize, 2);
  with config_select_6 select c_21_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_18_0_False_shift;
        when others => c_21 <= c_21_20_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 22 and associated fundamentals [[33], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_20 & "";
    end if;
  end process;
  -- node of type 'add' in stage 7 with id 23 and associated fundamentals [[-447], [85]]
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
      w_o => 25,
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
      x_i => c_22,
      y_i => c_21,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 24 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_11 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 25 and associated fundamentals [[64], [42]]
  c_25_12_0_False_resize <= c_12(21 downto 0);
  c_25_12_0_False_shift <= shift_left(c_25_12_0_False_resize, 0);
  c_25_24_6_False_resize <= resize(c_24, 22);
  c_25_24_6_False_shift <= shift_left(c_25_24_6_False_resize, 6);
  with config_select_6 select c_25_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_12_0_False_shift;
        when others => c_25 <= c_25_24_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 26 and associated fundamentals [[33], [53]]
  c_26_20_0_False_resize <= c_20;
  c_26_20_0_False_shift <= shift_left(c_26_20_0_False_resize, 0);
  c_26_18_0_False_resize <= c_18(21 downto 0);
  c_26_18_0_False_shift <= shift_left(c_26_18_0_False_resize, 0);
  with config_select_6 select c_26_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_20_0_False_shift;
        when others => c_26 <= c_26_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 7 with id 27 and associated fundamentals [[223], [115]]
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
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
      x_i => c_25,
      y_i => c_26,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 28 and associated fundamentals [[35], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 29 and associated fundamentals [[35], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 30 and associated fundamentals [[35], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 31 and associated fundamentals [[35], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 32 and associated fundamentals [[35], [85]]
  c_32_23_0_False_resize <= c_23(22 downto 0);
  c_32_23_0_False_shift <= shift_left(c_32_23_0_False_resize, 0);
  c_32_31_0_False_resize <= resize(c_31, 23);
  c_32_31_0_False_shift <= shift_left(c_32_31_0_False_resize, 0);
  with config_select_8 select c_32_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "0" => c_32 <= c_32_23_0_False_shift;
        when others => c_32 <= c_32_31_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 33 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 34 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 35 and associated fundamentals [[4], [115]]
  c_35_27_0_False_resize <= c_27(22 downto 0);
  c_35_27_0_False_shift <= shift_left(c_35_27_0_False_resize, 0);
  c_35_34_2_False_resize <= resize(c_34, 23);
  c_35_34_2_False_shift <= shift_left(c_35_34_2_False_resize, 2);
  with config_select_8 select c_35_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_27_0_False_shift;
        when others => c_35 <= c_35_34_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 36 and associated fundamentals [[27], [315]]
  with config_select_9 select c_36_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_36: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 25,
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
      c_36 <= c_36_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 37 and associated fundamentals [[282], [42]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 38 and associated fundamentals [[282], [42]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 39 and associated fundamentals [[282], [42]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 40 and associated fundamentals [[282], [42]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 41 and associated fundamentals [[27], [42]]
  c_41_36_0_False_resize <= c_36(21 downto 0);
  c_41_36_0_False_shift <= shift_left(c_41_36_0_False_resize, 0);
  c_41_40_0_False_resize <= c_40(21 downto 0);
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
  -- node of type 'register' in stage 6 with id 42 and associated fundamentals [[-120], [53]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 43 and associated fundamentals [[-120], [53]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 44 and associated fundamentals [[-120], [460]]
  c_44_43_0_False_resize <= resize(c_43, 25);
  c_44_43_0_False_shift <= shift_left(c_44_43_0_False_resize, 0);
  c_44_27_2_False_resize <= resize(c_27, 25);
  c_44_27_2_False_shift <= shift_left(c_44_27_2_False_resize, 2);
  with config_select_8 select c_44_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "0" => c_44 <= c_44_43_0_False_shift;
        when others => c_44 <= c_44_27_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 45 and associated fundamentals [[-120], [460]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 46 and associated fundamentals [[-120], [460]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 11 with id 47 and associated fundamentals [[267], [-878]]
  inst_adder_node_47: entity work.adder_node
    generic map (
      w_x_i => 22,
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
  -- node of type 'register' in stage 8 with id 48 and associated fundamentals [[-120], [53]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 49 and associated fundamentals [[-120], [53]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 50 and associated fundamentals [[27], [53]]
  c_50_36_0_False_resize <= c_36(21 downto 0);
  c_50_36_0_False_shift <= shift_left(c_50_36_0_False_resize, 0);
  c_50_49_0_False_resize <= c_49(21 downto 0);
  c_50_49_0_False_shift <= shift_left(c_50_49_0_False_resize, 0);
  with config_select_10 select c_50_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_50_sel is
        when "0" => c_50 <= c_50_36_0_False_shift;
        when others => c_50 <= c_50_49_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 51 and associated fundamentals [[35], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 52 and associated fundamentals [[35], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 53 and associated fundamentals [[35], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'add' in stage 11 with id 54 and associated fundamentals [[307], [349]]
  inst_adder_node_54: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 25,
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
      x_i => c_53,
      y_i => c_50,
      z_o => c_54_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_54_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 55 and associated fundamentals [[33], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_22 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 56 and associated fundamentals [[157], [125]]
  with config_select_8 select c_56_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_56: entity work.adder_node
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
      sub_i => c_56_sub_sel,
      x_i => c_27,
      y_i => c_55,
      z_o => c_56_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_56_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 57 and associated fundamentals [[282], [340]]
  c_57_23_2_False_resize <= c_23;
  c_57_23_2_False_shift <= shift_left(c_57_23_2_False_resize, 2);
  c_57_38_0_False_resize <= c_38;
  c_57_38_0_False_shift <= shift_left(c_57_38_0_False_resize, 0);
  with config_select_8 select c_57_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_57_sel is
        when "0" => c_57 <= c_57_23_2_False_shift;
        when others => c_57 <= c_57_38_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 58 and associated fundamentals [[529], [717]]
  with config_select_9 select c_58_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_58: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 22,
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
      sub_i => c_58_sub_sel,
      x_i => c_57,
      y_i => c_51,
      z_o => c_58_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_58_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 59 and associated fundamentals [[529], [717]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 60 and associated fundamentals [[529], [717]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 61 and associated fundamentals [[614], [717]]
  c_61_60_0_False_resize <= c_60;
  c_61_60_0_False_shift <= shift_left(c_61_60_0_False_resize, 0);
  c_61_54_1_False_resize <= resize(c_54, 26);
  c_61_54_1_False_shift <= shift_left(c_61_54_1_False_resize, 1);
  with config_select_12 select c_61_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_61_sel is
        when "0" => c_61 <= c_61_60_0_False_shift;
        when others => c_61 <= c_61_54_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 62 and associated fundamentals [[1], [148]]
  c_62_10_0_False_resize <= resize(c_10, 24);
  c_62_10_0_False_shift <= shift_left(c_62_10_0_False_resize, 0);
  c_62_6_2_False_resize <= resize(c_6, 24);
  c_62_6_2_False_shift <= shift_left(c_62_6_2_False_resize, 2);
  with config_select_4 select c_62_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_62_sel is
        when "0" => c_62 <= c_62_10_0_False_shift;
        when others => c_62 <= c_62_6_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 63 and associated fundamentals [[1], [148]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 64 and associated fundamentals [[1], [148]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 65 and associated fundamentals [[1], [148]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 66 and associated fundamentals [[1], [148]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 67 and associated fundamentals [[1], [148]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 68 and associated fundamentals [[1], [148]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 69 and associated fundamentals [[1], [148]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 70 and associated fundamentals [[1], [148]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 13 with id 71 and associated fundamentals [[613], [569]]
  inst_adder_node_71: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
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
      x_i => c_61,
      y_i => c_70,
      z_o => c_71_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_71_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 72 and associated fundamentals [[1], [106]]
  c_72_24_0_False_resize <= resize(c_24, 23);
  c_72_24_0_False_shift <= shift_left(c_72_24_0_False_resize, 0);
  c_72_18_1_False_resize <= c_18;
  c_72_18_1_False_shift <= shift_left(c_72_18_1_False_resize, 1);
  with config_select_6 select c_72_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_72_sel is
        when "0" => c_72 <= c_72_24_0_False_shift;
        when others => c_72 <= c_72_18_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 7 with id 73 and associated fundamentals [[286], [466]]
  inst_adder_node_73: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
      w_o => 25,
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
      x_i => c_37,
      y_i => c_72,
      z_o => c_73_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_73_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 74 and associated fundamentals [[-447], [85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 75 and associated fundamentals [[-447], [85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 76 and associated fundamentals [[-447], [85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 77 and associated fundamentals [[-447], [85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 78 and associated fundamentals [[-447], [-878]]
  c_78_47_0_False_resize <= c_47;
  c_78_47_0_False_shift <= shift_left(c_78_47_0_False_resize, 0);
  c_78_77_0_False_resize <= resize(c_77, 26);
  c_78_77_0_False_shift <= shift_left(c_78_77_0_False_resize, 0);
  with config_select_12 select c_78_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_78_sel is
        when "0" => c_78 <= c_78_47_0_False_shift;
        when others => c_78 <= c_78_77_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 79 and associated fundamentals [[223], [115]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 80 and associated fundamentals [[223], [115]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 81 and associated fundamentals [[223], [115]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_80 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 82 and associated fundamentals [[223], [115]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_81 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 83 and associated fundamentals [[223], [698]]
  c_83_54_1_False_resize <= resize(c_54, 26);
  c_83_54_1_False_shift <= shift_left(c_83_54_1_False_resize, 1);
  c_83_82_0_False_resize <= resize(c_82, 26);
  c_83_82_0_False_shift <= shift_left(c_83_82_0_False_resize, 0);
  with config_select_12 select c_83_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_83_sel is
        when "0" => c_83 <= c_83_54_1_False_shift;
        when others => c_83 <= c_83_82_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 84 and associated fundamentals [[286], [106]]
  c_84_43_1_False_resize <= resize(c_43, 25);
  c_84_43_1_False_shift <= shift_left(c_84_43_1_False_resize, 1);
  c_84_73_0_False_resize <= c_73;
  c_84_73_0_False_shift <= shift_left(c_84_73_0_False_resize, 0);
  with config_select_8 select c_84_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_84_sel is
        when "0" => c_84 <= c_84_43_1_False_shift;
        when others => c_84 <= c_84_73_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 85 and associated fundamentals [[157], [125]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 86 and associated fundamentals [[157], [125]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_85 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 87 and associated fundamentals [[157], [125]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_86 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 88 and associated fundamentals [[534], [125]]
  c_88_87_0_False_resize <= resize(c_87, 26);
  c_88_87_0_False_shift <= shift_left(c_88_87_0_False_resize, 0);
  c_88_47_1_False_resize <= c_47;
  c_88_47_1_False_shift <= shift_left(c_88_47_1_False_resize, 1);
  with config_select_12 select c_88_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_88_sel is
        when "0" => c_88 <= c_88_87_0_False_shift;
        when others => c_88 <= c_88_47_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 89 and associated fundamentals [[307], [170]]
  c_89_54_0_False_resize <= c_54;
  c_89_54_0_False_shift <= shift_left(c_89_54_0_False_resize, 0);
  c_89_77_1_False_resize <= c_77;
  c_89_77_1_False_shift <= shift_left(c_89_77_1_False_resize, 1);
  with config_select_12 select c_89_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_89_sel is
        when "0" => c_89 <= c_89_54_0_False_shift;
        when others => c_89 <= c_89_77_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 90 and associated fundamentals [[35], [460]]
  c_90_31_0_False_resize <= resize(c_31, 25);
  c_90_31_0_False_shift <= shift_left(c_90_31_0_False_resize, 0);
  c_90_27_2_False_resize <= resize(c_27, 25);
  c_90_27_2_False_shift <= shift_left(c_90_27_2_False_resize, 2);
  with config_select_8 select c_90_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_90_sel is
        when "0" => c_90 <= c_90_31_0_False_shift;
        when others => c_90 <= c_90_27_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 91 and associated fundamentals [[286], [466]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_73 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 92 and associated fundamentals [[628], [466]]
  c_92_91_0_False_resize <= resize(c_91, 26);
  c_92_91_0_False_shift <= shift_left(c_92_91_0_False_resize, 0);
  c_92_56_2_False_resize <= resize(c_56, 26);
  c_92_56_2_False_shift <= shift_left(c_92_56_2_False_resize, 2);
  with config_select_9 select c_92_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_92_sel is
        when "0" => c_92 <= c_92_91_0_False_shift;
        when others => c_92 <= c_92_56_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 93 and associated fundamentals [[282], [315]]
  c_93_40_0_False_resize <= c_40;
  c_93_40_0_False_shift <= shift_left(c_93_40_0_False_resize, 0);
  c_93_36_0_False_resize <= c_36;
  c_93_36_0_False_shift <= shift_left(c_93_36_0_False_resize, 0);
  with config_select_10 select c_93_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_93_sel is
        when "0" => c_93 <= c_93_40_0_False_shift;
        when others => c_93 <= c_93_36_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 94 and associated fundamentals [[-447], [-878]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_78 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 95 and associated fundamentals [[447], [878]]
  c_95_resize <= c_94;
  c_95 <= -shift_left(c_95_resize, 0);
  -- node of type 'output' in stage 13 with id 96 and associated fundamentals [[613], [569]]
  c_96_resize <= c_71;
  c_96 <= shift_left(c_96_resize, 0);
  -- node of type 'register' in stage 13 with id 97 and associated fundamentals [[223], [698]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_83 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 98 and associated fundamentals [[223], [698]]
  c_98_resize <= c_97;
  c_98 <= shift_left(c_98_resize, 0);
  -- node of type 'register' in stage 12 with id 99 and associated fundamentals [[529], [717]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 100 and associated fundamentals [[529], [717]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_99 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 101 and associated fundamentals [[529], [717]]
  c_101_resize <= c_100;
  c_101 <= shift_left(c_101_resize, 0);
  -- node of type 'register' in stage 9 with id 102 and associated fundamentals [[286], [106]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_84 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 103 and associated fundamentals [[286], [106]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_102 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 104 and associated fundamentals [[286], [106]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_103 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 105 and associated fundamentals [[286], [106]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_104 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 106 and associated fundamentals [[286], [106]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_105 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 107 and associated fundamentals [[286], [106]]
  c_107_resize <= c_106;
  c_107 <= shift_left(c_107_resize, 0);
  -- node of type 'register' in stage 13 with id 108 and associated fundamentals [[534], [125]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_108 <= c_88 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 109 and associated fundamentals [[534], [125]]
  c_109_resize <= c_108;
  c_109 <= shift_left(c_109_resize, 0);
  -- node of type 'register' in stage 13 with id 110 and associated fundamentals [[307], [170]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_110 <= c_89 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 111 and associated fundamentals [[307], [170]]
  c_111_resize <= c_110;
  c_111 <= shift_left(c_111_resize, 0);
  -- node of type 'register' in stage 9 with id 112 and associated fundamentals [[35], [460]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_90 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 113 and associated fundamentals [[35], [460]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_112 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 114 and associated fundamentals [[35], [460]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_113 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 115 and associated fundamentals [[35], [460]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_114 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 116 and associated fundamentals [[35], [460]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_116 <= c_115 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 117 and associated fundamentals [[35], [460]]
  c_117_resize <= c_116;
  c_117 <= shift_left(c_117_resize, 0);
  -- node of type 'register' in stage 10 with id 118 and associated fundamentals [[628], [466]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_118 <= c_92 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 119 and associated fundamentals [[628], [466]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_119 <= c_118 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 120 and associated fundamentals [[628], [466]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_120 <= c_119 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 121 and associated fundamentals [[628], [466]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_121 <= c_120 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 122 and associated fundamentals [[628], [466]]
  c_122_resize <= c_121;
  c_122 <= shift_left(c_122_resize, 0);
  -- node of type 'register' in stage 11 with id 123 and associated fundamentals [[282], [315]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_123 <= c_93 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 124 and associated fundamentals [[282], [315]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_124 <= c_123 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 125 and associated fundamentals [[282], [315]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_125 <= c_124 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 126 and associated fundamentals [[282], [315]]
  c_126_resize <= c_125;
  c_126 <= shift_left(c_126_resize, 0);
end architecture;
