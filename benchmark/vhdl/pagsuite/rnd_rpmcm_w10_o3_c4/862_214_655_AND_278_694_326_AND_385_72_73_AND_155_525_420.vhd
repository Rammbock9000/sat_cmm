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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(17 downto 0);
  signal c_2_i0_resize: signed(17 downto 0);
  signal c_2_i1_resize: signed(17 downto 0);
  signal c_2_i0_shift: signed(17 downto 0);
  signal c_2_i1_shift: signed(17 downto 0);
  signal c_2_arith: signed(17 downto 0);
  signal c_2_oshift: signed(17 downto 0);
  signal c_3: signed(15 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_5: signed(17 downto 0);
  signal c_6: signed(17 downto 0);
  signal c_6_2_0_False_resize: signed(17 downto 0);
  signal c_6_2_0_False_shift: signed(17 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(20 downto 0);
  signal c_7_i0_resize: signed(20 downto 0);
  signal c_7_i1_resize: signed(20 downto 0);
  signal c_7_i0_shift: signed(20 downto 0);
  signal c_7_i1_shift: signed(20 downto 0);
  signal c_7_arith: signed(20 downto 0);
  signal c_7_oshift: signed(20 downto 0);
  signal c_8: signed(17 downto 0);
  signal c_8_1_2_False_resize: signed(17 downto 0);
  signal c_8_1_2_False_shift: signed(17 downto 0);
  signal c_8_1_0_False_resize: signed(17 downto 0);
  signal c_8_1_0_False_shift: signed(17 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_i0_resize: signed(23 downto 0);
  signal c_10_i1_resize: signed(23 downto 0);
  signal c_10_i0_shift: signed(23 downto 0);
  signal c_10_i1_shift: signed(23 downto 0);
  signal c_10_arith: signed(23 downto 0);
  signal c_10_oshift: signed(23 downto 0);
  signal c_11: signed(24 downto 0);
  signal c_11_4_3_False_resize: signed(24 downto 0);
  signal c_11_4_3_False_shift: signed(24 downto 0);
  signal c_11_7_4_False_resize: signed(24 downto 0);
  signal c_11_7_4_False_shift: signed(24 downto 0);
  signal c_11_4_0_False_resize: signed(24 downto 0);
  signal c_11_4_0_False_shift: signed(24 downto 0);
  signal c_11_7_3_False_resize: signed(24 downto 0);
  signal c_11_7_3_False_shift: signed(24 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(24 downto 0);
  signal c_12_4_0_False_resize: signed(24 downto 0);
  signal c_12_4_0_False_shift: signed(24 downto 0);
  signal c_12_4_5_False_resize: signed(24 downto 0);
  signal c_12_4_5_False_shift: signed(24 downto 0);
  signal c_12_10_1_False_resize: signed(24 downto 0);
  signal c_12_10_1_False_shift: signed(24 downto 0);
  signal c_12_10_0_False_resize: signed(24 downto 0);
  signal c_12_10_0_False_shift: signed(24 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(25 downto 0);
  signal c_13_i0_resize: signed(25 downto 0);
  signal c_13_i1_resize: signed(25 downto 0);
  signal c_13_i0_shift: signed(25 downto 0);
  signal c_13_i1_shift: signed(25 downto 0);
  signal c_13_arith: signed(25 downto 0);
  signal c_13_oshift: signed(25 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(25 downto 0);
  signal c_14_9_3_False_resize: signed(25 downto 0);
  signal c_14_9_3_False_shift: signed(25 downto 0);
  signal c_14_7_0_False_resize: signed(25 downto 0);
  signal c_14_7_0_False_shift: signed(25 downto 0);
  signal c_14_4_0_False_resize: signed(25 downto 0);
  signal c_14_4_0_False_shift: signed(25 downto 0);
  signal c_14_7_5_False_resize: signed(25 downto 0);
  signal c_14_7_5_False_shift: signed(25 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_4_0_False_resize: signed(23 downto 0);
  signal c_15_4_0_False_shift: signed(23 downto 0);
  signal c_15_7_6_False_resize: signed(23 downto 0);
  signal c_15_7_6_False_shift: signed(23 downto 0);
  signal c_15_4_6_False_resize: signed(23 downto 0);
  signal c_15_4_6_False_shift: signed(23 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(25 downto 0);
  signal c_16_i1_resize: signed(25 downto 0);
  signal c_16_i0_shift: signed(25 downto 0);
  signal c_16_i1_shift: signed(25 downto 0);
  signal c_16_arith: signed(25 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(24 downto 0);
  signal c_17_9_0_False_resize: signed(24 downto 0);
  signal c_17_9_0_False_shift: signed(24 downto 0);
  signal c_17_7_0_False_resize: signed(24 downto 0);
  signal c_17_7_0_False_shift: signed(24 downto 0);
  signal c_17_4_8_False_resize: signed(24 downto 0);
  signal c_17_4_8_False_shift: signed(24 downto 0);
  signal c_17_7_4_False_resize: signed(24 downto 0);
  signal c_17_7_4_False_shift: signed(24 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_18_9_0_False_resize: signed(24 downto 0);
  signal c_18_9_0_False_shift: signed(24 downto 0);
  signal c_18_9_1_False_resize: signed(24 downto 0);
  signal c_18_9_1_False_shift: signed(24 downto 0);
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
  signal c_20_resize: signed(25 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_resize: signed(25 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_resize: signed(25 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 20
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_20);
    end if;
  end process;
  -- output node 1 with id 21
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_21);
    end if;
  end process;
  -- output node 2 with id 22
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_22);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1], [1], [1]]
  c_1 <= c_0 & "";
  -- node of type 'add' in stage 1 with id 2 and associated fundamentals [[3], [3], [3], [3]]
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 18,
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(17 downto 0);
  -- node of type 'register' in stage 2 with id 3 and associated fundamentals [[1], [1], [1], [1]]
  c_3 <= c_1 & "";
  -- node of type 'register' in stage 3 with id 4 and associated fundamentals [[1], [1], [1], [1]]
  c_4 <= c_3 & "";
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[3], [3], [3], [3]]
  c_5 <= c_2 & "";
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[3], [3], [0], [3]]
  c_6_2_0_False_resize <= c_2;
  c_6_2_0_False_shift <= shift_left(c_6_2_0_False_resize, 0);
  with config_select_2 select c_6_sel <= 
    "0" when "11",
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_2_0_False_shift when "0",
    to_signed(0, 18) when others;
  -- node of type 'add' in stage 3 with id 7 and associated fundamentals [[27], [27], [3], [27]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
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
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(20 downto 0);
  -- node of type 'mux' in stage 2 with id 8 and associated fundamentals [[4], [1], [1], [0]]
  c_8_1_2_False_resize <= resize(c_1, 18);
  c_8_1_2_False_shift <= shift_left(c_8_1_2_False_resize, 2);
  c_8_1_0_False_resize <= resize(c_1, 18);
  c_8_1_0_False_shift <= shift_left(c_8_1_0_False_resize, 0);
  with config_select_2 select c_8_sel <= 
    "00" when "00",
    "01" when "01",
    "01" when "10",
    "10" when others;
  with c_8_sel select c_8 <=
    c_8_1_2_False_shift when "00",
    c_8_1_0_False_shift when "01",
    to_signed(0, 18) when others;
  -- node of type 'add' in stage 3 with id 9 and associated fundamentals [[131], [35], [35], [3]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_5,
      y_i => c_8,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(23 downto 0);
  -- node of type 'add' in stage 3 with id 10 and associated fundamentals [[131], [131], [131], [131]]
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 18,
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
      y_i => c_5,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(23 downto 0);
  -- node of type 'mux' in stage 4 with id 11 and associated fundamentals [[216], [432], [8], [1]]
  c_11_4_3_False_resize <= resize(c_4, 25);
  c_11_4_3_False_shift <= shift_left(c_11_4_3_False_resize, 3);
  c_11_7_4_False_resize <= resize(c_7, 25);
  c_11_7_4_False_shift <= shift_left(c_11_7_4_False_resize, 4);
  c_11_4_0_False_resize <= resize(c_4, 25);
  c_11_4_0_False_shift <= shift_left(c_11_4_0_False_resize, 0);
  c_11_7_3_False_resize <= resize(c_7, 25);
  c_11_7_3_False_shift <= shift_left(c_11_7_3_False_resize, 3);
  with config_select_4 select c_11_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  with c_11_sel select c_11 <=
    c_11_4_3_False_shift when "00",
    c_11_7_4_False_shift when "01",
    c_11_4_0_False_shift when "10",
    c_11_7_3_False_shift when others;
  -- node of type 'mux' in stage 4 with id 12 and associated fundamentals [[1], [131], [32], [262]]
  c_12_4_0_False_resize <= resize(c_4, 25);
  c_12_4_0_False_shift <= shift_left(c_12_4_0_False_resize, 0);
  c_12_4_5_False_resize <= resize(c_4, 25);
  c_12_4_5_False_shift <= shift_left(c_12_4_5_False_resize, 5);
  c_12_10_1_False_resize <= resize(c_10, 25);
  c_12_10_1_False_shift <= shift_left(c_12_10_1_False_resize, 1);
  c_12_10_0_False_resize <= resize(c_10, 25);
  c_12_10_0_False_shift <= shift_left(c_12_10_0_False_resize, 0);
  with config_select_4 select c_12_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "11" when others;
  with c_12_sel select c_12 <=
    c_12_4_0_False_shift when "00",
    c_12_4_5_False_shift when "01",
    c_12_10_1_False_shift when "10",
    c_12_10_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 13 and associated fundamentals [[214], [694], [72], [525]]
  with config_select_5 select c_13_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_13_sub_sel,
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 14 and associated fundamentals [[864], [280], [1], [27]]
  c_14_9_3_False_resize <= resize(c_9, 26);
  c_14_9_3_False_shift <= shift_left(c_14_9_3_False_resize, 3);
  c_14_7_0_False_resize <= resize(c_7, 26);
  c_14_7_0_False_shift <= shift_left(c_14_7_0_False_resize, 0);
  c_14_4_0_False_resize <= resize(c_4, 26);
  c_14_4_0_False_shift <= shift_left(c_14_4_0_False_resize, 0);
  c_14_7_5_False_resize <= resize(c_7, 26);
  c_14_7_5_False_shift <= shift_left(c_14_7_5_False_resize, 5);
  with config_select_4 select c_14_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "11" when others;
  with c_14_sel select c_14 <=
    c_14_9_3_False_shift when "00",
    c_14_7_0_False_shift when "01",
    c_14_4_0_False_shift when "10",
    c_14_7_5_False_shift when others;
  -- node of type 'mux' in stage 4 with id 15 and associated fundamentals [[1], [1], [192], [64]]
  c_15_4_0_False_resize <= resize(c_4, 24);
  c_15_4_0_False_shift <= shift_left(c_15_4_0_False_resize, 0);
  c_15_7_6_False_resize <= resize(c_7, 24);
  c_15_7_6_False_shift <= shift_left(c_15_7_6_False_resize, 6);
  c_15_4_6_False_resize <= resize(c_4, 24);
  c_15_4_6_False_shift <= shift_left(c_15_4_6_False_resize, 6);
  with config_select_4 select c_15_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_15_sel select c_15 <=
    c_15_4_0_False_shift when "00",
    c_15_7_6_False_shift when "01",
    c_15_4_6_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 16 and associated fundamentals [[862], [278], [385], [155]]
  with config_select_5 select c_16_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
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
      sub_i => c_16_sub_sel,
      x_i => c_14,
      y_i => c_15,
      z_o => c_16_oshift
    );
  c_16 <= c_16_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 17 and associated fundamentals [[131], [256], [3], [432]]
  c_17_9_0_False_resize <= resize(c_9, 25);
  c_17_9_0_False_shift <= shift_left(c_17_9_0_False_resize, 0);
  c_17_7_0_False_resize <= resize(c_7, 25);
  c_17_7_0_False_shift <= shift_left(c_17_7_0_False_resize, 0);
  c_17_4_8_False_resize <= resize(c_4, 25);
  c_17_4_8_False_shift <= shift_left(c_17_4_8_False_resize, 8);
  c_17_7_4_False_resize <= resize(c_7, 25);
  c_17_7_4_False_shift <= shift_left(c_17_7_4_False_resize, 4);
  with config_select_4 select c_17_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "11" when others;
  with c_17_sel select c_17 <=
    c_17_9_0_False_shift when "00",
    c_17_7_0_False_shift when "01",
    c_17_4_8_False_shift when "10",
    c_17_7_4_False_shift when others;
  -- node of type 'mux' in stage 4 with id 18 and associated fundamentals [[262], [35], [35], [6]]
  c_18_9_0_False_resize <= resize(c_9, 25);
  c_18_9_0_False_shift <= shift_left(c_18_9_0_False_resize, 0);
  c_18_9_1_False_resize <= resize(c_9, 25);
  c_18_9_1_False_shift <= shift_left(c_18_9_1_False_resize, 1);
  with config_select_4 select c_18_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_18_sel select c_18 <=
    c_18_9_0_False_shift when "0",
    c_18_9_1_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 19 and associated fundamentals [[655], [326], [73], [420]]
  with config_select_5 select c_19_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_19_sub_sel,
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  c_19 <= c_19_oshift(25 downto 0);
  -- node of type 'output' in stage 5 with id 20 and associated fundamentals [[862], [278], [385], [155]]
  c_20_resize <= c_16;
  c_20 <= shift_left(c_20_resize, 0);
  -- node of type 'output' in stage 5 with id 21 and associated fundamentals [[214], [694], [72], [525]]
  c_21_resize <= c_13;
  c_21 <= shift_left(c_21_resize, 0);
  -- node of type 'output' in stage 5 with id 22 and associated fundamentals [[655], [326], [73], [420]]
  c_22_resize <= c_19;
  c_22 <= shift_left(c_22_resize, 0);
end architecture;
