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
    y_3: out std_logic_vector(25 downto 0);
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
  signal c_3: signed(20 downto 0);
  signal c_3_2_4_False_resize: signed(20 downto 0);
  signal c_3_2_4_False_shift: signed(20 downto 0);
  signal c_3_1_0_False_resize: signed(20 downto 0);
  signal c_3_1_0_False_shift: signed(20 downto 0);
  signal c_3_2_5_False_resize: signed(20 downto 0);
  signal c_3_2_5_False_shift: signed(20 downto 0);
  signal c_3_sel: std_logic_vector(1 downto 0);
  signal c_4: signed(18 downto 0);
  signal c_4_2_0_False_resize: signed(18 downto 0);
  signal c_4_2_0_False_shift: signed(18 downto 0);
  signal c_4_1_0_False_resize: signed(18 downto 0);
  signal c_4_1_0_False_shift: signed(18 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_5_i0_resize: signed(21 downto 0);
  signal c_5_i1_resize: signed(21 downto 0);
  signal c_5_i0_shift: signed(21 downto 0);
  signal c_5_i1_shift: signed(21 downto 0);
  signal c_5_arith: signed(21 downto 0);
  signal c_5_oshift: signed(21 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(18 downto 0);
  signal c_7: signed(18 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_5_1_False_resize: signed(22 downto 0);
  signal c_8_5_1_False_shift: signed(22 downto 0);
  signal c_8_7_0_False_resize: signed(22 downto 0);
  signal c_8_7_0_False_shift: signed(22 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(18 downto 0);
  signal c_10: signed(25 downto 0);
  signal c_10_i0_resize: signed(25 downto 0);
  signal c_10_i1_resize: signed(25 downto 0);
  signal c_10_i0_shift: signed(25 downto 0);
  signal c_10_i1_shift: signed(25 downto 0);
  signal c_10_arith: signed(25 downto 0);
  signal c_10_oshift: signed(25 downto 0);
  signal c_11: signed(22 downto 0);
  signal c_11_0_0_False_resize: signed(22 downto 0);
  signal c_11_0_0_False_shift: signed(22 downto 0);
  signal c_11_0_7_False_resize: signed(22 downto 0);
  signal c_11_0_7_False_shift: signed(22 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(15 downto 0);
  signal c_13: signed(15 downto 0);
  signal c_14: signed(15 downto 0);
  signal c_15: signed(15 downto 0);
  signal c_16: signed(21 downto 0);
  signal c_16_10_0_False_resize: signed(21 downto 0);
  signal c_16_10_0_False_shift: signed(21 downto 0);
  signal c_16_15_5_False_resize: signed(21 downto 0);
  signal c_16_15_5_False_shift: signed(21 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(22 downto 0);
  signal c_18: signed(22 downto 0);
  signal c_19: signed(22 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_22_i0_resize: signed(22 downto 0);
  signal c_22_i1_resize: signed(22 downto 0);
  signal c_22_i0_shift: signed(22 downto 0);
  signal c_22_i1_shift: signed(22 downto 0);
  signal c_22_arith: signed(22 downto 0);
  signal c_22_oshift: signed(22 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(18 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_23_0_False_resize: signed(25 downto 0);
  signal c_24_23_0_False_shift: signed(25 downto 0);
  signal c_24_10_0_False_resize: signed(25 downto 0);
  signal c_24_10_0_False_shift: signed(25 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_25_5_3_False_resize: signed(22 downto 0);
  signal c_25_5_3_False_shift: signed(22 downto 0);
  signal c_25_7_4_False_resize: signed(22 downto 0);
  signal c_25_7_4_False_shift: signed(22 downto 0);
  signal c_25_13_0_False_resize: signed(22 downto 0);
  signal c_25_13_0_False_shift: signed(22 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(22 downto 0);
  signal c_27: signed(22 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_i0_resize: signed(25 downto 0);
  signal c_28_i1_resize: signed(25 downto 0);
  signal c_28_i0_shift: signed(25 downto 0);
  signal c_28_i1_shift: signed(25 downto 0);
  signal c_28_arith: signed(25 downto 0);
  signal c_28_oshift: signed(25 downto 0);
  signal c_29: signed(21 downto 0);
  signal c_29_1_0_False_resize: signed(21 downto 0);
  signal c_29_1_0_False_shift: signed(21 downto 0);
  signal c_29_2_6_False_resize: signed(21 downto 0);
  signal c_29_2_6_False_shift: signed(21 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_15_6_False_resize: signed(25 downto 0);
  signal c_30_15_6_False_shift: signed(25 downto 0);
  signal c_30_10_0_False_resize: signed(25 downto 0);
  signal c_30_10_0_False_shift: signed(25 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(21 downto 0);
  signal c_32: signed(21 downto 0);
  signal c_33: signed(21 downto 0);
  signal c_34: signed(21 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_i0_resize: signed(25 downto 0);
  signal c_35_i1_resize: signed(25 downto 0);
  signal c_35_i0_shift: signed(25 downto 0);
  signal c_35_i1_shift: signed(25 downto 0);
  signal c_35_arith: signed(25 downto 0);
  signal c_35_oshift: signed(25 downto 0);
  signal c_36: signed(19 downto 0);
  signal c_36_1_0_False_resize: signed(19 downto 0);
  signal c_36_1_0_False_shift: signed(19 downto 0);
  signal c_36_1_1_False_resize: signed(19 downto 0);
  signal c_36_1_1_False_shift: signed(19 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_22_1_False_resize: signed(23 downto 0);
  signal c_37_22_1_False_shift: signed(23 downto 0);
  signal c_37_35_0_False_resize: signed(23 downto 0);
  signal c_37_35_0_False_shift: signed(23 downto 0);
  signal c_37_sel: std_logic_vector(0 downto 0);
  signal c_38: signed(19 downto 0);
  signal c_39: signed(19 downto 0);
  signal c_40: signed(19 downto 0);
  signal c_41: signed(19 downto 0);
  signal c_42: signed(19 downto 0);
  signal c_43: signed(19 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_44_i0_resize: signed(25 downto 0);
  signal c_44_i1_resize: signed(25 downto 0);
  signal c_44_i0_shift: signed(25 downto 0);
  signal c_44_i1_shift: signed(25 downto 0);
  signal c_44_arith: signed(25 downto 0);
  signal c_44_oshift: signed(25 downto 0);
  signal c_44_sub_sel: std_logic;
  signal c_45: signed(25 downto 0);
  signal c_45_28_0_False_resize: signed(25 downto 0);
  signal c_45_28_0_False_shift: signed(25 downto 0);
  signal c_45_22_3_False_resize: signed(25 downto 0);
  signal c_45_22_3_False_shift: signed(25 downto 0);
  signal c_45_sel: std_logic_vector(0 downto 0);
  signal c_46: signed(21 downto 0);
  signal c_47: signed(21 downto 0);
  signal c_48: signed(21 downto 0);
  signal c_49: signed(21 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_50_22_0_False_resize: signed(25 downto 0);
  signal c_50_22_0_False_shift: signed(25 downto 0);
  signal c_50_49_4_False_resize: signed(25 downto 0);
  signal c_50_49_4_False_shift: signed(25 downto 0);
  signal c_50_22_1_False_resize: signed(25 downto 0);
  signal c_50_22_1_False_shift: signed(25 downto 0);
  signal c_50_sel: std_logic_vector(1 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_51_49_1_False_resize: signed(25 downto 0);
  signal c_51_49_1_False_shift: signed(25 downto 0);
  signal c_51_28_0_False_resize: signed(25 downto 0);
  signal c_51_28_0_False_shift: signed(25 downto 0);
  signal c_51_49_5_False_resize: signed(25 downto 0);
  signal c_51_49_5_False_shift: signed(25 downto 0);
  signal c_51_sel: std_logic_vector(1 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_53_resize: signed(25 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_55_resize: signed(25 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_57_resize: signed(25 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_58_resize: signed(25 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_60: signed(25 downto 0);
  signal c_61: signed(25 downto 0);
  signal c_61_resize: signed(25 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 53
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_53);
    end if;
  end process;
  -- output node 1 with id 55
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_55);
    end if;
  end process;
  -- output node 2 with id 57
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_57);
    end if;
  end process;
  -- output node 3 with id 58
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_58);
    end if;
  end process;
  -- output node 4 with id 61
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_61);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[5], [5], [3]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
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
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[16], [5], [32]]
  c_3_2_4_False_resize <= resize(c_2, 21);
  c_3_2_4_False_shift <= shift_left(c_3_2_4_False_resize, 4);
  c_3_1_0_False_resize <= resize(c_1, 21);
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  c_3_2_5_False_resize <= resize(c_2, 21);
  c_3_2_5_False_shift <= shift_left(c_3_2_5_False_resize, 5);
  with config_select_2 select c_3_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "00" => c_3 <= c_3_2_4_False_shift;
        when "01" => c_3 <= c_3_1_0_False_shift;
        when others => c_3 <= c_3_2_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[5], [1], [1]]
  c_4_2_0_False_resize <= resize(c_2, 19);
  c_4_2_0_False_shift <= shift_left(c_4_2_0_False_resize, 0);
  c_4_1_0_False_resize <= c_1;
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  with config_select_2 select c_4_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_2_0_False_shift;
        when others => c_4 <= c_4_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[37], [11], [63]]
  with config_select_3 select c_5_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 19,
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
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[5], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 7 and associated fundamentals [[5], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_6 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 8 and associated fundamentals [[5], [22], [126]]
  c_8_5_1_False_resize <= resize(c_5, 23);
  c_8_5_1_False_shift <= shift_left(c_8_5_1_False_resize, 1);
  c_8_7_0_False_resize <= resize(c_7, 23);
  c_8_7_0_False_shift <= shift_left(c_8_7_0_False_resize, 0);
  with config_select_4 select c_8_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_5_1_False_shift;
        when others => c_8 <= c_8_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 9 and associated fundamentals [[5], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_7 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 5 with id 10 and associated fundamentals [[35], [171], [1005]]
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 19,
      w_o => 26,
      s_x_i => 3,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_8,
      y_i => c_9,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 11 and associated fundamentals [[128], [1], [1]]
  c_11_0_0_False_resize <= resize(c_0, 23);
  c_11_0_0_False_shift <= shift_left(c_11_0_0_False_resize, 0);
  c_11_0_7_False_resize <= resize(c_0, 23);
  c_11_0_7_False_shift <= shift_left(c_11_0_7_False_resize, 7);
  with config_select_1 select c_11_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_0_0_False_shift;
        when others => c_11 <= c_11_0_7_False_shift;
      end case;
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
  -- node of type 'register' in stage 4 with id 14 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 15 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 16 and associated fundamentals [[35], [32], [32]]
  c_16_10_0_False_resize <= c_10(21 downto 0);
  c_16_10_0_False_shift <= shift_left(c_16_10_0_False_resize, 0);
  c_16_15_5_False_resize <= resize(c_15, 22);
  c_16_15_5_False_shift <= shift_left(c_16_15_5_False_resize, 5);
  with config_select_6 select c_16_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_10_0_False_shift;
        when others => c_16 <= c_16_15_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 17 and associated fundamentals [[128], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 18 and associated fundamentals [[128], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 19 and associated fundamentals [[128], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 20 and associated fundamentals [[128], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 21 and associated fundamentals [[128], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 22 and associated fundamentals [[93], [33], [33]]
  with config_select_7 select c_22_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
      w_o => 23,
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
      sub_i => c_22_sub_sel,
      x_i => c_21,
      y_i => c_16,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[5], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_9 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 24 and associated fundamentals [[35], [5], [1005]]
  c_24_23_0_False_resize <= resize(c_23, 26);
  c_24_23_0_False_shift <= shift_left(c_24_23_0_False_resize, 0);
  c_24_10_0_False_resize <= c_10;
  c_24_10_0_False_shift <= shift_left(c_24_10_0_False_resize, 0);
  with config_select_6 select c_24_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_23_0_False_shift;
        when others => c_24 <= c_24_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 25 and associated fundamentals [[80], [88], [1]]
  c_25_5_3_False_resize <= resize(c_5, 23);
  c_25_5_3_False_shift <= shift_left(c_25_5_3_False_resize, 3);
  c_25_7_4_False_resize <= resize(c_7, 23);
  c_25_7_4_False_shift <= shift_left(c_25_7_4_False_resize, 4);
  c_25_13_0_False_resize <= resize(c_13, 23);
  c_25_13_0_False_shift <= shift_left(c_25_13_0_False_resize, 0);
  with config_select_4 select c_25_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_5_3_False_shift;
        when "01" => c_25 <= c_25_7_4_False_shift;
        when others => c_25 <= c_25_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 26 and associated fundamentals [[80], [88], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[80], [88], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'add' in stage 7 with id 28 and associated fundamentals [[675], [709], [1013]]
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 23,
      w_o => 26,
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
      x_i => c_24,
      y_i => c_27,
      z_o => c_28_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_28_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 29 and associated fundamentals [[5], [64], [64]]
  c_29_1_0_False_resize <= resize(c_1, 22);
  c_29_1_0_False_shift <= shift_left(c_29_1_0_False_resize, 0);
  c_29_2_6_False_resize <= resize(c_2, 22);
  c_29_2_6_False_shift <= shift_left(c_29_2_6_False_resize, 6);
  with config_select_2 select c_29_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_1_0_False_shift;
        when others => c_29 <= c_29_2_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 30 and associated fundamentals [[64], [171], [1005]]
  c_30_15_6_False_resize <= resize(c_15, 26);
  c_30_15_6_False_shift <= shift_left(c_30_15_6_False_resize, 6);
  c_30_10_0_False_resize <= c_10;
  c_30_10_0_False_shift <= shift_left(c_30_10_0_False_resize, 0);
  with config_select_6 select c_30_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "0" => c_30 <= c_30_15_6_False_shift;
        when others => c_30 <= c_30_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 31 and associated fundamentals [[5], [64], [64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 32 and associated fundamentals [[5], [64], [64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 33 and associated fundamentals [[5], [64], [64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 34 and associated fundamentals [[5], [64], [64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 7 with id 35 and associated fundamentals [[-59], [-107], [-941]]
  inst_adder_node_35: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 26,
      w_o => 26,
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
      x_i => c_34,
      y_i => c_30,
      z_o => c_35_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_35_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 36 and associated fundamentals [[5], [10], [6]]
  c_36_1_0_False_resize <= resize(c_1, 20);
  c_36_1_0_False_shift <= shift_left(c_36_1_0_False_resize, 0);
  c_36_1_1_False_resize <= resize(c_1, 20);
  c_36_1_1_False_shift <= shift_left(c_36_1_1_False_resize, 1);
  with config_select_2 select c_36_sel <= 
    "0" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "0" => c_36 <= c_36_1_0_False_shift;
        when others => c_36 <= c_36_1_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 37 and associated fundamentals [[186], [-107], [66]]
  c_37_22_1_False_resize <= resize(c_22, 24);
  c_37_22_1_False_shift <= shift_left(c_37_22_1_False_resize, 1);
  c_37_35_0_False_resize <= c_35(23 downto 0);
  c_37_35_0_False_shift <= shift_left(c_37_35_0_False_resize, 0);
  with config_select_8 select c_37_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "0" => c_37 <= c_37_22_1_False_shift;
        when others => c_37 <= c_37_35_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 38 and associated fundamentals [[5], [10], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 39 and associated fundamentals [[5], [10], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 40 and associated fundamentals [[5], [10], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 41 and associated fundamentals [[5], [10], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 42 and associated fundamentals [[5], [10], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 43 and associated fundamentals [[5], [10], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 44 and associated fundamentals [[506], [747], [450]]
  with config_select_9 select c_44_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_44: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 24,
      w_o => 26,
      s_x_i => 6,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_44_sub_sel,
      x_i => c_43,
      y_i => c_37,
      z_o => c_44_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_44_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 45 and associated fundamentals [[744], [709], [1013]]
  c_45_28_0_False_resize <= c_28;
  c_45_28_0_False_shift <= shift_left(c_45_28_0_False_resize, 0);
  c_45_22_3_False_resize <= resize(c_22, 26);
  c_45_22_3_False_shift <= shift_left(c_45_22_3_False_resize, 3);
  with config_select_8 select c_45_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "0" => c_45 <= c_45_28_0_False_shift;
        when others => c_45 <= c_45_22_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 46 and associated fundamentals [[37], [11], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 47 and associated fundamentals [[37], [11], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 48 and associated fundamentals [[37], [11], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 49 and associated fundamentals [[37], [11], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 50 and associated fundamentals [[592], [33], [66]]
  c_50_22_0_False_resize <= resize(c_22, 26);
  c_50_22_0_False_shift <= shift_left(c_50_22_0_False_resize, 0);
  c_50_49_4_False_resize <= resize(c_49, 26);
  c_50_49_4_False_shift <= shift_left(c_50_49_4_False_resize, 4);
  c_50_22_1_False_resize <= resize(c_22, 26);
  c_50_22_1_False_shift <= shift_left(c_50_22_1_False_resize, 1);
  with config_select_8 select c_50_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_50_sel is
        when "00" => c_50 <= c_50_22_0_False_shift;
        when "01" => c_50 <= c_50_49_4_False_shift;
        when others => c_50 <= c_50_22_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 51 and associated fundamentals [[675], [352], [126]]
  c_51_49_1_False_resize <= resize(c_49, 26);
  c_51_49_1_False_shift <= shift_left(c_51_49_1_False_resize, 1);
  c_51_28_0_False_resize <= c_28;
  c_51_28_0_False_shift <= shift_left(c_51_28_0_False_resize, 0);
  c_51_49_5_False_resize <= resize(c_49, 26);
  c_51_49_5_False_shift <= shift_left(c_51_49_5_False_resize, 5);
  with config_select_8 select c_51_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_51_sel is
        when "00" => c_51 <= c_51_49_1_False_shift;
        when "01" => c_51 <= c_51_28_0_False_shift;
        when others => c_51 <= c_51_49_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 52 and associated fundamentals [[744], [709], [1013]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_45 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 53 and associated fundamentals [[744], [709], [1013]]
  c_53_resize <= c_52;
  c_53 <= shift_left(c_53_resize, 0);
  -- node of type 'register' in stage 9 with id 54 and associated fundamentals [[592], [33], [66]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_50 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 55 and associated fundamentals [[592], [33], [66]]
  c_55_resize <= c_54;
  c_55 <= shift_left(c_55_resize, 0);
  -- node of type 'register' in stage 9 with id 56 and associated fundamentals [[675], [352], [126]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_51 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 57 and associated fundamentals [[675], [352], [126]]
  c_57_resize <= c_56;
  c_57 <= shift_left(c_57_resize, 0);
  -- node of type 'output' in stage 9 with id 58 and associated fundamentals [[506], [747], [450]]
  c_58_resize <= c_44;
  c_58 <= shift_left(c_58_resize, 0);
  -- node of type 'register' in stage 8 with id 59 and associated fundamentals [[-59], [-107], [-941]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 60 and associated fundamentals [[-59], [-107], [-941]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 61 and associated fundamentals [[59], [107], [941]]
  c_61_resize <= c_60;
  c_61 <= -shift_left(c_61_resize, 0);
end architecture;
