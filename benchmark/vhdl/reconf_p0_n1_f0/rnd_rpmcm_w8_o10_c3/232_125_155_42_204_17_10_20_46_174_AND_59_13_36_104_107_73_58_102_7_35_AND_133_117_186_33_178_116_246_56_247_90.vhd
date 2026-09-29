library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(22 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(22 downto 0);
    y_4: out std_logic_vector(23 downto 0);
    y_5: out std_logic_vector(22 downto 0);
    y_6: out std_logic_vector(23 downto 0);
    y_7: out std_logic_vector(22 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_0_0_False_resize: signed(17 downto 0);
  signal c_1_0_0_False_shift: signed(17 downto 0);
  signal c_1_0_1_False_resize: signed(17 downto 0);
  signal c_1_0_1_False_shift: signed(17 downto 0);
  signal c_1_0_2_False_resize: signed(17 downto 0);
  signal c_1_0_2_False_shift: signed(17 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(21 downto 0);
  signal c_2_i0_resize: signed(21 downto 0);
  signal c_2_i1_resize: signed(21 downto 0);
  signal c_2_i0_shift: signed(21 downto 0);
  signal c_2_i1_shift: signed(21 downto 0);
  signal c_2_arith: signed(21 downto 0);
  signal c_2_oshift: signed(21 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(20 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(19 downto 0);
  signal c_4_i0_resize: signed(20 downto 0);
  signal c_4_i1_resize: signed(20 downto 0);
  signal c_4_i0_shift: signed(20 downto 0);
  signal c_4_i1_shift: signed(20 downto 0);
  signal c_4_arith: signed(20 downto 0);
  signal c_4_oshift: signed(19 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(23 downto 0);
  signal c_5_4_0_False_resize: signed(23 downto 0);
  signal c_5_4_0_False_shift: signed(23 downto 0);
  signal c_5_2_2_False_resize: signed(23 downto 0);
  signal c_5_2_2_False_shift: signed(23 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(23 downto 0);
  signal c_6_i0_resize: signed(23 downto 0);
  signal c_6_i1_resize: signed(23 downto 0);
  signal c_6_i0_shift: signed(23 downto 0);
  signal c_6_i1_shift: signed(23 downto 0);
  signal c_6_arith: signed(23 downto 0);
  signal c_6_oshift: signed(23 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(19 downto 0);
  signal c_7_4_0_False_resize: signed(19 downto 0);
  signal c_7_4_0_False_shift: signed(19 downto 0);
  signal c_7_0_2_False_resize: signed(19 downto 0);
  signal c_7_0_2_False_shift: signed(19 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(20 downto 0);
  signal c_8_3_0_False_resize: signed(20 downto 0);
  signal c_8_3_0_False_shift: signed(20 downto 0);
  signal c_8_2_0_False_resize: signed(20 downto 0);
  signal c_8_2_0_False_shift: signed(20 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_i0_resize: signed(22 downto 0);
  signal c_9_i1_resize: signed(22 downto 0);
  signal c_9_i0_shift: signed(22 downto 0);
  signal c_9_i1_shift: signed(22 downto 0);
  signal c_9_arith: signed(22 downto 0);
  signal c_9_oshift: signed(22 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(22 downto 0);
  signal c_10_i0_resize: signed(22 downto 0);
  signal c_10_i1_resize: signed(22 downto 0);
  signal c_10_i0_shift: signed(22 downto 0);
  signal c_10_i1_shift: signed(22 downto 0);
  signal c_10_arith: signed(22 downto 0);
  signal c_10_oshift: signed(22 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(21 downto 0);
  signal c_11_2_1_False_resize: signed(21 downto 0);
  signal c_11_2_1_False_shift: signed(21 downto 0);
  signal c_11_3_0_False_resize: signed(21 downto 0);
  signal c_11_3_0_False_shift: signed(21 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(19 downto 0);
  signal c_12_4_0_False_resize: signed(19 downto 0);
  signal c_12_4_0_False_shift: signed(19 downto 0);
  signal c_12_0_0_False_resize: signed(19 downto 0);
  signal c_12_0_0_False_shift: signed(19 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(22 downto 0);
  signal c_13_i0_resize: signed(22 downto 0);
  signal c_13_i1_resize: signed(22 downto 0);
  signal c_13_i0_shift: signed(22 downto 0);
  signal c_13_i1_shift: signed(22 downto 0);
  signal c_13_arith: signed(22 downto 0);
  signal c_13_oshift: signed(22 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(22 downto 0);
  signal c_14_13_0_False_resize: signed(22 downto 0);
  signal c_14_13_0_False_shift: signed(22 downto 0);
  signal c_14_6_3_False_resize: signed(22 downto 0);
  signal c_14_6_3_False_shift: signed(22 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_15_i0_resize: signed(22 downto 0);
  signal c_15_i1_resize: signed(22 downto 0);
  signal c_15_i0_shift: signed(22 downto 0);
  signal c_15_i1_shift: signed(22 downto 0);
  signal c_15_arith: signed(22 downto 0);
  signal c_15_oshift: signed(22 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(19 downto 0);
  signal c_16_4_0_False_resize: signed(19 downto 0);
  signal c_16_4_0_False_shift: signed(19 downto 0);
  signal c_16_0_2_False_resize: signed(19 downto 0);
  signal c_16_0_2_False_shift: signed(19 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_i0_resize: signed(23 downto 0);
  signal c_17_i1_resize: signed(23 downto 0);
  signal c_17_i0_shift: signed(23 downto 0);
  signal c_17_i1_shift: signed(23 downto 0);
  signal c_17_arith: signed(23 downto 0);
  signal c_17_oshift: signed(23 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(22 downto 0);
  signal c_18_4_2_False_resize: signed(22 downto 0);
  signal c_18_4_2_False_shift: signed(22 downto 0);
  signal c_18_10_0_False_resize: signed(22 downto 0);
  signal c_18_10_0_False_shift: signed(22 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(21 downto 0);
  signal c_19_0_0_False_resize: signed(21 downto 0);
  signal c_19_0_0_False_shift: signed(21 downto 0);
  signal c_19_17_0_False_resize: signed(21 downto 0);
  signal c_19_17_0_False_shift: signed(21 downto 0);
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
  signal c_21_10_3_False_resize: signed(23 downto 0);
  signal c_21_10_3_False_shift: signed(23 downto 0);
  signal c_21_13_0_False_resize: signed(23 downto 0);
  signal c_21_13_0_False_shift: signed(23 downto 0);
  signal c_21_6_0_False_resize: signed(23 downto 0);
  signal c_21_6_0_False_shift: signed(23 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_resize: signed(23 downto 0);
  signal c_23: signed(22 downto 0);
  signal c_23_13_0_False_resize: signed(22 downto 0);
  signal c_23_13_0_False_shift: signed(22 downto 0);
  signal c_23_3_0_False_resize: signed(22 downto 0);
  signal c_23_3_0_False_shift: signed(22 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(22 downto 0);
  signal c_24_resize: signed(22 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_2_2_False_resize: signed(23 downto 0);
  signal c_25_2_2_False_shift: signed(23 downto 0);
  signal c_25_17_0_False_resize: signed(23 downto 0);
  signal c_25_17_0_False_shift: signed(23 downto 0);
  signal c_25_17_1_False_resize: signed(23 downto 0);
  signal c_25_17_1_False_shift: signed(23 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_resize: signed(23 downto 0);
  signal c_27: signed(22 downto 0);
  signal c_27_2_0_False_resize: signed(22 downto 0);
  signal c_27_2_0_False_shift: signed(22 downto 0);
  signal c_27_3_3_False_resize: signed(22 downto 0);
  signal c_27_3_3_False_shift: signed(22 downto 0);
  signal c_27_3_1_False_resize: signed(22 downto 0);
  signal c_27_3_1_False_shift: signed(22 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_28_resize: signed(22 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_15_1_False_resize: signed(23 downto 0);
  signal c_29_15_1_False_shift: signed(23 downto 0);
  signal c_29_20_0_False_resize: signed(23 downto 0);
  signal c_29_20_0_False_shift: signed(23 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_resize: signed(23 downto 0);
  signal c_31: signed(22 downto 0);
  signal c_31_3_2_False_resize: signed(22 downto 0);
  signal c_31_3_2_False_shift: signed(22 downto 0);
  signal c_31_15_0_False_resize: signed(22 downto 0);
  signal c_31_15_0_False_shift: signed(22 downto 0);
  signal c_31_2_0_False_resize: signed(22 downto 0);
  signal c_31_2_0_False_shift: signed(22 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(22 downto 0);
  signal c_32_resize: signed(22 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_10_1_False_resize: signed(23 downto 0);
  signal c_33_10_1_False_shift: signed(23 downto 0);
  signal c_33_6_0_False_resize: signed(23 downto 0);
  signal c_33_6_0_False_shift: signed(23 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_resize: signed(23 downto 0);
  signal c_35: signed(21 downto 0);
  signal c_35_6_0_False_resize: signed(21 downto 0);
  signal c_35_6_0_False_shift: signed(21 downto 0);
  signal c_35_4_1_False_resize: signed(21 downto 0);
  signal c_35_4_1_False_shift: signed(21 downto 0);
  signal c_35_17_0_False_resize: signed(21 downto 0);
  signal c_35_17_0_False_shift: signed(21 downto 0);
  signal c_35_sel: std_logic_vector(1 downto 0);
  signal c_36: signed(22 downto 0);
  signal c_36_resize: signed(22 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_9_0_False_resize: signed(23 downto 0);
  signal c_37_9_0_False_shift: signed(23 downto 0);
  signal c_37_4_0_False_resize: signed(23 downto 0);
  signal c_37_4_0_False_shift: signed(23 downto 0);
  signal c_37_20_0_False_resize: signed(23 downto 0);
  signal c_37_20_0_False_shift: signed(23 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_resize: signed(23 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_9_0_False_resize: signed(23 downto 0);
  signal c_39_9_0_False_shift: signed(23 downto 0);
  signal c_39_6_0_False_resize: signed(23 downto 0);
  signal c_39_6_0_False_shift: signed(23 downto 0);
  signal c_39_20_1_False_resize: signed(23 downto 0);
  signal c_39_20_1_False_shift: signed(23 downto 0);
  signal c_39_sel: std_logic_vector(1 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_resize: signed(23 downto 0);
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
  -- output node 3 with id 28
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_28);
    end if;
  end process;
  -- output node 4 with id 30
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_30);
    end if;
  end process;
  -- output node 5 with id 32
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_32);
    end if;
  end process;
  -- output node 6 with id 34
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_34);
    end if;
  end process;
  -- output node 7 with id 36
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_36);
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
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[2], [1], [4]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 18);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "00",
    c_1_0_1_False_shift when "01",
    c_1_0_2_False_shift when others;
  -- node of type 'add' in stage 2 with id 2 and associated fundamentals [[17], [9], [33]]
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
      w_o => 22,
      s_x_i => 3,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_1,
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(21 downto 0);
  -- node of type 'add_sub' in stage 3 with id 3 and associated fundamentals [[21], [13], [29]]
  with config_select_3 select c_3_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 16,
      w_o => 21,
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
  c_3 <= c_3_oshift(20 downto 0);
  -- node of type 'add_sub' in stage 4 with id 4 and associated fundamentals [[11], [7], [14]]
  with config_select_4 select c_4_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 16,
      w_o => 20,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 1,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_4_sub_sel,
      x_i => c_3,
      y_i => c_0,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(19 downto 0);
  -- node of type 'mux' in stage 5 with id 5 and associated fundamentals [[11], [36], [132]]
  c_5_4_0_False_resize <= resize(c_4, 24);
  c_5_4_0_False_shift <= shift_left(c_5_4_0_False_resize, 0);
  c_5_2_2_False_resize <= resize(c_2, 24);
  c_5_2_2_False_shift <= shift_left(c_5_2_2_False_resize, 2);
  with config_select_5 select c_5_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_4_0_False_shift when "0",
    c_5_2_2_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 6 and associated fundamentals [[10], [35], [133]]
  with config_select_6 select c_6_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 16,
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
      y_i => c_0,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(23 downto 0);
  -- node of type 'mux' in stage 5 with id 7 and associated fundamentals [[11], [7], [4]]
  c_7_4_0_False_resize <= c_4;
  c_7_4_0_False_shift <= shift_left(c_7_4_0_False_resize, 0);
  c_7_0_2_False_resize <= resize(c_0, 20);
  c_7_0_2_False_shift <= shift_left(c_7_0_2_False_resize, 2);
  with config_select_5 select c_7_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_4_0_False_shift when "0",
    c_7_0_2_False_shift when others;
  -- node of type 'mux' in stage 4 with id 8 and associated fundamentals [[21], [9], [29]]
  c_8_3_0_False_resize <= c_3;
  c_8_3_0_False_shift <= shift_left(c_8_3_0_False_resize, 0);
  c_8_2_0_False_resize <= c_2(20 downto 0);
  c_8_2_0_False_shift <= shift_left(c_8_2_0_False_resize, 0);
  with config_select_4 select c_8_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_3_0_False_shift when "0",
    c_8_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 9 and associated fundamentals [[46], [38], [90]]
  with config_select_6 select c_9_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 21,
      w_o => 23,
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
      sub_i => c_9_sub_sel,
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(22 downto 0);
  -- node of type 'add_sub' in stage 7 with id 10 and associated fundamentals [[29], [29], [123]]
  with config_select_7 select c_10_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
      w_o => 23,
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
      y_i => c_2,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(22 downto 0);
  -- node of type 'mux' in stage 4 with id 11 and associated fundamentals [[34], [13], [29]]
  c_11_2_1_False_resize <= c_2;
  c_11_2_1_False_shift <= shift_left(c_11_2_1_False_resize, 1);
  c_11_3_0_False_resize <= resize(c_3, 22);
  c_11_3_0_False_shift <= shift_left(c_11_3_0_False_resize, 0);
  with config_select_4 select c_11_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_2_1_False_shift when "0",
    c_11_3_0_False_shift when others;
  -- node of type 'mux' in stage 5 with id 12 and associated fundamentals [[11], [7], [1]]
  c_12_4_0_False_resize <= c_4;
  c_12_4_0_False_shift <= shift_left(c_12_4_0_False_resize, 0);
  c_12_0_0_False_resize <= resize(c_0, 20);
  c_12_0_0_False_shift <= shift_left(c_12_0_0_False_resize, 0);
  with config_select_5 select c_12_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_12_sel select c_12 <=
    c_12_4_0_False_shift when "0",
    c_12_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 13 and associated fundamentals [[125], [59], [117]]
  with config_select_6 select c_13_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
      w_o => 23,
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
      sub_i => c_13_sub_sel,
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(22 downto 0);
  -- node of type 'mux' in stage 7 with id 14 and associated fundamentals [[80], [59], [117]]
  c_14_13_0_False_resize <= c_13;
  c_14_13_0_False_shift <= shift_left(c_14_13_0_False_resize, 0);
  c_14_6_3_False_resize <= c_6(22 downto 0);
  c_14_6_3_False_shift <= shift_left(c_14_6_3_False_resize, 3);
  with config_select_7 select c_14_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_13_0_False_shift when "0",
    c_14_6_3_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 15 and associated fundamentals [[102], [73], [89]]
  with config_select_8 select c_15_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 20,
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
      sub_i => c_15_sub_sel,
      x_i => c_14,
      y_i => c_4,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(22 downto 0);
  -- node of type 'mux' in stage 5 with id 16 and associated fundamentals [[11], [4], [4]]
  c_16_4_0_False_resize <= c_4;
  c_16_4_0_False_shift <= shift_left(c_16_4_0_False_resize, 0);
  c_16_0_2_False_resize <= resize(c_0, 20);
  c_16_0_2_False_shift <= shift_left(c_16_0_2_False_resize, 2);
  with config_select_5 select c_16_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_4_0_False_shift when "0",
    c_16_0_2_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 17 and associated fundamentals [[155], [51], [93]]
  with config_select_6 select c_17_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 21,
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
      sub_i => c_17_sub_sel,
      x_i => c_16,
      y_i => c_3,
      z_o => c_17_oshift
    );
  c_17 <= c_17_oshift(23 downto 0);
  -- node of type 'mux' in stage 8 with id 18 and associated fundamentals [[44], [28], [123]]
  c_18_4_2_False_resize <= resize(c_4, 23);
  c_18_4_2_False_shift <= shift_left(c_18_4_2_False_resize, 2);
  c_18_10_0_False_resize <= c_10;
  c_18_10_0_False_shift <= shift_left(c_18_10_0_False_resize, 0);
  with config_select_8 select c_18_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_18_sel select c_18 <=
    c_18_4_2_False_shift when "0",
    c_18_10_0_False_shift when others;
  -- node of type 'mux' in stage 7 with id 19 and associated fundamentals [[1], [51], [1]]
  c_19_0_0_False_resize <= resize(c_0, 22);
  c_19_0_0_False_shift <= shift_left(c_19_0_0_False_resize, 0);
  c_19_17_0_False_resize <= c_17(21 downto 0);
  c_19_17_0_False_shift <= shift_left(c_19_17_0_False_resize, 0);
  with config_select_7 select c_19_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_19_sel select c_19 <=
    c_19_0_0_False_shift when "0",
    c_19_17_0_False_shift when others;
  -- node of type 'add_sub' in stage 9 with id 20 and associated fundamentals [[87], [107], [247]]
  with config_select_9 select c_20_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
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
      sub_i => c_20_sub_sel,
      x_i => c_18,
      y_i => c_19,
      z_o => c_20_oshift
    );
  c_20 <= c_20_oshift(23 downto 0);
  -- node of type 'mux' in stage 8 with id 21 and associated fundamentals [[232], [59], [133]]
  c_21_10_3_False_resize <= resize(c_10, 24);
  c_21_10_3_False_shift <= shift_left(c_21_10_3_False_resize, 3);
  c_21_13_0_False_resize <= resize(c_13, 24);
  c_21_13_0_False_shift <= shift_left(c_21_13_0_False_resize, 0);
  c_21_6_0_False_resize <= c_6;
  c_21_6_0_False_shift <= shift_left(c_21_6_0_False_resize, 0);
  with config_select_8 select c_21_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_21_sel select c_21 <=
    c_21_10_3_False_shift when "00",
    c_21_13_0_False_shift when "01",
    c_21_6_0_False_shift when others;
  -- node of type 'output' in stage 8 with id 22 and associated fundamentals [[232], [59], [133]]
  c_22_resize <= c_21;
  c_22 <= shift_left(c_22_resize, 0);
  -- node of type 'mux' in stage 7 with id 23 and associated fundamentals [[125], [13], [117]]
  c_23_13_0_False_resize <= c_13;
  c_23_13_0_False_shift <= shift_left(c_23_13_0_False_resize, 0);
  c_23_3_0_False_resize <= resize(c_3, 23);
  c_23_3_0_False_shift <= shift_left(c_23_3_0_False_resize, 0);
  with config_select_7 select c_23_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_23_sel select c_23 <=
    c_23_13_0_False_shift when "0",
    c_23_3_0_False_shift when others;
  -- node of type 'output' in stage 7 with id 24 and associated fundamentals [[125], [13], [117]]
  c_24_resize <= c_23;
  c_24 <= shift_left(c_24_resize, 0);
  -- node of type 'mux' in stage 7 with id 25 and associated fundamentals [[155], [36], [186]]
  c_25_2_2_False_resize <= resize(c_2, 24);
  c_25_2_2_False_shift <= shift_left(c_25_2_2_False_resize, 2);
  c_25_17_0_False_resize <= c_17;
  c_25_17_0_False_shift <= shift_left(c_25_17_0_False_resize, 0);
  c_25_17_1_False_resize <= c_17;
  c_25_17_1_False_shift <= shift_left(c_25_17_1_False_resize, 1);
  with config_select_7 select c_25_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_25_sel select c_25 <=
    c_25_2_2_False_shift when "00",
    c_25_17_0_False_shift when "01",
    c_25_17_1_False_shift when others;
  -- node of type 'output' in stage 7 with id 26 and associated fundamentals [[155], [36], [186]]
  c_26_resize <= c_25;
  c_26 <= shift_left(c_26_resize, 0);
  -- node of type 'mux' in stage 4 with id 27 and associated fundamentals [[42], [104], [33]]
  c_27_2_0_False_resize <= resize(c_2, 23);
  c_27_2_0_False_shift <= shift_left(c_27_2_0_False_resize, 0);
  c_27_3_3_False_resize <= resize(c_3, 23);
  c_27_3_3_False_shift <= shift_left(c_27_3_3_False_resize, 3);
  c_27_3_1_False_resize <= resize(c_3, 23);
  c_27_3_1_False_shift <= shift_left(c_27_3_1_False_resize, 1);
  with config_select_4 select c_27_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_27_sel select c_27 <=
    c_27_2_0_False_shift when "00",
    c_27_3_3_False_shift when "01",
    c_27_3_1_False_shift when others;
  -- node of type 'output' in stage 4 with id 28 and associated fundamentals [[42], [104], [33]]
  c_28_resize <= c_27;
  c_28 <= shift_left(c_28_resize, 0);
  -- node of type 'mux' in stage 10 with id 29 and associated fundamentals [[204], [107], [178]]
  c_29_15_1_False_resize <= resize(c_15, 24);
  c_29_15_1_False_shift <= shift_left(c_29_15_1_False_resize, 1);
  c_29_20_0_False_resize <= c_20;
  c_29_20_0_False_shift <= shift_left(c_29_20_0_False_resize, 0);
  with config_select_10 select c_29_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_29_sel select c_29 <=
    c_29_15_1_False_shift when "0",
    c_29_20_0_False_shift when others;
  -- node of type 'output' in stage 10 with id 30 and associated fundamentals [[204], [107], [178]]
  c_30_resize <= c_29;
  c_30 <= shift_left(c_30_resize, 0);
  -- node of type 'mux' in stage 9 with id 31 and associated fundamentals [[17], [73], [116]]
  c_31_3_2_False_resize <= resize(c_3, 23);
  c_31_3_2_False_shift <= shift_left(c_31_3_2_False_resize, 2);
  c_31_15_0_False_resize <= c_15;
  c_31_15_0_False_shift <= shift_left(c_31_15_0_False_resize, 0);
  c_31_2_0_False_resize <= resize(c_2, 23);
  c_31_2_0_False_shift <= shift_left(c_31_2_0_False_resize, 0);
  with config_select_9 select c_31_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_31_sel select c_31 <=
    c_31_3_2_False_shift when "00",
    c_31_15_0_False_shift when "01",
    c_31_2_0_False_shift when others;
  -- node of type 'output' in stage 9 with id 32 and associated fundamentals [[17], [73], [116]]
  c_32_resize <= c_31;
  c_32 <= shift_left(c_32_resize, 0);
  -- node of type 'mux' in stage 8 with id 33 and associated fundamentals [[10], [58], [246]]
  c_33_10_1_False_resize <= resize(c_10, 24);
  c_33_10_1_False_shift <= shift_left(c_33_10_1_False_resize, 1);
  c_33_6_0_False_resize <= c_6;
  c_33_6_0_False_shift <= shift_left(c_33_6_0_False_resize, 0);
  with config_select_8 select c_33_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_33_sel select c_33 <=
    c_33_10_1_False_shift when "0",
    c_33_6_0_False_shift when others;
  -- node of type 'output' in stage 8 with id 34 and associated fundamentals [[10], [58], [246]]
  c_34_resize <= c_33;
  c_34 <= shift_left(c_34_resize, 0);
  -- node of type 'mux' in stage 7 with id 35 and associated fundamentals [[10], [51], [28]]
  c_35_6_0_False_resize <= c_6(21 downto 0);
  c_35_6_0_False_shift <= shift_left(c_35_6_0_False_resize, 0);
  c_35_4_1_False_resize <= resize(c_4, 22);
  c_35_4_1_False_shift <= shift_left(c_35_4_1_False_resize, 1);
  c_35_17_0_False_resize <= c_17(21 downto 0);
  c_35_17_0_False_shift <= shift_left(c_35_17_0_False_resize, 0);
  with config_select_7 select c_35_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_35_sel select c_35 <=
    c_35_6_0_False_shift when "00",
    c_35_4_1_False_shift when "01",
    c_35_17_0_False_shift when others;
  -- node of type 'output' in stage 7 with id 36 and associated fundamentals [[20], [102], [56]]
  c_36_resize <= resize(c_35, 23);
  c_36 <= shift_left(c_36_resize, 1);
  -- node of type 'mux' in stage 10 with id 37 and associated fundamentals [[46], [7], [247]]
  c_37_9_0_False_resize <= resize(c_9, 24);
  c_37_9_0_False_shift <= shift_left(c_37_9_0_False_resize, 0);
  c_37_4_0_False_resize <= resize(c_4, 24);
  c_37_4_0_False_shift <= shift_left(c_37_4_0_False_resize, 0);
  c_37_20_0_False_resize <= c_20;
  c_37_20_0_False_shift <= shift_left(c_37_20_0_False_resize, 0);
  with config_select_10 select c_37_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_37_sel select c_37 <=
    c_37_9_0_False_shift when "00",
    c_37_4_0_False_shift when "01",
    c_37_20_0_False_shift when others;
  -- node of type 'output' in stage 10 with id 38 and associated fundamentals [[46], [7], [247]]
  c_38_resize <= c_37;
  c_38 <= shift_left(c_38_resize, 0);
  -- node of type 'mux' in stage 10 with id 39 and associated fundamentals [[174], [35], [90]]
  c_39_9_0_False_resize <= resize(c_9, 24);
  c_39_9_0_False_shift <= shift_left(c_39_9_0_False_resize, 0);
  c_39_6_0_False_resize <= c_6;
  c_39_6_0_False_shift <= shift_left(c_39_6_0_False_resize, 0);
  c_39_20_1_False_resize <= c_20;
  c_39_20_1_False_shift <= shift_left(c_39_20_1_False_resize, 1);
  with config_select_10 select c_39_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_39_sel select c_39 <=
    c_39_9_0_False_shift when "00",
    c_39_6_0_False_shift when "01",
    c_39_20_1_False_shift when others;
  -- node of type 'output' in stage 10 with id 40 and associated fundamentals [[174], [35], [90]]
  c_40_resize <= c_39;
  c_40 <= shift_left(c_40_resize, 0);
end architecture;
