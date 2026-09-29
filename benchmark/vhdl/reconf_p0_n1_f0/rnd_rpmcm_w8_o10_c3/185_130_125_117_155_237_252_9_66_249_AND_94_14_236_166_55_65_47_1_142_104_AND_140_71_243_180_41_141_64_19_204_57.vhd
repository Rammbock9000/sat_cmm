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
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(23 downto 0);
    y_5: out std_logic_vector(23 downto 0);
    y_6: out std_logic_vector(23 downto 0);
    y_7: out std_logic_vector(20 downto 0);
    y_8: out std_logic_vector(23 downto 0);
    y_9: out std_logic_vector(23 downto 0);
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
  signal config_select_12: std_logic_vector(1 downto 0);
  signal config_select_13: std_logic_vector(1 downto 0);
  signal config_select_14: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_0_0_False_resize: signed(17 downto 0);
  signal c_1_0_0_False_shift: signed(17 downto 0);
  signal c_1_0_2_False_resize: signed(17 downto 0);
  signal c_1_0_2_False_shift: signed(17 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(20 downto 0);
  signal c_2_i0_resize: signed(20 downto 0);
  signal c_2_i1_resize: signed(20 downto 0);
  signal c_2_i0_shift: signed(20 downto 0);
  signal c_2_i1_shift: signed(20 downto 0);
  signal c_2_arith: signed(20 downto 0);
  signal c_2_oshift: signed(20 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(20 downto 0);
  signal c_3_2_0_False_resize: signed(20 downto 0);
  signal c_3_2_0_False_shift: signed(20 downto 0);
  signal c_3_0_5_False_resize: signed(20 downto 0);
  signal c_3_0_5_False_shift: signed(20 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(22 downto 0);
  signal c_4_i0_resize: signed(22 downto 0);
  signal c_4_i1_resize: signed(22 downto 0);
  signal c_4_i0_shift: signed(22 downto 0);
  signal c_4_i1_shift: signed(22 downto 0);
  signal c_4_arith: signed(22 downto 0);
  signal c_4_oshift: signed(22 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_5_2_0_False_resize: signed(21 downto 0);
  signal c_5_2_0_False_shift: signed(21 downto 0);
  signal c_5_0_6_False_resize: signed(21 downto 0);
  signal c_5_0_6_False_shift: signed(21 downto 0);
  signal c_5_4_1_False_resize: signed(21 downto 0);
  signal c_5_4_1_False_shift: signed(21 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(21 downto 0);
  signal c_6_0_0_False_resize: signed(21 downto 0);
  signal c_6_0_0_False_shift: signed(21 downto 0);
  signal c_6_0_6_False_resize: signed(21 downto 0);
  signal c_6_0_6_False_shift: signed(21 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_i0_resize: signed(23 downto 0);
  signal c_7_i1_resize: signed(23 downto 0);
  signal c_7_i0_shift: signed(23 downto 0);
  signal c_7_i1_shift: signed(23 downto 0);
  signal c_7_arith: signed(23 downto 0);
  signal c_7_oshift: signed(23 downto 0);
  signal c_8: signed(21 downto 0);
  signal c_8_4_0_False_resize: signed(21 downto 0);
  signal c_8_4_0_False_shift: signed(21 downto 0);
  signal c_8_0_2_False_resize: signed(21 downto 0);
  signal c_8_0_2_False_shift: signed(21 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_i0_resize: signed(22 downto 0);
  signal c_9_i1_resize: signed(22 downto 0);
  signal c_9_i0_shift: signed(22 downto 0);
  signal c_9_i1_shift: signed(22 downto 0);
  signal c_9_arith: signed(22 downto 0);
  signal c_9_oshift: signed(22 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(23 downto 0);
  signal c_10_2_4_False_resize: signed(23 downto 0);
  signal c_10_2_4_False_shift: signed(23 downto 0);
  signal c_10_7_0_False_resize: signed(23 downto 0);
  signal c_10_7_0_False_shift: signed(23 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(22 downto 0);
  signal c_11_9_0_False_resize: signed(22 downto 0);
  signal c_11_9_0_False_shift: signed(22 downto 0);
  signal c_11_4_3_False_resize: signed(22 downto 0);
  signal c_11_4_3_False_shift: signed(22 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_i0_resize: signed(23 downto 0);
  signal c_12_i1_resize: signed(23 downto 0);
  signal c_12_i0_shift: signed(23 downto 0);
  signal c_12_i1_shift: signed(23 downto 0);
  signal c_12_arith: signed(23 downto 0);
  signal c_12_oshift: signed(23 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(22 downto 0);
  signal c_13_9_0_False_resize: signed(22 downto 0);
  signal c_13_9_0_False_shift: signed(22 downto 0);
  signal c_13_0_5_False_resize: signed(22 downto 0);
  signal c_13_0_5_False_shift: signed(22 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_i0_resize: signed(23 downto 0);
  signal c_14_i1_resize: signed(23 downto 0);
  signal c_14_i0_shift: signed(23 downto 0);
  signal c_14_i1_shift: signed(23 downto 0);
  signal c_14_arith: signed(23 downto 0);
  signal c_14_oshift: signed(23 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(22 downto 0);
  signal c_15_7_0_False_resize: signed(22 downto 0);
  signal c_15_7_0_False_shift: signed(22 downto 0);
  signal c_15_2_4_False_resize: signed(22 downto 0);
  signal c_15_2_4_False_shift: signed(22 downto 0);
  signal c_15_2_3_False_resize: signed(22 downto 0);
  signal c_15_2_3_False_shift: signed(22 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_0_0_False_resize: signed(23 downto 0);
  signal c_16_0_0_False_shift: signed(23 downto 0);
  signal c_16_7_1_False_resize: signed(23 downto 0);
  signal c_16_7_1_False_shift: signed(23 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_i0_resize: signed(23 downto 0);
  signal c_17_i1_resize: signed(23 downto 0);
  signal c_17_i0_shift: signed(23 downto 0);
  signal c_17_i1_shift: signed(23 downto 0);
  signal c_17_arith: signed(23 downto 0);
  signal c_17_oshift: signed(23 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(23 downto 0);
  signal c_18_4_0_False_resize: signed(23 downto 0);
  signal c_18_4_0_False_shift: signed(23 downto 0);
  signal c_18_4_5_False_resize: signed(23 downto 0);
  signal c_18_4_5_False_shift: signed(23 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(21 downto 0);
  signal c_19_12_0_False_resize: signed(21 downto 0);
  signal c_19_12_0_False_shift: signed(21 downto 0);
  signal c_19_2_0_False_resize: signed(21 downto 0);
  signal c_19_2_0_False_shift: signed(21 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_i0_resize: signed(23 downto 0);
  signal c_20_i1_resize: signed(23 downto 0);
  signal c_20_i0_shift: signed(23 downto 0);
  signal c_20_i1_shift: signed(23 downto 0);
  signal c_20_arith: signed(23 downto 0);
  signal c_20_oshift: signed(23 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(23 downto 0);
  signal c_21_7_0_False_resize: signed(23 downto 0);
  signal c_21_7_0_False_shift: signed(23 downto 0);
  signal c_21_2_2_False_resize: signed(23 downto 0);
  signal c_21_2_2_False_shift: signed(23 downto 0);
  signal c_21_12_0_False_resize: signed(23 downto 0);
  signal c_21_12_0_False_shift: signed(23 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_22_2_2_False_resize: signed(22 downto 0);
  signal c_22_2_2_False_shift: signed(22 downto 0);
  signal c_22_7_0_False_resize: signed(22 downto 0);
  signal c_22_7_0_False_shift: signed(22 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_i0_resize: signed(23 downto 0);
  signal c_23_i1_resize: signed(23 downto 0);
  signal c_23_i0_shift: signed(23 downto 0);
  signal c_23_i1_shift: signed(23 downto 0);
  signal c_23_arith: signed(23 downto 0);
  signal c_23_oshift: signed(23 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(23 downto 0);
  signal c_24_9_2_False_resize: signed(23 downto 0);
  signal c_24_9_2_False_shift: signed(23 downto 0);
  signal c_24_17_0_False_resize: signed(23 downto 0);
  signal c_24_17_0_False_shift: signed(23 downto 0);
  signal c_24_4_1_False_resize: signed(23 downto 0);
  signal c_24_4_1_False_shift: signed(23 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_25_9_0_False_resize: signed(22 downto 0);
  signal c_25_9_0_False_shift: signed(22 downto 0);
  signal c_25_2_0_False_resize: signed(22 downto 0);
  signal c_25_2_0_False_shift: signed(22 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_i0_resize: signed(23 downto 0);
  signal c_26_i1_resize: signed(23 downto 0);
  signal c_26_i0_shift: signed(23 downto 0);
  signal c_26_i1_shift: signed(23 downto 0);
  signal c_26_arith: signed(23 downto 0);
  signal c_26_oshift: signed(23 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(23 downto 0);
  signal c_27_9_1_False_resize: signed(23 downto 0);
  signal c_27_9_1_False_shift: signed(23 downto 0);
  signal c_27_2_0_False_resize: signed(23 downto 0);
  signal c_27_2_0_False_shift: signed(23 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_20_0_False_resize: signed(23 downto 0);
  signal c_28_20_0_False_shift: signed(23 downto 0);
  signal c_28_2_0_False_resize: signed(23 downto 0);
  signal c_28_2_0_False_shift: signed(23 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_i0_resize: signed(23 downto 0);
  signal c_29_i1_resize: signed(23 downto 0);
  signal c_29_i0_shift: signed(23 downto 0);
  signal c_29_i1_shift: signed(23 downto 0);
  signal c_29_arith: signed(23 downto 0);
  signal c_29_oshift: signed(23 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(23 downto 0);
  signal c_30_17_1_False_resize: signed(23 downto 0);
  signal c_30_17_1_False_shift: signed(23 downto 0);
  signal c_30_14_0_False_resize: signed(23 downto 0);
  signal c_30_14_0_False_shift: signed(23 downto 0);
  signal c_30_4_2_False_resize: signed(23 downto 0);
  signal c_30_4_2_False_shift: signed(23 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_resize: signed(23 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_32_4_1_False_resize: signed(23 downto 0);
  signal c_32_4_1_False_shift: signed(23 downto 0);
  signal c_32_9_0_False_resize: signed(23 downto 0);
  signal c_32_9_0_False_shift: signed(23 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_resize: signed(23 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_resize: signed(23 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_23_0_False_resize: signed(23 downto 0);
  signal c_35_23_0_False_shift: signed(23 downto 0);
  signal c_35_14_1_False_resize: signed(23 downto 0);
  signal c_35_14_1_False_shift: signed(23 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_resize: signed(23 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_resize: signed(23 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_resize: signed(23 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_17_0_False_resize: signed(23 downto 0);
  signal c_39_17_0_False_shift: signed(23 downto 0);
  signal c_39_0_6_False_resize: signed(23 downto 0);
  signal c_39_0_6_False_shift: signed(23 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_resize: signed(23 downto 0);
  signal c_41: signed(20 downto 0);
  signal c_41_0_0_False_resize: signed(20 downto 0);
  signal c_41_0_0_False_shift: signed(20 downto 0);
  signal c_41_9_0_False_resize: signed(20 downto 0);
  signal c_41_9_0_False_shift: signed(20 downto 0);
  signal c_41_7_0_False_resize: signed(20 downto 0);
  signal c_41_7_0_False_shift: signed(20 downto 0);
  signal c_41_sel: std_logic_vector(1 downto 0);
  signal c_42: signed(20 downto 0);
  signal c_42_resize: signed(20 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_7_0_False_resize: signed(23 downto 0);
  signal c_43_7_0_False_shift: signed(23 downto 0);
  signal c_43_23_0_False_resize: signed(23 downto 0);
  signal c_43_23_0_False_shift: signed(23 downto 0);
  signal c_43_sel: std_logic_vector(0 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_resize: signed(23 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_12_0_False_resize: signed(23 downto 0);
  signal c_45_12_0_False_shift: signed(23 downto 0);
  signal c_45_17_0_False_resize: signed(23 downto 0);
  signal c_45_17_0_False_shift: signed(23 downto 0);
  signal c_45_sel: std_logic_vector(0 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_resize: signed(23 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 31
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_31);
    end if;
  end process;
  -- output node 1 with id 33
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_33);
    end if;
  end process;
  -- output node 2 with id 34
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_34);
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
  -- output node 6 with id 40
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_40);
    end if;
  end process;
  -- output node 7 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_42);
    end if;
  end process;
  -- output node 8 with id 44
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_44);
    end if;
  end process;
  -- output node 9 with id 46
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_46);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[4], [1], [4]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "0",
    c_1_0_2_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 2 and associated fundamentals [[15], [3], [17]]
  with config_select_2 select c_2_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
      w_o => 21,
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
  c_2 <= c_2_oshift(20 downto 0);
  -- node of type 'mux' in stage 3 with id 3 and associated fundamentals [[32], [3], [17]]
  c_3_2_0_False_resize <= c_2;
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  c_3_0_5_False_resize <= resize(c_0, 21);
  c_3_0_5_False_shift <= shift_left(c_3_0_5_False_resize, 5);
  with config_select_3 select c_3_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_2_0_False_shift when "0",
    c_3_0_5_False_shift when others;
  -- node of type 'add' in stage 4 with id 4 and associated fundamentals [[65], [7], [35]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 16,
      w_o => 23,
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
      x_i => c_3,
      y_i => c_0,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(22 downto 0);
  -- node of type 'mux' in stage 5 with id 5 and associated fundamentals [[64], [14], [17]]
  c_5_2_0_False_resize <= resize(c_2, 22);
  c_5_2_0_False_shift <= shift_left(c_5_2_0_False_resize, 0);
  c_5_0_6_False_resize <= resize(c_0, 22);
  c_5_0_6_False_shift <= shift_left(c_5_0_6_False_resize, 6);
  c_5_4_1_False_resize <= c_4(21 downto 0);
  c_5_4_1_False_shift <= shift_left(c_5_4_1_False_resize, 1);
  with config_select_5 select c_5_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_5_sel select c_5 <=
    c_5_2_0_False_shift when "00",
    c_5_0_6_False_shift when "01",
    c_5_4_1_False_shift when others;
  -- node of type 'mux' in stage 1 with id 6 and associated fundamentals [[1], [64], [1]]
  c_6_0_0_False_resize <= resize(c_0, 22);
  c_6_0_0_False_shift <= shift_left(c_6_0_0_False_resize, 0);
  c_6_0_6_False_resize <= resize(c_0, 22);
  c_6_0_6_False_shift <= shift_left(c_6_0_6_False_resize, 6);
  with config_select_1 select c_6_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_0_0_False_shift when "0",
    c_6_0_6_False_shift when others;
  -- node of type 'add' in stage 6 with id 7 and associated fundamentals [[66], [142], [19]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 24,
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
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(23 downto 0);
  -- node of type 'mux' in stage 5 with id 8 and associated fundamentals [[4], [7], [35]]
  c_8_4_0_False_resize <= c_4(21 downto 0);
  c_8_4_0_False_shift <= shift_left(c_8_4_0_False_resize, 0);
  c_8_0_2_False_resize <= resize(c_0, 22);
  c_8_0_2_False_shift <= shift_left(c_8_0_2_False_resize, 2);
  with config_select_5 select c_8_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_4_0_False_shift when "0",
    c_8_0_2_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 9 and associated fundamentals [[9], [13], [71]]
  with config_select_6 select c_9_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 16,
      w_o => 23,
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
      sub_i => c_9_sub_sel,
      x_i => c_8,
      y_i => c_0,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(22 downto 0);
  -- node of type 'mux' in stage 7 with id 10 and associated fundamentals [[240], [48], [19]]
  c_10_2_4_False_resize <= resize(c_2, 24);
  c_10_2_4_False_shift <= shift_left(c_10_2_4_False_resize, 4);
  c_10_7_0_False_resize <= c_7;
  c_10_7_0_False_shift <= shift_left(c_10_7_0_False_resize, 0);
  with config_select_7 select c_10_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_10_sel select c_10 <=
    c_10_2_4_False_shift when "0",
    c_10_7_0_False_shift when others;
  -- node of type 'mux' in stage 7 with id 11 and associated fundamentals [[9], [56], [71]]
  c_11_9_0_False_resize <= c_9;
  c_11_9_0_False_shift <= shift_left(c_11_9_0_False_resize, 0);
  c_11_4_3_False_resize <= c_4;
  c_11_4_3_False_shift <= shift_left(c_11_4_3_False_resize, 3);
  with config_select_7 select c_11_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_9_0_False_shift when "0",
    c_11_4_3_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 12 and associated fundamentals [[249], [104], [-52]]
  with config_select_8 select c_12_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
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
      sub_i => c_12_sub_sel,
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(23 downto 0);
  -- node of type 'mux' in stage 7 with id 13 and associated fundamentals [[32], [13], [71]]
  c_13_9_0_False_resize <= c_9;
  c_13_9_0_False_shift <= shift_left(c_13_9_0_False_resize, 0);
  c_13_0_5_False_resize <= resize(c_0, 23);
  c_13_0_5_False_shift <= shift_left(c_13_0_5_False_resize, 5);
  with config_select_7 select c_13_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_9_0_False_shift when "0",
    c_13_0_5_False_shift when others;
  -- node of type 'add_sub' in stage 9 with id 14 and associated fundamentals [[185], [78], [90]]
  with config_select_9 select c_14_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
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
      sub_i => c_14_sub_sel,
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  c_14 <= c_14_oshift(23 downto 0);
  -- node of type 'mux' in stage 7 with id 15 and associated fundamentals [[120], [48], [19]]
  c_15_7_0_False_resize <= c_7(22 downto 0);
  c_15_7_0_False_shift <= shift_left(c_15_7_0_False_resize, 0);
  c_15_2_4_False_resize <= resize(c_2, 23);
  c_15_2_4_False_shift <= shift_left(c_15_2_4_False_resize, 4);
  c_15_2_3_False_resize <= resize(c_2, 23);
  c_15_2_3_False_shift <= shift_left(c_15_2_3_False_resize, 3);
  with config_select_7 select c_15_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_15_sel select c_15 <=
    c_15_7_0_False_shift when "00",
    c_15_2_4_False_shift when "01",
    c_15_2_3_False_shift when others;
  -- node of type 'mux' in stage 7 with id 16 and associated fundamentals [[132], [1], [38]]
  c_16_0_0_False_resize <= resize(c_0, 24);
  c_16_0_0_False_shift <= shift_left(c_16_0_0_False_resize, 0);
  c_16_7_1_False_resize <= c_7;
  c_16_7_1_False_shift <= shift_left(c_16_7_1_False_resize, 1);
  with config_select_7 select c_16_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_0_0_False_shift when "0",
    c_16_7_1_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 17 and associated fundamentals [[252], [47], [57]]
  with config_select_8 select c_17_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
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
      sub_i => c_17_sub_sel,
      x_i => c_15,
      y_i => c_16,
      z_o => c_17_oshift
    );
  c_17 <= c_17_oshift(23 downto 0);
  -- node of type 'mux' in stage 5 with id 18 and associated fundamentals [[65], [224], [35]]
  c_18_4_0_False_resize <= resize(c_4, 24);
  c_18_4_0_False_shift <= shift_left(c_18_4_0_False_resize, 0);
  c_18_4_5_False_resize <= resize(c_4, 24);
  c_18_4_5_False_shift <= shift_left(c_18_4_5_False_resize, 5);
  with config_select_5 select c_18_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_18_sel select c_18 <=
    c_18_4_0_False_shift when "0",
    c_18_4_5_False_shift when others;
  -- node of type 'mux' in stage 9 with id 19 and associated fundamentals [[15], [3], [-52]]
  c_19_12_0_False_resize <= c_12(21 downto 0);
  c_19_12_0_False_shift <= shift_left(c_19_12_0_False_resize, 0);
  c_19_2_0_False_resize <= resize(c_2, 22);
  c_19_2_0_False_shift <= shift_left(c_19_2_0_False_resize, 0);
  with config_select_9 select c_19_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_19_sel select c_19 <=
    c_19_12_0_False_shift when "0",
    c_19_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 20 and associated fundamentals [[125], [236], [243]]
  with config_select_10 select c_20_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_20_sub_sel,
      x_i => c_18,
      y_i => c_19,
      z_o => c_20_oshift
    );
  c_20 <= c_20_oshift(23 downto 0);
  -- node of type 'mux' in stage 9 with id 21 and associated fundamentals [[249], [142], [68]]
  c_21_7_0_False_resize <= c_7;
  c_21_7_0_False_shift <= shift_left(c_21_7_0_False_resize, 0);
  c_21_2_2_False_resize <= resize(c_2, 24);
  c_21_2_2_False_shift <= shift_left(c_21_2_2_False_resize, 2);
  c_21_12_0_False_resize <= c_12;
  c_21_12_0_False_shift <= shift_left(c_21_12_0_False_resize, 0);
  with config_select_9 select c_21_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_21_sel select c_21 <=
    c_21_7_0_False_shift when "00",
    c_21_2_2_False_shift when "01",
    c_21_12_0_False_shift when others;
  -- node of type 'mux' in stage 7 with id 22 and associated fundamentals [[66], [12], [68]]
  c_22_2_2_False_resize <= resize(c_2, 23);
  c_22_2_2_False_shift <= shift_left(c_22_2_2_False_resize, 2);
  c_22_7_0_False_resize <= c_7(22 downto 0);
  c_22_7_0_False_shift <= shift_left(c_22_7_0_False_resize, 0);
  with config_select_7 select c_22_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_22_sel select c_22 <=
    c_22_2_2_False_shift when "0",
    c_22_7_0_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 23 and associated fundamentals [[117], [166], [204]]
  with config_select_10 select c_23_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
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
      sub_i => c_23_sub_sel,
      x_i => c_21,
      y_i => c_22,
      z_o => c_23_oshift
    );
  c_23 <= c_23_oshift(23 downto 0);
  -- node of type 'mux' in stage 9 with id 24 and associated fundamentals [[252], [52], [70]]
  c_24_9_2_False_resize <= resize(c_9, 24);
  c_24_9_2_False_shift <= shift_left(c_24_9_2_False_resize, 2);
  c_24_17_0_False_resize <= c_17;
  c_24_17_0_False_shift <= shift_left(c_24_17_0_False_resize, 0);
  c_24_4_1_False_resize <= resize(c_4, 24);
  c_24_4_1_False_shift <= shift_left(c_24_4_1_False_resize, 1);
  with config_select_9 select c_24_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_24_sel select c_24 <=
    c_24_9_2_False_shift when "00",
    c_24_17_0_False_shift when "01",
    c_24_4_1_False_shift when others;
  -- node of type 'mux' in stage 7 with id 25 and associated fundamentals [[15], [13], [71]]
  c_25_9_0_False_resize <= c_9;
  c_25_9_0_False_shift <= shift_left(c_25_9_0_False_resize, 0);
  c_25_2_0_False_resize <= resize(c_2, 23);
  c_25_2_0_False_shift <= shift_left(c_25_2_0_False_resize, 0);
  with config_select_7 select c_25_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_25_sel select c_25 <=
    c_25_9_0_False_shift when "0",
    c_25_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 26 and associated fundamentals [[237], [65], [141]]
  with config_select_10 select c_26_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
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
      sub_i => c_26_sub_sel,
      x_i => c_24,
      y_i => c_25,
      z_o => c_26_oshift
    );
  c_26 <= c_26_oshift(23 downto 0);
  -- node of type 'mux' in stage 7 with id 27 and associated fundamentals [[15], [26], [142]]
  c_27_9_1_False_resize <= resize(c_9, 24);
  c_27_9_1_False_shift <= shift_left(c_27_9_1_False_resize, 1);
  c_27_2_0_False_resize <= resize(c_2, 24);
  c_27_2_0_False_shift <= shift_left(c_27_2_0_False_resize, 0);
  with config_select_7 select c_27_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_27_sel select c_27 <=
    c_27_9_1_False_shift when "0",
    c_27_2_0_False_shift when others;
  -- node of type 'mux' in stage 11 with id 28 and associated fundamentals [[125], [3], [243]]
  c_28_20_0_False_resize <= c_20;
  c_28_20_0_False_shift <= shift_left(c_28_20_0_False_resize, 0);
  c_28_2_0_False_resize <= resize(c_2, 24);
  c_28_2_0_False_shift <= shift_left(c_28_2_0_False_resize, 0);
  with config_select_11 select c_28_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_28_sel select c_28 <=
    c_28_20_0_False_shift when "0",
    c_28_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 12 with id 29 and associated fundamentals [[155], [55], [41]]
  with config_select_12 select c_29_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
      w_o => 24,
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
      sub_i => c_29_sub_sel,
      x_i => c_27,
      y_i => c_28,
      z_o => c_29_oshift
    );
  c_29 <= c_29_oshift(23 downto 0);
  -- node of type 'mux' in stage 10 with id 30 and associated fundamentals [[185], [94], [140]]
  c_30_17_1_False_resize <= c_17;
  c_30_17_1_False_shift <= shift_left(c_30_17_1_False_resize, 1);
  c_30_14_0_False_resize <= c_14;
  c_30_14_0_False_shift <= shift_left(c_30_14_0_False_resize, 0);
  c_30_4_2_False_resize <= resize(c_4, 24);
  c_30_4_2_False_shift <= shift_left(c_30_4_2_False_resize, 2);
  with config_select_10 select c_30_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_30_sel select c_30 <=
    c_30_17_1_False_shift when "00",
    c_30_14_0_False_shift when "01",
    c_30_4_2_False_shift when others;
  -- node of type 'output' in stage 10 with id 31 and associated fundamentals [[185], [94], [140]]
  c_31_resize <= c_30;
  c_31 <= shift_left(c_31_resize, 0);
  -- node of type 'mux' in stage 7 with id 32 and associated fundamentals [[130], [14], [71]]
  c_32_4_1_False_resize <= resize(c_4, 24);
  c_32_4_1_False_shift <= shift_left(c_32_4_1_False_resize, 1);
  c_32_9_0_False_resize <= resize(c_9, 24);
  c_32_9_0_False_shift <= shift_left(c_32_9_0_False_resize, 0);
  with config_select_7 select c_32_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_32_sel select c_32 <=
    c_32_4_1_False_shift when "0",
    c_32_9_0_False_shift when others;
  -- node of type 'output' in stage 7 with id 33 and associated fundamentals [[130], [14], [71]]
  c_33_resize <= c_32;
  c_33 <= shift_left(c_33_resize, 0);
  -- node of type 'output' in stage 10 with id 34 and associated fundamentals [[125], [236], [243]]
  c_34_resize <= c_20;
  c_34 <= shift_left(c_34_resize, 0);
  -- node of type 'mux' in stage 11 with id 35 and associated fundamentals [[117], [166], [180]]
  c_35_23_0_False_resize <= c_23;
  c_35_23_0_False_shift <= shift_left(c_35_23_0_False_resize, 0);
  c_35_14_1_False_resize <= c_14;
  c_35_14_1_False_shift <= shift_left(c_35_14_1_False_resize, 1);
  with config_select_11 select c_35_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_35_sel select c_35 <=
    c_35_23_0_False_shift when "0",
    c_35_14_1_False_shift when others;
  -- node of type 'output' in stage 11 with id 36 and associated fundamentals [[117], [166], [180]]
  c_36_resize <= c_35;
  c_36 <= shift_left(c_36_resize, 0);
  -- node of type 'output' in stage 12 with id 37 and associated fundamentals [[155], [55], [41]]
  c_37_resize <= c_29;
  c_37 <= shift_left(c_37_resize, 0);
  -- node of type 'output' in stage 10 with id 38 and associated fundamentals [[237], [65], [141]]
  c_38_resize <= c_26;
  c_38 <= shift_left(c_38_resize, 0);
  -- node of type 'mux' in stage 9 with id 39 and associated fundamentals [[252], [47], [64]]
  c_39_17_0_False_resize <= c_17;
  c_39_17_0_False_shift <= shift_left(c_39_17_0_False_resize, 0);
  c_39_0_6_False_resize <= resize(c_0, 24);
  c_39_0_6_False_shift <= shift_left(c_39_0_6_False_resize, 6);
  with config_select_9 select c_39_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_39_sel select c_39 <=
    c_39_17_0_False_shift when "0",
    c_39_0_6_False_shift when others;
  -- node of type 'output' in stage 9 with id 40 and associated fundamentals [[252], [47], [64]]
  c_40_resize <= c_39;
  c_40 <= shift_left(c_40_resize, 0);
  -- node of type 'mux' in stage 7 with id 41 and associated fundamentals [[9], [1], [19]]
  c_41_0_0_False_resize <= resize(c_0, 21);
  c_41_0_0_False_shift <= shift_left(c_41_0_0_False_resize, 0);
  c_41_9_0_False_resize <= c_9(20 downto 0);
  c_41_9_0_False_shift <= shift_left(c_41_9_0_False_resize, 0);
  c_41_7_0_False_resize <= c_7(20 downto 0);
  c_41_7_0_False_shift <= shift_left(c_41_7_0_False_resize, 0);
  with config_select_7 select c_41_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_41_sel select c_41 <=
    c_41_0_0_False_shift when "00",
    c_41_9_0_False_shift when "01",
    c_41_7_0_False_shift when others;
  -- node of type 'output' in stage 7 with id 42 and associated fundamentals [[9], [1], [19]]
  c_42_resize <= c_41;
  c_42 <= shift_left(c_42_resize, 0);
  -- node of type 'mux' in stage 11 with id 43 and associated fundamentals [[66], [142], [204]]
  c_43_7_0_False_resize <= c_7;
  c_43_7_0_False_shift <= shift_left(c_43_7_0_False_resize, 0);
  c_43_23_0_False_resize <= c_23;
  c_43_23_0_False_shift <= shift_left(c_43_23_0_False_resize, 0);
  with config_select_11 select c_43_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_43_sel select c_43 <=
    c_43_7_0_False_shift when "0",
    c_43_23_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 44 and associated fundamentals [[66], [142], [204]]
  c_44_resize <= c_43;
  c_44 <= shift_left(c_44_resize, 0);
  -- node of type 'mux' in stage 9 with id 45 and associated fundamentals [[249], [104], [57]]
  c_45_12_0_False_resize <= c_12;
  c_45_12_0_False_shift <= shift_left(c_45_12_0_False_resize, 0);
  c_45_17_0_False_resize <= c_17;
  c_45_17_0_False_shift <= shift_left(c_45_17_0_False_resize, 0);
  with config_select_9 select c_45_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_45_sel select c_45 <=
    c_45_12_0_False_shift when "0",
    c_45_17_0_False_shift when others;
  -- node of type 'output' in stage 9 with id 46 and associated fundamentals [[249], [104], [57]]
  c_46_resize <= c_45;
  c_46 <= shift_left(c_46_resize, 0);
end architecture;
