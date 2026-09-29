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
  signal c_2: signed(17 downto 0);
  signal c_2_0_0_False_resize: signed(17 downto 0);
  signal c_2_0_0_False_shift: signed(17 downto 0);
  signal c_2_0_2_False_resize: signed(17 downto 0);
  signal c_2_0_2_False_shift: signed(17 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(22 downto 0);
  signal c_3_i0_resize: signed(22 downto 0);
  signal c_3_i1_resize: signed(22 downto 0);
  signal c_3_i0_shift: signed(22 downto 0);
  signal c_3_i1_shift: signed(22 downto 0);
  signal c_3_arith: signed(22 downto 0);
  signal c_3_oshift: signed(22 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(19 downto 0);
  signal c_4_i0_resize: signed(19 downto 0);
  signal c_4_i1_resize: signed(19 downto 0);
  signal c_4_i0_shift: signed(19 downto 0);
  signal c_4_i1_shift: signed(19 downto 0);
  signal c_4_arith: signed(19 downto 0);
  signal c_4_oshift: signed(19 downto 0);
  signal c_5: signed(17 downto 0);
  signal c_5_0_0_False_resize: signed(17 downto 0);
  signal c_5_0_0_False_shift: signed(17 downto 0);
  signal c_5_0_2_False_resize: signed(17 downto 0);
  signal c_5_0_2_False_shift: signed(17 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_i0_resize: signed(22 downto 0);
  signal c_6_i1_resize: signed(22 downto 0);
  signal c_6_i0_shift: signed(22 downto 0);
  signal c_6_i1_shift: signed(22 downto 0);
  signal c_6_arith: signed(22 downto 0);
  signal c_6_oshift: signed(22 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(15 downto 0);
  signal c_7_0_0_False_resize: signed(15 downto 0);
  signal c_7_0_0_False_shift: signed(15 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_i0_resize: signed(22 downto 0);
  signal c_8_i1_resize: signed(22 downto 0);
  signal c_8_i0_shift: signed(22 downto 0);
  signal c_8_i1_shift: signed(22 downto 0);
  signal c_8_arith: signed(22 downto 0);
  signal c_8_oshift: signed(22 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_9_3_4_False_resize: signed(21 downto 0);
  signal c_9_3_4_False_shift: signed(21 downto 0);
  signal c_9_4_0_False_resize: signed(21 downto 0);
  signal c_9_4_0_False_shift: signed(21 downto 0);
  signal c_9_4_2_False_resize: signed(21 downto 0);
  signal c_9_4_2_False_shift: signed(21 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_6_3_False_resize: signed(22 downto 0);
  signal c_10_6_3_False_shift: signed(22 downto 0);
  signal c_10_6_0_False_resize: signed(22 downto 0);
  signal c_10_6_0_False_shift: signed(22 downto 0);
  signal c_10_3_1_False_resize: signed(22 downto 0);
  signal c_10_3_1_False_shift: signed(22 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_i0_resize: signed(23 downto 0);
  signal c_11_i1_resize: signed(23 downto 0);
  signal c_11_i0_shift: signed(23 downto 0);
  signal c_11_i1_shift: signed(23 downto 0);
  signal c_11_arith: signed(23 downto 0);
  signal c_11_oshift: signed(23 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(22 downto 0);
  signal c_12_8_0_False_resize: signed(22 downto 0);
  signal c_12_8_0_False_shift: signed(22 downto 0);
  signal c_12_6_2_False_resize: signed(22 downto 0);
  signal c_12_6_2_False_shift: signed(22 downto 0);
  signal c_12_4_2_False_resize: signed(22 downto 0);
  signal c_12_4_2_False_shift: signed(22 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(20 downto 0);
  signal c_13_8_5_False_resize: signed(20 downto 0);
  signal c_13_8_5_False_shift: signed(20 downto 0);
  signal c_13_6_0_False_resize: signed(20 downto 0);
  signal c_13_6_0_False_shift: signed(20 downto 0);
  signal c_13_3_0_False_resize: signed(20 downto 0);
  signal c_13_3_0_False_shift: signed(20 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_i0_resize: signed(23 downto 0);
  signal c_14_i1_resize: signed(23 downto 0);
  signal c_14_i0_shift: signed(23 downto 0);
  signal c_14_i1_shift: signed(23 downto 0);
  signal c_14_arith: signed(23 downto 0);
  signal c_14_oshift: signed(23 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(22 downto 0);
  signal c_15_3_7_False_resize: signed(22 downto 0);
  signal c_15_3_7_False_shift: signed(22 downto 0);
  signal c_15_4_3_False_resize: signed(22 downto 0);
  signal c_15_4_3_False_shift: signed(22 downto 0);
  signal c_15_4_0_False_resize: signed(22 downto 0);
  signal c_15_4_0_False_shift: signed(22 downto 0);
  signal c_15_3_3_False_resize: signed(22 downto 0);
  signal c_15_3_3_False_shift: signed(22 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(22 downto 0);
  signal c_16_3_0_False_resize: signed(22 downto 0);
  signal c_16_3_0_False_shift: signed(22 downto 0);
  signal c_16_4_1_False_resize: signed(22 downto 0);
  signal c_16_4_1_False_shift: signed(22 downto 0);
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
  signal c_18_resize: signed(23 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_resize: signed(23 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_resize: signed(23 downto 0);
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
  -- output node 2 with id 20
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_20);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1], [1], [1]]
  c_1 <= c_0 & "";
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[0], [1], [4], [0]]
  c_2_0_0_False_resize <= resize(c_0, 18);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_2_False_resize <= resize(c_0, 18);
  c_2_0_2_False_shift <= shift_left(c_2_0_2_False_resize, 2);
  with config_select_1 select c_2_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "10" when others;
  with c_2_sel select c_2 <=
    c_2_0_0_False_shift when "00",
    c_2_0_2_False_shift when "01",
    to_signed(0, 18) when others;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[1], [15], [65], [1]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
      w_o => 23,
      s_x_i => 4,
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
  -- node of type 'add' in stage 2 with id 4 and associated fundamentals [[9], [9], [9], [9]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
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
      x_i => c_1,
      y_i => c_1,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(19 downto 0);
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[1], [4], [1], [1]]
  c_5_0_0_False_resize <= resize(c_0, 18);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_0_2_False_resize <= resize(c_0, 18);
  c_5_0_2_False_shift <= shift_left(c_5_0_2_False_resize, 2);
  with config_select_1 select c_5_sel <= 
    "0" when "10",
    "0" when "11",
    "0" when "00",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_0_0_False_shift when "0",
    c_5_0_2_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 6 and associated fundamentals [[15], [65], [15], [15]]
  with config_select_2 select c_6_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
      w_o => 23,
      s_x_i => 4,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_6_sub_sel,
      x_i => c_5,
      y_i => c_1,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(22 downto 0);
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[0], [0], [0], [1]]
  c_7_0_0_False_resize <= c_0;
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  with config_select_1 select c_7_sel <= 
    "0" when "11",
    "1" when "00",
    "1" when "01",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_0_0_False_shift when "0",
    to_signed(0, 16) when others;
  -- node of type 'add' in stage 2 with id 8 and associated fundamentals [[1], [1], [1], [65]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 6,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_1,
      y_i => c_7,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(22 downto 0);
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[16], [36], [9], [9]]
  c_9_3_4_False_resize <= c_3(21 downto 0);
  c_9_3_4_False_shift <= shift_left(c_9_3_4_False_resize, 4);
  c_9_4_0_False_resize <= resize(c_4, 22);
  c_9_4_0_False_shift <= shift_left(c_9_4_0_False_resize, 0);
  c_9_4_2_False_resize <= resize(c_4, 22);
  c_9_4_2_False_shift <= shift_left(c_9_4_2_False_resize, 2);
  with config_select_3 select c_9_sel <= 
    "00" when "00",
    "01" when "10",
    "01" when "11",
    "10" when others;
  with c_9_sel select c_9 <=
    c_9_3_4_False_shift when "00",
    c_9_4_0_False_shift when "01",
    c_9_4_2_False_shift when others;
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[2], [65], [15], [120]]
  c_10_6_3_False_resize <= c_6;
  c_10_6_3_False_shift <= shift_left(c_10_6_3_False_resize, 3);
  c_10_6_0_False_resize <= c_6;
  c_10_6_0_False_shift <= shift_left(c_10_6_0_False_resize, 0);
  c_10_3_1_False_resize <= c_3;
  c_10_3_1_False_shift <= shift_left(c_10_3_1_False_resize, 1);
  with config_select_3 select c_10_sel <= 
    "00" when "11",
    "01" when "01",
    "01" when "10",
    "10" when others;
  with c_10_sel select c_10 <=
    c_10_6_3_False_shift when "00",
    c_10_6_0_False_shift when "01",
    c_10_3_1_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 11 and associated fundamentals [[62], [209], [51], [156]]
  with config_select_4 select c_11_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
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
      sub_i => c_11_sub_sel,
      x_i => c_9,
      y_i => c_10,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[60], [36], [36], [65]]
  c_12_8_0_False_resize <= c_8;
  c_12_8_0_False_shift <= shift_left(c_12_8_0_False_resize, 0);
  c_12_6_2_False_resize <= c_6;
  c_12_6_2_False_shift <= shift_left(c_12_6_2_False_resize, 2);
  c_12_4_2_False_resize <= resize(c_4, 23);
  c_12_4_2_False_shift <= shift_left(c_12_4_2_False_resize, 2);
  with config_select_3 select c_12_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "10" when others;
  with c_12_sel select c_12 <=
    c_12_8_0_False_shift when "00",
    c_12_6_2_False_shift when "01",
    c_12_4_2_False_shift when others;
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[15], [32], [15], [1]]
  c_13_8_5_False_resize <= c_8(20 downto 0);
  c_13_8_5_False_shift <= shift_left(c_13_8_5_False_resize, 5);
  c_13_6_0_False_resize <= c_6(20 downto 0);
  c_13_6_0_False_shift <= shift_left(c_13_6_0_False_resize, 0);
  c_13_3_0_False_resize <= c_3(20 downto 0);
  c_13_3_0_False_shift <= shift_left(c_13_3_0_False_resize, 0);
  with config_select_3 select c_13_sel <= 
    "00" when "01",
    "01" when "00",
    "01" when "10",
    "10" when others;
  with c_13_sel select c_13 <=
    c_13_8_5_False_shift when "00",
    c_13_6_0_False_shift when "01",
    c_13_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 14 and associated fundamentals [[105], [104], [87], [131]]
  with config_select_4 select c_14_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
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
      sub_i => c_14_sub_sel,
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  c_14 <= c_14_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[128], [120], [9], [72]]
  c_15_3_7_False_resize <= c_3;
  c_15_3_7_False_shift <= shift_left(c_15_3_7_False_resize, 7);
  c_15_4_3_False_resize <= resize(c_4, 23);
  c_15_4_3_False_shift <= shift_left(c_15_4_3_False_resize, 3);
  c_15_4_0_False_resize <= resize(c_4, 23);
  c_15_4_0_False_shift <= shift_left(c_15_4_0_False_resize, 0);
  c_15_3_3_False_resize <= c_3;
  c_15_3_3_False_shift <= shift_left(c_15_3_3_False_resize, 3);
  with config_select_3 select c_15_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "10",
    "11" when others;
  with c_15_sel select c_15 <=
    c_15_3_7_False_shift when "00",
    c_15_4_3_False_shift when "01",
    c_15_4_0_False_shift when "10",
    c_15_3_3_False_shift when others;
  -- node of type 'mux' in stage 3 with id 16 and associated fundamentals [[18], [18], [65], [1]]
  c_16_3_0_False_resize <= c_3;
  c_16_3_0_False_shift <= shift_left(c_16_3_0_False_resize, 0);
  c_16_4_1_False_resize <= resize(c_4, 23);
  c_16_4_1_False_shift <= shift_left(c_16_4_1_False_resize, 1);
  with config_select_3 select c_16_sel <= 
    "0" when "11",
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_3_0_False_shift when "0",
    c_16_4_1_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 17 and associated fundamentals [[238], [222], [83], [145]]
  with config_select_4 select c_17_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
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
      sub_i => c_17_sub_sel,
      x_i => c_15,
      y_i => c_16,
      z_o => c_17_oshift
    );
  c_17 <= c_17_oshift(23 downto 0);
  -- node of type 'output' in stage 4 with id 18 and associated fundamentals [[105], [104], [87], [131]]
  c_18_resize <= c_14;
  c_18 <= shift_left(c_18_resize, 0);
  -- node of type 'output' in stage 4 with id 19 and associated fundamentals [[238], [222], [83], [145]]
  c_19_resize <= c_17;
  c_19 <= shift_left(c_19_resize, 0);
  -- node of type 'output' in stage 4 with id 20 and associated fundamentals [[62], [209], [51], [156]]
  c_20_resize <= c_11;
  c_20 <= shift_left(c_20_resize, 0);
end architecture;
