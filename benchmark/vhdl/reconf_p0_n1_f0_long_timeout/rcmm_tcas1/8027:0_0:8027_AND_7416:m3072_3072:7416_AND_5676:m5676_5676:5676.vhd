library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    x_1: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(29 downto 0);
    y_1: out std_logic_vector(29 downto 0);
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
  signal config_select_12: std_logic_vector(1 downto 0);
  signal config_select_13: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(20 downto 0);
  signal c_2_0_5_False_resize: signed(20 downto 0);
  signal c_2_0_5_False_shift: signed(20 downto 0);
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
  signal c_4: signed(28 downto 0);
  signal c_4_0_13_False_resize: signed(28 downto 0);
  signal c_4_0_13_False_shift: signed(28 downto 0);
  signal c_4_3_0_False_resize: signed(28 downto 0);
  signal c_4_3_0_False_shift: signed(28 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_5_0_4_False_resize: signed(21 downto 0);
  signal c_5_0_4_False_shift: signed(21 downto 0);
  signal c_5_3_0_False_resize: signed(21 downto 0);
  signal c_5_3_0_False_shift: signed(21 downto 0);
  signal c_5_3_5_False_resize: signed(21 downto 0);
  signal c_5_3_5_False_shift: signed(21 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(28 downto 0);
  signal c_6_i0_resize: signed(28 downto 0);
  signal c_6_i1_resize: signed(28 downto 0);
  signal c_6_i0_shift: signed(28 downto 0);
  signal c_6_i1_shift: signed(28 downto 0);
  signal c_6_arith: signed(28 downto 0);
  signal c_6_oshift: signed(28 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(16 downto 0);
  signal c_7_1_1_False_resize: signed(16 downto 0);
  signal c_7_1_1_False_shift: signed(16 downto 0);
  signal c_7_0_0_False_resize: signed(16 downto 0);
  signal c_7_0_0_False_shift: signed(16 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(17 downto 0);
  signal c_8_0_0_False_resize: signed(17 downto 0);
  signal c_8_0_0_False_shift: signed(17 downto 0);
  signal c_8_1_2_False_resize: signed(17 downto 0);
  signal c_8_1_2_False_shift: signed(17 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_9_i0_resize: signed(21 downto 0);
  signal c_9_i1_resize: signed(21 downto 0);
  signal c_9_i0_shift: signed(21 downto 0);
  signal c_9_i1_shift: signed(21 downto 0);
  signal c_9_arith: signed(21 downto 0);
  signal c_9_oshift: signed(21 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(25 downto 0);
  signal c_10_3_0_False_resize: signed(25 downto 0);
  signal c_10_3_0_False_shift: signed(25 downto 0);
  signal c_10_6_1_False_resize: signed(25 downto 0);
  signal c_10_6_1_False_shift: signed(25 downto 0);
  signal c_10_6_3_False_resize: signed(25 downto 0);
  signal c_10_6_3_False_shift: signed(25 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(28 downto 0);
  signal c_11_1_10_False_resize: signed(28 downto 0);
  signal c_11_1_10_False_shift: signed(28 downto 0);
  signal c_11_6_0_False_resize: signed(28 downto 0);
  signal c_11_6_0_False_shift: signed(28 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(28 downto 0);
  signal c_12_i0_resize: signed(28 downto 0);
  signal c_12_i1_resize: signed(28 downto 0);
  signal c_12_i0_shift: signed(28 downto 0);
  signal c_12_i1_shift: signed(28 downto 0);
  signal c_12_arith: signed(28 downto 0);
  signal c_12_oshift: signed(28 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(20 downto 0);
  signal c_13_1_5_False_resize: signed(20 downto 0);
  signal c_13_1_5_False_shift: signed(20 downto 0);
  signal c_13_1_0_False_resize: signed(20 downto 0);
  signal c_13_1_0_False_shift: signed(20 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(21 downto 0);
  signal c_14_9_0_False_resize: signed(21 downto 0);
  signal c_14_9_0_False_shift: signed(21 downto 0);
  signal c_14_9_3_False_resize: signed(21 downto 0);
  signal c_14_9_3_False_shift: signed(21 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_15_i0_resize: signed(22 downto 0);
  signal c_15_i1_resize: signed(22 downto 0);
  signal c_15_i0_shift: signed(22 downto 0);
  signal c_15_i1_shift: signed(22 downto 0);
  signal c_15_arith: signed(22 downto 0);
  signal c_15_oshift: signed(22 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(29 downto 0);
  signal c_16_9_10_False_resize: signed(29 downto 0);
  signal c_16_9_10_False_shift: signed(29 downto 0);
  signal c_16_15_0_False_resize: signed(29 downto 0);
  signal c_16_15_0_False_shift: signed(29 downto 0);
  signal c_16_15_5_False_resize: signed(29 downto 0);
  signal c_16_15_5_False_shift: signed(29 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(26 downto 0);
  signal c_17_1_11_False_resize: signed(26 downto 0);
  signal c_17_1_11_False_shift: signed(26 downto 0);
  signal c_17_12_0_False_resize: signed(26 downto 0);
  signal c_17_12_0_False_shift: signed(26 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(29 downto 0);
  signal c_18_i0_resize: signed(29 downto 0);
  signal c_18_i1_resize: signed(29 downto 0);
  signal c_18_i0_shift: signed(29 downto 0);
  signal c_18_i1_shift: signed(29 downto 0);
  signal c_18_arith: signed(29 downto 0);
  signal c_18_oshift: signed(29 downto 0);
  signal c_19: signed(28 downto 0);
  signal c_19_12_0_False_resize: signed(28 downto 0);
  signal c_19_12_0_False_shift: signed(28 downto 0);
  signal c_19_15_4_False_resize: signed(28 downto 0);
  signal c_19_15_4_False_shift: signed(28 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(24 downto 0);
  signal c_20_9_0_False_resize: signed(24 downto 0);
  signal c_20_9_0_False_shift: signed(24 downto 0);
  signal c_20_6_0_False_resize: signed(24 downto 0);
  signal c_20_6_0_False_shift: signed(24 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(29 downto 0);
  signal c_21_i0_resize: signed(29 downto 0);
  signal c_21_i1_resize: signed(29 downto 0);
  signal c_21_i0_shift: signed(29 downto 0);
  signal c_21_i1_shift: signed(29 downto 0);
  signal c_21_arith: signed(29 downto 0);
  signal c_21_oshift: signed(29 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(29 downto 0);
  signal c_22_15_0_False_resize: signed(29 downto 0);
  signal c_22_15_0_False_shift: signed(29 downto 0);
  signal c_22_21_2_False_resize: signed(29 downto 0);
  signal c_22_21_2_False_shift: signed(29 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(27 downto 0);
  signal c_23_18_0_False_resize: signed(27 downto 0);
  signal c_23_18_0_False_shift: signed(27 downto 0);
  signal c_23_1_1_False_resize: signed(27 downto 0);
  signal c_23_1_1_False_shift: signed(27 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(29 downto 0);
  signal c_24_i0_resize: signed(29 downto 0);
  signal c_24_i1_resize: signed(29 downto 0);
  signal c_24_i0_shift: signed(29 downto 0);
  signal c_24_i1_shift: signed(29 downto 0);
  signal c_24_arith: signed(29 downto 0);
  signal c_24_oshift: signed(29 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(29 downto 0);
  signal c_25_12_0_False_resize: signed(29 downto 0);
  signal c_25_12_0_False_shift: signed(29 downto 0);
  signal c_25_24_0_False_resize: signed(29 downto 0);
  signal c_25_24_0_False_shift: signed(29 downto 0);
  signal c_25_18_0_False_resize: signed(29 downto 0);
  signal c_25_18_0_False_shift: signed(29 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(29 downto 0);
  signal c_26_resize: signed(29 downto 0);
  signal c_27: signed(29 downto 0);
  signal c_27_21_0_False_resize: signed(29 downto 0);
  signal c_27_21_0_False_shift: signed(29 downto 0);
  signal c_27_24_0_False_resize: signed(29 downto 0);
  signal c_27_24_0_False_shift: signed(29 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(29 downto 0);
  signal c_28_resize: signed(29 downto 0);
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
  -- input node 1 with id 1
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= signed(x_1);
    end if;
  end process;
  -- output node 0 with id 26
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_26);
    end if;
  end process;
  -- output node 1 with id 28
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_28);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[32, 0], [32, 0], [0, 1]]
  c_2_0_5_False_resize <= resize(c_0, 21);
  c_2_0_5_False_shift <= shift_left(c_2_0_5_False_resize, 5);
  c_2_1_0_False_resize <= resize(c_1, 21);
  c_2_1_0_False_shift <= shift_left(c_2_1_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_0_5_False_shift when "0",
    c_2_1_0_False_shift when others;
  -- node of type 'add' in stage 2 with id 3 and associated fundamentals [[33, 0], [33, 0], [1, 1]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 16,
      w_o => 22,
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
      x_i => c_2,
      y_i => c_0,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(21 downto 0);
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[8192, 0], [33, 0], [1, 1]]
  c_4_0_13_False_resize <= resize(c_0, 29);
  c_4_0_13_False_shift <= shift_left(c_4_0_13_False_resize, 13);
  c_4_3_0_False_resize <= resize(c_3, 29);
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  with config_select_3 select c_4_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_0_13_False_shift when "0",
    c_4_3_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[33, 0], [16, 0], [32, 32]]
  c_5_0_4_False_resize <= resize(c_0, 22);
  c_5_0_4_False_shift <= shift_left(c_5_0_4_False_resize, 4);
  c_5_3_0_False_resize <= c_3;
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  c_5_3_5_False_resize <= c_3;
  c_5_3_5_False_shift <= shift_left(c_5_3_5_False_resize, 5);
  with config_select_3 select c_5_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_5_sel select c_5 <=
    c_5_0_4_False_shift when "00",
    c_5_3_0_False_shift when "01",
    c_5_3_5_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 6 and associated fundamentals [[8060, 0], [97, 0], [129, 129]]
  with config_select_4 select c_6_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 22,
      w_o => 29,
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
      sub_i => c_6_sub_sel,
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(28 downto 0);
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[0, 2], [0, 2], [1, 0]]
  c_7_1_1_False_resize <= resize(c_1, 17);
  c_7_1_1_False_shift <= shift_left(c_7_1_1_False_resize, 1);
  c_7_0_0_False_resize <= resize(c_0, 17);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  with config_select_1 select c_7_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_1_1_False_shift when "0",
    c_7_0_0_False_shift when others;
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[0, 4], [1, 0], [1, 0]]
  c_8_0_0_False_resize <= resize(c_0, 18);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  c_8_1_2_False_resize <= resize(c_1, 18);
  c_8_1_2_False_shift <= shift_left(c_8_1_2_False_resize, 2);
  with config_select_1 select c_8_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_0_0_False_shift when "0",
    c_8_1_2_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 9 and associated fundamentals [[0, 34], [-8, 2], [-7, 0]]
  with config_select_2 select c_9_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 18,
      w_o => 22,
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
      sub_i => c_9_sub_sel,
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(21 downto 0);
  -- node of type 'mux' in stage 5 with id 10 and associated fundamentals [[33, 0], [776, 0], [258, 258]]
  c_10_3_0_False_resize <= resize(c_3, 26);
  c_10_3_0_False_shift <= shift_left(c_10_3_0_False_resize, 0);
  c_10_6_1_False_resize <= c_6(25 downto 0);
  c_10_6_1_False_shift <= shift_left(c_10_6_1_False_resize, 1);
  c_10_6_3_False_resize <= c_6(25 downto 0);
  c_10_6_3_False_shift <= shift_left(c_10_6_3_False_resize, 3);
  with config_select_5 select c_10_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_10_sel select c_10 <=
    c_10_3_0_False_shift when "00",
    c_10_6_1_False_shift when "01",
    c_10_6_3_False_shift when others;
  -- node of type 'mux' in stage 5 with id 11 and associated fundamentals [[8060, 0], [0, 1024], [129, 129]]
  c_11_1_10_False_resize <= resize(c_1, 29);
  c_11_1_10_False_shift <= shift_left(c_11_1_10_False_resize, 10);
  c_11_6_0_False_resize <= c_6;
  c_11_6_0_False_shift <= shift_left(c_11_6_0_False_resize, 0);
  with config_select_5 select c_11_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_1_10_False_shift when "0",
    c_11_6_0_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 12 and associated fundamentals [[-8027, 0], [776, 1024], [387, 387]]
  with config_select_6 select c_12_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 29,
      w_o => 29,
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
  c_12 <= c_12_oshift(28 downto 0);
  -- node of type 'mux' in stage 1 with id 13 and associated fundamentals [[0, 1], [0, 32], [0, 32]]
  c_13_1_5_False_resize <= resize(c_1, 21);
  c_13_1_5_False_shift <= shift_left(c_13_1_5_False_resize, 5);
  c_13_1_0_False_resize <= resize(c_1, 21);
  c_13_1_0_False_shift <= shift_left(c_13_1_0_False_resize, 0);
  with config_select_1 select c_13_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_1_5_False_shift when "0",
    c_13_1_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[0, 34], [-8, 2], [-56, 0]]
  c_14_9_0_False_resize <= c_9;
  c_14_9_0_False_shift <= shift_left(c_14_9_0_False_resize, 0);
  c_14_9_3_False_resize <= c_9;
  c_14_9_3_False_shift <= shift_left(c_14_9_3_False_resize, 3);
  with config_select_3 select c_14_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_9_0_False_shift when "0",
    c_14_9_3_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 15 and associated fundamentals [[0, -33], [8, 30], [-56, 32]]
  with config_select_4 select c_15_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 22,
      w_o => 23,
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
  c_15 <= c_15_oshift(22 downto 0);
  -- node of type 'mux' in stage 5 with id 16 and associated fundamentals [[0, -33], [-8192, 2048], [-1792, 1024]]
  c_16_9_10_False_resize <= resize(c_9, 30);
  c_16_9_10_False_shift <= shift_left(c_16_9_10_False_resize, 10);
  c_16_15_0_False_resize <= resize(c_15, 30);
  c_16_15_0_False_shift <= shift_left(c_16_15_0_False_resize, 0);
  c_16_15_5_False_resize <= resize(c_15, 30);
  c_16_15_5_False_shift <= shift_left(c_16_15_5_False_resize, 5);
  with config_select_5 select c_16_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_16_sel select c_16 <=
    c_16_9_10_False_shift when "00",
    c_16_15_0_False_shift when "01",
    c_16_15_5_False_shift when others;
  -- node of type 'mux' in stage 7 with id 17 and associated fundamentals [[0, 2048], [776, 1024], [387, 387]]
  c_17_1_11_False_resize <= resize(c_1, 27);
  c_17_1_11_False_shift <= shift_left(c_17_1_11_False_resize, 11);
  c_17_12_0_False_resize <= c_12(26 downto 0);
  c_17_12_0_False_shift <= shift_left(c_17_12_0_False_resize, 0);
  with config_select_7 select c_17_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_17_sel select c_17 <=
    c_17_1_11_False_shift when "0",
    c_17_12_0_False_shift when others;
  -- node of type 'add' in stage 8 with id 18 and associated fundamentals [[0, 2015], [-7416, 3072], [-1405, 1411]]
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 27,
      w_o => 30,
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
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  c_18 <= c_18_oshift(29 downto 0);
  -- node of type 'mux' in stage 7 with id 19 and associated fundamentals [[-8027, 0], [128, 480], [387, 387]]
  c_19_12_0_False_resize <= c_12;
  c_19_12_0_False_shift <= shift_left(c_19_12_0_False_resize, 0);
  c_19_15_4_False_resize <= resize(c_15, 29);
  c_19_15_4_False_shift <= shift_left(c_19_15_4_False_resize, 4);
  with config_select_7 select c_19_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_19_sel select c_19 <=
    c_19_12_0_False_shift when "0",
    c_19_15_4_False_shift when others;
  -- node of type 'mux' in stage 5 with id 20 and associated fundamentals [[0, 34], [-8, 2], [129, 129]]
  c_20_9_0_False_resize <= resize(c_9, 25);
  c_20_9_0_False_shift <= shift_left(c_20_9_0_False_resize, 0);
  c_20_6_0_False_resize <= c_6(24 downto 0);
  c_20_6_0_False_shift <= shift_left(c_20_6_0_False_resize, 0);
  with config_select_5 select c_20_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_20_sel select c_20 <=
    c_20_9_0_False_shift when "0",
    c_20_6_0_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 21 and associated fundamentals [[-32108, -1088], [768, 1856], [5676, 5676]]
  with config_select_8 select c_21_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 25,
      w_o => 30,
      s_x_i => 2,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_21_sub_sel,
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  c_21 <= c_21_oshift(29 downto 0);
  -- node of type 'mux' in stage 9 with id 22 and associated fundamentals [[0, -33], [3072, 7424], [-56, 32]]
  c_22_15_0_False_resize <= resize(c_15, 30);
  c_22_15_0_False_shift <= shift_left(c_22_15_0_False_resize, 0);
  c_22_21_2_False_resize <= c_21;
  c_22_21_2_False_shift <= shift_left(c_22_21_2_False_resize, 2);
  with config_select_9 select c_22_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_22_sel select c_22 <=
    c_22_15_0_False_shift when "0",
    c_22_21_2_False_shift when others;
  -- node of type 'mux' in stage 9 with id 23 and associated fundamentals [[0, 2015], [0, 2], [-1405, 1411]]
  c_23_18_0_False_resize <= c_18(27 downto 0);
  c_23_18_0_False_shift <= shift_left(c_23_18_0_False_resize, 0);
  c_23_1_1_False_resize <= resize(c_1, 28);
  c_23_1_1_False_shift <= shift_left(c_23_1_1_False_resize, 1);
  with config_select_9 select c_23_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_23_sel select c_23 <=
    c_23_18_0_False_shift when "0",
    c_23_1_1_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 24 and associated fundamentals [[0, 8027], [3072, 7416], [-5676, 5676]]
  with config_select_10 select c_24_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 28,
      w_o => 30,
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
      sub_i => c_24_sub_sel,
      x_i => c_22,
      y_i => c_23,
      z_o => c_24_oshift
    );
  c_24 <= c_24_oshift(29 downto 0);
  -- node of type 'mux' in stage 11 with id 25 and associated fundamentals [[-8027, 0], [-7416, 3072], [-5676, 5676]]
  c_25_12_0_False_resize <= resize(c_12, 30);
  c_25_12_0_False_shift <= shift_left(c_25_12_0_False_resize, 0);
  c_25_24_0_False_resize <= c_24;
  c_25_24_0_False_shift <= shift_left(c_25_24_0_False_resize, 0);
  c_25_18_0_False_resize <= c_18;
  c_25_18_0_False_shift <= shift_left(c_25_18_0_False_resize, 0);
  with config_select_11 select c_25_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_25_sel select c_25 <=
    c_25_12_0_False_shift when "00",
    c_25_24_0_False_shift when "01",
    c_25_18_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 26 and associated fundamentals [[8027, 0], [7416, -3072], [5676, -5676]]
  c_26_resize <= c_25;
  c_26 <= -shift_left(c_26_resize, 0);
  -- node of type 'mux' in stage 11 with id 27 and associated fundamentals [[0, 8027], [3072, 7416], [5676, 5676]]
  c_27_21_0_False_resize <= c_21;
  c_27_21_0_False_shift <= shift_left(c_27_21_0_False_resize, 0);
  c_27_24_0_False_resize <= c_24;
  c_27_24_0_False_shift <= shift_left(c_27_24_0_False_resize, 0);
  with config_select_11 select c_27_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_27_sel select c_27 <=
    c_27_21_0_False_shift when "0",
    c_27_24_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 28 and associated fundamentals [[0, 8027], [3072, 7416], [5676, 5676]]
  c_28_resize <= c_27;
  c_28 <= shift_left(c_28_resize, 0);
end architecture;
