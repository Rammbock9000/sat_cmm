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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_i0_resize: signed(17 downto 0);
  signal c_1_i1_resize: signed(17 downto 0);
  signal c_1_i0_shift: signed(17 downto 0);
  signal c_1_i1_shift: signed(17 downto 0);
  signal c_1_arith: signed(17 downto 0);
  signal c_1_oshift: signed(17 downto 0);
  signal c_2: signed(18 downto 0);
  signal c_2_i0_resize: signed(18 downto 0);
  signal c_2_i1_resize: signed(18 downto 0);
  signal c_2_i0_shift: signed(18 downto 0);
  signal c_2_i1_shift: signed(18 downto 0);
  signal c_2_arith: signed(18 downto 0);
  signal c_2_oshift: signed(18 downto 0);
  signal c_3: signed(18 downto 0);
  signal c_3_i0_resize: signed(18 downto 0);
  signal c_3_i1_resize: signed(18 downto 0);
  signal c_3_i0_shift: signed(18 downto 0);
  signal c_3_i1_shift: signed(18 downto 0);
  signal c_3_arith: signed(18 downto 0);
  signal c_3_oshift: signed(18 downto 0);
  signal c_4: signed(20 downto 0);
  signal c_4_i0_resize: signed(20 downto 0);
  signal c_4_i1_resize: signed(20 downto 0);
  signal c_4_i0_shift: signed(20 downto 0);
  signal c_4_i1_shift: signed(20 downto 0);
  signal c_4_arith: signed(20 downto 0);
  signal c_4_oshift: signed(20 downto 0);
  signal c_5: signed(20 downto 0);
  signal c_5_1_0_False_resize: signed(20 downto 0);
  signal c_5_1_0_False_shift: signed(20 downto 0);
  signal c_5_2_2_False_resize: signed(20 downto 0);
  signal c_5_2_2_False_shift: signed(20 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(19 downto 0);
  signal c_6_3_1_False_resize: signed(19 downto 0);
  signal c_6_3_1_False_shift: signed(19 downto 0);
  signal c_6_2_0_False_resize: signed(19 downto 0);
  signal c_6_2_0_False_shift: signed(19 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_i0_resize: signed(23 downto 0);
  signal c_7_i1_resize: signed(23 downto 0);
  signal c_7_i0_shift: signed(23 downto 0);
  signal c_7_i1_shift: signed(23 downto 0);
  signal c_7_arith: signed(23 downto 0);
  signal c_7_oshift: signed(23 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_1_0_False_resize: signed(22 downto 0);
  signal c_8_1_0_False_shift: signed(22 downto 0);
  signal c_8_2_4_False_resize: signed(22 downto 0);
  signal c_8_2_4_False_shift: signed(22 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_4_0_False_resize: signed(22 downto 0);
  signal c_9_4_0_False_shift: signed(22 downto 0);
  signal c_9_2_4_False_resize: signed(22 downto 0);
  signal c_9_2_4_False_shift: signed(22 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_i0_resize: signed(23 downto 0);
  signal c_10_i1_resize: signed(23 downto 0);
  signal c_10_i0_shift: signed(23 downto 0);
  signal c_10_i1_shift: signed(23 downto 0);
  signal c_10_arith: signed(23 downto 0);
  signal c_10_oshift: signed(23 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(19 downto 0);
  signal c_11_1_1_False_resize: signed(19 downto 0);
  signal c_11_1_1_False_shift: signed(19 downto 0);
  signal c_11_3_0_False_resize: signed(19 downto 0);
  signal c_11_3_0_False_shift: signed(19 downto 0);
  signal c_11_2_1_False_resize: signed(19 downto 0);
  signal c_11_2_1_False_shift: signed(19 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(20 downto 0);
  signal c_12_2_0_False_resize: signed(20 downto 0);
  signal c_12_2_0_False_shift: signed(20 downto 0);
  signal c_12_4_0_False_resize: signed(20 downto 0);
  signal c_12_4_0_False_shift: signed(20 downto 0);
  signal c_12_3_1_False_resize: signed(20 downto 0);
  signal c_12_3_1_False_shift: signed(20 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(21 downto 0);
  signal c_14_2_2_False_resize: signed(21 downto 0);
  signal c_14_2_2_False_shift: signed(21 downto 0);
  signal c_14_1_4_False_resize: signed(21 downto 0);
  signal c_14_1_4_False_shift: signed(21 downto 0);
  signal c_14_3_0_False_resize: signed(21 downto 0);
  signal c_14_3_0_False_shift: signed(21 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(19 downto 0);
  signal c_15_1_0_False_resize: signed(19 downto 0);
  signal c_15_1_0_False_shift: signed(19 downto 0);
  signal c_15_2_1_False_resize: signed(19 downto 0);
  signal c_15_2_1_False_shift: signed(19 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_i0_resize: signed(23 downto 0);
  signal c_16_i1_resize: signed(23 downto 0);
  signal c_16_i0_shift: signed(23 downto 0);
  signal c_16_i1_shift: signed(23 downto 0);
  signal c_16_arith: signed(23 downto 0);
  signal c_16_oshift: signed(23 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(18 downto 0);
  signal c_17_1_0_False_resize: signed(18 downto 0);
  signal c_17_1_0_False_shift: signed(18 downto 0);
  signal c_17_1_1_False_resize: signed(18 downto 0);
  signal c_17_1_1_False_shift: signed(18 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(19 downto 0);
  signal c_18_1_0_False_resize: signed(19 downto 0);
  signal c_18_1_0_False_shift: signed(19 downto 0);
  signal c_18_3_0_False_resize: signed(19 downto 0);
  signal c_18_3_0_False_shift: signed(19 downto 0);
  signal c_18_3_1_False_resize: signed(19 downto 0);
  signal c_18_3_1_False_shift: signed(19 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_i0_resize: signed(23 downto 0);
  signal c_19_i1_resize: signed(23 downto 0);
  signal c_19_i0_shift: signed(23 downto 0);
  signal c_19_i1_shift: signed(23 downto 0);
  signal c_19_arith: signed(23 downto 0);
  signal c_19_oshift: signed(23 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(23 downto 0);
  signal c_20_resize: signed(23 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_resize: signed(23 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_resize: signed(23 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_resize: signed(23 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_resize: signed(23 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 20
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_20);
    end if;
  end process;
  -- output node 1 with id 21
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_21);
    end if;
  end process;
  -- output node 2 with id 22
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_22);
    end if;
  end process;
  -- output node 3 with id 23
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_23);
    end if;
  end process;
  -- output node 4 with id 24
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_24);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 1 and associated fundamentals [[3], [3], [3]]
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 18,
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(17 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 2 and associated fundamentals [[5], [5], [5]]
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_2_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_2_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 3 and associated fundamentals [[7], [7], [7]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 4 and associated fundamentals [[17], [17], [17]]
  inst_adder_node_4: entity work.adder_node
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
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 5 and associated fundamentals [[3], [20], [3]]
  c_5_1_0_False_resize <= resize(c_1, 21);
  c_5_1_0_False_shift <= shift_left(c_5_1_0_False_resize, 0);
  c_5_2_2_False_resize <= resize(c_2, 21);
  c_5_2_2_False_shift <= shift_left(c_5_2_2_False_resize, 2);
  with config_select_2 select c_5_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_1_0_False_shift;
        when others => c_5 <= c_5_2_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[5], [14], [0]]
  c_6_3_1_False_resize <= resize(c_3, 20);
  c_6_3_1_False_shift <= shift_left(c_6_3_1_False_resize, 1);
  c_6_2_0_False_resize <= resize(c_2, 20);
  c_6_2_0_False_shift <= shift_left(c_6_2_0_False_resize, 0);
  with config_select_2 select c_6_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_3_1_False_shift;
        when "01" => c_6 <= c_6_2_0_False_shift;
        when others => c_6 <= to_signed(0, 20);
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 7 and associated fundamentals [[29], [174], [24]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 20,
      w_o => 24,
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
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 8 and associated fundamentals [[3], [80], [80]]
  c_8_1_0_False_resize <= resize(c_1, 23);
  c_8_1_0_False_shift <= shift_left(c_8_1_0_False_resize, 0);
  c_8_2_4_False_resize <= resize(c_2, 23);
  c_8_2_4_False_shift <= shift_left(c_8_2_4_False_resize, 4);
  with config_select_2 select c_8_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_1_0_False_shift;
        when others => c_8 <= c_8_2_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 9 and associated fundamentals [[80], [17], [0]]
  c_9_4_0_False_resize <= resize(c_4, 23);
  c_9_4_0_False_shift <= shift_left(c_9_4_0_False_resize, 0);
  c_9_2_4_False_resize <= resize(c_2, 23);
  c_9_2_4_False_shift <= shift_left(c_9_2_4_False_resize, 4);
  with config_select_2 select c_9_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "00" => c_9 <= c_9_4_0_False_shift;
        when "01" => c_9 <= c_9_2_4_False_shift;
        when others => c_9 <= to_signed(0, 23);
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 10 and associated fundamentals [[86], [143], [160]]
  with config_select_3 select c_10_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
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
      sub_i => c_10_sub_sel,
      x_i => c_8,
      y_i => c_9,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 11 and associated fundamentals [[6], [7], [10]]
  c_11_1_1_False_resize <= resize(c_1, 20);
  c_11_1_1_False_shift <= shift_left(c_11_1_1_False_resize, 1);
  c_11_3_0_False_resize <= resize(c_3, 20);
  c_11_3_0_False_shift <= shift_left(c_11_3_0_False_resize, 0);
  c_11_2_1_False_resize <= resize(c_2, 20);
  c_11_2_1_False_shift <= shift_left(c_11_2_1_False_resize, 1);
  with config_select_2 select c_11_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_1_1_False_shift;
        when "01" => c_11 <= c_11_3_0_False_shift;
        when others => c_11 <= c_11_2_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 12 and associated fundamentals [[14], [5], [17]]
  c_12_2_0_False_resize <= resize(c_2, 21);
  c_12_2_0_False_shift <= shift_left(c_12_2_0_False_resize, 0);
  c_12_4_0_False_resize <= c_4;
  c_12_4_0_False_shift <= shift_left(c_12_4_0_False_resize, 0);
  c_12_3_1_False_resize <= resize(c_3, 21);
  c_12_3_1_False_shift <= shift_left(c_12_3_1_False_resize, 1);
  with config_select_2 select c_12_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "00" => c_12 <= c_12_2_0_False_shift;
        when "01" => c_12 <= c_12_4_0_False_shift;
        when others => c_12 <= c_12_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 13 and associated fundamentals [[236], [94], [252]]
  with config_select_3 select c_13_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 20,
      w_o => 24,
      s_x_i => 4,
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
      x_i => c_12,
      y_i => c_11,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 14 and associated fundamentals [[20], [7], [48]]
  c_14_2_2_False_resize <= resize(c_2, 22);
  c_14_2_2_False_shift <= shift_left(c_14_2_2_False_resize, 2);
  c_14_1_4_False_resize <= resize(c_1, 22);
  c_14_1_4_False_shift <= shift_left(c_14_1_4_False_resize, 4);
  c_14_3_0_False_resize <= resize(c_3, 22);
  c_14_3_0_False_shift <= shift_left(c_14_3_0_False_resize, 0);
  with config_select_2 select c_14_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_2_2_False_shift;
        when "01" => c_14 <= c_14_1_4_False_shift;
        when others => c_14 <= c_14_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 15 and associated fundamentals [[3], [0], [10]]
  c_15_1_0_False_resize <= resize(c_1, 20);
  c_15_1_0_False_shift <= shift_left(c_15_1_0_False_resize, 0);
  c_15_2_1_False_resize <= resize(c_2, 20);
  c_15_2_1_False_shift <= shift_left(c_15_2_1_False_resize, 1);
  with config_select_2 select c_15_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "00" => c_15 <= c_15_1_0_False_shift;
        when "01" => c_15 <= c_15_2_1_False_shift;
        when others => c_15 <= to_signed(0, 20);
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 16 and associated fundamentals [[77], [28], [202]]
  with config_select_3 select c_16_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_16: entity work.adder_node
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
      sub_i => c_16_sub_sel,
      x_i => c_14,
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 17 and associated fundamentals [[3], [6], [3]]
  c_17_1_0_False_resize <= resize(c_1, 19);
  c_17_1_0_False_shift <= shift_left(c_17_1_0_False_resize, 0);
  c_17_1_1_False_resize <= resize(c_1, 19);
  c_17_1_1_False_shift <= shift_left(c_17_1_1_False_resize, 1);
  with config_select_2 select c_17_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_1_0_False_shift;
        when others => c_17 <= c_17_1_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 18 and associated fundamentals [[3], [7], [14]]
  c_18_1_0_False_resize <= resize(c_1, 20);
  c_18_1_0_False_shift <= shift_left(c_18_1_0_False_resize, 0);
  c_18_3_0_False_resize <= resize(c_3, 20);
  c_18_3_0_False_shift <= shift_left(c_18_3_0_False_resize, 0);
  c_18_3_1_False_resize <= resize(c_3, 20);
  c_18_3_1_False_shift <= shift_left(c_18_3_1_False_resize, 1);
  with config_select_2 select c_18_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "00" => c_18 <= c_18_1_0_False_shift;
        when "01" => c_18 <= c_18_3_0_False_shift;
        when others => c_18 <= c_18_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 19 and associated fundamentals [[93], [199], [82]]
  with config_select_3 select c_19_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 20,
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
      sub_i => c_19_sub_sel,
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 3 with id 20 and associated fundamentals [[29], [174], [24]]
  c_20_resize <= c_7;
  c_20 <= shift_left(c_20_resize, 0);
  -- node of type 'output' in stage 3 with id 21 and associated fundamentals [[93], [199], [82]]
  c_21_resize <= c_19;
  c_21 <= shift_left(c_21_resize, 0);
  -- node of type 'output' in stage 3 with id 22 and associated fundamentals [[77], [28], [202]]
  c_22_resize <= c_16;
  c_22 <= shift_left(c_22_resize, 0);
  -- node of type 'output' in stage 3 with id 23 and associated fundamentals [[236], [94], [252]]
  c_23_resize <= c_13;
  c_23 <= shift_left(c_23_resize, 0);
  -- node of type 'output' in stage 3 with id 24 and associated fundamentals [[86], [143], [160]]
  c_24_resize <= c_10;
  c_24 <= shift_left(c_24_resize, 0);
end architecture;
