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
  signal c_1: signed(21 downto 0);
  signal c_1_0_0_False_resize: signed(21 downto 0);
  signal c_1_0_0_False_shift: signed(21 downto 0);
  signal c_1_0_6_False_resize: signed(21 downto 0);
  signal c_1_0_6_False_shift: signed(21 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(20 downto 0);
  signal c_2_0_0_False_resize: signed(20 downto 0);
  signal c_2_0_0_False_shift: signed(20 downto 0);
  signal c_2_0_5_False_resize: signed(20 downto 0);
  signal c_2_0_5_False_shift: signed(20 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(21 downto 0);
  signal c_6_5_0_False_resize: signed(21 downto 0);
  signal c_6_5_0_False_shift: signed(21 downto 0);
  signal c_6_5_4_False_resize: signed(21 downto 0);
  signal c_6_5_4_False_shift: signed(21 downto 0);
  signal c_6_3_0_False_resize: signed(21 downto 0);
  signal c_6_3_0_False_shift: signed(21 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_5_7_False_resize: signed(22 downto 0);
  signal c_7_5_7_False_shift: signed(22 downto 0);
  signal c_7_5_0_False_resize: signed(22 downto 0);
  signal c_7_5_0_False_shift: signed(22 downto 0);
  signal c_7_5_6_False_resize: signed(22 downto 0);
  signal c_7_5_6_False_shift: signed(22 downto 0);
  signal c_7_3_1_False_resize: signed(22 downto 0);
  signal c_7_3_1_False_shift: signed(22 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(25 downto 0);
  signal c_8_i0_resize: signed(25 downto 0);
  signal c_8_i1_resize: signed(25 downto 0);
  signal c_8_i0_shift: signed(25 downto 0);
  signal c_8_i1_shift: signed(25 downto 0);
  signal c_8_arith: signed(25 downto 0);
  signal c_8_oshift: signed(25 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(24 downto 0);
  signal c_9_3_0_False_resize: signed(24 downto 0);
  signal c_9_3_0_False_shift: signed(24 downto 0);
  signal c_9_5_0_False_resize: signed(24 downto 0);
  signal c_9_5_0_False_shift: signed(24 downto 0);
  signal c_9_3_3_False_resize: signed(24 downto 0);
  signal c_9_3_3_False_shift: signed(24 downto 0);
  signal c_9_5_7_False_resize: signed(24 downto 0);
  signal c_9_5_7_False_shift: signed(24 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(15 downto 0);
  signal c_11: signed(15 downto 0);
  signal c_12: signed(20 downto 0);
  signal c_12_11_3_False_resize: signed(20 downto 0);
  signal c_12_11_3_False_shift: signed(20 downto 0);
  signal c_12_11_1_False_resize: signed(20 downto 0);
  signal c_12_11_1_False_shift: signed(20 downto 0);
  signal c_12_8_0_False_resize: signed(20 downto 0);
  signal c_12_8_0_False_shift: signed(20 downto 0);
  signal c_12_11_5_False_resize: signed(20 downto 0);
  signal c_12_11_5_False_shift: signed(20 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(24 downto 0);
  signal c_14: signed(24 downto 0);
  signal c_15: signed(24 downto 0);
  signal c_15_i0_resize: signed(24 downto 0);
  signal c_15_i1_resize: signed(24 downto 0);
  signal c_15_i0_shift: signed(24 downto 0);
  signal c_15_i1_shift: signed(24 downto 0);
  signal c_15_arith: signed(24 downto 0);
  signal c_15_oshift: signed(24 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(15 downto 0);
  signal c_17: signed(15 downto 0);
  signal c_18: signed(21 downto 0);
  signal c_19: signed(21 downto 0);
  signal c_20: signed(21 downto 0);
  signal c_21: signed(21 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_23_0_False_resize: signed(25 downto 0);
  signal c_24_23_0_False_shift: signed(25 downto 0);
  signal c_24_21_0_False_resize: signed(25 downto 0);
  signal c_24_21_0_False_shift: signed(25 downto 0);
  signal c_24_17_3_False_resize: signed(25 downto 0);
  signal c_24_17_3_False_shift: signed(25 downto 0);
  signal c_24_15_2_False_resize: signed(25 downto 0);
  signal c_24_15_2_False_shift: signed(25 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_25_21_0_False_resize: signed(22 downto 0);
  signal c_25_21_0_False_shift: signed(22 downto 0);
  signal c_25_17_0_False_resize: signed(22 downto 0);
  signal c_25_17_0_False_shift: signed(22 downto 0);
  signal c_25_15_2_False_resize: signed(22 downto 0);
  signal c_25_15_2_False_shift: signed(22 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(24 downto 0);
  signal c_26_i0_resize: signed(24 downto 0);
  signal c_26_i1_resize: signed(24 downto 0);
  signal c_26_i0_shift: signed(24 downto 0);
  signal c_26_i1_shift: signed(24 downto 0);
  signal c_26_arith: signed(24 downto 0);
  signal c_26_oshift: signed(24 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(25 downto 0);
  signal c_27_15_0_False_resize: signed(25 downto 0);
  signal c_27_15_0_False_shift: signed(25 downto 0);
  signal c_27_21_4_False_resize: signed(25 downto 0);
  signal c_27_21_4_False_shift: signed(25 downto 0);
  signal c_27_17_2_False_resize: signed(25 downto 0);
  signal c_27_17_2_False_shift: signed(25 downto 0);
  signal c_27_15_4_False_resize: signed(25 downto 0);
  signal c_27_15_4_False_shift: signed(25 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(21 downto 0);
  signal c_29: signed(21 downto 0);
  signal c_30: signed(24 downto 0);
  signal c_31: signed(24 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_29_4_False_resize: signed(25 downto 0);
  signal c_32_29_4_False_shift: signed(25 downto 0);
  signal c_32_31_0_False_resize: signed(25 downto 0);
  signal c_32_31_0_False_shift: signed(25 downto 0);
  signal c_32_26_0_False_resize: signed(25 downto 0);
  signal c_32_26_0_False_shift: signed(25 downto 0);
  signal c_32_31_1_False_resize: signed(25 downto 0);
  signal c_32_31_1_False_shift: signed(25 downto 0);
  signal c_32_sel: std_logic_vector(1 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_i0_resize: signed(25 downto 0);
  signal c_35_i1_resize: signed(25 downto 0);
  signal c_35_i0_shift: signed(25 downto 0);
  signal c_35_i1_shift: signed(25 downto 0);
  signal c_35_arith: signed(25 downto 0);
  signal c_35_oshift: signed(25 downto 0);
  signal c_35_sub_sel: std_logic;
  signal c_36: signed(21 downto 0);
  signal c_37: signed(21 downto 0);
  signal c_38: signed(24 downto 0);
  signal c_39: signed(24 downto 0);
  signal c_40: signed(24 downto 0);
  signal c_41: signed(24 downto 0);
  signal c_42: signed(24 downto 0);
  signal c_42_37_0_False_resize: signed(24 downto 0);
  signal c_42_37_0_False_shift: signed(24 downto 0);
  signal c_42_39_1_False_resize: signed(24 downto 0);
  signal c_42_39_1_False_shift: signed(24 downto 0);
  signal c_42_41_1_False_resize: signed(24 downto 0);
  signal c_42_41_1_False_shift: signed(24 downto 0);
  signal c_42_35_0_False_resize: signed(24 downto 0);
  signal c_42_35_0_False_shift: signed(24 downto 0);
  signal c_42_sel: std_logic_vector(1 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_43_41_1_False_resize: signed(25 downto 0);
  signal c_43_41_1_False_shift: signed(25 downto 0);
  signal c_43_35_0_False_resize: signed(25 downto 0);
  signal c_43_35_0_False_shift: signed(25 downto 0);
  signal c_43_41_0_False_resize: signed(25 downto 0);
  signal c_43_41_0_False_shift: signed(25 downto 0);
  signal c_43_37_2_False_resize: signed(25 downto 0);
  signal c_43_37_2_False_shift: signed(25 downto 0);
  signal c_43_sel: std_logic_vector(1 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_44_i0_resize: signed(25 downto 0);
  signal c_44_i1_resize: signed(25 downto 0);
  signal c_44_i0_shift: signed(25 downto 0);
  signal c_44_i1_shift: signed(25 downto 0);
  signal c_44_arith: signed(25 downto 0);
  signal c_44_oshift: signed(25 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_26_0_False_resize: signed(25 downto 0);
  signal c_47_26_0_False_shift: signed(25 downto 0);
  signal c_47_31_0_False_resize: signed(25 downto 0);
  signal c_47_31_0_False_shift: signed(25 downto 0);
  signal c_47_46_0_False_resize: signed(25 downto 0);
  signal c_47_46_0_False_shift: signed(25 downto 0);
  signal c_47_sel: std_logic_vector(1 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_54_51_0_False_resize: signed(25 downto 0);
  signal c_54_51_0_False_shift: signed(25 downto 0);
  signal c_54_44_0_False_resize: signed(25 downto 0);
  signal c_54_44_0_False_shift: signed(25 downto 0);
  signal c_54_53_0_False_resize: signed(25 downto 0);
  signal c_54_53_0_False_shift: signed(25 downto 0);
  signal c_54_sel: std_logic_vector(1 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_59: signed(24 downto 0);
  signal c_59_i0_resize: signed(25 downto 0);
  signal c_59_i1_resize: signed(25 downto 0);
  signal c_59_i0_shift: signed(25 downto 0);
  signal c_59_i1_shift: signed(25 downto 0);
  signal c_59_arith: signed(25 downto 0);
  signal c_59_oshift: signed(24 downto 0);
  signal c_59_sub_sel: std_logic;
  signal c_60: signed(15 downto 0);
  signal c_61: signed(15 downto 0);
  signal c_62: signed(15 downto 0);
  signal c_63: signed(15 downto 0);
  signal c_64: signed(15 downto 0);
  signal c_65: signed(15 downto 0);
  signal c_66: signed(15 downto 0);
  signal c_67: signed(15 downto 0);
  signal c_68: signed(24 downto 0);
  signal c_69: signed(24 downto 0);
  signal c_70: signed(24 downto 0);
  signal c_71: signed(24 downto 0);
  signal c_72: signed(24 downto 0);
  signal c_73: signed(24 downto 0);
  signal c_74: signed(24 downto 0);
  signal c_75: signed(24 downto 0);
  signal c_76: signed(26 downto 0);
  signal c_76_67_4_False_resize: signed(26 downto 0);
  signal c_76_67_4_False_shift: signed(26 downto 0);
  signal c_76_75_3_False_resize: signed(26 downto 0);
  signal c_76_75_3_False_shift: signed(26 downto 0);
  signal c_76_59_0_False_resize: signed(26 downto 0);
  signal c_76_59_0_False_shift: signed(26 downto 0);
  signal c_76_71_5_False_resize: signed(26 downto 0);
  signal c_76_71_5_False_shift: signed(26 downto 0);
  signal c_76_sel: std_logic_vector(1 downto 0);
  signal c_77: signed(25 downto 0);
  signal c_78: signed(25 downto 0);
  signal c_79: signed(25 downto 0);
  signal c_80: signed(25 downto 0);
  signal c_81: signed(24 downto 0);
  signal c_81_80_0_False_resize: signed(24 downto 0);
  signal c_81_80_0_False_shift: signed(24 downto 0);
  signal c_81_78_2_False_resize: signed(24 downto 0);
  signal c_81_78_2_False_shift: signed(24 downto 0);
  signal c_81_59_0_False_resize: signed(24 downto 0);
  signal c_81_59_0_False_shift: signed(24 downto 0);
  signal c_81_75_0_False_resize: signed(24 downto 0);
  signal c_81_75_0_False_shift: signed(24 downto 0);
  signal c_81_sel: std_logic_vector(1 downto 0);
  signal c_82: signed(25 downto 0);
  signal c_82_i0_resize: signed(25 downto 0);
  signal c_82_i1_resize: signed(25 downto 0);
  signal c_82_i0_shift: signed(25 downto 0);
  signal c_82_i1_shift: signed(25 downto 0);
  signal c_82_arith: signed(25 downto 0);
  signal c_82_oshift: signed(25 downto 0);
  signal c_82_sub_sel: std_logic;
  signal c_83: signed(25 downto 0);
  signal c_83_75_1_False_resize: signed(25 downto 0);
  signal c_83_75_1_False_shift: signed(25 downto 0);
  signal c_83_59_0_False_resize: signed(25 downto 0);
  signal c_83_59_0_False_shift: signed(25 downto 0);
  signal c_83_80_0_False_resize: signed(25 downto 0);
  signal c_83_80_0_False_shift: signed(25 downto 0);
  signal c_83_59_1_False_resize: signed(25 downto 0);
  signal c_83_59_1_False_shift: signed(25 downto 0);
  signal c_83_sel: std_logic_vector(1 downto 0);
  signal c_84: signed(25 downto 0);
  signal c_84_49_0_False_resize: signed(25 downto 0);
  signal c_84_49_0_False_shift: signed(25 downto 0);
  signal c_84_39_0_False_resize: signed(25 downto 0);
  signal c_84_39_0_False_shift: signed(25 downto 0);
  signal c_84_35_0_False_resize: signed(25 downto 0);
  signal c_84_35_0_False_shift: signed(25 downto 0);
  signal c_84_sel: std_logic_vector(1 downto 0);
  signal c_85: signed(24 downto 0);
  signal c_86: signed(24 downto 0);
  signal c_87: signed(24 downto 0);
  signal c_88: signed(24 downto 0);
  signal c_89: signed(25 downto 0);
  signal c_89_86_4_False_resize: signed(25 downto 0);
  signal c_89_86_4_False_shift: signed(25 downto 0);
  signal c_89_88_0_False_resize: signed(25 downto 0);
  signal c_89_88_0_False_shift: signed(25 downto 0);
  signal c_89_82_0_False_resize: signed(25 downto 0);
  signal c_89_82_0_False_shift: signed(25 downto 0);
  signal c_89_sel: std_logic_vector(1 downto 0);
  signal c_90: signed(25 downto 0);
  signal c_90_44_0_False_resize: signed(25 downto 0);
  signal c_90_44_0_False_shift: signed(25 downto 0);
  signal c_90_44_1_False_resize: signed(25 downto 0);
  signal c_90_44_1_False_shift: signed(25 downto 0);
  signal c_90_53_0_False_resize: signed(25 downto 0);
  signal c_90_53_0_False_shift: signed(25 downto 0);
  signal c_90_sel: std_logic_vector(1 downto 0);
  signal c_91: signed(25 downto 0);
  signal c_92: signed(25 downto 0);
  signal c_93: signed(25 downto 0);
  signal c_94: signed(25 downto 0);
  signal c_95: signed(24 downto 0);
  signal c_96: signed(24 downto 0);
  signal c_97: signed(25 downto 0);
  signal c_97_94_0_False_resize: signed(25 downto 0);
  signal c_97_94_0_False_shift: signed(25 downto 0);
  signal c_97_82_0_False_resize: signed(25 downto 0);
  signal c_97_82_0_False_shift: signed(25 downto 0);
  signal c_97_96_0_False_resize: signed(25 downto 0);
  signal c_97_96_0_False_shift: signed(25 downto 0);
  signal c_97_sel: std_logic_vector(1 downto 0);
  signal c_98: signed(25 downto 0);
  signal c_99: signed(25 downto 0);
  signal c_100: signed(25 downto 0);
  signal c_100_resize: signed(25 downto 0);
  signal c_101: signed(25 downto 0);
  signal c_102: signed(25 downto 0);
  signal c_103: signed(25 downto 0);
  signal c_104: signed(25 downto 0);
  signal c_105: signed(25 downto 0);
  signal c_106: signed(25 downto 0);
  signal c_107: signed(25 downto 0);
  signal c_107_resize: signed(25 downto 0);
  signal c_108: signed(25 downto 0);
  signal c_108_resize: signed(25 downto 0);
  signal c_109: signed(25 downto 0);
  signal c_110: signed(25 downto 0);
  signal c_111: signed(25 downto 0);
  signal c_112: signed(25 downto 0);
  signal c_113: signed(25 downto 0);
  signal c_113_resize: signed(25 downto 0);
  signal c_114: signed(25 downto 0);
  signal c_114_resize: signed(25 downto 0);
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
  -- output node 0 with id 100
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_100);
    end if;
  end process;
  -- output node 1 with id 107
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_107);
    end if;
  end process;
  -- output node 2 with id 108
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_108);
    end if;
  end process;
  -- output node 3 with id 113
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_113);
    end if;
  end process;
  -- output node 4 with id 114
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_114);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [1], [1], [64]]
  c_1_0_0_False_resize <= resize(c_0, 22);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_6_False_resize <= resize(c_0, 22);
  c_1_0_6_False_shift <= shift_left(c_1_0_6_False_resize, 6);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[32], [32], [32], [1]]
  c_2_0_0_False_resize <= resize(c_0, 21);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_5_False_resize <= resize(c_0, 21);
  c_2_0_5_False_shift <= shift_left(c_2_0_5_False_resize, 5);
  with config_select_1 select c_2_sel <= 
    "0" when "11",
    "1" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[33], [33], [33], [63]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 21,
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
      sub_i => c_3_sub_sel,
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
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[1], [33], [1], [16]]
  c_6_5_0_False_resize <= resize(c_5, 22);
  c_6_5_0_False_shift <= shift_left(c_6_5_0_False_resize, 0);
  c_6_5_4_False_resize <= resize(c_5, 22);
  c_6_5_4_False_shift <= shift_left(c_6_5_4_False_resize, 4);
  c_6_3_0_False_resize <= c_3;
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "00" when "00",
    "00" when "10",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_5_0_False_shift;
        when "01" => c_6 <= c_6_5_4_False_shift;
        when others => c_6 <= c_6_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[1], [64], [66], [128]]
  c_7_5_7_False_resize <= resize(c_5, 23);
  c_7_5_7_False_shift <= shift_left(c_7_5_7_False_resize, 7);
  c_7_5_0_False_resize <= resize(c_5, 23);
  c_7_5_0_False_shift <= shift_left(c_7_5_0_False_resize, 0);
  c_7_5_6_False_resize <= resize(c_5, 23);
  c_7_5_6_False_shift <= shift_left(c_7_5_6_False_resize, 6);
  c_7_3_1_False_resize <= resize(c_3, 23);
  c_7_3_1_False_shift <= shift_left(c_7_3_1_False_resize, 1);
  with config_select_3 select c_7_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_5_7_False_shift;
        when "01" => c_7 <= c_7_5_0_False_shift;
        when "10" => c_7 <= c_7_5_6_False_shift;
        when others => c_7 <= c_7_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 8 and associated fundamentals [[-7], [545], [529], [-1008]]
  with config_select_4 select c_8_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 3,
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
      c_8 <= c_8_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[264], [128], [33], [1]]
  c_9_3_0_False_resize <= resize(c_3, 25);
  c_9_3_0_False_shift <= shift_left(c_9_3_0_False_resize, 0);
  c_9_5_0_False_resize <= resize(c_5, 25);
  c_9_5_0_False_shift <= shift_left(c_9_5_0_False_resize, 0);
  c_9_3_3_False_resize <= resize(c_3, 25);
  c_9_3_3_False_shift <= shift_left(c_9_3_3_False_resize, 3);
  c_9_5_7_False_resize <= resize(c_5, 25);
  c_9_5_7_False_shift <= shift_left(c_9_5_7_False_resize, 7);
  with config_select_3 select c_9_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "00" => c_9 <= c_9_3_0_False_shift;
        when "01" => c_9 <= c_9_5_0_False_shift;
        when "10" => c_9 <= c_9_3_3_False_shift;
        when others => c_9 <= c_9_5_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 12 and associated fundamentals [[-7], [2], [8], [32]]
  c_12_11_3_False_resize <= resize(c_11, 21);
  c_12_11_3_False_shift <= shift_left(c_12_11_3_False_resize, 3);
  c_12_11_1_False_resize <= resize(c_11, 21);
  c_12_11_1_False_shift <= shift_left(c_12_11_1_False_resize, 1);
  c_12_8_0_False_resize <= c_8(20 downto 0);
  c_12_8_0_False_shift <= shift_left(c_12_8_0_False_resize, 0);
  c_12_11_5_False_resize <= resize(c_11, 21);
  c_12_11_5_False_shift <= shift_left(c_12_11_5_False_resize, 5);
  with config_select_5 select c_12_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "00" => c_12 <= c_12_11_3_False_shift;
        when "01" => c_12 <= c_12_11_1_False_shift;
        when "10" => c_12 <= c_12_8_0_False_shift;
        when others => c_12 <= c_12_11_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 13 and associated fundamentals [[264], [128], [33], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 14 and associated fundamentals [[264], [128], [33], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 15 and associated fundamentals [[271], [126], [25], [33]]
  with config_select_6 select c_15_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 21,
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
      sub_i => c_15_sub_sel,
      x_i => c_14,
      y_i => c_12,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 16 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 17 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 18 and associated fundamentals [[33], [33], [33], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 19 and associated fundamentals [[33], [33], [33], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 20 and associated fundamentals [[33], [33], [33], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 21 and associated fundamentals [[33], [33], [33], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 22 and associated fundamentals [[-7], [545], [529], [-1008]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 23 and associated fundamentals [[-7], [545], [529], [-1008]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 24 and associated fundamentals [[33], [504], [529], [8]]
  c_24_23_0_False_resize <= c_23;
  c_24_23_0_False_shift <= shift_left(c_24_23_0_False_resize, 0);
  c_24_21_0_False_resize <= resize(c_21, 26);
  c_24_21_0_False_shift <= shift_left(c_24_21_0_False_resize, 0);
  c_24_17_3_False_resize <= resize(c_17, 26);
  c_24_17_3_False_shift <= shift_left(c_24_17_3_False_resize, 3);
  c_24_15_2_False_resize <= resize(c_15, 26);
  c_24_15_2_False_shift <= shift_left(c_24_15_2_False_resize, 2);
  with config_select_7 select c_24_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_23_0_False_shift;
        when "01" => c_24 <= c_24_21_0_False_shift;
        when "10" => c_24 <= c_24_17_3_False_shift;
        when others => c_24 <= c_24_15_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 25 and associated fundamentals [[33], [1], [100], [63]]
  c_25_21_0_False_resize <= resize(c_21, 23);
  c_25_21_0_False_shift <= shift_left(c_25_21_0_False_resize, 0);
  c_25_17_0_False_resize <= resize(c_17, 23);
  c_25_17_0_False_shift <= shift_left(c_25_17_0_False_resize, 0);
  c_25_15_2_False_resize <= c_15(22 downto 0);
  c_25_15_2_False_shift <= shift_left(c_25_15_2_False_resize, 2);
  with config_select_7 select c_25_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_21_0_False_shift;
        when "01" => c_25 <= c_25_17_0_False_shift;
        when others => c_25 <= c_25_15_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 26 and associated fundamentals [[-33], [502], [329], [134]]
  with config_select_8 select c_26_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_26_sub_sel,
      x_i => c_24,
      y_i => c_25,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 27 and associated fundamentals [[528], [4], [25], [528]]
  c_27_15_0_False_resize <= resize(c_15, 26);
  c_27_15_0_False_shift <= shift_left(c_27_15_0_False_resize, 0);
  c_27_21_4_False_resize <= resize(c_21, 26);
  c_27_21_4_False_shift <= shift_left(c_27_21_4_False_resize, 4);
  c_27_17_2_False_resize <= resize(c_17, 26);
  c_27_17_2_False_shift <= shift_left(c_27_17_2_False_resize, 2);
  c_27_15_4_False_resize <= resize(c_15, 26);
  c_27_15_4_False_shift <= shift_left(c_27_15_4_False_resize, 4);
  with config_select_7 select c_27_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "00" => c_27 <= c_27_15_0_False_shift;
        when "01" => c_27 <= c_27_21_4_False_shift;
        when "10" => c_27 <= c_27_17_2_False_shift;
        when others => c_27 <= c_27_15_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 28 and associated fundamentals [[33], [33], [33], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 29 and associated fundamentals [[33], [33], [33], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 30 and associated fundamentals [[271], [126], [25], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 31 and associated fundamentals [[271], [126], [25], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 32 and associated fundamentals [[271], [528], [329], [66]]
  c_32_29_4_False_resize <= resize(c_29, 26);
  c_32_29_4_False_shift <= shift_left(c_32_29_4_False_resize, 4);
  c_32_31_0_False_resize <= resize(c_31, 26);
  c_32_31_0_False_shift <= shift_left(c_32_31_0_False_resize, 0);
  c_32_26_0_False_resize <= resize(c_26, 26);
  c_32_26_0_False_shift <= shift_left(c_32_26_0_False_resize, 0);
  c_32_31_1_False_resize <= resize(c_31, 26);
  c_32_31_1_False_shift <= shift_left(c_32_31_1_False_resize, 1);
  with config_select_9 select c_32_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "00" => c_32 <= c_32_29_4_False_shift;
        when "01" => c_32 <= c_32_31_0_False_shift;
        when "10" => c_32 <= c_32_26_0_False_shift;
        when others => c_32 <= c_32_31_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 33 and associated fundamentals [[528], [4], [25], [528]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 34 and associated fundamentals [[528], [4], [25], [528]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 35 and associated fundamentals [[785], [536], [-279], [990]]
  with config_select_10 select c_35_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_35: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 26,
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
      x_i => c_34,
      y_i => c_32,
      z_o => c_35_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_35_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 36 and associated fundamentals [[33], [33], [33], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 37 and associated fundamentals [[33], [33], [33], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 38 and associated fundamentals [[271], [126], [25], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 39 and associated fundamentals [[271], [126], [25], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 40 and associated fundamentals [[-33], [502], [329], [134]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 41 and associated fundamentals [[-33], [502], [329], [134]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 42 and associated fundamentals [[-66], [33], [-279], [66]]
  c_42_37_0_False_resize <= resize(c_37, 25);
  c_42_37_0_False_shift <= shift_left(c_42_37_0_False_resize, 0);
  c_42_39_1_False_resize <= c_39;
  c_42_39_1_False_shift <= shift_left(c_42_39_1_False_resize, 1);
  c_42_41_1_False_resize <= c_41;
  c_42_41_1_False_shift <= shift_left(c_42_41_1_False_resize, 1);
  c_42_35_0_False_resize <= c_35(24 downto 0);
  c_42_35_0_False_shift <= shift_left(c_42_35_0_False_resize, 0);
  with config_select_11 select c_42_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "00" => c_42 <= c_42_37_0_False_shift;
        when "01" => c_42 <= c_42_39_1_False_shift;
        when "10" => c_42 <= c_42_41_1_False_shift;
        when others => c_42 <= c_42_35_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 43 and associated fundamentals [[785], [502], [658], [252]]
  c_43_41_1_False_resize <= resize(c_41, 26);
  c_43_41_1_False_shift <= shift_left(c_43_41_1_False_resize, 1);
  c_43_35_0_False_resize <= c_35;
  c_43_35_0_False_shift <= shift_left(c_43_35_0_False_resize, 0);
  c_43_41_0_False_resize <= resize(c_41, 26);
  c_43_41_0_False_shift <= shift_left(c_43_41_0_False_resize, 0);
  c_43_37_2_False_resize <= resize(c_37, 26);
  c_43_37_2_False_shift <= shift_left(c_43_37_2_False_resize, 2);
  with config_select_11 select c_43_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "00" => c_43 <= c_43_41_1_False_shift;
        when "01" => c_43 <= c_43_35_0_False_shift;
        when "10" => c_43 <= c_43_41_0_False_shift;
        when others => c_43 <= c_43_37_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 12 with id 44 and associated fundamentals [[-851], [-469], [-937], [-186]]
  inst_adder_node_44: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 26,
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
      x_i => c_42,
      y_i => c_43,
      z_o => c_44_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_44_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 45 and associated fundamentals [[-7], [545], [529], [-1008]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 46 and associated fundamentals [[-7], [545], [529], [-1008]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 47 and associated fundamentals [[-33], [126], [329], [-1008]]
  c_47_26_0_False_resize <= resize(c_26, 26);
  c_47_26_0_False_shift <= shift_left(c_47_26_0_False_resize, 0);
  c_47_31_0_False_resize <= resize(c_31, 26);
  c_47_31_0_False_shift <= shift_left(c_47_31_0_False_resize, 0);
  c_47_46_0_False_resize <= c_46;
  c_47_46_0_False_shift <= shift_left(c_47_46_0_False_resize, 0);
  with config_select_9 select c_47_sel <= 
    "00" when "00",
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "00" => c_47 <= c_47_26_0_False_shift;
        when "01" => c_47 <= c_47_31_0_False_shift;
        when others => c_47 <= c_47_46_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 48 and associated fundamentals [[-7], [545], [529], [-1008]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 49 and associated fundamentals [[-7], [545], [529], [-1008]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 50 and associated fundamentals [[-7], [545], [529], [-1008]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 51 and associated fundamentals [[-7], [545], [529], [-1008]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 52 and associated fundamentals [[785], [536], [-279], [990]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 53 and associated fundamentals [[785], [536], [-279], [990]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 54 and associated fundamentals [[-851], [536], [529], [-186]]
  c_54_51_0_False_resize <= c_51;
  c_54_51_0_False_shift <= shift_left(c_54_51_0_False_resize, 0);
  c_54_44_0_False_resize <= c_44;
  c_54_44_0_False_shift <= shift_left(c_54_44_0_False_resize, 0);
  c_54_53_0_False_resize <= c_53;
  c_54_53_0_False_shift <= shift_left(c_54_53_0_False_resize, 0);
  with config_select_13 select c_54_sel <= 
    "00" when "10",
    "01" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_54_sel is
        when "00" => c_54 <= c_54_51_0_False_shift;
        when "01" => c_54 <= c_54_44_0_False_shift;
        when others => c_54 <= c_54_53_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 55 and associated fundamentals [[-33], [126], [329], [-1008]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 56 and associated fundamentals [[-33], [126], [329], [-1008]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 57 and associated fundamentals [[-33], [126], [329], [-1008]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 58 and associated fundamentals [[-33], [126], [329], [-1008]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 59 and associated fundamentals [[409], [-205], [429], [-411]]
  with config_select_14 select c_59_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_59: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 26,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 1,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_59_sub_sel,
      x_i => c_58,
      y_i => c_54,
      z_o => c_59_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_59_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 60 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 61 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 62 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 63 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 64 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 65 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 66 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 67 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 68 and associated fundamentals [[271], [126], [25], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 69 and associated fundamentals [[271], [126], [25], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 70 and associated fundamentals [[271], [126], [25], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 71 and associated fundamentals [[271], [126], [25], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 72 and associated fundamentals [[-33], [502], [329], [134]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 73 and associated fundamentals [[-33], [502], [329], [134]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_72 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 74 and associated fundamentals [[-33], [502], [329], [134]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 75 and associated fundamentals [[-33], [502], [329], [134]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 76 and associated fundamentals [[409], [16], [800], [1072]]
  c_76_67_4_False_resize <= resize(c_67, 27);
  c_76_67_4_False_shift <= shift_left(c_76_67_4_False_resize, 4);
  c_76_75_3_False_resize <= resize(c_75, 27);
  c_76_75_3_False_shift <= shift_left(c_76_75_3_False_resize, 3);
  c_76_59_0_False_resize <= resize(c_59, 27);
  c_76_59_0_False_shift <= shift_left(c_76_59_0_False_resize, 0);
  c_76_71_5_False_resize <= resize(c_71, 27);
  c_76_71_5_False_shift <= shift_left(c_76_71_5_False_resize, 5);
  with config_select_15 select c_76_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_76_sel is
        when "00" => c_76 <= c_76_67_4_False_shift;
        when "01" => c_76 <= c_76_75_3_False_shift;
        when "10" => c_76 <= c_76_59_0_False_shift;
        when others => c_76 <= c_76_71_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 77 and associated fundamentals [[-7], [545], [529], [-1008]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 78 and associated fundamentals [[-7], [545], [529], [-1008]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 79 and associated fundamentals [[-851], [-469], [-937], [-186]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 80 and associated fundamentals [[-851], [-469], [-937], [-186]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 81 and associated fundamentals [[-28], [-469], [329], [-411]]
  c_81_80_0_False_resize <= c_80(24 downto 0);
  c_81_80_0_False_shift <= shift_left(c_81_80_0_False_resize, 0);
  c_81_78_2_False_resize <= c_78(24 downto 0);
  c_81_78_2_False_shift <= shift_left(c_81_78_2_False_resize, 2);
  c_81_59_0_False_resize <= c_59;
  c_81_59_0_False_shift <= shift_left(c_81_59_0_False_resize, 0);
  c_81_75_0_False_resize <= c_75;
  c_81_75_0_False_shift <= shift_left(c_81_75_0_False_resize, 0);
  with config_select_15 select c_81_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_81_sel is
        when "00" => c_81 <= c_81_80_0_False_shift;
        when "01" => c_81 <= c_81_78_2_False_shift;
        when "10" => c_81 <= c_81_59_0_False_shift;
        when others => c_81 <= c_81_75_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 16 with id 82 and associated fundamentals [[437], [485], [471], [661]]
  with config_select_16 select c_82_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_82: entity work.adder_node
    generic map (
      w_x_i => 27,
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
      sub_i => c_82_sub_sel,
      x_i => c_76,
      y_i => c_81,
      z_o => c_82_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_82_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 83 and associated fundamentals [[-66], [-410], [-937], [-411]]
  c_83_75_1_False_resize <= resize(c_75, 26);
  c_83_75_1_False_shift <= shift_left(c_83_75_1_False_resize, 1);
  c_83_59_0_False_resize <= resize(c_59, 26);
  c_83_59_0_False_shift <= shift_left(c_83_59_0_False_resize, 0);
  c_83_80_0_False_resize <= c_80;
  c_83_80_0_False_shift <= shift_left(c_83_80_0_False_resize, 0);
  c_83_59_1_False_resize <= resize(c_59, 26);
  c_83_59_1_False_shift <= shift_left(c_83_59_1_False_resize, 1);
  with config_select_15 select c_83_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_83_sel is
        when "00" => c_83 <= c_83_75_1_False_shift;
        when "01" => c_83 <= c_83_59_0_False_shift;
        when "10" => c_83 <= c_83_80_0_False_shift;
        when others => c_83 <= c_83_59_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 84 and associated fundamentals [[271], [545], [529], [990]]
  c_84_49_0_False_resize <= c_49;
  c_84_49_0_False_shift <= shift_left(c_84_49_0_False_resize, 0);
  c_84_39_0_False_resize <= resize(c_39, 26);
  c_84_39_0_False_shift <= shift_left(c_84_39_0_False_resize, 0);
  c_84_35_0_False_resize <= c_35;
  c_84_35_0_False_shift <= shift_left(c_84_35_0_False_resize, 0);
  with config_select_11 select c_84_sel <= 
    "00" when "10",
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_84_sel is
        when "00" => c_84 <= c_84_49_0_False_shift;
        when "01" => c_84 <= c_84_39_0_False_shift;
        when others => c_84 <= c_84_35_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 85 and associated fundamentals [[271], [126], [25], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_71 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 86 and associated fundamentals [[271], [126], [25], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_85 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 87 and associated fundamentals [[-33], [502], [329], [134]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 88 and associated fundamentals [[-33], [502], [329], [134]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_87 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 89 and associated fundamentals [[437], [502], [471], [528]]
  c_89_86_4_False_resize <= resize(c_86, 26);
  c_89_86_4_False_shift <= shift_left(c_89_86_4_False_resize, 4);
  c_89_88_0_False_resize <= resize(c_88, 26);
  c_89_88_0_False_shift <= shift_left(c_89_88_0_False_resize, 0);
  c_89_82_0_False_resize <= c_82;
  c_89_82_0_False_shift <= shift_left(c_89_82_0_False_resize, 0);
  with config_select_17 select c_89_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_89_sel is
        when "00" => c_89 <= c_89_86_4_False_shift;
        when "01" => c_89 <= c_89_88_0_False_shift;
        when others => c_89 <= c_89_82_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 90 and associated fundamentals [[-851], [-938], [-279], [-186]]
  c_90_44_0_False_resize <= c_44;
  c_90_44_0_False_shift <= shift_left(c_90_44_0_False_resize, 0);
  c_90_44_1_False_resize <= c_44;
  c_90_44_1_False_shift <= shift_left(c_90_44_1_False_resize, 1);
  c_90_53_0_False_resize <= c_53;
  c_90_53_0_False_shift <= shift_left(c_90_53_0_False_resize, 0);
  with config_select_13 select c_90_sel <= 
    "00" when "11",
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_90_sel is
        when "00" => c_90 <= c_90_44_0_False_shift;
        when "01" => c_90 <= c_90_44_1_False_shift;
        when others => c_90 <= c_90_53_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 91 and associated fundamentals [[785], [536], [-279], [990]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 92 and associated fundamentals [[785], [536], [-279], [990]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 93 and associated fundamentals [[785], [536], [-279], [990]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_92 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 94 and associated fundamentals [[785], [536], [-279], [990]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_93 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 95 and associated fundamentals [[409], [-205], [429], [-411]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 96 and associated fundamentals [[409], [-205], [429], [-411]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_95 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 97 and associated fundamentals [[785], [485], [429], [661]]
  c_97_94_0_False_resize <= c_94;
  c_97_94_0_False_shift <= shift_left(c_97_94_0_False_resize, 0);
  c_97_82_0_False_resize <= c_82;
  c_97_82_0_False_shift <= shift_left(c_97_82_0_False_resize, 0);
  c_97_96_0_False_resize <= resize(c_96, 26);
  c_97_96_0_False_shift <= shift_left(c_97_96_0_False_resize, 0);
  with config_select_17 select c_97_sel <= 
    "00" when "00",
    "01" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_97_sel is
        when "00" => c_97 <= c_97_94_0_False_shift;
        when "01" => c_97 <= c_97_82_0_False_shift;
        when others => c_97 <= c_97_96_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 98 and associated fundamentals [[-66], [-410], [-937], [-411]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_83 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 99 and associated fundamentals [[-66], [-410], [-937], [-411]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_98 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 100 and associated fundamentals [[66], [410], [937], [411]]
  c_100_resize <= c_99;
  c_100 <= -shift_left(c_100_resize, 0);
  -- node of type 'register' in stage 12 with id 101 and associated fundamentals [[271], [545], [529], [990]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_84 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 102 and associated fundamentals [[271], [545], [529], [990]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_101 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 103 and associated fundamentals [[271], [545], [529], [990]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_102 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 104 and associated fundamentals [[271], [545], [529], [990]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_103 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 105 and associated fundamentals [[271], [545], [529], [990]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_104 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 106 and associated fundamentals [[271], [545], [529], [990]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_105 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 107 and associated fundamentals [[271], [545], [529], [990]]
  c_107_resize <= c_106;
  c_107 <= shift_left(c_107_resize, 0);
  -- node of type 'output' in stage 17 with id 108 and associated fundamentals [[437], [502], [471], [528]]
  c_108_resize <= c_89;
  c_108 <= shift_left(c_108_resize, 0);
  -- node of type 'register' in stage 14 with id 109 and associated fundamentals [[-851], [-938], [-279], [-186]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_109 <= c_90 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 110 and associated fundamentals [[-851], [-938], [-279], [-186]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_110 <= c_109 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 111 and associated fundamentals [[-851], [-938], [-279], [-186]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_110 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 112 and associated fundamentals [[-851], [-938], [-279], [-186]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_111 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 113 and associated fundamentals [[851], [938], [279], [186]]
  c_113_resize <= c_112;
  c_113 <= -shift_left(c_113_resize, 0);
  -- node of type 'output' in stage 17 with id 114 and associated fundamentals [[785], [485], [429], [661]]
  c_114_resize <= c_97;
  c_114 <= shift_left(c_114_resize, 0);
end architecture;
