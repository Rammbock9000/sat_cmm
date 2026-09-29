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
  signal c_3: signed(18 downto 0);
  signal c_3_1_1_False_resize: signed(18 downto 0);
  signal c_3_1_1_False_shift: signed(18 downto 0);
  signal c_3_2_0_False_resize: signed(18 downto 0);
  signal c_3_2_0_False_shift: signed(18 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(18 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_i0_resize: signed(22 downto 0);
  signal c_5_i1_resize: signed(22 downto 0);
  signal c_5_i0_shift: signed(22 downto 0);
  signal c_5_i1_shift: signed(22 downto 0);
  signal c_5_arith: signed(22 downto 0);
  signal c_5_oshift: signed(22 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(18 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_5_3_False_resize: signed(22 downto 0);
  signal c_7_5_3_False_shift: signed(22 downto 0);
  signal c_7_6_0_False_resize: signed(22 downto 0);
  signal c_7_6_0_False_shift: signed(22 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(21 downto 0);
  signal c_8_2_0_False_resize: signed(21 downto 0);
  signal c_8_2_0_False_shift: signed(21 downto 0);
  signal c_8_1_4_False_resize: signed(21 downto 0);
  signal c_8_1_4_False_shift: signed(21 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_10: signed(21 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_i0_resize: signed(23 downto 0);
  signal c_11_i1_resize: signed(23 downto 0);
  signal c_11_i0_shift: signed(23 downto 0);
  signal c_11_i1_shift: signed(23 downto 0);
  signal c_11_arith: signed(23 downto 0);
  signal c_11_oshift: signed(23 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(15 downto 0);
  signal c_13: signed(15 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_14_13_4_False_resize: signed(22 downto 0);
  signal c_14_13_4_False_shift: signed(22 downto 0);
  signal c_14_5_0_False_resize: signed(22 downto 0);
  signal c_14_5_0_False_shift: signed(22 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(20 downto 0);
  signal c_15_1_3_False_resize: signed(20 downto 0);
  signal c_15_1_3_False_shift: signed(20 downto 0);
  signal c_15_1_0_False_resize: signed(20 downto 0);
  signal c_15_1_0_False_shift: signed(20 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(20 downto 0);
  signal c_17: signed(20 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_i0_resize: signed(23 downto 0);
  signal c_18_i1_resize: signed(23 downto 0);
  signal c_18_i0_shift: signed(23 downto 0);
  signal c_18_i1_shift: signed(23 downto 0);
  signal c_18_arith: signed(23 downto 0);
  signal c_18_oshift: signed(23 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(15 downto 0);
  signal c_20: signed(15 downto 0);
  signal c_21: signed(21 downto 0);
  signal c_21_20_5_False_resize: signed(21 downto 0);
  signal c_21_20_5_False_shift: signed(21 downto 0);
  signal c_21_18_0_False_resize: signed(21 downto 0);
  signal c_21_18_0_False_shift: signed(21 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(18 downto 0);
  signal c_23: signed(18 downto 0);
  signal c_24: signed(18 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_i0_resize: signed(23 downto 0);
  signal c_25_i1_resize: signed(23 downto 0);
  signal c_25_i0_shift: signed(23 downto 0);
  signal c_25_i1_shift: signed(23 downto 0);
  signal c_25_arith: signed(23 downto 0);
  signal c_25_oshift: signed(23 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(18 downto 0);
  signal c_27: signed(21 downto 0);
  signal c_27_26_0_False_resize: signed(21 downto 0);
  signal c_27_26_0_False_shift: signed(21 downto 0);
  signal c_27_25_0_False_resize: signed(21 downto 0);
  signal c_27_25_0_False_shift: signed(21 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_30: signed(22 downto 0);
  signal c_31: signed(22 downto 0);
  signal c_32: signed(22 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_i0_resize: signed(23 downto 0);
  signal c_33_i1_resize: signed(23 downto 0);
  signal c_33_i0_shift: signed(23 downto 0);
  signal c_33_i1_shift: signed(23 downto 0);
  signal c_33_arith: signed(23 downto 0);
  signal c_33_oshift: signed(23 downto 0);
  signal c_33_sub_sel: std_logic;
  signal c_34: signed(15 downto 0);
  signal c_35: signed(15 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_35_7_False_resize: signed(23 downto 0);
  signal c_36_35_7_False_shift: signed(23 downto 0);
  signal c_36_25_0_False_resize: signed(23 downto 0);
  signal c_36_25_0_False_shift: signed(23 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(22 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_33_1_False_resize: signed(23 downto 0);
  signal c_42_33_1_False_shift: signed(23 downto 0);
  signal c_42_41_0_False_resize: signed(23 downto 0);
  signal c_42_41_0_False_shift: signed(23 downto 0);
  signal c_42_37_3_False_resize: signed(23 downto 0);
  signal c_42_37_3_False_shift: signed(23 downto 0);
  signal c_42_sel: std_logic_vector(1 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_25_0_False_resize: signed(23 downto 0);
  signal c_43_25_0_False_shift: signed(23 downto 0);
  signal c_43_31_1_False_resize: signed(23 downto 0);
  signal c_43_31_1_False_shift: signed(23 downto 0);
  signal c_43_sel: std_logic_vector(0 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_41_1_False_resize: signed(23 downto 0);
  signal c_44_41_1_False_shift: signed(23 downto 0);
  signal c_44_33_0_False_resize: signed(23 downto 0);
  signal c_44_33_0_False_shift: signed(23 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_resize: signed(23 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_53_resize: signed(23 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_54_resize: signed(23 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_57: signed(23 downto 0);
  signal c_57_resize: signed(23 downto 0);
  signal c_58: signed(23 downto 0);
  signal c_58_resize: signed(23 downto 0);
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
  -- output node 0 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_47);
    end if;
  end process;
  -- output node 1 with id 53
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_53);
    end if;
  end process;
  -- output node 2 with id 54
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_54);
    end if;
  end process;
  -- output node 3 with id 57
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_57);
    end if;
  end process;
  -- output node 4 with id 58
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_58);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[3], [3], [5]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
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
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[6], [1], [1]]
  c_3_1_1_False_resize <= c_1;
  c_3_1_1_False_shift <= shift_left(c_3_1_1_False_resize, 1);
  c_3_2_0_False_resize <= resize(c_2, 19);
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  with config_select_2 select c_3_sel <= 
    "0" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_1_1_False_shift;
        when others => c_3 <= c_3_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[3], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_1 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[99], [19], [11]]
  with config_select_3 select c_5_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 23,
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
      sub_i => c_5_sub_sel,
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
  -- node of type 'register' in stage 3 with id 6 and associated fundamentals [[3], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_4 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 7 and associated fundamentals [[3], [3], [88]]
  c_7_5_3_False_resize <= c_5;
  c_7_5_3_False_shift <= shift_left(c_7_5_3_False_resize, 3);
  c_7_6_0_False_resize <= resize(c_6, 23);
  c_7_6_0_False_shift <= shift_left(c_7_6_0_False_resize, 0);
  with config_select_4 select c_7_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_5_3_False_shift;
        when others => c_7 <= c_7_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 8 and associated fundamentals [[48], [1], [1]]
  c_8_2_0_False_resize <= resize(c_2, 22);
  c_8_2_0_False_shift <= shift_left(c_8_2_0_False_resize, 0);
  c_8_1_4_False_resize <= resize(c_1, 22);
  c_8_1_4_False_shift <= shift_left(c_8_1_4_False_resize, 4);
  with config_select_2 select c_8_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_2_0_False_shift;
        when others => c_8 <= c_8_1_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[48], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 10 and associated fundamentals [[48], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 11 and associated fundamentals [[54], [5], [177]]
  with config_select_5 select c_11_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
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
      sub_i => c_11_sub_sel,
      x_i => c_7,
      y_i => c_10,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 12 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 13 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 14 and associated fundamentals [[99], [19], [16]]
  c_14_13_4_False_resize <= resize(c_13, 23);
  c_14_13_4_False_shift <= shift_left(c_14_13_4_False_resize, 4);
  c_14_5_0_False_resize <= c_5;
  c_14_5_0_False_shift <= shift_left(c_14_5_0_False_resize, 0);
  with config_select_4 select c_14_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_13_4_False_shift;
        when others => c_14 <= c_14_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 15 and associated fundamentals [[3], [24], [5]]
  c_15_1_3_False_resize <= resize(c_1, 21);
  c_15_1_3_False_shift <= shift_left(c_15_1_3_False_resize, 3);
  c_15_1_0_False_resize <= resize(c_1, 21);
  c_15_1_0_False_shift <= shift_left(c_15_1_0_False_resize, 0);
  with config_select_2 select c_15_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_1_3_False_shift;
        when others => c_15 <= c_15_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 16 and associated fundamentals [[3], [24], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 17 and associated fundamentals [[3], [24], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 18 and associated fundamentals [[201], [14], [37]]
  with config_select_5 select c_18_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
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
      sub_i => c_18_sub_sel,
      x_i => c_14,
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 19 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 20 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 21 and associated fundamentals [[32], [14], [37]]
  c_21_20_5_False_resize <= resize(c_20, 22);
  c_21_20_5_False_shift <= shift_left(c_21_20_5_False_resize, 5);
  c_21_18_0_False_resize <= c_18(21 downto 0);
  c_21_18_0_False_shift <= shift_left(c_21_18_0_False_resize, 0);
  with config_select_6 select c_21_sel <= 
    "0" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_20_5_False_shift;
        when others => c_21 <= c_21_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 22 and associated fundamentals [[3], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[3], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 24 and associated fundamentals [[3], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 25 and associated fundamentals [[131], [53], [143]]
  with config_select_7 select c_25_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 19,
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
      sub_i => c_25_sub_sel,
      x_i => c_21,
      y_i => c_24,
      z_o => c_25_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 26 and associated fundamentals [[3], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_24 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 27 and associated fundamentals [[3], [53], [5]]
  c_27_26_0_False_resize <= resize(c_26, 22);
  c_27_26_0_False_shift <= shift_left(c_27_26_0_False_resize, 0);
  c_27_25_0_False_resize <= c_25(21 downto 0);
  c_27_25_0_False_shift <= shift_left(c_27_25_0_False_resize, 0);
  with config_select_8 select c_27_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_26_0_False_shift;
        when others => c_27 <= c_27_25_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 28 and associated fundamentals [[99], [19], [11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 29 and associated fundamentals [[99], [19], [11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 30 and associated fundamentals [[99], [19], [11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 31 and associated fundamentals [[99], [19], [11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 32 and associated fundamentals [[99], [19], [11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 33 and associated fundamentals [[87], [231], [31]]
  with config_select_9 select c_33_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_33: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_33_sub_sel,
      x_i => c_32,
      y_i => c_27,
      z_o => c_33_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_33_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 34 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 35 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 36 and associated fundamentals [[131], [53], [128]]
  c_36_35_7_False_resize <= resize(c_35, 24);
  c_36_35_7_False_shift <= shift_left(c_36_35_7_False_resize, 7);
  c_36_25_0_False_resize <= c_25;
  c_36_25_0_False_shift <= shift_left(c_36_25_0_False_resize, 0);
  with config_select_8 select c_36_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "0" => c_36 <= c_36_35_7_False_shift;
        when others => c_36 <= c_36_25_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 37 and associated fundamentals [[99], [19], [11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 38 and associated fundamentals [[201], [14], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 39 and associated fundamentals [[201], [14], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 40 and associated fundamentals [[201], [14], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 41 and associated fundamentals [[201], [14], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 42 and associated fundamentals [[201], [152], [62]]
  c_42_33_1_False_resize <= c_33;
  c_42_33_1_False_shift <= shift_left(c_42_33_1_False_resize, 1);
  c_42_41_0_False_resize <= c_41;
  c_42_41_0_False_shift <= shift_left(c_42_41_0_False_resize, 0);
  c_42_37_3_False_resize <= resize(c_37, 24);
  c_42_37_3_False_shift <= shift_left(c_42_37_3_False_resize, 3);
  with config_select_10 select c_42_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "00" => c_42 <= c_42_33_1_False_shift;
        when "01" => c_42 <= c_42_41_0_False_shift;
        when others => c_42 <= c_42_37_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 43 and associated fundamentals [[198], [38], [143]]
  c_43_25_0_False_resize <= c_25;
  c_43_25_0_False_shift <= shift_left(c_43_25_0_False_resize, 0);
  c_43_31_1_False_resize <= resize(c_31, 24);
  c_43_31_1_False_shift <= shift_left(c_43_31_1_False_resize, 1);
  with config_select_8 select c_43_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "0" => c_43 <= c_43_25_0_False_shift;
        when others => c_43 <= c_43_31_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 44 and associated fundamentals [[87], [231], [74]]
  c_44_41_1_False_resize <= c_41;
  c_44_41_1_False_shift <= shift_left(c_44_41_1_False_resize, 1);
  c_44_33_0_False_resize <= c_33;
  c_44_33_0_False_shift <= shift_left(c_44_33_0_False_resize, 0);
  with config_select_10 select c_44_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "0" => c_44 <= c_44_41_1_False_shift;
        when others => c_44 <= c_44_33_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 45 and associated fundamentals [[131], [53], [128]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 46 and associated fundamentals [[131], [53], [128]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 47 and associated fundamentals [[131], [53], [128]]
  c_47_resize <= c_46;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'register' in stage 6 with id 48 and associated fundamentals [[54], [5], [177]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 49 and associated fundamentals [[54], [5], [177]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 50 and associated fundamentals [[54], [5], [177]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 51 and associated fundamentals [[54], [5], [177]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 52 and associated fundamentals [[54], [5], [177]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 53 and associated fundamentals [[54], [5], [177]]
  c_53_resize <= c_52;
  c_53 <= shift_left(c_53_resize, 0);
  -- node of type 'output' in stage 10 with id 54 and associated fundamentals [[201], [152], [62]]
  c_54_resize <= c_42;
  c_54 <= shift_left(c_54_resize, 0);
  -- node of type 'register' in stage 9 with id 55 and associated fundamentals [[198], [38], [143]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 56 and associated fundamentals [[198], [38], [143]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 57 and associated fundamentals [[198], [38], [143]]
  c_57_resize <= c_56;
  c_57 <= shift_left(c_57_resize, 0);
  -- node of type 'output' in stage 10 with id 58 and associated fundamentals [[87], [231], [74]]
  c_58_resize <= c_44;
  c_58 <= shift_left(c_58_resize, 0);
end architecture;
