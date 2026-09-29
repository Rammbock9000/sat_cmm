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
  signal config_select_10: std_logic_vector(1 downto 0);
  signal config_select_11: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(20 downto 0);
  signal c_1_i0_resize: signed(20 downto 0);
  signal c_1_i1_resize: signed(20 downto 0);
  signal c_1_i0_shift: signed(20 downto 0);
  signal c_1_i1_shift: signed(20 downto 0);
  signal c_1_arith: signed(20 downto 0);
  signal c_1_oshift: signed(20 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(20 downto 0);
  signal c_2_1_0_False_resize: signed(20 downto 0);
  signal c_2_1_0_False_shift: signed(20 downto 0);
  signal c_2_1_1_False_resize: signed(20 downto 0);
  signal c_2_1_1_False_shift: signed(20 downto 0);
  signal c_2_0_2_False_resize: signed(20 downto 0);
  signal c_2_0_2_False_shift: signed(20 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_0_0_False_resize: signed(19 downto 0);
  signal c_3_0_0_False_shift: signed(19 downto 0);
  signal c_3_0_4_False_resize: signed(19 downto 0);
  signal c_3_0_4_False_shift: signed(19 downto 0);
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
  signal c_5_1_0_False_resize: signed(20 downto 0);
  signal c_5_1_0_False_shift: signed(20 downto 0);
  signal c_5_4_0_False_resize: signed(20 downto 0);
  signal c_5_4_0_False_shift: signed(20 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(21 downto 0);
  signal c_6_1_1_False_resize: signed(21 downto 0);
  signal c_6_1_1_False_shift: signed(21 downto 0);
  signal c_6_0_0_False_resize: signed(21 downto 0);
  signal c_6_0_0_False_shift: signed(21 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_i0_resize: signed(23 downto 0);
  signal c_7_i1_resize: signed(23 downto 0);
  signal c_7_i0_shift: signed(23 downto 0);
  signal c_7_i1_shift: signed(23 downto 0);
  signal c_7_arith: signed(23 downto 0);
  signal c_7_oshift: signed(23 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(18 downto 0);
  signal c_8_0_0_False_resize: signed(18 downto 0);
  signal c_8_0_0_False_shift: signed(18 downto 0);
  signal c_8_0_3_False_resize: signed(18 downto 0);
  signal c_8_0_3_False_shift: signed(18 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_9_4_0_False_resize: signed(21 downto 0);
  signal c_9_4_0_False_shift: signed(21 downto 0);
  signal c_9_1_0_False_resize: signed(21 downto 0);
  signal c_9_1_0_False_shift: signed(21 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(25 downto 0);
  signal c_10_i0_resize: signed(25 downto 0);
  signal c_10_i1_resize: signed(25 downto 0);
  signal c_10_i0_shift: signed(25 downto 0);
  signal c_10_i1_shift: signed(25 downto 0);
  signal c_10_arith: signed(25 downto 0);
  signal c_10_oshift: signed(25 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(23 downto 0);
  signal c_11_4_0_False_resize: signed(23 downto 0);
  signal c_11_4_0_False_shift: signed(23 downto 0);
  signal c_11_7_0_False_resize: signed(23 downto 0);
  signal c_11_7_0_False_shift: signed(23 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(24 downto 0);
  signal c_12_i0_resize: signed(24 downto 0);
  signal c_12_i1_resize: signed(24 downto 0);
  signal c_12_i0_shift: signed(24 downto 0);
  signal c_12_i1_shift: signed(24 downto 0);
  signal c_12_arith: signed(24 downto 0);
  signal c_12_oshift: signed(24 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_4_0_False_resize: signed(23 downto 0);
  signal c_13_4_0_False_shift: signed(23 downto 0);
  signal c_13_4_2_False_resize: signed(23 downto 0);
  signal c_13_4_2_False_shift: signed(23 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(25 downto 0);
  signal c_14_i0_resize: signed(25 downto 0);
  signal c_14_i1_resize: signed(25 downto 0);
  signal c_14_i0_shift: signed(25 downto 0);
  signal c_14_i1_shift: signed(25 downto 0);
  signal c_14_arith: signed(25 downto 0);
  signal c_14_oshift: signed(25 downto 0);
  signal c_15: signed(28 downto 0);
  signal c_15_14_3_False_resize: signed(28 downto 0);
  signal c_15_14_3_False_shift: signed(28 downto 0);
  signal c_15_10_0_False_resize: signed(28 downto 0);
  signal c_15_10_0_False_shift: signed(28 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(24 downto 0);
  signal c_16_7_1_False_resize: signed(24 downto 0);
  signal c_16_7_1_False_shift: signed(24 downto 0);
  signal c_16_7_0_False_resize: signed(24 downto 0);
  signal c_16_7_0_False_shift: signed(24 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_i0_resize: signed(25 downto 0);
  signal c_17_i1_resize: signed(25 downto 0);
  signal c_17_i0_shift: signed(25 downto 0);
  signal c_17_i1_shift: signed(25 downto 0);
  signal c_17_arith: signed(25 downto 0);
  signal c_17_oshift: signed(25 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_12_0_False_resize: signed(25 downto 0);
  signal c_18_12_0_False_shift: signed(25 downto 0);
  signal c_18_12_4_False_resize: signed(25 downto 0);
  signal c_18_12_4_False_shift: signed(25 downto 0);
  signal c_18_10_0_False_resize: signed(25 downto 0);
  signal c_18_10_0_False_shift: signed(25 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_14_2_False_resize: signed(25 downto 0);
  signal c_19_14_2_False_shift: signed(25 downto 0);
  signal c_19_0_1_False_resize: signed(25 downto 0);
  signal c_19_0_1_False_shift: signed(25 downto 0);
  signal c_19_7_0_False_resize: signed(25 downto 0);
  signal c_19_7_0_False_shift: signed(25 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_i0_resize: signed(25 downto 0);
  signal c_20_i1_resize: signed(25 downto 0);
  signal c_20_i0_shift: signed(25 downto 0);
  signal c_20_i1_shift: signed(25 downto 0);
  signal c_20_arith: signed(25 downto 0);
  signal c_20_oshift: signed(25 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(25 downto 0);
  signal c_21_14_0_False_resize: signed(25 downto 0);
  signal c_21_14_0_False_shift: signed(25 downto 0);
  signal c_21_10_0_False_resize: signed(25 downto 0);
  signal c_21_10_0_False_shift: signed(25 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_resize: signed(25 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_12_0_False_resize: signed(25 downto 0);
  signal c_23_12_0_False_shift: signed(25 downto 0);
  signal c_23_17_0_False_resize: signed(25 downto 0);
  signal c_23_17_0_False_shift: signed(25 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_resize: signed(25 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_4_1_False_resize: signed(25 downto 0);
  signal c_25_4_1_False_shift: signed(25 downto 0);
  signal c_25_17_0_False_resize: signed(25 downto 0);
  signal c_25_17_0_False_shift: signed(25 downto 0);
  signal c_25_14_0_False_resize: signed(25 downto 0);
  signal c_25_14_0_False_shift: signed(25 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_resize: signed(25 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_resize: signed(25 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_1_1_False_resize: signed(25 downto 0);
  signal c_28_1_1_False_shift: signed(25 downto 0);
  signal c_28_7_1_False_resize: signed(25 downto 0);
  signal c_28_7_1_False_shift: signed(25 downto 0);
  signal c_28_10_0_False_resize: signed(25 downto 0);
  signal c_28_10_0_False_shift: signed(25 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_resize: signed(25 downto 0);
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
  -- output node 0 with id 22
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_22);
    end if;
  end process;
  -- output node 1 with id 24
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_24);
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
  -- output node 4 with id 29
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_29);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[17], [15], [17]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 21,
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
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  c_1 <= c_1_oshift(20 downto 0);
  -- node of type 'mux' in stage 2 with id 2 and associated fundamentals [[17], [30], [4]]
  c_2_1_0_False_resize <= c_1;
  c_2_1_0_False_shift <= shift_left(c_2_1_0_False_resize, 0);
  c_2_1_1_False_resize <= c_1;
  c_2_1_1_False_shift <= shift_left(c_2_1_1_False_resize, 1);
  c_2_0_2_False_resize <= resize(c_0, 21);
  c_2_0_2_False_shift <= shift_left(c_2_0_2_False_resize, 2);
  with config_select_2 select c_2_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_2_sel select c_2 <=
    c_2_1_0_False_shift when "00",
    c_2_1_1_False_shift when "01",
    c_2_0_2_False_shift when others;
  -- node of type 'mux' in stage 1 with id 3 and associated fundamentals [[16], [1], [1]]
  c_3_0_0_False_resize <= resize(c_0, 20);
  c_3_0_0_False_shift <= shift_left(c_3_0_0_False_resize, 0);
  c_3_0_4_False_resize <= resize(c_0, 20);
  c_3_0_4_False_shift <= shift_left(c_3_0_4_False_resize, 4);
  with config_select_1 select c_3_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_0_0_False_shift when "0",
    c_3_0_4_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 4 and associated fundamentals [[50], [59], [7]]
  with config_select_3 select c_4_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 20,
      w_o => 22,
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
      sub_i => c_4_sub_sel,
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(21 downto 0);
  -- node of type 'mux' in stage 4 with id 5 and associated fundamentals [[17], [15], [7]]
  c_5_1_0_False_resize <= c_1;
  c_5_1_0_False_shift <= shift_left(c_5_1_0_False_resize, 0);
  c_5_4_0_False_resize <= c_4(20 downto 0);
  c_5_4_0_False_shift <= shift_left(c_5_4_0_False_resize, 0);
  with config_select_4 select c_5_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_1_0_False_shift when "0",
    c_5_4_0_False_shift when others;
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[1], [30], [34]]
  c_6_1_1_False_resize <= resize(c_1, 22);
  c_6_1_1_False_shift <= shift_left(c_6_1_1_False_resize, 1);
  c_6_0_0_False_resize <= resize(c_0, 22);
  c_6_0_0_False_shift <= shift_left(c_6_0_0_False_resize, 0);
  with config_select_2 select c_6_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_1_1_False_shift when "0",
    c_6_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 7 and associated fundamentals [[13], [135], [143]]
  with config_select_5 select c_7_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 22,
      w_o => 24,
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
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(23 downto 0);
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[8], [1], [8]]
  c_8_0_0_False_resize <= resize(c_0, 19);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  c_8_0_3_False_resize <= resize(c_0, 19);
  c_8_0_3_False_shift <= shift_left(c_8_0_3_False_resize, 3);
  with config_select_1 select c_8_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_0_0_False_shift when "0",
    c_8_0_3_False_shift when others;
  -- node of type 'mux' in stage 4 with id 9 and associated fundamentals [[50], [59], [17]]
  c_9_4_0_False_resize <= c_4;
  c_9_4_0_False_shift <= shift_left(c_9_4_0_False_resize, 0);
  c_9_1_0_False_resize <= resize(c_1, 22);
  c_9_1_0_False_shift <= shift_left(c_9_1_0_False_resize, 0);
  with config_select_4 select c_9_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_4_0_False_shift when "0",
    c_9_1_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 10 and associated fundamentals [[974], [187], [1007]]
  with config_select_5 select c_10_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 22,
      w_o => 26,
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
      sub_i => c_10_sub_sel,
      x_i => c_8,
      y_i => c_9,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(25 downto 0);
  -- node of type 'mux' in stage 6 with id 11 and associated fundamentals [[13], [59], [143]]
  c_11_4_0_False_resize <= resize(c_4, 24);
  c_11_4_0_False_shift <= shift_left(c_11_4_0_False_resize, 0);
  c_11_7_0_False_resize <= c_7;
  c_11_7_0_False_shift <= shift_left(c_11_7_0_False_resize, 0);
  with config_select_6 select c_11_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_4_0_False_shift when "0",
    c_11_7_0_False_shift when others;
  -- node of type 'add' in stage 7 with id 12 and associated fundamentals [[39], [329], [429]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
      w_o => 25,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_7,
      y_i => c_11,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(24 downto 0);
  -- node of type 'mux' in stage 4 with id 13 and associated fundamentals [[200], [236], [7]]
  c_13_4_0_False_resize <= resize(c_4, 24);
  c_13_4_0_False_shift <= shift_left(c_13_4_0_False_resize, 0);
  c_13_4_2_False_resize <= resize(c_4, 24);
  c_13_4_2_False_shift <= shift_left(c_13_4_2_False_resize, 2);
  with config_select_4 select c_13_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_4_0_False_shift when "0",
    c_13_4_2_False_shift when others;
  -- node of type 'add' in stage 6 with id 14 and associated fundamentals [[413], [607], [157]]
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
      w_o => 26,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_13,
      y_i => c_7,
      z_o => c_14_oshift
    );
  c_14 <= c_14_oshift(25 downto 0);
  -- node of type 'mux' in stage 7 with id 15 and associated fundamentals [[974], [4856], [1256]]
  c_15_14_3_False_resize <= resize(c_14, 29);
  c_15_14_3_False_shift <= shift_left(c_15_14_3_False_resize, 3);
  c_15_10_0_False_resize <= resize(c_10, 29);
  c_15_10_0_False_shift <= shift_left(c_15_10_0_False_resize, 0);
  with config_select_7 select c_15_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_15_sel select c_15 <=
    c_15_14_3_False_shift when "0",
    c_15_10_0_False_shift when others;
  -- node of type 'mux' in stage 6 with id 16 and associated fundamentals [[26], [270], [143]]
  c_16_7_1_False_resize <= resize(c_7, 25);
  c_16_7_1_False_shift <= shift_left(c_16_7_1_False_resize, 1);
  c_16_7_0_False_resize <= resize(c_7, 25);
  c_16_7_0_False_shift <= shift_left(c_16_7_0_False_resize, 0);
  with config_select_6 select c_16_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_7_1_False_shift when "0",
    c_16_7_0_False_shift when others;
  -- node of type 'sub' in stage 8 with id 17 and associated fundamentals [[870], [3776], [684]]
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 25,
      w_o => 26,
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
      x_i => c_15,
      y_i => c_16,
      z_o => c_17_oshift
    );
  c_17 <= c_17_oshift(25 downto 0);
  -- node of type 'mux' in stage 8 with id 18 and associated fundamentals [[624], [329], [1007]]
  c_18_12_0_False_resize <= resize(c_12, 26);
  c_18_12_0_False_shift <= shift_left(c_18_12_0_False_resize, 0);
  c_18_12_4_False_resize <= resize(c_12, 26);
  c_18_12_4_False_shift <= shift_left(c_18_12_4_False_resize, 4);
  c_18_10_0_False_resize <= c_10;
  c_18_10_0_False_shift <= shift_left(c_18_10_0_False_resize, 0);
  with config_select_8 select c_18_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_18_sel select c_18 <=
    c_18_12_0_False_shift when "00",
    c_18_12_4_False_shift when "01",
    c_18_10_0_False_shift when others;
  -- node of type 'mux' in stage 7 with id 19 and associated fundamentals [[13], [2], [628]]
  c_19_14_2_False_resize <= c_14;
  c_19_14_2_False_shift <= shift_left(c_19_14_2_False_resize, 2);
  c_19_0_1_False_resize <= resize(c_0, 26);
  c_19_0_1_False_shift <= shift_left(c_19_0_1_False_resize, 1);
  c_19_7_0_False_resize <= resize(c_7, 26);
  c_19_7_0_False_shift <= shift_left(c_19_7_0_False_resize, 0);
  with config_select_7 select c_19_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_19_sel select c_19 <=
    c_19_14_2_False_shift when "00",
    c_19_0_1_False_shift when "01",
    c_19_7_0_False_shift when others;
  -- node of type 'add_sub' in stage 9 with id 20 and associated fundamentals [[637], [327], [379]]
  with config_select_9 select c_20_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 26,
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
      sub_i => c_20_sub_sel,
      x_i => c_18,
      y_i => c_19,
      z_o => c_20_oshift
    );
  c_20 <= c_20_oshift(25 downto 0);
  -- node of type 'mux' in stage 7 with id 21 and associated fundamentals [[413], [187], [1007]]
  c_21_14_0_False_resize <= c_14;
  c_21_14_0_False_shift <= shift_left(c_21_14_0_False_resize, 0);
  c_21_10_0_False_resize <= c_10;
  c_21_10_0_False_shift <= shift_left(c_21_10_0_False_resize, 0);
  with config_select_7 select c_21_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_21_sel select c_21 <=
    c_21_14_0_False_shift when "0",
    c_21_10_0_False_shift when others;
  -- node of type 'output' in stage 7 with id 22 and associated fundamentals [[413], [187], [1007]]
  c_22_resize <= c_21;
  c_22 <= shift_left(c_22_resize, 0);
  -- node of type 'mux' in stage 9 with id 23 and associated fundamentals [[870], [329], [429]]
  c_23_12_0_False_resize <= resize(c_12, 26);
  c_23_12_0_False_shift <= shift_left(c_23_12_0_False_resize, 0);
  c_23_17_0_False_resize <= c_17;
  c_23_17_0_False_shift <= shift_left(c_23_17_0_False_resize, 0);
  with config_select_9 select c_23_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_23_sel select c_23 <=
    c_23_12_0_False_shift when "0",
    c_23_17_0_False_shift when others;
  -- node of type 'output' in stage 9 with id 24 and associated fundamentals [[870], [329], [429]]
  c_24_resize <= c_23;
  c_24 <= shift_left(c_24_resize, 0);
  -- node of type 'mux' in stage 9 with id 25 and associated fundamentals [[100], [607], [684]]
  c_25_4_1_False_resize <= resize(c_4, 26);
  c_25_4_1_False_shift <= shift_left(c_25_4_1_False_resize, 1);
  c_25_17_0_False_resize <= c_17;
  c_25_17_0_False_shift <= shift_left(c_25_17_0_False_resize, 0);
  c_25_14_0_False_resize <= c_14;
  c_25_14_0_False_shift <= shift_left(c_25_14_0_False_resize, 0);
  with config_select_9 select c_25_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_25_sel select c_25 <=
    c_25_4_1_False_shift when "00",
    c_25_17_0_False_shift when "01",
    c_25_14_0_False_shift when others;
  -- node of type 'output' in stage 9 with id 26 and associated fundamentals [[100], [607], [684]]
  c_26_resize <= c_25;
  c_26 <= shift_left(c_26_resize, 0);
  -- node of type 'output' in stage 9 with id 27 and associated fundamentals [[637], [327], [379]]
  c_27_resize <= c_20;
  c_27 <= shift_left(c_27_resize, 0);
  -- node of type 'mux' in stage 6 with id 28 and associated fundamentals [[974], [30], [286]]
  c_28_1_1_False_resize <= resize(c_1, 26);
  c_28_1_1_False_shift <= shift_left(c_28_1_1_False_resize, 1);
  c_28_7_1_False_resize <= resize(c_7, 26);
  c_28_7_1_False_shift <= shift_left(c_28_7_1_False_resize, 1);
  c_28_10_0_False_resize <= c_10;
  c_28_10_0_False_shift <= shift_left(c_28_10_0_False_resize, 0);
  with config_select_6 select c_28_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_28_sel select c_28 <=
    c_28_1_1_False_shift when "00",
    c_28_7_1_False_shift when "01",
    c_28_10_0_False_shift when others;
  -- node of type 'output' in stage 6 with id 29 and associated fundamentals [[974], [30], [286]]
  c_29_resize <= c_28;
  c_29 <= shift_left(c_29_resize, 0);
end architecture;
