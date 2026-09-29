library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(24 downto 0);
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
  signal c_4: signed(20 downto 0);
  signal c_4_i0_resize: signed(20 downto 0);
  signal c_4_i1_resize: signed(20 downto 0);
  signal c_4_i0_shift: signed(20 downto 0);
  signal c_4_i1_shift: signed(20 downto 0);
  signal c_4_arith: signed(20 downto 0);
  signal c_4_oshift: signed(20 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_5_i0_resize: signed(21 downto 0);
  signal c_5_i1_resize: signed(21 downto 0);
  signal c_5_i0_shift: signed(21 downto 0);
  signal c_5_i1_shift: signed(21 downto 0);
  signal c_5_arith: signed(21 downto 0);
  signal c_5_oshift: signed(21 downto 0);
  signal c_6: signed(20 downto 0);
  signal c_6_3_0_False_resize: signed(20 downto 0);
  signal c_6_3_0_False_shift: signed(20 downto 0);
  signal c_6_3_2_False_resize: signed(20 downto 0);
  signal c_6_3_2_False_shift: signed(20 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(26 downto 0);
  signal c_7_4_0_False_resize: signed(26 downto 0);
  signal c_7_4_0_False_shift: signed(26 downto 0);
  signal c_7_4_6_False_resize: signed(26 downto 0);
  signal c_7_4_6_False_shift: signed(26 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(24 downto 0);
  signal c_8_i0_resize: signed(26 downto 0);
  signal c_8_i1_resize: signed(26 downto 0);
  signal c_8_i0_shift: signed(26 downto 0);
  signal c_8_i1_shift: signed(26 downto 0);
  signal c_8_arith: signed(26 downto 0);
  signal c_8_oshift: signed(24 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_9_3_0_False_resize: signed(21 downto 0);
  signal c_9_3_0_False_shift: signed(21 downto 0);
  signal c_9_5_0_False_resize: signed(21 downto 0);
  signal c_9_5_0_False_shift: signed(21 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(19 downto 0);
  signal c_10_3_0_False_resize: signed(19 downto 0);
  signal c_10_3_0_False_shift: signed(19 downto 0);
  signal c_10_3_1_False_resize: signed(19 downto 0);
  signal c_10_3_1_False_shift: signed(19 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(25 downto 0);
  signal c_11_i0_resize: signed(25 downto 0);
  signal c_11_i1_resize: signed(25 downto 0);
  signal c_11_i0_shift: signed(25 downto 0);
  signal c_11_i1_shift: signed(25 downto 0);
  signal c_11_arith: signed(25 downto 0);
  signal c_11_oshift: signed(25 downto 0);
  signal c_12: signed(21 downto 0);
  signal c_12_4_0_False_resize: signed(21 downto 0);
  signal c_12_4_0_False_shift: signed(21 downto 0);
  signal c_12_5_0_False_resize: signed(21 downto 0);
  signal c_12_5_0_False_shift: signed(21 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_13_4_0_False_resize: signed(21 downto 0);
  signal c_13_4_0_False_shift: signed(21 downto 0);
  signal c_13_3_3_False_resize: signed(21 downto 0);
  signal c_13_3_3_False_shift: signed(21 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(25 downto 0);
  signal c_14_i0_resize: signed(25 downto 0);
  signal c_14_i1_resize: signed(25 downto 0);
  signal c_14_i0_shift: signed(25 downto 0);
  signal c_14_i1_shift: signed(25 downto 0);
  signal c_14_arith: signed(25 downto 0);
  signal c_14_oshift: signed(25 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(25 downto 0);
  signal c_15_resize: signed(25 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_resize: signed(25 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_17_resize: signed(24 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 15
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_15);
    end if;
  end process;
  -- output node 1 with id 16
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_16);
    end if;
  end process;
  -- output node 2 with id 17
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_17);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1]]
  c_1 <= c_0 & "";
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
  c_2 <= c_2_oshift(17 downto 0);
  -- node of type 'add' in stage 2 with id 3 and associated fundamentals [[5], [5]]
  inst_adder_node_3: entity work.adder_node
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
      x_i => c_1,
      y_i => c_1,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(18 downto 0);
  -- node of type 'add' in stage 2 with id 4 and associated fundamentals [[19], [19]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 18,
      w_o => 21,
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
      x_i => c_1,
      y_i => c_2,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(20 downto 0);
  -- node of type 'sub' in stage 2 with id 5 and associated fundamentals [[63], [63]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 22,
      s_x_i => 6,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_1,
      y_i => c_1,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(21 downto 0);
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[5], [20]]
  c_6_3_0_False_resize <= resize(c_3, 21);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  c_6_3_2_False_resize <= resize(c_3, 21);
  c_6_3_2_False_shift <= shift_left(c_6_3_2_False_resize, 2);
  with config_select_3 select c_6_sel <= 
    "0" when "0",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_3_0_False_shift when "0",
    c_6_3_2_False_shift when others;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[19], [1216]]
  c_7_4_0_False_resize <= resize(c_4, 27);
  c_7_4_0_False_shift <= shift_left(c_7_4_0_False_resize, 0);
  c_7_4_6_False_resize <= resize(c_4, 27);
  c_7_4_6_False_shift <= shift_left(c_7_4_6_False_resize, 6);
  with config_select_3 select c_7_sel <= 
    "0" when "0",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_4_0_False_shift when "0",
    c_7_4_6_False_shift when others;
  -- node of type 'add' in stage 4 with id 8 and associated fundamentals [[6], [309]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 27,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 2,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(24 downto 0);
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[5], [63]]
  c_9_3_0_False_resize <= resize(c_3, 22);
  c_9_3_0_False_shift <= shift_left(c_9_3_0_False_resize, 0);
  c_9_5_0_False_resize <= c_5;
  c_9_5_0_False_shift <= shift_left(c_9_5_0_False_resize, 0);
  with config_select_3 select c_9_sel <= 
    "0" when "0",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_3_0_False_shift when "0",
    c_9_5_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[10], [5]]
  c_10_3_0_False_resize <= resize(c_3, 20);
  c_10_3_0_False_shift <= shift_left(c_10_3_0_False_resize, 0);
  c_10_3_1_False_resize <= resize(c_3, 20);
  c_10_3_1_False_shift <= shift_left(c_10_3_1_False_resize, 1);
  with config_select_3 select c_10_sel <= 
    "0" when "1",
    "1" when others;
  with c_10_sel select c_10 <=
    c_10_3_0_False_shift when "0",
    c_10_3_1_False_shift when others;
  -- node of type 'sub' in stage 4 with id 11 and associated fundamentals [[70], [1003]]
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
      w_o => 26,
      s_x_i => 4,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_9,
      y_i => c_10,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(25 downto 0);
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[63], [19]]
  c_12_4_0_False_resize <= resize(c_4, 22);
  c_12_4_0_False_shift <= shift_left(c_12_4_0_False_resize, 0);
  c_12_5_0_False_resize <= c_5;
  c_12_5_0_False_shift <= shift_left(c_12_5_0_False_resize, 0);
  with config_select_3 select c_12_sel <= 
    "0" when "1",
    "1" when others;
  with c_12_sel select c_12 <=
    c_12_4_0_False_shift when "0",
    c_12_5_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[40], [19]]
  c_13_4_0_False_resize <= resize(c_4, 22);
  c_13_4_0_False_shift <= shift_left(c_13_4_0_False_resize, 0);
  c_13_3_3_False_resize <= resize(c_3, 22);
  c_13_3_3_False_shift <= shift_left(c_13_3_3_False_resize, 3);
  with config_select_3 select c_13_sel <= 
    "0" when "1",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_4_0_False_shift when "0",
    c_13_3_3_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 14 and associated fundamentals [[968], [323]]
  with config_select_4 select c_14_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
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
      sub_i => c_14_sub_sel,
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  c_14 <= c_14_oshift(25 downto 0);
  -- node of type 'output' in stage 4 with id 15 and associated fundamentals [[70], [1003]]
  c_15_resize <= c_11;
  c_15 <= shift_left(c_15_resize, 0);
  -- node of type 'output' in stage 4 with id 16 and associated fundamentals [[968], [323]]
  c_16_resize <= c_14;
  c_16 <= shift_left(c_16_resize, 0);
  -- node of type 'output' in stage 4 with id 17 and associated fundamentals [[6], [309]]
  c_17_resize <= c_8;
  c_17 <= shift_left(c_17_resize, 0);
end architecture;
