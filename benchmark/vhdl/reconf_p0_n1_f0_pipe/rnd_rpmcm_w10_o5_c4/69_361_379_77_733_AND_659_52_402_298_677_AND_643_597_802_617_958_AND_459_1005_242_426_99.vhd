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
  signal c_2: signed(18 downto 0);
  signal c_2_0_0_False_resize: signed(18 downto 0);
  signal c_2_0_0_False_shift: signed(18 downto 0);
  signal c_2_0_3_False_resize: signed(18 downto 0);
  signal c_2_0_3_False_shift: signed(18 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(19 downto 0);
  signal c_3_i1_resize: signed(19 downto 0);
  signal c_3_i0_shift: signed(19 downto 0);
  signal c_3_i1_shift: signed(19 downto 0);
  signal c_3_arith: signed(19 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(21 downto 0);
  signal c_6_3_2_False_resize: signed(21 downto 0);
  signal c_6_3_2_False_shift: signed(21 downto 0);
  signal c_6_3_0_False_resize: signed(21 downto 0);
  signal c_6_3_0_False_shift: signed(21 downto 0);
  signal c_6_5_0_False_resize: signed(21 downto 0);
  signal c_6_5_0_False_shift: signed(21 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_3_0_False_resize: signed(22 downto 0);
  signal c_7_3_0_False_shift: signed(22 downto 0);
  signal c_7_5_5_False_resize: signed(22 downto 0);
  signal c_7_5_5_False_shift: signed(22 downto 0);
  signal c_7_3_4_False_resize: signed(22 downto 0);
  signal c_7_3_4_False_shift: signed(22 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_i0_resize: signed(22 downto 0);
  signal c_8_i1_resize: signed(22 downto 0);
  signal c_8_i0_shift: signed(22 downto 0);
  signal c_8_i1_shift: signed(22 downto 0);
  signal c_8_arith: signed(22 downto 0);
  signal c_8_oshift: signed(22 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(15 downto 0);
  signal c_10: signed(15 downto 0);
  signal c_11: signed(19 downto 0);
  signal c_12: signed(19 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_12_5_False_resize: signed(23 downto 0);
  signal c_13_12_5_False_shift: signed(23 downto 0);
  signal c_13_8_0_False_resize: signed(23 downto 0);
  signal c_13_8_0_False_shift: signed(23 downto 0);
  signal c_13_8_1_False_resize: signed(23 downto 0);
  signal c_13_8_1_False_shift: signed(23 downto 0);
  signal c_13_10_5_False_resize: signed(23 downto 0);
  signal c_13_10_5_False_shift: signed(23 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(19 downto 0);
  signal c_14_5_2_False_resize: signed(19 downto 0);
  signal c_14_5_2_False_shift: signed(19 downto 0);
  signal c_14_3_1_False_resize: signed(19 downto 0);
  signal c_14_3_1_False_shift: signed(19 downto 0);
  signal c_14_5_0_False_resize: signed(19 downto 0);
  signal c_14_5_0_False_shift: signed(19 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(19 downto 0);
  signal c_16: signed(19 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_i0_resize: signed(23 downto 0);
  signal c_17_i1_resize: signed(23 downto 0);
  signal c_17_i0_shift: signed(23 downto 0);
  signal c_17_i1_shift: signed(23 downto 0);
  signal c_17_arith: signed(23 downto 0);
  signal c_17_oshift: signed(23 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(21 downto 0);
  signal c_18_8_0_False_resize: signed(21 downto 0);
  signal c_18_8_0_False_shift: signed(21 downto 0);
  signal c_18_12_0_False_resize: signed(21 downto 0);
  signal c_18_12_0_False_shift: signed(21 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(15 downto 0);
  signal c_20: signed(15 downto 0);
  signal c_21: signed(19 downto 0);
  signal c_22: signed(19 downto 0);
  signal c_23: signed(22 downto 0);
  signal c_24: signed(22 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_20_3_False_resize: signed(23 downto 0);
  signal c_25_20_3_False_shift: signed(23 downto 0);
  signal c_25_17_0_False_resize: signed(23 downto 0);
  signal c_25_17_0_False_shift: signed(23 downto 0);
  signal c_25_24_0_False_resize: signed(23 downto 0);
  signal c_25_24_0_False_shift: signed(23 downto 0);
  signal c_25_22_4_False_resize: signed(23 downto 0);
  signal c_25_22_4_False_shift: signed(23 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(21 downto 0);
  signal c_27: signed(21 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_i0_resize: signed(25 downto 0);
  signal c_28_i1_resize: signed(25 downto 0);
  signal c_28_i0_shift: signed(25 downto 0);
  signal c_28_i1_shift: signed(25 downto 0);
  signal c_28_arith: signed(25 downto 0);
  signal c_28_oshift: signed(25 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(22 downto 0);
  signal c_30: signed(22 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_30_3_False_resize: signed(25 downto 0);
  signal c_31_30_3_False_shift: signed(25 downto 0);
  signal c_31_30_1_False_resize: signed(25 downto 0);
  signal c_31_30_1_False_shift: signed(25 downto 0);
  signal c_31_28_0_False_resize: signed(25 downto 0);
  signal c_31_28_0_False_shift: signed(25 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(15 downto 0);
  signal c_33: signed(15 downto 0);
  signal c_34: signed(19 downto 0);
  signal c_35: signed(19 downto 0);
  signal c_36: signed(24 downto 0);
  signal c_36_35_2_False_resize: signed(24 downto 0);
  signal c_36_35_2_False_shift: signed(24 downto 0);
  signal c_36_28_1_False_resize: signed(24 downto 0);
  signal c_36_28_1_False_shift: signed(24 downto 0);
  signal c_36_33_0_False_resize: signed(24 downto 0);
  signal c_36_33_0_False_shift: signed(24 downto 0);
  signal c_36_33_4_False_resize: signed(24 downto 0);
  signal c_36_33_4_False_shift: signed(24 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_i0_resize: signed(25 downto 0);
  signal c_37_i1_resize: signed(25 downto 0);
  signal c_37_i0_shift: signed(25 downto 0);
  signal c_37_i1_shift: signed(25 downto 0);
  signal c_37_arith: signed(25 downto 0);
  signal c_37_oshift: signed(25 downto 0);
  signal c_37_sub_sel: std_logic;
  signal c_38: signed(18 downto 0);
  signal c_38_0_0_False_resize: signed(18 downto 0);
  signal c_38_0_0_False_shift: signed(18 downto 0);
  signal c_38_0_3_False_resize: signed(18 downto 0);
  signal c_38_0_3_False_shift: signed(18 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_45: signed(26 downto 0);
  signal c_45_44_2_False_resize: signed(26 downto 0);
  signal c_45_44_2_False_shift: signed(26 downto 0);
  signal c_45_42_2_False_resize: signed(26 downto 0);
  signal c_45_42_2_False_shift: signed(26 downto 0);
  signal c_45_37_1_False_resize: signed(26 downto 0);
  signal c_45_37_1_False_shift: signed(26 downto 0);
  signal c_45_44_0_False_resize: signed(26 downto 0);
  signal c_45_44_0_False_shift: signed(26 downto 0);
  signal c_45_sel: std_logic_vector(1 downto 0);
  signal c_46: signed(18 downto 0);
  signal c_47: signed(18 downto 0);
  signal c_48: signed(18 downto 0);
  signal c_49: signed(18 downto 0);
  signal c_50: signed(18 downto 0);
  signal c_51: signed(18 downto 0);
  signal c_52: signed(18 downto 0);
  signal c_53: signed(18 downto 0);
  signal c_54: signed(18 downto 0);
  signal c_55: signed(18 downto 0);
  signal c_56: signed(26 downto 0);
  signal c_56_i0_resize: signed(26 downto 0);
  signal c_56_i1_resize: signed(26 downto 0);
  signal c_56_i0_shift: signed(26 downto 0);
  signal c_56_i1_shift: signed(26 downto 0);
  signal c_56_arith: signed(26 downto 0);
  signal c_56_oshift: signed(26 downto 0);
  signal c_56_sub_sel: std_logic;
  signal c_57: signed(25 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_60: signed(25 downto 0);
  signal c_61: signed(26 downto 0);
  signal c_61_60_0_False_resize: signed(26 downto 0);
  signal c_61_60_0_False_shift: signed(26 downto 0);
  signal c_61_58_1_False_resize: signed(26 downto 0);
  signal c_61_58_1_False_shift: signed(26 downto 0);
  signal c_61_56_0_False_resize: signed(26 downto 0);
  signal c_61_56_0_False_shift: signed(26 downto 0);
  signal c_61_sel: std_logic_vector(1 downto 0);
  signal c_62: signed(25 downto 0);
  signal c_62_20_10_False_resize: signed(25 downto 0);
  signal c_62_20_10_False_shift: signed(25 downto 0);
  signal c_62_22_0_False_resize: signed(25 downto 0);
  signal c_62_22_0_False_shift: signed(25 downto 0);
  signal c_62_17_1_False_resize: signed(25 downto 0);
  signal c_62_17_1_False_shift: signed(25 downto 0);
  signal c_62_24_3_False_resize: signed(25 downto 0);
  signal c_62_24_3_False_shift: signed(25 downto 0);
  signal c_62_sel: std_logic_vector(1 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_65: signed(25 downto 0);
  signal c_66: signed(25 downto 0);
  signal c_67: signed(25 downto 0);
  signal c_68: signed(25 downto 0);
  signal c_69: signed(25 downto 0);
  signal c_69_i0_resize: signed(25 downto 0);
  signal c_69_i1_resize: signed(25 downto 0);
  signal c_69_i0_shift: signed(25 downto 0);
  signal c_69_i1_shift: signed(25 downto 0);
  signal c_69_arith: signed(25 downto 0);
  signal c_69_oshift: signed(25 downto 0);
  signal c_69_sub_sel: std_logic;
  signal c_70: signed(19 downto 0);
  signal c_71: signed(19 downto 0);
  signal c_72: signed(19 downto 0);
  signal c_73: signed(19 downto 0);
  signal c_74: signed(19 downto 0);
  signal c_75: signed(19 downto 0);
  signal c_76: signed(22 downto 0);
  signal c_77: signed(22 downto 0);
  signal c_78: signed(22 downto 0);
  signal c_79: signed(22 downto 0);
  signal c_80: signed(22 downto 0);
  signal c_81: signed(22 downto 0);
  signal c_82: signed(25 downto 0);
  signal c_82_69_0_False_resize: signed(25 downto 0);
  signal c_82_69_0_False_shift: signed(25 downto 0);
  signal c_82_81_1_False_resize: signed(25 downto 0);
  signal c_82_81_1_False_shift: signed(25 downto 0);
  signal c_82_81_0_False_resize: signed(25 downto 0);
  signal c_82_81_0_False_shift: signed(25 downto 0);
  signal c_82_75_7_False_resize: signed(25 downto 0);
  signal c_82_75_7_False_shift: signed(25 downto 0);
  signal c_82_sel: std_logic_vector(1 downto 0);
  signal c_83: signed(23 downto 0);
  signal c_84: signed(23 downto 0);
  signal c_85: signed(25 downto 0);
  signal c_85_84_0_False_resize: signed(25 downto 0);
  signal c_85_84_0_False_shift: signed(25 downto 0);
  signal c_85_56_0_False_resize: signed(25 downto 0);
  signal c_85_56_0_False_shift: signed(25 downto 0);
  signal c_85_84_3_False_resize: signed(25 downto 0);
  signal c_85_84_3_False_shift: signed(25 downto 0);
  signal c_85_sel: std_logic_vector(1 downto 0);
  signal c_86: signed(25 downto 0);
  signal c_87: signed(25 downto 0);
  signal c_88: signed(25 downto 0);
  signal c_88_i0_resize: signed(25 downto 0);
  signal c_88_i1_resize: signed(25 downto 0);
  signal c_88_i0_shift: signed(25 downto 0);
  signal c_88_i1_shift: signed(25 downto 0);
  signal c_88_arith: signed(25 downto 0);
  signal c_88_oshift: signed(25 downto 0);
  signal c_88_sub_sel: std_logic;
  signal c_89: signed(25 downto 0);
  signal c_89_56_0_False_resize: signed(25 downto 0);
  signal c_89_56_0_False_shift: signed(25 downto 0);
  signal c_89_58_0_False_resize: signed(25 downto 0);
  signal c_89_58_0_False_shift: signed(25 downto 0);
  signal c_89_sel: std_logic_vector(0 downto 0);
  signal c_90: signed(23 downto 0);
  signal c_91: signed(23 downto 0);
  signal c_92: signed(23 downto 0);
  signal c_93: signed(23 downto 0);
  signal c_94: signed(25 downto 0);
  signal c_95: signed(25 downto 0);
  signal c_96: signed(25 downto 0);
  signal c_97: signed(25 downto 0);
  signal c_98: signed(25 downto 0);
  signal c_98_88_0_False_resize: signed(25 downto 0);
  signal c_98_88_0_False_shift: signed(25 downto 0);
  signal c_98_97_0_False_resize: signed(25 downto 0);
  signal c_98_97_0_False_shift: signed(25 downto 0);
  signal c_98_93_1_False_resize: signed(25 downto 0);
  signal c_98_93_1_False_shift: signed(25 downto 0);
  signal c_98_sel: std_logic_vector(1 downto 0);
  signal c_99: signed(25 downto 0);
  signal c_100: signed(25 downto 0);
  signal c_101: signed(25 downto 0);
  signal c_101_69_0_False_resize: signed(25 downto 0);
  signal c_101_69_0_False_shift: signed(25 downto 0);
  signal c_101_100_1_False_resize: signed(25 downto 0);
  signal c_101_100_1_False_shift: signed(25 downto 0);
  signal c_101_95_0_False_resize: signed(25 downto 0);
  signal c_101_95_0_False_shift: signed(25 downto 0);
  signal c_101_sel: std_logic_vector(1 downto 0);
  signal c_102: signed(25 downto 0);
  signal c_102_100_0_False_resize: signed(25 downto 0);
  signal c_102_100_0_False_shift: signed(25 downto 0);
  signal c_102_69_0_False_resize: signed(25 downto 0);
  signal c_102_69_0_False_shift: signed(25 downto 0);
  signal c_102_69_1_False_resize: signed(25 downto 0);
  signal c_102_69_1_False_shift: signed(25 downto 0);
  signal c_102_sel: std_logic_vector(1 downto 0);
  signal c_103: signed(25 downto 0);
  signal c_103_88_0_False_resize: signed(25 downto 0);
  signal c_103_88_0_False_shift: signed(25 downto 0);
  signal c_103_93_0_False_resize: signed(25 downto 0);
  signal c_103_93_0_False_shift: signed(25 downto 0);
  signal c_103_88_1_False_resize: signed(25 downto 0);
  signal c_103_88_1_False_shift: signed(25 downto 0);
  signal c_103_sel: std_logic_vector(1 downto 0);
  signal c_104: signed(25 downto 0);
  signal c_105: signed(25 downto 0);
  signal c_106: signed(25 downto 0);
  signal c_107: signed(25 downto 0);
  signal c_108: signed(25 downto 0);
  signal c_108_resize: signed(25 downto 0);
  signal c_109: signed(25 downto 0);
  signal c_109_resize: signed(25 downto 0);
  signal c_110: signed(25 downto 0);
  signal c_111: signed(25 downto 0);
  signal c_112: signed(25 downto 0);
  signal c_112_resize: signed(25 downto 0);
  signal c_113: signed(25 downto 0);
  signal c_114: signed(25 downto 0);
  signal c_115: signed(25 downto 0);
  signal c_115_resize: signed(25 downto 0);
  signal c_116: signed(25 downto 0);
  signal c_116_resize: signed(25 downto 0);
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
  -- output node 0 with id 108
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_108);
    end if;
  end process;
  -- output node 1 with id 109
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_109);
    end if;
  end process;
  -- output node 2 with id 112
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_112);
    end if;
  end process;
  -- output node 3 with id 115
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_115);
    end if;
  end process;
  -- output node 4 with id 116
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_116);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [4], [4], [1]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "0" when "11",
    "0" when "00",
    "1" when "10",
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
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[8], [1], [1], [8]]
  c_2_0_0_False_resize <= resize(c_0, 19);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_3_False_resize <= resize(c_0, 19);
  c_2_0_3_False_shift <= shift_left(c_2_0_3_False_resize, 3);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[9], [3], [5], [-7]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 19,
      w_o => 20,
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
      c_3 <= c_3_oshift(19 downto 0);
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
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[36], [12], [5], [1]]
  c_6_3_2_False_resize <= resize(c_3, 22);
  c_6_3_2_False_shift <= shift_left(c_6_3_2_False_resize, 2);
  c_6_3_0_False_resize <= resize(c_3, 22);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  c_6_5_0_False_resize <= resize(c_5, 22);
  c_6_5_0_False_shift <= shift_left(c_6_5_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "00" when "01",
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_3_2_False_shift;
        when "01" => c_6 <= c_6_3_0_False_shift;
        when others => c_6 <= c_6_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[9], [3], [32], [-112]]
  c_7_3_0_False_resize <= resize(c_3, 23);
  c_7_3_0_False_shift <= shift_left(c_7_3_0_False_resize, 0);
  c_7_5_5_False_resize <= resize(c_5, 23);
  c_7_5_5_False_shift <= shift_left(c_7_5_5_False_resize, 5);
  c_7_3_4_False_resize <= resize(c_3, 23);
  c_7_3_4_False_shift <= shift_left(c_7_3_4_False_resize, 4);
  with config_select_3 select c_7_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_3_0_False_shift;
        when "01" => c_7 <= c_7_5_5_False_shift;
        when others => c_7 <= c_7_3_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 8 and associated fundamentals [[45], [9], [-27], [113]]
  with config_select_4 select c_8_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 22,
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
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 10 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[9], [3], [5], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[9], [3], [5], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 13 and associated fundamentals [[90], [32], [160], [113]]
  c_13_12_5_False_resize <= resize(c_12, 24);
  c_13_12_5_False_shift <= shift_left(c_13_12_5_False_resize, 5);
  c_13_8_0_False_resize <= resize(c_8, 24);
  c_13_8_0_False_shift <= shift_left(c_13_8_0_False_resize, 0);
  c_13_8_1_False_resize <= resize(c_8, 24);
  c_13_8_1_False_shift <= shift_left(c_13_8_1_False_resize, 1);
  c_13_10_5_False_resize <= resize(c_10, 24);
  c_13_10_5_False_shift <= shift_left(c_13_10_5_False_resize, 5);
  with config_select_5 select c_13_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_12_5_False_shift;
        when "01" => c_13 <= c_13_8_0_False_shift;
        when "10" => c_13 <= c_13_8_1_False_shift;
        when others => c_13 <= c_13_10_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[4], [6], [1], [-14]]
  c_14_5_2_False_resize <= resize(c_5, 20);
  c_14_5_2_False_shift <= shift_left(c_14_5_2_False_resize, 2);
  c_14_3_1_False_resize <= c_3;
  c_14_3_1_False_shift <= shift_left(c_14_3_1_False_resize, 1);
  c_14_5_0_False_resize <= resize(c_5, 20);
  c_14_5_0_False_shift <= shift_left(c_14_5_0_False_resize, 0);
  with config_select_3 select c_14_sel <= 
    "00" when "00",
    "01" when "01",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_5_2_False_shift;
        when "01" => c_14 <= c_14_3_1_False_shift;
        when others => c_14 <= c_14_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[4], [6], [1], [-14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 16 and associated fundamentals [[4], [6], [1], [-14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 17 and associated fundamentals [[86], [26], [161], [99]]
  with config_select_6 select c_17_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 20,
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
  -- node of type 'mux' in stage 5 with id 18 and associated fundamentals [[45], [9], [-27], [-7]]
  c_18_8_0_False_resize <= c_8(21 downto 0);
  c_18_8_0_False_shift <= shift_left(c_18_8_0_False_resize, 0);
  c_18_12_0_False_resize <= resize(c_12, 22);
  c_18_12_0_False_shift <= shift_left(c_18_12_0_False_resize, 0);
  with config_select_5 select c_18_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_8_0_False_shift;
        when others => c_18 <= c_18_12_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 19 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 20 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[9], [3], [5], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 22 and associated fundamentals [[9], [3], [5], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[45], [9], [-27], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 24 and associated fundamentals [[45], [9], [-27], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 25 and associated fundamentals [[8], [48], [161], [113]]
  c_25_20_3_False_resize <= resize(c_20, 24);
  c_25_20_3_False_shift <= shift_left(c_25_20_3_False_resize, 3);
  c_25_17_0_False_resize <= c_17;
  c_25_17_0_False_shift <= shift_left(c_25_17_0_False_resize, 0);
  c_25_24_0_False_resize <= resize(c_24, 24);
  c_25_24_0_False_shift <= shift_left(c_25_24_0_False_resize, 0);
  c_25_22_4_False_resize <= resize(c_22, 24);
  c_25_22_4_False_shift <= shift_left(c_25_22_4_False_resize, 4);
  with config_select_7 select c_25_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_20_3_False_shift;
        when "01" => c_25 <= c_25_17_0_False_shift;
        when "10" => c_25 <= c_25_24_0_False_shift;
        when others => c_25 <= c_25_22_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 26 and associated fundamentals [[45], [9], [-27], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 27 and associated fundamentals [[45], [9], [-27], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 28 and associated fundamentals [[77], [201], [617], [-459]]
  with config_select_8 select c_28_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 24,
      w_o => 26,
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
      sub_i => c_28_sub_sel,
      x_i => c_27,
      y_i => c_25,
      z_o => c_28_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_28_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 29 and associated fundamentals [[45], [9], [-27], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 30 and associated fundamentals [[45], [9], [-27], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 31 and associated fundamentals [[360], [72], [617], [226]]
  c_31_30_3_False_resize <= resize(c_30, 26);
  c_31_30_3_False_shift <= shift_left(c_31_30_3_False_resize, 3);
  c_31_30_1_False_resize <= resize(c_30, 26);
  c_31_30_1_False_shift <= shift_left(c_31_30_1_False_resize, 1);
  c_31_28_0_False_resize <= c_28;
  c_31_28_0_False_shift <= shift_left(c_31_28_0_False_resize, 0);
  with config_select_9 select c_31_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "00" => c_31 <= c_31_30_3_False_shift;
        when "01" => c_31 <= c_31_30_1_False_shift;
        when others => c_31 <= c_31_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 32 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 33 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 34 and associated fundamentals [[9], [3], [5], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 35 and associated fundamentals [[9], [3], [5], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 36 and associated fundamentals [[1], [402], [20], [16]]
  c_36_35_2_False_resize <= resize(c_35, 25);
  c_36_35_2_False_shift <= shift_left(c_36_35_2_False_resize, 2);
  c_36_28_1_False_resize <= c_28(24 downto 0);
  c_36_28_1_False_shift <= shift_left(c_36_28_1_False_resize, 1);
  c_36_33_0_False_resize <= resize(c_33, 25);
  c_36_33_0_False_shift <= shift_left(c_36_33_0_False_resize, 0);
  c_36_33_4_False_resize <= resize(c_33, 25);
  c_36_33_4_False_shift <= shift_left(c_36_33_4_False_resize, 4);
  with config_select_9 select c_36_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "00" => c_36 <= c_36_35_2_False_shift;
        when "01" => c_36 <= c_36_28_1_False_shift;
        when "10" => c_36 <= c_36_33_0_False_shift;
        when others => c_36 <= c_36_33_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 37 and associated fundamentals [[361], [-330], [597], [242]]
  with config_select_10 select c_37_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_37: entity work.adder_node
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
      sub_i => c_37_sub_sel,
      x_i => c_31,
      y_i => c_36,
      z_o => c_37_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_37_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 38 and associated fundamentals [[8], [1], [1], [1]]
  c_38_0_0_False_resize <= resize(c_0, 19);
  c_38_0_0_False_shift <= shift_left(c_38_0_0_False_resize, 0);
  c_38_0_3_False_resize <= resize(c_0, 19);
  c_38_0_3_False_shift <= shift_left(c_38_0_3_False_resize, 3);
  with config_select_1 select c_38_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "0" => c_38 <= c_38_0_0_False_shift;
        when others => c_38 <= c_38_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 39 and associated fundamentals [[86], [26], [161], [99]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 40 and associated fundamentals [[86], [26], [161], [99]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 41 and associated fundamentals [[86], [26], [161], [99]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 42 and associated fundamentals [[86], [26], [161], [99]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 43 and associated fundamentals [[77], [201], [617], [-459]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 44 and associated fundamentals [[77], [201], [617], [-459]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 45 and associated fundamentals [[77], [-660], [644], [-1836]]
  c_45_44_2_False_resize <= resize(c_44, 27);
  c_45_44_2_False_shift <= shift_left(c_45_44_2_False_resize, 2);
  c_45_42_2_False_resize <= resize(c_42, 27);
  c_45_42_2_False_shift <= shift_left(c_45_42_2_False_resize, 2);
  c_45_37_1_False_resize <= resize(c_37, 27);
  c_45_37_1_False_shift <= shift_left(c_45_37_1_False_resize, 1);
  c_45_44_0_False_resize <= resize(c_44, 27);
  c_45_44_0_False_shift <= shift_left(c_45_44_0_False_resize, 0);
  with config_select_11 select c_45_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "00" => c_45 <= c_45_44_2_False_shift;
        when "01" => c_45 <= c_45_42_2_False_shift;
        when "10" => c_45 <= c_45_37_1_False_shift;
        when others => c_45 <= c_45_44_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 46 and associated fundamentals [[8], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 47 and associated fundamentals [[8], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 48 and associated fundamentals [[8], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 49 and associated fundamentals [[8], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 50 and associated fundamentals [[8], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 51 and associated fundamentals [[8], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 52 and associated fundamentals [[8], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 53 and associated fundamentals [[8], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 54 and associated fundamentals [[8], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 55 and associated fundamentals [[8], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 56 and associated fundamentals [[-69], [-659], [-643], [-1835]]
  with config_select_12 select c_56_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_56: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 27,
      w_o => 27,
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
      sub_i => c_56_sub_sel,
      x_i => c_55,
      y_i => c_45,
      z_o => c_56_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_56_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 57 and associated fundamentals [[77], [201], [617], [-459]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 58 and associated fundamentals [[77], [201], [617], [-459]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 59 and associated fundamentals [[361], [-330], [597], [242]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 60 and associated fundamentals [[361], [-330], [597], [242]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 61 and associated fundamentals [[361], [402], [1234], [-1835]]
  c_61_60_0_False_resize <= resize(c_60, 27);
  c_61_60_0_False_shift <= shift_left(c_61_60_0_False_resize, 0);
  c_61_58_1_False_resize <= resize(c_58, 27);
  c_61_58_1_False_shift <= shift_left(c_61_58_1_False_resize, 1);
  c_61_56_0_False_resize <= c_56;
  c_61_56_0_False_shift <= shift_left(c_61_56_0_False_resize, 0);
  with config_select_13 select c_61_sel <= 
    "00" when "00",
    "01" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_61_sel is
        when "00" => c_61 <= c_61_60_0_False_shift;
        when "01" => c_61 <= c_61_58_1_False_shift;
        when others => c_61 <= c_61_56_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 62 and associated fundamentals [[9], [52], [-216], [1024]]
  c_62_20_10_False_resize <= resize(c_20, 26);
  c_62_20_10_False_shift <= shift_left(c_62_20_10_False_resize, 10);
  c_62_22_0_False_resize <= resize(c_22, 26);
  c_62_22_0_False_shift <= shift_left(c_62_22_0_False_resize, 0);
  c_62_17_1_False_resize <= resize(c_17, 26);
  c_62_17_1_False_shift <= shift_left(c_62_17_1_False_resize, 1);
  c_62_24_3_False_resize <= resize(c_24, 26);
  c_62_24_3_False_shift <= shift_left(c_62_24_3_False_resize, 3);
  with config_select_7 select c_62_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_62_sel is
        when "00" => c_62 <= c_62_20_10_False_shift;
        when "01" => c_62 <= c_62_22_0_False_shift;
        when "10" => c_62 <= c_62_17_1_False_shift;
        when others => c_62 <= c_62_24_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 63 and associated fundamentals [[9], [52], [-216], [1024]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 64 and associated fundamentals [[9], [52], [-216], [1024]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 65 and associated fundamentals [[9], [52], [-216], [1024]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 66 and associated fundamentals [[9], [52], [-216], [1024]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 67 and associated fundamentals [[9], [52], [-216], [1024]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 68 and associated fundamentals [[9], [52], [-216], [1024]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 69 and associated fundamentals [[379], [298], [802], [213]]
  with config_select_14 select c_69_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_69: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 26,
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
      sub_i => c_69_sub_sel,
      x_i => c_61,
      y_i => c_68,
      z_o => c_69_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_69_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 70 and associated fundamentals [[9], [3], [5], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 71 and associated fundamentals [[9], [3], [5], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 72 and associated fundamentals [[9], [3], [5], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 73 and associated fundamentals [[9], [3], [5], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_72 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 74 and associated fundamentals [[9], [3], [5], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 75 and associated fundamentals [[9], [3], [5], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 76 and associated fundamentals [[45], [9], [-27], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 77 and associated fundamentals [[45], [9], [-27], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 78 and associated fundamentals [[45], [9], [-27], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 79 and associated fundamentals [[45], [9], [-27], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 80 and associated fundamentals [[45], [9], [-27], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 81 and associated fundamentals [[45], [9], [-27], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_80 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 82 and associated fundamentals [[45], [18], [640], [213]]
  c_82_69_0_False_resize <= c_69;
  c_82_69_0_False_shift <= shift_left(c_82_69_0_False_resize, 0);
  c_82_81_1_False_resize <= resize(c_81, 26);
  c_82_81_1_False_shift <= shift_left(c_82_81_1_False_resize, 1);
  c_82_81_0_False_resize <= resize(c_81, 26);
  c_82_81_0_False_shift <= shift_left(c_82_81_0_False_resize, 0);
  c_82_75_7_False_resize <= resize(c_75, 26);
  c_82_75_7_False_shift <= shift_left(c_82_75_7_False_resize, 7);
  with config_select_15 select c_82_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_82_sel is
        when "00" => c_82 <= c_82_69_0_False_shift;
        when "01" => c_82 <= c_82_81_1_False_shift;
        when "10" => c_82 <= c_82_81_0_False_shift;
        when others => c_82 <= c_82_75_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 83 and associated fundamentals [[86], [26], [161], [99]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 84 and associated fundamentals [[86], [26], [161], [99]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_83 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 85 and associated fundamentals [[688], [-659], [161], [792]]
  c_85_84_0_False_resize <= resize(c_84, 26);
  c_85_84_0_False_shift <= shift_left(c_85_84_0_False_resize, 0);
  c_85_56_0_False_resize <= c_56(25 downto 0);
  c_85_56_0_False_shift <= shift_left(c_85_56_0_False_resize, 0);
  c_85_84_3_False_resize <= resize(c_84, 26);
  c_85_84_3_False_shift <= shift_left(c_85_84_3_False_resize, 3);
  with config_select_13 select c_85_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_85_sel is
        when "00" => c_85 <= c_85_84_0_False_shift;
        when "01" => c_85 <= c_85_56_0_False_shift;
        when others => c_85 <= c_85_84_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 86 and associated fundamentals [[688], [-659], [161], [792]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_85 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 87 and associated fundamentals [[688], [-659], [161], [792]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_86 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 16 with id 88 and associated fundamentals [[733], [677], [479], [1005]]
  with config_select_16 select c_88_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_88: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_88_sub_sel,
      x_i => c_82,
      y_i => c_87,
      z_o => c_88_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_88_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 89 and associated fundamentals [[-69], [-659], [-643], [-459]]
  c_89_56_0_False_resize <= c_56(25 downto 0);
  c_89_56_0_False_shift <= shift_left(c_89_56_0_False_resize, 0);
  c_89_58_0_False_resize <= c_58;
  c_89_58_0_False_shift <= shift_left(c_89_58_0_False_resize, 0);
  with config_select_13 select c_89_sel <= 
    "0" when "10",
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_89_sel is
        when "0" => c_89 <= c_89_56_0_False_shift;
        when others => c_89 <= c_89_58_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 90 and associated fundamentals [[86], [26], [161], [99]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_84 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 91 and associated fundamentals [[86], [26], [161], [99]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_90 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 92 and associated fundamentals [[86], [26], [161], [99]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 93 and associated fundamentals [[86], [26], [161], [99]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_92 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 94 and associated fundamentals [[361], [-330], [597], [242]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 95 and associated fundamentals [[361], [-330], [597], [242]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_94 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 96 and associated fundamentals [[361], [-330], [597], [242]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_95 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 97 and associated fundamentals [[361], [-330], [597], [242]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_96 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 98 and associated fundamentals [[361], [52], [597], [1005]]
  c_98_88_0_False_resize <= c_88;
  c_98_88_0_False_shift <= shift_left(c_98_88_0_False_resize, 0);
  c_98_97_0_False_resize <= c_97;
  c_98_97_0_False_shift <= shift_left(c_98_97_0_False_resize, 0);
  c_98_93_1_False_resize <= resize(c_93, 26);
  c_98_93_1_False_shift <= shift_left(c_98_93_1_False_resize, 1);
  with config_select_17 select c_98_sel <= 
    "00" when "11",
    "01" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_98_sel is
        when "00" => c_98 <= c_98_88_0_False_shift;
        when "01" => c_98 <= c_98_97_0_False_shift;
        when others => c_98 <= c_98_93_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 99 and associated fundamentals [[77], [201], [617], [-459]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 100 and associated fundamentals [[77], [201], [617], [-459]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_99 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 101 and associated fundamentals [[379], [402], [802], [242]]
  c_101_69_0_False_resize <= c_69;
  c_101_69_0_False_shift <= shift_left(c_101_69_0_False_resize, 0);
  c_101_100_1_False_resize <= c_100;
  c_101_100_1_False_shift <= shift_left(c_101_100_1_False_resize, 1);
  c_101_95_0_False_resize <= c_95;
  c_101_95_0_False_shift <= shift_left(c_101_95_0_False_resize, 0);
  with config_select_15 select c_101_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_101_sel is
        when "00" => c_101 <= c_101_69_0_False_shift;
        when "01" => c_101 <= c_101_100_1_False_shift;
        when others => c_101 <= c_101_95_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 102 and associated fundamentals [[77], [298], [617], [426]]
  c_102_100_0_False_resize <= c_100;
  c_102_100_0_False_shift <= shift_left(c_102_100_0_False_resize, 0);
  c_102_69_0_False_resize <= c_69;
  c_102_69_0_False_shift <= shift_left(c_102_69_0_False_resize, 0);
  c_102_69_1_False_resize <= c_69;
  c_102_69_1_False_shift <= shift_left(c_102_69_1_False_resize, 1);
  with config_select_15 select c_102_sel <= 
    "00" when "00",
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_102_sel is
        when "00" => c_102 <= c_102_100_0_False_shift;
        when "01" => c_102 <= c_102_69_0_False_shift;
        when others => c_102 <= c_102_69_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 103 and associated fundamentals [[733], [677], [958], [99]]
  c_103_88_0_False_resize <= c_88;
  c_103_88_0_False_shift <= shift_left(c_103_88_0_False_resize, 0);
  c_103_93_0_False_resize <= resize(c_93, 26);
  c_103_93_0_False_shift <= shift_left(c_103_93_0_False_resize, 0);
  c_103_88_1_False_resize <= c_88;
  c_103_88_1_False_shift <= shift_left(c_103_88_1_False_resize, 1);
  with config_select_17 select c_103_sel <= 
    "00" when "01",
    "00" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_103_sel is
        when "00" => c_103 <= c_103_88_0_False_shift;
        when "01" => c_103 <= c_103_93_0_False_shift;
        when others => c_103 <= c_103_88_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 104 and associated fundamentals [[-69], [-659], [-643], [-459]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_89 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 105 and associated fundamentals [[-69], [-659], [-643], [-459]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_104 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 106 and associated fundamentals [[-69], [-659], [-643], [-459]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_105 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 107 and associated fundamentals [[-69], [-659], [-643], [-459]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_106 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 108 and associated fundamentals [[69], [659], [643], [459]]
  c_108_resize <= c_107;
  c_108 <= -shift_left(c_108_resize, 0);
  -- node of type 'output' in stage 17 with id 109 and associated fundamentals [[361], [52], [597], [1005]]
  c_109_resize <= c_98;
  c_109 <= shift_left(c_109_resize, 0);
  -- node of type 'register' in stage 16 with id 110 and associated fundamentals [[379], [402], [802], [242]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_110 <= c_101 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 111 and associated fundamentals [[379], [402], [802], [242]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_110 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 112 and associated fundamentals [[379], [402], [802], [242]]
  c_112_resize <= c_111;
  c_112 <= shift_left(c_112_resize, 0);
  -- node of type 'register' in stage 16 with id 113 and associated fundamentals [[77], [298], [617], [426]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_102 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 114 and associated fundamentals [[77], [298], [617], [426]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_113 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 115 and associated fundamentals [[77], [298], [617], [426]]
  c_115_resize <= c_114;
  c_115 <= shift_left(c_115_resize, 0);
  -- node of type 'output' in stage 17 with id 116 and associated fundamentals [[733], [677], [958], [99]]
  c_116_resize <= c_103;
  c_116 <= shift_left(c_116_resize, 0);
end architecture;
