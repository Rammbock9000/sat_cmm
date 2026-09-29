library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(22 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(23 downto 0);
    y_5: out std_logic_vector(23 downto 0);
    y_6: out std_logic_vector(22 downto 0);
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
  signal config_select_10: std_logic_vector(0 downto 0);
  signal config_select_11: std_logic_vector(0 downto 0);
  signal config_select_12: std_logic_vector(0 downto 0);
  signal config_select_13: std_logic_vector(0 downto 0);
  signal config_select_14: std_logic_vector(0 downto 0);
  signal config_select_15: std_logic_vector(0 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(21 downto 0);
  signal c_1_i0_resize: signed(21 downto 0);
  signal c_1_i1_resize: signed(21 downto 0);
  signal c_1_i0_shift: signed(21 downto 0);
  signal c_1_i1_shift: signed(21 downto 0);
  signal c_1_arith: signed(21 downto 0);
  signal c_1_oshift: signed(21 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(20 downto 0);
  signal c_2_0_1_False_resize: signed(20 downto 0);
  signal c_2_0_1_False_shift: signed(20 downto 0);
  signal c_2_1_0_False_resize: signed(20 downto 0);
  signal c_2_1_0_False_shift: signed(20 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(22 downto 0);
  signal c_4_i0_resize: signed(22 downto 0);
  signal c_4_i1_resize: signed(22 downto 0);
  signal c_4_i0_shift: signed(22 downto 0);
  signal c_4_i1_shift: signed(22 downto 0);
  signal c_4_arith: signed(22 downto 0);
  signal c_4_oshift: signed(22 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_5_3_0_False_resize: signed(21 downto 0);
  signal c_5_3_0_False_shift: signed(21 downto 0);
  signal c_5_0_3_False_resize: signed(21 downto 0);
  signal c_5_0_3_False_shift: signed(21 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(23 downto 0);
  signal c_6_i0_resize: signed(23 downto 0);
  signal c_6_i1_resize: signed(23 downto 0);
  signal c_6_i0_shift: signed(23 downto 0);
  signal c_6_i1_shift: signed(23 downto 0);
  signal c_6_arith: signed(23 downto 0);
  signal c_6_oshift: signed(23 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_6_0_False_resize: signed(23 downto 0);
  signal c_7_6_0_False_shift: signed(23 downto 0);
  signal c_7_3_0_False_resize: signed(23 downto 0);
  signal c_7_3_0_False_shift: signed(23 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_8_i0_resize: signed(23 downto 0);
  signal c_8_i1_resize: signed(23 downto 0);
  signal c_8_i0_shift: signed(23 downto 0);
  signal c_8_i1_shift: signed(23 downto 0);
  signal c_8_arith: signed(23 downto 0);
  signal c_8_oshift: signed(23 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(22 downto 0);
  signal c_9_3_4_False_resize: signed(22 downto 0);
  signal c_9_3_4_False_shift: signed(22 downto 0);
  signal c_9_8_0_False_resize: signed(22 downto 0);
  signal c_9_8_0_False_shift: signed(22 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_i0_resize: signed(22 downto 0);
  signal c_10_i1_resize: signed(22 downto 0);
  signal c_10_i0_shift: signed(22 downto 0);
  signal c_10_i1_shift: signed(22 downto 0);
  signal c_10_arith: signed(22 downto 0);
  signal c_10_oshift: signed(22 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(20 downto 0);
  signal c_11_8_0_False_resize: signed(20 downto 0);
  signal c_11_8_0_False_shift: signed(20 downto 0);
  signal c_11_0_3_False_resize: signed(20 downto 0);
  signal c_11_0_3_False_shift: signed(20 downto 0);
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
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_8_3_False_resize: signed(23 downto 0);
  signal c_14_8_3_False_shift: signed(23 downto 0);
  signal c_14_13_0_False_resize: signed(23 downto 0);
  signal c_14_13_0_False_shift: signed(23 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_i0_resize: signed(23 downto 0);
  signal c_15_i1_resize: signed(23 downto 0);
  signal c_15_i0_shift: signed(23 downto 0);
  signal c_15_i1_shift: signed(23 downto 0);
  signal c_15_arith: signed(23 downto 0);
  signal c_15_oshift: signed(23 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(22 downto 0);
  signal c_16_4_0_False_resize: signed(22 downto 0);
  signal c_16_4_0_False_shift: signed(22 downto 0);
  signal c_16_8_0_False_resize: signed(22 downto 0);
  signal c_16_8_0_False_shift: signed(22 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_i0_resize: signed(23 downto 0);
  signal c_17_i1_resize: signed(23 downto 0);
  signal c_17_i0_shift: signed(23 downto 0);
  signal c_17_i1_shift: signed(23 downto 0);
  signal c_17_arith: signed(23 downto 0);
  signal c_17_oshift: signed(23 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(22 downto 0);
  signal c_18_resize: signed(22 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_resize: signed(23 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_1_3_False_resize: signed(23 downto 0);
  signal c_20_1_3_False_shift: signed(23 downto 0);
  signal c_20_8_0_False_resize: signed(23 downto 0);
  signal c_20_8_0_False_shift: signed(23 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_resize: signed(23 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_6_0_False_resize: signed(23 downto 0);
  signal c_22_6_0_False_shift: signed(23 downto 0);
  signal c_22_0_5_False_resize: signed(23 downto 0);
  signal c_22_0_5_False_shift: signed(23 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_resize: signed(23 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_4_1_False_resize: signed(23 downto 0);
  signal c_24_4_1_False_shift: signed(23 downto 0);
  signal c_24_17_0_False_resize: signed(23 downto 0);
  signal c_24_17_0_False_shift: signed(23 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_resize: signed(23 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_8_3_False_resize: signed(23 downto 0);
  signal c_26_8_3_False_shift: signed(23 downto 0);
  signal c_26_12_0_False_resize: signed(23 downto 0);
  signal c_26_12_0_False_shift: signed(23 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_resize: signed(23 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_28_17_0_False_resize: signed(22 downto 0);
  signal c_28_17_0_False_shift: signed(22 downto 0);
  signal c_28_3_2_False_resize: signed(22 downto 0);
  signal c_28_3_2_False_shift: signed(22 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_29_resize: signed(22 downto 0);
  signal c_30: signed(22 downto 0);
  signal c_30_12_0_False_resize: signed(22 downto 0);
  signal c_30_12_0_False_shift: signed(22 downto 0);
  signal c_30_4_0_False_resize: signed(22 downto 0);
  signal c_30_4_0_False_shift: signed(22 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_resize: signed(23 downto 0);
  signal c_32: signed(21 downto 0);
  signal c_32_3_0_False_resize: signed(21 downto 0);
  signal c_32_3_0_False_shift: signed(21 downto 0);
  signal c_32_6_0_False_resize: signed(21 downto 0);
  signal c_32_6_0_False_shift: signed(21 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(21 downto 0);
  signal c_33_resize: signed(21 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_resize: signed(23 downto 0);
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
      config_select_15 <= config_select;
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
  -- output node 1 with id 19
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_19);
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
  -- output node 4 with id 25
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_25);
    end if;
  end process;
  -- output node 5 with id 27
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_27);
    end if;
  end process;
  -- output node 6 with id 29
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_29);
    end if;
  end process;
  -- output node 7 with id 31
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_31);
    end if;
  end process;
  -- output node 8 with id 33
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_33);
    end if;
  end process;
  -- output node 9 with id 34
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_34);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[31], [33]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
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
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  c_1 <= c_1_oshift(21 downto 0);
  -- node of type 'mux' in stage 2 with id 2 and associated fundamentals [[31], [2]]
  c_2_0_1_False_resize <= resize(c_0, 21);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  c_2_1_0_False_resize <= c_1(20 downto 0);
  c_2_1_0_False_shift <= shift_left(c_2_1_0_False_resize, 0);
  with config_select_2 select c_2_sel <= 
    "0" when "1",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_0_1_False_shift when "0",
    c_2_1_0_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 3 and associated fundamentals [[61], [5]]
  with config_select_3 select c_3_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
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
      sub_i => c_3_sub_sel,
      x_i => c_2,
      y_i => c_0,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(21 downto 0);
  -- node of type 'add' in stage 4 with id 4 and associated fundamentals [[123], [71]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
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
      x_i => c_1,
      y_i => c_3,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(22 downto 0);
  -- node of type 'mux' in stage 4 with id 5 and associated fundamentals [[61], [8]]
  c_5_3_0_False_resize <= c_3;
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  c_5_0_3_False_resize <= resize(c_0, 22);
  c_5_0_3_False_shift <= shift_left(c_5_0_3_False_resize, 3);
  with config_select_4 select c_5_sel <= 
    "0" when "0",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_3_0_False_shift when "0",
    c_5_0_3_False_shift when others;
  -- node of type 'add' in stage 5 with id 6 and associated fundamentals [[153], [49]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 24,
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
      x_i => c_5,
      y_i => c_1,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(23 downto 0);
  -- node of type 'mux' in stage 6 with id 7 and associated fundamentals [[153], [5]]
  c_7_6_0_False_resize <= c_6;
  c_7_6_0_False_shift <= shift_left(c_7_6_0_False_resize, 0);
  c_7_3_0_False_resize <= resize(c_3, 24);
  c_7_3_0_False_shift <= shift_left(c_7_3_0_False_resize, 0);
  with config_select_6 select c_7_sel <= 
    "0" when "0",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_6_0_False_shift when "0",
    c_7_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 7 with id 8 and associated fundamentals [[25], [133]]
  with config_select_7 select c_8_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 16,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 7,
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
      y_i => c_0,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(23 downto 0);
  -- node of type 'mux' in stage 8 with id 9 and associated fundamentals [[25], [80]]
  c_9_3_4_False_resize <= resize(c_3, 23);
  c_9_3_4_False_shift <= shift_left(c_9_3_4_False_resize, 4);
  c_9_8_0_False_resize <= c_8(22 downto 0);
  c_9_8_0_False_shift <= shift_left(c_9_8_0_False_resize, 0);
  with config_select_8 select c_9_sel <= 
    "0" when "1",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_3_4_False_shift when "0",
    c_9_8_0_False_shift when others;
  -- node of type 'add_sub' in stage 9 with id 10 and associated fundamentals [[81], [127]]
  with config_select_9 select c_10_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
      w_o => 23,
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
      sub_i => c_10_sub_sel,
      x_i => c_9,
      y_i => c_1,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(22 downto 0);
  -- node of type 'mux' in stage 8 with id 11 and associated fundamentals [[25], [8]]
  c_11_8_0_False_resize <= c_8(20 downto 0);
  c_11_8_0_False_shift <= shift_left(c_11_8_0_False_resize, 0);
  c_11_0_3_False_resize <= resize(c_0, 21);
  c_11_0_3_False_shift <= shift_left(c_11_0_3_False_resize, 3);
  with config_select_8 select c_11_sel <= 
    "0" when "0",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_8_0_False_shift when "0",
    c_11_0_3_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 12 and associated fundamentals [[119], [191]]
  with config_select_10 select c_12_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
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
      sub_i => c_12_sub_sel,
      x_i => c_11,
      y_i => c_10,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(23 downto 0);
  -- node of type 'sub' in stage 11 with id 13 and associated fundamentals [[117], [189]]
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 16,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_12,
      y_i => c_0,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(23 downto 0);
  -- node of type 'mux' in stage 12 with id 14 and associated fundamentals [[200], [189]]
  c_14_8_3_False_resize <= c_8;
  c_14_8_3_False_shift <= shift_left(c_14_8_3_False_resize, 3);
  c_14_13_0_False_resize <= c_13;
  c_14_13_0_False_shift <= shift_left(c_14_13_0_False_resize, 0);
  with config_select_12 select c_14_sel <= 
    "0" when "0",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_8_3_False_shift when "0",
    c_14_13_0_False_shift when others;
  -- node of type 'add_sub' in stage 13 with id 15 and associated fundamentals [[204], [185]]
  with config_select_13 select c_15_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 16,
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
      sub_i => c_15_sub_sel,
      x_i => c_14,
      y_i => c_0,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(23 downto 0);
  -- node of type 'mux' in stage 8 with id 16 and associated fundamentals [[25], [71]]
  c_16_4_0_False_resize <= c_4;
  c_16_4_0_False_shift <= shift_left(c_16_4_0_False_resize, 0);
  c_16_8_0_False_resize <= c_8(22 downto 0);
  c_16_8_0_False_shift <= shift_left(c_16_8_0_False_resize, 0);
  with config_select_8 select c_16_sel <= 
    "0" when "1",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_4_0_False_shift when "0",
    c_16_8_0_False_shift when others;
  -- node of type 'add_sub' in stage 9 with id 17 and associated fundamentals [[99], [203]]
  with config_select_9 select c_17_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
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
      sub_i => c_17_sub_sel,
      x_i => c_1,
      y_i => c_16,
      z_o => c_17_oshift
    );
  c_17 <= c_17_oshift(23 downto 0);
  -- node of type 'output' in stage 9 with id 18 and associated fundamentals [[81], [127]]
  c_18_resize <= c_10;
  c_18 <= shift_left(c_18_resize, 0);
  -- node of type 'output' in stage 11 with id 19 and associated fundamentals [[117], [189]]
  c_19_resize <= c_13;
  c_19 <= shift_left(c_19_resize, 0);
  -- node of type 'mux' in stage 8 with id 20 and associated fundamentals [[248], [133]]
  c_20_1_3_False_resize <= resize(c_1, 24);
  c_20_1_3_False_shift <= shift_left(c_20_1_3_False_resize, 3);
  c_20_8_0_False_resize <= c_8;
  c_20_8_0_False_shift <= shift_left(c_20_8_0_False_resize, 0);
  with config_select_8 select c_20_sel <= 
    "0" when "0",
    "1" when others;
  with c_20_sel select c_20 <=
    c_20_1_3_False_shift when "0",
    c_20_8_0_False_shift when others;
  -- node of type 'output' in stage 8 with id 21 and associated fundamentals [[248], [133]]
  c_21_resize <= c_20;
  c_21 <= shift_left(c_21_resize, 0);
  -- node of type 'mux' in stage 6 with id 22 and associated fundamentals [[153], [32]]
  c_22_6_0_False_resize <= c_6;
  c_22_6_0_False_shift <= shift_left(c_22_6_0_False_resize, 0);
  c_22_0_5_False_resize <= resize(c_0, 24);
  c_22_0_5_False_shift <= shift_left(c_22_0_5_False_resize, 5);
  with config_select_6 select c_22_sel <= 
    "0" when "0",
    "1" when others;
  with c_22_sel select c_22 <=
    c_22_6_0_False_shift when "0",
    c_22_0_5_False_shift when others;
  -- node of type 'output' in stage 6 with id 23 and associated fundamentals [[153], [32]]
  c_23_resize <= c_22;
  c_23 <= shift_left(c_23_resize, 0);
  -- node of type 'mux' in stage 10 with id 24 and associated fundamentals [[246], [203]]
  c_24_4_1_False_resize <= resize(c_4, 24);
  c_24_4_1_False_shift <= shift_left(c_24_4_1_False_resize, 1);
  c_24_17_0_False_resize <= c_17;
  c_24_17_0_False_shift <= shift_left(c_24_17_0_False_resize, 0);
  with config_select_10 select c_24_sel <= 
    "0" when "0",
    "1" when others;
  with c_24_sel select c_24 <=
    c_24_4_1_False_shift when "0",
    c_24_17_0_False_shift when others;
  -- node of type 'output' in stage 10 with id 25 and associated fundamentals [[246], [203]]
  c_25_resize <= c_24;
  c_25 <= shift_left(c_25_resize, 0);
  -- node of type 'mux' in stage 11 with id 26 and associated fundamentals [[200], [191]]
  c_26_8_3_False_resize <= c_8;
  c_26_8_3_False_shift <= shift_left(c_26_8_3_False_resize, 3);
  c_26_12_0_False_resize <= c_12;
  c_26_12_0_False_shift <= shift_left(c_26_12_0_False_resize, 0);
  with config_select_11 select c_26_sel <= 
    "0" when "0",
    "1" when others;
  with c_26_sel select c_26 <=
    c_26_8_3_False_shift when "0",
    c_26_12_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 27 and associated fundamentals [[200], [191]]
  c_27_resize <= c_26;
  c_27 <= shift_left(c_27_resize, 0);
  -- node of type 'mux' in stage 10 with id 28 and associated fundamentals [[99], [20]]
  c_28_17_0_False_resize <= c_17(22 downto 0);
  c_28_17_0_False_shift <= shift_left(c_28_17_0_False_resize, 0);
  c_28_3_2_False_resize <= resize(c_3, 23);
  c_28_3_2_False_shift <= shift_left(c_28_3_2_False_resize, 2);
  with config_select_10 select c_28_sel <= 
    "0" when "0",
    "1" when others;
  with c_28_sel select c_28 <=
    c_28_17_0_False_shift when "0",
    c_28_3_2_False_shift when others;
  -- node of type 'output' in stage 10 with id 29 and associated fundamentals [[99], [20]]
  c_29_resize <= c_28;
  c_29 <= shift_left(c_29_resize, 0);
  -- node of type 'mux' in stage 11 with id 30 and associated fundamentals [[119], [71]]
  c_30_12_0_False_resize <= c_12(22 downto 0);
  c_30_12_0_False_shift <= shift_left(c_30_12_0_False_resize, 0);
  c_30_4_0_False_resize <= c_4;
  c_30_4_0_False_shift <= shift_left(c_30_4_0_False_resize, 0);
  with config_select_11 select c_30_sel <= 
    "0" when "0",
    "1" when others;
  with c_30_sel select c_30 <=
    c_30_12_0_False_shift when "0",
    c_30_4_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 31 and associated fundamentals [[238], [142]]
  c_31_resize <= resize(c_30, 24);
  c_31 <= shift_left(c_31_resize, 1);
  -- node of type 'mux' in stage 6 with id 32 and associated fundamentals [[61], [49]]
  c_32_3_0_False_resize <= c_3;
  c_32_3_0_False_shift <= shift_left(c_32_3_0_False_resize, 0);
  c_32_6_0_False_resize <= c_6(21 downto 0);
  c_32_6_0_False_shift <= shift_left(c_32_6_0_False_resize, 0);
  with config_select_6 select c_32_sel <= 
    "0" when "0",
    "1" when others;
  with c_32_sel select c_32 <=
    c_32_3_0_False_shift when "0",
    c_32_6_0_False_shift when others;
  -- node of type 'output' in stage 6 with id 33 and associated fundamentals [[61], [49]]
  c_33_resize <= c_32;
  c_33 <= shift_left(c_33_resize, 0);
  -- node of type 'output' in stage 13 with id 34 and associated fundamentals [[204], [185]]
  c_34_resize <= c_15;
  c_34 <= shift_left(c_34_resize, 0);
end architecture;
