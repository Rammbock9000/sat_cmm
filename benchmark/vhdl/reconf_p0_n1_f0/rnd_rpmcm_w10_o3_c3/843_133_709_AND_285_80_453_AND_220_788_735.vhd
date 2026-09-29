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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_0_0_False_resize: signed(19 downto 0);
  signal c_1_0_0_False_shift: signed(19 downto 0);
  signal c_1_0_4_False_resize: signed(19 downto 0);
  signal c_1_0_4_False_shift: signed(19 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(21 downto 0);
  signal c_2_i0_resize: signed(21 downto 0);
  signal c_2_i1_resize: signed(21 downto 0);
  signal c_2_i0_shift: signed(21 downto 0);
  signal c_2_i1_shift: signed(21 downto 0);
  signal c_2_arith: signed(21 downto 0);
  signal c_2_oshift: signed(21 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(19 downto 0);
  signal c_3_0_4_False_resize: signed(19 downto 0);
  signal c_3_0_4_False_shift: signed(19 downto 0);
  signal c_3_2_0_False_resize: signed(19 downto 0);
  signal c_3_2_0_False_shift: signed(19 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(25 downto 0);
  signal c_4_2_7_False_resize: signed(25 downto 0);
  signal c_4_2_7_False_shift: signed(25 downto 0);
  signal c_4_2_0_False_resize: signed(25 downto 0);
  signal c_4_2_0_False_shift: signed(25 downto 0);
  signal c_4_2_5_False_resize: signed(25 downto 0);
  signal c_4_2_5_False_shift: signed(25 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(26 downto 0);
  signal c_5_i0_resize: signed(26 downto 0);
  signal c_5_i1_resize: signed(26 downto 0);
  signal c_5_i0_shift: signed(26 downto 0);
  signal c_5_i1_shift: signed(26 downto 0);
  signal c_5_arith: signed(26 downto 0);
  signal c_5_oshift: signed(26 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(21 downto 0);
  signal c_6_2_0_False_resize: signed(21 downto 0);
  signal c_6_2_0_False_shift: signed(21 downto 0);
  signal c_6_0_4_False_resize: signed(21 downto 0);
  signal c_6_0_4_False_shift: signed(21 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(24 downto 0);
  signal c_7_5_0_False_resize: signed(24 downto 0);
  signal c_7_5_0_False_shift: signed(24 downto 0);
  signal c_7_2_0_False_resize: signed(24 downto 0);
  signal c_7_2_0_False_shift: signed(24 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(24 downto 0);
  signal c_8_i0_resize: signed(24 downto 0);
  signal c_8_i1_resize: signed(24 downto 0);
  signal c_8_i0_shift: signed(24 downto 0);
  signal c_8_i1_shift: signed(24 downto 0);
  signal c_8_arith: signed(24 downto 0);
  signal c_8_oshift: signed(24 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(26 downto 0);
  signal c_9_5_0_False_resize: signed(26 downto 0);
  signal c_9_5_0_False_shift: signed(26 downto 0);
  signal c_9_0_2_False_resize: signed(26 downto 0);
  signal c_9_0_2_False_shift: signed(26 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(25 downto 0);
  signal c_10_0_6_False_resize: signed(25 downto 0);
  signal c_10_0_6_False_shift: signed(25 downto 0);
  signal c_10_8_2_False_resize: signed(25 downto 0);
  signal c_10_8_2_False_shift: signed(25 downto 0);
  signal c_10_8_0_False_resize: signed(25 downto 0);
  signal c_10_8_0_False_shift: signed(25 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(26 downto 0);
  signal c_11_i0_resize: signed(26 downto 0);
  signal c_11_i1_resize: signed(26 downto 0);
  signal c_11_i0_shift: signed(26 downto 0);
  signal c_11_i1_shift: signed(26 downto 0);
  signal c_11_arith: signed(26 downto 0);
  signal c_11_oshift: signed(26 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(26 downto 0);
  signal c_12_11_0_False_resize: signed(26 downto 0);
  signal c_12_11_0_False_shift: signed(26 downto 0);
  signal c_12_8_0_False_resize: signed(26 downto 0);
  signal c_12_8_0_False_shift: signed(26 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(25 downto 0);
  signal c_13_i0_resize: signed(26 downto 0);
  signal c_13_i1_resize: signed(26 downto 0);
  signal c_13_i0_shift: signed(26 downto 0);
  signal c_13_i1_shift: signed(26 downto 0);
  signal c_13_arith: signed(26 downto 0);
  signal c_13_oshift: signed(25 downto 0);
  signal c_14: signed(25 downto 0);
  signal c_14_5_1_False_resize: signed(25 downto 0);
  signal c_14_5_1_False_shift: signed(25 downto 0);
  signal c_14_8_0_False_resize: signed(25 downto 0);
  signal c_14_8_0_False_shift: signed(25 downto 0);
  signal c_14_11_0_False_resize: signed(25 downto 0);
  signal c_14_11_0_False_shift: signed(25 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_resize: signed(25 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_8_0_False_resize: signed(25 downto 0);
  signal c_16_8_0_False_shift: signed(25 downto 0);
  signal c_16_8_1_False_resize: signed(25 downto 0);
  signal c_16_8_1_False_shift: signed(25 downto 0);
  signal c_16_2_4_False_resize: signed(25 downto 0);
  signal c_16_2_4_False_shift: signed(25 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_resize: signed(25 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_resize: signed(25 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 15
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_15);
    end if;
  end process;
  -- output node 1 with id 17
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_17);
    end if;
  end process;
  -- output node 2 with id 18
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_18);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [1], [16]]
  c_1_0_0_False_resize <= resize(c_0, 20);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_4_False_resize <= resize(c_0, 20);
  c_1_0_4_False_shift <= shift_left(c_1_0_4_False_resize, 4);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "0",
    c_1_0_4_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 2 and associated fundamentals [[5], [5], [63]]
  with config_select_2 select c_2_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_2: entity work.adder_node
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
      sub_i => c_2_sub_sel,
      x_i => c_1,
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(21 downto 0);
  -- node of type 'mux' in stage 3 with id 3 and associated fundamentals [[5], [5], [16]]
  c_3_0_4_False_resize <= resize(c_0, 20);
  c_3_0_4_False_shift <= shift_left(c_3_0_4_False_resize, 4);
  c_3_2_0_False_resize <= c_2(19 downto 0);
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  with config_select_3 select c_3_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_0_4_False_shift when "0",
    c_3_2_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[640], [160], [63]]
  c_4_2_7_False_resize <= resize(c_2, 26);
  c_4_2_7_False_shift <= shift_left(c_4_2_7_False_resize, 7);
  c_4_2_0_False_resize <= resize(c_2, 26);
  c_4_2_0_False_shift <= shift_left(c_4_2_0_False_resize, 0);
  c_4_2_5_False_resize <= resize(c_2, 26);
  c_4_2_5_False_shift <= shift_left(c_4_2_5_False_resize, 5);
  with config_select_3 select c_4_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_4_sel select c_4 <=
    c_4_2_7_False_shift when "00",
    c_4_2_0_False_shift when "01",
    c_4_2_5_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 5 and associated fundamentals [[1285], [325], [-110]]
  with config_select_4 select c_5_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 26,
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
      sub_i => c_5_sub_sel,
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(26 downto 0);
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[16], [5], [63]]
  c_6_2_0_False_resize <= c_2;
  c_6_2_0_False_shift <= shift_left(c_6_2_0_False_resize, 0);
  c_6_0_4_False_resize <= resize(c_0, 22);
  c_6_0_4_False_shift <= shift_left(c_6_0_4_False_resize, 4);
  with config_select_3 select c_6_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_2_0_False_shift when "0",
    c_6_0_4_False_shift when others;
  -- node of type 'mux' in stage 5 with id 7 and associated fundamentals [[5], [325], [-110]]
  c_7_5_0_False_resize <= c_5(24 downto 0);
  c_7_5_0_False_shift <= shift_left(c_7_5_0_False_resize, 0);
  c_7_2_0_False_resize <= resize(c_2, 25);
  c_7_2_0_False_shift <= shift_left(c_7_2_0_False_resize, 0);
  with config_select_5 select c_7_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_5_0_False_shift when "0",
    c_7_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 8 and associated fundamentals [[133], [-285], [394]]
  with config_select_6 select c_8_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 25,
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
      sub_i => c_8_sub_sel,
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(24 downto 0);
  -- node of type 'mux' in stage 5 with id 9 and associated fundamentals [[1285], [325], [4]]
  c_9_5_0_False_resize <= c_5;
  c_9_5_0_False_shift <= shift_left(c_9_5_0_False_resize, 0);
  c_9_0_2_False_resize <= resize(c_0, 27);
  c_9_0_2_False_shift <= shift_left(c_9_0_2_False_resize, 2);
  with config_select_5 select c_9_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_5_0_False_shift when "0",
    c_9_0_2_False_shift when others;
  -- node of type 'mux' in stage 7 with id 10 and associated fundamentals [[532], [64], [394]]
  c_10_0_6_False_resize <= resize(c_0, 26);
  c_10_0_6_False_shift <= shift_left(c_10_0_6_False_resize, 6);
  c_10_8_2_False_resize <= resize(c_8, 26);
  c_10_8_2_False_shift <= shift_left(c_10_8_2_False_resize, 2);
  c_10_8_0_False_resize <= resize(c_8, 26);
  c_10_8_0_False_shift <= shift_left(c_10_8_0_False_resize, 0);
  with config_select_7 select c_10_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_10_sel select c_10 <=
    c_10_0_6_False_shift when "00",
    c_10_8_2_False_shift when "01",
    c_10_8_0_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 11 and associated fundamentals [[-843], [581], [1580]]
  with config_select_8 select c_11_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 26,
      w_o => 27,
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
      sub_i => c_11_sub_sel,
      x_i => c_9,
      y_i => c_10,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(26 downto 0);
  -- node of type 'mux' in stage 9 with id 12 and associated fundamentals [[133], [581], [1580]]
  c_12_11_0_False_resize <= c_11;
  c_12_11_0_False_shift <= shift_left(c_12_11_0_False_resize, 0);
  c_12_8_0_False_resize <= resize(c_8, 27);
  c_12_8_0_False_shift <= shift_left(c_12_8_0_False_resize, 0);
  with config_select_9 select c_12_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_12_sel select c_12 <=
    c_12_11_0_False_shift when "0",
    c_12_8_0_False_shift when others;
  -- node of type 'add' in stage 10 with id 13 and associated fundamentals [[709], [453], [735]]
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 27,
      w_o => 26,
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
      x_i => c_5,
      y_i => c_12,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(25 downto 0);
  -- node of type 'mux' in stage 9 with id 14 and associated fundamentals [[-843], [-285], [-220]]
  c_14_5_1_False_resize <= c_5(25 downto 0);
  c_14_5_1_False_shift <= shift_left(c_14_5_1_False_resize, 1);
  c_14_8_0_False_resize <= resize(c_8, 26);
  c_14_8_0_False_shift <= shift_left(c_14_8_0_False_resize, 0);
  c_14_11_0_False_resize <= c_11(25 downto 0);
  c_14_11_0_False_shift <= shift_left(c_14_11_0_False_resize, 0);
  with config_select_9 select c_14_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_14_sel select c_14 <=
    c_14_5_1_False_shift when "00",
    c_14_8_0_False_shift when "01",
    c_14_11_0_False_shift when others;
  -- node of type 'output' in stage 9 with id 15 and associated fundamentals [[843], [285], [220]]
  c_15_resize <= c_14;
  c_15 <= -shift_left(c_15_resize, 0);
  -- node of type 'mux' in stage 7 with id 16 and associated fundamentals [[133], [80], [788]]
  c_16_8_0_False_resize <= resize(c_8, 26);
  c_16_8_0_False_shift <= shift_left(c_16_8_0_False_resize, 0);
  c_16_8_1_False_resize <= resize(c_8, 26);
  c_16_8_1_False_shift <= shift_left(c_16_8_1_False_resize, 1);
  c_16_2_4_False_resize <= resize(c_2, 26);
  c_16_2_4_False_shift <= shift_left(c_16_2_4_False_resize, 4);
  with config_select_7 select c_16_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_16_sel select c_16 <=
    c_16_8_0_False_shift when "00",
    c_16_8_1_False_shift when "01",
    c_16_2_4_False_shift when others;
  -- node of type 'output' in stage 7 with id 17 and associated fundamentals [[133], [80], [788]]
  c_17_resize <= c_16;
  c_17 <= shift_left(c_17_resize, 0);
  -- node of type 'output' in stage 10 with id 18 and associated fundamentals [[709], [453], [735]]
  c_18_resize <= c_13;
  c_18 <= shift_left(c_18_resize, 0);
end architecture;
