library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(25 downto 0);
    y_3: out std_logic_vector(25 downto 0);
    y_4: out std_logic_vector(24 downto 0);
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
  signal config_select_6: std_logic_vector(0 downto 0);
  signal config_select_7: std_logic_vector(0 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_i0_resize: signed(18 downto 0);
  signal c_1_i1_resize: signed(18 downto 0);
  signal c_1_i0_shift: signed(18 downto 0);
  signal c_1_i1_shift: signed(18 downto 0);
  signal c_1_arith: signed(18 downto 0);
  signal c_1_oshift: signed(18 downto 0);
  signal c_2: signed(18 downto 0);
  signal c_2_1_0_False_resize: signed(18 downto 0);
  signal c_2_1_0_False_shift: signed(18 downto 0);
  signal c_2_0_2_False_resize: signed(18 downto 0);
  signal c_2_0_2_False_shift: signed(18 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_4: signed(24 downto 0);
  signal c_4_0_0_False_resize: signed(24 downto 0);
  signal c_4_0_0_False_shift: signed(24 downto 0);
  signal c_4_1_6_False_resize: signed(24 downto 0);
  signal c_4_1_6_False_shift: signed(24 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(20 downto 0);
  signal c_5_0_5_False_resize: signed(20 downto 0);
  signal c_5_0_5_False_shift: signed(20 downto 0);
  signal c_5_0_0_False_resize: signed(20 downto 0);
  signal c_5_0_0_False_shift: signed(20 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(24 downto 0);
  signal c_6_i0_resize: signed(24 downto 0);
  signal c_6_i1_resize: signed(24 downto 0);
  signal c_6_i0_shift: signed(24 downto 0);
  signal c_6_i1_shift: signed(24 downto 0);
  signal c_6_arith: signed(24 downto 0);
  signal c_6_oshift: signed(24 downto 0);
  signal c_7: signed(25 downto 0);
  signal c_7_i0_resize: signed(25 downto 0);
  signal c_7_i1_resize: signed(25 downto 0);
  signal c_7_i0_shift: signed(25 downto 0);
  signal c_7_i1_shift: signed(25 downto 0);
  signal c_7_arith: signed(25 downto 0);
  signal c_7_oshift: signed(25 downto 0);
  signal c_8: signed(25 downto 0);
  signal c_8_i0_resize: signed(25 downto 0);
  signal c_8_i1_resize: signed(25 downto 0);
  signal c_8_i0_shift: signed(25 downto 0);
  signal c_8_i1_shift: signed(25 downto 0);
  signal c_8_arith: signed(25 downto 0);
  signal c_8_oshift: signed(25 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_9_1_3_False_resize: signed(21 downto 0);
  signal c_9_1_3_False_shift: signed(21 downto 0);
  signal c_9_1_0_False_resize: signed(21 downto 0);
  signal c_9_1_0_False_shift: signed(21 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_i0_resize: signed(23 downto 0);
  signal c_10_i1_resize: signed(23 downto 0);
  signal c_10_i0_shift: signed(23 downto 0);
  signal c_10_i1_shift: signed(23 downto 0);
  signal c_10_arith: signed(23 downto 0);
  signal c_10_oshift: signed(23 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(21 downto 0);
  signal c_11_3_0_False_resize: signed(21 downto 0);
  signal c_11_3_0_False_shift: signed(21 downto 0);
  signal c_11_6_0_False_resize: signed(21 downto 0);
  signal c_11_6_0_False_shift: signed(21 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_1_0_False_resize: signed(22 downto 0);
  signal c_12_1_0_False_shift: signed(22 downto 0);
  signal c_12_10_0_False_resize: signed(22 downto 0);
  signal c_12_10_0_False_shift: signed(22 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(25 downto 0);
  signal c_13_i0_resize: signed(25 downto 0);
  signal c_13_i1_resize: signed(25 downto 0);
  signal c_13_i0_shift: signed(25 downto 0);
  signal c_13_i1_shift: signed(25 downto 0);
  signal c_13_arith: signed(25 downto 0);
  signal c_13_oshift: signed(25 downto 0);
  signal c_14: signed(21 downto 0);
  signal c_14_0_6_False_resize: signed(21 downto 0);
  signal c_14_0_6_False_shift: signed(21 downto 0);
  signal c_14_1_0_False_resize: signed(21 downto 0);
  signal c_14_1_0_False_shift: signed(21 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_i0_resize: signed(23 downto 0);
  signal c_15_i1_resize: signed(23 downto 0);
  signal c_15_i0_shift: signed(23 downto 0);
  signal c_15_i1_shift: signed(23 downto 0);
  signal c_15_arith: signed(23 downto 0);
  signal c_15_oshift: signed(23 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(23 downto 0);
  signal c_16_7_0_False_resize: signed(23 downto 0);
  signal c_16_7_0_False_shift: signed(23 downto 0);
  signal c_16_10_1_False_resize: signed(23 downto 0);
  signal c_16_10_1_False_shift: signed(23 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_resize: signed(23 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_resize: signed(25 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_15_0_False_resize: signed(25 downto 0);
  signal c_19_15_0_False_shift: signed(25 downto 0);
  signal c_19_7_0_False_resize: signed(25 downto 0);
  signal c_19_7_0_False_shift: signed(25 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_resize: signed(25 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_resize: signed(25 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_15_0_False_resize: signed(23 downto 0);
  signal c_22_15_0_False_shift: signed(23 downto 0);
  signal c_22_10_0_False_resize: signed(23 downto 0);
  signal c_22_10_0_False_shift: signed(23 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(24 downto 0);
  signal c_23_resize: signed(24 downto 0);
begin
  config_select_0 <= config_select;
  process(clk)
  begin
    if rising_edge(clk) then
      config_select_1 <= config_select;
      config_select_2 <= config_select;
      config_select_3 <= config_select;
      config_select_4 <= config_select;
      config_select_5 <= config_select;
      config_select_6 <= config_select;
      config_select_7 <= config_select;
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
  -- output node 3 with id 21
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_21);
    end if;
  end process;
  -- output node 4 with id 23
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_23);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 1 and associated fundamentals [[-6], [-6]]
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
      s_x_i => 1,
      s_y_i => 3,
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
      z_o => c_1_oshift
    );
  c_1 <= c_1_oshift(18 downto 0);
  -- node of type 'mux' in stage 2 with id 2 and associated fundamentals [[-6], [4]]
  c_2_1_0_False_resize <= c_1;
  c_2_1_0_False_shift <= shift_left(c_2_1_0_False_resize, 0);
  c_2_0_2_False_resize <= resize(c_0, 19);
  c_2_0_2_False_shift <= shift_left(c_2_0_2_False_resize, 2);
  with config_select_2 select c_2_sel <= 
    "0" when "0",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_1_0_False_shift when "0",
    c_2_0_2_False_shift when others;
  -- node of type 'sub' in stage 3 with id 3 and associated fundamentals [[-49], [31]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
      w_o => 22,
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
      x_i => c_2,
      y_i => c_0,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(21 downto 0);
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[-384], [1]]
  c_4_0_0_False_resize <= resize(c_0, 25);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_1_6_False_resize <= resize(c_1, 25);
  c_4_1_6_False_shift <= shift_left(c_4_1_6_False_resize, 6);
  with config_select_2 select c_4_sel <= 
    "0" when "1",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_0_0_False_shift when "0",
    c_4_1_6_False_shift when others;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[1], [32]]
  c_5_0_5_False_resize <= resize(c_0, 21);
  c_5_0_5_False_shift <= shift_left(c_5_0_5_False_resize, 5);
  c_5_0_0_False_resize <= resize(c_0, 21);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  with config_select_1 select c_5_sel <= 
    "0" when "1",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_0_5_False_shift when "0",
    c_5_0_0_False_shift when others;
  -- node of type 'sub' in stage 3 with id 6 and associated fundamentals [[-386], [-63]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 21,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(24 downto 0);
  -- node of type 'sub' in stage 4 with id 7 and associated fundamentals [[-723], [-157]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 22,
      w_o => 26,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_6,
      y_i => c_3,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(25 downto 0);
  -- node of type 'add' in stage 4 with id 8 and associated fundamentals [[-817], [-737]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 22,
      w_o => 26,
      s_x_i => 7,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_1,
      y_i => c_3,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(25 downto 0);
  -- node of type 'mux' in stage 2 with id 9 and associated fundamentals [[-6], [-48]]
  c_9_1_3_False_resize <= resize(c_1, 22);
  c_9_1_3_False_shift <= shift_left(c_9_1_3_False_resize, 3);
  c_9_1_0_False_resize <= resize(c_1, 22);
  c_9_1_0_False_shift <= shift_left(c_9_1_0_False_resize, 0);
  with config_select_2 select c_9_sel <= 
    "0" when "1",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_1_3_False_shift when "0",
    c_9_1_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 10 and associated fundamentals [[-73], [223]]
  with config_select_4 select c_10_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_10_sub_sel,
      x_i => c_3,
      y_i => c_9,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(23 downto 0);
  -- node of type 'mux' in stage 4 with id 11 and associated fundamentals [[-49], [-63]]
  c_11_3_0_False_resize <= c_3;
  c_11_3_0_False_shift <= shift_left(c_11_3_0_False_resize, 0);
  c_11_6_0_False_resize <= c_6(21 downto 0);
  c_11_6_0_False_shift <= shift_left(c_11_6_0_False_resize, 0);
  with config_select_4 select c_11_sel <= 
    "0" when "0",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_3_0_False_shift when "0",
    c_11_6_0_False_shift when others;
  -- node of type 'mux' in stage 5 with id 12 and associated fundamentals [[-73], [-6]]
  c_12_1_0_False_resize <= resize(c_1, 23);
  c_12_1_0_False_shift <= shift_left(c_12_1_0_False_resize, 0);
  c_12_10_0_False_resize <= c_10(22 downto 0);
  c_12_10_0_False_shift <= shift_left(c_12_10_0_False_resize, 0);
  with config_select_5 select c_12_sel <= 
    "0" when "1",
    "1" when others;
  with c_12_sel select c_12 <=
    c_12_1_0_False_shift when "0",
    c_12_10_0_False_shift when others;
  -- node of type 'add' in stage 6 with id 13 and associated fundamentals [[-857], [-1014]]
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
      w_o => 26,
      s_x_i => 4,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(25 downto 0);
  -- node of type 'mux' in stage 2 with id 14 and associated fundamentals [[64], [-6]]
  c_14_0_6_False_resize <= resize(c_0, 22);
  c_14_0_6_False_shift <= shift_left(c_14_0_6_False_resize, 6);
  c_14_1_0_False_resize <= resize(c_1, 22);
  c_14_1_0_False_shift <= shift_left(c_14_1_0_False_resize, 0);
  with config_select_2 select c_14_sel <= 
    "0" when "0",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_0_6_False_shift when "0",
    c_14_1_0_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 15 and associated fundamentals [[129], [-13]]
  with config_select_3 select c_15_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 16,
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
      sub_i => c_15_sub_sel,
      x_i => c_14,
      y_i => c_0,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(23 downto 0);
  -- node of type 'mux' in stage 5 with id 16 and associated fundamentals [[-146], [-157]]
  c_16_7_0_False_resize <= c_7(23 downto 0);
  c_16_7_0_False_shift <= shift_left(c_16_7_0_False_resize, 0);
  c_16_10_1_False_resize <= c_10;
  c_16_10_1_False_shift <= shift_left(c_16_10_1_False_resize, 1);
  with config_select_5 select c_16_sel <= 
    "0" when "1",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_7_0_False_shift when "0",
    c_16_10_1_False_shift when others;
  -- node of type 'output' in stage 5 with id 17 and associated fundamentals [[146], [157]]
  c_17_resize <= c_16;
  c_17 <= -shift_left(c_17_resize, 0);
  -- node of type 'output' in stage 6 with id 18 and associated fundamentals [[857], [1014]]
  c_18_resize <= c_13;
  c_18 <= -shift_left(c_18_resize, 0);
  -- node of type 'mux' in stage 5 with id 19 and associated fundamentals [[-723], [-13]]
  c_19_15_0_False_resize <= resize(c_15, 26);
  c_19_15_0_False_shift <= shift_left(c_19_15_0_False_resize, 0);
  c_19_7_0_False_resize <= c_7;
  c_19_7_0_False_shift <= shift_left(c_19_7_0_False_resize, 0);
  with config_select_5 select c_19_sel <= 
    "0" when "1",
    "1" when others;
  with c_19_sel select c_19 <=
    c_19_15_0_False_shift when "0",
    c_19_7_0_False_shift when others;
  -- node of type 'output' in stage 5 with id 20 and associated fundamentals [[723], [13]]
  c_20_resize <= c_19;
  c_20 <= -shift_left(c_20_resize, 0);
  -- node of type 'output' in stage 4 with id 21 and associated fundamentals [[817], [737]]
  c_21_resize <= c_8;
  c_21 <= -shift_left(c_21_resize, 0);
  -- node of type 'mux' in stage 5 with id 22 and associated fundamentals [[129], [223]]
  c_22_15_0_False_resize <= c_15;
  c_22_15_0_False_shift <= shift_left(c_22_15_0_False_resize, 0);
  c_22_10_0_False_resize <= c_10;
  c_22_10_0_False_shift <= shift_left(c_22_10_0_False_resize, 0);
  with config_select_5 select c_22_sel <= 
    "0" when "0",
    "1" when others;
  with c_22_sel select c_22 <=
    c_22_15_0_False_shift when "0",
    c_22_10_0_False_shift when others;
  -- node of type 'output' in stage 5 with id 23 and associated fundamentals [[258], [446]]
  c_23_resize <= resize(c_22, 25);
  c_23 <= shift_left(c_23_resize, 1);
end architecture;
