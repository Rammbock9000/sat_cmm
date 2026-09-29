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
  signal config_select_10: std_logic_vector(1 downto 0);
  signal config_select_11: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_0_0_False_resize: signed(17 downto 0);
  signal c_1_0_0_False_shift: signed(17 downto 0);
  signal c_1_0_2_False_resize: signed(17 downto 0);
  signal c_1_0_2_False_shift: signed(17 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(21 downto 0);
  signal c_2_i0_resize: signed(21 downto 0);
  signal c_2_i1_resize: signed(21 downto 0);
  signal c_2_i0_shift: signed(21 downto 0);
  signal c_2_i1_shift: signed(21 downto 0);
  signal c_2_arith: signed(21 downto 0);
  signal c_2_oshift: signed(21 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(18 downto 0);
  signal c_4_0_0_False_resize: signed(18 downto 0);
  signal c_4_0_0_False_shift: signed(18 downto 0);
  signal c_4_0_3_False_resize: signed(18 downto 0);
  signal c_4_0_3_False_shift: signed(18 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(23 downto 0);
  signal c_5_i0_resize: signed(23 downto 0);
  signal c_5_i1_resize: signed(23 downto 0);
  signal c_5_i0_shift: signed(23 downto 0);
  signal c_5_i1_shift: signed(23 downto 0);
  signal c_5_arith: signed(23 downto 0);
  signal c_5_oshift: signed(23 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(17 downto 0);
  signal c_6_0_0_False_resize: signed(17 downto 0);
  signal c_6_0_0_False_shift: signed(17 downto 0);
  signal c_6_0_2_False_resize: signed(17 downto 0);
  signal c_6_0_2_False_shift: signed(17 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_2_1_False_resize: signed(23 downto 0);
  signal c_7_2_1_False_shift: signed(23 downto 0);
  signal c_7_5_0_False_resize: signed(23 downto 0);
  signal c_7_5_0_False_shift: signed(23 downto 0);
  signal c_7_0_2_False_resize: signed(23 downto 0);
  signal c_7_0_2_False_shift: signed(23 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_8_i0_resize: signed(23 downto 0);
  signal c_8_i1_resize: signed(23 downto 0);
  signal c_8_i0_shift: signed(23 downto 0);
  signal c_8_i1_shift: signed(23 downto 0);
  signal c_8_arith: signed(23 downto 0);
  signal c_8_oshift: signed(23 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(23 downto 0);
  signal c_9_2_2_False_resize: signed(23 downto 0);
  signal c_9_2_2_False_shift: signed(23 downto 0);
  signal c_9_8_0_False_resize: signed(23 downto 0);
  signal c_9_8_0_False_shift: signed(23 downto 0);
  signal c_9_0_8_False_resize: signed(23 downto 0);
  signal c_9_0_8_False_shift: signed(23 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
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
  signal c_11_5_5_False_resize: signed(23 downto 0);
  signal c_11_5_5_False_shift: signed(23 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_resize: signed(23 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_5_2_False_resize: signed(23 downto 0);
  signal c_13_5_2_False_shift: signed(23 downto 0);
  signal c_13_5_0_False_resize: signed(23 downto 0);
  signal c_13_5_0_False_shift: signed(23 downto 0);
  signal c_13_10_1_False_resize: signed(23 downto 0);
  signal c_13_10_1_False_shift: signed(23 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_resize: signed(23 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_resize: signed(23 downto 0);
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
  -- output node 2 with id 15
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_15);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [1], [4], [1]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "11",
    "0" when "00",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "0",
    c_1_0_2_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 2 and associated fundamentals [[15], [15], [63], [17]]
  with config_select_2 select c_2_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
      w_o => 22,
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
      sub_i => c_2_sub_sel,
      x_i => c_1,
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(21 downto 0);
  -- node of type 'add_sub' in stage 3 with id 3 and associated fundamentals [[19], [11], [59], [13]]
  with config_select_3 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 16,
      w_o => 22,
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
      sub_i => c_3_sub_sel,
      x_i => c_2,
      y_i => c_0,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(21 downto 0);
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[1], [8], [1], [1]]
  c_4_0_0_False_resize <= resize(c_0, 19);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_3_False_resize <= resize(c_0, 19);
  c_4_0_3_False_shift <= shift_left(c_4_0_3_False_resize, 3);
  with config_select_1 select c_4_sel <= 
    "0" when "10",
    "0" when "11",
    "0" when "00",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_0_0_False_shift when "0",
    c_4_0_3_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 5 and associated fundamentals [[3], [139], [43], [29]]
  with config_select_4 select c_5_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 19,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 4,
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
  c_5 <= c_5_oshift(23 downto 0);
  -- node of type 'mux' in stage 1 with id 6 and associated fundamentals [[4], [1], [4], [4]]
  c_6_0_0_False_resize <= resize(c_0, 18);
  c_6_0_0_False_shift <= shift_left(c_6_0_0_False_resize, 0);
  c_6_0_2_False_resize <= resize(c_0, 18);
  c_6_0_2_False_shift <= shift_left(c_6_0_2_False_resize, 2);
  with config_select_1 select c_6_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when "11",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_0_0_False_shift when "0",
    c_6_0_2_False_shift when others;
  -- node of type 'mux' in stage 5 with id 7 and associated fundamentals [[3], [139], [4], [34]]
  c_7_2_1_False_resize <= resize(c_2, 24);
  c_7_2_1_False_shift <= shift_left(c_7_2_1_False_resize, 1);
  c_7_5_0_False_resize <= c_5;
  c_7_5_0_False_shift <= shift_left(c_7_5_0_False_resize, 0);
  c_7_0_2_False_resize <= resize(c_0, 24);
  c_7_0_2_False_shift <= shift_left(c_7_0_2_False_resize, 2);
  with config_select_5 select c_7_sel <= 
    "00" when "11",
    "01" when "00",
    "01" when "01",
    "10" when others;
  with c_7_sel select c_7 <=
    c_7_2_1_False_shift when "00",
    c_7_5_0_False_shift when "01",
    c_7_0_2_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 8 and associated fundamentals [[131], [171], [124], [94]]
  with config_select_6 select c_8_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 24,
      w_o => 24,
      s_x_i => 5,
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
  c_8 <= c_8_oshift(23 downto 0);
  -- node of type 'mux' in stage 7 with id 9 and associated fundamentals [[60], [60], [256], [94]]
  c_9_2_2_False_resize <= resize(c_2, 24);
  c_9_2_2_False_shift <= shift_left(c_9_2_2_False_resize, 2);
  c_9_8_0_False_resize <= c_8;
  c_9_8_0_False_shift <= shift_left(c_9_8_0_False_resize, 0);
  c_9_0_8_False_resize <= resize(c_0, 24);
  c_9_0_8_False_shift <= shift_left(c_9_0_8_False_resize, 8);
  with config_select_7 select c_9_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "11",
    "10" when others;
  with c_9_sel select c_9 <=
    c_9_2_2_False_shift when "00",
    c_9_8_0_False_shift when "01",
    c_9_0_8_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 10 and associated fundamentals [[79], [71], [197], [107]]
  with config_select_8 select c_10_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
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
      sub_i => c_10_sub_sel,
      x_i => c_9,
      y_i => c_3,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(23 downto 0);
  -- node of type 'mux' in stage 9 with id 11 and associated fundamentals [[96], [71], [197], [107]]
  c_11_10_0_False_resize <= c_10;
  c_11_10_0_False_shift <= shift_left(c_11_10_0_False_resize, 0);
  c_11_5_5_False_resize <= c_5;
  c_11_5_5_False_shift <= shift_left(c_11_5_5_False_resize, 5);
  with config_select_9 select c_11_sel <= 
    "0" when "11",
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_10_0_False_shift when "0",
    c_11_5_5_False_shift when others;
  -- node of type 'output' in stage 9 with id 12 and associated fundamentals [[96], [71], [197], [107]]
  c_12_resize <= c_11;
  c_12 <= shift_left(c_12_resize, 0);
  -- node of type 'mux' in stage 9 with id 13 and associated fundamentals [[158], [139], [43], [116]]
  c_13_5_2_False_resize <= c_5;
  c_13_5_2_False_shift <= shift_left(c_13_5_2_False_resize, 2);
  c_13_5_0_False_resize <= c_5;
  c_13_5_0_False_shift <= shift_left(c_13_5_0_False_resize, 0);
  c_13_10_1_False_resize <= c_10;
  c_13_10_1_False_shift <= shift_left(c_13_10_1_False_resize, 1);
  with config_select_9 select c_13_sel <= 
    "00" when "11",
    "01" when "01",
    "01" when "10",
    "10" when others;
  with c_13_sel select c_13 <=
    c_13_5_2_False_shift when "00",
    c_13_5_0_False_shift when "01",
    c_13_10_1_False_shift when others;
  -- node of type 'output' in stage 9 with id 14 and associated fundamentals [[158], [139], [43], [116]]
  c_14_resize <= c_13;
  c_14 <= shift_left(c_14_resize, 0);
  -- node of type 'output' in stage 6 with id 15 and associated fundamentals [[131], [171], [124], [94]]
  c_15_resize <= c_8;
  c_15 <= shift_left(c_15_resize, 0);
end architecture;
