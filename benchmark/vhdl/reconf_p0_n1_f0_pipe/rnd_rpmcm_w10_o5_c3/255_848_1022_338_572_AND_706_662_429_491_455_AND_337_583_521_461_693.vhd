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
    y_3: out std_logic_vector(24 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(21 downto 0);
  signal c_1_i0_resize: signed(21 downto 0);
  signal c_1_i1_resize: signed(21 downto 0);
  signal c_1_i0_shift: signed(21 downto 0);
  signal c_1_i1_shift: signed(21 downto 0);
  signal c_1_arith: signed(21 downto 0);
  signal c_1_oshift: signed(21 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(21 downto 0);
  signal c_2_0_0_False_resize: signed(21 downto 0);
  signal c_2_0_0_False_shift: signed(21 downto 0);
  signal c_2_0_6_False_resize: signed(21 downto 0);
  signal c_2_0_6_False_shift: signed(21 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(15 downto 0);
  signal c_4: signed(21 downto 0);
  signal c_4_1_1_False_resize: signed(21 downto 0);
  signal c_4_1_1_False_shift: signed(21 downto 0);
  signal c_4_3_0_False_resize: signed(21 downto 0);
  signal c_4_3_0_False_shift: signed(21 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_6: signed(23 downto 0);
  signal c_6_i0_resize: signed(23 downto 0);
  signal c_6_i1_resize: signed(23 downto 0);
  signal c_6_i0_shift: signed(23 downto 0);
  signal c_6_i1_shift: signed(23 downto 0);
  signal c_6_arith: signed(23 downto 0);
  signal c_6_oshift: signed(23 downto 0);
  signal c_7: signed(21 downto 0);
  signal c_7_3_1_False_resize: signed(21 downto 0);
  signal c_7_3_1_False_shift: signed(21 downto 0);
  signal c_7_1_0_False_resize: signed(21 downto 0);
  signal c_7_1_0_False_shift: signed(21 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(15 downto 0);
  signal c_9: signed(15 downto 0);
  signal c_10: signed(21 downto 0);
  signal c_11: signed(21 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_11_1_False_resize: signed(22 downto 0);
  signal c_12_11_1_False_shift: signed(22 downto 0);
  signal c_12_6_0_False_resize: signed(22 downto 0);
  signal c_12_6_0_False_shift: signed(22 downto 0);
  signal c_12_9_6_False_resize: signed(22 downto 0);
  signal c_12_9_6_False_shift: signed(22 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_14: signed(21 downto 0);
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
  signal c_18: signed(23 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_15_0_False_resize: signed(23 downto 0);
  signal c_20_15_0_False_shift: signed(23 downto 0);
  signal c_20_19_6_False_resize: signed(23 downto 0);
  signal c_20_19_6_False_shift: signed(23 downto 0);
  signal c_20_17_5_False_resize: signed(23 downto 0);
  signal c_20_17_5_False_shift: signed(23 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(24 downto 0);
  signal c_21_3_9_False_resize: signed(24 downto 0);
  signal c_21_3_9_False_shift: signed(24 downto 0);
  signal c_21_1_0_False_resize: signed(24 downto 0);
  signal c_21_1_0_False_shift: signed(24 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(24 downto 0);
  signal c_23: signed(24 downto 0);
  signal c_24: signed(24 downto 0);
  signal c_25: signed(24 downto 0);
  signal c_26: signed(24 downto 0);
  signal c_26_i0_resize: signed(24 downto 0);
  signal c_26_i1_resize: signed(24 downto 0);
  signal c_26_i0_shift: signed(24 downto 0);
  signal c_26_i1_shift: signed(24 downto 0);
  signal c_26_arith: signed(24 downto 0);
  signal c_26_oshift: signed(24 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_15_0_False_resize: signed(25 downto 0);
  signal c_27_15_0_False_shift: signed(25 downto 0);
  signal c_27_19_2_False_resize: signed(25 downto 0);
  signal c_27_19_2_False_shift: signed(25 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(15 downto 0);
  signal c_29: signed(15 downto 0);
  signal c_30: signed(24 downto 0);
  signal c_31: signed(24 downto 0);
  signal c_32: signed(24 downto 0);
  signal c_32_31_5_False_resize: signed(24 downto 0);
  signal c_32_31_5_False_shift: signed(24 downto 0);
  signal c_32_26_0_False_resize: signed(24 downto 0);
  signal c_32_26_0_False_shift: signed(24 downto 0);
  signal c_32_29_1_False_resize: signed(24 downto 0);
  signal c_32_29_1_False_shift: signed(24 downto 0);
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
  signal c_36: signed(24 downto 0);
  signal c_37: signed(24 downto 0);
  signal c_38: signed(27 downto 0);
  signal c_38_35_0_False_resize: signed(27 downto 0);
  signal c_38_35_0_False_shift: signed(27 downto 0);
  signal c_38_37_3_False_resize: signed(27 downto 0);
  signal c_38_37_3_False_shift: signed(27 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(21 downto 0);
  signal c_40: signed(21 downto 0);
  signal c_41: signed(21 downto 0);
  signal c_42: signed(21 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_43_42_0_False_resize: signed(25 downto 0);
  signal c_43_42_0_False_shift: signed(25 downto 0);
  signal c_43_31_0_False_resize: signed(25 downto 0);
  signal c_43_31_0_False_shift: signed(25 downto 0);
  signal c_43_26_1_False_resize: signed(25 downto 0);
  signal c_43_26_1_False_shift: signed(25 downto 0);
  signal c_43_sel: std_logic_vector(1 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_46_i0_resize: signed(25 downto 0);
  signal c_46_i1_resize: signed(25 downto 0);
  signal c_46_i0_shift: signed(25 downto 0);
  signal c_46_i1_shift: signed(25 downto 0);
  signal c_46_arith: signed(25 downto 0);
  signal c_46_oshift: signed(25 downto 0);
  signal c_47: signed(24 downto 0);
  signal c_48: signed(24 downto 0);
  signal c_49: signed(24 downto 0);
  signal c_50: signed(24 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_51_46_0_False_resize: signed(25 downto 0);
  signal c_51_46_0_False_shift: signed(25 downto 0);
  signal c_51_50_0_False_resize: signed(25 downto 0);
  signal c_51_50_0_False_shift: signed(25 downto 0);
  signal c_51_sel: std_logic_vector(0 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_52_11_1_False_resize: signed(23 downto 0);
  signal c_52_11_1_False_shift: signed(23 downto 0);
  signal c_52_6_0_False_resize: signed(23 downto 0);
  signal c_52_6_0_False_shift: signed(23 downto 0);
  signal c_52_sel: std_logic_vector(0 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_57: signed(23 downto 0);
  signal c_58: signed(23 downto 0);
  signal c_59: signed(23 downto 0);
  signal c_60: signed(23 downto 0);
  signal c_61: signed(24 downto 0);
  signal c_61_i0_resize: signed(24 downto 0);
  signal c_61_i1_resize: signed(24 downto 0);
  signal c_61_i0_shift: signed(24 downto 0);
  signal c_61_i1_shift: signed(24 downto 0);
  signal c_61_arith: signed(24 downto 0);
  signal c_61_oshift: signed(24 downto 0);
  signal c_61_sub_sel: std_logic;
  signal c_62: signed(21 downto 0);
  signal c_63: signed(21 downto 0);
  signal c_64: signed(21 downto 0);
  signal c_65: signed(21 downto 0);
  signal c_66: signed(21 downto 0);
  signal c_67: signed(21 downto 0);
  signal c_68: signed(24 downto 0);
  signal c_69: signed(24 downto 0);
  signal c_70: signed(24 downto 0);
  signal c_70_69_0_False_resize: signed(24 downto 0);
  signal c_70_69_0_False_shift: signed(24 downto 0);
  signal c_70_67_1_False_resize: signed(24 downto 0);
  signal c_70_67_1_False_shift: signed(24 downto 0);
  signal c_70_61_0_False_resize: signed(24 downto 0);
  signal c_70_61_0_False_shift: signed(24 downto 0);
  signal c_70_sel: std_logic_vector(1 downto 0);
  signal c_71: signed(23 downto 0);
  signal c_72: signed(23 downto 0);
  signal c_73: signed(23 downto 0);
  signal c_74: signed(23 downto 0);
  signal c_75: signed(25 downto 0);
  signal c_75_74_2_False_resize: signed(25 downto 0);
  signal c_75_74_2_False_shift: signed(25 downto 0);
  signal c_75_35_0_False_resize: signed(25 downto 0);
  signal c_75_35_0_False_shift: signed(25 downto 0);
  signal c_75_sel: std_logic_vector(0 downto 0);
  signal c_76: signed(25 downto 0);
  signal c_77: signed(25 downto 0);
  signal c_78: signed(25 downto 0);
  signal c_79: signed(25 downto 0);
  signal c_80: signed(25 downto 0);
  signal c_80_i0_resize: signed(25 downto 0);
  signal c_80_i1_resize: signed(25 downto 0);
  signal c_80_i0_shift: signed(25 downto 0);
  signal c_80_i1_shift: signed(25 downto 0);
  signal c_80_arith: signed(25 downto 0);
  signal c_80_oshift: signed(25 downto 0);
  signal c_80_sub_sel: std_logic;
  signal c_81: signed(25 downto 0);
  signal c_81_26_0_False_resize: signed(25 downto 0);
  signal c_81_26_0_False_shift: signed(25 downto 0);
  signal c_81_26_1_False_resize: signed(25 downto 0);
  signal c_81_26_1_False_shift: signed(25 downto 0);
  signal c_81_72_0_False_resize: signed(25 downto 0);
  signal c_81_72_0_False_shift: signed(25 downto 0);
  signal c_81_sel: std_logic_vector(1 downto 0);
  signal c_82: signed(25 downto 0);
  signal c_83: signed(25 downto 0);
  signal c_84: signed(25 downto 0);
  signal c_84_83_0_False_resize: signed(25 downto 0);
  signal c_84_83_0_False_shift: signed(25 downto 0);
  signal c_84_61_1_False_resize: signed(25 downto 0);
  signal c_84_61_1_False_shift: signed(25 downto 0);
  signal c_84_sel: std_logic_vector(0 downto 0);
  signal c_85: signed(24 downto 0);
  signal c_86: signed(24 downto 0);
  signal c_87: signed(24 downto 0);
  signal c_87_86_0_False_resize: signed(24 downto 0);
  signal c_87_86_0_False_shift: signed(24 downto 0);
  signal c_87_80_0_False_resize: signed(24 downto 0);
  signal c_87_80_0_False_shift: signed(24 downto 0);
  signal c_87_sel: std_logic_vector(0 downto 0);
  signal c_88: signed(25 downto 0);
  signal c_89: signed(25 downto 0);
  signal c_90: signed(25 downto 0);
  signal c_90_80_0_False_resize: signed(25 downto 0);
  signal c_90_80_0_False_shift: signed(25 downto 0);
  signal c_90_89_0_False_resize: signed(25 downto 0);
  signal c_90_89_0_False_shift: signed(25 downto 0);
  signal c_90_sel: std_logic_vector(0 downto 0);
  signal c_91: signed(25 downto 0);
  signal c_92: signed(25 downto 0);
  signal c_93: signed(25 downto 0);
  signal c_94: signed(25 downto 0);
  signal c_95: signed(25 downto 0);
  signal c_96: signed(25 downto 0);
  signal c_97: signed(25 downto 0);
  signal c_98: signed(25 downto 0);
  signal c_99: signed(25 downto 0);
  signal c_99_resize: signed(25 downto 0);
  signal c_100: signed(25 downto 0);
  signal c_101: signed(25 downto 0);
  signal c_102: signed(25 downto 0);
  signal c_102_resize: signed(25 downto 0);
  signal c_103: signed(25 downto 0);
  signal c_104: signed(25 downto 0);
  signal c_105: signed(25 downto 0);
  signal c_106: signed(25 downto 0);
  signal c_107: signed(25 downto 0);
  signal c_108: signed(25 downto 0);
  signal c_109: signed(25 downto 0);
  signal c_110: signed(25 downto 0);
  signal c_110_resize: signed(25 downto 0);
  signal c_111: signed(24 downto 0);
  signal c_111_resize: signed(24 downto 0);
  signal c_112: signed(25 downto 0);
  signal c_112_resize: signed(25 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 99
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_99);
    end if;
  end process;
  -- output node 1 with id 102
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_102);
    end if;
  end process;
  -- output node 2 with id 110
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_110);
    end if;
  end process;
  -- output node 3 with id 111
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_111);
    end if;
  end process;
  -- output node 4 with id 112
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_112);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[33], [31], [31]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
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
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[64], [1], [1]]
  c_2_0_0_False_resize <= resize(c_0, 22);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_6_False_resize <= resize(c_0, 22);
  c_2_0_6_False_shift <= shift_left(c_2_0_6_False_resize, 6);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 3 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[1], [1], [62]]
  c_4_1_1_False_resize <= c_1;
  c_4_1_1_False_shift <= shift_left(c_4_1_1_False_resize, 1);
  c_4_3_0_False_resize <= resize(c_3, 22);
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  with config_select_2 select c_4_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_1_1_False_shift;
        when others => c_4 <= c_4_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[64], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_2 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 6 and associated fundamentals [[255], [3], [-58]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
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
      x_i => c_5,
      y_i => c_4,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 7 and associated fundamentals [[33], [2], [31]]
  c_7_3_1_False_resize <= resize(c_3, 22);
  c_7_3_1_False_shift <= shift_left(c_7_3_1_False_resize, 1);
  c_7_1_0_False_resize <= c_1;
  c_7_1_0_False_shift <= shift_left(c_7_1_0_False_resize, 0);
  with config_select_2 select c_7_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_3_1_False_shift;
        when others => c_7 <= c_7_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 10 and associated fundamentals [[33], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[33], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 12 and associated fundamentals [[66], [3], [64]]
  c_12_11_1_False_resize <= resize(c_11, 23);
  c_12_11_1_False_shift <= shift_left(c_12_11_1_False_resize, 1);
  c_12_6_0_False_resize <= c_6(22 downto 0);
  c_12_6_0_False_shift <= shift_left(c_12_6_0_False_resize, 0);
  c_12_9_6_False_resize <= resize(c_9, 23);
  c_12_9_6_False_shift <= shift_left(c_12_9_6_False_resize, 6);
  with config_select_4 select c_12_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "00" => c_12 <= c_12_11_1_False_shift;
        when "01" => c_12 <= c_12_6_0_False_shift;
        when others => c_12 <= c_12_9_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 13 and associated fundamentals [[33], [2], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 14 and associated fundamentals [[33], [2], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 15 and associated fundamentals [[330], [13], [184]]
  with config_select_5 select c_15_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
      w_o => 25,
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
  -- node of type 'register' in stage 4 with id 16 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 17 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 18 and associated fundamentals [[255], [3], [-58]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 19 and associated fundamentals [[255], [3], [-58]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 20 and associated fundamentals [[32], [192], [184]]
  c_20_15_0_False_resize <= c_15(23 downto 0);
  c_20_15_0_False_shift <= shift_left(c_20_15_0_False_resize, 0);
  c_20_19_6_False_resize <= c_19;
  c_20_19_6_False_shift <= shift_left(c_20_19_6_False_resize, 6);
  c_20_17_5_False_resize <= resize(c_17, 24);
  c_20_17_5_False_shift <= shift_left(c_20_17_5_False_resize, 5);
  with config_select_6 select c_20_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_15_0_False_shift;
        when "01" => c_20 <= c_20_19_6_False_shift;
        when others => c_20 <= c_20_17_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 21 and associated fundamentals [[512], [31], [31]]
  c_21_3_9_False_resize <= resize(c_3, 25);
  c_21_3_9_False_shift <= shift_left(c_21_3_9_False_resize, 9);
  c_21_1_0_False_resize <= resize(c_1, 25);
  c_21_1_0_False_shift <= shift_left(c_21_1_0_False_resize, 0);
  with config_select_2 select c_21_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_3_9_False_shift;
        when others => c_21 <= c_21_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 22 and associated fundamentals [[512], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 23 and associated fundamentals [[512], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 24 and associated fundamentals [[512], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 25 and associated fundamentals [[512], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 7 with id 26 and associated fundamentals [[-448], [353], [337]]
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 25,
      w_o => 25,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_20,
      y_i => c_25,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 27 and associated fundamentals [[1020], [13], [184]]
  c_27_15_0_False_resize <= resize(c_15, 26);
  c_27_15_0_False_shift <= shift_left(c_27_15_0_False_resize, 0);
  c_27_19_2_False_resize <= resize(c_19, 26);
  c_27_19_2_False_shift <= shift_left(c_27_19_2_False_resize, 2);
  with config_select_6 select c_27_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_15_0_False_shift;
        when others => c_27 <= c_27_19_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 28 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 29 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 30 and associated fundamentals [[330], [13], [184]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 31 and associated fundamentals [[330], [13], [184]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 32 and associated fundamentals [[2], [416], [337]]
  c_32_31_5_False_resize <= c_31;
  c_32_31_5_False_shift <= shift_left(c_32_31_5_False_resize, 5);
  c_32_26_0_False_resize <= c_26;
  c_32_26_0_False_shift <= shift_left(c_32_26_0_False_resize, 0);
  c_32_29_1_False_resize <= resize(c_29, 25);
  c_32_29_1_False_shift <= shift_left(c_32_29_1_False_resize, 1);
  with config_select_8 select c_32_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "00" => c_32 <= c_32_31_5_False_shift;
        when "01" => c_32 <= c_32_26_0_False_shift;
        when others => c_32 <= c_32_29_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 33 and associated fundamentals [[1020], [13], [184]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 34 and associated fundamentals [[1020], [13], [184]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'add' in stage 9 with id 35 and associated fundamentals [[1022], [429], [521]]
  inst_adder_node_35: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
      w_o => 26,
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
  -- node of type 'register' in stage 8 with id 36 and associated fundamentals [[330], [13], [184]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 37 and associated fundamentals [[330], [13], [184]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 38 and associated fundamentals [[2640], [429], [521]]
  c_38_35_0_False_resize <= resize(c_35, 28);
  c_38_35_0_False_shift <= shift_left(c_38_35_0_False_resize, 0);
  c_38_37_3_False_resize <= resize(c_37, 28);
  c_38_37_3_False_shift <= shift_left(c_38_37_3_False_resize, 3);
  with config_select_10 select c_38_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "0" => c_38 <= c_38_35_0_False_shift;
        when others => c_38 <= c_38_37_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 39 and associated fundamentals [[33], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 40 and associated fundamentals [[33], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 41 and associated fundamentals [[33], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 42 and associated fundamentals [[33], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 43 and associated fundamentals [[-896], [13], [31]]
  c_43_42_0_False_resize <= resize(c_42, 26);
  c_43_42_0_False_shift <= shift_left(c_43_42_0_False_resize, 0);
  c_43_31_0_False_resize <= resize(c_31, 26);
  c_43_31_0_False_shift <= shift_left(c_43_31_0_False_resize, 0);
  c_43_26_1_False_resize <= resize(c_26, 26);
  c_43_26_1_False_shift <= shift_left(c_43_26_1_False_resize, 1);
  with config_select_8 select c_43_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "00" => c_43 <= c_43_42_0_False_shift;
        when "01" => c_43 <= c_43_31_0_False_shift;
        when others => c_43 <= c_43_26_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 44 and associated fundamentals [[-896], [13], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 45 and associated fundamentals [[-896], [13], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'add' in stage 11 with id 46 and associated fundamentals [[848], [455], [583]]
  inst_adder_node_46: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 26,
      w_o => 26,
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
      x_i => c_38,
      y_i => c_45,
      z_o => c_46_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_46_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 47 and associated fundamentals [[-448], [353], [337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 48 and associated fundamentals [[-448], [353], [337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 49 and associated fundamentals [[-448], [353], [337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 50 and associated fundamentals [[-448], [353], [337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 51 and associated fundamentals [[848], [455], [337]]
  c_51_46_0_False_resize <= c_46;
  c_51_46_0_False_shift <= shift_left(c_51_46_0_False_resize, 0);
  c_51_50_0_False_resize <= resize(c_50, 26);
  c_51_50_0_False_shift <= shift_left(c_51_50_0_False_resize, 0);
  with config_select_12 select c_51_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_51_sel is
        when "0" => c_51 <= c_51_46_0_False_shift;
        when others => c_51 <= c_51_50_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 52 and associated fundamentals [[255], [62], [62]]
  c_52_11_1_False_resize <= resize(c_11, 24);
  c_52_11_1_False_shift <= shift_left(c_52_11_1_False_resize, 1);
  c_52_6_0_False_resize <= c_6;
  c_52_6_0_False_shift <= shift_left(c_52_6_0_False_resize, 0);
  with config_select_4 select c_52_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_52_sel is
        when "0" => c_52 <= c_52_11_1_False_shift;
        when others => c_52 <= c_52_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 53 and associated fundamentals [[255], [62], [62]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 54 and associated fundamentals [[255], [62], [62]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 55 and associated fundamentals [[255], [62], [62]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 56 and associated fundamentals [[255], [62], [62]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 57 and associated fundamentals [[255], [62], [62]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 58 and associated fundamentals [[255], [62], [62]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 59 and associated fundamentals [[255], [62], [62]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 60 and associated fundamentals [[255], [62], [62]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 13 with id 61 and associated fundamentals [[338], [331], [461]]
  with config_select_13 select c_61_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_61: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
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
      sub_i => c_61_sub_sel,
      x_i => c_51,
      y_i => c_60,
      z_o => c_61_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_61_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 62 and associated fundamentals [[33], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 63 and associated fundamentals [[33], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 64 and associated fundamentals [[33], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 65 and associated fundamentals [[33], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 66 and associated fundamentals [[33], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 67 and associated fundamentals [[33], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 68 and associated fundamentals [[-448], [353], [337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 69 and associated fundamentals [[-448], [353], [337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 14 with id 70 and associated fundamentals [[-448], [62], [461]]
  c_70_69_0_False_resize <= c_69;
  c_70_69_0_False_shift <= shift_left(c_70_69_0_False_resize, 0);
  c_70_67_1_False_resize <= resize(c_67, 25);
  c_70_67_1_False_shift <= shift_left(c_70_67_1_False_resize, 1);
  c_70_61_0_False_resize <= c_61;
  c_70_61_0_False_shift <= shift_left(c_70_61_0_False_resize, 0);
  with config_select_14 select c_70_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_70_sel is
        when "00" => c_70 <= c_70_69_0_False_shift;
        when "01" => c_70 <= c_70_67_1_False_shift;
        when others => c_70 <= c_70_61_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 71 and associated fundamentals [[255], [3], [-58]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 72 and associated fundamentals [[255], [3], [-58]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 73 and associated fundamentals [[255], [3], [-58]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_72 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 74 and associated fundamentals [[255], [3], [-58]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_73 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 75 and associated fundamentals [[1020], [429], [-232]]
  c_75_74_2_False_resize <= resize(c_74, 26);
  c_75_74_2_False_shift <= shift_left(c_75_74_2_False_resize, 2);
  c_75_35_0_False_resize <= c_35;
  c_75_35_0_False_shift <= shift_left(c_75_35_0_False_resize, 0);
  with config_select_10 select c_75_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_75_sel is
        when "0" => c_75 <= c_75_74_2_False_shift;
        when others => c_75 <= c_75_35_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 76 and associated fundamentals [[1020], [429], [-232]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 77 and associated fundamentals [[1020], [429], [-232]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 78 and associated fundamentals [[1020], [429], [-232]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 79 and associated fundamentals [[1020], [429], [-232]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 15 with id 80 and associated fundamentals [[572], [491], [693]]
  with config_select_15 select c_80_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_80: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 26,
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
      sub_i => c_80_sub_sel,
      x_i => c_70,
      y_i => c_79,
      z_o => c_80_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_80_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 81 and associated fundamentals [[255], [706], [337]]
  c_81_26_0_False_resize <= resize(c_26, 26);
  c_81_26_0_False_shift <= shift_left(c_81_26_0_False_resize, 0);
  c_81_26_1_False_resize <= resize(c_26, 26);
  c_81_26_1_False_shift <= shift_left(c_81_26_1_False_resize, 1);
  c_81_72_0_False_resize <= resize(c_72, 26);
  c_81_72_0_False_shift <= shift_left(c_81_72_0_False_resize, 0);
  with config_select_8 select c_81_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_81_sel is
        when "00" => c_81 <= c_81_26_0_False_shift;
        when "01" => c_81 <= c_81_26_1_False_shift;
        when others => c_81 <= c_81_72_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 82 and associated fundamentals [[848], [455], [583]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 83 and associated fundamentals [[848], [455], [583]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_82 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 14 with id 84 and associated fundamentals [[848], [662], [583]]
  c_84_83_0_False_resize <= c_83;
  c_84_83_0_False_shift <= shift_left(c_84_83_0_False_resize, 0);
  c_84_61_1_False_resize <= resize(c_61, 26);
  c_84_61_1_False_shift <= shift_left(c_84_61_1_False_resize, 1);
  with config_select_14 select c_84_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_84_sel is
        when "0" => c_84 <= c_84_83_0_False_shift;
        when others => c_84 <= c_84_61_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 85 and associated fundamentals [[338], [331], [461]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 86 and associated fundamentals [[338], [331], [461]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_85 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 16 with id 87 and associated fundamentals [[338], [491], [461]]
  c_87_86_0_False_resize <= c_86;
  c_87_86_0_False_shift <= shift_left(c_87_86_0_False_resize, 0);
  c_87_80_0_False_resize <= c_80(24 downto 0);
  c_87_80_0_False_shift <= shift_left(c_87_80_0_False_resize, 0);
  with config_select_16 select c_87_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_87_sel is
        when "0" => c_87 <= c_87_86_0_False_shift;
        when others => c_87 <= c_87_80_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 88 and associated fundamentals [[848], [455], [583]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_83 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 89 and associated fundamentals [[848], [455], [583]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_88 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 16 with id 90 and associated fundamentals [[572], [455], [693]]
  c_90_80_0_False_resize <= c_80;
  c_90_80_0_False_shift <= shift_left(c_90_80_0_False_resize, 0);
  c_90_89_0_False_resize <= c_89;
  c_90_89_0_False_shift <= shift_left(c_90_89_0_False_resize, 0);
  with config_select_16 select c_90_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_90_sel is
        when "0" => c_90 <= c_90_80_0_False_shift;
        when others => c_90 <= c_90_89_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 91 and associated fundamentals [[255], [706], [337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_81 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 92 and associated fundamentals [[255], [706], [337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 93 and associated fundamentals [[255], [706], [337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_92 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 94 and associated fundamentals [[255], [706], [337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_93 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 95 and associated fundamentals [[255], [706], [337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_94 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 96 and associated fundamentals [[255], [706], [337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_95 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 97 and associated fundamentals [[255], [706], [337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_96 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 98 and associated fundamentals [[255], [706], [337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_97 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 99 and associated fundamentals [[255], [706], [337]]
  c_99_resize <= c_98;
  c_99 <= shift_left(c_99_resize, 0);
  -- node of type 'register' in stage 15 with id 100 and associated fundamentals [[848], [662], [583]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_84 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 101 and associated fundamentals [[848], [662], [583]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_100 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 102 and associated fundamentals [[848], [662], [583]]
  c_102_resize <= c_101;
  c_102 <= shift_left(c_102_resize, 0);
  -- node of type 'register' in stage 10 with id 103 and associated fundamentals [[1022], [429], [521]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 104 and associated fundamentals [[1022], [429], [521]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_103 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 105 and associated fundamentals [[1022], [429], [521]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_104 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 106 and associated fundamentals [[1022], [429], [521]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_105 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 107 and associated fundamentals [[1022], [429], [521]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_106 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 108 and associated fundamentals [[1022], [429], [521]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_108 <= c_107 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 109 and associated fundamentals [[1022], [429], [521]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_109 <= c_108 & "";
    end if;
  end process;
  -- node of type 'output' in stage 16 with id 110 and associated fundamentals [[1022], [429], [521]]
  c_110_resize <= c_109;
  c_110 <= shift_left(c_110_resize, 0);
  -- node of type 'output' in stage 16 with id 111 and associated fundamentals [[338], [491], [461]]
  c_111_resize <= c_87;
  c_111 <= shift_left(c_111_resize, 0);
  -- node of type 'output' in stage 16 with id 112 and associated fundamentals [[572], [455], [693]]
  c_112_resize <= c_90;
  c_112 <= shift_left(c_112_resize, 0);
end architecture;
