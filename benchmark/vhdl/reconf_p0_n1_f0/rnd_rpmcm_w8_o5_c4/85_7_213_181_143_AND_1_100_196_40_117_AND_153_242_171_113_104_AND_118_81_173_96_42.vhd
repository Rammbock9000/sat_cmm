library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(23 downto 0);
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
  signal c_3_2_1_False_resize: signed(19 downto 0);
  signal c_3_2_1_False_shift: signed(19 downto 0);
  signal c_3_2_0_False_resize: signed(19 downto 0);
  signal c_3_2_0_False_shift: signed(19 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(18 downto 0);
  signal c_4_0_3_False_resize: signed(18 downto 0);
  signal c_4_0_3_False_shift: signed(18 downto 0);
  signal c_4_0_0_False_resize: signed(18 downto 0);
  signal c_4_0_0_False_shift: signed(18 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(20 downto 0);
  signal c_5_i0_resize: signed(20 downto 0);
  signal c_5_i1_resize: signed(20 downto 0);
  signal c_5_i0_shift: signed(20 downto 0);
  signal c_5_i1_shift: signed(20 downto 0);
  signal c_5_arith: signed(20 downto 0);
  signal c_5_oshift: signed(20 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(20 downto 0);
  signal c_6_2_0_False_resize: signed(20 downto 0);
  signal c_6_2_0_False_shift: signed(20 downto 0);
  signal c_6_5_0_False_resize: signed(20 downto 0);
  signal c_6_5_0_False_shift: signed(20 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(20 downto 0);
  signal c_7_2_1_False_resize: signed(20 downto 0);
  signal c_7_2_1_False_shift: signed(20 downto 0);
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
  signal c_9: signed(20 downto 0);
  signal c_9_0_4_False_resize: signed(20 downto 0);
  signal c_9_0_4_False_shift: signed(20 downto 0);
  signal c_9_5_0_False_resize: signed(20 downto 0);
  signal c_9_5_0_False_shift: signed(20 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_i0_resize: signed(23 downto 0);
  signal c_10_i1_resize: signed(23 downto 0);
  signal c_10_i0_shift: signed(23 downto 0);
  signal c_10_i1_shift: signed(23 downto 0);
  signal c_10_arith: signed(23 downto 0);
  signal c_10_oshift: signed(23 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(22 downto 0);
  signal c_11_2_0_False_resize: signed(22 downto 0);
  signal c_11_2_0_False_shift: signed(22 downto 0);
  signal c_11_0_6_False_resize: signed(22 downto 0);
  signal c_11_0_6_False_shift: signed(22 downto 0);
  signal c_11_5_3_False_resize: signed(22 downto 0);
  signal c_11_5_3_False_shift: signed(22 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_2_0_False_resize: signed(23 downto 0);
  signal c_12_2_0_False_shift: signed(23 downto 0);
  signal c_12_8_0_False_resize: signed(23 downto 0);
  signal c_12_8_0_False_shift: signed(23 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(23 downto 0);
  signal c_14_5_2_False_resize: signed(23 downto 0);
  signal c_14_5_2_False_shift: signed(23 downto 0);
  signal c_14_13_0_False_resize: signed(23 downto 0);
  signal c_14_13_0_False_shift: signed(23 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(20 downto 0);
  signal c_15_2_0_False_resize: signed(20 downto 0);
  signal c_15_2_0_False_shift: signed(20 downto 0);
  signal c_15_0_5_False_resize: signed(20 downto 0);
  signal c_15_0_5_False_shift: signed(20 downto 0);
  signal c_15_0_1_False_resize: signed(20 downto 0);
  signal c_15_0_1_False_shift: signed(20 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_i0_resize: signed(23 downto 0);
  signal c_16_i1_resize: signed(23 downto 0);
  signal c_16_i0_shift: signed(23 downto 0);
  signal c_16_i1_shift: signed(23 downto 0);
  signal c_16_arith: signed(23 downto 0);
  signal c_16_oshift: signed(23 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(23 downto 0);
  signal c_17_0_0_False_resize: signed(23 downto 0);
  signal c_17_0_0_False_shift: signed(23 downto 0);
  signal c_17_8_0_False_resize: signed(23 downto 0);
  signal c_17_8_0_False_shift: signed(23 downto 0);
  signal c_17_8_1_False_resize: signed(23 downto 0);
  signal c_17_8_1_False_shift: signed(23 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_resize: signed(23 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_10_0_False_resize: signed(23 downto 0);
  signal c_19_10_0_False_shift: signed(23 downto 0);
  signal c_19_10_1_False_resize: signed(23 downto 0);
  signal c_19_10_1_False_shift: signed(23 downto 0);
  signal c_19_2_0_False_resize: signed(23 downto 0);
  signal c_19_2_0_False_shift: signed(23 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_resize: signed(23 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_resize: signed(23 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_2_5_False_resize: signed(23 downto 0);
  signal c_22_2_5_False_shift: signed(23 downto 0);
  signal c_22_16_0_False_resize: signed(23 downto 0);
  signal c_22_16_0_False_shift: signed(23 downto 0);
  signal c_22_2_3_False_resize: signed(23 downto 0);
  signal c_22_2_3_False_shift: signed(23 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_resize: signed(23 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_16_0_False_resize: signed(23 downto 0);
  signal c_24_16_0_False_shift: signed(23 downto 0);
  signal c_24_5_2_False_resize: signed(23 downto 0);
  signal c_24_5_2_False_shift: signed(23 downto 0);
  signal c_24_10_0_False_resize: signed(23 downto 0);
  signal c_24_10_0_False_shift: signed(23 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_resize: signed(23 downto 0);
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
  -- output node 4 with id 25
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_25);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[2], [1], [2], [1]]
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "11",
    "1" when "00",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "0",
    c_1_0_1_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 2 and associated fundamentals [[7], [5], [9], [3]]
  with config_select_2 select c_2_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 16,
      w_o => 20,
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
      sub_i => c_2_sub_sel,
      x_i => c_1,
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(19 downto 0);
  -- node of type 'mux' in stage 3 with id 3 and associated fundamentals [[14], [10], [9], [6]]
  c_3_2_1_False_resize <= c_2;
  c_3_2_1_False_shift <= shift_left(c_3_2_1_False_resize, 1);
  c_3_2_0_False_resize <= c_2;
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  with config_select_3 select c_3_sel <= 
    "0" when "11",
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_2_1_False_shift when "0",
    c_3_2_0_False_shift when others;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[1], [8], [8], [1]]
  c_4_0_3_False_resize <= resize(c_0, 19);
  c_4_0_3_False_shift <= shift_left(c_4_0_3_False_resize, 3);
  c_4_0_0_False_resize <= resize(c_0, 19);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  with config_select_1 select c_4_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when "11",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_0_3_False_shift when "0",
    c_4_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 5 and associated fundamentals [[29], [28], [26], [11]]
  with config_select_4 select c_5_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 19,
      w_o => 21,
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
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(20 downto 0);
  -- node of type 'mux' in stage 5 with id 6 and associated fundamentals [[29], [28], [9], [11]]
  c_6_2_0_False_resize <= resize(c_2, 21);
  c_6_2_0_False_shift <= shift_left(c_6_2_0_False_resize, 0);
  c_6_5_0_False_resize <= c_5;
  c_6_5_0_False_shift <= shift_left(c_6_5_0_False_resize, 0);
  with config_select_5 select c_6_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when "01",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_2_0_False_shift when "0",
    c_6_5_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[7], [5], [18], [6]]
  c_7_2_1_False_resize <= resize(c_2, 21);
  c_7_2_1_False_shift <= shift_left(c_7_2_1_False_resize, 1);
  c_7_2_0_False_resize <= resize(c_2, 21);
  c_7_2_0_False_shift <= shift_left(c_7_2_0_False_resize, 0);
  with config_select_3 select c_7_sel <= 
    "0" when "11",
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_2_1_False_shift when "0",
    c_7_2_0_False_shift when others;
  -- node of type 'add' in stage 6 with id 8 and associated fundamentals [[85], [68], [153], [59]]
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
      sub => False
    )
    port map (
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(23 downto 0);
  -- node of type 'mux' in stage 5 with id 9 and associated fundamentals [[29], [16], [16], [11]]
  c_9_0_4_False_resize <= resize(c_0, 21);
  c_9_0_4_False_shift <= shift_left(c_9_0_4_False_resize, 4);
  c_9_5_0_False_resize <= c_5;
  c_9_5_0_False_shift <= shift_left(c_9_5_0_False_resize, 0);
  with config_select_5 select c_9_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_0_4_False_shift when "0",
    c_9_5_0_False_shift when others;
  -- node of type 'add_sub' in stage 7 with id 10 and associated fundamentals [[143], [100], [121], [81]]
  with config_select_7 select c_10_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 21,
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
      sub_i => c_10_sub_sel,
      x_i => c_8,
      y_i => c_9,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(23 downto 0);
  -- node of type 'mux' in stage 5 with id 11 and associated fundamentals [[64], [64], [9], [88]]
  c_11_2_0_False_resize <= resize(c_2, 23);
  c_11_2_0_False_shift <= shift_left(c_11_2_0_False_resize, 0);
  c_11_0_6_False_resize <= resize(c_0, 23);
  c_11_0_6_False_shift <= shift_left(c_11_0_6_False_resize, 6);
  c_11_5_3_False_resize <= resize(c_5, 23);
  c_11_5_3_False_shift <= shift_left(c_11_5_3_False_resize, 3);
  with config_select_5 select c_11_sel <= 
    "00" when "10",
    "01" when "00",
    "01" when "01",
    "10" when others;
  with c_11_sel select c_11 <=
    c_11_2_0_False_shift when "00",
    c_11_0_6_False_shift when "01",
    c_11_5_3_False_shift when others;
  -- node of type 'mux' in stage 7 with id 12 and associated fundamentals [[85], [68], [153], [3]]
  c_12_2_0_False_resize <= resize(c_2, 24);
  c_12_2_0_False_shift <= shift_left(c_12_2_0_False_resize, 0);
  c_12_8_0_False_resize <= c_8;
  c_12_8_0_False_shift <= shift_left(c_12_8_0_False_resize, 0);
  with config_select_7 select c_12_sel <= 
    "0" when "11",
    "1" when "00",
    "1" when "01",
    "1" when others;
  with c_12_sel select c_12 <=
    c_12_2_0_False_shift when "0",
    c_12_8_0_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 13 and associated fundamentals [[213], [196], [171], [173]]
  with config_select_8 select c_13_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_13_sub_sel,
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(23 downto 0);
  -- node of type 'mux' in stage 9 with id 14 and associated fundamentals [[213], [112], [104], [44]]
  c_14_5_2_False_resize <= resize(c_5, 24);
  c_14_5_2_False_shift <= shift_left(c_14_5_2_False_resize, 2);
  c_14_13_0_False_resize <= c_13;
  c_14_13_0_False_shift <= shift_left(c_14_13_0_False_resize, 0);
  with config_select_9 select c_14_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "11",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_5_2_False_shift when "0",
    c_14_13_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[32], [5], [9], [2]]
  c_15_2_0_False_resize <= resize(c_2, 21);
  c_15_2_0_False_shift <= shift_left(c_15_2_0_False_resize, 0);
  c_15_0_5_False_resize <= resize(c_0, 21);
  c_15_0_5_False_shift <= shift_left(c_15_0_5_False_resize, 5);
  c_15_0_1_False_resize <= resize(c_0, 21);
  c_15_0_1_False_shift <= shift_left(c_15_0_1_False_resize, 1);
  with config_select_3 select c_15_sel <= 
    "00" when "10",
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_15_sel select c_15 <=
    c_15_2_0_False_shift when "00",
    c_15_0_5_False_shift when "01",
    c_15_0_1_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 16 and associated fundamentals [[181], [117], [113], [42]]
  with config_select_10 select c_16_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 21,
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
      sub_i => c_16_sub_sel,
      x_i => c_14,
      y_i => c_15,
      z_o => c_16_oshift
    );
  c_16 <= c_16_oshift(23 downto 0);
  -- node of type 'mux' in stage 7 with id 17 and associated fundamentals [[85], [1], [153], [118]]
  c_17_0_0_False_resize <= resize(c_0, 24);
  c_17_0_0_False_shift <= shift_left(c_17_0_0_False_resize, 0);
  c_17_8_0_False_resize <= c_8;
  c_17_8_0_False_shift <= shift_left(c_17_8_0_False_resize, 0);
  c_17_8_1_False_resize <= c_8;
  c_17_8_1_False_shift <= shift_left(c_17_8_1_False_resize, 1);
  with config_select_7 select c_17_sel <= 
    "00" when "01",
    "01" when "00",
    "01" when "10",
    "10" when others;
  with c_17_sel select c_17 <=
    c_17_0_0_False_shift when "00",
    c_17_8_0_False_shift when "01",
    c_17_8_1_False_shift when others;
  -- node of type 'output' in stage 7 with id 18 and associated fundamentals [[85], [1], [153], [118]]
  c_18_resize <= c_17;
  c_18 <= shift_left(c_18_resize, 0);
  -- node of type 'mux' in stage 8 with id 19 and associated fundamentals [[7], [100], [242], [81]]
  c_19_10_0_False_resize <= c_10;
  c_19_10_0_False_shift <= shift_left(c_19_10_0_False_resize, 0);
  c_19_10_1_False_resize <= c_10;
  c_19_10_1_False_shift <= shift_left(c_19_10_1_False_resize, 1);
  c_19_2_0_False_resize <= resize(c_2, 24);
  c_19_2_0_False_shift <= shift_left(c_19_2_0_False_resize, 0);
  with config_select_8 select c_19_sel <= 
    "00" when "11",
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_19_sel select c_19 <=
    c_19_10_0_False_shift when "00",
    c_19_10_1_False_shift when "01",
    c_19_2_0_False_shift when others;
  -- node of type 'output' in stage 8 with id 20 and associated fundamentals [[7], [100], [242], [81]]
  c_20_resize <= c_19;
  c_20 <= shift_left(c_20_resize, 0);
  -- node of type 'output' in stage 8 with id 21 and associated fundamentals [[213], [196], [171], [173]]
  c_21_resize <= c_13;
  c_21 <= shift_left(c_21_resize, 0);
  -- node of type 'mux' in stage 11 with id 22 and associated fundamentals [[181], [40], [113], [96]]
  c_22_2_5_False_resize <= resize(c_2, 24);
  c_22_2_5_False_shift <= shift_left(c_22_2_5_False_resize, 5);
  c_22_16_0_False_resize <= c_16;
  c_22_16_0_False_shift <= shift_left(c_22_16_0_False_resize, 0);
  c_22_2_3_False_resize <= resize(c_2, 24);
  c_22_2_3_False_shift <= shift_left(c_22_2_3_False_resize, 3);
  with config_select_11 select c_22_sel <= 
    "00" when "11",
    "01" when "10",
    "01" when "00",
    "10" when others;
  with c_22_sel select c_22 <=
    c_22_2_5_False_shift when "00",
    c_22_16_0_False_shift when "01",
    c_22_2_3_False_shift when others;
  -- node of type 'output' in stage 11 with id 23 and associated fundamentals [[181], [40], [113], [96]]
  c_23_resize <= c_22;
  c_23 <= shift_left(c_23_resize, 0);
  -- node of type 'mux' in stage 11 with id 24 and associated fundamentals [[143], [117], [104], [42]]
  c_24_16_0_False_resize <= c_16;
  c_24_16_0_False_shift <= shift_left(c_24_16_0_False_resize, 0);
  c_24_5_2_False_resize <= resize(c_5, 24);
  c_24_5_2_False_shift <= shift_left(c_24_5_2_False_resize, 2);
  c_24_10_0_False_resize <= c_10;
  c_24_10_0_False_shift <= shift_left(c_24_10_0_False_resize, 0);
  with config_select_11 select c_24_sel <= 
    "00" when "01",
    "00" when "11",
    "01" when "10",
    "10" when others;
  with c_24_sel select c_24 <=
    c_24_16_0_False_shift when "00",
    c_24_5_2_False_shift when "01",
    c_24_10_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 25 and associated fundamentals [[143], [117], [104], [42]]
  c_25_resize <= c_24;
  c_25 <= shift_left(c_25_resize, 0);
end architecture;
