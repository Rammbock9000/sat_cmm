library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(24 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(19 downto 0);
  signal c_2_i0_resize: signed(19 downto 0);
  signal c_2_i1_resize: signed(19 downto 0);
  signal c_2_i0_shift: signed(19 downto 0);
  signal c_2_i1_shift: signed(19 downto 0);
  signal c_2_arith: signed(19 downto 0);
  signal c_2_oshift: signed(19 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(22 downto 0);
  signal c_3_i0_resize: signed(22 downto 0);
  signal c_3_i1_resize: signed(22 downto 0);
  signal c_3_i0_shift: signed(22 downto 0);
  signal c_3_i1_shift: signed(22 downto 0);
  signal c_3_arith: signed(22 downto 0);
  signal c_3_oshift: signed(22 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(17 downto 0);
  signal c_4_0_0_False_resize: signed(17 downto 0);
  signal c_4_0_0_False_shift: signed(17 downto 0);
  signal c_4_0_2_False_resize: signed(17 downto 0);
  signal c_4_0_2_False_shift: signed(17 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(25 downto 0);
  signal c_5_i0_resize: signed(25 downto 0);
  signal c_5_i1_resize: signed(25 downto 0);
  signal c_5_i0_shift: signed(25 downto 0);
  signal c_5_i1_shift: signed(25 downto 0);
  signal c_5_arith: signed(25 downto 0);
  signal c_5_oshift: signed(25 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(19 downto 0);
  signal c_6_1_4_False_resize: signed(19 downto 0);
  signal c_6_1_4_False_shift: signed(19 downto 0);
  signal c_6_2_0_False_resize: signed(19 downto 0);
  signal c_6_2_0_False_shift: signed(19 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(25 downto 0);
  signal c_7_i0_resize: signed(25 downto 0);
  signal c_7_i1_resize: signed(25 downto 0);
  signal c_7_i0_shift: signed(25 downto 0);
  signal c_7_i1_shift: signed(25 downto 0);
  signal c_7_arith: signed(25 downto 0);
  signal c_7_oshift: signed(25 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(20 downto 0);
  signal c_8_2_2_False_resize: signed(20 downto 0);
  signal c_8_2_2_False_shift: signed(20 downto 0);
  signal c_8_2_0_False_resize: signed(20 downto 0);
  signal c_8_2_0_False_shift: signed(20 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(27 downto 0);
  signal c_9_i0_resize: signed(27 downto 0);
  signal c_9_i1_resize: signed(27 downto 0);
  signal c_9_i0_shift: signed(27 downto 0);
  signal c_9_i1_shift: signed(27 downto 0);
  signal c_9_arith: signed(27 downto 0);
  signal c_9_oshift: signed(27 downto 0);
  signal c_10: signed(25 downto 0);
  signal c_10_2_0_False_resize: signed(25 downto 0);
  signal c_10_2_0_False_shift: signed(25 downto 0);
  signal c_10_2_6_False_resize: signed(25 downto 0);
  signal c_10_2_6_False_shift: signed(25 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(18 downto 0);
  signal c_11_1_3_False_resize: signed(18 downto 0);
  signal c_11_1_3_False_shift: signed(18 downto 0);
  signal c_11_1_0_False_resize: signed(18 downto 0);
  signal c_11_1_0_False_shift: signed(18 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(25 downto 0);
  signal c_12_i0_resize: signed(25 downto 0);
  signal c_12_i1_resize: signed(25 downto 0);
  signal c_12_i0_shift: signed(25 downto 0);
  signal c_12_i1_shift: signed(25 downto 0);
  signal c_12_arith: signed(25 downto 0);
  signal c_12_oshift: signed(25 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(22 downto 0);
  signal c_13_3_0_False_resize: signed(22 downto 0);
  signal c_13_3_0_False_shift: signed(22 downto 0);
  signal c_13_1_4_False_resize: signed(22 downto 0);
  signal c_13_1_4_False_shift: signed(22 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_1_0_False_resize: signed(23 downto 0);
  signal c_14_1_0_False_shift: signed(23 downto 0);
  signal c_14_3_1_False_resize: signed(23 downto 0);
  signal c_14_3_1_False_shift: signed(23 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(26 downto 0);
  signal c_15_i0_resize: signed(26 downto 0);
  signal c_15_i1_resize: signed(26 downto 0);
  signal c_15_i0_shift: signed(26 downto 0);
  signal c_15_i1_shift: signed(26 downto 0);
  signal c_15_arith: signed(26 downto 0);
  signal c_15_oshift: signed(26 downto 0);
  signal c_16: signed(17 downto 0);
  signal c_16_0_0_False_resize: signed(17 downto 0);
  signal c_16_0_0_False_shift: signed(17 downto 0);
  signal c_16_0_2_False_resize: signed(17 downto 0);
  signal c_16_0_2_False_shift: signed(17 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_17_i0_resize: signed(24 downto 0);
  signal c_17_i1_resize: signed(24 downto 0);
  signal c_17_i0_shift: signed(24 downto 0);
  signal c_17_i1_shift: signed(24 downto 0);
  signal c_17_arith: signed(24 downto 0);
  signal c_17_oshift: signed(24 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(25 downto 0);
  signal c_18_i0_resize: signed(26 downto 0);
  signal c_18_i1_resize: signed(26 downto 0);
  signal c_18_i0_shift: signed(26 downto 0);
  signal c_18_i1_shift: signed(26 downto 0);
  signal c_18_arith: signed(26 downto 0);
  signal c_18_oshift: signed(25 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(22 downto 0);
  signal c_19_i0_resize: signed(25 downto 0);
  signal c_19_i1_resize: signed(25 downto 0);
  signal c_19_i0_shift: signed(25 downto 0);
  signal c_19_i1_shift: signed(25 downto 0);
  signal c_19_arith: signed(25 downto 0);
  signal c_19_oshift: signed(22 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(24 downto 0);
  signal c_20_i0_resize: signed(27 downto 0);
  signal c_20_i1_resize: signed(27 downto 0);
  signal c_20_i0_shift: signed(27 downto 0);
  signal c_20_i1_shift: signed(27 downto 0);
  signal c_20_arith: signed(27 downto 0);
  signal c_20_oshift: signed(24 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(24 downto 0);
  signal c_21_resize: signed(24 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_7_1_False_resize: signed(25 downto 0);
  signal c_22_7_1_False_shift: signed(25 downto 0);
  signal c_22_15_0_False_resize: signed(25 downto 0);
  signal c_22_15_0_False_shift: signed(25 downto 0);
  signal c_22_7_0_False_resize: signed(25 downto 0);
  signal c_22_7_0_False_shift: signed(25 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_resize: signed(25 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_7_1_False_resize: signed(25 downto 0);
  signal c_24_7_1_False_shift: signed(25 downto 0);
  signal c_24_19_7_False_resize: signed(25 downto 0);
  signal c_24_19_7_False_shift: signed(25 downto 0);
  signal c_24_19_0_False_resize: signed(25 downto 0);
  signal c_24_19_0_False_shift: signed(25 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_resize: signed(25 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_resize: signed(25 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_resize: signed(25 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 21
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_21);
    end if;
  end process;
  -- output node 1 with id 23
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_23);
    end if;
  end process;
  -- output node 2 with id 25
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_25);
    end if;
  end process;
  -- output node 3 with id 26
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_26);
    end if;
  end process;
  -- output node 4 with id 28
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_28);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 2 and associated fundamentals [[6], [10], [6]]
  with config_select_1 select c_2_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
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
      sub_i => c_2_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_2_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_2_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 3 and associated fundamentals [[68], [60], [68]]
  with config_select_1 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 23,
      s_x_i => 6,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_3_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[4], [1], [1]]
  c_4_0_0_False_resize <= resize(c_0, 18);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_2_False_resize <= resize(c_0, 18);
  c_4_0_2_False_shift <= shift_left(c_4_0_2_False_resize, 2);
  with config_select_1 select c_4_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_0_False_shift;
        when others => c_4 <= c_4_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 5 and associated fundamentals [[416], [632], [376]]
  with config_select_2 select c_5_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 18,
      w_o => 26,
      s_x_i => 6,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_5_sub_sel,
      x_i => c_2,
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[6], [16], [6]]
  c_6_1_4_False_resize <= resize(c_1, 20);
  c_6_1_4_False_shift <= shift_left(c_6_1_4_False_resize, 4);
  c_6_2_0_False_resize <= c_2;
  c_6_2_0_False_shift <= shift_left(c_6_2_0_False_resize, 0);
  with config_select_2 select c_6_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_1_4_False_shift;
        when others => c_6 <= c_6_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 7 and associated fundamentals [[410], [648], [370]]
  with config_select_3 select c_7_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 20,
      w_o => 26,
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
      sub_i => c_7_sub_sel,
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 8 and associated fundamentals [[24], [10], [6]]
  c_8_2_2_False_resize <= resize(c_2, 21);
  c_8_2_2_False_shift <= shift_left(c_8_2_2_False_resize, 2);
  c_8_2_0_False_resize <= resize(c_2, 21);
  c_8_2_0_False_shift <= shift_left(c_8_2_0_False_resize, 0);
  with config_select_2 select c_8_sel <= 
    "0" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_2_2_False_shift;
        when others => c_8 <= c_8_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 9 and associated fundamentals [[3200], [3168], [1888]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 21,
      w_o => 28,
      s_x_i => 2,
      s_y_i => 6,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_5,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(27 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 10 and associated fundamentals [[6], [640], [6]]
  c_10_2_0_False_resize <= resize(c_2, 26);
  c_10_2_0_False_shift <= shift_left(c_10_2_0_False_resize, 0);
  c_10_2_6_False_resize <= resize(c_2, 26);
  c_10_2_6_False_shift <= shift_left(c_10_2_6_False_resize, 6);
  with config_select_2 select c_10_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_2_0_False_shift;
        when others => c_10 <= c_10_2_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 11 and associated fundamentals [[8], [1], [1]]
  c_11_1_3_False_resize <= resize(c_1, 19);
  c_11_1_3_False_shift <= shift_left(c_11_1_3_False_resize, 3);
  c_11_1_0_False_resize <= resize(c_1, 19);
  c_11_1_0_False_shift <= shift_left(c_11_1_0_False_resize, 0);
  with config_select_2 select c_11_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_1_3_False_shift;
        when others => c_11 <= c_11_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 12 and associated fundamentals [[14], [641], [5]]
  with config_select_3 select c_12_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 19,
      w_o => 26,
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
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 13 and associated fundamentals [[16], [60], [68]]
  c_13_3_0_False_resize <= c_3;
  c_13_3_0_False_shift <= shift_left(c_13_3_0_False_resize, 0);
  c_13_1_4_False_resize <= resize(c_1, 23);
  c_13_1_4_False_shift <= shift_left(c_13_1_4_False_resize, 4);
  with config_select_2 select c_13_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_3_0_False_shift;
        when others => c_13 <= c_13_1_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 14 and associated fundamentals [[1], [1], [136]]
  c_14_1_0_False_resize <= resize(c_1, 24);
  c_14_1_0_False_shift <= shift_left(c_14_1_0_False_resize, 0);
  c_14_3_1_False_resize <= resize(c_3, 24);
  c_14_3_1_False_shift <= shift_left(c_14_3_1_False_resize, 1);
  with config_select_2 select c_14_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_1_0_False_shift;
        when others => c_14 <= c_14_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 15 and associated fundamentals [[136], [488], [1632]]
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
      w_o => 27,
      s_x_i => 3,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 16 and associated fundamentals [[4], [1], [4]]
  c_16_0_0_False_resize <= resize(c_0, 18);
  c_16_0_0_False_shift <= shift_left(c_16_0_0_False_resize, 0);
  c_16_0_2_False_resize <= resize(c_0, 18);
  c_16_0_2_False_shift <= shift_left(c_16_0_2_False_resize, 2);
  with config_select_1 select c_16_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_0_0_False_shift;
        when others => c_16 <= c_16_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 17 and associated fundamentals [[192], [272], [320]]
  with config_select_2 select c_17_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 18,
      w_o => 25,
      s_x_i => 8,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_17_sub_sel,
      x_i => c_1,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 18 and associated fundamentals [[137], [568], [1001]]
  with config_select_4 select c_18_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 27,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 1,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_18_sub_sel,
      x_i => c_7,
      y_i => c_15,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 19 and associated fundamentals [[76], [45], [7]]
  with config_select_3 select c_19_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 3,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_19_sub_sel,
      x_i => c_5,
      y_i => c_17,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 20 and associated fundamentals [[383], [457], [440]]
  with config_select_4 select c_20_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 27,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 3,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_20_sub_sel,
      x_i => c_9,
      y_i => c_15,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 21 and associated fundamentals [[383], [457], [440]]
  c_21_resize <= c_20;
  c_21 <= shift_left(c_21_resize, 0);
  -- node of type 'mux' in stage 4 with id 22 and associated fundamentals [[410], [488], [740]]
  c_22_7_1_False_resize <= c_7;
  c_22_7_1_False_shift <= shift_left(c_22_7_1_False_resize, 1);
  c_22_15_0_False_resize <= c_15(25 downto 0);
  c_22_15_0_False_shift <= shift_left(c_22_15_0_False_resize, 0);
  c_22_7_0_False_resize <= c_7;
  c_22_7_0_False_shift <= shift_left(c_22_7_0_False_resize, 0);
  with config_select_4 select c_22_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_7_1_False_shift;
        when "01" => c_22 <= c_22_15_0_False_shift;
        when others => c_22 <= c_22_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 23 and associated fundamentals [[410], [488], [740]]
  c_23_resize <= c_22;
  c_23 <= shift_left(c_23_resize, 0);
  -- node of type 'mux' in stage 4 with id 24 and associated fundamentals [[820], [45], [896]]
  c_24_7_1_False_resize <= c_7;
  c_24_7_1_False_shift <= shift_left(c_24_7_1_False_resize, 1);
  c_24_19_7_False_resize <= resize(c_19, 26);
  c_24_19_7_False_shift <= shift_left(c_24_19_7_False_resize, 7);
  c_24_19_0_False_resize <= resize(c_19, 26);
  c_24_19_0_False_shift <= shift_left(c_24_19_0_False_resize, 0);
  with config_select_4 select c_24_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_7_1_False_shift;
        when "01" => c_24 <= c_24_19_7_False_shift;
        when others => c_24 <= c_24_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 25 and associated fundamentals [[820], [45], [896]]
  c_25_resize <= c_24;
  c_25 <= shift_left(c_25_resize, 0);
  -- node of type 'output' in stage 4 with id 26 and associated fundamentals [[137], [568], [1001]]
  c_26_resize <= c_18;
  c_26 <= shift_left(c_26_resize, 0);
  -- node of type 'register' in stage 4 with id 27 and associated fundamentals [[14], [641], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_12 & "";
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 28 and associated fundamentals [[14], [641], [5]]
  c_28_resize <= c_27;
  c_28 <= shift_left(c_28_resize, 0);
end architecture;
