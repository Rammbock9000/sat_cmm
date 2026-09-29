library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(22 downto 0);
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
  signal c_4: signed(21 downto 0);
  signal c_4_3_0_False_resize: signed(21 downto 0);
  signal c_4_3_0_False_shift: signed(21 downto 0);
  signal c_4_3_2_False_resize: signed(21 downto 0);
  signal c_4_3_2_False_shift: signed(21 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_7: signed(21 downto 0);
  signal c_7_i0_resize: signed(21 downto 0);
  signal c_7_i1_resize: signed(21 downto 0);
  signal c_7_i0_shift: signed(21 downto 0);
  signal c_7_i1_shift: signed(21 downto 0);
  signal c_7_arith: signed(21 downto 0);
  signal c_7_oshift: signed(21 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(15 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_9_7_0_False_resize: signed(21 downto 0);
  signal c_9_7_0_False_shift: signed(21 downto 0);
  signal c_9_8_2_False_resize: signed(21 downto 0);
  signal c_9_8_2_False_shift: signed(21 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(19 downto 0);
  signal c_10_5_2_False_resize: signed(19 downto 0);
  signal c_10_5_2_False_shift: signed(19 downto 0);
  signal c_10_3_0_False_resize: signed(19 downto 0);
  signal c_10_3_0_False_shift: signed(19 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(19 downto 0);
  signal c_12: signed(19 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(16 downto 0);
  signal c_14_0_0_False_resize: signed(16 downto 0);
  signal c_14_0_0_False_shift: signed(16 downto 0);
  signal c_14_0_1_False_resize: signed(16 downto 0);
  signal c_14_0_1_False_shift: signed(16 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(20 downto 0);
  signal c_16: signed(20 downto 0);
  signal c_17: signed(20 downto 0);
  signal c_17_16_1_False_resize: signed(20 downto 0);
  signal c_17_16_1_False_shift: signed(20 downto 0);
  signal c_17_7_0_False_resize: signed(20 downto 0);
  signal c_17_7_0_False_shift: signed(20 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(16 downto 0);
  signal c_19: signed(16 downto 0);
  signal c_20: signed(16 downto 0);
  signal c_21: signed(16 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_22_i0_resize: signed(22 downto 0);
  signal c_22_i1_resize: signed(22 downto 0);
  signal c_22_i0_shift: signed(22 downto 0);
  signal c_22_i1_shift: signed(22 downto 0);
  signal c_22_arith: signed(22 downto 0);
  signal c_22_oshift: signed(22 downto 0);
  signal c_23: signed(20 downto 0);
  signal c_24: signed(20 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_22_0_False_resize: signed(23 downto 0);
  signal c_25_22_0_False_shift: signed(23 downto 0);
  signal c_25_24_4_False_resize: signed(23 downto 0);
  signal c_25_24_4_False_shift: signed(23 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(22 downto 0);
  signal c_26_7_0_False_resize: signed(22 downto 0);
  signal c_26_7_0_False_shift: signed(22 downto 0);
  signal c_26_8_7_False_resize: signed(22 downto 0);
  signal c_26_8_7_False_shift: signed(22 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(22 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_i0_resize: signed(23 downto 0);
  signal c_29_i1_resize: signed(23 downto 0);
  signal c_29_i0_shift: signed(23 downto 0);
  signal c_29_i1_shift: signed(23 downto 0);
  signal c_29_arith: signed(23 downto 0);
  signal c_29_oshift: signed(23 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(21 downto 0);
  signal c_31: signed(21 downto 0);
  signal c_32: signed(21 downto 0);
  signal c_33: signed(21 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_33_0_False_resize: signed(23 downto 0);
  signal c_34_33_0_False_shift: signed(23 downto 0);
  signal c_34_29_0_False_resize: signed(23 downto 0);
  signal c_34_29_0_False_shift: signed(23 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_i0_resize: signed(23 downto 0);
  signal c_38_i1_resize: signed(23 downto 0);
  signal c_38_i0_shift: signed(23 downto 0);
  signal c_38_i1_shift: signed(23 downto 0);
  signal c_38_arith: signed(23 downto 0);
  signal c_38_oshift: signed(23 downto 0);
  signal c_39: signed(22 downto 0);
  signal c_39_7_0_False_resize: signed(22 downto 0);
  signal c_39_7_0_False_shift: signed(22 downto 0);
  signal c_39_16_2_False_resize: signed(22 downto 0);
  signal c_39_16_2_False_shift: signed(22 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_22_0_False_resize: signed(23 downto 0);
  signal c_40_22_0_False_shift: signed(23 downto 0);
  signal c_40_22_1_False_resize: signed(23 downto 0);
  signal c_40_22_1_False_shift: signed(23 downto 0);
  signal c_40_sel: std_logic_vector(0 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_31_3_False_resize: signed(23 downto 0);
  signal c_41_31_3_False_shift: signed(23 downto 0);
  signal c_41_13_0_False_resize: signed(23 downto 0);
  signal c_41_13_0_False_shift: signed(23 downto 0);
  signal c_41_sel: std_logic_vector(0 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_resize: signed(23 downto 0);
  signal c_43: signed(22 downto 0);
  signal c_44: signed(22 downto 0);
  signal c_45: signed(22 downto 0);
  signal c_46: signed(22 downto 0);
  signal c_47: signed(22 downto 0);
  signal c_48: signed(22 downto 0);
  signal c_48_resize: signed(22 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_51_resize: signed(23 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_55_resize: signed(23 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_57: signed(23 downto 0);
  signal c_58: signed(23 downto 0);
  signal c_59: signed(23 downto 0);
  signal c_59_resize: signed(23 downto 0);
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
  -- output node 0 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_42);
    end if;
  end process;
  -- output node 1 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_48);
    end if;
  end process;
  -- output node 2 with id 51
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_51);
    end if;
  end process;
  -- output node 3 with id 55
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_55);
    end if;
  end process;
  -- output node 4 with id 59
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_59);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [1], [4]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "00",
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
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[9], [9], [31]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
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
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[9], [36], [31]]
  c_4_3_0_False_resize <= resize(c_3, 22);
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  c_4_3_2_False_resize <= resize(c_3, 22);
  c_4_3_2_False_shift <= shift_left(c_4_3_2_False_resize, 2);
  with config_select_3 select c_4_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_3_0_False_shift;
        when others => c_4 <= c_4_3_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 6 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_5 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[7], [38], [29]]
  with config_select_4 select c_7_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 16,
      w_o => 22,
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
      sub_i => c_7_sub_sel,
      x_i => c_4,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 8 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_6 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 9 and associated fundamentals [[4], [38], [29]]
  c_9_7_0_False_resize <= c_7;
  c_9_7_0_False_shift <= shift_left(c_9_7_0_False_resize, 0);
  c_9_8_2_False_resize <= resize(c_8, 22);
  c_9_8_2_False_shift <= shift_left(c_9_8_2_False_resize, 2);
  with config_select_5 select c_9_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_7_0_False_shift;
        when others => c_9 <= c_9_8_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[4], [9], [4]]
  c_10_5_2_False_resize <= resize(c_5, 20);
  c_10_5_2_False_shift <= shift_left(c_10_5_2_False_resize, 2);
  c_10_3_0_False_resize <= c_3(19 downto 0);
  c_10_3_0_False_shift <= shift_left(c_10_3_0_False_resize, 0);
  with config_select_3 select c_10_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_5_2_False_shift;
        when others => c_10 <= c_10_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[4], [9], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 12 and associated fundamentals [[4], [9], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 13 and associated fundamentals [[-60], [182], [93]]
  with config_select_6 select c_13_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_13_sub_sel,
      x_i => c_9,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 14 and associated fundamentals [[1], [2], [1]]
  c_14_0_0_False_resize <= resize(c_0, 17);
  c_14_0_0_False_shift <= shift_left(c_14_0_0_False_resize, 0);
  c_14_0_1_False_resize <= resize(c_0, 17);
  c_14_0_1_False_shift <= shift_left(c_14_0_1_False_resize, 1);
  with config_select_1 select c_14_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_0_0_False_shift;
        when others => c_14 <= c_14_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 15 and associated fundamentals [[9], [9], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 16 and associated fundamentals [[9], [9], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 17 and associated fundamentals [[18], [18], [29]]
  c_17_16_1_False_resize <= c_16;
  c_17_16_1_False_shift <= shift_left(c_17_16_1_False_resize, 1);
  c_17_7_0_False_resize <= c_7(20 downto 0);
  c_17_7_0_False_shift <= shift_left(c_17_7_0_False_resize, 0);
  with config_select_5 select c_17_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_16_1_False_shift;
        when others => c_17 <= c_17_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 18 and associated fundamentals [[1], [2], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 19 and associated fundamentals [[1], [2], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 20 and associated fundamentals [[1], [2], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[1], [2], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 6 with id 22 and associated fundamentals [[-71], [-70], [-115]]
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 21,
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
      x_i => c_21,
      y_i => c_17,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[9], [9], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 24 and associated fundamentals [[9], [9], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 25 and associated fundamentals [[144], [-70], [-115]]
  c_25_22_0_False_resize <= resize(c_22, 24);
  c_25_22_0_False_shift <= shift_left(c_25_22_0_False_resize, 0);
  c_25_24_4_False_resize <= resize(c_24, 24);
  c_25_24_4_False_shift <= shift_left(c_25_24_4_False_resize, 4);
  with config_select_7 select c_25_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_22_0_False_shift;
        when others => c_25 <= c_25_24_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 26 and associated fundamentals [[7], [38], [128]]
  c_26_7_0_False_resize <= resize(c_7, 23);
  c_26_7_0_False_shift <= shift_left(c_26_7_0_False_resize, 0);
  c_26_8_7_False_resize <= resize(c_8, 23);
  c_26_8_7_False_shift <= shift_left(c_26_8_7_False_resize, 7);
  with config_select_5 select c_26_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_7_0_False_shift;
        when others => c_26 <= c_26_8_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[7], [38], [128]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 28 and associated fundamentals [[7], [38], [128]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 29 and associated fundamentals [[130], [6], [141]]
  with config_select_8 select c_29_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_29_sub_sel,
      x_i => c_25,
      y_i => c_28,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 30 and associated fundamentals [[7], [38], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 31 and associated fundamentals [[7], [38], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 32 and associated fundamentals [[7], [38], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 33 and associated fundamentals [[7], [38], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 34 and associated fundamentals [[130], [6], [29]]
  c_34_33_0_False_resize <= resize(c_33, 24);
  c_34_33_0_False_shift <= shift_left(c_34_33_0_False_resize, 0);
  c_34_29_0_False_resize <= c_29;
  c_34_29_0_False_shift <= shift_left(c_34_29_0_False_resize, 0);
  with config_select_9 select c_34_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_33_0_False_shift;
        when others => c_34 <= c_34_29_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 35 and associated fundamentals [[-60], [182], [93]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 36 and associated fundamentals [[-60], [182], [93]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 37 and associated fundamentals [[-60], [182], [93]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'add' in stage 10 with id 38 and associated fundamentals [[200], [194], [151]]
  inst_adder_node_38: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
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
      x_i => c_37,
      y_i => c_34,
      z_o => c_38_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_38_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 39 and associated fundamentals [[7], [38], [124]]
  c_39_7_0_False_resize <= resize(c_7, 23);
  c_39_7_0_False_shift <= shift_left(c_39_7_0_False_resize, 0);
  c_39_16_2_False_resize <= resize(c_16, 23);
  c_39_16_2_False_shift <= shift_left(c_39_16_2_False_resize, 2);
  with config_select_5 select c_39_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "0" => c_39 <= c_39_7_0_False_shift;
        when others => c_39 <= c_39_16_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 40 and associated fundamentals [[-71], [-140], [-230]]
  c_40_22_0_False_resize <= resize(c_22, 24);
  c_40_22_0_False_shift <= shift_left(c_40_22_0_False_resize, 0);
  c_40_22_1_False_resize <= resize(c_22, 24);
  c_40_22_1_False_shift <= shift_left(c_40_22_1_False_resize, 1);
  with config_select_7 select c_40_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "0" => c_40 <= c_40_22_0_False_shift;
        when others => c_40 <= c_40_22_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 41 and associated fundamentals [[56], [182], [232]]
  c_41_31_3_False_resize <= resize(c_31, 24);
  c_41_31_3_False_shift <= shift_left(c_41_31_3_False_resize, 3);
  c_41_13_0_False_resize <= c_13;
  c_41_13_0_False_shift <= shift_left(c_41_13_0_False_resize, 0);
  with config_select_7 select c_41_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "0" => c_41 <= c_41_31_3_False_shift;
        when others => c_41 <= c_41_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 42 and associated fundamentals [[200], [194], [151]]
  c_42_resize <= c_38;
  c_42 <= shift_left(c_42_resize, 0);
  -- node of type 'register' in stage 6 with id 43 and associated fundamentals [[7], [38], [124]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 44 and associated fundamentals [[7], [38], [124]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 45 and associated fundamentals [[7], [38], [124]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 46 and associated fundamentals [[7], [38], [124]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 47 and associated fundamentals [[7], [38], [124]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 48 and associated fundamentals [[7], [38], [124]]
  c_48_resize <= c_47;
  c_48 <= shift_left(c_48_resize, 0);
  -- node of type 'register' in stage 9 with id 49 and associated fundamentals [[130], [6], [141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 50 and associated fundamentals [[130], [6], [141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 51 and associated fundamentals [[130], [6], [141]]
  c_51_resize <= c_50;
  c_51 <= shift_left(c_51_resize, 0);
  -- node of type 'register' in stage 8 with id 52 and associated fundamentals [[-71], [-140], [-230]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 53 and associated fundamentals [[-71], [-140], [-230]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 54 and associated fundamentals [[-71], [-140], [-230]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 55 and associated fundamentals [[71], [140], [230]]
  c_55_resize <= c_54;
  c_55 <= -shift_left(c_55_resize, 0);
  -- node of type 'register' in stage 8 with id 56 and associated fundamentals [[56], [182], [232]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 57 and associated fundamentals [[56], [182], [232]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 58 and associated fundamentals [[56], [182], [232]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 59 and associated fundamentals [[56], [182], [232]]
  c_59_resize <= c_58;
  c_59 <= shift_left(c_59_resize, 0);
end architecture;
