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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_i0_resize: signed(19 downto 0);
  signal c_1_i1_resize: signed(19 downto 0);
  signal c_1_i0_shift: signed(19 downto 0);
  signal c_1_i1_shift: signed(19 downto 0);
  signal c_1_arith: signed(19 downto 0);
  signal c_1_oshift: signed(19 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(15 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_1_0_False_resize: signed(20 downto 0);
  signal c_3_1_0_False_shift: signed(20 downto 0);
  signal c_3_2_5_False_resize: signed(20 downto 0);
  signal c_3_2_5_False_shift: signed(20 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(20 downto 0);
  signal c_4_2_0_False_resize: signed(20 downto 0);
  signal c_4_2_0_False_shift: signed(20 downto 0);
  signal c_4_1_1_False_resize: signed(20 downto 0);
  signal c_4_1_1_False_shift: signed(20 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(23 downto 0);
  signal c_5_i0_resize: signed(23 downto 0);
  signal c_5_i1_resize: signed(23 downto 0);
  signal c_5_i0_shift: signed(23 downto 0);
  signal c_5_i1_shift: signed(23 downto 0);
  signal c_5_arith: signed(23 downto 0);
  signal c_5_oshift: signed(23 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(15 downto 0);
  signal c_7: signed(15 downto 0);
  signal c_8: signed(19 downto 0);
  signal c_9: signed(19 downto 0);
  signal c_10: signed(21 downto 0);
  signal c_10_9_2_False_resize: signed(21 downto 0);
  signal c_10_9_2_False_shift: signed(21 downto 0);
  signal c_10_7_0_False_resize: signed(21 downto 0);
  signal c_10_7_0_False_shift: signed(21 downto 0);
  signal c_10_5_0_False_resize: signed(21 downto 0);
  signal c_10_5_0_False_shift: signed(21 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(15 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_i0_resize: signed(22 downto 0);
  signal c_12_i1_resize: signed(22 downto 0);
  signal c_12_i0_shift: signed(22 downto 0);
  signal c_12_i1_shift: signed(22 downto 0);
  signal c_12_arith: signed(22 downto 0);
  signal c_12_oshift: signed(22 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(19 downto 0);
  signal c_13_2_4_False_resize: signed(19 downto 0);
  signal c_13_2_4_False_shift: signed(19 downto 0);
  signal c_13_1_0_False_resize: signed(19 downto 0);
  signal c_13_1_0_False_shift: signed(19 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_14_i0_resize: signed(22 downto 0);
  signal c_14_i1_resize: signed(22 downto 0);
  signal c_14_i0_shift: signed(22 downto 0);
  signal c_14_i1_shift: signed(22 downto 0);
  signal c_14_arith: signed(22 downto 0);
  signal c_14_oshift: signed(22 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(21 downto 0);
  signal c_15_2_0_False_resize: signed(21 downto 0);
  signal c_15_2_0_False_shift: signed(21 downto 0);
  signal c_15_1_0_False_resize: signed(21 downto 0);
  signal c_15_1_0_False_shift: signed(21 downto 0);
  signal c_15_2_6_False_resize: signed(21 downto 0);
  signal c_15_2_6_False_shift: signed(21 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_18: signed(22 downto 0);
  signal c_18_17_2_False_resize: signed(22 downto 0);
  signal c_18_17_2_False_shift: signed(22 downto 0);
  signal c_18_12_0_False_resize: signed(22 downto 0);
  signal c_18_12_0_False_shift: signed(22 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(21 downto 0);
  signal c_20: signed(21 downto 0);
  signal c_21: signed(21 downto 0);
  signal c_22: signed(21 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_i0_resize: signed(23 downto 0);
  signal c_23_i1_resize: signed(23 downto 0);
  signal c_23_i0_shift: signed(23 downto 0);
  signal c_23_i1_shift: signed(23 downto 0);
  signal c_23_arith: signed(23 downto 0);
  signal c_23_oshift: signed(23 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(22 downto 0);
  signal c_24_7_0_False_resize: signed(22 downto 0);
  signal c_24_7_0_False_shift: signed(22 downto 0);
  signal c_24_14_1_False_resize: signed(22 downto 0);
  signal c_24_14_1_False_shift: signed(22 downto 0);
  signal c_24_14_0_False_resize: signed(22 downto 0);
  signal c_24_14_0_False_shift: signed(22 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_27: signed(22 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_23_0_False_resize: signed(23 downto 0);
  signal c_29_23_0_False_shift: signed(23 downto 0);
  signal c_29_28_3_False_resize: signed(23 downto 0);
  signal c_29_28_3_False_shift: signed(23 downto 0);
  signal c_29_26_2_False_resize: signed(23 downto 0);
  signal c_29_26_2_False_shift: signed(23 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(22 downto 0);
  signal c_31: signed(22 downto 0);
  signal c_32: signed(22 downto 0);
  signal c_33: signed(22 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_i0_resize: signed(23 downto 0);
  signal c_34_i1_resize: signed(23 downto 0);
  signal c_34_i0_shift: signed(23 downto 0);
  signal c_34_i1_shift: signed(23 downto 0);
  signal c_34_arith: signed(23 downto 0);
  signal c_34_oshift: signed(23 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_12_2_False_resize: signed(23 downto 0);
  signal c_35_12_2_False_shift: signed(23 downto 0);
  signal c_35_17_0_False_resize: signed(23 downto 0);
  signal c_35_17_0_False_shift: signed(23 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(19 downto 0);
  signal c_37: signed(19 downto 0);
  signal c_38: signed(19 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_i0_resize: signed(23 downto 0);
  signal c_39_i1_resize: signed(23 downto 0);
  signal c_39_i0_shift: signed(23 downto 0);
  signal c_39_i1_shift: signed(23 downto 0);
  signal c_39_arith: signed(23 downto 0);
  signal c_39_oshift: signed(23 downto 0);
  signal c_39_sub_sel: std_logic;
  signal c_40: signed(21 downto 0);
  signal c_40_9_2_False_resize: signed(21 downto 0);
  signal c_40_9_2_False_shift: signed(21 downto 0);
  signal c_40_14_0_False_resize: signed(21 downto 0);
  signal c_40_14_0_False_shift: signed(21 downto 0);
  signal c_40_sel: std_logic_vector(0 downto 0);
  signal c_41: signed(22 downto 0);
  signal c_41_7_0_False_resize: signed(22 downto 0);
  signal c_41_7_0_False_shift: signed(22 downto 0);
  signal c_41_14_0_False_resize: signed(22 downto 0);
  signal c_41_14_0_False_shift: signed(22 downto 0);
  signal c_41_sel: std_logic_vector(0 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_i0_resize: signed(23 downto 0);
  signal c_42_i1_resize: signed(23 downto 0);
  signal c_42_i0_shift: signed(23 downto 0);
  signal c_42_i1_shift: signed(23 downto 0);
  signal c_42_arith: signed(23 downto 0);
  signal c_42_oshift: signed(23 downto 0);
  signal c_42_sub_sel: std_logic;
  signal c_43: signed(21 downto 0);
  signal c_43_12_0_False_resize: signed(21 downto 0);
  signal c_43_12_0_False_shift: signed(21 downto 0);
  signal c_43_17_0_False_resize: signed(21 downto 0);
  signal c_43_17_0_False_shift: signed(21 downto 0);
  signal c_43_sel: std_logic_vector(0 downto 0);
  signal c_44: signed(21 downto 0);
  signal c_44_i0_resize: signed(21 downto 0);
  signal c_44_i1_resize: signed(21 downto 0);
  signal c_44_i0_shift: signed(21 downto 0);
  signal c_44_i1_shift: signed(21 downto 0);
  signal c_44_arith: signed(21 downto 0);
  signal c_44_oshift: signed(21 downto 0);
  signal c_44_sub_sel: std_logic;
  signal c_45: signed(15 downto 0);
  signal c_46: signed(19 downto 0);
  signal c_46_12_0_False_resize: signed(19 downto 0);
  signal c_46_12_0_False_shift: signed(19 downto 0);
  signal c_46_45_3_False_resize: signed(19 downto 0);
  signal c_46_45_3_False_shift: signed(19 downto 0);
  signal c_46_sel: std_logic_vector(0 downto 0);
  signal c_47: signed(15 downto 0);
  signal c_48: signed(15 downto 0);
  signal c_49: signed(19 downto 0);
  signal c_50: signed(20 downto 0);
  signal c_50_49_0_False_resize: signed(20 downto 0);
  signal c_50_49_0_False_shift: signed(20 downto 0);
  signal c_50_48_0_False_resize: signed(20 downto 0);
  signal c_50_48_0_False_shift: signed(20 downto 0);
  signal c_50_44_0_False_resize: signed(20 downto 0);
  signal c_50_44_0_False_shift: signed(20 downto 0);
  signal c_50_sel: std_logic_vector(1 downto 0);
  signal c_51: signed(19 downto 0);
  signal c_52: signed(19 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_53_i0_resize: signed(23 downto 0);
  signal c_53_i1_resize: signed(23 downto 0);
  signal c_53_i0_shift: signed(23 downto 0);
  signal c_53_i1_shift: signed(23 downto 0);
  signal c_53_arith: signed(23 downto 0);
  signal c_53_oshift: signed(23 downto 0);
  signal c_53_sub_sel: std_logic;
  signal c_54: signed(23 downto 0);
  signal c_54_39_1_False_resize: signed(23 downto 0);
  signal c_54_39_1_False_shift: signed(23 downto 0);
  signal c_54_39_0_False_resize: signed(23 downto 0);
  signal c_54_39_0_False_shift: signed(23 downto 0);
  signal c_54_sel: std_logic_vector(0 downto 0);
  signal c_55: signed(21 downto 0);
  signal c_55_48_0_False_resize: signed(21 downto 0);
  signal c_55_48_0_False_shift: signed(21 downto 0);
  signal c_55_23_1_False_resize: signed(21 downto 0);
  signal c_55_23_1_False_shift: signed(21 downto 0);
  signal c_55_sel: std_logic_vector(0 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_56_i0_resize: signed(23 downto 0);
  signal c_56_i1_resize: signed(23 downto 0);
  signal c_56_i0_shift: signed(23 downto 0);
  signal c_56_i1_shift: signed(23 downto 0);
  signal c_56_arith: signed(23 downto 0);
  signal c_56_oshift: signed(23 downto 0);
  signal c_56_sub_sel: std_logic;
  signal c_57: signed(22 downto 0);
  signal c_58: signed(22 downto 0);
  signal c_59: signed(22 downto 0);
  signal c_60: signed(22 downto 0);
  signal c_61: signed(22 downto 0);
  signal c_62: signed(22 downto 0);
  signal c_63: signed(23 downto 0);
  signal c_63_62_1_False_resize: signed(23 downto 0);
  signal c_63_62_1_False_shift: signed(23 downto 0);
  signal c_63_62_3_False_resize: signed(23 downto 0);
  signal c_63_62_3_False_shift: signed(23 downto 0);
  signal c_63_56_0_False_resize: signed(23 downto 0);
  signal c_63_56_0_False_shift: signed(23 downto 0);
  signal c_63_sel: std_logic_vector(1 downto 0);
  signal c_64: signed(15 downto 0);
  signal c_65: signed(15 downto 0);
  signal c_66: signed(23 downto 0);
  signal c_67: signed(23 downto 0);
  signal c_68: signed(23 downto 0);
  signal c_68_65_1_False_resize: signed(23 downto 0);
  signal c_68_65_1_False_shift: signed(23 downto 0);
  signal c_68_67_0_False_resize: signed(23 downto 0);
  signal c_68_67_0_False_shift: signed(23 downto 0);
  signal c_68_53_0_False_resize: signed(23 downto 0);
  signal c_68_53_0_False_shift: signed(23 downto 0);
  signal c_68_sel: std_logic_vector(1 downto 0);
  signal c_69: signed(23 downto 0);
  signal c_70: signed(23 downto 0);
  signal c_71: signed(23 downto 0);
  signal c_71_23_2_False_resize: signed(23 downto 0);
  signal c_71_23_2_False_shift: signed(23 downto 0);
  signal c_71_70_0_False_resize: signed(23 downto 0);
  signal c_71_70_0_False_shift: signed(23 downto 0);
  signal c_71_sel: std_logic_vector(0 downto 0);
  signal c_72: signed(23 downto 0);
  signal c_72_39_1_False_resize: signed(23 downto 0);
  signal c_72_39_1_False_shift: signed(23 downto 0);
  signal c_72_70_0_False_resize: signed(23 downto 0);
  signal c_72_70_0_False_shift: signed(23 downto 0);
  signal c_72_44_1_False_resize: signed(23 downto 0);
  signal c_72_44_1_False_shift: signed(23 downto 0);
  signal c_72_sel: std_logic_vector(1 downto 0);
  signal c_73: signed(22 downto 0);
  signal c_73_26_0_False_resize: signed(22 downto 0);
  signal c_73_26_0_False_shift: signed(22 downto 0);
  signal c_73_60_1_False_resize: signed(22 downto 0);
  signal c_73_60_1_False_shift: signed(22 downto 0);
  signal c_73_23_0_False_resize: signed(22 downto 0);
  signal c_73_23_0_False_shift: signed(22 downto 0);
  signal c_73_sel: std_logic_vector(1 downto 0);
  signal c_74: signed(23 downto 0);
  signal c_74_39_0_False_resize: signed(23 downto 0);
  signal c_74_39_0_False_shift: signed(23 downto 0);
  signal c_74_49_4_False_resize: signed(23 downto 0);
  signal c_74_49_4_False_shift: signed(23 downto 0);
  signal c_74_44_3_False_resize: signed(23 downto 0);
  signal c_74_44_3_False_shift: signed(23 downto 0);
  signal c_74_sel: std_logic_vector(1 downto 0);
  signal c_75: signed(23 downto 0);
  signal c_75_44_0_False_resize: signed(23 downto 0);
  signal c_75_44_0_False_shift: signed(23 downto 0);
  signal c_75_28_1_False_resize: signed(23 downto 0);
  signal c_75_28_1_False_shift: signed(23 downto 0);
  signal c_75_23_0_False_resize: signed(23 downto 0);
  signal c_75_23_0_False_shift: signed(23 downto 0);
  signal c_75_sel: std_logic_vector(1 downto 0);
  signal c_76: signed(19 downto 0);
  signal c_77: signed(19 downto 0);
  signal c_78: signed(23 downto 0);
  signal c_78_56_0_False_resize: signed(23 downto 0);
  signal c_78_56_0_False_shift: signed(23 downto 0);
  signal c_78_77_0_False_resize: signed(23 downto 0);
  signal c_78_77_0_False_shift: signed(23 downto 0);
  signal c_78_sel: std_logic_vector(0 downto 0);
  signal c_79: signed(22 downto 0);
  signal c_80: signed(22 downto 0);
  signal c_81: signed(23 downto 0);
  signal c_81_53_0_False_resize: signed(23 downto 0);
  signal c_81_53_0_False_shift: signed(23 downto 0);
  signal c_81_80_2_False_resize: signed(23 downto 0);
  signal c_81_80_2_False_shift: signed(23 downto 0);
  signal c_81_sel: std_logic_vector(0 downto 0);
  signal c_82: signed(23 downto 0);
  signal c_82_resize: signed(23 downto 0);
  signal c_83: signed(23 downto 0);
  signal c_83_resize: signed(23 downto 0);
  signal c_84: signed(23 downto 0);
  signal c_85: signed(23 downto 0);
  signal c_86: signed(23 downto 0);
  signal c_86_resize: signed(23 downto 0);
  signal c_87: signed(23 downto 0);
  signal c_88: signed(23 downto 0);
  signal c_89: signed(23 downto 0);
  signal c_89_resize: signed(23 downto 0);
  signal c_90: signed(22 downto 0);
  signal c_91: signed(22 downto 0);
  signal c_92: signed(23 downto 0);
  signal c_92_resize: signed(23 downto 0);
  signal c_93: signed(23 downto 0);
  signal c_94: signed(23 downto 0);
  signal c_95: signed(23 downto 0);
  signal c_95_resize: signed(23 downto 0);
  signal c_96: signed(23 downto 0);
  signal c_97: signed(23 downto 0);
  signal c_97_resize: signed(23 downto 0);
  signal c_98: signed(23 downto 0);
  signal c_99: signed(23 downto 0);
  signal c_100: signed(23 downto 0);
  signal c_100_resize: signed(23 downto 0);
  signal c_101: signed(23 downto 0);
  signal c_101_resize: signed(23 downto 0);
  signal c_102: signed(23 downto 0);
  signal c_102_resize: signed(23 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 82
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_82);
    end if;
  end process;
  -- output node 1 with id 83
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_83);
    end if;
  end process;
  -- output node 2 with id 86
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_86);
    end if;
  end process;
  -- output node 3 with id 89
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_89);
    end if;
  end process;
  -- output node 4 with id 92
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_92);
    end if;
  end process;
  -- output node 5 with id 95
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_95);
    end if;
  end process;
  -- output node 6 with id 97
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_97);
    end if;
  end process;
  -- output node 7 with id 100
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_100);
    end if;
  end process;
  -- output node 8 with id 101
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_101);
    end if;
  end process;
  -- output node 9 with id 102
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_102);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[7], [9], [9]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
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
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[7], [9], [32]]
  c_3_1_0_False_resize <= resize(c_1, 21);
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  c_3_2_5_False_resize <= resize(c_2, 21);
  c_3_2_5_False_shift <= shift_left(c_3_2_5_False_resize, 5);
  with config_select_2 select c_3_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_1_0_False_shift;
        when others => c_3 <= c_3_2_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[1], [18], [1]]
  c_4_2_0_False_resize <= resize(c_2, 21);
  c_4_2_0_False_shift <= shift_left(c_4_2_0_False_resize, 0);
  c_4_1_1_False_resize <= resize(c_1, 21);
  c_4_1_1_False_shift <= shift_left(c_4_1_1_False_resize, 1);
  with config_select_2 select c_4_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_2_0_False_shift;
        when others => c_4 <= c_4_1_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[27], [54], [129]]
  with config_select_3 select c_5_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 21,
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
      sub_i => c_5_sub_sel,
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 7 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[7], [9], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[7], [9], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 10 and associated fundamentals [[28], [54], [1]]
  c_10_9_2_False_resize <= resize(c_9, 22);
  c_10_9_2_False_shift <= shift_left(c_10_9_2_False_resize, 2);
  c_10_7_0_False_resize <= resize(c_7, 22);
  c_10_7_0_False_shift <= shift_left(c_10_7_0_False_resize, 0);
  c_10_5_0_False_resize <= c_5(21 downto 0);
  c_10_5_0_False_shift <= shift_left(c_10_5_0_False_resize, 0);
  with config_select_4 select c_10_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_9_2_False_shift;
        when "01" => c_10 <= c_10_7_0_False_shift;
        when others => c_10 <= c_10_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_7 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 12 and associated fundamentals [[12], [70], [-15]]
  with config_select_5 select c_12_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 16,
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
      sub_i => c_12_sub_sel,
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 13 and associated fundamentals [[16], [16], [9]]
  c_13_2_4_False_resize <= resize(c_2, 20);
  c_13_2_4_False_shift <= shift_left(c_13_2_4_False_resize, 4);
  c_13_1_0_False_resize <= c_1;
  c_13_1_0_False_shift <= shift_left(c_13_1_0_False_resize, 0);
  with config_select_2 select c_13_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_2_4_False_shift;
        when others => c_13 <= c_13_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 14 and associated fundamentals [[71], [55], [27]]
  with config_select_3 select c_14_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
      w_o => 23,
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
      sub_i => c_14_sub_sel,
      x_i => c_13,
      y_i => c_8,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 15 and associated fundamentals [[7], [64], [1]]
  c_15_2_0_False_resize <= resize(c_2, 22);
  c_15_2_0_False_shift <= shift_left(c_15_2_0_False_resize, 0);
  c_15_1_0_False_resize <= resize(c_1, 22);
  c_15_1_0_False_shift <= shift_left(c_15_1_0_False_resize, 0);
  c_15_2_6_False_resize <= resize(c_2, 22);
  c_15_2_6_False_shift <= shift_left(c_15_2_6_False_resize, 6);
  with config_select_2 select c_15_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "00" => c_15 <= c_15_2_0_False_shift;
        when "01" => c_15 <= c_15_1_0_False_shift;
        when others => c_15 <= c_15_2_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 16 and associated fundamentals [[27], [54], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 17 and associated fundamentals [[27], [54], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 18 and associated fundamentals [[108], [70], [-15]]
  c_18_17_2_False_resize <= c_17(22 downto 0);
  c_18_17_2_False_shift <= shift_left(c_18_17_2_False_resize, 2);
  c_18_12_0_False_resize <= c_12;
  c_18_12_0_False_shift <= shift_left(c_18_12_0_False_resize, 0);
  with config_select_6 select c_18_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_17_2_False_shift;
        when others => c_18 <= c_18_12_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 19 and associated fundamentals [[7], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 20 and associated fundamentals [[7], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[7], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 22 and associated fundamentals [[7], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 23 and associated fundamentals [[-209], [204], [31]]
  with config_select_7 select c_23_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_23_sub_sel,
      x_i => c_22,
      y_i => c_18,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 24 and associated fundamentals [[71], [1], [54]]
  c_24_7_0_False_resize <= resize(c_7, 23);
  c_24_7_0_False_shift <= shift_left(c_24_7_0_False_resize, 0);
  c_24_14_1_False_resize <= c_14;
  c_24_14_1_False_shift <= shift_left(c_24_14_1_False_resize, 1);
  c_24_14_0_False_resize <= c_14;
  c_24_14_0_False_shift <= shift_left(c_24_14_0_False_resize, 0);
  with config_select_4 select c_24_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_7_0_False_shift;
        when "01" => c_24 <= c_24_14_1_False_shift;
        when others => c_24 <= c_24_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 25 and associated fundamentals [[27], [54], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 26 and associated fundamentals [[27], [54], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[12], [70], [-15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 28 and associated fundamentals [[12], [70], [-15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 29 and associated fundamentals [[96], [216], [31]]
  c_29_23_0_False_resize <= c_23;
  c_29_23_0_False_shift <= shift_left(c_29_23_0_False_resize, 0);
  c_29_28_3_False_resize <= resize(c_28, 24);
  c_29_28_3_False_shift <= shift_left(c_29_28_3_False_resize, 3);
  c_29_26_2_False_resize <= c_26;
  c_29_26_2_False_shift <= shift_left(c_29_26_2_False_resize, 2);
  with config_select_8 select c_29_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "00" => c_29 <= c_29_23_0_False_shift;
        when "01" => c_29 <= c_29_28_3_False_shift;
        when others => c_29 <= c_29_26_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 30 and associated fundamentals [[71], [1], [54]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 31 and associated fundamentals [[71], [1], [54]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 32 and associated fundamentals [[71], [1], [54]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 33 and associated fundamentals [[71], [1], [54]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'add' in stage 9 with id 34 and associated fundamentals [[167], [217], [85]]
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
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_33,
      y_i => c_29,
      z_o => c_34_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_34_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 35 and associated fundamentals [[48], [54], [129]]
  c_35_12_2_False_resize <= resize(c_12, 24);
  c_35_12_2_False_shift <= shift_left(c_35_12_2_False_resize, 2);
  c_35_17_0_False_resize <= c_17;
  c_35_17_0_False_shift <= shift_left(c_35_17_0_False_resize, 0);
  with config_select_6 select c_35_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_12_2_False_shift;
        when others => c_35 <= c_35_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 36 and associated fundamentals [[7], [9], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 37 and associated fundamentals [[7], [9], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 38 and associated fundamentals [[7], [9], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 39 and associated fundamentals [[89], [117], [249]]
  with config_select_7 select c_39_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_39: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_39_sub_sel,
      x_i => c_35,
      y_i => c_38,
      z_o => c_39_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_39_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 40 and associated fundamentals [[28], [55], [36]]
  c_40_9_2_False_resize <= resize(c_9, 22);
  c_40_9_2_False_shift <= shift_left(c_40_9_2_False_resize, 2);
  c_40_14_0_False_resize <= c_14(21 downto 0);
  c_40_14_0_False_shift <= shift_left(c_40_14_0_False_resize, 0);
  with config_select_4 select c_40_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "0" => c_40 <= c_40_9_2_False_shift;
        when others => c_40 <= c_40_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 41 and associated fundamentals [[71], [1], [1]]
  c_41_7_0_False_resize <= resize(c_7, 23);
  c_41_7_0_False_shift <= shift_left(c_41_7_0_False_resize, 0);
  c_41_14_0_False_resize <= c_14;
  c_41_14_0_False_shift <= shift_left(c_41_14_0_False_resize, 0);
  with config_select_4 select c_41_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "0" => c_41 <= c_41_7_0_False_shift;
        when others => c_41 <= c_41_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 42 and associated fundamentals [[183], [221], [143]]
  with config_select_5 select c_42_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_42: entity work.adder_node
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
      sub_i => c_42_sub_sel,
      x_i => c_40,
      y_i => c_41,
      z_o => c_42_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_42_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 43 and associated fundamentals [[12], [54], [-15]]
  c_43_12_0_False_resize <= c_12(21 downto 0);
  c_43_12_0_False_shift <= shift_left(c_43_12_0_False_resize, 0);
  c_43_17_0_False_resize <= c_17(21 downto 0);
  c_43_17_0_False_shift <= shift_left(c_43_17_0_False_resize, 0);
  with config_select_6 select c_43_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "0" => c_43 <= c_43_12_0_False_shift;
        when others => c_43 <= c_43_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 44 and associated fundamentals [[19], [-45], [24]]
  with config_select_7 select c_44_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_44: entity work.adder_node
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
      sub_i => c_44_sub_sel,
      x_i => c_38,
      y_i => c_43,
      z_o => c_44_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_44_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 45 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_11 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 46 and associated fundamentals [[12], [8], [8]]
  c_46_12_0_False_resize <= c_12(19 downto 0);
  c_46_12_0_False_shift <= shift_left(c_46_12_0_False_resize, 0);
  c_46_45_3_False_resize <= resize(c_45, 20);
  c_46_45_3_False_shift <= shift_left(c_46_45_3_False_resize, 3);
  with config_select_6 select c_46_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "0" => c_46 <= c_46_12_0_False_shift;
        when others => c_46 <= c_46_45_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 47 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 48 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 49 and associated fundamentals [[7], [9], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_38 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 50 and associated fundamentals [[19], [1], [9]]
  c_50_49_0_False_resize <= resize(c_49, 21);
  c_50_49_0_False_shift <= shift_left(c_50_49_0_False_resize, 0);
  c_50_48_0_False_resize <= resize(c_48, 21);
  c_50_48_0_False_shift <= shift_left(c_50_48_0_False_resize, 0);
  c_50_44_0_False_resize <= c_44(20 downto 0);
  c_50_44_0_False_shift <= shift_left(c_50_44_0_False_resize, 0);
  with config_select_8 select c_50_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_50_sel is
        when "00" => c_50 <= c_50_49_0_False_shift;
        when "01" => c_50 <= c_50_48_0_False_shift;
        when others => c_50 <= c_50_44_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 51 and associated fundamentals [[12], [8], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 52 and associated fundamentals [[12], [8], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 53 and associated fundamentals [[173], [127], [137]]
  with config_select_9 select c_53_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_53: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 21,
      w_o => 24,
      s_x_i => 4,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_53_sub_sel,
      x_i => c_52,
      y_i => c_50,
      z_o => c_53_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_53_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 54 and associated fundamentals [[178], [234], [249]]
  c_54_39_1_False_resize <= c_39;
  c_54_39_1_False_shift <= shift_left(c_54_39_1_False_resize, 1);
  c_54_39_0_False_resize <= c_39;
  c_54_39_0_False_shift <= shift_left(c_54_39_0_False_resize, 0);
  with config_select_8 select c_54_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_54_sel is
        when "0" => c_54 <= c_54_39_1_False_shift;
        when others => c_54 <= c_54_39_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 55 and associated fundamentals [[1], [1], [62]]
  c_55_48_0_False_resize <= resize(c_48, 22);
  c_55_48_0_False_shift <= shift_left(c_55_48_0_False_resize, 0);
  c_55_23_1_False_resize <= c_23(21 downto 0);
  c_55_23_1_False_shift <= shift_left(c_55_23_1_False_resize, 1);
  with config_select_8 select c_55_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_55_sel is
        when "0" => c_55 <= c_55_48_0_False_shift;
        when others => c_55 <= c_55_23_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 56 and associated fundamentals [[179], [235], [187]]
  with config_select_9 select c_56_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_56: entity work.adder_node
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
      sub_i => c_56_sub_sel,
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
  -- node of type 'register' in stage 4 with id 57 and associated fundamentals [[71], [55], [27]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 58 and associated fundamentals [[71], [55], [27]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 59 and associated fundamentals [[71], [55], [27]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 60 and associated fundamentals [[71], [55], [27]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 61 and associated fundamentals [[71], [55], [27]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 62 and associated fundamentals [[71], [55], [27]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 63 and associated fundamentals [[142], [235], [216]]
  c_63_62_1_False_resize <= resize(c_62, 24);
  c_63_62_1_False_shift <= shift_left(c_63_62_1_False_resize, 1);
  c_63_62_3_False_resize <= resize(c_62, 24);
  c_63_62_3_False_shift <= shift_left(c_63_62_3_False_resize, 3);
  c_63_56_0_False_resize <= c_56;
  c_63_56_0_False_shift <= shift_left(c_63_56_0_False_resize, 0);
  with config_select_10 select c_63_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_63_sel is
        when "00" => c_63 <= c_63_62_1_False_shift;
        when "01" => c_63 <= c_63_62_3_False_shift;
        when others => c_63 <= c_63_56_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 64 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 65 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 66 and associated fundamentals [[-209], [204], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 67 and associated fundamentals [[-209], [204], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 68 and associated fundamentals [[173], [204], [2]]
  c_68_65_1_False_resize <= resize(c_65, 24);
  c_68_65_1_False_shift <= shift_left(c_68_65_1_False_resize, 1);
  c_68_67_0_False_resize <= c_67;
  c_68_67_0_False_shift <= shift_left(c_68_67_0_False_resize, 0);
  c_68_53_0_False_resize <= c_53;
  c_68_53_0_False_shift <= shift_left(c_68_53_0_False_resize, 0);
  with config_select_10 select c_68_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_68_sel is
        when "00" => c_68 <= c_68_65_1_False_shift;
        when "01" => c_68 <= c_68_67_0_False_shift;
        when others => c_68 <= c_68_53_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 69 and associated fundamentals [[183], [221], [143]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 70 and associated fundamentals [[183], [221], [143]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 71 and associated fundamentals [[183], [221], [124]]
  c_71_23_2_False_resize <= c_23;
  c_71_23_2_False_shift <= shift_left(c_71_23_2_False_resize, 2);
  c_71_70_0_False_resize <= c_70;
  c_71_70_0_False_shift <= shift_left(c_71_70_0_False_resize, 0);
  with config_select_8 select c_71_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_71_sel is
        when "0" => c_71 <= c_71_23_2_False_shift;
        when others => c_71 <= c_71_70_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 72 and associated fundamentals [[38], [234], [143]]
  c_72_39_1_False_resize <= c_39;
  c_72_39_1_False_shift <= shift_left(c_72_39_1_False_resize, 1);
  c_72_70_0_False_resize <= c_70;
  c_72_70_0_False_shift <= shift_left(c_72_70_0_False_resize, 0);
  c_72_44_1_False_resize <= resize(c_44, 24);
  c_72_44_1_False_shift <= shift_left(c_72_44_1_False_resize, 1);
  with config_select_8 select c_72_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_72_sel is
        when "00" => c_72 <= c_72_39_1_False_shift;
        when "01" => c_72 <= c_72_70_0_False_shift;
        when others => c_72 <= c_72_44_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 73 and associated fundamentals [[27], [110], [31]]
  c_73_26_0_False_resize <= c_26(22 downto 0);
  c_73_26_0_False_shift <= shift_left(c_73_26_0_False_resize, 0);
  c_73_60_1_False_resize <= c_60;
  c_73_60_1_False_shift <= shift_left(c_73_60_1_False_resize, 1);
  c_73_23_0_False_resize <= c_23(22 downto 0);
  c_73_23_0_False_shift <= shift_left(c_73_23_0_False_resize, 0);
  with config_select_8 select c_73_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_73_sel is
        when "00" => c_73 <= c_73_26_0_False_shift;
        when "01" => c_73 <= c_73_60_1_False_shift;
        when others => c_73 <= c_73_23_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 74 and associated fundamentals [[89], [144], [192]]
  c_74_39_0_False_resize <= c_39;
  c_74_39_0_False_shift <= shift_left(c_74_39_0_False_resize, 0);
  c_74_49_4_False_resize <= resize(c_49, 24);
  c_74_49_4_False_shift <= shift_left(c_74_49_4_False_resize, 4);
  c_74_44_3_False_resize <= resize(c_44, 24);
  c_74_44_3_False_shift <= shift_left(c_74_44_3_False_resize, 3);
  with config_select_8 select c_74_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_74_sel is
        when "00" => c_74 <= c_74_39_0_False_shift;
        when "01" => c_74 <= c_74_49_4_False_shift;
        when others => c_74 <= c_74_44_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 75 and associated fundamentals [[-209], [-45], [-30]]
  c_75_44_0_False_resize <= resize(c_44, 24);
  c_75_44_0_False_shift <= shift_left(c_75_44_0_False_resize, 0);
  c_75_28_1_False_resize <= resize(c_28, 24);
  c_75_28_1_False_shift <= shift_left(c_75_28_1_False_resize, 1);
  c_75_23_0_False_resize <= c_23;
  c_75_23_0_False_shift <= shift_left(c_75_23_0_False_resize, 0);
  with config_select_8 select c_75_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_75_sel is
        when "00" => c_75 <= c_75_44_0_False_shift;
        when "01" => c_75 <= c_75_28_1_False_shift;
        when others => c_75 <= c_75_23_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 76 and associated fundamentals [[7], [9], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 77 and associated fundamentals [[7], [9], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 78 and associated fundamentals [[179], [9], [187]]
  c_78_56_0_False_resize <= c_56;
  c_78_56_0_False_shift <= shift_left(c_78_56_0_False_resize, 0);
  c_78_77_0_False_resize <= resize(c_77, 24);
  c_78_77_0_False_shift <= shift_left(c_78_77_0_False_resize, 0);
  with config_select_10 select c_78_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_78_sel is
        when "0" => c_78 <= c_78_56_0_False_shift;
        when others => c_78 <= c_78_77_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 79 and associated fundamentals [[12], [70], [-15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 80 and associated fundamentals [[12], [70], [-15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 81 and associated fundamentals [[48], [127], [137]]
  c_81_53_0_False_resize <= c_53;
  c_81_53_0_False_shift <= shift_left(c_81_53_0_False_resize, 0);
  c_81_80_2_False_resize <= resize(c_80, 24);
  c_81_80_2_False_shift <= shift_left(c_81_80_2_False_resize, 2);
  with config_select_10 select c_81_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_81_sel is
        when "0" => c_81 <= c_81_53_0_False_shift;
        when others => c_81 <= c_81_80_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 82 and associated fundamentals [[142], [235], [216]]
  c_82_resize <= c_63;
  c_82 <= shift_left(c_82_resize, 0);
  -- node of type 'output' in stage 10 with id 83 and associated fundamentals [[173], [204], [2]]
  c_83_resize <= c_68;
  c_83 <= shift_left(c_83_resize, 0);
  -- node of type 'register' in stage 9 with id 84 and associated fundamentals [[183], [221], [124]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_71 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 85 and associated fundamentals [[183], [221], [124]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_84 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 86 and associated fundamentals [[183], [221], [124]]
  c_86_resize <= c_85;
  c_86 <= shift_left(c_86_resize, 0);
  -- node of type 'register' in stage 9 with id 87 and associated fundamentals [[38], [234], [143]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_72 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 88 and associated fundamentals [[38], [234], [143]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_87 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 89 and associated fundamentals [[38], [234], [143]]
  c_89_resize <= c_88;
  c_89 <= shift_left(c_89_resize, 0);
  -- node of type 'register' in stage 9 with id 90 and associated fundamentals [[27], [110], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 91 and associated fundamentals [[27], [110], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_90 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 92 and associated fundamentals [[54], [220], [62]]
  c_92_resize <= resize(c_91, 24);
  c_92 <= shift_left(c_92_resize, 1);
  -- node of type 'register' in stage 9 with id 93 and associated fundamentals [[89], [144], [192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 94 and associated fundamentals [[89], [144], [192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_93 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 95 and associated fundamentals [[89], [144], [192]]
  c_95_resize <= c_94;
  c_95 <= shift_left(c_95_resize, 0);
  -- node of type 'register' in stage 10 with id 96 and associated fundamentals [[167], [217], [85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_34 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 97 and associated fundamentals [[167], [217], [85]]
  c_97_resize <= c_96;
  c_97 <= shift_left(c_97_resize, 0);
  -- node of type 'register' in stage 9 with id 98 and associated fundamentals [[-209], [-45], [-30]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 99 and associated fundamentals [[-209], [-45], [-30]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_98 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 100 and associated fundamentals [[209], [45], [30]]
  c_100_resize <= c_99;
  c_100 <= -shift_left(c_100_resize, 0);
  -- node of type 'output' in stage 10 with id 101 and associated fundamentals [[179], [9], [187]]
  c_101_resize <= c_78;
  c_101 <= shift_left(c_101_resize, 0);
  -- node of type 'output' in stage 10 with id 102 and associated fundamentals [[48], [127], [137]]
  c_102_resize <= c_81;
  c_102 <= shift_left(c_102_resize, 0);
end architecture;
