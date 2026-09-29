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
    y_3: out std_logic_vector(22 downto 0);
    y_4: out std_logic_vector(22 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(17 downto 0);
  signal c_2_i0_resize: signed(17 downto 0);
  signal c_2_i1_resize: signed(17 downto 0);
  signal c_2_i0_shift: signed(17 downto 0);
  signal c_2_i1_shift: signed(17 downto 0);
  signal c_2_arith: signed(17 downto 0);
  signal c_2_oshift: signed(17 downto 0);
  signal c_3: signed(18 downto 0);
  signal c_3_i0_resize: signed(18 downto 0);
  signal c_3_i1_resize: signed(18 downto 0);
  signal c_3_i0_shift: signed(18 downto 0);
  signal c_3_i1_shift: signed(18 downto 0);
  signal c_3_arith: signed(18 downto 0);
  signal c_3_oshift: signed(18 downto 0);
  signal c_4: signed(19 downto 0);
  signal c_4_1_0_False_resize: signed(19 downto 0);
  signal c_4_1_0_False_shift: signed(19 downto 0);
  signal c_4_2_2_False_resize: signed(19 downto 0);
  signal c_4_2_2_False_shift: signed(19 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_5_1_6_False_resize: signed(21 downto 0);
  signal c_5_1_6_False_shift: signed(21 downto 0);
  signal c_5_2_0_False_resize: signed(21 downto 0);
  signal c_5_2_0_False_shift: signed(21 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_i0_resize: signed(22 downto 0);
  signal c_6_i1_resize: signed(22 downto 0);
  signal c_6_i0_shift: signed(22 downto 0);
  signal c_6_i1_shift: signed(22 downto 0);
  signal c_6_arith: signed(22 downto 0);
  signal c_6_oshift: signed(22 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(17 downto 0);
  signal c_7_1_2_False_resize: signed(17 downto 0);
  signal c_7_1_2_False_shift: signed(17 downto 0);
  signal c_7_2_0_False_resize: signed(17 downto 0);
  signal c_7_2_0_False_shift: signed(17 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(17 downto 0);
  signal c_8_1_0_False_resize: signed(17 downto 0);
  signal c_8_1_0_False_shift: signed(17 downto 0);
  signal c_8_2_0_False_resize: signed(17 downto 0);
  signal c_8_2_0_False_shift: signed(17 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_i0_resize: signed(22 downto 0);
  signal c_9_i1_resize: signed(22 downto 0);
  signal c_9_i0_shift: signed(22 downto 0);
  signal c_9_i1_shift: signed(22 downto 0);
  signal c_9_arith: signed(22 downto 0);
  signal c_9_oshift: signed(22 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(15 downto 0);
  signal c_11: signed(16 downto 0);
  signal c_11_1_0_False_resize: signed(16 downto 0);
  signal c_11_1_0_False_shift: signed(16 downto 0);
  signal c_11_1_1_False_resize: signed(16 downto 0);
  signal c_11_1_1_False_shift: signed(16 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_i0_resize: signed(23 downto 0);
  signal c_12_i1_resize: signed(23 downto 0);
  signal c_12_i0_shift: signed(23 downto 0);
  signal c_12_i1_shift: signed(23 downto 0);
  signal c_12_arith: signed(23 downto 0);
  signal c_12_oshift: signed(23 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_13_1_6_False_resize: signed(21 downto 0);
  signal c_13_1_6_False_shift: signed(21 downto 0);
  signal c_13_1_0_False_resize: signed(21 downto 0);
  signal c_13_1_0_False_shift: signed(21 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_14_3_4_False_resize: signed(22 downto 0);
  signal c_14_3_4_False_shift: signed(22 downto 0);
  signal c_14_1_0_False_resize: signed(22 downto 0);
  signal c_14_1_0_False_shift: signed(22 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_i0_resize: signed(23 downto 0);
  signal c_15_i1_resize: signed(23 downto 0);
  signal c_15_i0_shift: signed(23 downto 0);
  signal c_15_i1_shift: signed(23 downto 0);
  signal c_15_arith: signed(23 downto 0);
  signal c_15_oshift: signed(23 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(18 downto 0);
  signal c_16_2_1_False_resize: signed(18 downto 0);
  signal c_16_2_1_False_shift: signed(18 downto 0);
  signal c_16_2_0_False_resize: signed(18 downto 0);
  signal c_16_2_0_False_shift: signed(18 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(18 downto 0);
  signal c_17_1_2_False_resize: signed(18 downto 0);
  signal c_17_1_2_False_shift: signed(18 downto 0);
  signal c_17_3_0_False_resize: signed(18 downto 0);
  signal c_17_3_0_False_shift: signed(18 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_i0_resize: signed(23 downto 0);
  signal c_18_i1_resize: signed(23 downto 0);
  signal c_18_i0_shift: signed(23 downto 0);
  signal c_18_i1_shift: signed(23 downto 0);
  signal c_18_arith: signed(23 downto 0);
  signal c_18_oshift: signed(23 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_resize: signed(23 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_resize: signed(23 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_resize: signed(23 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_22_resize: signed(22 downto 0);
  signal c_23: signed(22 downto 0);
  signal c_23_resize: signed(22 downto 0);
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
  -- output node 0 with id 19
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_19);
    end if;
  end process;
  -- output node 1 with id 20
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_20);
    end if;
  end process;
  -- output node 2 with id 21
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_21);
    end if;
  end process;
  -- output node 3 with id 22
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_22);
    end if;
  end process;
  -- output node 4 with id 23
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_23);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 2 and associated fundamentals [[3], [3]]
  inst_adder_node_2: entity work.adder_node
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
      z_o => c_2_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_2_oshift(17 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 3 and associated fundamentals [[7], [7]]
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
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[1], [12]]
  c_4_1_0_False_resize <= resize(c_1, 20);
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  c_4_2_2_False_resize <= resize(c_2, 20);
  c_4_2_2_False_shift <= shift_left(c_4_2_2_False_resize, 2);
  with config_select_2 select c_4_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_1_0_False_shift;
        when others => c_4 <= c_4_2_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 5 and associated fundamentals [[64], [3]]
  c_5_1_6_False_resize <= resize(c_1, 22);
  c_5_1_6_False_shift <= shift_left(c_5_1_6_False_resize, 6);
  c_5_2_0_False_resize <= resize(c_2, 22);
  c_5_2_0_False_shift <= shift_left(c_5_2_0_False_resize, 0);
  with config_select_2 select c_5_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_1_6_False_shift;
        when others => c_5 <= c_5_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 6 and associated fundamentals [[66], [21]]
  with config_select_3 select c_6_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 22,
      w_o => 23,
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
      sub_i => c_6_sub_sel,
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 7 and associated fundamentals [[4], [3]]
  c_7_1_2_False_resize <= resize(c_1, 18);
  c_7_1_2_False_shift <= shift_left(c_7_1_2_False_resize, 2);
  c_7_2_0_False_resize <= c_2;
  c_7_2_0_False_shift <= shift_left(c_7_2_0_False_resize, 0);
  with config_select_2 select c_7_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_1_2_False_shift;
        when others => c_7 <= c_7_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 8 and associated fundamentals [[3], [1]]
  c_8_1_0_False_resize <= resize(c_1, 18);
  c_8_1_0_False_shift <= shift_left(c_8_1_0_False_resize, 0);
  c_8_2_0_False_resize <= c_2;
  c_8_2_0_False_shift <= shift_left(c_8_2_0_False_resize, 0);
  with config_select_2 select c_8_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_1_0_False_shift;
        when others => c_8 <= c_8_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 9 and associated fundamentals [[70], [46]]
  with config_select_3 select c_9_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
      w_o => 23,
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
      sub_i => c_9_sub_sel,
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 10 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_1 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 11 and associated fundamentals [[1], [2]]
  c_11_1_0_False_resize <= resize(c_1, 17);
  c_11_1_0_False_shift <= shift_left(c_11_1_0_False_resize, 0);
  c_11_1_1_False_resize <= resize(c_1, 17);
  c_11_1_1_False_shift <= shift_left(c_11_1_1_False_resize, 1);
  with config_select_2 select c_11_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_1_0_False_shift;
        when others => c_11 <= c_11_1_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 12 and associated fundamentals [[254], [252]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 17,
      w_o => 24,
      s_x_i => 8,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 13 and associated fundamentals [[1], [64]]
  c_13_1_6_False_resize <= resize(c_1, 22);
  c_13_1_6_False_shift <= shift_left(c_13_1_6_False_resize, 6);
  c_13_1_0_False_resize <= resize(c_1, 22);
  c_13_1_0_False_shift <= shift_left(c_13_1_0_False_resize, 0);
  with config_select_2 select c_13_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_1_6_False_shift;
        when others => c_13 <= c_13_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 14 and associated fundamentals [[112], [1]]
  c_14_3_4_False_resize <= resize(c_3, 23);
  c_14_3_4_False_shift <= shift_left(c_14_3_4_False_resize, 4);
  c_14_1_0_False_resize <= resize(c_1, 23);
  c_14_1_0_False_shift <= shift_left(c_14_1_0_False_resize, 0);
  with config_select_2 select c_14_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_3_4_False_shift;
        when others => c_14 <= c_14_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 15 and associated fundamentals [[225], [62]]
  with config_select_3 select c_15_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_15_sub_sel,
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 16 and associated fundamentals [[6], [3]]
  c_16_2_1_False_resize <= resize(c_2, 19);
  c_16_2_1_False_shift <= shift_left(c_16_2_1_False_resize, 1);
  c_16_2_0_False_resize <= resize(c_2, 19);
  c_16_2_0_False_shift <= shift_left(c_16_2_0_False_resize, 0);
  with config_select_2 select c_16_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_2_1_False_shift;
        when others => c_16 <= c_16_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 17 and associated fundamentals [[4], [7]]
  c_17_1_2_False_resize <= resize(c_1, 19);
  c_17_1_2_False_shift <= shift_left(c_17_1_2_False_resize, 2);
  c_17_3_0_False_resize <= c_3;
  c_17_3_0_False_shift <= shift_left(c_17_3_0_False_resize, 0);
  with config_select_2 select c_17_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_1_2_False_shift;
        when others => c_17 <= c_17_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 18 and associated fundamentals [[184], [82]]
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 24,
      s_x_i => 5,
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
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 3 with id 19 and associated fundamentals [[254], [252]]
  c_19_resize <= c_12;
  c_19 <= shift_left(c_19_resize, 0);
  -- node of type 'output' in stage 3 with id 20 and associated fundamentals [[184], [82]]
  c_20_resize <= c_18;
  c_20 <= shift_left(c_20_resize, 0);
  -- node of type 'output' in stage 3 with id 21 and associated fundamentals [[225], [62]]
  c_21_resize <= c_15;
  c_21 <= shift_left(c_21_resize, 0);
  -- node of type 'output' in stage 3 with id 22 and associated fundamentals [[70], [46]]
  c_22_resize <= c_9;
  c_22 <= shift_left(c_22_resize, 0);
  -- node of type 'output' in stage 3 with id 23 and associated fundamentals [[66], [21]]
  c_23_resize <= c_6;
  c_23 <= shift_left(c_23_resize, 0);
end architecture;
