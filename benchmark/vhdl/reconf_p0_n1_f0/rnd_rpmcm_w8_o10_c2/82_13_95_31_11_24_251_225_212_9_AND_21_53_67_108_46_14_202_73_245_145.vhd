library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(22 downto 0);
    y_1: out std_logic_vector(21 downto 0);
    y_2: out std_logic_vector(22 downto 0);
    y_3: out std_logic_vector(22 downto 0);
    y_4: out std_logic_vector(21 downto 0);
    y_5: out std_logic_vector(20 downto 0);
    y_6: out std_logic_vector(23 downto 0);
    y_7: out std_logic_vector(23 downto 0);
    y_8: out std_logic_vector(23 downto 0);
    y_9: out std_logic_vector(23 downto 0);
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
  signal config_select_9: std_logic_vector(0 downto 0);
  signal config_select_10: std_logic_vector(0 downto 0);
  signal config_select_11: std_logic_vector(0 downto 0);
  signal config_select_12: std_logic_vector(0 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_0_4_False_resize: signed(19 downto 0);
  signal c_1_0_4_False_shift: signed(19 downto 0);
  signal c_1_0_0_False_resize: signed(19 downto 0);
  signal c_1_0_0_False_shift: signed(19 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(19 downto 0);
  signal c_2_i0_resize: signed(19 downto 0);
  signal c_2_i1_resize: signed(19 downto 0);
  signal c_2_i0_shift: signed(19 downto 0);
  signal c_2_i1_shift: signed(19 downto 0);
  signal c_2_arith: signed(19 downto 0);
  signal c_2_oshift: signed(19 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(19 downto 0);
  signal c_3_0_4_False_resize: signed(19 downto 0);
  signal c_3_0_4_False_shift: signed(19 downto 0);
  signal c_3_2_0_False_resize: signed(19 downto 0);
  signal c_3_2_0_False_shift: signed(19 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(20 downto 0);
  signal c_4_i0_resize: signed(20 downto 0);
  signal c_4_i1_resize: signed(20 downto 0);
  signal c_4_i0_shift: signed(20 downto 0);
  signal c_4_i1_shift: signed(20 downto 0);
  signal c_4_arith: signed(20 downto 0);
  signal c_4_oshift: signed(20 downto 0);
  signal c_5: signed(20 downto 0);
  signal c_5_4_0_False_resize: signed(20 downto 0);
  signal c_5_4_0_False_shift: signed(20 downto 0);
  signal c_5_2_1_False_resize: signed(20 downto 0);
  signal c_5_2_1_False_shift: signed(20 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(21 downto 0);
  signal c_6_i0_resize: signed(21 downto 0);
  signal c_6_i1_resize: signed(21 downto 0);
  signal c_6_i0_shift: signed(21 downto 0);
  signal c_6_i1_shift: signed(21 downto 0);
  signal c_6_arith: signed(21 downto 0);
  signal c_6_oshift: signed(21 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(17 downto 0);
  signal c_7_0_2_False_resize: signed(17 downto 0);
  signal c_7_0_2_False_shift: signed(17 downto 0);
  signal c_7_0_0_False_resize: signed(17 downto 0);
  signal c_7_0_0_False_shift: signed(17 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(21 downto 0);
  signal c_8_i0_resize: signed(21 downto 0);
  signal c_8_i1_resize: signed(21 downto 0);
  signal c_8_i0_shift: signed(21 downto 0);
  signal c_8_i1_shift: signed(21 downto 0);
  signal c_8_arith: signed(21 downto 0);
  signal c_8_oshift: signed(21 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(21 downto 0);
  signal c_10_6_1_False_resize: signed(21 downto 0);
  signal c_10_6_1_False_shift: signed(21 downto 0);
  signal c_10_6_0_False_resize: signed(21 downto 0);
  signal c_10_6_0_False_shift: signed(21 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(22 downto 0);
  signal c_11_i0_resize: signed(22 downto 0);
  signal c_11_i1_resize: signed(22 downto 0);
  signal c_11_i0_shift: signed(22 downto 0);
  signal c_11_i1_shift: signed(22 downto 0);
  signal c_11_arith: signed(22 downto 0);
  signal c_11_oshift: signed(22 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_0_8_False_resize: signed(23 downto 0);
  signal c_12_0_8_False_shift: signed(23 downto 0);
  signal c_12_8_0_False_resize: signed(23 downto 0);
  signal c_12_8_0_False_shift: signed(23 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(21 downto 0);
  signal c_14_6_0_False_resize: signed(21 downto 0);
  signal c_14_6_0_False_shift: signed(21 downto 0);
  signal c_14_8_0_False_resize: signed(21 downto 0);
  signal c_14_8_0_False_shift: signed(21 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_15_i0_resize: signed(22 downto 0);
  signal c_15_i1_resize: signed(22 downto 0);
  signal c_15_i0_shift: signed(22 downto 0);
  signal c_15_i1_shift: signed(22 downto 0);
  signal c_15_arith: signed(22 downto 0);
  signal c_15_oshift: signed(22 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_i0_resize: signed(23 downto 0);
  signal c_16_i1_resize: signed(23 downto 0);
  signal c_16_i0_shift: signed(23 downto 0);
  signal c_16_i1_shift: signed(23 downto 0);
  signal c_16_arith: signed(23 downto 0);
  signal c_16_oshift: signed(23 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(23 downto 0);
  signal c_17_15_0_False_resize: signed(23 downto 0);
  signal c_17_15_0_False_shift: signed(23 downto 0);
  signal c_17_15_1_False_resize: signed(23 downto 0);
  signal c_17_15_1_False_shift: signed(23 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_i0_resize: signed(23 downto 0);
  signal c_18_i1_resize: signed(23 downto 0);
  signal c_18_i0_shift: signed(23 downto 0);
  signal c_18_i1_shift: signed(23 downto 0);
  signal c_18_arith: signed(23 downto 0);
  signal c_18_oshift: signed(23 downto 0);
  signal c_19: signed(22 downto 0);
  signal c_19_resize: signed(22 downto 0);
  signal c_20: signed(21 downto 0);
  signal c_20_resize: signed(21 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_21_resize: signed(22 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_22_4_0_False_resize: signed(22 downto 0);
  signal c_22_4_0_False_shift: signed(22 downto 0);
  signal c_22_4_2_False_resize: signed(22 downto 0);
  signal c_22_4_2_False_shift: signed(22 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(22 downto 0);
  signal c_23_resize: signed(22 downto 0);
  signal c_24: signed(21 downto 0);
  signal c_24_resize: signed(21 downto 0);
  signal c_25: signed(20 downto 0);
  signal c_25_2_3_False_resize: signed(20 downto 0);
  signal c_25_2_3_False_shift: signed(20 downto 0);
  signal c_25_2_0_False_resize: signed(20 downto 0);
  signal c_25_2_0_False_shift: signed(20 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(20 downto 0);
  signal c_26_resize: signed(20 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_resize: signed(23 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_resize: signed(23 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_resize: signed(23 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_resize: signed(23 downto 0);
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
  -- output node 3 with id 23
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_23);
    end if;
  end process;
  -- output node 4 with id 24
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_24);
    end if;
  end process;
  -- output node 5 with id 26
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_26);
    end if;
  end process;
  -- output node 6 with id 27
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_27);
    end if;
  end process;
  -- output node 7 with id 28
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_28);
    end if;
  end process;
  -- output node 8 with id 29
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_29);
    end if;
  end process;
  -- output node 9 with id 30
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_30);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [16]]
  c_1_0_4_False_resize <= resize(c_0, 20);
  c_1_0_4_False_shift <= shift_left(c_1_0_4_False_resize, 4);
  c_1_0_0_False_resize <= resize(c_0, 20);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  with config_select_1 select c_1_sel <= 
    "0" when "1",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_4_False_shift when "0",
    c_1_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 2 and associated fundamentals [[3], [14]]
  with config_select_2 select c_2_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 16,
      w_o => 20,
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
      sub_i => c_2_sub_sel,
      x_i => c_1,
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(19 downto 0);
  -- node of type 'mux' in stage 3 with id 3 and associated fundamentals [[16], [14]]
  c_3_0_4_False_resize <= resize(c_0, 20);
  c_3_0_4_False_shift <= shift_left(c_3_0_4_False_resize, 4);
  c_3_2_0_False_resize <= c_2;
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  with config_select_3 select c_3_sel <= 
    "0" when "0",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_0_4_False_shift when "0",
    c_3_2_0_False_shift when others;
  -- node of type 'sub' in stage 4 with id 4 and associated fundamentals [[31], [27]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 16,
      w_o => 21,
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
      x_i => c_3,
      y_i => c_0,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(20 downto 0);
  -- node of type 'mux' in stage 5 with id 5 and associated fundamentals [[6], [27]]
  c_5_4_0_False_resize <= c_4;
  c_5_4_0_False_shift <= shift_left(c_5_4_0_False_resize, 0);
  c_5_2_1_False_resize <= resize(c_2, 21);
  c_5_2_1_False_shift <= shift_left(c_5_2_1_False_resize, 1);
  with config_select_5 select c_5_sel <= 
    "0" when "1",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_4_0_False_shift when "0",
    c_5_2_1_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 6 and associated fundamentals [[13], [53]]
  with config_select_6 select c_6_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 16,
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
      y_i => c_0,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(21 downto 0);
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[1], [4]]
  c_7_0_2_False_resize <= resize(c_0, 18);
  c_7_0_2_False_shift <= shift_left(c_7_0_2_False_resize, 2);
  c_7_0_0_False_resize <= resize(c_0, 18);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  with config_select_1 select c_7_sel <= 
    "0" when "1",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_0_2_False_shift when "0",
    c_7_0_0_False_shift when others;
  -- node of type 'add' in stage 3 with id 8 and associated fundamentals [[11], [46]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 18,
      w_o => 22,
      s_x_i => 0,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_2,
      y_i => c_7,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(21 downto 0);
  -- node of type 'add_sub' in stage 7 with id 9 and associated fundamentals [[9], [145]]
  with config_select_7 select c_9_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
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
      sub_i => c_9_sub_sel,
      x_i => c_8,
      y_i => c_6,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(23 downto 0);
  -- node of type 'mux' in stage 7 with id 10 and associated fundamentals [[26], [53]]
  c_10_6_1_False_resize <= c_6;
  c_10_6_1_False_shift <= shift_left(c_10_6_1_False_resize, 1);
  c_10_6_0_False_resize <= c_6;
  c_10_6_0_False_shift <= shift_left(c_10_6_0_False_resize, 0);
  with config_select_7 select c_10_sel <= 
    "0" when "0",
    "1" when others;
  with c_10_sel select c_10 <=
    c_10_6_1_False_shift when "0",
    c_10_6_0_False_shift when others;
  -- node of type 'sub' in stage 8 with id 11 and associated fundamentals [[-95], [-67]]
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
      w_o => 23,
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
      x_i => c_9,
      y_i => c_10,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(22 downto 0);
  -- node of type 'mux' in stage 4 with id 12 and associated fundamentals [[256], [46]]
  c_12_0_8_False_resize <= resize(c_0, 24);
  c_12_0_8_False_shift <= shift_left(c_12_0_8_False_resize, 8);
  c_12_8_0_False_resize <= resize(c_8, 24);
  c_12_8_0_False_shift <= shift_left(c_12_8_0_False_resize, 0);
  with config_select_4 select c_12_sel <= 
    "0" when "0",
    "1" when others;
  with c_12_sel select c_12 <=
    c_12_0_8_False_shift when "0",
    c_12_8_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 13 and associated fundamentals [[225], [73]]
  with config_select_5 select c_13_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 21,
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
      sub_i => c_13_sub_sel,
      x_i => c_12,
      y_i => c_4,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(23 downto 0);
  -- node of type 'mux' in stage 7 with id 14 and associated fundamentals [[13], [46]]
  c_14_6_0_False_resize <= c_6;
  c_14_6_0_False_shift <= shift_left(c_14_6_0_False_resize, 0);
  c_14_8_0_False_resize <= c_8;
  c_14_8_0_False_shift <= shift_left(c_14_8_0_False_resize, 0);
  with config_select_7 select c_14_sel <= 
    "0" when "0",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_6_0_False_shift when "0",
    c_14_8_0_False_shift when others;
  -- node of type 'add' in stage 9 with id 15 and associated fundamentals [[-82], [-21]]
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
      w_o => 23,
      s_x_i => 0,
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
      y_i => c_14,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(22 downto 0);
  -- node of type 'add_sub' in stage 5 with id 16 and associated fundamentals [[251], [202]]
  with config_select_5 select c_16_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 20,
      w_o => 24,
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
      sub_i => c_16_sub_sel,
      x_i => c_4,
      y_i => c_2,
      z_o => c_16_oshift
    );
  c_16 <= c_16_oshift(23 downto 0);
  -- node of type 'mux' in stage 10 with id 17 and associated fundamentals [[-164], [-21]]
  c_17_15_0_False_resize <= resize(c_15, 24);
  c_17_15_0_False_shift <= shift_left(c_17_15_0_False_resize, 0);
  c_17_15_1_False_resize <= resize(c_15, 24);
  c_17_15_1_False_shift <= shift_left(c_17_15_1_False_resize, 1);
  with config_select_10 select c_17_sel <= 
    "0" when "1",
    "1" when others;
  with c_17_sel select c_17 <=
    c_17_15_0_False_shift when "0",
    c_17_15_1_False_shift when others;
  -- node of type 'sub' in stage 11 with id 18 and associated fundamentals [[-212], [-245]]
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 20,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_17,
      y_i => c_2,
      z_o => c_18_oshift
    );
  c_18 <= c_18_oshift(23 downto 0);
  -- node of type 'output' in stage 9 with id 19 and associated fundamentals [[82], [21]]
  c_19_resize <= c_15;
  c_19 <= -shift_left(c_19_resize, 0);
  -- node of type 'output' in stage 6 with id 20 and associated fundamentals [[13], [53]]
  c_20_resize <= c_6;
  c_20 <= shift_left(c_20_resize, 0);
  -- node of type 'output' in stage 8 with id 21 and associated fundamentals [[95], [67]]
  c_21_resize <= c_11;
  c_21 <= -shift_left(c_21_resize, 0);
  -- node of type 'mux' in stage 5 with id 22 and associated fundamentals [[31], [108]]
  c_22_4_0_False_resize <= resize(c_4, 23);
  c_22_4_0_False_shift <= shift_left(c_22_4_0_False_resize, 0);
  c_22_4_2_False_resize <= resize(c_4, 23);
  c_22_4_2_False_shift <= shift_left(c_22_4_2_False_resize, 2);
  with config_select_5 select c_22_sel <= 
    "0" when "0",
    "1" when others;
  with c_22_sel select c_22 <=
    c_22_4_0_False_shift when "0",
    c_22_4_2_False_shift when others;
  -- node of type 'output' in stage 5 with id 23 and associated fundamentals [[31], [108]]
  c_23_resize <= c_22;
  c_23 <= shift_left(c_23_resize, 0);
  -- node of type 'output' in stage 3 with id 24 and associated fundamentals [[11], [46]]
  c_24_resize <= c_8;
  c_24 <= shift_left(c_24_resize, 0);
  -- node of type 'mux' in stage 3 with id 25 and associated fundamentals [[24], [14]]
  c_25_2_3_False_resize <= resize(c_2, 21);
  c_25_2_3_False_shift <= shift_left(c_25_2_3_False_resize, 3);
  c_25_2_0_False_resize <= resize(c_2, 21);
  c_25_2_0_False_shift <= shift_left(c_25_2_0_False_resize, 0);
  with config_select_3 select c_25_sel <= 
    "0" when "0",
    "1" when others;
  with c_25_sel select c_25 <=
    c_25_2_3_False_shift when "0",
    c_25_2_0_False_shift when others;
  -- node of type 'output' in stage 3 with id 26 and associated fundamentals [[24], [14]]
  c_26_resize <= c_25;
  c_26 <= shift_left(c_26_resize, 0);
  -- node of type 'output' in stage 5 with id 27 and associated fundamentals [[251], [202]]
  c_27_resize <= c_16;
  c_27 <= shift_left(c_27_resize, 0);
  -- node of type 'output' in stage 5 with id 28 and associated fundamentals [[225], [73]]
  c_28_resize <= c_13;
  c_28 <= shift_left(c_28_resize, 0);
  -- node of type 'output' in stage 11 with id 29 and associated fundamentals [[212], [245]]
  c_29_resize <= c_18;
  c_29 <= -shift_left(c_29_resize, 0);
  -- node of type 'output' in stage 7 with id 30 and associated fundamentals [[9], [145]]
  c_30_resize <= c_9;
  c_30 <= shift_left(c_30_resize, 0);
end architecture;
