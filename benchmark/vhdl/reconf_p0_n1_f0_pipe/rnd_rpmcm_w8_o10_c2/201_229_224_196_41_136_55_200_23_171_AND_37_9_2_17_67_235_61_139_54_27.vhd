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
    y_4: out std_logic_vector(22 downto 0);
    y_5: out std_logic_vector(23 downto 0);
    y_6: out std_logic_vector(21 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(20 downto 0);
  signal c_1_i0_resize: signed(20 downto 0);
  signal c_1_i1_resize: signed(20 downto 0);
  signal c_1_i0_shift: signed(20 downto 0);
  signal c_1_i1_shift: signed(20 downto 0);
  signal c_1_arith: signed(20 downto 0);
  signal c_1_oshift: signed(20 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(20 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(21 downto 0);
  signal c_4_i0_resize: signed(21 downto 0);
  signal c_4_i1_resize: signed(21 downto 0);
  signal c_4_i0_shift: signed(21 downto 0);
  signal c_4_i1_shift: signed(21 downto 0);
  signal c_4_arith: signed(21 downto 0);
  signal c_4_oshift: signed(21 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_5_3_0_False_resize: signed(21 downto 0);
  signal c_5_3_0_False_shift: signed(21 downto 0);
  signal c_5_3_1_False_resize: signed(21 downto 0);
  signal c_5_3_1_False_shift: signed(21 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_7: signed(15 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_8_i0_resize: signed(23 downto 0);
  signal c_8_i1_resize: signed(23 downto 0);
  signal c_8_i0_shift: signed(23 downto 0);
  signal c_8_i1_shift: signed(23 downto 0);
  signal c_8_arith: signed(23 downto 0);
  signal c_8_oshift: signed(23 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(15 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_9_0_False_resize: signed(22 downto 0);
  signal c_10_9_0_False_shift: signed(22 downto 0);
  signal c_10_8_1_False_resize: signed(22 downto 0);
  signal c_10_8_1_False_shift: signed(22 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(20 downto 0);
  signal c_12: signed(20 downto 0);
  signal c_13: signed(20 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_i0_resize: signed(23 downto 0);
  signal c_14_i1_resize: signed(23 downto 0);
  signal c_14_i0_shift: signed(23 downto 0);
  signal c_14_i1_shift: signed(23 downto 0);
  signal c_14_arith: signed(23 downto 0);
  signal c_14_oshift: signed(23 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(19 downto 0);
  signal c_15_6_2_False_resize: signed(19 downto 0);
  signal c_15_6_2_False_shift: signed(19 downto 0);
  signal c_15_3_0_False_resize: signed(19 downto 0);
  signal c_15_3_0_False_shift: signed(19 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(21 downto 0);
  signal c_17: signed(22 downto 0);
  signal c_17_i0_resize: signed(22 downto 0);
  signal c_17_i1_resize: signed(22 downto 0);
  signal c_17_i0_shift: signed(22 downto 0);
  signal c_17_i1_shift: signed(22 downto 0);
  signal c_17_arith: signed(22 downto 0);
  signal c_17_oshift: signed(22 downto 0);
  signal c_18: signed(19 downto 0);
  signal c_18_i0_resize: signed(19 downto 0);
  signal c_18_i1_resize: signed(19 downto 0);
  signal c_18_i0_shift: signed(19 downto 0);
  signal c_18_i1_shift: signed(19 downto 0);
  signal c_18_arith: signed(19 downto 0);
  signal c_18_oshift: signed(19 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(19 downto 0);
  signal c_20: signed(19 downto 0);
  signal c_21: signed(19 downto 0);
  signal c_22: signed(21 downto 0);
  signal c_22_17_0_False_resize: signed(21 downto 0);
  signal c_22_17_0_False_shift: signed(21 downto 0);
  signal c_22_21_0_False_resize: signed(21 downto 0);
  signal c_22_21_0_False_shift: signed(21 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(19 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_i0_resize: signed(23 downto 0);
  signal c_24_i1_resize: signed(23 downto 0);
  signal c_24_i0_shift: signed(23 downto 0);
  signal c_24_i1_shift: signed(23 downto 0);
  signal c_24_arith: signed(23 downto 0);
  signal c_24_oshift: signed(23 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(22 downto 0);
  signal c_25_6_7_False_resize: signed(22 downto 0);
  signal c_25_6_7_False_shift: signed(22 downto 0);
  signal c_25_4_0_False_resize: signed(22 downto 0);
  signal c_25_4_0_False_shift: signed(22 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(22 downto 0);
  signal c_27: signed(21 downto 0);
  signal c_27_i0_resize: signed(21 downto 0);
  signal c_27_i1_resize: signed(21 downto 0);
  signal c_27_i0_shift: signed(21 downto 0);
  signal c_27_i1_shift: signed(21 downto 0);
  signal c_27_arith: signed(21 downto 0);
  signal c_27_oshift: signed(21 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_28_1_2_False_resize: signed(22 downto 0);
  signal c_28_1_2_False_shift: signed(22 downto 0);
  signal c_28_18_0_False_resize: signed(22 downto 0);
  signal c_28_18_0_False_shift: signed(22 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_30: signed(22 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_i0_resize: signed(23 downto 0);
  signal c_31_i1_resize: signed(23 downto 0);
  signal c_31_i0_shift: signed(23 downto 0);
  signal c_31_i1_shift: signed(23 downto 0);
  signal c_31_arith: signed(23 downto 0);
  signal c_31_oshift: signed(23 downto 0);
  signal c_31_sub_sel: std_logic;
  signal c_32: signed(23 downto 0);
  signal c_32_23_0_False_resize: signed(23 downto 0);
  signal c_32_23_0_False_shift: signed(23 downto 0);
  signal c_32_31_0_False_resize: signed(23 downto 0);
  signal c_32_31_0_False_shift: signed(23 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(22 downto 0);
  signal c_33_18_4_False_resize: signed(22 downto 0);
  signal c_33_18_4_False_shift: signed(22 downto 0);
  signal c_33_2_0_False_resize: signed(22 downto 0);
  signal c_33_2_0_False_shift: signed(22 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(20 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_4_2_False_resize: signed(23 downto 0);
  signal c_35_4_2_False_shift: signed(23 downto 0);
  signal c_35_34_0_False_resize: signed(23 downto 0);
  signal c_35_34_0_False_shift: signed(23 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(20 downto 0);
  signal c_37: signed(20 downto 0);
  signal c_38: signed(20 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_38_3_False_resize: signed(23 downto 0);
  signal c_39_38_3_False_shift: signed(23 downto 0);
  signal c_39_31_0_False_resize: signed(23 downto 0);
  signal c_39_31_0_False_shift: signed(23 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(20 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_40_3_False_resize: signed(23 downto 0);
  signal c_41_40_3_False_shift: signed(23 downto 0);
  signal c_41_14_0_False_resize: signed(23 downto 0);
  signal c_41_14_0_False_shift: signed(23 downto 0);
  signal c_41_sel: std_logic_vector(0 downto 0);
  signal c_42: signed(21 downto 0);
  signal c_42_24_1_False_resize: signed(21 downto 0);
  signal c_42_24_1_False_shift: signed(21 downto 0);
  signal c_42_14_0_False_resize: signed(21 downto 0);
  signal c_42_14_0_False_shift: signed(21 downto 0);
  signal c_42_sel: std_logic_vector(0 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_resize: signed(23 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_48_resize: signed(23 downto 0);
  signal c_49: signed(22 downto 0);
  signal c_50: signed(22 downto 0);
  signal c_51: signed(22 downto 0);
  signal c_52: signed(22 downto 0);
  signal c_53: signed(22 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_54_resize: signed(23 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_57: signed(23 downto 0);
  signal c_58: signed(23 downto 0);
  signal c_59: signed(23 downto 0);
  signal c_59_resize: signed(23 downto 0);
  signal c_60: signed(22 downto 0);
  signal c_61: signed(22 downto 0);
  signal c_62: signed(22 downto 0);
  signal c_63: signed(22 downto 0);
  signal c_63_resize: signed(22 downto 0);
  signal c_64: signed(23 downto 0);
  signal c_65: signed(23 downto 0);
  signal c_65_resize: signed(23 downto 0);
  signal c_66: signed(21 downto 0);
  signal c_67: signed(21 downto 0);
  signal c_68: signed(21 downto 0);
  signal c_68_resize: signed(21 downto 0);
  signal c_69: signed(23 downto 0);
  signal c_69_resize: signed(23 downto 0);
  signal c_70: signed(21 downto 0);
  signal c_70_resize: signed(21 downto 0);
  signal c_71: signed(23 downto 0);
  signal c_72: signed(23 downto 0);
  signal c_72_resize: signed(23 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 46
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_46);
    end if;
  end process;
  -- output node 1 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_48);
    end if;
  end process;
  -- output node 2 with id 54
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_54);
    end if;
  end process;
  -- output node 3 with id 59
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_59);
    end if;
  end process;
  -- output node 4 with id 63
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_63);
    end if;
  end process;
  -- output node 5 with id 65
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_65);
    end if;
  end process;
  -- output node 6 with id 68
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_68);
    end if;
  end process;
  -- output node 7 with id 69
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_69);
    end if;
  end process;
  -- output node 8 with id 70
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_70);
    end if;
  end process;
  -- output node 9 with id 72
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_72);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 1 and associated fundamentals [[17], [17]]
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 21,
      s_x_i => 0,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[25], [-9]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
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
  -- node of type 'add' in stage 2 with id 4 and associated fundamentals [[49], [49]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 21,
      w_o => 22,
      s_x_i => 5,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_2,
      y_i => c_1,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[50], [-9]]
  c_5_3_0_False_resize <= resize(c_3, 22);
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  c_5_3_1_False_resize <= resize(c_3, 22);
  c_5_3_1_False_shift <= shift_left(c_5_3_1_False_resize, 1);
  with config_select_3 select c_5_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_3_0_False_shift;
        when others => c_5 <= c_5_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 7 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_6 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 8 and associated fundamentals [[201], [37]]
  with config_select_4 select c_8_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 22,
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
      sub_i => c_8_sub_sel,
      x_i => c_7,
      y_i => c_5,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 9 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_7 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 10 and associated fundamentals [[1], [74]]
  c_10_9_0_False_resize <= resize(c_9, 23);
  c_10_9_0_False_shift <= shift_left(c_10_9_0_False_resize, 0);
  c_10_8_1_False_resize <= c_8(22 downto 0);
  c_10_8_1_False_shift <= shift_left(c_10_8_1_False_resize, 1);
  with config_select_5 select c_10_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_9_0_False_shift;
        when others => c_10 <= c_10_8_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[25], [-9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[25], [-9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 13 and associated fundamentals [[25], [-9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 14 and associated fundamentals [[23], [139]]
  with config_select_6 select c_14_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 21,
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
      sub_i => c_14_sub_sel,
      x_i => c_13,
      y_i => c_10,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[4], [-9]]
  c_15_6_2_False_resize <= resize(c_6, 20);
  c_15_6_2_False_shift <= shift_left(c_15_6_2_False_resize, 2);
  c_15_3_0_False_resize <= c_3(19 downto 0);
  c_15_3_0_False_shift <= shift_left(c_15_3_0_False_resize, 0);
  with config_select_3 select c_15_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_6_2_False_shift;
        when others => c_15 <= c_15_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 16 and associated fundamentals [[49], [49]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_4 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 17 and associated fundamentals [[41], [67]]
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
      w_o => 23,
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
      x_i => c_16,
      y_i => c_15,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 18 and associated fundamentals [[7], [9]]
  with config_select_1 select c_18_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_18: entity work.adder_node
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
      sub_i => c_18_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 19 and associated fundamentals [[7], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 20 and associated fundamentals [[7], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 21 and associated fundamentals [[7], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 22 and associated fundamentals [[41], [9]]
  c_22_17_0_False_resize <= c_17(21 downto 0);
  c_22_17_0_False_shift <= shift_left(c_22_17_0_False_resize, 0);
  c_22_21_0_False_resize <= resize(c_21, 22);
  c_22_21_0_False_shift <= shift_left(c_22_21_0_False_resize, 0);
  with config_select_5 select c_22_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_17_0_False_shift;
        when others => c_22 <= c_22_21_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[7], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_21 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 24 and associated fundamentals [[171], [27]]
  with config_select_6 select c_24_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
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
  -- node of type 'mux' in stage 3 with id 25 and associated fundamentals [[128], [49]]
  c_25_6_7_False_resize <= resize(c_6, 23);
  c_25_6_7_False_shift <= shift_left(c_25_6_7_False_resize, 7);
  c_25_4_0_False_resize <= resize(c_4, 23);
  c_25_4_0_False_shift <= shift_left(c_25_4_0_False_resize, 0);
  with config_select_3 select c_25_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_6_7_False_shift;
        when others => c_25 <= c_25_4_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 26 and associated fundamentals [[128], [49]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 5 with id 27 and associated fundamentals [[55], [61]]
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
      w_o => 22,
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
      x_i => c_26,
      y_i => c_8,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 28 and associated fundamentals [[7], [68]]
  c_28_1_2_False_resize <= resize(c_1, 23);
  c_28_1_2_False_shift <= shift_left(c_28_1_2_False_resize, 2);
  c_28_18_0_False_resize <= resize(c_18, 23);
  c_28_18_0_False_shift <= shift_left(c_28_18_0_False_resize, 0);
  with config_select_2 select c_28_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "0" => c_28 <= c_28_1_2_False_shift;
        when others => c_28 <= c_28_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 29 and associated fundamentals [[7], [68]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 30 and associated fundamentals [[7], [68]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 31 and associated fundamentals [[229], [235]]
  with config_select_5 select c_31_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
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
      sub_i => c_31_sub_sel,
      x_i => c_30,
      y_i => c_8,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 32 and associated fundamentals [[229], [9]]
  c_32_23_0_False_resize <= resize(c_23, 24);
  c_32_23_0_False_shift <= shift_left(c_32_23_0_False_resize, 0);
  c_32_31_0_False_resize <= c_31;
  c_32_31_0_False_shift <= shift_left(c_32_31_0_False_resize, 0);
  with config_select_6 select c_32_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "0" => c_32 <= c_32_23_0_False_shift;
        when others => c_32 <= c_32_31_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 33 and associated fundamentals [[112], [1]]
  c_33_18_4_False_resize <= resize(c_18, 23);
  c_33_18_4_False_shift <= shift_left(c_33_18_4_False_resize, 4);
  c_33_2_0_False_resize <= resize(c_2, 23);
  c_33_2_0_False_shift <= shift_left(c_33_2_0_False_resize, 0);
  with config_select_2 select c_33_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "0" => c_33 <= c_33_18_4_False_shift;
        when others => c_33 <= c_33_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 34 and associated fundamentals [[17], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_1 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 35 and associated fundamentals [[196], [17]]
  c_35_4_2_False_resize <= resize(c_4, 24);
  c_35_4_2_False_shift <= shift_left(c_35_4_2_False_resize, 2);
  c_35_34_0_False_resize <= resize(c_34, 24);
  c_35_34_0_False_shift <= shift_left(c_35_34_0_False_resize, 0);
  with config_select_3 select c_35_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_4_2_False_shift;
        when others => c_35 <= c_35_34_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 36 and associated fundamentals [[17], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 37 and associated fundamentals [[17], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 38 and associated fundamentals [[17], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 39 and associated fundamentals [[136], [235]]
  c_39_38_3_False_resize <= resize(c_38, 24);
  c_39_38_3_False_shift <= shift_left(c_39_38_3_False_resize, 3);
  c_39_31_0_False_resize <= c_31;
  c_39_31_0_False_shift <= shift_left(c_39_31_0_False_resize, 0);
  with config_select_6 select c_39_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "0" => c_39 <= c_39_38_3_False_shift;
        when others => c_39 <= c_39_31_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 40 and associated fundamentals [[25], [-9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_13 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 41 and associated fundamentals [[200], [139]]
  c_41_40_3_False_resize <= resize(c_40, 24);
  c_41_40_3_False_shift <= shift_left(c_41_40_3_False_resize, 3);
  c_41_14_0_False_resize <= c_14;
  c_41_14_0_False_shift <= shift_left(c_41_14_0_False_resize, 0);
  with config_select_7 select c_41_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "0" => c_41 <= c_41_40_3_False_shift;
        when others => c_41 <= c_41_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 42 and associated fundamentals [[23], [54]]
  c_42_24_1_False_resize <= c_24(21 downto 0);
  c_42_24_1_False_shift <= shift_left(c_42_24_1_False_resize, 1);
  c_42_14_0_False_resize <= c_14(21 downto 0);
  c_42_14_0_False_shift <= shift_left(c_42_14_0_False_resize, 0);
  with config_select_7 select c_42_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "0" => c_42 <= c_42_24_1_False_shift;
        when others => c_42 <= c_42_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 43 and associated fundamentals [[201], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 44 and associated fundamentals [[201], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 45 and associated fundamentals [[201], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 46 and associated fundamentals [[201], [37]]
  c_46_resize <= c_45;
  c_46 <= shift_left(c_46_resize, 0);
  -- node of type 'register' in stage 7 with id 47 and associated fundamentals [[229], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_32 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 48 and associated fundamentals [[229], [9]]
  c_48_resize <= c_47;
  c_48 <= shift_left(c_48_resize, 0);
  -- node of type 'register' in stage 3 with id 49 and associated fundamentals [[112], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 50 and associated fundamentals [[112], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 51 and associated fundamentals [[112], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 52 and associated fundamentals [[112], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 53 and associated fundamentals [[112], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 54 and associated fundamentals [[224], [2]]
  c_54_resize <= resize(c_53, 24);
  c_54 <= shift_left(c_54_resize, 1);
  -- node of type 'register' in stage 4 with id 55 and associated fundamentals [[196], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 56 and associated fundamentals [[196], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 57 and associated fundamentals [[196], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 58 and associated fundamentals [[196], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 59 and associated fundamentals [[196], [17]]
  c_59_resize <= c_58;
  c_59 <= shift_left(c_59_resize, 0);
  -- node of type 'register' in stage 5 with id 60 and associated fundamentals [[41], [67]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 61 and associated fundamentals [[41], [67]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 62 and associated fundamentals [[41], [67]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 63 and associated fundamentals [[41], [67]]
  c_63_resize <= c_62;
  c_63 <= shift_left(c_63_resize, 0);
  -- node of type 'register' in stage 7 with id 64 and associated fundamentals [[136], [235]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_39 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 65 and associated fundamentals [[136], [235]]
  c_65_resize <= c_64;
  c_65 <= shift_left(c_65_resize, 0);
  -- node of type 'register' in stage 6 with id 66 and associated fundamentals [[55], [61]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 67 and associated fundamentals [[55], [61]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 68 and associated fundamentals [[55], [61]]
  c_68_resize <= c_67;
  c_68 <= shift_left(c_68_resize, 0);
  -- node of type 'output' in stage 7 with id 69 and associated fundamentals [[200], [139]]
  c_69_resize <= c_41;
  c_69 <= shift_left(c_69_resize, 0);
  -- node of type 'output' in stage 7 with id 70 and associated fundamentals [[23], [54]]
  c_70_resize <= c_42;
  c_70 <= shift_left(c_70_resize, 0);
  -- node of type 'register' in stage 7 with id 71 and associated fundamentals [[171], [27]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_24 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 72 and associated fundamentals [[171], [27]]
  c_72_resize <= c_71;
  c_72 <= shift_left(c_72_resize, 0);
end architecture;
