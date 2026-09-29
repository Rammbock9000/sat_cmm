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
    y_4: out std_logic_vector(24 downto 0);
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
  signal c_1: signed(17 downto 0);
  signal c_1_0_0_False_resize: signed(17 downto 0);
  signal c_1_0_0_False_shift: signed(17 downto 0);
  signal c_1_0_2_False_resize: signed(17 downto 0);
  signal c_1_0_2_False_shift: signed(17 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(17 downto 0);
  signal c_2_0_0_False_resize: signed(17 downto 0);
  signal c_2_0_0_False_shift: signed(17 downto 0);
  signal c_2_0_2_False_resize: signed(17 downto 0);
  signal c_2_0_2_False_shift: signed(17 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(19 downto 0);
  signal c_3_i1_resize: signed(19 downto 0);
  signal c_3_i0_shift: signed(19 downto 0);
  signal c_3_i1_shift: signed(19 downto 0);
  signal c_3_arith: signed(19 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_4: signed(25 downto 0);
  signal c_4_3_6_False_resize: signed(25 downto 0);
  signal c_4_3_6_False_shift: signed(25 downto 0);
  signal c_4_3_0_False_resize: signed(25 downto 0);
  signal c_4_3_0_False_shift: signed(25 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_0_7_False_resize: signed(22 downto 0);
  signal c_5_0_7_False_shift: signed(22 downto 0);
  signal c_5_0_6_False_resize: signed(22 downto 0);
  signal c_5_0_6_False_shift: signed(22 downto 0);
  signal c_5_0_0_False_resize: signed(22 downto 0);
  signal c_5_0_0_False_shift: signed(22 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(25 downto 0);
  signal c_6_i0_resize: signed(25 downto 0);
  signal c_6_i1_resize: signed(25 downto 0);
  signal c_6_i0_shift: signed(25 downto 0);
  signal c_6_i1_shift: signed(25 downto 0);
  signal c_6_arith: signed(25 downto 0);
  signal c_6_oshift: signed(25 downto 0);
  signal c_7: signed(25 downto 0);
  signal c_7_6_0_False_resize: signed(25 downto 0);
  signal c_7_6_0_False_shift: signed(25 downto 0);
  signal c_7_6_2_False_resize: signed(25 downto 0);
  signal c_7_6_2_False_shift: signed(25 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(17 downto 0);
  signal c_8_0_2_False_resize: signed(17 downto 0);
  signal c_8_0_2_False_shift: signed(17 downto 0);
  signal c_8_3_0_False_resize: signed(17 downto 0);
  signal c_8_3_0_False_shift: signed(17 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(25 downto 0);
  signal c_9_i0_resize: signed(25 downto 0);
  signal c_9_i1_resize: signed(25 downto 0);
  signal c_9_i0_shift: signed(25 downto 0);
  signal c_9_i1_shift: signed(25 downto 0);
  signal c_9_arith: signed(25 downto 0);
  signal c_9_oshift: signed(25 downto 0);
  signal c_10: signed(26 downto 0);
  signal c_10_6_3_False_resize: signed(26 downto 0);
  signal c_10_6_3_False_shift: signed(26 downto 0);
  signal c_10_6_0_False_resize: signed(26 downto 0);
  signal c_10_6_0_False_shift: signed(26 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_9_0_False_resize: signed(23 downto 0);
  signal c_11_9_0_False_shift: signed(23 downto 0);
  signal c_11_3_4_False_resize: signed(23 downto 0);
  signal c_11_3_4_False_shift: signed(23 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(25 downto 0);
  signal c_12_i0_resize: signed(25 downto 0);
  signal c_12_i1_resize: signed(25 downto 0);
  signal c_12_i0_shift: signed(25 downto 0);
  signal c_12_i1_shift: signed(25 downto 0);
  signal c_12_arith: signed(25 downto 0);
  signal c_12_oshift: signed(25 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(23 downto 0);
  signal c_13_0_0_False_resize: signed(23 downto 0);
  signal c_13_0_0_False_shift: signed(23 downto 0);
  signal c_13_9_0_False_resize: signed(23 downto 0);
  signal c_13_9_0_False_shift: signed(23 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_i0_resize: signed(23 downto 0);
  signal c_14_i1_resize: signed(23 downto 0);
  signal c_14_i0_shift: signed(23 downto 0);
  signal c_14_i1_shift: signed(23 downto 0);
  signal c_14_arith: signed(23 downto 0);
  signal c_14_oshift: signed(23 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_15_14_0_False_resize: signed(22 downto 0);
  signal c_15_14_0_False_shift: signed(22 downto 0);
  signal c_15_12_2_False_resize: signed(22 downto 0);
  signal c_15_12_2_False_shift: signed(22 downto 0);
  signal c_15_0_5_False_resize: signed(22 downto 0);
  signal c_15_0_5_False_shift: signed(22 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(25 downto 0);
  signal c_16_i1_resize: signed(25 downto 0);
  signal c_16_i0_shift: signed(25 downto 0);
  signal c_16_i1_shift: signed(25 downto 0);
  signal c_16_arith: signed(25 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(23 downto 0);
  signal c_17_0_4_False_resize: signed(23 downto 0);
  signal c_17_0_4_False_shift: signed(23 downto 0);
  signal c_17_6_0_False_resize: signed(23 downto 0);
  signal c_17_6_0_False_shift: signed(23 downto 0);
  signal c_17_0_5_False_resize: signed(23 downto 0);
  signal c_17_0_5_False_shift: signed(23 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_18_i0_resize: signed(24 downto 0);
  signal c_18_i1_resize: signed(24 downto 0);
  signal c_18_i0_shift: signed(24 downto 0);
  signal c_18_i1_shift: signed(24 downto 0);
  signal c_18_arith: signed(24 downto 0);
  signal c_18_oshift: signed(24 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(25 downto 0);
  signal c_19_16_1_False_resize: signed(25 downto 0);
  signal c_19_16_1_False_shift: signed(25 downto 0);
  signal c_19_9_0_False_resize: signed(25 downto 0);
  signal c_19_9_0_False_shift: signed(25 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_resize: signed(25 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_9_0_False_resize: signed(25 downto 0);
  signal c_21_9_0_False_shift: signed(25 downto 0);
  signal c_21_12_0_False_resize: signed(25 downto 0);
  signal c_21_12_0_False_shift: signed(25 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_resize: signed(25 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_3_6_False_resize: signed(25 downto 0);
  signal c_23_3_6_False_shift: signed(25 downto 0);
  signal c_23_12_0_False_resize: signed(25 downto 0);
  signal c_23_12_0_False_shift: signed(25 downto 0);
  signal c_23_3_3_False_resize: signed(25 downto 0);
  signal c_23_3_3_False_shift: signed(25 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_resize: signed(25 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_12_3_False_resize: signed(25 downto 0);
  signal c_25_12_3_False_shift: signed(25 downto 0);
  signal c_25_14_2_False_resize: signed(25 downto 0);
  signal c_25_14_2_False_shift: signed(25 downto 0);
  signal c_25_16_0_False_resize: signed(25 downto 0);
  signal c_25_16_0_False_shift: signed(25 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_resize: signed(25 downto 0);
  signal c_27: signed(24 downto 0);
  signal c_27_resize: signed(24 downto 0);
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
  -- output node 2 with id 24
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_24);
    end if;
  end process;
  -- output node 3 with id 26
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_26);
    end if;
  end process;
  -- output node 4 with id 27
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_27);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [1], [4]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "0",
    c_1_0_2_False_shift when others;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[4], [1], [4]]
  c_2_0_0_False_resize <= resize(c_0, 18);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_2_False_resize <= resize(c_0, 18);
  c_2_0_2_False_shift <= shift_left(c_2_0_2_False_resize, 2);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_0_0_False_shift when "0",
    c_2_0_2_False_shift when others;
  -- node of type 'sub' in stage 2 with id 3 and associated fundamentals [[-15], [-3], [-12]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
      w_o => 20,
      s_x_i => 0,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(19 downto 0);
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[-15], [-3], [-768]]
  c_4_3_6_False_resize <= resize(c_3, 26);
  c_4_3_6_False_shift <= shift_left(c_4_3_6_False_resize, 6);
  c_4_3_0_False_resize <= resize(c_3, 26);
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  with config_select_3 select c_4_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_3_6_False_shift when "0",
    c_4_3_0_False_shift when others;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[128], [64], [1]]
  c_5_0_7_False_resize <= resize(c_0, 23);
  c_5_0_7_False_shift <= shift_left(c_5_0_7_False_resize, 7);
  c_5_0_6_False_resize <= resize(c_0, 23);
  c_5_0_6_False_shift <= shift_left(c_5_0_6_False_resize, 6);
  c_5_0_0_False_resize <= resize(c_0, 23);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  with config_select_1 select c_5_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_5_sel select c_5 <=
    c_5_0_7_False_shift when "00",
    c_5_0_6_False_shift when "01",
    c_5_0_0_False_shift when others;
  -- node of type 'sub' in stage 4 with id 6 and associated fundamentals [[-143], [-67], [-769]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 23,
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
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(25 downto 0);
  -- node of type 'mux' in stage 5 with id 7 and associated fundamentals [[-143], [-268], [-769]]
  c_7_6_0_False_resize <= c_6;
  c_7_6_0_False_shift <= shift_left(c_7_6_0_False_resize, 0);
  c_7_6_2_False_resize <= c_6;
  c_7_6_2_False_shift <= shift_left(c_7_6_2_False_resize, 2);
  with config_select_5 select c_7_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_6_0_False_shift when "0",
    c_7_6_2_False_shift when others;
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[4], [-3], [4]]
  c_8_0_2_False_resize <= resize(c_0, 18);
  c_8_0_2_False_shift <= shift_left(c_8_0_2_False_resize, 2);
  c_8_3_0_False_resize <= c_3(17 downto 0);
  c_8_3_0_False_shift <= shift_left(c_8_3_0_False_resize, 0);
  with config_select_3 select c_8_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_0_2_False_shift when "0",
    c_8_3_0_False_shift when others;
  -- node of type 'sub' in stage 6 with id 9 and associated fundamentals [[-147], [-265], [-773]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 18,
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
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(25 downto 0);
  -- node of type 'mux' in stage 5 with id 10 and associated fundamentals [[-1144], [-67], [-769]]
  c_10_6_3_False_resize <= resize(c_6, 27);
  c_10_6_3_False_shift <= shift_left(c_10_6_3_False_resize, 3);
  c_10_6_0_False_resize <= resize(c_6, 27);
  c_10_6_0_False_shift <= shift_left(c_10_6_0_False_resize, 0);
  with config_select_5 select c_10_sel <= 
    "0" when "00",
    "1" when "10",
    "1" when others;
  with c_10_sel select c_10 <=
    c_10_6_3_False_shift when "0",
    c_10_6_0_False_shift when others;
  -- node of type 'mux' in stage 7 with id 11 and associated fundamentals [[-147], [-48], [-192]]
  c_11_9_0_False_resize <= c_9(23 downto 0);
  c_11_9_0_False_shift <= shift_left(c_11_9_0_False_resize, 0);
  c_11_3_4_False_resize <= resize(c_3, 24);
  c_11_3_4_False_shift <= shift_left(c_11_3_4_False_resize, 4);
  with config_select_7 select c_11_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_9_0_False_shift when "0",
    c_11_3_4_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 12 and associated fundamentals [[-997], [-19], [-961]]
  with config_select_8 select c_12_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 24,
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
      sub_i => c_12_sub_sel,
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(25 downto 0);
  -- node of type 'mux' in stage 7 with id 13 and associated fundamentals [[-147], [1], [1]]
  c_13_0_0_False_resize <= resize(c_0, 24);
  c_13_0_0_False_shift <= shift_left(c_13_0_0_False_resize, 0);
  c_13_9_0_False_resize <= c_9(23 downto 0);
  c_13_9_0_False_shift <= shift_left(c_13_9_0_False_resize, 0);
  with config_select_7 select c_13_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_0_0_False_shift when "0",
    c_13_9_0_False_shift when others;
  -- node of type 'add' in stage 8 with id 14 and associated fundamentals [[-177], [-5], [-23]]
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 20,
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
      x_i => c_13,
      y_i => c_3,
      z_o => c_14_oshift
    );
  c_14 <= c_14_oshift(23 downto 0);
  -- node of type 'mux' in stage 9 with id 15 and associated fundamentals [[32], [-76], [-23]]
  c_15_14_0_False_resize <= c_14(22 downto 0);
  c_15_14_0_False_shift <= shift_left(c_15_14_0_False_resize, 0);
  c_15_12_2_False_resize <= c_12(22 downto 0);
  c_15_12_2_False_shift <= shift_left(c_15_12_2_False_resize, 2);
  c_15_0_5_False_resize <= resize(c_0, 23);
  c_15_0_5_False_shift <= shift_left(c_15_0_5_False_resize, 5);
  with config_select_9 select c_15_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_15_sel select c_15 <=
    c_15_14_0_False_shift when "00",
    c_15_12_2_False_shift when "01",
    c_15_0_5_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 16 and associated fundamentals [[-15], [-371], [-677]]
  with config_select_10 select c_16_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 23,
      w_o => 26,
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
      sub_i => c_16_sub_sel,
      x_i => c_6,
      y_i => c_15,
      z_o => c_16_oshift
    );
  c_16 <= c_16_oshift(25 downto 0);
  -- node of type 'mux' in stage 5 with id 17 and associated fundamentals [[-143], [32], [16]]
  c_17_0_4_False_resize <= resize(c_0, 24);
  c_17_0_4_False_shift <= shift_left(c_17_0_4_False_resize, 4);
  c_17_6_0_False_resize <= c_6(23 downto 0);
  c_17_6_0_False_shift <= shift_left(c_17_6_0_False_resize, 0);
  c_17_0_5_False_resize <= resize(c_0, 24);
  c_17_0_5_False_shift <= shift_left(c_17_0_5_False_resize, 5);
  with config_select_5 select c_17_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_17_sel select c_17 <=
    c_17_0_4_False_shift when "00",
    c_17_6_0_False_shift when "01",
    c_17_0_5_False_shift when others;
  -- node of type 'add_sub' in stage 9 with id 18 and associated fundamentals [[395], [123], [41]]
  with config_select_9 select c_18_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
      w_o => 25,
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
      sub_i => c_18_sub_sel,
      x_i => c_14,
      y_i => c_17,
      z_o => c_18_oshift
    );
  c_18 <= c_18_oshift(24 downto 0);
  -- node of type 'mux' in stage 11 with id 19 and associated fundamentals [[-30], [-742], [-773]]
  c_19_16_1_False_resize <= c_16;
  c_19_16_1_False_shift <= shift_left(c_19_16_1_False_resize, 1);
  c_19_9_0_False_resize <= c_9;
  c_19_9_0_False_shift <= shift_left(c_19_9_0_False_resize, 0);
  with config_select_11 select c_19_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_19_sel select c_19 <=
    c_19_16_1_False_shift when "0",
    c_19_9_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 20 and associated fundamentals [[30], [742], [773]]
  c_20_resize <= c_19;
  c_20 <= -shift_left(c_20_resize, 0);
  -- node of type 'mux' in stage 9 with id 21 and associated fundamentals [[-147], [-265], [-961]]
  c_21_9_0_False_resize <= c_9;
  c_21_9_0_False_shift <= shift_left(c_21_9_0_False_resize, 0);
  c_21_12_0_False_resize <= c_12;
  c_21_12_0_False_shift <= shift_left(c_21_12_0_False_resize, 0);
  with config_select_9 select c_21_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_21_sel select c_21 <=
    c_21_9_0_False_shift when "0",
    c_21_12_0_False_shift when others;
  -- node of type 'output' in stage 9 with id 22 and associated fundamentals [[147], [265], [961]]
  c_22_resize <= c_21;
  c_22 <= -shift_left(c_22_resize, 0);
  -- node of type 'mux' in stage 9 with id 23 and associated fundamentals [[-997], [-24], [-768]]
  c_23_3_6_False_resize <= resize(c_3, 26);
  c_23_3_6_False_shift <= shift_left(c_23_3_6_False_resize, 6);
  c_23_12_0_False_resize <= c_12;
  c_23_12_0_False_shift <= shift_left(c_23_12_0_False_resize, 0);
  c_23_3_3_False_resize <= resize(c_3, 26);
  c_23_3_3_False_shift <= shift_left(c_23_3_3_False_resize, 3);
  with config_select_9 select c_23_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_23_sel select c_23 <=
    c_23_3_6_False_shift when "00",
    c_23_12_0_False_shift when "01",
    c_23_3_3_False_shift when others;
  -- node of type 'output' in stage 9 with id 24 and associated fundamentals [[997], [24], [768]]
  c_24_resize <= c_23;
  c_24 <= -shift_left(c_24_resize, 0);
  -- node of type 'mux' in stage 11 with id 25 and associated fundamentals [[-708], [-152], [-677]]
  c_25_12_3_False_resize <= c_12;
  c_25_12_3_False_shift <= shift_left(c_25_12_3_False_resize, 3);
  c_25_14_2_False_resize <= resize(c_14, 26);
  c_25_14_2_False_shift <= shift_left(c_25_14_2_False_resize, 2);
  c_25_16_0_False_resize <= c_16;
  c_25_16_0_False_shift <= shift_left(c_25_16_0_False_resize, 0);
  with config_select_11 select c_25_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_25_sel select c_25 <=
    c_25_12_3_False_shift when "00",
    c_25_14_2_False_shift when "01",
    c_25_16_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 26 and associated fundamentals [[708], [152], [677]]
  c_26_resize <= c_25;
  c_26 <= -shift_left(c_26_resize, 0);
  -- node of type 'output' in stage 9 with id 27 and associated fundamentals [[395], [123], [41]]
  c_27_resize <= c_18;
  c_27 <= shift_left(c_27_resize, 0);
end architecture;
