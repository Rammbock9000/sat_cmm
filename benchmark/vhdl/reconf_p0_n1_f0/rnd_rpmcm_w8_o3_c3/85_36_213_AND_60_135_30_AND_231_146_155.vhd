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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_i0_resize: signed(19 downto 0);
  signal c_1_i1_resize: signed(19 downto 0);
  signal c_1_i0_shift: signed(19 downto 0);
  signal c_1_i1_shift: signed(19 downto 0);
  signal c_1_arith: signed(19 downto 0);
  signal c_1_oshift: signed(19 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(20 downto 0);
  signal c_2_1_0_False_resize: signed(20 downto 0);
  signal c_2_1_0_False_shift: signed(20 downto 0);
  signal c_2_1_1_False_resize: signed(20 downto 0);
  signal c_2_1_1_False_shift: signed(20 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(23 downto 0);
  signal c_3_i0_resize: signed(23 downto 0);
  signal c_3_i1_resize: signed(23 downto 0);
  signal c_3_i0_shift: signed(23 downto 0);
  signal c_3_i1_shift: signed(23 downto 0);
  signal c_3_arith: signed(23 downto 0);
  signal c_3_oshift: signed(23 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(21 downto 0);
  signal c_4_i0_resize: signed(21 downto 0);
  signal c_4_i1_resize: signed(21 downto 0);
  signal c_4_i0_shift: signed(21 downto 0);
  signal c_4_i1_shift: signed(21 downto 0);
  signal c_4_arith: signed(21 downto 0);
  signal c_4_oshift: signed(21 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(22 downto 0);
  signal c_5_4_1_False_resize: signed(22 downto 0);
  signal c_5_4_1_False_shift: signed(22 downto 0);
  signal c_5_1_0_False_resize: signed(22 downto 0);
  signal c_5_1_0_False_shift: signed(22 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(23 downto 0);
  signal c_6_i0_resize: signed(23 downto 0);
  signal c_6_i1_resize: signed(23 downto 0);
  signal c_6_i0_shift: signed(23 downto 0);
  signal c_6_i1_shift: signed(23 downto 0);
  signal c_6_arith: signed(23 downto 0);
  signal c_6_oshift: signed(23 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(21 downto 0);
  signal c_7_4_0_False_resize: signed(21 downto 0);
  signal c_7_4_0_False_shift: signed(21 downto 0);
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
  signal c_9: signed(23 downto 0);
  signal c_9_4_1_False_resize: signed(23 downto 0);
  signal c_9_4_1_False_shift: signed(23 downto 0);
  signal c_9_8_0_False_resize: signed(23 downto 0);
  signal c_9_8_0_False_shift: signed(23 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_resize: signed(23 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_1_2_False_resize: signed(23 downto 0);
  signal c_11_1_2_False_shift: signed(23 downto 0);
  signal c_11_3_0_False_resize: signed(23 downto 0);
  signal c_11_3_0_False_shift: signed(23 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_resize: signed(23 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_4_0_False_resize: signed(23 downto 0);
  signal c_13_4_0_False_shift: signed(23 downto 0);
  signal c_13_6_0_False_resize: signed(23 downto 0);
  signal c_13_6_0_False_shift: signed(23 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_resize: signed(23 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 10
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_10);
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
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[9], [-7], [9]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
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
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  c_1 <= c_1_oshift(19 downto 0);
  -- node of type 'mux' in stage 2 with id 2 and associated fundamentals [[9], [-7], [18]]
  c_2_1_0_False_resize <= resize(c_1, 21);
  c_2_1_0_False_shift <= shift_left(c_2_1_0_False_resize, 0);
  c_2_1_1_False_resize <= resize(c_1, 21);
  c_2_1_1_False_shift <= shift_left(c_2_1_1_False_resize, 1);
  with config_select_2 select c_2_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_1_0_False_shift when "0",
    c_2_1_1_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 3 and associated fundamentals [[137], [135], [146]]
  with config_select_3 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 21,
      w_o => 24,
      s_x_i => 7,
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
      x_i => c_0,
      y_i => c_2,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(23 downto 0);
  -- node of type 'add_sub' in stage 2 with id 4 and associated fundamentals [[38], [30], [38]]
  with config_select_2 select c_4_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 20,
      w_o => 22,
      s_x_i => 1,
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
      x_i => c_0,
      y_i => c_1,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(21 downto 0);
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[76], [-7], [9]]
  c_5_4_1_False_resize <= resize(c_4, 23);
  c_5_4_1_False_shift <= shift_left(c_5_4_1_False_resize, 1);
  c_5_1_0_False_resize <= resize(c_1, 23);
  c_5_1_0_False_shift <= shift_left(c_5_1_0_False_resize, 0);
  with config_select_3 select c_5_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_4_1_False_shift when "0",
    c_5_1_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 6 and associated fundamentals [[213], [-142], [155]]
  with config_select_4 select c_6_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_6_sub_sel,
      x_i => c_5,
      y_i => c_3,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[64], [30], [38]]
  c_7_4_0_False_resize <= c_4;
  c_7_4_0_False_shift <= shift_left(c_7_4_0_False_resize, 0);
  c_7_0_6_False_resize <= resize(c_0, 22);
  c_7_0_6_False_shift <= shift_left(c_7_0_6_False_resize, 6);
  with config_select_3 select c_7_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_4_0_False_shift when "0",
    c_7_0_6_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 8 and associated fundamentals [[85], [-202], [231]]
  with config_select_5 select c_8_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
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
      sub_i => c_8_sub_sel,
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(23 downto 0);
  -- node of type 'mux' in stage 6 with id 9 and associated fundamentals [[85], [60], [231]]
  c_9_4_1_False_resize <= resize(c_4, 24);
  c_9_4_1_False_shift <= shift_left(c_9_4_1_False_resize, 1);
  c_9_8_0_False_resize <= c_8;
  c_9_8_0_False_shift <= shift_left(c_9_8_0_False_resize, 0);
  with config_select_6 select c_9_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_4_1_False_shift when "0",
    c_9_8_0_False_shift when others;
  -- node of type 'output' in stage 6 with id 10 and associated fundamentals [[85], [60], [231]]
  c_10_resize <= c_9;
  c_10 <= shift_left(c_10_resize, 0);
  -- node of type 'mux' in stage 4 with id 11 and associated fundamentals [[36], [135], [146]]
  c_11_1_2_False_resize <= resize(c_1, 24);
  c_11_1_2_False_shift <= shift_left(c_11_1_2_False_resize, 2);
  c_11_3_0_False_resize <= c_3;
  c_11_3_0_False_shift <= shift_left(c_11_3_0_False_resize, 0);
  with config_select_4 select c_11_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_1_2_False_shift when "0",
    c_11_3_0_False_shift when others;
  -- node of type 'output' in stage 4 with id 12 and associated fundamentals [[36], [135], [146]]
  c_12_resize <= c_11;
  c_12 <= shift_left(c_12_resize, 0);
  -- node of type 'mux' in stage 5 with id 13 and associated fundamentals [[213], [30], [155]]
  c_13_4_0_False_resize <= resize(c_4, 24);
  c_13_4_0_False_shift <= shift_left(c_13_4_0_False_resize, 0);
  c_13_6_0_False_resize <= c_6;
  c_13_6_0_False_shift <= shift_left(c_13_6_0_False_resize, 0);
  with config_select_5 select c_13_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_4_0_False_shift when "0",
    c_13_6_0_False_shift when others;
  -- node of type 'output' in stage 5 with id 14 and associated fundamentals [[213], [30], [155]]
  c_14_resize <= c_13;
  c_14 <= shift_left(c_14_resize, 0);
end architecture;
