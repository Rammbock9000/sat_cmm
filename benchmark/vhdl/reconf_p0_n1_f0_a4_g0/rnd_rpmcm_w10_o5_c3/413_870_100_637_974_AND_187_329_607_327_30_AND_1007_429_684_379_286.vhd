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
    y_3: out std_logic_vector(25 downto 0);
    y_4: out std_logic_vector(25 downto 0);
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
  signal c_2: signed(20 downto 0);
  signal c_2_i0_resize: signed(20 downto 0);
  signal c_2_i1_resize: signed(20 downto 0);
  signal c_2_i0_shift: signed(20 downto 0);
  signal c_2_i1_shift: signed(20 downto 0);
  signal c_2_arith: signed(20 downto 0);
  signal c_2_oshift: signed(20 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(22 downto 0);
  signal c_3_0_7_False_resize: signed(22 downto 0);
  signal c_3_0_7_False_shift: signed(22 downto 0);
  signal c_3_1_0_False_resize: signed(22 downto 0);
  signal c_3_1_0_False_shift: signed(22 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(24 downto 0);
  signal c_4_i0_resize: signed(24 downto 0);
  signal c_4_i1_resize: signed(24 downto 0);
  signal c_4_i0_shift: signed(24 downto 0);
  signal c_4_i1_shift: signed(24 downto 0);
  signal c_4_arith: signed(24 downto 0);
  signal c_4_oshift: signed(24 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_5_i0_resize: signed(21 downto 0);
  signal c_5_i1_resize: signed(21 downto 0);
  signal c_5_i0_shift: signed(21 downto 0);
  signal c_5_i1_shift: signed(21 downto 0);
  signal c_5_arith: signed(21 downto 0);
  signal c_5_oshift: signed(21 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(16 downto 0);
  signal c_6_0_1_False_resize: signed(16 downto 0);
  signal c_6_0_1_False_shift: signed(16 downto 0);
  signal c_6_0_0_False_resize: signed(16 downto 0);
  signal c_6_0_0_False_shift: signed(16 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(19 downto 0);
  signal c_7_i0_resize: signed(19 downto 0);
  signal c_7_i1_resize: signed(19 downto 0);
  signal c_7_i0_shift: signed(19 downto 0);
  signal c_7_i1_shift: signed(19 downto 0);
  signal c_7_arith: signed(19 downto 0);
  signal c_7_oshift: signed(19 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(20 downto 0);
  signal c_8_i0_resize: signed(20 downto 0);
  signal c_8_i1_resize: signed(20 downto 0);
  signal c_8_i0_shift: signed(20 downto 0);
  signal c_8_i1_shift: signed(20 downto 0);
  signal c_8_arith: signed(20 downto 0);
  signal c_8_oshift: signed(20 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(23 downto 0);
  signal c_9_8_0_False_resize: signed(23 downto 0);
  signal c_9_8_0_False_shift: signed(23 downto 0);
  signal c_9_5_5_False_resize: signed(23 downto 0);
  signal c_9_5_5_False_shift: signed(23 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(24 downto 0);
  signal c_10_i0_resize: signed(24 downto 0);
  signal c_10_i1_resize: signed(24 downto 0);
  signal c_10_i0_shift: signed(24 downto 0);
  signal c_10_i1_shift: signed(24 downto 0);
  signal c_10_arith: signed(24 downto 0);
  signal c_10_oshift: signed(24 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(25 downto 0);
  signal c_11_8_5_False_resize: signed(25 downto 0);
  signal c_11_8_5_False_shift: signed(25 downto 0);
  signal c_11_2_0_False_resize: signed(25 downto 0);
  signal c_11_2_0_False_shift: signed(25 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_7_0_False_resize: signed(23 downto 0);
  signal c_12_7_0_False_shift: signed(23 downto 0);
  signal c_12_7_4_False_resize: signed(23 downto 0);
  signal c_12_7_4_False_shift: signed(23 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(25 downto 0);
  signal c_13_i0_resize: signed(25 downto 0);
  signal c_13_i1_resize: signed(25 downto 0);
  signal c_13_i0_shift: signed(25 downto 0);
  signal c_13_i1_shift: signed(25 downto 0);
  signal c_13_arith: signed(25 downto 0);
  signal c_13_oshift: signed(25 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(23 downto 0);
  signal c_14_1_5_False_resize: signed(23 downto 0);
  signal c_14_1_5_False_shift: signed(23 downto 0);
  signal c_14_5_0_False_resize: signed(23 downto 0);
  signal c_14_5_0_False_shift: signed(23 downto 0);
  signal c_14_0_8_False_resize: signed(23 downto 0);
  signal c_14_0_8_False_shift: signed(23 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(20 downto 0);
  signal c_15_4_0_False_resize: signed(20 downto 0);
  signal c_15_4_0_False_shift: signed(20 downto 0);
  signal c_15_2_0_False_resize: signed(20 downto 0);
  signal c_15_2_0_False_shift: signed(20 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(25 downto 0);
  signal c_16_i1_resize: signed(25 downto 0);
  signal c_16_i0_shift: signed(25 downto 0);
  signal c_16_i1_shift: signed(25 downto 0);
  signal c_16_arith: signed(25 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(24 downto 0);
  signal c_17_i0_resize: signed(24 downto 0);
  signal c_17_i1_resize: signed(24 downto 0);
  signal c_17_i0_shift: signed(24 downto 0);
  signal c_17_i1_shift: signed(24 downto 0);
  signal c_17_arith: signed(24 downto 0);
  signal c_17_oshift: signed(24 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_18_16_0_False_resize: signed(24 downto 0);
  signal c_18_16_0_False_shift: signed(24 downto 0);
  signal c_18_5_0_False_resize: signed(24 downto 0);
  signal c_18_5_0_False_shift: signed(24 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(19 downto 0);
  signal c_19_7_0_False_resize: signed(19 downto 0);
  signal c_19_7_0_False_shift: signed(19 downto 0);
  signal c_19_1_2_False_resize: signed(19 downto 0);
  signal c_19_1_2_False_shift: signed(19 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_i0_resize: signed(25 downto 0);
  signal c_20_i1_resize: signed(25 downto 0);
  signal c_20_i0_shift: signed(25 downto 0);
  signal c_20_i1_shift: signed(25 downto 0);
  signal c_20_arith: signed(25 downto 0);
  signal c_20_oshift: signed(25 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(24 downto 0);
  signal c_21_10_0_False_resize: signed(24 downto 0);
  signal c_21_10_0_False_shift: signed(24 downto 0);
  signal c_21_7_6_False_resize: signed(24 downto 0);
  signal c_21_7_6_False_shift: signed(24 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(24 downto 0);
  signal c_22_10_1_False_resize: signed(24 downto 0);
  signal c_22_10_1_False_shift: signed(24 downto 0);
  signal c_22_17_0_False_resize: signed(24 downto 0);
  signal c_22_17_0_False_shift: signed(24 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_i0_resize: signed(25 downto 0);
  signal c_23_i1_resize: signed(25 downto 0);
  signal c_23_i0_shift: signed(25 downto 0);
  signal c_23_i1_shift: signed(25 downto 0);
  signal c_23_arith: signed(25 downto 0);
  signal c_23_oshift: signed(25 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(25 downto 0);
  signal c_24_resize: signed(25 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_resize: signed(25 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_resize: signed(25 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_resize: signed(25 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_resize: signed(25 downto 0);
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
  -- output node 2 with id 26
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_26);
    end if;
  end process;
  -- output node 3 with id 27
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_27);
    end if;
  end process;
  -- output node 4 with id 28
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_28);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[3], [-1], [3]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 18,
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
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  c_1 <= c_1_oshift(17 downto 0);
  -- node of type 'add_sub' in stage 2 with id 2 and associated fundamentals [[-29], [31], [-29]]
  with config_select_2 select c_2_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
      w_o => 21,
      s_x_i => 0,
      s_y_i => 5,
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
  c_2 <= c_2_oshift(20 downto 0);
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[128], [-1], [3]]
  c_3_0_7_False_resize <= resize(c_0, 23);
  c_3_0_7_False_shift <= shift_left(c_3_0_7_False_resize, 7);
  c_3_1_0_False_resize <= resize(c_1, 23);
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  with config_select_2 select c_3_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_0_7_False_shift when "0",
    c_3_1_0_False_shift when others;
  -- node of type 'add' in stage 3 with id 4 and associated fundamentals [[483], [27], [-17]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 23,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(24 downto 0);
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[-53], [39], [-5]]
  with config_select_3 select c_5_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 18,
      w_o => 22,
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
      sub_i => c_5_sub_sel,
      x_i => c_2,
      y_i => c_1,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(21 downto 0);
  -- node of type 'mux' in stage 1 with id 6 and associated fundamentals [[1], [2], [2]]
  c_6_0_1_False_resize <= resize(c_0, 17);
  c_6_0_1_False_shift <= shift_left(c_6_0_1_False_resize, 1);
  c_6_0_0_False_resize <= resize(c_0, 17);
  c_6_0_0_False_shift <= shift_left(c_6_0_0_False_resize, 0);
  with config_select_1 select c_6_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_0_1_False_shift when "0",
    c_6_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 7 and associated fundamentals [[7], [-9], [11]]
  with config_select_2 select c_7_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 17,
      w_o => 20,
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
      sub_i => c_7_sub_sel,
      x_i => c_1,
      y_i => c_6,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(19 downto 0);
  -- node of type 'add_sub' in stage 2 with id 8 and associated fundamentals [[4], [-12], [20]]
  with config_select_2 select c_8_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
      w_o => 21,
      s_x_i => 2,
      s_y_i => 3,
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
      y_i => c_0,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(20 downto 0);
  -- node of type 'mux' in stage 4 with id 9 and associated fundamentals [[4], [-12], [-160]]
  c_9_8_0_False_resize <= resize(c_8, 24);
  c_9_8_0_False_shift <= shift_left(c_9_8_0_False_resize, 0);
  c_9_5_5_False_resize <= resize(c_5, 24);
  c_9_5_5_False_shift <= shift_left(c_9_5_5_False_resize, 5);
  with config_select_4 select c_9_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_8_0_False_shift when "0",
    c_9_5_5_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 10 and associated fundamentals [[487], [15], [143]]
  with config_select_5 select c_10_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 24,
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
      sub_i => c_10_sub_sel,
      x_i => c_4,
      y_i => c_9,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(24 downto 0);
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[128], [31], [640]]
  c_11_8_5_False_resize <= resize(c_8, 26);
  c_11_8_5_False_shift <= shift_left(c_11_8_5_False_resize, 5);
  c_11_2_0_False_resize <= resize(c_2, 26);
  c_11_2_0_False_shift <= shift_left(c_11_2_0_False_resize, 0);
  with config_select_3 select c_11_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_8_5_False_shift when "0",
    c_11_2_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[7], [-144], [11]]
  c_12_7_0_False_resize <= resize(c_7, 24);
  c_12_7_0_False_shift <= shift_left(c_12_7_0_False_resize, 0);
  c_12_7_4_False_resize <= resize(c_7, 24);
  c_12_7_4_False_shift <= shift_left(c_12_7_4_False_resize, 4);
  with config_select_3 select c_12_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_12_sel select c_12 <=
    c_12_7_0_False_shift when "0",
    c_12_7_4_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 13 and associated fundamentals [[100], [607], [684]]
  with config_select_4 select c_13_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
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
      sub_i => c_13_sub_sel,
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 14 and associated fundamentals [[96], [39], [256]]
  c_14_1_5_False_resize <= resize(c_1, 24);
  c_14_1_5_False_shift <= shift_left(c_14_1_5_False_resize, 5);
  c_14_5_0_False_resize <= resize(c_5, 24);
  c_14_5_0_False_shift <= shift_left(c_14_5_0_False_resize, 0);
  c_14_0_8_False_resize <= resize(c_0, 24);
  c_14_0_8_False_shift <= shift_left(c_14_0_8_False_resize, 8);
  with config_select_4 select c_14_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_14_sel select c_14 <=
    c_14_1_5_False_shift when "00",
    c_14_5_0_False_shift when "01",
    c_14_0_8_False_shift when others;
  -- node of type 'mux' in stage 4 with id 15 and associated fundamentals [[-29], [31], [-17]]
  c_15_4_0_False_resize <= c_4(20 downto 0);
  c_15_4_0_False_shift <= shift_left(c_15_4_0_False_resize, 0);
  c_15_2_0_False_resize <= c_2;
  c_15_2_0_False_shift <= shift_left(c_15_2_0_False_resize, 0);
  with config_select_4 select c_15_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_15_sel select c_15 <=
    c_15_4_0_False_shift when "0",
    c_15_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 16 and associated fundamentals [[413], [187], [1007]]
  with config_select_5 select c_16_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 21,
      w_o => 26,
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
      sub_i => c_16_sub_sel,
      x_i => c_14,
      y_i => c_15,
      z_o => c_16_oshift
    );
  c_16 <= c_16_oshift(25 downto 0);
  -- node of type 'add' in stage 4 with id 17 and associated fundamentals [[-422], [314], [-38]]
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 22,
      w_o => 25,
      s_x_i => 1,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_0,
      y_i => c_5,
      z_o => c_17_oshift
    );
  c_17 <= c_17_oshift(24 downto 0);
  -- node of type 'mux' in stage 6 with id 18 and associated fundamentals [[413], [39], [-5]]
  c_18_16_0_False_resize <= c_16(24 downto 0);
  c_18_16_0_False_shift <= shift_left(c_18_16_0_False_resize, 0);
  c_18_5_0_False_resize <= resize(c_5, 25);
  c_18_5_0_False_shift <= shift_left(c_18_5_0_False_resize, 0);
  with config_select_6 select c_18_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_18_sel select c_18 <=
    c_18_16_0_False_shift when "0",
    c_18_5_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 19 and associated fundamentals [[7], [-9], [12]]
  c_19_7_0_False_resize <= c_7;
  c_19_7_0_False_shift <= shift_left(c_19_7_0_False_resize, 0);
  c_19_1_2_False_resize <= resize(c_1, 20);
  c_19_1_2_False_shift <= shift_left(c_19_1_2_False_resize, 2);
  with config_select_3 select c_19_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_19_sel select c_19 <=
    c_19_7_0_False_shift when "0",
    c_19_1_2_False_shift when others;
  -- node of type 'add_sub' in stage 7 with id 20 and associated fundamentals [[637], [327], [379]]
  with config_select_7 select c_20_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 20,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_20_sub_sel,
      x_i => c_18,
      y_i => c_19,
      z_o => c_20_oshift
    );
  c_20 <= c_20_oshift(25 downto 0);
  -- node of type 'mux' in stage 6 with id 21 and associated fundamentals [[448], [15], [143]]
  c_21_10_0_False_resize <= c_10;
  c_21_10_0_False_shift <= shift_left(c_21_10_0_False_resize, 0);
  c_21_7_6_False_resize <= resize(c_7, 25);
  c_21_7_6_False_shift <= shift_left(c_21_7_6_False_resize, 6);
  with config_select_6 select c_21_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_21_sel select c_21 <=
    c_21_10_0_False_shift when "0",
    c_21_7_6_False_shift when others;
  -- node of type 'mux' in stage 6 with id 22 and associated fundamentals [[-422], [314], [286]]
  c_22_10_1_False_resize <= c_10;
  c_22_10_1_False_shift <= shift_left(c_22_10_1_False_resize, 1);
  c_22_17_0_False_resize <= c_17;
  c_22_17_0_False_shift <= shift_left(c_22_17_0_False_resize, 0);
  with config_select_6 select c_22_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_22_sel select c_22 <=
    c_22_10_1_False_shift when "0",
    c_22_17_0_False_shift when others;
  -- node of type 'add_sub' in stage 7 with id 23 and associated fundamentals [[870], [329], [429]]
  with config_select_7 select c_23_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
      w_o => 26,
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
      sub_i => c_23_sub_sel,
      x_i => c_21,
      y_i => c_22,
      z_o => c_23_oshift
    );
  c_23 <= c_23_oshift(25 downto 0);
  -- node of type 'output' in stage 5 with id 24 and associated fundamentals [[413], [187], [1007]]
  c_24_resize <= c_16;
  c_24 <= shift_left(c_24_resize, 0);
  -- node of type 'output' in stage 7 with id 25 and associated fundamentals [[870], [329], [429]]
  c_25_resize <= c_23;
  c_25 <= shift_left(c_25_resize, 0);
  -- node of type 'output' in stage 4 with id 26 and associated fundamentals [[100], [607], [684]]
  c_26_resize <= c_13;
  c_26 <= shift_left(c_26_resize, 0);
  -- node of type 'output' in stage 7 with id 27 and associated fundamentals [[637], [327], [379]]
  c_27_resize <= c_20;
  c_27 <= shift_left(c_27_resize, 0);
  -- node of type 'output' in stage 5 with id 28 and associated fundamentals [[974], [30], [286]]
  c_28_resize <= resize(c_10, 26);
  c_28 <= shift_left(c_28_resize, 1);
end architecture;
