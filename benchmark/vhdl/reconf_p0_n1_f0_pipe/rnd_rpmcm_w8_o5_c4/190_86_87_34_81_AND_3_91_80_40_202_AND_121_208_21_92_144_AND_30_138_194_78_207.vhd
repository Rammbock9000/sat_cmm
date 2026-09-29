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
    y_3: out std_logic_vector(22 downto 0);
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
  signal c_5: signed(20 downto 0);
  signal c_5_4_2_False_resize: signed(20 downto 0);
  signal c_5_4_2_False_shift: signed(20 downto 0);
  signal c_5_4_0_False_resize: signed(20 downto 0);
  signal c_5_4_0_False_shift: signed(20 downto 0);
  signal c_5_3_2_False_resize: signed(20 downto 0);
  signal c_5_3_2_False_shift: signed(20 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(19 downto 0);
  signal c_6_4_0_False_resize: signed(19 downto 0);
  signal c_6_4_0_False_shift: signed(19 downto 0);
  signal c_6_3_0_False_resize: signed(19 downto 0);
  signal c_6_3_0_False_shift: signed(19 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_i0_resize: signed(22 downto 0);
  signal c_7_i1_resize: signed(22 downto 0);
  signal c_7_i0_shift: signed(22 downto 0);
  signal c_7_i1_shift: signed(22 downto 0);
  signal c_7_arith: signed(22 downto 0);
  signal c_7_oshift: signed(22 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(15 downto 0);
  signal c_9: signed(15 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_7_0_False_resize: signed(22 downto 0);
  signal c_10_7_0_False_shift: signed(22 downto 0);
  signal c_10_9_1_False_resize: signed(22 downto 0);
  signal c_10_9_1_False_shift: signed(22 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(20 downto 0);
  signal c_11_4_0_False_resize: signed(20 downto 0);
  signal c_11_4_0_False_shift: signed(20 downto 0);
  signal c_11_3_2_False_resize: signed(20 downto 0);
  signal c_11_3_2_False_shift: signed(20 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
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
  signal c_15: signed(21 downto 0);
  signal c_15_4_0_False_resize: signed(21 downto 0);
  signal c_15_4_0_False_shift: signed(21 downto 0);
  signal c_15_3_2_False_resize: signed(21 downto 0);
  signal c_15_3_2_False_shift: signed(21 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(19 downto 0);
  signal c_16_9_4_False_resize: signed(19 downto 0);
  signal c_16_9_4_False_shift: signed(19 downto 0);
  signal c_16_7_0_False_resize: signed(19 downto 0);
  signal c_16_7_0_False_shift: signed(19 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(21 downto 0);
  signal c_18: signed(21 downto 0);
  signal c_19: signed(21 downto 0);
  signal c_19_i0_resize: signed(21 downto 0);
  signal c_19_i1_resize: signed(21 downto 0);
  signal c_19_i0_shift: signed(21 downto 0);
  signal c_19_i1_shift: signed(21 downto 0);
  signal c_19_arith: signed(21 downto 0);
  signal c_19_oshift: signed(21 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(22 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_22_14_0_False_resize: signed(22 downto 0);
  signal c_22_14_0_False_shift: signed(22 downto 0);
  signal c_22_21_2_False_resize: signed(22 downto 0);
  signal c_22_21_2_False_shift: signed(22 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(15 downto 0);
  signal c_24: signed(15 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_25_24_0_False_resize: signed(22 downto 0);
  signal c_25_24_0_False_shift: signed(22 downto 0);
  signal c_25_19_1_False_resize: signed(22 downto 0);
  signal c_25_19_1_False_shift: signed(22 downto 0);
  signal c_25_19_2_False_resize: signed(22 downto 0);
  signal c_25_19_2_False_shift: signed(22 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_i0_resize: signed(23 downto 0);
  signal c_26_i1_resize: signed(23 downto 0);
  signal c_26_i0_shift: signed(23 downto 0);
  signal c_26_i1_shift: signed(23 downto 0);
  signal c_26_arith: signed(23 downto 0);
  signal c_26_oshift: signed(23 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(15 downto 0);
  signal c_28: signed(15 downto 0);
  signal c_29: signed(19 downto 0);
  signal c_30: signed(19 downto 0);
  signal c_31: signed(19 downto 0);
  signal c_32: signed(19 downto 0);
  signal c_33: signed(19 downto 0);
  signal c_34: signed(19 downto 0);
  signal c_35: signed(22 downto 0);
  signal c_35_26_0_False_resize: signed(22 downto 0);
  signal c_35_26_0_False_shift: signed(22 downto 0);
  signal c_35_34_4_False_resize: signed(22 downto 0);
  signal c_35_34_4_False_shift: signed(22 downto 0);
  signal c_35_28_5_False_resize: signed(22 downto 0);
  signal c_35_28_5_False_shift: signed(22 downto 0);
  signal c_35_sel: std_logic_vector(1 downto 0);
  signal c_36: signed(20 downto 0);
  signal c_36_21_0_False_resize: signed(20 downto 0);
  signal c_36_21_0_False_shift: signed(20 downto 0);
  signal c_36_19_0_False_resize: signed(20 downto 0);
  signal c_36_19_0_False_shift: signed(20 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(20 downto 0);
  signal c_38: signed(20 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_i0_resize: signed(23 downto 0);
  signal c_39_i1_resize: signed(23 downto 0);
  signal c_39_i0_shift: signed(23 downto 0);
  signal c_39_i1_shift: signed(23 downto 0);
  signal c_39_arith: signed(23 downto 0);
  signal c_39_oshift: signed(23 downto 0);
  signal c_39_sub_sel: std_logic;
  signal c_40: signed(22 downto 0);
  signal c_41: signed(22 downto 0);
  signal c_42: signed(22 downto 0);
  signal c_43: signed(22 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_43_1_False_resize: signed(23 downto 0);
  signal c_44_43_1_False_shift: signed(23 downto 0);
  signal c_44_39_0_False_resize: signed(23 downto 0);
  signal c_44_39_0_False_shift: signed(23 downto 0);
  signal c_44_43_0_False_resize: signed(23 downto 0);
  signal c_44_43_0_False_shift: signed(23 downto 0);
  signal c_44_sel: std_logic_vector(1 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_26_0_False_resize: signed(23 downto 0);
  signal c_45_26_0_False_shift: signed(23 downto 0);
  signal c_45_41_4_False_resize: signed(23 downto 0);
  signal c_45_41_4_False_shift: signed(23 downto 0);
  signal c_45_sel: std_logic_vector(0 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_14_0_False_resize: signed(23 downto 0);
  signal c_46_14_0_False_shift: signed(23 downto 0);
  signal c_46_19_2_False_resize: signed(23 downto 0);
  signal c_46_19_2_False_shift: signed(23 downto 0);
  signal c_46_sel: std_logic_vector(0 downto 0);
  signal c_47: signed(21 downto 0);
  signal c_47_19_0_False_resize: signed(21 downto 0);
  signal c_47_19_0_False_shift: signed(21 downto 0);
  signal c_47_19_1_False_resize: signed(21 downto 0);
  signal c_47_19_1_False_shift: signed(21 downto 0);
  signal c_47_sel: std_logic_vector(0 downto 0);
  signal c_48: signed(19 downto 0);
  signal c_49: signed(19 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_50_39_0_False_resize: signed(23 downto 0);
  signal c_50_39_0_False_shift: signed(23 downto 0);
  signal c_50_49_4_False_resize: signed(23 downto 0);
  signal c_50_49_4_False_shift: signed(23 downto 0);
  signal c_50_sel: std_logic_vector(0 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_51_resize: signed(23 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_54_resize: signed(23 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_57: signed(23 downto 0);
  signal c_58: signed(23 downto 0);
  signal c_59: signed(23 downto 0);
  signal c_59_resize: signed(23 downto 0);
  signal c_60: signed(21 downto 0);
  signal c_61: signed(21 downto 0);
  signal c_62: signed(21 downto 0);
  signal c_63: signed(21 downto 0);
  signal c_64: signed(22 downto 0);
  signal c_64_resize: signed(22 downto 0);
  signal c_65: signed(23 downto 0);
  signal c_65_resize: signed(23 downto 0);
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
  -- output node 1 with id 54
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_54);
    end if;
  end process;
  -- output node 2 with id 59
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_59);
    end if;
  end process;
  -- output node 3 with id 64
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_64);
    end if;
  end process;
  -- output node 4 with id 65
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_65);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[2], [1], [1], [2]]
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when "00",
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
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[6], [9], [9], [6]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 17,
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
      sub_i => c_3_sub_sel,
      x_i => c_2,
      y_i => c_1,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[24], [1], [1], [4]]
  c_5_4_2_False_resize <= resize(c_4, 21);
  c_5_4_2_False_shift <= shift_left(c_5_4_2_False_resize, 2);
  c_5_4_0_False_resize <= resize(c_4, 21);
  c_5_4_0_False_shift <= shift_left(c_5_4_0_False_resize, 0);
  c_5_3_2_False_resize <= resize(c_3, 21);
  c_5_3_2_False_shift <= shift_left(c_5_3_2_False_resize, 2);
  with config_select_3 select c_5_sel <= 
    "00" when "11",
    "01" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_4_2_False_shift;
        when "01" => c_5 <= c_5_4_0_False_shift;
        when others => c_5 <= c_5_3_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[1], [1], [9], [1]]
  c_6_4_0_False_resize <= resize(c_4, 20);
  c_6_4_0_False_shift <= shift_left(c_6_4_0_False_resize, 0);
  c_6_3_0_False_resize <= c_3;
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_4_0_False_shift;
        when others => c_6 <= c_6_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[95], [3], [13], [15]]
  with config_select_4 select c_7_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 20,
      w_o => 23,
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
      c_7 <= c_7_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 9 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 10 and associated fundamentals [[95], [3], [13], [2]]
  c_10_7_0_False_resize <= c_7;
  c_10_7_0_False_shift <= shift_left(c_10_7_0_False_resize, 0);
  c_10_9_1_False_resize <= resize(c_9, 23);
  c_10_9_1_False_shift <= shift_left(c_10_9_1_False_resize, 1);
  with config_select_5 select c_10_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "00",
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
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[1], [1], [1], [24]]
  c_11_4_0_False_resize <= resize(c_4, 21);
  c_11_4_0_False_shift <= shift_left(c_11_4_0_False_resize, 0);
  c_11_3_2_False_resize <= resize(c_3, 21);
  c_11_3_2_False_shift <= shift_left(c_11_3_2_False_resize, 2);
  with config_select_3 select c_11_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_4_0_False_shift;
        when others => c_11 <= c_11_3_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[1], [1], [1], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 13 and associated fundamentals [[1], [1], [1], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 14 and associated fundamentals [[87], [11], [21], [194]]
  with config_select_6 select c_14_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
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
      sub_i => c_14_sub_sel,
      x_i => c_10,
      y_i => c_13,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[1], [36], [36], [24]]
  c_15_4_0_False_resize <= resize(c_4, 22);
  c_15_4_0_False_shift <= shift_left(c_15_4_0_False_resize, 0);
  c_15_3_2_False_resize <= resize(c_3, 22);
  c_15_3_2_False_shift <= shift_left(c_15_3_2_False_resize, 2);
  with config_select_3 select c_15_sel <= 
    "0" when "00",
    "1" when "11",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_4_0_False_shift;
        when others => c_15 <= c_15_3_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 16 and associated fundamentals [[16], [16], [13], [15]]
  c_16_9_4_False_resize <= resize(c_9, 20);
  c_16_9_4_False_shift <= shift_left(c_16_9_4_False_resize, 4);
  c_16_7_0_False_resize <= c_7(19 downto 0);
  c_16_7_0_False_shift <= shift_left(c_16_7_0_False_resize, 0);
  with config_select_5 select c_16_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_9_4_False_shift;
        when others => c_16 <= c_16_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 17 and associated fundamentals [[1], [36], [36], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[1], [36], [36], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 19 and associated fundamentals [[17], [20], [23], [39]]
  with config_select_6 select c_19_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
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
      sub_i => c_19_sub_sel,
      x_i => c_18,
      y_i => c_16,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 20 and associated fundamentals [[95], [3], [13], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 21 and associated fundamentals [[95], [3], [13], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 22 and associated fundamentals [[87], [11], [21], [60]]
  c_22_14_0_False_resize <= c_14(22 downto 0);
  c_22_14_0_False_shift <= shift_left(c_22_14_0_False_resize, 0);
  c_22_21_2_False_resize <= c_21;
  c_22_21_2_False_shift <= shift_left(c_22_21_2_False_resize, 2);
  with config_select_7 select c_22_sel <= 
    "0" when "10",
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_14_0_False_shift;
        when others => c_22 <= c_22_21_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 24 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 25 and associated fundamentals [[1], [80], [46], [78]]
  c_25_24_0_False_resize <= resize(c_24, 23);
  c_25_24_0_False_shift <= shift_left(c_25_24_0_False_resize, 0);
  c_25_19_1_False_resize <= resize(c_19, 23);
  c_25_19_1_False_shift <= shift_left(c_25_19_1_False_resize, 1);
  c_25_19_2_False_resize <= resize(c_19, 23);
  c_25_19_2_False_shift <= shift_left(c_25_19_2_False_resize, 2);
  with config_select_7 select c_25_sel <= 
    "00" when "00",
    "01" when "10",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_24_0_False_shift;
        when "01" => c_25 <= c_25_19_1_False_shift;
        when others => c_25 <= c_25_19_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 26 and associated fundamentals [[86], [91], [67], [138]]
  with config_select_8 select c_26_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
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
      sub_i => c_26_sub_sel,
      x_i => c_22,
      y_i => c_25,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 27 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 28 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 29 and associated fundamentals [[6], [9], [9], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 30 and associated fundamentals [[6], [9], [9], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 31 and associated fundamentals [[6], [9], [9], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 32 and associated fundamentals [[6], [9], [9], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 33 and associated fundamentals [[6], [9], [9], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 34 and associated fundamentals [[6], [9], [9], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 35 and associated fundamentals [[32], [91], [67], [96]]
  c_35_26_0_False_resize <= c_26(22 downto 0);
  c_35_26_0_False_shift <= shift_left(c_35_26_0_False_resize, 0);
  c_35_34_4_False_resize <= resize(c_34, 23);
  c_35_34_4_False_shift <= shift_left(c_35_34_4_False_resize, 4);
  c_35_28_5_False_resize <= resize(c_28, 23);
  c_35_28_5_False_shift <= shift_left(c_35_28_5_False_resize, 5);
  with config_select_9 select c_35_sel <= 
    "00" when "10",
    "00" when "01",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "00" => c_35 <= c_35_26_0_False_shift;
        when "01" => c_35 <= c_35_34_4_False_shift;
        when others => c_35 <= c_35_28_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 36 and associated fundamentals [[17], [20], [13], [15]]
  c_36_21_0_False_resize <= c_21(20 downto 0);
  c_36_21_0_False_shift <= shift_left(c_36_21_0_False_resize, 0);
  c_36_19_0_False_resize <= c_19(20 downto 0);
  c_36_19_0_False_shift <= shift_left(c_36_19_0_False_resize, 0);
  with config_select_7 select c_36_sel <= 
    "0" when "10",
    "0" when "11",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "0" => c_36 <= c_36_21_0_False_shift;
        when others => c_36 <= c_36_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 37 and associated fundamentals [[17], [20], [13], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 38 and associated fundamentals [[17], [20], [13], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 39 and associated fundamentals [[81], [202], [121], [207]]
  with config_select_10 select c_39_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_39: entity work.adder_node
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
      sub_i => c_39_sub_sel,
      x_i => c_35,
      y_i => c_38,
      z_o => c_39_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_39_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 40 and associated fundamentals [[95], [3], [13], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 41 and associated fundamentals [[95], [3], [13], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 42 and associated fundamentals [[95], [3], [13], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 43 and associated fundamentals [[95], [3], [13], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 44 and associated fundamentals [[190], [3], [121], [30]]
  c_44_43_1_False_resize <= resize(c_43, 24);
  c_44_43_1_False_shift <= shift_left(c_44_43_1_False_resize, 1);
  c_44_39_0_False_resize <= c_39;
  c_44_39_0_False_shift <= shift_left(c_44_39_0_False_resize, 0);
  c_44_43_0_False_resize <= resize(c_43, 24);
  c_44_43_0_False_shift <= shift_left(c_44_43_0_False_resize, 0);
  with config_select_11 select c_44_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "00" => c_44 <= c_44_43_1_False_shift;
        when "01" => c_44 <= c_44_39_0_False_shift;
        when others => c_44 <= c_44_43_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 45 and associated fundamentals [[86], [91], [208], [138]]
  c_45_26_0_False_resize <= c_26;
  c_45_26_0_False_shift <= shift_left(c_45_26_0_False_resize, 0);
  c_45_41_4_False_resize <= resize(c_41, 24);
  c_45_41_4_False_shift <= shift_left(c_45_41_4_False_resize, 4);
  with config_select_9 select c_45_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "0" => c_45 <= c_45_26_0_False_shift;
        when others => c_45 <= c_45_41_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 46 and associated fundamentals [[87], [80], [21], [194]]
  c_46_14_0_False_resize <= c_14;
  c_46_14_0_False_shift <= shift_left(c_46_14_0_False_resize, 0);
  c_46_19_2_False_resize <= resize(c_19, 24);
  c_46_19_2_False_shift <= shift_left(c_46_19_2_False_resize, 2);
  with config_select_7 select c_46_sel <= 
    "0" when "10",
    "0" when "11",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "0" => c_46 <= c_46_14_0_False_shift;
        when others => c_46 <= c_46_19_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 47 and associated fundamentals [[17], [20], [46], [39]]
  c_47_19_0_False_resize <= c_19;
  c_47_19_0_False_shift <= shift_left(c_47_19_0_False_resize, 0);
  c_47_19_1_False_resize <= c_19;
  c_47_19_1_False_shift <= shift_left(c_47_19_1_False_resize, 1);
  with config_select_7 select c_47_sel <= 
    "0" when "11",
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "0" => c_47 <= c_47_19_0_False_shift;
        when others => c_47 <= c_47_19_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 48 and associated fundamentals [[6], [9], [9], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 49 and associated fundamentals [[6], [9], [9], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 50 and associated fundamentals [[81], [202], [144], [207]]
  c_50_39_0_False_resize <= c_39;
  c_50_39_0_False_shift <= shift_left(c_50_39_0_False_resize, 0);
  c_50_49_4_False_resize <= resize(c_49, 24);
  c_50_49_4_False_shift <= shift_left(c_50_49_4_False_resize, 4);
  with config_select_11 select c_50_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_50_sel is
        when "0" => c_50 <= c_50_39_0_False_shift;
        when others => c_50 <= c_50_49_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 51 and associated fundamentals [[190], [3], [121], [30]]
  c_51_resize <= c_44;
  c_51 <= shift_left(c_51_resize, 0);
  -- node of type 'register' in stage 10 with id 52 and associated fundamentals [[86], [91], [208], [138]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 53 and associated fundamentals [[86], [91], [208], [138]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 54 and associated fundamentals [[86], [91], [208], [138]]
  c_54_resize <= c_53;
  c_54 <= shift_left(c_54_resize, 0);
  -- node of type 'register' in stage 8 with id 55 and associated fundamentals [[87], [80], [21], [194]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 56 and associated fundamentals [[87], [80], [21], [194]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 57 and associated fundamentals [[87], [80], [21], [194]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 58 and associated fundamentals [[87], [80], [21], [194]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 59 and associated fundamentals [[87], [80], [21], [194]]
  c_59_resize <= c_58;
  c_59 <= shift_left(c_59_resize, 0);
  -- node of type 'register' in stage 8 with id 60 and associated fundamentals [[17], [20], [46], [39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 61 and associated fundamentals [[17], [20], [46], [39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 62 and associated fundamentals [[17], [20], [46], [39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 63 and associated fundamentals [[17], [20], [46], [39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 64 and associated fundamentals [[34], [40], [92], [78]]
  c_64_resize <= resize(c_63, 23);
  c_64 <= shift_left(c_64_resize, 1);
  -- node of type 'output' in stage 11 with id 65 and associated fundamentals [[81], [202], [144], [207]]
  c_65_resize <= c_50;
  c_65 <= shift_left(c_65_resize, 0);
end architecture;
