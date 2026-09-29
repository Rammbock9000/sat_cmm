library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(22 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(23 downto 0);
    y_5: out std_logic_vector(23 downto 0);
    y_6: out std_logic_vector(23 downto 0);
    y_7: out std_logic_vector(23 downto 0);
    y_8: out std_logic_vector(22 downto 0);
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
  signal c_2: signed(15 downto 0);
  signal c_2_0_0_False_resize: signed(15 downto 0);
  signal c_2_0_0_False_shift: signed(15 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(18 downto 0);
  signal c_3_i0_resize: signed(18 downto 0);
  signal c_3_i1_resize: signed(18 downto 0);
  signal c_3_i0_shift: signed(18 downto 0);
  signal c_3_i1_shift: signed(18 downto 0);
  signal c_3_arith: signed(18 downto 0);
  signal c_3_oshift: signed(18 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_4_0_0_False_resize: signed(15 downto 0);
  signal c_4_0_0_False_shift: signed(15 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(17 downto 0);
  signal c_5_i0_resize: signed(17 downto 0);
  signal c_5_i1_resize: signed(17 downto 0);
  signal c_5_i0_shift: signed(17 downto 0);
  signal c_5_i1_shift: signed(17 downto 0);
  signal c_5_arith: signed(17 downto 0);
  signal c_5_oshift: signed(17 downto 0);
  signal c_6: signed(18 downto 0);
  signal c_6_i0_resize: signed(18 downto 0);
  signal c_6_i1_resize: signed(18 downto 0);
  signal c_6_i0_shift: signed(18 downto 0);
  signal c_6_i1_shift: signed(18 downto 0);
  signal c_6_arith: signed(18 downto 0);
  signal c_6_oshift: signed(18 downto 0);
  signal c_7: signed(17 downto 0);
  signal c_7_0_0_False_resize: signed(17 downto 0);
  signal c_7_0_0_False_shift: signed(17 downto 0);
  signal c_7_0_2_False_resize: signed(17 downto 0);
  signal c_7_0_2_False_shift: signed(17 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(18 downto 0);
  signal c_8_i0_resize: signed(18 downto 0);
  signal c_8_i1_resize: signed(18 downto 0);
  signal c_8_i0_shift: signed(18 downto 0);
  signal c_8_i1_shift: signed(18 downto 0);
  signal c_8_arith: signed(18 downto 0);
  signal c_8_oshift: signed(18 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(20 downto 0);
  signal c_9_3_4_False_resize: signed(20 downto 0);
  signal c_9_3_4_False_shift: signed(20 downto 0);
  signal c_9_3_0_False_resize: signed(20 downto 0);
  signal c_9_3_0_False_shift: signed(20 downto 0);
  signal c_9_6_2_False_resize: signed(20 downto 0);
  signal c_9_6_2_False_shift: signed(20 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(17 downto 0);
  signal c_10_5_0_False_resize: signed(17 downto 0);
  signal c_10_5_0_False_shift: signed(17 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_i0_resize: signed(23 downto 0);
  signal c_11_i1_resize: signed(23 downto 0);
  signal c_11_i0_shift: signed(23 downto 0);
  signal c_11_i1_shift: signed(23 downto 0);
  signal c_11_arith: signed(23 downto 0);
  signal c_11_oshift: signed(23 downto 0);
  signal c_12: signed(20 downto 0);
  signal c_12_5_3_False_resize: signed(20 downto 0);
  signal c_12_5_3_False_shift: signed(20 downto 0);
  signal c_12_3_0_False_resize: signed(20 downto 0);
  signal c_12_3_0_False_shift: signed(20 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_13_5_4_False_resize: signed(21 downto 0);
  signal c_13_5_4_False_shift: signed(21 downto 0);
  signal c_13_5_0_False_resize: signed(21 downto 0);
  signal c_13_5_0_False_shift: signed(21 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_i0_resize: signed(23 downto 0);
  signal c_14_i1_resize: signed(23 downto 0);
  signal c_14_i0_shift: signed(23 downto 0);
  signal c_14_i1_shift: signed(23 downto 0);
  signal c_14_arith: signed(23 downto 0);
  signal c_14_oshift: signed(23 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(21 downto 0);
  signal c_15_8_3_False_resize: signed(21 downto 0);
  signal c_15_8_3_False_shift: signed(21 downto 0);
  signal c_15_8_0_False_resize: signed(21 downto 0);
  signal c_15_8_0_False_shift: signed(21 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(17 downto 0);
  signal c_16_5_0_False_resize: signed(17 downto 0);
  signal c_16_5_0_False_shift: signed(17 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(22 downto 0);
  signal c_17_i0_resize: signed(22 downto 0);
  signal c_17_i1_resize: signed(22 downto 0);
  signal c_17_i0_shift: signed(22 downto 0);
  signal c_17_i1_shift: signed(22 downto 0);
  signal c_17_arith: signed(22 downto 0);
  signal c_17_oshift: signed(22 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(22 downto 0);
  signal c_18_3_7_False_resize: signed(22 downto 0);
  signal c_18_3_7_False_shift: signed(22 downto 0);
  signal c_18_3_0_False_resize: signed(22 downto 0);
  signal c_18_3_0_False_shift: signed(22 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(21 downto 0);
  signal c_19_3_3_False_resize: signed(21 downto 0);
  signal c_19_3_3_False_shift: signed(21 downto 0);
  signal c_19_6_0_False_resize: signed(21 downto 0);
  signal c_19_6_0_False_shift: signed(21 downto 0);
  signal c_19_8_4_False_resize: signed(21 downto 0);
  signal c_19_8_4_False_shift: signed(21 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_20_i0_resize: signed(22 downto 0);
  signal c_20_i1_resize: signed(22 downto 0);
  signal c_20_i0_shift: signed(22 downto 0);
  signal c_20_i1_shift: signed(22 downto 0);
  signal c_20_arith: signed(22 downto 0);
  signal c_20_oshift: signed(22 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(18 downto 0);
  signal c_21_3_3_False_resize: signed(18 downto 0);
  signal c_21_3_3_False_shift: signed(18 downto 0);
  signal c_21_6_0_False_resize: signed(18 downto 0);
  signal c_21_6_0_False_shift: signed(18 downto 0);
  signal c_21_5_0_False_resize: signed(18 downto 0);
  signal c_21_5_0_False_shift: signed(18 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(18 downto 0);
  signal c_22_5_1_False_resize: signed(18 downto 0);
  signal c_22_5_1_False_shift: signed(18 downto 0);
  signal c_22_5_0_False_resize: signed(18 downto 0);
  signal c_22_5_0_False_shift: signed(18 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_i0_resize: signed(23 downto 0);
  signal c_23_i1_resize: signed(23 downto 0);
  signal c_23_i0_shift: signed(23 downto 0);
  signal c_23_i1_shift: signed(23 downto 0);
  signal c_23_arith: signed(23 downto 0);
  signal c_23_oshift: signed(23 downto 0);
  signal c_24: signed(19 downto 0);
  signal c_24_5_0_False_resize: signed(19 downto 0);
  signal c_24_5_0_False_shift: signed(19 downto 0);
  signal c_24_6_1_False_resize: signed(19 downto 0);
  signal c_24_6_1_False_shift: signed(19 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(17 downto 0);
  signal c_25_3_1_False_resize: signed(17 downto 0);
  signal c_25_3_1_False_shift: signed(17 downto 0);
  signal c_25_5_0_False_resize: signed(17 downto 0);
  signal c_25_5_0_False_shift: signed(17 downto 0);
  signal c_25_8_0_False_resize: signed(17 downto 0);
  signal c_25_8_0_False_shift: signed(17 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_i0_resize: signed(23 downto 0);
  signal c_26_i1_resize: signed(23 downto 0);
  signal c_26_i0_shift: signed(23 downto 0);
  signal c_26_i1_shift: signed(23 downto 0);
  signal c_26_arith: signed(23 downto 0);
  signal c_26_oshift: signed(23 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(23 downto 0);
  signal c_27_3_8_False_resize: signed(23 downto 0);
  signal c_27_3_8_False_shift: signed(23 downto 0);
  signal c_27_5_0_False_resize: signed(23 downto 0);
  signal c_27_5_0_False_shift: signed(23 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(20 downto 0);
  signal c_28_5_3_False_resize: signed(20 downto 0);
  signal c_28_5_3_False_shift: signed(20 downto 0);
  signal c_28_5_0_False_resize: signed(20 downto 0);
  signal c_28_5_0_False_shift: signed(20 downto 0);
  signal c_28_8_3_False_resize: signed(20 downto 0);
  signal c_28_8_3_False_shift: signed(20 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_i0_resize: signed(23 downto 0);
  signal c_29_i1_resize: signed(23 downto 0);
  signal c_29_i0_shift: signed(23 downto 0);
  signal c_29_i1_shift: signed(23 downto 0);
  signal c_29_arith: signed(23 downto 0);
  signal c_29_oshift: signed(23 downto 0);
  signal c_29_sub_sel_left: std_logic;
  signal c_29_sub_sel_right: std_logic;
  signal c_30: signed(23 downto 0);
  signal c_30_6_5_False_resize: signed(23 downto 0);
  signal c_30_6_5_False_shift: signed(23 downto 0);
  signal c_30_6_4_False_resize: signed(23 downto 0);
  signal c_30_6_4_False_shift: signed(23 downto 0);
  signal c_30_5_0_False_resize: signed(23 downto 0);
  signal c_30_5_0_False_shift: signed(23 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(22 downto 0);
  signal c_31_5_5_False_resize: signed(22 downto 0);
  signal c_31_5_5_False_shift: signed(22 downto 0);
  signal c_31_6_0_False_resize: signed(22 downto 0);
  signal c_31_6_0_False_shift: signed(22 downto 0);
  signal c_31_5_0_False_resize: signed(22 downto 0);
  signal c_31_5_0_False_shift: signed(22 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_32_i0_resize: signed(23 downto 0);
  signal c_32_i1_resize: signed(23 downto 0);
  signal c_32_i0_shift: signed(23 downto 0);
  signal c_32_i1_shift: signed(23 downto 0);
  signal c_32_arith: signed(23 downto 0);
  signal c_32_oshift: signed(23 downto 0);
  signal c_32_sub_sel: std_logic;
  signal c_33: signed(19 downto 0);
  signal c_33_8_1_False_resize: signed(19 downto 0);
  signal c_33_8_1_False_shift: signed(19 downto 0);
  signal c_33_8_0_False_resize: signed(19 downto 0);
  signal c_33_8_0_False_shift: signed(19 downto 0);
  signal c_33_6_0_False_resize: signed(19 downto 0);
  signal c_33_6_0_False_shift: signed(19 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(18 downto 0);
  signal c_34_8_1_False_resize: signed(18 downto 0);
  signal c_34_8_1_False_shift: signed(18 downto 0);
  signal c_34_8_0_False_resize: signed(18 downto 0);
  signal c_34_8_0_False_shift: signed(18 downto 0);
  signal c_34_6_0_False_resize: signed(18 downto 0);
  signal c_34_6_0_False_shift: signed(18 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_i0_resize: signed(23 downto 0);
  signal c_35_i1_resize: signed(23 downto 0);
  signal c_35_i0_shift: signed(23 downto 0);
  signal c_35_i1_shift: signed(23 downto 0);
  signal c_35_arith: signed(23 downto 0);
  signal c_35_oshift: signed(23 downto 0);
  signal c_35_sub_sel: std_logic;
  signal c_36: signed(18 downto 0);
  signal c_36_3_0_False_resize: signed(18 downto 0);
  signal c_36_3_0_False_shift: signed(18 downto 0);
  signal c_36_6_0_False_resize: signed(18 downto 0);
  signal c_36_6_0_False_shift: signed(18 downto 0);
  signal c_36_8_0_False_resize: signed(18 downto 0);
  signal c_36_8_0_False_shift: signed(18 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(19 downto 0);
  signal c_37_6_1_False_resize: signed(19 downto 0);
  signal c_37_6_1_False_shift: signed(19 downto 0);
  signal c_37_6_0_False_resize: signed(19 downto 0);
  signal c_37_6_0_False_shift: signed(19 downto 0);
  signal c_37_3_0_False_resize: signed(19 downto 0);
  signal c_37_3_0_False_shift: signed(19 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_i0_resize: signed(23 downto 0);
  signal c_38_i1_resize: signed(23 downto 0);
  signal c_38_i0_shift: signed(23 downto 0);
  signal c_38_i1_shift: signed(23 downto 0);
  signal c_38_arith: signed(23 downto 0);
  signal c_38_oshift: signed(23 downto 0);
  signal c_38_sub_sel: std_logic;
  signal c_39: signed(22 downto 0);
  signal c_39_resize: signed(22 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_resize: signed(23 downto 0);
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
  signal c_47: signed(22 downto 0);
  signal c_47_resize: signed(22 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_48_resize: signed(23 downto 0);
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
  -- output node 0 with id 39
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_39);
    end if;
  end process;
  -- output node 1 with id 40
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_40);
    end if;
  end process;
  -- output node 2 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 3 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_42);
    end if;
  end process;
  -- output node 4 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_43);
    end if;
  end process;
  -- output node 5 with id 44
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_44);
    end if;
  end process;
  -- output node 6 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_45);
    end if;
  end process;
  -- output node 7 with id 46
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_46);
    end if;
  end process;
  -- output node 8 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_47);
    end if;
  end process;
  -- output node 9 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_48);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1], [1]]
  c_1 <= c_0 & "";
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[0], [0], [1]]
  c_2_0_0_False_resize <= c_0;
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_0_0_False_shift when "0",
    to_signed(0, 16) when others;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[1], [1], [7]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
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
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_3_sub_sel,
      x_i => c_2,
      y_i => c_1,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(18 downto 0);
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[1], [1], [0]]
  c_4_0_0_False_resize <= c_0;
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  with config_select_1 select c_4_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_0_0_False_shift when "0",
    to_signed(0, 16) when others;
  -- node of type 'add' in stage 2 with id 5 and associated fundamentals [[3], [3], [1]]
  inst_adder_node_5: entity work.adder_node
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
      x_i => c_1,
      y_i => c_4,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(17 downto 0);
  -- node of type 'add' in stage 2 with id 6 and associated fundamentals [[5], [5], [5]]
  inst_adder_node_6: entity work.adder_node
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
      x_i => c_1,
      y_i => c_1,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(18 downto 0);
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[4], [4], [1]]
  c_7_0_0_False_resize <= resize(c_0, 18);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  c_7_0_2_False_resize <= resize(c_0, 18);
  c_7_0_2_False_shift <= shift_left(c_7_0_2_False_resize, 2);
  with config_select_1 select c_7_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_0_0_False_shift when "0",
    c_7_0_2_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 8 and associated fundamentals [[7], [7], [3]]
  with config_select_2 select c_8_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
      w_o => 19,
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
      sub_i => c_8_sub_sel,
      x_i => c_7,
      y_i => c_1,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(18 downto 0);
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[1], [16], [20]]
  c_9_3_4_False_resize <= resize(c_3, 21);
  c_9_3_4_False_shift <= shift_left(c_9_3_4_False_resize, 4);
  c_9_3_0_False_resize <= resize(c_3, 21);
  c_9_3_0_False_shift <= shift_left(c_9_3_0_False_resize, 0);
  c_9_6_2_False_resize <= resize(c_6, 21);
  c_9_6_2_False_shift <= shift_left(c_9_6_2_False_resize, 2);
  with config_select_3 select c_9_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_9_sel select c_9 <=
    c_9_3_4_False_shift when "00",
    c_9_3_0_False_shift when "01",
    c_9_6_2_False_shift when others;
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[0], [3], [0]]
  c_10_5_0_False_resize <= c_5;
  c_10_5_0_False_shift <= shift_left(c_10_5_0_False_resize, 0);
  with config_select_3 select c_10_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_10_sel select c_10 <=
    c_10_5_0_False_shift when "0",
    to_signed(0, 18) when others;
  -- node of type 'add' in stage 4 with id 11 and associated fundamentals [[8], [140], [160]]
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 18,
      w_o => 24,
      s_x_i => 3,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_9,
      y_i => c_10,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[24], [1], [8]]
  c_12_5_3_False_resize <= resize(c_5, 21);
  c_12_5_3_False_shift <= shift_left(c_12_5_3_False_resize, 3);
  c_12_3_0_False_resize <= resize(c_3, 21);
  c_12_3_0_False_shift <= shift_left(c_12_3_0_False_resize, 0);
  with config_select_3 select c_12_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_12_sel select c_12 <=
    c_12_5_3_False_shift when "0",
    c_12_3_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[0], [48], [1]]
  c_13_5_4_False_resize <= resize(c_5, 22);
  c_13_5_4_False_shift <= shift_left(c_13_5_4_False_resize, 4);
  c_13_5_0_False_resize <= resize(c_5, 22);
  c_13_5_0_False_shift <= shift_left(c_13_5_0_False_resize, 0);
  with config_select_3 select c_13_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_13_sel select c_13 <=
    c_13_5_4_False_shift when "00",
    c_13_5_0_False_shift when "01",
    to_signed(0, 22) when others;
  -- node of type 'add_sub' in stage 4 with id 14 and associated fundamentals [[192], [104], [62]]
  with config_select_4 select c_14_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 22,
      w_o => 24,
      s_x_i => 3,
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
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[7], [56], [24]]
  c_15_8_3_False_resize <= resize(c_8, 22);
  c_15_8_3_False_shift <= shift_left(c_15_8_3_False_resize, 3);
  c_15_8_0_False_resize <= resize(c_8, 22);
  c_15_8_0_False_shift <= shift_left(c_15_8_0_False_resize, 0);
  with config_select_3 select c_15_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_15_sel select c_15 <=
    c_15_8_3_False_shift when "0",
    c_15_8_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 16 and associated fundamentals [[0], [3], [1]]
  c_16_5_0_False_resize <= c_5;
  c_16_5_0_False_shift <= shift_left(c_16_5_0_False_resize, 0);
  with config_select_3 select c_16_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_5_0_False_shift when "0",
    to_signed(0, 18) when others;
  -- node of type 'add_sub' in stage 4 with id 17 and associated fundamentals [[14], [109], [49]]
  with config_select_4 select c_17_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 18,
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
      sub_i => c_17_sub_sel,
      x_i => c_15,
      y_i => c_16,
      z_o => c_17_oshift
    );
  c_17 <= c_17_oshift(22 downto 0);
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[1], [128], [7]]
  c_18_3_7_False_resize <= resize(c_3, 23);
  c_18_3_7_False_shift <= shift_left(c_18_3_7_False_resize, 7);
  c_18_3_0_False_resize <= resize(c_3, 23);
  c_18_3_0_False_shift <= shift_left(c_18_3_0_False_resize, 0);
  with config_select_3 select c_18_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_18_sel select c_18 <=
    c_18_3_7_False_shift when "0",
    c_18_3_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 19 and associated fundamentals [[8], [5], [48]]
  c_19_3_3_False_resize <= resize(c_3, 22);
  c_19_3_3_False_shift <= shift_left(c_19_3_3_False_resize, 3);
  c_19_6_0_False_resize <= resize(c_6, 22);
  c_19_6_0_False_shift <= shift_left(c_19_6_0_False_resize, 0);
  c_19_8_4_False_resize <= resize(c_8, 22);
  c_19_8_4_False_shift <= shift_left(c_19_8_4_False_resize, 4);
  with config_select_3 select c_19_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_19_sel select c_19 <=
    c_19_3_3_False_shift when "00",
    c_19_6_0_False_shift when "01",
    c_19_8_4_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 20 and associated fundamentals [[17], [118], [103]]
  with config_select_4 select c_20_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
      w_o => 23,
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
      sub_i => c_20_sub_sel,
      x_i => c_18,
      y_i => c_19,
      z_o => c_20_oshift
    );
  c_20 <= c_20_oshift(22 downto 0);
  -- node of type 'mux' in stage 3 with id 21 and associated fundamentals [[8], [5], [1]]
  c_21_3_3_False_resize <= c_3;
  c_21_3_3_False_shift <= shift_left(c_21_3_3_False_resize, 3);
  c_21_6_0_False_resize <= c_6;
  c_21_6_0_False_shift <= shift_left(c_21_6_0_False_resize, 0);
  c_21_5_0_False_resize <= resize(c_5, 19);
  c_21_5_0_False_shift <= shift_left(c_21_5_0_False_resize, 0);
  with config_select_3 select c_21_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_21_sel select c_21 <=
    c_21_3_3_False_shift when "00",
    c_21_6_0_False_shift when "01",
    c_21_5_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 22 and associated fundamentals [[6], [3], [2]]
  c_22_5_1_False_resize <= resize(c_5, 19);
  c_22_5_1_False_shift <= shift_left(c_22_5_1_False_resize, 1);
  c_22_5_0_False_resize <= resize(c_5, 19);
  c_22_5_0_False_shift <= shift_left(c_22_5_0_False_resize, 0);
  with config_select_3 select c_22_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_22_sel select c_22 <=
    c_22_5_1_False_shift when "0",
    c_22_5_0_False_shift when others;
  -- node of type 'add' in stage 4 with id 23 and associated fundamentals [[200], [101], [65]]
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 5,
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
  c_23 <= c_23_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 24 and associated fundamentals [[3], [10], [10]]
  c_24_5_0_False_resize <= resize(c_5, 20);
  c_24_5_0_False_shift <= shift_left(c_24_5_0_False_resize, 0);
  c_24_6_1_False_resize <= resize(c_6, 20);
  c_24_6_1_False_shift <= shift_left(c_24_6_1_False_resize, 1);
  with config_select_3 select c_24_sel <= 
    "0" when "00",
    "1" when "10",
    "1" when others;
  with c_24_sel select c_24 <=
    c_24_5_0_False_shift when "0",
    c_24_6_1_False_shift when others;
  -- node of type 'mux' in stage 3 with id 25 and associated fundamentals [[3], [2], [3]]
  c_25_3_1_False_resize <= c_3(17 downto 0);
  c_25_3_1_False_shift <= shift_left(c_25_3_1_False_resize, 1);
  c_25_5_0_False_resize <= c_5;
  c_25_5_0_False_shift <= shift_left(c_25_5_0_False_resize, 0);
  c_25_8_0_False_resize <= c_8(17 downto 0);
  c_25_8_0_False_shift <= shift_left(c_25_8_0_False_resize, 0);
  with config_select_3 select c_25_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_25_sel select c_25 <=
    c_25_3_1_False_shift when "00",
    c_25_5_0_False_shift when "01",
    c_25_8_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 26 and associated fundamentals [[45], [162], [157]]
  with config_select_4 select c_26_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 18,
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
      sub_i => c_26_sub_sel,
      x_i => c_24,
      y_i => c_25,
      z_o => c_26_oshift
    );
  c_26 <= c_26_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 27 and associated fundamentals [[256], [3], [1]]
  c_27_3_8_False_resize <= resize(c_3, 24);
  c_27_3_8_False_shift <= shift_left(c_27_3_8_False_resize, 8);
  c_27_5_0_False_resize <= resize(c_5, 24);
  c_27_5_0_False_shift <= shift_left(c_27_5_0_False_resize, 0);
  with config_select_3 select c_27_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_27_sel select c_27 <=
    c_27_3_8_False_shift when "0",
    c_27_5_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 28 and associated fundamentals [[3], [24], [24]]
  c_28_5_3_False_resize <= resize(c_5, 21);
  c_28_5_3_False_shift <= shift_left(c_28_5_3_False_resize, 3);
  c_28_5_0_False_resize <= resize(c_5, 21);
  c_28_5_0_False_shift <= shift_left(c_28_5_0_False_resize, 0);
  c_28_8_3_False_resize <= resize(c_8, 21);
  c_28_8_3_False_shift <= shift_left(c_28_8_3_False_resize, 3);
  with config_select_3 select c_28_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_28_sel select c_28 <=
    c_28_5_3_False_shift when "00",
    c_28_5_0_False_shift when "01",
    c_28_8_3_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 29 and associated fundamentals [[244], [99], [95]]
  with config_select_4 select c_29_sub_sel_left <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  with config_select_4 select c_29_sub_sel_right <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 21,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => True,
      sub => False
    )
    port map (
      sub_a_i => c_29_sub_sel_left,
      sub_b_i => c_29_sub_sel_right,
      x_i => c_27,
      y_i => c_28,
      z_o => c_29_oshift
    );
  c_29 <= c_29_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 30 and associated fundamentals [[160], [3], [80]]
  c_30_6_5_False_resize <= resize(c_6, 24);
  c_30_6_5_False_shift <= shift_left(c_30_6_5_False_resize, 5);
  c_30_6_4_False_resize <= resize(c_6, 24);
  c_30_6_4_False_shift <= shift_left(c_30_6_4_False_resize, 4);
  c_30_5_0_False_resize <= resize(c_5, 24);
  c_30_5_0_False_shift <= shift_left(c_30_5_0_False_resize, 0);
  with config_select_3 select c_30_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_30_sel select c_30 <=
    c_30_6_5_False_shift when "00",
    c_30_6_4_False_shift when "01",
    c_30_5_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 31 and associated fundamentals [[5], [96], [1]]
  c_31_5_5_False_resize <= resize(c_5, 23);
  c_31_5_5_False_shift <= shift_left(c_31_5_5_False_resize, 5);
  c_31_6_0_False_resize <= resize(c_6, 23);
  c_31_6_0_False_shift <= shift_left(c_31_6_0_False_resize, 0);
  c_31_5_0_False_resize <= resize(c_5, 23);
  c_31_5_0_False_shift <= shift_left(c_31_5_0_False_resize, 0);
  with config_select_3 select c_31_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_31_sel select c_31 <=
    c_31_5_5_False_shift when "00",
    c_31_6_0_False_shift when "01",
    c_31_5_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 32 and associated fundamentals [[150], [195], [78]]
  with config_select_4 select c_32_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_32: entity work.adder_node
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
      sub_i => c_32_sub_sel,
      x_i => c_30,
      y_i => c_31,
      z_o => c_32_oshift
    );
  c_32 <= c_32_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 33 and associated fundamentals [[7], [14], [5]]
  c_33_8_1_False_resize <= resize(c_8, 20);
  c_33_8_1_False_shift <= shift_left(c_33_8_1_False_resize, 1);
  c_33_8_0_False_resize <= resize(c_8, 20);
  c_33_8_0_False_shift <= shift_left(c_33_8_0_False_resize, 0);
  c_33_6_0_False_resize <= resize(c_6, 20);
  c_33_6_0_False_shift <= shift_left(c_33_6_0_False_resize, 0);
  with config_select_3 select c_33_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_33_sel select c_33 <=
    c_33_8_1_False_shift when "00",
    c_33_8_0_False_shift when "01",
    c_33_6_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 34 and associated fundamentals [[7], [5], [6]]
  c_34_8_1_False_resize <= c_8;
  c_34_8_1_False_shift <= shift_left(c_34_8_1_False_resize, 1);
  c_34_8_0_False_resize <= c_8;
  c_34_8_0_False_shift <= shift_left(c_34_8_0_False_resize, 0);
  c_34_6_0_False_resize <= c_6;
  c_34_6_0_False_shift <= shift_left(c_34_6_0_False_resize, 0);
  with config_select_3 select c_34_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_34_sel select c_34 <=
    c_34_8_1_False_shift when "00",
    c_34_8_0_False_shift when "01",
    c_34_6_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 35 and associated fundamentals [[105], [219], [86]]
  with config_select_4 select c_35_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_35: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 19,
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
      sub_i => c_35_sub_sel,
      x_i => c_33,
      y_i => c_34,
      z_o => c_35_oshift
    );
  c_35 <= c_35_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 36 and associated fundamentals [[1], [7], [5]]
  c_36_3_0_False_resize <= c_3;
  c_36_3_0_False_shift <= shift_left(c_36_3_0_False_resize, 0);
  c_36_6_0_False_resize <= c_6;
  c_36_6_0_False_shift <= shift_left(c_36_6_0_False_resize, 0);
  c_36_8_0_False_resize <= c_8;
  c_36_8_0_False_shift <= shift_left(c_36_8_0_False_resize, 0);
  with config_select_3 select c_36_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_36_sel select c_36 <=
    c_36_3_0_False_shift when "00",
    c_36_6_0_False_shift when "01",
    c_36_8_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 37 and associated fundamentals [[10], [5], [7]]
  c_37_6_1_False_resize <= resize(c_6, 20);
  c_37_6_1_False_shift <= shift_left(c_37_6_1_False_resize, 1);
  c_37_6_0_False_resize <= resize(c_6, 20);
  c_37_6_0_False_shift <= shift_left(c_37_6_0_False_resize, 0);
  c_37_3_0_False_resize <= resize(c_3, 20);
  c_37_3_0_False_shift <= shift_left(c_37_3_0_False_resize, 0);
  with config_select_3 select c_37_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_37_sel select c_37 <=
    c_37_6_1_False_shift when "00",
    c_37_6_0_False_shift when "01",
    c_37_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 38 and associated fundamentals [[161], [73], [107]]
  with config_select_4 select c_38_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_38: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 19,
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
      sub_i => c_38_sub_sel,
      x_i => c_37,
      y_i => c_36,
      z_o => c_38_oshift
    );
  c_38 <= c_38_oshift(23 downto 0);
  -- node of type 'output' in stage 4 with id 39 and associated fundamentals [[14], [109], [49]]
  c_39_resize <= c_17;
  c_39 <= shift_left(c_39_resize, 0);
  -- node of type 'output' in stage 4 with id 40 and associated fundamentals [[150], [195], [78]]
  c_40_resize <= c_32;
  c_40 <= shift_left(c_40_resize, 0);
  -- node of type 'output' in stage 4 with id 41 and associated fundamentals [[244], [99], [95]]
  c_41_resize <= c_29;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'output' in stage 4 with id 42 and associated fundamentals [[105], [219], [86]]
  c_42_resize <= c_35;
  c_42 <= shift_left(c_42_resize, 0);
  -- node of type 'output' in stage 4 with id 43 and associated fundamentals [[192], [104], [62]]
  c_43_resize <= c_14;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'output' in stage 4 with id 44 and associated fundamentals [[200], [101], [65]]
  c_44_resize <= c_23;
  c_44 <= shift_left(c_44_resize, 0);
  -- node of type 'output' in stage 4 with id 45 and associated fundamentals [[161], [73], [107]]
  c_45_resize <= c_38;
  c_45 <= shift_left(c_45_resize, 0);
  -- node of type 'output' in stage 4 with id 46 and associated fundamentals [[8], [140], [160]]
  c_46_resize <= c_11;
  c_46 <= shift_left(c_46_resize, 0);
  -- node of type 'output' in stage 4 with id 47 and associated fundamentals [[17], [118], [103]]
  c_47_resize <= c_20;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'output' in stage 4 with id 48 and associated fundamentals [[45], [162], [157]]
  c_48_resize <= c_26;
  c_48 <= shift_left(c_48_resize, 0);
end architecture;
