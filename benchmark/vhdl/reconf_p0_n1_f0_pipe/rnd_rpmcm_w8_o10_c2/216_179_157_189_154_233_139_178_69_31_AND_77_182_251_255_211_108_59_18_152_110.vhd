library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(23 downto 0);
    y_5: out std_logic_vector(23 downto 0);
    y_6: out std_logic_vector(23 downto 0);
    y_7: out std_logic_vector(23 downto 0);
    y_8: out std_logic_vector(23 downto 0);
    y_9: out std_logic_vector(22 downto 0);
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
  signal c_5: signed(21 downto 0);
  signal c_5_3_0_False_resize: signed(21 downto 0);
  signal c_5_3_0_False_shift: signed(21 downto 0);
  signal c_5_4_6_False_resize: signed(21 downto 0);
  signal c_5_4_6_False_shift: signed(21 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(19 downto 0);
  signal c_6_4_2_False_resize: signed(19 downto 0);
  signal c_6_4_2_False_shift: signed(19 downto 0);
  signal c_6_3_0_False_resize: signed(19 downto 0);
  signal c_6_3_0_False_shift: signed(19 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(21 downto 0);
  signal c_7_i0_resize: signed(21 downto 0);
  signal c_7_i1_resize: signed(21 downto 0);
  signal c_7_i0_shift: signed(21 downto 0);
  signal c_7_i1_shift: signed(21 downto 0);
  signal c_7_arith: signed(21 downto 0);
  signal c_7_oshift: signed(21 downto 0);
  signal c_8: signed(15 downto 0);
  signal c_9: signed(15 downto 0);
  signal c_10: signed(20 downto 0);
  signal c_10_9_0_False_resize: signed(20 downto 0);
  signal c_10_9_0_False_shift: signed(20 downto 0);
  signal c_10_7_0_False_resize: signed(20 downto 0);
  signal c_10_7_0_False_shift: signed(20 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(20 downto 0);
  signal c_11_9_5_False_resize: signed(20 downto 0);
  signal c_11_9_5_False_shift: signed(20 downto 0);
  signal c_11_7_0_False_resize: signed(20 downto 0);
  signal c_11_7_0_False_shift: signed(20 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_i0_resize: signed(23 downto 0);
  signal c_12_i1_resize: signed(23 downto 0);
  signal c_12_i0_shift: signed(23 downto 0);
  signal c_12_i1_shift: signed(23 downto 0);
  signal c_12_arith: signed(23 downto 0);
  signal c_12_oshift: signed(23 downto 0);
  signal c_13: signed(20 downto 0);
  signal c_14: signed(20 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_i0_resize: signed(23 downto 0);
  signal c_15_i1_resize: signed(23 downto 0);
  signal c_15_i0_shift: signed(23 downto 0);
  signal c_15_i1_shift: signed(23 downto 0);
  signal c_15_arith: signed(23 downto 0);
  signal c_15_oshift: signed(23 downto 0);
  signal c_16: signed(18 downto 0);
  signal c_16_0_0_False_resize: signed(18 downto 0);
  signal c_16_0_0_False_shift: signed(18 downto 0);
  signal c_16_0_3_False_resize: signed(18 downto 0);
  signal c_16_0_3_False_shift: signed(18 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(18 downto 0);
  signal c_18: signed(18 downto 0);
  signal c_19: signed(18 downto 0);
  signal c_20: signed(18 downto 0);
  signal c_21: signed(18 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_i0_resize: signed(23 downto 0);
  signal c_22_i1_resize: signed(23 downto 0);
  signal c_22_i0_shift: signed(23 downto 0);
  signal c_22_i1_shift: signed(23 downto 0);
  signal c_22_arith: signed(23 downto 0);
  signal c_22_oshift: signed(23 downto 0);
  signal c_23: signed(20 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_23_4_False_resize: signed(23 downto 0);
  signal c_24_23_4_False_shift: signed(23 downto 0);
  signal c_24_15_0_False_resize: signed(23 downto 0);
  signal c_24_15_0_False_shift: signed(23 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(15 downto 0);
  signal c_26: signed(15 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_i0_resize: signed(23 downto 0);
  signal c_27_i1_resize: signed(23 downto 0);
  signal c_27_i0_shift: signed(23 downto 0);
  signal c_27_i1_shift: signed(23 downto 0);
  signal c_27_arith: signed(23 downto 0);
  signal c_27_oshift: signed(23 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(21 downto 0);
  signal c_29: signed(21 downto 0);
  signal c_30: signed(21 downto 0);
  signal c_31: signed(22 downto 0);
  signal c_31_27_0_False_resize: signed(22 downto 0);
  signal c_31_27_0_False_shift: signed(22 downto 0);
  signal c_31_30_1_False_resize: signed(22 downto 0);
  signal c_31_30_1_False_shift: signed(22 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(20 downto 0);
  signal c_33: signed(20 downto 0);
  signal c_34: signed(20 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_i0_resize: signed(23 downto 0);
  signal c_35_i1_resize: signed(23 downto 0);
  signal c_35_i0_shift: signed(23 downto 0);
  signal c_35_i1_shift: signed(23 downto 0);
  signal c_35_arith: signed(23 downto 0);
  signal c_35_oshift: signed(23 downto 0);
  signal c_35_sub_sel: std_logic;
  signal c_36: signed(23 downto 0);
  signal c_36_27_0_False_resize: signed(23 downto 0);
  signal c_36_27_0_False_shift: signed(23 downto 0);
  signal c_36_33_1_False_resize: signed(23 downto 0);
  signal c_36_33_1_False_shift: signed(23 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_i0_resize: signed(23 downto 0);
  signal c_40_i1_resize: signed(23 downto 0);
  signal c_40_i0_shift: signed(23 downto 0);
  signal c_40_i1_shift: signed(23 downto 0);
  signal c_40_arith: signed(23 downto 0);
  signal c_40_oshift: signed(23 downto 0);
  signal c_40_sub_sel: std_logic;
  signal c_41: signed(15 downto 0);
  signal c_42: signed(15 downto 0);
  signal c_43: signed(15 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_43_1_False_resize: signed(23 downto 0);
  signal c_44_43_1_False_shift: signed(23 downto 0);
  signal c_44_35_0_False_resize: signed(23 downto 0);
  signal c_44_35_0_False_shift: signed(23 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(21 downto 0);
  signal c_46: signed(21 downto 0);
  signal c_47: signed(21 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_48_i0_resize: signed(23 downto 0);
  signal c_48_i1_resize: signed(23 downto 0);
  signal c_48_i0_shift: signed(23 downto 0);
  signal c_48_i1_shift: signed(23 downto 0);
  signal c_48_arith: signed(23 downto 0);
  signal c_48_oshift: signed(23 downto 0);
  signal c_48_sub_sel: std_logic;
  signal c_49: signed(21 downto 0);
  signal c_49_46_0_False_resize: signed(21 downto 0);
  signal c_49_46_0_False_shift: signed(21 downto 0);
  signal c_49_40_0_False_resize: signed(21 downto 0);
  signal c_49_40_0_False_shift: signed(21 downto 0);
  signal c_49_sel: std_logic_vector(0 downto 0);
  signal c_50: signed(20 downto 0);
  signal c_51: signed(20 downto 0);
  signal c_52: signed(22 downto 0);
  signal c_52_i0_resize: signed(22 downto 0);
  signal c_52_i1_resize: signed(22 downto 0);
  signal c_52_i0_shift: signed(22 downto 0);
  signal c_52_i1_shift: signed(22 downto 0);
  signal c_52_arith: signed(22 downto 0);
  signal c_52_oshift: signed(22 downto 0);
  signal c_53: signed(21 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_54_52_0_False_resize: signed(23 downto 0);
  signal c_54_52_0_False_shift: signed(23 downto 0);
  signal c_54_53_3_False_resize: signed(23 downto 0);
  signal c_54_53_3_False_shift: signed(23 downto 0);
  signal c_54_sel: std_logic_vector(0 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_55_15_0_False_resize: signed(23 downto 0);
  signal c_55_15_0_False_shift: signed(23 downto 0);
  signal c_55_15_1_False_resize: signed(23 downto 0);
  signal c_55_15_1_False_shift: signed(23 downto 0);
  signal c_55_sel: std_logic_vector(0 downto 0);
  signal c_56: signed(20 downto 0);
  signal c_57: signed(22 downto 0);
  signal c_57_52_0_False_resize: signed(22 downto 0);
  signal c_57_52_0_False_shift: signed(22 downto 0);
  signal c_57_56_0_False_resize: signed(22 downto 0);
  signal c_57_56_0_False_shift: signed(22 downto 0);
  signal c_57_sel: std_logic_vector(0 downto 0);
  signal c_58: signed(22 downto 0);
  signal c_58_7_1_False_resize: signed(22 downto 0);
  signal c_58_7_1_False_shift: signed(22 downto 0);
  signal c_58_14_0_False_resize: signed(22 downto 0);
  signal c_58_14_0_False_shift: signed(22 downto 0);
  signal c_58_sel: std_logic_vector(0 downto 0);
  signal c_59: signed(23 downto 0);
  signal c_59_resize: signed(23 downto 0);
  signal c_60: signed(23 downto 0);
  signal c_61: signed(23 downto 0);
  signal c_62: signed(23 downto 0);
  signal c_63: signed(23 downto 0);
  signal c_63_resize: signed(23 downto 0);
  signal c_64: signed(23 downto 0);
  signal c_65: signed(23 downto 0);
  signal c_66: signed(23 downto 0);
  signal c_67: signed(23 downto 0);
  signal c_68: signed(23 downto 0);
  signal c_69: signed(23 downto 0);
  signal c_69_resize: signed(23 downto 0);
  signal c_70: signed(23 downto 0);
  signal c_71: signed(23 downto 0);
  signal c_72: signed(23 downto 0);
  signal c_73: signed(23 downto 0);
  signal c_74: signed(23 downto 0);
  signal c_75: signed(23 downto 0);
  signal c_76: signed(23 downto 0);
  signal c_76_resize: signed(23 downto 0);
  signal c_77: signed(23 downto 0);
  signal c_78: signed(23 downto 0);
  signal c_79: signed(23 downto 0);
  signal c_80: signed(23 downto 0);
  signal c_81: signed(23 downto 0);
  signal c_82: signed(23 downto 0);
  signal c_83: signed(23 downto 0);
  signal c_83_resize: signed(23 downto 0);
  signal c_84: signed(23 downto 0);
  signal c_85: signed(23 downto 0);
  signal c_85_resize: signed(23 downto 0);
  signal c_86: signed(23 downto 0);
  signal c_87: signed(23 downto 0);
  signal c_88: signed(23 downto 0);
  signal c_89: signed(23 downto 0);
  signal c_89_resize: signed(23 downto 0);
  signal c_90: signed(23 downto 0);
  signal c_90_resize: signed(23 downto 0);
  signal c_91: signed(23 downto 0);
  signal c_92: signed(23 downto 0);
  signal c_93: signed(23 downto 0);
  signal c_94: signed(23 downto 0);
  signal c_95: signed(23 downto 0);
  signal c_96: signed(23 downto 0);
  signal c_96_resize: signed(23 downto 0);
  signal c_97: signed(22 downto 0);
  signal c_98: signed(22 downto 0);
  signal c_99: signed(22 downto 0);
  signal c_100: signed(22 downto 0);
  signal c_101: signed(22 downto 0);
  signal c_102: signed(22 downto 0);
  signal c_103: signed(22 downto 0);
  signal c_104: signed(22 downto 0);
  signal c_104_resize: signed(22 downto 0);
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
  -- output node 0 with id 59
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_59);
    end if;
  end process;
  -- output node 1 with id 63
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_63);
    end if;
  end process;
  -- output node 2 with id 69
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_69);
    end if;
  end process;
  -- output node 3 with id 76
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_76);
    end if;
  end process;
  -- output node 4 with id 83
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_83);
    end if;
  end process;
  -- output node 5 with id 85
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_85);
    end if;
  end process;
  -- output node 6 with id 89
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_89);
    end if;
  end process;
  -- output node 7 with id 90
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_90);
    end if;
  end process;
  -- output node 8 with id 96
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_96);
    end if;
  end process;
  -- output node 9 with id 104
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_104);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[4], [1]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "0" when "1",
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
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[31], [9]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "0",
    '0' when others;
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
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[31], [64]]
  c_5_3_0_False_resize <= resize(c_3, 22);
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  c_5_4_6_False_resize <= resize(c_4, 22);
  c_5_4_6_False_shift <= shift_left(c_5_4_6_False_resize, 6);
  with config_select_3 select c_5_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_3_0_False_shift;
        when others => c_5 <= c_5_4_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[4], [9]]
  c_6_4_2_False_resize <= resize(c_4, 20);
  c_6_4_2_False_shift <= shift_left(c_6_4_2_False_resize, 2);
  c_6_3_0_False_resize <= c_3(19 downto 0);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_4_2_False_shift;
        when others => c_6 <= c_6_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 7 and associated fundamentals [[27], [55]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
      w_o => 22,
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
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 9 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 10 and associated fundamentals [[27], [1]]
  c_10_9_0_False_resize <= resize(c_9, 21);
  c_10_9_0_False_shift <= shift_left(c_10_9_0_False_resize, 0);
  c_10_7_0_False_resize <= c_7(20 downto 0);
  c_10_7_0_False_shift <= shift_left(c_10_7_0_False_resize, 0);
  with config_select_5 select c_10_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_9_0_False_shift;
        when others => c_10 <= c_10_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 11 and associated fundamentals [[27], [32]]
  c_11_9_5_False_resize <= resize(c_9, 21);
  c_11_9_5_False_shift <= shift_left(c_11_9_5_False_resize, 5);
  c_11_7_0_False_resize <= c_7(20 downto 0);
  c_11_7_0_False_shift <= shift_left(c_11_7_0_False_resize, 0);
  with config_select_5 select c_11_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_9_5_False_shift;
        when others => c_11 <= c_11_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 6 with id 12 and associated fundamentals [[-189], [-255]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 21,
      w_o => 24,
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
  -- node of type 'register' in stage 3 with id 13 and associated fundamentals [[31], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 14 and associated fundamentals [[31], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 5 with id 15 and associated fundamentals [[77], [211]]
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 21,
      w_o => 24,
      s_x_i => 2,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_7,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 16 and associated fundamentals [[8], [1]]
  c_16_0_0_False_resize <= resize(c_0, 19);
  c_16_0_0_False_shift <= shift_left(c_16_0_0_False_resize, 0);
  c_16_0_3_False_resize <= resize(c_0, 19);
  c_16_0_3_False_shift <= shift_left(c_16_0_3_False_resize, 3);
  with config_select_1 select c_16_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_0_0_False_shift;
        when others => c_16 <= c_16_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 17 and associated fundamentals [[8], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 18 and associated fundamentals [[8], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 19 and associated fundamentals [[8], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 20 and associated fundamentals [[8], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 21 and associated fundamentals [[8], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'add' in stage 7 with id 22 and associated fundamentals [[-157], [-251]]
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 24,
      w_o => 24,
      s_x_i => 2,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_21,
      y_i => c_12,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[31], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_14 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 24 and associated fundamentals [[77], [144]]
  c_24_23_4_False_resize <= resize(c_23, 24);
  c_24_23_4_False_shift <= shift_left(c_24_23_4_False_resize, 4);
  c_24_15_0_False_resize <= c_15;
  c_24_15_0_False_shift <= shift_left(c_24_15_0_False_resize, 0);
  with config_select_6 select c_24_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_23_4_False_shift;
        when others => c_24 <= c_24_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 25 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 26 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 27 and associated fundamentals [[69], [152]]
  with config_select_7 select c_27_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 16,
      w_o => 24,
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
      sub_i => c_27_sub_sel,
      x_i => c_24,
      y_i => c_26,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 28 and associated fundamentals [[27], [55]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 29 and associated fundamentals [[27], [55]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 30 and associated fundamentals [[27], [55]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 31 and associated fundamentals [[69], [110]]
  c_31_27_0_False_resize <= c_27(22 downto 0);
  c_31_27_0_False_shift <= shift_left(c_31_27_0_False_resize, 0);
  c_31_30_1_False_resize <= resize(c_30, 23);
  c_31_30_1_False_shift <= shift_left(c_31_30_1_False_resize, 1);
  with config_select_8 select c_31_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_27_0_False_shift;
        when others => c_31 <= c_31_30_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 32 and associated fundamentals [[31], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 33 and associated fundamentals [[31], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 34 and associated fundamentals [[31], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 35 and associated fundamentals [[179], [182]]
  with config_select_9 select c_35_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_35: entity work.adder_node
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
      sub_i => c_35_sub_sel,
      x_i => c_34,
      y_i => c_31,
      z_o => c_35_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_35_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 36 and associated fundamentals [[62], [152]]
  c_36_27_0_False_resize <= c_27;
  c_36_27_0_False_shift <= shift_left(c_36_27_0_False_resize, 0);
  c_36_33_1_False_resize <= resize(c_33, 24);
  c_36_33_1_False_shift <= shift_left(c_36_33_1_False_resize, 1);
  with config_select_8 select c_36_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "0" => c_36 <= c_36_27_0_False_shift;
        when others => c_36 <= c_36_33_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 37 and associated fundamentals [[77], [211]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 38 and associated fundamentals [[77], [211]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 39 and associated fundamentals [[77], [211]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 40 and associated fundamentals [[139], [59]]
  with config_select_9 select c_40_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_40: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_40_sub_sel,
      x_i => c_39,
      y_i => c_36,
      z_o => c_40_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_40_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 41 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 42 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 43 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 44 and associated fundamentals [[179], [2]]
  c_44_43_1_False_resize <= resize(c_43, 24);
  c_44_43_1_False_shift <= shift_left(c_44_43_1_False_resize, 1);
  c_44_35_0_False_resize <= c_35;
  c_44_35_0_False_shift <= shift_left(c_44_35_0_False_resize, 0);
  with config_select_10 select c_44_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "0" => c_44 <= c_44_43_1_False_shift;
        when others => c_44 <= c_44_35_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 45 and associated fundamentals [[27], [55]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 46 and associated fundamentals [[27], [55]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 47 and associated fundamentals [[27], [55]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 11 with id 48 and associated fundamentals [[233], [108]]
  with config_select_11 select c_48_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_48: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_48_sub_sel,
      x_i => c_47,
      y_i => c_44,
      z_o => c_48_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_48_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 49 and associated fundamentals [[27], [59]]
  c_49_46_0_False_resize <= c_46;
  c_49_46_0_False_shift <= shift_left(c_49_46_0_False_resize, 0);
  c_49_40_0_False_resize <= c_40(21 downto 0);
  c_49_40_0_False_shift <= shift_left(c_49_40_0_False_resize, 0);
  with config_select_10 select c_49_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_49_sel is
        when "0" => c_49 <= c_49_46_0_False_shift;
        when others => c_49 <= c_49_40_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 50 and associated fundamentals [[31], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 51 and associated fundamentals [[31], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'add' in stage 11 with id 52 and associated fundamentals [[89], [77]]
  inst_adder_node_52: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 21,
      w_o => 23,
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
      x_i => c_49,
      y_i => c_51,
      z_o => c_52_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_52_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 53 and associated fundamentals [[27], [55]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_47 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 54 and associated fundamentals [[216], [77]]
  c_54_52_0_False_resize <= resize(c_52, 24);
  c_54_52_0_False_shift <= shift_left(c_54_52_0_False_resize, 0);
  c_54_53_3_False_resize <= resize(c_53, 24);
  c_54_53_3_False_shift <= shift_left(c_54_53_3_False_resize, 3);
  with config_select_12 select c_54_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_54_sel is
        when "0" => c_54 <= c_54_52_0_False_shift;
        when others => c_54 <= c_54_53_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 55 and associated fundamentals [[154], [211]]
  c_55_15_0_False_resize <= c_15;
  c_55_15_0_False_shift <= shift_left(c_55_15_0_False_resize, 0);
  c_55_15_1_False_resize <= c_15;
  c_55_15_1_False_shift <= shift_left(c_55_15_1_False_resize, 1);
  with config_select_6 select c_55_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_55_sel is
        when "0" => c_55 <= c_55_15_0_False_shift;
        when others => c_55 <= c_55_15_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 56 and associated fundamentals [[31], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_51 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 57 and associated fundamentals [[89], [9]]
  c_57_52_0_False_resize <= c_52;
  c_57_52_0_False_shift <= shift_left(c_57_52_0_False_resize, 0);
  c_57_56_0_False_resize <= resize(c_56, 23);
  c_57_56_0_False_shift <= shift_left(c_57_56_0_False_resize, 0);
  with config_select_12 select c_57_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_57_sel is
        when "0" => c_57 <= c_57_52_0_False_shift;
        when others => c_57 <= c_57_56_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 58 and associated fundamentals [[31], [110]]
  c_58_7_1_False_resize <= resize(c_7, 23);
  c_58_7_1_False_shift <= shift_left(c_58_7_1_False_resize, 1);
  c_58_14_0_False_resize <= resize(c_14, 23);
  c_58_14_0_False_shift <= shift_left(c_58_14_0_False_resize, 0);
  with config_select_5 select c_58_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_58_sel is
        when "0" => c_58 <= c_58_7_1_False_shift;
        when others => c_58 <= c_58_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 12 with id 59 and associated fundamentals [[216], [77]]
  c_59_resize <= c_54;
  c_59 <= shift_left(c_59_resize, 0);
  -- node of type 'register' in stage 10 with id 60 and associated fundamentals [[179], [182]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 61 and associated fundamentals [[179], [182]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 62 and associated fundamentals [[179], [182]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'output' in stage 12 with id 63 and associated fundamentals [[179], [182]]
  c_63_resize <= c_62;
  c_63 <= shift_left(c_63_resize, 0);
  -- node of type 'register' in stage 8 with id 64 and associated fundamentals [[-157], [-251]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 65 and associated fundamentals [[-157], [-251]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 66 and associated fundamentals [[-157], [-251]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 67 and associated fundamentals [[-157], [-251]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 68 and associated fundamentals [[-157], [-251]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'output' in stage 12 with id 69 and associated fundamentals [[157], [251]]
  c_69_resize <= c_68;
  c_69 <= -shift_left(c_69_resize, 0);
  -- node of type 'register' in stage 7 with id 70 and associated fundamentals [[-189], [-255]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 71 and associated fundamentals [[-189], [-255]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 72 and associated fundamentals [[-189], [-255]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 73 and associated fundamentals [[-189], [-255]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_72 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 74 and associated fundamentals [[-189], [-255]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 75 and associated fundamentals [[-189], [-255]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'output' in stage 12 with id 76 and associated fundamentals [[189], [255]]
  c_76_resize <= c_75;
  c_76 <= -shift_left(c_76_resize, 0);
  -- node of type 'register' in stage 7 with id 77 and associated fundamentals [[154], [211]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 78 and associated fundamentals [[154], [211]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 79 and associated fundamentals [[154], [211]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 80 and associated fundamentals [[154], [211]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 81 and associated fundamentals [[154], [211]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_80 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 82 and associated fundamentals [[154], [211]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_81 & "";
    end if;
  end process;
  -- node of type 'output' in stage 12 with id 83 and associated fundamentals [[154], [211]]
  c_83_resize <= c_82;
  c_83 <= shift_left(c_83_resize, 0);
  -- node of type 'register' in stage 12 with id 84 and associated fundamentals [[233], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_48 & "";
    end if;
  end process;
  -- node of type 'output' in stage 12 with id 85 and associated fundamentals [[233], [108]]
  c_85_resize <= c_84;
  c_85 <= shift_left(c_85_resize, 0);
  -- node of type 'register' in stage 10 with id 86 and associated fundamentals [[139], [59]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 87 and associated fundamentals [[139], [59]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_86 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 88 and associated fundamentals [[139], [59]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_87 & "";
    end if;
  end process;
  -- node of type 'output' in stage 12 with id 89 and associated fundamentals [[139], [59]]
  c_89_resize <= c_88;
  c_89 <= shift_left(c_89_resize, 0);
  -- node of type 'output' in stage 12 with id 90 and associated fundamentals [[178], [18]]
  c_90_resize <= resize(c_57, 24);
  c_90 <= shift_left(c_90_resize, 1);
  -- node of type 'register' in stage 8 with id 91 and associated fundamentals [[69], [152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 92 and associated fundamentals [[69], [152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 93 and associated fundamentals [[69], [152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_92 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 94 and associated fundamentals [[69], [152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_93 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 95 and associated fundamentals [[69], [152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_94 & "";
    end if;
  end process;
  -- node of type 'output' in stage 12 with id 96 and associated fundamentals [[69], [152]]
  c_96_resize <= c_95;
  c_96 <= shift_left(c_96_resize, 0);
  -- node of type 'register' in stage 6 with id 97 and associated fundamentals [[31], [110]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 98 and associated fundamentals [[31], [110]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_97 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 99 and associated fundamentals [[31], [110]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_98 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 100 and associated fundamentals [[31], [110]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_99 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 101 and associated fundamentals [[31], [110]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_100 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 102 and associated fundamentals [[31], [110]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_101 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 103 and associated fundamentals [[31], [110]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_102 & "";
    end if;
  end process;
  -- node of type 'output' in stage 12 with id 104 and associated fundamentals [[31], [110]]
  c_104_resize <= c_103;
  c_104 <= shift_left(c_104_resize, 0);
end architecture;
