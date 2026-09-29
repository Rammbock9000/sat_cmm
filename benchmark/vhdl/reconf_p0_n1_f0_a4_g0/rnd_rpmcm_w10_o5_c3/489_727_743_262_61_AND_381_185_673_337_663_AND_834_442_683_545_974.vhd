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
  signal config_select_8: std_logic_vector(1 downto 0);
  signal config_select_9: std_logic_vector(1 downto 0);
  signal config_select_10: std_logic_vector(1 downto 0);
  signal config_select_11: std_logic_vector(1 downto 0);
  signal config_select_12: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(24 downto 0);
  signal c_1_i0_resize: signed(24 downto 0);
  signal c_1_i1_resize: signed(24 downto 0);
  signal c_1_i0_shift: signed(24 downto 0);
  signal c_1_i1_shift: signed(24 downto 0);
  signal c_1_arith: signed(24 downto 0);
  signal c_1_oshift: signed(24 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(18 downto 0);
  signal c_2_i0_resize: signed(18 downto 0);
  signal c_2_i1_resize: signed(18 downto 0);
  signal c_2_i0_shift: signed(18 downto 0);
  signal c_2_i1_shift: signed(18 downto 0);
  signal c_2_arith: signed(18 downto 0);
  signal c_2_oshift: signed(18 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(23 downto 0);
  signal c_3_0_0_False_resize: signed(23 downto 0);
  signal c_3_0_0_False_shift: signed(23 downto 0);
  signal c_3_2_5_False_resize: signed(23 downto 0);
  signal c_3_2_5_False_shift: signed(23 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(26 downto 0);
  signal c_4_i0_resize: signed(26 downto 0);
  signal c_4_i1_resize: signed(26 downto 0);
  signal c_4_i0_shift: signed(26 downto 0);
  signal c_4_i1_shift: signed(26 downto 0);
  signal c_4_arith: signed(26 downto 0);
  signal c_4_oshift: signed(26 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_2_0_False_resize: signed(22 downto 0);
  signal c_5_2_0_False_shift: signed(22 downto 0);
  signal c_5_4_0_False_resize: signed(22 downto 0);
  signal c_5_4_0_False_shift: signed(22 downto 0);
  signal c_5_0_3_False_resize: signed(22 downto 0);
  signal c_5_0_3_False_shift: signed(22 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(24 downto 0);
  signal c_6_i0_resize: signed(24 downto 0);
  signal c_6_i1_resize: signed(24 downto 0);
  signal c_6_i0_shift: signed(24 downto 0);
  signal c_6_i1_shift: signed(24 downto 0);
  signal c_6_arith: signed(24 downto 0);
  signal c_6_oshift: signed(24 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(26 downto 0);
  signal c_7_4_0_False_resize: signed(26 downto 0);
  signal c_7_4_0_False_shift: signed(26 downto 0);
  signal c_7_2_8_False_resize: signed(26 downto 0);
  signal c_7_2_8_False_shift: signed(26 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(27 downto 0);
  signal c_8_i0_resize: signed(27 downto 0);
  signal c_8_i1_resize: signed(27 downto 0);
  signal c_8_i0_shift: signed(27 downto 0);
  signal c_8_i1_shift: signed(27 downto 0);
  signal c_8_arith: signed(27 downto 0);
  signal c_8_oshift: signed(27 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(24 downto 0);
  signal c_9_i0_resize: signed(24 downto 0);
  signal c_9_i1_resize: signed(24 downto 0);
  signal c_9_i0_shift: signed(24 downto 0);
  signal c_9_i1_shift: signed(24 downto 0);
  signal c_9_arith: signed(24 downto 0);
  signal c_9_oshift: signed(24 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(21 downto 0);
  signal c_10_6_0_False_resize: signed(21 downto 0);
  signal c_10_6_0_False_shift: signed(21 downto 0);
  signal c_10_0_2_False_resize: signed(21 downto 0);
  signal c_10_0_2_False_shift: signed(21 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(21 downto 0);
  signal c_11_i0_resize: signed(21 downto 0);
  signal c_11_i1_resize: signed(21 downto 0);
  signal c_11_i0_shift: signed(21 downto 0);
  signal c_11_i1_shift: signed(21 downto 0);
  signal c_11_arith: signed(21 downto 0);
  signal c_11_oshift: signed(21 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(24 downto 0);
  signal c_12_i0_resize: signed(27 downto 0);
  signal c_12_i1_resize: signed(27 downto 0);
  signal c_12_i0_shift: signed(27 downto 0);
  signal c_12_i1_shift: signed(27 downto 0);
  signal c_12_arith: signed(27 downto 0);
  signal c_12_oshift: signed(24 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(24 downto 0);
  signal c_13_11_3_False_resize: signed(24 downto 0);
  signal c_13_11_3_False_shift: signed(24 downto 0);
  signal c_13_4_0_False_resize: signed(24 downto 0);
  signal c_13_4_0_False_shift: signed(24 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(25 downto 0);
  signal c_14_i0_resize: signed(25 downto 0);
  signal c_14_i1_resize: signed(25 downto 0);
  signal c_14_i0_shift: signed(25 downto 0);
  signal c_14_i1_shift: signed(25 downto 0);
  signal c_14_arith: signed(25 downto 0);
  signal c_14_oshift: signed(25 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(24 downto 0);
  signal c_15_6_0_False_resize: signed(24 downto 0);
  signal c_15_6_0_False_shift: signed(24 downto 0);
  signal c_15_6_1_False_resize: signed(24 downto 0);
  signal c_15_6_1_False_shift: signed(24 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(25 downto 0);
  signal c_16_i1_resize: signed(25 downto 0);
  signal c_16_i0_shift: signed(25 downto 0);
  signal c_16_i1_shift: signed(25 downto 0);
  signal c_16_arith: signed(25 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(24 downto 0);
  signal c_17_2_4_False_resize: signed(24 downto 0);
  signal c_17_2_4_False_shift: signed(24 downto 0);
  signal c_17_0_9_False_resize: signed(24 downto 0);
  signal c_17_0_9_False_shift: signed(24 downto 0);
  signal c_17_14_0_False_resize: signed(24 downto 0);
  signal c_17_14_0_False_shift: signed(24 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_i0_resize: signed(25 downto 0);
  signal c_18_i1_resize: signed(25 downto 0);
  signal c_18_i0_shift: signed(25 downto 0);
  signal c_18_i1_shift: signed(25 downto 0);
  signal c_18_arith: signed(25 downto 0);
  signal c_18_oshift: signed(25 downto 0);
  signal c_19: signed(24 downto 0);
  signal c_19_0_9_False_resize: signed(24 downto 0);
  signal c_19_0_9_False_shift: signed(24 downto 0);
  signal c_19_12_0_False_resize: signed(24 downto 0);
  signal c_19_12_0_False_shift: signed(24 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(24 downto 0);
  signal c_20_0_0_False_resize: signed(24 downto 0);
  signal c_20_0_0_False_shift: signed(24 downto 0);
  signal c_20_9_0_False_resize: signed(24 downto 0);
  signal c_20_9_0_False_shift: signed(24 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_i0_resize: signed(25 downto 0);
  signal c_21_i1_resize: signed(25 downto 0);
  signal c_21_i0_shift: signed(25 downto 0);
  signal c_21_i1_shift: signed(25 downto 0);
  signal c_21_arith: signed(25 downto 0);
  signal c_21_oshift: signed(25 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_resize: signed(25 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_12_0_False_resize: signed(25 downto 0);
  signal c_23_12_0_False_shift: signed(25 downto 0);
  signal c_23_14_0_False_resize: signed(25 downto 0);
  signal c_23_14_0_False_shift: signed(25 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_resize: signed(25 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_resize: signed(25 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_12_0_False_resize: signed(25 downto 0);
  signal c_26_12_0_False_shift: signed(25 downto 0);
  signal c_26_14_0_False_resize: signed(25 downto 0);
  signal c_26_14_0_False_shift: signed(25 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_resize: signed(25 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_resize: signed(25 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 22
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_22);
    end if;
  end process;
  -- output node 1 with id 24
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_24);
    end if;
  end process;
  -- output node 2 with id 25
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_25);
    end if;
  end process;
  -- output node 3 with id 27
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_27);
    end if;
  end process;
  -- output node 4 with id 28
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_28);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[255], [257], [257]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 25,
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
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  c_1 <= c_1_oshift(24 downto 0);
  -- node of type 'add_sub' in stage 1 with id 2 and associated fundamentals [[3], [5], [5]]
  with config_select_1 select c_2_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(18 downto 0);
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[96], [1], [160]]
  c_3_0_0_False_resize <= resize(c_0, 24);
  c_3_0_0_False_shift <= shift_left(c_3_0_0_False_resize, 0);
  c_3_2_5_False_resize <= resize(c_2, 24);
  c_3_2_5_False_shift <= shift_left(c_3_2_5_False_resize, 5);
  with config_select_2 select c_3_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_0_0_False_shift when "0",
    c_3_2_5_False_shift when others;
  -- node of type 'sub' in stage 3 with id 4 and associated fundamentals [[720], [-72], [1200]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 19,
      w_o => 27,
      s_x_i => 3,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_3,
      y_i => c_2,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(26 downto 0);
  -- node of type 'mux' in stage 4 with id 5 and associated fundamentals [[8], [-72], [5]]
  c_5_2_0_False_resize <= resize(c_2, 23);
  c_5_2_0_False_shift <= shift_left(c_5_2_0_False_resize, 0);
  c_5_4_0_False_resize <= c_4(22 downto 0);
  c_5_4_0_False_shift <= shift_left(c_5_4_0_False_resize, 0);
  c_5_0_3_False_resize <= resize(c_0, 23);
  c_5_0_3_False_shift <= shift_left(c_5_0_3_False_resize, 3);
  with config_select_4 select c_5_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_5_sel select c_5 <=
    c_5_2_0_False_shift when "00",
    c_5_4_0_False_shift when "01",
    c_5_0_3_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 6 and associated fundamentals [[35], [-293], [25]]
  with config_select_5 select c_6_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 19,
      w_o => 25,
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
      sub_i => c_6_sub_sel,
      x_i => c_5,
      y_i => c_2,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(24 downto 0);
  -- node of type 'mux' in stage 4 with id 7 and associated fundamentals [[720], [1280], [1200]]
  c_7_4_0_False_resize <= c_4;
  c_7_4_0_False_shift <= shift_left(c_7_4_0_False_resize, 0);
  c_7_2_8_False_resize <= resize(c_2, 27);
  c_7_2_8_False_shift <= shift_left(c_7_2_8_False_resize, 8);
  with config_select_4 select c_7_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_4_0_False_shift when "0",
    c_7_2_8_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 8 and associated fundamentals [[1376], [2624], [2336]]
  with config_select_5 select c_8_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 16,
      w_o => 28,
      s_x_i => 1,
      s_y_i => 6,
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
  c_8 <= c_8_oshift(27 downto 0);
  -- node of type 'add_sub' in stage 6 with id 9 and associated fundamentals [[281], [-2345], [201]]
  with config_select_6 select c_9_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_9_sub_sel,
      x_i => c_6,
      y_i => c_0,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(24 downto 0);
  -- node of type 'mux' in stage 6 with id 10 and associated fundamentals [[35], [4], [4]]
  c_10_6_0_False_resize <= c_6(21 downto 0);
  c_10_6_0_False_shift <= shift_left(c_10_6_0_False_resize, 0);
  c_10_0_2_False_resize <= resize(c_0, 22);
  c_10_0_2_False_shift <= shift_left(c_10_0_2_False_resize, 2);
  with config_select_6 select c_10_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_10_sel select c_10 <=
    c_10_6_0_False_shift when "0",
    c_10_0_2_False_shift when others;
  -- node of type 'add_sub' in stage 7 with id 11 and associated fundamentals [[59], [44], [-36]]
  with config_select_7 select c_11_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 19,
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
      sub_i => c_11_sub_sel,
      x_i => c_10,
      y_i => c_2,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(21 downto 0);
  -- node of type 'add_sub' in stage 6 with id 12 and associated fundamentals [[262], [337], [442]]
  with config_select_6 select c_12_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 27,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 3,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_12_sub_sel,
      x_i => c_8,
      y_i => c_4,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(24 downto 0);
  -- node of type 'mux' in stage 8 with id 13 and associated fundamentals [[472], [-72], [-288]]
  c_13_11_3_False_resize <= resize(c_11, 25);
  c_13_11_3_False_shift <= shift_left(c_13_11_3_False_resize, 3);
  c_13_4_0_False_resize <= c_4(24 downto 0);
  c_13_4_0_False_shift <= shift_left(c_13_4_0_False_resize, 0);
  with config_select_8 select c_13_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_11_3_False_shift when "0",
    c_13_4_0_False_shift when others;
  -- node of type 'add_sub' in stage 9 with id 14 and associated fundamentals [[727], [185], [545]]
  with config_select_9 select c_14_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
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
      x_i => c_1,
      y_i => c_13,
      z_o => c_14_oshift
    );
  c_14 <= c_14_oshift(25 downto 0);
  -- node of type 'mux' in stage 6 with id 15 and associated fundamentals [[35], [-293], [50]]
  c_15_6_0_False_resize <= c_6;
  c_15_6_0_False_shift <= shift_left(c_15_6_0_False_resize, 0);
  c_15_6_1_False_resize <= c_6;
  c_15_6_1_False_shift <= shift_left(c_15_6_1_False_resize, 1);
  with config_select_6 select c_15_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_15_sel select c_15 <=
    c_15_6_0_False_shift when "0",
    c_15_6_1_False_shift when others;
  -- node of type 'add_sub' in stage 7 with id 16 and associated fundamentals [[489], [381], [834]]
  with config_select_7 select c_16_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_16: entity work.adder_node
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
      sub_i => c_16_sub_sel,
      x_i => c_12,
      y_i => c_15,
      z_o => c_16_oshift
    );
  c_16 <= c_16_oshift(25 downto 0);
  -- node of type 'mux' in stage 10 with id 17 and associated fundamentals [[48], [185], [512]]
  c_17_2_4_False_resize <= resize(c_2, 25);
  c_17_2_4_False_shift <= shift_left(c_17_2_4_False_resize, 4);
  c_17_0_9_False_resize <= resize(c_0, 25);
  c_17_0_9_False_shift <= shift_left(c_17_0_9_False_resize, 9);
  c_17_14_0_False_resize <= c_14(24 downto 0);
  c_17_14_0_False_shift <= shift_left(c_17_14_0_False_resize, 0);
  with config_select_10 select c_17_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_17_sel select c_17 <=
    c_17_2_4_False_shift when "00",
    c_17_0_9_False_shift when "01",
    c_17_14_0_False_shift when others;
  -- node of type 'sub' in stage 11 with id 18 and associated fundamentals [[61], [663], [974]]
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
      w_o => 26,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_17,
      y_i => c_15,
      z_o => c_18_oshift
    );
  c_18 <= c_18_oshift(25 downto 0);
  -- node of type 'mux' in stage 7 with id 19 and associated fundamentals [[512], [337], [442]]
  c_19_0_9_False_resize <= resize(c_0, 25);
  c_19_0_9_False_shift <= shift_left(c_19_0_9_False_resize, 9);
  c_19_12_0_False_resize <= c_12;
  c_19_12_0_False_shift <= shift_left(c_19_12_0_False_resize, 0);
  with config_select_7 select c_19_sel <= 
    "0" when "00",
    "1" when "10",
    "1" when others;
  with c_19_sel select c_19 <=
    c_19_0_9_False_shift when "0",
    c_19_12_0_False_shift when others;
  -- node of type 'mux' in stage 7 with id 20 and associated fundamentals [[281], [1], [201]]
  c_20_0_0_False_resize <= resize(c_0, 25);
  c_20_0_0_False_shift <= shift_left(c_20_0_0_False_resize, 0);
  c_20_9_0_False_resize <= c_9;
  c_20_9_0_False_shift <= shift_left(c_20_9_0_False_resize, 0);
  with config_select_7 select c_20_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_20_sel select c_20 <=
    c_20_0_0_False_shift when "0",
    c_20_9_0_False_shift when others;
  -- node of type 'sub' in stage 8 with id 21 and associated fundamentals [[743], [673], [683]]
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
      w_o => 26,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  c_21 <= c_21_oshift(25 downto 0);
  -- node of type 'output' in stage 7 with id 22 and associated fundamentals [[489], [381], [834]]
  c_22_resize <= c_16;
  c_22 <= shift_left(c_22_resize, 0);
  -- node of type 'mux' in stage 10 with id 23 and associated fundamentals [[727], [185], [442]]
  c_23_12_0_False_resize <= resize(c_12, 26);
  c_23_12_0_False_shift <= shift_left(c_23_12_0_False_resize, 0);
  c_23_14_0_False_resize <= c_14;
  c_23_14_0_False_shift <= shift_left(c_23_14_0_False_resize, 0);
  with config_select_10 select c_23_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_23_sel select c_23 <=
    c_23_12_0_False_shift when "0",
    c_23_14_0_False_shift when others;
  -- node of type 'output' in stage 10 with id 24 and associated fundamentals [[727], [185], [442]]
  c_24_resize <= c_23;
  c_24 <= shift_left(c_24_resize, 0);
  -- node of type 'output' in stage 8 with id 25 and associated fundamentals [[743], [673], [683]]
  c_25_resize <= c_21;
  c_25 <= shift_left(c_25_resize, 0);
  -- node of type 'mux' in stage 10 with id 26 and associated fundamentals [[262], [337], [545]]
  c_26_12_0_False_resize <= resize(c_12, 26);
  c_26_12_0_False_shift <= shift_left(c_26_12_0_False_resize, 0);
  c_26_14_0_False_resize <= c_14;
  c_26_14_0_False_shift <= shift_left(c_26_14_0_False_resize, 0);
  with config_select_10 select c_26_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_26_sel select c_26 <=
    c_26_12_0_False_shift when "0",
    c_26_14_0_False_shift when others;
  -- node of type 'output' in stage 10 with id 27 and associated fundamentals [[262], [337], [545]]
  c_27_resize <= c_26;
  c_27 <= shift_left(c_27_resize, 0);
  -- node of type 'output' in stage 11 with id 28 and associated fundamentals [[61], [663], [974]]
  c_28_resize <= c_18;
  c_28 <= shift_left(c_28_resize, 0);
end architecture;
