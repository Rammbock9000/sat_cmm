library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    x_1: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(24 downto 0);
    y_1: out std_logic_vector(24 downto 0);
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
  signal c_1: signed(15 downto 0);
  signal c_2: signed(19 downto 0);
  signal c_2_1_4_False_resize: signed(19 downto 0);
  signal c_2_1_4_False_shift: signed(19 downto 0);
  signal c_2_0_0_False_resize: signed(19 downto 0);
  signal c_2_0_0_False_shift: signed(19 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_1_0_False_resize: signed(21 downto 0);
  signal c_3_1_0_False_shift: signed(21 downto 0);
  signal c_3_0_6_False_resize: signed(21 downto 0);
  signal c_3_0_6_False_shift: signed(21 downto 0);
  signal c_3_0_2_False_resize: signed(21 downto 0);
  signal c_3_0_2_False_shift: signed(21 downto 0);
  signal c_3_sel: std_logic_vector(1 downto 0);
  signal c_4: signed(24 downto 0);
  signal c_4_i0_resize: signed(24 downto 0);
  signal c_4_i1_resize: signed(24 downto 0);
  signal c_4_i0_shift: signed(24 downto 0);
  signal c_4_i1_shift: signed(24 downto 0);
  signal c_4_arith: signed(24 downto 0);
  signal c_4_oshift: signed(24 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(19 downto 0);
  signal c_5_1_4_False_resize: signed(19 downto 0);
  signal c_5_1_4_False_shift: signed(19 downto 0);
  signal c_5_1_0_False_resize: signed(19 downto 0);
  signal c_5_1_0_False_shift: signed(19 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(25 downto 0);
  signal c_6_i0_resize: signed(25 downto 0);
  signal c_6_i1_resize: signed(25 downto 0);
  signal c_6_i0_shift: signed(25 downto 0);
  signal c_6_i1_shift: signed(25 downto 0);
  signal c_6_arith: signed(25 downto 0);
  signal c_6_oshift: signed(25 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(19 downto 0);
  signal c_7_0_0_False_resize: signed(19 downto 0);
  signal c_7_0_0_False_shift: signed(19 downto 0);
  signal c_7_0_1_False_resize: signed(19 downto 0);
  signal c_7_0_1_False_shift: signed(19 downto 0);
  signal c_7_1_4_False_resize: signed(19 downto 0);
  signal c_7_1_4_False_shift: signed(19 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(17 downto 0);
  signal c_8_1_0_False_resize: signed(17 downto 0);
  signal c_8_1_0_False_shift: signed(17 downto 0);
  signal c_8_0_2_False_resize: signed(17 downto 0);
  signal c_8_0_2_False_shift: signed(17 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_10: signed(21 downto 0);
  signal c_10_1_6_False_resize: signed(21 downto 0);
  signal c_10_1_6_False_shift: signed(21 downto 0);
  signal c_10_9_0_False_resize: signed(21 downto 0);
  signal c_10_9_0_False_shift: signed(21 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(22 downto 0);
  signal c_11_0_0_False_resize: signed(22 downto 0);
  signal c_11_0_0_False_shift: signed(22 downto 0);
  signal c_11_9_1_False_resize: signed(22 downto 0);
  signal c_11_9_1_False_shift: signed(22 downto 0);
  signal c_11_1_1_False_resize: signed(22 downto 0);
  signal c_11_1_1_False_shift: signed(22 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_i0_resize: signed(23 downto 0);
  signal c_12_i1_resize: signed(23 downto 0);
  signal c_12_i0_shift: signed(23 downto 0);
  signal c_12_i1_shift: signed(23 downto 0);
  signal c_12_arith: signed(23 downto 0);
  signal c_12_oshift: signed(23 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(22 downto 0);
  signal c_13_0_3_False_resize: signed(22 downto 0);
  signal c_13_0_3_False_shift: signed(22 downto 0);
  signal c_13_9_0_False_resize: signed(22 downto 0);
  signal c_13_9_0_False_shift: signed(22 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(16 downto 0);
  signal c_14_1_0_False_resize: signed(16 downto 0);
  signal c_14_1_0_False_shift: signed(16 downto 0);
  signal c_14_1_1_False_resize: signed(16 downto 0);
  signal c_14_1_1_False_shift: signed(16 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_i0_resize: signed(23 downto 0);
  signal c_15_i1_resize: signed(23 downto 0);
  signal c_15_i0_shift: signed(23 downto 0);
  signal c_15_i1_shift: signed(23 downto 0);
  signal c_15_arith: signed(23 downto 0);
  signal c_15_oshift: signed(23 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_15_2_False_resize: signed(25 downto 0);
  signal c_16_15_2_False_shift: signed(25 downto 0);
  signal c_16_1_0_False_resize: signed(25 downto 0);
  signal c_16_1_0_False_shift: signed(25 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_6_0_False_resize: signed(25 downto 0);
  signal c_17_6_0_False_shift: signed(25 downto 0);
  signal c_17_15_2_False_resize: signed(25 downto 0);
  signal c_17_15_2_False_shift: signed(25 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_i0_resize: signed(23 downto 0);
  signal c_18_i1_resize: signed(23 downto 0);
  signal c_18_i0_shift: signed(23 downto 0);
  signal c_18_i1_shift: signed(23 downto 0);
  signal c_18_arith: signed(23 downto 0);
  signal c_18_oshift: signed(23 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(22 downto 0);
  signal c_19_12_0_False_resize: signed(22 downto 0);
  signal c_19_12_0_False_shift: signed(22 downto 0);
  signal c_19_15_3_False_resize: signed(22 downto 0);
  signal c_19_15_3_False_shift: signed(22 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_1_3_False_resize: signed(23 downto 0);
  signal c_20_1_3_False_shift: signed(23 downto 0);
  signal c_20_12_0_False_resize: signed(23 downto 0);
  signal c_20_12_0_False_shift: signed(23 downto 0);
  signal c_20_15_0_False_resize: signed(23 downto 0);
  signal c_20_15_0_False_shift: signed(23 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(24 downto 0);
  signal c_21_i0_resize: signed(24 downto 0);
  signal c_21_i1_resize: signed(24 downto 0);
  signal c_21_i0_shift: signed(24 downto 0);
  signal c_21_i1_shift: signed(24 downto 0);
  signal c_21_arith: signed(24 downto 0);
  signal c_21_oshift: signed(24 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(23 downto 0);
  signal c_22_9_0_False_resize: signed(23 downto 0);
  signal c_22_9_0_False_shift: signed(23 downto 0);
  signal c_22_6_2_False_resize: signed(23 downto 0);
  signal c_22_6_2_False_shift: signed(23 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(24 downto 0);
  signal c_23_i0_resize: signed(24 downto 0);
  signal c_23_i1_resize: signed(24 downto 0);
  signal c_23_i0_shift: signed(24 downto 0);
  signal c_23_i1_shift: signed(24 downto 0);
  signal c_23_arith: signed(24 downto 0);
  signal c_23_oshift: signed(24 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(24 downto 0);
  signal c_24_resize: signed(24 downto 0);
  signal c_25: signed(24 downto 0);
  signal c_25_resize: signed(24 downto 0);
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
  -- input node 1 with id 1
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= signed(x_1);
    end if;
  end process;
  -- output node 0 with id 24
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_24);
    end if;
  end process;
  -- output node 1 with id 25
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_25);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1, 0], [0, 16], [1, 0]]
  c_2_1_4_False_resize <= resize(c_1, 20);
  c_2_1_4_False_shift <= shift_left(c_2_1_4_False_resize, 4);
  c_2_0_0_False_resize <= resize(c_0, 20);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_1_4_False_shift when "0",
    c_2_0_0_False_shift when others;
  -- node of type 'mux' in stage 1 with id 3 and associated fundamentals [[0, 1], [64, 0], [4, 0]]
  c_3_1_0_False_resize <= resize(c_1, 22);
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  c_3_0_6_False_resize <= resize(c_0, 22);
  c_3_0_6_False_shift <= shift_left(c_3_0_6_False_resize, 6);
  c_3_0_2_False_resize <= resize(c_0, 22);
  c_3_0_2_False_shift <= shift_left(c_3_0_2_False_resize, 2);
  with config_select_1 select c_3_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_3_sel select c_3 <=
    c_3_1_0_False_shift when "00",
    c_3_0_6_False_shift when "01",
    c_3_0_2_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 4 and associated fundamentals [[4, 4], [-256, 64], [-12, 0]]
  with config_select_2 select c_4_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 22,
      w_o => 25,
      s_x_i => 2,
      s_y_i => 2,
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
  c_4 <= c_4_oshift(24 downto 0);
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[0, 16], [0, 1], [0, 16]]
  c_5_1_4_False_resize <= resize(c_1, 20);
  c_5_1_4_False_shift <= shift_left(c_5_1_4_False_resize, 4);
  c_5_1_0_False_resize <= resize(c_1, 20);
  c_5_1_0_False_shift <= shift_left(c_5_1_0_False_resize, 0);
  with config_select_1 select c_5_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_1_4_False_shift when "0",
    c_5_1_0_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 6 and associated fundamentals [[8, 40], [-512, 126], [-24, 32]]
  with config_select_3 select c_6_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 20,
      w_o => 26,
      s_x_i => 1,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_6_sub_sel,
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(25 downto 0);
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[0, 16], [2, 0], [1, 0]]
  c_7_0_0_False_resize <= resize(c_0, 20);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  c_7_0_1_False_resize <= resize(c_0, 20);
  c_7_0_1_False_shift <= shift_left(c_7_0_1_False_resize, 1);
  c_7_1_4_False_resize <= resize(c_1, 20);
  c_7_1_4_False_shift <= shift_left(c_7_1_4_False_resize, 4);
  with config_select_1 select c_7_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_7_sel select c_7 <=
    c_7_0_0_False_shift when "00",
    c_7_0_1_False_shift when "01",
    c_7_1_4_False_shift when others;
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[4, 0], [4, 0], [0, 1]]
  c_8_1_0_False_resize <= resize(c_1, 18);
  c_8_1_0_False_shift <= shift_left(c_8_1_0_False_resize, 0);
  c_8_0_2_False_resize <= resize(c_0, 18);
  c_8_0_2_False_shift <= shift_left(c_8_0_2_False_resize, 2);
  with config_select_1 select c_8_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_1_0_False_shift when "0",
    c_8_0_2_False_shift when others;
  -- node of type 'sub' in stage 2 with id 9 and associated fundamentals [[-128, 16], [-126, 0], [1, -32]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 18,
      w_o => 24,
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
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[0, 64], [0, 64], [1, -32]]
  c_10_1_6_False_resize <= resize(c_1, 22);
  c_10_1_6_False_shift <= shift_left(c_10_1_6_False_resize, 6);
  c_10_9_0_False_resize <= c_9(21 downto 0);
  c_10_9_0_False_shift <= shift_left(c_10_9_0_False_resize, 0);
  with config_select_3 select c_10_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_10_sel select c_10 <=
    c_10_1_6_False_shift when "0",
    c_10_9_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[0, 2], [1, 0], [2, -64]]
  c_11_0_0_False_resize <= resize(c_0, 23);
  c_11_0_0_False_shift <= shift_left(c_11_0_0_False_resize, 0);
  c_11_9_1_False_resize <= c_9(22 downto 0);
  c_11_9_1_False_shift <= shift_left(c_11_9_1_False_resize, 1);
  c_11_1_1_False_resize <= resize(c_1, 23);
  c_11_1_1_False_shift <= shift_left(c_11_1_1_False_resize, 1);
  with config_select_3 select c_11_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_11_sel select c_11 <=
    c_11_0_0_False_shift when "00",
    c_11_9_1_False_shift when "01",
    c_11_1_1_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 12 and associated fundamentals [[0, 72], [4, 64], [-7, 224]]
  with config_select_4 select c_12_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
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
      sub_i => c_12_sub_sel,
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[8, 0], [-126, 0], [8, 0]]
  c_13_0_3_False_resize <= resize(c_0, 23);
  c_13_0_3_False_shift <= shift_left(c_13_0_3_False_resize, 3);
  c_13_9_0_False_resize <= c_9(22 downto 0);
  c_13_9_0_False_shift <= shift_left(c_13_9_0_False_resize, 0);
  with config_select_3 select c_13_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_0_3_False_shift when "0",
    c_13_9_0_False_shift when others;
  -- node of type 'mux' in stage 1 with id 14 and associated fundamentals [[0, 1], [0, 2], [0, 1]]
  c_14_1_0_False_resize <= resize(c_1, 17);
  c_14_1_0_False_shift <= shift_left(c_14_1_0_False_resize, 0);
  c_14_1_1_False_resize <= resize(c_1, 17);
  c_14_1_1_False_shift <= shift_left(c_14_1_1_False_resize, 1);
  with config_select_1 select c_14_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_1_0_False_shift when "0",
    c_14_1_1_False_shift when others;
  -- node of type 'sub' in stage 4 with id 15 and associated fundamentals [[8, -2], [-126, -4], [8, -2]]
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 17,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(23 downto 0);
  -- node of type 'mux' in stage 5 with id 16 and associated fundamentals [[32, -8], [-504, -16], [0, 1]]
  c_16_15_2_False_resize <= resize(c_15, 26);
  c_16_15_2_False_shift <= shift_left(c_16_15_2_False_resize, 2);
  c_16_1_0_False_resize <= resize(c_1, 26);
  c_16_1_0_False_shift <= shift_left(c_16_1_0_False_resize, 0);
  with config_select_5 select c_16_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_15_2_False_shift when "0",
    c_16_1_0_False_shift when others;
  -- node of type 'mux' in stage 5 with id 17 and associated fundamentals [[8, 40], [-512, 126], [32, -8]]
  c_17_6_0_False_resize <= c_6;
  c_17_6_0_False_shift <= shift_left(c_17_6_0_False_resize, 0);
  c_17_15_2_False_resize <= resize(c_15, 26);
  c_17_15_2_False_shift <= shift_left(c_17_15_2_False_resize, 2);
  with config_select_5 select c_17_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_17_sel select c_17 <=
    c_17_6_0_False_shift when "0",
    c_17_15_2_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 18 and associated fundamentals [[40, 32], [8, -142], [32, -7]]
  with config_select_6 select c_18_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 26,
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
      sub_i => c_18_sub_sel,
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  c_18 <= c_18_oshift(23 downto 0);
  -- node of type 'mux' in stage 5 with id 19 and associated fundamentals [[0, 72], [4, 64], [64, -16]]
  c_19_12_0_False_resize <= c_12(22 downto 0);
  c_19_12_0_False_shift <= shift_left(c_19_12_0_False_resize, 0);
  c_19_15_3_False_resize <= c_15(22 downto 0);
  c_19_15_3_False_shift <= shift_left(c_19_15_3_False_resize, 3);
  with config_select_5 select c_19_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_19_sel select c_19 <=
    c_19_12_0_False_shift when "0",
    c_19_15_3_False_shift when others;
  -- node of type 'mux' in stage 5 with id 20 and associated fundamentals [[0, 8], [-126, -4], [-7, 224]]
  c_20_1_3_False_resize <= resize(c_1, 24);
  c_20_1_3_False_shift <= shift_left(c_20_1_3_False_resize, 3);
  c_20_12_0_False_resize <= c_12;
  c_20_12_0_False_shift <= shift_left(c_20_12_0_False_resize, 0);
  c_20_15_0_False_resize <= c_15;
  c_20_15_0_False_shift <= shift_left(c_20_15_0_False_resize, 0);
  with config_select_5 select c_20_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_20_sel select c_20 <=
    c_20_1_3_False_shift when "00",
    c_20_12_0_False_shift when "01",
    c_20_15_0_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 21 and associated fundamentals [[0, 296], [142, 260], [249, 160]]
  with config_select_6 select c_21_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
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
      sub_i => c_21_sub_sel,
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  c_21 <= c_21_oshift(24 downto 0);
  -- node of type 'mux' in stage 4 with id 22 and associated fundamentals [[-128, 16], [-126, 0], [-96, 128]]
  c_22_9_0_False_resize <= c_9;
  c_22_9_0_False_shift <= shift_left(c_22_9_0_False_resize, 0);
  c_22_6_2_False_resize <= c_6(23 downto 0);
  c_22_6_2_False_shift <= shift_left(c_22_6_2_False_resize, 2);
  with config_select_4 select c_22_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_22_sel select c_22 <=
    c_22_9_0_False_shift when "0",
    c_22_6_2_False_shift when others;
  -- node of type 'add_sub' in stage 7 with id 23 and associated fundamentals [[-296, 0], [-260, 142], [-160, 249]]
  with config_select_7 select c_23_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
      w_o => 25,
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
      sub_i => c_23_sub_sel,
      x_i => c_22,
      y_i => c_18,
      z_o => c_23_oshift
    );
  c_23 <= c_23_oshift(24 downto 0);
  -- node of type 'output' in stage 7 with id 24 and associated fundamentals [[296, 0], [260, -142], [160, -249]]
  c_24_resize <= c_23;
  c_24 <= -shift_left(c_24_resize, 0);
  -- node of type 'output' in stage 6 with id 25 and associated fundamentals [[0, 296], [142, 260], [249, 160]]
  c_25_resize <= c_21;
  c_25 <= shift_left(c_25_resize, 0);
end architecture;
