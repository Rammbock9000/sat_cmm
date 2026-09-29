library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(22 downto 0);
    y_4: out std_logic_vector(23 downto 0);
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
  signal c_2: signed(15 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(19 downto 0);
  signal c_3_i1_resize: signed(19 downto 0);
  signal c_3_i0_shift: signed(19 downto 0);
  signal c_3_i1_shift: signed(19 downto 0);
  signal c_3_arith: signed(19 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_4: signed(18 downto 0);
  signal c_4_0_3_False_resize: signed(18 downto 0);
  signal c_4_0_3_False_shift: signed(18 downto 0);
  signal c_4_0_0_False_resize: signed(18 downto 0);
  signal c_4_0_0_False_shift: signed(18 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(24 downto 0);
  signal c_5_i0_resize: signed(24 downto 0);
  signal c_5_i1_resize: signed(24 downto 0);
  signal c_5_i0_shift: signed(24 downto 0);
  signal c_5_i1_shift: signed(24 downto 0);
  signal c_5_arith: signed(24 downto 0);
  signal c_5_oshift: signed(24 downto 0);
  signal c_6: signed(18 downto 0);
  signal c_6_0_0_False_resize: signed(18 downto 0);
  signal c_6_0_0_False_shift: signed(18 downto 0);
  signal c_6_0_3_False_resize: signed(18 downto 0);
  signal c_6_0_3_False_shift: signed(18 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(24 downto 0);
  signal c_7_i0_resize: signed(24 downto 0);
  signal c_7_i1_resize: signed(24 downto 0);
  signal c_7_i0_shift: signed(24 downto 0);
  signal c_7_i1_shift: signed(24 downto 0);
  signal c_7_arith: signed(24 downto 0);
  signal c_7_oshift: signed(24 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_8_7_0_False_resize: signed(23 downto 0);
  signal c_8_7_0_False_shift: signed(23 downto 0);
  signal c_8_2_8_False_resize: signed(23 downto 0);
  signal c_8_2_8_False_shift: signed(23 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_9_7_0_False_resize: signed(21 downto 0);
  signal c_9_7_0_False_shift: signed(21 downto 0);
  signal c_9_3_1_False_resize: signed(21 downto 0);
  signal c_9_3_1_False_shift: signed(21 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_i0_resize: signed(23 downto 0);
  signal c_10_i1_resize: signed(23 downto 0);
  signal c_10_i0_shift: signed(23 downto 0);
  signal c_10_i1_shift: signed(23 downto 0);
  signal c_10_arith: signed(23 downto 0);
  signal c_10_oshift: signed(23 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(22 downto 0);
  signal c_11_3_3_False_resize: signed(22 downto 0);
  signal c_11_3_3_False_shift: signed(22 downto 0);
  signal c_11_3_0_False_resize: signed(22 downto 0);
  signal c_11_3_0_False_shift: signed(22 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(24 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_13_sub_sel_left: std_logic;
  signal c_13_sub_sel_right: std_logic;
  signal c_14: signed(24 downto 0);
  signal c_15: signed(20 downto 0);
  signal c_15_3_0_False_resize: signed(20 downto 0);
  signal c_15_3_0_False_shift: signed(20 downto 0);
  signal c_15_3_1_False_resize: signed(20 downto 0);
  signal c_15_3_1_False_shift: signed(20 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(22 downto 0);
  signal c_16_i0_resize: signed(22 downto 0);
  signal c_16_i1_resize: signed(22 downto 0);
  signal c_16_i0_shift: signed(22 downto 0);
  signal c_16_i1_shift: signed(22 downto 0);
  signal c_16_arith: signed(22 downto 0);
  signal c_16_oshift: signed(22 downto 0);
  signal c_16_sub_sel_left: std_logic;
  signal c_16_sub_sel_right: std_logic;
  signal c_17: signed(24 downto 0);
  signal c_17_3_2_False_resize: signed(24 downto 0);
  signal c_17_3_2_False_shift: signed(24 downto 0);
  signal c_17_7_0_False_resize: signed(24 downto 0);
  signal c_17_7_0_False_shift: signed(24 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(20 downto 0);
  signal c_18_3_1_False_resize: signed(20 downto 0);
  signal c_18_3_1_False_shift: signed(20 downto 0);
  signal c_18_3_0_False_resize: signed(20 downto 0);
  signal c_18_3_0_False_shift: signed(20 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_i0_resize: signed(23 downto 0);
  signal c_19_i1_resize: signed(23 downto 0);
  signal c_19_i0_shift: signed(23 downto 0);
  signal c_19_i1_shift: signed(23 downto 0);
  signal c_19_arith: signed(23 downto 0);
  signal c_19_oshift: signed(23 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(21 downto 0);
  signal c_20_2_6_False_resize: signed(21 downto 0);
  signal c_20_2_6_False_shift: signed(21 downto 0);
  signal c_20_3_0_False_resize: signed(21 downto 0);
  signal c_20_3_0_False_shift: signed(21 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(21 downto 0);
  signal c_21_5_0_False_resize: signed(21 downto 0);
  signal c_21_5_0_False_shift: signed(21 downto 0);
  signal c_21_3_0_False_resize: signed(21 downto 0);
  signal c_21_3_0_False_shift: signed(21 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_i0_resize: signed(23 downto 0);
  signal c_22_i1_resize: signed(23 downto 0);
  signal c_22_i0_shift: signed(23 downto 0);
  signal c_22_i1_shift: signed(23 downto 0);
  signal c_22_arith: signed(23 downto 0);
  signal c_22_oshift: signed(23 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(23 downto 0);
  signal c_23_resize: signed(23 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_resize: signed(23 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_resize: signed(23 downto 0);
  signal c_26: signed(22 downto 0);
  signal c_26_resize: signed(22 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_resize: signed(23 downto 0);
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
  -- output node 0 with id 23
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_23);
    end if;
  end process;
  -- output node 1 with id 24
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_24);
    end if;
  end process;
  -- output node 2 with id 25
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_25);
    end if;
  end process;
  -- output node 3 with id 26
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_26);
    end if;
  end process;
  -- output node 4 with id 27
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_27);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1]]
  c_1 <= c_0 & "";
  -- node of type 'register' in stage 2 with id 2 and associated fundamentals [[1], [1]]
  c_2 <= c_1 & "";
  -- node of type 'add' in stage 2 with id 3 and associated fundamentals [[9], [9]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
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
      x_i => c_1,
      y_i => c_1,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(19 downto 0);
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[1], [8]]
  c_4_0_3_False_resize <= resize(c_0, 19);
  c_4_0_3_False_shift <= shift_left(c_4_0_3_False_resize, 3);
  c_4_0_0_False_resize <= resize(c_0, 19);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  with config_select_1 select c_4_sel <= 
    "0" when "1",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_0_3_False_shift when "0",
    c_4_0_0_False_shift when others;
  -- node of type 'add' in stage 2 with id 5 and associated fundamentals [[33], [257]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 19,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_1,
      y_i => c_4,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(24 downto 0);
  -- node of type 'mux' in stage 1 with id 6 and associated fundamentals [[8], [1]]
  c_6_0_0_False_resize <= resize(c_0, 19);
  c_6_0_0_False_shift <= shift_left(c_6_0_0_False_resize, 0);
  c_6_0_3_False_resize <= resize(c_0, 19);
  c_6_0_3_False_shift <= shift_left(c_6_0_3_False_resize, 3);
  with config_select_1 select c_6_sel <= 
    "0" when "1",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_0_0_False_shift when "0",
    c_6_0_3_False_shift when others;
  -- node of type 'add' in stage 2 with id 7 and associated fundamentals [[257], [33]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 19,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_1,
      y_i => c_6,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(24 downto 0);
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[256], [33]]
  c_8_7_0_False_resize <= c_7(23 downto 0);
  c_8_7_0_False_shift <= shift_left(c_8_7_0_False_resize, 0);
  c_8_2_8_False_resize <= resize(c_2, 24);
  c_8_2_8_False_shift <= shift_left(c_8_2_8_False_resize, 8);
  with config_select_3 select c_8_sel <= 
    "0" when "1",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_7_0_False_shift when "0",
    c_8_2_8_False_shift when others;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[18], [33]]
  c_9_7_0_False_resize <= c_7(21 downto 0);
  c_9_7_0_False_shift <= shift_left(c_9_7_0_False_resize, 0);
  c_9_3_1_False_resize <= resize(c_3, 22);
  c_9_3_1_False_shift <= shift_left(c_9_3_1_False_resize, 1);
  with config_select_3 select c_9_sel <= 
    "0" when "1",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_7_0_False_shift when "0",
    c_9_3_1_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 10 and associated fundamentals [[184], [165]]
  with config_select_4 select c_10_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      x_i => c_8,
      y_i => c_9,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[72], [9]]
  c_11_3_3_False_resize <= resize(c_3, 23);
  c_11_3_3_False_shift <= shift_left(c_11_3_3_False_resize, 3);
  c_11_3_0_False_resize <= resize(c_3, 23);
  c_11_3_0_False_shift <= shift_left(c_11_3_0_False_resize, 0);
  with config_select_3 select c_11_sel <= 
    "0" when "0",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_3_3_False_shift when "0",
    c_11_3_0_False_shift when others;
  -- node of type 'register' in stage 3 with id 12 and associated fundamentals [[33], [257]]
  c_12 <= c_5 & "";
  -- node of type 'add_sub' in stage 4 with id 13 and associated fundamentals [[111], [239]]
  with config_select_4 select c_13_sub_sel_left <= 
    '0' when "0",
    '1' when others;
  with config_select_4 select c_13_sub_sel_right <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 25,
      w_o => 24,
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
      sub_a_i => c_13_sub_sel_left,
      sub_b_i => c_13_sub_sel_right,
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(23 downto 0);
  -- node of type 'register' in stage 3 with id 14 and associated fundamentals [[257], [33]]
  c_14 <= c_7 & "";
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[18], [9]]
  c_15_3_0_False_resize <= resize(c_3, 21);
  c_15_3_0_False_shift <= shift_left(c_15_3_0_False_resize, 0);
  c_15_3_1_False_resize <= resize(c_3, 21);
  c_15_3_1_False_shift <= shift_left(c_15_3_1_False_resize, 1);
  with config_select_3 select c_15_sel <= 
    "0" when "1",
    "1" when others;
  with c_15_sel select c_15 <=
    c_15_3_0_False_shift when "0",
    c_15_3_1_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 16 and associated fundamentals [[113], [39]]
  with config_select_4 select c_16_sub_sel_left <= 
    '0' when "0",
    '1' when others;
  with config_select_4 select c_16_sub_sel_right <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 21,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => True,
      sub => False
    )
    port map (
      sub_a_i => c_16_sub_sel_left,
      sub_b_i => c_16_sub_sel_right,
      x_i => c_14,
      y_i => c_15,
      z_o => c_16_oshift
    );
  c_16 <= c_16_oshift(22 downto 0);
  -- node of type 'mux' in stage 3 with id 17 and associated fundamentals [[257], [36]]
  c_17_3_2_False_resize <= resize(c_3, 25);
  c_17_3_2_False_shift <= shift_left(c_17_3_2_False_resize, 2);
  c_17_7_0_False_resize <= c_7;
  c_17_7_0_False_shift <= shift_left(c_17_7_0_False_resize, 0);
  with config_select_3 select c_17_sel <= 
    "0" when "1",
    "1" when others;
  with c_17_sel select c_17 <=
    c_17_3_2_False_shift when "0",
    c_17_7_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[9], [18]]
  c_18_3_1_False_resize <= resize(c_3, 21);
  c_18_3_1_False_shift <= shift_left(c_18_3_1_False_resize, 1);
  c_18_3_0_False_resize <= resize(c_3, 21);
  c_18_3_0_False_shift <= shift_left(c_18_3_0_False_resize, 0);
  with config_select_3 select c_18_sel <= 
    "0" when "1",
    "1" when others;
  with c_18_sel select c_18 <=
    c_18_3_1_False_shift when "0",
    c_18_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 19 and associated fundamentals [[185], [180]]
  with config_select_4 select c_19_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 21,
      w_o => 24,
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
      sub_i => c_19_sub_sel,
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  c_19 <= c_19_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 20 and associated fundamentals [[64], [9]]
  c_20_2_6_False_resize <= resize(c_2, 22);
  c_20_2_6_False_shift <= shift_left(c_20_2_6_False_resize, 6);
  c_20_3_0_False_resize <= resize(c_3, 22);
  c_20_3_0_False_shift <= shift_left(c_20_3_0_False_resize, 0);
  with config_select_3 select c_20_sel <= 
    "0" when "0",
    "1" when others;
  with c_20_sel select c_20 <=
    c_20_2_6_False_shift when "0",
    c_20_3_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 21 and associated fundamentals [[33], [9]]
  c_21_5_0_False_resize <= c_5(21 downto 0);
  c_21_5_0_False_shift <= shift_left(c_21_5_0_False_resize, 0);
  c_21_3_0_False_resize <= resize(c_3, 22);
  c_21_3_0_False_shift <= shift_left(c_21_3_0_False_resize, 0);
  with config_select_3 select c_21_sel <= 
    "0" when "0",
    "1" when others;
  with c_21_sel select c_21 <=
    c_21_5_0_False_shift when "0",
    c_21_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 22 and associated fundamentals [[223], [45]]
  with config_select_4 select c_22_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
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
      sub_i => c_22_sub_sel,
      x_i => c_20,
      y_i => c_21,
      z_o => c_22_oshift
    );
  c_22 <= c_22_oshift(23 downto 0);
  -- node of type 'output' in stage 4 with id 23 and associated fundamentals [[111], [239]]
  c_23_resize <= c_13;
  c_23 <= shift_left(c_23_resize, 0);
  -- node of type 'output' in stage 4 with id 24 and associated fundamentals [[184], [165]]
  c_24_resize <= c_10;
  c_24 <= shift_left(c_24_resize, 0);
  -- node of type 'output' in stage 4 with id 25 and associated fundamentals [[185], [180]]
  c_25_resize <= c_19;
  c_25 <= shift_left(c_25_resize, 0);
  -- node of type 'output' in stage 4 with id 26 and associated fundamentals [[113], [39]]
  c_26_resize <= c_16;
  c_26 <= shift_left(c_26_resize, 0);
  -- node of type 'output' in stage 4 with id 27 and associated fundamentals [[223], [45]]
  c_27_resize <= c_22;
  c_27 <= shift_left(c_27_resize, 0);
end architecture;
