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
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(23 downto 0);
    y_5: out std_logic_vector(23 downto 0);
    y_6: out std_logic_vector(23 downto 0);
    y_7: out std_logic_vector(23 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(17 downto 0);
  signal c_2_i0_resize: signed(17 downto 0);
  signal c_2_i1_resize: signed(17 downto 0);
  signal c_2_i0_shift: signed(17 downto 0);
  signal c_2_i1_shift: signed(17 downto 0);
  signal c_2_arith: signed(17 downto 0);
  signal c_2_oshift: signed(17 downto 0);
  signal c_3: signed(15 downto 0);
  signal c_4: signed(17 downto 0);
  signal c_5: signed(18 downto 0);
  signal c_5_i0_resize: signed(18 downto 0);
  signal c_5_i1_resize: signed(18 downto 0);
  signal c_5_i0_shift: signed(18 downto 0);
  signal c_5_i1_shift: signed(18 downto 0);
  signal c_5_arith: signed(18 downto 0);
  signal c_5_oshift: signed(18 downto 0);
  signal c_6: signed(19 downto 0);
  signal c_6_i0_resize: signed(19 downto 0);
  signal c_6_i1_resize: signed(19 downto 0);
  signal c_6_i0_shift: signed(19 downto 0);
  signal c_6_i1_shift: signed(19 downto 0);
  signal c_6_arith: signed(19 downto 0);
  signal c_6_oshift: signed(19 downto 0);
  signal c_7: signed(20 downto 0);
  signal c_7_i0_resize: signed(20 downto 0);
  signal c_7_i1_resize: signed(20 downto 0);
  signal c_7_i0_shift: signed(20 downto 0);
  signal c_7_i1_shift: signed(20 downto 0);
  signal c_7_arith: signed(20 downto 0);
  signal c_7_oshift: signed(20 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_4_5_False_resize: signed(22 downto 0);
  signal c_8_4_5_False_shift: signed(22 downto 0);
  signal c_8_3_3_False_resize: signed(22 downto 0);
  signal c_8_3_3_False_shift: signed(22 downto 0);
  signal c_8_6_0_False_resize: signed(22 downto 0);
  signal c_8_6_0_False_shift: signed(22 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_7_0_False_resize: signed(22 downto 0);
  signal c_9_7_0_False_shift: signed(22 downto 0);
  signal c_9_3_5_False_resize: signed(22 downto 0);
  signal c_9_3_5_False_shift: signed(22 downto 0);
  signal c_9_4_5_False_resize: signed(22 downto 0);
  signal c_9_4_5_False_shift: signed(22 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_i0_resize: signed(23 downto 0);
  signal c_10_i1_resize: signed(23 downto 0);
  signal c_10_i0_shift: signed(23 downto 0);
  signal c_10_i1_shift: signed(23 downto 0);
  signal c_10_arith: signed(23 downto 0);
  signal c_10_oshift: signed(23 downto 0);
  signal c_11: signed(21 downto 0);
  signal c_11_4_0_False_resize: signed(21 downto 0);
  signal c_11_4_0_False_shift: signed(21 downto 0);
  signal c_11_6_2_False_resize: signed(21 downto 0);
  signal c_11_6_2_False_shift: signed(21 downto 0);
  signal c_11_3_3_False_resize: signed(21 downto 0);
  signal c_11_3_3_False_shift: signed(21 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(18 downto 0);
  signal c_12_4_0_False_resize: signed(18 downto 0);
  signal c_12_4_0_False_shift: signed(18 downto 0);
  signal c_12_5_0_False_resize: signed(18 downto 0);
  signal c_12_5_0_False_shift: signed(18 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(19 downto 0);
  signal c_14_5_0_False_resize: signed(19 downto 0);
  signal c_14_5_0_False_shift: signed(19 downto 0);
  signal c_14_3_0_False_resize: signed(19 downto 0);
  signal c_14_3_0_False_shift: signed(19 downto 0);
  signal c_14_6_0_False_resize: signed(19 downto 0);
  signal c_14_6_0_False_shift: signed(19 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(20 downto 0);
  signal c_15_7_0_False_resize: signed(20 downto 0);
  signal c_15_7_0_False_shift: signed(20 downto 0);
  signal c_15_4_1_False_resize: signed(20 downto 0);
  signal c_15_4_1_False_shift: signed(20 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_i0_resize: signed(23 downto 0);
  signal c_16_i1_resize: signed(23 downto 0);
  signal c_16_i0_shift: signed(23 downto 0);
  signal c_16_i1_shift: signed(23 downto 0);
  signal c_16_arith: signed(23 downto 0);
  signal c_16_oshift: signed(23 downto 0);
  signal c_17: signed(19 downto 0);
  signal c_17_4_0_False_resize: signed(19 downto 0);
  signal c_17_4_0_False_shift: signed(19 downto 0);
  signal c_17_4_2_False_resize: signed(19 downto 0);
  signal c_17_4_2_False_shift: signed(19 downto 0);
  signal c_17_3_2_False_resize: signed(19 downto 0);
  signal c_17_3_2_False_shift: signed(19 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_5_4_False_resize: signed(23 downto 0);
  signal c_18_5_4_False_shift: signed(23 downto 0);
  signal c_18_6_0_False_resize: signed(23 downto 0);
  signal c_18_6_0_False_shift: signed(23 downto 0);
  signal c_18_4_6_False_resize: signed(23 downto 0);
  signal c_18_4_6_False_shift: signed(23 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_i0_resize: signed(23 downto 0);
  signal c_19_i1_resize: signed(23 downto 0);
  signal c_19_i0_shift: signed(23 downto 0);
  signal c_19_i1_shift: signed(23 downto 0);
  signal c_19_arith: signed(23 downto 0);
  signal c_19_oshift: signed(23 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(18 downto 0);
  signal c_20_3_0_False_resize: signed(18 downto 0);
  signal c_20_3_0_False_shift: signed(18 downto 0);
  signal c_20_3_3_False_resize: signed(18 downto 0);
  signal c_20_3_3_False_shift: signed(18 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(19 downto 0);
  signal c_21_4_2_False_resize: signed(19 downto 0);
  signal c_21_4_2_False_shift: signed(19 downto 0);
  signal c_21_6_0_False_resize: signed(19 downto 0);
  signal c_21_6_0_False_shift: signed(19 downto 0);
  signal c_21_3_2_False_resize: signed(19 downto 0);
  signal c_21_3_2_False_shift: signed(19 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_22_i0_resize: signed(22 downto 0);
  signal c_22_i1_resize: signed(22 downto 0);
  signal c_22_i0_shift: signed(22 downto 0);
  signal c_22_i1_shift: signed(22 downto 0);
  signal c_22_arith: signed(22 downto 0);
  signal c_22_oshift: signed(22 downto 0);
  signal c_23: signed(20 downto 0);
  signal c_23_3_4_False_resize: signed(20 downto 0);
  signal c_23_3_4_False_shift: signed(20 downto 0);
  signal c_23_6_0_False_resize: signed(20 downto 0);
  signal c_23_6_0_False_shift: signed(20 downto 0);
  signal c_23_4_3_False_resize: signed(20 downto 0);
  signal c_23_4_3_False_shift: signed(20 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(19 downto 0);
  signal c_24_3_0_False_resize: signed(19 downto 0);
  signal c_24_3_0_False_shift: signed(19 downto 0);
  signal c_24_6_0_False_resize: signed(19 downto 0);
  signal c_24_6_0_False_shift: signed(19 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_i0_resize: signed(23 downto 0);
  signal c_25_i1_resize: signed(23 downto 0);
  signal c_25_i0_shift: signed(23 downto 0);
  signal c_25_i1_shift: signed(23 downto 0);
  signal c_25_arith: signed(23 downto 0);
  signal c_25_oshift: signed(23 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(20 downto 0);
  signal c_26_3_4_False_resize: signed(20 downto 0);
  signal c_26_3_4_False_shift: signed(20 downto 0);
  signal c_26_7_0_False_resize: signed(20 downto 0);
  signal c_26_7_0_False_shift: signed(20 downto 0);
  signal c_26_4_2_False_resize: signed(20 downto 0);
  signal c_26_4_2_False_shift: signed(20 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(19 downto 0);
  signal c_27_4_0_False_resize: signed(19 downto 0);
  signal c_27_4_0_False_shift: signed(19 downto 0);
  signal c_27_5_0_False_resize: signed(19 downto 0);
  signal c_27_5_0_False_shift: signed(19 downto 0);
  signal c_27_6_0_False_resize: signed(19 downto 0);
  signal c_27_6_0_False_shift: signed(19 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_i0_resize: signed(23 downto 0);
  signal c_28_i1_resize: signed(23 downto 0);
  signal c_28_i0_shift: signed(23 downto 0);
  signal c_28_i1_shift: signed(23 downto 0);
  signal c_28_arith: signed(23 downto 0);
  signal c_28_oshift: signed(23 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(17 downto 0);
  signal c_29_4_0_False_resize: signed(17 downto 0);
  signal c_29_4_0_False_shift: signed(17 downto 0);
  signal c_29_3_2_False_resize: signed(17 downto 0);
  signal c_29_3_2_False_shift: signed(17 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(20 downto 0);
  signal c_30_4_0_False_resize: signed(20 downto 0);
  signal c_30_4_0_False_shift: signed(20 downto 0);
  signal c_30_6_1_False_resize: signed(20 downto 0);
  signal c_30_6_1_False_shift: signed(20 downto 0);
  signal c_30_3_4_False_resize: signed(20 downto 0);
  signal c_30_3_4_False_shift: signed(20 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_i0_resize: signed(23 downto 0);
  signal c_31_i1_resize: signed(23 downto 0);
  signal c_31_i0_shift: signed(23 downto 0);
  signal c_31_i1_shift: signed(23 downto 0);
  signal c_31_arith: signed(23 downto 0);
  signal c_31_oshift: signed(23 downto 0);
  signal c_32: signed(19 downto 0);
  signal c_33: signed(21 downto 0);
  signal c_33_7_1_False_resize: signed(21 downto 0);
  signal c_33_7_1_False_shift: signed(21 downto 0);
  signal c_33_4_0_False_resize: signed(21 downto 0);
  signal c_33_4_0_False_shift: signed(21 downto 0);
  signal c_33_3_0_False_resize: signed(21 downto 0);
  signal c_33_3_0_False_shift: signed(21 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_i0_resize: signed(23 downto 0);
  signal c_34_i1_resize: signed(23 downto 0);
  signal c_34_i0_shift: signed(23 downto 0);
  signal c_34_i1_shift: signed(23 downto 0);
  signal c_34_arith: signed(23 downto 0);
  signal c_34_oshift: signed(23 downto 0);
  signal c_34_sub_sel: std_logic;
  signal c_35: signed(20 downto 0);
  signal c_35_5_0_False_resize: signed(20 downto 0);
  signal c_35_5_0_False_shift: signed(20 downto 0);
  signal c_35_3_5_False_resize: signed(20 downto 0);
  signal c_35_3_5_False_shift: signed(20 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(20 downto 0);
  signal c_36_3_1_False_resize: signed(20 downto 0);
  signal c_36_3_1_False_shift: signed(20 downto 0);
  signal c_36_3_0_False_resize: signed(20 downto 0);
  signal c_36_3_0_False_shift: signed(20 downto 0);
  signal c_36_6_1_False_resize: signed(20 downto 0);
  signal c_36_6_1_False_shift: signed(20 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_i0_resize: signed(23 downto 0);
  signal c_37_i1_resize: signed(23 downto 0);
  signal c_37_i0_shift: signed(23 downto 0);
  signal c_37_i1_shift: signed(23 downto 0);
  signal c_37_arith: signed(23 downto 0);
  signal c_37_oshift: signed(23 downto 0);
  signal c_37_sub_sel: std_logic;
  signal c_38: signed(23 downto 0);
  signal c_38_resize: signed(23 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_resize: signed(23 downto 0);
  signal c_40: signed(22 downto 0);
  signal c_40_resize: signed(22 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_resize: signed(23 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_resize: signed(23 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_resize: signed(23 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_resize: signed(23 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_resize: signed(23 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_resize: signed(23 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_resize: signed(23 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 38
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_38);
    end if;
  end process;
  -- output node 1 with id 39
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_39);
    end if;
  end process;
  -- output node 2 with id 40
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_40);
    end if;
  end process;
  -- output node 3 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 4 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_42);
    end if;
  end process;
  -- output node 5 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_43);
    end if;
  end process;
  -- output node 6 with id 44
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_44);
    end if;
  end process;
  -- output node 7 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_45);
    end if;
  end process;
  -- output node 8 with id 46
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_46);
    end if;
  end process;
  -- output node 9 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_47);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1], [1]]
  c_1 <= c_0 & "";
  -- node of type 'add' in stage 1 with id 2 and associated fundamentals [[3], [3], [3]]
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 18,
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
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(17 downto 0);
  -- node of type 'register' in stage 2 with id 3 and associated fundamentals [[1], [1], [1]]
  c_3 <= c_1 & "";
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[3], [3], [3]]
  c_4 <= c_2 & "";
  -- node of type 'sub' in stage 2 with id 5 and associated fundamentals [[7], [7], [7]]
  inst_adder_node_5: entity work.adder_node
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
      x_i => c_1,
      y_i => c_1,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(18 downto 0);
  -- node of type 'add' in stage 2 with id 6 and associated fundamentals [[13], [13], [13]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 18,
      w_o => 20,
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
      x_i => c_1,
      y_i => c_2,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(19 downto 0);
  -- node of type 'sub' in stage 2 with id 7 and associated fundamentals [[31], [31], [31]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 21,
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
      x_i => c_1,
      y_i => c_1,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(20 downto 0);
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[8], [13], [96]]
  c_8_4_5_False_resize <= resize(c_4, 23);
  c_8_4_5_False_shift <= shift_left(c_8_4_5_False_resize, 5);
  c_8_3_3_False_resize <= resize(c_3, 23);
  c_8_3_3_False_shift <= shift_left(c_8_3_3_False_resize, 3);
  c_8_6_0_False_resize <= resize(c_6, 23);
  c_8_6_0_False_shift <= shift_left(c_8_6_0_False_resize, 0);
  with config_select_3 select c_8_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_8_sel select c_8 <=
    c_8_4_5_False_shift when "00",
    c_8_3_3_False_shift when "01",
    c_8_6_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[32], [96], [31]]
  c_9_7_0_False_resize <= resize(c_7, 23);
  c_9_7_0_False_shift <= shift_left(c_9_7_0_False_resize, 0);
  c_9_3_5_False_resize <= resize(c_3, 23);
  c_9_3_5_False_shift <= shift_left(c_9_3_5_False_resize, 5);
  c_9_4_5_False_resize <= resize(c_4, 23);
  c_9_4_5_False_shift <= shift_left(c_9_4_5_False_resize, 5);
  with config_select_3 select c_9_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_9_sel select c_9 <=
    c_9_7_0_False_shift when "00",
    c_9_3_5_False_shift when "01",
    c_9_4_5_False_shift when others;
  -- node of type 'add' in stage 4 with id 10 and associated fundamentals [[72], [205], [158]]
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
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
      x_i => c_8,
      y_i => c_9,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[52], [3], [8]]
  c_11_4_0_False_resize <= resize(c_4, 22);
  c_11_4_0_False_shift <= shift_left(c_11_4_0_False_resize, 0);
  c_11_6_2_False_resize <= resize(c_6, 22);
  c_11_6_2_False_shift <= shift_left(c_11_6_2_False_resize, 2);
  c_11_3_3_False_resize <= resize(c_3, 22);
  c_11_3_3_False_shift <= shift_left(c_11_3_3_False_resize, 3);
  with config_select_3 select c_11_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_11_sel select c_11 <=
    c_11_4_0_False_shift when "00",
    c_11_6_2_False_shift when "01",
    c_11_3_3_False_shift when others;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[0], [3], [7]]
  c_12_4_0_False_resize <= resize(c_4, 19);
  c_12_4_0_False_shift <= shift_left(c_12_4_0_False_resize, 0);
  c_12_5_0_False_resize <= c_5;
  c_12_5_0_False_shift <= shift_left(c_12_5_0_False_resize, 0);
  with config_select_3 select c_12_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_12_sel select c_12 <=
    c_12_4_0_False_shift when "00",
    c_12_5_0_False_shift when "01",
    to_signed(0, 19) when others;
  -- node of type 'add_sub' in stage 4 with id 13 and associated fundamentals [[52], [99], [216]]
  with config_select_4 select c_13_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 22,
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
      sub_i => c_13_sub_sel,
      x_i => c_12,
      y_i => c_11,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[1], [13], [7]]
  c_14_5_0_False_resize <= resize(c_5, 20);
  c_14_5_0_False_shift <= shift_left(c_14_5_0_False_resize, 0);
  c_14_3_0_False_resize <= resize(c_3, 20);
  c_14_3_0_False_shift <= shift_left(c_14_3_0_False_resize, 0);
  c_14_6_0_False_resize <= c_6;
  c_14_6_0_False_shift <= shift_left(c_14_6_0_False_resize, 0);
  with config_select_3 select c_14_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_14_sel select c_14 <=
    c_14_5_0_False_shift when "00",
    c_14_3_0_False_shift when "01",
    c_14_6_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[6], [31], [0]]
  c_15_7_0_False_resize <= c_7;
  c_15_7_0_False_shift <= shift_left(c_15_7_0_False_resize, 0);
  c_15_4_1_False_resize <= resize(c_4, 21);
  c_15_4_1_False_shift <= shift_left(c_15_4_1_False_resize, 1);
  with config_select_3 select c_15_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_15_sel select c_15 <=
    c_15_7_0_False_shift when "00",
    c_15_4_1_False_shift when "01",
    to_signed(0, 21) when others;
  -- node of type 'add' in stage 4 with id 16 and associated fundamentals [[25], [137], [7]]
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 21,
      w_o => 24,
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
      x_i => c_14,
      y_i => c_15,
      z_o => c_16_oshift
    );
  c_16 <= c_16_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 17 and associated fundamentals [[12], [4], [3]]
  c_17_4_0_False_resize <= resize(c_4, 20);
  c_17_4_0_False_shift <= shift_left(c_17_4_0_False_resize, 0);
  c_17_4_2_False_resize <= resize(c_4, 20);
  c_17_4_2_False_shift <= shift_left(c_17_4_2_False_resize, 2);
  c_17_3_2_False_resize <= resize(c_3, 20);
  c_17_3_2_False_shift <= shift_left(c_17_3_2_False_resize, 2);
  with config_select_3 select c_17_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_17_sel select c_17 <=
    c_17_4_0_False_shift when "00",
    c_17_4_2_False_shift when "01",
    c_17_3_2_False_shift when others;
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[13], [192], [112]]
  c_18_5_4_False_resize <= resize(c_5, 24);
  c_18_5_4_False_shift <= shift_left(c_18_5_4_False_resize, 4);
  c_18_6_0_False_resize <= resize(c_6, 24);
  c_18_6_0_False_shift <= shift_left(c_18_6_0_False_resize, 0);
  c_18_4_6_False_resize <= resize(c_4, 24);
  c_18_4_6_False_shift <= shift_left(c_18_4_6_False_resize, 6);
  with config_select_3 select c_18_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_18_sel select c_18 <=
    c_18_5_4_False_shift when "00",
    c_18_6_0_False_shift when "01",
    c_18_4_6_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 19 and associated fundamentals [[37], [184], [118]]
  with config_select_4 select c_19_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 20,
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
      sub_i => c_19_sub_sel,
      x_i => c_18,
      y_i => c_17,
      z_o => c_19_oshift
    );
  c_19 <= c_19_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 20 and associated fundamentals [[1], [8], [1]]
  c_20_3_0_False_resize <= resize(c_3, 19);
  c_20_3_0_False_shift <= shift_left(c_20_3_0_False_resize, 0);
  c_20_3_3_False_resize <= resize(c_3, 19);
  c_20_3_3_False_shift <= shift_left(c_20_3_3_False_resize, 3);
  with config_select_3 select c_20_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_20_sel select c_20 <=
    c_20_3_0_False_shift when "0",
    c_20_3_3_False_shift when others;
  -- node of type 'mux' in stage 3 with id 21 and associated fundamentals [[12], [4], [13]]
  c_21_4_2_False_resize <= resize(c_4, 20);
  c_21_4_2_False_shift <= shift_left(c_21_4_2_False_resize, 2);
  c_21_6_0_False_resize <= c_6;
  c_21_6_0_False_shift <= shift_left(c_21_6_0_False_resize, 0);
  c_21_3_2_False_resize <= resize(c_3, 20);
  c_21_3_2_False_shift <= shift_left(c_21_3_2_False_resize, 2);
  with config_select_3 select c_21_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_21_sel select c_21 <=
    c_21_4_2_False_shift when "00",
    c_21_6_0_False_shift when "01",
    c_21_3_2_False_shift when others;
  -- node of type 'add' in stage 4 with id 22 and associated fundamentals [[97], [40], [105]]
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 20,
      w_o => 23,
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
      x_i => c_20,
      y_i => c_21,
      z_o => c_22_oshift
    );
  c_22 <= c_22_oshift(22 downto 0);
  -- node of type 'mux' in stage 3 with id 23 and associated fundamentals [[16], [13], [24]]
  c_23_3_4_False_resize <= resize(c_3, 21);
  c_23_3_4_False_shift <= shift_left(c_23_3_4_False_resize, 4);
  c_23_6_0_False_resize <= resize(c_6, 21);
  c_23_6_0_False_shift <= shift_left(c_23_6_0_False_resize, 0);
  c_23_4_3_False_resize <= resize(c_4, 21);
  c_23_4_3_False_shift <= shift_left(c_23_4_3_False_resize, 3);
  with config_select_3 select c_23_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_23_sel select c_23 <=
    c_23_3_4_False_shift when "00",
    c_23_6_0_False_shift when "01",
    c_23_4_3_False_shift when others;
  -- node of type 'mux' in stage 3 with id 24 and associated fundamentals [[1], [13], [0]]
  c_24_3_0_False_resize <= resize(c_3, 20);
  c_24_3_0_False_shift <= shift_left(c_24_3_0_False_resize, 0);
  c_24_6_0_False_resize <= c_6;
  c_24_6_0_False_shift <= shift_left(c_24_6_0_False_resize, 0);
  with config_select_3 select c_24_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_24_sel select c_24 <=
    c_24_3_0_False_shift when "00",
    c_24_6_0_False_shift when "01",
    to_signed(0, 20) when others;
  -- node of type 'add_sub' in stage 4 with id 25 and associated fundamentals [[127], [91], [192]]
  with config_select_4 select c_25_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 20,
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
      sub_i => c_25_sub_sel,
      x_i => c_23,
      y_i => c_24,
      z_o => c_25_oshift
    );
  c_25 <= c_25_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 26 and associated fundamentals [[16], [12], [31]]
  c_26_3_4_False_resize <= resize(c_3, 21);
  c_26_3_4_False_shift <= shift_left(c_26_3_4_False_resize, 4);
  c_26_7_0_False_resize <= c_7;
  c_26_7_0_False_shift <= shift_left(c_26_7_0_False_resize, 0);
  c_26_4_2_False_resize <= resize(c_4, 21);
  c_26_4_2_False_shift <= shift_left(c_26_4_2_False_resize, 2);
  with config_select_3 select c_26_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_26_sel select c_26 <=
    c_26_3_4_False_shift when "00",
    c_26_7_0_False_shift when "01",
    c_26_4_2_False_shift when others;
  -- node of type 'mux' in stage 3 with id 27 and associated fundamentals [[3], [7], [13]]
  c_27_4_0_False_resize <= resize(c_4, 20);
  c_27_4_0_False_shift <= shift_left(c_27_4_0_False_resize, 0);
  c_27_5_0_False_resize <= resize(c_5, 20);
  c_27_5_0_False_shift <= shift_left(c_27_5_0_False_resize, 0);
  c_27_6_0_False_resize <= c_6;
  c_27_6_0_False_shift <= shift_left(c_27_6_0_False_resize, 0);
  with config_select_3 select c_27_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_27_sel select c_27 <=
    c_27_4_0_False_shift when "00",
    c_27_5_0_False_shift when "01",
    c_27_6_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 28 and associated fundamentals [[131], [89], [235]]
  with config_select_4 select c_28_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 20,
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
      sub_i => c_28_sub_sel,
      x_i => c_26,
      y_i => c_27,
      z_o => c_28_oshift
    );
  c_28 <= c_28_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 29 and associated fundamentals [[3], [4], [4]]
  c_29_4_0_False_resize <= c_4;
  c_29_4_0_False_shift <= shift_left(c_29_4_0_False_resize, 0);
  c_29_3_2_False_resize <= resize(c_3, 18);
  c_29_3_2_False_shift <= shift_left(c_29_3_2_False_resize, 2);
  with config_select_3 select c_29_sel <= 
    "0" when "00",
    "1" when "10",
    "1" when others;
  with c_29_sel select c_29 <=
    c_29_4_0_False_shift when "0",
    c_29_3_2_False_shift when others;
  -- node of type 'mux' in stage 3 with id 30 and associated fundamentals [[3], [26], [16]]
  c_30_4_0_False_resize <= resize(c_4, 21);
  c_30_4_0_False_shift <= shift_left(c_30_4_0_False_resize, 0);
  c_30_6_1_False_resize <= resize(c_6, 21);
  c_30_6_1_False_shift <= shift_left(c_30_6_1_False_resize, 1);
  c_30_3_4_False_resize <= resize(c_3, 21);
  c_30_3_4_False_shift <= shift_left(c_30_3_4_False_resize, 4);
  with config_select_3 select c_30_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_30_sel select c_30 <=
    c_30_4_0_False_shift when "00",
    c_30_6_1_False_shift when "01",
    c_30_3_4_False_shift when others;
  -- node of type 'sub' in stage 4 with id 31 and associated fundamentals [[189], [230], [240]]
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 21,
      w_o => 24,
      s_x_i => 6,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_29,
      y_i => c_30,
      z_o => c_31_oshift
    );
  c_31 <= c_31_oshift(23 downto 0);
  -- node of type 'register' in stage 3 with id 32 and associated fundamentals [[13], [13], [13]]
  c_32 <= c_6 & "";
  -- node of type 'mux' in stage 3 with id 33 and associated fundamentals [[1], [62], [3]]
  c_33_7_1_False_resize <= resize(c_7, 22);
  c_33_7_1_False_shift <= shift_left(c_33_7_1_False_resize, 1);
  c_33_4_0_False_resize <= resize(c_4, 22);
  c_33_4_0_False_shift <= shift_left(c_33_4_0_False_resize, 0);
  c_33_3_0_False_resize <= resize(c_3, 22);
  c_33_3_0_False_shift <= shift_left(c_33_3_0_False_resize, 0);
  with config_select_3 select c_33_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_33_sel select c_33 <=
    c_33_7_1_False_shift when "00",
    c_33_4_0_False_shift when "01",
    c_33_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 34 and associated fundamentals [[207], [146], [211]]
  with config_select_4 select c_34_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_34: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 22,
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
      sub_i => c_34_sub_sel,
      x_i => c_32,
      y_i => c_33,
      z_o => c_34_oshift
    );
  c_34 <= c_34_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 35 and associated fundamentals [[7], [32], [32]]
  c_35_5_0_False_resize <= resize(c_5, 21);
  c_35_5_0_False_shift <= shift_left(c_35_5_0_False_resize, 0);
  c_35_3_5_False_resize <= resize(c_3, 21);
  c_35_3_5_False_shift <= shift_left(c_35_3_5_False_resize, 5);
  with config_select_3 select c_35_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_35_sel select c_35 <=
    c_35_5_0_False_shift when "0",
    c_35_3_5_False_shift when others;
  -- node of type 'mux' in stage 3 with id 36 and associated fundamentals [[1], [2], [26]]
  c_36_3_1_False_resize <= resize(c_3, 21);
  c_36_3_1_False_shift <= shift_left(c_36_3_1_False_resize, 1);
  c_36_3_0_False_resize <= resize(c_3, 21);
  c_36_3_0_False_shift <= shift_left(c_36_3_0_False_resize, 0);
  c_36_6_1_False_resize <= resize(c_6, 21);
  c_36_6_1_False_shift <= shift_left(c_36_6_1_False_resize, 1);
  with config_select_3 select c_36_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_36_sel select c_36 <=
    c_36_3_1_False_shift when "00",
    c_36_3_0_False_shift when "01",
    c_36_6_1_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 37 and associated fundamentals [[27], [126], [154]]
  with config_select_4 select c_37_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_37: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 21,
      w_o => 24,
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
      sub_i => c_37_sub_sel,
      x_i => c_35,
      y_i => c_36,
      z_o => c_37_oshift
    );
  c_37 <= c_37_oshift(23 downto 0);
  -- node of type 'output' in stage 4 with id 38 and associated fundamentals [[127], [91], [192]]
  c_38_resize <= c_25;
  c_38 <= shift_left(c_38_resize, 0);
  -- node of type 'output' in stage 4 with id 39 and associated fundamentals [[72], [205], [158]]
  c_39_resize <= c_10;
  c_39 <= shift_left(c_39_resize, 0);
  -- node of type 'output' in stage 4 with id 40 and associated fundamentals [[97], [40], [105]]
  c_40_resize <= c_22;
  c_40 <= shift_left(c_40_resize, 0);
  -- node of type 'output' in stage 4 with id 41 and associated fundamentals [[37], [184], [118]]
  c_41_resize <= c_19;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'output' in stage 4 with id 42 and associated fundamentals [[27], [126], [154]]
  c_42_resize <= c_37;
  c_42 <= shift_left(c_42_resize, 0);
  -- node of type 'output' in stage 4 with id 43 and associated fundamentals [[25], [137], [7]]
  c_43_resize <= c_16;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'output' in stage 4 with id 44 and associated fundamentals [[52], [99], [216]]
  c_44_resize <= c_13;
  c_44 <= shift_left(c_44_resize, 0);
  -- node of type 'output' in stage 4 with id 45 and associated fundamentals [[207], [146], [211]]
  c_45_resize <= c_34;
  c_45 <= shift_left(c_45_resize, 0);
  -- node of type 'output' in stage 4 with id 46 and associated fundamentals [[131], [89], [235]]
  c_46_resize <= c_28;
  c_46 <= shift_left(c_46_resize, 0);
  -- node of type 'output' in stage 4 with id 47 and associated fundamentals [[189], [230], [240]]
  c_47_resize <= c_31;
  c_47 <= shift_left(c_47_resize, 0);
end architecture;
