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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_0_0_False_resize: signed(17 downto 0);
  signal c_1_0_0_False_shift: signed(17 downto 0);
  signal c_1_0_2_False_resize: signed(17 downto 0);
  signal c_1_0_2_False_shift: signed(17 downto 0);
  signal c_1_0_1_False_resize: signed(17 downto 0);
  signal c_1_0_1_False_shift: signed(17 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
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
  signal c_5: signed(18 downto 0);
  signal c_5_4_3_False_resize: signed(18 downto 0);
  signal c_5_4_3_False_shift: signed(18 downto 0);
  signal c_5_3_0_False_resize: signed(18 downto 0);
  signal c_5_3_0_False_shift: signed(18 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(19 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_i0_resize: signed(23 downto 0);
  signal c_7_i1_resize: signed(23 downto 0);
  signal c_7_i0_shift: signed(23 downto 0);
  signal c_7_i1_shift: signed(23 downto 0);
  signal c_7_arith: signed(23 downto 0);
  signal c_7_oshift: signed(23 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(19 downto 0);
  signal c_8_4_3_False_resize: signed(19 downto 0);
  signal c_8_4_3_False_shift: signed(19 downto 0);
  signal c_8_3_0_False_resize: signed(19 downto 0);
  signal c_8_3_0_False_shift: signed(19 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(15 downto 0);
  signal c_10: signed(15 downto 0);
  signal c_11: signed(19 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_10_1_False_resize: signed(22 downto 0);
  signal c_12_10_1_False_shift: signed(22 downto 0);
  signal c_12_7_0_False_resize: signed(22 downto 0);
  signal c_12_7_0_False_shift: signed(22 downto 0);
  signal c_12_11_0_False_resize: signed(22 downto 0);
  signal c_12_11_0_False_shift: signed(22 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(19 downto 0);
  signal c_14: signed(19 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_i0_resize: signed(23 downto 0);
  signal c_15_i1_resize: signed(23 downto 0);
  signal c_15_i0_shift: signed(23 downto 0);
  signal c_15_i1_shift: signed(23 downto 0);
  signal c_15_arith: signed(23 downto 0);
  signal c_15_oshift: signed(23 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(21 downto 0);
  signal c_16_0_0_False_resize: signed(21 downto 0);
  signal c_16_0_0_False_shift: signed(21 downto 0);
  signal c_16_0_6_False_resize: signed(21 downto 0);
  signal c_16_0_6_False_shift: signed(21 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(19 downto 0);
  signal c_17_4_0_False_resize: signed(19 downto 0);
  signal c_17_4_0_False_shift: signed(19 downto 0);
  signal c_17_3_2_False_resize: signed(19 downto 0);
  signal c_17_3_2_False_shift: signed(19 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(21 downto 0);
  signal c_19: signed(21 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_20_i0_resize: signed(22 downto 0);
  signal c_20_i1_resize: signed(22 downto 0);
  signal c_20_i0_shift: signed(22 downto 0);
  signal c_20_i1_shift: signed(22 downto 0);
  signal c_20_arith: signed(22 downto 0);
  signal c_20_oshift: signed(22 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(19 downto 0);
  signal c_22: signed(19 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_25_15_0_False_resize: signed(22 downto 0);
  signal c_25_15_0_False_shift: signed(22 downto 0);
  signal c_25_24_0_False_resize: signed(22 downto 0);
  signal c_25_24_0_False_shift: signed(22 downto 0);
  signal c_25_22_5_False_resize: signed(22 downto 0);
  signal c_25_22_5_False_shift: signed(22 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_11_0_False_resize: signed(23 downto 0);
  signal c_26_11_0_False_shift: signed(23 downto 0);
  signal c_26_7_0_False_resize: signed(23 downto 0);
  signal c_26_7_0_False_shift: signed(23 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_29_i0_resize: signed(22 downto 0);
  signal c_29_i1_resize: signed(22 downto 0);
  signal c_29_i0_shift: signed(22 downto 0);
  signal c_29_i1_shift: signed(22 downto 0);
  signal c_29_arith: signed(22 downto 0);
  signal c_29_oshift: signed(22 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(23 downto 0);
  signal c_30_4_8_False_resize: signed(23 downto 0);
  signal c_30_4_8_False_shift: signed(23 downto 0);
  signal c_30_3_0_False_resize: signed(23 downto 0);
  signal c_30_3_0_False_shift: signed(23 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(22 downto 0);
  signal c_32: signed(22 downto 0);
  signal c_33: signed(21 downto 0);
  signal c_33_32_1_False_resize: signed(21 downto 0);
  signal c_33_32_1_False_shift: signed(21 downto 0);
  signal c_33_15_0_False_resize: signed(21 downto 0);
  signal c_33_15_0_False_shift: signed(21 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_i0_resize: signed(23 downto 0);
  signal c_38_i1_resize: signed(23 downto 0);
  signal c_38_i0_shift: signed(23 downto 0);
  signal c_38_i1_shift: signed(23 downto 0);
  signal c_38_arith: signed(23 downto 0);
  signal c_38_oshift: signed(23 downto 0);
  signal c_38_sub_sel: std_logic;
  signal c_39: signed(22 downto 0);
  signal c_39_15_1_False_resize: signed(22 downto 0);
  signal c_39_15_1_False_shift: signed(22 downto 0);
  signal c_39_32_0_False_resize: signed(22 downto 0);
  signal c_39_32_0_False_shift: signed(22 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(22 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_i0_resize: signed(23 downto 0);
  signal c_41_i1_resize: signed(23 downto 0);
  signal c_41_i0_shift: signed(23 downto 0);
  signal c_41_i1_shift: signed(23 downto 0);
  signal c_41_arith: signed(23 downto 0);
  signal c_41_oshift: signed(23 downto 0);
  signal c_41_sub_sel: std_logic;
  signal c_42: signed(19 downto 0);
  signal c_43: signed(19 downto 0);
  signal c_44: signed(24 downto 0);
  signal c_44_43_7_False_resize: signed(24 downto 0);
  signal c_44_43_7_False_shift: signed(24 downto 0);
  signal c_44_41_0_False_resize: signed(24 downto 0);
  signal c_44_41_0_False_shift: signed(24 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_38_0_False_resize: signed(23 downto 0);
  signal c_45_38_0_False_shift: signed(23 downto 0);
  signal c_45_43_2_False_resize: signed(23 downto 0);
  signal c_45_43_2_False_shift: signed(23 downto 0);
  signal c_45_sel: std_logic_vector(0 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_i0_resize: signed(23 downto 0);
  signal c_46_i1_resize: signed(23 downto 0);
  signal c_46_i0_shift: signed(23 downto 0);
  signal c_46_i1_shift: signed(23 downto 0);
  signal c_46_arith: signed(23 downto 0);
  signal c_46_oshift: signed(23 downto 0);
  signal c_46_sub_sel: std_logic;
  signal c_47: signed(23 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_49: signed(24 downto 0);
  signal c_49_29_2_False_resize: signed(24 downto 0);
  signal c_49_29_2_False_shift: signed(24 downto 0);
  signal c_49_29_0_False_resize: signed(24 downto 0);
  signal c_49_29_0_False_shift: signed(24 downto 0);
  signal c_49_48_1_False_resize: signed(24 downto 0);
  signal c_49_48_1_False_shift: signed(24 downto 0);
  signal c_49_sel: std_logic_vector(1 downto 0);
  signal c_50: signed(15 downto 0);
  signal c_51: signed(15 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_52_51_7_False_resize: signed(23 downto 0);
  signal c_52_51_7_False_shift: signed(23 downto 0);
  signal c_52_15_0_False_resize: signed(23 downto 0);
  signal c_52_15_0_False_shift: signed(23 downto 0);
  signal c_52_sel: std_logic_vector(0 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_55_i0_resize: signed(23 downto 0);
  signal c_55_i1_resize: signed(23 downto 0);
  signal c_55_i0_shift: signed(23 downto 0);
  signal c_55_i1_shift: signed(23 downto 0);
  signal c_55_arith: signed(23 downto 0);
  signal c_55_oshift: signed(23 downto 0);
  signal c_55_sub_sel: std_logic;
  signal c_56: signed(22 downto 0);
  signal c_56_38_1_False_resize: signed(22 downto 0);
  signal c_56_38_1_False_shift: signed(22 downto 0);
  signal c_56_41_0_False_resize: signed(22 downto 0);
  signal c_56_41_0_False_shift: signed(22 downto 0);
  signal c_56_sel: std_logic_vector(0 downto 0);
  signal c_57: signed(22 downto 0);
  signal c_57_20_0_False_resize: signed(22 downto 0);
  signal c_57_20_0_False_shift: signed(22 downto 0);
  signal c_57_10_6_False_resize: signed(22 downto 0);
  signal c_57_10_6_False_shift: signed(22 downto 0);
  signal c_57_sel: std_logic_vector(0 downto 0);
  signal c_58: signed(22 downto 0);
  signal c_59: signed(22 downto 0);
  signal c_60: signed(22 downto 0);
  signal c_61: signed(22 downto 0);
  signal c_62: signed(23 downto 0);
  signal c_62_i0_resize: signed(23 downto 0);
  signal c_62_i1_resize: signed(23 downto 0);
  signal c_62_i0_shift: signed(23 downto 0);
  signal c_62_i1_shift: signed(23 downto 0);
  signal c_62_arith: signed(23 downto 0);
  signal c_62_oshift: signed(23 downto 0);
  signal c_62_sub_sel: std_logic;
  signal c_63: signed(17 downto 0);
  signal c_63_4_0_False_resize: signed(17 downto 0);
  signal c_63_4_0_False_shift: signed(17 downto 0);
  signal c_63_3_0_False_resize: signed(17 downto 0);
  signal c_63_3_0_False_shift: signed(17 downto 0);
  signal c_63_sel: std_logic_vector(0 downto 0);
  signal c_64: signed(17 downto 0);
  signal c_65: signed(17 downto 0);
  signal c_66: signed(17 downto 0);
  signal c_67: signed(17 downto 0);
  signal c_68: signed(17 downto 0);
  signal c_69: signed(17 downto 0);
  signal c_70: signed(17 downto 0);
  signal c_71: signed(23 downto 0);
  signal c_71_i0_resize: signed(23 downto 0);
  signal c_71_i1_resize: signed(23 downto 0);
  signal c_71_i0_shift: signed(23 downto 0);
  signal c_71_i1_shift: signed(23 downto 0);
  signal c_71_arith: signed(23 downto 0);
  signal c_71_oshift: signed(23 downto 0);
  signal c_71_sub_sel: std_logic;
  signal c_72: signed(23 downto 0);
  signal c_72_48_0_False_resize: signed(23 downto 0);
  signal c_72_48_0_False_shift: signed(23 downto 0);
  signal c_72_41_0_False_resize: signed(23 downto 0);
  signal c_72_41_0_False_shift: signed(23 downto 0);
  signal c_72_43_4_False_resize: signed(23 downto 0);
  signal c_72_43_4_False_shift: signed(23 downto 0);
  signal c_72_sel: std_logic_vector(1 downto 0);
  signal c_73: signed(23 downto 0);
  signal c_74: signed(23 downto 0);
  signal c_75: signed(23 downto 0);
  signal c_75_74_1_False_resize: signed(23 downto 0);
  signal c_75_74_1_False_shift: signed(23 downto 0);
  signal c_75_48_2_False_resize: signed(23 downto 0);
  signal c_75_48_2_False_shift: signed(23 downto 0);
  signal c_75_38_0_False_resize: signed(23 downto 0);
  signal c_75_38_0_False_shift: signed(23 downto 0);
  signal c_75_sel: std_logic_vector(1 downto 0);
  signal c_76: signed(23 downto 0);
  signal c_76_38_0_False_resize: signed(23 downto 0);
  signal c_76_38_0_False_shift: signed(23 downto 0);
  signal c_76_74_0_False_resize: signed(23 downto 0);
  signal c_76_74_0_False_shift: signed(23 downto 0);
  signal c_76_sel: std_logic_vector(0 downto 0);
  signal c_77: signed(22 downto 0);
  signal c_77_43_4_False_resize: signed(22 downto 0);
  signal c_77_43_4_False_shift: signed(22 downto 0);
  signal c_77_41_0_False_resize: signed(22 downto 0);
  signal c_77_41_0_False_shift: signed(22 downto 0);
  signal c_77_48_0_False_resize: signed(22 downto 0);
  signal c_77_48_0_False_shift: signed(22 downto 0);
  signal c_77_sel: std_logic_vector(1 downto 0);
  signal c_78: signed(22 downto 0);
  signal c_78_20_0_False_resize: signed(22 downto 0);
  signal c_78_20_0_False_shift: signed(22 downto 0);
  signal c_78_20_1_False_resize: signed(22 downto 0);
  signal c_78_20_1_False_shift: signed(22 downto 0);
  signal c_78_sel: std_logic_vector(0 downto 0);
  signal c_79: signed(23 downto 0);
  signal c_80: signed(23 downto 0);
  signal c_81: signed(23 downto 0);
  signal c_81_46_0_False_resize: signed(23 downto 0);
  signal c_81_46_0_False_shift: signed(23 downto 0);
  signal c_81_80_0_False_resize: signed(23 downto 0);
  signal c_81_80_0_False_shift: signed(23 downto 0);
  signal c_81_sel: std_logic_vector(0 downto 0);
  signal c_82: signed(23 downto 0);
  signal c_83: signed(23 downto 0);
  signal c_84: signed(23 downto 0);
  signal c_84_resize: signed(23 downto 0);
  signal c_85: signed(23 downto 0);
  signal c_86: signed(23 downto 0);
  signal c_86_resize: signed(23 downto 0);
  signal c_87: signed(23 downto 0);
  signal c_88: signed(23 downto 0);
  signal c_89: signed(23 downto 0);
  signal c_89_resize: signed(23 downto 0);
  signal c_90: signed(23 downto 0);
  signal c_91: signed(23 downto 0);
  signal c_92: signed(23 downto 0);
  signal c_92_resize: signed(23 downto 0);
  signal c_93: signed(23 downto 0);
  signal c_93_resize: signed(23 downto 0);
  signal c_94: signed(22 downto 0);
  signal c_95: signed(22 downto 0);
  signal c_96: signed(22 downto 0);
  signal c_97: signed(23 downto 0);
  signal c_97_resize: signed(23 downto 0);
  signal c_98: signed(23 downto 0);
  signal c_99: signed(23 downto 0);
  signal c_99_resize: signed(23 downto 0);
  signal c_100: signed(22 downto 0);
  signal c_101: signed(22 downto 0);
  signal c_102: signed(23 downto 0);
  signal c_102_resize: signed(23 downto 0);
  signal c_103: signed(22 downto 0);
  signal c_104: signed(22 downto 0);
  signal c_105: signed(22 downto 0);
  signal c_106: signed(22 downto 0);
  signal c_107: signed(22 downto 0);
  signal c_108: signed(22 downto 0);
  signal c_109: signed(23 downto 0);
  signal c_109_resize: signed(23 downto 0);
  signal c_110: signed(23 downto 0);
  signal c_110_resize: signed(23 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 84
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_84);
    end if;
  end process;
  -- output node 1 with id 86
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_86);
    end if;
  end process;
  -- output node 2 with id 89
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_89);
    end if;
  end process;
  -- output node 3 with id 92
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_92);
    end if;
  end process;
  -- output node 4 with id 93
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_93);
    end if;
  end process;
  -- output node 5 with id 97
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_97);
    end if;
  end process;
  -- output node 6 with id 99
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_99);
    end if;
  end process;
  -- output node 7 with id 102
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_102);
    end if;
  end process;
  -- output node 8 with id 109
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_109);
    end if;
  end process;
  -- output node 9 with id 110
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_110);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[4], [1], [2]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  c_1_0_1_False_resize <= resize(c_0, 18);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "00" => c_1 <= c_1_0_0_False_shift;
        when "01" => c_1 <= c_1_0_2_False_shift;
        when others => c_1 <= c_1_0_1_False_shift;
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
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[9], [3], [-3]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 18,
      w_o => 20,
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
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[8], [3], [8]]
  c_5_4_3_False_resize <= resize(c_4, 19);
  c_5_4_3_False_shift <= shift_left(c_5_4_3_False_resize, 3);
  c_5_3_0_False_resize <= c_3(18 downto 0);
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  with config_select_3 select c_5_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_4_3_False_shift;
        when others => c_5 <= c_5_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 6 and associated fundamentals [[9], [3], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_3 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[137], [-45], [125]]
  with config_select_4 select c_7_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 19,
      w_o => 24,
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
      sub_i => c_7_sub_sel,
      x_i => c_6,
      y_i => c_5,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[9], [8], [8]]
  c_8_4_3_False_resize <= resize(c_4, 20);
  c_8_4_3_False_shift <= shift_left(c_8_4_3_False_resize, 3);
  c_8_3_0_False_resize <= c_3;
  c_8_3_0_False_shift <= shift_left(c_8_3_0_False_resize, 0);
  with config_select_3 select c_8_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_4_3_False_shift;
        when others => c_8 <= c_8_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 10 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[9], [3], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_6 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 12 and associated fundamentals [[9], [2], [125]]
  c_12_10_1_False_resize <= resize(c_10, 23);
  c_12_10_1_False_shift <= shift_left(c_12_10_1_False_resize, 1);
  c_12_7_0_False_resize <= c_7(22 downto 0);
  c_12_7_0_False_shift <= shift_left(c_12_7_0_False_resize, 0);
  c_12_11_0_False_resize <= resize(c_11, 23);
  c_12_11_0_False_shift <= shift_left(c_12_11_0_False_resize, 0);
  with config_select_5 select c_12_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "00" => c_12 <= c_12_10_1_False_shift;
        when "01" => c_12 <= c_12_7_0_False_shift;
        when others => c_12 <= c_12_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 13 and associated fundamentals [[9], [8], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 14 and associated fundamentals [[9], [8], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 15 and associated fundamentals [[27], [34], [157]]
  with config_select_6 select c_15_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 20,
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
      sub_i => c_15_sub_sel,
      x_i => c_14,
      y_i => c_12,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 16 and associated fundamentals [[64], [64], [1]]
  c_16_0_0_False_resize <= resize(c_0, 22);
  c_16_0_0_False_shift <= shift_left(c_16_0_0_False_resize, 0);
  c_16_0_6_False_resize <= resize(c_0, 22);
  c_16_0_6_False_shift <= shift_left(c_16_0_6_False_resize, 6);
  with config_select_1 select c_16_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_0_0_False_shift;
        when others => c_16 <= c_16_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 17 and associated fundamentals [[1], [12], [-12]]
  c_17_4_0_False_resize <= resize(c_4, 20);
  c_17_4_0_False_shift <= shift_left(c_17_4_0_False_resize, 0);
  c_17_3_2_False_resize <= c_3;
  c_17_3_2_False_shift <= shift_left(c_17_3_2_False_resize, 2);
  with config_select_3 select c_17_sel <= 
    "0" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_4_0_False_shift;
        when others => c_17 <= c_17_3_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 18 and associated fundamentals [[64], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 19 and associated fundamentals [[64], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 20 and associated fundamentals [[66], [88], [25]]
  with config_select_4 select c_20_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
      w_o => 23,
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
      sub_i => c_20_sub_sel,
      x_i => c_19,
      y_i => c_17,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[9], [3], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 22 and associated fundamentals [[9], [3], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[137], [-45], [125]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 24 and associated fundamentals [[137], [-45], [125]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 25 and associated fundamentals [[27], [-45], [-96]]
  c_25_15_0_False_resize <= c_15(22 downto 0);
  c_25_15_0_False_shift <= shift_left(c_25_15_0_False_resize, 0);
  c_25_24_0_False_resize <= c_24(22 downto 0);
  c_25_24_0_False_shift <= shift_left(c_25_24_0_False_resize, 0);
  c_25_22_5_False_resize <= resize(c_22, 23);
  c_25_22_5_False_shift <= shift_left(c_25_22_5_False_resize, 5);
  with config_select_7 select c_25_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_15_0_False_shift;
        when "01" => c_25 <= c_25_24_0_False_shift;
        when others => c_25 <= c_25_22_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 26 and associated fundamentals [[137], [3], [125]]
  c_26_11_0_False_resize <= resize(c_11, 24);
  c_26_11_0_False_shift <= shift_left(c_26_11_0_False_resize, 0);
  c_26_7_0_False_resize <= c_7;
  c_26_7_0_False_shift <= shift_left(c_26_7_0_False_resize, 0);
  with config_select_5 select c_26_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_11_0_False_shift;
        when others => c_26 <= c_26_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[137], [3], [125]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 28 and associated fundamentals [[137], [3], [125]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 29 and associated fundamentals [[-83], [-87], [-67]]
  with config_select_8 select c_29_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
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
      x_i => c_25,
      y_i => c_28,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 30 and associated fundamentals [[256], [3], [256]]
  c_30_4_8_False_resize <= resize(c_4, 24);
  c_30_4_8_False_shift <= shift_left(c_30_4_8_False_resize, 8);
  c_30_3_0_False_resize <= resize(c_3, 24);
  c_30_3_0_False_shift <= shift_left(c_30_3_0_False_resize, 0);
  with config_select_3 select c_30_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "0" => c_30 <= c_30_4_8_False_shift;
        when others => c_30 <= c_30_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 31 and associated fundamentals [[66], [88], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 32 and associated fundamentals [[66], [88], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 33 and associated fundamentals [[27], [34], [50]]
  c_33_32_1_False_resize <= c_32(21 downto 0);
  c_33_32_1_False_shift <= shift_left(c_33_32_1_False_resize, 1);
  c_33_15_0_False_resize <= c_15(21 downto 0);
  c_33_15_0_False_shift <= shift_left(c_33_15_0_False_resize, 0);
  with config_select_7 select c_33_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "0" => c_33 <= c_33_32_1_False_shift;
        when others => c_33 <= c_33_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 34 and associated fundamentals [[256], [3], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 35 and associated fundamentals [[256], [3], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 36 and associated fundamentals [[256], [3], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 37 and associated fundamentals [[256], [3], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 38 and associated fundamentals [[229], [37], [206]]
  with config_select_8 select c_38_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_38: entity work.adder_node
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
      sub_i => c_38_sub_sel,
      x_i => c_37,
      y_i => c_33,
      z_o => c_38_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_38_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 39 and associated fundamentals [[54], [68], [25]]
  c_39_15_1_False_resize <= c_15(22 downto 0);
  c_39_15_1_False_shift <= shift_left(c_39_15_1_False_resize, 1);
  c_39_32_0_False_resize <= c_32;
  c_39_32_0_False_shift <= shift_left(c_39_32_0_False_resize, 0);
  with config_select_7 select c_39_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "0" => c_39 <= c_39_15_1_False_shift;
        when others => c_39 <= c_39_32_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 40 and associated fundamentals [[66], [88], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_32 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 41 and associated fundamentals [[78], [244], [75]]
  with config_select_8 select c_41_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_41: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
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
      sub_i => c_41_sub_sel,
      x_i => c_40,
      y_i => c_39,
      z_o => c_41_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_41_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 42 and associated fundamentals [[9], [3], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 43 and associated fundamentals [[9], [3], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 44 and associated fundamentals [[78], [244], [-384]]
  c_44_43_7_False_resize <= resize(c_43, 25);
  c_44_43_7_False_shift <= shift_left(c_44_43_7_False_resize, 7);
  c_44_41_0_False_resize <= resize(c_41, 25);
  c_44_41_0_False_shift <= shift_left(c_44_41_0_False_resize, 0);
  with config_select_9 select c_44_sel <= 
    "0" when "10",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "0" => c_44 <= c_44_43_7_False_shift;
        when others => c_44 <= c_44_41_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 45 and associated fundamentals [[229], [12], [206]]
  c_45_38_0_False_resize <= c_38;
  c_45_38_0_False_shift <= shift_left(c_45_38_0_False_resize, 0);
  c_45_43_2_False_resize <= resize(c_43, 24);
  c_45_43_2_False_shift <= shift_left(c_45_43_2_False_resize, 2);
  with config_select_9 select c_45_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "0" => c_45 <= c_45_38_0_False_shift;
        when others => c_45 <= c_45_43_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 46 and associated fundamentals [[-151], [232], [-178]]
  with config_select_10 select c_46_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_46: entity work.adder_node
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
      sub_i => c_46_sub_sel,
      x_i => c_44,
      y_i => c_45,
      z_o => c_46_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_46_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 47 and associated fundamentals [[27], [34], [157]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 48 and associated fundamentals [[27], [34], [157]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 49 and associated fundamentals [[-83], [68], [-268]]
  c_49_29_2_False_resize <= resize(c_29, 25);
  c_49_29_2_False_shift <= shift_left(c_49_29_2_False_resize, 2);
  c_49_29_0_False_resize <= resize(c_29, 25);
  c_49_29_0_False_shift <= shift_left(c_49_29_0_False_resize, 0);
  c_49_48_1_False_resize <= resize(c_48, 25);
  c_49_48_1_False_shift <= shift_left(c_49_48_1_False_resize, 1);
  with config_select_9 select c_49_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_49_sel is
        when "00" => c_49 <= c_49_29_2_False_shift;
        when "01" => c_49 <= c_49_29_0_False_shift;
        when others => c_49 <= c_49_48_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 50 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 51 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 52 and associated fundamentals [[128], [128], [157]]
  c_52_51_7_False_resize <= resize(c_51, 24);
  c_52_51_7_False_shift <= shift_left(c_52_51_7_False_resize, 7);
  c_52_15_0_False_resize <= c_15;
  c_52_15_0_False_shift <= shift_left(c_52_15_0_False_resize, 0);
  with config_select_7 select c_52_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_52_sel is
        when "0" => c_52 <= c_52_51_7_False_shift;
        when others => c_52 <= c_52_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 53 and associated fundamentals [[128], [128], [157]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 54 and associated fundamentals [[128], [128], [157]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 55 and associated fundamentals [[-211], [-60], [-111]]
  with config_select_10 select c_55_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_55: entity work.adder_node
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
      sub_i => c_55_sub_sel,
      x_i => c_49,
      y_i => c_54,
      z_o => c_55_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_55_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 56 and associated fundamentals [[78], [74], [75]]
  c_56_38_1_False_resize <= c_38(22 downto 0);
  c_56_38_1_False_shift <= shift_left(c_56_38_1_False_resize, 1);
  c_56_41_0_False_resize <= c_41(22 downto 0);
  c_56_41_0_False_shift <= shift_left(c_56_41_0_False_resize, 0);
  with config_select_9 select c_56_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_56_sel is
        when "0" => c_56 <= c_56_38_1_False_shift;
        when others => c_56 <= c_56_41_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 57 and associated fundamentals [[66], [64], [64]]
  c_57_20_0_False_resize <= c_20;
  c_57_20_0_False_shift <= shift_left(c_57_20_0_False_resize, 0);
  c_57_10_6_False_resize <= resize(c_10, 23);
  c_57_10_6_False_shift <= shift_left(c_57_10_6_False_resize, 6);
  with config_select_5 select c_57_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_57_sel is
        when "0" => c_57 <= c_57_20_0_False_shift;
        when others => c_57 <= c_57_10_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 58 and associated fundamentals [[66], [64], [64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 59 and associated fundamentals [[66], [64], [64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 60 and associated fundamentals [[66], [64], [64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 61 and associated fundamentals [[66], [64], [64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 62 and associated fundamentals [[90], [212], [86]]
  with config_select_10 select c_62_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_62: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
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
      sub_i => c_62_sub_sel,
      x_i => c_56,
      y_i => c_61,
      z_o => c_62_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_62_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 63 and associated fundamentals [[1], [1], [-3]]
  c_63_4_0_False_resize <= resize(c_4, 18);
  c_63_4_0_False_shift <= shift_left(c_63_4_0_False_resize, 0);
  c_63_3_0_False_resize <= c_3(17 downto 0);
  c_63_3_0_False_shift <= shift_left(c_63_3_0_False_resize, 0);
  with config_select_3 select c_63_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_63_sel is
        when "0" => c_63 <= c_63_4_0_False_shift;
        when others => c_63 <= c_63_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 64 and associated fundamentals [[1], [1], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 65 and associated fundamentals [[1], [1], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 66 and associated fundamentals [[1], [1], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 67 and associated fundamentals [[1], [1], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 68 and associated fundamentals [[1], [1], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 69 and associated fundamentals [[1], [1], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 70 and associated fundamentals [[1], [1], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 11 with id 71 and associated fundamentals [[152], [233], [175]]
  with config_select_11 select c_71_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_71: entity work.adder_node
    generic map (
      w_x_i => 18,
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
      sub_i => c_71_sub_sel,
      x_i => c_70,
      y_i => c_46,
      z_o => c_71_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_71_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 72 and associated fundamentals [[144], [244], [157]]
  c_72_48_0_False_resize <= c_48;
  c_72_48_0_False_shift <= shift_left(c_72_48_0_False_resize, 0);
  c_72_41_0_False_resize <= c_41;
  c_72_41_0_False_shift <= shift_left(c_72_41_0_False_resize, 0);
  c_72_43_4_False_resize <= resize(c_43, 24);
  c_72_43_4_False_shift <= shift_left(c_72_43_4_False_resize, 4);
  with config_select_9 select c_72_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_72_sel is
        when "00" => c_72 <= c_72_48_0_False_shift;
        when "01" => c_72 <= c_72_41_0_False_shift;
        when others => c_72 <= c_72_43_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 73 and associated fundamentals [[137], [-45], [125]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 74 and associated fundamentals [[137], [-45], [125]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_73 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 75 and associated fundamentals [[229], [136], [250]]
  c_75_74_1_False_resize <= c_74;
  c_75_74_1_False_shift <= shift_left(c_75_74_1_False_resize, 1);
  c_75_48_2_False_resize <= c_48;
  c_75_48_2_False_shift <= shift_left(c_75_48_2_False_resize, 2);
  c_75_38_0_False_resize <= c_38;
  c_75_38_0_False_shift <= shift_left(c_75_38_0_False_resize, 0);
  with config_select_9 select c_75_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_75_sel is
        when "00" => c_75 <= c_75_74_1_False_shift;
        when "01" => c_75 <= c_75_48_2_False_shift;
        when others => c_75 <= c_75_38_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 76 and associated fundamentals [[137], [37], [206]]
  c_76_38_0_False_resize <= c_38;
  c_76_38_0_False_shift <= shift_left(c_76_38_0_False_resize, 0);
  c_76_74_0_False_resize <= c_74;
  c_76_74_0_False_shift <= shift_left(c_76_74_0_False_resize, 0);
  with config_select_9 select c_76_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_76_sel is
        when "0" => c_76 <= c_76_38_0_False_shift;
        when others => c_76 <= c_76_74_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 77 and associated fundamentals [[27], [48], [75]]
  c_77_43_4_False_resize <= resize(c_43, 23);
  c_77_43_4_False_shift <= shift_left(c_77_43_4_False_resize, 4);
  c_77_41_0_False_resize <= c_41(22 downto 0);
  c_77_41_0_False_shift <= shift_left(c_77_41_0_False_resize, 0);
  c_77_48_0_False_resize <= c_48(22 downto 0);
  c_77_48_0_False_shift <= shift_left(c_77_48_0_False_resize, 0);
  with config_select_9 select c_77_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_77_sel is
        when "00" => c_77 <= c_77_43_4_False_shift;
        when "01" => c_77 <= c_77_41_0_False_shift;
        when others => c_77 <= c_77_48_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 78 and associated fundamentals [[66], [88], [50]]
  c_78_20_0_False_resize <= c_20;
  c_78_20_0_False_shift <= shift_left(c_78_20_0_False_resize, 0);
  c_78_20_1_False_resize <= c_20;
  c_78_20_1_False_shift <= shift_left(c_78_20_1_False_resize, 1);
  with config_select_5 select c_78_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_78_sel is
        when "0" => c_78 <= c_78_20_0_False_shift;
        when others => c_78 <= c_78_20_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 79 and associated fundamentals [[137], [-45], [125]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 80 and associated fundamentals [[137], [-45], [125]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 81 and associated fundamentals [[-151], [-45], [-178]]
  c_81_46_0_False_resize <= c_46;
  c_81_46_0_False_shift <= shift_left(c_81_46_0_False_resize, 0);
  c_81_80_0_False_resize <= c_80;
  c_81_80_0_False_shift <= shift_left(c_81_80_0_False_resize, 0);
  with config_select_11 select c_81_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_81_sel is
        when "0" => c_81 <= c_81_46_0_False_shift;
        when others => c_81 <= c_81_80_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 82 and associated fundamentals [[144], [244], [157]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_72 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 83 and associated fundamentals [[144], [244], [157]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_82 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 84 and associated fundamentals [[144], [244], [157]]
  c_84_resize <= c_83;
  c_84 <= shift_left(c_84_resize, 0);
  -- node of type 'register' in stage 11 with id 85 and associated fundamentals [[-211], [-60], [-111]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_55 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 86 and associated fundamentals [[211], [60], [111]]
  c_86_resize <= c_85;
  c_86 <= -shift_left(c_86_resize, 0);
  -- node of type 'register' in stage 10 with id 87 and associated fundamentals [[229], [136], [250]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 88 and associated fundamentals [[229], [136], [250]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_87 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 89 and associated fundamentals [[229], [136], [250]]
  c_89_resize <= c_88;
  c_89 <= shift_left(c_89_resize, 0);
  -- node of type 'register' in stage 10 with id 90 and associated fundamentals [[137], [37], [206]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 91 and associated fundamentals [[137], [37], [206]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_90 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 92 and associated fundamentals [[137], [37], [206]]
  c_92_resize <= c_91;
  c_92 <= shift_left(c_92_resize, 0);
  -- node of type 'output' in stage 11 with id 93 and associated fundamentals [[152], [233], [175]]
  c_93_resize <= c_71;
  c_93 <= shift_left(c_93_resize, 0);
  -- node of type 'register' in stage 9 with id 94 and associated fundamentals [[-83], [-87], [-67]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 95 and associated fundamentals [[-83], [-87], [-67]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_94 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 96 and associated fundamentals [[-83], [-87], [-67]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_95 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 97 and associated fundamentals [[166], [174], [134]]
  c_97_resize <= resize(c_96, 24);
  c_97 <= -shift_left(c_97_resize, 1);
  -- node of type 'register' in stage 11 with id 98 and associated fundamentals [[90], [212], [86]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_62 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 99 and associated fundamentals [[90], [212], [86]]
  c_99_resize <= c_98;
  c_99 <= shift_left(c_99_resize, 0);
  -- node of type 'register' in stage 10 with id 100 and associated fundamentals [[27], [48], [75]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 101 and associated fundamentals [[27], [48], [75]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_100 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 102 and associated fundamentals [[54], [96], [150]]
  c_102_resize <= resize(c_101, 24);
  c_102 <= shift_left(c_102_resize, 1);
  -- node of type 'register' in stage 6 with id 103 and associated fundamentals [[66], [88], [50]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 104 and associated fundamentals [[66], [88], [50]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_103 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 105 and associated fundamentals [[66], [88], [50]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_104 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 106 and associated fundamentals [[66], [88], [50]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_105 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 107 and associated fundamentals [[66], [88], [50]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_106 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 108 and associated fundamentals [[66], [88], [50]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_108 <= c_107 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 109 and associated fundamentals [[132], [176], [100]]
  c_109_resize <= resize(c_108, 24);
  c_109 <= shift_left(c_109_resize, 1);
  -- node of type 'output' in stage 11 with id 110 and associated fundamentals [[151], [45], [178]]
  c_110_resize <= c_81;
  c_110 <= -shift_left(c_110_resize, 0);
end architecture;
