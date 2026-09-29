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
    y_3: out std_logic_vector(21 downto 0);
    y_4: out std_logic_vector(23 downto 0);
    y_5: out std_logic_vector(22 downto 0);
    y_6: out std_logic_vector(23 downto 0);
    y_7: out std_logic_vector(22 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(16 downto 0);
  signal c_1_0_0_False_resize: signed(16 downto 0);
  signal c_1_0_0_False_shift: signed(16 downto 0);
  signal c_1_0_1_False_resize: signed(16 downto 0);
  signal c_1_0_1_False_shift: signed(16 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_4: signed(17 downto 0);
  signal c_4_i0_resize: signed(17 downto 0);
  signal c_4_i1_resize: signed(17 downto 0);
  signal c_4_i0_shift: signed(17 downto 0);
  signal c_4_i1_shift: signed(17 downto 0);
  signal c_4_arith: signed(17 downto 0);
  signal c_4_oshift: signed(17 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(21 downto 0);
  signal c_6_3_0_False_resize: signed(21 downto 0);
  signal c_6_3_0_False_shift: signed(21 downto 0);
  signal c_6_5_6_False_resize: signed(21 downto 0);
  signal c_6_5_6_False_shift: signed(21 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(17 downto 0);
  signal c_8: signed(17 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_10: signed(18 downto 0);
  signal c_10_4_1_False_resize: signed(18 downto 0);
  signal c_10_4_1_False_shift: signed(18 downto 0);
  signal c_10_2_0_False_resize: signed(18 downto 0);
  signal c_10_2_0_False_shift: signed(18 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(21 downto 0);
  signal c_11_i0_resize: signed(21 downto 0);
  signal c_11_i1_resize: signed(21 downto 0);
  signal c_11_i0_shift: signed(21 downto 0);
  signal c_11_i1_shift: signed(21 downto 0);
  signal c_11_arith: signed(21 downto 0);
  signal c_11_oshift: signed(21 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(21 downto 0);
  signal c_12_i0_resize: signed(21 downto 0);
  signal c_12_i1_resize: signed(21 downto 0);
  signal c_12_i0_shift: signed(21 downto 0);
  signal c_12_i1_shift: signed(21 downto 0);
  signal c_12_arith: signed(21 downto 0);
  signal c_12_oshift: signed(21 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_14_13_0_False_resize: signed(22 downto 0);
  signal c_14_13_0_False_shift: signed(22 downto 0);
  signal c_14_11_0_False_resize: signed(22 downto 0);
  signal c_14_11_0_False_shift: signed(22 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(17 downto 0);
  signal c_16: signed(21 downto 0);
  signal c_16_i0_resize: signed(21 downto 0);
  signal c_16_i1_resize: signed(21 downto 0);
  signal c_16_i0_shift: signed(21 downto 0);
  signal c_16_i1_shift: signed(21 downto 0);
  signal c_16_arith: signed(21 downto 0);
  signal c_16_oshift: signed(21 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(22 downto 0);
  signal c_17_8_1_False_resize: signed(22 downto 0);
  signal c_17_8_1_False_shift: signed(22 downto 0);
  signal c_17_13_0_False_resize: signed(22 downto 0);
  signal c_17_13_0_False_shift: signed(22 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(15 downto 0);
  signal c_19: signed(15 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_20_i0_resize: signed(22 downto 0);
  signal c_20_i1_resize: signed(22 downto 0);
  signal c_20_i0_shift: signed(22 downto 0);
  signal c_20_i1_shift: signed(22 downto 0);
  signal c_20_arith: signed(22 downto 0);
  signal c_20_oshift: signed(22 downto 0);
  signal c_21: signed(21 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_22_12_1_False_resize: signed(22 downto 0);
  signal c_22_12_1_False_shift: signed(22 downto 0);
  signal c_22_21_0_False_resize: signed(22 downto 0);
  signal c_22_21_0_False_shift: signed(22 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_i0_resize: signed(23 downto 0);
  signal c_23_i1_resize: signed(23 downto 0);
  signal c_23_i0_shift: signed(23 downto 0);
  signal c_23_i1_shift: signed(23 downto 0);
  signal c_23_arith: signed(23 downto 0);
  signal c_23_oshift: signed(23 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(21 downto 0);
  signal c_25: signed(21 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_i0_resize: signed(23 downto 0);
  signal c_26_i1_resize: signed(23 downto 0);
  signal c_26_i0_shift: signed(23 downto 0);
  signal c_26_i1_shift: signed(23 downto 0);
  signal c_26_arith: signed(23 downto 0);
  signal c_26_oshift: signed(23 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_i0_resize: signed(23 downto 0);
  signal c_27_i1_resize: signed(23 downto 0);
  signal c_27_i0_shift: signed(23 downto 0);
  signal c_27_i1_shift: signed(23 downto 0);
  signal c_27_arith: signed(23 downto 0);
  signal c_27_oshift: signed(23 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_16_2_False_resize: signed(23 downto 0);
  signal c_30_16_2_False_shift: signed(23 downto 0);
  signal c_30_29_0_False_resize: signed(23 downto 0);
  signal c_30_29_0_False_shift: signed(23 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(22 downto 0);
  signal c_31_13_0_False_resize: signed(22 downto 0);
  signal c_31_13_0_False_shift: signed(22 downto 0);
  signal c_31_8_0_False_resize: signed(22 downto 0);
  signal c_31_8_0_False_shift: signed(22 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(17 downto 0);
  signal c_33: signed(17 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_26_0_False_resize: signed(23 downto 0);
  signal c_34_26_0_False_shift: signed(23 downto 0);
  signal c_34_33_5_False_resize: signed(23 downto 0);
  signal c_34_33_5_False_shift: signed(23 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(22 downto 0);
  signal c_35_3_0_False_resize: signed(22 downto 0);
  signal c_35_3_0_False_shift: signed(22 downto 0);
  signal c_35_3_1_False_resize: signed(22 downto 0);
  signal c_35_3_1_False_shift: signed(22 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(21 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_36_0_False_resize: signed(23 downto 0);
  signal c_37_36_0_False_shift: signed(23 downto 0);
  signal c_37_26_0_False_resize: signed(23 downto 0);
  signal c_37_26_0_False_shift: signed(23 downto 0);
  signal c_37_sel: std_logic_vector(0 downto 0);
  signal c_38: signed(22 downto 0);
  signal c_39: signed(22 downto 0);
  signal c_40: signed(22 downto 0);
  signal c_40_resize: signed(22 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_resize: signed(23 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_resize: signed(23 downto 0);
  signal c_46: signed(21 downto 0);
  signal c_47: signed(21 downto 0);
  signal c_48: signed(21 downto 0);
  signal c_49: signed(21 downto 0);
  signal c_50: signed(21 downto 0);
  signal c_50_resize: signed(21 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_52_resize: signed(23 downto 0);
  signal c_53: signed(22 downto 0);
  signal c_54: signed(22 downto 0);
  signal c_55: signed(22 downto 0);
  signal c_56: signed(22 downto 0);
  signal c_56_resize: signed(22 downto 0);
  signal c_57: signed(23 downto 0);
  signal c_57_resize: signed(23 downto 0);
  signal c_58: signed(22 downto 0);
  signal c_59: signed(22 downto 0);
  signal c_60: signed(22 downto 0);
  signal c_61: signed(22 downto 0);
  signal c_62: signed(22 downto 0);
  signal c_62_resize: signed(22 downto 0);
  signal c_63: signed(23 downto 0);
  signal c_64: signed(23 downto 0);
  signal c_65: signed(23 downto 0);
  signal c_66: signed(23 downto 0);
  signal c_66_resize: signed(23 downto 0);
  signal c_67: signed(23 downto 0);
  signal c_67_resize: signed(23 downto 0);
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
  -- output node 0 with id 40
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_40);
    end if;
  end process;
  -- output node 1 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_42);
    end if;
  end process;
  -- output node 2 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_45);
    end if;
  end process;
  -- output node 3 with id 50
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_50);
    end if;
  end process;
  -- output node 4 with id 52
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_52);
    end if;
  end process;
  -- output node 5 with id 56
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_56);
    end if;
  end process;
  -- output node 6 with id 57
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_57);
    end if;
  end process;
  -- output node 7 with id 62
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_62);
    end if;
  end process;
  -- output node 8 with id 66
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_66);
    end if;
  end process;
  -- output node 9 with id 67
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_67);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[2], [1]]
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "0" when "1",
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
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 3 and associated fundamentals [[33], [17]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 16,
      w_o => 22,
      s_x_i => 4,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
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
  -- node of type 'sub' in stage 1 with id 4 and associated fundamentals [[3], [3]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 18,
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(17 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[33], [64]]
  c_6_3_0_False_resize <= c_3;
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  c_6_5_6_False_resize <= resize(c_5, 22);
  c_6_5_6_False_shift <= shift_left(c_6_5_6_False_resize, 6);
  with config_select_3 select c_6_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_3_0_False_shift;
        when others => c_6 <= c_6_5_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 7 and associated fundamentals [[3], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[3], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_7 & "";
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 9 and associated fundamentals [[69], [131]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 22,
      w_o => 24,
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
      x_i => c_8,
      y_i => c_6,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 10 and associated fundamentals [[1], [6]]
  c_10_4_1_False_resize <= resize(c_4, 19);
  c_10_4_1_False_shift <= shift_left(c_10_4_1_False_resize, 1);
  c_10_2_0_False_resize <= resize(c_2, 19);
  c_10_2_0_False_shift <= shift_left(c_10_2_0_False_resize, 0);
  with config_select_2 select c_10_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_4_1_False_shift;
        when others => c_10 <= c_10_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 11 and associated fundamentals [[31], [38]]
  with config_select_3 select c_11_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 19,
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
      sub_i => c_11_sub_sel,
      x_i => c_5,
      y_i => c_10,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 12 and associated fundamentals [[36], [-14]]
  with config_select_3 select c_12_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 22,
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
      sub_i => c_12_sub_sel,
      x_i => c_7,
      y_i => c_3,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 13 and associated fundamentals [[135], [71]]
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 22,
      w_o => 24,
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
      x_i => c_7,
      y_i => c_3,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 14 and associated fundamentals [[31], [71]]
  c_14_13_0_False_resize <= c_13(22 downto 0);
  c_14_13_0_False_shift <= shift_left(c_14_13_0_False_resize, 0);
  c_14_11_0_False_resize <= resize(c_11, 23);
  c_14_11_0_False_shift <= shift_left(c_14_11_0_False_resize, 0);
  with config_select_4 select c_14_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_13_0_False_shift;
        when others => c_14 <= c_14_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[3], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_8 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 16 and associated fundamentals [[43], [59]]
  with config_select_5 select c_16_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 18,
      w_o => 22,
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
      sub_i => c_16_sub_sel,
      x_i => c_14,
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 17 and associated fundamentals [[6], [71]]
  c_17_8_1_False_resize <= resize(c_8, 23);
  c_17_8_1_False_shift <= shift_left(c_17_8_1_False_resize, 1);
  c_17_13_0_False_resize <= c_13(22 downto 0);
  c_17_13_0_False_shift <= shift_left(c_17_13_0_False_resize, 0);
  with config_select_4 select c_17_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_8_1_False_shift;
        when others => c_17 <= c_17_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 18 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 19 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'add' in stage 5 with id 20 and associated fundamentals [[14], [79]]
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 16,
      w_o => 23,
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
      x_i => c_17,
      y_i => c_19,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 21 and associated fundamentals [[33], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_3 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 22 and associated fundamentals [[72], [17]]
  c_22_12_1_False_resize <= resize(c_12, 23);
  c_22_12_1_False_shift <= shift_left(c_22_12_1_False_resize, 1);
  c_22_21_0_False_resize <= resize(c_21, 23);
  c_22_21_0_False_shift <= shift_left(c_22_21_0_False_resize, 0);
  with config_select_4 select c_22_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_12_1_False_shift;
        when others => c_22 <= c_22_21_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 23 and associated fundamentals [[219], [199]]
  with config_select_5 select c_23_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_23: entity work.adder_node
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
      sub_i => c_23_sub_sel,
      x_i => c_22,
      y_i => c_9,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 24 and associated fundamentals [[36], [-14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 25 and associated fundamentals [[36], [-14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 6 with id 26 and associated fundamentals [[183], [213]]
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
      w_o => 24,
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
      x_i => c_23,
      y_i => c_25,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 6 with id 27 and associated fundamentals [[158], [90]]
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 24,
      s_x_i => 1,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_25,
      y_i => c_16,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 28 and associated fundamentals [[135], [71]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 29 and associated fundamentals [[135], [71]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 30 and associated fundamentals [[135], [236]]
  c_30_16_2_False_resize <= resize(c_16, 24);
  c_30_16_2_False_shift <= shift_left(c_30_16_2_False_resize, 2);
  c_30_29_0_False_resize <= c_29;
  c_30_29_0_False_shift <= shift_left(c_30_29_0_False_resize, 0);
  with config_select_6 select c_30_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "0" => c_30 <= c_30_16_2_False_shift;
        when others => c_30 <= c_30_29_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 31 and associated fundamentals [[3], [71]]
  c_31_13_0_False_resize <= c_13(22 downto 0);
  c_31_13_0_False_shift <= shift_left(c_31_13_0_False_resize, 0);
  c_31_8_0_False_resize <= resize(c_8, 23);
  c_31_8_0_False_shift <= shift_left(c_31_8_0_False_resize, 0);
  with config_select_4 select c_31_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_13_0_False_shift;
        when others => c_31 <= c_31_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 32 and associated fundamentals [[3], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 33 and associated fundamentals [[3], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 34 and associated fundamentals [[183], [96]]
  c_34_26_0_False_resize <= c_26;
  c_34_26_0_False_shift <= shift_left(c_34_26_0_False_resize, 0);
  c_34_33_5_False_resize <= resize(c_33, 24);
  c_34_33_5_False_shift <= shift_left(c_34_33_5_False_resize, 5);
  with config_select_7 select c_34_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_26_0_False_shift;
        when others => c_34 <= c_34_33_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 35 and associated fundamentals [[66], [17]]
  c_35_3_0_False_resize <= resize(c_3, 23);
  c_35_3_0_False_shift <= shift_left(c_35_3_0_False_resize, 0);
  c_35_3_1_False_resize <= resize(c_3, 23);
  c_35_3_1_False_shift <= shift_left(c_35_3_1_False_resize, 1);
  with config_select_3 select c_35_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_3_0_False_shift;
        when others => c_35 <= c_35_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 36 and associated fundamentals [[43], [59]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_16 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 37 and associated fundamentals [[43], [213]]
  c_37_36_0_False_resize <= resize(c_36, 24);
  c_37_36_0_False_shift <= shift_left(c_37_36_0_False_resize, 0);
  c_37_26_0_False_resize <= c_26;
  c_37_26_0_False_shift <= shift_left(c_37_26_0_False_resize, 0);
  with config_select_7 select c_37_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "0" => c_37 <= c_37_36_0_False_shift;
        when others => c_37 <= c_37_26_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 38 and associated fundamentals [[14], [79]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 39 and associated fundamentals [[14], [79]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 40 and associated fundamentals [[14], [79]]
  c_40_resize <= c_39;
  c_40 <= shift_left(c_40_resize, 0);
  -- node of type 'register' in stage 7 with id 41 and associated fundamentals [[135], [236]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_30 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 42 and associated fundamentals [[135], [236]]
  c_42_resize <= c_41;
  c_42 <= shift_left(c_42_resize, 0);
  -- node of type 'register' in stage 6 with id 43 and associated fundamentals [[219], [199]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 44 and associated fundamentals [[219], [199]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 45 and associated fundamentals [[219], [199]]
  c_45_resize <= c_44;
  c_45 <= shift_left(c_45_resize, 0);
  -- node of type 'register' in stage 4 with id 46 and associated fundamentals [[31], [38]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 47 and associated fundamentals [[31], [38]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 48 and associated fundamentals [[31], [38]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 49 and associated fundamentals [[31], [38]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 50 and associated fundamentals [[31], [38]]
  c_50_resize <= c_49;
  c_50 <= shift_left(c_50_resize, 0);
  -- node of type 'register' in stage 7 with id 51 and associated fundamentals [[158], [90]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_27 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 52 and associated fundamentals [[158], [90]]
  c_52_resize <= c_51;
  c_52 <= shift_left(c_52_resize, 0);
  -- node of type 'register' in stage 5 with id 53 and associated fundamentals [[3], [71]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 54 and associated fundamentals [[3], [71]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 55 and associated fundamentals [[3], [71]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 56 and associated fundamentals [[3], [71]]
  c_56_resize <= c_55;
  c_56 <= shift_left(c_56_resize, 0);
  -- node of type 'output' in stage 7 with id 57 and associated fundamentals [[183], [96]]
  c_57_resize <= c_34;
  c_57 <= shift_left(c_57_resize, 0);
  -- node of type 'register' in stage 4 with id 58 and associated fundamentals [[66], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 59 and associated fundamentals [[66], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 60 and associated fundamentals [[66], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 61 and associated fundamentals [[66], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 62 and associated fundamentals [[66], [17]]
  c_62_resize <= c_61;
  c_62 <= shift_left(c_62_resize, 0);
  -- node of type 'register' in stage 5 with id 63 and associated fundamentals [[69], [131]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 64 and associated fundamentals [[69], [131]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 65 and associated fundamentals [[69], [131]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 66 and associated fundamentals [[69], [131]]
  c_66_resize <= c_65;
  c_66 <= shift_left(c_66_resize, 0);
  -- node of type 'output' in stage 7 with id 67 and associated fundamentals [[43], [213]]
  c_67_resize <= c_37;
  c_67 <= shift_left(c_67_resize, 0);
end architecture;
