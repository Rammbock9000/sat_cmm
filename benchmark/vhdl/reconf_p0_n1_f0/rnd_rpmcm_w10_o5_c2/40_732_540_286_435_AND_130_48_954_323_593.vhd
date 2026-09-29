library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(25 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_i0_resize: signed(19 downto 0);
  signal c_1_i1_resize: signed(19 downto 0);
  signal c_1_i0_shift: signed(19 downto 0);
  signal c_1_i1_shift: signed(19 downto 0);
  signal c_1_arith: signed(19 downto 0);
  signal c_1_oshift: signed(19 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(22 downto 0);
  signal c_2_i0_resize: signed(22 downto 0);
  signal c_2_i1_resize: signed(22 downto 0);
  signal c_2_i0_shift: signed(22 downto 0);
  signal c_2_i1_shift: signed(22 downto 0);
  signal c_2_arith: signed(22 downto 0);
  signal c_2_oshift: signed(22 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(22 downto 0);
  signal c_3_1_0_False_resize: signed(22 downto 0);
  signal c_3_1_0_False_shift: signed(22 downto 0);
  signal c_3_0_7_False_resize: signed(22 downto 0);
  signal c_3_0_7_False_shift: signed(22 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(22 downto 0);
  signal c_4_i0_resize: signed(22 downto 0);
  signal c_4_i1_resize: signed(22 downto 0);
  signal c_4_i0_shift: signed(22 downto 0);
  signal c_4_i1_shift: signed(22 downto 0);
  signal c_4_arith: signed(22 downto 0);
  signal c_4_oshift: signed(22 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(20 downto 0);
  signal c_5_0_4_False_resize: signed(20 downto 0);
  signal c_5_0_4_False_shift: signed(20 downto 0);
  signal c_5_4_0_False_resize: signed(20 downto 0);
  signal c_5_4_0_False_shift: signed(20 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(23 downto 0);
  signal c_6_i0_resize: signed(23 downto 0);
  signal c_6_i1_resize: signed(23 downto 0);
  signal c_6_i0_shift: signed(23 downto 0);
  signal c_6_i1_shift: signed(23 downto 0);
  signal c_6_arith: signed(23 downto 0);
  signal c_6_oshift: signed(23 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(22 downto 0);
  signal c_7_1_3_False_resize: signed(22 downto 0);
  signal c_7_1_3_False_shift: signed(22 downto 0);
  signal c_7_2_0_False_resize: signed(22 downto 0);
  signal c_7_2_0_False_shift: signed(22 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(24 downto 0);
  signal c_8_i0_resize: signed(24 downto 0);
  signal c_8_i1_resize: signed(24 downto 0);
  signal c_8_i0_shift: signed(24 downto 0);
  signal c_8_i1_shift: signed(24 downto 0);
  signal c_8_arith: signed(24 downto 0);
  signal c_8_oshift: signed(24 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(22 downto 0);
  signal c_9_4_0_False_resize: signed(22 downto 0);
  signal c_9_4_0_False_shift: signed(22 downto 0);
  signal c_9_2_0_False_resize: signed(22 downto 0);
  signal c_9_2_0_False_shift: signed(22 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(25 downto 0);
  signal c_10_i0_resize: signed(25 downto 0);
  signal c_10_i1_resize: signed(25 downto 0);
  signal c_10_i0_shift: signed(25 downto 0);
  signal c_10_i1_shift: signed(25 downto 0);
  signal c_10_arith: signed(25 downto 0);
  signal c_10_oshift: signed(25 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(25 downto 0);
  signal c_11_10_0_False_resize: signed(25 downto 0);
  signal c_11_10_0_False_shift: signed(25 downto 0);
  signal c_11_4_3_False_resize: signed(25 downto 0);
  signal c_11_4_3_False_shift: signed(25 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(25 downto 0);
  signal c_12_i0_resize: signed(25 downto 0);
  signal c_12_i1_resize: signed(25 downto 0);
  signal c_12_i0_shift: signed(25 downto 0);
  signal c_12_i1_shift: signed(25 downto 0);
  signal c_12_arith: signed(25 downto 0);
  signal c_12_oshift: signed(25 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(22 downto 0);
  signal c_13_1_1_False_resize: signed(22 downto 0);
  signal c_13_1_1_False_shift: signed(22 downto 0);
  signal c_13_2_0_False_resize: signed(22 downto 0);
  signal c_13_2_0_False_shift: signed(22 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_resize: signed(23 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_1_1_False_resize: signed(23 downto 0);
  signal c_15_1_1_False_shift: signed(23 downto 0);
  signal c_15_6_0_False_resize: signed(23 downto 0);
  signal c_15_6_0_False_shift: signed(23 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_resize: signed(25 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_resize: signed(25 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_18_resize: signed(24 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_resize: signed(25 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 14
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_14);
    end if;
  end process;
  -- output node 1 with id 16
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_16);
    end if;
  end process;
  -- output node 2 with id 17
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_17);
    end if;
  end process;
  -- output node 3 with id 18
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_18);
    end if;
  end process;
  -- output node 4 with id 19
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_19);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[10], [6]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "0",
    '1' when others;
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
  -- node of type 'add_sub' in stage 1 with id 2 and associated fundamentals [[-63], [65]]
  with config_select_1 select c_2_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 6,
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
  c_2 <= c_2_oshift(22 downto 0);
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[10], [128]]
  c_3_1_0_False_resize <= resize(c_1, 23);
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  c_3_0_7_False_resize <= resize(c_0, 23);
  c_3_0_7_False_shift <= shift_left(c_3_0_7_False_resize, 7);
  with config_select_2 select c_3_sel <= 
    "0" when "0",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_1_0_False_shift when "0",
    c_3_0_7_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 4 and associated fundamentals [[30], [116]]
  with config_select_3 select c_4_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 20,
      w_o => 23,
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
      x_i => c_3,
      y_i => c_1,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(22 downto 0);
  -- node of type 'mux' in stage 4 with id 5 and associated fundamentals [[30], [16]]
  c_5_0_4_False_resize <= resize(c_0, 21);
  c_5_0_4_False_shift <= shift_left(c_5_0_4_False_resize, 4);
  c_5_4_0_False_resize <= c_4(20 downto 0);
  c_5_4_0_False_shift <= shift_left(c_5_4_0_False_resize, 0);
  with config_select_4 select c_5_sel <= 
    "0" when "1",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_0_4_False_shift when "0",
    c_5_4_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 6 and associated fundamentals [[183], [129]]
  with config_select_5 select c_6_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 23,
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
  -- node of type 'mux' in stage 2 with id 7 and associated fundamentals [[80], [65]]
  c_7_1_3_False_resize <= resize(c_1, 23);
  c_7_1_3_False_shift <= shift_left(c_7_1_3_False_resize, 3);
  c_7_2_0_False_resize <= c_2;
  c_7_2_0_False_shift <= shift_left(c_7_2_0_False_resize, 0);
  with config_select_2 select c_7_sel <= 
    "0" when "0",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_1_3_False_shift when "0",
    c_7_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 8 and associated fundamentals [[286], [323]]
  with config_select_6 select c_8_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
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
      sub_i => c_8_sub_sel,
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(24 downto 0);
  -- node of type 'mux' in stage 4 with id 9 and associated fundamentals [[-63], [116]]
  c_9_4_0_False_resize <= c_4;
  c_9_4_0_False_shift <= shift_left(c_9_4_0_False_resize, 0);
  c_9_2_0_False_resize <= c_2;
  c_9_2_0_False_shift <= shift_left(c_9_2_0_False_resize, 0);
  with config_select_4 select c_9_sel <= 
    "0" when "1",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_4_0_False_shift when "0",
    c_9_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 10 and associated fundamentals [[435], [593]]
  with config_select_6 select c_10_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_10_sub_sel,
      x_i => c_6,
      y_i => c_9,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(25 downto 0);
  -- node of type 'mux' in stage 7 with id 11 and associated fundamentals [[240], [593]]
  c_11_10_0_False_resize <= c_10;
  c_11_10_0_False_shift <= shift_left(c_11_10_0_False_resize, 0);
  c_11_4_3_False_resize <= resize(c_4, 26);
  c_11_4_3_False_shift <= shift_left(c_11_4_3_False_resize, 3);
  with config_select_7 select c_11_sel <= 
    "0" when "1",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_10_0_False_shift when "0",
    c_11_4_3_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 12 and associated fundamentals [[540], [954]]
  with config_select_8 select c_12_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 23,
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
      sub_i => c_12_sub_sel,
      x_i => c_11,
      y_i => c_4,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(25 downto 0);
  -- node of type 'mux' in stage 2 with id 13 and associated fundamentals [[20], [65]]
  c_13_1_1_False_resize <= resize(c_1, 23);
  c_13_1_1_False_shift <= shift_left(c_13_1_1_False_resize, 1);
  c_13_2_0_False_resize <= c_2;
  c_13_2_0_False_shift <= shift_left(c_13_2_0_False_resize, 0);
  with config_select_2 select c_13_sel <= 
    "0" when "0",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_1_1_False_shift when "0",
    c_13_2_0_False_shift when others;
  -- node of type 'output' in stage 2 with id 14 and associated fundamentals [[40], [130]]
  c_14_resize <= resize(c_13, 24);
  c_14 <= shift_left(c_14_resize, 1);
  -- node of type 'mux' in stage 6 with id 15 and associated fundamentals [[183], [12]]
  c_15_1_1_False_resize <= resize(c_1, 24);
  c_15_1_1_False_shift <= shift_left(c_15_1_1_False_resize, 1);
  c_15_6_0_False_resize <= c_6;
  c_15_6_0_False_shift <= shift_left(c_15_6_0_False_resize, 0);
  with config_select_6 select c_15_sel <= 
    "0" when "1",
    "1" when others;
  with c_15_sel select c_15 <=
    c_15_1_1_False_shift when "0",
    c_15_6_0_False_shift when others;
  -- node of type 'output' in stage 6 with id 16 and associated fundamentals [[732], [48]]
  c_16_resize <= resize(c_15, 26);
  c_16 <= shift_left(c_16_resize, 2);
  -- node of type 'output' in stage 8 with id 17 and associated fundamentals [[540], [954]]
  c_17_resize <= c_12;
  c_17 <= shift_left(c_17_resize, 0);
  -- node of type 'output' in stage 6 with id 18 and associated fundamentals [[286], [323]]
  c_18_resize <= c_8;
  c_18 <= shift_left(c_18_resize, 0);
  -- node of type 'output' in stage 6 with id 19 and associated fundamentals [[435], [593]]
  c_19_resize <= c_10;
  c_19 <= shift_left(c_19_resize, 0);
end architecture;
