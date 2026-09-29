library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(22 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(22 downto 0);
    y_4: out std_logic_vector(23 downto 0);
    y_5: out std_logic_vector(21 downto 0);
    y_6: out std_logic_vector(23 downto 0);
    y_7: out std_logic_vector(23 downto 0);
    y_8: out std_logic_vector(21 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_i0_resize: signed(18 downto 0);
  signal c_1_i1_resize: signed(18 downto 0);
  signal c_1_i0_shift: signed(18 downto 0);
  signal c_1_i1_shift: signed(18 downto 0);
  signal c_1_arith: signed(18 downto 0);
  signal c_1_oshift: signed(18 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(21 downto 0);
  signal c_2_i0_resize: signed(21 downto 0);
  signal c_2_i1_resize: signed(21 downto 0);
  signal c_2_i0_shift: signed(21 downto 0);
  signal c_2_i1_shift: signed(21 downto 0);
  signal c_2_arith: signed(21 downto 0);
  signal c_2_oshift: signed(21 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(22 downto 0);
  signal c_4_1_5_False_resize: signed(22 downto 0);
  signal c_4_1_5_False_shift: signed(22 downto 0);
  signal c_4_0_0_False_resize: signed(22 downto 0);
  signal c_4_0_0_False_shift: signed(22 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_i0_resize: signed(22 downto 0);
  signal c_5_i1_resize: signed(22 downto 0);
  signal c_5_i0_shift: signed(22 downto 0);
  signal c_5_i1_shift: signed(22 downto 0);
  signal c_5_arith: signed(22 downto 0);
  signal c_5_oshift: signed(22 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(20 downto 0);
  signal c_6_0_4_False_resize: signed(20 downto 0);
  signal c_6_0_4_False_shift: signed(20 downto 0);
  signal c_6_5_0_False_resize: signed(20 downto 0);
  signal c_6_5_0_False_shift: signed(20 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(20 downto 0);
  signal c_7_5_0_False_resize: signed(20 downto 0);
  signal c_7_5_0_False_shift: signed(20 downto 0);
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
  signal c_9: signed(23 downto 0);
  signal c_9_1_2_False_resize: signed(23 downto 0);
  signal c_9_1_2_False_shift: signed(23 downto 0);
  signal c_9_8_0_False_resize: signed(23 downto 0);
  signal c_9_8_0_False_shift: signed(23 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_i0_resize: signed(23 downto 0);
  signal c_10_i1_resize: signed(23 downto 0);
  signal c_10_i0_shift: signed(23 downto 0);
  signal c_10_i1_shift: signed(23 downto 0);
  signal c_10_arith: signed(23 downto 0);
  signal c_10_oshift: signed(23 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_8_0_False_resize: signed(23 downto 0);
  signal c_11_8_0_False_shift: signed(23 downto 0);
  signal c_11_3_3_False_resize: signed(23 downto 0);
  signal c_11_3_3_False_shift: signed(23 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_i0_resize: signed(23 downto 0);
  signal c_12_i1_resize: signed(23 downto 0);
  signal c_12_i0_shift: signed(23 downto 0);
  signal c_12_i1_shift: signed(23 downto 0);
  signal c_12_arith: signed(23 downto 0);
  signal c_12_oshift: signed(23 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(23 downto 0);
  signal c_13_1_0_False_resize: signed(23 downto 0);
  signal c_13_1_0_False_shift: signed(23 downto 0);
  signal c_13_3_3_False_resize: signed(23 downto 0);
  signal c_13_3_3_False_shift: signed(23 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_i0_resize: signed(23 downto 0);
  signal c_14_i1_resize: signed(23 downto 0);
  signal c_14_i0_shift: signed(23 downto 0);
  signal c_14_i1_shift: signed(23 downto 0);
  signal c_14_arith: signed(23 downto 0);
  signal c_14_oshift: signed(23 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(21 downto 0);
  signal c_15_14_0_False_resize: signed(21 downto 0);
  signal c_15_14_0_False_shift: signed(21 downto 0);
  signal c_15_3_0_False_resize: signed(21 downto 0);
  signal c_15_3_0_False_shift: signed(21 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_i0_resize: signed(23 downto 0);
  signal c_16_i1_resize: signed(23 downto 0);
  signal c_16_i0_shift: signed(23 downto 0);
  signal c_16_i1_shift: signed(23 downto 0);
  signal c_16_arith: signed(23 downto 0);
  signal c_16_oshift: signed(23 downto 0);
  signal c_17: signed(22 downto 0);
  signal c_17_i0_resize: signed(22 downto 0);
  signal c_17_i1_resize: signed(22 downto 0);
  signal c_17_i0_shift: signed(22 downto 0);
  signal c_17_i1_shift: signed(22 downto 0);
  signal c_17_arith: signed(22 downto 0);
  signal c_17_oshift: signed(22 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_resize: signed(23 downto 0);
  signal c_19: signed(22 downto 0);
  signal c_19_1_2_False_resize: signed(22 downto 0);
  signal c_19_1_2_False_shift: signed(22 downto 0);
  signal c_19_17_0_False_resize: signed(22 downto 0);
  signal c_19_17_0_False_shift: signed(22 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_20_resize: signed(22 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_resize: signed(23 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_22_17_0_False_resize: signed(22 downto 0);
  signal c_22_17_0_False_shift: signed(22 downto 0);
  signal c_22_0_6_False_resize: signed(22 downto 0);
  signal c_22_0_6_False_shift: signed(22 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(22 downto 0);
  signal c_23_resize: signed(22 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_resize: signed(23 downto 0);
  signal c_25: signed(21 downto 0);
  signal c_25_3_1_False_resize: signed(21 downto 0);
  signal c_25_3_1_False_shift: signed(21 downto 0);
  signal c_25_2_0_False_resize: signed(21 downto 0);
  signal c_25_2_0_False_shift: signed(21 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(21 downto 0);
  signal c_26_resize: signed(21 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_resize: signed(23 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_resize: signed(23 downto 0);
  signal c_29: signed(21 downto 0);
  signal c_29_resize: signed(21 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 18
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_18);
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
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[5], [3]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
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
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  c_1 <= c_1_oshift(18 downto 0);
  -- node of type 'add_sub' in stage 1 with id 2 and associated fundamentals [[33], [31]]
  with config_select_1 select c_2_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 22,
      s_x_i => 5,
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
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(21 downto 0);
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[35], [27]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 22,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_1,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(21 downto 0);
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[1], [96]]
  c_4_1_5_False_resize <= resize(c_1, 23);
  c_4_1_5_False_shift <= shift_left(c_4_1_5_False_resize, 5);
  c_4_0_0_False_resize <= resize(c_0, 23);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  with config_select_2 select c_4_sel <= 
    "0" when "1",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_1_5_False_shift when "0",
    c_4_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[21], [84]]
  with config_select_3 select c_5_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 19,
      w_o => 23,
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
      x_i => c_4,
      y_i => c_1,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(22 downto 0);
  -- node of type 'mux' in stage 4 with id 6 and associated fundamentals [[21], [16]]
  c_6_0_4_False_resize <= resize(c_0, 21);
  c_6_0_4_False_shift <= shift_left(c_6_0_4_False_resize, 4);
  c_6_5_0_False_resize <= c_5(20 downto 0);
  c_6_5_0_False_shift <= shift_left(c_6_5_0_False_resize, 0);
  with config_select_4 select c_6_sel <= 
    "0" when "1",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_0_4_False_shift when "0",
    c_6_5_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 7 and associated fundamentals [[21], [31]]
  c_7_5_0_False_resize <= c_5(20 downto 0);
  c_7_5_0_False_shift <= shift_left(c_7_5_0_False_resize, 0);
  c_7_2_0_False_resize <= c_2(20 downto 0);
  c_7_2_0_False_shift <= shift_left(c_7_2_0_False_resize, 0);
  with config_select_4 select c_7_sel <= 
    "0" when "0",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_5_0_False_shift when "0",
    c_7_2_0_False_shift when others;
  -- node of type 'add' in stage 5 with id 8 and associated fundamentals [[189], [159]]
  inst_adder_node_8: entity work.adder_node
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
      sub => False
    )
    port map (
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(23 downto 0);
  -- node of type 'mux' in stage 6 with id 9 and associated fundamentals [[20], [159]]
  c_9_1_2_False_resize <= resize(c_1, 24);
  c_9_1_2_False_shift <= shift_left(c_9_1_2_False_resize, 2);
  c_9_8_0_False_resize <= c_8;
  c_9_8_0_False_shift <= shift_left(c_9_8_0_False_resize, 0);
  with config_select_6 select c_9_sel <= 
    "0" when "0",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_1_2_False_shift when "0",
    c_9_8_0_False_shift when others;
  -- node of type 'sub' in stage 7 with id 10 and associated fundamentals [[236], [97]]
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 24,
      w_o => 24,
      s_x_i => 8,
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
      y_i => c_9,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(23 downto 0);
  -- node of type 'mux' in stage 6 with id 11 and associated fundamentals [[189], [216]]
  c_11_8_0_False_resize <= c_8;
  c_11_8_0_False_shift <= shift_left(c_11_8_0_False_resize, 0);
  c_11_3_3_False_resize <= resize(c_3, 24);
  c_11_3_3_False_shift <= shift_left(c_11_3_3_False_resize, 3);
  with config_select_6 select c_11_sel <= 
    "0" when "0",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_8_0_False_shift when "0",
    c_11_3_3_False_shift when others;
  -- node of type 'add_sub' in stage 7 with id 12 and associated fundamentals [[187], [218]]
  with config_select_7 select c_12_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 16,
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
      sub_i => c_12_sub_sel,
      x_i => c_11,
      y_i => c_0,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[5], [216]]
  c_13_1_0_False_resize <= resize(c_1, 24);
  c_13_1_0_False_shift <= shift_left(c_13_1_0_False_resize, 0);
  c_13_3_3_False_resize <= resize(c_3, 24);
  c_13_3_3_False_shift <= shift_left(c_13_3_3_False_resize, 3);
  with config_select_3 select c_13_sel <= 
    "0" when "0",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_1_0_False_shift when "0",
    c_13_3_3_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 14 and associated fundamentals [[38], [185]]
  with config_select_4 select c_14_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
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
      sub_i => c_14_sub_sel,
      x_i => c_13,
      y_i => c_2,
      z_o => c_14_oshift
    );
  c_14 <= c_14_oshift(23 downto 0);
  -- node of type 'mux' in stage 5 with id 15 and associated fundamentals [[38], [27]]
  c_15_14_0_False_resize <= c_14(21 downto 0);
  c_15_14_0_False_shift <= shift_left(c_15_14_0_False_resize, 0);
  c_15_3_0_False_resize <= c_3;
  c_15_3_0_False_shift <= shift_left(c_15_3_0_False_resize, 0);
  with config_select_5 select c_15_sel <= 
    "0" when "0",
    "1" when others;
  with c_15_sel select c_15 <=
    c_15_14_0_False_shift when "0",
    c_15_3_0_False_shift when others;
  -- node of type 'add' in stage 6 with id 16 and associated fundamentals [[162], [114]]
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 22,
      w_o => 24,
      s_x_i => 1,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_1,
      y_i => c_15,
      z_o => c_16_oshift
    );
  c_16 <= c_16_oshift(23 downto 0);
  -- node of type 'sub' in stage 2 with id 17 and associated fundamentals [[127], [65]]
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 22,
      w_o => 23,
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
      x_i => c_1,
      y_i => c_2,
      z_o => c_17_oshift
    );
  c_17 <= c_17_oshift(22 downto 0);
  -- node of type 'output' in stage 7 with id 18 and associated fundamentals [[187], [218]]
  c_18_resize <= c_12;
  c_18 <= shift_left(c_18_resize, 0);
  -- node of type 'mux' in stage 3 with id 19 and associated fundamentals [[20], [65]]
  c_19_1_2_False_resize <= resize(c_1, 23);
  c_19_1_2_False_shift <= shift_left(c_19_1_2_False_resize, 2);
  c_19_17_0_False_resize <= c_17;
  c_19_17_0_False_shift <= shift_left(c_19_17_0_False_resize, 0);
  with config_select_3 select c_19_sel <= 
    "0" when "0",
    "1" when others;
  with c_19_sel select c_19 <=
    c_19_1_2_False_shift when "0",
    c_19_17_0_False_shift when others;
  -- node of type 'output' in stage 3 with id 20 and associated fundamentals [[20], [65]]
  c_20_resize <= c_19;
  c_20 <= shift_left(c_20_resize, 0);
  -- node of type 'output' in stage 3 with id 21 and associated fundamentals [[42], [168]]
  c_21_resize <= resize(c_5, 24);
  c_21 <= shift_left(c_21_resize, 1);
  -- node of type 'mux' in stage 3 with id 22 and associated fundamentals [[127], [64]]
  c_22_17_0_False_resize <= c_17;
  c_22_17_0_False_shift <= shift_left(c_22_17_0_False_resize, 0);
  c_22_0_6_False_resize <= resize(c_0, 23);
  c_22_0_6_False_shift <= shift_left(c_22_0_6_False_resize, 6);
  with config_select_3 select c_22_sel <= 
    "0" when "0",
    "1" when others;
  with c_22_sel select c_22 <=
    c_22_17_0_False_shift when "0",
    c_22_0_6_False_shift when others;
  -- node of type 'output' in stage 3 with id 23 and associated fundamentals [[127], [64]]
  c_23_resize <= c_22;
  c_23 <= shift_left(c_23_resize, 0);
  -- node of type 'output' in stage 7 with id 24 and associated fundamentals [[236], [97]]
  c_24_resize <= c_10;
  c_24 <= shift_left(c_24_resize, 0);
  -- node of type 'mux' in stage 3 with id 25 and associated fundamentals [[33], [54]]
  c_25_3_1_False_resize <= c_3;
  c_25_3_1_False_shift <= shift_left(c_25_3_1_False_resize, 1);
  c_25_2_0_False_resize <= c_2;
  c_25_2_0_False_shift <= shift_left(c_25_2_0_False_resize, 0);
  with config_select_3 select c_25_sel <= 
    "0" when "1",
    "1" when others;
  with c_25_sel select c_25 <=
    c_25_3_1_False_shift when "0",
    c_25_2_0_False_shift when others;
  -- node of type 'output' in stage 3 with id 26 and associated fundamentals [[33], [54]]
  c_26_resize <= c_25;
  c_26 <= shift_left(c_26_resize, 0);
  -- node of type 'output' in stage 6 with id 27 and associated fundamentals [[162], [114]]
  c_27_resize <= c_16;
  c_27 <= shift_left(c_27_resize, 0);
  -- node of type 'output' in stage 5 with id 28 and associated fundamentals [[189], [159]]
  c_28_resize <= c_8;
  c_28 <= shift_left(c_28_resize, 0);
  -- node of type 'output' in stage 2 with id 29 and associated fundamentals [[35], [27]]
  c_29_resize <= c_3;
  c_29 <= shift_left(c_29_resize, 0);
  -- node of type 'output' in stage 4 with id 30 and associated fundamentals [[38], [185]]
  c_30_resize <= c_14;
  c_30 <= shift_left(c_30_resize, 0);
end architecture;
