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
  signal c_1: signed(15 downto 0);
  signal c_2: signed(17 downto 0);
  signal c_2_i0_resize: signed(17 downto 0);
  signal c_2_i1_resize: signed(17 downto 0);
  signal c_2_i0_shift: signed(17 downto 0);
  signal c_2_i1_shift: signed(17 downto 0);
  signal c_2_arith: signed(17 downto 0);
  signal c_2_oshift: signed(17 downto 0);
  signal c_3: signed(15 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_5: signed(20 downto 0);
  signal c_5_2_3_False_resize: signed(20 downto 0);
  signal c_5_2_3_False_shift: signed(20 downto 0);
  signal c_5_2_0_False_resize: signed(20 downto 0);
  signal c_5_2_0_False_shift: signed(20 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(23 downto 0);
  signal c_6_i0_resize: signed(23 downto 0);
  signal c_6_i1_resize: signed(23 downto 0);
  signal c_6_i0_shift: signed(23 downto 0);
  signal c_6_i1_shift: signed(23 downto 0);
  signal c_6_arith: signed(23 downto 0);
  signal c_6_oshift: signed(23 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(20 downto 0);
  signal c_7_2_3_False_resize: signed(20 downto 0);
  signal c_7_2_3_False_shift: signed(20 downto 0);
  signal c_7_2_0_False_resize: signed(20 downto 0);
  signal c_7_2_0_False_shift: signed(20 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_8_i0_resize: signed(23 downto 0);
  signal c_8_i1_resize: signed(23 downto 0);
  signal c_8_i0_shift: signed(23 downto 0);
  signal c_8_i1_shift: signed(23 downto 0);
  signal c_8_arith: signed(23 downto 0);
  signal c_8_oshift: signed(23 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(17 downto 0);
  signal c_10: signed(24 downto 0);
  signal c_10_i0_resize: signed(24 downto 0);
  signal c_10_i1_resize: signed(24 downto 0);
  signal c_10_i0_shift: signed(24 downto 0);
  signal c_10_i1_shift: signed(24 downto 0);
  signal c_10_arith: signed(24 downto 0);
  signal c_10_oshift: signed(24 downto 0);
  signal c_11: signed(24 downto 0);
  signal c_11_4_9_False_resize: signed(24 downto 0);
  signal c_11_4_9_False_shift: signed(24 downto 0);
  signal c_11_6_0_False_resize: signed(24 downto 0);
  signal c_11_6_0_False_shift: signed(24 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_6_2_False_resize: signed(23 downto 0);
  signal c_12_6_2_False_shift: signed(23 downto 0);
  signal c_12_6_0_False_resize: signed(23 downto 0);
  signal c_12_6_0_False_shift: signed(23 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(25 downto 0);
  signal c_13_i0_resize: signed(25 downto 0);
  signal c_13_i1_resize: signed(25 downto 0);
  signal c_13_i0_shift: signed(25 downto 0);
  signal c_13_i1_shift: signed(25 downto 0);
  signal c_13_arith: signed(25 downto 0);
  signal c_13_oshift: signed(25 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_4_4_False_resize: signed(23 downto 0);
  signal c_14_4_4_False_shift: signed(23 downto 0);
  signal c_14_6_0_False_resize: signed(23 downto 0);
  signal c_14_6_0_False_shift: signed(23 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_4_10_False_resize: signed(25 downto 0);
  signal c_15_4_10_False_shift: signed(25 downto 0);
  signal c_15_4_0_False_resize: signed(25 downto 0);
  signal c_15_4_0_False_shift: signed(25 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(26 downto 0);
  signal c_16_i1_resize: signed(26 downto 0);
  signal c_16_i0_shift: signed(26 downto 0);
  signal c_16_i1_shift: signed(26 downto 0);
  signal c_16_arith: signed(26 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(25 downto 0);
  signal c_17_8_0_False_resize: signed(25 downto 0);
  signal c_17_8_0_False_shift: signed(25 downto 0);
  signal c_17_8_5_False_resize: signed(25 downto 0);
  signal c_17_8_5_False_shift: signed(25 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_i0_resize: signed(25 downto 0);
  signal c_19_i1_resize: signed(25 downto 0);
  signal c_19_i0_shift: signed(25 downto 0);
  signal c_19_i1_shift: signed(25 downto 0);
  signal c_19_arith: signed(25 downto 0);
  signal c_19_oshift: signed(25 downto 0);
  signal c_20: signed(24 downto 0);
  signal c_20_6_1_False_resize: signed(24 downto 0);
  signal c_20_6_1_False_shift: signed(24 downto 0);
  signal c_20_10_0_False_resize: signed(24 downto 0);
  signal c_20_10_0_False_shift: signed(24 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(26 downto 0);
  signal c_21_6_0_False_resize: signed(26 downto 0);
  signal c_21_6_0_False_shift: signed(26 downto 0);
  signal c_21_10_2_False_resize: signed(26 downto 0);
  signal c_21_10_2_False_shift: signed(26 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_i0_resize: signed(26 downto 0);
  signal c_22_i1_resize: signed(26 downto 0);
  signal c_22_i0_shift: signed(26 downto 0);
  signal c_22_i1_shift: signed(26 downto 0);
  signal c_22_arith: signed(26 downto 0);
  signal c_22_oshift: signed(25 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(23 downto 0);
  signal c_24: signed(15 downto 0);
  signal c_24_4_0_False_resize: signed(15 downto 0);
  signal c_24_4_0_False_shift: signed(15 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(24 downto 0);
  signal c_25_i0_resize: signed(24 downto 0);
  signal c_25_i1_resize: signed(24 downto 0);
  signal c_25_i0_shift: signed(24 downto 0);
  signal c_25_i1_shift: signed(24 downto 0);
  signal c_25_arith: signed(24 downto 0);
  signal c_25_oshift: signed(24 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_resize: signed(25 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_resize: signed(25 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_resize: signed(25 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_resize: signed(25 downto 0);
  signal c_30: signed(24 downto 0);
  signal c_30_resize: signed(24 downto 0);
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
  -- output node 0 with id 26
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_26);
    end if;
  end process;
  -- output node 1 with id 27
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_27);
    end if;
  end process;
  -- output node 2 with id 28
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_28);
    end if;
  end process;
  -- output node 3 with id 29
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_29);
    end if;
  end process;
  -- output node 4 with id 30
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_30);
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
  -- node of type 'register' in stage 2 with id 3 and associated fundamentals [[1], [1]]
  c_3 <= c_1 & "";
  -- node of type 'register' in stage 3 with id 4 and associated fundamentals [[1], [1]]
  c_4 <= c_3 & "";
  -- node of type 'mux' in stage 2 with id 5 and associated fundamentals [[3], [24]]
  c_5_2_3_False_resize <= resize(c_2, 21);
  c_5_2_3_False_shift <= shift_left(c_5_2_3_False_resize, 3);
  c_5_2_0_False_resize <= resize(c_2, 21);
  c_5_2_0_False_shift <= shift_left(c_5_2_0_False_resize, 0);
  with config_select_2 select c_5_sel <= 
    "0" when "1",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_2_3_False_shift when "0",
    c_5_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 6 and associated fundamentals [[25], [191]]
  with config_select_3 select c_6_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 16,
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
      sub_i => c_6_sub_sel,
      x_i => c_5,
      y_i => c_3,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(23 downto 0);
  -- node of type 'mux' in stage 2 with id 7 and associated fundamentals [[24], [3]]
  c_7_2_3_False_resize <= resize(c_2, 21);
  c_7_2_3_False_shift <= shift_left(c_7_2_3_False_resize, 3);
  c_7_2_0_False_resize <= resize(c_2, 21);
  c_7_2_0_False_shift <= shift_left(c_7_2_0_False_resize, 0);
  with config_select_2 select c_7_sel <= 
    "0" when "0",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_2_3_False_shift when "0",
    c_7_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 8 and associated fundamentals [[191], [25]]
  with config_select_3 select c_8_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 16,
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
      sub_i => c_8_sub_sel,
      x_i => c_7,
      y_i => c_3,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(23 downto 0);
  -- node of type 'register' in stage 2 with id 9 and associated fundamentals [[3], [3]]
  c_9 <= c_2 & "";
  -- node of type 'add' in stage 3 with id 10 and associated fundamentals [[259], [259]]
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 18,
      w_o => 25,
      s_x_i => 8,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_3,
      y_i => c_9,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(24 downto 0);
  -- node of type 'mux' in stage 4 with id 11 and associated fundamentals [[512], [191]]
  c_11_4_9_False_resize <= resize(c_4, 25);
  c_11_4_9_False_shift <= shift_left(c_11_4_9_False_resize, 9);
  c_11_6_0_False_resize <= resize(c_6, 25);
  c_11_6_0_False_shift <= shift_left(c_11_6_0_False_resize, 0);
  with config_select_4 select c_11_sel <= 
    "0" when "0",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_4_9_False_shift when "0",
    c_11_6_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 12 and associated fundamentals [[100], [191]]
  c_12_6_2_False_resize <= c_6;
  c_12_6_2_False_shift <= shift_left(c_12_6_2_False_resize, 2);
  c_12_6_0_False_resize <= c_6;
  c_12_6_0_False_shift <= shift_left(c_12_6_0_False_resize, 0);
  with config_select_4 select c_12_sel <= 
    "0" when "0",
    "1" when others;
  with c_12_sel select c_12 <=
    c_12_6_2_False_shift when "0",
    c_12_6_0_False_shift when others;
  -- node of type 'add' in stage 5 with id 13 and associated fundamentals [[912], [955]]
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 14 and associated fundamentals [[16], [191]]
  c_14_4_4_False_resize <= resize(c_4, 24);
  c_14_4_4_False_shift <= shift_left(c_14_4_4_False_resize, 4);
  c_14_6_0_False_resize <= c_6;
  c_14_6_0_False_shift <= shift_left(c_14_6_0_False_resize, 0);
  with config_select_4 select c_14_sel <= 
    "0" when "0",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_4_4_False_shift when "0",
    c_14_6_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 15 and associated fundamentals [[1024], [1]]
  c_15_4_10_False_resize <= resize(c_4, 26);
  c_15_4_10_False_shift <= shift_left(c_15_4_10_False_resize, 10);
  c_15_4_0_False_resize <= resize(c_4, 26);
  c_15_4_0_False_shift <= shift_left(c_15_4_0_False_resize, 0);
  with config_select_4 select c_15_sel <= 
    "0" when "0",
    "1" when others;
  with c_15_sel select c_15 <=
    c_15_4_10_False_shift when "0",
    c_15_4_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 16 and associated fundamentals [[520], [95]]
  with config_select_5 select c_16_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_16_sub_sel,
      x_i => c_14,
      y_i => c_15,
      z_o => c_16_oshift
    );
  c_16 <= c_16_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 17 and associated fundamentals [[191], [800]]
  c_17_8_0_False_resize <= resize(c_8, 26);
  c_17_8_0_False_shift <= shift_left(c_17_8_0_False_resize, 0);
  c_17_8_5_False_resize <= resize(c_8, 26);
  c_17_8_5_False_shift <= shift_left(c_17_8_5_False_resize, 5);
  with config_select_4 select c_17_sel <= 
    "0" when "0",
    "1" when others;
  with c_17_sel select c_17 <=
    c_17_8_0_False_shift when "0",
    c_17_8_5_False_shift when others;
  -- node of type 'register' in stage 4 with id 18 and associated fundamentals [[25], [191]]
  c_18 <= c_6 & "";
  -- node of type 'sub' in stage 5 with id 19 and associated fundamentals [[166], [609]]
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
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
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  c_19 <= c_19_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 20 and associated fundamentals [[259], [382]]
  c_20_6_1_False_resize <= resize(c_6, 25);
  c_20_6_1_False_shift <= shift_left(c_20_6_1_False_resize, 1);
  c_20_10_0_False_resize <= c_10;
  c_20_10_0_False_shift <= shift_left(c_20_10_0_False_resize, 0);
  with config_select_4 select c_20_sel <= 
    "0" when "1",
    "1" when others;
  with c_20_sel select c_20 <=
    c_20_6_1_False_shift when "0",
    c_20_10_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 21 and associated fundamentals [[25], [1036]]
  c_21_6_0_False_resize <= resize(c_6, 27);
  c_21_6_0_False_shift <= shift_left(c_21_6_0_False_resize, 0);
  c_21_10_2_False_resize <= resize(c_10, 27);
  c_21_10_2_False_shift <= shift_left(c_21_10_2_False_resize, 2);
  with config_select_4 select c_21_sel <= 
    "0" when "0",
    "1" when others;
  with c_21_sel select c_21 <=
    c_21_6_0_False_shift when "0",
    c_21_10_2_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 22 and associated fundamentals [[117], [709]]
  with config_select_5 select c_22_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_22_sub_sel,
      x_i => c_20,
      y_i => c_21,
      z_o => c_22_oshift
    );
  c_22 <= c_22_oshift(25 downto 0);
  -- node of type 'register' in stage 4 with id 23 and associated fundamentals [[191], [25]]
  c_23 <= c_8 & "";
  -- node of type 'mux' in stage 4 with id 24 and associated fundamentals [[0], [1]]
  c_24_4_0_False_resize <= c_4;
  c_24_4_0_False_shift <= shift_left(c_24_4_0_False_resize, 0);
  with config_select_4 select c_24_sel <= 
    "0" when "1",
    "1" when others;
  with c_24_sel select c_24 <=
    c_24_4_0_False_shift when "0",
    to_signed(0, 16) when others;
  -- node of type 'add' in stage 5 with id 25 and associated fundamentals [[191], [281]]
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 16,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 8,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_23,
      y_i => c_24,
      z_o => c_25_oshift
    );
  c_25 <= c_25_oshift(24 downto 0);
  -- node of type 'output' in stage 5 with id 26 and associated fundamentals [[117], [709]]
  c_26_resize <= c_22;
  c_26 <= shift_left(c_26_resize, 0);
  -- node of type 'output' in stage 5 with id 27 and associated fundamentals [[520], [95]]
  c_27_resize <= c_16;
  c_27 <= shift_left(c_27_resize, 0);
  -- node of type 'output' in stage 5 with id 28 and associated fundamentals [[166], [609]]
  c_28_resize <= c_19;
  c_28 <= shift_left(c_28_resize, 0);
  -- node of type 'output' in stage 5 with id 29 and associated fundamentals [[912], [955]]
  c_29_resize <= c_13;
  c_29 <= shift_left(c_29_resize, 0);
  -- node of type 'output' in stage 5 with id 30 and associated fundamentals [[191], [281]]
  c_30_resize <= c_25;
  c_30 <= shift_left(c_30_resize, 0);
end architecture;
