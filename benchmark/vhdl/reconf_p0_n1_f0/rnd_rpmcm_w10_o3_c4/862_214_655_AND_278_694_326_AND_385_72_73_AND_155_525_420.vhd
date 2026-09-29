library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(25 downto 0);
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
  signal c_1: signed(16 downto 0);
  signal c_1_0_0_False_resize: signed(16 downto 0);
  signal c_1_0_0_False_shift: signed(16 downto 0);
  signal c_1_0_1_False_resize: signed(16 downto 0);
  signal c_1_0_1_False_shift: signed(16 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(19 downto 0);
  signal c_2_i0_resize: signed(19 downto 0);
  signal c_2_i1_resize: signed(19 downto 0);
  signal c_2_i0_shift: signed(19 downto 0);
  signal c_2_i1_shift: signed(19 downto 0);
  signal c_2_arith: signed(19 downto 0);
  signal c_2_oshift: signed(19 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(19 downto 0);
  signal c_3_0_3_False_resize: signed(19 downto 0);
  signal c_3_0_3_False_shift: signed(19 downto 0);
  signal c_3_0_1_False_resize: signed(19 downto 0);
  signal c_3_0_1_False_shift: signed(19 downto 0);
  signal c_3_0_4_False_resize: signed(19 downto 0);
  signal c_3_0_4_False_shift: signed(19 downto 0);
  signal c_3_2_0_False_resize: signed(19 downto 0);
  signal c_3_2_0_False_shift: signed(19 downto 0);
  signal c_3_sel: std_logic_vector(1 downto 0);
  signal c_4: signed(23 downto 0);
  signal c_4_i0_resize: signed(23 downto 0);
  signal c_4_i1_resize: signed(23 downto 0);
  signal c_4_i0_shift: signed(23 downto 0);
  signal c_4_i1_shift: signed(23 downto 0);
  signal c_4_arith: signed(23 downto 0);
  signal c_4_oshift: signed(23 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(25 downto 0);
  signal c_5_4_0_False_resize: signed(25 downto 0);
  signal c_5_4_0_False_shift: signed(25 downto 0);
  signal c_5_4_4_False_resize: signed(25 downto 0);
  signal c_5_4_4_False_shift: signed(25 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(24 downto 0);
  signal c_6_2_0_False_resize: signed(24 downto 0);
  signal c_6_2_0_False_shift: signed(24 downto 0);
  signal c_6_4_1_False_resize: signed(24 downto 0);
  signal c_6_4_1_False_shift: signed(24 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(25 downto 0);
  signal c_7_i0_resize: signed(25 downto 0);
  signal c_7_i1_resize: signed(25 downto 0);
  signal c_7_i0_shift: signed(25 downto 0);
  signal c_7_i1_shift: signed(25 downto 0);
  signal c_7_arith: signed(25 downto 0);
  signal c_7_oshift: signed(25 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(24 downto 0);
  signal c_8_4_0_False_resize: signed(24 downto 0);
  signal c_8_4_0_False_shift: signed(24 downto 0);
  signal c_8_4_3_False_resize: signed(24 downto 0);
  signal c_8_4_3_False_shift: signed(24 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(25 downto 0);
  signal c_9_2_4_False_resize: signed(25 downto 0);
  signal c_9_2_4_False_shift: signed(25 downto 0);
  signal c_9_4_0_False_resize: signed(25 downto 0);
  signal c_9_4_0_False_shift: signed(25 downto 0);
  signal c_9_7_1_False_resize: signed(25 downto 0);
  signal c_9_7_1_False_shift: signed(25 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(25 downto 0);
  signal c_10_i0_resize: signed(25 downto 0);
  signal c_10_i1_resize: signed(25 downto 0);
  signal c_10_i0_shift: signed(25 downto 0);
  signal c_10_i1_shift: signed(25 downto 0);
  signal c_10_arith: signed(25 downto 0);
  signal c_10_oshift: signed(25 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(23 downto 0);
  signal c_11_10_0_False_resize: signed(23 downto 0);
  signal c_11_10_0_False_shift: signed(23 downto 0);
  signal c_11_2_4_False_resize: signed(23 downto 0);
  signal c_11_2_4_False_shift: signed(23 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(21 downto 0);
  signal c_12_4_0_False_resize: signed(21 downto 0);
  signal c_12_4_0_False_shift: signed(21 downto 0);
  signal c_12_2_0_False_resize: signed(21 downto 0);
  signal c_12_2_0_False_shift: signed(21 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(24 downto 0);
  signal c_13_i0_resize: signed(24 downto 0);
  signal c_13_i1_resize: signed(24 downto 0);
  signal c_13_i0_shift: signed(24 downto 0);
  signal c_13_i1_shift: signed(24 downto 0);
  signal c_13_arith: signed(24 downto 0);
  signal c_13_oshift: signed(24 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(25 downto 0);
  signal c_14_13_1_False_resize: signed(25 downto 0);
  signal c_14_13_1_False_shift: signed(25 downto 0);
  signal c_14_13_0_False_resize: signed(25 downto 0);
  signal c_14_13_0_False_shift: signed(25 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_resize: signed(25 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_10_0_False_resize: signed(25 downto 0);
  signal c_16_10_0_False_shift: signed(25 downto 0);
  signal c_16_2_3_False_resize: signed(25 downto 0);
  signal c_16_2_3_False_shift: signed(25 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_resize: signed(25 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_resize: signed(25 downto 0);
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
  -- output node 0 with id 15
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_15);
    end if;
  end process;
  -- output node 1 with id 17
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_17);
    end if;
  end process;
  -- output node 2 with id 18
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_18);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [1], [2], [1]]
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "00",
    "0" when "11",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "0",
    c_1_0_1_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 2 and associated fundamentals [[-3], [5], [9], [5]]
  with config_select_2 select c_2_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 17,
      w_o => 20,
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
      sub_i => c_2_sub_sel,
      x_i => c_0,
      y_i => c_1,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(19 downto 0);
  -- node of type 'mux' in stage 3 with id 3 and associated fundamentals [[16], [2], [8], [5]]
  c_3_0_3_False_resize <= resize(c_0, 20);
  c_3_0_3_False_shift <= shift_left(c_3_0_3_False_resize, 3);
  c_3_0_1_False_resize <= resize(c_0, 20);
  c_3_0_1_False_shift <= shift_left(c_3_0_1_False_resize, 1);
  c_3_0_4_False_resize <= resize(c_0, 20);
  c_3_0_4_False_shift <= shift_left(c_3_0_4_False_resize, 4);
  c_3_2_0_False_resize <= c_2;
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  with config_select_3 select c_3_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  with c_3_sel select c_3 <=
    c_3_0_3_False_shift when "00",
    c_3_0_1_False_shift when "01",
    c_3_0_4_False_shift when "10",
    c_3_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 4 and associated fundamentals [[131], [21], [55], [35]]
  with config_select_4 select c_4_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
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
      sub_i => c_4_sub_sel,
      x_i => c_3,
      y_i => c_2,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(23 downto 0);
  -- node of type 'mux' in stage 5 with id 5 and associated fundamentals [[131], [336], [55], [560]]
  c_5_4_0_False_resize <= resize(c_4, 26);
  c_5_4_0_False_shift <= shift_left(c_5_4_0_False_resize, 0);
  c_5_4_4_False_resize <= resize(c_4, 26);
  c_5_4_4_False_shift <= shift_left(c_5_4_4_False_resize, 4);
  with config_select_5 select c_5_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when "01",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_4_0_False_shift when "0",
    c_5_4_4_False_shift when others;
  -- node of type 'mux' in stage 5 with id 6 and associated fundamentals [[262], [5], [9], [70]]
  c_6_2_0_False_resize <= resize(c_2, 25);
  c_6_2_0_False_shift <= shift_left(c_6_2_0_False_resize, 0);
  c_6_4_1_False_resize <= resize(c_4, 25);
  c_6_4_1_False_shift <= shift_left(c_6_4_1_False_resize, 1);
  with config_select_5 select c_6_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_2_0_False_shift when "0",
    c_6_4_1_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 7 and associated fundamentals [[655], [326], [73], [420]]
  with config_select_6 select c_7_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
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
      sub_i => c_7_sub_sel,
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(25 downto 0);
  -- node of type 'mux' in stage 5 with id 8 and associated fundamentals [[131], [21], [55], [280]]
  c_8_4_0_False_resize <= resize(c_4, 25);
  c_8_4_0_False_shift <= shift_left(c_8_4_0_False_resize, 0);
  c_8_4_3_False_resize <= resize(c_4, 25);
  c_8_4_3_False_shift <= shift_left(c_8_4_3_False_resize, 3);
  with config_select_5 select c_8_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_4_0_False_shift when "0",
    c_8_4_3_False_shift when others;
  -- node of type 'mux' in stage 7 with id 9 and associated fundamentals [[-48], [652], [55], [35]]
  c_9_2_4_False_resize <= resize(c_2, 26);
  c_9_2_4_False_shift <= shift_left(c_9_2_4_False_resize, 4);
  c_9_4_0_False_resize <= resize(c_4, 26);
  c_9_4_0_False_shift <= shift_left(c_9_4_0_False_resize, 0);
  c_9_7_1_False_resize <= c_7;
  c_9_7_1_False_shift <= shift_left(c_9_7_1_False_resize, 1);
  with config_select_7 select c_9_sel <= 
    "00" when "00",
    "01" when "10",
    "01" when "11",
    "10" when others;
  with c_9_sel select c_9 <=
    c_9_2_4_False_shift when "00",
    c_9_4_0_False_shift when "01",
    c_9_7_1_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 10 and associated fundamentals [[214], [694], [165], [525]]
  with config_select_8 select c_10_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 26,
      w_o => 26,
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
      x_i => c_8,
      y_i => c_9,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(25 downto 0);
  -- node of type 'mux' in stage 9 with id 11 and associated fundamentals [[214], [80], [165], [80]]
  c_11_10_0_False_resize <= c_10(23 downto 0);
  c_11_10_0_False_shift <= shift_left(c_11_10_0_False_resize, 0);
  c_11_2_4_False_resize <= resize(c_2, 24);
  c_11_2_4_False_shift <= shift_left(c_11_2_4_False_resize, 4);
  with config_select_9 select c_11_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when "01",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_10_0_False_shift when "0",
    c_11_2_4_False_shift when others;
  -- node of type 'mux' in stage 5 with id 12 and associated fundamentals [[-3], [21], [55], [5]]
  c_12_4_0_False_resize <= c_4(21 downto 0);
  c_12_4_0_False_shift <= shift_left(c_12_4_0_False_resize, 0);
  c_12_2_0_False_resize <= resize(c_2, 22);
  c_12_2_0_False_shift <= shift_left(c_12_2_0_False_resize, 0);
  with config_select_5 select c_12_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when "11",
    "1" when others;
  with c_12_sel select c_12 <=
    c_12_4_0_False_shift when "0",
    c_12_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 13 and associated fundamentals [[431], [139], [385], [155]]
  with config_select_10 select c_13_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
      w_o => 25,
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
      sub_i => c_13_sub_sel,
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(24 downto 0);
  -- node of type 'mux' in stage 11 with id 14 and associated fundamentals [[862], [278], [385], [155]]
  c_14_13_1_False_resize <= resize(c_13, 26);
  c_14_13_1_False_shift <= shift_left(c_14_13_1_False_resize, 1);
  c_14_13_0_False_resize <= resize(c_13, 26);
  c_14_13_0_False_shift <= shift_left(c_14_13_0_False_resize, 0);
  with config_select_11 select c_14_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when "10",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_13_1_False_shift when "0",
    c_14_13_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 15 and associated fundamentals [[862], [278], [385], [155]]
  c_15_resize <= c_14;
  c_15 <= shift_left(c_15_resize, 0);
  -- node of type 'mux' in stage 9 with id 16 and associated fundamentals [[214], [694], [72], [525]]
  c_16_10_0_False_resize <= c_10;
  c_16_10_0_False_shift <= shift_left(c_16_10_0_False_resize, 0);
  c_16_2_3_False_resize <= resize(c_2, 26);
  c_16_2_3_False_shift <= shift_left(c_16_2_3_False_resize, 3);
  with config_select_9 select c_16_sel <= 
    "0" when "11",
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_10_0_False_shift when "0",
    c_16_2_3_False_shift when others;
  -- node of type 'output' in stage 9 with id 17 and associated fundamentals [[214], [694], [72], [525]]
  c_17_resize <= c_16;
  c_17 <= shift_left(c_17_resize, 0);
  -- node of type 'output' in stage 6 with id 18 and associated fundamentals [[655], [326], [73], [420]]
  c_18_resize <= c_7;
  c_18 <= shift_left(c_18_resize, 0);
end architecture;
