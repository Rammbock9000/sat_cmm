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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_i0_resize: signed(19 downto 0);
  signal c_1_i1_resize: signed(19 downto 0);
  signal c_1_i0_shift: signed(19 downto 0);
  signal c_1_i1_shift: signed(19 downto 0);
  signal c_1_arith: signed(19 downto 0);
  signal c_1_oshift: signed(19 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_2_0_False_resize: signed(21 downto 0);
  signal c_3_2_0_False_shift: signed(21 downto 0);
  signal c_3_1_0_False_resize: signed(21 downto 0);
  signal c_3_1_0_False_shift: signed(21 downto 0);
  signal c_3_1_2_False_resize: signed(21 downto 0);
  signal c_3_1_2_False_shift: signed(21 downto 0);
  signal c_3_sel: std_logic_vector(1 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_5: signed(23 downto 0);
  signal c_5_i0_resize: signed(23 downto 0);
  signal c_5_i1_resize: signed(23 downto 0);
  signal c_5_i0_shift: signed(23 downto 0);
  signal c_5_i1_shift: signed(23 downto 0);
  signal c_5_arith: signed(23 downto 0);
  signal c_5_oshift: signed(23 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(21 downto 0);
  signal c_6_1_2_False_resize: signed(21 downto 0);
  signal c_6_1_2_False_shift: signed(21 downto 0);
  signal c_6_1_0_False_resize: signed(21 downto 0);
  signal c_6_1_0_False_shift: signed(21 downto 0);
  signal c_6_2_4_False_resize: signed(21 downto 0);
  signal c_6_2_4_False_shift: signed(21 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(19 downto 0);
  signal c_7_2_0_False_resize: signed(19 downto 0);
  signal c_7_2_0_False_shift: signed(19 downto 0);
  signal c_7_1_0_False_resize: signed(19 downto 0);
  signal c_7_1_0_False_shift: signed(19 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_8_i0_resize: signed(23 downto 0);
  signal c_8_i1_resize: signed(23 downto 0);
  signal c_8_i0_shift: signed(23 downto 0);
  signal c_8_i1_shift: signed(23 downto 0);
  signal c_8_arith: signed(23 downto 0);
  signal c_8_oshift: signed(23 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(15 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_9_3_False_resize: signed(23 downto 0);
  signal c_10_9_3_False_shift: signed(23 downto 0);
  signal c_10_5_0_False_resize: signed(23 downto 0);
  signal c_10_5_0_False_shift: signed(23 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_1_2_False_resize: signed(23 downto 0);
  signal c_11_1_2_False_shift: signed(23 downto 0);
  signal c_11_1_4_False_resize: signed(23 downto 0);
  signal c_11_1_4_False_shift: signed(23 downto 0);
  signal c_11_1_0_False_resize: signed(23 downto 0);
  signal c_11_1_0_False_shift: signed(23 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_14_i0_resize: signed(22 downto 0);
  signal c_14_i1_resize: signed(22 downto 0);
  signal c_14_i0_shift: signed(22 downto 0);
  signal c_14_i1_shift: signed(22 downto 0);
  signal c_14_arith: signed(22 downto 0);
  signal c_14_oshift: signed(22 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(18 downto 0);
  signal c_15_0_0_False_resize: signed(18 downto 0);
  signal c_15_0_0_False_shift: signed(18 downto 0);
  signal c_15_0_3_False_resize: signed(18 downto 0);
  signal c_15_0_3_False_shift: signed(18 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(19 downto 0);
  signal c_17: signed(19 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_17_0_False_resize: signed(23 downto 0);
  signal c_18_17_0_False_shift: signed(23 downto 0);
  signal c_18_8_0_False_resize: signed(23 downto 0);
  signal c_18_8_0_False_shift: signed(23 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
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
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(15 downto 0);
  signal c_24: signed(15 downto 0);
  signal c_25: signed(21 downto 0);
  signal c_25_24_4_False_resize: signed(21 downto 0);
  signal c_25_24_4_False_shift: signed(21 downto 0);
  signal c_25_14_0_False_resize: signed(21 downto 0);
  signal c_25_14_0_False_shift: signed(21 downto 0);
  signal c_25_24_3_False_resize: signed(21 downto 0);
  signal c_25_24_3_False_shift: signed(21 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_i0_resize: signed(23 downto 0);
  signal c_29_i1_resize: signed(23 downto 0);
  signal c_29_i0_shift: signed(23 downto 0);
  signal c_29_i1_shift: signed(23 downto 0);
  signal c_29_arith: signed(23 downto 0);
  signal c_29_oshift: signed(23 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(23 downto 0);
  signal c_30_8_1_False_resize: signed(23 downto 0);
  signal c_30_8_1_False_shift: signed(23 downto 0);
  signal c_30_8_0_False_resize: signed(23 downto 0);
  signal c_30_8_0_False_shift: signed(23 downto 0);
  signal c_30_17_3_False_resize: signed(23 downto 0);
  signal c_30_17_3_False_shift: signed(23 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_33: signed(22 downto 0);
  signal c_33_29_1_False_resize: signed(22 downto 0);
  signal c_33_29_1_False_shift: signed(22 downto 0);
  signal c_33_32_0_False_resize: signed(22 downto 0);
  signal c_33_32_0_False_shift: signed(22 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_29_0_False_resize: signed(23 downto 0);
  signal c_34_29_0_False_shift: signed(23 downto 0);
  signal c_34_32_0_False_resize: signed(23 downto 0);
  signal c_34_32_0_False_shift: signed(23 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_5_0_False_resize: signed(23 downto 0);
  signal c_35_5_0_False_shift: signed(23 downto 0);
  signal c_35_17_0_False_resize: signed(23 downto 0);
  signal c_35_17_0_False_shift: signed(23 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_14_0_False_resize: signed(23 downto 0);
  signal c_36_14_0_False_shift: signed(23 downto 0);
  signal c_36_14_2_False_resize: signed(23 downto 0);
  signal c_36_14_2_False_shift: signed(23 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_resize: signed(23 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_resize: signed(23 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_resize: signed(23 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_48_resize: signed(23 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_51_resize: signed(23 downto 0);
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
  -- output node 1 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_42);
    end if;
  end process;
  -- output node 2 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_43);
    end if;
  end process;
  -- output node 3 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_48);
    end if;
  end process;
  -- output node 4 with id 51
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_51);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 1 and associated fundamentals [[9], [9], [9], [9]]
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
      s_x_i => 3,
      s_y_i => 0,
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
      c_1 <= c_1_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[36], [9], [1], [1]]
  c_3_2_0_False_resize <= resize(c_2, 22);
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  c_3_1_0_False_resize <= resize(c_1, 22);
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  c_3_1_2_False_resize <= resize(c_1, 22);
  c_3_1_2_False_shift <= shift_left(c_3_1_2_False_resize, 2);
  with config_select_2 select c_3_sel <= 
    "00" when "10",
    "00" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "00" => c_3 <= c_3_2_0_False_shift;
        when "01" => c_3 <= c_3_1_0_False_shift;
        when others => c_3 <= c_3_1_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[164], [137], [129], [127]]
  with config_select_3 select c_5_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 22,
      w_o => 24,
      s_x_i => 7,
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
      x_i => c_4,
      y_i => c_3,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[36], [9], [16], [16]]
  c_6_1_2_False_resize <= resize(c_1, 22);
  c_6_1_2_False_shift <= shift_left(c_6_1_2_False_resize, 2);
  c_6_1_0_False_resize <= resize(c_1, 22);
  c_6_1_0_False_shift <= shift_left(c_6_1_0_False_resize, 0);
  c_6_2_4_False_resize <= resize(c_2, 22);
  c_6_2_4_False_shift <= shift_left(c_6_2_4_False_resize, 4);
  with config_select_2 select c_6_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_1_2_False_shift;
        when "01" => c_6 <= c_6_1_0_False_shift;
        when others => c_6 <= c_6_2_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 7 and associated fundamentals [[9], [9], [9], [1]]
  c_7_2_0_False_resize <= resize(c_2, 20);
  c_7_2_0_False_shift <= shift_left(c_7_2_0_False_resize, 0);
  c_7_1_0_False_resize <= c_1;
  c_7_1_0_False_shift <= shift_left(c_7_1_0_False_resize, 0);
  with config_select_2 select c_7_sel <= 
    "0" when "11",
    "1" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_2_0_False_shift;
        when others => c_7 <= c_7_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 8 and associated fundamentals [[153], [27], [55], [65]]
  with config_select_3 select c_8_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
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
      sub_i => c_8_sub_sel,
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_4 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 10 and associated fundamentals [[164], [8], [129], [8]]
  c_10_9_3_False_resize <= resize(c_9, 24);
  c_10_9_3_False_shift <= shift_left(c_10_9_3_False_resize, 3);
  c_10_5_0_False_resize <= c_5;
  c_10_5_0_False_shift <= shift_left(c_10_5_0_False_resize, 0);
  with config_select_4 select c_10_sel <= 
    "0" when "01",
    "0" when "11",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_9_3_False_shift;
        when others => c_10 <= c_10_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 11 and associated fundamentals [[144], [36], [36], [9]]
  c_11_1_2_False_resize <= resize(c_1, 24);
  c_11_1_2_False_shift <= shift_left(c_11_1_2_False_resize, 2);
  c_11_1_4_False_resize <= resize(c_1, 24);
  c_11_1_4_False_shift <= shift_left(c_11_1_4_False_resize, 4);
  c_11_1_0_False_resize <= resize(c_1, 24);
  c_11_1_0_False_shift <= shift_left(c_11_1_0_False_resize, 0);
  with config_select_2 select c_11_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_1_2_False_shift;
        when "01" => c_11 <= c_11_1_4_False_shift;
        when others => c_11 <= c_11_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 12 and associated fundamentals [[144], [36], [36], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 13 and associated fundamentals [[144], [36], [36], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 14 and associated fundamentals [[20], [44], [93], [17]]
  with config_select_5 select c_14_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
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
      sub_i => c_14_sub_sel,
      x_i => c_10,
      y_i => c_13,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 15 and associated fundamentals [[8], [8], [1], [1]]
  c_15_0_0_False_resize <= resize(c_0, 19);
  c_15_0_0_False_shift <= shift_left(c_15_0_0_False_resize, 0);
  c_15_0_3_False_resize <= resize(c_0, 19);
  c_15_0_3_False_shift <= shift_left(c_15_0_3_False_resize, 3);
  with config_select_1 select c_15_sel <= 
    "0" when "10",
    "0" when "11",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_0_0_False_shift;
        when others => c_15 <= c_15_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 16 and associated fundamentals [[9], [9], [9], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 17 and associated fundamentals [[9], [9], [9], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 18 and associated fundamentals [[153], [27], [55], [9]]
  c_18_17_0_False_resize <= resize(c_17, 24);
  c_18_17_0_False_shift <= shift_left(c_18_17_0_False_resize, 0);
  c_18_8_0_False_resize <= c_8;
  c_18_8_0_False_shift <= shift_left(c_18_8_0_False_resize, 0);
  with config_select_4 select c_18_sel <= 
    "0" when "11",
    "1" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_17_0_False_shift;
        when others => c_18 <= c_18_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 19 and associated fundamentals [[8], [8], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 20 and associated fundamentals [[8], [8], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 21 and associated fundamentals [[8], [8], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 22 and associated fundamentals [[103], [229], [87], [41]]
  with config_select_5 select c_22_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 24,
      w_o => 24,
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
      sub_i => c_22_sub_sel,
      x_i => c_21,
      y_i => c_18,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 23 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 24 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 25 and associated fundamentals [[20], [44], [16], [8]]
  c_25_24_4_False_resize <= resize(c_24, 22);
  c_25_24_4_False_shift <= shift_left(c_25_24_4_False_resize, 4);
  c_25_14_0_False_resize <= c_14(21 downto 0);
  c_25_14_0_False_shift <= shift_left(c_25_14_0_False_resize, 0);
  c_25_24_3_False_resize <= resize(c_24, 22);
  c_25_24_3_False_shift <= shift_left(c_25_24_3_False_resize, 3);
  with config_select_6 select c_25_sel <= 
    "00" when "10",
    "01" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_24_4_False_shift;
        when "01" => c_25 <= c_25_14_0_False_shift;
        when others => c_25 <= c_25_24_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 26 and associated fundamentals [[164], [137], [129], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 27 and associated fundamentals [[164], [137], [129], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 28 and associated fundamentals [[164], [137], [129], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 29 and associated fundamentals [[204], [49], [97], [143]]
  with config_select_7 select c_29_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
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
      x_i => c_28,
      y_i => c_25,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 30 and associated fundamentals [[153], [54], [72], [65]]
  c_30_8_1_False_resize <= c_8;
  c_30_8_1_False_shift <= shift_left(c_30_8_1_False_resize, 1);
  c_30_8_0_False_resize <= c_8;
  c_30_8_0_False_shift <= shift_left(c_30_8_0_False_resize, 0);
  c_30_17_3_False_resize <= resize(c_17, 24);
  c_30_17_3_False_shift <= shift_left(c_30_17_3_False_resize, 3);
  with config_select_4 select c_30_sel <= 
    "00" when "01",
    "01" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "00" => c_30 <= c_30_8_1_False_shift;
        when "01" => c_30 <= c_30_8_0_False_shift;
        when others => c_30 <= c_30_17_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 31 and associated fundamentals [[103], [229], [87], [41]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 32 and associated fundamentals [[103], [229], [87], [41]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 33 and associated fundamentals [[103], [98], [87], [41]]
  c_33_29_1_False_resize <= c_29(22 downto 0);
  c_33_29_1_False_shift <= shift_left(c_33_29_1_False_resize, 1);
  c_33_32_0_False_resize <= c_32(22 downto 0);
  c_33_32_0_False_shift <= shift_left(c_33_32_0_False_resize, 0);
  with config_select_8 select c_33_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "0" => c_33 <= c_33_29_1_False_shift;
        when others => c_33 <= c_33_32_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 34 and associated fundamentals [[204], [229], [97], [143]]
  c_34_29_0_False_resize <= c_29;
  c_34_29_0_False_shift <= shift_left(c_34_29_0_False_resize, 0);
  c_34_32_0_False_resize <= c_32;
  c_34_32_0_False_shift <= shift_left(c_34_32_0_False_resize, 0);
  with config_select_8 select c_34_sel <= 
    "0" when "00",
    "0" when "10",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_29_0_False_shift;
        when others => c_34 <= c_34_32_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 35 and associated fundamentals [[164], [137], [9], [127]]
  c_35_5_0_False_resize <= c_5;
  c_35_5_0_False_shift <= shift_left(c_35_5_0_False_resize, 0);
  c_35_17_0_False_resize <= resize(c_17, 24);
  c_35_17_0_False_shift <= shift_left(c_35_17_0_False_resize, 0);
  with config_select_4 select c_35_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_5_0_False_shift;
        when others => c_35 <= c_35_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 36 and associated fundamentals [[20], [176], [93], [68]]
  c_36_14_0_False_resize <= resize(c_14, 24);
  c_36_14_0_False_shift <= shift_left(c_36_14_0_False_resize, 0);
  c_36_14_2_False_resize <= resize(c_14, 24);
  c_36_14_2_False_shift <= shift_left(c_36_14_2_False_resize, 2);
  with config_select_6 select c_36_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "0" => c_36 <= c_36_14_0_False_shift;
        when others => c_36 <= c_36_14_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 37 and associated fundamentals [[153], [54], [72], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 38 and associated fundamentals [[153], [54], [72], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 39 and associated fundamentals [[153], [54], [72], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 40 and associated fundamentals [[153], [54], [72], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 41 and associated fundamentals [[153], [54], [72], [65]]
  c_41_resize <= c_40;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'output' in stage 8 with id 42 and associated fundamentals [[206], [196], [174], [82]]
  c_42_resize <= resize(c_33, 24);
  c_42 <= shift_left(c_42_resize, 1);
  -- node of type 'output' in stage 8 with id 43 and associated fundamentals [[204], [229], [97], [143]]
  c_43_resize <= c_34;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'register' in stage 5 with id 44 and associated fundamentals [[164], [137], [9], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 45 and associated fundamentals [[164], [137], [9], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 46 and associated fundamentals [[164], [137], [9], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 47 and associated fundamentals [[164], [137], [9], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 48 and associated fundamentals [[164], [137], [9], [127]]
  c_48_resize <= c_47;
  c_48 <= shift_left(c_48_resize, 0);
  -- node of type 'register' in stage 7 with id 49 and associated fundamentals [[20], [176], [93], [68]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 50 and associated fundamentals [[20], [176], [93], [68]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 51 and associated fundamentals [[20], [176], [93], [68]]
  c_51_resize <= c_50;
  c_51 <= shift_left(c_51_resize, 0);
end architecture;
