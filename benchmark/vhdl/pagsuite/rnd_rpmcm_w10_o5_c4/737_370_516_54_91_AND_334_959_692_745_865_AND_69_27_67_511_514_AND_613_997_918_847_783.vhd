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
  signal c_5: signed(18 downto 0);
  signal c_5_1_3_False_resize: signed(18 downto 0);
  signal c_5_1_3_False_shift: signed(18 downto 0);
  signal c_5_1_0_False_resize: signed(18 downto 0);
  signal c_5_1_0_False_shift: signed(18 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_i0_resize: signed(22 downto 0);
  signal c_6_i1_resize: signed(22 downto 0);
  signal c_6_i0_shift: signed(22 downto 0);
  signal c_6_i1_shift: signed(22 downto 0);
  signal c_6_arith: signed(22 downto 0);
  signal c_6_oshift: signed(22 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(17 downto 0);
  signal c_8: signed(20 downto 0);
  signal c_8_i0_resize: signed(20 downto 0);
  signal c_8_i1_resize: signed(20 downto 0);
  signal c_8_i0_shift: signed(20 downto 0);
  signal c_8_i1_shift: signed(20 downto 0);
  signal c_8_arith: signed(20 downto 0);
  signal c_8_oshift: signed(20 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_i0_resize: signed(22 downto 0);
  signal c_9_i1_resize: signed(22 downto 0);
  signal c_9_i0_shift: signed(22 downto 0);
  signal c_9_i1_shift: signed(22 downto 0);
  signal c_9_arith: signed(22 downto 0);
  signal c_9_oshift: signed(22 downto 0);
  signal c_10: signed(18 downto 0);
  signal c_10_i0_resize: signed(18 downto 0);
  signal c_10_i1_resize: signed(18 downto 0);
  signal c_10_i0_shift: signed(18 downto 0);
  signal c_10_i1_shift: signed(18 downto 0);
  signal c_10_arith: signed(18 downto 0);
  signal c_10_oshift: signed(18 downto 0);
  signal c_11: signed(21 downto 0);
  signal c_11_i0_resize: signed(21 downto 0);
  signal c_11_i1_resize: signed(21 downto 0);
  signal c_11_i0_shift: signed(21 downto 0);
  signal c_11_i1_shift: signed(21 downto 0);
  signal c_11_arith: signed(21 downto 0);
  signal c_11_oshift: signed(21 downto 0);
  signal c_12: signed(21 downto 0);
  signal c_12_8_1_False_resize: signed(21 downto 0);
  signal c_12_8_1_False_shift: signed(21 downto 0);
  signal c_12_4_0_False_resize: signed(21 downto 0);
  signal c_12_4_0_False_shift: signed(21 downto 0);
  signal c_12_11_0_False_resize: signed(21 downto 0);
  signal c_12_11_0_False_shift: signed(21 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(22 downto 0);
  signal c_13_9_0_False_resize: signed(22 downto 0);
  signal c_13_9_0_False_shift: signed(22 downto 0);
  signal c_13_10_4_False_resize: signed(22 downto 0);
  signal c_13_10_4_False_shift: signed(22 downto 0);
  signal c_13_4_6_False_resize: signed(22 downto 0);
  signal c_13_4_6_False_shift: signed(22 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(25 downto 0);
  signal c_14_i0_resize: signed(25 downto 0);
  signal c_14_i1_resize: signed(25 downto 0);
  signal c_14_i0_shift: signed(25 downto 0);
  signal c_14_i1_shift: signed(25 downto 0);
  signal c_14_arith: signed(25 downto 0);
  signal c_14_oshift: signed(25 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(24 downto 0);
  signal c_15_8_4_False_resize: signed(24 downto 0);
  signal c_15_8_4_False_shift: signed(24 downto 0);
  signal c_15_4_0_False_resize: signed(24 downto 0);
  signal c_15_4_0_False_shift: signed(24 downto 0);
  signal c_15_4_5_False_resize: signed(24 downto 0);
  signal c_15_4_5_False_shift: signed(24 downto 0);
  signal c_15_11_3_False_resize: signed(24 downto 0);
  signal c_15_11_3_False_shift: signed(24 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(24 downto 0);
  signal c_16_4_0_False_resize: signed(24 downto 0);
  signal c_16_4_0_False_shift: signed(24 downto 0);
  signal c_16_8_0_False_resize: signed(24 downto 0);
  signal c_16_8_0_False_shift: signed(24 downto 0);
  signal c_16_4_9_False_resize: signed(24 downto 0);
  signal c_16_4_9_False_shift: signed(24 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_i0_resize: signed(25 downto 0);
  signal c_17_i1_resize: signed(25 downto 0);
  signal c_17_i0_shift: signed(25 downto 0);
  signal c_17_i1_shift: signed(25 downto 0);
  signal c_17_arith: signed(25 downto 0);
  signal c_17_oshift: signed(25 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(23 downto 0);
  signal c_18_4_1_False_resize: signed(23 downto 0);
  signal c_18_4_1_False_shift: signed(23 downto 0);
  signal c_18_8_0_False_resize: signed(23 downto 0);
  signal c_18_8_0_False_shift: signed(23 downto 0);
  signal c_18_4_0_False_resize: signed(23 downto 0);
  signal c_18_4_0_False_shift: signed(23 downto 0);
  signal c_18_6_1_False_resize: signed(23 downto 0);
  signal c_18_6_1_False_shift: signed(23 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_8_5_False_resize: signed(25 downto 0);
  signal c_19_8_5_False_shift: signed(25 downto 0);
  signal c_19_4_9_False_resize: signed(25 downto 0);
  signal c_19_4_9_False_shift: signed(25 downto 0);
  signal c_19_8_4_False_resize: signed(25 downto 0);
  signal c_19_8_4_False_shift: signed(25 downto 0);
  signal c_19_6_0_False_resize: signed(25 downto 0);
  signal c_19_6_0_False_shift: signed(25 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_i0_resize: signed(25 downto 0);
  signal c_20_i1_resize: signed(25 downto 0);
  signal c_20_i0_shift: signed(25 downto 0);
  signal c_20_i1_shift: signed(25 downto 0);
  signal c_20_arith: signed(25 downto 0);
  signal c_20_oshift: signed(25 downto 0);
  signal c_21: signed(24 downto 0);
  signal c_21_9_2_False_resize: signed(24 downto 0);
  signal c_21_9_2_False_shift: signed(24 downto 0);
  signal c_21_8_0_False_resize: signed(24 downto 0);
  signal c_21_8_0_False_shift: signed(24 downto 0);
  signal c_21_6_0_False_resize: signed(24 downto 0);
  signal c_21_6_0_False_shift: signed(24 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(24 downto 0);
  signal c_22_4_0_False_resize: signed(24 downto 0);
  signal c_22_4_0_False_shift: signed(24 downto 0);
  signal c_22_4_9_False_resize: signed(24 downto 0);
  signal c_22_4_9_False_shift: signed(24 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_i0_resize: signed(25 downto 0);
  signal c_23_i1_resize: signed(25 downto 0);
  signal c_23_i0_shift: signed(25 downto 0);
  signal c_23_i1_shift: signed(25 downto 0);
  signal c_23_arith: signed(25 downto 0);
  signal c_23_oshift: signed(25 downto 0);
  signal c_23_sub_sel_left: std_logic;
  signal c_23_sub_sel_right: std_logic;
  signal c_24: signed(23 downto 0);
  signal c_24_8_2_False_resize: signed(23 downto 0);
  signal c_24_8_2_False_shift: signed(23 downto 0);
  signal c_24_9_1_False_resize: signed(23 downto 0);
  signal c_24_9_1_False_shift: signed(23 downto 0);
  signal c_24_4_0_False_resize: signed(23 downto 0);
  signal c_24_4_0_False_shift: signed(23 downto 0);
  signal c_24_6_1_False_resize: signed(23 downto 0);
  signal c_24_6_1_False_shift: signed(23 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_25_11_1_False_resize: signed(22 downto 0);
  signal c_25_11_1_False_shift: signed(22 downto 0);
  signal c_25_6_0_False_resize: signed(22 downto 0);
  signal c_25_6_0_False_shift: signed(22 downto 0);
  signal c_25_9_0_False_resize: signed(22 downto 0);
  signal c_25_9_0_False_shift: signed(22 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_i0_resize: signed(25 downto 0);
  signal c_26_i1_resize: signed(25 downto 0);
  signal c_26_i0_shift: signed(25 downto 0);
  signal c_26_i1_shift: signed(25 downto 0);
  signal c_26_arith: signed(25 downto 0);
  signal c_26_oshift: signed(25 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(25 downto 0);
  signal c_27_resize: signed(25 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_resize: signed(25 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_resize: signed(25 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_resize: signed(25 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_resize: signed(25 downto 0);
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
  -- output node 0 with id 27
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_27);
    end if;
  end process;
  -- output node 1 with id 28
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_28);
    end if;
  end process;
  -- output node 2 with id 29
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_29);
    end if;
  end process;
  -- output node 3 with id 30
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_30);
    end if;
  end process;
  -- output node 4 with id 31
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_31);
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
  -- node of type 'mux' in stage 2 with id 5 and associated fundamentals [[1], [8], [8], [8]]
  c_5_1_3_False_resize <= resize(c_1, 19);
  c_5_1_3_False_shift <= shift_left(c_5_1_3_False_resize, 3);
  c_5_1_0_False_resize <= resize(c_1, 19);
  c_5_1_0_False_shift <= shift_left(c_5_1_0_False_resize, 0);
  with config_select_2 select c_5_sel <= 
    "0" when "01",
    "0" when "11",
    "0" when "10",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_1_3_False_shift when "0",
    c_5_1_0_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 6 and associated fundamentals [[7], [65], [65], [65]]
  with config_select_3 select c_6_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
      w_o => 23,
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
      sub_i => c_6_sub_sel,
      x_i => c_5,
      y_i => c_3,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(22 downto 0);
  -- node of type 'register' in stage 2 with id 7 and associated fundamentals [[3], [3], [3], [3]]
  c_7 <= c_2 & "";
  -- node of type 'add' in stage 3 with id 8 and associated fundamentals [[27], [27], [27], [27]]
  inst_adder_node_8: entity work.adder_node
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
      x_i => c_7,
      y_i => c_7,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(20 downto 0);
  -- node of type 'sub' in stage 3 with id 9 and associated fundamentals [[93], [93], [93], [93]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
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
      x_i => c_7,
      y_i => c_7,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(22 downto 0);
  -- node of type 'sub' in stage 3 with id 10 and associated fundamentals [[7], [7], [7], [7]]
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
      s_x_i => 3,
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
      y_i => c_3,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(18 downto 0);
  -- node of type 'add' in stage 3 with id 11 and associated fundamentals [[49], [49], [49], [49]]
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 18,
      w_o => 22,
      s_x_i => 0,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_3,
      y_i => c_7,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(21 downto 0);
  -- node of type 'mux' in stage 4 with id 12 and associated fundamentals [[54], [1], [1], [49]]
  c_12_8_1_False_resize <= resize(c_8, 22);
  c_12_8_1_False_shift <= shift_left(c_12_8_1_False_resize, 1);
  c_12_4_0_False_resize <= resize(c_4, 22);
  c_12_4_0_False_shift <= shift_left(c_12_4_0_False_resize, 0);
  c_12_11_0_False_resize <= c_11;
  c_12_11_0_False_shift <= shift_left(c_12_11_0_False_resize, 0);
  with config_select_4 select c_12_sel <= 
    "00" when "00",
    "01" when "01",
    "01" when "10",
    "10" when others;
  with c_12_sel select c_12 <=
    c_12_8_1_False_shift when "00",
    c_12_4_0_False_shift when "01",
    c_12_11_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 13 and associated fundamentals [[0], [93], [64], [112]]
  c_13_9_0_False_resize <= c_9;
  c_13_9_0_False_shift <= shift_left(c_13_9_0_False_resize, 0);
  c_13_10_4_False_resize <= resize(c_10, 23);
  c_13_10_4_False_shift <= shift_left(c_13_10_4_False_resize, 4);
  c_13_4_6_False_resize <= resize(c_4, 23);
  c_13_4_6_False_shift <= shift_left(c_13_4_6_False_resize, 6);
  with config_select_4 select c_13_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "11" when others;
  with c_13_sel select c_13 <=
    c_13_9_0_False_shift when "00",
    c_13_10_4_False_shift when "01",
    c_13_4_6_False_shift when "10",
    to_signed(0, 23) when others;
  -- node of type 'add_sub' in stage 5 with id 14 and associated fundamentals [[54], [745], [511], [847]]
  with config_select_5 select c_14_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
      w_o => 26,
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
      sub_i => c_14_sub_sel,
      x_i => c_13,
      y_i => c_12,
      z_o => c_14_oshift
    );
  c_14 <= c_14_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 15 and associated fundamentals [[32], [432], [1], [392]]
  c_15_8_4_False_resize <= resize(c_8, 25);
  c_15_8_4_False_shift <= shift_left(c_15_8_4_False_resize, 4);
  c_15_4_0_False_resize <= resize(c_4, 25);
  c_15_4_0_False_shift <= shift_left(c_15_4_0_False_resize, 0);
  c_15_4_5_False_resize <= resize(c_4, 25);
  c_15_4_5_False_shift <= shift_left(c_15_4_5_False_resize, 5);
  c_15_11_3_False_resize <= resize(c_11, 25);
  c_15_11_3_False_shift <= shift_left(c_15_11_3_False_resize, 3);
  with config_select_4 select c_15_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  with c_15_sel select c_15 <=
    c_15_8_4_False_shift when "00",
    c_15_4_0_False_shift when "01",
    c_15_4_5_False_shift when "10",
    c_15_11_3_False_shift when others;
  -- node of type 'mux' in stage 4 with id 16 and associated fundamentals [[27], [1], [512], [1]]
  c_16_4_0_False_resize <= resize(c_4, 25);
  c_16_4_0_False_shift <= shift_left(c_16_4_0_False_resize, 0);
  c_16_8_0_False_resize <= resize(c_8, 25);
  c_16_8_0_False_shift <= shift_left(c_16_8_0_False_resize, 0);
  c_16_4_9_False_resize <= resize(c_4, 25);
  c_16_4_9_False_shift <= shift_left(c_16_4_9_False_resize, 9);
  with config_select_4 select c_16_sel <= 
    "00" when "01",
    "00" when "11",
    "01" when "00",
    "10" when others;
  with c_16_sel select c_16 <=
    c_16_4_0_False_shift when "00",
    c_16_8_0_False_shift when "01",
    c_16_4_9_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 17 and associated fundamentals [[91], [865], [514], [783]]
  with config_select_5 select c_17_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
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
      sub_i => c_17_sub_sel,
      x_i => c_15,
      y_i => c_16,
      z_o => c_17_oshift
    );
  c_17 <= c_17_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 18 and associated fundamentals [[2], [130], [1], [27]]
  c_18_4_1_False_resize <= resize(c_4, 24);
  c_18_4_1_False_shift <= shift_left(c_18_4_1_False_resize, 1);
  c_18_8_0_False_resize <= resize(c_8, 24);
  c_18_8_0_False_shift <= shift_left(c_18_8_0_False_resize, 0);
  c_18_4_0_False_resize <= resize(c_4, 24);
  c_18_4_0_False_shift <= shift_left(c_18_4_0_False_resize, 0);
  c_18_6_1_False_resize <= resize(c_6, 24);
  c_18_6_1_False_shift <= shift_left(c_18_6_1_False_resize, 1);
  with config_select_4 select c_18_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "10",
    "11" when others;
  with c_18_sel select c_18 <=
    c_18_4_1_False_shift when "00",
    c_18_8_0_False_shift when "01",
    c_18_4_0_False_shift when "10",
    c_18_6_1_False_shift when others;
  -- node of type 'mux' in stage 4 with id 19 and associated fundamentals [[512], [432], [65], [864]]
  c_19_8_5_False_resize <= resize(c_8, 26);
  c_19_8_5_False_shift <= shift_left(c_19_8_5_False_resize, 5);
  c_19_4_9_False_resize <= resize(c_4, 26);
  c_19_4_9_False_shift <= shift_left(c_19_4_9_False_resize, 9);
  c_19_8_4_False_resize <= resize(c_8, 26);
  c_19_8_4_False_shift <= shift_left(c_19_8_4_False_resize, 4);
  c_19_6_0_False_resize <= resize(c_6, 26);
  c_19_6_0_False_shift <= shift_left(c_19_6_0_False_resize, 0);
  with config_select_4 select c_19_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  with c_19_sel select c_19 <=
    c_19_8_5_False_shift when "00",
    c_19_4_9_False_shift when "01",
    c_19_8_4_False_shift when "10",
    c_19_6_0_False_shift when others;
  -- node of type 'add' in stage 5 with id 20 and associated fundamentals [[516], [692], [67], [918]]
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 26,
      w_o => 26,
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
      x_i => c_18,
      y_i => c_19,
      z_o => c_20_oshift
    );
  c_20 <= c_20_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 21 and associated fundamentals [[372], [65], [27], [27]]
  c_21_9_2_False_resize <= resize(c_9, 25);
  c_21_9_2_False_shift <= shift_left(c_21_9_2_False_resize, 2);
  c_21_8_0_False_resize <= resize(c_8, 25);
  c_21_8_0_False_shift <= shift_left(c_21_8_0_False_resize, 0);
  c_21_6_0_False_resize <= resize(c_6, 25);
  c_21_6_0_False_shift <= shift_left(c_21_6_0_False_resize, 0);
  with config_select_4 select c_21_sel <= 
    "00" when "00",
    "01" when "11",
    "01" when "10",
    "10" when others;
  with c_21_sel select c_21 <=
    c_21_9_2_False_shift when "00",
    c_21_8_0_False_shift when "01",
    c_21_6_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 22 and associated fundamentals [[1], [512], [0], [512]]
  c_22_4_0_False_resize <= resize(c_4, 25);
  c_22_4_0_False_shift <= shift_left(c_22_4_0_False_resize, 0);
  c_22_4_9_False_resize <= resize(c_4, 25);
  c_22_4_9_False_shift <= shift_left(c_22_4_9_False_resize, 9);
  with config_select_4 select c_22_sel <= 
    "00" when "00",
    "01" when "01",
    "01" when "11",
    "10" when others;
  with c_22_sel select c_22 <=
    c_22_4_0_False_shift when "00",
    c_22_4_9_False_shift when "01",
    to_signed(0, 25) when others;
  -- node of type 'add_sub' in stage 5 with id 23 and associated fundamentals [[370], [959], [27], [997]]
  with config_select_5 select c_23_sub_sel_left <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  with config_select_5 select c_23_sub_sel_right <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_23: entity work.adder_node
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
      is_double_add_sub => True,
      sub => False
    )
    port map (
      sub_a_i => c_23_sub_sel_left,
      sub_b_i => c_23_sub_sel_right,
      x_i => c_21,
      y_i => c_22,
      z_o => c_23_oshift
    );
  c_23 <= c_23_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 24 and associated fundamentals [[186], [108], [1], [130]]
  c_24_8_2_False_resize <= resize(c_8, 24);
  c_24_8_2_False_shift <= shift_left(c_24_8_2_False_resize, 2);
  c_24_9_1_False_resize <= resize(c_9, 24);
  c_24_9_1_False_shift <= shift_left(c_24_9_1_False_resize, 1);
  c_24_4_0_False_resize <= resize(c_4, 24);
  c_24_4_0_False_shift <= shift_left(c_24_4_0_False_resize, 0);
  c_24_6_1_False_resize <= resize(c_6, 24);
  c_24_6_1_False_shift <= shift_left(c_24_6_1_False_resize, 1);
  with config_select_4 select c_24_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  with c_24_sel select c_24 <=
    c_24_8_2_False_shift when "00",
    c_24_9_1_False_shift when "01",
    c_24_4_0_False_shift when "10",
    c_24_6_1_False_shift when others;
  -- node of type 'mux' in stage 4 with id 25 and associated fundamentals [[7], [98], [65], [93]]
  c_25_11_1_False_resize <= resize(c_11, 23);
  c_25_11_1_False_shift <= shift_left(c_25_11_1_False_resize, 1);
  c_25_6_0_False_resize <= c_6;
  c_25_6_0_False_shift <= shift_left(c_25_6_0_False_resize, 0);
  c_25_9_0_False_resize <= c_9;
  c_25_9_0_False_shift <= shift_left(c_25_9_0_False_resize, 0);
  with config_select_4 select c_25_sel <= 
    "00" when "01",
    "01" when "00",
    "01" when "10",
    "10" when others;
  with c_25_sel select c_25 <=
    c_25_11_1_False_shift when "00",
    c_25_6_0_False_shift when "01",
    c_25_9_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 26 and associated fundamentals [[737], [334], [69], [613]]
  with config_select_5 select c_26_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
      w_o => 26,
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
      sub_i => c_26_sub_sel,
      x_i => c_24,
      y_i => c_25,
      z_o => c_26_oshift
    );
  c_26 <= c_26_oshift(25 downto 0);
  -- node of type 'output' in stage 5 with id 27 and associated fundamentals [[737], [334], [69], [613]]
  c_27_resize <= c_26;
  c_27 <= shift_left(c_27_resize, 0);
  -- node of type 'output' in stage 5 with id 28 and associated fundamentals [[370], [959], [27], [997]]
  c_28_resize <= c_23;
  c_28 <= shift_left(c_28_resize, 0);
  -- node of type 'output' in stage 5 with id 29 and associated fundamentals [[516], [692], [67], [918]]
  c_29_resize <= c_20;
  c_29 <= shift_left(c_29_resize, 0);
  -- node of type 'output' in stage 5 with id 30 and associated fundamentals [[54], [745], [511], [847]]
  c_30_resize <= c_14;
  c_30 <= shift_left(c_30_resize, 0);
  -- node of type 'output' in stage 5 with id 31 and associated fundamentals [[91], [865], [514], [783]]
  c_31_resize <= c_17;
  c_31 <= shift_left(c_31_resize, 0);
end architecture;
