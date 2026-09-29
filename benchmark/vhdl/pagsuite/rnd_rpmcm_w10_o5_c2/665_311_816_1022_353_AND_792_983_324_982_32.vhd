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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(18 downto 0);
  signal c_2_i0_resize: signed(18 downto 0);
  signal c_2_i1_resize: signed(18 downto 0);
  signal c_2_i0_shift: signed(18 downto 0);
  signal c_2_i1_shift: signed(18 downto 0);
  signal c_2_arith: signed(18 downto 0);
  signal c_2_oshift: signed(18 downto 0);
  signal c_3: signed(15 downto 0);
  signal c_4: signed(18 downto 0);
  signal c_4_2_0_False_resize: signed(18 downto 0);
  signal c_4_2_0_False_shift: signed(18 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(19 downto 0);
  signal c_5_i0_resize: signed(19 downto 0);
  signal c_5_i1_resize: signed(19 downto 0);
  signal c_5_i0_shift: signed(19 downto 0);
  signal c_5_i1_shift: signed(19 downto 0);
  signal c_5_arith: signed(19 downto 0);
  signal c_5_oshift: signed(19 downto 0);
  signal c_6: signed(18 downto 0);
  signal c_6_2_0_False_resize: signed(18 downto 0);
  signal c_6_2_0_False_shift: signed(18 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(19 downto 0);
  signal c_7_i0_resize: signed(19 downto 0);
  signal c_7_i1_resize: signed(19 downto 0);
  signal c_7_i0_shift: signed(19 downto 0);
  signal c_7_i1_shift: signed(19 downto 0);
  signal c_7_arith: signed(19 downto 0);
  signal c_7_oshift: signed(19 downto 0);
  signal c_8: signed(18 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_9_i0_resize: signed(21 downto 0);
  signal c_9_i1_resize: signed(21 downto 0);
  signal c_9_i0_shift: signed(21 downto 0);
  signal c_9_i1_shift: signed(21 downto 0);
  signal c_9_arith: signed(21 downto 0);
  signal c_9_oshift: signed(21 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_i0_resize: signed(23 downto 0);
  signal c_10_i1_resize: signed(23 downto 0);
  signal c_10_i0_shift: signed(23 downto 0);
  signal c_10_i1_shift: signed(23 downto 0);
  signal c_10_arith: signed(23 downto 0);
  signal c_10_oshift: signed(23 downto 0);
  signal c_11: signed(24 downto 0);
  signal c_11_9_0_False_resize: signed(24 downto 0);
  signal c_11_9_0_False_shift: signed(24 downto 0);
  signal c_11_10_1_False_resize: signed(24 downto 0);
  signal c_11_10_1_False_shift: signed(24 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(24 downto 0);
  signal c_12_7_0_False_resize: signed(24 downto 0);
  signal c_12_7_0_False_shift: signed(24 downto 0);
  signal c_12_9_3_False_resize: signed(24 downto 0);
  signal c_12_9_3_False_shift: signed(24 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(25 downto 0);
  signal c_13_i0_resize: signed(25 downto 0);
  signal c_13_i1_resize: signed(25 downto 0);
  signal c_13_i0_shift: signed(25 downto 0);
  signal c_13_i1_shift: signed(25 downto 0);
  signal c_13_arith: signed(25 downto 0);
  signal c_13_oshift: signed(25 downto 0);
  signal c_14: signed(20 downto 0);
  signal c_14_7_5_False_resize: signed(20 downto 0);
  signal c_14_7_5_False_shift: signed(20 downto 0);
  signal c_14_7_0_False_resize: signed(20 downto 0);
  signal c_14_7_0_False_shift: signed(20 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(21 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(25 downto 0);
  signal c_16_i1_resize: signed(25 downto 0);
  signal c_16_i0_shift: signed(25 downto 0);
  signal c_16_i1_shift: signed(25 downto 0);
  signal c_16_arith: signed(25 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_17: signed(19 downto 0);
  signal c_18: signed(15 downto 0);
  signal c_18_5_0_False_resize: signed(15 downto 0);
  signal c_18_5_0_False_shift: signed(15 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(24 downto 0);
  signal c_19_i0_resize: signed(24 downto 0);
  signal c_19_i1_resize: signed(24 downto 0);
  signal c_19_i0_shift: signed(24 downto 0);
  signal c_19_i1_shift: signed(24 downto 0);
  signal c_19_arith: signed(24 downto 0);
  signal c_19_oshift: signed(24 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_10_0_False_resize: signed(23 downto 0);
  signal c_20_10_0_False_shift: signed(23 downto 0);
  signal c_20_5_7_False_resize: signed(23 downto 0);
  signal c_20_5_7_False_shift: signed(23 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(21 downto 0);
  signal c_21_9_0_False_resize: signed(21 downto 0);
  signal c_21_9_0_False_shift: signed(21 downto 0);
  signal c_21_5_0_False_resize: signed(21 downto 0);
  signal c_21_5_0_False_shift: signed(21 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_i0_resize: signed(25 downto 0);
  signal c_22_i1_resize: signed(25 downto 0);
  signal c_22_i0_shift: signed(25 downto 0);
  signal c_22_i1_shift: signed(25 downto 0);
  signal c_22_arith: signed(25 downto 0);
  signal c_22_oshift: signed(25 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_5_3_False_resize: signed(23 downto 0);
  signal c_23_5_3_False_shift: signed(23 downto 0);
  signal c_23_10_0_False_resize: signed(23 downto 0);
  signal c_23_10_0_False_shift: signed(23 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_5_4_False_resize: signed(23 downto 0);
  signal c_24_5_4_False_shift: signed(23 downto 0);
  signal c_24_10_0_False_resize: signed(23 downto 0);
  signal c_24_10_0_False_shift: signed(23 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_i0_resize: signed(25 downto 0);
  signal c_25_i1_resize: signed(25 downto 0);
  signal c_25_i0_shift: signed(25 downto 0);
  signal c_25_i1_shift: signed(25 downto 0);
  signal c_25_arith: signed(25 downto 0);
  signal c_25_oshift: signed(25 downto 0);
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
  -- node of type 'register' in stage 2 with id 3 and associated fundamentals [[1], [1]]
  c_3 <= c_1 & "";
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[0], [5]]
  c_4_2_0_False_resize <= c_2;
  c_4_2_0_False_shift <= shift_left(c_4_2_0_False_resize, 0);
  with config_select_2 select c_4_sel <= 
    "0" when "1",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_2_0_False_shift when "0",
    to_signed(0, 19) when others;
  -- node of type 'add' in stage 3 with id 5 and associated fundamentals [[1], [11]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 19,
      w_o => 20,
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
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(19 downto 0);
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[5], [0]]
  c_6_2_0_False_resize <= c_2;
  c_6_2_0_False_shift <= shift_left(c_6_2_0_False_resize, 0);
  with config_select_2 select c_6_sel <= 
    "0" when "0",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_2_0_False_shift when "0",
    to_signed(0, 19) when others;
  -- node of type 'add' in stage 3 with id 7 and associated fundamentals [[11], [1]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 19,
      w_o => 20,
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
      x_i => c_3,
      y_i => c_6,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(19 downto 0);
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[5], [5]]
  c_8 <= c_2 & "";
  -- node of type 'add' in stage 3 with id 9 and associated fundamentals [[41], [41]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 19,
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
      x_i => c_3,
      y_i => c_8,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(21 downto 0);
  -- node of type 'add' in stage 3 with id 10 and associated fundamentals [[133], [133]]
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 19,
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
      x_i => c_3,
      y_i => c_8,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(23 downto 0);
  -- node of type 'mux' in stage 4 with id 11 and associated fundamentals [[266], [41]]
  c_11_9_0_False_resize <= resize(c_9, 25);
  c_11_9_0_False_shift <= shift_left(c_11_9_0_False_resize, 0);
  c_11_10_1_False_resize <= resize(c_10, 25);
  c_11_10_1_False_shift <= shift_left(c_11_10_1_False_resize, 1);
  with config_select_4 select c_11_sel <= 
    "0" when "1",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_9_0_False_shift when "0",
    c_11_10_1_False_shift when others;
  -- node of type 'mux' in stage 4 with id 12 and associated fundamentals [[328], [1]]
  c_12_7_0_False_resize <= resize(c_7, 25);
  c_12_7_0_False_shift <= shift_left(c_12_7_0_False_resize, 0);
  c_12_9_3_False_resize <= resize(c_9, 25);
  c_12_9_3_False_shift <= shift_left(c_12_9_3_False_resize, 3);
  with config_select_4 select c_12_sel <= 
    "0" when "1",
    "1" when others;
  with c_12_sel select c_12 <=
    c_12_7_0_False_shift when "0",
    c_12_9_3_False_shift when others;
  -- node of type 'sub' in stage 5 with id 13 and associated fundamentals [[816], [324]]
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
      w_o => 26,
      s_x_i => 3,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 14 and associated fundamentals [[11], [32]]
  c_14_7_5_False_resize <= resize(c_7, 21);
  c_14_7_5_False_shift <= shift_left(c_14_7_5_False_resize, 5);
  c_14_7_0_False_resize <= resize(c_7, 21);
  c_14_7_0_False_shift <= shift_left(c_14_7_0_False_resize, 0);
  with config_select_4 select c_14_sel <= 
    "0" when "1",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_7_5_False_shift when "0",
    c_14_7_0_False_shift when others;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[41], [41]]
  c_15 <= c_9 & "";
  -- node of type 'sub' in stage 5 with id 16 and associated fundamentals [[311], [983]]
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 22,
      w_o => 26,
      s_x_i => 5,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_14,
      y_i => c_15,
      z_o => c_16_oshift
    );
  c_16 <= c_16_oshift(25 downto 0);
  -- node of type 'register' in stage 4 with id 17 and associated fundamentals [[11], [1]]
  c_17 <= c_7 & "";
  -- node of type 'mux' in stage 4 with id 18 and associated fundamentals [[1], [0]]
  c_18_5_0_False_resize <= c_5(15 downto 0);
  c_18_5_0_False_shift <= shift_left(c_18_5_0_False_resize, 0);
  with config_select_4 select c_18_sel <= 
    "0" when "0",
    "1" when others;
  with c_18_sel select c_18 <=
    c_18_5_0_False_shift when "0",
    to_signed(0, 16) when others;
  -- node of type 'add' in stage 5 with id 19 and associated fundamentals [[353], [32]]
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 16,
      w_o => 25,
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
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  c_19 <= c_19_oshift(24 downto 0);
  -- node of type 'mux' in stage 4 with id 20 and associated fundamentals [[128], [133]]
  c_20_10_0_False_resize <= c_10;
  c_20_10_0_False_shift <= shift_left(c_20_10_0_False_resize, 0);
  c_20_5_7_False_resize <= resize(c_5, 24);
  c_20_5_7_False_shift <= shift_left(c_20_5_7_False_resize, 7);
  with config_select_4 select c_20_sel <= 
    "0" when "1",
    "1" when others;
  with c_20_sel select c_20 <=
    c_20_10_0_False_shift when "0",
    c_20_5_7_False_shift when others;
  -- node of type 'mux' in stage 4 with id 21 and associated fundamentals [[1], [41]]
  c_21_9_0_False_resize <= c_9;
  c_21_9_0_False_shift <= shift_left(c_21_9_0_False_resize, 0);
  c_21_5_0_False_resize <= resize(c_5, 22);
  c_21_5_0_False_shift <= shift_left(c_21_5_0_False_resize, 0);
  with config_select_4 select c_21_sel <= 
    "0" when "1",
    "1" when others;
  with c_21_sel select c_21 <=
    c_21_9_0_False_shift when "0",
    c_21_5_0_False_shift when others;
  -- node of type 'sub' in stage 5 with id 22 and associated fundamentals [[1022], [982]]
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
      w_o => 26,
      s_x_i => 3,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_20,
      y_i => c_21,
      z_o => c_22_oshift
    );
  c_22 <= c_22_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 23 and associated fundamentals [[133], [88]]
  c_23_5_3_False_resize <= resize(c_5, 24);
  c_23_5_3_False_shift <= shift_left(c_23_5_3_False_resize, 3);
  c_23_10_0_False_resize <= c_10;
  c_23_10_0_False_shift <= shift_left(c_23_10_0_False_resize, 0);
  with config_select_4 select c_23_sel <= 
    "0" when "1",
    "1" when others;
  with c_23_sel select c_23 <=
    c_23_5_3_False_shift when "0",
    c_23_10_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 24 and associated fundamentals [[133], [176]]
  c_24_5_4_False_resize <= resize(c_5, 24);
  c_24_5_4_False_shift <= shift_left(c_24_5_4_False_resize, 4);
  c_24_10_0_False_resize <= c_10;
  c_24_10_0_False_shift <= shift_left(c_24_10_0_False_resize, 0);
  with config_select_4 select c_24_sel <= 
    "0" when "1",
    "1" when others;
  with c_24_sel select c_24 <=
    c_24_5_4_False_shift when "0",
    c_24_10_0_False_shift when others;
  -- node of type 'add' in stage 5 with id 25 and associated fundamentals [[665], [792]]
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      x_i => c_23,
      y_i => c_24,
      z_o => c_25_oshift
    );
  c_25 <= c_25_oshift(25 downto 0);
  -- node of type 'output' in stage 5 with id 26 and associated fundamentals [[665], [792]]
  c_26_resize <= c_25;
  c_26 <= shift_left(c_26_resize, 0);
  -- node of type 'output' in stage 5 with id 27 and associated fundamentals [[311], [983]]
  c_27_resize <= c_16;
  c_27 <= shift_left(c_27_resize, 0);
  -- node of type 'output' in stage 5 with id 28 and associated fundamentals [[816], [324]]
  c_28_resize <= c_13;
  c_28 <= shift_left(c_28_resize, 0);
  -- node of type 'output' in stage 5 with id 29 and associated fundamentals [[1022], [982]]
  c_29_resize <= c_22;
  c_29 <= shift_left(c_29_resize, 0);
  -- node of type 'output' in stage 5 with id 30 and associated fundamentals [[353], [32]]
  c_30_resize <= c_19;
  c_30 <= shift_left(c_30_resize, 0);
end architecture;
