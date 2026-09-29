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
    y_3: out std_logic_vector(24 downto 0);
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
  signal config_select_12: std_logic_vector(1 downto 0);
  signal config_select_13: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(16 downto 0);
  signal c_1_0_0_False_resize: signed(16 downto 0);
  signal c_1_0_0_False_shift: signed(16 downto 0);
  signal c_1_0_1_False_resize: signed(16 downto 0);
  signal c_1_0_1_False_shift: signed(16 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(21 downto 0);
  signal c_2_i0_resize: signed(21 downto 0);
  signal c_2_i1_resize: signed(21 downto 0);
  signal c_2_i0_shift: signed(21 downto 0);
  signal c_2_i1_shift: signed(21 downto 0);
  signal c_2_arith: signed(21 downto 0);
  signal c_2_oshift: signed(21 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(17 downto 0);
  signal c_3_0_2_False_resize: signed(17 downto 0);
  signal c_3_0_2_False_shift: signed(17 downto 0);
  signal c_3_0_0_False_resize: signed(17 downto 0);
  signal c_3_0_0_False_shift: signed(17 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(21 downto 0);
  signal c_4_i0_resize: signed(21 downto 0);
  signal c_4_i1_resize: signed(21 downto 0);
  signal c_4_i0_shift: signed(21 downto 0);
  signal c_4_i1_shift: signed(21 downto 0);
  signal c_4_arith: signed(21 downto 0);
  signal c_4_oshift: signed(21 downto 0);
  signal c_5: signed(24 downto 0);
  signal c_5_i0_resize: signed(24 downto 0);
  signal c_5_i1_resize: signed(24 downto 0);
  signal c_5_i0_shift: signed(24 downto 0);
  signal c_5_i1_shift: signed(24 downto 0);
  signal c_5_arith: signed(24 downto 0);
  signal c_5_oshift: signed(24 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(20 downto 0);
  signal c_6_i0_resize: signed(20 downto 0);
  signal c_6_i1_resize: signed(20 downto 0);
  signal c_6_i0_shift: signed(20 downto 0);
  signal c_6_i1_shift: signed(20 downto 0);
  signal c_6_arith: signed(20 downto 0);
  signal c_6_oshift: signed(20 downto 0);
  signal c_7: signed(24 downto 0);
  signal c_7_5_0_False_resize: signed(24 downto 0);
  signal c_7_5_0_False_shift: signed(24 downto 0);
  signal c_7_4_2_False_resize: signed(24 downto 0);
  signal c_7_4_2_False_shift: signed(24 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_6_0_False_resize: signed(22 downto 0);
  signal c_8_6_0_False_shift: signed(22 downto 0);
  signal c_8_6_2_False_resize: signed(22 downto 0);
  signal c_8_6_2_False_shift: signed(22 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(24 downto 0);
  signal c_9_i0_resize: signed(24 downto 0);
  signal c_9_i1_resize: signed(24 downto 0);
  signal c_9_i0_shift: signed(24 downto 0);
  signal c_9_i1_shift: signed(24 downto 0);
  signal c_9_arith: signed(24 downto 0);
  signal c_9_oshift: signed(24 downto 0);
  signal c_10: signed(24 downto 0);
  signal c_10_9_0_False_resize: signed(24 downto 0);
  signal c_10_9_0_False_shift: signed(24 downto 0);
  signal c_10_2_1_False_resize: signed(24 downto 0);
  signal c_10_2_1_False_shift: signed(24 downto 0);
  signal c_10_5_0_False_resize: signed(24 downto 0);
  signal c_10_5_0_False_shift: signed(24 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(24 downto 0);
  signal c_11_i0_resize: signed(24 downto 0);
  signal c_11_i1_resize: signed(24 downto 0);
  signal c_11_i0_shift: signed(24 downto 0);
  signal c_11_i1_shift: signed(24 downto 0);
  signal c_11_arith: signed(24 downto 0);
  signal c_11_oshift: signed(24 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(24 downto 0);
  signal c_12_11_0_False_resize: signed(24 downto 0);
  signal c_12_11_0_False_shift: signed(24 downto 0);
  signal c_12_11_2_False_resize: signed(24 downto 0);
  signal c_12_11_2_False_shift: signed(24 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(24 downto 0);
  signal c_13_5_0_False_resize: signed(24 downto 0);
  signal c_13_5_0_False_shift: signed(24 downto 0);
  signal c_13_6_2_False_resize: signed(24 downto 0);
  signal c_13_6_2_False_shift: signed(24 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(25 downto 0);
  signal c_14_i0_resize: signed(25 downto 0);
  signal c_14_i1_resize: signed(25 downto 0);
  signal c_14_i0_shift: signed(25 downto 0);
  signal c_14_i1_shift: signed(25 downto 0);
  signal c_14_arith: signed(25 downto 0);
  signal c_14_oshift: signed(25 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(25 downto 0);
  signal c_15_4_4_False_resize: signed(25 downto 0);
  signal c_15_4_4_False_shift: signed(25 downto 0);
  signal c_15_2_0_False_resize: signed(25 downto 0);
  signal c_15_2_0_False_shift: signed(25 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(25 downto 0);
  signal c_16_i1_resize: signed(25 downto 0);
  signal c_16_i0_shift: signed(25 downto 0);
  signal c_16_i1_shift: signed(25 downto 0);
  signal c_16_arith: signed(25 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(25 downto 0);
  signal c_17_16_0_False_resize: signed(25 downto 0);
  signal c_17_16_0_False_shift: signed(25 downto 0);
  signal c_17_2_5_False_resize: signed(25 downto 0);
  signal c_17_2_5_False_shift: signed(25 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_i0_resize: signed(25 downto 0);
  signal c_18_i1_resize: signed(25 downto 0);
  signal c_18_i0_shift: signed(25 downto 0);
  signal c_18_i1_shift: signed(25 downto 0);
  signal c_18_arith: signed(25 downto 0);
  signal c_18_oshift: signed(25 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(25 downto 0);
  signal c_19_5_1_False_resize: signed(25 downto 0);
  signal c_19_5_1_False_shift: signed(25 downto 0);
  signal c_19_5_0_False_resize: signed(25 downto 0);
  signal c_19_5_0_False_shift: signed(25 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_resize: signed(25 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_14_4_False_resize: signed(25 downto 0);
  signal c_21_14_4_False_shift: signed(25 downto 0);
  signal c_21_14_1_False_resize: signed(25 downto 0);
  signal c_21_14_1_False_shift: signed(25 downto 0);
  signal c_21_16_0_False_resize: signed(25 downto 0);
  signal c_21_16_0_False_shift: signed(25 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_resize: signed(25 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_resize: signed(25 downto 0);
  signal c_24: signed(24 downto 0);
  signal c_24_16_0_False_resize: signed(24 downto 0);
  signal c_24_16_0_False_shift: signed(24 downto 0);
  signal c_24_9_0_False_resize: signed(24 downto 0);
  signal c_24_9_0_False_shift: signed(24 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(24 downto 0);
  signal c_25_resize: signed(24 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_14_0_False_resize: signed(25 downto 0);
  signal c_26_14_0_False_shift: signed(25 downto 0);
  signal c_26_11_0_False_resize: signed(25 downto 0);
  signal c_26_11_0_False_shift: signed(25 downto 0);
  signal c_26_9_1_False_resize: signed(25 downto 0);
  signal c_26_9_1_False_shift: signed(25 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
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
  -- output node 0 with id 20
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_20);
    end if;
  end process;
  -- output node 1 with id 22
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_22);
    end if;
  end process;
  -- output node 2 with id 23
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_23);
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
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [2], [1]]
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "0",
    c_1_0_1_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 2 and associated fundamentals [[30], [36], [34]]
  with config_select_2 select c_2_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 17,
      w_o => 22,
      s_x_i => 5,
      s_y_i => 1,
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
  c_2 <= c_2_oshift(21 downto 0);
  -- node of type 'mux' in stage 1 with id 3 and associated fundamentals [[1], [4], [4]]
  c_3_0_2_False_resize <= resize(c_0, 18);
  c_3_0_2_False_shift <= shift_left(c_3_0_2_False_resize, 2);
  c_3_0_0_False_resize <= resize(c_0, 18);
  c_3_0_0_False_shift <= shift_left(c_3_0_0_False_resize, 0);
  with config_select_1 select c_3_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_0_2_False_shift when "0",
    c_3_0_0_False_shift when others;
  -- node of type 'add' in stage 3 with id 4 and associated fundamentals [[32], [44], [42]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 22,
      w_o => 22,
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
      x_i => c_3,
      y_i => c_2,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(21 downto 0);
  -- node of type 'add_sub' in stage 4 with id 5 and associated fundamentals [[255], [353], [337]]
  with config_select_4 select c_5_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 16,
      w_o => 25,
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
      sub_i => c_5_sub_sel,
      x_i => c_4,
      y_i => c_0,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(24 downto 0);
  -- node of type 'sub' in stage 1 with id 6 and associated fundamentals [[-31], [-31], [-31]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 21,
      s_x_i => 0,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_0,
      y_i => c_0,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(20 downto 0);
  -- node of type 'mux' in stage 5 with id 7 and associated fundamentals [[255], [176], [337]]
  c_7_5_0_False_resize <= c_5;
  c_7_5_0_False_shift <= shift_left(c_7_5_0_False_resize, 0);
  c_7_4_2_False_resize <= resize(c_4, 25);
  c_7_4_2_False_shift <= shift_left(c_7_4_2_False_resize, 2);
  with config_select_5 select c_7_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_5_0_False_shift when "0",
    c_7_4_2_False_shift when others;
  -- node of type 'mux' in stage 2 with id 8 and associated fundamentals [[-31], [-31], [-124]]
  c_8_6_0_False_resize <= resize(c_6, 23);
  c_8_6_0_False_shift <= shift_left(c_8_6_0_False_resize, 0);
  c_8_6_2_False_resize <= resize(c_6, 23);
  c_8_6_2_False_shift <= shift_left(c_8_6_2_False_resize, 2);
  with config_select_2 select c_8_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_6_0_False_shift when "0",
    c_8_6_2_False_shift when others;
  -- node of type 'sub' in stage 6 with id 9 and associated fundamentals [[286], [207], [461]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
      w_o => 25,
      s_x_i => 0,
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
      y_i => c_8,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(24 downto 0);
  -- node of type 'mux' in stage 7 with id 10 and associated fundamentals [[60], [207], [337]]
  c_10_9_0_False_resize <= c_9;
  c_10_9_0_False_shift <= shift_left(c_10_9_0_False_resize, 0);
  c_10_2_1_False_resize <= resize(c_2, 25);
  c_10_2_1_False_shift <= shift_left(c_10_2_1_False_resize, 1);
  c_10_5_0_False_resize <= c_5;
  c_10_5_0_False_shift <= shift_left(c_10_5_0_False_resize, 0);
  with config_select_7 select c_10_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_10_sel select c_10 <=
    c_10_9_0_False_shift when "00",
    c_10_2_1_False_shift when "01",
    c_10_5_0_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 11 and associated fundamentals [[308], [455], [89]]
  with config_select_8 select c_11_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 21,
      w_o => 25,
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
      sub_i => c_11_sub_sel,
      x_i => c_10,
      y_i => c_6,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(24 downto 0);
  -- node of type 'mux' in stage 9 with id 12 and associated fundamentals [[308], [455], [356]]
  c_12_11_0_False_resize <= c_11;
  c_12_11_0_False_shift <= shift_left(c_12_11_0_False_resize, 0);
  c_12_11_2_False_resize <= c_11;
  c_12_11_2_False_shift <= shift_left(c_12_11_2_False_resize, 2);
  with config_select_9 select c_12_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_12_sel select c_12 <=
    c_12_11_0_False_shift when "0",
    c_12_11_2_False_shift when others;
  -- node of type 'mux' in stage 5 with id 13 and associated fundamentals [[255], [-124], [337]]
  c_13_5_0_False_resize <= c_5;
  c_13_5_0_False_shift <= shift_left(c_13_5_0_False_resize, 0);
  c_13_6_2_False_resize <= resize(c_6, 25);
  c_13_6_2_False_shift <= shift_left(c_13_6_2_False_resize, 2);
  with config_select_5 select c_13_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_5_0_False_shift when "0",
    c_13_6_2_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 14 and associated fundamentals [[53], [331], [693]]
  with config_select_10 select c_14_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_14_sub_sel,
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  c_14 <= c_14_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 15 and associated fundamentals [[30], [36], [672]]
  c_15_4_4_False_resize <= resize(c_4, 26);
  c_15_4_4_False_shift <= shift_left(c_15_4_4_False_resize, 4);
  c_15_2_0_False_resize <= resize(c_2, 26);
  c_15_2_0_False_shift <= shift_left(c_15_2_0_False_resize, 0);
  with config_select_4 select c_15_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_15_sel select c_15 <=
    c_15_4_4_False_shift when "0",
    c_15_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 9 with id 16 and associated fundamentals [[338], [491], [583]]
  with config_select_9 select c_16_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_16: entity work.adder_node
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
      sub_i => c_16_sub_sel,
      x_i => c_15,
      y_i => c_11,
      z_o => c_16_oshift
    );
  c_16 <= c_16_oshift(25 downto 0);
  -- node of type 'mux' in stage 10 with id 17 and associated fundamentals [[960], [491], [583]]
  c_17_16_0_False_resize <= c_16;
  c_17_16_0_False_shift <= shift_left(c_17_16_0_False_resize, 0);
  c_17_2_5_False_resize <= resize(c_2, 26);
  c_17_2_5_False_shift <= shift_left(c_17_2_5_False_resize, 5);
  with config_select_10 select c_17_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_17_sel select c_17 <=
    c_17_16_0_False_shift when "0",
    c_17_2_5_False_shift when others;
  -- node of type 'add_sub' in stage 11 with id 18 and associated fundamentals [[1022], [429], [521]]
  with config_select_11 select c_18_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_18: entity work.adder_node
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
      sub_i => c_18_sub_sel,
      x_i => c_17,
      y_i => c_6,
      z_o => c_18_oshift
    );
  c_18 <= c_18_oshift(25 downto 0);
  -- node of type 'mux' in stage 5 with id 19 and associated fundamentals [[255], [706], [337]]
  c_19_5_1_False_resize <= resize(c_5, 26);
  c_19_5_1_False_shift <= shift_left(c_19_5_1_False_resize, 1);
  c_19_5_0_False_resize <= resize(c_5, 26);
  c_19_5_0_False_shift <= shift_left(c_19_5_0_False_resize, 0);
  with config_select_5 select c_19_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_19_sel select c_19 <=
    c_19_5_1_False_shift when "0",
    c_19_5_0_False_shift when others;
  -- node of type 'output' in stage 5 with id 20 and associated fundamentals [[255], [706], [337]]
  c_20_resize <= c_19;
  c_20 <= shift_left(c_20_resize, 0);
  -- node of type 'mux' in stage 11 with id 21 and associated fundamentals [[848], [662], [583]]
  c_21_14_4_False_resize <= c_14;
  c_21_14_4_False_shift <= shift_left(c_21_14_4_False_resize, 4);
  c_21_14_1_False_resize <= c_14;
  c_21_14_1_False_shift <= shift_left(c_21_14_1_False_resize, 1);
  c_21_16_0_False_resize <= c_16;
  c_21_16_0_False_shift <= shift_left(c_21_16_0_False_resize, 0);
  with config_select_11 select c_21_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_21_sel select c_21 <=
    c_21_14_4_False_shift when "00",
    c_21_14_1_False_shift when "01",
    c_21_16_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 22 and associated fundamentals [[848], [662], [583]]
  c_22_resize <= c_21;
  c_22 <= shift_left(c_22_resize, 0);
  -- node of type 'output' in stage 11 with id 23 and associated fundamentals [[1022], [429], [521]]
  c_23_resize <= c_18;
  c_23 <= shift_left(c_23_resize, 0);
  -- node of type 'mux' in stage 10 with id 24 and associated fundamentals [[338], [491], [461]]
  c_24_16_0_False_resize <= c_16(24 downto 0);
  c_24_16_0_False_shift <= shift_left(c_24_16_0_False_resize, 0);
  c_24_9_0_False_resize <= c_9;
  c_24_9_0_False_shift <= shift_left(c_24_9_0_False_resize, 0);
  with config_select_10 select c_24_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_24_sel select c_24 <=
    c_24_16_0_False_shift when "0",
    c_24_9_0_False_shift when others;
  -- node of type 'output' in stage 10 with id 25 and associated fundamentals [[338], [491], [461]]
  c_25_resize <= c_24;
  c_25 <= shift_left(c_25_resize, 0);
  -- node of type 'mux' in stage 11 with id 26 and associated fundamentals [[572], [455], [693]]
  c_26_14_0_False_resize <= c_14;
  c_26_14_0_False_shift <= shift_left(c_26_14_0_False_resize, 0);
  c_26_11_0_False_resize <= resize(c_11, 26);
  c_26_11_0_False_shift <= shift_left(c_26_11_0_False_resize, 0);
  c_26_9_1_False_resize <= resize(c_9, 26);
  c_26_9_1_False_shift <= shift_left(c_26_9_1_False_resize, 1);
  with config_select_11 select c_26_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_26_sel select c_26 <=
    c_26_14_0_False_shift when "00",
    c_26_11_0_False_shift when "01",
    c_26_9_1_False_shift when others;
  -- node of type 'output' in stage 11 with id 27 and associated fundamentals [[572], [455], [693]]
  c_27_resize <= c_26;
  c_27 <= shift_left(c_27_resize, 0);
end architecture;
