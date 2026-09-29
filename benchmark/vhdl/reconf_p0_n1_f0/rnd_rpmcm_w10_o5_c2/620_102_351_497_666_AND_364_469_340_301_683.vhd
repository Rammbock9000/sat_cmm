library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(24 downto 0);
    y_2: out std_logic_vector(24 downto 0);
    y_3: out std_logic_vector(24 downto 0);
    y_4: out std_logic_vector(25 downto 0);
    clk: in std_logic
);
end entity;
architecture const_mul of const_mul is
  signal config_select_0: std_logic_vector(0 downto 0);
  signal config_select_1: std_logic_vector(0 downto 0);
  signal config_select_2: std_logic_vector(0 downto 0);
  signal config_select_3: std_logic_vector(0 downto 0);
  signal config_select_4: std_logic_vector(0 downto 0);
  signal config_select_5: std_logic_vector(0 downto 0);
  signal config_select_6: std_logic_vector(0 downto 0);
  signal config_select_7: std_logic_vector(0 downto 0);
  signal config_select_8: std_logic_vector(0 downto 0);
  signal config_select_9: std_logic_vector(0 downto 0);
  signal config_select_10: std_logic_vector(0 downto 0);
  signal config_select_11: std_logic_vector(0 downto 0);
  signal config_select_12: std_logic_vector(0 downto 0);
  signal config_select_13: std_logic_vector(0 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_i0_resize: signed(18 downto 0);
  signal c_1_i1_resize: signed(18 downto 0);
  signal c_1_i0_shift: signed(18 downto 0);
  signal c_1_i1_shift: signed(18 downto 0);
  signal c_1_arith: signed(18 downto 0);
  signal c_1_oshift: signed(18 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(22 downto 0);
  signal c_2_1_5_False_resize: signed(22 downto 0);
  signal c_2_1_5_False_shift: signed(22 downto 0);
  signal c_2_1_0_False_resize: signed(22 downto 0);
  signal c_2_1_0_False_shift: signed(22 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_1_3_False_resize: signed(21 downto 0);
  signal c_3_1_3_False_shift: signed(21 downto 0);
  signal c_3_1_0_False_resize: signed(21 downto 0);
  signal c_3_1_0_False_shift: signed(21 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(23 downto 0);
  signal c_4_i0_resize: signed(23 downto 0);
  signal c_4_i1_resize: signed(23 downto 0);
  signal c_4_i0_shift: signed(23 downto 0);
  signal c_4_i1_shift: signed(23 downto 0);
  signal c_4_arith: signed(23 downto 0);
  signal c_4_oshift: signed(23 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_5_0_0_False_resize: signed(21 downto 0);
  signal c_5_0_0_False_shift: signed(21 downto 0);
  signal c_5_1_3_False_resize: signed(21 downto 0);
  signal c_5_1_3_False_shift: signed(21 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_4_0_False_resize: signed(22 downto 0);
  signal c_6_4_0_False_shift: signed(22 downto 0);
  signal c_6_0_0_False_resize: signed(22 downto 0);
  signal c_6_0_0_False_shift: signed(22 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_i0_resize: signed(22 downto 0);
  signal c_7_i1_resize: signed(22 downto 0);
  signal c_7_i0_shift: signed(22 downto 0);
  signal c_7_i1_shift: signed(22 downto 0);
  signal c_7_arith: signed(22 downto 0);
  signal c_7_oshift: signed(22 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(23 downto 0);
  signal c_8_i0_resize: signed(23 downto 0);
  signal c_8_i1_resize: signed(23 downto 0);
  signal c_8_i0_shift: signed(23 downto 0);
  signal c_8_i1_shift: signed(23 downto 0);
  signal c_8_arith: signed(23 downto 0);
  signal c_8_oshift: signed(23 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(25 downto 0);
  signal c_9_i0_resize: signed(25 downto 0);
  signal c_9_i1_resize: signed(25 downto 0);
  signal c_9_i0_shift: signed(25 downto 0);
  signal c_9_i1_shift: signed(25 downto 0);
  signal c_9_arith: signed(25 downto 0);
  signal c_9_oshift: signed(25 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(23 downto 0);
  signal c_10_7_0_False_resize: signed(23 downto 0);
  signal c_10_7_0_False_shift: signed(23 downto 0);
  signal c_10_7_2_False_resize: signed(23 downto 0);
  signal c_10_7_2_False_shift: signed(23 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(24 downto 0);
  signal c_11_9_0_False_resize: signed(24 downto 0);
  signal c_11_9_0_False_shift: signed(24 downto 0);
  signal c_11_1_7_False_resize: signed(24 downto 0);
  signal c_11_1_7_False_shift: signed(24 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(24 downto 0);
  signal c_12_i0_resize: signed(24 downto 0);
  signal c_12_i1_resize: signed(24 downto 0);
  signal c_12_i0_shift: signed(24 downto 0);
  signal c_12_i1_shift: signed(24 downto 0);
  signal c_12_arith: signed(24 downto 0);
  signal c_12_oshift: signed(24 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(24 downto 0);
  signal c_13_12_0_False_resize: signed(24 downto 0);
  signal c_13_12_0_False_shift: signed(24 downto 0);
  signal c_13_7_0_False_resize: signed(24 downto 0);
  signal c_13_7_0_False_shift: signed(24 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(24 downto 0);
  signal c_14_i0_resize: signed(24 downto 0);
  signal c_14_i1_resize: signed(24 downto 0);
  signal c_14_i0_shift: signed(24 downto 0);
  signal c_14_i1_shift: signed(24 downto 0);
  signal c_14_arith: signed(24 downto 0);
  signal c_14_oshift: signed(24 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(24 downto 0);
  signal c_15_4_1_False_resize: signed(24 downto 0);
  signal c_15_4_1_False_shift: signed(24 downto 0);
  signal c_15_8_0_False_resize: signed(24 downto 0);
  signal c_15_8_0_False_shift: signed(24 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_resize: signed(25 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_17_12_0_False_resize: signed(24 downto 0);
  signal c_17_12_0_False_shift: signed(24 downto 0);
  signal c_17_8_0_False_resize: signed(24 downto 0);
  signal c_17_8_0_False_shift: signed(24 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_18_resize: signed(24 downto 0);
  signal c_19: signed(24 downto 0);
  signal c_19_7_2_False_resize: signed(24 downto 0);
  signal c_19_7_2_False_shift: signed(24 downto 0);
  signal c_19_14_0_False_resize: signed(24 downto 0);
  signal c_19_14_0_False_shift: signed(24 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(24 downto 0);
  signal c_20_resize: signed(24 downto 0);
  signal c_21: signed(24 downto 0);
  signal c_21_12_0_False_resize: signed(24 downto 0);
  signal c_21_12_0_False_shift: signed(24 downto 0);
  signal c_21_14_0_False_resize: signed(24 downto 0);
  signal c_21_14_0_False_shift: signed(24 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(24 downto 0);
  signal c_22_resize: signed(24 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_9_0_False_resize: signed(25 downto 0);
  signal c_23_9_0_False_shift: signed(25 downto 0);
  signal c_23_9_1_False_resize: signed(25 downto 0);
  signal c_23_9_1_False_shift: signed(25 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_resize: signed(25 downto 0);
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
  -- output node 2 with id 20
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_20);
    end if;
  end process;
  -- output node 3 with id 22
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_22);
    end if;
  end process;
  -- output node 4 with id 24
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_24);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[5], [-3]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
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
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  c_1 <= c_1_oshift(18 downto 0);
  -- node of type 'mux' in stage 2 with id 2 and associated fundamentals [[5], [-96]]
  c_2_1_5_False_resize <= resize(c_1, 23);
  c_2_1_5_False_shift <= shift_left(c_2_1_5_False_resize, 5);
  c_2_1_0_False_resize <= resize(c_1, 23);
  c_2_1_0_False_shift <= shift_left(c_2_1_0_False_resize, 0);
  with config_select_2 select c_2_sel <= 
    "0" when "1",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_1_5_False_shift when "0",
    c_2_1_0_False_shift when others;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[40], [-3]]
  c_3_1_3_False_resize <= resize(c_1, 22);
  c_3_1_3_False_shift <= shift_left(c_3_1_3_False_resize, 3);
  c_3_1_0_False_resize <= resize(c_1, 22);
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  with config_select_2 select c_3_sel <= 
    "0" when "0",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_1_3_False_shift when "0",
    c_3_1_0_False_shift when others;
  -- node of type 'sub' in stage 3 with id 4 and associated fundamentals [[-155], [-84]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
      w_o => 24,
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
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(23 downto 0);
  -- node of type 'mux' in stage 2 with id 5 and associated fundamentals [[40], [1]]
  c_5_0_0_False_resize <= resize(c_0, 22);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_1_3_False_resize <= resize(c_1, 22);
  c_5_1_3_False_shift <= shift_left(c_5_1_3_False_resize, 3);
  with config_select_2 select c_5_sel <= 
    "0" when "1",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_0_0_False_shift when "0",
    c_5_1_3_False_shift when others;
  -- node of type 'mux' in stage 4 with id 6 and associated fundamentals [[1], [-84]]
  c_6_4_0_False_resize <= c_4(22 downto 0);
  c_6_4_0_False_shift <= shift_left(c_6_4_0_False_resize, 0);
  c_6_0_0_False_resize <= resize(c_0, 23);
  c_6_0_0_False_shift <= shift_left(c_6_0_0_False_resize, 0);
  with config_select_4 select c_6_sel <= 
    "0" when "1",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_4_0_False_shift when "0",
    c_6_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 7 and associated fundamentals [[41], [85]]
  with config_select_5 select c_7_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
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
      sub_i => c_7_sub_sel,
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(22 downto 0);
  -- node of type 'add_sub' in stage 6 with id 8 and associated fundamentals [[102], [-182]]
  with config_select_6 select c_8_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 23,
      w_o => 24,
      s_x_i => 2,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_8_sub_sel,
      x_i => c_1,
      y_i => c_7,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(23 downto 0);
  -- node of type 'add_sub' in stage 6 with id 9 and associated fundamentals [[333], [683]]
  with config_select_6 select c_9_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 19,
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
      sub_i => c_9_sub_sel,
      x_i => c_7,
      y_i => c_1,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(25 downto 0);
  -- node of type 'mux' in stage 6 with id 10 and associated fundamentals [[164], [85]]
  c_10_7_0_False_resize <= resize(c_7, 24);
  c_10_7_0_False_shift <= shift_left(c_10_7_0_False_resize, 0);
  c_10_7_2_False_resize <= resize(c_7, 24);
  c_10_7_2_False_shift <= shift_left(c_10_7_2_False_resize, 2);
  with config_select_6 select c_10_sel <= 
    "0" when "1",
    "1" when others;
  with c_10_sel select c_10 <=
    c_10_7_0_False_shift when "0",
    c_10_7_2_False_shift when others;
  -- node of type 'mux' in stage 7 with id 11 and associated fundamentals [[333], [-384]]
  c_11_9_0_False_resize <= c_9(24 downto 0);
  c_11_9_0_False_shift <= shift_left(c_11_9_0_False_resize, 0);
  c_11_1_7_False_resize <= resize(c_1, 25);
  c_11_1_7_False_shift <= shift_left(c_11_1_7_False_resize, 7);
  with config_select_7 select c_11_sel <= 
    "0" when "0",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_9_0_False_shift when "0",
    c_11_1_7_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 12 and associated fundamentals [[497], [469]]
  with config_select_8 select c_12_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 25,
      w_o => 25,
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
  c_12 <= c_12_oshift(24 downto 0);
  -- node of type 'mux' in stage 9 with id 13 and associated fundamentals [[41], [469]]
  c_13_12_0_False_resize <= c_12;
  c_13_12_0_False_shift <= shift_left(c_13_12_0_False_resize, 0);
  c_13_7_0_False_resize <= resize(c_7, 25);
  c_13_7_0_False_shift <= shift_left(c_13_7_0_False_resize, 0);
  with config_select_9 select c_13_sel <= 
    "0" when "1",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_12_0_False_shift when "0",
    c_13_7_0_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 14 and associated fundamentals [[351], [301]]
  with config_select_10 select c_14_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_14_sub_sel,
      x_i => c_13,
      y_i => c_4,
      z_o => c_14_oshift
    );
  c_14 <= c_14_oshift(24 downto 0);
  -- node of type 'mux' in stage 7 with id 15 and associated fundamentals [[-310], [-182]]
  c_15_4_1_False_resize <= resize(c_4, 25);
  c_15_4_1_False_shift <= shift_left(c_15_4_1_False_resize, 1);
  c_15_8_0_False_resize <= resize(c_8, 25);
  c_15_8_0_False_shift <= shift_left(c_15_8_0_False_resize, 0);
  with config_select_7 select c_15_sel <= 
    "0" when "0",
    "1" when others;
  with c_15_sel select c_15 <=
    c_15_4_1_False_shift when "0",
    c_15_8_0_False_shift when others;
  -- node of type 'output' in stage 7 with id 16 and associated fundamentals [[620], [364]]
  c_16_resize <= resize(c_15, 26);
  c_16 <= -shift_left(c_16_resize, 1);
  -- node of type 'mux' in stage 9 with id 17 and associated fundamentals [[102], [469]]
  c_17_12_0_False_resize <= c_12;
  c_17_12_0_False_shift <= shift_left(c_17_12_0_False_resize, 0);
  c_17_8_0_False_resize <= resize(c_8, 25);
  c_17_8_0_False_shift <= shift_left(c_17_8_0_False_resize, 0);
  with config_select_9 select c_17_sel <= 
    "0" when "1",
    "1" when others;
  with c_17_sel select c_17 <=
    c_17_12_0_False_shift when "0",
    c_17_8_0_False_shift when others;
  -- node of type 'output' in stage 9 with id 18 and associated fundamentals [[102], [469]]
  c_18_resize <= c_17;
  c_18 <= shift_left(c_18_resize, 0);
  -- node of type 'mux' in stage 11 with id 19 and associated fundamentals [[351], [340]]
  c_19_7_2_False_resize <= resize(c_7, 25);
  c_19_7_2_False_shift <= shift_left(c_19_7_2_False_resize, 2);
  c_19_14_0_False_resize <= c_14;
  c_19_14_0_False_shift <= shift_left(c_19_14_0_False_resize, 0);
  with config_select_11 select c_19_sel <= 
    "0" when "1",
    "1" when others;
  with c_19_sel select c_19 <=
    c_19_7_2_False_shift when "0",
    c_19_14_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 20 and associated fundamentals [[351], [340]]
  c_20_resize <= c_19;
  c_20 <= shift_left(c_20_resize, 0);
  -- node of type 'mux' in stage 11 with id 21 and associated fundamentals [[497], [301]]
  c_21_12_0_False_resize <= c_12;
  c_21_12_0_False_shift <= shift_left(c_21_12_0_False_resize, 0);
  c_21_14_0_False_resize <= c_14;
  c_21_14_0_False_shift <= shift_left(c_21_14_0_False_resize, 0);
  with config_select_11 select c_21_sel <= 
    "0" when "0",
    "1" when others;
  with c_21_sel select c_21 <=
    c_21_12_0_False_shift when "0",
    c_21_14_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 22 and associated fundamentals [[497], [301]]
  c_22_resize <= c_21;
  c_22 <= shift_left(c_22_resize, 0);
  -- node of type 'mux' in stage 7 with id 23 and associated fundamentals [[666], [683]]
  c_23_9_0_False_resize <= c_9;
  c_23_9_0_False_shift <= shift_left(c_23_9_0_False_resize, 0);
  c_23_9_1_False_resize <= c_9;
  c_23_9_1_False_shift <= shift_left(c_23_9_1_False_resize, 1);
  with config_select_7 select c_23_sel <= 
    "0" when "1",
    "1" when others;
  with c_23_sel select c_23 <=
    c_23_9_0_False_shift when "0",
    c_23_9_1_False_shift when others;
  -- node of type 'output' in stage 7 with id 24 and associated fundamentals [[666], [683]]
  c_24_resize <= c_23;
  c_24 <= shift_left(c_24_resize, 0);
end architecture;
