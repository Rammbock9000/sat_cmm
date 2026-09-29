library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(22 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(22 downto 0);
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
  signal config_select_7: std_logic_vector(1 downto 0);
  signal config_select_8: std_logic_vector(1 downto 0);
  signal config_select_9: std_logic_vector(1 downto 0);
  signal config_select_10: std_logic_vector(1 downto 0);
  signal config_select_11: std_logic_vector(1 downto 0);
  signal config_select_12: std_logic_vector(1 downto 0);
  signal config_select_13: std_logic_vector(1 downto 0);
  signal config_select_14: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_0_0_False_resize: signed(18 downto 0);
  signal c_1_0_0_False_shift: signed(18 downto 0);
  signal c_1_0_3_False_resize: signed(18 downto 0);
  signal c_1_0_3_False_shift: signed(18 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(19 downto 0);
  signal c_2_i0_resize: signed(19 downto 0);
  signal c_2_i1_resize: signed(19 downto 0);
  signal c_2_i0_shift: signed(19 downto 0);
  signal c_2_i1_shift: signed(19 downto 0);
  signal c_2_arith: signed(19 downto 0);
  signal c_2_oshift: signed(19 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(20 downto 0);
  signal c_3_2_1_False_resize: signed(20 downto 0);
  signal c_3_2_1_False_shift: signed(20 downto 0);
  signal c_3_2_0_False_resize: signed(20 downto 0);
  signal c_3_2_0_False_shift: signed(20 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(18 downto 0);
  signal c_4_0_0_False_resize: signed(18 downto 0);
  signal c_4_0_0_False_shift: signed(18 downto 0);
  signal c_4_2_1_False_resize: signed(18 downto 0);
  signal c_4_2_1_False_shift: signed(18 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(20 downto 0);
  signal c_5_i0_resize: signed(20 downto 0);
  signal c_5_i1_resize: signed(20 downto 0);
  signal c_5_i0_shift: signed(20 downto 0);
  signal c_5_i1_shift: signed(20 downto 0);
  signal c_5_arith: signed(20 downto 0);
  signal c_5_oshift: signed(20 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(22 downto 0);
  signal c_6_2_3_False_resize: signed(22 downto 0);
  signal c_6_2_3_False_shift: signed(22 downto 0);
  signal c_6_5_0_False_resize: signed(22 downto 0);
  signal c_6_5_0_False_shift: signed(22 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_i0_resize: signed(23 downto 0);
  signal c_7_i1_resize: signed(23 downto 0);
  signal c_7_i0_shift: signed(23 downto 0);
  signal c_7_i1_shift: signed(23 downto 0);
  signal c_7_arith: signed(23 downto 0);
  signal c_7_oshift: signed(23 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(19 downto 0);
  signal c_8_0_4_False_resize: signed(19 downto 0);
  signal c_8_0_4_False_shift: signed(19 downto 0);
  signal c_8_5_0_False_resize: signed(19 downto 0);
  signal c_8_5_0_False_shift: signed(19 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_7_0_False_resize: signed(23 downto 0);
  signal c_9_7_0_False_shift: signed(23 downto 0);
  signal c_9_2_0_False_resize: signed(23 downto 0);
  signal c_9_2_0_False_shift: signed(23 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(24 downto 0);
  signal c_10_i0_resize: signed(24 downto 0);
  signal c_10_i1_resize: signed(24 downto 0);
  signal c_10_i0_shift: signed(24 downto 0);
  signal c_10_i1_shift: signed(24 downto 0);
  signal c_10_arith: signed(24 downto 0);
  signal c_10_oshift: signed(24 downto 0);
  signal c_11: signed(24 downto 0);
  signal c_11_5_3_False_resize: signed(24 downto 0);
  signal c_11_5_3_False_shift: signed(24 downto 0);
  signal c_11_10_0_False_resize: signed(24 downto 0);
  signal c_11_10_0_False_shift: signed(24 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_i0_resize: signed(23 downto 0);
  signal c_12_i1_resize: signed(23 downto 0);
  signal c_12_i0_shift: signed(23 downto 0);
  signal c_12_i1_shift: signed(23 downto 0);
  signal c_12_arith: signed(23 downto 0);
  signal c_12_oshift: signed(23 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(25 downto 0);
  signal c_13_0_1_False_resize: signed(25 downto 0);
  signal c_13_0_1_False_shift: signed(25 downto 0);
  signal c_13_5_5_False_resize: signed(25 downto 0);
  signal c_13_5_5_False_shift: signed(25 downto 0);
  signal c_13_10_0_False_resize: signed(25 downto 0);
  signal c_13_10_0_False_shift: signed(25 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_12_0_False_resize: signed(23 downto 0);
  signal c_14_12_0_False_shift: signed(23 downto 0);
  signal c_14_2_3_False_resize: signed(23 downto 0);
  signal c_14_2_3_False_shift: signed(23 downto 0);
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
  signal c_16_7_1_False_resize: signed(23 downto 0);
  signal c_16_7_1_False_shift: signed(23 downto 0);
  signal c_16_7_0_False_resize: signed(23 downto 0);
  signal c_16_7_0_False_shift: signed(23 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_resize: signed(23 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_resize: signed(23 downto 0);
  signal c_19: signed(22 downto 0);
  signal c_19_5_2_False_resize: signed(22 downto 0);
  signal c_19_5_2_False_shift: signed(22 downto 0);
  signal c_19_5_0_False_resize: signed(22 downto 0);
  signal c_19_5_0_False_shift: signed(22 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_20_resize: signed(22 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_resize: signed(23 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_22_2_0_False_resize: signed(22 downto 0);
  signal c_22_2_0_False_shift: signed(22 downto 0);
  signal c_22_10_0_False_resize: signed(22 downto 0);
  signal c_22_10_0_False_shift: signed(22 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(22 downto 0);
  signal c_23_resize: signed(22 downto 0);
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
      config_select_9 <= config_select;
      config_select_10 <= config_select;
      config_select_11 <= config_select;
      config_select_12 <= config_select;
      config_select_13 <= config_select;
      config_select_14 <= config_select;
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
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [1], [8]]
  c_1_0_0_False_resize <= resize(c_0, 19);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_3_False_resize <= resize(c_0, 19);
  c_1_0_3_False_shift <= shift_left(c_1_0_3_False_resize, 3);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "0",
    c_1_0_3_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 2 and associated fundamentals [[3], [5], [12]]
  with config_select_2 select c_2_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 19,
      w_o => 20,
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
      x_i => c_0,
      y_i => c_1,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(19 downto 0);
  -- node of type 'mux' in stage 3 with id 3 and associated fundamentals [[3], [10], [24]]
  c_3_2_1_False_resize <= resize(c_2, 21);
  c_3_2_1_False_shift <= shift_left(c_3_2_1_False_resize, 1);
  c_3_2_0_False_resize <= resize(c_2, 21);
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  with config_select_3 select c_3_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_2_1_False_shift when "0",
    c_3_2_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[6], [1], [1]]
  c_4_0_0_False_resize <= resize(c_0, 19);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_2_1_False_resize <= c_2(18 downto 0);
  c_4_2_1_False_shift <= shift_left(c_4_2_1_False_resize, 1);
  with config_select_3 select c_4_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_0_0_False_shift when "0",
    c_4_2_1_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 5 and associated fundamentals [[27], [14], [20]]
  with config_select_4 select c_5_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 19,
      w_o => 21,
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
      sub_i => c_5_sub_sel,
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(20 downto 0);
  -- node of type 'mux' in stage 5 with id 6 and associated fundamentals [[24], [14], [96]]
  c_6_2_3_False_resize <= resize(c_2, 23);
  c_6_2_3_False_shift <= shift_left(c_6_2_3_False_resize, 3);
  c_6_5_0_False_resize <= resize(c_5, 23);
  c_6_5_0_False_shift <= shift_left(c_6_5_0_False_resize, 0);
  with config_select_5 select c_6_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_2_3_False_shift when "0",
    c_6_5_0_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 7 and associated fundamentals [[49], [27], [193]]
  with config_select_6 select c_7_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_7_sub_sel,
      x_i => c_6,
      y_i => c_0,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(23 downto 0);
  -- node of type 'mux' in stage 5 with id 8 and associated fundamentals [[16], [14], [16]]
  c_8_0_4_False_resize <= resize(c_0, 20);
  c_8_0_4_False_shift <= shift_left(c_8_0_4_False_resize, 4);
  c_8_5_0_False_resize <= c_5(19 downto 0);
  c_8_5_0_False_shift <= shift_left(c_8_5_0_False_resize, 0);
  with config_select_5 select c_8_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_0_4_False_shift when "0",
    c_8_5_0_False_shift when others;
  -- node of type 'mux' in stage 7 with id 9 and associated fundamentals [[3], [27], [193]]
  c_9_7_0_False_resize <= c_7;
  c_9_7_0_False_shift <= shift_left(c_9_7_0_False_resize, 0);
  c_9_2_0_False_resize <= resize(c_2, 24);
  c_9_2_0_False_shift <= shift_left(c_9_2_0_False_resize, 0);
  with config_select_7 select c_9_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_7_0_False_shift when "0",
    c_9_2_0_False_shift when others;
  -- node of type 'add' in stage 8 with id 10 and associated fundamentals [[67], [83], [257]]
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 24,
      w_o => 25,
      s_x_i => 2,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_8,
      y_i => c_9,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(24 downto 0);
  -- node of type 'mux' in stage 9 with id 11 and associated fundamentals [[216], [112], [257]]
  c_11_5_3_False_resize <= resize(c_5, 25);
  c_11_5_3_False_shift <= shift_left(c_11_5_3_False_resize, 3);
  c_11_10_0_False_resize <= c_10;
  c_11_10_0_False_shift <= shift_left(c_11_10_0_False_resize, 0);
  with config_select_9 select c_11_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_5_3_False_shift when "0",
    c_11_10_0_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 12 and associated fundamentals [[213], [117], [245]]
  with config_select_10 select c_12_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 20,
      w_o => 24,
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
      x_i => c_11,
      y_i => c_2,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(23 downto 0);
  -- node of type 'mux' in stage 9 with id 13 and associated fundamentals [[2], [83], [640]]
  c_13_0_1_False_resize <= resize(c_0, 26);
  c_13_0_1_False_shift <= shift_left(c_13_0_1_False_resize, 1);
  c_13_5_5_False_resize <= resize(c_5, 26);
  c_13_5_5_False_shift <= shift_left(c_13_5_5_False_resize, 5);
  c_13_10_0_False_resize <= resize(c_10, 26);
  c_13_10_0_False_shift <= shift_left(c_13_10_0_False_resize, 0);
  with config_select_9 select c_13_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_13_sel select c_13 <=
    c_13_0_1_False_shift when "00",
    c_13_5_5_False_shift when "01",
    c_13_10_0_False_shift when others;
  -- node of type 'mux' in stage 11 with id 14 and associated fundamentals [[24], [40], [245]]
  c_14_12_0_False_resize <= c_12;
  c_14_12_0_False_shift <= shift_left(c_14_12_0_False_resize, 0);
  c_14_2_3_False_resize <= resize(c_2, 24);
  c_14_2_3_False_shift <= shift_left(c_14_2_3_False_resize, 3);
  with config_select_11 select c_14_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_12_0_False_shift when "0",
    c_14_2_3_False_shift when others;
  -- node of type 'add_sub' in stage 12 with id 15 and associated fundamentals [[50], [163], [150]]
  with config_select_12 select c_15_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
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
  c_15 <= c_15_oshift(23 downto 0);
  -- node of type 'mux' in stage 7 with id 16 and associated fundamentals [[98], [27], [193]]
  c_16_7_1_False_resize <= c_7;
  c_16_7_1_False_shift <= shift_left(c_16_7_1_False_resize, 1);
  c_16_7_0_False_resize <= c_7;
  c_16_7_0_False_shift <= shift_left(c_16_7_0_False_resize, 0);
  with config_select_7 select c_16_sel <= 
    "0" when "00",
    "1" when "10",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_7_1_False_shift when "0",
    c_16_7_0_False_shift when others;
  -- node of type 'output' in stage 7 with id 17 and associated fundamentals [[98], [27], [193]]
  c_17_resize <= c_16;
  c_17 <= shift_left(c_17_resize, 0);
  -- node of type 'output' in stage 12 with id 18 and associated fundamentals [[50], [163], [150]]
  c_18_resize <= c_15;
  c_18 <= shift_left(c_18_resize, 0);
  -- node of type 'mux' in stage 5 with id 19 and associated fundamentals [[108], [14], [80]]
  c_19_5_2_False_resize <= resize(c_5, 23);
  c_19_5_2_False_shift <= shift_left(c_19_5_2_False_resize, 2);
  c_19_5_0_False_resize <= resize(c_5, 23);
  c_19_5_0_False_shift <= shift_left(c_19_5_0_False_resize, 0);
  with config_select_5 select c_19_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_19_sel select c_19 <=
    c_19_5_2_False_shift when "0",
    c_19_5_0_False_shift when others;
  -- node of type 'output' in stage 5 with id 20 and associated fundamentals [[108], [14], [80]]
  c_20_resize <= c_19;
  c_20 <= shift_left(c_20_resize, 0);
  -- node of type 'output' in stage 10 with id 21 and associated fundamentals [[213], [117], [245]]
  c_21_resize <= c_12;
  c_21 <= shift_left(c_21_resize, 0);
  -- node of type 'mux' in stage 9 with id 22 and associated fundamentals [[67], [83], [12]]
  c_22_2_0_False_resize <= resize(c_2, 23);
  c_22_2_0_False_shift <= shift_left(c_22_2_0_False_resize, 0);
  c_22_10_0_False_resize <= c_10(22 downto 0);
  c_22_10_0_False_shift <= shift_left(c_22_10_0_False_resize, 0);
  with config_select_9 select c_22_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_22_sel select c_22 <=
    c_22_2_0_False_shift when "0",
    c_22_10_0_False_shift when others;
  -- node of type 'output' in stage 9 with id 23 and associated fundamentals [[67], [83], [12]]
  c_23_resize <= c_22;
  c_23 <= shift_left(c_23_resize, 0);
end architecture;
