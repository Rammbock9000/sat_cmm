library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(22 downto 0);
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
  signal c_3: signed(18 downto 0);
  signal c_3_0_0_False_resize: signed(18 downto 0);
  signal c_3_0_0_False_shift: signed(18 downto 0);
  signal c_3_0_3_False_resize: signed(18 downto 0);
  signal c_3_0_3_False_shift: signed(18 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(21 downto 0);
  signal c_4_i0_resize: signed(21 downto 0);
  signal c_4_i1_resize: signed(21 downto 0);
  signal c_4_i0_shift: signed(21 downto 0);
  signal c_4_i1_shift: signed(21 downto 0);
  signal c_4_arith: signed(21 downto 0);
  signal c_4_oshift: signed(21 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(20 downto 0);
  signal c_5_2_0_False_resize: signed(20 downto 0);
  signal c_5_2_0_False_shift: signed(20 downto 0);
  signal c_5_0_5_False_resize: signed(20 downto 0);
  signal c_5_0_5_False_shift: signed(20 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(23 downto 0);
  signal c_6_i0_resize: signed(23 downto 0);
  signal c_6_i1_resize: signed(23 downto 0);
  signal c_6_i0_shift: signed(23 downto 0);
  signal c_6_i1_shift: signed(23 downto 0);
  signal c_6_arith: signed(23 downto 0);
  signal c_6_oshift: signed(23 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(25 downto 0);
  signal c_7_0_0_False_resize: signed(25 downto 0);
  signal c_7_0_0_False_shift: signed(25 downto 0);
  signal c_7_6_1_False_resize: signed(25 downto 0);
  signal c_7_6_1_False_shift: signed(25 downto 0);
  signal c_7_4_4_False_resize: signed(25 downto 0);
  signal c_7_4_4_False_shift: signed(25 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(25 downto 0);
  signal c_8_i0_resize: signed(25 downto 0);
  signal c_8_i1_resize: signed(25 downto 0);
  signal c_8_i0_shift: signed(25 downto 0);
  signal c_8_i1_shift: signed(25 downto 0);
  signal c_8_arith: signed(25 downto 0);
  signal c_8_oshift: signed(25 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(23 downto 0);
  signal c_9_4_0_False_resize: signed(23 downto 0);
  signal c_9_4_0_False_shift: signed(23 downto 0);
  signal c_9_6_0_False_resize: signed(23 downto 0);
  signal c_9_6_0_False_shift: signed(23 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_i0_resize: signed(25 downto 0);
  signal c_10_i1_resize: signed(25 downto 0);
  signal c_10_i0_shift: signed(25 downto 0);
  signal c_10_i1_shift: signed(25 downto 0);
  signal c_10_arith: signed(25 downto 0);
  signal c_10_oshift: signed(23 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(23 downto 0);
  signal c_11_resize: signed(23 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_resize: signed(23 downto 0);
  signal c_13: signed(22 downto 0);
  signal c_13_4_1_False_resize: signed(22 downto 0);
  signal c_13_4_1_False_shift: signed(22 downto 0);
  signal c_13_8_0_False_resize: signed(22 downto 0);
  signal c_13_8_0_False_shift: signed(22 downto 0);
  signal c_13_4_0_False_resize: signed(22 downto 0);
  signal c_13_4_0_False_shift: signed(22 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_14_resize: signed(22 downto 0);
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
  -- output node 0 with id 11
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_11);
    end if;
  end process;
  -- output node 1 with id 12
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_12);
    end if;
  end process;
  -- output node 2 with id 14
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_14);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [2], [1], [2]]
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "0",
    c_1_0_1_False_shift when others;
  -- node of type 'sub' in stage 2 with id 2 and associated fundamentals [[15], [14], [15], [14]]
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 17,
      w_o => 20,
      s_x_i => 4,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_0,
      y_i => c_1,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(19 downto 0);
  -- node of type 'mux' in stage 1 with id 3 and associated fundamentals [[8], [1], [1], [1]]
  c_3_0_0_False_resize <= resize(c_0, 19);
  c_3_0_0_False_shift <= shift_left(c_3_0_0_False_resize, 0);
  c_3_0_3_False_resize <= resize(c_0, 19);
  c_3_0_3_False_shift <= shift_left(c_3_0_3_False_resize, 3);
  with config_select_1 select c_3_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "11",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_0_0_False_shift when "0",
    c_3_0_3_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 4 and associated fundamentals [[52], [57], [61], [55]]
  with config_select_3 select c_4_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 19,
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
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(21 downto 0);
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[15], [32], [32], [14]]
  c_5_2_0_False_resize <= resize(c_2, 21);
  c_5_2_0_False_shift <= shift_left(c_5_2_0_False_resize, 0);
  c_5_0_5_False_resize <= resize(c_0, 21);
  c_5_0_5_False_shift <= shift_left(c_5_0_5_False_resize, 5);
  with config_select_3 select c_5_sel <= 
    "0" when "00",
    "0" when "11",
    "1" when "01",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_2_0_False_shift when "0",
    c_5_0_5_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 6 and associated fundamentals [[74], [178], [58], [138]]
  with config_select_4 select c_6_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 21,
      w_o => 24,
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
  c_6 <= c_6_oshift(23 downto 0);
  -- node of type 'mux' in stage 5 with id 7 and associated fundamentals [[148], [1], [976], [880]]
  c_7_0_0_False_resize <= resize(c_0, 26);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  c_7_6_1_False_resize <= resize(c_6, 26);
  c_7_6_1_False_shift <= shift_left(c_7_6_1_False_resize, 1);
  c_7_4_4_False_resize <= resize(c_4, 26);
  c_7_4_4_False_shift <= shift_left(c_7_4_4_False_resize, 4);
  with config_select_5 select c_7_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "10" when others;
  with c_7_sel select c_7 <=
    c_7_0_0_False_shift when "00",
    c_7_6_1_False_shift when "01",
    c_7_4_4_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 8 and associated fundamentals [[252], [115], [854], [770]]
  with config_select_6 select c_8_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
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
      sub_i => c_8_sub_sel,
      x_i => c_7,
      y_i => c_4,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(25 downto 0);
  -- node of type 'mux' in stage 5 with id 9 and associated fundamentals [[52], [57], [58], [138]]
  c_9_4_0_False_resize <= resize(c_4, 24);
  c_9_4_0_False_shift <= shift_left(c_9_4_0_False_resize, 0);
  c_9_6_0_False_resize <= c_6;
  c_9_6_0_False_shift <= shift_left(c_9_6_0_False_resize, 0);
  with config_select_5 select c_9_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when "10",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_4_0_False_shift when "0",
    c_9_6_0_False_shift when others;
  -- node of type 'add_sub' in stage 7 with id 10 and associated fundamentals [[76], [43], [199], [227]]
  with config_select_7 select c_10_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 2,
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
  -- node of type 'output' in stage 4 with id 11 and associated fundamentals [[74], [178], [58], [138]]
  c_11_resize <= c_6;
  c_11 <= shift_left(c_11_resize, 0);
  -- node of type 'output' in stage 7 with id 12 and associated fundamentals [[76], [43], [199], [227]]
  c_12_resize <= c_10;
  c_12 <= shift_left(c_12_resize, 0);
  -- node of type 'mux' in stage 7 with id 13 and associated fundamentals [[104], [115], [61], [110]]
  c_13_4_1_False_resize <= resize(c_4, 23);
  c_13_4_1_False_shift <= shift_left(c_13_4_1_False_resize, 1);
  c_13_8_0_False_resize <= c_8(22 downto 0);
  c_13_8_0_False_shift <= shift_left(c_13_8_0_False_resize, 0);
  c_13_4_0_False_resize <= resize(c_4, 23);
  c_13_4_0_False_shift <= shift_left(c_13_4_0_False_resize, 0);
  with config_select_7 select c_13_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "01",
    "10" when others;
  with c_13_sel select c_13 <=
    c_13_4_1_False_shift when "00",
    c_13_8_0_False_shift when "01",
    c_13_4_0_False_shift when others;
  -- node of type 'output' in stage 7 with id 14 and associated fundamentals [[104], [115], [61], [110]]
  c_14_resize <= c_13;
  c_14 <= shift_left(c_14_resize, 0);
end architecture;
