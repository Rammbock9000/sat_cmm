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
  signal c_2: signed(19 downto 0);
  signal c_2_i0_resize: signed(19 downto 0);
  signal c_2_i1_resize: signed(19 downto 0);
  signal c_2_i0_shift: signed(19 downto 0);
  signal c_2_i1_shift: signed(19 downto 0);
  signal c_2_arith: signed(19 downto 0);
  signal c_2_oshift: signed(19 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(19 downto 0);
  signal c_3_0_1_False_resize: signed(19 downto 0);
  signal c_3_0_1_False_shift: signed(19 downto 0);
  signal c_3_2_0_False_resize: signed(19 downto 0);
  signal c_3_2_0_False_shift: signed(19 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(21 downto 0);
  signal c_4_i0_resize: signed(21 downto 0);
  signal c_4_i1_resize: signed(21 downto 0);
  signal c_4_i0_shift: signed(21 downto 0);
  signal c_4_i1_shift: signed(21 downto 0);
  signal c_4_arith: signed(21 downto 0);
  signal c_4_oshift: signed(21 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(23 downto 0);
  signal c_5_4_0_False_resize: signed(23 downto 0);
  signal c_5_4_0_False_shift: signed(23 downto 0);
  signal c_5_2_5_False_resize: signed(23 downto 0);
  signal c_5_2_5_False_shift: signed(23 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(23 downto 0);
  signal c_6_i0_resize: signed(23 downto 0);
  signal c_6_i1_resize: signed(23 downto 0);
  signal c_6_i0_shift: signed(23 downto 0);
  signal c_6_i1_shift: signed(23 downto 0);
  signal c_6_arith: signed(23 downto 0);
  signal c_6_oshift: signed(23 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(20 downto 0);
  signal c_7_2_0_False_resize: signed(20 downto 0);
  signal c_7_2_0_False_shift: signed(20 downto 0);
  signal c_7_6_1_False_resize: signed(20 downto 0);
  signal c_7_6_1_False_shift: signed(20 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(19 downto 0);
  signal c_8_4_0_False_resize: signed(19 downto 0);
  signal c_8_4_0_False_shift: signed(19 downto 0);
  signal c_8_2_0_False_resize: signed(19 downto 0);
  signal c_8_2_0_False_shift: signed(19 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(23 downto 0);
  signal c_10_4_0_False_resize: signed(23 downto 0);
  signal c_10_4_0_False_shift: signed(23 downto 0);
  signal c_10_0_8_False_resize: signed(23 downto 0);
  signal c_10_0_8_False_shift: signed(23 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_9_2_False_resize: signed(23 downto 0);
  signal c_11_9_2_False_shift: signed(23 downto 0);
  signal c_11_6_0_False_resize: signed(23 downto 0);
  signal c_11_6_0_False_shift: signed(23 downto 0);
  signal c_11_2_0_False_resize: signed(23 downto 0);
  signal c_11_2_0_False_shift: signed(23 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_i0_resize: signed(23 downto 0);
  signal c_12_i1_resize: signed(23 downto 0);
  signal c_12_i0_shift: signed(23 downto 0);
  signal c_12_i1_shift: signed(23 downto 0);
  signal c_12_arith: signed(23 downto 0);
  signal c_12_oshift: signed(23 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(21 downto 0);
  signal c_13_6_0_False_resize: signed(21 downto 0);
  signal c_13_6_0_False_shift: signed(21 downto 0);
  signal c_13_0_2_False_resize: signed(21 downto 0);
  signal c_13_0_2_False_shift: signed(21 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(20 downto 0);
  signal c_14_4_0_False_resize: signed(20 downto 0);
  signal c_14_4_0_False_shift: signed(20 downto 0);
  signal c_14_2_1_False_resize: signed(20 downto 0);
  signal c_14_2_1_False_shift: signed(20 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_i0_resize: signed(23 downto 0);
  signal c_15_i1_resize: signed(23 downto 0);
  signal c_15_i0_shift: signed(23 downto 0);
  signal c_15_i1_shift: signed(23 downto 0);
  signal c_15_arith: signed(23 downto 0);
  signal c_15_oshift: signed(23 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_resize: signed(23 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_4_1_False_resize: signed(23 downto 0);
  signal c_17_4_1_False_shift: signed(23 downto 0);
  signal c_17_12_0_False_resize: signed(23 downto 0);
  signal c_17_12_0_False_shift: signed(23 downto 0);
  signal c_17_2_4_False_resize: signed(23 downto 0);
  signal c_17_2_4_False_shift: signed(23 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_resize: signed(23 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_resize: signed(23 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_12_1_False_resize: signed(23 downto 0);
  signal c_20_12_1_False_shift: signed(23 downto 0);
  signal c_20_2_2_False_resize: signed(23 downto 0);
  signal c_20_2_2_False_shift: signed(23 downto 0);
  signal c_20_12_0_False_resize: signed(23 downto 0);
  signal c_20_12_0_False_shift: signed(23 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_resize: signed(23 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_resize: signed(23 downto 0);
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
  -- output node 0 with id 16
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_16);
    end if;
  end process;
  -- output node 1 with id 18
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_18);
    end if;
  end process;
  -- output node 2 with id 19
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_19);
    end if;
  end process;
  -- output node 3 with id 21
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_21);
    end if;
  end process;
  -- output node 4 with id 22
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_22);
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
  -- node of type 'add_sub' in stage 2 with id 2 and associated fundamentals [[10], [14], [6]]
  with config_select_2 select c_2_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 17,
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
      sub_i => c_2_sub_sel,
      x_i => c_1,
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(19 downto 0);
  -- node of type 'mux' in stage 3 with id 3 and associated fundamentals [[10], [2], [2]]
  c_3_0_1_False_resize <= resize(c_0, 20);
  c_3_0_1_False_shift <= shift_left(c_3_0_1_False_resize, 1);
  c_3_2_0_False_resize <= c_2;
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  with config_select_3 select c_3_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_0_1_False_shift when "0",
    c_3_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 4 and associated fundamentals [[41], [9], [7]]
  with config_select_4 select c_4_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 16,
      w_o => 22,
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
      sub_i => c_4_sub_sel,
      x_i => c_3,
      y_i => c_0,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(21 downto 0);
  -- node of type 'mux' in stage 5 with id 5 and associated fundamentals [[41], [9], [192]]
  c_5_4_0_False_resize <= resize(c_4, 24);
  c_5_4_0_False_shift <= shift_left(c_5_4_0_False_resize, 0);
  c_5_2_5_False_resize <= resize(c_2, 24);
  c_5_2_5_False_shift <= shift_left(c_5_2_5_False_resize, 5);
  with config_select_5 select c_5_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_4_0_False_shift when "0",
    c_5_2_5_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 6 and associated fundamentals [[39], [11], [190]]
  with config_select_6 select c_6_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 16,
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
      sub_i => c_6_sub_sel,
      x_i => c_5,
      y_i => c_0,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(23 downto 0);
  -- node of type 'mux' in stage 7 with id 7 and associated fundamentals [[10], [22], [6]]
  c_7_2_0_False_resize <= resize(c_2, 21);
  c_7_2_0_False_shift <= shift_left(c_7_2_0_False_resize, 0);
  c_7_6_1_False_resize <= c_6(20 downto 0);
  c_7_6_1_False_shift <= shift_left(c_7_6_1_False_resize, 1);
  with config_select_7 select c_7_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_2_0_False_shift when "0",
    c_7_6_1_False_shift when others;
  -- node of type 'mux' in stage 5 with id 8 and associated fundamentals [[10], [9], [7]]
  c_8_4_0_False_resize <= c_4(19 downto 0);
  c_8_4_0_False_shift <= shift_left(c_8_4_0_False_resize, 0);
  c_8_2_0_False_resize <= c_2;
  c_8_2_0_False_shift <= shift_left(c_8_2_0_False_resize, 0);
  with config_select_5 select c_8_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_4_0_False_shift when "0",
    c_8_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 9 and associated fundamentals [[90], [167], [55]]
  with config_select_8 select c_9_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 20,
      w_o => 24,
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
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(23 downto 0);
  -- node of type 'mux' in stage 5 with id 10 and associated fundamentals [[41], [256], [7]]
  c_10_4_0_False_resize <= resize(c_4, 24);
  c_10_4_0_False_shift <= shift_left(c_10_4_0_False_resize, 0);
  c_10_0_8_False_resize <= resize(c_0, 24);
  c_10_0_8_False_shift <= shift_left(c_10_0_8_False_resize, 8);
  with config_select_5 select c_10_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_10_sel select c_10 <=
    c_10_4_0_False_shift when "0",
    c_10_0_8_False_shift when others;
  -- node of type 'mux' in stage 9 with id 11 and associated fundamentals [[10], [11], [220]]
  c_11_9_2_False_resize <= c_9;
  c_11_9_2_False_shift <= shift_left(c_11_9_2_False_resize, 2);
  c_11_6_0_False_resize <= c_6;
  c_11_6_0_False_shift <= shift_left(c_11_6_0_False_resize, 0);
  c_11_2_0_False_resize <= resize(c_2, 24);
  c_11_2_0_False_shift <= shift_left(c_11_2_0_False_resize, 0);
  with config_select_9 select c_11_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_11_sel select c_11 <=
    c_11_9_2_False_shift when "00",
    c_11_6_0_False_shift when "01",
    c_11_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 12 and associated fundamentals [[31], [245], [227]]
  with config_select_10 select c_12_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
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
      sub_i => c_12_sub_sel,
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(23 downto 0);
  -- node of type 'mux' in stage 7 with id 13 and associated fundamentals [[39], [4], [4]]
  c_13_6_0_False_resize <= c_6(21 downto 0);
  c_13_6_0_False_shift <= shift_left(c_13_6_0_False_resize, 0);
  c_13_0_2_False_resize <= resize(c_0, 22);
  c_13_0_2_False_shift <= shift_left(c_13_0_2_False_resize, 2);
  with config_select_7 select c_13_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_6_0_False_shift when "0",
    c_13_0_2_False_shift when others;
  -- node of type 'mux' in stage 5 with id 14 and associated fundamentals [[20], [28], [7]]
  c_14_4_0_False_resize <= c_4(20 downto 0);
  c_14_4_0_False_shift <= shift_left(c_14_4_0_False_resize, 0);
  c_14_2_1_False_resize <= resize(c_2, 21);
  c_14_2_1_False_shift <= shift_left(c_14_2_1_False_resize, 1);
  with config_select_5 select c_14_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_4_0_False_shift when "0",
    c_14_2_1_False_shift when others;
  -- node of type 'add' in stage 8 with id 15 and associated fundamentals [[199], [228], [60]]
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 21,
      w_o => 24,
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
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(23 downto 0);
  -- node of type 'output' in stage 8 with id 16 and associated fundamentals [[199], [228], [60]]
  c_16_resize <= c_15;
  c_16 <= shift_left(c_16_resize, 0);
  -- node of type 'mux' in stage 11 with id 17 and associated fundamentals [[82], [245], [96]]
  c_17_4_1_False_resize <= resize(c_4, 24);
  c_17_4_1_False_shift <= shift_left(c_17_4_1_False_resize, 1);
  c_17_12_0_False_resize <= c_12;
  c_17_12_0_False_shift <= shift_left(c_17_12_0_False_resize, 0);
  c_17_2_4_False_resize <= resize(c_2, 24);
  c_17_2_4_False_shift <= shift_left(c_17_2_4_False_resize, 4);
  with config_select_11 select c_17_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_17_sel select c_17 <=
    c_17_4_1_False_shift when "00",
    c_17_12_0_False_shift when "01",
    c_17_2_4_False_shift when others;
  -- node of type 'output' in stage 11 with id 18 and associated fundamentals [[82], [245], [96]]
  c_18_resize <= c_17;
  c_18 <= shift_left(c_18_resize, 0);
  -- node of type 'output' in stage 6 with id 19 and associated fundamentals [[39], [11], [190]]
  c_19_resize <= c_6;
  c_19 <= shift_left(c_19_resize, 0);
  -- node of type 'mux' in stage 11 with id 20 and associated fundamentals [[62], [56], [227]]
  c_20_12_1_False_resize <= c_12;
  c_20_12_1_False_shift <= shift_left(c_20_12_1_False_resize, 1);
  c_20_2_2_False_resize <= resize(c_2, 24);
  c_20_2_2_False_shift <= shift_left(c_20_2_2_False_resize, 2);
  c_20_12_0_False_resize <= c_12;
  c_20_12_0_False_shift <= shift_left(c_20_12_0_False_resize, 0);
  with config_select_11 select c_20_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_20_sel select c_20 <=
    c_20_12_1_False_shift when "00",
    c_20_2_2_False_shift when "01",
    c_20_12_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 21 and associated fundamentals [[62], [56], [227]]
  c_21_resize <= c_20;
  c_21 <= shift_left(c_21_resize, 0);
  -- node of type 'output' in stage 8 with id 22 and associated fundamentals [[90], [167], [55]]
  c_22_resize <= c_9;
  c_22 <= shift_left(c_22_resize, 0);
end architecture;
