library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(24 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(25 downto 0);
    y_5: out std_logic_vector(25 downto 0);
    y_6: out std_logic_vector(25 downto 0);
    y_7: out std_logic_vector(24 downto 0);
    y_8: out std_logic_vector(24 downto 0);
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
  signal config_select_15: std_logic_vector(0 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_i0_resize: signed(18 downto 0);
  signal c_1_i1_resize: signed(18 downto 0);
  signal c_1_i0_shift: signed(18 downto 0);
  signal c_1_i1_shift: signed(18 downto 0);
  signal c_1_arith: signed(18 downto 0);
  signal c_1_oshift: signed(18 downto 0);
  signal c_2: signed(20 downto 0);
  signal c_2_1_2_False_resize: signed(20 downto 0);
  signal c_2_1_2_False_shift: signed(20 downto 0);
  signal c_2_1_0_False_resize: signed(20 downto 0);
  signal c_2_1_0_False_shift: signed(20 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(15 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_5_i0_resize: signed(21 downto 0);
  signal c_5_i1_resize: signed(21 downto 0);
  signal c_5_i0_shift: signed(21 downto 0);
  signal c_5_i1_shift: signed(21 downto 0);
  signal c_5_arith: signed(21 downto 0);
  signal c_5_oshift: signed(21 downto 0);
  signal c_6: signed(18 downto 0);
  signal c_6_1_0_False_resize: signed(18 downto 0);
  signal c_6_1_0_False_shift: signed(18 downto 0);
  signal c_6_3_1_False_resize: signed(18 downto 0);
  signal c_6_3_1_False_shift: signed(18 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(18 downto 0);
  signal c_8: signed(18 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_8_4_False_resize: signed(22 downto 0);
  signal c_9_8_4_False_shift: signed(22 downto 0);
  signal c_9_5_0_False_resize: signed(22 downto 0);
  signal c_9_5_0_False_shift: signed(22 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(18 downto 0);
  signal c_11: signed(18 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_i0_resize: signed(22 downto 0);
  signal c_12_i1_resize: signed(22 downto 0);
  signal c_12_i0_shift: signed(22 downto 0);
  signal c_12_i1_shift: signed(22 downto 0);
  signal c_12_arith: signed(22 downto 0);
  signal c_12_oshift: signed(22 downto 0);
  signal c_13: signed(17 downto 0);
  signal c_13_0_0_False_resize: signed(17 downto 0);
  signal c_13_0_0_False_shift: signed(17 downto 0);
  signal c_13_0_2_False_resize: signed(17 downto 0);
  signal c_13_0_2_False_shift: signed(17 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(17 downto 0);
  signal c_15: signed(17 downto 0);
  signal c_16: signed(17 downto 0);
  signal c_17: signed(17 downto 0);
  signal c_18: signed(22 downto 0);
  signal c_18_i0_resize: signed(22 downto 0);
  signal c_18_i1_resize: signed(22 downto 0);
  signal c_18_i0_shift: signed(22 downto 0);
  signal c_18_i1_shift: signed(22 downto 0);
  signal c_18_arith: signed(22 downto 0);
  signal c_18_oshift: signed(22 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(15 downto 0);
  signal c_20: signed(15 downto 0);
  signal c_21: signed(15 downto 0);
  signal c_22: signed(15 downto 0);
  signal c_23: signed(22 downto 0);
  signal c_23_22_5_False_resize: signed(22 downto 0);
  signal c_23_22_5_False_shift: signed(22 downto 0);
  signal c_23_18_0_False_resize: signed(22 downto 0);
  signal c_23_18_0_False_shift: signed(22 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(22 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_i0_resize: signed(25 downto 0);
  signal c_25_i1_resize: signed(25 downto 0);
  signal c_25_i0_shift: signed(25 downto 0);
  signal c_25_i1_shift: signed(25 downto 0);
  signal c_25_arith: signed(25 downto 0);
  signal c_25_oshift: signed(25 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(21 downto 0);
  signal c_27: signed(21 downto 0);
  signal c_28: signed(21 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_18_0_False_resize: signed(23 downto 0);
  signal c_29_18_0_False_shift: signed(23 downto 0);
  signal c_29_28_2_False_resize: signed(23 downto 0);
  signal c_29_28_2_False_shift: signed(23 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(18 downto 0);
  signal c_31: signed(18 downto 0);
  signal c_32: signed(18 downto 0);
  signal c_33: signed(24 downto 0);
  signal c_33_i0_resize: signed(24 downto 0);
  signal c_33_i1_resize: signed(24 downto 0);
  signal c_33_i0_shift: signed(24 downto 0);
  signal c_33_i1_shift: signed(24 downto 0);
  signal c_33_arith: signed(24 downto 0);
  signal c_33_oshift: signed(24 downto 0);
  signal c_33_sub_sel: std_logic;
  signal c_34: signed(21 downto 0);
  signal c_34_8_3_False_resize: signed(21 downto 0);
  signal c_34_8_3_False_shift: signed(21 downto 0);
  signal c_34_5_0_False_resize: signed(21 downto 0);
  signal c_34_5_0_False_shift: signed(21 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(21 downto 0);
  signal c_36: signed(21 downto 0);
  signal c_37: signed(21 downto 0);
  signal c_38: signed(21 downto 0);
  signal c_39: signed(24 downto 0);
  signal c_39_i0_resize: signed(24 downto 0);
  signal c_39_i1_resize: signed(24 downto 0);
  signal c_39_i0_shift: signed(24 downto 0);
  signal c_39_i1_shift: signed(24 downto 0);
  signal c_39_arith: signed(24 downto 0);
  signal c_39_oshift: signed(24 downto 0);
  signal c_39_sub_sel: std_logic;
  signal c_40: signed(18 downto 0);
  signal c_41: signed(18 downto 0);
  signal c_42: signed(18 downto 0);
  signal c_43: signed(18 downto 0);
  signal c_44: signed(18 downto 0);
  signal c_45: signed(18 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_46_39_0_False_resize: signed(25 downto 0);
  signal c_46_39_0_False_shift: signed(25 downto 0);
  signal c_46_45_7_False_resize: signed(25 downto 0);
  signal c_46_45_7_False_shift: signed(25 downto 0);
  signal c_46_sel: std_logic_vector(0 downto 0);
  signal c_47: signed(15 downto 0);
  signal c_48: signed(15 downto 0);
  signal c_49: signed(15 downto 0);
  signal c_50: signed(15 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_51_i0_resize: signed(25 downto 0);
  signal c_51_i1_resize: signed(25 downto 0);
  signal c_51_i0_shift: signed(25 downto 0);
  signal c_51_i1_shift: signed(25 downto 0);
  signal c_51_arith: signed(25 downto 0);
  signal c_51_oshift: signed(25 downto 0);
  signal c_52: signed(22 downto 0);
  signal c_52_18_0_False_resize: signed(22 downto 0);
  signal c_52_18_0_False_shift: signed(22 downto 0);
  signal c_52_22_2_False_resize: signed(22 downto 0);
  signal c_52_22_2_False_shift: signed(22 downto 0);
  signal c_52_sel: std_logic_vector(0 downto 0);
  signal c_53: signed(22 downto 0);
  signal c_54: signed(22 downto 0);
  signal c_55: signed(24 downto 0);
  signal c_55_i0_resize: signed(24 downto 0);
  signal c_55_i1_resize: signed(24 downto 0);
  signal c_55_i0_shift: signed(24 downto 0);
  signal c_55_i1_shift: signed(24 downto 0);
  signal c_55_arith: signed(24 downto 0);
  signal c_55_oshift: signed(24 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_56_18_0_False_resize: signed(23 downto 0);
  signal c_56_18_0_False_shift: signed(23 downto 0);
  signal c_56_42_5_False_resize: signed(23 downto 0);
  signal c_56_42_5_False_shift: signed(23 downto 0);
  signal c_56_sel: std_logic_vector(0 downto 0);
  signal c_57: signed(22 downto 0);
  signal c_57_28_1_False_resize: signed(22 downto 0);
  signal c_57_28_1_False_shift: signed(22 downto 0);
  signal c_57_18_0_False_resize: signed(22 downto 0);
  signal c_57_18_0_False_shift: signed(22 downto 0);
  signal c_57_sel: std_logic_vector(0 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_58_i0_resize: signed(25 downto 0);
  signal c_58_i1_resize: signed(25 downto 0);
  signal c_58_i0_shift: signed(25 downto 0);
  signal c_58_i1_shift: signed(25 downto 0);
  signal c_58_arith: signed(25 downto 0);
  signal c_58_oshift: signed(25 downto 0);
  signal c_59: signed(24 downto 0);
  signal c_59_55_0_False_resize: signed(24 downto 0);
  signal c_59_55_0_False_shift: signed(24 downto 0);
  signal c_59_50_8_False_resize: signed(24 downto 0);
  signal c_59_50_8_False_shift: signed(24 downto 0);
  signal c_59_sel: std_logic_vector(0 downto 0);
  signal c_60: signed(21 downto 0);
  signal c_61: signed(21 downto 0);
  signal c_62: signed(21 downto 0);
  signal c_63: signed(21 downto 0);
  signal c_64: signed(21 downto 0);
  signal c_65: signed(26 downto 0);
  signal c_65_64_0_False_resize: signed(26 downto 0);
  signal c_65_64_0_False_shift: signed(26 downto 0);
  signal c_65_51_1_False_resize: signed(26 downto 0);
  signal c_65_51_1_False_shift: signed(26 downto 0);
  signal c_65_sel: std_logic_vector(0 downto 0);
  signal c_66: signed(24 downto 0);
  signal c_67: signed(25 downto 0);
  signal c_67_i0_resize: signed(25 downto 0);
  signal c_67_i1_resize: signed(25 downto 0);
  signal c_67_i0_shift: signed(25 downto 0);
  signal c_67_i1_shift: signed(25 downto 0);
  signal c_67_arith: signed(25 downto 0);
  signal c_67_oshift: signed(25 downto 0);
  signal c_67_sub_sel: std_logic;
  signal c_68: signed(18 downto 0);
  signal c_69: signed(24 downto 0);
  signal c_69_55_0_False_resize: signed(24 downto 0);
  signal c_69_55_0_False_shift: signed(24 downto 0);
  signal c_69_68_6_False_resize: signed(24 downto 0);
  signal c_69_68_6_False_shift: signed(24 downto 0);
  signal c_69_sel: std_logic_vector(0 downto 0);
  signal c_70: signed(25 downto 0);
  signal c_70_51_0_False_resize: signed(25 downto 0);
  signal c_70_51_0_False_shift: signed(25 downto 0);
  signal c_70_64_0_False_resize: signed(25 downto 0);
  signal c_70_64_0_False_shift: signed(25 downto 0);
  signal c_70_sel: std_logic_vector(0 downto 0);
  signal c_71: signed(22 downto 0);
  signal c_72: signed(22 downto 0);
  signal c_73: signed(24 downto 0);
  signal c_73_39_0_False_resize: signed(24 downto 0);
  signal c_73_39_0_False_shift: signed(24 downto 0);
  signal c_73_72_1_False_resize: signed(24 downto 0);
  signal c_73_72_1_False_shift: signed(24 downto 0);
  signal c_73_sel: std_logic_vector(0 downto 0);
  signal c_74: signed(25 downto 0);
  signal c_74_71_1_False_resize: signed(25 downto 0);
  signal c_74_71_1_False_shift: signed(25 downto 0);
  signal c_74_25_0_False_resize: signed(25 downto 0);
  signal c_74_25_0_False_shift: signed(25 downto 0);
  signal c_74_sel: std_logic_vector(0 downto 0);
  signal c_75: signed(24 downto 0);
  signal c_75_64_0_False_resize: signed(24 downto 0);
  signal c_75_64_0_False_shift: signed(24 downto 0);
  signal c_75_51_0_False_resize: signed(24 downto 0);
  signal c_75_51_0_False_shift: signed(24 downto 0);
  signal c_75_sel: std_logic_vector(0 downto 0);
  signal c_76: signed(25 downto 0);
  signal c_77: signed(25 downto 0);
  signal c_78: signed(24 downto 0);
  signal c_78_77_0_False_resize: signed(24 downto 0);
  signal c_78_77_0_False_shift: signed(24 downto 0);
  signal c_78_55_0_False_resize: signed(24 downto 0);
  signal c_78_55_0_False_shift: signed(24 downto 0);
  signal c_78_sel: std_logic_vector(0 downto 0);
  signal c_79: signed(25 downto 0);
  signal c_80: signed(25 downto 0);
  signal c_81: signed(25 downto 0);
  signal c_82: signed(25 downto 0);
  signal c_83: signed(25 downto 0);
  signal c_84: signed(25 downto 0);
  signal c_84_resize: signed(25 downto 0);
  signal c_85: signed(25 downto 0);
  signal c_85_resize: signed(25 downto 0);
  signal c_86: signed(24 downto 0);
  signal c_87: signed(24 downto 0);
  signal c_88: signed(24 downto 0);
  signal c_88_resize: signed(24 downto 0);
  signal c_89: signed(22 downto 0);
  signal c_90: signed(22 downto 0);
  signal c_91: signed(22 downto 0);
  signal c_92: signed(22 downto 0);
  signal c_93: signed(22 downto 0);
  signal c_94: signed(22 downto 0);
  signal c_95: signed(22 downto 0);
  signal c_96: signed(22 downto 0);
  signal c_97: signed(23 downto 0);
  signal c_97_resize: signed(23 downto 0);
  signal c_98: signed(25 downto 0);
  signal c_99: signed(25 downto 0);
  signal c_99_resize: signed(25 downto 0);
  signal c_100: signed(24 downto 0);
  signal c_101: signed(24 downto 0);
  signal c_102: signed(24 downto 0);
  signal c_103: signed(25 downto 0);
  signal c_103_resize: signed(25 downto 0);
  signal c_104: signed(25 downto 0);
  signal c_105: signed(25 downto 0);
  signal c_106: signed(25 downto 0);
  signal c_107: signed(25 downto 0);
  signal c_108: signed(25 downto 0);
  signal c_108_resize: signed(25 downto 0);
  signal c_109: signed(24 downto 0);
  signal c_110: signed(24 downto 0);
  signal c_110_resize: signed(24 downto 0);
  signal c_111: signed(24 downto 0);
  signal c_112: signed(24 downto 0);
  signal c_113: signed(24 downto 0);
  signal c_114: signed(24 downto 0);
  signal c_115: signed(24 downto 0);
  signal c_116: signed(24 downto 0);
  signal c_116_resize: signed(24 downto 0);
  signal c_117: signed(24 downto 0);
  signal c_118: signed(24 downto 0);
  signal c_119: signed(24 downto 0);
  signal c_119_resize: signed(24 downto 0);
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
  -- output node 0 with id 84
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_84);
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
  -- output node 3 with id 97
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_97);
    end if;
  end process;
  -- output node 4 with id 99
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_99);
    end if;
  end process;
  -- output node 5 with id 103
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_103);
    end if;
  end process;
  -- output node 6 with id 108
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_108);
    end if;
  end process;
  -- output node 7 with id 110
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_110);
    end if;
  end process;
  -- output node 8 with id 116
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_116);
    end if;
  end process;
  -- output node 9 with id 119
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_119);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 1 and associated fundamentals [[-7], [-7]]
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
      s_x_i => 0,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
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
  -- node of type 'mux' in stage 2 with id 2 and associated fundamentals [[-28], [-7]]
  c_2_1_2_False_resize <= resize(c_1, 21);
  c_2_1_2_False_shift <= shift_left(c_2_1_2_False_resize, 2);
  c_2_1_0_False_resize <= resize(c_1, 21);
  c_2_1_0_False_shift <= shift_left(c_2_1_0_False_resize, 0);
  with config_select_2 select c_2_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_1_2_False_shift;
        when others => c_2 <= c_2_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 3 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_0 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_3 & "";
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 5 and associated fundamentals [[-55], [-13]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 21,
      w_o => 22,
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
      x_i => c_4,
      y_i => c_2,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[2], [-7]]
  c_6_1_0_False_resize <= c_1;
  c_6_1_0_False_shift <= shift_left(c_6_1_0_False_resize, 0);
  c_6_3_1_False_resize <= resize(c_3, 19);
  c_6_3_1_False_shift <= shift_left(c_6_3_1_False_resize, 1);
  with config_select_2 select c_6_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_1_0_False_shift;
        when others => c_6 <= c_6_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 7 and associated fundamentals [[-7], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[-7], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_7 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 9 and associated fundamentals [[-55], [-112]]
  c_9_8_4_False_resize <= resize(c_8, 23);
  c_9_8_4_False_shift <= shift_left(c_9_8_4_False_resize, 4);
  c_9_5_0_False_resize <= resize(c_5, 23);
  c_9_5_0_False_shift <= shift_left(c_9_5_0_False_resize, 0);
  with config_select_4 select c_9_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_8_4_False_shift;
        when others => c_9 <= c_9_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[2], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[2], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'add' in stage 5 with id 12 and associated fundamentals [[-53], [-119]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 23,
      w_o => 23,
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
      x_i => c_11,
      y_i => c_9,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 13 and associated fundamentals [[4], [1]]
  c_13_0_0_False_resize <= resize(c_0, 18);
  c_13_0_0_False_shift <= shift_left(c_13_0_0_False_resize, 0);
  c_13_0_2_False_resize <= resize(c_0, 18);
  c_13_0_2_False_shift <= shift_left(c_13_0_2_False_resize, 2);
  with config_select_1 select c_13_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_0_0_False_shift;
        when others => c_13 <= c_13_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 14 and associated fundamentals [[4], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 15 and associated fundamentals [[4], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 16 and associated fundamentals [[4], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 17 and associated fundamentals [[4], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 18 and associated fundamentals [[-85], [-111]]
  with config_select_6 select c_18_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 18,
      w_o => 23,
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
      sub_i => c_18_sub_sel,
      x_i => c_12,
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 19 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 20 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 22 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 23 and associated fundamentals [[-85], [32]]
  c_23_22_5_False_resize <= resize(c_22, 23);
  c_23_22_5_False_shift <= shift_left(c_23_22_5_False_resize, 5);
  c_23_18_0_False_resize <= c_18;
  c_23_18_0_False_shift <= shift_left(c_23_18_0_False_resize, 0);
  with config_select_7 select c_23_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_22_5_False_shift;
        when others => c_23 <= c_23_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 24 and associated fundamentals [[-85], [-111]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_18 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 25 and associated fundamentals [[-765], [-367]]
  with config_select_8 select c_25_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_25_sub_sel,
      x_i => c_24,
      y_i => c_23,
      z_o => c_25_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 26 and associated fundamentals [[-55], [-13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 27 and associated fundamentals [[-55], [-13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 28 and associated fundamentals [[-55], [-13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 29 and associated fundamentals [[-220], [-111]]
  c_29_18_0_False_resize <= resize(c_18, 24);
  c_29_18_0_False_shift <= shift_left(c_29_18_0_False_resize, 0);
  c_29_28_2_False_resize <= resize(c_28, 24);
  c_29_28_2_False_shift <= shift_left(c_29_28_2_False_resize, 2);
  with config_select_7 select c_29_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_18_0_False_shift;
        when others => c_29 <= c_29_28_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 30 and associated fundamentals [[2], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 31 and associated fundamentals [[2], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 32 and associated fundamentals [[2], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 33 and associated fundamentals [[-442], [-229]]
  with config_select_8 select c_33_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_33: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 19,
      w_o => 25,
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
      sub_i => c_33_sub_sel,
      x_i => c_29,
      y_i => c_32,
      z_o => c_33_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_33_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 34 and associated fundamentals [[-56], [-13]]
  c_34_8_3_False_resize <= resize(c_8, 22);
  c_34_8_3_False_shift <= shift_left(c_34_8_3_False_resize, 3);
  c_34_5_0_False_resize <= c_5;
  c_34_5_0_False_shift <= shift_left(c_34_5_0_False_resize, 0);
  with config_select_4 select c_34_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_8_3_False_shift;
        when others => c_34 <= c_34_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 35 and associated fundamentals [[-56], [-13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 36 and associated fundamentals [[-56], [-13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 37 and associated fundamentals [[-56], [-13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 38 and associated fundamentals [[-56], [-13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 39 and associated fundamentals [[-317], [-471]]
  with config_select_9 select c_39_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_39: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 22,
      w_o => 25,
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
      sub_i => c_39_sub_sel,
      x_i => c_25,
      y_i => c_38,
      z_o => c_39_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_39_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 40 and associated fundamentals [[-7], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 41 and associated fundamentals [[-7], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 42 and associated fundamentals [[-7], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 43 and associated fundamentals [[-7], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 44 and associated fundamentals [[-7], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 45 and associated fundamentals [[-7], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 46 and associated fundamentals [[-317], [-896]]
  c_46_39_0_False_resize <= resize(c_39, 26);
  c_46_39_0_False_shift <= shift_left(c_46_39_0_False_resize, 0);
  c_46_45_7_False_resize <= resize(c_45, 26);
  c_46_45_7_False_shift <= shift_left(c_46_45_7_False_resize, 7);
  with config_select_10 select c_46_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "0" => c_46 <= c_46_39_0_False_shift;
        when others => c_46 <= c_46_45_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 47 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 48 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 49 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 50 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 11 with id 51 and associated fundamentals [[-321], [-900]]
  inst_adder_node_51: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 16,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_46,
      y_i => c_50,
      z_o => c_51_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_51_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 52 and associated fundamentals [[-85], [4]]
  c_52_18_0_False_resize <= c_18;
  c_52_18_0_False_shift <= shift_left(c_52_18_0_False_resize, 0);
  c_52_22_2_False_resize <= resize(c_22, 23);
  c_52_22_2_False_shift <= shift_left(c_52_22_2_False_resize, 2);
  with config_select_7 select c_52_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_52_sel is
        when "0" => c_52 <= c_52_18_0_False_shift;
        when others => c_52 <= c_52_22_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 53 and associated fundamentals [[-85], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 54 and associated fundamentals [[-85], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 10 with id 55 and associated fundamentals [[-147], [-479]]
  inst_adder_node_55: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
      w_o => 25,
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
      x_i => c_39,
      y_i => c_54,
      z_o => c_55_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_55_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 56 and associated fundamentals [[-85], [-224]]
  c_56_18_0_False_resize <= resize(c_18, 24);
  c_56_18_0_False_shift <= shift_left(c_56_18_0_False_resize, 0);
  c_56_42_5_False_resize <= resize(c_42, 24);
  c_56_42_5_False_shift <= shift_left(c_56_42_5_False_resize, 5);
  with config_select_7 select c_56_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_56_sel is
        when "0" => c_56 <= c_56_18_0_False_shift;
        when others => c_56 <= c_56_42_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 57 and associated fundamentals [[-110], [-111]]
  c_57_28_1_False_resize <= resize(c_28, 23);
  c_57_28_1_False_shift <= shift_left(c_57_28_1_False_resize, 1);
  c_57_18_0_False_resize <= c_18;
  c_57_18_0_False_shift <= shift_left(c_57_18_0_False_resize, 0);
  with config_select_7 select c_57_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_57_sel is
        when "0" => c_57 <= c_57_28_1_False_shift;
        when others => c_57 <= c_57_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 8 with id 58 and associated fundamentals [[-525], [-668]]
  inst_adder_node_58: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
      w_o => 26,
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
      x_i => c_56,
      y_i => c_57,
      z_o => c_58_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_58_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 59 and associated fundamentals [[256], [-479]]
  c_59_55_0_False_resize <= c_55;
  c_59_55_0_False_shift <= shift_left(c_59_55_0_False_resize, 0);
  c_59_50_8_False_resize <= resize(c_50, 25);
  c_59_50_8_False_shift <= shift_left(c_59_50_8_False_resize, 8);
  with config_select_11 select c_59_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_59_sel is
        when "0" => c_59 <= c_59_55_0_False_shift;
        when others => c_59 <= c_59_50_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 60 and associated fundamentals [[-55], [-13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 61 and associated fundamentals [[-55], [-13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 62 and associated fundamentals [[-55], [-13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 63 and associated fundamentals [[-55], [-13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 64 and associated fundamentals [[-55], [-13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 65 and associated fundamentals [[-55], [-1800]]
  c_65_64_0_False_resize <= resize(c_64, 27);
  c_65_64_0_False_shift <= shift_left(c_65_64_0_False_resize, 0);
  c_65_51_1_False_resize <= resize(c_51, 27);
  c_65_51_1_False_shift <= shift_left(c_65_51_1_False_resize, 1);
  with config_select_12 select c_65_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_65_sel is
        when "0" => c_65 <= c_65_64_0_False_shift;
        when others => c_65 <= c_65_51_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 66 and associated fundamentals [[256], [-479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_59 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 13 with id 67 and associated fundamentals [[457], [842]]
  with config_select_13 select c_67_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_67: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 27,
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
      sub_i => c_67_sub_sel,
      x_i => c_66,
      y_i => c_65,
      z_o => c_67_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_67_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 68 and associated fundamentals [[-7], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_45 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 69 and associated fundamentals [[-448], [-479]]
  c_69_55_0_False_resize <= c_55;
  c_69_55_0_False_shift <= shift_left(c_69_55_0_False_resize, 0);
  c_69_68_6_False_resize <= resize(c_68, 25);
  c_69_68_6_False_shift <= shift_left(c_69_68_6_False_resize, 6);
  with config_select_11 select c_69_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_69_sel is
        when "0" => c_69 <= c_69_55_0_False_shift;
        when others => c_69 <= c_69_68_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 70 and associated fundamentals [[-55], [-900]]
  c_70_51_0_False_resize <= c_51;
  c_70_51_0_False_shift <= shift_left(c_70_51_0_False_resize, 0);
  c_70_64_0_False_resize <= resize(c_64, 26);
  c_70_64_0_False_shift <= shift_left(c_70_64_0_False_resize, 0);
  with config_select_12 select c_70_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_70_sel is
        when "0" => c_70 <= c_70_51_0_False_shift;
        when others => c_70 <= c_70_64_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 71 and associated fundamentals [[-85], [-111]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 72 and associated fundamentals [[-85], [-111]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 73 and associated fundamentals [[-170], [-471]]
  c_73_39_0_False_resize <= c_39;
  c_73_39_0_False_shift <= shift_left(c_73_39_0_False_resize, 0);
  c_73_72_1_False_resize <= resize(c_72, 25);
  c_73_72_1_False_shift <= shift_left(c_73_72_1_False_resize, 1);
  with config_select_10 select c_73_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_73_sel is
        when "0" => c_73 <= c_73_39_0_False_shift;
        when others => c_73 <= c_73_72_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 74 and associated fundamentals [[-765], [-222]]
  c_74_71_1_False_resize <= resize(c_71, 26);
  c_74_71_1_False_shift <= shift_left(c_74_71_1_False_resize, 1);
  c_74_25_0_False_resize <= c_25;
  c_74_25_0_False_shift <= shift_left(c_74_25_0_False_resize, 0);
  with config_select_9 select c_74_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_74_sel is
        when "0" => c_74 <= c_74_71_1_False_shift;
        when others => c_74 <= c_74_25_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 75 and associated fundamentals [[-321], [-13]]
  c_75_64_0_False_resize <= resize(c_64, 25);
  c_75_64_0_False_shift <= shift_left(c_75_64_0_False_resize, 0);
  c_75_51_0_False_resize <= c_51(24 downto 0);
  c_75_51_0_False_shift <= shift_left(c_75_51_0_False_resize, 0);
  with config_select_12 select c_75_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_75_sel is
        when "0" => c_75 <= c_75_64_0_False_shift;
        when others => c_75 <= c_75_51_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 76 and associated fundamentals [[-765], [-367]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 77 and associated fundamentals [[-765], [-367]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 78 and associated fundamentals [[-147], [-367]]
  c_78_77_0_False_resize <= c_77(24 downto 0);
  c_78_77_0_False_shift <= shift_left(c_78_77_0_False_resize, 0);
  c_78_55_0_False_resize <= c_55;
  c_78_55_0_False_shift <= shift_left(c_78_55_0_False_resize, 0);
  with config_select_11 select c_78_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_78_sel is
        when "0" => c_78 <= c_78_77_0_False_shift;
        when others => c_78 <= c_78_55_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 79 and associated fundamentals [[-525], [-668]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 80 and associated fundamentals [[-525], [-668]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 81 and associated fundamentals [[-525], [-668]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_80 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 82 and associated fundamentals [[-525], [-668]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_81 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 83 and associated fundamentals [[-525], [-668]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_82 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 84 and associated fundamentals [[525], [668]]
  c_84_resize <= c_83;
  c_84 <= -shift_left(c_84_resize, 0);
  -- node of type 'output' in stage 13 with id 85 and associated fundamentals [[457], [842]]
  c_85_resize <= c_67;
  c_85 <= shift_left(c_85_resize, 0);
  -- node of type 'register' in stage 12 with id 86 and associated fundamentals [[-448], [-479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 87 and associated fundamentals [[-448], [-479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_86 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 88 and associated fundamentals [[448], [479]]
  c_88_resize <= c_87;
  c_88 <= -shift_left(c_88_resize, 0);
  -- node of type 'register' in stage 6 with id 89 and associated fundamentals [[-53], [-119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 90 and associated fundamentals [[-53], [-119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_89 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 91 and associated fundamentals [[-53], [-119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_90 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 92 and associated fundamentals [[-53], [-119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 93 and associated fundamentals [[-53], [-119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_92 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 94 and associated fundamentals [[-53], [-119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_93 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 95 and associated fundamentals [[-53], [-119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_94 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 96 and associated fundamentals [[-53], [-119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_95 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 97 and associated fundamentals [[106], [238]]
  c_97_resize <= resize(c_96, 24);
  c_97 <= -shift_left(c_97_resize, 1);
  -- node of type 'register' in stage 13 with id 98 and associated fundamentals [[-55], [-900]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_70 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 99 and associated fundamentals [[55], [900]]
  c_99_resize <= c_98;
  c_99 <= -shift_left(c_99_resize, 0);
  -- node of type 'register' in stage 11 with id 100 and associated fundamentals [[-170], [-471]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 101 and associated fundamentals [[-170], [-471]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_100 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 102 and associated fundamentals [[-170], [-471]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_101 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 103 and associated fundamentals [[340], [942]]
  c_103_resize <= resize(c_102, 26);
  c_103 <= -shift_left(c_103_resize, 1);
  -- node of type 'register' in stage 10 with id 104 and associated fundamentals [[-765], [-222]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 105 and associated fundamentals [[-765], [-222]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_104 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 106 and associated fundamentals [[-765], [-222]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_105 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 107 and associated fundamentals [[-765], [-222]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_106 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 108 and associated fundamentals [[765], [222]]
  c_108_resize <= c_107;
  c_108 <= -shift_left(c_108_resize, 0);
  -- node of type 'register' in stage 13 with id 109 and associated fundamentals [[-321], [-13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_109 <= c_75 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 110 and associated fundamentals [[321], [13]]
  c_110_resize <= c_109;
  c_110 <= -shift_left(c_110_resize, 0);
  -- node of type 'register' in stage 9 with id 111 and associated fundamentals [[-442], [-229]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 112 and associated fundamentals [[-442], [-229]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_111 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 113 and associated fundamentals [[-442], [-229]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_112 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 114 and associated fundamentals [[-442], [-229]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_113 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 115 and associated fundamentals [[-442], [-229]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_114 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 116 and associated fundamentals [[442], [229]]
  c_116_resize <= c_115;
  c_116 <= -shift_left(c_116_resize, 0);
  -- node of type 'register' in stage 12 with id 117 and associated fundamentals [[-147], [-367]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_117 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 118 and associated fundamentals [[-147], [-367]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_118 <= c_117 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 119 and associated fundamentals [[147], [367]]
  c_119_resize <= c_118;
  c_119 <= -shift_left(c_119_resize, 0);
end architecture;
