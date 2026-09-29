library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(22 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(22 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(21 downto 0);
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
  signal c_3: signed(22 downto 0);
  signal c_3_i0_resize: signed(22 downto 0);
  signal c_3_i1_resize: signed(22 downto 0);
  signal c_3_i0_shift: signed(22 downto 0);
  signal c_3_i1_shift: signed(22 downto 0);
  signal c_3_arith: signed(22 downto 0);
  signal c_3_oshift: signed(22 downto 0);
  signal c_4: signed(18 downto 0);
  signal c_4_1_0_False_resize: signed(18 downto 0);
  signal c_4_1_0_False_shift: signed(18 downto 0);
  signal c_4_2_0_False_resize: signed(18 downto 0);
  signal c_4_2_0_False_shift: signed(18 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(20 downto 0);
  signal c_5_2_2_False_resize: signed(20 downto 0);
  signal c_5_2_2_False_shift: signed(20 downto 0);
  signal c_5_1_0_False_resize: signed(20 downto 0);
  signal c_5_1_0_False_shift: signed(20 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(21 downto 0);
  signal c_6_i0_resize: signed(21 downto 0);
  signal c_6_i1_resize: signed(21 downto 0);
  signal c_6_i0_shift: signed(21 downto 0);
  signal c_6_i1_shift: signed(21 downto 0);
  signal c_6_arith: signed(21 downto 0);
  signal c_6_oshift: signed(21 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(20 downto 0);
  signal c_7_1_3_False_resize: signed(20 downto 0);
  signal c_7_1_3_False_shift: signed(20 downto 0);
  signal c_7_1_0_False_resize: signed(20 downto 0);
  signal c_7_1_0_False_shift: signed(20 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(18 downto 0);
  signal c_8_1_1_False_resize: signed(18 downto 0);
  signal c_8_1_1_False_shift: signed(18 downto 0);
  signal c_8_2_0_False_resize: signed(18 downto 0);
  signal c_8_2_0_False_shift: signed(18 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_i0_resize: signed(22 downto 0);
  signal c_9_i1_resize: signed(22 downto 0);
  signal c_9_i0_shift: signed(22 downto 0);
  signal c_9_i1_shift: signed(22 downto 0);
  signal c_9_arith: signed(22 downto 0);
  signal c_9_oshift: signed(22 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(19 downto 0);
  signal c_10_1_0_False_resize: signed(19 downto 0);
  signal c_10_1_0_False_shift: signed(19 downto 0);
  signal c_10_2_1_False_resize: signed(19 downto 0);
  signal c_10_2_1_False_shift: signed(19 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(17 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_i0_resize: signed(23 downto 0);
  signal c_12_i1_resize: signed(23 downto 0);
  signal c_12_i0_shift: signed(23 downto 0);
  signal c_12_i1_shift: signed(23 downto 0);
  signal c_12_arith: signed(23 downto 0);
  signal c_12_oshift: signed(23 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(22 downto 0);
  signal c_13_2_4_False_resize: signed(22 downto 0);
  signal c_13_2_4_False_shift: signed(22 downto 0);
  signal c_13_2_0_False_resize: signed(22 downto 0);
  signal c_13_2_0_False_shift: signed(22 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_14_3_0_False_resize: signed(22 downto 0);
  signal c_14_3_0_False_shift: signed(22 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_i0_resize: signed(23 downto 0);
  signal c_15_i1_resize: signed(23 downto 0);
  signal c_15_i0_shift: signed(23 downto 0);
  signal c_15_i1_shift: signed(23 downto 0);
  signal c_15_arith: signed(23 downto 0);
  signal c_15_oshift: signed(23 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(21 downto 0);
  signal c_16_2_3_False_resize: signed(21 downto 0);
  signal c_16_2_3_False_shift: signed(21 downto 0);
  signal c_16_2_0_False_resize: signed(21 downto 0);
  signal c_16_2_0_False_shift: signed(21 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(22 downto 0);
  signal c_17_1_0_False_resize: signed(22 downto 0);
  signal c_17_1_0_False_shift: signed(22 downto 0);
  signal c_17_3_0_False_resize: signed(22 downto 0);
  signal c_17_3_0_False_shift: signed(22 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(22 downto 0);
  signal c_18_i0_resize: signed(22 downto 0);
  signal c_18_i1_resize: signed(22 downto 0);
  signal c_18_i0_shift: signed(22 downto 0);
  signal c_18_i1_shift: signed(22 downto 0);
  signal c_18_arith: signed(22 downto 0);
  signal c_18_oshift: signed(22 downto 0);
  signal c_18_sub_sel_left: std_logic;
  signal c_18_sub_sel_right: std_logic;
  signal c_19: signed(22 downto 0);
  signal c_19_resize: signed(22 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_resize: signed(23 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_21_resize: signed(22 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_resize: signed(23 downto 0);
  signal c_23: signed(21 downto 0);
  signal c_23_resize: signed(21 downto 0);
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
  -- node of type 'add' in stage 1 with id 1 and associated fundamentals [[3], [3]]
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
  c_1 <= c_1_oshift(17 downto 0);
  -- node of type 'add' in stage 1 with id 2 and associated fundamentals [[5], [5]]
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
  c_2 <= c_2_oshift(18 downto 0);
  -- node of type 'sub' in stage 1 with id 3 and associated fundamentals [[127], [127]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 23,
      s_x_i => 7,
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
  c_3 <= c_3_oshift(22 downto 0);
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[3], [5]]
  c_4_1_0_False_resize <= resize(c_1, 19);
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  c_4_2_0_False_resize <= c_2;
  c_4_2_0_False_shift <= shift_left(c_4_2_0_False_resize, 0);
  with config_select_2 select c_4_sel <= 
    "0" when "0",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_1_0_False_shift when "0",
    c_4_2_0_False_shift when others;
  -- node of type 'mux' in stage 2 with id 5 and associated fundamentals [[20], [3]]
  c_5_2_2_False_resize <= resize(c_2, 21);
  c_5_2_2_False_shift <= shift_left(c_5_2_2_False_resize, 2);
  c_5_1_0_False_resize <= resize(c_1, 21);
  c_5_1_0_False_shift <= shift_left(c_5_1_0_False_resize, 0);
  with config_select_2 select c_5_sel <= 
    "0" when "0",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_2_2_False_shift when "0",
    c_5_1_0_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 6 and associated fundamentals [[43], [1]]
  with config_select_3 select c_6_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 19,
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
      sub_i => c_6_sub_sel,
      x_i => c_5,
      y_i => c_4,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(21 downto 0);
  -- node of type 'mux' in stage 2 with id 7 and associated fundamentals [[24], [3]]
  c_7_1_3_False_resize <= resize(c_1, 21);
  c_7_1_3_False_shift <= shift_left(c_7_1_3_False_resize, 3);
  c_7_1_0_False_resize <= resize(c_1, 21);
  c_7_1_0_False_shift <= shift_left(c_7_1_0_False_resize, 0);
  with config_select_2 select c_7_sel <= 
    "0" when "0",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_1_3_False_shift when "0",
    c_7_1_0_False_shift when others;
  -- node of type 'mux' in stage 2 with id 8 and associated fundamentals [[6], [5]]
  c_8_1_1_False_resize <= resize(c_1, 19);
  c_8_1_1_False_shift <= shift_left(c_8_1_1_False_resize, 1);
  c_8_2_0_False_resize <= c_2;
  c_8_2_0_False_shift <= shift_left(c_8_2_0_False_resize, 0);
  with config_select_2 select c_8_sel <= 
    "0" when "0",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_1_1_False_shift when "0",
    c_8_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 9 and associated fundamentals [[90], [17]]
  with config_select_3 select c_9_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 19,
      w_o => 23,
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
      sub_i => c_9_sub_sel,
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(22 downto 0);
  -- node of type 'mux' in stage 2 with id 10 and associated fundamentals [[10], [3]]
  c_10_1_0_False_resize <= resize(c_1, 20);
  c_10_1_0_False_shift <= shift_left(c_10_1_0_False_resize, 0);
  c_10_2_1_False_resize <= resize(c_2, 20);
  c_10_2_1_False_shift <= shift_left(c_10_2_1_False_resize, 1);
  with config_select_2 select c_10_sel <= 
    "0" when "1",
    "1" when others;
  with c_10_sel select c_10 <=
    c_10_1_0_False_shift when "0",
    c_10_2_1_False_shift when others;
  -- node of type 'register' in stage 2 with id 11 and associated fundamentals [[3], [3]]
  c_11 <= c_1 & "";
  -- node of type 'add_sub' in stage 3 with id 12 and associated fundamentals [[154], [54]]
  with config_select_3 select c_12_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 18,
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
      sub_i => c_12_sub_sel,
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(23 downto 0);
  -- node of type 'mux' in stage 2 with id 13 and associated fundamentals [[80], [5]]
  c_13_2_4_False_resize <= resize(c_2, 23);
  c_13_2_4_False_shift <= shift_left(c_13_2_4_False_resize, 4);
  c_13_2_0_False_resize <= resize(c_2, 23);
  c_13_2_0_False_shift <= shift_left(c_13_2_0_False_resize, 0);
  with config_select_2 select c_13_sel <= 
    "0" when "0",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_2_4_False_shift when "0",
    c_13_2_0_False_shift when others;
  -- node of type 'mux' in stage 2 with id 14 and associated fundamentals [[127], [0]]
  c_14_3_0_False_resize <= c_3;
  c_14_3_0_False_shift <= shift_left(c_14_3_0_False_resize, 0);
  with config_select_2 select c_14_sel <= 
    "0" when "0",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_3_0_False_shift when "0",
    to_signed(0, 23) when others;
  -- node of type 'add_sub' in stage 3 with id 15 and associated fundamentals [[193], [20]]
  with config_select_3 select c_15_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
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
      sub_i => c_15_sub_sel,
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(23 downto 0);
  -- node of type 'mux' in stage 2 with id 16 and associated fundamentals [[40], [5]]
  c_16_2_3_False_resize <= resize(c_2, 22);
  c_16_2_3_False_shift <= shift_left(c_16_2_3_False_resize, 3);
  c_16_2_0_False_resize <= resize(c_2, 22);
  c_16_2_0_False_shift <= shift_left(c_16_2_0_False_resize, 0);
  with config_select_2 select c_16_sel <= 
    "0" when "0",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_2_3_False_shift when "0",
    c_16_2_0_False_shift when others;
  -- node of type 'mux' in stage 2 with id 17 and associated fundamentals [[3], [127]]
  c_17_1_0_False_resize <= resize(c_1, 23);
  c_17_1_0_False_shift <= shift_left(c_17_1_0_False_resize, 0);
  c_17_3_0_False_resize <= c_3;
  c_17_3_0_False_shift <= shift_left(c_17_3_0_False_resize, 0);
  with config_select_2 select c_17_sel <= 
    "0" when "0",
    "1" when others;
  with c_17_sel select c_17 <=
    c_17_1_0_False_shift when "0",
    c_17_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 18 and associated fundamentals [[77], [117]]
  with config_select_3 select c_18_sub_sel_left <= 
    '0' when "0",
    '1' when others;
  with config_select_3 select c_18_sub_sel_right <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
      w_o => 23,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => True,
      sub => False
    )
    port map (
      sub_a_i => c_18_sub_sel_left,
      sub_b_i => c_18_sub_sel_right,
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  c_18 <= c_18_oshift(22 downto 0);
  -- node of type 'output' in stage 3 with id 19 and associated fundamentals [[77], [117]]
  c_19_resize <= c_18;
  c_19 <= shift_left(c_19_resize, 0);
  -- node of type 'output' in stage 3 with id 20 and associated fundamentals [[154], [54]]
  c_20_resize <= c_12;
  c_20 <= shift_left(c_20_resize, 0);
  -- node of type 'output' in stage 3 with id 21 and associated fundamentals [[90], [17]]
  c_21_resize <= c_9;
  c_21 <= shift_left(c_21_resize, 0);
  -- node of type 'output' in stage 3 with id 22 and associated fundamentals [[193], [20]]
  c_22_resize <= c_15;
  c_22 <= shift_left(c_22_resize, 0);
  -- node of type 'output' in stage 3 with id 23 and associated fundamentals [[43], [1]]
  c_23_resize <= c_6;
  c_23 <= shift_left(c_23_resize, 0);
end architecture;
