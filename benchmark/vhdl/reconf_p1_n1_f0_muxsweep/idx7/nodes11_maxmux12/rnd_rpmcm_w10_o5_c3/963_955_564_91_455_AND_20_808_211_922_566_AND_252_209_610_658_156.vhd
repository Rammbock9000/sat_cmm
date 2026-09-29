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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_i0_resize: signed(17 downto 0);
  signal c_1_i1_resize: signed(17 downto 0);
  signal c_1_i0_shift: signed(17 downto 0);
  signal c_1_i1_shift: signed(17 downto 0);
  signal c_1_arith: signed(17 downto 0);
  signal c_1_oshift: signed(17 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(17 downto 0);
  signal c_2_i0_resize: signed(17 downto 0);
  signal c_2_i1_resize: signed(17 downto 0);
  signal c_2_i0_shift: signed(17 downto 0);
  signal c_2_i1_shift: signed(17 downto 0);
  signal c_2_arith: signed(17 downto 0);
  signal c_2_oshift: signed(17 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(19 downto 0);
  signal c_3_i1_resize: signed(19 downto 0);
  signal c_3_i0_shift: signed(19 downto 0);
  signal c_3_i1_shift: signed(19 downto 0);
  signal c_3_arith: signed(19 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(21 downto 0);
  signal c_4_0_0_False_resize: signed(21 downto 0);
  signal c_4_0_0_False_shift: signed(21 downto 0);
  signal c_4_0_6_False_resize: signed(21 downto 0);
  signal c_4_0_6_False_shift: signed(21 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(25 downto 0);
  signal c_5_i0_resize: signed(25 downto 0);
  signal c_5_i1_resize: signed(25 downto 0);
  signal c_5_i0_shift: signed(25 downto 0);
  signal c_5_i1_shift: signed(25 downto 0);
  signal c_5_arith: signed(25 downto 0);
  signal c_5_oshift: signed(25 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(25 downto 0);
  signal c_6_3_0_False_resize: signed(25 downto 0);
  signal c_6_3_0_False_shift: signed(25 downto 0);
  signal c_6_3_6_False_resize: signed(25 downto 0);
  signal c_6_3_6_False_shift: signed(25 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(20 downto 0);
  signal c_7_3_1_False_resize: signed(20 downto 0);
  signal c_7_3_1_False_shift: signed(20 downto 0);
  signal c_7_2_0_False_resize: signed(20 downto 0);
  signal c_7_2_0_False_shift: signed(20 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(25 downto 0);
  signal c_8_i0_resize: signed(25 downto 0);
  signal c_8_i1_resize: signed(25 downto 0);
  signal c_8_i0_shift: signed(25 downto 0);
  signal c_8_i1_shift: signed(25 downto 0);
  signal c_8_arith: signed(25 downto 0);
  signal c_8_oshift: signed(25 downto 0);
  signal c_9: signed(19 downto 0);
  signal c_9_1_1_False_resize: signed(19 downto 0);
  signal c_9_1_1_False_shift: signed(19 downto 0);
  signal c_9_3_0_False_resize: signed(19 downto 0);
  signal c_9_3_0_False_shift: signed(19 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(25 downto 0);
  signal c_10_i0_resize: signed(25 downto 0);
  signal c_10_i1_resize: signed(25 downto 0);
  signal c_10_i0_shift: signed(25 downto 0);
  signal c_10_i1_shift: signed(25 downto 0);
  signal c_10_arith: signed(25 downto 0);
  signal c_10_oshift: signed(25 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(19 downto 0);
  signal c_11_0_4_False_resize: signed(19 downto 0);
  signal c_11_0_4_False_shift: signed(19 downto 0);
  signal c_11_0_0_False_resize: signed(19 downto 0);
  signal c_11_0_0_False_shift: signed(19 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(21 downto 0);
  signal c_12_i0_resize: signed(21 downto 0);
  signal c_12_i1_resize: signed(21 downto 0);
  signal c_12_i0_shift: signed(21 downto 0);
  signal c_12_i1_shift: signed(21 downto 0);
  signal c_12_arith: signed(21 downto 0);
  signal c_12_oshift: signed(21 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(21 downto 0);
  signal c_13_1_3_False_resize: signed(21 downto 0);
  signal c_13_1_3_False_shift: signed(21 downto 0);
  signal c_13_3_0_False_resize: signed(21 downto 0);
  signal c_13_3_0_False_shift: signed(21 downto 0);
  signal c_13_3_3_False_resize: signed(21 downto 0);
  signal c_13_3_3_False_shift: signed(21 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(25 downto 0);
  signal c_14_i0_resize: signed(25 downto 0);
  signal c_14_i1_resize: signed(25 downto 0);
  signal c_14_i0_shift: signed(25 downto 0);
  signal c_14_i1_shift: signed(25 downto 0);
  signal c_14_arith: signed(25 downto 0);
  signal c_14_oshift: signed(25 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(19 downto 0);
  signal c_15_3_1_False_resize: signed(19 downto 0);
  signal c_15_3_1_False_shift: signed(19 downto 0);
  signal c_15_1_0_False_resize: signed(19 downto 0);
  signal c_15_1_0_False_shift: signed(19 downto 0);
  signal c_15_3_0_False_resize: signed(19 downto 0);
  signal c_15_3_0_False_shift: signed(19 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(25 downto 0);
  signal c_16_i1_resize: signed(25 downto 0);
  signal c_16_i0_shift: signed(25 downto 0);
  signal c_16_i1_shift: signed(25 downto 0);
  signal c_16_arith: signed(25 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(25 downto 0);
  signal c_17_i0_resize: signed(26 downto 0);
  signal c_17_i1_resize: signed(26 downto 0);
  signal c_17_i0_shift: signed(26 downto 0);
  signal c_17_i1_shift: signed(26 downto 0);
  signal c_17_arith: signed(26 downto 0);
  signal c_17_oshift: signed(25 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(17 downto 0);
  signal c_18_2_0_False_resize: signed(17 downto 0);
  signal c_18_2_0_False_shift: signed(17 downto 0);
  signal c_18_1_1_False_resize: signed(17 downto 0);
  signal c_18_1_1_False_shift: signed(17 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(24 downto 0);
  signal c_19_i0_resize: signed(24 downto 0);
  signal c_19_i1_resize: signed(24 downto 0);
  signal c_19_i0_shift: signed(24 downto 0);
  signal c_19_i1_shift: signed(24 downto 0);
  signal c_19_arith: signed(24 downto 0);
  signal c_19_oshift: signed(24 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_8_2_False_resize: signed(25 downto 0);
  signal c_20_8_2_False_shift: signed(25 downto 0);
  signal c_20_10_0_False_resize: signed(25 downto 0);
  signal c_20_10_0_False_shift: signed(25 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_resize: signed(25 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_14_0_False_resize: signed(25 downto 0);
  signal c_22_14_0_False_shift: signed(25 downto 0);
  signal c_22_19_2_False_resize: signed(25 downto 0);
  signal c_22_19_2_False_shift: signed(25 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_resize: signed(25 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_10_1_False_resize: signed(25 downto 0);
  signal c_24_10_1_False_shift: signed(25 downto 0);
  signal c_24_8_0_False_resize: signed(25 downto 0);
  signal c_24_8_0_False_shift: signed(25 downto 0);
  signal c_24_10_0_False_resize: signed(25 downto 0);
  signal c_24_10_0_False_shift: signed(25 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_resize: signed(25 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_14_1_False_resize: signed(25 downto 0);
  signal c_26_14_1_False_shift: signed(25 downto 0);
  signal c_26_19_1_False_resize: signed(25 downto 0);
  signal c_26_19_1_False_shift: signed(25 downto 0);
  signal c_26_19_0_False_resize: signed(25 downto 0);
  signal c_26_19_0_False_shift: signed(25 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_resize: signed(25 downto 0);
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
  -- output node 3 with id 27
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_27);
    end if;
  end process;
  -- output node 4 with id 28
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_28);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[1], [1], [3]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 18,
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
      sub_i => c_1_sub_sel,
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
  -- node of type 'add_sub' in stage 1 with id 2 and associated fundamentals [[3], [3], [1]]
  with config_select_1 select c_2_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 18,
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
      sub_i => c_2_sub_sel,
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
  -- node of type 'add_sub' in stage 1 with id 3 and associated fundamentals [[9], [7], [9]]
  with config_select_1 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[64], [1], [1]]
  c_4_0_0_False_resize <= resize(c_0, 22);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_6_False_resize <= resize(c_0, 22);
  c_4_0_6_False_shift <= shift_left(c_4_0_6_False_resize, 6);
  with config_select_1 select c_4_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_0_False_shift;
        when others => c_4 <= c_4_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 5 and associated fundamentals [[1027], [13], [17]]
  with config_select_2 select c_5_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 18,
      w_o => 26,
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
      x_i => c_4,
      y_i => c_2,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[576], [7], [9]]
  c_6_3_0_False_resize <= resize(c_3, 26);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  c_6_3_6_False_resize <= resize(c_3, 26);
  c_6_3_6_False_shift <= shift_left(c_6_3_6_False_resize, 6);
  with config_select_2 select c_6_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_3_0_False_shift;
        when others => c_6 <= c_6_3_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 7 and associated fundamentals [[3], [3], [18]]
  c_7_3_1_False_resize <= resize(c_3, 21);
  c_7_3_1_False_shift <= shift_left(c_7_3_1_False_resize, 1);
  c_7_2_0_False_resize <= resize(c_2, 21);
  c_7_2_0_False_shift <= shift_left(c_7_2_0_False_resize, 0);
  with config_select_2 select c_7_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_3_1_False_shift;
        when others => c_7 <= c_7_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 8 and associated fundamentals [[564], [-5], [-63]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 21,
      w_o => 26,
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
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 9 and associated fundamentals [[2], [7], [9]]
  c_9_1_1_False_resize <= resize(c_1, 20);
  c_9_1_1_False_shift <= shift_left(c_9_1_1_False_resize, 1);
  c_9_3_0_False_resize <= c_3;
  c_9_3_0_False_shift <= shift_left(c_9_3_0_False_resize, 0);
  with config_select_2 select c_9_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_1_1_False_shift;
        when others => c_9 <= c_9_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 10 and associated fundamentals [[-963], [211], [305]]
  with config_select_3 select c_10_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 26,
      w_o => 26,
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
      sub_i => c_10_sub_sel,
      x_i => c_9,
      y_i => c_5,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 11 and associated fundamentals [[1], [16], [16]]
  c_11_0_4_False_resize <= resize(c_0, 20);
  c_11_0_4_False_shift <= shift_left(c_11_0_4_False_resize, 4);
  c_11_0_0_False_resize <= resize(c_0, 20);
  c_11_0_0_False_shift <= shift_left(c_11_0_0_False_resize, 0);
  with config_select_1 select c_11_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_0_4_False_shift;
        when others => c_11 <= c_11_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 12 and associated fundamentals [[11], [25], [41]]
  with config_select_2 select c_12_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
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
      sub_i => c_12_sub_sel,
      x_i => c_11,
      y_i => c_3,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 13 and associated fundamentals [[9], [56], [24]]
  c_13_1_3_False_resize <= resize(c_1, 22);
  c_13_1_3_False_shift <= shift_left(c_13_1_3_False_resize, 3);
  c_13_3_0_False_resize <= resize(c_3, 22);
  c_13_3_0_False_shift <= shift_left(c_13_3_0_False_resize, 0);
  c_13_3_3_False_resize <= resize(c_3, 22);
  c_13_3_3_False_shift <= shift_left(c_13_3_3_False_resize, 3);
  with config_select_2 select c_13_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_1_3_False_shift;
        when "01" => c_13 <= c_13_3_0_False_shift;
        when others => c_13 <= c_13_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 14 and associated fundamentals [[955], [461], [209]]
  with config_select_3 select c_14_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 22,
      w_o => 26,
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
      x_i => c_5,
      y_i => c_13,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 15 and associated fundamentals [[1], [14], [9]]
  c_15_3_1_False_resize <= c_3;
  c_15_3_1_False_shift <= shift_left(c_15_3_1_False_resize, 1);
  c_15_1_0_False_resize <= resize(c_1, 20);
  c_15_1_0_False_shift <= shift_left(c_15_1_0_False_resize, 0);
  c_15_3_0_False_resize <= c_3;
  c_15_3_0_False_shift <= shift_left(c_15_3_0_False_resize, 0);
  with config_select_2 select c_15_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "00" => c_15 <= c_15_3_1_False_shift;
        when "01" => c_15 <= c_15_1_0_False_shift;
        when others => c_15 <= c_15_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 16 and associated fundamentals [[-53], [921], [617]]
  with config_select_3 select c_16_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 6,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_16_sub_sel,
      x_i => c_12,
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 17 and associated fundamentals [[455], [566], [156]]
  with config_select_4 select c_17_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 26,
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
      sub_i => c_17_sub_sel,
      x_i => c_16,
      y_i => c_10,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 18 and associated fundamentals [[3], [2], [1]]
  c_18_2_0_False_resize <= c_2;
  c_18_2_0_False_shift <= shift_left(c_18_2_0_False_resize, 0);
  c_18_1_1_False_resize <= c_1;
  c_18_1_1_False_shift <= shift_left(c_18_1_1_False_resize, 1);
  with config_select_2 select c_18_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_2_0_False_shift;
        when others => c_18 <= c_18_1_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 19 and associated fundamentals [[91], [202], [329]]
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 18,
      w_o => 25,
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
      x_i => c_12,
      y_i => c_18,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 20 and associated fundamentals [[-963], [-20], [-252]]
  c_20_8_2_False_resize <= c_8;
  c_20_8_2_False_shift <= shift_left(c_20_8_2_False_resize, 2);
  c_20_10_0_False_resize <= c_10;
  c_20_10_0_False_shift <= shift_left(c_20_10_0_False_resize, 0);
  with config_select_4 select c_20_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_8_2_False_shift;
        when others => c_20 <= c_20_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 21 and associated fundamentals [[963], [20], [252]]
  c_21_resize <= c_20;
  c_21 <= -shift_left(c_21_resize, 0);
  -- node of type 'mux' in stage 4 with id 22 and associated fundamentals [[955], [808], [209]]
  c_22_14_0_False_resize <= c_14;
  c_22_14_0_False_shift <= shift_left(c_22_14_0_False_resize, 0);
  c_22_19_2_False_resize <= resize(c_19, 26);
  c_22_19_2_False_shift <= shift_left(c_22_19_2_False_resize, 2);
  with config_select_4 select c_22_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_14_0_False_shift;
        when others => c_22 <= c_22_19_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 23 and associated fundamentals [[955], [808], [209]]
  c_23_resize <= c_22;
  c_23 <= shift_left(c_23_resize, 0);
  -- node of type 'mux' in stage 4 with id 24 and associated fundamentals [[564], [211], [610]]
  c_24_10_1_False_resize <= c_10;
  c_24_10_1_False_shift <= shift_left(c_24_10_1_False_resize, 1);
  c_24_8_0_False_resize <= c_8;
  c_24_8_0_False_shift <= shift_left(c_24_8_0_False_resize, 0);
  c_24_10_0_False_resize <= c_10;
  c_24_10_0_False_shift <= shift_left(c_24_10_0_False_resize, 0);
  with config_select_4 select c_24_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_10_1_False_shift;
        when "01" => c_24 <= c_24_8_0_False_shift;
        when others => c_24 <= c_24_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 25 and associated fundamentals [[564], [211], [610]]
  c_25_resize <= c_24;
  c_25 <= shift_left(c_25_resize, 0);
  -- node of type 'mux' in stage 4 with id 26 and associated fundamentals [[91], [922], [658]]
  c_26_14_1_False_resize <= c_14;
  c_26_14_1_False_shift <= shift_left(c_26_14_1_False_resize, 1);
  c_26_19_1_False_resize <= resize(c_19, 26);
  c_26_19_1_False_shift <= shift_left(c_26_19_1_False_resize, 1);
  c_26_19_0_False_resize <= resize(c_19, 26);
  c_26_19_0_False_shift <= shift_left(c_26_19_0_False_resize, 0);
  with config_select_4 select c_26_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "00" => c_26 <= c_26_14_1_False_shift;
        when "01" => c_26 <= c_26_19_1_False_shift;
        when others => c_26 <= c_26_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 27 and associated fundamentals [[91], [922], [658]]
  c_27_resize <= c_26;
  c_27 <= shift_left(c_27_resize, 0);
  -- node of type 'output' in stage 4 with id 28 and associated fundamentals [[455], [566], [156]]
  c_28_resize <= c_17;
  c_28 <= shift_left(c_28_resize, 0);
end architecture;
