library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(23 downto 0);
    y_5: out std_logic_vector(21 downto 0);
    y_6: out std_logic_vector(23 downto 0);
    y_7: out std_logic_vector(23 downto 0);
    y_8: out std_logic_vector(23 downto 0);
    y_9: out std_logic_vector(23 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(18 downto 0);
  signal c_2_i0_resize: signed(18 downto 0);
  signal c_2_i1_resize: signed(18 downto 0);
  signal c_2_i0_shift: signed(18 downto 0);
  signal c_2_i1_shift: signed(18 downto 0);
  signal c_2_arith: signed(18 downto 0);
  signal c_2_oshift: signed(18 downto 0);
  signal c_3: signed(18 downto 0);
  signal c_3_i0_resize: signed(18 downto 0);
  signal c_3_i1_resize: signed(18 downto 0);
  signal c_3_i0_shift: signed(18 downto 0);
  signal c_3_i1_shift: signed(18 downto 0);
  signal c_3_arith: signed(18 downto 0);
  signal c_3_oshift: signed(18 downto 0);
  signal c_4: signed(19 downto 0);
  signal c_4_i0_resize: signed(19 downto 0);
  signal c_4_i1_resize: signed(19 downto 0);
  signal c_4_i0_shift: signed(19 downto 0);
  signal c_4_i1_shift: signed(19 downto 0);
  signal c_4_arith: signed(19 downto 0);
  signal c_4_oshift: signed(19 downto 0);
  signal c_5: signed(18 downto 0);
  signal c_5_1_2_False_resize: signed(18 downto 0);
  signal c_5_1_2_False_shift: signed(18 downto 0);
  signal c_5_2_0_False_resize: signed(18 downto 0);
  signal c_5_2_0_False_shift: signed(18 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(18 downto 0);
  signal c_6_2_0_False_resize: signed(18 downto 0);
  signal c_6_2_0_False_shift: signed(18 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(21 downto 0);
  signal c_7_i0_resize: signed(21 downto 0);
  signal c_7_i1_resize: signed(21 downto 0);
  signal c_7_i0_shift: signed(21 downto 0);
  signal c_7_i1_shift: signed(21 downto 0);
  signal c_7_arith: signed(21 downto 0);
  signal c_7_oshift: signed(21 downto 0);
  signal c_8: signed(15 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_1_8_False_resize: signed(23 downto 0);
  signal c_9_1_8_False_shift: signed(23 downto 0);
  signal c_9_2_0_False_resize: signed(23 downto 0);
  signal c_9_2_0_False_shift: signed(23 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_i0_resize: signed(23 downto 0);
  signal c_10_i1_resize: signed(23 downto 0);
  signal c_10_i0_shift: signed(23 downto 0);
  signal c_10_i1_shift: signed(23 downto 0);
  signal c_10_arith: signed(23 downto 0);
  signal c_10_oshift: signed(23 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(22 downto 0);
  signal c_11_1_0_False_resize: signed(22 downto 0);
  signal c_11_1_0_False_shift: signed(22 downto 0);
  signal c_11_1_7_False_resize: signed(22 downto 0);
  signal c_11_1_7_False_shift: signed(22 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(20 downto 0);
  signal c_12_2_2_False_resize: signed(20 downto 0);
  signal c_12_2_2_False_shift: signed(20 downto 0);
  signal c_12_3_0_False_resize: signed(20 downto 0);
  signal c_12_3_0_False_shift: signed(20 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(18 downto 0);
  signal c_15: signed(20 downto 0);
  signal c_15_4_1_False_resize: signed(20 downto 0);
  signal c_15_4_1_False_shift: signed(20 downto 0);
  signal c_15_2_0_False_resize: signed(20 downto 0);
  signal c_15_2_0_False_shift: signed(20 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_i0_resize: signed(23 downto 0);
  signal c_16_i1_resize: signed(23 downto 0);
  signal c_16_i0_shift: signed(23 downto 0);
  signal c_16_i1_shift: signed(23 downto 0);
  signal c_16_arith: signed(23 downto 0);
  signal c_16_oshift: signed(23 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(18 downto 0);
  signal c_17_1_0_False_resize: signed(18 downto 0);
  signal c_17_1_0_False_shift: signed(18 downto 0);
  signal c_17_3_0_False_resize: signed(18 downto 0);
  signal c_17_3_0_False_shift: signed(18 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(16 downto 0);
  signal c_18_1_1_False_resize: signed(16 downto 0);
  signal c_18_1_1_False_shift: signed(16 downto 0);
  signal c_18_1_0_False_resize: signed(16 downto 0);
  signal c_18_1_0_False_shift: signed(16 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_i0_resize: signed(23 downto 0);
  signal c_19_i1_resize: signed(23 downto 0);
  signal c_19_i0_shift: signed(23 downto 0);
  signal c_19_i1_shift: signed(23 downto 0);
  signal c_19_arith: signed(23 downto 0);
  signal c_19_oshift: signed(23 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(20 downto 0);
  signal c_20_2_2_False_resize: signed(20 downto 0);
  signal c_20_2_2_False_shift: signed(20 downto 0);
  signal c_20_3_0_False_resize: signed(20 downto 0);
  signal c_20_3_0_False_shift: signed(20 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(19 downto 0);
  signal c_21_2_1_False_resize: signed(19 downto 0);
  signal c_21_2_1_False_shift: signed(19 downto 0);
  signal c_21_2_0_False_resize: signed(19 downto 0);
  signal c_21_2_0_False_shift: signed(19 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_i0_resize: signed(23 downto 0);
  signal c_22_i1_resize: signed(23 downto 0);
  signal c_22_i0_shift: signed(23 downto 0);
  signal c_22_i1_shift: signed(23 downto 0);
  signal c_22_arith: signed(23 downto 0);
  signal c_22_oshift: signed(23 downto 0);
  signal c_23: signed(18 downto 0);
  signal c_23_1_2_False_resize: signed(18 downto 0);
  signal c_23_1_2_False_shift: signed(18 downto 0);
  signal c_23_2_0_False_resize: signed(18 downto 0);
  signal c_23_2_0_False_shift: signed(18 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(19 downto 0);
  signal c_24_4_0_False_resize: signed(19 downto 0);
  signal c_24_4_0_False_shift: signed(19 downto 0);
  signal c_24_2_0_False_resize: signed(19 downto 0);
  signal c_24_2_0_False_shift: signed(19 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_i0_resize: signed(23 downto 0);
  signal c_25_i1_resize: signed(23 downto 0);
  signal c_25_i0_shift: signed(23 downto 0);
  signal c_25_i1_shift: signed(23 downto 0);
  signal c_25_arith: signed(23 downto 0);
  signal c_25_oshift: signed(23 downto 0);
  signal c_26: signed(20 downto 0);
  signal c_26_4_1_False_resize: signed(20 downto 0);
  signal c_26_4_1_False_shift: signed(20 downto 0);
  signal c_26_3_0_False_resize: signed(20 downto 0);
  signal c_26_3_0_False_shift: signed(20 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_i0_resize: signed(23 downto 0);
  signal c_27_i1_resize: signed(23 downto 0);
  signal c_27_i0_shift: signed(23 downto 0);
  signal c_27_i1_shift: signed(23 downto 0);
  signal c_27_arith: signed(23 downto 0);
  signal c_27_oshift: signed(23 downto 0);
  signal c_28: signed(21 downto 0);
  signal c_28_2_3_False_resize: signed(21 downto 0);
  signal c_28_2_3_False_shift: signed(21 downto 0);
  signal c_28_2_0_False_resize: signed(21 downto 0);
  signal c_28_2_0_False_shift: signed(21 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(19 downto 0);
  signal c_29_4_0_False_resize: signed(19 downto 0);
  signal c_29_4_0_False_shift: signed(19 downto 0);
  signal c_29_1_0_False_resize: signed(19 downto 0);
  signal c_29_1_0_False_shift: signed(19 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_i0_resize: signed(23 downto 0);
  signal c_30_i1_resize: signed(23 downto 0);
  signal c_30_i0_shift: signed(23 downto 0);
  signal c_30_i1_shift: signed(23 downto 0);
  signal c_30_arith: signed(23 downto 0);
  signal c_30_oshift: signed(23 downto 0);
  signal c_31: signed(19 downto 0);
  signal c_31_4_0_False_resize: signed(19 downto 0);
  signal c_31_4_0_False_shift: signed(19 downto 0);
  signal c_31_2_1_False_resize: signed(19 downto 0);
  signal c_31_2_1_False_shift: signed(19 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_32_i0_resize: signed(23 downto 0);
  signal c_32_i1_resize: signed(23 downto 0);
  signal c_32_i0_shift: signed(23 downto 0);
  signal c_32_i1_shift: signed(23 downto 0);
  signal c_32_arith: signed(23 downto 0);
  signal c_32_oshift: signed(23 downto 0);
  signal c_32_sub_sel: std_logic;
  signal c_33: signed(23 downto 0);
  signal c_33_resize: signed(23 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_resize: signed(23 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_resize: signed(23 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_resize: signed(23 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_resize: signed(23 downto 0);
  signal c_38: signed(21 downto 0);
  signal c_38_resize: signed(21 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_resize: signed(23 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_resize: signed(23 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_resize: signed(23 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_resize: signed(23 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 33
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_33);
    end if;
  end process;
  -- output node 1 with id 34
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_34);
    end if;
  end process;
  -- output node 2 with id 35
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_35);
    end if;
  end process;
  -- output node 3 with id 36
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_36);
    end if;
  end process;
  -- output node 4 with id 37
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_37);
    end if;
  end process;
  -- output node 5 with id 38
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_38);
    end if;
  end process;
  -- output node 6 with id 39
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_39);
    end if;
  end process;
  -- output node 7 with id 40
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_40);
    end if;
  end process;
  -- output node 8 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 9 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_42);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1]]
  c_1 <= c_0 & "";
  -- node of type 'add' in stage 1 with id 2 and associated fundamentals [[5], [5]]
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(18 downto 0);
  -- node of type 'sub' in stage 1 with id 3 and associated fundamentals [[7], [7]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
      s_x_i => 3,
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
      y_i => c_0,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(18 downto 0);
  -- node of type 'sub' in stage 1 with id 4 and associated fundamentals [[15], [15]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
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
      y_i => c_0,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(19 downto 0);
  -- node of type 'mux' in stage 2 with id 5 and associated fundamentals [[4], [5]]
  c_5_1_2_False_resize <= resize(c_1, 19);
  c_5_1_2_False_shift <= shift_left(c_5_1_2_False_resize, 2);
  c_5_2_0_False_resize <= c_2;
  c_5_2_0_False_shift <= shift_left(c_5_2_0_False_resize, 0);
  with config_select_2 select c_5_sel <= 
    "0" when "0",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_1_2_False_shift when "0",
    c_5_2_0_False_shift when others;
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[5], [0]]
  c_6_2_0_False_resize <= c_2;
  c_6_2_0_False_shift <= shift_left(c_6_2_0_False_resize, 0);
  with config_select_2 select c_6_sel <= 
    "0" when "0",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_2_0_False_shift when "0",
    to_signed(0, 19) when others;
  -- node of type 'add' in stage 3 with id 7 and associated fundamentals [[44], [5]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 22,
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
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(21 downto 0);
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[1], [1]]
  c_8 <= c_1 & "";
  -- node of type 'mux' in stage 2 with id 9 and associated fundamentals [[5], [256]]
  c_9_1_8_False_resize <= resize(c_1, 24);
  c_9_1_8_False_shift <= shift_left(c_9_1_8_False_resize, 8);
  c_9_2_0_False_resize <= resize(c_2, 24);
  c_9_2_0_False_shift <= shift_left(c_9_2_0_False_resize, 0);
  with config_select_2 select c_9_sel <= 
    "0" when "1",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_1_8_False_shift when "0",
    c_9_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 10 and associated fundamentals [[13], [248]]
  with config_select_3 select c_10_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 16,
      w_o => 24,
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
      x_i => c_9,
      y_i => c_8,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(23 downto 0);
  -- node of type 'mux' in stage 2 with id 11 and associated fundamentals [[128], [1]]
  c_11_1_0_False_resize <= resize(c_1, 23);
  c_11_1_0_False_shift <= shift_left(c_11_1_0_False_resize, 0);
  c_11_1_7_False_resize <= resize(c_1, 23);
  c_11_1_7_False_shift <= shift_left(c_11_1_7_False_resize, 7);
  with config_select_2 select c_11_sel <= 
    "0" when "1",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_1_0_False_shift when "0",
    c_11_1_7_False_shift when others;
  -- node of type 'mux' in stage 2 with id 12 and associated fundamentals [[7], [20]]
  c_12_2_2_False_resize <= resize(c_2, 21);
  c_12_2_2_False_shift <= shift_left(c_12_2_2_False_resize, 2);
  c_12_3_0_False_resize <= resize(c_3, 21);
  c_12_3_0_False_shift <= shift_left(c_12_3_0_False_resize, 0);
  with config_select_2 select c_12_sel <= 
    "0" when "1",
    "1" when others;
  with c_12_sel select c_12 <=
    c_12_2_2_False_shift when "0",
    c_12_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 13 and associated fundamentals [[200], [162]]
  with config_select_3 select c_13_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
      w_o => 24,
      s_x_i => 1,
      s_y_i => 3,
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
  c_13 <= c_13_oshift(23 downto 0);
  -- node of type 'register' in stage 2 with id 14 and associated fundamentals [[5], [5]]
  c_14 <= c_2 & "";
  -- node of type 'mux' in stage 2 with id 15 and associated fundamentals [[5], [30]]
  c_15_4_1_False_resize <= resize(c_4, 21);
  c_15_4_1_False_shift <= shift_left(c_15_4_1_False_resize, 1);
  c_15_2_0_False_resize <= resize(c_2, 21);
  c_15_2_0_False_shift <= shift_left(c_15_2_0_False_resize, 0);
  with config_select_2 select c_15_sel <= 
    "0" when "1",
    "1" when others;
  with c_15_sel select c_15 <=
    c_15_4_1_False_shift when "0",
    c_15_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 16 and associated fundamentals [[45], [235]]
  with config_select_3 select c_16_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 19,
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
      sub_i => c_16_sub_sel,
      x_i => c_15,
      y_i => c_14,
      z_o => c_16_oshift
    );
  c_16 <= c_16_oshift(23 downto 0);
  -- node of type 'mux' in stage 2 with id 17 and associated fundamentals [[1], [7]]
  c_17_1_0_False_resize <= resize(c_1, 19);
  c_17_1_0_False_shift <= shift_left(c_17_1_0_False_resize, 0);
  c_17_3_0_False_resize <= c_3;
  c_17_3_0_False_shift <= shift_left(c_17_3_0_False_resize, 0);
  with config_select_2 select c_17_sel <= 
    "0" when "0",
    "1" when others;
  with c_17_sel select c_17 <=
    c_17_1_0_False_shift when "0",
    c_17_3_0_False_shift when others;
  -- node of type 'mux' in stage 2 with id 18 and associated fundamentals [[2], [1]]
  c_18_1_1_False_resize <= resize(c_1, 17);
  c_18_1_1_False_shift <= shift_left(c_18_1_1_False_resize, 1);
  c_18_1_0_False_resize <= resize(c_1, 17);
  c_18_1_0_False_shift <= shift_left(c_18_1_0_False_resize, 0);
  with config_select_2 select c_18_sel <= 
    "0" when "0",
    "1" when others;
  with c_18_sel select c_18 <=
    c_18_1_1_False_shift when "0",
    c_18_1_0_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 19 and associated fundamentals [[130], [50]]
  with config_select_3 select c_19_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 19,
      w_o => 24,
      s_x_i => 6,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_19_sub_sel,
      x_i => c_18,
      y_i => c_17,
      z_o => c_19_oshift
    );
  c_19 <= c_19_oshift(23 downto 0);
  -- node of type 'mux' in stage 2 with id 20 and associated fundamentals [[20], [7]]
  c_20_2_2_False_resize <= resize(c_2, 21);
  c_20_2_2_False_shift <= shift_left(c_20_2_2_False_resize, 2);
  c_20_3_0_False_resize <= resize(c_3, 21);
  c_20_3_0_False_shift <= shift_left(c_20_3_0_False_resize, 0);
  with config_select_2 select c_20_sel <= 
    "0" when "0",
    "1" when others;
  with c_20_sel select c_20 <=
    c_20_2_2_False_shift when "0",
    c_20_3_0_False_shift when others;
  -- node of type 'mux' in stage 2 with id 21 and associated fundamentals [[10], [5]]
  c_21_2_1_False_resize <= resize(c_2, 20);
  c_21_2_1_False_shift <= shift_left(c_21_2_1_False_resize, 1);
  c_21_2_0_False_resize <= resize(c_2, 20);
  c_21_2_0_False_shift <= shift_left(c_21_2_0_False_resize, 0);
  with config_select_2 select c_21_sel <= 
    "0" when "0",
    "1" when others;
  with c_21_sel select c_21 <=
    c_21_2_1_False_shift when "0",
    c_21_2_0_False_shift when others;
  -- node of type 'sub' in stage 3 with id 22 and associated fundamentals [[150], [51]]
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 20,
      w_o => 24,
      s_x_i => 3,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_20,
      y_i => c_21,
      z_o => c_22_oshift
    );
  c_22 <= c_22_oshift(23 downto 0);
  -- node of type 'mux' in stage 2 with id 23 and associated fundamentals [[5], [4]]
  c_23_1_2_False_resize <= resize(c_1, 19);
  c_23_1_2_False_shift <= shift_left(c_23_1_2_False_resize, 2);
  c_23_2_0_False_resize <= c_2;
  c_23_2_0_False_shift <= shift_left(c_23_2_0_False_resize, 0);
  with config_select_2 select c_23_sel <= 
    "0" when "1",
    "1" when others;
  with c_23_sel select c_23 <=
    c_23_1_2_False_shift when "0",
    c_23_2_0_False_shift when others;
  -- node of type 'mux' in stage 2 with id 24 and associated fundamentals [[5], [15]]
  c_24_4_0_False_resize <= c_4;
  c_24_4_0_False_shift <= shift_left(c_24_4_0_False_resize, 0);
  c_24_2_0_False_resize <= resize(c_2, 20);
  c_24_2_0_False_shift <= shift_left(c_24_2_0_False_resize, 0);
  with config_select_2 select c_24_sel <= 
    "0" when "1",
    "1" when others;
  with c_24_sel select c_24 <=
    c_24_4_0_False_shift when "0",
    c_24_2_0_False_shift when others;
  -- node of type 'add' in stage 3 with id 25 and associated fundamentals [[85], [244]]
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 20,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_23,
      y_i => c_24,
      z_o => c_25_oshift
    );
  c_25 <= c_25_oshift(23 downto 0);
  -- node of type 'mux' in stage 2 with id 26 and associated fundamentals [[7], [30]]
  c_26_4_1_False_resize <= resize(c_4, 21);
  c_26_4_1_False_shift <= shift_left(c_26_4_1_False_resize, 1);
  c_26_3_0_False_resize <= resize(c_3, 21);
  c_26_3_0_False_shift <= shift_left(c_26_3_0_False_resize, 0);
  with config_select_2 select c_26_sel <= 
    "0" when "1",
    "1" when others;
  with c_26_sel select c_26 <=
    c_26_4_1_False_shift when "0",
    c_26_3_0_False_shift when others;
  -- node of type 'sub' in stage 3 with id 27 and associated fundamentals [[153], [98]]
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 21,
      w_o => 24,
      s_x_i => 5,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_23,
      y_i => c_26,
      z_o => c_27_oshift
    );
  c_27 <= c_27_oshift(23 downto 0);
  -- node of type 'mux' in stage 2 with id 28 and associated fundamentals [[40], [5]]
  c_28_2_3_False_resize <= resize(c_2, 22);
  c_28_2_3_False_shift <= shift_left(c_28_2_3_False_resize, 3);
  c_28_2_0_False_resize <= resize(c_2, 22);
  c_28_2_0_False_shift <= shift_left(c_28_2_0_False_resize, 0);
  with config_select_2 select c_28_sel <= 
    "0" when "0",
    "1" when others;
  with c_28_sel select c_28 <=
    c_28_2_3_False_shift when "0",
    c_28_2_0_False_shift when others;
  -- node of type 'mux' in stage 2 with id 29 and associated fundamentals [[15], [1]]
  c_29_4_0_False_resize <= c_4;
  c_29_4_0_False_shift <= shift_left(c_29_4_0_False_resize, 0);
  c_29_1_0_False_resize <= resize(c_1, 20);
  c_29_1_0_False_shift <= shift_left(c_29_1_0_False_resize, 0);
  with config_select_2 select c_29_sel <= 
    "0" when "0",
    "1" when others;
  with c_29_sel select c_29 <=
    c_29_4_0_False_shift when "0",
    c_29_1_0_False_shift when others;
  -- node of type 'add' in stage 3 with id 30 and associated fundamentals [[175], [21]]
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
      w_o => 24,
      s_x_i => 2,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_28,
      y_i => c_29,
      z_o => c_30_oshift
    );
  c_30 <= c_30_oshift(23 downto 0);
  -- node of type 'mux' in stage 2 with id 31 and associated fundamentals [[15], [10]]
  c_31_4_0_False_resize <= c_4;
  c_31_4_0_False_shift <= shift_left(c_31_4_0_False_resize, 0);
  c_31_2_1_False_resize <= resize(c_2, 20);
  c_31_2_1_False_shift <= shift_left(c_31_2_1_False_resize, 1);
  with config_select_2 select c_31_sel <= 
    "0" when "0",
    "1" when others;
  with c_31_sel select c_31 <=
    c_31_4_0_False_shift when "0",
    c_31_2_1_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 32 and associated fundamentals [[239], [161]]
  with config_select_3 select c_32_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_32: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 16,
      w_o => 24,
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
      sub_i => c_32_sub_sel,
      x_i => c_31,
      y_i => c_8,
      z_o => c_32_oshift
    );
  c_32 <= c_32_oshift(23 downto 0);
  -- node of type 'output' in stage 3 with id 33 and associated fundamentals [[153], [98]]
  c_33_resize <= c_27;
  c_33 <= shift_left(c_33_resize, 0);
  -- node of type 'output' in stage 3 with id 34 and associated fundamentals [[150], [51]]
  c_34_resize <= c_22;
  c_34 <= shift_left(c_34_resize, 0);
  -- node of type 'output' in stage 3 with id 35 and associated fundamentals [[175], [21]]
  c_35_resize <= c_30;
  c_35 <= shift_left(c_35_resize, 0);
  -- node of type 'output' in stage 3 with id 36 and associated fundamentals [[85], [244]]
  c_36_resize <= c_25;
  c_36 <= shift_left(c_36_resize, 0);
  -- node of type 'output' in stage 3 with id 37 and associated fundamentals [[13], [248]]
  c_37_resize <= c_10;
  c_37 <= shift_left(c_37_resize, 0);
  -- node of type 'output' in stage 3 with id 38 and associated fundamentals [[44], [5]]
  c_38_resize <= c_7;
  c_38 <= shift_left(c_38_resize, 0);
  -- node of type 'output' in stage 3 with id 39 and associated fundamentals [[45], [235]]
  c_39_resize <= c_16;
  c_39 <= shift_left(c_39_resize, 0);
  -- node of type 'output' in stage 3 with id 40 and associated fundamentals [[239], [161]]
  c_40_resize <= c_32;
  c_40 <= shift_left(c_40_resize, 0);
  -- node of type 'output' in stage 3 with id 41 and associated fundamentals [[130], [50]]
  c_41_resize <= c_19;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'output' in stage 3 with id 42 and associated fundamentals [[200], [162]]
  c_42_resize <= c_13;
  c_42 <= shift_left(c_42_resize, 0);
end architecture;
