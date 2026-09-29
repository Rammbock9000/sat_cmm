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
    y_7: out std_logic_vector(20 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_0_0_False_resize: signed(17 downto 0);
  signal c_1_0_0_False_shift: signed(17 downto 0);
  signal c_1_0_2_False_resize: signed(17 downto 0);
  signal c_1_0_2_False_shift: signed(17 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(20 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_5: signed(20 downto 0);
  signal c_5_3_0_False_resize: signed(20 downto 0);
  signal c_5_3_0_False_shift: signed(20 downto 0);
  signal c_5_4_5_False_resize: signed(20 downto 0);
  signal c_5_4_5_False_shift: signed(20 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_i0_resize: signed(22 downto 0);
  signal c_7_i1_resize: signed(22 downto 0);
  signal c_7_i0_shift: signed(22 downto 0);
  signal c_7_i1_shift: signed(22 downto 0);
  signal c_7_arith: signed(22 downto 0);
  signal c_7_oshift: signed(22 downto 0);
  signal c_8: signed(15 downto 0);
  signal c_9: signed(20 downto 0);
  signal c_10: signed(20 downto 0);
  signal c_11: signed(21 downto 0);
  signal c_11_7_1_False_resize: signed(21 downto 0);
  signal c_11_7_1_False_shift: signed(21 downto 0);
  signal c_11_8_6_False_resize: signed(21 downto 0);
  signal c_11_8_6_False_shift: signed(21 downto 0);
  signal c_11_10_0_False_resize: signed(21 downto 0);
  signal c_11_10_0_False_shift: signed(21 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(21 downto 0);
  signal c_12_0_0_False_resize: signed(21 downto 0);
  signal c_12_0_0_False_shift: signed(21 downto 0);
  signal c_12_0_6_False_resize: signed(21 downto 0);
  signal c_12_0_6_False_shift: signed(21 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_14: signed(21 downto 0);
  signal c_15: signed(21 downto 0);
  signal c_16: signed(21 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_i0_resize: signed(23 downto 0);
  signal c_17_i1_resize: signed(23 downto 0);
  signal c_17_i0_shift: signed(23 downto 0);
  signal c_17_i1_shift: signed(23 downto 0);
  signal c_17_arith: signed(23 downto 0);
  signal c_17_oshift: signed(23 downto 0);
  signal c_18: signed(21 downto 0);
  signal c_18_7_0_False_resize: signed(21 downto 0);
  signal c_18_7_0_False_shift: signed(21 downto 0);
  signal c_18_8_2_False_resize: signed(21 downto 0);
  signal c_18_8_2_False_shift: signed(21 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(15 downto 0);
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
  signal c_23: signed(23 downto 0);
  signal c_23_17_0_False_resize: signed(23 downto 0);
  signal c_23_17_0_False_shift: signed(23 downto 0);
  signal c_23_22_4_False_resize: signed(23 downto 0);
  signal c_23_22_4_False_shift: signed(23 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(22 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_26: signed(22 downto 0);
  signal c_26_20_0_False_resize: signed(22 downto 0);
  signal c_26_20_0_False_shift: signed(22 downto 0);
  signal c_26_25_3_False_resize: signed(22 downto 0);
  signal c_26_25_3_False_shift: signed(22 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_i0_resize: signed(23 downto 0);
  signal c_27_i1_resize: signed(23 downto 0);
  signal c_27_i0_shift: signed(23 downto 0);
  signal c_27_i1_shift: signed(23 downto 0);
  signal c_27_arith: signed(23 downto 0);
  signal c_27_oshift: signed(23 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(15 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_29_20_0_False_resize: signed(22 downto 0);
  signal c_29_20_0_False_shift: signed(22 downto 0);
  signal c_29_28_5_False_resize: signed(22 downto 0);
  signal c_29_28_5_False_shift: signed(22 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(22 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_i0_resize: signed(23 downto 0);
  signal c_31_i1_resize: signed(23 downto 0);
  signal c_31_i0_shift: signed(23 downto 0);
  signal c_31_i1_shift: signed(23 downto 0);
  signal c_31_arith: signed(23 downto 0);
  signal c_31_oshift: signed(23 downto 0);
  signal c_31_sub_sel: std_logic;
  signal c_32: signed(22 downto 0);
  signal c_32_17_0_False_resize: signed(22 downto 0);
  signal c_32_17_0_False_shift: signed(22 downto 0);
  signal c_32_22_4_False_resize: signed(22 downto 0);
  signal c_32_22_4_False_shift: signed(22 downto 0);
  signal c_32_22_3_False_resize: signed(22 downto 0);
  signal c_32_22_3_False_shift: signed(22 downto 0);
  signal c_32_sel: std_logic_vector(1 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_17_1_False_resize: signed(23 downto 0);
  signal c_33_17_1_False_shift: signed(23 downto 0);
  signal c_33_28_0_False_resize: signed(23 downto 0);
  signal c_33_28_0_False_shift: signed(23 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_i0_resize: signed(23 downto 0);
  signal c_34_i1_resize: signed(23 downto 0);
  signal c_34_i0_shift: signed(23 downto 0);
  signal c_34_i1_shift: signed(23 downto 0);
  signal c_34_arith: signed(23 downto 0);
  signal c_34_oshift: signed(23 downto 0);
  signal c_34_sub_sel: std_logic;
  signal c_35: signed(23 downto 0);
  signal c_35_7_0_False_resize: signed(23 downto 0);
  signal c_35_7_0_False_shift: signed(23 downto 0);
  signal c_35_7_5_False_resize: signed(23 downto 0);
  signal c_35_7_5_False_shift: signed(23 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(20 downto 0);
  signal c_37: signed(20 downto 0);
  signal c_38: signed(21 downto 0);
  signal c_38_37_0_False_resize: signed(21 downto 0);
  signal c_38_37_0_False_shift: signed(21 downto 0);
  signal c_38_27_0_False_resize: signed(21 downto 0);
  signal c_38_27_0_False_shift: signed(21 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_i0_resize: signed(23 downto 0);
  signal c_43_i1_resize: signed(23 downto 0);
  signal c_43_i0_shift: signed(23 downto 0);
  signal c_43_i1_shift: signed(23 downto 0);
  signal c_43_arith: signed(23 downto 0);
  signal c_43_oshift: signed(23 downto 0);
  signal c_43_sub_sel: std_logic;
  signal c_44: signed(23 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_27_0_False_resize: signed(23 downto 0);
  signal c_46_27_0_False_shift: signed(23 downto 0);
  signal c_46_45_0_False_resize: signed(23 downto 0);
  signal c_46_45_0_False_shift: signed(23 downto 0);
  signal c_46_37_2_False_resize: signed(23 downto 0);
  signal c_46_37_2_False_shift: signed(23 downto 0);
  signal c_46_sel: std_logic_vector(1 downto 0);
  signal c_47: signed(22 downto 0);
  signal c_47_22_2_False_resize: signed(22 downto 0);
  signal c_47_22_2_False_shift: signed(22 downto 0);
  signal c_47_17_0_False_resize: signed(22 downto 0);
  signal c_47_17_0_False_shift: signed(22 downto 0);
  signal c_47_sel: std_logic_vector(0 downto 0);
  signal c_48: signed(22 downto 0);
  signal c_49: signed(22 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_50_i0_resize: signed(23 downto 0);
  signal c_50_i1_resize: signed(23 downto 0);
  signal c_50_i0_shift: signed(23 downto 0);
  signal c_50_i1_shift: signed(23 downto 0);
  signal c_50_arith: signed(23 downto 0);
  signal c_50_oshift: signed(23 downto 0);
  signal c_50_sub_sel: std_logic;
  signal c_51: signed(22 downto 0);
  signal c_52: signed(22 downto 0);
  signal c_53: signed(22 downto 0);
  signal c_54: signed(22 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_55_54_2_False_resize: signed(23 downto 0);
  signal c_55_54_2_False_shift: signed(23 downto 0);
  signal c_55_34_0_False_resize: signed(23 downto 0);
  signal c_55_34_0_False_shift: signed(23 downto 0);
  signal c_55_52_1_False_resize: signed(23 downto 0);
  signal c_55_52_1_False_shift: signed(23 downto 0);
  signal c_55_sel: std_logic_vector(1 downto 0);
  signal c_56: signed(22 downto 0);
  signal c_56_22_0_False_resize: signed(22 downto 0);
  signal c_56_22_0_False_shift: signed(22 downto 0);
  signal c_56_20_0_False_resize: signed(22 downto 0);
  signal c_56_20_0_False_shift: signed(22 downto 0);
  signal c_56_sel: std_logic_vector(0 downto 0);
  signal c_57: signed(22 downto 0);
  signal c_58: signed(22 downto 0);
  signal c_59: signed(23 downto 0);
  signal c_59_i0_resize: signed(23 downto 0);
  signal c_59_i1_resize: signed(23 downto 0);
  signal c_59_i0_shift: signed(23 downto 0);
  signal c_59_i1_shift: signed(23 downto 0);
  signal c_59_arith: signed(23 downto 0);
  signal c_59_oshift: signed(23 downto 0);
  signal c_59_sub_sel: std_logic;
  signal c_60: signed(23 downto 0);
  signal c_60_22_0_False_resize: signed(23 downto 0);
  signal c_60_22_0_False_shift: signed(23 downto 0);
  signal c_60_20_1_False_resize: signed(23 downto 0);
  signal c_60_20_1_False_shift: signed(23 downto 0);
  signal c_60_sel: std_logic_vector(0 downto 0);
  signal c_61: signed(20 downto 0);
  signal c_62: signed(20 downto 0);
  signal c_63: signed(23 downto 0);
  signal c_63_43_0_False_resize: signed(23 downto 0);
  signal c_63_43_0_False_shift: signed(23 downto 0);
  signal c_63_62_0_False_resize: signed(23 downto 0);
  signal c_63_62_0_False_shift: signed(23 downto 0);
  signal c_63_sel: std_logic_vector(0 downto 0);
  signal c_64: signed(23 downto 0);
  signal c_65: signed(23 downto 0);
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
  signal c_70: signed(23 downto 0);
  signal c_71: signed(23 downto 0);
  signal c_71_70_1_False_resize: signed(23 downto 0);
  signal c_71_70_1_False_shift: signed(23 downto 0);
  signal c_71_31_0_False_resize: signed(23 downto 0);
  signal c_71_31_0_False_shift: signed(23 downto 0);
  signal c_71_69_2_False_resize: signed(23 downto 0);
  signal c_71_69_2_False_shift: signed(23 downto 0);
  signal c_71_sel: std_logic_vector(1 downto 0);
  signal c_72: signed(23 downto 0);
  signal c_72_20_0_False_resize: signed(23 downto 0);
  signal c_72_20_0_False_shift: signed(23 downto 0);
  signal c_72_25_1_False_resize: signed(23 downto 0);
  signal c_72_25_1_False_shift: signed(23 downto 0);
  signal c_72_sel: std_logic_vector(0 downto 0);
  signal c_73: signed(23 downto 0);
  signal c_74: signed(23 downto 0);
  signal c_74_50_0_False_resize: signed(23 downto 0);
  signal c_74_50_0_False_shift: signed(23 downto 0);
  signal c_74_73_1_False_resize: signed(23 downto 0);
  signal c_74_73_1_False_shift: signed(23 downto 0);
  signal c_74_sel: std_logic_vector(0 downto 0);
  signal c_75: signed(15 downto 0);
  signal c_76: signed(15 downto 0);
  signal c_77: signed(23 downto 0);
  signal c_77_76_6_False_resize: signed(23 downto 0);
  signal c_77_76_6_False_shift: signed(23 downto 0);
  signal c_77_34_0_False_resize: signed(23 downto 0);
  signal c_77_34_0_False_shift: signed(23 downto 0);
  signal c_77_sel: std_logic_vector(0 downto 0);
  signal c_78: signed(20 downto 0);
  signal c_78_20_0_False_resize: signed(20 downto 0);
  signal c_78_20_0_False_shift: signed(20 downto 0);
  signal c_78_17_0_False_resize: signed(20 downto 0);
  signal c_78_17_0_False_shift: signed(20 downto 0);
  signal c_78_28_0_False_resize: signed(20 downto 0);
  signal c_78_28_0_False_shift: signed(20 downto 0);
  signal c_78_sel: std_logic_vector(1 downto 0);
  signal c_79: signed(23 downto 0);
  signal c_80: signed(23 downto 0);
  signal c_81: signed(23 downto 0);
  signal c_81_50_0_False_resize: signed(23 downto 0);
  signal c_81_50_0_False_shift: signed(23 downto 0);
  signal c_81_80_0_False_resize: signed(23 downto 0);
  signal c_81_80_0_False_shift: signed(23 downto 0);
  signal c_81_sel: std_logic_vector(0 downto 0);
  signal c_82: signed(23 downto 0);
  signal c_82_27_0_False_resize: signed(23 downto 0);
  signal c_82_27_0_False_shift: signed(23 downto 0);
  signal c_82_34_0_False_resize: signed(23 downto 0);
  signal c_82_34_0_False_shift: signed(23 downto 0);
  signal c_82_sel: std_logic_vector(0 downto 0);
  signal c_83: signed(23 downto 0);
  signal c_84: signed(23 downto 0);
  signal c_85: signed(23 downto 0);
  signal c_85_resize: signed(23 downto 0);
  signal c_86: signed(23 downto 0);
  signal c_87: signed(23 downto 0);
  signal c_88: signed(23 downto 0);
  signal c_89: signed(23 downto 0);
  signal c_90: signed(23 downto 0);
  signal c_91: signed(23 downto 0);
  signal c_91_resize: signed(23 downto 0);
  signal c_92: signed(23 downto 0);
  signal c_93: signed(23 downto 0);
  signal c_94: signed(23 downto 0);
  signal c_94_resize: signed(23 downto 0);
  signal c_95: signed(23 downto 0);
  signal c_96: signed(23 downto 0);
  signal c_96_resize: signed(23 downto 0);
  signal c_97: signed(23 downto 0);
  signal c_97_resize: signed(23 downto 0);
  signal c_98: signed(23 downto 0);
  signal c_99: signed(23 downto 0);
  signal c_100: signed(23 downto 0);
  signal c_100_resize: signed(23 downto 0);
  signal c_101: signed(23 downto 0);
  signal c_102: signed(23 downto 0);
  signal c_103: signed(23 downto 0);
  signal c_104: signed(23 downto 0);
  signal c_104_resize: signed(23 downto 0);
  signal c_105: signed(20 downto 0);
  signal c_106: signed(20 downto 0);
  signal c_107: signed(20 downto 0);
  signal c_108: signed(20 downto 0);
  signal c_109: signed(20 downto 0);
  signal c_110: signed(20 downto 0);
  signal c_110_resize: signed(20 downto 0);
  signal c_111: signed(23 downto 0);
  signal c_112: signed(23 downto 0);
  signal c_112_resize: signed(23 downto 0);
  signal c_113: signed(23 downto 0);
  signal c_114: signed(23 downto 0);
  signal c_115: signed(23 downto 0);
  signal c_116: signed(23 downto 0);
  signal c_116_resize: signed(23 downto 0);
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
  -- output node 0 with id 85
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_85);
    end if;
  end process;
  -- output node 1 with id 91
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_91);
    end if;
  end process;
  -- output node 2 with id 94
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_94);
    end if;
  end process;
  -- output node 3 with id 96
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_96);
    end if;
  end process;
  -- output node 4 with id 97
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_97);
    end if;
  end process;
  -- output node 5 with id 100
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_100);
    end if;
  end process;
  -- output node 6 with id 104
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_104);
    end if;
  end process;
  -- output node 7 with id 110
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_110);
    end if;
  end process;
  -- output node 8 with id 112
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_112);
    end if;
  end process;
  -- output node 9 with id 116
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_116);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[4], [1], [4]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "1" when "00",
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
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[15], [3], [17]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
      w_o => 21,
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
      c_3 <= c_3_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[32], [3], [17]]
  c_5_3_0_False_resize <= c_3;
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  c_5_4_5_False_resize <= resize(c_4, 21);
  c_5_4_5_False_shift <= shift_left(c_5_4_5_False_resize, 5);
  with config_select_3 select c_5_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_3_0_False_shift;
        when others => c_5 <= c_5_4_5_False_shift;
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
  -- node of type 'add' in stage 4 with id 7 and associated fundamentals [[65], [7], [35]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 16,
      w_o => 23,
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
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 8 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[15], [3], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 10 and associated fundamentals [[15], [3], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 11 and associated fundamentals [[64], [14], [17]]
  c_11_7_1_False_resize <= c_7(21 downto 0);
  c_11_7_1_False_shift <= shift_left(c_11_7_1_False_resize, 1);
  c_11_8_6_False_resize <= resize(c_8, 22);
  c_11_8_6_False_shift <= shift_left(c_11_8_6_False_resize, 6);
  c_11_10_0_False_resize <= resize(c_10, 22);
  c_11_10_0_False_shift <= shift_left(c_11_10_0_False_resize, 0);
  with config_select_5 select c_11_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_7_1_False_shift;
        when "01" => c_11 <= c_11_8_6_False_shift;
        when others => c_11 <= c_11_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 12 and associated fundamentals [[1], [64], [1]]
  c_12_0_0_False_resize <= resize(c_0, 22);
  c_12_0_0_False_shift <= shift_left(c_12_0_0_False_resize, 0);
  c_12_0_6_False_resize <= resize(c_0, 22);
  c_12_0_6_False_shift <= shift_left(c_12_0_6_False_resize, 6);
  with config_select_1 select c_12_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_0_0_False_shift;
        when others => c_12 <= c_12_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 13 and associated fundamentals [[1], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 14 and associated fundamentals [[1], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[1], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 16 and associated fundamentals [[1], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'add' in stage 6 with id 17 and associated fundamentals [[66], [142], [19]]
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
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
  -- node of type 'mux' in stage 5 with id 18 and associated fundamentals [[4], [7], [35]]
  c_18_7_0_False_resize <= c_7(21 downto 0);
  c_18_7_0_False_shift <= shift_left(c_18_7_0_False_resize, 0);
  c_18_8_2_False_resize <= resize(c_8, 22);
  c_18_8_2_False_shift <= shift_left(c_18_8_2_False_resize, 2);
  with config_select_5 select c_18_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_7_0_False_shift;
        when others => c_18 <= c_18_8_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 19 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_8 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 20 and associated fundamentals [[9], [13], [71]]
  with config_select_6 select c_20_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 16,
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
      sub_i => c_20_sub_sel,
      x_i => c_18,
      y_i => c_19,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[15], [3], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 22 and associated fundamentals [[15], [3], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 23 and associated fundamentals [[240], [48], [19]]
  c_23_17_0_False_resize <= c_17;
  c_23_17_0_False_shift <= shift_left(c_23_17_0_False_resize, 0);
  c_23_22_4_False_resize <= resize(c_22, 24);
  c_23_22_4_False_shift <= shift_left(c_23_22_4_False_resize, 4);
  with config_select_7 select c_23_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_17_0_False_shift;
        when others => c_23 <= c_23_22_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 24 and associated fundamentals [[65], [7], [35]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 25 and associated fundamentals [[65], [7], [35]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 26 and associated fundamentals [[9], [56], [71]]
  c_26_20_0_False_resize <= c_20;
  c_26_20_0_False_shift <= shift_left(c_26_20_0_False_resize, 0);
  c_26_25_3_False_resize <= c_25;
  c_26_25_3_False_shift <= shift_left(c_26_25_3_False_resize, 3);
  with config_select_7 select c_26_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_20_0_False_shift;
        when others => c_26 <= c_26_25_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 27 and associated fundamentals [[249], [104], [-52]]
  with config_select_8 select c_27_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_27: entity work.adder_node
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
      sub_i => c_27_sub_sel,
      x_i => c_23,
      y_i => c_26,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 28 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_19 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 29 and associated fundamentals [[32], [13], [71]]
  c_29_20_0_False_resize <= c_20;
  c_29_20_0_False_shift <= shift_left(c_29_20_0_False_resize, 0);
  c_29_28_5_False_resize <= resize(c_28, 23);
  c_29_28_5_False_shift <= shift_left(c_29_28_5_False_resize, 5);
  with config_select_7 select c_29_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_20_0_False_shift;
        when others => c_29 <= c_29_28_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 30 and associated fundamentals [[32], [13], [71]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 31 and associated fundamentals [[185], [78], [90]]
  with config_select_9 select c_31_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
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
      sub_i => c_31_sub_sel,
      x_i => c_27,
      y_i => c_30,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 32 and associated fundamentals [[120], [48], [19]]
  c_32_17_0_False_resize <= c_17(22 downto 0);
  c_32_17_0_False_shift <= shift_left(c_32_17_0_False_resize, 0);
  c_32_22_4_False_resize <= resize(c_22, 23);
  c_32_22_4_False_shift <= shift_left(c_32_22_4_False_resize, 4);
  c_32_22_3_False_resize <= resize(c_22, 23);
  c_32_22_3_False_shift <= shift_left(c_32_22_3_False_resize, 3);
  with config_select_7 select c_32_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "00" => c_32 <= c_32_17_0_False_shift;
        when "01" => c_32 <= c_32_22_4_False_shift;
        when others => c_32 <= c_32_22_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 33 and associated fundamentals [[132], [1], [38]]
  c_33_17_1_False_resize <= c_17;
  c_33_17_1_False_shift <= shift_left(c_33_17_1_False_resize, 1);
  c_33_28_0_False_resize <= resize(c_28, 24);
  c_33_28_0_False_shift <= shift_left(c_33_28_0_False_resize, 0);
  with config_select_7 select c_33_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "0" => c_33 <= c_33_17_1_False_shift;
        when others => c_33 <= c_33_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 34 and associated fundamentals [[252], [47], [57]]
  with config_select_8 select c_34_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_34: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_34_sub_sel,
      x_i => c_32,
      y_i => c_33,
      z_o => c_34_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_34_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 35 and associated fundamentals [[65], [224], [35]]
  c_35_7_0_False_resize <= resize(c_7, 24);
  c_35_7_0_False_shift <= shift_left(c_35_7_0_False_resize, 0);
  c_35_7_5_False_resize <= resize(c_7, 24);
  c_35_7_5_False_shift <= shift_left(c_35_7_5_False_resize, 5);
  with config_select_5 select c_35_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_7_0_False_shift;
        when others => c_35 <= c_35_7_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 36 and associated fundamentals [[15], [3], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 37 and associated fundamentals [[15], [3], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 38 and associated fundamentals [[15], [3], [-52]]
  c_38_37_0_False_resize <= resize(c_37, 22);
  c_38_37_0_False_shift <= shift_left(c_38_37_0_False_resize, 0);
  c_38_27_0_False_resize <= c_27(21 downto 0);
  c_38_27_0_False_shift <= shift_left(c_38_27_0_False_resize, 0);
  with config_select_9 select c_38_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "0" => c_38 <= c_38_37_0_False_shift;
        when others => c_38 <= c_38_27_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 39 and associated fundamentals [[65], [224], [35]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 40 and associated fundamentals [[65], [224], [35]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 41 and associated fundamentals [[65], [224], [35]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 42 and associated fundamentals [[65], [224], [35]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 43 and associated fundamentals [[125], [236], [243]]
  with config_select_10 select c_43_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_43: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
      w_o => 24,
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
      sub_i => c_43_sub_sel,
      x_i => c_42,
      y_i => c_38,
      z_o => c_43_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_43_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 44 and associated fundamentals [[66], [142], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 45 and associated fundamentals [[66], [142], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 46 and associated fundamentals [[249], [142], [68]]
  c_46_27_0_False_resize <= c_27;
  c_46_27_0_False_shift <= shift_left(c_46_27_0_False_resize, 0);
  c_46_45_0_False_resize <= c_45;
  c_46_45_0_False_shift <= shift_left(c_46_45_0_False_resize, 0);
  c_46_37_2_False_resize <= resize(c_37, 24);
  c_46_37_2_False_shift <= shift_left(c_46_37_2_False_resize, 2);
  with config_select_9 select c_46_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "00" => c_46 <= c_46_27_0_False_shift;
        when "01" => c_46 <= c_46_45_0_False_shift;
        when others => c_46 <= c_46_37_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 47 and associated fundamentals [[66], [12], [68]]
  c_47_22_2_False_resize <= resize(c_22, 23);
  c_47_22_2_False_shift <= shift_left(c_47_22_2_False_resize, 2);
  c_47_17_0_False_resize <= c_17(22 downto 0);
  c_47_17_0_False_shift <= shift_left(c_47_17_0_False_resize, 0);
  with config_select_7 select c_47_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "0" => c_47 <= c_47_22_2_False_shift;
        when others => c_47 <= c_47_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 48 and associated fundamentals [[66], [12], [68]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 49 and associated fundamentals [[66], [12], [68]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 50 and associated fundamentals [[117], [166], [204]]
  with config_select_10 select c_50_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_50: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
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
      sub_i => c_50_sub_sel,
      x_i => c_46,
      y_i => c_49,
      z_o => c_50_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_50_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 51 and associated fundamentals [[65], [7], [35]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 52 and associated fundamentals [[65], [7], [35]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 53 and associated fundamentals [[9], [13], [71]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 54 and associated fundamentals [[9], [13], [71]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 55 and associated fundamentals [[252], [52], [70]]
  c_55_54_2_False_resize <= resize(c_54, 24);
  c_55_54_2_False_shift <= shift_left(c_55_54_2_False_resize, 2);
  c_55_34_0_False_resize <= c_34;
  c_55_34_0_False_shift <= shift_left(c_55_34_0_False_resize, 0);
  c_55_52_1_False_resize <= resize(c_52, 24);
  c_55_52_1_False_shift <= shift_left(c_55_52_1_False_resize, 1);
  with config_select_9 select c_55_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_55_sel is
        when "00" => c_55 <= c_55_54_2_False_shift;
        when "01" => c_55 <= c_55_34_0_False_shift;
        when others => c_55 <= c_55_52_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 56 and associated fundamentals [[15], [13], [71]]
  c_56_22_0_False_resize <= resize(c_22, 23);
  c_56_22_0_False_shift <= shift_left(c_56_22_0_False_resize, 0);
  c_56_20_0_False_resize <= c_20;
  c_56_20_0_False_shift <= shift_left(c_56_20_0_False_resize, 0);
  with config_select_7 select c_56_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_56_sel is
        when "0" => c_56 <= c_56_22_0_False_shift;
        when others => c_56 <= c_56_20_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 57 and associated fundamentals [[15], [13], [71]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 58 and associated fundamentals [[15], [13], [71]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 59 and associated fundamentals [[237], [65], [141]]
  with config_select_10 select c_59_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_59: entity work.adder_node
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
      sub_i => c_59_sub_sel,
      x_i => c_55,
      y_i => c_58,
      z_o => c_59_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_59_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 60 and associated fundamentals [[15], [26], [142]]
  c_60_22_0_False_resize <= resize(c_22, 24);
  c_60_22_0_False_shift <= shift_left(c_60_22_0_False_resize, 0);
  c_60_20_1_False_resize <= resize(c_20, 24);
  c_60_20_1_False_shift <= shift_left(c_60_20_1_False_resize, 1);
  with config_select_7 select c_60_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_60_sel is
        when "0" => c_60 <= c_60_22_0_False_shift;
        when others => c_60 <= c_60_20_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 61 and associated fundamentals [[15], [3], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 62 and associated fundamentals [[15], [3], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 63 and associated fundamentals [[125], [3], [243]]
  c_63_43_0_False_resize <= c_43;
  c_63_43_0_False_shift <= shift_left(c_63_43_0_False_resize, 0);
  c_63_62_0_False_resize <= resize(c_62, 24);
  c_63_62_0_False_shift <= shift_left(c_63_62_0_False_resize, 0);
  with config_select_11 select c_63_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_63_sel is
        when "0" => c_63 <= c_63_43_0_False_shift;
        when others => c_63 <= c_63_62_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 64 and associated fundamentals [[15], [26], [142]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 65 and associated fundamentals [[15], [26], [142]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 66 and associated fundamentals [[15], [26], [142]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 67 and associated fundamentals [[15], [26], [142]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 68 and associated fundamentals [[155], [55], [41]]
  with config_select_12 select c_68_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_68: entity work.adder_node
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
      sub_i => c_68_sub_sel,
      x_i => c_67,
      y_i => c_63,
      z_o => c_68_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_68_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 69 and associated fundamentals [[65], [7], [35]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 70 and associated fundamentals [[252], [47], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_34 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 71 and associated fundamentals [[185], [94], [140]]
  c_71_70_1_False_resize <= c_70;
  c_71_70_1_False_shift <= shift_left(c_71_70_1_False_resize, 1);
  c_71_31_0_False_resize <= c_31;
  c_71_31_0_False_shift <= shift_left(c_71_31_0_False_resize, 0);
  c_71_69_2_False_resize <= resize(c_69, 24);
  c_71_69_2_False_shift <= shift_left(c_71_69_2_False_resize, 2);
  with config_select_10 select c_71_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_71_sel is
        when "00" => c_71 <= c_71_70_1_False_shift;
        when "01" => c_71 <= c_71_31_0_False_shift;
        when others => c_71 <= c_71_69_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 72 and associated fundamentals [[130], [14], [71]]
  c_72_20_0_False_resize <= resize(c_20, 24);
  c_72_20_0_False_shift <= shift_left(c_72_20_0_False_resize, 0);
  c_72_25_1_False_resize <= resize(c_25, 24);
  c_72_25_1_False_shift <= shift_left(c_72_25_1_False_resize, 1);
  with config_select_7 select c_72_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_72_sel is
        when "0" => c_72 <= c_72_20_0_False_shift;
        when others => c_72 <= c_72_25_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 73 and associated fundamentals [[185], [78], [90]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_31 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 74 and associated fundamentals [[117], [166], [180]]
  c_74_50_0_False_resize <= c_50;
  c_74_50_0_False_shift <= shift_left(c_74_50_0_False_resize, 0);
  c_74_73_1_False_resize <= c_73;
  c_74_73_1_False_shift <= shift_left(c_74_73_1_False_resize, 1);
  with config_select_11 select c_74_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_74_sel is
        when "0" => c_74 <= c_74_50_0_False_shift;
        when others => c_74 <= c_74_73_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 75 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 76 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 77 and associated fundamentals [[252], [47], [64]]
  c_77_76_6_False_resize <= resize(c_76, 24);
  c_77_76_6_False_shift <= shift_left(c_77_76_6_False_resize, 6);
  c_77_34_0_False_resize <= c_34;
  c_77_34_0_False_shift <= shift_left(c_77_34_0_False_resize, 0);
  with config_select_9 select c_77_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_77_sel is
        when "0" => c_77 <= c_77_76_6_False_shift;
        when others => c_77 <= c_77_34_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 78 and associated fundamentals [[9], [1], [19]]
  c_78_20_0_False_resize <= c_20(20 downto 0);
  c_78_20_0_False_shift <= shift_left(c_78_20_0_False_resize, 0);
  c_78_17_0_False_resize <= c_17(20 downto 0);
  c_78_17_0_False_shift <= shift_left(c_78_17_0_False_resize, 0);
  c_78_28_0_False_resize <= resize(c_28, 21);
  c_78_28_0_False_shift <= shift_left(c_78_28_0_False_resize, 0);
  with config_select_7 select c_78_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_78_sel is
        when "00" => c_78 <= c_78_20_0_False_shift;
        when "01" => c_78 <= c_78_17_0_False_shift;
        when others => c_78 <= c_78_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 79 and associated fundamentals [[66], [142], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 80 and associated fundamentals [[66], [142], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 81 and associated fundamentals [[66], [142], [204]]
  c_81_50_0_False_resize <= c_50;
  c_81_50_0_False_shift <= shift_left(c_81_50_0_False_resize, 0);
  c_81_80_0_False_resize <= c_80;
  c_81_80_0_False_shift <= shift_left(c_81_80_0_False_resize, 0);
  with config_select_11 select c_81_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_81_sel is
        when "0" => c_81 <= c_81_50_0_False_shift;
        when others => c_81 <= c_81_80_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 82 and associated fundamentals [[249], [104], [57]]
  c_82_27_0_False_resize <= c_27;
  c_82_27_0_False_shift <= shift_left(c_82_27_0_False_resize, 0);
  c_82_34_0_False_resize <= c_34;
  c_82_34_0_False_shift <= shift_left(c_82_34_0_False_resize, 0);
  with config_select_9 select c_82_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_82_sel is
        when "0" => c_82 <= c_82_27_0_False_shift;
        when others => c_82 <= c_82_34_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 83 and associated fundamentals [[185], [94], [140]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_71 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 84 and associated fundamentals [[185], [94], [140]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_83 & "";
    end if;
  end process;
  -- node of type 'output' in stage 12 with id 85 and associated fundamentals [[185], [94], [140]]
  c_85_resize <= c_84;
  c_85 <= shift_left(c_85_resize, 0);
  -- node of type 'register' in stage 8 with id 86 and associated fundamentals [[130], [14], [71]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_72 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 87 and associated fundamentals [[130], [14], [71]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_86 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 88 and associated fundamentals [[130], [14], [71]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_87 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 89 and associated fundamentals [[130], [14], [71]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_88 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 90 and associated fundamentals [[130], [14], [71]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_89 & "";
    end if;
  end process;
  -- node of type 'output' in stage 12 with id 91 and associated fundamentals [[130], [14], [71]]
  c_91_resize <= c_90;
  c_91 <= shift_left(c_91_resize, 0);
  -- node of type 'register' in stage 11 with id 92 and associated fundamentals [[125], [236], [243]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 93 and associated fundamentals [[125], [236], [243]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_92 & "";
    end if;
  end process;
  -- node of type 'output' in stage 12 with id 94 and associated fundamentals [[125], [236], [243]]
  c_94_resize <= c_93;
  c_94 <= shift_left(c_94_resize, 0);
  -- node of type 'register' in stage 12 with id 95 and associated fundamentals [[117], [166], [180]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_74 & "";
    end if;
  end process;
  -- node of type 'output' in stage 12 with id 96 and associated fundamentals [[117], [166], [180]]
  c_96_resize <= c_95;
  c_96 <= shift_left(c_96_resize, 0);
  -- node of type 'output' in stage 12 with id 97 and associated fundamentals [[155], [55], [41]]
  c_97_resize <= c_68;
  c_97 <= shift_left(c_97_resize, 0);
  -- node of type 'register' in stage 11 with id 98 and associated fundamentals [[237], [65], [141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 99 and associated fundamentals [[237], [65], [141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_98 & "";
    end if;
  end process;
  -- node of type 'output' in stage 12 with id 100 and associated fundamentals [[237], [65], [141]]
  c_100_resize <= c_99;
  c_100 <= shift_left(c_100_resize, 0);
  -- node of type 'register' in stage 10 with id 101 and associated fundamentals [[252], [47], [64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 102 and associated fundamentals [[252], [47], [64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_101 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 103 and associated fundamentals [[252], [47], [64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_102 & "";
    end if;
  end process;
  -- node of type 'output' in stage 12 with id 104 and associated fundamentals [[252], [47], [64]]
  c_104_resize <= c_103;
  c_104 <= shift_left(c_104_resize, 0);
  -- node of type 'register' in stage 8 with id 105 and associated fundamentals [[9], [1], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 106 and associated fundamentals [[9], [1], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_105 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 107 and associated fundamentals [[9], [1], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_106 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 108 and associated fundamentals [[9], [1], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_108 <= c_107 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 109 and associated fundamentals [[9], [1], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_109 <= c_108 & "";
    end if;
  end process;
  -- node of type 'output' in stage 12 with id 110 and associated fundamentals [[9], [1], [19]]
  c_110_resize <= c_109;
  c_110 <= shift_left(c_110_resize, 0);
  -- node of type 'register' in stage 12 with id 111 and associated fundamentals [[66], [142], [204]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_81 & "";
    end if;
  end process;
  -- node of type 'output' in stage 12 with id 112 and associated fundamentals [[66], [142], [204]]
  c_112_resize <= c_111;
  c_112 <= shift_left(c_112_resize, 0);
  -- node of type 'register' in stage 10 with id 113 and associated fundamentals [[249], [104], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_82 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 114 and associated fundamentals [[249], [104], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_113 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 115 and associated fundamentals [[249], [104], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_114 & "";
    end if;
  end process;
  -- node of type 'output' in stage 12 with id 116 and associated fundamentals [[249], [104], [57]]
  c_116_resize <= c_115;
  c_116 <= shift_left(c_116_resize, 0);
end architecture;
