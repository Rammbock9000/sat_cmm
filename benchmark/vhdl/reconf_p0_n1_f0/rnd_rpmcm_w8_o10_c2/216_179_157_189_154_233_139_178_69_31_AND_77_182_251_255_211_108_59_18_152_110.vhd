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
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(23 downto 0);
    y_5: out std_logic_vector(23 downto 0);
    y_6: out std_logic_vector(23 downto 0);
    y_7: out std_logic_vector(23 downto 0);
    y_8: out std_logic_vector(23 downto 0);
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
  signal config_select_12: std_logic_vector(0 downto 0);
  signal config_select_13: std_logic_vector(0 downto 0);
  signal config_select_14: std_logic_vector(0 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_0_0_False_resize: signed(17 downto 0);
  signal c_1_0_0_False_shift: signed(17 downto 0);
  signal c_1_0_2_False_resize: signed(17 downto 0);
  signal c_1_0_2_False_shift: signed(17 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(20 downto 0);
  signal c_2_i0_resize: signed(20 downto 0);
  signal c_2_i1_resize: signed(20 downto 0);
  signal c_2_i0_shift: signed(20 downto 0);
  signal c_2_i1_shift: signed(20 downto 0);
  signal c_2_arith: signed(20 downto 0);
  signal c_2_oshift: signed(20 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(21 downto 0);
  signal c_3_0_6_False_resize: signed(21 downto 0);
  signal c_3_0_6_False_shift: signed(21 downto 0);
  signal c_3_2_0_False_resize: signed(21 downto 0);
  signal c_3_2_0_False_shift: signed(21 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(19 downto 0);
  signal c_4_0_2_False_resize: signed(19 downto 0);
  signal c_4_0_2_False_shift: signed(19 downto 0);
  signal c_4_2_0_False_resize: signed(19 downto 0);
  signal c_4_2_0_False_shift: signed(19 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_5_i0_resize: signed(21 downto 0);
  signal c_5_i1_resize: signed(21 downto 0);
  signal c_5_i0_shift: signed(21 downto 0);
  signal c_5_i1_shift: signed(21 downto 0);
  signal c_5_arith: signed(21 downto 0);
  signal c_5_oshift: signed(21 downto 0);
  signal c_6: signed(20 downto 0);
  signal c_6_0_0_False_resize: signed(20 downto 0);
  signal c_6_0_0_False_shift: signed(20 downto 0);
  signal c_6_5_0_False_resize: signed(20 downto 0);
  signal c_6_5_0_False_shift: signed(20 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(20 downto 0);
  signal c_7_5_0_False_resize: signed(20 downto 0);
  signal c_7_5_0_False_shift: signed(20 downto 0);
  signal c_7_0_5_False_resize: signed(20 downto 0);
  signal c_7_0_5_False_shift: signed(20 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_8_i0_resize: signed(23 downto 0);
  signal c_8_i1_resize: signed(23 downto 0);
  signal c_8_i0_shift: signed(23 downto 0);
  signal c_8_i1_shift: signed(23 downto 0);
  signal c_8_arith: signed(23 downto 0);
  signal c_8_oshift: signed(23 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_10: signed(18 downto 0);
  signal c_10_0_0_False_resize: signed(18 downto 0);
  signal c_10_0_0_False_shift: signed(18 downto 0);
  signal c_10_0_3_False_resize: signed(18 downto 0);
  signal c_10_0_3_False_shift: signed(18 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_i0_resize: signed(23 downto 0);
  signal c_11_i1_resize: signed(23 downto 0);
  signal c_11_i0_shift: signed(23 downto 0);
  signal c_11_i1_shift: signed(23 downto 0);
  signal c_11_arith: signed(23 downto 0);
  signal c_11_oshift: signed(23 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_9_0_False_resize: signed(23 downto 0);
  signal c_12_9_0_False_shift: signed(23 downto 0);
  signal c_12_2_4_False_resize: signed(23 downto 0);
  signal c_12_2_4_False_shift: signed(23 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(22 downto 0);
  signal c_14_5_1_False_resize: signed(22 downto 0);
  signal c_14_5_1_False_shift: signed(22 downto 0);
  signal c_14_13_0_False_resize: signed(22 downto 0);
  signal c_14_13_0_False_shift: signed(22 downto 0);
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
  signal c_16_13_0_False_resize: signed(23 downto 0);
  signal c_16_13_0_False_shift: signed(23 downto 0);
  signal c_16_2_1_False_resize: signed(23 downto 0);
  signal c_16_2_1_False_shift: signed(23 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_i0_resize: signed(23 downto 0);
  signal c_17_i1_resize: signed(23 downto 0);
  signal c_17_i0_shift: signed(23 downto 0);
  signal c_17_i1_shift: signed(23 downto 0);
  signal c_17_arith: signed(23 downto 0);
  signal c_17_oshift: signed(23 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(23 downto 0);
  signal c_18_0_1_False_resize: signed(23 downto 0);
  signal c_18_0_1_False_shift: signed(23 downto 0);
  signal c_18_15_0_False_resize: signed(23 downto 0);
  signal c_18_15_0_False_shift: signed(23 downto 0);
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
  signal c_20_5_0_False_resize: signed(21 downto 0);
  signal c_20_5_0_False_shift: signed(21 downto 0);
  signal c_20_17_0_False_resize: signed(21 downto 0);
  signal c_20_17_0_False_shift: signed(21 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_21_i0_resize: signed(22 downto 0);
  signal c_21_i1_resize: signed(22 downto 0);
  signal c_21_i0_shift: signed(22 downto 0);
  signal c_21_i1_shift: signed(22 downto 0);
  signal c_21_arith: signed(22 downto 0);
  signal c_21_oshift: signed(22 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_5_3_False_resize: signed(23 downto 0);
  signal c_22_5_3_False_shift: signed(23 downto 0);
  signal c_22_21_0_False_resize: signed(23 downto 0);
  signal c_22_21_0_False_shift: signed(23 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_resize: signed(23 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_resize: signed(23 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_resize: signed(23 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_resize: signed(23 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_9_0_False_resize: signed(23 downto 0);
  signal c_27_9_0_False_shift: signed(23 downto 0);
  signal c_27_9_1_False_resize: signed(23 downto 0);
  signal c_27_9_1_False_shift: signed(23 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_resize: signed(23 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_resize: signed(23 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_resize: signed(23 downto 0);
  signal c_31: signed(22 downto 0);
  signal c_31_21_0_False_resize: signed(22 downto 0);
  signal c_31_21_0_False_shift: signed(22 downto 0);
  signal c_31_2_0_False_resize: signed(22 downto 0);
  signal c_31_2_0_False_shift: signed(22 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_32_resize: signed(23 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_resize: signed(23 downto 0);
  signal c_34: signed(22 downto 0);
  signal c_34_5_1_False_resize: signed(22 downto 0);
  signal c_34_5_1_False_shift: signed(22 downto 0);
  signal c_34_2_0_False_resize: signed(22 downto 0);
  signal c_34_2_0_False_shift: signed(22 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(22 downto 0);
  signal c_35_resize: signed(22 downto 0);
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
  -- output node 4 with id 28
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_28);
    end if;
  end process;
  -- output node 5 with id 29
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_29);
    end if;
  end process;
  -- output node 6 with id 30
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_30);
    end if;
  end process;
  -- output node 7 with id 32
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_32);
    end if;
  end process;
  -- output node 8 with id 33
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_33);
    end if;
  end process;
  -- output node 9 with id 35
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_35);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[4], [1]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "0" when "1",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "0",
    c_1_0_2_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 2 and associated fundamentals [[31], [9]]
  with config_select_2 select c_2_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
      w_o => 21,
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
      sub_i => c_2_sub_sel,
      x_i => c_1,
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(20 downto 0);
  -- node of type 'mux' in stage 3 with id 3 and associated fundamentals [[31], [64]]
  c_3_0_6_False_resize <= resize(c_0, 22);
  c_3_0_6_False_shift <= shift_left(c_3_0_6_False_resize, 6);
  c_3_2_0_False_resize <= resize(c_2, 22);
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  with config_select_3 select c_3_sel <= 
    "0" when "1",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_0_6_False_shift when "0",
    c_3_2_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[4], [9]]
  c_4_0_2_False_resize <= resize(c_0, 20);
  c_4_0_2_False_shift <= shift_left(c_4_0_2_False_resize, 2);
  c_4_2_0_False_resize <= c_2(19 downto 0);
  c_4_2_0_False_shift <= shift_left(c_4_2_0_False_resize, 0);
  with config_select_3 select c_4_sel <= 
    "0" when "0",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_0_2_False_shift when "0",
    c_4_2_0_False_shift when others;
  -- node of type 'sub' in stage 4 with id 5 and associated fundamentals [[27], [55]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
      w_o => 22,
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
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(21 downto 0);
  -- node of type 'mux' in stage 5 with id 6 and associated fundamentals [[27], [1]]
  c_6_0_0_False_resize <= resize(c_0, 21);
  c_6_0_0_False_shift <= shift_left(c_6_0_0_False_resize, 0);
  c_6_5_0_False_resize <= c_5(20 downto 0);
  c_6_5_0_False_shift <= shift_left(c_6_5_0_False_resize, 0);
  with config_select_5 select c_6_sel <= 
    "0" when "1",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_0_0_False_shift when "0",
    c_6_5_0_False_shift when others;
  -- node of type 'mux' in stage 5 with id 7 and associated fundamentals [[27], [32]]
  c_7_5_0_False_resize <= c_5(20 downto 0);
  c_7_5_0_False_shift <= shift_left(c_7_5_0_False_resize, 0);
  c_7_0_5_False_resize <= resize(c_0, 21);
  c_7_0_5_False_shift <= shift_left(c_7_0_5_False_resize, 5);
  with config_select_5 select c_7_sel <= 
    "0" when "0",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_5_0_False_shift when "0",
    c_7_0_5_False_shift when others;
  -- node of type 'sub' in stage 6 with id 8 and associated fundamentals [[-189], [-255]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 21,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(23 downto 0);
  -- node of type 'sub' in stage 5 with id 9 and associated fundamentals [[77], [211]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 21,
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
      x_i => c_5,
      y_i => c_2,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(23 downto 0);
  -- node of type 'mux' in stage 1 with id 10 and associated fundamentals [[8], [1]]
  c_10_0_0_False_resize <= resize(c_0, 19);
  c_10_0_0_False_shift <= shift_left(c_10_0_0_False_resize, 0);
  c_10_0_3_False_resize <= resize(c_0, 19);
  c_10_0_3_False_shift <= shift_left(c_10_0_3_False_resize, 3);
  with config_select_1 select c_10_sel <= 
    "0" when "1",
    "1" when others;
  with c_10_sel select c_10 <=
    c_10_0_0_False_shift when "0",
    c_10_0_3_False_shift when others;
  -- node of type 'add' in stage 7 with id 11 and associated fundamentals [[-157], [-251]]
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 24,
      w_o => 24,
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
      x_i => c_10,
      y_i => c_8,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(23 downto 0);
  -- node of type 'mux' in stage 6 with id 12 and associated fundamentals [[77], [144]]
  c_12_9_0_False_resize <= c_9;
  c_12_9_0_False_shift <= shift_left(c_12_9_0_False_resize, 0);
  c_12_2_4_False_resize <= resize(c_2, 24);
  c_12_2_4_False_shift <= shift_left(c_12_2_4_False_resize, 4);
  with config_select_6 select c_12_sel <= 
    "0" when "0",
    "1" when others;
  with c_12_sel select c_12 <=
    c_12_9_0_False_shift when "0",
    c_12_2_4_False_shift when others;
  -- node of type 'add_sub' in stage 7 with id 13 and associated fundamentals [[69], [152]]
  with config_select_7 select c_13_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 16,
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
      sub_i => c_13_sub_sel,
      x_i => c_12,
      y_i => c_0,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(23 downto 0);
  -- node of type 'mux' in stage 8 with id 14 and associated fundamentals [[69], [110]]
  c_14_5_1_False_resize <= resize(c_5, 23);
  c_14_5_1_False_shift <= shift_left(c_14_5_1_False_resize, 1);
  c_14_13_0_False_resize <= c_13(22 downto 0);
  c_14_13_0_False_shift <= shift_left(c_14_13_0_False_resize, 0);
  with config_select_8 select c_14_sel <= 
    "0" when "1",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_5_1_False_shift when "0",
    c_14_13_0_False_shift when others;
  -- node of type 'add_sub' in stage 9 with id 15 and associated fundamentals [[179], [182]]
  with config_select_9 select c_15_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 23,
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
      sub_i => c_15_sub_sel,
      x_i => c_2,
      y_i => c_14,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(23 downto 0);
  -- node of type 'mux' in stage 8 with id 16 and associated fundamentals [[62], [152]]
  c_16_13_0_False_resize <= c_13;
  c_16_13_0_False_shift <= shift_left(c_16_13_0_False_resize, 0);
  c_16_2_1_False_resize <= resize(c_2, 24);
  c_16_2_1_False_shift <= shift_left(c_16_2_1_False_resize, 1);
  with config_select_8 select c_16_sel <= 
    "0" when "1",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_13_0_False_shift when "0",
    c_16_2_1_False_shift when others;
  -- node of type 'add_sub' in stage 9 with id 17 and associated fundamentals [[139], [59]]
  with config_select_9 select c_17_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
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
      sub_i => c_17_sub_sel,
      x_i => c_9,
      y_i => c_16,
      z_o => c_17_oshift
    );
  c_17 <= c_17_oshift(23 downto 0);
  -- node of type 'mux' in stage 10 with id 18 and associated fundamentals [[179], [2]]
  c_18_0_1_False_resize <= resize(c_0, 24);
  c_18_0_1_False_shift <= shift_left(c_18_0_1_False_resize, 1);
  c_18_15_0_False_resize <= c_15;
  c_18_15_0_False_shift <= shift_left(c_18_15_0_False_resize, 0);
  with config_select_10 select c_18_sel <= 
    "0" when "1",
    "1" when others;
  with c_18_sel select c_18 <=
    c_18_0_1_False_shift when "0",
    c_18_15_0_False_shift when others;
  -- node of type 'add_sub' in stage 11 with id 19 and associated fundamentals [[233], [108]]
  with config_select_11 select c_19_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 24,
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
      sub_i => c_19_sub_sel,
      x_i => c_5,
      y_i => c_18,
      z_o => c_19_oshift
    );
  c_19 <= c_19_oshift(23 downto 0);
  -- node of type 'mux' in stage 10 with id 20 and associated fundamentals [[27], [59]]
  c_20_5_0_False_resize <= c_5;
  c_20_5_0_False_shift <= shift_left(c_20_5_0_False_resize, 0);
  c_20_17_0_False_resize <= c_17(21 downto 0);
  c_20_17_0_False_shift <= shift_left(c_20_17_0_False_resize, 0);
  with config_select_10 select c_20_sel <= 
    "0" when "0",
    "1" when others;
  with c_20_sel select c_20 <=
    c_20_5_0_False_shift when "0",
    c_20_17_0_False_shift when others;
  -- node of type 'add' in stage 11 with id 21 and associated fundamentals [[89], [77]]
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 21,
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
      x_i => c_20,
      y_i => c_2,
      z_o => c_21_oshift
    );
  c_21 <= c_21_oshift(22 downto 0);
  -- node of type 'mux' in stage 12 with id 22 and associated fundamentals [[216], [77]]
  c_22_5_3_False_resize <= resize(c_5, 24);
  c_22_5_3_False_shift <= shift_left(c_22_5_3_False_resize, 3);
  c_22_21_0_False_resize <= resize(c_21, 24);
  c_22_21_0_False_shift <= shift_left(c_22_21_0_False_resize, 0);
  with config_select_12 select c_22_sel <= 
    "0" when "0",
    "1" when others;
  with c_22_sel select c_22 <=
    c_22_5_3_False_shift when "0",
    c_22_21_0_False_shift when others;
  -- node of type 'output' in stage 12 with id 23 and associated fundamentals [[216], [77]]
  c_23_resize <= c_22;
  c_23 <= shift_left(c_23_resize, 0);
  -- node of type 'output' in stage 9 with id 24 and associated fundamentals [[179], [182]]
  c_24_resize <= c_15;
  c_24 <= shift_left(c_24_resize, 0);
  -- node of type 'output' in stage 7 with id 25 and associated fundamentals [[157], [251]]
  c_25_resize <= c_11;
  c_25 <= -shift_left(c_25_resize, 0);
  -- node of type 'output' in stage 6 with id 26 and associated fundamentals [[189], [255]]
  c_26_resize <= c_8;
  c_26 <= -shift_left(c_26_resize, 0);
  -- node of type 'mux' in stage 6 with id 27 and associated fundamentals [[154], [211]]
  c_27_9_0_False_resize <= c_9;
  c_27_9_0_False_shift <= shift_left(c_27_9_0_False_resize, 0);
  c_27_9_1_False_resize <= c_9;
  c_27_9_1_False_shift <= shift_left(c_27_9_1_False_resize, 1);
  with config_select_6 select c_27_sel <= 
    "0" when "1",
    "1" when others;
  with c_27_sel select c_27 <=
    c_27_9_0_False_shift when "0",
    c_27_9_1_False_shift when others;
  -- node of type 'output' in stage 6 with id 28 and associated fundamentals [[154], [211]]
  c_28_resize <= c_27;
  c_28 <= shift_left(c_28_resize, 0);
  -- node of type 'output' in stage 11 with id 29 and associated fundamentals [[233], [108]]
  c_29_resize <= c_19;
  c_29 <= shift_left(c_29_resize, 0);
  -- node of type 'output' in stage 9 with id 30 and associated fundamentals [[139], [59]]
  c_30_resize <= c_17;
  c_30 <= shift_left(c_30_resize, 0);
  -- node of type 'mux' in stage 12 with id 31 and associated fundamentals [[89], [9]]
  c_31_21_0_False_resize <= c_21;
  c_31_21_0_False_shift <= shift_left(c_31_21_0_False_resize, 0);
  c_31_2_0_False_resize <= resize(c_2, 23);
  c_31_2_0_False_shift <= shift_left(c_31_2_0_False_resize, 0);
  with config_select_12 select c_31_sel <= 
    "0" when "0",
    "1" when others;
  with c_31_sel select c_31 <=
    c_31_21_0_False_shift when "0",
    c_31_2_0_False_shift when others;
  -- node of type 'output' in stage 12 with id 32 and associated fundamentals [[178], [18]]
  c_32_resize <= resize(c_31, 24);
  c_32 <= shift_left(c_32_resize, 1);
  -- node of type 'output' in stage 7 with id 33 and associated fundamentals [[69], [152]]
  c_33_resize <= c_13;
  c_33 <= shift_left(c_33_resize, 0);
  -- node of type 'mux' in stage 5 with id 34 and associated fundamentals [[31], [110]]
  c_34_5_1_False_resize <= resize(c_5, 23);
  c_34_5_1_False_shift <= shift_left(c_34_5_1_False_resize, 1);
  c_34_2_0_False_resize <= resize(c_2, 23);
  c_34_2_0_False_shift <= shift_left(c_34_2_0_False_resize, 0);
  with config_select_5 select c_34_sel <= 
    "0" when "1",
    "1" when others;
  with c_34_sel select c_34 <=
    c_34_5_1_False_shift when "0",
    c_34_2_0_False_shift when others;
  -- node of type 'output' in stage 5 with id 35 and associated fundamentals [[31], [110]]
  c_35_resize <= c_34;
  c_35 <= shift_left(c_35_resize, 0);
end architecture;
