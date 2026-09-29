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
  signal c_1: signed(18 downto 0);
  signal c_1_i0_resize: signed(18 downto 0);
  signal c_1_i1_resize: signed(18 downto 0);
  signal c_1_i0_shift: signed(18 downto 0);
  signal c_1_i1_shift: signed(18 downto 0);
  signal c_1_arith: signed(18 downto 0);
  signal c_1_oshift: signed(18 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(21 downto 0);
  signal c_2_0_1_False_resize: signed(21 downto 0);
  signal c_2_0_1_False_shift: signed(21 downto 0);
  signal c_2_0_6_False_resize: signed(21 downto 0);
  signal c_2_0_6_False_shift: signed(21 downto 0);
  signal c_2_0_0_False_resize: signed(21 downto 0);
  signal c_2_0_0_False_shift: signed(21 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(23 downto 0);
  signal c_3_0_8_False_resize: signed(23 downto 0);
  signal c_3_0_8_False_shift: signed(23 downto 0);
  signal c_3_0_5_False_resize: signed(23 downto 0);
  signal c_3_0_5_False_shift: signed(23 downto 0);
  signal c_3_0_0_False_resize: signed(23 downto 0);
  signal c_3_0_0_False_shift: signed(23 downto 0);
  signal c_3_sel: std_logic_vector(1 downto 0);
  signal c_4: signed(25 downto 0);
  signal c_4_i0_resize: signed(25 downto 0);
  signal c_4_i1_resize: signed(25 downto 0);
  signal c_4_i0_shift: signed(25 downto 0);
  signal c_4_i1_shift: signed(25 downto 0);
  signal c_4_arith: signed(25 downto 0);
  signal c_4_oshift: signed(25 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(24 downto 0);
  signal c_5_0_0_False_resize: signed(24 downto 0);
  signal c_5_0_0_False_shift: signed(24 downto 0);
  signal c_5_0_7_False_resize: signed(24 downto 0);
  signal c_5_0_7_False_shift: signed(24 downto 0);
  signal c_5_0_9_False_resize: signed(24 downto 0);
  signal c_5_0_9_False_shift: signed(24 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(25 downto 0);
  signal c_6_i0_resize: signed(25 downto 0);
  signal c_6_i1_resize: signed(25 downto 0);
  signal c_6_i0_shift: signed(25 downto 0);
  signal c_6_i1_shift: signed(25 downto 0);
  signal c_6_arith: signed(25 downto 0);
  signal c_6_oshift: signed(25 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(25 downto 0);
  signal c_7_1_3_False_resize: signed(25 downto 0);
  signal c_7_1_3_False_shift: signed(25 downto 0);
  signal c_7_1_0_False_resize: signed(25 downto 0);
  signal c_7_1_0_False_shift: signed(25 downto 0);
  signal c_7_1_7_False_resize: signed(25 downto 0);
  signal c_7_1_7_False_shift: signed(25 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(25 downto 0);
  signal c_8_i0_resize: signed(25 downto 0);
  signal c_8_i1_resize: signed(25 downto 0);
  signal c_8_i0_shift: signed(25 downto 0);
  signal c_8_i1_shift: signed(25 downto 0);
  signal c_8_arith: signed(25 downto 0);
  signal c_8_oshift: signed(25 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(21 downto 0);
  signal c_9_1_1_False_resize: signed(21 downto 0);
  signal c_9_1_1_False_shift: signed(21 downto 0);
  signal c_9_1_4_False_resize: signed(21 downto 0);
  signal c_9_1_4_False_shift: signed(21 downto 0);
  signal c_9_1_0_False_resize: signed(21 downto 0);
  signal c_9_1_0_False_shift: signed(21 downto 0);
  signal c_9_1_2_False_resize: signed(21 downto 0);
  signal c_9_1_2_False_shift: signed(21 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(25 downto 0);
  signal c_10_i0_resize: signed(25 downto 0);
  signal c_10_i1_resize: signed(25 downto 0);
  signal c_10_i0_shift: signed(25 downto 0);
  signal c_10_i1_shift: signed(25 downto 0);
  signal c_10_arith: signed(25 downto 0);
  signal c_10_oshift: signed(25 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(21 downto 0);
  signal c_11_1_4_False_resize: signed(21 downto 0);
  signal c_11_1_4_False_shift: signed(21 downto 0);
  signal c_11_1_0_False_resize: signed(21 downto 0);
  signal c_11_1_0_False_shift: signed(21 downto 0);
  signal c_11_1_2_False_resize: signed(21 downto 0);
  signal c_11_1_2_False_shift: signed(21 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(21 downto 0);
  signal c_12_1_3_False_resize: signed(21 downto 0);
  signal c_12_1_3_False_shift: signed(21 downto 0);
  signal c_12_1_4_False_resize: signed(21 downto 0);
  signal c_12_1_4_False_shift: signed(21 downto 0);
  signal c_12_1_0_False_resize: signed(21 downto 0);
  signal c_12_1_0_False_shift: signed(21 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(25 downto 0);
  signal c_13_i0_resize: signed(25 downto 0);
  signal c_13_i1_resize: signed(25 downto 0);
  signal c_13_i0_shift: signed(25 downto 0);
  signal c_13_i1_shift: signed(25 downto 0);
  signal c_13_arith: signed(25 downto 0);
  signal c_13_oshift: signed(25 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(25 downto 0);
  signal c_14_4_0_False_resize: signed(25 downto 0);
  signal c_14_4_0_False_shift: signed(25 downto 0);
  signal c_14_4_1_False_resize: signed(25 downto 0);
  signal c_14_4_1_False_shift: signed(25 downto 0);
  signal c_14_6_0_False_resize: signed(25 downto 0);
  signal c_14_6_0_False_shift: signed(25 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_i0_resize: signed(25 downto 0);
  signal c_15_i1_resize: signed(25 downto 0);
  signal c_15_i0_shift: signed(25 downto 0);
  signal c_15_i1_shift: signed(25 downto 0);
  signal c_15_arith: signed(25 downto 0);
  signal c_15_oshift: signed(25 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_10_0_False_resize: signed(25 downto 0);
  signal c_16_10_0_False_shift: signed(25 downto 0);
  signal c_16_8_0_False_resize: signed(25 downto 0);
  signal c_16_8_0_False_shift: signed(25 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_resize: signed(25 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_resize: signed(25 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_10_4_False_resize: signed(25 downto 0);
  signal c_19_10_4_False_shift: signed(25 downto 0);
  signal c_19_8_0_False_resize: signed(25 downto 0);
  signal c_19_8_0_False_shift: signed(25 downto 0);
  signal c_19_10_3_False_resize: signed(25 downto 0);
  signal c_19_10_3_False_shift: signed(25 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_resize: signed(25 downto 0);
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
  -- output node 0 with id 17
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_17);
    end if;
  end process;
  -- output node 1 with id 18
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_18);
    end if;
  end process;
  -- output node 2 with id 20
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_20);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[5], [-3], [-3], [-3]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
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
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[2], [64], [2], [1]]
  c_2_0_1_False_resize <= resize(c_0, 22);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  c_2_0_6_False_resize <= resize(c_0, 22);
  c_2_0_6_False_shift <= shift_left(c_2_0_6_False_resize, 6);
  c_2_0_0_False_resize <= resize(c_0, 22);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "00" when "00",
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_1_False_shift;
        when "01" => c_2 <= c_2_0_6_False_shift;
        when others => c_2 <= c_2_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 3 and associated fundamentals [[1], [32], [256], [1]]
  c_3_0_8_False_resize <= resize(c_0, 24);
  c_3_0_8_False_shift <= shift_left(c_3_0_8_False_resize, 8);
  c_3_0_5_False_resize <= resize(c_0, 24);
  c_3_0_5_False_shift <= shift_left(c_3_0_5_False_resize, 5);
  c_3_0_0_False_resize <= resize(c_0, 24);
  c_3_0_0_False_shift <= shift_left(c_3_0_0_False_resize, 0);
  with config_select_1 select c_3_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "00" => c_3 <= c_3_0_8_False_shift;
        when "01" => c_3 <= c_3_0_5_False_shift;
        when others => c_3 <= c_3_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 4 and associated fundamentals [[33], [992], [288], [15]]
  with config_select_2 select c_4_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 24,
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
      sub_i => c_4_sub_sel,
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[1], [1], [512], [128]]
  c_5_0_0_False_resize <= resize(c_0, 25);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_0_7_False_resize <= resize(c_0, 25);
  c_5_0_7_False_shift <= shift_left(c_5_0_7_False_resize, 7);
  c_5_0_9_False_resize <= resize(c_0, 25);
  c_5_0_9_False_shift <= shift_left(c_5_0_9_False_resize, 9);
  with config_select_1 select c_5_sel <= 
    "00" when "01",
    "00" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_0_0_False_shift;
        when "01" => c_5 <= c_5_0_7_False_shift;
        when others => c_5 <= c_5_0_9_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 6 and associated fundamentals [[-3], [5], [1021], [259]]
  with config_select_2 select c_6_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 19,
      w_o => 26,
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
      x_i => c_5,
      y_i => c_1,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 7 and associated fundamentals [[640], [-3], [-3], [-24]]
  c_7_1_3_False_resize <= resize(c_1, 26);
  c_7_1_3_False_shift <= shift_left(c_7_1_3_False_resize, 3);
  c_7_1_0_False_resize <= resize(c_1, 26);
  c_7_1_0_False_shift <= shift_left(c_7_1_0_False_resize, 0);
  c_7_1_7_False_resize <= resize(c_1, 26);
  c_7_1_7_False_shift <= shift_left(c_7_1_7_False_resize, 7);
  with config_select_2 select c_7_sel <= 
    "00" when "11",
    "01" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_1_3_False_shift;
        when "01" => c_7 <= c_7_1_0_False_shift;
        when others => c_7 <= c_7_1_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 8 and associated fundamentals [[673], [995], [285], [39]]
  with config_select_3 select c_8_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 26,
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
      sub_i => c_8_sub_sel,
      x_i => c_4,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 9 and associated fundamentals [[10], [-3], [-12], [-48]]
  c_9_1_1_False_resize <= resize(c_1, 22);
  c_9_1_1_False_shift <= shift_left(c_9_1_1_False_resize, 1);
  c_9_1_4_False_resize <= resize(c_1, 22);
  c_9_1_4_False_shift <= shift_left(c_9_1_4_False_resize, 4);
  c_9_1_0_False_resize <= resize(c_1, 22);
  c_9_1_0_False_shift <= shift_left(c_9_1_0_False_resize, 0);
  c_9_1_2_False_resize <= resize(c_1, 22);
  c_9_1_2_False_shift <= shift_left(c_9_1_2_False_resize, 2);
  with config_select_2 select c_9_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "00" => c_9 <= c_9_1_1_False_shift;
        when "01" => c_9 <= c_9_1_4_False_shift;
        when "10" => c_9 <= c_9_1_0_False_shift;
        when others => c_9 <= c_9_1_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 10 and associated fundamentals [[37], [17], [973], [67]]
  with config_select_3 select c_10_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 22,
      w_o => 26,
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
      sub_i => c_10_sub_sel,
      x_i => c_6,
      y_i => c_9,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 11 and associated fundamentals [[5], [-48], [-12], [-12]]
  c_11_1_4_False_resize <= resize(c_1, 22);
  c_11_1_4_False_shift <= shift_left(c_11_1_4_False_resize, 4);
  c_11_1_0_False_resize <= resize(c_1, 22);
  c_11_1_0_False_shift <= shift_left(c_11_1_0_False_resize, 0);
  c_11_1_2_False_resize <= resize(c_1, 22);
  c_11_1_2_False_shift <= shift_left(c_11_1_2_False_resize, 2);
  with config_select_2 select c_11_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_1_4_False_shift;
        when "01" => c_11 <= c_11_1_0_False_shift;
        when others => c_11 <= c_11_1_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 12 and associated fundamentals [[40], [-48], [-3], [-48]]
  c_12_1_3_False_resize <= resize(c_1, 22);
  c_12_1_3_False_shift <= shift_left(c_12_1_3_False_resize, 3);
  c_12_1_4_False_resize <= resize(c_1, 22);
  c_12_1_4_False_shift <= shift_left(c_12_1_4_False_resize, 4);
  c_12_1_0_False_resize <= resize(c_1, 22);
  c_12_1_0_False_shift <= shift_left(c_12_1_0_False_resize, 0);
  with config_select_2 select c_12_sel <= 
    "00" when "00",
    "01" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "00" => c_12 <= c_12_1_3_False_shift;
        when "01" => c_12 <= c_12_1_4_False_shift;
        when others => c_12 <= c_12_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 13 and associated fundamentals [[-630], [-864], [24], [-792]]
  with config_select_3 select c_13_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 26,
      s_x_i => 1,
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
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[33], [5], [576], [15]]
  c_14_4_0_False_resize <= c_4;
  c_14_4_0_False_shift <= shift_left(c_14_4_0_False_resize, 0);
  c_14_4_1_False_resize <= c_4;
  c_14_4_1_False_shift <= shift_left(c_14_4_1_False_resize, 1);
  c_14_6_0_False_resize <= c_6;
  c_14_6_0_False_shift <= shift_left(c_14_6_0_False_resize, 0);
  with config_select_3 select c_14_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_4_0_False_shift;
        when "01" => c_14 <= c_14_4_1_False_shift;
        when others => c_14 <= c_14_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 15 and associated fundamentals [[-663], [-869], [-552], [-807]]
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 16 and associated fundamentals [[673], [995], [973], [67]]
  c_16_10_0_False_resize <= c_10;
  c_16_10_0_False_shift <= shift_left(c_16_10_0_False_resize, 0);
  c_16_8_0_False_resize <= c_8;
  c_16_8_0_False_shift <= shift_left(c_16_8_0_False_resize, 0);
  with config_select_4 select c_16_sel <= 
    "0" when "11",
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_10_0_False_shift;
        when others => c_16 <= c_16_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 17 and associated fundamentals [[673], [995], [973], [67]]
  c_17_resize <= c_16;
  c_17 <= shift_left(c_17_resize, 0);
  -- node of type 'output' in stage 4 with id 18 and associated fundamentals [[663], [869], [552], [807]]
  c_18_resize <= c_15;
  c_18 <= -shift_left(c_18_resize, 0);
  -- node of type 'mux' in stage 4 with id 19 and associated fundamentals [[592], [136], [285], [39]]
  c_19_10_4_False_resize <= c_10;
  c_19_10_4_False_shift <= shift_left(c_19_10_4_False_resize, 4);
  c_19_8_0_False_resize <= c_8;
  c_19_8_0_False_shift <= shift_left(c_19_8_0_False_resize, 0);
  c_19_10_3_False_resize <= c_10;
  c_19_10_3_False_shift <= shift_left(c_19_10_3_False_resize, 3);
  with config_select_4 select c_19_sel <= 
    "00" when "00",
    "01" when "11",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_10_4_False_shift;
        when "01" => c_19 <= c_19_8_0_False_shift;
        when others => c_19 <= c_19_10_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 20 and associated fundamentals [[592], [136], [285], [39]]
  c_20_resize <= c_19;
  c_20 <= shift_left(c_20_resize, 0);
end architecture;
