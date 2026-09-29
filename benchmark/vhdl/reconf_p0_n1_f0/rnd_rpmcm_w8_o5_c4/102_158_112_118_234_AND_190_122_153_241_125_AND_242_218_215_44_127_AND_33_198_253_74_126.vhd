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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_i0_resize: signed(17 downto 0);
  signal c_1_i1_resize: signed(17 downto 0);
  signal c_1_i0_shift: signed(17 downto 0);
  signal c_1_i1_shift: signed(17 downto 0);
  signal c_1_arith: signed(17 downto 0);
  signal c_1_oshift: signed(17 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(17 downto 0);
  signal c_2_0_2_False_resize: signed(17 downto 0);
  signal c_2_0_2_False_shift: signed(17 downto 0);
  signal c_2_0_0_False_resize: signed(17 downto 0);
  signal c_2_0_0_False_shift: signed(17 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(18 downto 0);
  signal c_4_0_2_False_resize: signed(18 downto 0);
  signal c_4_0_2_False_shift: signed(18 downto 0);
  signal c_4_3_0_False_resize: signed(18 downto 0);
  signal c_4_3_0_False_shift: signed(18 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_i0_resize: signed(22 downto 0);
  signal c_5_i1_resize: signed(22 downto 0);
  signal c_5_i0_shift: signed(22 downto 0);
  signal c_5_i1_shift: signed(22 downto 0);
  signal c_5_arith: signed(22 downto 0);
  signal c_5_oshift: signed(22 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(21 downto 0);
  signal c_6_3_0_False_resize: signed(21 downto 0);
  signal c_6_3_0_False_shift: signed(21 downto 0);
  signal c_6_1_4_False_resize: signed(21 downto 0);
  signal c_6_1_4_False_shift: signed(21 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(21 downto 0);
  signal c_7_0_2_False_resize: signed(21 downto 0);
  signal c_7_0_2_False_shift: signed(21 downto 0);
  signal c_7_1_0_False_resize: signed(21 downto 0);
  signal c_7_1_0_False_shift: signed(21 downto 0);
  signal c_7_0_6_False_resize: signed(21 downto 0);
  signal c_7_0_6_False_shift: signed(21 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_i0_resize: signed(22 downto 0);
  signal c_8_i1_resize: signed(22 downto 0);
  signal c_8_i0_shift: signed(22 downto 0);
  signal c_8_i1_shift: signed(22 downto 0);
  signal c_8_arith: signed(22 downto 0);
  signal c_8_oshift: signed(22 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(22 downto 0);
  signal c_9_5_1_False_resize: signed(22 downto 0);
  signal c_9_5_1_False_shift: signed(22 downto 0);
  signal c_9_5_0_False_resize: signed(22 downto 0);
  signal c_9_5_0_False_shift: signed(22 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(19 downto 0);
  signal c_10_1_0_False_resize: signed(19 downto 0);
  signal c_10_1_0_False_shift: signed(19 downto 0);
  signal c_10_0_4_False_resize: signed(19 downto 0);
  signal c_10_0_4_False_shift: signed(19 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_i0_resize: signed(23 downto 0);
  signal c_11_i1_resize: signed(23 downto 0);
  signal c_11_i0_shift: signed(23 downto 0);
  signal c_11_i1_shift: signed(23 downto 0);
  signal c_11_arith: signed(23 downto 0);
  signal c_11_oshift: signed(23 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(17 downto 0);
  signal c_12_0_1_False_resize: signed(17 downto 0);
  signal c_12_0_1_False_shift: signed(17 downto 0);
  signal c_12_1_0_False_resize: signed(17 downto 0);
  signal c_12_1_0_False_shift: signed(17 downto 0);
  signal c_12_0_0_False_resize: signed(17 downto 0);
  signal c_12_0_0_False_shift: signed(17 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(22 downto 0);
  signal c_13_11_0_False_resize: signed(22 downto 0);
  signal c_13_11_0_False_shift: signed(22 downto 0);
  signal c_13_0_6_False_resize: signed(22 downto 0);
  signal c_13_0_6_False_shift: signed(22 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_i0_resize: signed(23 downto 0);
  signal c_14_i1_resize: signed(23 downto 0);
  signal c_14_i0_shift: signed(23 downto 0);
  signal c_14_i1_shift: signed(23 downto 0);
  signal c_14_arith: signed(23 downto 0);
  signal c_14_oshift: signed(23 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_15_3_1_False_resize: signed(22 downto 0);
  signal c_15_3_1_False_shift: signed(22 downto 0);
  signal c_15_5_0_False_resize: signed(22 downto 0);
  signal c_15_5_0_False_shift: signed(22 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(21 downto 0);
  signal c_16_1_3_False_resize: signed(21 downto 0);
  signal c_16_1_3_False_shift: signed(21 downto 0);
  signal c_16_3_0_False_resize: signed(21 downto 0);
  signal c_16_3_0_False_shift: signed(21 downto 0);
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
  signal c_18_3_0_False_resize: signed(23 downto 0);
  signal c_18_3_0_False_shift: signed(23 downto 0);
  signal c_18_8_1_False_resize: signed(23 downto 0);
  signal c_18_8_1_False_shift: signed(23 downto 0);
  signal c_18_17_0_False_resize: signed(23 downto 0);
  signal c_18_17_0_False_shift: signed(23 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_resize: signed(23 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_5_1_False_resize: signed(23 downto 0);
  signal c_20_5_1_False_shift: signed(23 downto 0);
  signal c_20_17_0_False_resize: signed(23 downto 0);
  signal c_20_17_0_False_shift: signed(23 downto 0);
  signal c_20_17_1_False_resize: signed(23 downto 0);
  signal c_20_17_1_False_shift: signed(23 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_resize: signed(23 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_3_4_False_resize: signed(23 downto 0);
  signal c_22_3_4_False_shift: signed(23 downto 0);
  signal c_22_11_0_False_resize: signed(23 downto 0);
  signal c_22_11_0_False_shift: signed(23 downto 0);
  signal c_22_17_0_False_resize: signed(23 downto 0);
  signal c_22_17_0_False_shift: signed(23 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_resize: signed(23 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_11_0_False_resize: signed(23 downto 0);
  signal c_24_11_0_False_shift: signed(23 downto 0);
  signal c_24_8_1_False_resize: signed(23 downto 0);
  signal c_24_8_1_False_shift: signed(23 downto 0);
  signal c_24_8_0_False_resize: signed(23 downto 0);
  signal c_24_8_0_False_shift: signed(23 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_resize: signed(23 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_resize: signed(23 downto 0);
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
  -- output node 0 with id 19
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_19);
    end if;
  end process;
  -- output node 1 with id 21
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_21);
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
  -- output node 4 with id 26
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_26);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[3], [3], [3], [1]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 18,
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
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  c_1 <= c_1_oshift(17 downto 0);
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [4], [1], [4]]
  c_2_0_2_False_resize <= resize(c_0, 18);
  c_2_0_2_False_shift <= shift_left(c_2_0_2_False_resize, 2);
  c_2_0_0_False_resize <= resize(c_0, 18);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "0" when "11",
    "0" when "01",
    "1" when "10",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_0_2_False_shift when "0",
    c_2_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[7], [31], [7], [33]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
      w_o => 22,
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
      sub_i => c_3_sub_sel,
      x_i => c_2,
      y_i => c_0,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(21 downto 0);
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[4], [4], [7], [4]]
  c_4_0_2_False_resize <= resize(c_0, 19);
  c_4_0_2_False_shift <= shift_left(c_4_0_2_False_resize, 2);
  c_4_3_0_False_resize <= c_3(18 downto 0);
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  with config_select_3 select c_4_sel <= 
    "0" when "11",
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_0_2_False_shift when "0",
    c_4_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 5 and associated fundamentals [[67], [61], [109], [63]]
  with config_select_4 select c_5_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 18,
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
      sub_i => c_5_sub_sel,
      x_i => c_4,
      y_i => c_1,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(22 downto 0);
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[48], [31], [48], [33]]
  c_6_3_0_False_resize <= c_3;
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  c_6_1_4_False_resize <= resize(c_1, 22);
  c_6_1_4_False_shift <= shift_left(c_6_1_4_False_resize, 4);
  with config_select_3 select c_6_sel <= 
    "0" when "11",
    "0" when "01",
    "1" when "10",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_3_0_False_shift when "0",
    c_6_1_4_False_shift when others;
  -- node of type 'mux' in stage 2 with id 7 and associated fundamentals [[3], [64], [4], [4]]
  c_7_0_2_False_resize <= resize(c_0, 22);
  c_7_0_2_False_shift <= shift_left(c_7_0_2_False_resize, 2);
  c_7_1_0_False_resize <= resize(c_1, 22);
  c_7_1_0_False_shift <= shift_left(c_7_1_0_False_resize, 0);
  c_7_0_6_False_resize <= resize(c_0, 22);
  c_7_0_6_False_shift <= shift_left(c_7_0_6_False_resize, 6);
  with config_select_2 select c_7_sel <= 
    "00" when "11",
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_7_sel select c_7 <=
    c_7_0_2_False_shift when "00",
    c_7_1_0_False_shift when "01",
    c_7_0_6_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 8 and associated fundamentals [[51], [95], [44], [37]]
  with config_select_4 select c_8_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 23,
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
      sub_i => c_8_sub_sel,
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(22 downto 0);
  -- node of type 'mux' in stage 5 with id 9 and associated fundamentals [[67], [122], [109], [126]]
  c_9_5_1_False_resize <= c_5;
  c_9_5_1_False_shift <= shift_left(c_9_5_1_False_resize, 1);
  c_9_5_0_False_resize <= c_5;
  c_9_5_0_False_shift <= shift_left(c_9_5_0_False_resize, 0);
  with config_select_5 select c_9_sel <= 
    "0" when "01",
    "0" when "11",
    "1" when "00",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_5_1_False_shift when "0",
    c_9_5_0_False_shift when others;
  -- node of type 'mux' in stage 2 with id 10 and associated fundamentals [[16], [3], [3], [1]]
  c_10_1_0_False_resize <= resize(c_1, 20);
  c_10_1_0_False_shift <= shift_left(c_10_1_0_False_resize, 0);
  c_10_0_4_False_resize <= resize(c_0, 20);
  c_10_0_4_False_shift <= shift_left(c_10_0_4_False_resize, 4);
  with config_select_2 select c_10_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "11",
    "1" when others;
  with c_10_sel select c_10 <=
    c_10_1_0_False_shift when "0",
    c_10_0_4_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 11 and associated fundamentals [[118], [241], [215], [253]]
  with config_select_6 select c_11_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 20,
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
      sub_i => c_11_sub_sel,
      x_i => c_9,
      y_i => c_10,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(23 downto 0);
  -- node of type 'mux' in stage 2 with id 12 and associated fundamentals [[2], [3], [1], [2]]
  c_12_0_1_False_resize <= resize(c_0, 18);
  c_12_0_1_False_shift <= shift_left(c_12_0_1_False_resize, 1);
  c_12_1_0_False_resize <= c_1;
  c_12_1_0_False_shift <= shift_left(c_12_1_0_False_resize, 0);
  c_12_0_0_False_resize <= resize(c_0, 18);
  c_12_0_0_False_shift <= shift_left(c_12_0_0_False_resize, 0);
  with config_select_2 select c_12_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "01",
    "10" when others;
  with c_12_sel select c_12 <=
    c_12_0_1_False_shift when "00",
    c_12_1_0_False_shift when "01",
    c_12_0_0_False_shift when others;
  -- node of type 'mux' in stage 7 with id 13 and associated fundamentals [[118], [64], [64], [64]]
  c_13_11_0_False_resize <= c_11(22 downto 0);
  c_13_11_0_False_shift <= shift_left(c_13_11_0_False_resize, 0);
  c_13_0_6_False_resize <= resize(c_0, 23);
  c_13_0_6_False_shift <= shift_left(c_13_0_6_False_resize, 6);
  with config_select_7 select c_13_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when "10",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_11_0_False_shift when "0",
    c_13_0_6_False_shift when others;
  -- node of type 'sub' in stage 8 with id 14 and associated fundamentals [[-234], [-125], [-127], [-126]]
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 23,
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
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  c_14 <= c_14_oshift(23 downto 0);
  -- node of type 'mux' in stage 5 with id 15 and associated fundamentals [[67], [61], [109], [66]]
  c_15_3_1_False_resize <= resize(c_3, 23);
  c_15_3_1_False_shift <= shift_left(c_15_3_1_False_resize, 1);
  c_15_5_0_False_resize <= c_5;
  c_15_5_0_False_shift <= shift_left(c_15_5_0_False_resize, 0);
  with config_select_5 select c_15_sel <= 
    "0" when "11",
    "1" when "00",
    "1" when "01",
    "1" when others;
  with c_15_sel select c_15 <=
    c_15_3_1_False_shift when "0",
    c_15_5_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 16 and associated fundamentals [[24], [31], [24], [33]]
  c_16_1_3_False_resize <= resize(c_1, 22);
  c_16_1_3_False_shift <= shift_left(c_16_1_3_False_resize, 3);
  c_16_3_0_False_resize <= c_3;
  c_16_3_0_False_shift <= shift_left(c_16_3_0_False_resize, 0);
  with config_select_3 select c_16_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when "11",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_1_3_False_shift when "0",
    c_16_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 17 and associated fundamentals [[158], [153], [242], [99]]
  with config_select_6 select c_17_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
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
  -- node of type 'mux' in stage 7 with id 18 and associated fundamentals [[102], [190], [242], [33]]
  c_18_3_0_False_resize <= resize(c_3, 24);
  c_18_3_0_False_shift <= shift_left(c_18_3_0_False_resize, 0);
  c_18_8_1_False_resize <= resize(c_8, 24);
  c_18_8_1_False_shift <= shift_left(c_18_8_1_False_resize, 1);
  c_18_17_0_False_resize <= c_17;
  c_18_17_0_False_shift <= shift_left(c_18_17_0_False_resize, 0);
  with config_select_7 select c_18_sel <= 
    "00" when "11",
    "01" when "01",
    "01" when "00",
    "10" when others;
  with c_18_sel select c_18 <=
    c_18_3_0_False_shift when "00",
    c_18_8_1_False_shift when "01",
    c_18_17_0_False_shift when others;
  -- node of type 'output' in stage 7 with id 19 and associated fundamentals [[102], [190], [242], [33]]
  c_19_resize <= c_18;
  c_19 <= shift_left(c_19_resize, 0);
  -- node of type 'mux' in stage 7 with id 20 and associated fundamentals [[158], [122], [218], [198]]
  c_20_5_1_False_resize <= resize(c_5, 24);
  c_20_5_1_False_shift <= shift_left(c_20_5_1_False_resize, 1);
  c_20_17_0_False_resize <= c_17;
  c_20_17_0_False_shift <= shift_left(c_20_17_0_False_resize, 0);
  c_20_17_1_False_resize <= c_17;
  c_20_17_1_False_shift <= shift_left(c_20_17_1_False_resize, 1);
  with config_select_7 select c_20_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_20_sel select c_20 <=
    c_20_5_1_False_shift when "00",
    c_20_17_0_False_shift when "01",
    c_20_17_1_False_shift when others;
  -- node of type 'output' in stage 7 with id 21 and associated fundamentals [[158], [122], [218], [198]]
  c_21_resize <= c_20;
  c_21 <= shift_left(c_21_resize, 0);
  -- node of type 'mux' in stage 7 with id 22 and associated fundamentals [[112], [153], [215], [253]]
  c_22_3_4_False_resize <= resize(c_3, 24);
  c_22_3_4_False_shift <= shift_left(c_22_3_4_False_resize, 4);
  c_22_11_0_False_resize <= c_11;
  c_22_11_0_False_shift <= shift_left(c_22_11_0_False_resize, 0);
  c_22_17_0_False_resize <= c_17;
  c_22_17_0_False_shift <= shift_left(c_22_17_0_False_resize, 0);
  with config_select_7 select c_22_sel <= 
    "00" when "00",
    "01" when "10",
    "01" when "11",
    "10" when others;
  with c_22_sel select c_22 <=
    c_22_3_4_False_shift when "00",
    c_22_11_0_False_shift when "01",
    c_22_17_0_False_shift when others;
  -- node of type 'output' in stage 7 with id 23 and associated fundamentals [[112], [153], [215], [253]]
  c_23_resize <= c_22;
  c_23 <= shift_left(c_23_resize, 0);
  -- node of type 'mux' in stage 7 with id 24 and associated fundamentals [[118], [241], [44], [74]]
  c_24_11_0_False_resize <= c_11;
  c_24_11_0_False_shift <= shift_left(c_24_11_0_False_resize, 0);
  c_24_8_1_False_resize <= resize(c_8, 24);
  c_24_8_1_False_shift <= shift_left(c_24_8_1_False_resize, 1);
  c_24_8_0_False_resize <= resize(c_8, 24);
  c_24_8_0_False_shift <= shift_left(c_24_8_0_False_resize, 0);
  with config_select_7 select c_24_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "11",
    "10" when others;
  with c_24_sel select c_24 <=
    c_24_11_0_False_shift when "00",
    c_24_8_1_False_shift when "01",
    c_24_8_0_False_shift when others;
  -- node of type 'output' in stage 7 with id 25 and associated fundamentals [[118], [241], [44], [74]]
  c_25_resize <= c_24;
  c_25 <= shift_left(c_25_resize, 0);
  -- node of type 'output' in stage 8 with id 26 and associated fundamentals [[234], [125], [127], [126]]
  c_26_resize <= c_14;
  c_26 <= -shift_left(c_26_resize, 0);
end architecture;
