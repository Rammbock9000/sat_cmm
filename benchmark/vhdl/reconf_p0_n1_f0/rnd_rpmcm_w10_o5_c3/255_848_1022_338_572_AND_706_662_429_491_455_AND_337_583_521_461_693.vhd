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
  signal config_select_14: std_logic_vector(1 downto 0);
  signal config_select_15: std_logic_vector(1 downto 0);
  signal config_select_16: std_logic_vector(1 downto 0);
  signal config_select_17: std_logic_vector(1 downto 0);
  signal config_select_18: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(21 downto 0);
  signal c_1_i0_resize: signed(21 downto 0);
  signal c_1_i1_resize: signed(21 downto 0);
  signal c_1_i0_shift: signed(21 downto 0);
  signal c_1_i1_shift: signed(21 downto 0);
  signal c_1_arith: signed(21 downto 0);
  signal c_1_oshift: signed(21 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(21 downto 0);
  signal c_2_0_0_False_resize: signed(21 downto 0);
  signal c_2_0_0_False_shift: signed(21 downto 0);
  signal c_2_0_6_False_resize: signed(21 downto 0);
  signal c_2_0_6_False_shift: signed(21 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_0_0_False_resize: signed(21 downto 0);
  signal c_3_0_0_False_shift: signed(21 downto 0);
  signal c_3_1_1_False_resize: signed(21 downto 0);
  signal c_3_1_1_False_shift: signed(21 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(23 downto 0);
  signal c_4_i0_resize: signed(23 downto 0);
  signal c_4_i1_resize: signed(23 downto 0);
  signal c_4_i0_shift: signed(23 downto 0);
  signal c_4_i1_shift: signed(23 downto 0);
  signal c_4_arith: signed(23 downto 0);
  signal c_4_oshift: signed(23 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_5_0_1_False_resize: signed(21 downto 0);
  signal c_5_0_1_False_shift: signed(21 downto 0);
  signal c_5_1_0_False_resize: signed(21 downto 0);
  signal c_5_1_0_False_shift: signed(21 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_1_1_False_resize: signed(22 downto 0);
  signal c_6_1_1_False_shift: signed(22 downto 0);
  signal c_6_4_0_False_resize: signed(22 downto 0);
  signal c_6_4_0_False_shift: signed(22 downto 0);
  signal c_6_0_6_False_resize: signed(22 downto 0);
  signal c_6_0_6_False_shift: signed(22 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(24 downto 0);
  signal c_7_i0_resize: signed(24 downto 0);
  signal c_7_i1_resize: signed(24 downto 0);
  signal c_7_i0_shift: signed(24 downto 0);
  signal c_7_i1_shift: signed(24 downto 0);
  signal c_7_arith: signed(24 downto 0);
  signal c_7_oshift: signed(24 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(23 downto 0);
  signal c_8_7_0_False_resize: signed(23 downto 0);
  signal c_8_7_0_False_shift: signed(23 downto 0);
  signal c_8_0_5_False_resize: signed(23 downto 0);
  signal c_8_0_5_False_shift: signed(23 downto 0);
  signal c_8_4_6_False_resize: signed(23 downto 0);
  signal c_8_4_6_False_shift: signed(23 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(24 downto 0);
  signal c_9_0_9_False_resize: signed(24 downto 0);
  signal c_9_0_9_False_shift: signed(24 downto 0);
  signal c_9_1_0_False_resize: signed(24 downto 0);
  signal c_9_1_0_False_shift: signed(24 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(24 downto 0);
  signal c_10_i0_resize: signed(24 downto 0);
  signal c_10_i1_resize: signed(24 downto 0);
  signal c_10_i0_shift: signed(24 downto 0);
  signal c_10_i1_shift: signed(24 downto 0);
  signal c_10_arith: signed(24 downto 0);
  signal c_10_oshift: signed(24 downto 0);
  signal c_11: signed(25 downto 0);
  signal c_11_7_0_False_resize: signed(25 downto 0);
  signal c_11_7_0_False_shift: signed(25 downto 0);
  signal c_11_4_2_False_resize: signed(25 downto 0);
  signal c_11_4_2_False_shift: signed(25 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(24 downto 0);
  signal c_12_0_1_False_resize: signed(24 downto 0);
  signal c_12_0_1_False_shift: signed(24 downto 0);
  signal c_12_7_5_False_resize: signed(24 downto 0);
  signal c_12_7_5_False_shift: signed(24 downto 0);
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
  signal c_14: signed(27 downto 0);
  signal c_14_13_0_False_resize: signed(27 downto 0);
  signal c_14_13_0_False_shift: signed(27 downto 0);
  signal c_14_7_3_False_resize: signed(27 downto 0);
  signal c_14_7_3_False_shift: signed(27 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_7_0_False_resize: signed(25 downto 0);
  signal c_15_7_0_False_shift: signed(25 downto 0);
  signal c_15_1_0_False_resize: signed(25 downto 0);
  signal c_15_1_0_False_shift: signed(25 downto 0);
  signal c_15_10_1_False_resize: signed(25 downto 0);
  signal c_15_10_1_False_shift: signed(25 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(25 downto 0);
  signal c_16_i1_resize: signed(25 downto 0);
  signal c_16_i0_shift: signed(25 downto 0);
  signal c_16_i1_shift: signed(25 downto 0);
  signal c_16_arith: signed(25 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_16_0_False_resize: signed(25 downto 0);
  signal c_17_16_0_False_shift: signed(25 downto 0);
  signal c_17_10_0_False_resize: signed(25 downto 0);
  signal c_17_10_0_False_shift: signed(25 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_4_0_False_resize: signed(23 downto 0);
  signal c_18_4_0_False_shift: signed(23 downto 0);
  signal c_18_1_1_False_resize: signed(23 downto 0);
  signal c_18_1_1_False_shift: signed(23 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(24 downto 0);
  signal c_19_i0_resize: signed(24 downto 0);
  signal c_19_i1_resize: signed(24 downto 0);
  signal c_19_i0_shift: signed(24 downto 0);
  signal c_19_i1_shift: signed(24 downto 0);
  signal c_19_arith: signed(24 downto 0);
  signal c_19_oshift: signed(24 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(24 downto 0);
  signal c_20_19_0_False_resize: signed(24 downto 0);
  signal c_20_19_0_False_shift: signed(24 downto 0);
  signal c_20_1_1_False_resize: signed(24 downto 0);
  signal c_20_1_1_False_shift: signed(24 downto 0);
  signal c_20_10_0_False_resize: signed(24 downto 0);
  signal c_20_10_0_False_shift: signed(24 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_13_0_False_resize: signed(25 downto 0);
  signal c_21_13_0_False_shift: signed(25 downto 0);
  signal c_21_4_2_False_resize: signed(25 downto 0);
  signal c_21_4_2_False_shift: signed(25 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_i0_resize: signed(25 downto 0);
  signal c_22_i1_resize: signed(25 downto 0);
  signal c_22_i0_shift: signed(25 downto 0);
  signal c_22_i1_shift: signed(25 downto 0);
  signal c_22_arith: signed(25 downto 0);
  signal c_22_oshift: signed(25 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(25 downto 0);
  signal c_23_4_0_False_resize: signed(25 downto 0);
  signal c_23_4_0_False_shift: signed(25 downto 0);
  signal c_23_10_1_False_resize: signed(25 downto 0);
  signal c_23_10_1_False_shift: signed(25 downto 0);
  signal c_23_10_0_False_resize: signed(25 downto 0);
  signal c_23_10_0_False_shift: signed(25 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_resize: signed(25 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_16_0_False_resize: signed(25 downto 0);
  signal c_25_16_0_False_shift: signed(25 downto 0);
  signal c_25_19_1_False_resize: signed(25 downto 0);
  signal c_25_19_1_False_shift: signed(25 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_resize: signed(25 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_resize: signed(25 downto 0);
  signal c_28: signed(24 downto 0);
  signal c_28_19_0_False_resize: signed(24 downto 0);
  signal c_28_19_0_False_shift: signed(24 downto 0);
  signal c_28_22_0_False_resize: signed(24 downto 0);
  signal c_28_22_0_False_shift: signed(24 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(24 downto 0);
  signal c_29_resize: signed(24 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_22_0_False_resize: signed(25 downto 0);
  signal c_30_22_0_False_shift: signed(25 downto 0);
  signal c_30_16_0_False_resize: signed(25 downto 0);
  signal c_30_16_0_False_shift: signed(25 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
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
      config_select_8 <= config_select;
      config_select_9 <= config_select;
      config_select_10 <= config_select;
      config_select_11 <= config_select;
      config_select_12 <= config_select;
      config_select_13 <= config_select;
      config_select_14 <= config_select;
      config_select_15 <= config_select;
      config_select_16 <= config_select;
      config_select_17 <= config_select;
      config_select_18 <= config_select;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 24
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_24);
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
  -- output node 3 with id 29
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_29);
    end if;
  end process;
  -- output node 4 with id 31
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_31);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[33], [31], [31]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 22,
      s_x_i => 5,
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
  c_1 <= c_1_oshift(21 downto 0);
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[64], [1], [1]]
  c_2_0_0_False_resize <= resize(c_0, 22);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_6_False_resize <= resize(c_0, 22);
  c_2_0_6_False_shift <= shift_left(c_2_0_6_False_resize, 6);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_0_0_False_shift when "0",
    c_2_0_6_False_shift when others;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[1], [1], [62]]
  c_3_0_0_False_resize <= resize(c_0, 22);
  c_3_0_0_False_shift <= shift_left(c_3_0_0_False_resize, 0);
  c_3_1_1_False_resize <= c_1;
  c_3_1_1_False_shift <= shift_left(c_3_1_1_False_resize, 1);
  with config_select_2 select c_3_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_0_0_False_shift when "0",
    c_3_1_1_False_shift when others;
  -- node of type 'sub' in stage 3 with id 4 and associated fundamentals [[255], [3], [-58]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 24,
      s_x_i => 2,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(23 downto 0);
  -- node of type 'mux' in stage 2 with id 5 and associated fundamentals [[33], [2], [31]]
  c_5_0_1_False_resize <= resize(c_0, 22);
  c_5_0_1_False_shift <= shift_left(c_5_0_1_False_resize, 1);
  c_5_1_0_False_resize <= c_1;
  c_5_1_0_False_shift <= shift_left(c_5_1_0_False_resize, 0);
  with config_select_2 select c_5_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_0_1_False_shift when "0",
    c_5_1_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 6 and associated fundamentals [[66], [3], [64]]
  c_6_1_1_False_resize <= resize(c_1, 23);
  c_6_1_1_False_shift <= shift_left(c_6_1_1_False_resize, 1);
  c_6_4_0_False_resize <= c_4(22 downto 0);
  c_6_4_0_False_shift <= shift_left(c_6_4_0_False_resize, 0);
  c_6_0_6_False_resize <= resize(c_0, 23);
  c_6_0_6_False_shift <= shift_left(c_6_0_6_False_resize, 6);
  with config_select_4 select c_6_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_6_sel select c_6 <=
    c_6_1_1_False_shift when "00",
    c_6_4_0_False_shift when "01",
    c_6_0_6_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 7 and associated fundamentals [[330], [13], [184]]
  with config_select_5 select c_7_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
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
      sub_i => c_7_sub_sel,
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(24 downto 0);
  -- node of type 'mux' in stage 6 with id 8 and associated fundamentals [[32], [192], [184]]
  c_8_7_0_False_resize <= c_7(23 downto 0);
  c_8_7_0_False_shift <= shift_left(c_8_7_0_False_resize, 0);
  c_8_0_5_False_resize <= resize(c_0, 24);
  c_8_0_5_False_shift <= shift_left(c_8_0_5_False_resize, 5);
  c_8_4_6_False_resize <= c_4;
  c_8_4_6_False_shift <= shift_left(c_8_4_6_False_resize, 6);
  with config_select_6 select c_8_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_8_sel select c_8 <=
    c_8_7_0_False_shift when "00",
    c_8_0_5_False_shift when "01",
    c_8_4_6_False_shift when others;
  -- node of type 'mux' in stage 2 with id 9 and associated fundamentals [[512], [31], [31]]
  c_9_0_9_False_resize <= resize(c_0, 25);
  c_9_0_9_False_shift <= shift_left(c_9_0_9_False_resize, 9);
  c_9_1_0_False_resize <= resize(c_1, 25);
  c_9_1_0_False_shift <= shift_left(c_9_1_0_False_resize, 0);
  with config_select_2 select c_9_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_0_9_False_shift when "0",
    c_9_1_0_False_shift when others;
  -- node of type 'sub' in stage 7 with id 10 and associated fundamentals [[-448], [353], [337]]
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 25,
      w_o => 25,
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
      x_i => c_8,
      y_i => c_9,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(24 downto 0);
  -- node of type 'mux' in stage 6 with id 11 and associated fundamentals [[1020], [13], [184]]
  c_11_7_0_False_resize <= resize(c_7, 26);
  c_11_7_0_False_shift <= shift_left(c_11_7_0_False_resize, 0);
  c_11_4_2_False_resize <= resize(c_4, 26);
  c_11_4_2_False_shift <= shift_left(c_11_4_2_False_resize, 2);
  with config_select_6 select c_11_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_7_0_False_shift when "0",
    c_11_4_2_False_shift when others;
  -- node of type 'mux' in stage 8 with id 12 and associated fundamentals [[2], [416], [337]]
  c_12_0_1_False_resize <= resize(c_0, 25);
  c_12_0_1_False_shift <= shift_left(c_12_0_1_False_resize, 1);
  c_12_7_5_False_resize <= c_7;
  c_12_7_5_False_shift <= shift_left(c_12_7_5_False_resize, 5);
  c_12_10_0_False_resize <= c_10;
  c_12_10_0_False_shift <= shift_left(c_12_10_0_False_resize, 0);
  with config_select_8 select c_12_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_12_sel select c_12 <=
    c_12_0_1_False_shift when "00",
    c_12_7_5_False_shift when "01",
    c_12_10_0_False_shift when others;
  -- node of type 'add' in stage 9 with id 13 and associated fundamentals [[1022], [429], [521]]
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
      w_o => 26,
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
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(25 downto 0);
  -- node of type 'mux' in stage 10 with id 14 and associated fundamentals [[2640], [429], [521]]
  c_14_13_0_False_resize <= resize(c_13, 28);
  c_14_13_0_False_shift <= shift_left(c_14_13_0_False_resize, 0);
  c_14_7_3_False_resize <= resize(c_7, 28);
  c_14_7_3_False_shift <= shift_left(c_14_7_3_False_resize, 3);
  with config_select_10 select c_14_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_13_0_False_shift when "0",
    c_14_7_3_False_shift when others;
  -- node of type 'mux' in stage 8 with id 15 and associated fundamentals [[-896], [13], [31]]
  c_15_7_0_False_resize <= resize(c_7, 26);
  c_15_7_0_False_shift <= shift_left(c_15_7_0_False_resize, 0);
  c_15_1_0_False_resize <= resize(c_1, 26);
  c_15_1_0_False_shift <= shift_left(c_15_1_0_False_resize, 0);
  c_15_10_1_False_resize <= resize(c_10, 26);
  c_15_10_1_False_shift <= shift_left(c_15_10_1_False_resize, 1);
  with config_select_8 select c_15_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_15_sel select c_15 <=
    c_15_7_0_False_shift when "00",
    c_15_1_0_False_shift when "01",
    c_15_10_1_False_shift when others;
  -- node of type 'add' in stage 11 with id 16 and associated fundamentals [[848], [455], [583]]
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 26,
      w_o => 26,
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
      x_i => c_14,
      y_i => c_15,
      z_o => c_16_oshift
    );
  c_16 <= c_16_oshift(25 downto 0);
  -- node of type 'mux' in stage 12 with id 17 and associated fundamentals [[848], [455], [337]]
  c_17_16_0_False_resize <= c_16;
  c_17_16_0_False_shift <= shift_left(c_17_16_0_False_resize, 0);
  c_17_10_0_False_resize <= resize(c_10, 26);
  c_17_10_0_False_shift <= shift_left(c_17_10_0_False_resize, 0);
  with config_select_12 select c_17_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_17_sel select c_17 <=
    c_17_16_0_False_shift when "0",
    c_17_10_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 18 and associated fundamentals [[255], [62], [62]]
  c_18_4_0_False_resize <= c_4;
  c_18_4_0_False_shift <= shift_left(c_18_4_0_False_resize, 0);
  c_18_1_1_False_resize <= resize(c_1, 24);
  c_18_1_1_False_shift <= shift_left(c_18_1_1_False_resize, 1);
  with config_select_4 select c_18_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_18_sel select c_18 <=
    c_18_4_0_False_shift when "0",
    c_18_1_1_False_shift when others;
  -- node of type 'add_sub' in stage 13 with id 19 and associated fundamentals [[338], [331], [461]]
  with config_select_13 select c_19_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
      w_o => 25,
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
  c_19 <= c_19_oshift(24 downto 0);
  -- node of type 'mux' in stage 14 with id 20 and associated fundamentals [[-448], [62], [461]]
  c_20_19_0_False_resize <= c_19;
  c_20_19_0_False_shift <= shift_left(c_20_19_0_False_resize, 0);
  c_20_1_1_False_resize <= resize(c_1, 25);
  c_20_1_1_False_shift <= shift_left(c_20_1_1_False_resize, 1);
  c_20_10_0_False_resize <= c_10;
  c_20_10_0_False_shift <= shift_left(c_20_10_0_False_resize, 0);
  with config_select_14 select c_20_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_20_sel select c_20 <=
    c_20_19_0_False_shift when "00",
    c_20_1_1_False_shift when "01",
    c_20_10_0_False_shift when others;
  -- node of type 'mux' in stage 10 with id 21 and associated fundamentals [[1020], [429], [-232]]
  c_21_13_0_False_resize <= c_13;
  c_21_13_0_False_shift <= shift_left(c_21_13_0_False_resize, 0);
  c_21_4_2_False_resize <= resize(c_4, 26);
  c_21_4_2_False_shift <= shift_left(c_21_4_2_False_resize, 2);
  with config_select_10 select c_21_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_21_sel select c_21 <=
    c_21_13_0_False_shift when "0",
    c_21_4_2_False_shift when others;
  -- node of type 'add_sub' in stage 15 with id 22 and associated fundamentals [[572], [491], [693]]
  with config_select_15 select c_22_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_22_sub_sel,
      x_i => c_20,
      y_i => c_21,
      z_o => c_22_oshift
    );
  c_22 <= c_22_oshift(25 downto 0);
  -- node of type 'mux' in stage 8 with id 23 and associated fundamentals [[255], [706], [337]]
  c_23_4_0_False_resize <= resize(c_4, 26);
  c_23_4_0_False_shift <= shift_left(c_23_4_0_False_resize, 0);
  c_23_10_1_False_resize <= resize(c_10, 26);
  c_23_10_1_False_shift <= shift_left(c_23_10_1_False_resize, 1);
  c_23_10_0_False_resize <= resize(c_10, 26);
  c_23_10_0_False_shift <= shift_left(c_23_10_0_False_resize, 0);
  with config_select_8 select c_23_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_23_sel select c_23 <=
    c_23_4_0_False_shift when "00",
    c_23_10_1_False_shift when "01",
    c_23_10_0_False_shift when others;
  -- node of type 'output' in stage 8 with id 24 and associated fundamentals [[255], [706], [337]]
  c_24_resize <= c_23;
  c_24 <= shift_left(c_24_resize, 0);
  -- node of type 'mux' in stage 14 with id 25 and associated fundamentals [[848], [662], [583]]
  c_25_16_0_False_resize <= c_16;
  c_25_16_0_False_shift <= shift_left(c_25_16_0_False_resize, 0);
  c_25_19_1_False_resize <= resize(c_19, 26);
  c_25_19_1_False_shift <= shift_left(c_25_19_1_False_resize, 1);
  with config_select_14 select c_25_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_25_sel select c_25 <=
    c_25_16_0_False_shift when "0",
    c_25_19_1_False_shift when others;
  -- node of type 'output' in stage 14 with id 26 and associated fundamentals [[848], [662], [583]]
  c_26_resize <= c_25;
  c_26 <= shift_left(c_26_resize, 0);
  -- node of type 'output' in stage 9 with id 27 and associated fundamentals [[1022], [429], [521]]
  c_27_resize <= c_13;
  c_27 <= shift_left(c_27_resize, 0);
  -- node of type 'mux' in stage 16 with id 28 and associated fundamentals [[338], [491], [461]]
  c_28_19_0_False_resize <= c_19;
  c_28_19_0_False_shift <= shift_left(c_28_19_0_False_resize, 0);
  c_28_22_0_False_resize <= c_22(24 downto 0);
  c_28_22_0_False_shift <= shift_left(c_28_22_0_False_resize, 0);
  with config_select_16 select c_28_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_28_sel select c_28 <=
    c_28_19_0_False_shift when "0",
    c_28_22_0_False_shift when others;
  -- node of type 'output' in stage 16 with id 29 and associated fundamentals [[338], [491], [461]]
  c_29_resize <= c_28;
  c_29 <= shift_left(c_29_resize, 0);
  -- node of type 'mux' in stage 16 with id 30 and associated fundamentals [[572], [455], [693]]
  c_30_22_0_False_resize <= c_22;
  c_30_22_0_False_shift <= shift_left(c_30_22_0_False_resize, 0);
  c_30_16_0_False_resize <= c_16;
  c_30_16_0_False_shift <= shift_left(c_30_16_0_False_resize, 0);
  with config_select_16 select c_30_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_30_sel select c_30 <=
    c_30_22_0_False_shift when "0",
    c_30_16_0_False_shift when others;
  -- node of type 'output' in stage 16 with id 31 and associated fundamentals [[572], [455], [693]]
  c_31_resize <= c_30;
  c_31 <= shift_left(c_31_resize, 0);
end architecture;
