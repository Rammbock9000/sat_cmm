library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(23 downto 0);
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
  signal c_5_4_1_False_resize: signed(19 downto 0);
  signal c_5_4_1_False_shift: signed(19 downto 0);
  signal c_5_3_0_False_resize: signed(19 downto 0);
  signal c_5_3_0_False_shift: signed(19 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_7: signed(21 downto 0);
  signal c_7_i0_resize: signed(21 downto 0);
  signal c_7_i1_resize: signed(21 downto 0);
  signal c_7_i0_shift: signed(21 downto 0);
  signal c_7_i1_shift: signed(21 downto 0);
  signal c_7_arith: signed(21 downto 0);
  signal c_7_oshift: signed(21 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(19 downto 0);
  signal c_9: signed(19 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_7_0_False_resize: signed(23 downto 0);
  signal c_10_7_0_False_shift: signed(23 downto 0);
  signal c_10_9_5_False_resize: signed(23 downto 0);
  signal c_10_9_5_False_shift: signed(23 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(15 downto 0);
  signal c_12: signed(15 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(19 downto 0);
  signal c_15: signed(19 downto 0);
  signal c_16: signed(20 downto 0);
  signal c_16_15_0_False_resize: signed(20 downto 0);
  signal c_16_15_0_False_shift: signed(20 downto 0);
  signal c_16_13_1_False_resize: signed(20 downto 0);
  signal c_16_13_1_False_shift: signed(20 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(19 downto 0);
  signal c_17_9_0_False_resize: signed(19 downto 0);
  signal c_17_9_0_False_shift: signed(19 downto 0);
  signal c_17_7_0_False_resize: signed(19 downto 0);
  signal c_17_7_0_False_shift: signed(19 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(19 downto 0);
  signal c_19: signed(19 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_i0_resize: signed(23 downto 0);
  signal c_20_i1_resize: signed(23 downto 0);
  signal c_20_i0_shift: signed(23 downto 0);
  signal c_20_i1_shift: signed(23 downto 0);
  signal c_20_arith: signed(23 downto 0);
  signal c_20_oshift: signed(23 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(23 downto 0);
  signal c_21_7_0_False_resize: signed(23 downto 0);
  signal c_21_7_0_False_shift: signed(23 downto 0);
  signal c_21_11_8_False_resize: signed(23 downto 0);
  signal c_21_11_8_False_shift: signed(23 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(19 downto 0);
  signal c_23: signed(19 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_20_2_False_resize: signed(23 downto 0);
  signal c_26_20_2_False_shift: signed(23 downto 0);
  signal c_26_25_0_False_resize: signed(23 downto 0);
  signal c_26_25_0_False_shift: signed(23 downto 0);
  signal c_26_23_0_False_resize: signed(23 downto 0);
  signal c_26_23_0_False_shift: signed(23 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_i0_resize: signed(23 downto 0);
  signal c_31_i1_resize: signed(23 downto 0);
  signal c_31_i0_shift: signed(23 downto 0);
  signal c_31_i1_shift: signed(23 downto 0);
  signal c_31_arith: signed(23 downto 0);
  signal c_31_oshift: signed(23 downto 0);
  signal c_31_sub_sel: std_logic;
  signal c_32: signed(15 downto 0);
  signal c_33: signed(21 downto 0);
  signal c_33_13_0_False_resize: signed(21 downto 0);
  signal c_33_13_0_False_shift: signed(21 downto 0);
  signal c_33_32_2_False_resize: signed(21 downto 0);
  signal c_33_32_2_False_shift: signed(21 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(20 downto 0);
  signal c_34_9_1_False_resize: signed(20 downto 0);
  signal c_34_9_1_False_shift: signed(20 downto 0);
  signal c_34_7_0_False_resize: signed(20 downto 0);
  signal c_34_7_0_False_shift: signed(20 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(20 downto 0);
  signal c_36: signed(20 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_i0_resize: signed(23 downto 0);
  signal c_37_i1_resize: signed(23 downto 0);
  signal c_37_i0_shift: signed(23 downto 0);
  signal c_37_i1_shift: signed(23 downto 0);
  signal c_37_arith: signed(23 downto 0);
  signal c_37_oshift: signed(23 downto 0);
  signal c_38: signed(19 downto 0);
  signal c_39: signed(19 downto 0);
  signal c_40: signed(21 downto 0);
  signal c_41: signed(21 downto 0);
  signal c_42: signed(21 downto 0);
  signal c_43: signed(21 downto 0);
  signal c_44: signed(21 downto 0);
  signal c_45: signed(21 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_39_4_False_resize: signed(23 downto 0);
  signal c_46_39_4_False_shift: signed(23 downto 0);
  signal c_46_31_0_False_resize: signed(23 downto 0);
  signal c_46_31_0_False_shift: signed(23 downto 0);
  signal c_46_45_1_False_resize: signed(23 downto 0);
  signal c_46_45_1_False_shift: signed(23 downto 0);
  signal c_46_sel: std_logic_vector(1 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_39_2_False_resize: signed(23 downto 0);
  signal c_47_39_2_False_shift: signed(23 downto 0);
  signal c_47_31_1_False_resize: signed(23 downto 0);
  signal c_47_31_1_False_shift: signed(23 downto 0);
  signal c_47_31_0_False_resize: signed(23 downto 0);
  signal c_47_31_0_False_shift: signed(23 downto 0);
  signal c_47_sel: std_logic_vector(1 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_51_resize: signed(23 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_52_resize: signed(23 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_56_resize: signed(23 downto 0);
  signal c_57: signed(23 downto 0);
  signal c_57_resize: signed(23 downto 0);
  signal c_58: signed(23 downto 0);
  signal c_59: signed(23 downto 0);
  signal c_60: signed(23 downto 0);
  signal c_61: signed(23 downto 0);
  signal c_61_resize: signed(23 downto 0);
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
  -- output node 0 with id 51
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_51);
    end if;
  end process;
  -- output node 1 with id 52
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_52);
    end if;
  end process;
  -- output node 2 with id 56
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_56);
    end if;
  end process;
  -- output node 3 with id 57
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_57);
    end if;
  end process;
  -- output node 4 with id 61
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_61);
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
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[10], [14], [6]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 16,
      w_o => 20,
      s_x_i => 3,
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
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[10], [2], [2]]
  c_5_4_1_False_resize <= resize(c_4, 20);
  c_5_4_1_False_shift <= shift_left(c_5_4_1_False_resize, 1);
  c_5_3_0_False_resize <= c_3;
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  with config_select_3 select c_5_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_4_1_False_shift;
        when others => c_5 <= c_5_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 6 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[41], [9], [7]]
  with config_select_4 select c_7_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 16,
      w_o => 22,
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
      sub_i => c_7_sub_sel,
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
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[10], [14], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 9 and associated fundamentals [[10], [14], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 10 and associated fundamentals [[41], [9], [192]]
  c_10_7_0_False_resize <= resize(c_7, 24);
  c_10_7_0_False_shift <= shift_left(c_10_7_0_False_resize, 0);
  c_10_9_5_False_resize <= resize(c_9, 24);
  c_10_9_5_False_shift <= shift_left(c_10_9_5_False_resize, 5);
  with config_select_5 select c_10_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_7_0_False_shift;
        when others => c_10 <= c_10_9_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 12 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 13 and associated fundamentals [[39], [11], [190]]
  with config_select_6 select c_13_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 16,
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
      sub_i => c_13_sub_sel,
      x_i => c_10,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 14 and associated fundamentals [[10], [14], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 15 and associated fundamentals [[10], [14], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 16 and associated fundamentals [[10], [22], [6]]
  c_16_15_0_False_resize <= resize(c_15, 21);
  c_16_15_0_False_shift <= shift_left(c_16_15_0_False_resize, 0);
  c_16_13_1_False_resize <= c_13(20 downto 0);
  c_16_13_1_False_shift <= shift_left(c_16_13_1_False_resize, 1);
  with config_select_7 select c_16_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_15_0_False_shift;
        when others => c_16 <= c_16_13_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 17 and associated fundamentals [[10], [9], [7]]
  c_17_9_0_False_resize <= c_9;
  c_17_9_0_False_shift <= shift_left(c_17_9_0_False_resize, 0);
  c_17_7_0_False_resize <= c_7(19 downto 0);
  c_17_7_0_False_shift <= shift_left(c_17_7_0_False_resize, 0);
  with config_select_5 select c_17_sel <= 
    "0" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_9_0_False_shift;
        when others => c_17 <= c_17_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 18 and associated fundamentals [[10], [9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 19 and associated fundamentals [[10], [9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 20 and associated fundamentals [[90], [167], [55]]
  with config_select_8 select c_20_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_20: entity work.adder_node
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
      sub_i => c_20_sub_sel,
      x_i => c_16,
      y_i => c_19,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 21 and associated fundamentals [[41], [256], [7]]
  c_21_7_0_False_resize <= resize(c_7, 24);
  c_21_7_0_False_shift <= shift_left(c_21_7_0_False_resize, 0);
  c_21_11_8_False_resize <= resize(c_11, 24);
  c_21_11_8_False_shift <= shift_left(c_21_11_8_False_resize, 8);
  with config_select_5 select c_21_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_7_0_False_shift;
        when others => c_21 <= c_21_11_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 22 and associated fundamentals [[10], [14], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 23 and associated fundamentals [[10], [14], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 24 and associated fundamentals [[39], [11], [190]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 25 and associated fundamentals [[39], [11], [190]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 26 and associated fundamentals [[10], [11], [220]]
  c_26_20_2_False_resize <= c_20;
  c_26_20_2_False_shift <= shift_left(c_26_20_2_False_resize, 2);
  c_26_25_0_False_resize <= c_25;
  c_26_25_0_False_shift <= shift_left(c_26_25_0_False_resize, 0);
  c_26_23_0_False_resize <= resize(c_23, 24);
  c_26_23_0_False_shift <= shift_left(c_26_23_0_False_resize, 0);
  with config_select_9 select c_26_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "00" => c_26 <= c_26_20_2_False_shift;
        when "01" => c_26 <= c_26_25_0_False_shift;
        when others => c_26 <= c_26_23_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[41], [256], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 28 and associated fundamentals [[41], [256], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 29 and associated fundamentals [[41], [256], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 30 and associated fundamentals [[41], [256], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 31 and associated fundamentals [[31], [245], [227]]
  with config_select_10 select c_31_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_31: entity work.adder_node
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
      sub_i => c_31_sub_sel,
      x_i => c_30,
      y_i => c_26,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 32 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_12 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 33 and associated fundamentals [[39], [4], [4]]
  c_33_13_0_False_resize <= c_13(21 downto 0);
  c_33_13_0_False_shift <= shift_left(c_33_13_0_False_resize, 0);
  c_33_32_2_False_resize <= resize(c_32, 22);
  c_33_32_2_False_shift <= shift_left(c_33_32_2_False_resize, 2);
  with config_select_7 select c_33_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "0" => c_33 <= c_33_13_0_False_shift;
        when others => c_33 <= c_33_32_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 34 and associated fundamentals [[20], [28], [7]]
  c_34_9_1_False_resize <= resize(c_9, 21);
  c_34_9_1_False_shift <= shift_left(c_34_9_1_False_resize, 1);
  c_34_7_0_False_resize <= c_7(20 downto 0);
  c_34_7_0_False_shift <= shift_left(c_34_7_0_False_resize, 0);
  with config_select_5 select c_34_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_9_1_False_shift;
        when others => c_34 <= c_34_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 35 and associated fundamentals [[20], [28], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 36 and associated fundamentals [[20], [28], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'add' in stage 8 with id 37 and associated fundamentals [[199], [228], [60]]
  inst_adder_node_37: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 21,
      w_o => 24,
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
      x_i => c_33,
      y_i => c_36,
      z_o => c_37_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_37_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 38 and associated fundamentals [[10], [14], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 39 and associated fundamentals [[10], [14], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 40 and associated fundamentals [[41], [9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 41 and associated fundamentals [[41], [9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 42 and associated fundamentals [[41], [9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 43 and associated fundamentals [[41], [9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 44 and associated fundamentals [[41], [9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 45 and associated fundamentals [[41], [9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 46 and associated fundamentals [[82], [245], [96]]
  c_46_39_4_False_resize <= resize(c_39, 24);
  c_46_39_4_False_shift <= shift_left(c_46_39_4_False_resize, 4);
  c_46_31_0_False_resize <= c_31;
  c_46_31_0_False_shift <= shift_left(c_46_31_0_False_resize, 0);
  c_46_45_1_False_resize <= resize(c_45, 24);
  c_46_45_1_False_shift <= shift_left(c_46_45_1_False_resize, 1);
  with config_select_11 select c_46_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "00" => c_46 <= c_46_39_4_False_shift;
        when "01" => c_46 <= c_46_31_0_False_shift;
        when others => c_46 <= c_46_45_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 47 and associated fundamentals [[62], [56], [227]]
  c_47_39_2_False_resize <= resize(c_39, 24);
  c_47_39_2_False_shift <= shift_left(c_47_39_2_False_resize, 2);
  c_47_31_1_False_resize <= c_31;
  c_47_31_1_False_shift <= shift_left(c_47_31_1_False_resize, 1);
  c_47_31_0_False_resize <= c_31;
  c_47_31_0_False_shift <= shift_left(c_47_31_0_False_resize, 0);
  with config_select_11 select c_47_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "00" => c_47 <= c_47_39_2_False_shift;
        when "01" => c_47 <= c_47_31_1_False_shift;
        when others => c_47 <= c_47_31_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 48 and associated fundamentals [[199], [228], [60]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 49 and associated fundamentals [[199], [228], [60]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 50 and associated fundamentals [[199], [228], [60]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 51 and associated fundamentals [[199], [228], [60]]
  c_51_resize <= c_50;
  c_51 <= shift_left(c_51_resize, 0);
  -- node of type 'output' in stage 11 with id 52 and associated fundamentals [[82], [245], [96]]
  c_52_resize <= c_46;
  c_52 <= shift_left(c_52_resize, 0);
  -- node of type 'register' in stage 9 with id 53 and associated fundamentals [[39], [11], [190]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 54 and associated fundamentals [[39], [11], [190]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 55 and associated fundamentals [[39], [11], [190]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 56 and associated fundamentals [[39], [11], [190]]
  c_56_resize <= c_55;
  c_56 <= shift_left(c_56_resize, 0);
  -- node of type 'output' in stage 11 with id 57 and associated fundamentals [[62], [56], [227]]
  c_57_resize <= c_47;
  c_57 <= shift_left(c_57_resize, 0);
  -- node of type 'register' in stage 9 with id 58 and associated fundamentals [[90], [167], [55]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 59 and associated fundamentals [[90], [167], [55]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 60 and associated fundamentals [[90], [167], [55]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 61 and associated fundamentals [[90], [167], [55]]
  c_61_resize <= c_60;
  c_61 <= shift_left(c_61_resize, 0);
end architecture;
