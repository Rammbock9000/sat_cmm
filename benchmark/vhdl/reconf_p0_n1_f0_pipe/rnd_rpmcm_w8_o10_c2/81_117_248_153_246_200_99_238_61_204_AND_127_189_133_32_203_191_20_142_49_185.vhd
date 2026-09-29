library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(22 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(23 downto 0);
    y_5: out std_logic_vector(23 downto 0);
    y_6: out std_logic_vector(22 downto 0);
    y_7: out std_logic_vector(23 downto 0);
    y_8: out std_logic_vector(21 downto 0);
    y_9: out std_logic_vector(23 downto 0);
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
  signal c_1: signed(21 downto 0);
  signal c_1_i0_resize: signed(21 downto 0);
  signal c_1_i1_resize: signed(21 downto 0);
  signal c_1_i0_shift: signed(21 downto 0);
  signal c_1_i1_shift: signed(21 downto 0);
  signal c_1_arith: signed(21 downto 0);
  signal c_1_oshift: signed(21 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(15 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_1_0_False_resize: signed(20 downto 0);
  signal c_3_1_0_False_shift: signed(20 downto 0);
  signal c_3_2_1_False_resize: signed(20 downto 0);
  signal c_3_2_1_False_shift: signed(20 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_5_i0_resize: signed(21 downto 0);
  signal c_5_i1_resize: signed(21 downto 0);
  signal c_5_i0_shift: signed(21 downto 0);
  signal c_5_i1_shift: signed(21 downto 0);
  signal c_5_arith: signed(21 downto 0);
  signal c_5_oshift: signed(21 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(21 downto 0);
  signal c_7: signed(21 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_i0_resize: signed(22 downto 0);
  signal c_8_i1_resize: signed(22 downto 0);
  signal c_8_i0_shift: signed(22 downto 0);
  signal c_8_i1_shift: signed(22 downto 0);
  signal c_8_arith: signed(22 downto 0);
  signal c_8_oshift: signed(22 downto 0);
  signal c_9: signed(15 downto 0);
  signal c_10: signed(21 downto 0);
  signal c_10_9_3_False_resize: signed(21 downto 0);
  signal c_10_9_3_False_shift: signed(21 downto 0);
  signal c_10_5_0_False_resize: signed(21 downto 0);
  signal c_10_5_0_False_shift: signed(21 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(21 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_i0_resize: signed(23 downto 0);
  signal c_12_i1_resize: signed(23 downto 0);
  signal c_12_i0_shift: signed(23 downto 0);
  signal c_12_i1_shift: signed(23 downto 0);
  signal c_12_arith: signed(23 downto 0);
  signal c_12_oshift: signed(23 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_14: signed(21 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_12_0_False_resize: signed(23 downto 0);
  signal c_15_12_0_False_shift: signed(23 downto 0);
  signal c_15_14_0_False_resize: signed(23 downto 0);
  signal c_15_14_0_False_shift: signed(23 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(15 downto 0);
  signal c_17: signed(15 downto 0);
  signal c_18: signed(15 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_i0_resize: signed(23 downto 0);
  signal c_19_i1_resize: signed(23 downto 0);
  signal c_19_i0_shift: signed(23 downto 0);
  signal c_19_i1_shift: signed(23 downto 0);
  signal c_19_arith: signed(23 downto 0);
  signal c_19_oshift: signed(23 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(21 downto 0);
  signal c_21: signed(21 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_22_21_4_False_resize: signed(22 downto 0);
  signal c_22_21_4_False_shift: signed(22 downto 0);
  signal c_22_19_0_False_resize: signed(22 downto 0);
  signal c_22_19_0_False_shift: signed(22 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(21 downto 0);
  signal c_24: signed(21 downto 0);
  signal c_25: signed(21 downto 0);
  signal c_26: signed(21 downto 0);
  signal c_27: signed(22 downto 0);
  signal c_27_i0_resize: signed(22 downto 0);
  signal c_27_i1_resize: signed(22 downto 0);
  signal c_27_i0_shift: signed(22 downto 0);
  signal c_27_i1_shift: signed(22 downto 0);
  signal c_27_arith: signed(22 downto 0);
  signal c_27_oshift: signed(22 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(15 downto 0);
  signal c_29: signed(20 downto 0);
  signal c_29_28_3_False_resize: signed(20 downto 0);
  signal c_29_28_3_False_shift: signed(20 downto 0);
  signal c_29_19_0_False_resize: signed(20 downto 0);
  signal c_29_19_0_False_shift: signed(20 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(20 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_i0_resize: signed(23 downto 0);
  signal c_31_i1_resize: signed(23 downto 0);
  signal c_31_i0_shift: signed(23 downto 0);
  signal c_31_i1_shift: signed(23 downto 0);
  signal c_31_arith: signed(23 downto 0);
  signal c_31_oshift: signed(23 downto 0);
  signal c_31_sub_sel: std_logic;
  signal c_32: signed(15 downto 0);
  signal c_33: signed(15 downto 0);
  signal c_34: signed(15 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_i0_resize: signed(23 downto 0);
  signal c_35_i1_resize: signed(23 downto 0);
  signal c_35_i0_shift: signed(23 downto 0);
  signal c_35_i1_shift: signed(23 downto 0);
  signal c_35_arith: signed(23 downto 0);
  signal c_35_oshift: signed(23 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_39_3_False_resize: signed(23 downto 0);
  signal c_40_39_3_False_shift: signed(23 downto 0);
  signal c_40_35_0_False_resize: signed(23 downto 0);
  signal c_40_35_0_False_shift: signed(23 downto 0);
  signal c_40_sel: std_logic_vector(0 downto 0);
  signal c_41: signed(15 downto 0);
  signal c_42: signed(15 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_i0_resize: signed(23 downto 0);
  signal c_43_i1_resize: signed(23 downto 0);
  signal c_43_i0_shift: signed(23 downto 0);
  signal c_43_i1_shift: signed(23 downto 0);
  signal c_43_arith: signed(23 downto 0);
  signal c_43_oshift: signed(23 downto 0);
  signal c_43_sub_sel: std_logic;
  signal c_44: signed(22 downto 0);
  signal c_45: signed(22 downto 0);
  signal c_46: signed(22 downto 0);
  signal c_47: signed(22 downto 0);
  signal c_47_46_0_False_resize: signed(22 downto 0);
  signal c_47_46_0_False_shift: signed(22 downto 0);
  signal c_47_19_0_False_resize: signed(22 downto 0);
  signal c_47_19_0_False_shift: signed(22 downto 0);
  signal c_47_sel: std_logic_vector(0 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_48_i0_resize: signed(23 downto 0);
  signal c_48_i1_resize: signed(23 downto 0);
  signal c_48_i0_shift: signed(23 downto 0);
  signal c_48_i1_shift: signed(23 downto 0);
  signal c_48_arith: signed(23 downto 0);
  signal c_48_oshift: signed(23 downto 0);
  signal c_48_sub_sel: std_logic;
  signal c_49: signed(23 downto 0);
  signal c_49_25_3_False_resize: signed(23 downto 0);
  signal c_49_25_3_False_shift: signed(23 downto 0);
  signal c_49_19_0_False_resize: signed(23 downto 0);
  signal c_49_19_0_False_shift: signed(23 downto 0);
  signal c_49_sel: std_logic_vector(0 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_50_17_5_False_resize: signed(23 downto 0);
  signal c_50_17_5_False_shift: signed(23 downto 0);
  signal c_50_12_0_False_resize: signed(23 downto 0);
  signal c_50_12_0_False_shift: signed(23 downto 0);
  signal c_50_sel: std_logic_vector(0 downto 0);
  signal c_51: signed(22 downto 0);
  signal c_52: signed(22 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_53_48_0_False_resize: signed(23 downto 0);
  signal c_53_48_0_False_shift: signed(23 downto 0);
  signal c_53_52_1_False_resize: signed(23 downto 0);
  signal c_53_52_1_False_shift: signed(23 downto 0);
  signal c_53_sel: std_logic_vector(0 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_54_38_3_False_resize: signed(23 downto 0);
  signal c_54_38_3_False_shift: signed(23 downto 0);
  signal c_54_31_0_False_resize: signed(23 downto 0);
  signal c_54_31_0_False_shift: signed(23 downto 0);
  signal c_54_sel: std_logic_vector(0 downto 0);
  signal c_55: signed(21 downto 0);
  signal c_56: signed(21 downto 0);
  signal c_57: signed(22 downto 0);
  signal c_57_48_0_False_resize: signed(22 downto 0);
  signal c_57_48_0_False_shift: signed(22 downto 0);
  signal c_57_56_2_False_resize: signed(22 downto 0);
  signal c_57_56_2_False_shift: signed(22 downto 0);
  signal c_57_sel: std_logic_vector(0 downto 0);
  signal c_58: signed(22 downto 0);
  signal c_59: signed(22 downto 0);
  signal c_59_58_0_False_resize: signed(22 downto 0);
  signal c_59_58_0_False_shift: signed(22 downto 0);
  signal c_59_31_0_False_resize: signed(22 downto 0);
  signal c_59_31_0_False_shift: signed(22 downto 0);
  signal c_59_sel: std_logic_vector(0 downto 0);
  signal c_60: signed(21 downto 0);
  signal c_60_12_0_False_resize: signed(21 downto 0);
  signal c_60_12_0_False_shift: signed(21 downto 0);
  signal c_60_14_0_False_resize: signed(21 downto 0);
  signal c_60_14_0_False_shift: signed(21 downto 0);
  signal c_60_sel: std_logic_vector(0 downto 0);
  signal c_61: signed(22 downto 0);
  signal c_62: signed(22 downto 0);
  signal c_63: signed(22 downto 0);
  signal c_64: signed(22 downto 0);
  signal c_65: signed(22 downto 0);
  signal c_65_resize: signed(22 downto 0);
  signal c_66: signed(23 downto 0);
  signal c_67: signed(23 downto 0);
  signal c_68: signed(23 downto 0);
  signal c_68_resize: signed(23 downto 0);
  signal c_69: signed(23 downto 0);
  signal c_70: signed(23 downto 0);
  signal c_71: signed(23 downto 0);
  signal c_72: signed(23 downto 0);
  signal c_73: signed(23 downto 0);
  signal c_74: signed(23 downto 0);
  signal c_74_resize: signed(23 downto 0);
  signal c_75: signed(23 downto 0);
  signal c_76: signed(23 downto 0);
  signal c_77: signed(23 downto 0);
  signal c_78: signed(23 downto 0);
  signal c_79: signed(23 downto 0);
  signal c_80: signed(23 downto 0);
  signal c_81: signed(23 downto 0);
  signal c_82: signed(23 downto 0);
  signal c_82_resize: signed(23 downto 0);
  signal c_83: signed(23 downto 0);
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
  signal c_92: signed(22 downto 0);
  signal c_93: signed(22 downto 0);
  signal c_93_resize: signed(22 downto 0);
  signal c_94: signed(22 downto 0);
  signal c_95: signed(22 downto 0);
  signal c_96: signed(23 downto 0);
  signal c_96_resize: signed(23 downto 0);
  signal c_97: signed(21 downto 0);
  signal c_98: signed(21 downto 0);
  signal c_99: signed(21 downto 0);
  signal c_100: signed(21 downto 0);
  signal c_101: signed(21 downto 0);
  signal c_102: signed(21 downto 0);
  signal c_103: signed(21 downto 0);
  signal c_104: signed(21 downto 0);
  signal c_104_resize: signed(21 downto 0);
  signal c_105: signed(23 downto 0);
  signal c_105_resize: signed(23 downto 0);
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
  -- output node 0 with id 65
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_65);
    end if;
  end process;
  -- output node 1 with id 68
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_68);
    end if;
  end process;
  -- output node 2 with id 74
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_74);
    end if;
  end process;
  -- output node 3 with id 82
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_82);
    end if;
  end process;
  -- output node 4 with id 86
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_86);
    end if;
  end process;
  -- output node 5 with id 89
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_89);
    end if;
  end process;
  -- output node 6 with id 93
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_93);
    end if;
  end process;
  -- output node 7 with id 96
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_96);
    end if;
  end process;
  -- output node 8 with id 104
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_104);
    end if;
  end process;
  -- output node 9 with id 105
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_105);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[31], [33]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 22,
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
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[31], [2]]
  c_3_1_0_False_resize <= c_1(20 downto 0);
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  c_3_2_1_False_resize <= resize(c_2, 21);
  c_3_2_1_False_shift <= shift_left(c_3_2_1_False_resize, 1);
  with config_select_2 select c_3_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_1_0_False_shift;
        when others => c_3 <= c_3_2_1_False_shift;
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
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[61], [5]]
  with config_select_3 select c_5_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 16,
      w_o => 22,
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
      sub_i => c_5_sub_sel,
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[31], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 7 and associated fundamentals [[31], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_6 & "";
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 8 and associated fundamentals [[123], [71]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
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
      x_i => c_7,
      y_i => c_5,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_4 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 10 and associated fundamentals [[61], [8]]
  c_10_9_3_False_resize <= resize(c_9, 22);
  c_10_9_3_False_shift <= shift_left(c_10_9_3_False_resize, 3);
  c_10_5_0_False_resize <= c_5;
  c_10_5_0_False_shift <= shift_left(c_10_5_0_False_resize, 0);
  with config_select_4 select c_10_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_9_3_False_shift;
        when others => c_10 <= c_10_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[31], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_7 & "";
    end if;
  end process;
  -- node of type 'add' in stage 5 with id 12 and associated fundamentals [[153], [49]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 24,
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
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 13 and associated fundamentals [[61], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 14 and associated fundamentals [[61], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 15 and associated fundamentals [[153], [5]]
  c_15_12_0_False_resize <= c_12;
  c_15_12_0_False_shift <= shift_left(c_15_12_0_False_resize, 0);
  c_15_14_0_False_resize <= resize(c_14, 24);
  c_15_14_0_False_shift <= shift_left(c_15_14_0_False_resize, 0);
  with config_select_6 select c_15_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_12_0_False_shift;
        when others => c_15 <= c_15_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 16 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 17 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 18 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 19 and associated fundamentals [[25], [133]]
  with config_select_7 select c_19_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 16,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 7,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_19_sub_sel,
      x_i => c_15,
      y_i => c_18,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 20 and associated fundamentals [[61], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 21 and associated fundamentals [[61], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 22 and associated fundamentals [[25], [80]]
  c_22_21_4_False_resize <= resize(c_21, 23);
  c_22_21_4_False_shift <= shift_left(c_22_21_4_False_resize, 4);
  c_22_19_0_False_resize <= c_19(22 downto 0);
  c_22_19_0_False_shift <= shift_left(c_22_19_0_False_resize, 0);
  with config_select_8 select c_22_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_21_4_False_shift;
        when others => c_22 <= c_22_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[31], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 24 and associated fundamentals [[31], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 25 and associated fundamentals [[31], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 26 and associated fundamentals [[31], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 27 and associated fundamentals [[81], [127]]
  with config_select_9 select c_27_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
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
      sub_i => c_27_sub_sel,
      x_i => c_22,
      y_i => c_26,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 28 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_18 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 29 and associated fundamentals [[25], [8]]
  c_29_28_3_False_resize <= resize(c_28, 21);
  c_29_28_3_False_shift <= shift_left(c_29_28_3_False_resize, 3);
  c_29_19_0_False_resize <= c_19(20 downto 0);
  c_29_19_0_False_shift <= shift_left(c_29_19_0_False_resize, 0);
  with config_select_8 select c_29_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_28_3_False_shift;
        when others => c_29 <= c_29_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 30 and associated fundamentals [[25], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 31 and associated fundamentals [[119], [191]]
  with config_select_10 select c_31_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 23,
      w_o => 24,
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
      sub_i => c_31_sub_sel,
      x_i => c_30,
      y_i => c_27,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 32 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 33 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 34 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 11 with id 35 and associated fundamentals [[117], [189]]
  inst_adder_node_35: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 16,
      w_o => 24,
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
      x_i => c_31,
      y_i => c_34,
      z_o => c_35_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_35_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 36 and associated fundamentals [[25], [133]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 37 and associated fundamentals [[25], [133]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 38 and associated fundamentals [[25], [133]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 39 and associated fundamentals [[25], [133]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 40 and associated fundamentals [[200], [189]]
  c_40_39_3_False_resize <= c_39;
  c_40_39_3_False_shift <= shift_left(c_40_39_3_False_resize, 3);
  c_40_35_0_False_resize <= c_35;
  c_40_35_0_False_shift <= shift_left(c_40_35_0_False_resize, 0);
  with config_select_12 select c_40_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "0" => c_40 <= c_40_39_3_False_shift;
        when others => c_40 <= c_40_35_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 41 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 42 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 13 with id 43 and associated fundamentals [[204], [185]]
  with config_select_13 select c_43_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_43: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 16,
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
      x_i => c_40,
      y_i => c_42,
      z_o => c_43_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_43_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 44 and associated fundamentals [[123], [71]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 45 and associated fundamentals [[123], [71]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 46 and associated fundamentals [[123], [71]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 47 and associated fundamentals [[25], [71]]
  c_47_46_0_False_resize <= c_46;
  c_47_46_0_False_shift <= shift_left(c_47_46_0_False_resize, 0);
  c_47_19_0_False_resize <= c_19(22 downto 0);
  c_47_19_0_False_shift <= shift_left(c_47_19_0_False_resize, 0);
  with config_select_8 select c_47_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "0" => c_47 <= c_47_46_0_False_shift;
        when others => c_47 <= c_47_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 48 and associated fundamentals [[99], [203]]
  with config_select_9 select c_48_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_48: entity work.adder_node
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
      sub_i => c_48_sub_sel,
      x_i => c_26,
      y_i => c_47,
      z_o => c_48_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_48_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 49 and associated fundamentals [[248], [133]]
  c_49_25_3_False_resize <= resize(c_25, 24);
  c_49_25_3_False_shift <= shift_left(c_49_25_3_False_resize, 3);
  c_49_19_0_False_resize <= c_19;
  c_49_19_0_False_shift <= shift_left(c_49_19_0_False_resize, 0);
  with config_select_8 select c_49_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_49_sel is
        when "0" => c_49 <= c_49_25_3_False_shift;
        when others => c_49 <= c_49_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 50 and associated fundamentals [[153], [32]]
  c_50_17_5_False_resize <= resize(c_17, 24);
  c_50_17_5_False_shift <= shift_left(c_50_17_5_False_resize, 5);
  c_50_12_0_False_resize <= c_12;
  c_50_12_0_False_shift <= shift_left(c_50_12_0_False_resize, 0);
  with config_select_6 select c_50_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_50_sel is
        when "0" => c_50 <= c_50_17_5_False_shift;
        when others => c_50 <= c_50_12_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 51 and associated fundamentals [[123], [71]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 52 and associated fundamentals [[123], [71]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 53 and associated fundamentals [[246], [203]]
  c_53_48_0_False_resize <= c_48;
  c_53_48_0_False_shift <= shift_left(c_53_48_0_False_resize, 0);
  c_53_52_1_False_resize <= resize(c_52, 24);
  c_53_52_1_False_shift <= shift_left(c_53_52_1_False_resize, 1);
  with config_select_10 select c_53_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_53_sel is
        when "0" => c_53 <= c_53_48_0_False_shift;
        when others => c_53 <= c_53_52_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 54 and associated fundamentals [[200], [191]]
  c_54_38_3_False_resize <= c_38;
  c_54_38_3_False_shift <= shift_left(c_54_38_3_False_resize, 3);
  c_54_31_0_False_resize <= c_31;
  c_54_31_0_False_shift <= shift_left(c_54_31_0_False_resize, 0);
  with config_select_11 select c_54_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_54_sel is
        when "0" => c_54 <= c_54_38_3_False_shift;
        when others => c_54 <= c_54_31_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 55 and associated fundamentals [[61], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 56 and associated fundamentals [[61], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 57 and associated fundamentals [[99], [20]]
  c_57_48_0_False_resize <= c_48(22 downto 0);
  c_57_48_0_False_shift <= shift_left(c_57_48_0_False_resize, 0);
  c_57_56_2_False_resize <= resize(c_56, 23);
  c_57_56_2_False_shift <= shift_left(c_57_56_2_False_resize, 2);
  with config_select_10 select c_57_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_57_sel is
        when "0" => c_57 <= c_57_48_0_False_shift;
        when others => c_57 <= c_57_56_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 58 and associated fundamentals [[123], [71]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_52 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 59 and associated fundamentals [[119], [71]]
  c_59_58_0_False_resize <= c_58;
  c_59_58_0_False_shift <= shift_left(c_59_58_0_False_resize, 0);
  c_59_31_0_False_resize <= c_31(22 downto 0);
  c_59_31_0_False_shift <= shift_left(c_59_31_0_False_resize, 0);
  with config_select_11 select c_59_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_59_sel is
        when "0" => c_59 <= c_59_58_0_False_shift;
        when others => c_59 <= c_59_31_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 60 and associated fundamentals [[61], [49]]
  c_60_12_0_False_resize <= c_12(21 downto 0);
  c_60_12_0_False_shift <= shift_left(c_60_12_0_False_resize, 0);
  c_60_14_0_False_resize <= c_14;
  c_60_14_0_False_shift <= shift_left(c_60_14_0_False_resize, 0);
  with config_select_6 select c_60_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_60_sel is
        when "0" => c_60 <= c_60_12_0_False_shift;
        when others => c_60 <= c_60_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 61 and associated fundamentals [[81], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 62 and associated fundamentals [[81], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 63 and associated fundamentals [[81], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 64 and associated fundamentals [[81], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 65 and associated fundamentals [[81], [127]]
  c_65_resize <= c_64;
  c_65 <= shift_left(c_65_resize, 0);
  -- node of type 'register' in stage 12 with id 66 and associated fundamentals [[117], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 67 and associated fundamentals [[117], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 68 and associated fundamentals [[117], [189]]
  c_68_resize <= c_67;
  c_68 <= shift_left(c_68_resize, 0);
  -- node of type 'register' in stage 9 with id 69 and associated fundamentals [[248], [133]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 70 and associated fundamentals [[248], [133]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 71 and associated fundamentals [[248], [133]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 72 and associated fundamentals [[248], [133]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 73 and associated fundamentals [[248], [133]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_72 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 74 and associated fundamentals [[248], [133]]
  c_74_resize <= c_73;
  c_74 <= shift_left(c_74_resize, 0);
  -- node of type 'register' in stage 7 with id 75 and associated fundamentals [[153], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 76 and associated fundamentals [[153], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 77 and associated fundamentals [[153], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 78 and associated fundamentals [[153], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 79 and associated fundamentals [[153], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 80 and associated fundamentals [[153], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 81 and associated fundamentals [[153], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_80 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 82 and associated fundamentals [[153], [32]]
  c_82_resize <= c_81;
  c_82 <= shift_left(c_82_resize, 0);
  -- node of type 'register' in stage 11 with id 83 and associated fundamentals [[246], [203]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 84 and associated fundamentals [[246], [203]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_83 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 85 and associated fundamentals [[246], [203]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_84 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 86 and associated fundamentals [[246], [203]]
  c_86_resize <= c_85;
  c_86 <= shift_left(c_86_resize, 0);
  -- node of type 'register' in stage 12 with id 87 and associated fundamentals [[200], [191]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 88 and associated fundamentals [[200], [191]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_87 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 89 and associated fundamentals [[200], [191]]
  c_89_resize <= c_88;
  c_89 <= shift_left(c_89_resize, 0);
  -- node of type 'register' in stage 11 with id 90 and associated fundamentals [[99], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 91 and associated fundamentals [[99], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_90 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 92 and associated fundamentals [[99], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 93 and associated fundamentals [[99], [20]]
  c_93_resize <= c_92;
  c_93 <= shift_left(c_93_resize, 0);
  -- node of type 'register' in stage 12 with id 94 and associated fundamentals [[119], [71]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 95 and associated fundamentals [[119], [71]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_94 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 96 and associated fundamentals [[238], [142]]
  c_96_resize <= resize(c_95, 24);
  c_96 <= shift_left(c_96_resize, 1);
  -- node of type 'register' in stage 7 with id 97 and associated fundamentals [[61], [49]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 98 and associated fundamentals [[61], [49]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_97 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 99 and associated fundamentals [[61], [49]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_98 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 100 and associated fundamentals [[61], [49]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_99 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 101 and associated fundamentals [[61], [49]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_100 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 102 and associated fundamentals [[61], [49]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_101 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 103 and associated fundamentals [[61], [49]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_102 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 104 and associated fundamentals [[61], [49]]
  c_104_resize <= c_103;
  c_104 <= shift_left(c_104_resize, 0);
  -- node of type 'output' in stage 13 with id 105 and associated fundamentals [[204], [185]]
  c_105_resize <= c_43;
  c_105 <= shift_left(c_105_resize, 0);
end architecture;
