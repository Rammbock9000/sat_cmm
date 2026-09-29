library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(24 downto 0);
    y_2: out std_logic_vector(25 downto 0);
    y_3: out std_logic_vector(25 downto 0);
    y_4: out std_logic_vector(25 downto 0);
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
  signal config_select_8: std_logic_vector(0 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_0_0_False_resize: signed(17 downto 0);
  signal c_1_0_0_False_shift: signed(17 downto 0);
  signal c_1_0_2_False_resize: signed(17 downto 0);
  signal c_1_0_2_False_shift: signed(17 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(20 downto 0);
  signal c_2_i0_resize: signed(20 downto 0);
  signal c_2_i1_resize: signed(20 downto 0);
  signal c_2_i0_shift: signed(20 downto 0);
  signal c_2_i1_shift: signed(20 downto 0);
  signal c_2_arith: signed(20 downto 0);
  signal c_2_oshift: signed(20 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(22 downto 0);
  signal c_3_i0_resize: signed(22 downto 0);
  signal c_3_i1_resize: signed(22 downto 0);
  signal c_3_i0_shift: signed(22 downto 0);
  signal c_3_i1_shift: signed(22 downto 0);
  signal c_3_arith: signed(22 downto 0);
  signal c_3_oshift: signed(22 downto 0);
  signal c_4: signed(19 downto 0);
  signal c_4_2_2_False_resize: signed(19 downto 0);
  signal c_4_2_2_False_shift: signed(19 downto 0);
  signal c_4_0_0_False_resize: signed(19 downto 0);
  signal c_4_0_0_False_shift: signed(19 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(23 downto 0);
  signal c_5_i0_resize: signed(23 downto 0);
  signal c_5_i1_resize: signed(23 downto 0);
  signal c_5_i0_shift: signed(23 downto 0);
  signal c_5_i1_shift: signed(23 downto 0);
  signal c_5_arith: signed(23 downto 0);
  signal c_5_oshift: signed(23 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_0_6_False_resize: signed(22 downto 0);
  signal c_6_0_6_False_shift: signed(22 downto 0);
  signal c_6_3_0_False_resize: signed(22 downto 0);
  signal c_6_3_0_False_shift: signed(22 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(25 downto 0);
  signal c_7_i0_resize: signed(25 downto 0);
  signal c_7_i1_resize: signed(25 downto 0);
  signal c_7_i0_shift: signed(25 downto 0);
  signal c_7_i1_shift: signed(25 downto 0);
  signal c_7_arith: signed(25 downto 0);
  signal c_7_oshift: signed(25 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_8_i0_resize: signed(23 downto 0);
  signal c_8_i1_resize: signed(23 downto 0);
  signal c_8_i0_shift: signed(23 downto 0);
  signal c_8_i1_shift: signed(23 downto 0);
  signal c_8_arith: signed(23 downto 0);
  signal c_8_oshift: signed(23 downto 0);
  signal c_9: signed(24 downto 0);
  signal c_9_0_9_False_resize: signed(24 downto 0);
  signal c_9_0_9_False_shift: signed(24 downto 0);
  signal c_9_3_0_False_resize: signed(24 downto 0);
  signal c_9_3_0_False_shift: signed(24 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(25 downto 0);
  signal c_10_i0_resize: signed(25 downto 0);
  signal c_10_i1_resize: signed(25 downto 0);
  signal c_10_i0_shift: signed(25 downto 0);
  signal c_10_i1_shift: signed(25 downto 0);
  signal c_10_arith: signed(25 downto 0);
  signal c_10_oshift: signed(25 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(25 downto 0);
  signal c_11_3_3_False_resize: signed(25 downto 0);
  signal c_11_3_3_False_shift: signed(25 downto 0);
  signal c_11_7_0_False_resize: signed(25 downto 0);
  signal c_11_7_0_False_shift: signed(25 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(25 downto 0);
  signal c_12_i0_resize: signed(25 downto 0);
  signal c_12_i1_resize: signed(25 downto 0);
  signal c_12_i0_shift: signed(25 downto 0);
  signal c_12_i1_shift: signed(25 downto 0);
  signal c_12_arith: signed(25 downto 0);
  signal c_12_oshift: signed(25 downto 0);
  signal c_13: signed(25 downto 0);
  signal c_13_resize: signed(25 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_2_6_False_resize: signed(23 downto 0);
  signal c_14_2_6_False_shift: signed(23 downto 0);
  signal c_14_8_0_False_resize: signed(23 downto 0);
  signal c_14_8_0_False_shift: signed(23 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(24 downto 0);
  signal c_15_resize: signed(24 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_resize: signed(25 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_7_0_False_resize: signed(25 downto 0);
  signal c_17_7_0_False_shift: signed(25 downto 0);
  signal c_17_3_1_False_resize: signed(25 downto 0);
  signal c_17_3_1_False_shift: signed(25 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_resize: signed(25 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_resize: signed(25 downto 0);
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
      config_select_8 <= config_select;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 13
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_13);
    end if;
  end process;
  -- output node 1 with id 15
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_15);
    end if;
  end process;
  -- output node 2 with id 16
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_16);
    end if;
  end process;
  -- output node 3 with id 18
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_18);
    end if;
  end process;
  -- output node 4 with id 19
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_19);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[4], [1]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "0" when "1",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "0",
    c_1_0_2_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 2 and associated fundamentals [[17], [3]]
  with config_select_2 select c_2_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
      w_o => 21,
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
      sub_i => c_2_sub_sel,
      x_i => c_1,
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(20 downto 0);
  -- node of type 'add' in stage 3 with id 3 and associated fundamentals [[81], [67]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 16,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 6,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_2,
      y_i => c_0,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(22 downto 0);
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[1], [12]]
  c_4_2_2_False_resize <= c_2(19 downto 0);
  c_4_2_2_False_shift <= shift_left(c_4_2_2_False_resize, 2);
  c_4_0_0_False_resize <= resize(c_0, 20);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  with config_select_3 select c_4_sel <= 
    "0" when "1",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_2_2_False_shift when "0",
    c_4_0_0_False_shift when others;
  -- node of type 'add' in stage 4 with id 5 and associated fundamentals [[163], [146]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 23,
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
      x_i => c_4,
      y_i => c_3,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(23 downto 0);
  -- node of type 'mux' in stage 4 with id 6 and associated fundamentals [[64], [67]]
  c_6_0_6_False_resize <= resize(c_0, 23);
  c_6_0_6_False_shift <= shift_left(c_6_0_6_False_resize, 6);
  c_6_3_0_False_resize <= c_3;
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  with config_select_4 select c_6_sel <= 
    "0" when "0",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_0_6_False_shift when "0",
    c_6_3_0_False_shift when others;
  -- node of type 'add' in stage 5 with id 7 and associated fundamentals [[513], [537]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 16,
      w_o => 26,
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
      x_i => c_6,
      y_i => c_0,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(25 downto 0);
  -- node of type 'add' in stage 3 with id 8 and associated fundamentals [[145], [131]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 21,
      w_o => 24,
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
      x_i => c_0,
      y_i => c_2,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(23 downto 0);
  -- node of type 'mux' in stage 4 with id 9 and associated fundamentals [[81], [512]]
  c_9_0_9_False_resize <= resize(c_0, 25);
  c_9_0_9_False_shift <= shift_left(c_9_0_9_False_resize, 9);
  c_9_3_0_False_resize <= resize(c_3, 25);
  c_9_3_0_False_shift <= shift_left(c_9_3_0_False_resize, 0);
  with config_select_4 select c_9_sel <= 
    "0" when "1",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_0_9_False_shift when "0",
    c_9_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 10 and associated fundamentals [[209], [774]]
  with config_select_5 select c_10_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 25,
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
      sub_i => c_10_sub_sel,
      x_i => c_8,
      y_i => c_9,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(25 downto 0);
  -- node of type 'mux' in stage 6 with id 11 and associated fundamentals [[513], [536]]
  c_11_3_3_False_resize <= resize(c_3, 26);
  c_11_3_3_False_shift <= shift_left(c_11_3_3_False_resize, 3);
  c_11_7_0_False_resize <= c_7;
  c_11_7_0_False_shift <= shift_left(c_11_7_0_False_resize, 0);
  with config_select_6 select c_11_sel <= 
    "0" when "1",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_3_3_False_shift when "0",
    c_11_7_0_False_shift when others;
  -- node of type 'sub' in stage 7 with id 12 and associated fundamentals [[-863], [-926]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 26,
      w_o => 26,
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
      x_i => c_5,
      y_i => c_11,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(25 downto 0);
  -- node of type 'output' in stage 5 with id 13 and associated fundamentals [[209], [774]]
  c_13_resize <= c_10;
  c_13 <= shift_left(c_13_resize, 0);
  -- node of type 'mux' in stage 4 with id 14 and associated fundamentals [[145], [192]]
  c_14_2_6_False_resize <= resize(c_2, 24);
  c_14_2_6_False_shift <= shift_left(c_14_2_6_False_resize, 6);
  c_14_8_0_False_resize <= c_8;
  c_14_8_0_False_shift <= shift_left(c_14_8_0_False_resize, 0);
  with config_select_4 select c_14_sel <= 
    "0" when "1",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_2_6_False_shift when "0",
    c_14_8_0_False_shift when others;
  -- node of type 'output' in stage 4 with id 15 and associated fundamentals [[290], [384]]
  c_15_resize <= resize(c_14, 25);
  c_15 <= shift_left(c_15_resize, 1);
  -- node of type 'output' in stage 7 with id 16 and associated fundamentals [[863], [926]]
  c_16_resize <= c_12;
  c_16 <= -shift_left(c_16_resize, 0);
  -- node of type 'mux' in stage 6 with id 17 and associated fundamentals [[162], [537]]
  c_17_7_0_False_resize <= c_7;
  c_17_7_0_False_shift <= shift_left(c_17_7_0_False_resize, 0);
  c_17_3_1_False_resize <= resize(c_3, 26);
  c_17_3_1_False_shift <= shift_left(c_17_3_1_False_resize, 1);
  with config_select_6 select c_17_sel <= 
    "0" when "1",
    "1" when others;
  with c_17_sel select c_17 <=
    c_17_7_0_False_shift when "0",
    c_17_3_1_False_shift when others;
  -- node of type 'output' in stage 6 with id 18 and associated fundamentals [[162], [537]]
  c_18_resize <= c_17;
  c_18 <= shift_left(c_18_resize, 0);
  -- node of type 'output' in stage 4 with id 19 and associated fundamentals [[652], [584]]
  c_19_resize <= resize(c_5, 26);
  c_19 <= shift_left(c_19_resize, 2);
end architecture;
