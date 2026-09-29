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
  signal config_select_7: std_logic_vector(1 downto 0);
  signal config_select_8: std_logic_vector(1 downto 0);
  signal config_select_9: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_0_0_False_resize: signed(17 downto 0);
  signal c_1_0_0_False_shift: signed(17 downto 0);
  signal c_1_0_2_False_resize: signed(17 downto 0);
  signal c_1_0_2_False_shift: signed(17 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(20 downto 0);
  signal c_2_i0_resize: signed(20 downto 0);
  signal c_2_i1_resize: signed(20 downto 0);
  signal c_2_i0_shift: signed(20 downto 0);
  signal c_2_i1_shift: signed(20 downto 0);
  signal c_2_arith: signed(20 downto 0);
  signal c_2_oshift: signed(20 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(20 downto 0);
  signal c_3_2_0_False_resize: signed(20 downto 0);
  signal c_3_2_0_False_shift: signed(20 downto 0);
  signal c_3_0_5_False_resize: signed(20 downto 0);
  signal c_3_0_5_False_shift: signed(20 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(22 downto 0);
  signal c_4_i0_resize: signed(22 downto 0);
  signal c_4_i1_resize: signed(22 downto 0);
  signal c_4_i0_shift: signed(22 downto 0);
  signal c_4_i1_shift: signed(22 downto 0);
  signal c_4_arith: signed(22 downto 0);
  signal c_4_oshift: signed(22 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(21 downto 0);
  signal c_5_0_0_False_resize: signed(21 downto 0);
  signal c_5_0_0_False_shift: signed(21 downto 0);
  signal c_5_2_1_False_resize: signed(21 downto 0);
  signal c_5_2_1_False_shift: signed(21 downto 0);
  signal c_5_4_0_False_resize: signed(21 downto 0);
  signal c_5_4_0_False_shift: signed(21 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(23 downto 0);
  signal c_6_i0_resize: signed(23 downto 0);
  signal c_6_i1_resize: signed(23 downto 0);
  signal c_6_i0_shift: signed(23 downto 0);
  signal c_6_i1_shift: signed(23 downto 0);
  signal c_6_arith: signed(23 downto 0);
  signal c_6_oshift: signed(23 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(21 downto 0);
  signal c_7_2_0_False_resize: signed(21 downto 0);
  signal c_7_2_0_False_shift: signed(21 downto 0);
  signal c_7_0_6_False_resize: signed(21 downto 0);
  signal c_7_0_6_False_shift: signed(21 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_8_i0_resize: signed(23 downto 0);
  signal c_8_i1_resize: signed(23 downto 0);
  signal c_8_i0_shift: signed(23 downto 0);
  signal c_8_i1_shift: signed(23 downto 0);
  signal c_8_arith: signed(23 downto 0);
  signal c_8_oshift: signed(23 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(20 downto 0);
  signal c_9_2_0_False_resize: signed(20 downto 0);
  signal c_9_2_0_False_shift: signed(20 downto 0);
  signal c_9_2_1_False_resize: signed(20 downto 0);
  signal c_9_2_1_False_shift: signed(20 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_i0_resize: signed(23 downto 0);
  signal c_10_i1_resize: signed(23 downto 0);
  signal c_10_i0_shift: signed(23 downto 0);
  signal c_10_i1_shift: signed(23 downto 0);
  signal c_10_arith: signed(23 downto 0);
  signal c_10_oshift: signed(23 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(23 downto 0);
  signal c_11_10_0_False_resize: signed(23 downto 0);
  signal c_11_10_0_False_shift: signed(23 downto 0);
  signal c_11_0_0_False_resize: signed(23 downto 0);
  signal c_11_0_0_False_shift: signed(23 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_resize: signed(23 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_8_0_False_resize: signed(23 downto 0);
  signal c_13_8_0_False_shift: signed(23 downto 0);
  signal c_13_6_0_False_resize: signed(23 downto 0);
  signal c_13_6_0_False_shift: signed(23 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_resize: signed(23 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_8_0_False_resize: signed(23 downto 0);
  signal c_15_8_0_False_shift: signed(23 downto 0);
  signal c_15_6_1_False_resize: signed(23 downto 0);
  signal c_15_6_1_False_shift: signed(23 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_resize: signed(23 downto 0);
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
  -- output node 0 with id 12
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_12);
    end if;
  end process;
  -- output node 1 with id 14
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_14);
    end if;
  end process;
  -- output node 2 with id 16
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_16);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [1], [1], [4]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "0",
    c_1_0_2_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 2 and associated fundamentals [[9], [9], [9], [-31]]
  with config_select_2 select c_2_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 18,
      w_o => 21,
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
      sub_i => c_2_sub_sel,
      x_i => c_0,
      y_i => c_1,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(20 downto 0);
  -- node of type 'mux' in stage 3 with id 3 and associated fundamentals [[32], [9], [9], [-31]]
  c_3_2_0_False_resize <= c_2;
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  c_3_0_5_False_resize <= resize(c_0, 21);
  c_3_0_5_False_shift <= shift_left(c_3_0_5_False_resize, 5);
  with config_select_3 select c_3_sel <= 
    "0" when "10",
    "0" when "11",
    "0" when "01",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_2_0_False_shift when "0",
    c_3_0_5_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 4 and associated fundamentals [[96], [55], [73], [95]]
  with config_select_4 select c_4_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 21,
      w_o => 23,
      s_x_i => 6,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_4_sub_sel,
      x_i => c_0,
      y_i => c_3,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(22 downto 0);
  -- node of type 'mux' in stage 5 with id 5 and associated fundamentals [[18], [55], [1], [1]]
  c_5_0_0_False_resize <= resize(c_0, 22);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_2_1_False_resize <= resize(c_2, 22);
  c_5_2_1_False_shift <= shift_left(c_5_2_1_False_resize, 1);
  c_5_4_0_False_resize <= c_4(21 downto 0);
  c_5_4_0_False_shift <= shift_left(c_5_4_0_False_resize, 0);
  with config_select_5 select c_5_sel <= 
    "00" when "10",
    "00" when "11",
    "01" when "00",
    "10" when others;
  with c_5_sel select c_5 <=
    c_5_0_0_False_shift when "00",
    c_5_2_1_False_shift when "01",
    c_5_4_0_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 6 and associated fundamentals [[63], [211], [13], [35]]
  with config_select_6 select c_6_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 21,
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
      sub_i => c_6_sub_sel,
      x_i => c_5,
      y_i => c_2,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[9], [64], [9], [64]]
  c_7_2_0_False_resize <= resize(c_2, 22);
  c_7_2_0_False_shift <= shift_left(c_7_2_0_False_resize, 0);
  c_7_0_6_False_resize <= resize(c_0, 22);
  c_7_0_6_False_shift <= shift_left(c_7_0_6_False_resize, 6);
  with config_select_3 select c_7_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_2_0_False_shift when "0",
    c_7_0_6_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 8 and associated fundamentals [[183], [174], [155], [254]]
  with config_select_5 select c_8_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
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
      sub_i => c_8_sub_sel,
      x_i => c_4,
      y_i => c_7,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[9], [18], [9], [-31]]
  c_9_2_0_False_resize <= c_2;
  c_9_2_0_False_shift <= shift_left(c_9_2_0_False_resize, 0);
  c_9_2_1_False_resize <= c_2;
  c_9_2_1_False_shift <= shift_left(c_9_2_1_False_resize, 1);
  with config_select_3 select c_9_sel <= 
    "0" when "10",
    "0" when "11",
    "0" when "00",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_2_0_False_shift when "0",
    c_9_2_1_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 10 and associated fundamentals [[165], [138], [173], [192]]
  with config_select_6 select c_10_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 21,
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
      sub_i => c_10_sub_sel,
      x_i => c_8,
      y_i => c_9,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(23 downto 0);
  -- node of type 'mux' in stage 7 with id 11 and associated fundamentals [[1], [138], [173], [192]]
  c_11_10_0_False_resize <= c_10;
  c_11_10_0_False_shift <= shift_left(c_11_10_0_False_resize, 0);
  c_11_0_0_False_resize <= resize(c_0, 24);
  c_11_0_0_False_shift <= shift_left(c_11_0_0_False_resize, 0);
  with config_select_7 select c_11_sel <= 
    "0" when "11",
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_10_0_False_shift when "0",
    c_11_0_0_False_shift when others;
  -- node of type 'output' in stage 7 with id 12 and associated fundamentals [[1], [138], [173], [192]]
  c_12_resize <= c_11;
  c_12 <= shift_left(c_12_resize, 0);
  -- node of type 'mux' in stage 7 with id 13 and associated fundamentals [[63], [211], [155], [35]]
  c_13_8_0_False_resize <= c_8;
  c_13_8_0_False_shift <= shift_left(c_13_8_0_False_resize, 0);
  c_13_6_0_False_resize <= c_6;
  c_13_6_0_False_shift <= shift_left(c_13_6_0_False_resize, 0);
  with config_select_7 select c_13_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when "01",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_8_0_False_shift when "0",
    c_13_6_0_False_shift when others;
  -- node of type 'output' in stage 7 with id 14 and associated fundamentals [[63], [211], [155], [35]]
  c_14_resize <= c_13;
  c_14 <= shift_left(c_14_resize, 0);
  -- node of type 'mux' in stage 7 with id 15 and associated fundamentals [[183], [174], [26], [254]]
  c_15_8_0_False_resize <= c_8;
  c_15_8_0_False_shift <= shift_left(c_15_8_0_False_resize, 0);
  c_15_6_1_False_resize <= c_6;
  c_15_6_1_False_shift <= shift_left(c_15_6_1_False_resize, 1);
  with config_select_7 select c_15_sel <= 
    "0" when "00",
    "0" when "11",
    "0" when "01",
    "1" when others;
  with c_15_sel select c_15 <=
    c_15_8_0_False_shift when "0",
    c_15_6_1_False_shift when others;
  -- node of type 'output' in stage 7 with id 16 and associated fundamentals [[183], [174], [26], [254]]
  c_16_resize <= c_15;
  c_16 <= shift_left(c_16_resize, 0);
end architecture;
