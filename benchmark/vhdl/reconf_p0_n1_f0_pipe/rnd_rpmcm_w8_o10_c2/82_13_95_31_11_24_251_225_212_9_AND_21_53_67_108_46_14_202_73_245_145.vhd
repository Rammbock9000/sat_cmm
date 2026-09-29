library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(22 downto 0);
    y_1: out std_logic_vector(21 downto 0);
    y_2: out std_logic_vector(22 downto 0);
    y_3: out std_logic_vector(22 downto 0);
    y_4: out std_logic_vector(21 downto 0);
    y_5: out std_logic_vector(20 downto 0);
    y_6: out std_logic_vector(23 downto 0);
    y_7: out std_logic_vector(23 downto 0);
    y_8: out std_logic_vector(23 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_0_4_False_resize: signed(19 downto 0);
  signal c_1_0_4_False_shift: signed(19 downto 0);
  signal c_1_0_0_False_resize: signed(19 downto 0);
  signal c_1_0_0_False_shift: signed(19 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(19 downto 0);
  signal c_3_i1_resize: signed(19 downto 0);
  signal c_3_i0_shift: signed(19 downto 0);
  signal c_3_i1_shift: signed(19 downto 0);
  signal c_3_arith: signed(19 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_5: signed(19 downto 0);
  signal c_5_4_4_False_resize: signed(19 downto 0);
  signal c_5_4_4_False_shift: signed(19 downto 0);
  signal c_5_3_0_False_resize: signed(19 downto 0);
  signal c_5_3_0_False_shift: signed(19 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_7: signed(20 downto 0);
  signal c_7_i0_resize: signed(20 downto 0);
  signal c_7_i1_resize: signed(20 downto 0);
  signal c_7_i0_shift: signed(20 downto 0);
  signal c_7_i1_shift: signed(20 downto 0);
  signal c_7_arith: signed(20 downto 0);
  signal c_7_oshift: signed(20 downto 0);
  signal c_8: signed(19 downto 0);
  signal c_9: signed(19 downto 0);
  signal c_10: signed(20 downto 0);
  signal c_10_7_0_False_resize: signed(20 downto 0);
  signal c_10_7_0_False_shift: signed(20 downto 0);
  signal c_10_9_1_False_resize: signed(20 downto 0);
  signal c_10_9_1_False_shift: signed(20 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(15 downto 0);
  signal c_12: signed(15 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_13_i0_resize: signed(21 downto 0);
  signal c_13_i1_resize: signed(21 downto 0);
  signal c_13_i0_shift: signed(21 downto 0);
  signal c_13_i1_shift: signed(21 downto 0);
  signal c_13_arith: signed(21 downto 0);
  signal c_13_oshift: signed(21 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(17 downto 0);
  signal c_14_0_2_False_resize: signed(17 downto 0);
  signal c_14_0_2_False_shift: signed(17 downto 0);
  signal c_14_0_0_False_resize: signed(17 downto 0);
  signal c_14_0_0_False_shift: signed(17 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(17 downto 0);
  signal c_16: signed(21 downto 0);
  signal c_16_i0_resize: signed(21 downto 0);
  signal c_16_i1_resize: signed(21 downto 0);
  signal c_16_i0_shift: signed(21 downto 0);
  signal c_16_i1_shift: signed(21 downto 0);
  signal c_16_arith: signed(21 downto 0);
  signal c_16_oshift: signed(21 downto 0);
  signal c_17: signed(21 downto 0);
  signal c_18: signed(21 downto 0);
  signal c_19: signed(21 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_i0_resize: signed(23 downto 0);
  signal c_20_i1_resize: signed(23 downto 0);
  signal c_20_i0_shift: signed(23 downto 0);
  signal c_20_i1_shift: signed(23 downto 0);
  signal c_20_arith: signed(23 downto 0);
  signal c_20_oshift: signed(23 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(21 downto 0);
  signal c_21_13_1_False_resize: signed(21 downto 0);
  signal c_21_13_1_False_shift: signed(21 downto 0);
  signal c_21_13_0_False_resize: signed(21 downto 0);
  signal c_21_13_0_False_shift: signed(21 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_22_i0_resize: signed(22 downto 0);
  signal c_22_i1_resize: signed(22 downto 0);
  signal c_22_i0_shift: signed(22 downto 0);
  signal c_22_i1_shift: signed(22 downto 0);
  signal c_22_arith: signed(22 downto 0);
  signal c_22_oshift: signed(22 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_6_8_False_resize: signed(23 downto 0);
  signal c_23_6_8_False_shift: signed(23 downto 0);
  signal c_23_16_0_False_resize: signed(23 downto 0);
  signal c_23_16_0_False_shift: signed(23 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_i0_resize: signed(23 downto 0);
  signal c_24_i1_resize: signed(23 downto 0);
  signal c_24_i0_shift: signed(23 downto 0);
  signal c_24_i1_shift: signed(23 downto 0);
  signal c_24_arith: signed(23 downto 0);
  signal c_24_oshift: signed(23 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(21 downto 0);
  signal c_25_13_0_False_resize: signed(21 downto 0);
  signal c_25_13_0_False_shift: signed(21 downto 0);
  signal c_25_19_0_False_resize: signed(21 downto 0);
  signal c_25_19_0_False_shift: signed(21 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(21 downto 0);
  signal c_27: signed(22 downto 0);
  signal c_27_i0_resize: signed(22 downto 0);
  signal c_27_i1_resize: signed(22 downto 0);
  signal c_27_i0_shift: signed(22 downto 0);
  signal c_27_i1_shift: signed(22 downto 0);
  signal c_27_arith: signed(22 downto 0);
  signal c_27_oshift: signed(22 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_i0_resize: signed(23 downto 0);
  signal c_28_i1_resize: signed(23 downto 0);
  signal c_28_i0_shift: signed(23 downto 0);
  signal c_28_i1_shift: signed(23 downto 0);
  signal c_28_arith: signed(23 downto 0);
  signal c_28_oshift: signed(23 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(23 downto 0);
  signal c_29_27_0_False_resize: signed(23 downto 0);
  signal c_29_27_0_False_shift: signed(23 downto 0);
  signal c_29_27_1_False_resize: signed(23 downto 0);
  signal c_29_27_1_False_shift: signed(23 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(19 downto 0);
  signal c_31: signed(19 downto 0);
  signal c_32: signed(19 downto 0);
  signal c_33: signed(19 downto 0);
  signal c_34: signed(19 downto 0);
  signal c_35: signed(19 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_i0_resize: signed(23 downto 0);
  signal c_36_i1_resize: signed(23 downto 0);
  signal c_36_i0_shift: signed(23 downto 0);
  signal c_36_i1_shift: signed(23 downto 0);
  signal c_36_arith: signed(23 downto 0);
  signal c_36_oshift: signed(23 downto 0);
  signal c_37: signed(22 downto 0);
  signal c_37_7_2_False_resize: signed(22 downto 0);
  signal c_37_7_2_False_shift: signed(22 downto 0);
  signal c_37_7_0_False_resize: signed(22 downto 0);
  signal c_37_7_0_False_shift: signed(22 downto 0);
  signal c_37_sel: std_logic_vector(0 downto 0);
  signal c_38: signed(20 downto 0);
  signal c_38_3_3_False_resize: signed(20 downto 0);
  signal c_38_3_3_False_shift: signed(20 downto 0);
  signal c_38_3_0_False_resize: signed(20 downto 0);
  signal c_38_3_0_False_shift: signed(20 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(22 downto 0);
  signal c_40: signed(22 downto 0);
  signal c_41: signed(22 downto 0);
  signal c_41_resize: signed(22 downto 0);
  signal c_42: signed(21 downto 0);
  signal c_43: signed(21 downto 0);
  signal c_44: signed(21 downto 0);
  signal c_45: signed(21 downto 0);
  signal c_46: signed(21 downto 0);
  signal c_47: signed(21 downto 0);
  signal c_47_resize: signed(21 downto 0);
  signal c_48: signed(22 downto 0);
  signal c_49: signed(22 downto 0);
  signal c_50: signed(22 downto 0);
  signal c_51: signed(22 downto 0);
  signal c_51_resize: signed(22 downto 0);
  signal c_52: signed(22 downto 0);
  signal c_53: signed(22 downto 0);
  signal c_54: signed(22 downto 0);
  signal c_55: signed(22 downto 0);
  signal c_56: signed(22 downto 0);
  signal c_57: signed(22 downto 0);
  signal c_58: signed(22 downto 0);
  signal c_58_resize: signed(22 downto 0);
  signal c_59: signed(21 downto 0);
  signal c_60: signed(21 downto 0);
  signal c_61: signed(21 downto 0);
  signal c_62: signed(21 downto 0);
  signal c_63: signed(21 downto 0);
  signal c_64: signed(21 downto 0);
  signal c_64_resize: signed(21 downto 0);
  signal c_65: signed(20 downto 0);
  signal c_66: signed(20 downto 0);
  signal c_67: signed(20 downto 0);
  signal c_68: signed(20 downto 0);
  signal c_69: signed(20 downto 0);
  signal c_70: signed(20 downto 0);
  signal c_71: signed(20 downto 0);
  signal c_72: signed(20 downto 0);
  signal c_73: signed(20 downto 0);
  signal c_73_resize: signed(20 downto 0);
  signal c_74: signed(23 downto 0);
  signal c_75: signed(23 downto 0);
  signal c_76: signed(23 downto 0);
  signal c_77: signed(23 downto 0);
  signal c_78: signed(23 downto 0);
  signal c_79: signed(23 downto 0);
  signal c_80: signed(23 downto 0);
  signal c_80_resize: signed(23 downto 0);
  signal c_81: signed(23 downto 0);
  signal c_82: signed(23 downto 0);
  signal c_83: signed(23 downto 0);
  signal c_84: signed(23 downto 0);
  signal c_85: signed(23 downto 0);
  signal c_86: signed(23 downto 0);
  signal c_87: signed(23 downto 0);
  signal c_87_resize: signed(23 downto 0);
  signal c_88: signed(23 downto 0);
  signal c_88_resize: signed(23 downto 0);
  signal c_89: signed(23 downto 0);
  signal c_90: signed(23 downto 0);
  signal c_91: signed(23 downto 0);
  signal c_92: signed(23 downto 0);
  signal c_93: signed(23 downto 0);
  signal c_93_resize: signed(23 downto 0);
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
  -- output node 0 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 1 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_47);
    end if;
  end process;
  -- output node 2 with id 51
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_51);
    end if;
  end process;
  -- output node 3 with id 58
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_58);
    end if;
  end process;
  -- output node 4 with id 64
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_64);
    end if;
  end process;
  -- output node 5 with id 73
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_73);
    end if;
  end process;
  -- output node 6 with id 80
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_80);
    end if;
  end process;
  -- output node 7 with id 87
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_87);
    end if;
  end process;
  -- output node 8 with id 88
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_88);
    end if;
  end process;
  -- output node 9 with id 93
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_93);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [16]]
  c_1_0_4_False_resize <= resize(c_0, 20);
  c_1_0_4_False_shift <= shift_left(c_1_0_4_False_resize, 4);
  c_1_0_0_False_resize <= resize(c_0, 20);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  with config_select_1 select c_1_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_4_False_shift;
        when others => c_1 <= c_1_0_0_False_shift;
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
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[3], [14]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 16,
      w_o => 20,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[16], [14]]
  c_5_4_4_False_resize <= resize(c_4, 20);
  c_5_4_4_False_shift <= shift_left(c_5_4_4_False_resize, 4);
  c_5_3_0_False_resize <= c_3;
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  with config_select_3 select c_5_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_4_4_False_shift;
        when others => c_5 <= c_5_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 6 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_4 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 7 and associated fundamentals [[31], [27]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 16,
      w_o => 21,
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
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[3], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 9 and associated fundamentals [[3], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 10 and associated fundamentals [[6], [27]]
  c_10_7_0_False_resize <= c_7;
  c_10_7_0_False_shift <= shift_left(c_10_7_0_False_resize, 0);
  c_10_9_1_False_resize <= resize(c_9, 21);
  c_10_9_1_False_shift <= shift_left(c_10_9_1_False_resize, 1);
  with config_select_5 select c_10_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_7_0_False_shift;
        when others => c_10 <= c_10_9_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 12 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 13 and associated fundamentals [[13], [53]]
  with config_select_6 select c_13_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_13: entity work.adder_node
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
      sub_i => c_13_sub_sel,
      x_i => c_10,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 14 and associated fundamentals [[1], [4]]
  c_14_0_2_False_resize <= resize(c_0, 18);
  c_14_0_2_False_shift <= shift_left(c_14_0_2_False_resize, 2);
  c_14_0_0_False_resize <= resize(c_0, 18);
  c_14_0_0_False_shift <= shift_left(c_14_0_0_False_resize, 0);
  with config_select_1 select c_14_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_0_2_False_shift;
        when others => c_14 <= c_14_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 15 and associated fundamentals [[1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 16 and associated fundamentals [[11], [46]]
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 18,
      w_o => 22,
      s_x_i => 0,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_3,
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 17 and associated fundamentals [[11], [46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[11], [46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 19 and associated fundamentals [[11], [46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 20 and associated fundamentals [[9], [145]]
  with config_select_7 select c_20_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_20_sub_sel,
      x_i => c_19,
      y_i => c_13,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 21 and associated fundamentals [[26], [53]]
  c_21_13_1_False_resize <= c_13;
  c_21_13_1_False_shift <= shift_left(c_21_13_1_False_resize, 1);
  c_21_13_0_False_resize <= c_13;
  c_21_13_0_False_shift <= shift_left(c_21_13_0_False_resize, 0);
  with config_select_7 select c_21_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_13_1_False_shift;
        when others => c_21 <= c_21_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 8 with id 22 and associated fundamentals [[-95], [-67]]
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
      w_o => 23,
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
      x_i => c_20,
      y_i => c_21,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 23 and associated fundamentals [[256], [46]]
  c_23_6_8_False_resize <= resize(c_6, 24);
  c_23_6_8_False_shift <= shift_left(c_23_6_8_False_resize, 8);
  c_23_16_0_False_resize <= resize(c_16, 24);
  c_23_16_0_False_shift <= shift_left(c_23_16_0_False_resize, 0);
  with config_select_4 select c_23_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_6_8_False_shift;
        when others => c_23 <= c_23_16_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 24 and associated fundamentals [[225], [73]]
  with config_select_5 select c_24_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 21,
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
      sub_i => c_24_sub_sel,
      x_i => c_23,
      y_i => c_7,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 25 and associated fundamentals [[13], [46]]
  c_25_13_0_False_resize <= c_13;
  c_25_13_0_False_shift <= shift_left(c_25_13_0_False_resize, 0);
  c_25_19_0_False_resize <= c_19;
  c_25_19_0_False_shift <= shift_left(c_25_19_0_False_resize, 0);
  with config_select_7 select c_25_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_13_0_False_shift;
        when others => c_25 <= c_25_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 26 and associated fundamentals [[13], [46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'add' in stage 9 with id 27 and associated fundamentals [[-82], [-21]]
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
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
  -- node of type 'add_sub' in stage 5 with id 28 and associated fundamentals [[251], [202]]
  with config_select_5 select c_28_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 20,
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
      sub_i => c_28_sub_sel,
      x_i => c_7,
      y_i => c_9,
      z_o => c_28_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_28_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 29 and associated fundamentals [[-164], [-21]]
  c_29_27_0_False_resize <= resize(c_27, 24);
  c_29_27_0_False_shift <= shift_left(c_29_27_0_False_resize, 0);
  c_29_27_1_False_resize <= resize(c_27, 24);
  c_29_27_1_False_shift <= shift_left(c_29_27_1_False_resize, 1);
  with config_select_10 select c_29_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_27_0_False_shift;
        when others => c_29 <= c_29_27_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 30 and associated fundamentals [[3], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 31 and associated fundamentals [[3], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 32 and associated fundamentals [[3], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 33 and associated fundamentals [[3], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 34 and associated fundamentals [[3], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 35 and associated fundamentals [[3], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 11 with id 36 and associated fundamentals [[-212], [-245]]
  inst_adder_node_36: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 20,
      w_o => 24,
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
      x_i => c_29,
      y_i => c_35,
      z_o => c_36_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_36_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 37 and associated fundamentals [[31], [108]]
  c_37_7_2_False_resize <= resize(c_7, 23);
  c_37_7_2_False_shift <= shift_left(c_37_7_2_False_resize, 2);
  c_37_7_0_False_resize <= resize(c_7, 23);
  c_37_7_0_False_shift <= shift_left(c_37_7_0_False_resize, 0);
  with config_select_5 select c_37_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "0" => c_37 <= c_37_7_2_False_shift;
        when others => c_37 <= c_37_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 38 and associated fundamentals [[24], [14]]
  c_38_3_3_False_resize <= resize(c_3, 21);
  c_38_3_3_False_shift <= shift_left(c_38_3_3_False_resize, 3);
  c_38_3_0_False_resize <= resize(c_3, 21);
  c_38_3_0_False_shift <= shift_left(c_38_3_0_False_resize, 0);
  with config_select_3 select c_38_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "0" => c_38 <= c_38_3_3_False_shift;
        when others => c_38 <= c_38_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 39 and associated fundamentals [[-82], [-21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 40 and associated fundamentals [[-82], [-21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 41 and associated fundamentals [[82], [21]]
  c_41_resize <= c_40;
  c_41 <= -shift_left(c_41_resize, 0);
  -- node of type 'register' in stage 7 with id 42 and associated fundamentals [[13], [53]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 43 and associated fundamentals [[13], [53]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 44 and associated fundamentals [[13], [53]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 45 and associated fundamentals [[13], [53]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 46 and associated fundamentals [[13], [53]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 47 and associated fundamentals [[13], [53]]
  c_47_resize <= c_46;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'register' in stage 9 with id 48 and associated fundamentals [[-95], [-67]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 49 and associated fundamentals [[-95], [-67]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 50 and associated fundamentals [[-95], [-67]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 51 and associated fundamentals [[95], [67]]
  c_51_resize <= c_50;
  c_51 <= -shift_left(c_51_resize, 0);
  -- node of type 'register' in stage 6 with id 52 and associated fundamentals [[31], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 53 and associated fundamentals [[31], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 54 and associated fundamentals [[31], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 55 and associated fundamentals [[31], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 56 and associated fundamentals [[31], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 57 and associated fundamentals [[31], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 58 and associated fundamentals [[31], [108]]
  c_58_resize <= c_57;
  c_58 <= shift_left(c_58_resize, 0);
  -- node of type 'register' in stage 7 with id 59 and associated fundamentals [[11], [46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 60 and associated fundamentals [[11], [46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 61 and associated fundamentals [[11], [46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 62 and associated fundamentals [[11], [46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 63 and associated fundamentals [[11], [46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 64 and associated fundamentals [[11], [46]]
  c_64_resize <= c_63;
  c_64 <= shift_left(c_64_resize, 0);
  -- node of type 'register' in stage 4 with id 65 and associated fundamentals [[24], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 66 and associated fundamentals [[24], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 67 and associated fundamentals [[24], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 68 and associated fundamentals [[24], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 69 and associated fundamentals [[24], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 70 and associated fundamentals [[24], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 71 and associated fundamentals [[24], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 72 and associated fundamentals [[24], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 73 and associated fundamentals [[24], [14]]
  c_73_resize <= c_72;
  c_73 <= shift_left(c_73_resize, 0);
  -- node of type 'register' in stage 6 with id 74 and associated fundamentals [[251], [202]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 75 and associated fundamentals [[251], [202]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 76 and associated fundamentals [[251], [202]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 77 and associated fundamentals [[251], [202]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 78 and associated fundamentals [[251], [202]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 79 and associated fundamentals [[251], [202]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 80 and associated fundamentals [[251], [202]]
  c_80_resize <= c_79;
  c_80 <= shift_left(c_80_resize, 0);
  -- node of type 'register' in stage 6 with id 81 and associated fundamentals [[225], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 82 and associated fundamentals [[225], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_81 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 83 and associated fundamentals [[225], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_82 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 84 and associated fundamentals [[225], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_83 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 85 and associated fundamentals [[225], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_84 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 86 and associated fundamentals [[225], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_85 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 87 and associated fundamentals [[225], [73]]
  c_87_resize <= c_86;
  c_87 <= shift_left(c_87_resize, 0);
  -- node of type 'output' in stage 11 with id 88 and associated fundamentals [[212], [245]]
  c_88_resize <= c_36;
  c_88 <= -shift_left(c_88_resize, 0);
  -- node of type 'register' in stage 8 with id 89 and associated fundamentals [[9], [145]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 90 and associated fundamentals [[9], [145]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_89 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 91 and associated fundamentals [[9], [145]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_90 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 92 and associated fundamentals [[9], [145]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 93 and associated fundamentals [[9], [145]]
  c_93_resize <= c_92;
  c_93 <= shift_left(c_93_resize, 0);
end architecture;
