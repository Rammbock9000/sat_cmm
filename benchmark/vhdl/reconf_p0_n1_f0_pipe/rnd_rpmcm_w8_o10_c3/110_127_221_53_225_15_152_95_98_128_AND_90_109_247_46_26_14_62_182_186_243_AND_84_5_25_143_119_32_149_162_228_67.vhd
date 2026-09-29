library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(22 downto 0);
    y_1: out std_logic_vector(22 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(23 downto 0);
    y_5: out std_logic_vector(20 downto 0);
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
  signal c_1: signed(16 downto 0);
  signal c_1_0_0_False_resize: signed(16 downto 0);
  signal c_1_0_0_False_shift: signed(16 downto 0);
  signal c_1_0_1_False_resize: signed(16 downto 0);
  signal c_1_0_1_False_shift: signed(16 downto 0);
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
  signal c_4: signed(17 downto 0);
  signal c_4_0_0_False_resize: signed(17 downto 0);
  signal c_4_0_0_False_shift: signed(17 downto 0);
  signal c_4_0_2_False_resize: signed(17 downto 0);
  signal c_4_0_2_False_shift: signed(17 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(20 downto 0);
  signal c_6_3_0_False_resize: signed(20 downto 0);
  signal c_6_3_0_False_shift: signed(20 downto 0);
  signal c_6_5_0_False_resize: signed(20 downto 0);
  signal c_6_5_0_False_shift: signed(20 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(17 downto 0);
  signal c_8: signed(17 downto 0);
  signal c_9: signed(20 downto 0);
  signal c_9_i0_resize: signed(20 downto 0);
  signal c_9_i1_resize: signed(20 downto 0);
  signal c_9_i0_shift: signed(20 downto 0);
  signal c_9_i1_shift: signed(20 downto 0);
  signal c_9_arith: signed(20 downto 0);
  signal c_9_oshift: signed(20 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(15 downto 0);
  signal c_11: signed(15 downto 0);
  signal c_12: signed(20 downto 0);
  signal c_12_9_0_False_resize: signed(20 downto 0);
  signal c_12_9_0_False_shift: signed(20 downto 0);
  signal c_12_11_4_False_resize: signed(20 downto 0);
  signal c_12_11_4_False_shift: signed(20 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(20 downto 0);
  signal c_14: signed(20 downto 0);
  signal c_15: signed(20 downto 0);
  signal c_16: signed(22 downto 0);
  signal c_16_i0_resize: signed(22 downto 0);
  signal c_16_i1_resize: signed(22 downto 0);
  signal c_16_i0_shift: signed(22 downto 0);
  signal c_16_i1_shift: signed(22 downto 0);
  signal c_16_arith: signed(22 downto 0);
  signal c_16_oshift: signed(22 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(22 downto 0);
  signal c_17_3_0_False_resize: signed(22 downto 0);
  signal c_17_3_0_False_shift: signed(22 downto 0);
  signal c_17_5_7_False_resize: signed(22 downto 0);
  signal c_17_5_7_False_shift: signed(22 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(21 downto 0);
  signal c_18_0_0_False_resize: signed(21 downto 0);
  signal c_18_0_0_False_shift: signed(21 downto 0);
  signal c_18_0_6_False_resize: signed(21 downto 0);
  signal c_18_0_6_False_shift: signed(21 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(21 downto 0);
  signal c_20: signed(21 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_21_i0_resize: signed(22 downto 0);
  signal c_21_i1_resize: signed(22 downto 0);
  signal c_21_i0_shift: signed(22 downto 0);
  signal c_21_i1_shift: signed(22 downto 0);
  signal c_21_arith: signed(22 downto 0);
  signal c_21_oshift: signed(22 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(21 downto 0);
  signal c_22_9_0_False_resize: signed(21 downto 0);
  signal c_22_9_0_False_shift: signed(21 downto 0);
  signal c_22_11_6_False_resize: signed(21 downto 0);
  signal c_22_11_6_False_shift: signed(21 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(21 downto 0);
  signal c_23_9_1_False_resize: signed(21 downto 0);
  signal c_23_9_1_False_shift: signed(21 downto 0);
  signal c_23_14_0_False_resize: signed(21 downto 0);
  signal c_23_14_0_False_shift: signed(21 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_i0_resize: signed(23 downto 0);
  signal c_24_i1_resize: signed(23 downto 0);
  signal c_24_i0_shift: signed(23 downto 0);
  signal c_24_i1_shift: signed(23 downto 0);
  signal c_24_arith: signed(23 downto 0);
  signal c_24_oshift: signed(23 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(20 downto 0);
  signal c_26: signed(21 downto 0);
  signal c_26_16_1_False_resize: signed(21 downto 0);
  signal c_26_16_1_False_shift: signed(21 downto 0);
  signal c_26_25_0_False_resize: signed(21 downto 0);
  signal c_26_25_0_False_shift: signed(21 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(20 downto 0);
  signal c_28: signed(20 downto 0);
  signal c_29: signed(20 downto 0);
  signal c_30: signed(21 downto 0);
  signal c_30_i0_resize: signed(21 downto 0);
  signal c_30_i1_resize: signed(21 downto 0);
  signal c_30_i0_shift: signed(21 downto 0);
  signal c_30_i1_shift: signed(21 downto 0);
  signal c_30_arith: signed(21 downto 0);
  signal c_30_oshift: signed(21 downto 0);
  signal c_31: signed(15 downto 0);
  signal c_32: signed(15 downto 0);
  signal c_33: signed(15 downto 0);
  signal c_34: signed(15 downto 0);
  signal c_35: signed(21 downto 0);
  signal c_35_34_2_False_resize: signed(21 downto 0);
  signal c_35_34_2_False_shift: signed(21 downto 0);
  signal c_35_30_0_False_resize: signed(21 downto 0);
  signal c_35_30_0_False_shift: signed(21 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(21 downto 0);
  signal c_36_0_1_False_resize: signed(21 downto 0);
  signal c_36_0_1_False_shift: signed(21 downto 0);
  signal c_36_0_6_False_resize: signed(21 downto 0);
  signal c_36_0_6_False_shift: signed(21 downto 0);
  signal c_36_0_0_False_resize: signed(21 downto 0);
  signal c_36_0_0_False_shift: signed(21 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(21 downto 0);
  signal c_38: signed(21 downto 0);
  signal c_39: signed(21 downto 0);
  signal c_40: signed(21 downto 0);
  signal c_41: signed(21 downto 0);
  signal c_42: signed(21 downto 0);
  signal c_43: signed(21 downto 0);
  signal c_44: signed(21 downto 0);
  signal c_45: signed(22 downto 0);
  signal c_45_i0_resize: signed(22 downto 0);
  signal c_45_i1_resize: signed(22 downto 0);
  signal c_45_i0_shift: signed(22 downto 0);
  signal c_45_i1_shift: signed(22 downto 0);
  signal c_45_arith: signed(22 downto 0);
  signal c_45_oshift: signed(22 downto 0);
  signal c_45_sub_sel: std_logic;
  signal c_46: signed(20 downto 0);
  signal c_47: signed(21 downto 0);
  signal c_47_30_0_False_resize: signed(21 downto 0);
  signal c_47_30_0_False_shift: signed(21 downto 0);
  signal c_47_46_1_False_resize: signed(21 downto 0);
  signal c_47_46_1_False_shift: signed(21 downto 0);
  signal c_47_sel: std_logic_vector(0 downto 0);
  signal c_48: signed(20 downto 0);
  signal c_48_11_0_False_resize: signed(20 downto 0);
  signal c_48_11_0_False_shift: signed(20 downto 0);
  signal c_48_9_0_False_resize: signed(20 downto 0);
  signal c_48_9_0_False_shift: signed(20 downto 0);
  signal c_48_sel: std_logic_vector(0 downto 0);
  signal c_49: signed(20 downto 0);
  signal c_50: signed(20 downto 0);
  signal c_51: signed(20 downto 0);
  signal c_52: signed(20 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_53_i0_resize: signed(23 downto 0);
  signal c_53_i1_resize: signed(23 downto 0);
  signal c_53_i0_shift: signed(23 downto 0);
  signal c_53_i1_shift: signed(23 downto 0);
  signal c_53_arith: signed(23 downto 0);
  signal c_53_oshift: signed(23 downto 0);
  signal c_53_sub_sel: std_logic;
  signal c_54: signed(23 downto 0);
  signal c_54_32_8_False_resize: signed(23 downto 0);
  signal c_54_32_8_False_shift: signed(23 downto 0);
  signal c_54_24_0_False_resize: signed(23 downto 0);
  signal c_54_24_0_False_shift: signed(23 downto 0);
  signal c_54_28_3_False_resize: signed(23 downto 0);
  signal c_54_28_3_False_shift: signed(23 downto 0);
  signal c_54_sel: std_logic_vector(1 downto 0);
  signal c_55: signed(22 downto 0);
  signal c_56: signed(22 downto 0);
  signal c_57: signed(22 downto 0);
  signal c_58: signed(23 downto 0);
  signal c_58_i0_resize: signed(23 downto 0);
  signal c_58_i1_resize: signed(23 downto 0);
  signal c_58_i0_shift: signed(23 downto 0);
  signal c_58_i1_shift: signed(23 downto 0);
  signal c_58_arith: signed(23 downto 0);
  signal c_58_oshift: signed(23 downto 0);
  signal c_58_sub_sel: std_logic;
  signal c_59: signed(22 downto 0);
  signal c_60: signed(22 downto 0);
  signal c_61: signed(22 downto 0);
  signal c_61_34_1_False_resize: signed(22 downto 0);
  signal c_61_34_1_False_shift: signed(22 downto 0);
  signal c_61_58_0_False_resize: signed(22 downto 0);
  signal c_61_58_0_False_shift: signed(22 downto 0);
  signal c_61_60_0_False_resize: signed(22 downto 0);
  signal c_61_60_0_False_shift: signed(22 downto 0);
  signal c_61_sel: std_logic_vector(1 downto 0);
  signal c_62: signed(22 downto 0);
  signal c_63: signed(23 downto 0);
  signal c_63_i0_resize: signed(23 downto 0);
  signal c_63_i1_resize: signed(23 downto 0);
  signal c_63_i0_shift: signed(23 downto 0);
  signal c_63_i1_shift: signed(23 downto 0);
  signal c_63_arith: signed(23 downto 0);
  signal c_63_oshift: signed(23 downto 0);
  signal c_63_sub_sel: std_logic;
  signal c_64: signed(22 downto 0);
  signal c_65: signed(22 downto 0);
  signal c_66: signed(22 downto 0);
  signal c_67: signed(22 downto 0);
  signal c_67_66_0_False_resize: signed(22 downto 0);
  signal c_67_66_0_False_shift: signed(22 downto 0);
  signal c_67_45_0_False_resize: signed(22 downto 0);
  signal c_67_45_0_False_shift: signed(22 downto 0);
  signal c_67_sel: std_logic_vector(0 downto 0);
  signal c_68: signed(20 downto 0);
  signal c_69: signed(20 downto 0);
  signal c_70: signed(23 downto 0);
  signal c_70_53_0_False_resize: signed(23 downto 0);
  signal c_70_53_0_False_shift: signed(23 downto 0);
  signal c_70_69_0_False_resize: signed(23 downto 0);
  signal c_70_69_0_False_shift: signed(23 downto 0);
  signal c_70_sel: std_logic_vector(0 downto 0);
  signal c_71: signed(22 downto 0);
  signal c_72: signed(23 downto 0);
  signal c_72_53_0_False_resize: signed(23 downto 0);
  signal c_72_53_0_False_shift: signed(23 downto 0);
  signal c_72_45_0_False_resize: signed(23 downto 0);
  signal c_72_45_0_False_shift: signed(23 downto 0);
  signal c_72_71_0_False_resize: signed(23 downto 0);
  signal c_72_71_0_False_shift: signed(23 downto 0);
  signal c_72_sel: std_logic_vector(1 downto 0);
  signal c_73: signed(23 downto 0);
  signal c_73_64_1_False_resize: signed(23 downto 0);
  signal c_73_64_1_False_shift: signed(23 downto 0);
  signal c_73_58_0_False_resize: signed(23 downto 0);
  signal c_73_58_0_False_shift: signed(23 downto 0);
  signal c_73_sel: std_logic_vector(0 downto 0);
  signal c_74: signed(20 downto 0);
  signal c_74_3_0_False_resize: signed(20 downto 0);
  signal c_74_3_0_False_shift: signed(20 downto 0);
  signal c_74_5_5_False_resize: signed(20 downto 0);
  signal c_74_5_5_False_shift: signed(20 downto 0);
  signal c_74_sel: std_logic_vector(0 downto 0);
  signal c_75: signed(23 downto 0);
  signal c_75_63_0_False_resize: signed(23 downto 0);
  signal c_75_63_0_False_shift: signed(23 downto 0);
  signal c_75_69_1_False_resize: signed(23 downto 0);
  signal c_75_69_1_False_shift: signed(23 downto 0);
  signal c_75_71_3_False_resize: signed(23 downto 0);
  signal c_75_71_3_False_shift: signed(23 downto 0);
  signal c_75_sel: std_logic_vector(1 downto 0);
  signal c_76: signed(23 downto 0);
  signal c_76_66_1_False_resize: signed(23 downto 0);
  signal c_76_66_1_False_shift: signed(23 downto 0);
  signal c_76_63_0_False_resize: signed(23 downto 0);
  signal c_76_63_0_False_shift: signed(23 downto 0);
  signal c_76_sel: std_logic_vector(0 downto 0);
  signal c_77: signed(23 downto 0);
  signal c_77_60_0_False_resize: signed(23 downto 0);
  signal c_77_60_0_False_shift: signed(23 downto 0);
  signal c_77_34_7_False_resize: signed(23 downto 0);
  signal c_77_34_7_False_shift: signed(23 downto 0);
  signal c_77_58_0_False_resize: signed(23 downto 0);
  signal c_77_58_0_False_shift: signed(23 downto 0);
  signal c_77_sel: std_logic_vector(1 downto 0);
  signal c_78: signed(21 downto 0);
  signal c_79: signed(21 downto 0);
  signal c_80: signed(21 downto 0);
  signal c_81: signed(22 downto 0);
  signal c_81_resize: signed(22 downto 0);
  signal c_82: signed(22 downto 0);
  signal c_82_resize: signed(22 downto 0);
  signal c_83: signed(23 downto 0);
  signal c_83_resize: signed(23 downto 0);
  signal c_84: signed(23 downto 0);
  signal c_84_resize: signed(23 downto 0);
  signal c_85: signed(23 downto 0);
  signal c_86: signed(23 downto 0);
  signal c_87: signed(23 downto 0);
  signal c_87_resize: signed(23 downto 0);
  signal c_88: signed(20 downto 0);
  signal c_89: signed(20 downto 0);
  signal c_90: signed(20 downto 0);
  signal c_91: signed(20 downto 0);
  signal c_92: signed(20 downto 0);
  signal c_93: signed(20 downto 0);
  signal c_94: signed(20 downto 0);
  signal c_95: signed(20 downto 0);
  signal c_96: signed(20 downto 0);
  signal c_96_resize: signed(20 downto 0);
  signal c_97: signed(23 downto 0);
  signal c_97_resize: signed(23 downto 0);
  signal c_98: signed(23 downto 0);
  signal c_98_resize: signed(23 downto 0);
  signal c_99: signed(23 downto 0);
  signal c_100: signed(23 downto 0);
  signal c_101: signed(23 downto 0);
  signal c_102: signed(23 downto 0);
  signal c_103: signed(23 downto 0);
  signal c_104: signed(23 downto 0);
  signal c_104_resize: signed(23 downto 0);
  signal c_105: signed(23 downto 0);
  signal c_106: signed(23 downto 0);
  signal c_107: signed(23 downto 0);
  signal c_107_resize: signed(23 downto 0);
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
  -- output node 0 with id 81
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_81);
    end if;
  end process;
  -- output node 1 with id 82
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_82);
    end if;
  end process;
  -- output node 2 with id 83
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_83);
    end if;
  end process;
  -- output node 3 with id 84
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_84);
    end if;
  end process;
  -- output node 4 with id 87
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_87);
    end if;
  end process;
  -- output node 5 with id 96
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_96);
    end if;
  end process;
  -- output node 6 with id 97
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_97);
    end if;
  end process;
  -- output node 7 with id 98
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_98);
    end if;
  end process;
  -- output node 8 with id 104
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_104);
    end if;
  end process;
  -- output node 9 with id 107
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_107);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [2], [1]]
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
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
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[15], [14], [17]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 17,
      w_o => 21,
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
      sub_i => c_3_sub_sel,
      x_i => c_2,
      y_i => c_1,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[4], [4], [1]]
  c_4_0_0_False_resize <= resize(c_0, 18);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_2_False_resize <= resize(c_0, 18);
  c_4_0_2_False_shift <= shift_left(c_4_0_2_False_resize, 2);
  with config_select_1 select c_4_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_0_False_shift;
        when others => c_4 <= c_4_0_2_False_shift;
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
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[15], [1], [17]]
  c_6_3_0_False_resize <= c_3;
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  c_6_5_0_False_resize <= resize(c_5, 21);
  c_6_5_0_False_shift <= shift_left(c_6_5_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_3_0_False_shift;
        when others => c_6 <= c_6_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 7 and associated fundamentals [[4], [4], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[4], [4], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_7 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 9 and associated fundamentals [[17], [31], [25]]
  with config_select_4 select c_9_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 21,
      w_o => 21,
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
      sub_i => c_9_sub_sel,
      x_i => c_8,
      y_i => c_6,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 12 and associated fundamentals [[17], [16], [25]]
  c_12_9_0_False_resize <= c_9;
  c_12_9_0_False_shift <= shift_left(c_12_9_0_False_resize, 0);
  c_12_11_4_False_resize <= resize(c_11, 21);
  c_12_11_4_False_shift <= shift_left(c_12_11_4_False_resize, 4);
  with config_select_5 select c_12_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_9_0_False_shift;
        when others => c_12 <= c_12_11_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 13 and associated fundamentals [[15], [14], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 14 and associated fundamentals [[15], [14], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 15 and associated fundamentals [[15], [14], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 16 and associated fundamentals [[19], [46], [67]]
  with config_select_6 select c_16_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 21,
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
      sub_i => c_16_sub_sel,
      x_i => c_12,
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 17 and associated fundamentals [[128], [14], [17]]
  c_17_3_0_False_resize <= resize(c_3, 23);
  c_17_3_0_False_shift <= shift_left(c_17_3_0_False_resize, 0);
  c_17_5_7_False_resize <= resize(c_5, 23);
  c_17_5_7_False_shift <= shift_left(c_17_5_7_False_resize, 7);
  with config_select_3 select c_17_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_3_0_False_shift;
        when others => c_17 <= c_17_5_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 18 and associated fundamentals [[1], [1], [64]]
  c_18_0_0_False_resize <= resize(c_0, 22);
  c_18_0_0_False_shift <= shift_left(c_18_0_0_False_resize, 0);
  c_18_0_6_False_resize <= resize(c_0, 22);
  c_18_0_6_False_shift <= shift_left(c_18_0_6_False_resize, 6);
  with config_select_1 select c_18_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_0_0_False_shift;
        when others => c_18 <= c_18_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 19 and associated fundamentals [[1], [1], [64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 20 and associated fundamentals [[1], [1], [64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 21 and associated fundamentals [[127], [13], [81]]
  with config_select_4 select c_21_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_21: entity work.adder_node
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
      sub_i => c_21_sub_sel,
      x_i => c_17,
      y_i => c_20,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 22 and associated fundamentals [[64], [31], [64]]
  c_22_9_0_False_resize <= resize(c_9, 22);
  c_22_9_0_False_shift <= shift_left(c_22_9_0_False_resize, 0);
  c_22_11_6_False_resize <= resize(c_11, 22);
  c_22_11_6_False_shift <= shift_left(c_22_11_6_False_resize, 6);
  with config_select_5 select c_22_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_9_0_False_shift;
        when others => c_22 <= c_22_11_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 23 and associated fundamentals [[15], [62], [50]]
  c_23_9_1_False_resize <= resize(c_9, 22);
  c_23_9_1_False_shift <= shift_left(c_23_9_1_False_resize, 1);
  c_23_14_0_False_resize <= resize(c_14, 22);
  c_23_14_0_False_shift <= shift_left(c_23_14_0_False_resize, 0);
  with config_select_5 select c_23_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_9_1_False_shift;
        when others => c_23 <= c_23_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 24 and associated fundamentals [[98], [186], [228]]
  with config_select_6 select c_24_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 24,
      s_x_i => 1,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_24_sub_sel,
      x_i => c_22,
      y_i => c_23,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 25 and associated fundamentals [[15], [14], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_15 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 26 and associated fundamentals [[38], [14], [17]]
  c_26_16_1_False_resize <= c_16(21 downto 0);
  c_26_16_1_False_shift <= shift_left(c_26_16_1_False_resize, 1);
  c_26_25_0_False_resize <= resize(c_25, 22);
  c_26_25_0_False_shift <= shift_left(c_26_25_0_False_resize, 0);
  with config_select_7 select c_26_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_16_1_False_shift;
        when others => c_26 <= c_26_25_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 27 and associated fundamentals [[17], [31], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 28 and associated fundamentals [[17], [31], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 29 and associated fundamentals [[17], [31], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'add' in stage 8 with id 30 and associated fundamentals [[55], [45], [42]]
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 21,
      w_o => 22,
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
      x_i => c_26,
      y_i => c_29,
      z_o => c_30_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_30_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 31 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 32 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 33 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 34 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 35 and associated fundamentals [[55], [45], [4]]
  c_35_34_2_False_resize <= resize(c_34, 22);
  c_35_34_2_False_shift <= shift_left(c_35_34_2_False_resize, 2);
  c_35_30_0_False_resize <= c_30;
  c_35_30_0_False_shift <= shift_left(c_35_30_0_False_resize, 0);
  with config_select_9 select c_35_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_34_2_False_shift;
        when others => c_35 <= c_35_30_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 36 and associated fundamentals [[2], [64], [1]]
  c_36_0_1_False_resize <= resize(c_0, 22);
  c_36_0_1_False_shift <= shift_left(c_36_0_1_False_resize, 1);
  c_36_0_6_False_resize <= resize(c_0, 22);
  c_36_0_6_False_shift <= shift_left(c_36_0_6_False_resize, 6);
  c_36_0_0_False_resize <= resize(c_0, 22);
  c_36_0_0_False_shift <= shift_left(c_36_0_0_False_resize, 0);
  with config_select_1 select c_36_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "00" => c_36 <= c_36_0_1_False_shift;
        when "01" => c_36 <= c_36_0_6_False_shift;
        when others => c_36 <= c_36_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 37 and associated fundamentals [[2], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 38 and associated fundamentals [[2], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 39 and associated fundamentals [[2], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 40 and associated fundamentals [[2], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 41 and associated fundamentals [[2], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 42 and associated fundamentals [[2], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 43 and associated fundamentals [[2], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 44 and associated fundamentals [[2], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 45 and associated fundamentals [[53], [109], [5]]
  with config_select_10 select c_45_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_45: entity work.adder_node
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
      sub_i => c_45_sub_sel,
      x_i => c_35,
      y_i => c_44,
      z_o => c_45_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_45_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 46 and associated fundamentals [[17], [31], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_29 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 47 and associated fundamentals [[55], [62], [42]]
  c_47_30_0_False_resize <= c_30;
  c_47_30_0_False_shift <= shift_left(c_47_30_0_False_resize, 0);
  c_47_46_1_False_resize <= resize(c_46, 22);
  c_47_46_1_False_shift <= shift_left(c_47_46_1_False_resize, 1);
  with config_select_9 select c_47_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "0" => c_47 <= c_47_30_0_False_shift;
        when others => c_47 <= c_47_46_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 48 and associated fundamentals [[1], [1], [25]]
  c_48_11_0_False_resize <= resize(c_11, 21);
  c_48_11_0_False_shift <= shift_left(c_48_11_0_False_resize, 0);
  c_48_9_0_False_resize <= c_9;
  c_48_9_0_False_shift <= shift_left(c_48_9_0_False_resize, 0);
  with config_select_5 select c_48_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "0" => c_48 <= c_48_11_0_False_shift;
        when others => c_48 <= c_48_9_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 49 and associated fundamentals [[1], [1], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 50 and associated fundamentals [[1], [1], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 51 and associated fundamentals [[1], [1], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 52 and associated fundamentals [[1], [1], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 53 and associated fundamentals [[221], [247], [143]]
  with config_select_10 select c_53_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_53: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_53_sub_sel,
      x_i => c_47,
      y_i => c_52,
      z_o => c_53_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_53_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 54 and associated fundamentals [[98], [256], [200]]
  c_54_32_8_False_resize <= resize(c_32, 24);
  c_54_32_8_False_shift <= shift_left(c_54_32_8_False_resize, 8);
  c_54_24_0_False_resize <= c_24;
  c_54_24_0_False_shift <= shift_left(c_54_24_0_False_resize, 0);
  c_54_28_3_False_resize <= resize(c_28, 24);
  c_54_28_3_False_shift <= shift_left(c_54_28_3_False_resize, 3);
  with config_select_7 select c_54_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_54_sel is
        when "00" => c_54 <= c_54_32_8_False_shift;
        when "01" => c_54 <= c_54_24_0_False_shift;
        when others => c_54 <= c_54_28_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 55 and associated fundamentals [[127], [13], [81]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 56 and associated fundamentals [[127], [13], [81]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 57 and associated fundamentals [[127], [13], [81]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 58 and associated fundamentals [[225], [243], [119]]
  with config_select_8 select c_58_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_58: entity work.adder_node
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
      sub_i => c_58_sub_sel,
      x_i => c_54,
      y_i => c_57,
      z_o => c_58_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_58_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 59 and associated fundamentals [[19], [46], [67]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 60 and associated fundamentals [[19], [46], [67]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 61 and associated fundamentals [[19], [2], [119]]
  c_61_34_1_False_resize <= resize(c_34, 23);
  c_61_34_1_False_shift <= shift_left(c_61_34_1_False_resize, 1);
  c_61_58_0_False_resize <= c_58(22 downto 0);
  c_61_58_0_False_shift <= shift_left(c_61_58_0_False_resize, 0);
  c_61_60_0_False_resize <= c_60;
  c_61_60_0_False_shift <= shift_left(c_61_60_0_False_resize, 0);
  with config_select_9 select c_61_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_61_sel is
        when "00" => c_61 <= c_61_34_1_False_shift;
        when "01" => c_61 <= c_61_58_0_False_shift;
        when others => c_61 <= c_61_60_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 62 and associated fundamentals [[19], [46], [67]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_60 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 63 and associated fundamentals [[95], [182], [149]]
  with config_select_10 select c_63_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_63: entity work.adder_node
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
  -- node of type 'register' in stage 8 with id 64 and associated fundamentals [[127], [13], [81]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 65 and associated fundamentals [[127], [13], [81]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 66 and associated fundamentals [[127], [13], [81]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 67 and associated fundamentals [[127], [109], [5]]
  c_67_66_0_False_resize <= c_66;
  c_67_66_0_False_shift <= shift_left(c_67_66_0_False_resize, 0);
  c_67_45_0_False_resize <= c_45;
  c_67_45_0_False_shift <= shift_left(c_67_45_0_False_resize, 0);
  with config_select_11 select c_67_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_67_sel is
        when "0" => c_67 <= c_67_66_0_False_shift;
        when others => c_67 <= c_67_45_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 68 and associated fundamentals [[17], [31], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 69 and associated fundamentals [[17], [31], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 70 and associated fundamentals [[221], [247], [25]]
  c_70_53_0_False_resize <= c_53;
  c_70_53_0_False_shift <= shift_left(c_70_53_0_False_resize, 0);
  c_70_69_0_False_resize <= resize(c_69, 24);
  c_70_69_0_False_shift <= shift_left(c_70_69_0_False_resize, 0);
  with config_select_11 select c_70_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_70_sel is
        when "0" => c_70 <= c_70_53_0_False_shift;
        when others => c_70 <= c_70_69_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 71 and associated fundamentals [[19], [46], [67]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_62 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 72 and associated fundamentals [[53], [46], [143]]
  c_72_53_0_False_resize <= c_53;
  c_72_53_0_False_shift <= shift_left(c_72_53_0_False_resize, 0);
  c_72_45_0_False_resize <= resize(c_45, 24);
  c_72_45_0_False_shift <= shift_left(c_72_45_0_False_resize, 0);
  c_72_71_0_False_resize <= resize(c_71, 24);
  c_72_71_0_False_shift <= shift_left(c_72_71_0_False_resize, 0);
  with config_select_11 select c_72_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_72_sel is
        when "00" => c_72 <= c_72_53_0_False_shift;
        when "01" => c_72 <= c_72_45_0_False_shift;
        when others => c_72 <= c_72_71_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 73 and associated fundamentals [[225], [26], [119]]
  c_73_64_1_False_resize <= resize(c_64, 24);
  c_73_64_1_False_shift <= shift_left(c_73_64_1_False_resize, 1);
  c_73_58_0_False_resize <= c_58;
  c_73_58_0_False_shift <= shift_left(c_73_58_0_False_resize, 0);
  with config_select_9 select c_73_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_73_sel is
        when "0" => c_73 <= c_73_64_1_False_shift;
        when others => c_73 <= c_73_58_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 74 and associated fundamentals [[15], [14], [32]]
  c_74_3_0_False_resize <= c_3;
  c_74_3_0_False_shift <= shift_left(c_74_3_0_False_resize, 0);
  c_74_5_5_False_resize <= resize(c_5, 21);
  c_74_5_5_False_shift <= shift_left(c_74_5_5_False_resize, 5);
  with config_select_3 select c_74_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_74_sel is
        when "0" => c_74 <= c_74_3_0_False_shift;
        when others => c_74 <= c_74_5_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 75 and associated fundamentals [[152], [62], [149]]
  c_75_63_0_False_resize <= c_63;
  c_75_63_0_False_shift <= shift_left(c_75_63_0_False_resize, 0);
  c_75_69_1_False_resize <= resize(c_69, 24);
  c_75_69_1_False_shift <= shift_left(c_75_69_1_False_resize, 1);
  c_75_71_3_False_resize <= resize(c_71, 24);
  c_75_71_3_False_shift <= shift_left(c_75_71_3_False_resize, 3);
  with config_select_11 select c_75_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_75_sel is
        when "00" => c_75 <= c_75_63_0_False_shift;
        when "01" => c_75 <= c_75_69_1_False_shift;
        when others => c_75 <= c_75_71_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 76 and associated fundamentals [[95], [182], [162]]
  c_76_66_1_False_resize <= resize(c_66, 24);
  c_76_66_1_False_shift <= shift_left(c_76_66_1_False_resize, 1);
  c_76_63_0_False_resize <= c_63;
  c_76_63_0_False_shift <= shift_left(c_76_63_0_False_resize, 0);
  with config_select_11 select c_76_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_76_sel is
        when "0" => c_76 <= c_76_66_1_False_shift;
        when others => c_76 <= c_76_63_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 77 and associated fundamentals [[128], [243], [67]]
  c_77_60_0_False_resize <= resize(c_60, 24);
  c_77_60_0_False_shift <= shift_left(c_77_60_0_False_resize, 0);
  c_77_34_7_False_resize <= resize(c_34, 24);
  c_77_34_7_False_shift <= shift_left(c_77_34_7_False_resize, 7);
  c_77_58_0_False_resize <= c_58;
  c_77_58_0_False_shift <= shift_left(c_77_58_0_False_resize, 0);
  with config_select_9 select c_77_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_77_sel is
        when "00" => c_77 <= c_77_60_0_False_shift;
        when "01" => c_77 <= c_77_34_7_False_shift;
        when others => c_77 <= c_77_58_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 78 and associated fundamentals [[55], [45], [42]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 79 and associated fundamentals [[55], [45], [42]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 80 and associated fundamentals [[55], [45], [42]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 81 and associated fundamentals [[110], [90], [84]]
  c_81_resize <= resize(c_80, 23);
  c_81 <= shift_left(c_81_resize, 1);
  -- node of type 'output' in stage 11 with id 82 and associated fundamentals [[127], [109], [5]]
  c_82_resize <= c_67;
  c_82 <= shift_left(c_82_resize, 0);
  -- node of type 'output' in stage 11 with id 83 and associated fundamentals [[221], [247], [25]]
  c_83_resize <= c_70;
  c_83 <= shift_left(c_83_resize, 0);
  -- node of type 'output' in stage 11 with id 84 and associated fundamentals [[53], [46], [143]]
  c_84_resize <= c_72;
  c_84 <= shift_left(c_84_resize, 0);
  -- node of type 'register' in stage 10 with id 85 and associated fundamentals [[225], [26], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 86 and associated fundamentals [[225], [26], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_85 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 87 and associated fundamentals [[225], [26], [119]]
  c_87_resize <= c_86;
  c_87 <= shift_left(c_87_resize, 0);
  -- node of type 'register' in stage 4 with id 88 and associated fundamentals [[15], [14], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 89 and associated fundamentals [[15], [14], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_88 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 90 and associated fundamentals [[15], [14], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_89 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 91 and associated fundamentals [[15], [14], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_90 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 92 and associated fundamentals [[15], [14], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 93 and associated fundamentals [[15], [14], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_92 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 94 and associated fundamentals [[15], [14], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_93 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 95 and associated fundamentals [[15], [14], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_94 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 96 and associated fundamentals [[15], [14], [32]]
  c_96_resize <= c_95;
  c_96 <= shift_left(c_96_resize, 0);
  -- node of type 'output' in stage 11 with id 97 and associated fundamentals [[152], [62], [149]]
  c_97_resize <= c_75;
  c_97 <= shift_left(c_97_resize, 0);
  -- node of type 'output' in stage 11 with id 98 and associated fundamentals [[95], [182], [162]]
  c_98_resize <= c_76;
  c_98 <= shift_left(c_98_resize, 0);
  -- node of type 'register' in stage 7 with id 99 and associated fundamentals [[98], [186], [228]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 100 and associated fundamentals [[98], [186], [228]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_99 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 101 and associated fundamentals [[98], [186], [228]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_100 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 102 and associated fundamentals [[98], [186], [228]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_101 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 103 and associated fundamentals [[98], [186], [228]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_102 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 104 and associated fundamentals [[98], [186], [228]]
  c_104_resize <= c_103;
  c_104 <= shift_left(c_104_resize, 0);
  -- node of type 'register' in stage 10 with id 105 and associated fundamentals [[128], [243], [67]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 106 and associated fundamentals [[128], [243], [67]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_105 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 107 and associated fundamentals [[128], [243], [67]]
  c_107_resize <= c_106;
  c_107 <= shift_left(c_107_resize, 0);
end architecture;
