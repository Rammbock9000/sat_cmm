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
  signal config_select_9: std_logic_vector(0 downto 0);
  signal config_select_10: std_logic_vector(0 downto 0);
  signal config_select_11: std_logic_vector(0 downto 0);
  signal config_select_12: std_logic_vector(0 downto 0);
  signal config_select_13: std_logic_vector(0 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(21 downto 0);
  signal c_1_0_0_False_resize: signed(21 downto 0);
  signal c_1_0_0_False_shift: signed(21 downto 0);
  signal c_1_0_6_False_resize: signed(21 downto 0);
  signal c_1_0_6_False_shift: signed(21 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(16 downto 0);
  signal c_2_0_1_False_resize: signed(16 downto 0);
  signal c_2_0_1_False_shift: signed(16 downto 0);
  signal c_2_0_0_False_resize: signed(16 downto 0);
  signal c_2_0_0_False_shift: signed(16 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(18 downto 0);
  signal c_4_0_0_False_resize: signed(18 downto 0);
  signal c_4_0_0_False_shift: signed(18 downto 0);
  signal c_4_0_3_False_resize: signed(18 downto 0);
  signal c_4_0_3_False_shift: signed(18 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_i0_resize: signed(22 downto 0);
  signal c_5_i1_resize: signed(22 downto 0);
  signal c_5_i0_shift: signed(22 downto 0);
  signal c_5_i1_shift: signed(22 downto 0);
  signal c_5_arith: signed(22 downto 0);
  signal c_5_oshift: signed(22 downto 0);
  signal c_6: signed(19 downto 0);
  signal c_6_3_0_False_resize: signed(19 downto 0);
  signal c_6_3_0_False_shift: signed(19 downto 0);
  signal c_6_0_0_False_resize: signed(19 downto 0);
  signal c_6_0_0_False_shift: signed(19 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_i0_resize: signed(22 downto 0);
  signal c_7_i1_resize: signed(22 downto 0);
  signal c_7_i0_shift: signed(22 downto 0);
  signal c_7_i1_shift: signed(22 downto 0);
  signal c_7_arith: signed(22 downto 0);
  signal c_7_oshift: signed(22 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_7_2_False_resize: signed(22 downto 0);
  signal c_8_7_2_False_shift: signed(22 downto 0);
  signal c_8_3_0_False_resize: signed(22 downto 0);
  signal c_8_3_0_False_shift: signed(22 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(24 downto 0);
  signal c_9_i0_resize: signed(24 downto 0);
  signal c_9_i1_resize: signed(24 downto 0);
  signal c_9_i0_shift: signed(24 downto 0);
  signal c_9_i1_shift: signed(24 downto 0);
  signal c_9_arith: signed(24 downto 0);
  signal c_9_oshift: signed(24 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(25 downto 0);
  signal c_10_9_2_False_resize: signed(25 downto 0);
  signal c_10_9_2_False_shift: signed(25 downto 0);
  signal c_10_5_0_False_resize: signed(25 downto 0);
  signal c_10_5_0_False_shift: signed(25 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(25 downto 0);
  signal c_11_5_6_False_resize: signed(25 downto 0);
  signal c_11_5_6_False_shift: signed(25 downto 0);
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
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(24 downto 0);
  signal c_13_12_0_False_resize: signed(24 downto 0);
  signal c_13_12_0_False_shift: signed(24 downto 0);
  signal c_13_0_1_False_resize: signed(24 downto 0);
  signal c_13_0_1_False_shift: signed(24 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(25 downto 0);
  signal c_14_9_0_False_resize: signed(25 downto 0);
  signal c_14_9_0_False_shift: signed(25 downto 0);
  signal c_14_7_5_False_resize: signed(25 downto 0);
  signal c_14_7_5_False_shift: signed(25 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_i0_resize: signed(25 downto 0);
  signal c_15_i1_resize: signed(25 downto 0);
  signal c_15_i0_shift: signed(25 downto 0);
  signal c_15_i1_shift: signed(25 downto 0);
  signal c_15_arith: signed(25 downto 0);
  signal c_15_oshift: signed(25 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(25 downto 0);
  signal c_16_12_0_False_resize: signed(25 downto 0);
  signal c_16_12_0_False_shift: signed(25 downto 0);
  signal c_16_3_1_False_resize: signed(25 downto 0);
  signal c_16_3_1_False_shift: signed(25 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_i0_resize: signed(25 downto 0);
  signal c_17_i1_resize: signed(25 downto 0);
  signal c_17_i0_shift: signed(25 downto 0);
  signal c_17_i1_shift: signed(25 downto 0);
  signal c_17_arith: signed(25 downto 0);
  signal c_17_oshift: signed(25 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_18_9_0_False_resize: signed(24 downto 0);
  signal c_18_9_0_False_shift: signed(24 downto 0);
  signal c_18_5_1_False_resize: signed(24 downto 0);
  signal c_18_5_1_False_shift: signed(24 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_resize: signed(25 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_resize: signed(25 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_7_1_False_resize: signed(25 downto 0);
  signal c_21_7_1_False_shift: signed(25 downto 0);
  signal c_21_15_0_False_resize: signed(25 downto 0);
  signal c_21_15_0_False_shift: signed(25 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_resize: signed(25 downto 0);
  signal c_23: signed(24 downto 0);
  signal c_23_3_4_False_resize: signed(24 downto 0);
  signal c_23_3_4_False_shift: signed(24 downto 0);
  signal c_23_15_0_False_resize: signed(24 downto 0);
  signal c_23_15_0_False_shift: signed(24 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_resize: signed(25 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_resize: signed(25 downto 0);
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
  -- output node 2 with id 22
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_22);
    end if;
  end process;
  -- output node 3 with id 24
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_24);
    end if;
  end process;
  -- output node 4 with id 25
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_25);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[64], [1]]
  c_1_0_0_False_resize <= resize(c_0, 22);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_6_False_resize <= resize(c_0, 22);
  c_1_0_6_False_shift <= shift_left(c_1_0_6_False_resize, 6);
  with config_select_1 select c_1_sel <= 
    "0" when "1",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "0",
    c_1_0_6_False_shift when others;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [2]]
  c_2_0_1_False_resize <= resize(c_0, 17);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  c_2_0_0_False_resize <= resize(c_0, 17);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "0" when "1",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_0_1_False_shift when "0",
    c_2_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[60], [9]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 17,
      w_o => 22,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(21 downto 0);
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[8], [1]]
  c_4_0_0_False_resize <= resize(c_0, 19);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_3_False_resize <= resize(c_0, 19);
  c_4_0_3_False_shift <= shift_left(c_4_0_3_False_resize, 3);
  with config_select_1 select c_4_sel <= 
    "0" when "1",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_0_0_False_shift when "0",
    c_4_0_3_False_shift when others;
  -- node of type 'add' in stage 3 with id 5 and associated fundamentals [[92], [13]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 19,
      w_o => 23,
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
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(22 downto 0);
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[1], [9]]
  c_6_3_0_False_resize <= c_3(19 downto 0);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  c_6_0_0_False_resize <= resize(c_0, 20);
  c_6_0_0_False_shift <= shift_left(c_6_0_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "0" when "1",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_3_0_False_shift when "0",
    c_6_0_0_False_shift when others;
  -- node of type 'add' in stage 4 with id 7 and associated fundamentals [[93], [22]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 23,
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
      x_i => c_6,
      y_i => c_5,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(22 downto 0);
  -- node of type 'mux' in stage 5 with id 8 and associated fundamentals [[60], [88]]
  c_8_7_2_False_resize <= c_7;
  c_8_7_2_False_shift <= shift_left(c_8_7_2_False_resize, 2);
  c_8_3_0_False_resize <= resize(c_3, 23);
  c_8_3_0_False_shift <= shift_left(c_8_3_0_False_resize, 0);
  with config_select_5 select c_8_sel <= 
    "0" when "1",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_7_2_False_shift when "0",
    c_8_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 9 and associated fundamentals [[148], [365]]
  with config_select_6 select c_9_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 25,
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
      x_i => c_8,
      y_i => c_5,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(24 downto 0);
  -- node of type 'mux' in stage 7 with id 10 and associated fundamentals [[592], [13]]
  c_10_9_2_False_resize <= resize(c_9, 26);
  c_10_9_2_False_shift <= shift_left(c_10_9_2_False_resize, 2);
  c_10_5_0_False_resize <= resize(c_5, 26);
  c_10_5_0_False_shift <= shift_left(c_10_5_0_False_resize, 0);
  with config_select_7 select c_10_sel <= 
    "0" when "0",
    "1" when others;
  with c_10_sel select c_10 <=
    c_10_9_2_False_shift when "0",
    c_10_5_0_False_shift when others;
  -- node of type 'mux' in stage 5 with id 11 and associated fundamentals [[93], [832]]
  c_11_5_6_False_resize <= resize(c_5, 26);
  c_11_5_6_False_shift <= shift_left(c_11_5_6_False_resize, 6);
  c_11_7_0_False_resize <= resize(c_7, 26);
  c_11_7_0_False_shift <= shift_left(c_11_7_0_False_resize, 0);
  with config_select_5 select c_11_sel <= 
    "0" when "1",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_5_6_False_shift when "0",
    c_11_7_0_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 12 and associated fundamentals [[499], [845]]
  with config_select_8 select c_12_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 26,
      w_o => 26,
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
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(25 downto 0);
  -- node of type 'mux' in stage 9 with id 13 and associated fundamentals [[499], [2]]
  c_13_12_0_False_resize <= c_12(24 downto 0);
  c_13_12_0_False_shift <= shift_left(c_13_12_0_False_resize, 0);
  c_13_0_1_False_resize <= resize(c_0, 25);
  c_13_0_1_False_shift <= shift_left(c_13_0_1_False_resize, 1);
  with config_select_9 select c_13_sel <= 
    "0" when "0",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_12_0_False_shift when "0",
    c_13_0_1_False_shift when others;
  -- node of type 'mux' in stage 7 with id 14 and associated fundamentals [[148], [704]]
  c_14_9_0_False_resize <= resize(c_9, 26);
  c_14_9_0_False_shift <= shift_left(c_14_9_0_False_resize, 0);
  c_14_7_5_False_resize <= resize(c_7, 26);
  c_14_7_5_False_shift <= shift_left(c_14_7_5_False_resize, 5);
  with config_select_7 select c_14_sel <= 
    "0" when "0",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_9_0_False_shift when "0",
    c_14_7_5_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 15 and associated fundamentals [[351], [706]]
  with config_select_10 select c_15_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 26,
      w_o => 26,
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
      sub_i => c_15_sub_sel,
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(25 downto 0);
  -- node of type 'mux' in stage 9 with id 16 and associated fundamentals [[120], [845]]
  c_16_12_0_False_resize <= c_12;
  c_16_12_0_False_shift <= shift_left(c_16_12_0_False_resize, 0);
  c_16_3_1_False_resize <= resize(c_3, 26);
  c_16_3_1_False_shift <= shift_left(c_16_3_1_False_resize, 1);
  with config_select_9 select c_16_sel <= 
    "0" when "1",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_12_0_False_shift when "0",
    c_16_3_1_False_shift when others;
  -- node of type 'add' in stage 10 with id 17 and associated fundamentals [[213], [867]]
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 26,
      w_o => 26,
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
      x_i => c_7,
      y_i => c_16,
      z_o => c_17_oshift
    );
  c_17 <= c_17_oshift(25 downto 0);
  -- node of type 'mux' in stage 7 with id 18 and associated fundamentals [[184], [365]]
  c_18_9_0_False_resize <= c_9;
  c_18_9_0_False_shift <= shift_left(c_18_9_0_False_resize, 0);
  c_18_5_1_False_resize <= resize(c_5, 25);
  c_18_5_1_False_shift <= shift_left(c_18_5_1_False_resize, 1);
  with config_select_7 select c_18_sel <= 
    "0" when "1",
    "1" when others;
  with c_18_sel select c_18 <=
    c_18_9_0_False_shift when "0",
    c_18_5_1_False_shift when others;
  -- node of type 'output' in stage 7 with id 19 and associated fundamentals [[368], [730]]
  c_19_resize <= resize(c_18, 26);
  c_19 <= shift_left(c_19_resize, 1);
  -- node of type 'output' in stage 8 with id 20 and associated fundamentals [[499], [845]]
  c_20_resize <= c_12;
  c_20 <= shift_left(c_20_resize, 0);
  -- node of type 'mux' in stage 11 with id 21 and associated fundamentals [[186], [706]]
  c_21_7_1_False_resize <= resize(c_7, 26);
  c_21_7_1_False_shift <= shift_left(c_21_7_1_False_resize, 1);
  c_21_15_0_False_resize <= c_15;
  c_21_15_0_False_shift <= shift_left(c_21_15_0_False_resize, 0);
  with config_select_11 select c_21_sel <= 
    "0" when "0",
    "1" when others;
  with c_21_sel select c_21 <=
    c_21_7_1_False_shift when "0",
    c_21_15_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 22 and associated fundamentals [[186], [706]]
  c_22_resize <= c_21;
  c_22 <= shift_left(c_22_resize, 0);
  -- node of type 'mux' in stage 11 with id 23 and associated fundamentals [[351], [144]]
  c_23_3_4_False_resize <= resize(c_3, 25);
  c_23_3_4_False_shift <= shift_left(c_23_3_4_False_resize, 4);
  c_23_15_0_False_resize <= c_15(24 downto 0);
  c_23_15_0_False_shift <= shift_left(c_23_15_0_False_resize, 0);
  with config_select_11 select c_23_sel <= 
    "0" when "1",
    "1" when others;
  with c_23_sel select c_23 <=
    c_23_3_4_False_shift when "0",
    c_23_15_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 24 and associated fundamentals [[702], [288]]
  c_24_resize <= resize(c_23, 26);
  c_24 <= shift_left(c_24_resize, 1);
  -- node of type 'output' in stage 10 with id 25 and associated fundamentals [[213], [867]]
  c_25_resize <= c_17;
  c_25 <= shift_left(c_25_resize, 0);
end architecture;
