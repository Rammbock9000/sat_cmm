library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(24 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(25 downto 0);
    y_5: out std_logic_vector(25 downto 0);
    y_6: out std_logic_vector(25 downto 0);
    y_7: out std_logic_vector(24 downto 0);
    y_8: out std_logic_vector(24 downto 0);
    y_9: out std_logic_vector(24 downto 0);
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
  signal config_select_14: std_logic_vector(0 downto 0);
  signal config_select_15: std_logic_vector(0 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_i0_resize: signed(18 downto 0);
  signal c_1_i1_resize: signed(18 downto 0);
  signal c_1_i0_shift: signed(18 downto 0);
  signal c_1_i1_shift: signed(18 downto 0);
  signal c_1_arith: signed(18 downto 0);
  signal c_1_oshift: signed(18 downto 0);
  signal c_2: signed(20 downto 0);
  signal c_2_1_2_False_resize: signed(20 downto 0);
  signal c_2_1_2_False_shift: signed(20 downto 0);
  signal c_2_1_0_False_resize: signed(20 downto 0);
  signal c_2_1_0_False_shift: signed(20 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_4: signed(18 downto 0);
  signal c_4_0_1_False_resize: signed(18 downto 0);
  signal c_4_0_1_False_shift: signed(18 downto 0);
  signal c_4_1_0_False_resize: signed(18 downto 0);
  signal c_4_1_0_False_shift: signed(18 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_1_4_False_resize: signed(22 downto 0);
  signal c_5_1_4_False_shift: signed(22 downto 0);
  signal c_5_3_0_False_resize: signed(22 downto 0);
  signal c_5_3_0_False_shift: signed(22 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_i0_resize: signed(22 downto 0);
  signal c_6_i1_resize: signed(22 downto 0);
  signal c_6_i0_shift: signed(22 downto 0);
  signal c_6_i1_shift: signed(22 downto 0);
  signal c_6_arith: signed(22 downto 0);
  signal c_6_oshift: signed(22 downto 0);
  signal c_7: signed(17 downto 0);
  signal c_7_0_0_False_resize: signed(17 downto 0);
  signal c_7_0_0_False_shift: signed(17 downto 0);
  signal c_7_0_2_False_resize: signed(17 downto 0);
  signal c_7_0_2_False_shift: signed(17 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_i0_resize: signed(22 downto 0);
  signal c_8_i1_resize: signed(22 downto 0);
  signal c_8_i0_shift: signed(22 downto 0);
  signal c_8_i1_shift: signed(22 downto 0);
  signal c_8_arith: signed(22 downto 0);
  signal c_8_oshift: signed(22 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(22 downto 0);
  signal c_9_8_0_False_resize: signed(22 downto 0);
  signal c_9_8_0_False_shift: signed(22 downto 0);
  signal c_9_0_5_False_resize: signed(22 downto 0);
  signal c_9_0_5_False_shift: signed(22 downto 0);
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
  signal c_11_3_2_False_resize: signed(23 downto 0);
  signal c_11_3_2_False_shift: signed(23 downto 0);
  signal c_11_8_0_False_resize: signed(23 downto 0);
  signal c_11_8_0_False_shift: signed(23 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(24 downto 0);
  signal c_12_i0_resize: signed(24 downto 0);
  signal c_12_i1_resize: signed(24 downto 0);
  signal c_12_i0_shift: signed(24 downto 0);
  signal c_12_i1_shift: signed(24 downto 0);
  signal c_12_arith: signed(24 downto 0);
  signal c_12_oshift: signed(24 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(21 downto 0);
  signal c_13_1_3_False_resize: signed(21 downto 0);
  signal c_13_1_3_False_shift: signed(21 downto 0);
  signal c_13_3_0_False_resize: signed(21 downto 0);
  signal c_13_3_0_False_shift: signed(21 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(24 downto 0);
  signal c_14_i0_resize: signed(24 downto 0);
  signal c_14_i1_resize: signed(24 downto 0);
  signal c_14_i0_shift: signed(24 downto 0);
  signal c_14_i1_shift: signed(24 downto 0);
  signal c_14_arith: signed(24 downto 0);
  signal c_14_oshift: signed(24 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(25 downto 0);
  signal c_15_14_0_False_resize: signed(25 downto 0);
  signal c_15_14_0_False_shift: signed(25 downto 0);
  signal c_15_1_7_False_resize: signed(25 downto 0);
  signal c_15_1_7_False_shift: signed(25 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(25 downto 0);
  signal c_16_i1_resize: signed(25 downto 0);
  signal c_16_i0_shift: signed(25 downto 0);
  signal c_16_i1_shift: signed(25 downto 0);
  signal c_16_arith: signed(25 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_17: signed(22 downto 0);
  signal c_17_8_0_False_resize: signed(22 downto 0);
  signal c_17_8_0_False_shift: signed(22 downto 0);
  signal c_17_0_2_False_resize: signed(22 downto 0);
  signal c_17_0_2_False_shift: signed(22 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_18_i0_resize: signed(24 downto 0);
  signal c_18_i1_resize: signed(24 downto 0);
  signal c_18_i0_shift: signed(24 downto 0);
  signal c_18_i1_shift: signed(24 downto 0);
  signal c_18_arith: signed(24 downto 0);
  signal c_18_oshift: signed(24 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_1_5_False_resize: signed(23 downto 0);
  signal c_19_1_5_False_shift: signed(23 downto 0);
  signal c_19_8_0_False_resize: signed(23 downto 0);
  signal c_19_8_0_False_shift: signed(23 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_20_8_0_False_resize: signed(22 downto 0);
  signal c_20_8_0_False_shift: signed(22 downto 0);
  signal c_20_3_1_False_resize: signed(22 downto 0);
  signal c_20_3_1_False_shift: signed(22 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_i0_resize: signed(25 downto 0);
  signal c_21_i1_resize: signed(25 downto 0);
  signal c_21_i0_shift: signed(25 downto 0);
  signal c_21_i1_shift: signed(25 downto 0);
  signal c_21_arith: signed(25 downto 0);
  signal c_21_oshift: signed(25 downto 0);
  signal c_22: signed(24 downto 0);
  signal c_22_0_8_False_resize: signed(24 downto 0);
  signal c_22_0_8_False_shift: signed(24 downto 0);
  signal c_22_18_0_False_resize: signed(24 downto 0);
  signal c_22_18_0_False_shift: signed(24 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(26 downto 0);
  signal c_23_16_1_False_resize: signed(26 downto 0);
  signal c_23_16_1_False_shift: signed(26 downto 0);
  signal c_23_3_0_False_resize: signed(26 downto 0);
  signal c_23_3_0_False_shift: signed(26 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_i0_resize: signed(25 downto 0);
  signal c_24_i1_resize: signed(25 downto 0);
  signal c_24_i0_shift: signed(25 downto 0);
  signal c_24_i1_shift: signed(25 downto 0);
  signal c_24_arith: signed(25 downto 0);
  signal c_24_oshift: signed(25 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(25 downto 0);
  signal c_25_resize: signed(25 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_resize: signed(25 downto 0);
  signal c_27: signed(24 downto 0);
  signal c_27_1_6_False_resize: signed(24 downto 0);
  signal c_27_1_6_False_shift: signed(24 downto 0);
  signal c_27_18_0_False_resize: signed(24 downto 0);
  signal c_27_18_0_False_shift: signed(24 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(24 downto 0);
  signal c_28_resize: signed(24 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_resize: signed(23 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_16_0_False_resize: signed(25 downto 0);
  signal c_30_16_0_False_shift: signed(25 downto 0);
  signal c_30_3_0_False_resize: signed(25 downto 0);
  signal c_30_3_0_False_shift: signed(25 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_resize: signed(25 downto 0);
  signal c_32: signed(24 downto 0);
  signal c_32_8_1_False_resize: signed(24 downto 0);
  signal c_32_8_1_False_shift: signed(24 downto 0);
  signal c_32_14_0_False_resize: signed(24 downto 0);
  signal c_32_14_0_False_shift: signed(24 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_resize: signed(25 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_34_8_1_False_resize: signed(25 downto 0);
  signal c_34_8_1_False_shift: signed(25 downto 0);
  signal c_34_10_0_False_resize: signed(25 downto 0);
  signal c_34_10_0_False_shift: signed(25 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_resize: signed(25 downto 0);
  signal c_36: signed(24 downto 0);
  signal c_36_16_0_False_resize: signed(24 downto 0);
  signal c_36_16_0_False_shift: signed(24 downto 0);
  signal c_36_3_0_False_resize: signed(24 downto 0);
  signal c_36_3_0_False_shift: signed(24 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(24 downto 0);
  signal c_37_resize: signed(24 downto 0);
  signal c_38: signed(24 downto 0);
  signal c_38_resize: signed(24 downto 0);
  signal c_39: signed(24 downto 0);
  signal c_39_18_0_False_resize: signed(24 downto 0);
  signal c_39_18_0_False_shift: signed(24 downto 0);
  signal c_39_10_0_False_resize: signed(24 downto 0);
  signal c_39_10_0_False_shift: signed(24 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(24 downto 0);
  signal c_40_resize: signed(24 downto 0);
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
      config_select_14 <= config_select;
      config_select_15 <= config_select;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 25
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_25);
    end if;
  end process;
  -- output node 1 with id 26
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_26);
    end if;
  end process;
  -- output node 2 with id 28
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_28);
    end if;
  end process;
  -- output node 3 with id 29
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_29);
    end if;
  end process;
  -- output node 4 with id 31
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_31);
    end if;
  end process;
  -- output node 5 with id 33
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_33);
    end if;
  end process;
  -- output node 6 with id 35
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_35);
    end if;
  end process;
  -- output node 7 with id 37
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_37);
    end if;
  end process;
  -- output node 8 with id 38
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_38);
    end if;
  end process;
  -- output node 9 with id 40
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_40);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 1 and associated fundamentals [[-7], [-7]]
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
      s_x_i => 0,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  c_1 <= c_1_oshift(18 downto 0);
  -- node of type 'mux' in stage 2 with id 2 and associated fundamentals [[-28], [-7]]
  c_2_1_2_False_resize <= resize(c_1, 21);
  c_2_1_2_False_shift <= shift_left(c_2_1_2_False_resize, 2);
  c_2_1_0_False_resize <= resize(c_1, 21);
  c_2_1_0_False_shift <= shift_left(c_2_1_0_False_resize, 0);
  with config_select_2 select c_2_sel <= 
    "0" when "0",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_1_2_False_shift when "0",
    c_2_1_0_False_shift when others;
  -- node of type 'add' in stage 3 with id 3 and associated fundamentals [[-55], [-13]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 21,
      w_o => 22,
      s_x_i => 0,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_0,
      y_i => c_2,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(21 downto 0);
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[2], [-7]]
  c_4_0_1_False_resize <= resize(c_0, 19);
  c_4_0_1_False_shift <= shift_left(c_4_0_1_False_resize, 1);
  c_4_1_0_False_resize <= c_1;
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  with config_select_2 select c_4_sel <= 
    "0" when "0",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_0_1_False_shift when "0",
    c_4_1_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 5 and associated fundamentals [[-55], [-112]]
  c_5_1_4_False_resize <= resize(c_1, 23);
  c_5_1_4_False_shift <= shift_left(c_5_1_4_False_resize, 4);
  c_5_3_0_False_resize <= resize(c_3, 23);
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  with config_select_4 select c_5_sel <= 
    "0" when "1",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_1_4_False_shift when "0",
    c_5_3_0_False_shift when others;
  -- node of type 'add' in stage 5 with id 6 and associated fundamentals [[-53], [-119]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 23,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(22 downto 0);
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[4], [1]]
  c_7_0_0_False_resize <= resize(c_0, 18);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  c_7_0_2_False_resize <= resize(c_0, 18);
  c_7_0_2_False_shift <= shift_left(c_7_0_2_False_resize, 2);
  with config_select_1 select c_7_sel <= 
    "0" when "1",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_0_0_False_shift when "0",
    c_7_0_2_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 8 and associated fundamentals [[-85], [-111]]
  with config_select_6 select c_8_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 18,
      w_o => 23,
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
      sub_i => c_8_sub_sel,
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(22 downto 0);
  -- node of type 'mux' in stage 7 with id 9 and associated fundamentals [[-85], [32]]
  c_9_8_0_False_resize <= c_8;
  c_9_8_0_False_shift <= shift_left(c_9_8_0_False_resize, 0);
  c_9_0_5_False_resize <= resize(c_0, 23);
  c_9_0_5_False_shift <= shift_left(c_9_0_5_False_resize, 5);
  with config_select_7 select c_9_sel <= 
    "0" when "0",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_8_0_False_shift when "0",
    c_9_0_5_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 10 and associated fundamentals [[-765], [-367]]
  with config_select_8 select c_10_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 26,
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
      sub_i => c_10_sub_sel,
      x_i => c_8,
      y_i => c_9,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(25 downto 0);
  -- node of type 'mux' in stage 7 with id 11 and associated fundamentals [[-220], [-111]]
  c_11_3_2_False_resize <= resize(c_3, 24);
  c_11_3_2_False_shift <= shift_left(c_11_3_2_False_resize, 2);
  c_11_8_0_False_resize <= resize(c_8, 24);
  c_11_8_0_False_shift <= shift_left(c_11_8_0_False_resize, 0);
  with config_select_7 select c_11_sel <= 
    "0" when "0",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_3_2_False_shift when "0",
    c_11_8_0_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 12 and associated fundamentals [[-442], [-229]]
  with config_select_8 select c_12_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 19,
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
      sub_i => c_12_sub_sel,
      x_i => c_11,
      y_i => c_4,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(24 downto 0);
  -- node of type 'mux' in stage 4 with id 13 and associated fundamentals [[-56], [-13]]
  c_13_1_3_False_resize <= resize(c_1, 22);
  c_13_1_3_False_shift <= shift_left(c_13_1_3_False_resize, 3);
  c_13_3_0_False_resize <= c_3;
  c_13_3_0_False_shift <= shift_left(c_13_3_0_False_resize, 0);
  with config_select_4 select c_13_sel <= 
    "0" when "0",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_1_3_False_shift when "0",
    c_13_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 9 with id 14 and associated fundamentals [[-317], [-471]]
  with config_select_9 select c_14_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 22,
      w_o => 25,
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
      sub_i => c_14_sub_sel,
      x_i => c_10,
      y_i => c_13,
      z_o => c_14_oshift
    );
  c_14 <= c_14_oshift(24 downto 0);
  -- node of type 'mux' in stage 10 with id 15 and associated fundamentals [[-317], [-896]]
  c_15_14_0_False_resize <= resize(c_14, 26);
  c_15_14_0_False_shift <= shift_left(c_15_14_0_False_resize, 0);
  c_15_1_7_False_resize <= resize(c_1, 26);
  c_15_1_7_False_shift <= shift_left(c_15_1_7_False_resize, 7);
  with config_select_10 select c_15_sel <= 
    "0" when "0",
    "1" when others;
  with c_15_sel select c_15 <=
    c_15_14_0_False_shift when "0",
    c_15_1_7_False_shift when others;
  -- node of type 'sub' in stage 11 with id 16 and associated fundamentals [[-321], [-900]]
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 16,
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
      y_i => c_0,
      z_o => c_16_oshift
    );
  c_16 <= c_16_oshift(25 downto 0);
  -- node of type 'mux' in stage 7 with id 17 and associated fundamentals [[-85], [4]]
  c_17_8_0_False_resize <= c_8;
  c_17_8_0_False_shift <= shift_left(c_17_8_0_False_resize, 0);
  c_17_0_2_False_resize <= resize(c_0, 23);
  c_17_0_2_False_shift <= shift_left(c_17_0_2_False_resize, 2);
  with config_select_7 select c_17_sel <= 
    "0" when "0",
    "1" when others;
  with c_17_sel select c_17 <=
    c_17_8_0_False_shift when "0",
    c_17_0_2_False_shift when others;
  -- node of type 'sub' in stage 10 with id 18 and associated fundamentals [[-147], [-479]]
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_14,
      y_i => c_17,
      z_o => c_18_oshift
    );
  c_18 <= c_18_oshift(24 downto 0);
  -- node of type 'mux' in stage 7 with id 19 and associated fundamentals [[-85], [-224]]
  c_19_1_5_False_resize <= resize(c_1, 24);
  c_19_1_5_False_shift <= shift_left(c_19_1_5_False_resize, 5);
  c_19_8_0_False_resize <= resize(c_8, 24);
  c_19_8_0_False_shift <= shift_left(c_19_8_0_False_resize, 0);
  with config_select_7 select c_19_sel <= 
    "0" when "1",
    "1" when others;
  with c_19_sel select c_19 <=
    c_19_1_5_False_shift when "0",
    c_19_8_0_False_shift when others;
  -- node of type 'mux' in stage 7 with id 20 and associated fundamentals [[-110], [-111]]
  c_20_8_0_False_resize <= c_8;
  c_20_8_0_False_shift <= shift_left(c_20_8_0_False_resize, 0);
  c_20_3_1_False_resize <= resize(c_3, 23);
  c_20_3_1_False_shift <= shift_left(c_20_3_1_False_resize, 1);
  with config_select_7 select c_20_sel <= 
    "0" when "1",
    "1" when others;
  with c_20_sel select c_20 <=
    c_20_8_0_False_shift when "0",
    c_20_3_1_False_shift when others;
  -- node of type 'add' in stage 8 with id 21 and associated fundamentals [[-525], [-668]]
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
      w_o => 26,
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
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  c_21 <= c_21_oshift(25 downto 0);
  -- node of type 'mux' in stage 11 with id 22 and associated fundamentals [[256], [-479]]
  c_22_0_8_False_resize <= resize(c_0, 25);
  c_22_0_8_False_shift <= shift_left(c_22_0_8_False_resize, 8);
  c_22_18_0_False_resize <= c_18;
  c_22_18_0_False_shift <= shift_left(c_22_18_0_False_resize, 0);
  with config_select_11 select c_22_sel <= 
    "0" when "0",
    "1" when others;
  with c_22_sel select c_22 <=
    c_22_0_8_False_shift when "0",
    c_22_18_0_False_shift when others;
  -- node of type 'mux' in stage 12 with id 23 and associated fundamentals [[-55], [-1800]]
  c_23_16_1_False_resize <= resize(c_16, 27);
  c_23_16_1_False_shift <= shift_left(c_23_16_1_False_resize, 1);
  c_23_3_0_False_resize <= resize(c_3, 27);
  c_23_3_0_False_shift <= shift_left(c_23_3_0_False_resize, 0);
  with config_select_12 select c_23_sel <= 
    "0" when "1",
    "1" when others;
  with c_23_sel select c_23 <=
    c_23_16_1_False_shift when "0",
    c_23_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 13 with id 24 and associated fundamentals [[457], [842]]
  with config_select_13 select c_24_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 27,
      w_o => 26,
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
      sub_i => c_24_sub_sel,
      x_i => c_22,
      y_i => c_23,
      z_o => c_24_oshift
    );
  c_24 <= c_24_oshift(25 downto 0);
  -- node of type 'output' in stage 8 with id 25 and associated fundamentals [[525], [668]]
  c_25_resize <= c_21;
  c_25 <= -shift_left(c_25_resize, 0);
  -- node of type 'output' in stage 13 with id 26 and associated fundamentals [[457], [842]]
  c_26_resize <= c_24;
  c_26 <= shift_left(c_26_resize, 0);
  -- node of type 'mux' in stage 11 with id 27 and associated fundamentals [[-448], [-479]]
  c_27_1_6_False_resize <= resize(c_1, 25);
  c_27_1_6_False_shift <= shift_left(c_27_1_6_False_resize, 6);
  c_27_18_0_False_resize <= c_18;
  c_27_18_0_False_shift <= shift_left(c_27_18_0_False_resize, 0);
  with config_select_11 select c_27_sel <= 
    "0" when "0",
    "1" when others;
  with c_27_sel select c_27 <=
    c_27_1_6_False_shift when "0",
    c_27_18_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 28 and associated fundamentals [[448], [479]]
  c_28_resize <= c_27;
  c_28 <= -shift_left(c_28_resize, 0);
  -- node of type 'output' in stage 5 with id 29 and associated fundamentals [[106], [238]]
  c_29_resize <= resize(c_6, 24);
  c_29 <= -shift_left(c_29_resize, 1);
  -- node of type 'mux' in stage 12 with id 30 and associated fundamentals [[-55], [-900]]
  c_30_16_0_False_resize <= c_16;
  c_30_16_0_False_shift <= shift_left(c_30_16_0_False_resize, 0);
  c_30_3_0_False_resize <= resize(c_3, 26);
  c_30_3_0_False_shift <= shift_left(c_30_3_0_False_resize, 0);
  with config_select_12 select c_30_sel <= 
    "0" when "1",
    "1" when others;
  with c_30_sel select c_30 <=
    c_30_16_0_False_shift when "0",
    c_30_3_0_False_shift when others;
  -- node of type 'output' in stage 12 with id 31 and associated fundamentals [[55], [900]]
  c_31_resize <= c_30;
  c_31 <= -shift_left(c_31_resize, 0);
  -- node of type 'mux' in stage 10 with id 32 and associated fundamentals [[-170], [-471]]
  c_32_8_1_False_resize <= resize(c_8, 25);
  c_32_8_1_False_shift <= shift_left(c_32_8_1_False_resize, 1);
  c_32_14_0_False_resize <= c_14;
  c_32_14_0_False_shift <= shift_left(c_32_14_0_False_resize, 0);
  with config_select_10 select c_32_sel <= 
    "0" when "0",
    "1" when others;
  with c_32_sel select c_32 <=
    c_32_8_1_False_shift when "0",
    c_32_14_0_False_shift when others;
  -- node of type 'output' in stage 10 with id 33 and associated fundamentals [[340], [942]]
  c_33_resize <= resize(c_32, 26);
  c_33 <= -shift_left(c_33_resize, 1);
  -- node of type 'mux' in stage 9 with id 34 and associated fundamentals [[-765], [-222]]
  c_34_8_1_False_resize <= resize(c_8, 26);
  c_34_8_1_False_shift <= shift_left(c_34_8_1_False_resize, 1);
  c_34_10_0_False_resize <= c_10;
  c_34_10_0_False_shift <= shift_left(c_34_10_0_False_resize, 0);
  with config_select_9 select c_34_sel <= 
    "0" when "1",
    "1" when others;
  with c_34_sel select c_34 <=
    c_34_8_1_False_shift when "0",
    c_34_10_0_False_shift when others;
  -- node of type 'output' in stage 9 with id 35 and associated fundamentals [[765], [222]]
  c_35_resize <= c_34;
  c_35 <= -shift_left(c_35_resize, 0);
  -- node of type 'mux' in stage 12 with id 36 and associated fundamentals [[-321], [-13]]
  c_36_16_0_False_resize <= c_16(24 downto 0);
  c_36_16_0_False_shift <= shift_left(c_36_16_0_False_resize, 0);
  c_36_3_0_False_resize <= resize(c_3, 25);
  c_36_3_0_False_shift <= shift_left(c_36_3_0_False_resize, 0);
  with config_select_12 select c_36_sel <= 
    "0" when "0",
    "1" when others;
  with c_36_sel select c_36 <=
    c_36_16_0_False_shift when "0",
    c_36_3_0_False_shift when others;
  -- node of type 'output' in stage 12 with id 37 and associated fundamentals [[321], [13]]
  c_37_resize <= c_36;
  c_37 <= -shift_left(c_37_resize, 0);
  -- node of type 'output' in stage 8 with id 38 and associated fundamentals [[442], [229]]
  c_38_resize <= c_12;
  c_38 <= -shift_left(c_38_resize, 0);
  -- node of type 'mux' in stage 11 with id 39 and associated fundamentals [[-147], [-367]]
  c_39_18_0_False_resize <= c_18;
  c_39_18_0_False_shift <= shift_left(c_39_18_0_False_resize, 0);
  c_39_10_0_False_resize <= c_10(24 downto 0);
  c_39_10_0_False_shift <= shift_left(c_39_10_0_False_resize, 0);
  with config_select_11 select c_39_sel <= 
    "0" when "0",
    "1" when others;
  with c_39_sel select c_39 <=
    c_39_18_0_False_shift when "0",
    c_39_10_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 40 and associated fundamentals [[147], [367]]
  c_40_resize <= c_39;
  c_40 <= -shift_left(c_40_resize, 0);
end architecture;
