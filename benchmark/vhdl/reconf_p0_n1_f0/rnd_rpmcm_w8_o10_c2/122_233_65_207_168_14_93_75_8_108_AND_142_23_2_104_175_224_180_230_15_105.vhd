library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(22 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(23 downto 0);
    y_5: out std_logic_vector(23 downto 0);
    y_6: out std_logic_vector(23 downto 0);
    y_7: out std_logic_vector(23 downto 0);
    y_8: out std_logic_vector(19 downto 0);
    y_9: out std_logic_vector(22 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_i0_resize: signed(18 downto 0);
  signal c_1_i1_resize: signed(18 downto 0);
  signal c_1_i0_shift: signed(18 downto 0);
  signal c_1_i1_shift: signed(18 downto 0);
  signal c_1_arith: signed(18 downto 0);
  signal c_1_oshift: signed(18 downto 0);
  signal c_2: signed(18 downto 0);
  signal c_2_0_2_False_resize: signed(18 downto 0);
  signal c_2_0_2_False_shift: signed(18 downto 0);
  signal c_2_1_0_False_resize: signed(18 downto 0);
  signal c_2_1_0_False_shift: signed(18 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(22 downto 0);
  signal c_3_i0_resize: signed(22 downto 0);
  signal c_3_i1_resize: signed(22 downto 0);
  signal c_3_i0_shift: signed(22 downto 0);
  signal c_3_i1_shift: signed(22 downto 0);
  signal c_3_arith: signed(22 downto 0);
  signal c_3_oshift: signed(22 downto 0);
  signal c_4: signed(20 downto 0);
  signal c_4_1_0_False_resize: signed(20 downto 0);
  signal c_4_1_0_False_shift: signed(20 downto 0);
  signal c_4_0_5_False_resize: signed(20 downto 0);
  signal c_4_0_5_False_shift: signed(20 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_i0_resize: signed(22 downto 0);
  signal c_5_i1_resize: signed(22 downto 0);
  signal c_5_i0_shift: signed(22 downto 0);
  signal c_5_i1_shift: signed(22 downto 0);
  signal c_5_arith: signed(22 downto 0);
  signal c_5_oshift: signed(22 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_i0_resize: signed(22 downto 0);
  signal c_6_i1_resize: signed(22 downto 0);
  signal c_6_i0_shift: signed(22 downto 0);
  signal c_6_i1_shift: signed(22 downto 0);
  signal c_6_arith: signed(22 downto 0);
  signal c_6_oshift: signed(22 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(21 downto 0);
  signal c_7_i0_resize: signed(21 downto 0);
  signal c_7_i1_resize: signed(21 downto 0);
  signal c_7_i0_shift: signed(21 downto 0);
  signal c_7_i1_shift: signed(21 downto 0);
  signal c_7_arith: signed(21 downto 0);
  signal c_7_oshift: signed(21 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(19 downto 0);
  signal c_8_1_0_False_resize: signed(19 downto 0);
  signal c_8_1_0_False_shift: signed(19 downto 0);
  signal c_8_6_0_False_resize: signed(19 downto 0);
  signal c_8_6_0_False_shift: signed(19 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_i0_resize: signed(22 downto 0);
  signal c_9_i1_resize: signed(22 downto 0);
  signal c_9_i0_shift: signed(22 downto 0);
  signal c_9_i1_shift: signed(22 downto 0);
  signal c_9_arith: signed(22 downto 0);
  signal c_9_oshift: signed(22 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_9_0_False_resize: signed(22 downto 0);
  signal c_10_9_0_False_shift: signed(22 downto 0);
  signal c_10_0_5_False_resize: signed(22 downto 0);
  signal c_10_0_5_False_shift: signed(22 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_i0_resize: signed(23 downto 0);
  signal c_11_i1_resize: signed(23 downto 0);
  signal c_11_i0_shift: signed(23 downto 0);
  signal c_11_i1_shift: signed(23 downto 0);
  signal c_11_arith: signed(23 downto 0);
  signal c_11_oshift: signed(23 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_6_0_False_resize: signed(22 downto 0);
  signal c_12_6_0_False_shift: signed(22 downto 0);
  signal c_12_6_3_False_resize: signed(22 downto 0);
  signal c_12_6_3_False_shift: signed(22 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_13_0_False_resize: signed(23 downto 0);
  signal c_14_13_0_False_shift: signed(23 downto 0);
  signal c_14_0_3_False_resize: signed(23 downto 0);
  signal c_14_0_3_False_shift: signed(23 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_i0_resize: signed(23 downto 0);
  signal c_15_i1_resize: signed(23 downto 0);
  signal c_15_i0_shift: signed(23 downto 0);
  signal c_15_i1_shift: signed(23 downto 0);
  signal c_15_arith: signed(23 downto 0);
  signal c_15_oshift: signed(23 downto 0);
  signal c_16: signed(22 downto 0);
  signal c_16_9_0_False_resize: signed(22 downto 0);
  signal c_16_9_0_False_shift: signed(22 downto 0);
  signal c_16_7_0_False_resize: signed(22 downto 0);
  signal c_16_7_0_False_shift: signed(22 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_resize: signed(23 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_resize: signed(23 downto 0);
  signal c_19: signed(22 downto 0);
  signal c_19_0_1_False_resize: signed(22 downto 0);
  signal c_19_0_1_False_shift: signed(22 downto 0);
  signal c_19_5_0_False_resize: signed(22 downto 0);
  signal c_19_5_0_False_shift: signed(22 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_20_resize: signed(22 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_6_3_False_resize: signed(23 downto 0);
  signal c_21_6_3_False_shift: signed(23 downto 0);
  signal c_21_11_0_False_resize: signed(23 downto 0);
  signal c_21_11_0_False_shift: signed(23 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_resize: signed(23 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_resize: signed(23 downto 0);
  signal c_24: signed(22 downto 0);
  signal c_24_1_4_False_resize: signed(22 downto 0);
  signal c_24_1_4_False_shift: signed(22 downto 0);
  signal c_24_1_0_False_resize: signed(22 downto 0);
  signal c_24_1_0_False_shift: signed(22 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_resize: signed(23 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_7_2_False_resize: signed(23 downto 0);
  signal c_26_7_2_False_shift: signed(23 downto 0);
  signal c_26_6_0_False_resize: signed(23 downto 0);
  signal c_26_6_0_False_shift: signed(23 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_resize: signed(23 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_9_0_False_resize: signed(23 downto 0);
  signal c_28_9_0_False_shift: signed(23 downto 0);
  signal c_28_11_1_False_resize: signed(23 downto 0);
  signal c_28_11_1_False_shift: signed(23 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_resize: signed(23 downto 0);
  signal c_30: signed(19 downto 0);
  signal c_30_5_0_False_resize: signed(19 downto 0);
  signal c_30_5_0_False_shift: signed(19 downto 0);
  signal c_30_0_3_False_resize: signed(19 downto 0);
  signal c_30_0_3_False_shift: signed(19 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(19 downto 0);
  signal c_31_resize: signed(19 downto 0);
  signal c_32: signed(22 downto 0);
  signal c_32_resize: signed(22 downto 0);
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
  -- output node 5 with id 25
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_25);
    end if;
  end process;
  -- output node 6 with id 27
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_27);
    end if;
  end process;
  -- output node 7 with id 29
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_29);
    end if;
  end process;
  -- output node 8 with id 31
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_31);
    end if;
  end process;
  -- output node 9 with id 32
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_32);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 1 and associated fundamentals [[7], [7]]
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
      s_x_i => 3,
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
      z_o => c_1_oshift
    );
  c_1 <= c_1_oshift(18 downto 0);
  -- node of type 'mux' in stage 2 with id 2 and associated fundamentals [[4], [7]]
  c_2_0_2_False_resize <= resize(c_0, 19);
  c_2_0_2_False_shift <= shift_left(c_2_0_2_False_resize, 2);
  c_2_1_0_False_resize <= c_1;
  c_2_1_0_False_shift <= shift_left(c_2_1_0_False_resize, 0);
  with config_select_2 select c_2_sel <= 
    "0" when "0",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_0_2_False_shift when "0",
    c_2_1_0_False_shift when others;
  -- node of type 'sub' in stage 3 with id 3 and associated fundamentals [[108], [105]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 23,
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
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(22 downto 0);
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[32], [7]]
  c_4_1_0_False_resize <= resize(c_1, 21);
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  c_4_0_5_False_resize <= resize(c_0, 21);
  c_4_0_5_False_shift <= shift_left(c_4_0_5_False_resize, 5);
  with config_select_2 select c_4_sel <= 
    "0" when "1",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_1_0_False_shift when "0",
    c_4_0_5_False_shift when others;
  -- node of type 'add' in stage 3 with id 5 and associated fundamentals [[65], [15]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 16,
      w_o => 23,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_4,
      y_i => c_0,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(22 downto 0);
  -- node of type 'add_sub' in stage 4 with id 6 and associated fundamentals [[93], [13]]
  with config_select_4 select c_6_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 23,
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
      sub_i => c_6_sub_sel,
      x_i => c_1,
      y_i => c_5,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(22 downto 0);
  -- node of type 'add_sub' in stage 5 with id 7 and associated fundamentals [[61], [45]]
  with config_select_5 select c_7_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 16,
      w_o => 22,
      s_x_i => 0,
      s_y_i => 5,
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
  c_7 <= c_7_oshift(21 downto 0);
  -- node of type 'mux' in stage 5 with id 8 and associated fundamentals [[7], [13]]
  c_8_1_0_False_resize <= resize(c_1, 20);
  c_8_1_0_False_shift <= shift_left(c_8_1_0_False_resize, 0);
  c_8_6_0_False_resize <= c_6(19 downto 0);
  c_8_6_0_False_shift <= shift_left(c_8_6_0_False_resize, 0);
  with config_select_5 select c_8_sel <= 
    "0" when "0",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_1_0_False_shift when "0",
    c_8_6_0_False_shift when others;
  -- node of type 'add' in stage 6 with id 9 and associated fundamentals [[75], [71]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
      w_o => 23,
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
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(22 downto 0);
  -- node of type 'mux' in stage 7 with id 10 and associated fundamentals [[75], [32]]
  c_10_9_0_False_resize <= c_9;
  c_10_9_0_False_shift <= shift_left(c_10_9_0_False_resize, 0);
  c_10_0_5_False_resize <= resize(c_0, 23);
  c_10_0_5_False_shift <= shift_left(c_10_0_5_False_resize, 5);
  with config_select_7 select c_10_sel <= 
    "0" when "0",
    "1" when others;
  with c_10_sel select c_10 <=
    c_10_9_0_False_shift when "0",
    c_10_0_5_False_shift when others;
  -- node of type 'sub' in stage 8 with id 11 and associated fundamentals [[207], [115]]
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 24,
      s_x_i => 2,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_10,
      y_i => c_6,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(23 downto 0);
  -- node of type 'mux' in stage 5 with id 12 and associated fundamentals [[93], [104]]
  c_12_6_0_False_resize <= c_6;
  c_12_6_0_False_shift <= shift_left(c_12_6_0_False_resize, 0);
  c_12_6_3_False_resize <= c_6;
  c_12_6_3_False_shift <= shift_left(c_12_6_3_False_resize, 3);
  with config_select_5 select c_12_sel <= 
    "0" when "0",
    "1" when others;
  with c_12_sel select c_12 <=
    c_12_6_0_False_shift when "0",
    c_12_6_3_False_shift when others;
  -- node of type 'add' in stage 7 with id 13 and associated fundamentals [[168], [175]]
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 24,
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
      x_i => c_12,
      y_i => c_9,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(23 downto 0);
  -- node of type 'mux' in stage 8 with id 14 and associated fundamentals [[168], [8]]
  c_14_13_0_False_resize <= c_13;
  c_14_13_0_False_shift <= shift_left(c_14_13_0_False_resize, 0);
  c_14_0_3_False_resize <= resize(c_0, 24);
  c_14_0_3_False_shift <= shift_left(c_14_0_3_False_resize, 3);
  with config_select_8 select c_14_sel <= 
    "0" when "0",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_13_0_False_shift when "0",
    c_14_0_3_False_shift when others;
  -- node of type 'add' in stage 9 with id 15 and associated fundamentals [[233], [23]]
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
      w_o => 24,
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
      x_i => c_14,
      y_i => c_5,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(23 downto 0);
  -- node of type 'mux' in stage 7 with id 16 and associated fundamentals [[61], [71]]
  c_16_9_0_False_resize <= c_9;
  c_16_9_0_False_shift <= shift_left(c_16_9_0_False_resize, 0);
  c_16_7_0_False_resize <= resize(c_7, 23);
  c_16_7_0_False_shift <= shift_left(c_16_7_0_False_resize, 0);
  with config_select_7 select c_16_sel <= 
    "0" when "1",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_9_0_False_shift when "0",
    c_16_7_0_False_shift when others;
  -- node of type 'output' in stage 7 with id 17 and associated fundamentals [[122], [142]]
  c_17_resize <= resize(c_16, 24);
  c_17 <= shift_left(c_17_resize, 1);
  -- node of type 'output' in stage 9 with id 18 and associated fundamentals [[233], [23]]
  c_18_resize <= c_15;
  c_18 <= shift_left(c_18_resize, 0);
  -- node of type 'mux' in stage 4 with id 19 and associated fundamentals [[65], [2]]
  c_19_0_1_False_resize <= resize(c_0, 23);
  c_19_0_1_False_shift <= shift_left(c_19_0_1_False_resize, 1);
  c_19_5_0_False_resize <= c_5;
  c_19_5_0_False_shift <= shift_left(c_19_5_0_False_resize, 0);
  with config_select_4 select c_19_sel <= 
    "0" when "1",
    "1" when others;
  with c_19_sel select c_19 <=
    c_19_0_1_False_shift when "0",
    c_19_5_0_False_shift when others;
  -- node of type 'output' in stage 4 with id 20 and associated fundamentals [[65], [2]]
  c_20_resize <= c_19;
  c_20 <= shift_left(c_20_resize, 0);
  -- node of type 'mux' in stage 9 with id 21 and associated fundamentals [[207], [104]]
  c_21_6_3_False_resize <= resize(c_6, 24);
  c_21_6_3_False_shift <= shift_left(c_21_6_3_False_resize, 3);
  c_21_11_0_False_resize <= c_11;
  c_21_11_0_False_shift <= shift_left(c_21_11_0_False_resize, 0);
  with config_select_9 select c_21_sel <= 
    "0" when "1",
    "1" when others;
  with c_21_sel select c_21 <=
    c_21_6_3_False_shift when "0",
    c_21_11_0_False_shift when others;
  -- node of type 'output' in stage 9 with id 22 and associated fundamentals [[207], [104]]
  c_22_resize <= c_21;
  c_22 <= shift_left(c_22_resize, 0);
  -- node of type 'output' in stage 7 with id 23 and associated fundamentals [[168], [175]]
  c_23_resize <= c_13;
  c_23 <= shift_left(c_23_resize, 0);
  -- node of type 'mux' in stage 2 with id 24 and associated fundamentals [[7], [112]]
  c_24_1_4_False_resize <= resize(c_1, 23);
  c_24_1_4_False_shift <= shift_left(c_24_1_4_False_resize, 4);
  c_24_1_0_False_resize <= resize(c_1, 23);
  c_24_1_0_False_shift <= shift_left(c_24_1_0_False_resize, 0);
  with config_select_2 select c_24_sel <= 
    "0" when "1",
    "1" when others;
  with c_24_sel select c_24 <=
    c_24_1_4_False_shift when "0",
    c_24_1_0_False_shift when others;
  -- node of type 'output' in stage 2 with id 25 and associated fundamentals [[14], [224]]
  c_25_resize <= resize(c_24, 24);
  c_25 <= shift_left(c_25_resize, 1);
  -- node of type 'mux' in stage 6 with id 26 and associated fundamentals [[93], [180]]
  c_26_7_2_False_resize <= resize(c_7, 24);
  c_26_7_2_False_shift <= shift_left(c_26_7_2_False_resize, 2);
  c_26_6_0_False_resize <= resize(c_6, 24);
  c_26_6_0_False_shift <= shift_left(c_26_6_0_False_resize, 0);
  with config_select_6 select c_26_sel <= 
    "0" when "1",
    "1" when others;
  with c_26_sel select c_26 <=
    c_26_7_2_False_shift when "0",
    c_26_6_0_False_shift when others;
  -- node of type 'output' in stage 6 with id 27 and associated fundamentals [[93], [180]]
  c_27_resize <= c_26;
  c_27 <= shift_left(c_27_resize, 0);
  -- node of type 'mux' in stage 9 with id 28 and associated fundamentals [[75], [230]]
  c_28_9_0_False_resize <= resize(c_9, 24);
  c_28_9_0_False_shift <= shift_left(c_28_9_0_False_resize, 0);
  c_28_11_1_False_resize <= c_11;
  c_28_11_1_False_shift <= shift_left(c_28_11_1_False_resize, 1);
  with config_select_9 select c_28_sel <= 
    "0" when "0",
    "1" when others;
  with c_28_sel select c_28 <=
    c_28_9_0_False_shift when "0",
    c_28_11_1_False_shift when others;
  -- node of type 'output' in stage 9 with id 29 and associated fundamentals [[75], [230]]
  c_29_resize <= c_28;
  c_29 <= shift_left(c_29_resize, 0);
  -- node of type 'mux' in stage 4 with id 30 and associated fundamentals [[8], [15]]
  c_30_5_0_False_resize <= c_5(19 downto 0);
  c_30_5_0_False_shift <= shift_left(c_30_5_0_False_resize, 0);
  c_30_0_3_False_resize <= resize(c_0, 20);
  c_30_0_3_False_shift <= shift_left(c_30_0_3_False_resize, 3);
  with config_select_4 select c_30_sel <= 
    "0" when "1",
    "1" when others;
  with c_30_sel select c_30 <=
    c_30_5_0_False_shift when "0",
    c_30_0_3_False_shift when others;
  -- node of type 'output' in stage 4 with id 31 and associated fundamentals [[8], [15]]
  c_31_resize <= c_30;
  c_31 <= shift_left(c_31_resize, 0);
  -- node of type 'output' in stage 3 with id 32 and associated fundamentals [[108], [105]]
  c_32_resize <= c_3;
  c_32 <= shift_left(c_32_resize, 0);
end architecture;
