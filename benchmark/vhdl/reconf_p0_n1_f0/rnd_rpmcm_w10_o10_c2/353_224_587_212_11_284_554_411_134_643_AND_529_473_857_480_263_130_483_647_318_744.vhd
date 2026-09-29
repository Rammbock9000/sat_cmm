library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(24 downto 0);
    y_2: out std_logic_vector(25 downto 0);
    y_3: out std_logic_vector(24 downto 0);
    y_4: out std_logic_vector(24 downto 0);
    y_5: out std_logic_vector(24 downto 0);
    y_6: out std_logic_vector(25 downto 0);
    y_7: out std_logic_vector(25 downto 0);
    y_8: out std_logic_vector(24 downto 0);
    y_9: out std_logic_vector(25 downto 0);
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
  signal config_select_16: std_logic_vector(0 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_i0_resize: signed(17 downto 0);
  signal c_1_i1_resize: signed(17 downto 0);
  signal c_1_i0_shift: signed(17 downto 0);
  signal c_1_i1_shift: signed(17 downto 0);
  signal c_1_arith: signed(17 downto 0);
  signal c_1_oshift: signed(17 downto 0);
  signal c_2: signed(24 downto 0);
  signal c_2_1_7_False_resize: signed(24 downto 0);
  signal c_2_1_7_False_shift: signed(24 downto 0);
  signal c_2_0_0_False_resize: signed(24 downto 0);
  signal c_2_0_0_False_shift: signed(24 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_1_0_False_resize: signed(19 downto 0);
  signal c_3_1_0_False_shift: signed(19 downto 0);
  signal c_3_0_4_False_resize: signed(19 downto 0);
  signal c_3_0_4_False_shift: signed(19 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(24 downto 0);
  signal c_4_i0_resize: signed(24 downto 0);
  signal c_4_i1_resize: signed(24 downto 0);
  signal c_4_i0_shift: signed(24 downto 0);
  signal c_4_i1_shift: signed(24 downto 0);
  signal c_4_arith: signed(24 downto 0);
  signal c_4_oshift: signed(24 downto 0);
  signal c_5: signed(16 downto 0);
  signal c_5_0_1_False_resize: signed(16 downto 0);
  signal c_5_0_1_False_shift: signed(16 downto 0);
  signal c_5_0_0_False_resize: signed(16 downto 0);
  signal c_5_0_0_False_shift: signed(16 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(24 downto 0);
  signal c_6_i0_resize: signed(24 downto 0);
  signal c_6_i1_resize: signed(24 downto 0);
  signal c_6_i0_shift: signed(24 downto 0);
  signal c_6_i1_shift: signed(24 downto 0);
  signal c_6_arith: signed(24 downto 0);
  signal c_6_oshift: signed(24 downto 0);
  signal c_7: signed(17 downto 0);
  signal c_7_0_0_False_resize: signed(17 downto 0);
  signal c_7_0_0_False_shift: signed(17 downto 0);
  signal c_7_1_0_False_resize: signed(17 downto 0);
  signal c_7_1_0_False_shift: signed(17 downto 0);
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
  signal c_9_0_2_False_resize: signed(23 downto 0);
  signal c_9_0_2_False_shift: signed(23 downto 0);
  signal c_9_8_0_False_resize: signed(23 downto 0);
  signal c_9_8_0_False_shift: signed(23 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(24 downto 0);
  signal c_10_i0_resize: signed(24 downto 0);
  signal c_10_i1_resize: signed(24 downto 0);
  signal c_10_i0_shift: signed(24 downto 0);
  signal c_10_i1_shift: signed(24 downto 0);
  signal c_10_arith: signed(24 downto 0);
  signal c_10_oshift: signed(24 downto 0);
  signal c_11: signed(21 downto 0);
  signal c_11_0_0_False_resize: signed(21 downto 0);
  signal c_11_0_0_False_shift: signed(21 downto 0);
  signal c_11_0_6_False_resize: signed(21 downto 0);
  signal c_11_0_6_False_shift: signed(21 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(21 downto 0);
  signal c_12_1_4_False_resize: signed(21 downto 0);
  signal c_12_1_4_False_shift: signed(21 downto 0);
  signal c_12_10_0_False_resize: signed(21 downto 0);
  signal c_12_10_0_False_shift: signed(21 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_13_i0_resize: signed(21 downto 0);
  signal c_13_i1_resize: signed(21 downto 0);
  signal c_13_i0_shift: signed(21 downto 0);
  signal c_13_i1_shift: signed(21 downto 0);
  signal c_13_arith: signed(21 downto 0);
  signal c_13_oshift: signed(21 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(23 downto 0);
  signal c_14_4_0_False_resize: signed(23 downto 0);
  signal c_14_4_0_False_shift: signed(23 downto 0);
  signal c_14_13_2_False_resize: signed(23 downto 0);
  signal c_14_13_2_False_shift: signed(23 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(24 downto 0);
  signal c_15_i0_resize: signed(24 downto 0);
  signal c_15_i1_resize: signed(24 downto 0);
  signal c_15_i0_shift: signed(24 downto 0);
  signal c_15_i1_shift: signed(24 downto 0);
  signal c_15_arith: signed(24 downto 0);
  signal c_15_oshift: signed(24 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(22 downto 0);
  signal c_16_1_0_False_resize: signed(22 downto 0);
  signal c_16_1_0_False_shift: signed(22 downto 0);
  signal c_16_15_0_False_resize: signed(22 downto 0);
  signal c_16_15_0_False_shift: signed(22 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_17_10_0_False_resize: signed(24 downto 0);
  signal c_17_10_0_False_shift: signed(24 downto 0);
  signal c_17_13_2_False_resize: signed(24 downto 0);
  signal c_17_13_2_False_shift: signed(24 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_i0_resize: signed(25 downto 0);
  signal c_18_i1_resize: signed(25 downto 0);
  signal c_18_i0_shift: signed(25 downto 0);
  signal c_18_i1_shift: signed(25 downto 0);
  signal c_18_arith: signed(25 downto 0);
  signal c_18_oshift: signed(25 downto 0);
  signal c_19: signed(21 downto 0);
  signal c_19_13_0_False_resize: signed(21 downto 0);
  signal c_19_13_0_False_shift: signed(21 downto 0);
  signal c_19_1_0_False_resize: signed(21 downto 0);
  signal c_19_1_0_False_shift: signed(21 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(24 downto 0);
  signal c_20_i0_resize: signed(24 downto 0);
  signal c_20_i1_resize: signed(24 downto 0);
  signal c_20_i0_shift: signed(24 downto 0);
  signal c_20_i1_shift: signed(24 downto 0);
  signal c_20_arith: signed(24 downto 0);
  signal c_20_oshift: signed(24 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(25 downto 0);
  signal c_21_8_2_False_resize: signed(25 downto 0);
  signal c_21_8_2_False_shift: signed(25 downto 0);
  signal c_21_20_0_False_resize: signed(25 downto 0);
  signal c_21_20_0_False_shift: signed(25 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_13_0_False_resize: signed(23 downto 0);
  signal c_22_13_0_False_shift: signed(23 downto 0);
  signal c_22_8_0_False_resize: signed(23 downto 0);
  signal c_22_8_0_False_shift: signed(23 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(24 downto 0);
  signal c_23_i0_resize: signed(24 downto 0);
  signal c_23_i1_resize: signed(24 downto 0);
  signal c_23_i0_shift: signed(24 downto 0);
  signal c_23_i1_shift: signed(24 downto 0);
  signal c_23_arith: signed(24 downto 0);
  signal c_23_oshift: signed(24 downto 0);
  signal c_24: signed(20 downto 0);
  signal c_24_1_3_False_resize: signed(20 downto 0);
  signal c_24_1_3_False_shift: signed(20 downto 0);
  signal c_24_10_0_False_resize: signed(20 downto 0);
  signal c_24_10_0_False_shift: signed(20 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_i0_resize: signed(25 downto 0);
  signal c_25_i1_resize: signed(25 downto 0);
  signal c_25_i0_shift: signed(25 downto 0);
  signal c_25_i1_shift: signed(25 downto 0);
  signal c_25_arith: signed(25 downto 0);
  signal c_25_oshift: signed(25 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(25 downto 0);
  signal c_26_18_1_False_resize: signed(25 downto 0);
  signal c_26_18_1_False_shift: signed(25 downto 0);
  signal c_26_10_0_False_resize: signed(25 downto 0);
  signal c_26_10_0_False_shift: signed(25 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(24 downto 0);
  signal c_27_4_0_False_resize: signed(24 downto 0);
  signal c_27_4_0_False_shift: signed(24 downto 0);
  signal c_27_1_7_False_resize: signed(24 downto 0);
  signal c_27_1_7_False_shift: signed(24 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_i0_resize: signed(25 downto 0);
  signal c_28_i1_resize: signed(25 downto 0);
  signal c_28_i0_shift: signed(25 downto 0);
  signal c_28_i1_shift: signed(25 downto 0);
  signal c_28_arith: signed(25 downto 0);
  signal c_28_oshift: signed(25 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_resize: signed(25 downto 0);
  signal c_30: signed(24 downto 0);
  signal c_30_23_0_False_resize: signed(24 downto 0);
  signal c_30_23_0_False_shift: signed(24 downto 0);
  signal c_30_6_0_False_resize: signed(24 downto 0);
  signal c_30_6_0_False_shift: signed(24 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(24 downto 0);
  signal c_31_resize: signed(24 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_resize: signed(25 downto 0);
  signal c_33: signed(24 downto 0);
  signal c_33_6_0_False_resize: signed(24 downto 0);
  signal c_33_6_0_False_shift: signed(24 downto 0);
  signal c_33_13_2_False_resize: signed(24 downto 0);
  signal c_33_13_2_False_shift: signed(24 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(24 downto 0);
  signal c_34_resize: signed(24 downto 0);
  signal c_35: signed(24 downto 0);
  signal c_35_resize: signed(24 downto 0);
  signal c_36: signed(24 downto 0);
  signal c_36_15_2_False_resize: signed(24 downto 0);
  signal c_36_15_2_False_shift: signed(24 downto 0);
  signal c_36_8_0_False_resize: signed(24 downto 0);
  signal c_36_8_0_False_shift: signed(24 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(24 downto 0);
  signal c_37_resize: signed(24 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_38_20_0_False_resize: signed(25 downto 0);
  signal c_38_20_0_False_shift: signed(25 downto 0);
  signal c_38_20_1_False_resize: signed(25 downto 0);
  signal c_38_20_1_False_shift: signed(25 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_resize: signed(25 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_40_28_0_False_resize: signed(25 downto 0);
  signal c_40_28_0_False_shift: signed(25 downto 0);
  signal c_40_23_0_False_resize: signed(25 downto 0);
  signal c_40_23_0_False_shift: signed(25 downto 0);
  signal c_40_sel: std_logic_vector(0 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_41_resize: signed(25 downto 0);
  signal c_42: signed(24 downto 0);
  signal c_42_8_0_False_resize: signed(24 downto 0);
  signal c_42_8_0_False_shift: signed(24 downto 0);
  signal c_42_15_0_False_resize: signed(24 downto 0);
  signal c_42_15_0_False_shift: signed(24 downto 0);
  signal c_42_sel: std_logic_vector(0 downto 0);
  signal c_43: signed(24 downto 0);
  signal c_43_resize: signed(24 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_44_4_1_False_resize: signed(25 downto 0);
  signal c_44_4_1_False_shift: signed(25 downto 0);
  signal c_44_28_0_False_resize: signed(25 downto 0);
  signal c_44_28_0_False_shift: signed(25 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_resize: signed(25 downto 0);
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
      config_select_16 <= config_select;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 29
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_29);
    end if;
  end process;
  -- output node 1 with id 31
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_31);
    end if;
  end process;
  -- output node 2 with id 32
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_32);
    end if;
  end process;
  -- output node 3 with id 34
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_34);
    end if;
  end process;
  -- output node 4 with id 35
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_35);
    end if;
  end process;
  -- output node 5 with id 37
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_37);
    end if;
  end process;
  -- output node 6 with id 39
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_39);
    end if;
  end process;
  -- output node 7 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 8 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_43);
    end if;
  end process;
  -- output node 9 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_45);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 1 and associated fundamentals [[-3], [-3]]
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 18,
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  c_1 <= c_1_oshift(17 downto 0);
  -- node of type 'mux' in stage 2 with id 2 and associated fundamentals [[1], [-384]]
  c_2_1_7_False_resize <= resize(c_1, 25);
  c_2_1_7_False_shift <= shift_left(c_2_1_7_False_resize, 7);
  c_2_0_0_False_resize <= resize(c_0, 25);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_2 select c_2_sel <= 
    "0" when "1",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_1_7_False_shift when "0",
    c_2_0_0_False_shift when others;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[16], [-3]]
  c_3_1_0_False_resize <= resize(c_1, 20);
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  c_3_0_4_False_resize <= resize(c_0, 20);
  c_3_0_4_False_shift <= shift_left(c_3_0_4_False_resize, 4);
  with config_select_2 select c_3_sel <= 
    "0" when "1",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_1_0_False_shift when "0",
    c_3_0_4_False_shift when others;
  -- node of type 'sub' in stage 3 with id 4 and associated fundamentals [[-63], [-372]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 20,
      w_o => 25,
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
  c_4 <= c_4_oshift(24 downto 0);
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[1], [2]]
  c_5_0_1_False_resize <= resize(c_0, 17);
  c_5_0_1_False_shift <= shift_left(c_5_0_1_False_resize, 1);
  c_5_0_0_False_resize <= resize(c_0, 17);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  with config_select_1 select c_5_sel <= 
    "0" when "1",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_0_1_False_shift when "0",
    c_5_0_0_False_shift when others;
  -- node of type 'sub' in stage 2 with id 6 and associated fundamentals [[224], [480]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 16,
      w_o => 25,
      s_x_i => 8,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_5,
      y_i => c_0,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(24 downto 0);
  -- node of type 'mux' in stage 2 with id 7 and associated fundamentals [[-3], [1]]
  c_7_0_0_False_resize <= resize(c_0, 18);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  c_7_1_0_False_resize <= c_1;
  c_7_1_0_False_shift <= shift_left(c_7_1_0_False_resize, 0);
  with config_select_2 select c_7_sel <= 
    "0" when "1",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_0_0_False_shift when "0",
    c_7_1_0_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 8 and associated fundamentals [[134], [130]]
  with config_select_3 select c_8_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 18,
      w_o => 24,
      s_x_i => 7,
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
      x_i => c_0,
      y_i => c_7,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(23 downto 0);
  -- node of type 'mux' in stage 4 with id 9 and associated fundamentals [[4], [130]]
  c_9_0_2_False_resize <= resize(c_0, 24);
  c_9_0_2_False_shift <= shift_left(c_9_0_2_False_resize, 2);
  c_9_8_0_False_resize <= c_8;
  c_9_8_0_False_shift <= shift_left(c_9_8_0_False_resize, 0);
  with config_select_4 select c_9_sel <= 
    "0" when "0",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_0_2_False_shift when "0",
    c_9_8_0_False_shift when others;
  -- node of type 'sub' in stage 5 with id 10 and associated fundamentals [[11], [263]]
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 18,
      w_o => 25,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_9,
      y_i => c_1,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(24 downto 0);
  -- node of type 'mux' in stage 1 with id 11 and associated fundamentals [[64], [1]]
  c_11_0_0_False_resize <= resize(c_0, 22);
  c_11_0_0_False_shift <= shift_left(c_11_0_0_False_resize, 0);
  c_11_0_6_False_resize <= resize(c_0, 22);
  c_11_0_6_False_shift <= shift_left(c_11_0_6_False_resize, 6);
  with config_select_1 select c_11_sel <= 
    "0" when "1",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_0_0_False_shift when "0",
    c_11_0_6_False_shift when others;
  -- node of type 'mux' in stage 6 with id 12 and associated fundamentals [[11], [-48]]
  c_12_1_4_False_resize <= resize(c_1, 22);
  c_12_1_4_False_shift <= shift_left(c_12_1_4_False_resize, 4);
  c_12_10_0_False_resize <= c_10(21 downto 0);
  c_12_10_0_False_shift <= shift_left(c_12_10_0_False_resize, 0);
  with config_select_6 select c_12_sel <= 
    "0" when "1",
    "1" when others;
  with c_12_sel select c_12 <=
    c_12_1_4_False_shift when "0",
    c_12_10_0_False_shift when others;
  -- node of type 'add_sub' in stage 7 with id 13 and associated fundamentals [[53], [-47]]
  with config_select_7 select c_13_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 22,
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
      sub_i => c_13_sub_sel,
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(21 downto 0);
  -- node of type 'mux' in stage 8 with id 14 and associated fundamentals [[-63], [-188]]
  c_14_4_0_False_resize <= c_4(23 downto 0);
  c_14_4_0_False_shift <= shift_left(c_14_4_0_False_resize, 0);
  c_14_13_2_False_resize <= resize(c_13, 24);
  c_14_13_2_False_shift <= shift_left(c_14_13_2_False_resize, 2);
  with config_select_8 select c_14_sel <= 
    "0" when "0",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_4_0_False_shift when "0",
    c_14_13_2_False_shift when others;
  -- node of type 'add_sub' in stage 9 with id 15 and associated fundamentals [[71], [318]]
  with config_select_9 select c_15_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_15_sub_sel,
      x_i => c_8,
      y_i => c_14,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(24 downto 0);
  -- node of type 'mux' in stage 10 with id 16 and associated fundamentals [[71], [-3]]
  c_16_1_0_False_resize <= resize(c_1, 23);
  c_16_1_0_False_shift <= shift_left(c_16_1_0_False_resize, 0);
  c_16_15_0_False_resize <= c_15(22 downto 0);
  c_16_15_0_False_shift <= shift_left(c_16_15_0_False_resize, 0);
  with config_select_10 select c_16_sel <= 
    "0" when "1",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_1_0_False_shift when "0",
    c_16_15_0_False_shift when others;
  -- node of type 'mux' in stage 8 with id 17 and associated fundamentals [[212], [263]]
  c_17_10_0_False_resize <= c_10;
  c_17_10_0_False_shift <= shift_left(c_17_10_0_False_resize, 0);
  c_17_13_2_False_resize <= resize(c_13, 25);
  c_17_13_2_False_shift <= shift_left(c_17_13_2_False_resize, 2);
  with config_select_8 select c_17_sel <= 
    "0" when "1",
    "1" when others;
  with c_17_sel select c_17 <=
    c_17_10_0_False_shift when "0",
    c_17_13_2_False_shift when others;
  -- node of type 'sub' in stage 11 with id 18 and associated fundamentals [[-353], [-529]]
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 25,
      w_o => 26,
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
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  c_18 <= c_18_oshift(25 downto 0);
  -- node of type 'mux' in stage 8 with id 19 and associated fundamentals [[53], [-3]]
  c_19_13_0_False_resize <= c_13;
  c_19_13_0_False_shift <= shift_left(c_19_13_0_False_resize, 0);
  c_19_1_0_False_resize <= resize(c_1, 22);
  c_19_1_0_False_shift <= shift_left(c_19_1_0_False_resize, 0);
  with config_select_8 select c_19_sel <= 
    "0" when "0",
    "1" when others;
  with c_19_sel select c_19 <=
    c_19_13_0_False_shift when "0",
    c_19_1_0_False_shift when others;
  -- node of type 'add_sub' in stage 9 with id 20 and associated fundamentals [[277], [483]]
  with config_select_9 select c_20_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 22,
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
      sub_i => c_20_sub_sel,
      x_i => c_6,
      y_i => c_19,
      z_o => c_20_oshift
    );
  c_20 <= c_20_oshift(24 downto 0);
  -- node of type 'mux' in stage 10 with id 21 and associated fundamentals [[277], [520]]
  c_21_8_2_False_resize <= resize(c_8, 26);
  c_21_8_2_False_shift <= shift_left(c_21_8_2_False_resize, 2);
  c_21_20_0_False_resize <= resize(c_20, 26);
  c_21_20_0_False_shift <= shift_left(c_21_20_0_False_resize, 0);
  with config_select_10 select c_21_sel <= 
    "0" when "1",
    "1" when others;
  with c_21_sel select c_21 <=
    c_21_8_2_False_shift when "0",
    c_21_20_0_False_shift when others;
  -- node of type 'mux' in stage 8 with id 22 and associated fundamentals [[134], [-47]]
  c_22_13_0_False_resize <= resize(c_13, 24);
  c_22_13_0_False_shift <= shift_left(c_22_13_0_False_resize, 0);
  c_22_8_0_False_resize <= c_8;
  c_22_8_0_False_shift <= shift_left(c_22_8_0_False_resize, 0);
  with config_select_8 select c_22_sel <= 
    "0" when "1",
    "1" when others;
  with c_22_sel select c_22 <=
    c_22_13_0_False_shift when "0",
    c_22_8_0_False_shift when others;
  -- node of type 'add' in stage 11 with id 23 and associated fundamentals [[411], [473]]
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
      w_o => 25,
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
      x_i => c_21,
      y_i => c_22,
      z_o => c_23_oshift
    );
  c_23 <= c_23_oshift(24 downto 0);
  -- node of type 'mux' in stage 6 with id 24 and associated fundamentals [[11], [-24]]
  c_24_1_3_False_resize <= resize(c_1, 21);
  c_24_1_3_False_shift <= shift_left(c_24_1_3_False_resize, 3);
  c_24_10_0_False_resize <= c_10(20 downto 0);
  c_24_10_0_False_shift <= shift_left(c_24_10_0_False_resize, 0);
  with config_select_6 select c_24_sel <= 
    "0" when "1",
    "1" when others;
  with c_24_sel select c_24 <=
    c_24_1_3_False_shift when "0",
    c_24_10_0_False_shift when others;
  -- node of type 'add_sub' in stage 12 with id 25 and associated fundamentals [[587], [857]]
  with config_select_12 select c_25_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 21,
      w_o => 26,
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
      sub_i => c_25_sub_sel,
      x_i => c_23,
      y_i => c_24,
      z_o => c_25_oshift
    );
  c_25 <= c_25_oshift(25 downto 0);
  -- node of type 'mux' in stage 12 with id 26 and associated fundamentals [[-706], [263]]
  c_26_18_1_False_resize <= c_18;
  c_26_18_1_False_shift <= shift_left(c_26_18_1_False_resize, 1);
  c_26_10_0_False_resize <= resize(c_10, 26);
  c_26_10_0_False_shift <= shift_left(c_26_10_0_False_resize, 0);
  with config_select_12 select c_26_sel <= 
    "0" when "0",
    "1" when others;
  with c_26_sel select c_26 <=
    c_26_18_1_False_shift when "0",
    c_26_10_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 27 and associated fundamentals [[-63], [-384]]
  c_27_4_0_False_resize <= c_4;
  c_27_4_0_False_shift <= shift_left(c_27_4_0_False_resize, 0);
  c_27_1_7_False_resize <= resize(c_1, 25);
  c_27_1_7_False_shift <= shift_left(c_27_1_7_False_resize, 7);
  with config_select_4 select c_27_sel <= 
    "0" when "0",
    "1" when others;
  with c_27_sel select c_27 <=
    c_27_4_0_False_shift when "0",
    c_27_1_7_False_shift when others;
  -- node of type 'sub' in stage 13 with id 28 and associated fundamentals [[-643], [647]]
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_26,
      y_i => c_27,
      z_o => c_28_oshift
    );
  c_28 <= c_28_oshift(25 downto 0);
  -- node of type 'output' in stage 11 with id 29 and associated fundamentals [[353], [529]]
  c_29_resize <= c_18;
  c_29 <= -shift_left(c_29_resize, 0);
  -- node of type 'mux' in stage 12 with id 30 and associated fundamentals [[224], [473]]
  c_30_23_0_False_resize <= c_23;
  c_30_23_0_False_shift <= shift_left(c_30_23_0_False_resize, 0);
  c_30_6_0_False_resize <= c_6;
  c_30_6_0_False_shift <= shift_left(c_30_6_0_False_resize, 0);
  with config_select_12 select c_30_sel <= 
    "0" when "1",
    "1" when others;
  with c_30_sel select c_30 <=
    c_30_23_0_False_shift when "0",
    c_30_6_0_False_shift when others;
  -- node of type 'output' in stage 12 with id 31 and associated fundamentals [[224], [473]]
  c_31_resize <= c_30;
  c_31 <= shift_left(c_31_resize, 0);
  -- node of type 'output' in stage 12 with id 32 and associated fundamentals [[587], [857]]
  c_32_resize <= c_25;
  c_32 <= shift_left(c_32_resize, 0);
  -- node of type 'mux' in stage 8 with id 33 and associated fundamentals [[212], [480]]
  c_33_6_0_False_resize <= c_6;
  c_33_6_0_False_shift <= shift_left(c_33_6_0_False_resize, 0);
  c_33_13_2_False_resize <= resize(c_13, 25);
  c_33_13_2_False_shift <= shift_left(c_33_13_2_False_resize, 2);
  with config_select_8 select c_33_sel <= 
    "0" when "1",
    "1" when others;
  with c_33_sel select c_33 <=
    c_33_6_0_False_shift when "0",
    c_33_13_2_False_shift when others;
  -- node of type 'output' in stage 8 with id 34 and associated fundamentals [[212], [480]]
  c_34_resize <= c_33;
  c_34 <= shift_left(c_34_resize, 0);
  -- node of type 'output' in stage 5 with id 35 and associated fundamentals [[11], [263]]
  c_35_resize <= c_10;
  c_35 <= shift_left(c_35_resize, 0);
  -- node of type 'mux' in stage 10 with id 36 and associated fundamentals [[284], [130]]
  c_36_15_2_False_resize <= c_15;
  c_36_15_2_False_shift <= shift_left(c_36_15_2_False_resize, 2);
  c_36_8_0_False_resize <= resize(c_8, 25);
  c_36_8_0_False_shift <= shift_left(c_36_8_0_False_resize, 0);
  with config_select_10 select c_36_sel <= 
    "0" when "0",
    "1" when others;
  with c_36_sel select c_36 <=
    c_36_15_2_False_shift when "0",
    c_36_8_0_False_shift when others;
  -- node of type 'output' in stage 10 with id 37 and associated fundamentals [[284], [130]]
  c_37_resize <= c_36;
  c_37 <= shift_left(c_37_resize, 0);
  -- node of type 'mux' in stage 10 with id 38 and associated fundamentals [[554], [483]]
  c_38_20_0_False_resize <= resize(c_20, 26);
  c_38_20_0_False_shift <= shift_left(c_38_20_0_False_resize, 0);
  c_38_20_1_False_resize <= resize(c_20, 26);
  c_38_20_1_False_shift <= shift_left(c_38_20_1_False_resize, 1);
  with config_select_10 select c_38_sel <= 
    "0" when "1",
    "1" when others;
  with c_38_sel select c_38 <=
    c_38_20_0_False_shift when "0",
    c_38_20_1_False_shift when others;
  -- node of type 'output' in stage 10 with id 39 and associated fundamentals [[554], [483]]
  c_39_resize <= c_38;
  c_39 <= shift_left(c_39_resize, 0);
  -- node of type 'mux' in stage 14 with id 40 and associated fundamentals [[411], [647]]
  c_40_28_0_False_resize <= c_28;
  c_40_28_0_False_shift <= shift_left(c_40_28_0_False_resize, 0);
  c_40_23_0_False_resize <= resize(c_23, 26);
  c_40_23_0_False_shift <= shift_left(c_40_23_0_False_resize, 0);
  with config_select_14 select c_40_sel <= 
    "0" when "1",
    "1" when others;
  with c_40_sel select c_40 <=
    c_40_28_0_False_shift when "0",
    c_40_23_0_False_shift when others;
  -- node of type 'output' in stage 14 with id 41 and associated fundamentals [[411], [647]]
  c_41_resize <= c_40;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'mux' in stage 10 with id 42 and associated fundamentals [[134], [318]]
  c_42_8_0_False_resize <= resize(c_8, 25);
  c_42_8_0_False_shift <= shift_left(c_42_8_0_False_resize, 0);
  c_42_15_0_False_resize <= c_15;
  c_42_15_0_False_shift <= shift_left(c_42_15_0_False_resize, 0);
  with config_select_10 select c_42_sel <= 
    "0" when "0",
    "1" when others;
  with c_42_sel select c_42 <=
    c_42_8_0_False_shift when "0",
    c_42_15_0_False_shift when others;
  -- node of type 'output' in stage 10 with id 43 and associated fundamentals [[134], [318]]
  c_43_resize <= c_42;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'mux' in stage 14 with id 44 and associated fundamentals [[-643], [-744]]
  c_44_4_1_False_resize <= resize(c_4, 26);
  c_44_4_1_False_shift <= shift_left(c_44_4_1_False_resize, 1);
  c_44_28_0_False_resize <= c_28;
  c_44_28_0_False_shift <= shift_left(c_44_28_0_False_resize, 0);
  with config_select_14 select c_44_sel <= 
    "0" when "1",
    "1" when others;
  with c_44_sel select c_44 <=
    c_44_4_1_False_shift when "0",
    c_44_28_0_False_shift when others;
  -- node of type 'output' in stage 14 with id 45 and associated fundamentals [[643], [744]]
  c_45_resize <= c_44;
  c_45 <= -shift_left(c_45_resize, 0);
end architecture;
