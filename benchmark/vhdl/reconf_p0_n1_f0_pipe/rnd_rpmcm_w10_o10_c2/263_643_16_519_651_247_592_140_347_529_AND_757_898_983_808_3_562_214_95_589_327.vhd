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
    y_4: out std_logic_vector(25 downto 0);
    y_5: out std_logic_vector(25 downto 0);
    y_6: out std_logic_vector(25 downto 0);
    y_7: out std_logic_vector(23 downto 0);
    y_8: out std_logic_vector(25 downto 0);
    y_9: out std_logic_vector(25 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_i0_resize: signed(18 downto 0);
  signal c_1_i1_resize: signed(18 downto 0);
  signal c_1_i0_shift: signed(18 downto 0);
  signal c_1_i1_shift: signed(18 downto 0);
  signal c_1_arith: signed(18 downto 0);
  signal c_1_oshift: signed(18 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(15 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_1_2_False_resize: signed(19 downto 0);
  signal c_3_1_2_False_shift: signed(19 downto 0);
  signal c_3_2_0_False_resize: signed(19 downto 0);
  signal c_3_2_0_False_shift: signed(19 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_i0_resize: signed(22 downto 0);
  signal c_5_i1_resize: signed(22 downto 0);
  signal c_5_i0_shift: signed(22 downto 0);
  signal c_5_i1_shift: signed(22 downto 0);
  signal c_5_arith: signed(22 downto 0);
  signal c_5_oshift: signed(22 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_7: signed(18 downto 0);
  signal c_7_5_0_False_resize: signed(18 downto 0);
  signal c_7_5_0_False_shift: signed(18 downto 0);
  signal c_7_6_2_False_resize: signed(18 downto 0);
  signal c_7_6_2_False_shift: signed(18 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(15 downto 0);
  signal c_11: signed(15 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_9_0_False_resize: signed(23 downto 0);
  signal c_12_9_0_False_shift: signed(23 downto 0);
  signal c_12_11_6_False_resize: signed(23 downto 0);
  signal c_12_11_6_False_shift: signed(23 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(20 downto 0);
  signal c_13_1_2_False_resize: signed(20 downto 0);
  signal c_13_1_2_False_shift: signed(20 downto 0);
  signal c_13_1_0_False_resize: signed(20 downto 0);
  signal c_13_1_0_False_shift: signed(20 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(20 downto 0);
  signal c_15: signed(20 downto 0);
  signal c_16: signed(20 downto 0);
  signal c_17: signed(20 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_18_i0_resize: signed(24 downto 0);
  signal c_18_i1_resize: signed(24 downto 0);
  signal c_18_i0_shift: signed(24 downto 0);
  signal c_18_i1_shift: signed(24 downto 0);
  signal c_18_arith: signed(24 downto 0);
  signal c_18_oshift: signed(24 downto 0);
  signal c_19: signed(18 downto 0);
  signal c_20: signed(18 downto 0);
  signal c_21: signed(18 downto 0);
  signal c_22: signed(18 downto 0);
  signal c_23: signed(24 downto 0);
  signal c_23_9_1_False_resize: signed(24 downto 0);
  signal c_23_9_1_False_shift: signed(24 downto 0);
  signal c_23_22_0_False_resize: signed(24 downto 0);
  signal c_23_22_0_False_shift: signed(24 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(22 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_9_0_False_resize: signed(23 downto 0);
  signal c_25_9_0_False_shift: signed(23 downto 0);
  signal c_25_24_0_False_resize: signed(23 downto 0);
  signal c_25_24_0_False_shift: signed(23 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_i0_resize: signed(25 downto 0);
  signal c_26_i1_resize: signed(25 downto 0);
  signal c_26_i0_shift: signed(25 downto 0);
  signal c_26_i1_shift: signed(25 downto 0);
  signal c_26_arith: signed(25 downto 0);
  signal c_26_oshift: signed(25 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(25 downto 0);
  signal c_27_5_3_False_resize: signed(25 downto 0);
  signal c_27_5_3_False_shift: signed(25 downto 0);
  signal c_27_5_0_False_resize: signed(25 downto 0);
  signal c_27_5_0_False_shift: signed(25 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_2_8_False_resize: signed(23 downto 0);
  signal c_28_2_8_False_shift: signed(23 downto 0);
  signal c_28_1_0_False_resize: signed(23 downto 0);
  signal c_28_1_0_False_shift: signed(23 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_i0_resize: signed(25 downto 0);
  signal c_31_i1_resize: signed(25 downto 0);
  signal c_31_i0_shift: signed(25 downto 0);
  signal c_31_i1_shift: signed(25 downto 0);
  signal c_31_arith: signed(25 downto 0);
  signal c_31_oshift: signed(25 downto 0);
  signal c_31_sub_sel: std_logic;
  signal c_32: signed(17 downto 0);
  signal c_32_2_2_False_resize: signed(17 downto 0);
  signal c_32_2_2_False_shift: signed(17 downto 0);
  signal c_32_1_0_False_resize: signed(17 downto 0);
  signal c_32_1_0_False_shift: signed(17 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(17 downto 0);
  signal c_34: signed(17 downto 0);
  signal c_35: signed(17 downto 0);
  signal c_36: signed(17 downto 0);
  signal c_37: signed(17 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_38_i0_resize: signed(25 downto 0);
  signal c_38_i1_resize: signed(25 downto 0);
  signal c_38_i0_shift: signed(25 downto 0);
  signal c_38_i1_shift: signed(25 downto 0);
  signal c_38_arith: signed(25 downto 0);
  signal c_38_oshift: signed(25 downto 0);
  signal c_38_sub_sel: std_logic;
  signal c_39: signed(21 downto 0);
  signal c_39_i0_resize: signed(21 downto 0);
  signal c_39_i1_resize: signed(21 downto 0);
  signal c_39_i0_shift: signed(21 downto 0);
  signal c_39_i1_shift: signed(21 downto 0);
  signal c_39_arith: signed(21 downto 0);
  signal c_39_oshift: signed(21 downto 0);
  signal c_40: signed(22 downto 0);
  signal c_40_6_5_False_resize: signed(22 downto 0);
  signal c_40_6_5_False_shift: signed(22 downto 0);
  signal c_40_5_0_False_resize: signed(22 downto 0);
  signal c_40_5_0_False_shift: signed(22 downto 0);
  signal c_40_sel: std_logic_vector(0 downto 0);
  signal c_41: signed(24 downto 0);
  signal c_41_9_0_False_resize: signed(24 downto 0);
  signal c_41_9_0_False_shift: signed(24 downto 0);
  signal c_41_31_0_False_resize: signed(24 downto 0);
  signal c_41_31_0_False_shift: signed(24 downto 0);
  signal c_41_sel: std_logic_vector(0 downto 0);
  signal c_42: signed(22 downto 0);
  signal c_43: signed(22 downto 0);
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
  signal c_48: signed(25 downto 0);
  signal c_48_47_0_False_resize: signed(25 downto 0);
  signal c_48_47_0_False_shift: signed(25 downto 0);
  signal c_48_38_0_False_resize: signed(25 downto 0);
  signal c_48_38_0_False_shift: signed(25 downto 0);
  signal c_48_sel: std_logic_vector(0 downto 0);
  signal c_49: signed(21 downto 0);
  signal c_50: signed(21 downto 0);
  signal c_51: signed(21 downto 0);
  signal c_52: signed(21 downto 0);
  signal c_53: signed(21 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_54_18_0_False_resize: signed(23 downto 0);
  signal c_54_18_0_False_shift: signed(23 downto 0);
  signal c_54_53_2_False_resize: signed(23 downto 0);
  signal c_54_53_2_False_shift: signed(23 downto 0);
  signal c_54_sel: std_logic_vector(0 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_56_i0_resize: signed(25 downto 0);
  signal c_56_i1_resize: signed(25 downto 0);
  signal c_56_i0_shift: signed(25 downto 0);
  signal c_56_i1_shift: signed(25 downto 0);
  signal c_56_arith: signed(25 downto 0);
  signal c_56_oshift: signed(25 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_58_38_2_False_resize: signed(25 downto 0);
  signal c_58_38_2_False_shift: signed(25 downto 0);
  signal c_58_57_0_False_resize: signed(25 downto 0);
  signal c_58_57_0_False_shift: signed(25 downto 0);
  signal c_58_sel: std_logic_vector(0 downto 0);
  signal c_59: signed(18 downto 0);
  signal c_60: signed(18 downto 0);
  signal c_61: signed(22 downto 0);
  signal c_61_26_0_False_resize: signed(22 downto 0);
  signal c_61_26_0_False_shift: signed(22 downto 0);
  signal c_61_60_1_False_resize: signed(22 downto 0);
  signal c_61_60_1_False_shift: signed(22 downto 0);
  signal c_61_sel: std_logic_vector(0 downto 0);
  signal c_62: signed(22 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_63_i0_resize: signed(25 downto 0);
  signal c_63_i1_resize: signed(25 downto 0);
  signal c_63_i0_shift: signed(25 downto 0);
  signal c_63_i1_shift: signed(25 downto 0);
  signal c_63_arith: signed(25 downto 0);
  signal c_63_oshift: signed(25 downto 0);
  signal c_63_sub_sel: std_logic;
  signal c_64: signed(25 downto 0);
  signal c_64_46_0_False_resize: signed(25 downto 0);
  signal c_64_46_0_False_shift: signed(25 downto 0);
  signal c_64_18_1_False_resize: signed(25 downto 0);
  signal c_64_18_1_False_shift: signed(25 downto 0);
  signal c_64_sel: std_logic_vector(0 downto 0);
  signal c_65: signed(20 downto 0);
  signal c_65_4_0_False_resize: signed(20 downto 0);
  signal c_65_4_0_False_shift: signed(20 downto 0);
  signal c_65_39_0_False_resize: signed(20 downto 0);
  signal c_65_39_0_False_shift: signed(20 downto 0);
  signal c_65_sel: std_logic_vector(0 downto 0);
  signal c_66: signed(20 downto 0);
  signal c_67: signed(20 downto 0);
  signal c_68: signed(20 downto 0);
  signal c_69: signed(20 downto 0);
  signal c_70: signed(20 downto 0);
  signal c_71: signed(25 downto 0);
  signal c_71_i0_resize: signed(25 downto 0);
  signal c_71_i1_resize: signed(25 downto 0);
  signal c_71_i0_shift: signed(25 downto 0);
  signal c_71_i1_shift: signed(25 downto 0);
  signal c_71_arith: signed(25 downto 0);
  signal c_71_oshift: signed(25 downto 0);
  signal c_72: signed(24 downto 0);
  signal c_73: signed(25 downto 0);
  signal c_73_38_0_False_resize: signed(25 downto 0);
  signal c_73_38_0_False_shift: signed(25 downto 0);
  signal c_73_72_1_False_resize: signed(25 downto 0);
  signal c_73_72_1_False_shift: signed(25 downto 0);
  signal c_73_sel: std_logic_vector(0 downto 0);
  signal c_74: signed(15 downto 0);
  signal c_75: signed(15 downto 0);
  signal c_76: signed(25 downto 0);
  signal c_76_75_4_False_resize: signed(25 downto 0);
  signal c_76_75_4_False_shift: signed(25 downto 0);
  signal c_76_44_0_False_resize: signed(25 downto 0);
  signal c_76_44_0_False_shift: signed(25 downto 0);
  signal c_76_sel: std_logic_vector(0 downto 0);
  signal c_77: signed(25 downto 0);
  signal c_77_26_3_False_resize: signed(25 downto 0);
  signal c_77_26_3_False_shift: signed(25 downto 0);
  signal c_77_44_0_False_resize: signed(25 downto 0);
  signal c_77_44_0_False_shift: signed(25 downto 0);
  signal c_77_sel: std_logic_vector(0 downto 0);
  signal c_78: signed(25 downto 0);
  signal c_78_60_0_False_resize: signed(25 downto 0);
  signal c_78_60_0_False_shift: signed(25 downto 0);
  signal c_78_26_0_False_resize: signed(25 downto 0);
  signal c_78_26_0_False_shift: signed(25 downto 0);
  signal c_78_sel: std_logic_vector(0 downto 0);
  signal c_79: signed(24 downto 0);
  signal c_79_38_0_False_resize: signed(24 downto 0);
  signal c_79_38_0_False_shift: signed(24 downto 0);
  signal c_79_72_1_False_resize: signed(24 downto 0);
  signal c_79_72_1_False_shift: signed(24 downto 0);
  signal c_79_sel: std_logic_vector(0 downto 0);
  signal c_80: signed(23 downto 0);
  signal c_80_5_0_False_resize: signed(23 downto 0);
  signal c_80_5_0_False_shift: signed(23 downto 0);
  signal c_80_49_2_False_resize: signed(23 downto 0);
  signal c_80_49_2_False_shift: signed(23 downto 0);
  signal c_80_sel: std_logic_vector(0 downto 0);
  signal c_81: signed(25 downto 0);
  signal c_82: signed(25 downto 0);
  signal c_83: signed(25 downto 0);
  signal c_83_resize: signed(25 downto 0);
  signal c_84: signed(25 downto 0);
  signal c_85: signed(25 downto 0);
  signal c_85_resize: signed(25 downto 0);
  signal c_86: signed(25 downto 0);
  signal c_87: signed(25 downto 0);
  signal c_88: signed(25 downto 0);
  signal c_88_resize: signed(25 downto 0);
  signal c_89: signed(25 downto 0);
  signal c_90: signed(25 downto 0);
  signal c_91: signed(25 downto 0);
  signal c_91_resize: signed(25 downto 0);
  signal c_92: signed(25 downto 0);
  signal c_93: signed(25 downto 0);
  signal c_94: signed(25 downto 0);
  signal c_94_resize: signed(25 downto 0);
  signal c_95: signed(25 downto 0);
  signal c_96: signed(25 downto 0);
  signal c_96_resize: signed(25 downto 0);
  signal c_97: signed(24 downto 0);
  signal c_98: signed(25 downto 0);
  signal c_98_resize: signed(25 downto 0);
  signal c_99: signed(23 downto 0);
  signal c_100: signed(23 downto 0);
  signal c_101: signed(23 downto 0);
  signal c_102: signed(23 downto 0);
  signal c_103: signed(23 downto 0);
  signal c_104: signed(23 downto 0);
  signal c_105: signed(23 downto 0);
  signal c_105_resize: signed(23 downto 0);
  signal c_106: signed(25 downto 0);
  signal c_106_resize: signed(25 downto 0);
  signal c_107: signed(25 downto 0);
  signal c_107_resize: signed(25 downto 0);
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
  -- output node 0 with id 83
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_83);
    end if;
  end process;
  -- output node 1 with id 85
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_85);
    end if;
  end process;
  -- output node 2 with id 88
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_88);
    end if;
  end process;
  -- output node 3 with id 91
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_91);
    end if;
  end process;
  -- output node 4 with id 94
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_94);
    end if;
  end process;
  -- output node 5 with id 96
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_96);
    end if;
  end process;
  -- output node 6 with id 98
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_98);
    end if;
  end process;
  -- output node 7 with id 105
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_105);
    end if;
  end process;
  -- output node 8 with id 106
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_106);
    end if;
  end process;
  -- output node 9 with id 107
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_107);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[5], [3]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
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
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[1], [12]]
  c_3_1_2_False_resize <= resize(c_1, 20);
  c_3_1_2_False_shift <= shift_left(c_3_1_2_False_resize, 2);
  c_3_2_0_False_resize <= resize(c_2, 20);
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  with config_select_2 select c_3_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_1_2_False_shift;
        when others => c_3 <= c_3_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 5 and associated fundamentals [[7], [95]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 16,
      w_o => 23,
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
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 6 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_4 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 7 and associated fundamentals [[7], [4]]
  c_7_5_0_False_resize <= c_5(18 downto 0);
  c_7_5_0_False_shift <= shift_left(c_7_5_0_False_resize, 0);
  c_7_6_2_False_resize <= resize(c_6, 19);
  c_7_6_2_False_shift <= shift_left(c_7_6_2_False_resize, 2);
  with config_select_4 select c_7_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_5_0_False_shift;
        when others => c_7 <= c_7_6_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 8 and associated fundamentals [[7], [95]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_5 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 9 and associated fundamentals [[217], [223]]
  with config_select_5 select c_9_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 23,
      w_o => 24,
      s_x_i => 5,
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
      c_9 <= c_9_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 10 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 11 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 12 and associated fundamentals [[64], [223]]
  c_12_9_0_False_resize <= c_9;
  c_12_9_0_False_shift <= shift_left(c_12_9_0_False_resize, 0);
  c_12_11_6_False_resize <= resize(c_11, 24);
  c_12_11_6_False_shift <= shift_left(c_12_11_6_False_resize, 6);
  with config_select_6 select c_12_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_9_0_False_shift;
        when others => c_12 <= c_12_11_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 13 and associated fundamentals [[20], [3]]
  c_13_1_2_False_resize <= resize(c_1, 21);
  c_13_1_2_False_shift <= shift_left(c_13_1_2_False_resize, 2);
  c_13_1_0_False_resize <= resize(c_1, 21);
  c_13_1_0_False_shift <= shift_left(c_13_1_0_False_resize, 0);
  with config_select_2 select c_13_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_1_2_False_shift;
        when others => c_13 <= c_13_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 14 and associated fundamentals [[20], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[20], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 16 and associated fundamentals [[20], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 17 and associated fundamentals [[20], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'add' in stage 7 with id 18 and associated fundamentals [[148], [449]]
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 21,
      w_o => 25,
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
      x_i => c_12,
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 19 and associated fundamentals [[5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 20 and associated fundamentals [[5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 21 and associated fundamentals [[5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 22 and associated fundamentals [[5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 23 and associated fundamentals [[434], [3]]
  c_23_9_1_False_resize <= resize(c_9, 25);
  c_23_9_1_False_shift <= shift_left(c_23_9_1_False_resize, 1);
  c_23_22_0_False_resize <= resize(c_22, 25);
  c_23_22_0_False_shift <= shift_left(c_23_22_0_False_resize, 0);
  with config_select_6 select c_23_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_9_1_False_shift;
        when others => c_23 <= c_23_22_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 24 and associated fundamentals [[7], [95]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_8 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 25 and associated fundamentals [[217], [95]]
  c_25_9_0_False_resize <= c_9;
  c_25_9_0_False_shift <= shift_left(c_25_9_0_False_resize, 0);
  c_25_24_0_False_resize <= resize(c_24, 24);
  c_25_24_0_False_shift <= shift_left(c_25_24_0_False_resize, 0);
  with config_select_6 select c_25_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_9_0_False_shift;
        when others => c_25 <= c_25_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 26 and associated fundamentals [[651], [101]]
  with config_select_7 select c_26_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 24,
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
      sub_i => c_26_sub_sel,
      x_i => c_23,
      y_i => c_25,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 27 and associated fundamentals [[7], [760]]
  c_27_5_3_False_resize <= resize(c_5, 26);
  c_27_5_3_False_shift <= shift_left(c_27_5_3_False_resize, 3);
  c_27_5_0_False_resize <= resize(c_5, 26);
  c_27_5_0_False_shift <= shift_left(c_27_5_0_False_resize, 0);
  with config_select_4 select c_27_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_5_3_False_shift;
        when others => c_27 <= c_27_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 28 and associated fundamentals [[256], [3]]
  c_28_2_8_False_resize <= resize(c_2, 24);
  c_28_2_8_False_shift <= shift_left(c_28_2_8_False_resize, 8);
  c_28_1_0_False_resize <= resize(c_1, 24);
  c_28_1_0_False_shift <= shift_left(c_28_1_0_False_resize, 0);
  with config_select_2 select c_28_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "0" => c_28 <= c_28_2_8_False_shift;
        when others => c_28 <= c_28_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 29 and associated fundamentals [[256], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 30 and associated fundamentals [[256], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 31 and associated fundamentals [[263], [757]]
  with config_select_5 select c_31_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
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
      sub_i => c_31_sub_sel,
      x_i => c_27,
      y_i => c_30,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 32 and associated fundamentals [[4], [3]]
  c_32_2_2_False_resize <= resize(c_2, 18);
  c_32_2_2_False_shift <= shift_left(c_32_2_2_False_resize, 2);
  c_32_1_0_False_resize <= c_1(17 downto 0);
  c_32_1_0_False_shift <= shift_left(c_32_1_0_False_resize, 0);
  with config_select_2 select c_32_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "0" => c_32 <= c_32_2_2_False_shift;
        when others => c_32 <= c_32_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 33 and associated fundamentals [[4], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 34 and associated fundamentals [[4], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 35 and associated fundamentals [[4], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 36 and associated fundamentals [[4], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 37 and associated fundamentals [[4], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 38 and associated fundamentals [[643], [107]]
  with config_select_8 select c_38_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_38: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 18,
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
      sub_i => c_38_sub_sel,
      x_i => c_26,
      y_i => c_37,
      z_o => c_38_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_38_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 39 and associated fundamentals [[35], [21]]
  inst_adder_node_39: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 22,
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
      y_i => c_1,
      z_o => c_39_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_39_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 40 and associated fundamentals [[32], [95]]
  c_40_6_5_False_resize <= resize(c_6, 23);
  c_40_6_5_False_shift <= shift_left(c_40_6_5_False_resize, 5);
  c_40_5_0_False_resize <= c_5;
  c_40_5_0_False_shift <= shift_left(c_40_5_0_False_resize, 0);
  with config_select_4 select c_40_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "0" => c_40 <= c_40_6_5_False_shift;
        when others => c_40 <= c_40_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 41 and associated fundamentals [[263], [223]]
  c_41_9_0_False_resize <= resize(c_9, 25);
  c_41_9_0_False_shift <= shift_left(c_41_9_0_False_resize, 0);
  c_41_31_0_False_resize <= c_31(24 downto 0);
  c_41_31_0_False_shift <= shift_left(c_41_31_0_False_resize, 0);
  with config_select_6 select c_41_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "0" => c_41 <= c_41_9_0_False_shift;
        when others => c_41 <= c_41_31_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 42 and associated fundamentals [[32], [95]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 43 and associated fundamentals [[32], [95]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'add' in stage 7 with id 44 and associated fundamentals [[519], [983]]
  inst_adder_node_44: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 25,
      w_o => 26,
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
      x_i => c_43,
      y_i => c_41,
      z_o => c_44_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_44_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 45 and associated fundamentals [[263], [757]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 46 and associated fundamentals [[263], [757]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 47 and associated fundamentals [[263], [757]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 48 and associated fundamentals [[643], [757]]
  c_48_47_0_False_resize <= c_47;
  c_48_47_0_False_shift <= shift_left(c_48_47_0_False_resize, 0);
  c_48_38_0_False_resize <= c_38;
  c_48_38_0_False_shift <= shift_left(c_48_38_0_False_resize, 0);
  with config_select_9 select c_48_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "0" => c_48 <= c_48_47_0_False_shift;
        when others => c_48 <= c_48_38_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 49 and associated fundamentals [[35], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 50 and associated fundamentals [[35], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 51 and associated fundamentals [[35], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 52 and associated fundamentals [[35], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 53 and associated fundamentals [[35], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 54 and associated fundamentals [[148], [84]]
  c_54_18_0_False_resize <= c_18(23 downto 0);
  c_54_18_0_False_shift <= shift_left(c_54_18_0_False_resize, 0);
  c_54_53_2_False_resize <= resize(c_53, 24);
  c_54_53_2_False_shift <= shift_left(c_54_53_2_False_resize, 2);
  with config_select_8 select c_54_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_54_sel is
        when "0" => c_54 <= c_54_18_0_False_shift;
        when others => c_54 <= c_54_53_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 55 and associated fundamentals [[148], [84]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 10 with id 56 and associated fundamentals [[347], [589]]
  inst_adder_node_56: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
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
      x_i => c_48,
      y_i => c_55,
      z_o => c_56_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_56_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 57 and associated fundamentals [[519], [983]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_44 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 58 and associated fundamentals [[519], [428]]
  c_58_38_2_False_resize <= c_38;
  c_58_38_2_False_shift <= shift_left(c_58_38_2_False_resize, 2);
  c_58_57_0_False_resize <= c_57;
  c_58_57_0_False_shift <= shift_left(c_58_57_0_False_resize, 0);
  with config_select_9 select c_58_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_58_sel is
        when "0" => c_58 <= c_58_38_2_False_shift;
        when others => c_58 <= c_58_57_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 59 and associated fundamentals [[5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 60 and associated fundamentals [[5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 61 and associated fundamentals [[10], [101]]
  c_61_26_0_False_resize <= c_26(22 downto 0);
  c_61_26_0_False_shift <= shift_left(c_61_26_0_False_resize, 0);
  c_61_60_1_False_resize <= resize(c_60, 23);
  c_61_60_1_False_shift <= shift_left(c_61_60_1_False_resize, 1);
  with config_select_8 select c_61_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_61_sel is
        when "0" => c_61 <= c_61_26_0_False_shift;
        when others => c_61 <= c_61_60_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 62 and associated fundamentals [[10], [101]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 63 and associated fundamentals [[529], [327]]
  with config_select_10 select c_63_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_63: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 23,
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
      sub_i => c_63_sub_sel,
      x_i => c_58,
      y_i => c_62,
      z_o => c_63_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_63_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 64 and associated fundamentals [[263], [898]]
  c_64_46_0_False_resize <= c_46;
  c_64_46_0_False_shift <= shift_left(c_64_46_0_False_resize, 0);
  c_64_18_1_False_resize <= resize(c_18, 26);
  c_64_18_1_False_shift <= shift_left(c_64_18_1_False_resize, 1);
  with config_select_8 select c_64_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_64_sel is
        when "0" => c_64 <= c_64_46_0_False_shift;
        when others => c_64 <= c_64_18_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 65 and associated fundamentals [[1], [21]]
  c_65_4_0_False_resize <= resize(c_4, 21);
  c_65_4_0_False_shift <= shift_left(c_65_4_0_False_resize, 0);
  c_65_39_0_False_resize <= c_39(20 downto 0);
  c_65_39_0_False_shift <= shift_left(c_65_39_0_False_resize, 0);
  with config_select_3 select c_65_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_65_sel is
        when "0" => c_65 <= c_65_4_0_False_shift;
        when others => c_65 <= c_65_39_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 66 and associated fundamentals [[1], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 67 and associated fundamentals [[1], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 68 and associated fundamentals [[1], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 69 and associated fundamentals [[1], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 70 and associated fundamentals [[1], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 9 with id 71 and associated fundamentals [[247], [562]]
  inst_adder_node_71: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 21,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_64,
      y_i => c_70,
      z_o => c_71_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_71_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 72 and associated fundamentals [[148], [449]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_18 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 73 and associated fundamentals [[643], [898]]
  c_73_38_0_False_resize <= c_38;
  c_73_38_0_False_shift <= shift_left(c_73_38_0_False_resize, 0);
  c_73_72_1_False_resize <= resize(c_72, 26);
  c_73_72_1_False_shift <= shift_left(c_73_72_1_False_resize, 1);
  with config_select_9 select c_73_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_73_sel is
        when "0" => c_73 <= c_73_38_0_False_shift;
        when others => c_73 <= c_73_72_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 74 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 75 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 76 and associated fundamentals [[16], [983]]
  c_76_75_4_False_resize <= resize(c_75, 26);
  c_76_75_4_False_shift <= shift_left(c_76_75_4_False_resize, 4);
  c_76_44_0_False_resize <= c_44;
  c_76_44_0_False_shift <= shift_left(c_76_44_0_False_resize, 0);
  with config_select_8 select c_76_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_76_sel is
        when "0" => c_76 <= c_76_75_4_False_shift;
        when others => c_76 <= c_76_44_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 77 and associated fundamentals [[519], [808]]
  c_77_26_3_False_resize <= c_26;
  c_77_26_3_False_shift <= shift_left(c_77_26_3_False_resize, 3);
  c_77_44_0_False_resize <= c_44;
  c_77_44_0_False_shift <= shift_left(c_77_44_0_False_resize, 0);
  with config_select_8 select c_77_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_77_sel is
        when "0" => c_77 <= c_77_26_3_False_shift;
        when others => c_77 <= c_77_44_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 78 and associated fundamentals [[651], [3]]
  c_78_60_0_False_resize <= resize(c_60, 26);
  c_78_60_0_False_shift <= shift_left(c_78_60_0_False_resize, 0);
  c_78_26_0_False_resize <= c_26;
  c_78_26_0_False_shift <= shift_left(c_78_26_0_False_resize, 0);
  with config_select_8 select c_78_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_78_sel is
        when "0" => c_78 <= c_78_60_0_False_shift;
        when others => c_78 <= c_78_26_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 79 and associated fundamentals [[296], [107]]
  c_79_38_0_False_resize <= c_38(24 downto 0);
  c_79_38_0_False_shift <= shift_left(c_79_38_0_False_resize, 0);
  c_79_72_1_False_resize <= c_72;
  c_79_72_1_False_shift <= shift_left(c_79_72_1_False_resize, 1);
  with config_select_9 select c_79_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_79_sel is
        when "0" => c_79 <= c_79_38_0_False_shift;
        when others => c_79 <= c_79_72_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 80 and associated fundamentals [[140], [95]]
  c_80_5_0_False_resize <= resize(c_5, 24);
  c_80_5_0_False_shift <= shift_left(c_80_5_0_False_resize, 0);
  c_80_49_2_False_resize <= resize(c_49, 24);
  c_80_49_2_False_shift <= shift_left(c_80_49_2_False_resize, 2);
  with config_select_4 select c_80_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_80_sel is
        when "0" => c_80 <= c_80_5_0_False_shift;
        when others => c_80 <= c_80_49_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 81 and associated fundamentals [[263], [757]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 82 and associated fundamentals [[263], [757]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_81 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 83 and associated fundamentals [[263], [757]]
  c_83_resize <= c_82;
  c_83 <= shift_left(c_83_resize, 0);
  -- node of type 'register' in stage 10 with id 84 and associated fundamentals [[643], [898]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_73 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 85 and associated fundamentals [[643], [898]]
  c_85_resize <= c_84;
  c_85 <= shift_left(c_85_resize, 0);
  -- node of type 'register' in stage 9 with id 86 and associated fundamentals [[16], [983]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 87 and associated fundamentals [[16], [983]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_86 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 88 and associated fundamentals [[16], [983]]
  c_88_resize <= c_87;
  c_88 <= shift_left(c_88_resize, 0);
  -- node of type 'register' in stage 9 with id 89 and associated fundamentals [[519], [808]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 90 and associated fundamentals [[519], [808]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_89 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 91 and associated fundamentals [[519], [808]]
  c_91_resize <= c_90;
  c_91 <= shift_left(c_91_resize, 0);
  -- node of type 'register' in stage 9 with id 92 and associated fundamentals [[651], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 93 and associated fundamentals [[651], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_92 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 94 and associated fundamentals [[651], [3]]
  c_94_resize <= c_93;
  c_94 <= shift_left(c_94_resize, 0);
  -- node of type 'register' in stage 10 with id 95 and associated fundamentals [[247], [562]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_71 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 96 and associated fundamentals [[247], [562]]
  c_96_resize <= c_95;
  c_96 <= shift_left(c_96_resize, 0);
  -- node of type 'register' in stage 10 with id 97 and associated fundamentals [[296], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_79 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 98 and associated fundamentals [[592], [214]]
  c_98_resize <= resize(c_97, 26);
  c_98 <= shift_left(c_98_resize, 1);
  -- node of type 'register' in stage 5 with id 99 and associated fundamentals [[140], [95]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_80 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 100 and associated fundamentals [[140], [95]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_99 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 101 and associated fundamentals [[140], [95]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_100 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 102 and associated fundamentals [[140], [95]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_101 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 103 and associated fundamentals [[140], [95]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_102 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 104 and associated fundamentals [[140], [95]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_103 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 105 and associated fundamentals [[140], [95]]
  c_105_resize <= c_104;
  c_105 <= shift_left(c_105_resize, 0);
  -- node of type 'output' in stage 10 with id 106 and associated fundamentals [[347], [589]]
  c_106_resize <= c_56;
  c_106 <= shift_left(c_106_resize, 0);
  -- node of type 'output' in stage 10 with id 107 and associated fundamentals [[529], [327]]
  c_107_resize <= c_63;
  c_107 <= shift_left(c_107_resize, 0);
end architecture;
