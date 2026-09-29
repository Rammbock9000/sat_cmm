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
    y_3: out std_logic_vector(22 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_2_0_0_False_resize: signed(15 downto 0);
  signal c_2_0_0_False_shift: signed(15 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(22 downto 0);
  signal c_3_i0_resize: signed(22 downto 0);
  signal c_3_i1_resize: signed(22 downto 0);
  signal c_3_i0_shift: signed(22 downto 0);
  signal c_3_i1_shift: signed(22 downto 0);
  signal c_3_arith: signed(22 downto 0);
  signal c_3_oshift: signed(22 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_4_0_0_False_resize: signed(15 downto 0);
  signal c_4_0_0_False_shift: signed(15 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(17 downto 0);
  signal c_5_i0_resize: signed(17 downto 0);
  signal c_5_i1_resize: signed(17 downto 0);
  signal c_5_i0_shift: signed(17 downto 0);
  signal c_5_i1_shift: signed(17 downto 0);
  signal c_5_arith: signed(17 downto 0);
  signal c_5_oshift: signed(17 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_6_0_0_False_resize: signed(15 downto 0);
  signal c_6_0_0_False_shift: signed(15 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(18 downto 0);
  signal c_7_i0_resize: signed(18 downto 0);
  signal c_7_i1_resize: signed(18 downto 0);
  signal c_7_i0_shift: signed(18 downto 0);
  signal c_7_i1_shift: signed(18 downto 0);
  signal c_7_arith: signed(18 downto 0);
  signal c_7_oshift: signed(18 downto 0);
  signal c_8: signed(21 downto 0);
  signal c_8_0_0_False_resize: signed(21 downto 0);
  signal c_8_0_0_False_shift: signed(21 downto 0);
  signal c_8_0_6_False_resize: signed(21 downto 0);
  signal c_8_0_6_False_shift: signed(21 downto 0);
  signal c_8_0_1_False_resize: signed(21 downto 0);
  signal c_8_0_1_False_shift: signed(21 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_i0_resize: signed(22 downto 0);
  signal c_9_i1_resize: signed(22 downto 0);
  signal c_9_i0_shift: signed(22 downto 0);
  signal c_9_i1_shift: signed(22 downto 0);
  signal c_9_arith: signed(22 downto 0);
  signal c_9_oshift: signed(22 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(20 downto 0);
  signal c_10_7_2_False_resize: signed(20 downto 0);
  signal c_10_7_2_False_shift: signed(20 downto 0);
  signal c_10_7_1_False_resize: signed(20 downto 0);
  signal c_10_7_1_False_shift: signed(20 downto 0);
  signal c_10_3_0_False_resize: signed(20 downto 0);
  signal c_10_3_0_False_shift: signed(20 downto 0);
  signal c_10_5_0_False_resize: signed(20 downto 0);
  signal c_10_5_0_False_shift: signed(20 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(18 downto 0);
  signal c_11_5_1_False_resize: signed(18 downto 0);
  signal c_11_5_1_False_shift: signed(18 downto 0);
  signal c_11_7_0_False_resize: signed(18 downto 0);
  signal c_11_7_0_False_shift: signed(18 downto 0);
  signal c_11_3_1_False_resize: signed(18 downto 0);
  signal c_11_3_1_False_shift: signed(18 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_i0_resize: signed(22 downto 0);
  signal c_12_i1_resize: signed(22 downto 0);
  signal c_12_i0_shift: signed(22 downto 0);
  signal c_12_i1_shift: signed(22 downto 0);
  signal c_12_arith: signed(22 downto 0);
  signal c_12_oshift: signed(22 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(22 downto 0);
  signal c_13_5_4_False_resize: signed(22 downto 0);
  signal c_13_5_4_False_shift: signed(22 downto 0);
  signal c_13_5_0_False_resize: signed(22 downto 0);
  signal c_13_5_0_False_shift: signed(22 downto 0);
  signal c_13_5_5_False_resize: signed(22 downto 0);
  signal c_13_5_5_False_shift: signed(22 downto 0);
  signal c_13_7_0_False_resize: signed(22 downto 0);
  signal c_13_7_0_False_shift: signed(22 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_14_7_0_False_resize: signed(22 downto 0);
  signal c_14_7_0_False_shift: signed(22 downto 0);
  signal c_14_5_7_False_resize: signed(22 downto 0);
  signal c_14_5_7_False_shift: signed(22 downto 0);
  signal c_14_7_4_False_resize: signed(22 downto 0);
  signal c_14_7_4_False_shift: signed(22 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_i0_resize: signed(23 downto 0);
  signal c_15_i1_resize: signed(23 downto 0);
  signal c_15_i0_shift: signed(23 downto 0);
  signal c_15_i1_shift: signed(23 downto 0);
  signal c_15_arith: signed(23 downto 0);
  signal c_15_oshift: signed(23 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(23 downto 0);
  signal c_16_3_0_False_resize: signed(23 downto 0);
  signal c_16_3_0_False_shift: signed(23 downto 0);
  signal c_16_5_6_False_resize: signed(23 downto 0);
  signal c_16_5_6_False_shift: signed(23 downto 0);
  signal c_16_7_7_False_resize: signed(23 downto 0);
  signal c_16_7_7_False_shift: signed(23 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(21 downto 0);
  signal c_17_7_0_False_resize: signed(21 downto 0);
  signal c_17_7_0_False_shift: signed(21 downto 0);
  signal c_17_7_3_False_resize: signed(21 downto 0);
  signal c_17_7_3_False_shift: signed(21 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_i0_resize: signed(23 downto 0);
  signal c_18_i1_resize: signed(23 downto 0);
  signal c_18_i0_shift: signed(23 downto 0);
  signal c_18_i1_shift: signed(23 downto 0);
  signal c_18_arith: signed(23 downto 0);
  signal c_18_oshift: signed(23 downto 0);
  signal c_19: signed(22 downto 0);
  signal c_19_9_0_False_resize: signed(22 downto 0);
  signal c_19_9_0_False_shift: signed(22 downto 0);
  signal c_19_7_0_False_resize: signed(22 downto 0);
  signal c_19_7_0_False_shift: signed(22 downto 0);
  signal c_19_5_1_False_resize: signed(22 downto 0);
  signal c_19_5_1_False_shift: signed(22 downto 0);
  signal c_19_7_4_False_resize: signed(22 downto 0);
  signal c_19_7_4_False_shift: signed(22 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(21 downto 0);
  signal c_20_7_1_False_resize: signed(21 downto 0);
  signal c_20_7_1_False_shift: signed(21 downto 0);
  signal c_20_9_0_False_resize: signed(21 downto 0);
  signal c_20_9_0_False_shift: signed(21 downto 0);
  signal c_20_9_4_False_resize: signed(21 downto 0);
  signal c_20_9_4_False_shift: signed(21 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_i0_resize: signed(23 downto 0);
  signal c_21_i1_resize: signed(23 downto 0);
  signal c_21_i0_shift: signed(23 downto 0);
  signal c_21_i1_shift: signed(23 downto 0);
  signal c_21_arith: signed(23 downto 0);
  signal c_21_oshift: signed(23 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(23 downto 0);
  signal c_22_5_6_False_resize: signed(23 downto 0);
  signal c_22_5_6_False_shift: signed(23 downto 0);
  signal c_22_5_0_False_resize: signed(23 downto 0);
  signal c_22_5_0_False_shift: signed(23 downto 0);
  signal c_22_3_0_False_resize: signed(23 downto 0);
  signal c_22_3_0_False_shift: signed(23 downto 0);
  signal c_22_5_5_False_resize: signed(23 downto 0);
  signal c_22_5_5_False_shift: signed(23 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(17 downto 0);
  signal c_23_3_0_False_resize: signed(17 downto 0);
  signal c_23_3_0_False_shift: signed(17 downto 0);
  signal c_23_5_0_False_resize: signed(17 downto 0);
  signal c_23_5_0_False_shift: signed(17 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_i0_resize: signed(23 downto 0);
  signal c_24_i1_resize: signed(23 downto 0);
  signal c_24_i0_shift: signed(23 downto 0);
  signal c_24_i1_shift: signed(23 downto 0);
  signal c_24_arith: signed(23 downto 0);
  signal c_24_oshift: signed(23 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(23 downto 0);
  signal c_25_resize: signed(23 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_resize: signed(23 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_resize: signed(23 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_28_resize: signed(22 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_resize: signed(23 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 25
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_25);
    end if;
  end process;
  -- output node 1 with id 26
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_26);
    end if;
  end process;
  -- output node 2 with id 27
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_27);
    end if;
  end process;
  -- output node 3 with id 28
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_28);
    end if;
  end process;
  -- output node 4 with id 29
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_29);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1], [1], [1]]
  c_1 <= c_0 & "";
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[0], [0], [1], [1]]
  c_2_0_0_False_resize <= c_0;
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "0" when "10",
    "0" when "11",
    "1" when "00",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_0_0_False_shift when "0",
    to_signed(0, 16) when others;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[1], [1], [127], [127]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 23,
      s_x_i => 7,
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
      y_i => c_1,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(22 downto 0);
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[1], [1], [1], [0]]
  c_4_0_0_False_resize <= c_0;
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  with config_select_1 select c_4_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_0_0_False_shift when "0",
    to_signed(0, 16) when others;
  -- node of type 'add' in stage 2 with id 5 and associated fundamentals [[3], [3], [3], [1]]
  inst_adder_node_5: entity work.adder_node
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
      x_i => c_1,
      y_i => c_4,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(17 downto 0);
  -- node of type 'mux' in stage 1 with id 6 and associated fundamentals [[1], [1], [0], [1]]
  c_6_0_0_False_resize <= c_0;
  c_6_0_0_False_shift <= shift_left(c_6_0_0_False_resize, 0);
  with config_select_1 select c_6_sel <= 
    "0" when "01",
    "0" when "11",
    "0" when "00",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_0_0_False_shift when "0",
    to_signed(0, 16) when others;
  -- node of type 'add' in stage 2 with id 7 and associated fundamentals [[5], [5], [1], [5]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
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
      x_i => c_1,
      y_i => c_6,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(18 downto 0);
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[64], [64], [2], [1]]
  c_8_0_0_False_resize <= resize(c_0, 22);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  c_8_0_6_False_resize <= resize(c_0, 22);
  c_8_0_6_False_shift <= shift_left(c_8_0_6_False_resize, 6);
  c_8_0_1_False_resize <= resize(c_0, 22);
  c_8_0_1_False_shift <= shift_left(c_8_0_1_False_resize, 1);
  with config_select_1 select c_8_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "10",
    "11" when others;
  with c_8_sel select c_8 <=
    c_8_0_0_False_shift when "00",
    c_8_0_6_False_shift when "01",
    c_8_0_1_False_shift when "10",
    to_signed(0, 22) when others;
  -- node of type 'add_sub' in stage 2 with id 9 and associated fundamentals [[127], [127], [5], [3]]
  with config_select_2 select c_9_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 16,
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
      sub_i => c_9_sub_sel,
      x_i => c_8,
      y_i => c_1,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(22 downto 0);
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[1], [20], [2], [1]]
  c_10_7_2_False_resize <= resize(c_7, 21);
  c_10_7_2_False_shift <= shift_left(c_10_7_2_False_resize, 2);
  c_10_7_1_False_resize <= resize(c_7, 21);
  c_10_7_1_False_shift <= shift_left(c_10_7_1_False_resize, 1);
  c_10_3_0_False_resize <= c_3(20 downto 0);
  c_10_3_0_False_shift <= shift_left(c_10_3_0_False_resize, 0);
  c_10_5_0_False_resize <= resize(c_5, 21);
  c_10_5_0_False_shift <= shift_left(c_10_5_0_False_resize, 0);
  with config_select_3 select c_10_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  with c_10_sel select c_10 <=
    c_10_7_2_False_shift when "00",
    c_10_7_1_False_shift when "01",
    c_10_3_0_False_shift when "10",
    c_10_5_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[2], [0], [6], [5]]
  c_11_5_1_False_resize <= resize(c_5, 19);
  c_11_5_1_False_shift <= shift_left(c_11_5_1_False_resize, 1);
  c_11_7_0_False_resize <= c_7;
  c_11_7_0_False_shift <= shift_left(c_11_7_0_False_resize, 0);
  c_11_3_1_False_resize <= c_3(18 downto 0);
  c_11_3_1_False_shift <= shift_left(c_11_3_1_False_resize, 1);
  with config_select_3 select c_11_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "11" when others;
  with c_11_sel select c_11 <=
    c_11_5_1_False_shift when "00",
    c_11_7_0_False_shift when "01",
    c_11_3_1_False_shift when "10",
    to_signed(0, 19) when others;
  -- node of type 'add_sub' in stage 4 with id 12 and associated fundamentals [[34], [40], [92], [78]]
  with config_select_4 select c_12_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 21,
      w_o => 23,
      s_x_i => 4,
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
      y_i => c_10,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(22 downto 0);
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[3], [48], [96], [5]]
  c_13_5_4_False_resize <= resize(c_5, 23);
  c_13_5_4_False_shift <= shift_left(c_13_5_4_False_resize, 4);
  c_13_5_0_False_resize <= resize(c_5, 23);
  c_13_5_0_False_shift <= shift_left(c_13_5_0_False_resize, 0);
  c_13_5_5_False_resize <= resize(c_5, 23);
  c_13_5_5_False_shift <= shift_left(c_13_5_5_False_resize, 5);
  c_13_7_0_False_resize <= resize(c_7, 23);
  c_13_7_0_False_shift <= shift_left(c_13_7_0_False_resize, 0);
  with config_select_3 select c_13_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  with c_13_sel select c_13 <=
    c_13_5_4_False_shift when "00",
    c_13_5_0_False_shift when "01",
    c_13_5_5_False_shift when "10",
    c_13_7_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[80], [5], [16], [128]]
  c_14_7_0_False_resize <= resize(c_7, 23);
  c_14_7_0_False_shift <= shift_left(c_14_7_0_False_resize, 0);
  c_14_5_7_False_resize <= resize(c_5, 23);
  c_14_5_7_False_shift <= shift_left(c_14_5_7_False_resize, 7);
  c_14_7_4_False_resize <= resize(c_7, 23);
  c_14_7_4_False_shift <= shift_left(c_14_7_4_False_resize, 4);
  with config_select_3 select c_14_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "10" when others;
  with c_14_sel select c_14 <=
    c_14_7_0_False_shift when "00",
    c_14_5_7_False_shift when "01",
    c_14_7_4_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 15 and associated fundamentals [[86], [91], [208], [138]]
  with config_select_4 select c_15_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
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
      sub_i => c_15_sub_sel,
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 16 and associated fundamentals [[1], [192], [128], [127]]
  c_16_3_0_False_resize <= resize(c_3, 24);
  c_16_3_0_False_shift <= shift_left(c_16_3_0_False_resize, 0);
  c_16_5_6_False_resize <= resize(c_5, 24);
  c_16_5_6_False_shift <= shift_left(c_16_5_6_False_resize, 6);
  c_16_7_7_False_resize <= resize(c_7, 24);
  c_16_7_7_False_shift <= shift_left(c_16_7_7_False_resize, 7);
  with config_select_3 select c_16_sel <= 
    "00" when "11",
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_16_sel select c_16 <=
    c_16_3_0_False_shift when "00",
    c_16_5_6_False_shift when "01",
    c_16_7_7_False_shift when others;
  -- node of type 'mux' in stage 3 with id 17 and associated fundamentals [[40], [5], [8], [40]]
  c_17_7_0_False_resize <= resize(c_7, 22);
  c_17_7_0_False_shift <= shift_left(c_17_7_0_False_resize, 0);
  c_17_7_3_False_resize <= resize(c_7, 22);
  c_17_7_3_False_shift <= shift_left(c_17_7_3_False_resize, 3);
  with config_select_3 select c_17_sel <= 
    "0" when "01",
    "1" when "11",
    "1" when "00",
    "1" when others;
  with c_17_sel select c_17 <=
    c_17_7_0_False_shift when "0",
    c_17_7_3_False_shift when others;
  -- node of type 'add' in stage 4 with id 18 and associated fundamentals [[81], [202], [144], [207]]
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
      w_o => 24,
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
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  c_18 <= c_18_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 19 and associated fundamentals [[127], [80], [1], [2]]
  c_19_9_0_False_resize <= c_9;
  c_19_9_0_False_shift <= shift_left(c_19_9_0_False_resize, 0);
  c_19_7_0_False_resize <= resize(c_7, 23);
  c_19_7_0_False_shift <= shift_left(c_19_7_0_False_resize, 0);
  c_19_5_1_False_resize <= resize(c_5, 23);
  c_19_5_1_False_shift <= shift_left(c_19_5_1_False_resize, 1);
  c_19_7_4_False_resize <= resize(c_7, 23);
  c_19_7_4_False_shift <= shift_left(c_19_7_4_False_resize, 4);
  with config_select_3 select c_19_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "11" when others;
  with c_19_sel select c_19 <=
    c_19_9_0_False_shift when "00",
    c_19_7_0_False_shift when "01",
    c_19_5_1_False_shift when "10",
    c_19_7_4_False_shift when others;
  -- node of type 'mux' in stage 3 with id 20 and associated fundamentals [[10], [0], [5], [48]]
  c_20_7_1_False_resize <= resize(c_7, 22);
  c_20_7_1_False_shift <= shift_left(c_20_7_1_False_resize, 1);
  c_20_9_0_False_resize <= c_9(21 downto 0);
  c_20_9_0_False_shift <= shift_left(c_20_9_0_False_resize, 0);
  c_20_9_4_False_resize <= c_9(21 downto 0);
  c_20_9_4_False_shift <= shift_left(c_20_9_4_False_resize, 4);
  with config_select_3 select c_20_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "11" when others;
  with c_20_sel select c_20 <=
    c_20_7_1_False_shift when "00",
    c_20_9_0_False_shift when "01",
    c_20_9_4_False_shift when "10",
    to_signed(0, 22) when others;
  -- node of type 'add_sub' in stage 4 with id 21 and associated fundamentals [[87], [80], [21], [194]]
  with config_select_4 select c_21_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
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
      sub_i => c_21_sub_sel,
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  c_21 <= c_21_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 22 and associated fundamentals [[192], [3], [127], [32]]
  c_22_5_6_False_resize <= resize(c_5, 24);
  c_22_5_6_False_shift <= shift_left(c_22_5_6_False_resize, 6);
  c_22_5_0_False_resize <= resize(c_5, 24);
  c_22_5_0_False_shift <= shift_left(c_22_5_0_False_resize, 0);
  c_22_3_0_False_resize <= resize(c_3, 24);
  c_22_3_0_False_shift <= shift_left(c_22_3_0_False_resize, 0);
  c_22_5_5_False_resize <= resize(c_5, 24);
  c_22_5_5_False_shift <= shift_left(c_22_5_5_False_resize, 5);
  with config_select_3 select c_22_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "11" when others;
  with c_22_sel select c_22 <=
    c_22_5_6_False_shift when "00",
    c_22_5_0_False_shift when "01",
    c_22_3_0_False_shift when "10",
    c_22_5_5_False_shift when others;
  -- node of type 'mux' in stage 3 with id 23 and associated fundamentals [[1], [0], [3], [1]]
  c_23_3_0_False_resize <= c_3(17 downto 0);
  c_23_3_0_False_shift <= shift_left(c_23_3_0_False_resize, 0);
  c_23_5_0_False_resize <= c_5;
  c_23_5_0_False_shift <= shift_left(c_23_5_0_False_resize, 0);
  with config_select_3 select c_23_sel <= 
    "00" when "00",
    "01" when "10",
    "01" when "11",
    "10" when others;
  with c_23_sel select c_23 <=
    c_23_3_0_False_shift when "00",
    c_23_5_0_False_shift when "01",
    to_signed(0, 18) when others;
  -- node of type 'add_sub' in stage 4 with id 24 and associated fundamentals [[190], [3], [121], [30]]
  with config_select_4 select c_24_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 18,
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
      sub_i => c_24_sub_sel,
      x_i => c_22,
      y_i => c_23,
      z_o => c_24_oshift
    );
  c_24 <= c_24_oshift(23 downto 0);
  -- node of type 'output' in stage 4 with id 25 and associated fundamentals [[190], [3], [121], [30]]
  c_25_resize <= c_24;
  c_25 <= shift_left(c_25_resize, 0);
  -- node of type 'output' in stage 4 with id 26 and associated fundamentals [[86], [91], [208], [138]]
  c_26_resize <= c_15;
  c_26 <= shift_left(c_26_resize, 0);
  -- node of type 'output' in stage 4 with id 27 and associated fundamentals [[87], [80], [21], [194]]
  c_27_resize <= c_21;
  c_27 <= shift_left(c_27_resize, 0);
  -- node of type 'output' in stage 4 with id 28 and associated fundamentals [[34], [40], [92], [78]]
  c_28_resize <= c_12;
  c_28 <= shift_left(c_28_resize, 0);
  -- node of type 'output' in stage 4 with id 29 and associated fundamentals [[81], [202], [144], [207]]
  c_29_resize <= c_18;
  c_29 <= shift_left(c_29_resize, 0);
end architecture;
