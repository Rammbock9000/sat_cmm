library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(24 downto 0);
    y_3: out std_logic_vector(25 downto 0);
    y_4: out std_logic_vector(25 downto 0);
    clk: in std_logic
);
end entity;
architecture const_mul of const_mul is
  signal config_select_0: std_logic_vector(1 downto 0);
  signal config_select_1: std_logic_vector(1 downto 0);
  signal config_select_2: std_logic_vector(1 downto 0);
  signal config_select_3: std_logic_vector(1 downto 0);
  signal config_select_4: std_logic_vector(1 downto 0);
  signal config_select_5: std_logic_vector(1 downto 0);
  signal config_select_6: std_logic_vector(1 downto 0);
  signal config_select_7: std_logic_vector(1 downto 0);
  signal config_select_8: std_logic_vector(1 downto 0);
  signal config_select_9: std_logic_vector(1 downto 0);
  signal config_select_10: std_logic_vector(1 downto 0);
  signal config_select_11: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_i0_resize: signed(17 downto 0);
  signal c_1_i1_resize: signed(17 downto 0);
  signal c_1_i0_shift: signed(17 downto 0);
  signal c_1_i1_shift: signed(17 downto 0);
  signal c_1_arith: signed(17 downto 0);
  signal c_1_oshift: signed(17 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(17 downto 0);
  signal c_2_0_1_False_resize: signed(17 downto 0);
  signal c_2_0_1_False_shift: signed(17 downto 0);
  signal c_2_1_0_False_resize: signed(17 downto 0);
  signal c_2_1_0_False_shift: signed(17 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(20 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(20 downto 0);
  signal c_4_1_3_False_resize: signed(20 downto 0);
  signal c_4_1_3_False_shift: signed(20 downto 0);
  signal c_4_3_0_False_resize: signed(20 downto 0);
  signal c_4_3_0_False_shift: signed(20 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_5_i0_resize: signed(21 downto 0);
  signal c_5_i1_resize: signed(21 downto 0);
  signal c_5_i0_shift: signed(21 downto 0);
  signal c_5_i1_shift: signed(21 downto 0);
  signal c_5_arith: signed(21 downto 0);
  signal c_5_oshift: signed(21 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(24 downto 0);
  signal c_6_i0_resize: signed(24 downto 0);
  signal c_6_i1_resize: signed(24 downto 0);
  signal c_6_i0_shift: signed(24 downto 0);
  signal c_6_i1_shift: signed(24 downto 0);
  signal c_6_arith: signed(24 downto 0);
  signal c_6_oshift: signed(24 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(22 downto 0);
  signal c_7_1_5_False_resize: signed(22 downto 0);
  signal c_7_1_5_False_shift: signed(22 downto 0);
  signal c_7_5_0_False_resize: signed(22 downto 0);
  signal c_7_5_0_False_shift: signed(22 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_5_1_False_resize: signed(22 downto 0);
  signal c_8_5_1_False_shift: signed(22 downto 0);
  signal c_8_6_0_False_resize: signed(22 downto 0);
  signal c_8_6_0_False_shift: signed(22 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(25 downto 0);
  signal c_10_0_10_False_resize: signed(25 downto 0);
  signal c_10_0_10_False_shift: signed(25 downto 0);
  signal c_10_5_0_False_resize: signed(25 downto 0);
  signal c_10_5_0_False_shift: signed(25 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(25 downto 0);
  signal c_11_i0_resize: signed(25 downto 0);
  signal c_11_i1_resize: signed(25 downto 0);
  signal c_11_i0_shift: signed(25 downto 0);
  signal c_11_i1_shift: signed(25 downto 0);
  signal c_11_arith: signed(25 downto 0);
  signal c_11_oshift: signed(25 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(25 downto 0);
  signal c_12_i0_resize: signed(25 downto 0);
  signal c_12_i1_resize: signed(25 downto 0);
  signal c_12_i0_shift: signed(25 downto 0);
  signal c_12_i1_shift: signed(25 downto 0);
  signal c_12_arith: signed(25 downto 0);
  signal c_12_oshift: signed(25 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(20 downto 0);
  signal c_13_0_2_False_resize: signed(20 downto 0);
  signal c_13_0_2_False_shift: signed(20 downto 0);
  signal c_13_3_0_False_resize: signed(20 downto 0);
  signal c_13_3_0_False_shift: signed(20 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(21 downto 0);
  signal c_14_0_0_False_resize: signed(21 downto 0);
  signal c_14_0_0_False_shift: signed(21 downto 0);
  signal c_14_3_2_False_resize: signed(21 downto 0);
  signal c_14_3_2_False_shift: signed(21 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_i0_resize: signed(25 downto 0);
  signal c_15_i1_resize: signed(25 downto 0);
  signal c_15_i0_shift: signed(25 downto 0);
  signal c_15_i1_shift: signed(25 downto 0);
  signal c_15_arith: signed(25 downto 0);
  signal c_15_oshift: signed(25 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(23 downto 0);
  signal c_16_9_1_False_resize: signed(23 downto 0);
  signal c_16_9_1_False_shift: signed(23 downto 0);
  signal c_16_1_0_False_resize: signed(23 downto 0);
  signal c_16_1_0_False_shift: signed(23 downto 0);
  signal c_16_11_6_False_resize: signed(23 downto 0);
  signal c_16_11_6_False_shift: signed(23 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_i0_resize: signed(25 downto 0);
  signal c_17_i1_resize: signed(25 downto 0);
  signal c_17_i0_shift: signed(25 downto 0);
  signal c_17_i1_shift: signed(25 downto 0);
  signal c_17_arith: signed(25 downto 0);
  signal c_17_oshift: signed(25 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(20 downto 0);
  signal c_18_11_2_False_resize: signed(20 downto 0);
  signal c_18_11_2_False_shift: signed(20 downto 0);
  signal c_18_3_0_False_resize: signed(20 downto 0);
  signal c_18_3_0_False_shift: signed(20 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_i0_resize: signed(25 downto 0);
  signal c_19_i1_resize: signed(25 downto 0);
  signal c_19_i0_shift: signed(25 downto 0);
  signal c_19_i1_shift: signed(25 downto 0);
  signal c_19_arith: signed(25 downto 0);
  signal c_19_oshift: signed(25 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(25 downto 0);
  signal c_20_12_0_False_resize: signed(25 downto 0);
  signal c_20_12_0_False_shift: signed(25 downto 0);
  signal c_20_1_8_False_resize: signed(25 downto 0);
  signal c_20_1_8_False_shift: signed(25 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_resize: signed(25 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_resize: signed(25 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_5_1_False_resize: signed(23 downto 0);
  signal c_23_5_1_False_shift: signed(23 downto 0);
  signal c_23_9_0_False_resize: signed(23 downto 0);
  signal c_23_9_0_False_shift: signed(23 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(24 downto 0);
  signal c_24_resize: signed(24 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_resize: signed(25 downto 0);
  signal c_26: signed(24 downto 0);
  signal c_26_15_1_False_resize: signed(24 downto 0);
  signal c_26_15_1_False_shift: signed(24 downto 0);
  signal c_26_12_0_False_resize: signed(24 downto 0);
  signal c_26_12_0_False_shift: signed(24 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_resize: signed(25 downto 0);
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
  -- output node 0 with id 21
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_21);
    end if;
  end process;
  -- output node 1 with id 22
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_22);
    end if;
  end process;
  -- output node 2 with id 24
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_24);
    end if;
  end process;
  -- output node 3 with id 25
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_25);
    end if;
  end process;
  -- output node 4 with id 27
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_27);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[1], [1], [3]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 18,
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
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  c_1 <= c_1_oshift(17 downto 0);
  -- node of type 'mux' in stage 2 with id 2 and associated fundamentals [[1], [2], [3]]
  c_2_0_1_False_resize <= resize(c_0, 18);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  c_2_1_0_False_resize <= c_1;
  c_2_1_0_False_shift <= shift_left(c_2_1_0_False_resize, 0);
  with config_select_2 select c_2_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_0_1_False_shift when "0",
    c_2_1_0_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 3 and associated fundamentals [[9], [6], [21]]
  with config_select_3 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(20 downto 0);
  -- node of type 'mux' in stage 4 with id 4 and associated fundamentals [[8], [6], [21]]
  c_4_1_3_False_resize <= resize(c_1, 21);
  c_4_1_3_False_shift <= shift_left(c_4_1_3_False_resize, 3);
  c_4_3_0_False_resize <= c_3;
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  with config_select_4 select c_4_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_1_3_False_shift when "0",
    c_4_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 5 and associated fundamentals [[15], [13], [43]]
  with config_select_5 select c_5_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
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
      sub_i => c_5_sub_sel,
      x_i => c_4,
      y_i => c_0,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(21 downto 0);
  -- node of type 'add_sub' in stage 4 with id 6 and associated fundamentals [[-108], [-72], [420]]
  with config_select_4 select c_6_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 21,
      w_o => 25,
      s_x_i => 2,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_6_sub_sel,
      x_i => c_3,
      y_i => c_3,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(24 downto 0);
  -- node of type 'mux' in stage 6 with id 7 and associated fundamentals [[15], [13], [96]]
  c_7_1_5_False_resize <= resize(c_1, 23);
  c_7_1_5_False_shift <= shift_left(c_7_1_5_False_resize, 5);
  c_7_5_0_False_resize <= resize(c_5, 23);
  c_7_5_0_False_shift <= shift_left(c_7_5_0_False_resize, 0);
  with config_select_6 select c_7_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_1_5_False_shift when "0",
    c_7_5_0_False_shift when others;
  -- node of type 'mux' in stage 6 with id 8 and associated fundamentals [[-108], [-72], [86]]
  c_8_5_1_False_resize <= resize(c_5, 23);
  c_8_5_1_False_shift <= shift_left(c_8_5_1_False_resize, 1);
  c_8_6_0_False_resize <= c_6(22 downto 0);
  c_8_6_0_False_shift <= shift_left(c_8_6_0_False_resize, 0);
  with config_select_6 select c_8_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_5_1_False_shift when "0",
    c_8_6_0_False_shift when others;
  -- node of type 'add_sub' in stage 7 with id 9 and associated fundamentals [[123], [-59], [182]]
  with config_select_7 select c_9_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
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
      sub_i => c_9_sub_sel,
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(23 downto 0);
  -- node of type 'mux' in stage 6 with id 10 and associated fundamentals [[15], [1024], [43]]
  c_10_0_10_False_resize <= resize(c_0, 26);
  c_10_0_10_False_shift <= shift_left(c_10_0_10_False_resize, 10);
  c_10_5_0_False_resize <= resize(c_5, 26);
  c_10_5_0_False_shift <= shift_left(c_10_5_0_False_resize, 0);
  with config_select_6 select c_10_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_10_sel select c_10 <=
    c_10_0_10_False_shift when "0",
    c_10_5_0_False_shift when others;
  -- node of type 'add_sub' in stage 7 with id 11 and associated fundamentals [[-3], [1036], [85]]
  with config_select_7 select c_11_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 21,
      w_o => 26,
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
      sub_i => c_11_sub_sel,
      x_i => c_10,
      y_i => c_3,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(25 downto 0);
  -- node of type 'add_sub' in stage 8 with id 12 and associated fundamentals [[105], [964], [505]]
  with config_select_8 select c_12_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
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
      x_i => c_11,
      y_i => c_6,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 13 and associated fundamentals [[4], [6], [21]]
  c_13_0_2_False_resize <= resize(c_0, 21);
  c_13_0_2_False_shift <= shift_left(c_13_0_2_False_resize, 2);
  c_13_3_0_False_resize <= c_3;
  c_13_3_0_False_shift <= shift_left(c_13_3_0_False_resize, 0);
  with config_select_4 select c_13_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_0_2_False_shift when "0",
    c_13_3_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 14 and associated fundamentals [[36], [1], [1]]
  c_14_0_0_False_resize <= resize(c_0, 22);
  c_14_0_0_False_shift <= shift_left(c_14_0_0_False_resize, 0);
  c_14_3_2_False_resize <= resize(c_3, 22);
  c_14_3_2_False_shift <= shift_left(c_14_3_2_False_resize, 2);
  with config_select_4 select c_14_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_0_0_False_shift when "0",
    c_14_3_2_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 15 and associated fundamentals [[92], [191], [673]]
  with config_select_5 select c_15_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 22,
      w_o => 26,
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
      sub_i => c_15_sub_sel,
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(25 downto 0);
  -- node of type 'mux' in stage 8 with id 16 and associated fundamentals [[-192], [-118], [3]]
  c_16_9_1_False_resize <= c_9;
  c_16_9_1_False_shift <= shift_left(c_16_9_1_False_resize, 1);
  c_16_1_0_False_resize <= resize(c_1, 24);
  c_16_1_0_False_shift <= shift_left(c_16_1_0_False_resize, 0);
  c_16_11_6_False_resize <= c_11(23 downto 0);
  c_16_11_6_False_shift <= shift_left(c_16_11_6_False_resize, 6);
  with config_select_8 select c_16_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_16_sel select c_16 <=
    c_16_9_1_False_shift when "00",
    c_16_1_0_False_shift when "01",
    c_16_11_6_False_shift when others;
  -- node of type 'add_sub' in stage 9 with id 17 and associated fundamentals [[860], [663], [685]]
  with config_select_9 select c_17_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
      w_o => 26,
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
      sub_i => c_17_sub_sel,
      x_i => c_15,
      y_i => c_16,
      z_o => c_17_oshift
    );
  c_17 <= c_17_oshift(25 downto 0);
  -- node of type 'mux' in stage 8 with id 18 and associated fundamentals [[-12], [6], [21]]
  c_18_11_2_False_resize <= c_11(20 downto 0);
  c_18_11_2_False_shift <= shift_left(c_18_11_2_False_resize, 2);
  c_18_3_0_False_resize <= c_3;
  c_18_3_0_False_shift <= shift_left(c_18_3_0_False_resize, 0);
  with config_select_8 select c_18_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_18_sel select c_18 <=
    c_18_11_2_False_shift when "0",
    c_18_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 9 with id 19 and associated fundamentals [[268], [262], [747]]
  with config_select_9 select c_19_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 21,
      w_o => 26,
      s_x_i => 8,
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
      x_i => c_1,
      y_i => c_18,
      z_o => c_19_oshift
    );
  c_19 <= c_19_oshift(25 downto 0);
  -- node of type 'mux' in stage 9 with id 20 and associated fundamentals [[105], [964], [768]]
  c_20_12_0_False_resize <= c_12;
  c_20_12_0_False_shift <= shift_left(c_20_12_0_False_resize, 0);
  c_20_1_8_False_resize <= resize(c_1, 26);
  c_20_1_8_False_shift <= shift_left(c_20_1_8_False_resize, 8);
  with config_select_9 select c_20_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_20_sel select c_20 <=
    c_20_12_0_False_shift when "0",
    c_20_1_8_False_shift when others;
  -- node of type 'output' in stage 9 with id 21 and associated fundamentals [[105], [964], [768]]
  c_21_resize <= c_20;
  c_21 <= shift_left(c_21_resize, 0);
  -- node of type 'output' in stage 9 with id 22 and associated fundamentals [[860], [663], [685]]
  c_22_resize <= c_17;
  c_22 <= shift_left(c_22_resize, 0);
  -- node of type 'mux' in stage 8 with id 23 and associated fundamentals [[123], [26], [182]]
  c_23_5_1_False_resize <= resize(c_5, 24);
  c_23_5_1_False_shift <= shift_left(c_23_5_1_False_resize, 1);
  c_23_9_0_False_resize <= c_9;
  c_23_9_0_False_shift <= shift_left(c_23_9_0_False_resize, 0);
  with config_select_8 select c_23_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_23_sel select c_23 <=
    c_23_5_1_False_shift when "0",
    c_23_9_0_False_shift when others;
  -- node of type 'output' in stage 8 with id 24 and associated fundamentals [[246], [52], [364]]
  c_24_resize <= resize(c_23, 25);
  c_24 <= shift_left(c_24_resize, 1);
  -- node of type 'output' in stage 9 with id 25 and associated fundamentals [[268], [262], [747]]
  c_25_resize <= c_19;
  c_25 <= shift_left(c_25_resize, 0);
  -- node of type 'mux' in stage 9 with id 26 and associated fundamentals [[184], [382], [505]]
  c_26_15_1_False_resize <= c_15(24 downto 0);
  c_26_15_1_False_shift <= shift_left(c_26_15_1_False_resize, 1);
  c_26_12_0_False_resize <= c_12(24 downto 0);
  c_26_12_0_False_shift <= shift_left(c_26_12_0_False_resize, 0);
  with config_select_9 select c_26_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_26_sel select c_26 <=
    c_26_15_1_False_shift when "0",
    c_26_12_0_False_shift when others;
  -- node of type 'output' in stage 9 with id 27 and associated fundamentals [[368], [764], [1010]]
  c_27_resize <= resize(c_26, 26);
  c_27 <= shift_left(c_27_resize, 1);
end architecture;
