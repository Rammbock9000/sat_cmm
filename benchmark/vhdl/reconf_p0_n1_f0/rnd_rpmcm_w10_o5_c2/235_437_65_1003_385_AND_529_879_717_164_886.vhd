library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(25 downto 0);
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
  signal c_1: signed(21 downto 0);
  signal c_1_i0_resize: signed(21 downto 0);
  signal c_1_i1_resize: signed(21 downto 0);
  signal c_1_i0_shift: signed(21 downto 0);
  signal c_1_i1_shift: signed(21 downto 0);
  signal c_1_arith: signed(21 downto 0);
  signal c_1_oshift: signed(21 downto 0);
  signal c_2: signed(19 downto 0);
  signal c_2_0_0_False_resize: signed(19 downto 0);
  signal c_2_0_0_False_shift: signed(19 downto 0);
  signal c_2_0_4_False_resize: signed(19 downto 0);
  signal c_2_0_4_False_shift: signed(19 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(25 downto 0);
  signal c_3_i0_resize: signed(25 downto 0);
  signal c_3_i1_resize: signed(25 downto 0);
  signal c_3_i0_shift: signed(25 downto 0);
  signal c_3_i1_shift: signed(25 downto 0);
  signal c_3_arith: signed(25 downto 0);
  signal c_3_oshift: signed(25 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(21 downto 0);
  signal c_4_0_1_False_resize: signed(21 downto 0);
  signal c_4_0_1_False_shift: signed(21 downto 0);
  signal c_4_1_0_False_resize: signed(21 downto 0);
  signal c_4_1_0_False_shift: signed(21 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_5_i0_resize: signed(21 downto 0);
  signal c_5_i1_resize: signed(21 downto 0);
  signal c_5_i0_shift: signed(21 downto 0);
  signal c_5_i1_shift: signed(21 downto 0);
  signal c_5_arith: signed(21 downto 0);
  signal c_5_oshift: signed(21 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(25 downto 0);
  signal c_6_i0_resize: signed(25 downto 0);
  signal c_6_i1_resize: signed(25 downto 0);
  signal c_6_i0_shift: signed(25 downto 0);
  signal c_6_i1_shift: signed(25 downto 0);
  signal c_6_arith: signed(25 downto 0);
  signal c_6_oshift: signed(25 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(21 downto 0);
  signal c_7_5_2_False_resize: signed(21 downto 0);
  signal c_7_5_2_False_shift: signed(21 downto 0);
  signal c_7_1_0_False_resize: signed(21 downto 0);
  signal c_7_1_0_False_shift: signed(21 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(24 downto 0);
  signal c_8_6_1_False_resize: signed(24 downto 0);
  signal c_8_6_1_False_shift: signed(24 downto 0);
  signal c_8_0_0_False_resize: signed(24 downto 0);
  signal c_8_0_0_False_shift: signed(24 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(25 downto 0);
  signal c_9_i0_resize: signed(25 downto 0);
  signal c_9_i1_resize: signed(25 downto 0);
  signal c_9_i0_shift: signed(25 downto 0);
  signal c_9_i1_shift: signed(25 downto 0);
  signal c_9_arith: signed(25 downto 0);
  signal c_9_oshift: signed(25 downto 0);
  signal c_10: signed(25 downto 0);
  signal c_10_0_0_False_resize: signed(25 downto 0);
  signal c_10_0_0_False_shift: signed(25 downto 0);
  signal c_10_6_0_False_resize: signed(25 downto 0);
  signal c_10_6_0_False_shift: signed(25 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(21 downto 0);
  signal c_11_5_3_False_resize: signed(21 downto 0);
  signal c_11_5_3_False_shift: signed(21 downto 0);
  signal c_11_1_0_False_resize: signed(21 downto 0);
  signal c_11_1_0_False_shift: signed(21 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(25 downto 0);
  signal c_12_i0_resize: signed(25 downto 0);
  signal c_12_i1_resize: signed(25 downto 0);
  signal c_12_i0_shift: signed(25 downto 0);
  signal c_12_i1_shift: signed(25 downto 0);
  signal c_12_arith: signed(25 downto 0);
  signal c_12_oshift: signed(25 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(23 downto 0);
  signal c_13_6_0_False_resize: signed(23 downto 0);
  signal c_13_6_0_False_shift: signed(23 downto 0);
  signal c_13_0_4_False_resize: signed(23 downto 0);
  signal c_13_0_4_False_shift: signed(23 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(25 downto 0);
  signal c_14_i0_resize: signed(25 downto 0);
  signal c_14_i1_resize: signed(25 downto 0);
  signal c_14_i0_shift: signed(25 downto 0);
  signal c_14_i1_shift: signed(25 downto 0);
  signal c_14_arith: signed(25 downto 0);
  signal c_14_oshift: signed(25 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_1_0_False_resize: signed(23 downto 0);
  signal c_15_1_0_False_shift: signed(23 downto 0);
  signal c_15_6_0_False_resize: signed(23 downto 0);
  signal c_15_6_0_False_shift: signed(23 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(25 downto 0);
  signal c_16_i1_resize: signed(25 downto 0);
  signal c_16_i0_shift: signed(25 downto 0);
  signal c_16_i1_shift: signed(25 downto 0);
  signal c_16_arith: signed(25 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_resize: signed(25 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_resize: signed(25 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_resize: signed(25 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_5_2_False_resize: signed(25 downto 0);
  signal c_20_5_2_False_shift: signed(25 downto 0);
  signal c_20_6_0_False_resize: signed(25 downto 0);
  signal c_20_6_0_False_shift: signed(25 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_resize: signed(25 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_resize: signed(25 downto 0);
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
  -- output node 2 with id 19
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_19);
    end if;
  end process;
  -- output node 3 with id 21
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_21);
    end if;
  end process;
  -- output node 4 with id 22
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_22);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 1 and associated fundamentals [[33], [33]]
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 22,
      s_x_i => 5,
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
  c_1 <= c_1_oshift(21 downto 0);
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[16], [1]]
  c_2_0_0_False_resize <= resize(c_0, 20);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_4_False_resize <= resize(c_0, 20);
  c_2_0_4_False_shift <= shift_left(c_2_0_4_False_resize, 4);
  with config_select_1 select c_2_sel <= 
    "0" when "1",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_0_0_False_shift when "0",
    c_2_0_4_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[-991], [97]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(25 downto 0);
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[2], [33]]
  c_4_0_1_False_resize <= resize(c_0, 22);
  c_4_0_1_False_shift <= shift_left(c_4_0_1_False_resize, 1);
  c_4_1_0_False_resize <= c_1;
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  with config_select_2 select c_4_sel <= 
    "0" when "0",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_0_1_False_shift when "0",
    c_4_1_0_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[6], [41]]
  with config_select_3 select c_5_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 22,
      w_o => 22,
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
      sub_i => c_5_sub_sel,
      x_i => c_0,
      y_i => c_4,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(21 downto 0);
  -- node of type 'add_sub' in stage 4 with id 6 and associated fundamentals [[1003], [179]]
  with config_select_4 select c_6_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 26,
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
      y_i => c_3,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 7 and associated fundamentals [[24], [33]]
  c_7_5_2_False_resize <= c_5;
  c_7_5_2_False_shift <= shift_left(c_7_5_2_False_resize, 2);
  c_7_1_0_False_resize <= c_1;
  c_7_1_0_False_shift <= shift_left(c_7_1_0_False_resize, 0);
  with config_select_4 select c_7_sel <= 
    "0" when "0",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_5_2_False_shift when "0",
    c_7_1_0_False_shift when others;
  -- node of type 'mux' in stage 5 with id 8 and associated fundamentals [[1], [358]]
  c_8_6_1_False_resize <= c_6(24 downto 0);
  c_8_6_1_False_shift <= shift_left(c_8_6_1_False_resize, 1);
  c_8_0_0_False_resize <= resize(c_0, 25);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  with config_select_5 select c_8_sel <= 
    "0" when "1",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_6_1_False_shift when "0",
    c_8_0_0_False_shift when others;
  -- node of type 'add' in stage 6 with id 9 and associated fundamentals [[385], [886]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 25,
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
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(25 downto 0);
  -- node of type 'mux' in stage 5 with id 10 and associated fundamentals [[1003], [1]]
  c_10_0_0_False_resize <= resize(c_0, 26);
  c_10_0_0_False_shift <= shift_left(c_10_0_0_False_resize, 0);
  c_10_6_0_False_resize <= c_6;
  c_10_6_0_False_shift <= shift_left(c_10_6_0_False_resize, 0);
  with config_select_5 select c_10_sel <= 
    "0" when "1",
    "1" when others;
  with c_10_sel select c_10 <=
    c_10_0_0_False_shift when "0",
    c_10_6_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 11 and associated fundamentals [[48], [33]]
  c_11_5_3_False_resize <= c_5;
  c_11_5_3_False_shift <= shift_left(c_11_5_3_False_resize, 3);
  c_11_1_0_False_resize <= c_1;
  c_11_1_0_False_shift <= shift_left(c_11_1_0_False_resize, 0);
  with config_select_4 select c_11_sel <= 
    "0" when "0",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_5_3_False_shift when "0",
    c_11_1_0_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 12 and associated fundamentals [[235], [529]]
  with config_select_6 select c_12_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 22,
      w_o => 26,
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
      sub_i => c_12_sub_sel,
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(25 downto 0);
  -- node of type 'mux' in stage 5 with id 13 and associated fundamentals [[16], [179]]
  c_13_6_0_False_resize <= c_6(23 downto 0);
  c_13_6_0_False_shift <= shift_left(c_13_6_0_False_resize, 0);
  c_13_0_4_False_resize <= resize(c_0, 24);
  c_13_0_4_False_shift <= shift_left(c_13_0_4_False_resize, 4);
  with config_select_5 select c_13_sel <= 
    "0" when "1",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_6_0_False_shift when "0",
    c_13_0_4_False_shift when others;
  -- node of type 'add' in stage 6 with id 14 and associated fundamentals [[65], [717]]
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 24,
      w_o => 26,
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
      y_i => c_13,
      z_o => c_14_oshift
    );
  c_14 <= c_14_oshift(25 downto 0);
  -- node of type 'mux' in stage 5 with id 15 and associated fundamentals [[33], [179]]
  c_15_1_0_False_resize <= resize(c_1, 24);
  c_15_1_0_False_shift <= shift_left(c_15_1_0_False_resize, 0);
  c_15_6_0_False_resize <= c_6(23 downto 0);
  c_15_6_0_False_shift <= shift_left(c_15_6_0_False_resize, 0);
  with config_select_5 select c_15_sel <= 
    "0" when "0",
    "1" when others;
  with c_15_sel select c_15 <=
    c_15_1_0_False_shift when "0",
    c_15_6_0_False_shift when others;
  -- node of type 'sub' in stage 7 with id 16 and associated fundamentals [[-437], [-879]]
  inst_adder_node_16: entity work.adder_node
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
      x_i => c_15,
      y_i => c_12,
      z_o => c_16_oshift
    );
  c_16 <= c_16_oshift(25 downto 0);
  -- node of type 'output' in stage 6 with id 17 and associated fundamentals [[235], [529]]
  c_17_resize <= c_12;
  c_17 <= shift_left(c_17_resize, 0);
  -- node of type 'output' in stage 7 with id 18 and associated fundamentals [[437], [879]]
  c_18_resize <= c_16;
  c_18 <= -shift_left(c_18_resize, 0);
  -- node of type 'output' in stage 6 with id 19 and associated fundamentals [[65], [717]]
  c_19_resize <= c_14;
  c_19 <= shift_left(c_19_resize, 0);
  -- node of type 'mux' in stage 5 with id 20 and associated fundamentals [[1003], [164]]
  c_20_5_2_False_resize <= resize(c_5, 26);
  c_20_5_2_False_shift <= shift_left(c_20_5_2_False_resize, 2);
  c_20_6_0_False_resize <= c_6;
  c_20_6_0_False_shift <= shift_left(c_20_6_0_False_resize, 0);
  with config_select_5 select c_20_sel <= 
    "0" when "1",
    "1" when others;
  with c_20_sel select c_20 <=
    c_20_5_2_False_shift when "0",
    c_20_6_0_False_shift when others;
  -- node of type 'output' in stage 5 with id 21 and associated fundamentals [[1003], [164]]
  c_21_resize <= c_20;
  c_21 <= shift_left(c_21_resize, 0);
  -- node of type 'output' in stage 6 with id 22 and associated fundamentals [[385], [886]]
  c_22_resize <= c_9;
  c_22 <= shift_left(c_22_resize, 0);
end architecture;
