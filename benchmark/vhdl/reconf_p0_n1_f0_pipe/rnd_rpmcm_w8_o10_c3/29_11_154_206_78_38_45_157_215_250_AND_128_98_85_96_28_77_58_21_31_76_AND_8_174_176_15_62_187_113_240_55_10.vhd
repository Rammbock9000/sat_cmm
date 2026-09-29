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
    y_4: out std_logic_vector(22 downto 0);
    y_5: out std_logic_vector(23 downto 0);
    y_6: out std_logic_vector(22 downto 0);
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
  signal c_4: signed(15 downto 0);
  signal c_5: signed(20 downto 0);
  signal c_5_i0_resize: signed(20 downto 0);
  signal c_5_i1_resize: signed(20 downto 0);
  signal c_5_i0_shift: signed(20 downto 0);
  signal c_5_i1_shift: signed(20 downto 0);
  signal c_5_arith: signed(20 downto 0);
  signal c_5_oshift: signed(20 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(15 downto 0);
  signal c_7: signed(19 downto 0);
  signal c_7_5_0_False_resize: signed(19 downto 0);
  signal c_7_5_0_False_shift: signed(19 downto 0);
  signal c_7_6_1_False_resize: signed(19 downto 0);
  signal c_7_6_1_False_shift: signed(19 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(21 downto 0);
  signal c_8_5_1_False_resize: signed(21 downto 0);
  signal c_8_5_1_False_shift: signed(21 downto 0);
  signal c_8_5_0_False_resize: signed(21 downto 0);
  signal c_8_5_0_False_shift: signed(21 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_i0_resize: signed(22 downto 0);
  signal c_9_i1_resize: signed(22 downto 0);
  signal c_9_i0_shift: signed(22 downto 0);
  signal c_9_i1_shift: signed(22 downto 0);
  signal c_9_arith: signed(22 downto 0);
  signal c_9_oshift: signed(22 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(20 downto 0);
  signal c_11: signed(20 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_11_0_False_resize: signed(22 downto 0);
  signal c_12_11_0_False_shift: signed(22 downto 0);
  signal c_12_9_1_False_resize: signed(22 downto 0);
  signal c_12_9_1_False_shift: signed(22 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(20 downto 0);
  signal c_14: signed(20 downto 0);
  signal c_15: signed(20 downto 0);
  signal c_16: signed(20 downto 0);
  signal c_17: signed(21 downto 0);
  signal c_17_i0_resize: signed(21 downto 0);
  signal c_17_i1_resize: signed(21 downto 0);
  signal c_17_i0_shift: signed(21 downto 0);
  signal c_17_i1_shift: signed(21 downto 0);
  signal c_17_arith: signed(21 downto 0);
  signal c_17_oshift: signed(21 downto 0);
  signal c_18: signed(19 downto 0);
  signal c_18_0_0_False_resize: signed(19 downto 0);
  signal c_18_0_0_False_shift: signed(19 downto 0);
  signal c_18_0_4_False_resize: signed(19 downto 0);
  signal c_18_0_4_False_shift: signed(19 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(19 downto 0);
  signal c_20: signed(19 downto 0);
  signal c_21: signed(19 downto 0);
  signal c_22: signed(19 downto 0);
  signal c_23: signed(19 downto 0);
  signal c_24: signed(19 downto 0);
  signal c_25: signed(21 downto 0);
  signal c_25_i0_resize: signed(21 downto 0);
  signal c_25_i1_resize: signed(21 downto 0);
  signal c_25_i0_shift: signed(21 downto 0);
  signal c_25_i1_shift: signed(21 downto 0);
  signal c_25_arith: signed(21 downto 0);
  signal c_25_oshift: signed(21 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(20 downto 0);
  signal c_26_5_1_False_resize: signed(20 downto 0);
  signal c_26_5_1_False_shift: signed(20 downto 0);
  signal c_26_5_0_False_resize: signed(20 downto 0);
  signal c_26_5_0_False_shift: signed(20 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(22 downto 0);
  signal c_27_i0_resize: signed(22 downto 0);
  signal c_27_i1_resize: signed(22 downto 0);
  signal c_27_i0_shift: signed(22 downto 0);
  signal c_27_i1_shift: signed(22 downto 0);
  signal c_27_arith: signed(22 downto 0);
  signal c_27_oshift: signed(22 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(20 downto 0);
  signal c_29: signed(21 downto 0);
  signal c_29_17_0_False_resize: signed(21 downto 0);
  signal c_29_17_0_False_shift: signed(21 downto 0);
  signal c_29_28_1_False_resize: signed(21 downto 0);
  signal c_29_28_1_False_shift: signed(21 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(19 downto 0);
  signal c_30_0_0_False_resize: signed(19 downto 0);
  signal c_30_0_0_False_shift: signed(19 downto 0);
  signal c_30_0_4_False_resize: signed(19 downto 0);
  signal c_30_0_4_False_shift: signed(19 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(19 downto 0);
  signal c_32: signed(19 downto 0);
  signal c_33: signed(19 downto 0);
  signal c_34: signed(19 downto 0);
  signal c_35: signed(19 downto 0);
  signal c_36: signed(19 downto 0);
  signal c_37: signed(19 downto 0);
  signal c_38: signed(22 downto 0);
  signal c_38_i0_resize: signed(22 downto 0);
  signal c_38_i1_resize: signed(22 downto 0);
  signal c_38_i0_shift: signed(22 downto 0);
  signal c_38_i1_shift: signed(22 downto 0);
  signal c_38_arith: signed(22 downto 0);
  signal c_38_oshift: signed(22 downto 0);
  signal c_38_sub_sel: std_logic;
  signal c_39: signed(20 downto 0);
  signal c_39_13_2_False_resize: signed(20 downto 0);
  signal c_39_13_2_False_shift: signed(20 downto 0);
  signal c_39_5_0_False_resize: signed(20 downto 0);
  signal c_39_5_0_False_shift: signed(20 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(15 downto 0);
  signal c_41: signed(22 downto 0);
  signal c_41_i0_resize: signed(22 downto 0);
  signal c_41_i1_resize: signed(22 downto 0);
  signal c_41_i0_shift: signed(22 downto 0);
  signal c_41_i1_shift: signed(22 downto 0);
  signal c_41_arith: signed(22 downto 0);
  signal c_41_oshift: signed(22 downto 0);
  signal c_41_sub_sel: std_logic;
  signal c_42: signed(15 downto 0);
  signal c_43: signed(22 downto 0);
  signal c_43_42_2_False_resize: signed(22 downto 0);
  signal c_43_42_2_False_shift: signed(22 downto 0);
  signal c_43_9_0_False_resize: signed(22 downto 0);
  signal c_43_9_0_False_shift: signed(22 downto 0);
  signal c_43_11_5_False_resize: signed(22 downto 0);
  signal c_43_11_5_False_shift: signed(22 downto 0);
  signal c_43_sel: std_logic_vector(1 downto 0);
  signal c_44: signed(22 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_i0_resize: signed(23 downto 0);
  signal c_45_i1_resize: signed(23 downto 0);
  signal c_45_i0_shift: signed(23 downto 0);
  signal c_45_i1_shift: signed(23 downto 0);
  signal c_45_arith: signed(23 downto 0);
  signal c_45_oshift: signed(23 downto 0);
  signal c_45_sub_sel: std_logic;
  signal c_46: signed(18 downto 0);
  signal c_46_3_0_False_resize: signed(18 downto 0);
  signal c_46_3_0_False_shift: signed(18 downto 0);
  signal c_46_4_3_False_resize: signed(18 downto 0);
  signal c_46_4_3_False_shift: signed(18 downto 0);
  signal c_46_sel: std_logic_vector(0 downto 0);
  signal c_47: signed(22 downto 0);
  signal c_48: signed(22 downto 0);
  signal c_49: signed(22 downto 0);
  signal c_49_48_0_False_resize: signed(22 downto 0);
  signal c_49_48_0_False_shift: signed(22 downto 0);
  signal c_49_17_1_False_resize: signed(22 downto 0);
  signal c_49_17_1_False_shift: signed(22 downto 0);
  signal c_49_sel: std_logic_vector(0 downto 0);
  signal c_50: signed(18 downto 0);
  signal c_51: signed(18 downto 0);
  signal c_52: signed(18 downto 0);
  signal c_53: signed(18 downto 0);
  signal c_54: signed(18 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_55_i0_resize: signed(23 downto 0);
  signal c_55_i1_resize: signed(23 downto 0);
  signal c_55_i0_shift: signed(23 downto 0);
  signal c_55_i1_shift: signed(23 downto 0);
  signal c_55_arith: signed(23 downto 0);
  signal c_55_oshift: signed(23 downto 0);
  signal c_55_sub_sel: std_logic;
  signal c_56: signed(22 downto 0);
  signal c_56_5_3_False_resize: signed(22 downto 0);
  signal c_56_5_3_False_shift: signed(22 downto 0);
  signal c_56_5_2_False_resize: signed(22 downto 0);
  signal c_56_5_2_False_shift: signed(22 downto 0);
  signal c_56_13_0_False_resize: signed(22 downto 0);
  signal c_56_13_0_False_shift: signed(22 downto 0);
  signal c_56_sel: std_logic_vector(1 downto 0);
  signal c_57: signed(22 downto 0);
  signal c_58: signed(22 downto 0);
  signal c_59: signed(22 downto 0);
  signal c_60: signed(23 downto 0);
  signal c_60_i0_resize: signed(23 downto 0);
  signal c_60_i1_resize: signed(23 downto 0);
  signal c_60_i0_shift: signed(23 downto 0);
  signal c_60_i1_shift: signed(23 downto 0);
  signal c_60_arith: signed(23 downto 0);
  signal c_60_oshift: signed(23 downto 0);
  signal c_60_sub_sel: std_logic;
  signal c_61: signed(22 downto 0);
  signal c_61_42_3_False_resize: signed(22 downto 0);
  signal c_61_42_3_False_shift: signed(22 downto 0);
  signal c_61_27_0_False_resize: signed(22 downto 0);
  signal c_61_27_0_False_shift: signed(22 downto 0);
  signal c_61_42_7_False_resize: signed(22 downto 0);
  signal c_61_42_7_False_shift: signed(22 downto 0);
  signal c_61_sel: std_logic_vector(1 downto 0);
  signal c_62: signed(20 downto 0);
  signal c_63: signed(20 downto 0);
  signal c_64: signed(20 downto 0);
  signal c_65: signed(20 downto 0);
  signal c_66: signed(21 downto 0);
  signal c_67: signed(23 downto 0);
  signal c_67_65_0_False_resize: signed(23 downto 0);
  signal c_67_65_0_False_shift: signed(23 downto 0);
  signal c_67_55_0_False_resize: signed(23 downto 0);
  signal c_67_55_0_False_shift: signed(23 downto 0);
  signal c_67_66_1_False_resize: signed(23 downto 0);
  signal c_67_66_1_False_shift: signed(23 downto 0);
  signal c_67_sel: std_logic_vector(1 downto 0);
  signal c_68: signed(23 downto 0);
  signal c_68_9_3_False_resize: signed(23 downto 0);
  signal c_68_9_3_False_shift: signed(23 downto 0);
  signal c_68_9_1_False_resize: signed(23 downto 0);
  signal c_68_9_1_False_shift: signed(23 downto 0);
  signal c_68_27_0_False_resize: signed(23 downto 0);
  signal c_68_27_0_False_shift: signed(23 downto 0);
  signal c_68_sel: std_logic_vector(1 downto 0);
  signal c_69: signed(21 downto 0);
  signal c_70: signed(21 downto 0);
  signal c_71: signed(23 downto 0);
  signal c_71_70_1_False_resize: signed(23 downto 0);
  signal c_71_70_1_False_shift: signed(23 downto 0);
  signal c_71_38_1_False_resize: signed(23 downto 0);
  signal c_71_38_1_False_shift: signed(23 downto 0);
  signal c_71_66_0_False_resize: signed(23 downto 0);
  signal c_71_66_0_False_shift: signed(23 downto 0);
  signal c_71_sel: std_logic_vector(1 downto 0);
  signal c_72: signed(21 downto 0);
  signal c_72_60_0_False_resize: signed(21 downto 0);
  signal c_72_60_0_False_shift: signed(21 downto 0);
  signal c_72_69_0_False_resize: signed(21 downto 0);
  signal c_72_69_0_False_shift: signed(21 downto 0);
  signal c_72_sel: std_logic_vector(0 downto 0);
  signal c_73: signed(23 downto 0);
  signal c_74: signed(23 downto 0);
  signal c_74_25_0_False_resize: signed(23 downto 0);
  signal c_74_25_0_False_shift: signed(23 downto 0);
  signal c_74_73_0_False_resize: signed(23 downto 0);
  signal c_74_73_0_False_shift: signed(23 downto 0);
  signal c_74_sel: std_logic_vector(0 downto 0);
  signal c_75: signed(22 downto 0);
  signal c_76: signed(22 downto 0);
  signal c_77: signed(22 downto 0);
  signal c_77_38_0_False_resize: signed(22 downto 0);
  signal c_77_38_0_False_shift: signed(22 downto 0);
  signal c_77_76_0_False_resize: signed(22 downto 0);
  signal c_77_76_0_False_shift: signed(22 downto 0);
  signal c_77_sel: std_logic_vector(0 downto 0);
  signal c_78: signed(23 downto 0);
  signal c_78_55_0_False_resize: signed(23 downto 0);
  signal c_78_55_0_False_shift: signed(23 downto 0);
  signal c_78_66_4_False_resize: signed(23 downto 0);
  signal c_78_66_4_False_shift: signed(23 downto 0);
  signal c_78_sel: std_logic_vector(0 downto 0);
  signal c_79: signed(20 downto 0);
  signal c_80: signed(23 downto 0);
  signal c_80_79_0_False_resize: signed(23 downto 0);
  signal c_80_79_0_False_shift: signed(23 downto 0);
  signal c_80_60_0_False_resize: signed(23 downto 0);
  signal c_80_60_0_False_shift: signed(23 downto 0);
  signal c_80_sel: std_logic_vector(0 downto 0);
  signal c_81: signed(22 downto 0);
  signal c_82: signed(22 downto 0);
  signal c_83: signed(22 downto 0);
  signal c_84: signed(22 downto 0);
  signal c_84_83_0_False_resize: signed(22 downto 0);
  signal c_84_83_0_False_shift: signed(22 downto 0);
  signal c_84_45_0_False_resize: signed(22 downto 0);
  signal c_84_45_0_False_shift: signed(22 downto 0);
  signal c_84_82_0_False_resize: signed(22 downto 0);
  signal c_84_82_0_False_shift: signed(22 downto 0);
  signal c_84_sel: std_logic_vector(1 downto 0);
  signal c_85: signed(22 downto 0);
  signal c_86: signed(22 downto 0);
  signal c_87: signed(22 downto 0);
  signal c_88: signed(22 downto 0);
  signal c_89: signed(22 downto 0);
  signal c_89_resize: signed(22 downto 0);
  signal c_90: signed(23 downto 0);
  signal c_90_resize: signed(23 downto 0);
  signal c_91: signed(23 downto 0);
  signal c_92: signed(23 downto 0);
  signal c_93: signed(23 downto 0);
  signal c_94: signed(23 downto 0);
  signal c_95: signed(23 downto 0);
  signal c_95_resize: signed(23 downto 0);
  signal c_96: signed(23 downto 0);
  signal c_96_resize: signed(23 downto 0);
  signal c_97: signed(21 downto 0);
  signal c_98: signed(22 downto 0);
  signal c_98_resize: signed(22 downto 0);
  signal c_99: signed(23 downto 0);
  signal c_100: signed(23 downto 0);
  signal c_100_resize: signed(23 downto 0);
  signal c_101: signed(22 downto 0);
  signal c_101_resize: signed(22 downto 0);
  signal c_102: signed(23 downto 0);
  signal c_102_resize: signed(23 downto 0);
  signal c_103: signed(23 downto 0);
  signal c_104: signed(23 downto 0);
  signal c_104_resize: signed(23 downto 0);
  signal c_105: signed(22 downto 0);
  signal c_106: signed(22 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 89
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_89);
    end if;
  end process;
  -- output node 1 with id 90
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_90);
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
  -- output node 4 with id 98
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_98);
    end if;
  end process;
  -- output node 5 with id 100
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_100);
    end if;
  end process;
  -- output node 6 with id 101
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_101);
    end if;
  end process;
  -- output node 7 with id 102
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_102);
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
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [4], [1]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "0" when "10",
    "0" when "00",
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
  -- node of type 'sub' in stage 2 with id 3 and associated fundamentals [[7], [31], [7]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
      w_o => 21,
      s_x_i => 3,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
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
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[11], [27], [3]]
  with config_select_3 select c_5_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
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
      sub_i => c_5_sub_sel,
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 6 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_4 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 7 and associated fundamentals [[11], [2], [2]]
  c_7_5_0_False_resize <= c_5(19 downto 0);
  c_7_5_0_False_shift <= shift_left(c_7_5_0_False_resize, 0);
  c_7_6_1_False_resize <= resize(c_6, 20);
  c_7_6_1_False_shift <= shift_left(c_7_6_1_False_resize, 1);
  with config_select_4 select c_7_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_5_0_False_shift;
        when others => c_7 <= c_7_6_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 8 and associated fundamentals [[11], [54], [6]]
  c_8_5_1_False_resize <= resize(c_5, 22);
  c_8_5_1_False_shift <= shift_left(c_8_5_1_False_resize, 1);
  c_8_5_0_False_resize <= resize(c_5, 22);
  c_8_5_0_False_shift <= shift_left(c_8_5_0_False_resize, 0);
  with config_select_4 select c_8_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_5_1_False_shift;
        when others => c_8 <= c_8_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 9 and associated fundamentals [[77], [-38], [22]]
  with config_select_5 select c_9_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 22,
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
      sub_i => c_9_sub_sel,
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 10 and associated fundamentals [[11], [27], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 11 and associated fundamentals [[11], [27], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 12 and associated fundamentals [[11], [-76], [3]]
  c_12_11_0_False_resize <= resize(c_11, 23);
  c_12_11_0_False_shift <= shift_left(c_12_11_0_False_resize, 0);
  c_12_9_1_False_resize <= c_9;
  c_12_9_1_False_shift <= shift_left(c_12_9_1_False_resize, 1);
  with config_select_6 select c_12_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_11_0_False_shift;
        when others => c_12 <= c_12_9_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 13 and associated fundamentals [[7], [31], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 14 and associated fundamentals [[7], [31], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 15 and associated fundamentals [[7], [31], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 16 and associated fundamentals [[7], [31], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'add' in stage 7 with id 17 and associated fundamentals [[39], [48], [31]]
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
      w_o => 22,
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
      x_i => c_12,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 18 and associated fundamentals [[1], [1], [16]]
  c_18_0_0_False_resize <= resize(c_0, 20);
  c_18_0_0_False_shift <= shift_left(c_18_0_0_False_resize, 0);
  c_18_0_4_False_resize <= resize(c_0, 20);
  c_18_0_4_False_shift <= shift_left(c_18_0_4_False_resize, 4);
  with config_select_1 select c_18_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_0_0_False_shift;
        when others => c_18 <= c_18_0_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 19 and associated fundamentals [[1], [1], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 20 and associated fundamentals [[1], [1], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 21 and associated fundamentals [[1], [1], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 22 and associated fundamentals [[1], [1], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 23 and associated fundamentals [[1], [1], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 24 and associated fundamentals [[1], [1], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 25 and associated fundamentals [[38], [49], [15]]
  with config_select_8 select c_25_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
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
      x_i => c_17,
      y_i => c_24,
      z_o => c_25_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 26 and associated fundamentals [[11], [27], [6]]
  c_26_5_1_False_resize <= c_5;
  c_26_5_1_False_shift <= shift_left(c_26_5_1_False_resize, 1);
  c_26_5_0_False_resize <= c_5;
  c_26_5_0_False_shift <= shift_left(c_26_5_0_False_resize, 0);
  with config_select_4 select c_26_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_5_1_False_shift;
        when others => c_26 <= c_26_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 27 and associated fundamentals [[29], [85], [-5]]
  with config_select_5 select c_27_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 21,
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
      sub_i => c_27_sub_sel,
      x_i => c_14,
      y_i => c_26,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 28 and associated fundamentals [[7], [31], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_16 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 29 and associated fundamentals [[39], [62], [31]]
  c_29_17_0_False_resize <= c_17;
  c_29_17_0_False_shift <= shift_left(c_29_17_0_False_resize, 0);
  c_29_28_1_False_resize <= resize(c_28, 22);
  c_29_28_1_False_shift <= shift_left(c_29_28_1_False_resize, 1);
  with config_select_8 select c_29_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_17_0_False_shift;
        when others => c_29 <= c_29_28_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 30 and associated fundamentals [[16], [1], [1]]
  c_30_0_0_False_resize <= resize(c_0, 20);
  c_30_0_0_False_shift <= shift_left(c_30_0_0_False_resize, 0);
  c_30_0_4_False_resize <= resize(c_0, 20);
  c_30_0_4_False_shift <= shift_left(c_30_0_4_False_resize, 4);
  with config_select_1 select c_30_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "0" => c_30 <= c_30_0_0_False_shift;
        when others => c_30 <= c_30_0_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 31 and associated fundamentals [[16], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 32 and associated fundamentals [[16], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 33 and associated fundamentals [[16], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 34 and associated fundamentals [[16], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 35 and associated fundamentals [[16], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 36 and associated fundamentals [[16], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 37 and associated fundamentals [[16], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 38 and associated fundamentals [[103], [58], [35]]
  with config_select_9 select c_38_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_38: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
      w_o => 23,
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
      sub_i => c_38_sub_sel,
      x_i => c_29,
      y_i => c_37,
      z_o => c_38_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_38_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 39 and associated fundamentals [[11], [27], [28]]
  c_39_13_2_False_resize <= c_13;
  c_39_13_2_False_shift <= shift_left(c_39_13_2_False_resize, 2);
  c_39_5_0_False_resize <= c_5;
  c_39_5_0_False_shift <= shift_left(c_39_5_0_False_resize, 0);
  with config_select_4 select c_39_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "0" => c_39 <= c_39_13_2_False_shift;
        when others => c_39 <= c_39_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 40 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_6 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 41 and associated fundamentals [[45], [107], [113]]
  with config_select_5 select c_41_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_41: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 16,
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
      sub_i => c_41_sub_sel,
      x_i => c_39,
      y_i => c_40,
      z_o => c_41_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_41_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 42 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_40 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 43 and associated fundamentals [[77], [4], [96]]
  c_43_42_2_False_resize <= resize(c_42, 23);
  c_43_42_2_False_shift <= shift_left(c_43_42_2_False_resize, 2);
  c_43_9_0_False_resize <= c_9;
  c_43_9_0_False_shift <= shift_left(c_43_9_0_False_resize, 0);
  c_43_11_5_False_resize <= resize(c_11, 23);
  c_43_11_5_False_shift <= shift_left(c_43_11_5_False_resize, 5);
  with config_select_6 select c_43_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "00" => c_43 <= c_43_42_2_False_shift;
        when "01" => c_43 <= c_43_9_0_False_shift;
        when others => c_43 <= c_43_11_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 44 and associated fundamentals [[29], [85], [-5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_27 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 45 and associated fundamentals [[-125], [77], [187]]
  with config_select_7 select c_45_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_45: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_45_sub_sel,
      x_i => c_44,
      y_i => c_43,
      z_o => c_45_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_45_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 46 and associated fundamentals [[7], [8], [7]]
  c_46_3_0_False_resize <= c_3(18 downto 0);
  c_46_3_0_False_shift <= shift_left(c_46_3_0_False_resize, 0);
  c_46_4_3_False_resize <= resize(c_4, 19);
  c_46_4_3_False_shift <= shift_left(c_46_4_3_False_resize, 3);
  with config_select_3 select c_46_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "0" => c_46 <= c_46_3_0_False_shift;
        when others => c_46 <= c_46_4_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 47 and associated fundamentals [[45], [107], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 48 and associated fundamentals [[45], [107], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 49 and associated fundamentals [[45], [107], [62]]
  c_49_48_0_False_resize <= c_48;
  c_49_48_0_False_shift <= shift_left(c_49_48_0_False_resize, 0);
  c_49_17_1_False_resize <= resize(c_17, 23);
  c_49_17_1_False_shift <= shift_left(c_49_17_1_False_resize, 1);
  with config_select_8 select c_49_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_49_sel is
        when "0" => c_49 <= c_49_48_0_False_shift;
        when others => c_49 <= c_49_17_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 50 and associated fundamentals [[7], [8], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 51 and associated fundamentals [[7], [8], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 52 and associated fundamentals [[7], [8], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 53 and associated fundamentals [[7], [8], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 54 and associated fundamentals [[7], [8], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 55 and associated fundamentals [[157], [21], [174]]
  with config_select_9 select c_55_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_55: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 23,
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
      sub_i => c_55_sub_sel,
      x_i => c_54,
      y_i => c_49,
      z_o => c_55_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_55_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 56 and associated fundamentals [[88], [31], [12]]
  c_56_5_3_False_resize <= resize(c_5, 23);
  c_56_5_3_False_shift <= shift_left(c_56_5_3_False_resize, 3);
  c_56_5_2_False_resize <= resize(c_5, 23);
  c_56_5_2_False_shift <= shift_left(c_56_5_2_False_resize, 2);
  c_56_13_0_False_resize <= resize(c_13, 23);
  c_56_13_0_False_shift <= shift_left(c_56_13_0_False_resize, 0);
  with config_select_4 select c_56_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_56_sel is
        when "00" => c_56 <= c_56_5_3_False_shift;
        when "01" => c_56 <= c_56_5_2_False_shift;
        when others => c_56 <= c_56_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 57 and associated fundamentals [[88], [31], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 58 and associated fundamentals [[88], [31], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 59 and associated fundamentals [[88], [31], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 60 and associated fundamentals [[215], [14], [55]]
  with config_select_8 select c_60_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_60: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
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
      sub_i => c_60_sub_sel,
      x_i => c_59,
      y_i => c_17,
      z_o => c_60_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_60_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 61 and associated fundamentals [[29], [128], [8]]
  c_61_42_3_False_resize <= resize(c_42, 23);
  c_61_42_3_False_shift <= shift_left(c_61_42_3_False_resize, 3);
  c_61_27_0_False_resize <= c_27;
  c_61_27_0_False_shift <= shift_left(c_61_27_0_False_resize, 0);
  c_61_42_7_False_resize <= resize(c_42, 23);
  c_61_42_7_False_shift <= shift_left(c_61_42_7_False_resize, 7);
  with config_select_6 select c_61_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_61_sel is
        when "00" => c_61 <= c_61_42_3_False_shift;
        when "01" => c_61 <= c_61_27_0_False_shift;
        when others => c_61 <= c_61_42_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 62 and associated fundamentals [[11], [27], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 63 and associated fundamentals [[11], [27], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 64 and associated fundamentals [[11], [27], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 65 and associated fundamentals [[11], [27], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 66 and associated fundamentals [[38], [49], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_25 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 67 and associated fundamentals [[11], [98], [174]]
  c_67_65_0_False_resize <= resize(c_65, 24);
  c_67_65_0_False_shift <= shift_left(c_67_65_0_False_resize, 0);
  c_67_55_0_False_resize <= c_55;
  c_67_55_0_False_shift <= shift_left(c_67_55_0_False_resize, 0);
  c_67_66_1_False_resize <= resize(c_66, 24);
  c_67_66_1_False_shift <= shift_left(c_67_66_1_False_resize, 1);
  with config_select_10 select c_67_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_67_sel is
        when "00" => c_67 <= c_67_65_0_False_shift;
        when "01" => c_67 <= c_67_55_0_False_shift;
        when others => c_67 <= c_67_66_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 68 and associated fundamentals [[154], [85], [176]]
  c_68_9_3_False_resize <= resize(c_9, 24);
  c_68_9_3_False_shift <= shift_left(c_68_9_3_False_resize, 3);
  c_68_9_1_False_resize <= resize(c_9, 24);
  c_68_9_1_False_shift <= shift_left(c_68_9_1_False_resize, 1);
  c_68_27_0_False_resize <= resize(c_27, 24);
  c_68_27_0_False_shift <= shift_left(c_68_27_0_False_resize, 0);
  with config_select_6 select c_68_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_68_sel is
        when "00" => c_68 <= c_68_9_3_False_shift;
        when "01" => c_68 <= c_68_9_1_False_shift;
        when others => c_68 <= c_68_27_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 69 and associated fundamentals [[39], [48], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 70 and associated fundamentals [[39], [48], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 71 and associated fundamentals [[206], [96], [15]]
  c_71_70_1_False_resize <= resize(c_70, 24);
  c_71_70_1_False_shift <= shift_left(c_71_70_1_False_resize, 1);
  c_71_38_1_False_resize <= resize(c_38, 24);
  c_71_38_1_False_shift <= shift_left(c_71_38_1_False_resize, 1);
  c_71_66_0_False_resize <= resize(c_66, 24);
  c_71_66_0_False_shift <= shift_left(c_71_66_0_False_resize, 0);
  with config_select_10 select c_71_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_71_sel is
        when "00" => c_71 <= c_71_70_1_False_shift;
        when "01" => c_71 <= c_71_38_1_False_shift;
        when others => c_71 <= c_71_66_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 72 and associated fundamentals [[39], [14], [31]]
  c_72_60_0_False_resize <= c_60(21 downto 0);
  c_72_60_0_False_shift <= shift_left(c_72_60_0_False_resize, 0);
  c_72_69_0_False_resize <= c_69;
  c_72_69_0_False_shift <= shift_left(c_72_69_0_False_resize, 0);
  with config_select_9 select c_72_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_72_sel is
        when "0" => c_72 <= c_72_60_0_False_shift;
        when others => c_72 <= c_72_69_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 73 and associated fundamentals [[-125], [77], [187]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_45 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 74 and associated fundamentals [[38], [77], [187]]
  c_74_25_0_False_resize <= resize(c_25, 24);
  c_74_25_0_False_shift <= shift_left(c_74_25_0_False_resize, 0);
  c_74_73_0_False_resize <= c_73;
  c_74_73_0_False_shift <= shift_left(c_74_73_0_False_resize, 0);
  with config_select_9 select c_74_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_74_sel is
        when "0" => c_74 <= c_74_25_0_False_shift;
        when others => c_74 <= c_74_73_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 75 and associated fundamentals [[45], [107], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 76 and associated fundamentals [[45], [107], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 77 and associated fundamentals [[45], [58], [113]]
  c_77_38_0_False_resize <= c_38;
  c_77_38_0_False_shift <= shift_left(c_77_38_0_False_resize, 0);
  c_77_76_0_False_resize <= c_76;
  c_77_76_0_False_shift <= shift_left(c_77_76_0_False_resize, 0);
  with config_select_10 select c_77_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_77_sel is
        when "0" => c_77 <= c_77_38_0_False_shift;
        when others => c_77 <= c_77_76_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 78 and associated fundamentals [[157], [21], [240]]
  c_78_55_0_False_resize <= c_55;
  c_78_55_0_False_shift <= shift_left(c_78_55_0_False_resize, 0);
  c_78_66_4_False_resize <= resize(c_66, 24);
  c_78_66_4_False_shift <= shift_left(c_78_66_4_False_resize, 4);
  with config_select_10 select c_78_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_78_sel is
        when "0" => c_78 <= c_78_55_0_False_shift;
        when others => c_78 <= c_78_66_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 79 and associated fundamentals [[7], [31], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_28 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 80 and associated fundamentals [[215], [31], [55]]
  c_80_79_0_False_resize <= resize(c_79, 24);
  c_80_79_0_False_shift <= shift_left(c_80_79_0_False_resize, 0);
  c_80_60_0_False_resize <= c_60;
  c_80_60_0_False_shift <= shift_left(c_80_60_0_False_resize, 0);
  with config_select_9 select c_80_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_80_sel is
        when "0" => c_80 <= c_80_79_0_False_shift;
        when others => c_80 <= c_80_60_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 81 and associated fundamentals [[77], [-38], [22]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 82 and associated fundamentals [[77], [-38], [22]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_81 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 83 and associated fundamentals [[29], [85], [-5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_44 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 84 and associated fundamentals [[-125], [-38], [-5]]
  c_84_83_0_False_resize <= c_83;
  c_84_83_0_False_shift <= shift_left(c_84_83_0_False_resize, 0);
  c_84_45_0_False_resize <= c_45(22 downto 0);
  c_84_45_0_False_shift <= shift_left(c_84_45_0_False_resize, 0);
  c_84_82_0_False_resize <= c_82;
  c_84_82_0_False_shift <= shift_left(c_84_82_0_False_resize, 0);
  with config_select_8 select c_84_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_84_sel is
        when "00" => c_84 <= c_84_83_0_False_shift;
        when "01" => c_84 <= c_84_45_0_False_shift;
        when others => c_84 <= c_84_82_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 85 and associated fundamentals [[29], [128], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 86 and associated fundamentals [[29], [128], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_85 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 87 and associated fundamentals [[29], [128], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_86 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 88 and associated fundamentals [[29], [128], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_87 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 89 and associated fundamentals [[29], [128], [8]]
  c_89_resize <= c_88;
  c_89 <= shift_left(c_89_resize, 0);
  -- node of type 'output' in stage 10 with id 90 and associated fundamentals [[11], [98], [174]]
  c_90_resize <= c_67;
  c_90 <= shift_left(c_90_resize, 0);
  -- node of type 'register' in stage 7 with id 91 and associated fundamentals [[154], [85], [176]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 92 and associated fundamentals [[154], [85], [176]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 93 and associated fundamentals [[154], [85], [176]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_92 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 94 and associated fundamentals [[154], [85], [176]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_93 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 95 and associated fundamentals [[154], [85], [176]]
  c_95_resize <= c_94;
  c_95 <= shift_left(c_95_resize, 0);
  -- node of type 'output' in stage 10 with id 96 and associated fundamentals [[206], [96], [15]]
  c_96_resize <= c_71;
  c_96 <= shift_left(c_96_resize, 0);
  -- node of type 'register' in stage 10 with id 97 and associated fundamentals [[39], [14], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_72 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 98 and associated fundamentals [[78], [28], [62]]
  c_98_resize <= resize(c_97, 23);
  c_98 <= shift_left(c_98_resize, 1);
  -- node of type 'register' in stage 10 with id 99 and associated fundamentals [[38], [77], [187]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_74 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 100 and associated fundamentals [[38], [77], [187]]
  c_100_resize <= c_99;
  c_100 <= shift_left(c_100_resize, 0);
  -- node of type 'output' in stage 10 with id 101 and associated fundamentals [[45], [58], [113]]
  c_101_resize <= c_77;
  c_101 <= shift_left(c_101_resize, 0);
  -- node of type 'output' in stage 10 with id 102 and associated fundamentals [[157], [21], [240]]
  c_102_resize <= c_78;
  c_102 <= shift_left(c_102_resize, 0);
  -- node of type 'register' in stage 10 with id 103 and associated fundamentals [[215], [31], [55]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_80 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 104 and associated fundamentals [[215], [31], [55]]
  c_104_resize <= c_103;
  c_104 <= shift_left(c_104_resize, 0);
  -- node of type 'register' in stage 9 with id 105 and associated fundamentals [[-125], [-38], [-5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_84 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 106 and associated fundamentals [[-125], [-38], [-5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_105 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 107 and associated fundamentals [[250], [76], [10]]
  c_107_resize <= resize(c_106, 24);
  c_107 <= -shift_left(c_107_resize, 1);
end architecture;
