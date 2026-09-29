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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_i0_resize: signed(19 downto 0);
  signal c_1_i1_resize: signed(19 downto 0);
  signal c_1_i0_shift: signed(19 downto 0);
  signal c_1_i1_shift: signed(19 downto 0);
  signal c_1_arith: signed(19 downto 0);
  signal c_1_oshift: signed(19 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(21 downto 0);
  signal c_2_0_6_False_resize: signed(21 downto 0);
  signal c_2_0_6_False_shift: signed(21 downto 0);
  signal c_2_0_0_False_resize: signed(21 downto 0);
  signal c_2_0_0_False_shift: signed(21 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(24 downto 0);
  signal c_3_0_0_False_resize: signed(24 downto 0);
  signal c_3_0_0_False_shift: signed(24 downto 0);
  signal c_3_0_9_False_resize: signed(24 downto 0);
  signal c_3_0_9_False_shift: signed(24 downto 0);
  signal c_3_0_1_False_resize: signed(24 downto 0);
  signal c_3_0_1_False_shift: signed(24 downto 0);
  signal c_3_sel: std_logic_vector(1 downto 0);
  signal c_4: signed(26 downto 0);
  signal c_4_i0_resize: signed(26 downto 0);
  signal c_4_i1_resize: signed(26 downto 0);
  signal c_4_i0_shift: signed(26 downto 0);
  signal c_4_i1_shift: signed(26 downto 0);
  signal c_4_arith: signed(26 downto 0);
  signal c_4_oshift: signed(26 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(21 downto 0);
  signal c_5_i0_resize: signed(21 downto 0);
  signal c_5_i1_resize: signed(21 downto 0);
  signal c_5_i0_shift: signed(21 downto 0);
  signal c_5_i1_shift: signed(21 downto 0);
  signal c_5_arith: signed(21 downto 0);
  signal c_5_oshift: signed(21 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(20 downto 0);
  signal c_6_i0_resize: signed(20 downto 0);
  signal c_6_i1_resize: signed(20 downto 0);
  signal c_6_i0_shift: signed(20 downto 0);
  signal c_6_i1_shift: signed(20 downto 0);
  signal c_6_arith: signed(20 downto 0);
  signal c_6_oshift: signed(20 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(26 downto 0);
  signal c_7_4_0_False_resize: signed(26 downto 0);
  signal c_7_4_0_False_shift: signed(26 downto 0);
  signal c_7_0_2_False_resize: signed(26 downto 0);
  signal c_7_0_2_False_shift: signed(26 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(26 downto 0);
  signal c_8_i0_resize: signed(26 downto 0);
  signal c_8_i1_resize: signed(26 downto 0);
  signal c_8_i0_shift: signed(26 downto 0);
  signal c_8_i1_shift: signed(26 downto 0);
  signal c_8_arith: signed(26 downto 0);
  signal c_8_oshift: signed(26 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_5_2_False_resize: signed(23 downto 0);
  signal c_9_5_2_False_shift: signed(23 downto 0);
  signal c_9_6_0_False_resize: signed(23 downto 0);
  signal c_9_6_0_False_shift: signed(23 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(20 downto 0);
  signal c_10_1_1_False_resize: signed(20 downto 0);
  signal c_10_1_1_False_shift: signed(20 downto 0);
  signal c_10_6_0_False_resize: signed(20 downto 0);
  signal c_10_6_0_False_shift: signed(20 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(25 downto 0);
  signal c_11_i0_resize: signed(25 downto 0);
  signal c_11_i1_resize: signed(25 downto 0);
  signal c_11_i0_shift: signed(25 downto 0);
  signal c_11_i1_shift: signed(25 downto 0);
  signal c_11_arith: signed(25 downto 0);
  signal c_11_oshift: signed(25 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(21 downto 0);
  signal c_12_5_0_False_resize: signed(21 downto 0);
  signal c_12_5_0_False_shift: signed(21 downto 0);
  signal c_12_1_0_False_resize: signed(21 downto 0);
  signal c_12_1_0_False_shift: signed(21 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(25 downto 0);
  signal c_13_i0_resize: signed(25 downto 0);
  signal c_13_i1_resize: signed(25 downto 0);
  signal c_13_i0_shift: signed(25 downto 0);
  signal c_13_i1_shift: signed(25 downto 0);
  signal c_13_arith: signed(25 downto 0);
  signal c_13_oshift: signed(25 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(19 downto 0);
  signal c_14_0_1_False_resize: signed(19 downto 0);
  signal c_14_0_1_False_shift: signed(19 downto 0);
  signal c_14_0_4_False_resize: signed(19 downto 0);
  signal c_14_0_4_False_shift: signed(19 downto 0);
  signal c_14_6_0_False_resize: signed(19 downto 0);
  signal c_14_6_0_False_shift: signed(19 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_i0_resize: signed(25 downto 0);
  signal c_15_i1_resize: signed(25 downto 0);
  signal c_15_i0_shift: signed(25 downto 0);
  signal c_15_i1_shift: signed(25 downto 0);
  signal c_15_arith: signed(25 downto 0);
  signal c_15_oshift: signed(25 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(24 downto 0);
  signal c_16_6_4_False_resize: signed(24 downto 0);
  signal c_16_6_4_False_shift: signed(24 downto 0);
  signal c_16_8_0_False_resize: signed(24 downto 0);
  signal c_16_8_0_False_shift: signed(24 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_i0_resize: signed(25 downto 0);
  signal c_17_i1_resize: signed(25 downto 0);
  signal c_17_i0_shift: signed(25 downto 0);
  signal c_17_i1_shift: signed(25 downto 0);
  signal c_17_arith: signed(25 downto 0);
  signal c_17_oshift: signed(25 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_18_i0_resize: signed(25 downto 0);
  signal c_18_i1_resize: signed(25 downto 0);
  signal c_18_i0_shift: signed(25 downto 0);
  signal c_18_i1_shift: signed(25 downto 0);
  signal c_18_arith: signed(25 downto 0);
  signal c_18_oshift: signed(24 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_i0_resize: signed(25 downto 0);
  signal c_19_i1_resize: signed(25 downto 0);
  signal c_19_i0_shift: signed(25 downto 0);
  signal c_19_i1_shift: signed(25 downto 0);
  signal c_19_arith: signed(25 downto 0);
  signal c_19_oshift: signed(25 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(26 downto 0);
  signal c_20_6_2_False_resize: signed(26 downto 0);
  signal c_20_6_2_False_shift: signed(26 downto 0);
  signal c_20_8_0_False_resize: signed(26 downto 0);
  signal c_20_8_0_False_shift: signed(26 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_i0_resize: signed(25 downto 0);
  signal c_21_i1_resize: signed(25 downto 0);
  signal c_21_i0_shift: signed(25 downto 0);
  signal c_21_i1_shift: signed(25 downto 0);
  signal c_21_arith: signed(25 downto 0);
  signal c_21_oshift: signed(25 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(25 downto 0);
  signal c_22_17_0_False_resize: signed(25 downto 0);
  signal c_22_17_0_False_shift: signed(25 downto 0);
  signal c_22_8_0_False_resize: signed(25 downto 0);
  signal c_22_8_0_False_shift: signed(25 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_resize: signed(25 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_13_1_False_resize: signed(25 downto 0);
  signal c_24_13_1_False_shift: signed(25 downto 0);
  signal c_24_21_0_False_resize: signed(25 downto 0);
  signal c_24_21_0_False_shift: signed(25 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_resize: signed(25 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_resize: signed(25 downto 0);
  signal c_27: signed(24 downto 0);
  signal c_27_18_0_False_resize: signed(24 downto 0);
  signal c_27_18_0_False_shift: signed(24 downto 0);
  signal c_27_17_1_False_resize: signed(24 downto 0);
  signal c_27_17_1_False_shift: signed(24 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(24 downto 0);
  signal c_28_resize: signed(24 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_11_0_False_resize: signed(25 downto 0);
  signal c_29_11_0_False_shift: signed(25 downto 0);
  signal c_29_21_0_False_resize: signed(25 downto 0);
  signal c_29_21_0_False_shift: signed(25 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_resize: signed(25 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 23
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_23);
    end if;
  end process;
  -- output node 1 with id 25
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_25);
    end if;
  end process;
  -- output node 2 with id 26
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_26);
    end if;
  end process;
  -- output node 3 with id 28
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_28);
    end if;
  end process;
  -- output node 4 with id 30
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_30);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[10], [6], [10]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
      s_x_i => 3,
      s_y_i => 1,
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
  c_1 <= c_1_oshift(19 downto 0);
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [64], [64]]
  c_2_0_6_False_resize <= resize(c_0, 22);
  c_2_0_6_False_shift <= shift_left(c_2_0_6_False_resize, 6);
  c_2_0_0_False_resize <= resize(c_0, 22);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_0_6_False_shift when "0",
    c_2_0_0_False_shift when others;
  -- node of type 'mux' in stage 1 with id 3 and associated fundamentals [[512], [1], [2]]
  c_3_0_0_False_resize <= resize(c_0, 25);
  c_3_0_0_False_shift <= shift_left(c_3_0_0_False_resize, 0);
  c_3_0_9_False_resize <= resize(c_0, 25);
  c_3_0_9_False_shift <= shift_left(c_3_0_9_False_resize, 9);
  c_3_0_1_False_resize <= resize(c_0, 25);
  c_3_0_1_False_shift <= shift_left(c_3_0_1_False_resize, 1);
  with config_select_1 select c_3_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_3_sel select c_3 <=
    c_3_0_0_False_shift when "00",
    c_3_0_9_False_shift when "01",
    c_3_0_1_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 4 and associated fundamentals [[1025], [62], [60]]
  with config_select_2 select c_4_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 25,
      w_o => 27,
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
      sub_i => c_4_sub_sel,
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(26 downto 0);
  -- node of type 'add_sub' in stage 1 with id 5 and associated fundamentals [[36], [36], [28]]
  with config_select_1 select c_5_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 22,
      s_x_i => 5,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_5_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(21 downto 0);
  -- node of type 'add_sub' in stage 2 with id 6 and associated fundamentals [[19], [13], [21]]
  with config_select_2 select c_6_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 16,
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
      sub_i => c_6_sub_sel,
      x_i => c_1,
      y_i => c_0,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(20 downto 0);
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[1025], [62], [4]]
  c_7_4_0_False_resize <= c_4;
  c_7_4_0_False_shift <= shift_left(c_7_4_0_False_resize, 0);
  c_7_0_2_False_resize <= resize(c_0, 27);
  c_7_0_2_False_shift <= shift_left(c_7_0_2_False_resize, 2);
  with config_select_3 select c_7_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_4_0_False_shift when "0",
    c_7_0_2_False_shift when others;
  -- node of type 'sub' in stage 4 with id 8 and associated fundamentals [[-255], [-706], [-1276]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 20,
      w_o => 27,
      s_x_i => 0,
      s_y_i => 7,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_7,
      y_i => c_1,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(26 downto 0);
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[144], [13], [21]]
  c_9_5_2_False_resize <= resize(c_5, 24);
  c_9_5_2_False_shift <= shift_left(c_9_5_2_False_resize, 2);
  c_9_6_0_False_resize <= resize(c_6, 24);
  c_9_6_0_False_shift <= shift_left(c_9_6_0_False_resize, 0);
  with config_select_3 select c_9_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_5_2_False_shift when "0",
    c_9_6_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[20], [13], [21]]
  c_10_1_1_False_resize <= resize(c_1, 21);
  c_10_1_1_False_shift <= shift_left(c_10_1_1_False_resize, 1);
  c_10_6_0_False_resize <= c_6;
  c_10_6_0_False_shift <= shift_left(c_10_6_0_False_resize, 0);
  with config_select_3 select c_10_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_10_sel select c_10 <=
    c_10_1_1_False_shift when "0",
    c_10_6_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 11 and associated fundamentals [[-496], [-403], [693]]
  with config_select_4 select c_11_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 21,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 5,
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
  c_11 <= c_11_oshift(25 downto 0);
  -- node of type 'mux' in stage 2 with id 12 and associated fundamentals [[36], [36], [10]]
  c_12_5_0_False_resize <= c_5;
  c_12_5_0_False_shift <= shift_left(c_12_5_0_False_resize, 0);
  c_12_1_0_False_resize <= resize(c_1, 22);
  c_12_1_0_False_shift <= shift_left(c_12_1_0_False_resize, 0);
  with config_select_2 select c_12_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_12_sel select c_12 <=
    c_12_5_0_False_shift when "0",
    c_12_1_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 13 and associated fundamentals [[-424], [-331], [673]]
  with config_select_5 select c_13_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 22,
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
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[2], [13], [16]]
  c_14_0_1_False_resize <= resize(c_0, 20);
  c_14_0_1_False_shift <= shift_left(c_14_0_1_False_resize, 1);
  c_14_0_4_False_resize <= resize(c_0, 20);
  c_14_0_4_False_shift <= shift_left(c_14_0_4_False_resize, 4);
  c_14_6_0_False_resize <= c_6(19 downto 0);
  c_14_6_0_False_shift <= shift_left(c_14_6_0_False_resize, 0);
  with config_select_3 select c_14_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_14_sel select c_14 <=
    c_14_0_1_False_shift when "00",
    c_14_0_4_False_shift when "01",
    c_14_6_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 15 and associated fundamentals [[-16], [976], [912]]
  with config_select_4 select c_15_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 22,
      w_o => 26,
      s_x_i => 6,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_15_sub_sel,
      x_i => c_14,
      y_i => c_5,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(25 downto 0);
  -- node of type 'mux' in stage 5 with id 16 and associated fundamentals [[-255], [208], [336]]
  c_16_6_4_False_resize <= resize(c_6, 25);
  c_16_6_4_False_shift <= shift_left(c_16_6_4_False_resize, 4);
  c_16_8_0_False_resize <= c_8(24 downto 0);
  c_16_8_0_False_shift <= shift_left(c_16_8_0_False_resize, 0);
  with config_select_5 select c_16_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_6_4_False_shift when "0",
    c_16_8_0_False_shift when others;
  -- node of type 'sub' in stage 6 with id 17 and associated fundamentals [[169], [539], [-337]]
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 26,
      w_o => 26,
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
      x_i => c_16,
      y_i => c_13,
      z_o => c_17_oshift
    );
  c_17 <= c_17_oshift(25 downto 0);
  -- node of type 'add' in stage 5 with id 18 and associated fundamentals [[-3], [491], [461]]
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 20,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 1,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_15,
      y_i => c_1,
      z_o => c_18_oshift
    );
  c_18 <= c_18_oshift(24 downto 0);
  -- node of type 'add_sub' in stage 6 with id 19 and associated fundamentals [[1022], [429], [521]]
  with config_select_6 select c_19_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 27,
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
      sub_i => c_19_sub_sel,
      x_i => c_18,
      y_i => c_4,
      z_o => c_19_oshift
    );
  c_19 <= c_19_oshift(25 downto 0);
  -- node of type 'mux' in stage 5 with id 20 and associated fundamentals [[76], [52], [-1276]]
  c_20_6_2_False_resize <= resize(c_6, 27);
  c_20_6_2_False_shift <= shift_left(c_20_6_2_False_resize, 2);
  c_20_8_0_False_resize <= c_8;
  c_20_8_0_False_shift <= shift_left(c_20_8_0_False_resize, 0);
  with config_select_5 select c_20_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_20_sel select c_20 <=
    c_20_6_2_False_shift when "0",
    c_20_8_0_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 21 and associated fundamentals [[572], [455], [-583]]
  with config_select_6 select c_21_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 26,
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
      sub_i => c_21_sub_sel,
      x_i => c_20,
      y_i => c_11,
      z_o => c_21_oshift
    );
  c_21 <= c_21_oshift(25 downto 0);
  -- node of type 'mux' in stage 7 with id 22 and associated fundamentals [[-255], [-706], [-337]]
  c_22_17_0_False_resize <= c_17;
  c_22_17_0_False_shift <= shift_left(c_22_17_0_False_resize, 0);
  c_22_8_0_False_resize <= c_8(25 downto 0);
  c_22_8_0_False_shift <= shift_left(c_22_8_0_False_resize, 0);
  with config_select_7 select c_22_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_22_sel select c_22 <=
    c_22_17_0_False_shift when "0",
    c_22_8_0_False_shift when others;
  -- node of type 'output' in stage 7 with id 23 and associated fundamentals [[255], [706], [337]]
  c_23_resize <= c_22;
  c_23 <= -shift_left(c_23_resize, 0);
  -- node of type 'mux' in stage 7 with id 24 and associated fundamentals [[-848], [-662], [-583]]
  c_24_13_1_False_resize <= c_13;
  c_24_13_1_False_shift <= shift_left(c_24_13_1_False_resize, 1);
  c_24_21_0_False_resize <= c_21;
  c_24_21_0_False_shift <= shift_left(c_24_21_0_False_resize, 0);
  with config_select_7 select c_24_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_24_sel select c_24 <=
    c_24_13_1_False_shift when "0",
    c_24_21_0_False_shift when others;
  -- node of type 'output' in stage 7 with id 25 and associated fundamentals [[848], [662], [583]]
  c_25_resize <= c_24;
  c_25 <= -shift_left(c_25_resize, 0);
  -- node of type 'output' in stage 6 with id 26 and associated fundamentals [[1022], [429], [521]]
  c_26_resize <= c_19;
  c_26 <= shift_left(c_26_resize, 0);
  -- node of type 'mux' in stage 7 with id 27 and associated fundamentals [[338], [491], [461]]
  c_27_18_0_False_resize <= c_18;
  c_27_18_0_False_shift <= shift_left(c_27_18_0_False_resize, 0);
  c_27_17_1_False_resize <= c_17(24 downto 0);
  c_27_17_1_False_shift <= shift_left(c_27_17_1_False_resize, 1);
  with config_select_7 select c_27_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  with c_27_sel select c_27 <=
    c_27_18_0_False_shift when "0",
    c_27_17_1_False_shift when others;
  -- node of type 'output' in stage 7 with id 28 and associated fundamentals [[338], [491], [461]]
  c_28_resize <= c_27;
  c_28 <= shift_left(c_28_resize, 0);
  -- node of type 'mux' in stage 7 with id 29 and associated fundamentals [[572], [455], [693]]
  c_29_11_0_False_resize <= c_11;
  c_29_11_0_False_shift <= shift_left(c_29_11_0_False_resize, 0);
  c_29_21_0_False_resize <= c_21;
  c_29_21_0_False_shift <= shift_left(c_29_21_0_False_resize, 0);
  with config_select_7 select c_29_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_29_sel select c_29 <=
    c_29_11_0_False_shift when "0",
    c_29_21_0_False_shift when others;
  -- node of type 'output' in stage 7 with id 30 and associated fundamentals [[572], [455], [693]]
  c_30_resize <= c_29;
  c_30 <= shift_left(c_30_resize, 0);
end architecture;
