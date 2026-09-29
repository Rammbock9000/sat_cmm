library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(19 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(23 downto 0);
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
  signal config_select_7: std_logic_vector(0 downto 0);
  signal config_select_8: std_logic_vector(0 downto 0);
  signal config_select_9: std_logic_vector(0 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_0_0_False_resize: signed(18 downto 0);
  signal c_1_0_0_False_shift: signed(18 downto 0);
  signal c_1_0_3_False_resize: signed(18 downto 0);
  signal c_1_0_3_False_shift: signed(18 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(18 downto 0);
  signal c_2_i0_resize: signed(18 downto 0);
  signal c_2_i1_resize: signed(18 downto 0);
  signal c_2_i0_shift: signed(18 downto 0);
  signal c_2_i1_shift: signed(18 downto 0);
  signal c_2_arith: signed(18 downto 0);
  signal c_2_oshift: signed(18 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(19 downto 0);
  signal c_3_i1_resize: signed(19 downto 0);
  signal c_3_i0_shift: signed(19 downto 0);
  signal c_3_i1_shift: signed(19 downto 0);
  signal c_3_arith: signed(19 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(20 downto 0);
  signal c_4_i0_resize: signed(20 downto 0);
  signal c_4_i1_resize: signed(20 downto 0);
  signal c_4_i0_shift: signed(20 downto 0);
  signal c_4_i1_shift: signed(20 downto 0);
  signal c_4_arith: signed(20 downto 0);
  signal c_4_oshift: signed(20 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_i0_resize: signed(22 downto 0);
  signal c_5_i1_resize: signed(22 downto 0);
  signal c_5_i0_shift: signed(22 downto 0);
  signal c_5_i1_shift: signed(22 downto 0);
  signal c_5_arith: signed(22 downto 0);
  signal c_5_oshift: signed(22 downto 0);
  signal c_6: signed(20 downto 0);
  signal c_6_3_0_False_resize: signed(20 downto 0);
  signal c_6_3_0_False_shift: signed(20 downto 0);
  signal c_6_2_4_False_resize: signed(20 downto 0);
  signal c_6_2_4_False_shift: signed(20 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_i0_resize: signed(23 downto 0);
  signal c_7_i1_resize: signed(23 downto 0);
  signal c_7_i0_shift: signed(23 downto 0);
  signal c_7_i1_shift: signed(23 downto 0);
  signal c_7_arith: signed(23 downto 0);
  signal c_7_oshift: signed(23 downto 0);
  signal c_8: signed(20 downto 0);
  signal c_8_4_0_False_resize: signed(20 downto 0);
  signal c_8_4_0_False_shift: signed(20 downto 0);
  signal c_8_0_3_False_resize: signed(20 downto 0);
  signal c_8_0_3_False_shift: signed(20 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_10: signed(19 downto 0);
  signal c_10_resize: signed(19 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_resize: signed(23 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_5_1_False_resize: signed(22 downto 0);
  signal c_12_5_1_False_shift: signed(22 downto 0);
  signal c_12_5_0_False_resize: signed(22 downto 0);
  signal c_12_5_0_False_shift: signed(22 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_resize: signed(23 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_14_9_0_False_resize: signed(22 downto 0);
  signal c_14_9_0_False_shift: signed(22 downto 0);
  signal c_14_3_3_False_resize: signed(22 downto 0);
  signal c_14_3_3_False_shift: signed(22 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_resize: signed(23 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_9_0_False_resize: signed(23 downto 0);
  signal c_16_9_0_False_shift: signed(23 downto 0);
  signal c_16_3_5_False_resize: signed(23 downto 0);
  signal c_16_3_5_False_shift: signed(23 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_resize: signed(23 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 10
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_10);
    end if;
  end process;
  -- output node 1 with id 11
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_11);
    end if;
  end process;
  -- output node 2 with id 13
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_13);
    end if;
  end process;
  -- output node 3 with id 15
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_15);
    end if;
  end process;
  -- output node 4 with id 17
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_17);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[8], [1]]
  c_1_0_0_False_resize <= resize(c_0, 19);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_3_False_resize <= resize(c_0, 19);
  c_1_0_3_False_shift <= shift_left(c_1_0_3_False_resize, 3);
  with config_select_1 select c_1_sel <= 
    "0" when "1",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "0",
    c_1_0_3_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 2 and associated fundamentals [[7], [2]]
  with config_select_2 select c_2_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
      w_o => 19,
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
      sub_i => c_2_sub_sel,
      x_i => c_1,
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(18 downto 0);
  -- node of type 'add_sub' in stage 3 with id 3 and associated fundamentals [[13], [5]]
  with config_select_3 select c_3_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
      w_o => 20,
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
      sub_i => c_3_sub_sel,
      x_i => c_2,
      y_i => c_0,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(19 downto 0);
  -- node of type 'add' in stage 4 with id 4 and associated fundamentals [[21], [13]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 16,
      w_o => 21,
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
      y_i => c_0,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(20 downto 0);
  -- node of type 'add' in stage 5 with id 5 and associated fundamentals [[125], [53]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 20,
      w_o => 23,
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
      x_i => c_4,
      y_i => c_3,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(22 downto 0);
  -- node of type 'mux' in stage 4 with id 6 and associated fundamentals [[13], [32]]
  c_6_3_0_False_resize <= resize(c_3, 21);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  c_6_2_4_False_resize <= resize(c_2, 21);
  c_6_2_4_False_shift <= shift_left(c_6_2_4_False_resize, 4);
  with config_select_4 select c_6_sel <= 
    "0" when "0",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_3_0_False_shift when "0",
    c_6_2_4_False_shift when others;
  -- node of type 'add' in stage 6 with id 7 and associated fundamentals [[177], [181]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
      w_o => 24,
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
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(23 downto 0);
  -- node of type 'mux' in stage 5 with id 8 and associated fundamentals [[21], [8]]
  c_8_4_0_False_resize <= c_4;
  c_8_4_0_False_shift <= shift_left(c_8_4_0_False_resize, 0);
  c_8_0_3_False_resize <= resize(c_0, 21);
  c_8_0_3_False_shift <= shift_left(c_8_0_3_False_resize, 3);
  with config_select_5 select c_8_sel <= 
    "0" when "0",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_4_0_False_shift when "0",
    c_8_0_3_False_shift when others;
  -- node of type 'sub' in stage 6 with id 9 and associated fundamentals [[147], [51]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 21,
      w_o => 24,
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
      x_i => c_8,
      y_i => c_4,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(23 downto 0);
  -- node of type 'output' in stage 2 with id 10 and associated fundamentals [[14], [4]]
  c_10_resize <= resize(c_2, 20);
  c_10 <= shift_left(c_10_resize, 1);
  -- node of type 'output' in stage 6 with id 11 and associated fundamentals [[177], [181]]
  c_11_resize <= c_7;
  c_11 <= shift_left(c_11_resize, 0);
  -- node of type 'mux' in stage 6 with id 12 and associated fundamentals [[125], [106]]
  c_12_5_1_False_resize <= c_5;
  c_12_5_1_False_shift <= shift_left(c_12_5_1_False_resize, 1);
  c_12_5_0_False_resize <= c_5;
  c_12_5_0_False_shift <= shift_left(c_12_5_0_False_resize, 0);
  with config_select_6 select c_12_sel <= 
    "0" when "1",
    "1" when others;
  with c_12_sel select c_12 <=
    c_12_5_1_False_shift when "0",
    c_12_5_0_False_shift when others;
  -- node of type 'output' in stage 6 with id 13 and associated fundamentals [[250], [212]]
  c_13_resize <= resize(c_12, 24);
  c_13 <= shift_left(c_13_resize, 1);
  -- node of type 'mux' in stage 7 with id 14 and associated fundamentals [[104], [51]]
  c_14_9_0_False_resize <= c_9(22 downto 0);
  c_14_9_0_False_shift <= shift_left(c_14_9_0_False_resize, 0);
  c_14_3_3_False_resize <= resize(c_3, 23);
  c_14_3_3_False_shift <= shift_left(c_14_3_3_False_resize, 3);
  with config_select_7 select c_14_sel <= 
    "0" when "1",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_9_0_False_shift when "0",
    c_14_3_3_False_shift when others;
  -- node of type 'output' in stage 7 with id 15 and associated fundamentals [[208], [102]]
  c_15_resize <= resize(c_14, 24);
  c_15 <= shift_left(c_15_resize, 1);
  -- node of type 'mux' in stage 7 with id 16 and associated fundamentals [[147], [160]]
  c_16_9_0_False_resize <= c_9;
  c_16_9_0_False_shift <= shift_left(c_16_9_0_False_resize, 0);
  c_16_3_5_False_resize <= resize(c_3, 24);
  c_16_3_5_False_shift <= shift_left(c_16_3_5_False_resize, 5);
  with config_select_7 select c_16_sel <= 
    "0" when "0",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_9_0_False_shift when "0",
    c_16_3_5_False_shift when others;
  -- node of type 'output' in stage 7 with id 17 and associated fundamentals [[147], [160]]
  c_17_resize <= c_16;
  c_17 <= shift_left(c_17_resize, 0);
end architecture;
