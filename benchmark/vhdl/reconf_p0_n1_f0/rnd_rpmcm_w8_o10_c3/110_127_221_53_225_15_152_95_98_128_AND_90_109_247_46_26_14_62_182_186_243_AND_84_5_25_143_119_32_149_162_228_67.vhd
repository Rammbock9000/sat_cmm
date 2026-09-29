library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(22 downto 0);
    y_1: out std_logic_vector(22 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(23 downto 0);
    y_5: out std_logic_vector(20 downto 0);
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
  signal config_select_7: std_logic_vector(1 downto 0);
  signal config_select_8: std_logic_vector(1 downto 0);
  signal config_select_9: std_logic_vector(1 downto 0);
  signal config_select_10: std_logic_vector(1 downto 0);
  signal config_select_11: std_logic_vector(1 downto 0);
  signal config_select_12: std_logic_vector(1 downto 0);
  signal config_select_13: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(16 downto 0);
  signal c_1_0_0_False_resize: signed(16 downto 0);
  signal c_1_0_0_False_shift: signed(16 downto 0);
  signal c_1_0_1_False_resize: signed(16 downto 0);
  signal c_1_0_1_False_shift: signed(16 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(20 downto 0);
  signal c_2_i0_resize: signed(20 downto 0);
  signal c_2_i1_resize: signed(20 downto 0);
  signal c_2_i0_shift: signed(20 downto 0);
  signal c_2_i1_shift: signed(20 downto 0);
  signal c_2_arith: signed(20 downto 0);
  signal c_2_oshift: signed(20 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(17 downto 0);
  signal c_3_0_0_False_resize: signed(17 downto 0);
  signal c_3_0_0_False_shift: signed(17 downto 0);
  signal c_3_0_2_False_resize: signed(17 downto 0);
  signal c_3_0_2_False_shift: signed(17 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(20 downto 0);
  signal c_4_0_0_False_resize: signed(20 downto 0);
  signal c_4_0_0_False_shift: signed(20 downto 0);
  signal c_4_2_0_False_resize: signed(20 downto 0);
  signal c_4_2_0_False_shift: signed(20 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(20 downto 0);
  signal c_5_i0_resize: signed(20 downto 0);
  signal c_5_i1_resize: signed(20 downto 0);
  signal c_5_i0_shift: signed(20 downto 0);
  signal c_5_i1_shift: signed(20 downto 0);
  signal c_5_arith: signed(20 downto 0);
  signal c_5_oshift: signed(20 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(20 downto 0);
  signal c_6_0_4_False_resize: signed(20 downto 0);
  signal c_6_0_4_False_shift: signed(20 downto 0);
  signal c_6_5_0_False_resize: signed(20 downto 0);
  signal c_6_5_0_False_shift: signed(20 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_i0_resize: signed(22 downto 0);
  signal c_7_i1_resize: signed(22 downto 0);
  signal c_7_i0_shift: signed(22 downto 0);
  signal c_7_i1_shift: signed(22 downto 0);
  signal c_7_arith: signed(22 downto 0);
  signal c_7_oshift: signed(22 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(22 downto 0);
  signal c_8_0_7_False_resize: signed(22 downto 0);
  signal c_8_0_7_False_shift: signed(22 downto 0);
  signal c_8_2_0_False_resize: signed(22 downto 0);
  signal c_8_2_0_False_shift: signed(22 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_9_0_0_False_resize: signed(21 downto 0);
  signal c_9_0_0_False_shift: signed(21 downto 0);
  signal c_9_0_6_False_resize: signed(21 downto 0);
  signal c_9_0_6_False_shift: signed(21 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_i0_resize: signed(22 downto 0);
  signal c_10_i1_resize: signed(22 downto 0);
  signal c_10_i0_shift: signed(22 downto 0);
  signal c_10_i1_shift: signed(22 downto 0);
  signal c_10_arith: signed(22 downto 0);
  signal c_10_oshift: signed(22 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(21 downto 0);
  signal c_11_0_6_False_resize: signed(21 downto 0);
  signal c_11_0_6_False_shift: signed(21 downto 0);
  signal c_11_5_0_False_resize: signed(21 downto 0);
  signal c_11_5_0_False_shift: signed(21 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(21 downto 0);
  signal c_12_5_1_False_resize: signed(21 downto 0);
  signal c_12_5_1_False_shift: signed(21 downto 0);
  signal c_12_2_0_False_resize: signed(21 downto 0);
  signal c_12_2_0_False_shift: signed(21 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(21 downto 0);
  signal c_14_7_1_False_resize: signed(21 downto 0);
  signal c_14_7_1_False_shift: signed(21 downto 0);
  signal c_14_2_0_False_resize: signed(21 downto 0);
  signal c_14_2_0_False_shift: signed(21 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(21 downto 0);
  signal c_15_i0_resize: signed(21 downto 0);
  signal c_15_i1_resize: signed(21 downto 0);
  signal c_15_i0_shift: signed(21 downto 0);
  signal c_15_i1_shift: signed(21 downto 0);
  signal c_15_arith: signed(21 downto 0);
  signal c_15_oshift: signed(21 downto 0);
  signal c_16: signed(21 downto 0);
  signal c_16_15_0_False_resize: signed(21 downto 0);
  signal c_16_15_0_False_shift: signed(21 downto 0);
  signal c_16_0_2_False_resize: signed(21 downto 0);
  signal c_16_0_2_False_shift: signed(21 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(21 downto 0);
  signal c_17_0_1_False_resize: signed(21 downto 0);
  signal c_17_0_1_False_shift: signed(21 downto 0);
  signal c_17_0_6_False_resize: signed(21 downto 0);
  signal c_17_0_6_False_shift: signed(21 downto 0);
  signal c_17_0_0_False_resize: signed(21 downto 0);
  signal c_17_0_0_False_shift: signed(21 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(22 downto 0);
  signal c_18_i0_resize: signed(22 downto 0);
  signal c_18_i1_resize: signed(22 downto 0);
  signal c_18_i0_shift: signed(22 downto 0);
  signal c_18_i1_shift: signed(22 downto 0);
  signal c_18_arith: signed(22 downto 0);
  signal c_18_oshift: signed(22 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(21 downto 0);
  signal c_19_5_1_False_resize: signed(21 downto 0);
  signal c_19_5_1_False_shift: signed(21 downto 0);
  signal c_19_15_0_False_resize: signed(21 downto 0);
  signal c_19_15_0_False_shift: signed(21 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(20 downto 0);
  signal c_20_0_0_False_resize: signed(20 downto 0);
  signal c_20_0_0_False_shift: signed(20 downto 0);
  signal c_20_5_0_False_resize: signed(20 downto 0);
  signal c_20_5_0_False_shift: signed(20 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_i0_resize: signed(23 downto 0);
  signal c_21_i1_resize: signed(23 downto 0);
  signal c_21_i0_shift: signed(23 downto 0);
  signal c_21_i1_shift: signed(23 downto 0);
  signal c_21_arith: signed(23 downto 0);
  signal c_21_oshift: signed(23 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(23 downto 0);
  signal c_22_5_3_False_resize: signed(23 downto 0);
  signal c_22_5_3_False_shift: signed(23 downto 0);
  signal c_22_13_0_False_resize: signed(23 downto 0);
  signal c_22_13_0_False_shift: signed(23 downto 0);
  signal c_22_0_8_False_resize: signed(23 downto 0);
  signal c_22_0_8_False_shift: signed(23 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_i0_resize: signed(23 downto 0);
  signal c_23_i1_resize: signed(23 downto 0);
  signal c_23_i0_shift: signed(23 downto 0);
  signal c_23_i1_shift: signed(23 downto 0);
  signal c_23_arith: signed(23 downto 0);
  signal c_23_oshift: signed(23 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(22 downto 0);
  signal c_24_23_0_False_resize: signed(22 downto 0);
  signal c_24_23_0_False_shift: signed(22 downto 0);
  signal c_24_0_1_False_resize: signed(22 downto 0);
  signal c_24_0_1_False_shift: signed(22 downto 0);
  signal c_24_7_0_False_resize: signed(22 downto 0);
  signal c_24_7_0_False_shift: signed(22 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_i0_resize: signed(23 downto 0);
  signal c_25_i1_resize: signed(23 downto 0);
  signal c_25_i0_shift: signed(23 downto 0);
  signal c_25_i1_shift: signed(23 downto 0);
  signal c_25_arith: signed(23 downto 0);
  signal c_25_oshift: signed(23 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(22 downto 0);
  signal c_26_resize: signed(22 downto 0);
  signal c_27: signed(22 downto 0);
  signal c_27_18_0_False_resize: signed(22 downto 0);
  signal c_27_18_0_False_shift: signed(22 downto 0);
  signal c_27_10_0_False_resize: signed(22 downto 0);
  signal c_27_10_0_False_shift: signed(22 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_28_resize: signed(22 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_21_0_False_resize: signed(23 downto 0);
  signal c_29_21_0_False_shift: signed(23 downto 0);
  signal c_29_5_0_False_resize: signed(23 downto 0);
  signal c_29_5_0_False_shift: signed(23 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_resize: signed(23 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_7_0_False_resize: signed(23 downto 0);
  signal c_31_7_0_False_shift: signed(23 downto 0);
  signal c_31_18_0_False_resize: signed(23 downto 0);
  signal c_31_18_0_False_shift: signed(23 downto 0);
  signal c_31_21_0_False_resize: signed(23 downto 0);
  signal c_31_21_0_False_shift: signed(23 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_32_resize: signed(23 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_10_1_False_resize: signed(23 downto 0);
  signal c_33_10_1_False_shift: signed(23 downto 0);
  signal c_33_23_0_False_resize: signed(23 downto 0);
  signal c_33_23_0_False_shift: signed(23 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_resize: signed(23 downto 0);
  signal c_35: signed(20 downto 0);
  signal c_35_2_0_False_resize: signed(20 downto 0);
  signal c_35_2_0_False_shift: signed(20 downto 0);
  signal c_35_0_5_False_resize: signed(20 downto 0);
  signal c_35_0_5_False_shift: signed(20 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(20 downto 0);
  signal c_36_resize: signed(20 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_5_1_False_resize: signed(23 downto 0);
  signal c_37_5_1_False_shift: signed(23 downto 0);
  signal c_37_25_0_False_resize: signed(23 downto 0);
  signal c_37_25_0_False_shift: signed(23 downto 0);
  signal c_37_7_3_False_resize: signed(23 downto 0);
  signal c_37_7_3_False_shift: signed(23 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_resize: signed(23 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_25_0_False_resize: signed(23 downto 0);
  signal c_39_25_0_False_shift: signed(23 downto 0);
  signal c_39_10_1_False_resize: signed(23 downto 0);
  signal c_39_10_1_False_shift: signed(23 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_resize: signed(23 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_resize: signed(23 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_23_0_False_resize: signed(23 downto 0);
  signal c_42_23_0_False_shift: signed(23 downto 0);
  signal c_42_0_7_False_resize: signed(23 downto 0);
  signal c_42_0_7_False_shift: signed(23 downto 0);
  signal c_42_7_0_False_resize: signed(23 downto 0);
  signal c_42_7_0_False_shift: signed(23 downto 0);
  signal c_42_sel: std_logic_vector(1 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_resize: signed(23 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 26
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_26);
    end if;
  end process;
  -- output node 1 with id 28
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_28);
    end if;
  end process;
  -- output node 2 with id 30
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_30);
    end if;
  end process;
  -- output node 3 with id 32
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_32);
    end if;
  end process;
  -- output node 4 with id 34
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_34);
    end if;
  end process;
  -- output node 5 with id 36
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_36);
    end if;
  end process;
  -- output node 6 with id 38
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_38);
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
  -- output node 9 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_43);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [2], [1]]
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "0",
    c_1_0_1_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 2 and associated fundamentals [[15], [14], [17]]
  with config_select_2 select c_2_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 17,
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
      sub_i => c_2_sub_sel,
      x_i => c_0,
      y_i => c_1,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(20 downto 0);
  -- node of type 'mux' in stage 1 with id 3 and associated fundamentals [[4], [4], [1]]
  c_3_0_0_False_resize <= resize(c_0, 18);
  c_3_0_0_False_shift <= shift_left(c_3_0_0_False_resize, 0);
  c_3_0_2_False_resize <= resize(c_0, 18);
  c_3_0_2_False_shift <= shift_left(c_3_0_2_False_resize, 2);
  with config_select_1 select c_3_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_0_0_False_shift when "0",
    c_3_0_2_False_shift when others;
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[15], [1], [17]]
  c_4_0_0_False_resize <= resize(c_0, 21);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_2_0_False_resize <= c_2;
  c_4_2_0_False_shift <= shift_left(c_4_2_0_False_resize, 0);
  with config_select_3 select c_4_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_0_0_False_shift when "0",
    c_4_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 5 and associated fundamentals [[17], [31], [25]]
  with config_select_4 select c_5_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 21,
      w_o => 21,
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
      sub_i => c_5_sub_sel,
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(20 downto 0);
  -- node of type 'mux' in stage 5 with id 6 and associated fundamentals [[17], [16], [25]]
  c_6_0_4_False_resize <= resize(c_0, 21);
  c_6_0_4_False_shift <= shift_left(c_6_0_4_False_resize, 4);
  c_6_5_0_False_resize <= c_5;
  c_6_5_0_False_shift <= shift_left(c_6_5_0_False_resize, 0);
  with config_select_5 select c_6_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_0_4_False_shift when "0",
    c_6_5_0_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 7 and associated fundamentals [[19], [46], [67]]
  with config_select_6 select c_7_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 21,
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
      sub_i => c_7_sub_sel,
      x_i => c_6,
      y_i => c_2,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(22 downto 0);
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[128], [14], [17]]
  c_8_0_7_False_resize <= resize(c_0, 23);
  c_8_0_7_False_shift <= shift_left(c_8_0_7_False_resize, 7);
  c_8_2_0_False_resize <= resize(c_2, 23);
  c_8_2_0_False_shift <= shift_left(c_8_2_0_False_resize, 0);
  with config_select_3 select c_8_sel <= 
    "0" when "00",
    "1" when "10",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_0_7_False_shift when "0",
    c_8_2_0_False_shift when others;
  -- node of type 'mux' in stage 1 with id 9 and associated fundamentals [[1], [1], [64]]
  c_9_0_0_False_resize <= resize(c_0, 22);
  c_9_0_0_False_shift <= shift_left(c_9_0_0_False_resize, 0);
  c_9_0_6_False_resize <= resize(c_0, 22);
  c_9_0_6_False_shift <= shift_left(c_9_0_6_False_resize, 6);
  with config_select_1 select c_9_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_0_0_False_shift when "0",
    c_9_0_6_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 10 and associated fundamentals [[127], [13], [81]]
  with config_select_4 select c_10_sub_sel <= 
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
      x_i => c_8,
      y_i => c_9,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(22 downto 0);
  -- node of type 'mux' in stage 5 with id 11 and associated fundamentals [[64], [31], [64]]
  c_11_0_6_False_resize <= resize(c_0, 22);
  c_11_0_6_False_shift <= shift_left(c_11_0_6_False_resize, 6);
  c_11_5_0_False_resize <= resize(c_5, 22);
  c_11_5_0_False_shift <= shift_left(c_11_5_0_False_resize, 0);
  with config_select_5 select c_11_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_0_6_False_shift when "0",
    c_11_5_0_False_shift when others;
  -- node of type 'mux' in stage 5 with id 12 and associated fundamentals [[15], [62], [50]]
  c_12_5_1_False_resize <= resize(c_5, 22);
  c_12_5_1_False_shift <= shift_left(c_12_5_1_False_resize, 1);
  c_12_2_0_False_resize <= resize(c_2, 22);
  c_12_2_0_False_shift <= shift_left(c_12_2_0_False_resize, 0);
  with config_select_5 select c_12_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_12_sel select c_12 <=
    c_12_5_1_False_shift when "0",
    c_12_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 13 and associated fundamentals [[98], [186], [228]]
  with config_select_6 select c_13_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 24,
      s_x_i => 1,
      s_y_i => 1,
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
  -- node of type 'mux' in stage 7 with id 14 and associated fundamentals [[38], [14], [17]]
  c_14_7_1_False_resize <= c_7(21 downto 0);
  c_14_7_1_False_shift <= shift_left(c_14_7_1_False_resize, 1);
  c_14_2_0_False_resize <= resize(c_2, 22);
  c_14_2_0_False_shift <= shift_left(c_14_2_0_False_resize, 0);
  with config_select_7 select c_14_sel <= 
    "0" when "00",
    "1" when "10",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_7_1_False_shift when "0",
    c_14_2_0_False_shift when others;
  -- node of type 'add' in stage 8 with id 15 and associated fundamentals [[55], [45], [42]]
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 21,
      w_o => 22,
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
      x_i => c_14,
      y_i => c_5,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(21 downto 0);
  -- node of type 'mux' in stage 9 with id 16 and associated fundamentals [[55], [45], [4]]
  c_16_15_0_False_resize <= c_15;
  c_16_15_0_False_shift <= shift_left(c_16_15_0_False_resize, 0);
  c_16_0_2_False_resize <= resize(c_0, 22);
  c_16_0_2_False_shift <= shift_left(c_16_0_2_False_resize, 2);
  with config_select_9 select c_16_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_15_0_False_shift when "0",
    c_16_0_2_False_shift when others;
  -- node of type 'mux' in stage 1 with id 17 and associated fundamentals [[2], [64], [1]]
  c_17_0_1_False_resize <= resize(c_0, 22);
  c_17_0_1_False_shift <= shift_left(c_17_0_1_False_resize, 1);
  c_17_0_6_False_resize <= resize(c_0, 22);
  c_17_0_6_False_shift <= shift_left(c_17_0_6_False_resize, 6);
  c_17_0_0_False_resize <= resize(c_0, 22);
  c_17_0_0_False_shift <= shift_left(c_17_0_0_False_resize, 0);
  with config_select_1 select c_17_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_17_sel select c_17 <=
    c_17_0_1_False_shift when "00",
    c_17_0_6_False_shift when "01",
    c_17_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 18 and associated fundamentals [[53], [109], [5]]
  with config_select_10 select c_18_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_18_sub_sel,
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  c_18 <= c_18_oshift(22 downto 0);
  -- node of type 'mux' in stage 9 with id 19 and associated fundamentals [[55], [62], [42]]
  c_19_5_1_False_resize <= resize(c_5, 22);
  c_19_5_1_False_shift <= shift_left(c_19_5_1_False_resize, 1);
  c_19_15_0_False_resize <= c_15;
  c_19_15_0_False_shift <= shift_left(c_19_15_0_False_resize, 0);
  with config_select_9 select c_19_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when others;
  with c_19_sel select c_19 <=
    c_19_5_1_False_shift when "0",
    c_19_15_0_False_shift when others;
  -- node of type 'mux' in stage 5 with id 20 and associated fundamentals [[1], [1], [25]]
  c_20_0_0_False_resize <= resize(c_0, 21);
  c_20_0_0_False_shift <= shift_left(c_20_0_0_False_resize, 0);
  c_20_5_0_False_resize <= c_5;
  c_20_5_0_False_shift <= shift_left(c_20_5_0_False_resize, 0);
  with config_select_5 select c_20_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_20_sel select c_20 <=
    c_20_0_0_False_shift when "0",
    c_20_5_0_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 21 and associated fundamentals [[221], [247], [143]]
  with config_select_10 select c_21_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_21_sub_sel,
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  c_21 <= c_21_oshift(23 downto 0);
  -- node of type 'mux' in stage 7 with id 22 and associated fundamentals [[98], [256], [200]]
  c_22_5_3_False_resize <= resize(c_5, 24);
  c_22_5_3_False_shift <= shift_left(c_22_5_3_False_resize, 3);
  c_22_13_0_False_resize <= c_13;
  c_22_13_0_False_shift <= shift_left(c_22_13_0_False_resize, 0);
  c_22_0_8_False_resize <= resize(c_0, 24);
  c_22_0_8_False_shift <= shift_left(c_22_0_8_False_resize, 8);
  with config_select_7 select c_22_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_22_sel select c_22 <=
    c_22_5_3_False_shift when "00",
    c_22_13_0_False_shift when "01",
    c_22_0_8_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 23 and associated fundamentals [[225], [243], [119]]
  with config_select_8 select c_23_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_23: entity work.adder_node
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
      sub_i => c_23_sub_sel,
      x_i => c_22,
      y_i => c_10,
      z_o => c_23_oshift
    );
  c_23 <= c_23_oshift(23 downto 0);
  -- node of type 'mux' in stage 9 with id 24 and associated fundamentals [[19], [2], [119]]
  c_24_23_0_False_resize <= c_23(22 downto 0);
  c_24_23_0_False_shift <= shift_left(c_24_23_0_False_resize, 0);
  c_24_0_1_False_resize <= resize(c_0, 23);
  c_24_0_1_False_shift <= shift_left(c_24_0_1_False_resize, 1);
  c_24_7_0_False_resize <= c_7;
  c_24_7_0_False_shift <= shift_left(c_24_7_0_False_resize, 0);
  with config_select_9 select c_24_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_24_sel select c_24 <=
    c_24_23_0_False_shift when "00",
    c_24_0_1_False_shift when "01",
    c_24_7_0_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 25 and associated fundamentals [[95], [182], [149]]
  with config_select_10 select c_25_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
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
      sub_i => c_25_sub_sel,
      x_i => c_7,
      y_i => c_24,
      z_o => c_25_oshift
    );
  c_25 <= c_25_oshift(23 downto 0);
  -- node of type 'output' in stage 8 with id 26 and associated fundamentals [[110], [90], [84]]
  c_26_resize <= resize(c_15, 23);
  c_26 <= shift_left(c_26_resize, 1);
  -- node of type 'mux' in stage 11 with id 27 and associated fundamentals [[127], [109], [5]]
  c_27_18_0_False_resize <= c_18;
  c_27_18_0_False_shift <= shift_left(c_27_18_0_False_resize, 0);
  c_27_10_0_False_resize <= c_10;
  c_27_10_0_False_shift <= shift_left(c_27_10_0_False_resize, 0);
  with config_select_11 select c_27_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  with c_27_sel select c_27 <=
    c_27_18_0_False_shift when "0",
    c_27_10_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 28 and associated fundamentals [[127], [109], [5]]
  c_28_resize <= c_27;
  c_28 <= shift_left(c_28_resize, 0);
  -- node of type 'mux' in stage 11 with id 29 and associated fundamentals [[221], [247], [25]]
  c_29_21_0_False_resize <= c_21;
  c_29_21_0_False_shift <= shift_left(c_29_21_0_False_resize, 0);
  c_29_5_0_False_resize <= resize(c_5, 24);
  c_29_5_0_False_shift <= shift_left(c_29_5_0_False_resize, 0);
  with config_select_11 select c_29_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_29_sel select c_29 <=
    c_29_21_0_False_shift when "0",
    c_29_5_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 30 and associated fundamentals [[221], [247], [25]]
  c_30_resize <= c_29;
  c_30 <= shift_left(c_30_resize, 0);
  -- node of type 'mux' in stage 11 with id 31 and associated fundamentals [[53], [46], [143]]
  c_31_7_0_False_resize <= resize(c_7, 24);
  c_31_7_0_False_shift <= shift_left(c_31_7_0_False_resize, 0);
  c_31_18_0_False_resize <= resize(c_18, 24);
  c_31_18_0_False_shift <= shift_left(c_31_18_0_False_resize, 0);
  c_31_21_0_False_resize <= c_21;
  c_31_21_0_False_shift <= shift_left(c_31_21_0_False_resize, 0);
  with config_select_11 select c_31_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_31_sel select c_31 <=
    c_31_7_0_False_shift when "00",
    c_31_18_0_False_shift when "01",
    c_31_21_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 32 and associated fundamentals [[53], [46], [143]]
  c_32_resize <= c_31;
  c_32 <= shift_left(c_32_resize, 0);
  -- node of type 'mux' in stage 9 with id 33 and associated fundamentals [[225], [26], [119]]
  c_33_10_1_False_resize <= resize(c_10, 24);
  c_33_10_1_False_shift <= shift_left(c_33_10_1_False_resize, 1);
  c_33_23_0_False_resize <= c_23;
  c_33_23_0_False_shift <= shift_left(c_33_23_0_False_resize, 0);
  with config_select_9 select c_33_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_33_sel select c_33 <=
    c_33_10_1_False_shift when "0",
    c_33_23_0_False_shift when others;
  -- node of type 'output' in stage 9 with id 34 and associated fundamentals [[225], [26], [119]]
  c_34_resize <= c_33;
  c_34 <= shift_left(c_34_resize, 0);
  -- node of type 'mux' in stage 3 with id 35 and associated fundamentals [[15], [14], [32]]
  c_35_2_0_False_resize <= c_2;
  c_35_2_0_False_shift <= shift_left(c_35_2_0_False_resize, 0);
  c_35_0_5_False_resize <= resize(c_0, 21);
  c_35_0_5_False_shift <= shift_left(c_35_0_5_False_resize, 5);
  with config_select_3 select c_35_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_35_sel select c_35 <=
    c_35_2_0_False_shift when "0",
    c_35_0_5_False_shift when others;
  -- node of type 'output' in stage 3 with id 36 and associated fundamentals [[15], [14], [32]]
  c_36_resize <= c_35;
  c_36 <= shift_left(c_36_resize, 0);
  -- node of type 'mux' in stage 11 with id 37 and associated fundamentals [[152], [62], [149]]
  c_37_5_1_False_resize <= resize(c_5, 24);
  c_37_5_1_False_shift <= shift_left(c_37_5_1_False_resize, 1);
  c_37_25_0_False_resize <= c_25;
  c_37_25_0_False_shift <= shift_left(c_37_25_0_False_resize, 0);
  c_37_7_3_False_resize <= resize(c_7, 24);
  c_37_7_3_False_shift <= shift_left(c_37_7_3_False_resize, 3);
  with config_select_11 select c_37_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_37_sel select c_37 <=
    c_37_5_1_False_shift when "00",
    c_37_25_0_False_shift when "01",
    c_37_7_3_False_shift when others;
  -- node of type 'output' in stage 11 with id 38 and associated fundamentals [[152], [62], [149]]
  c_38_resize <= c_37;
  c_38 <= shift_left(c_38_resize, 0);
  -- node of type 'mux' in stage 11 with id 39 and associated fundamentals [[95], [182], [162]]
  c_39_25_0_False_resize <= c_25;
  c_39_25_0_False_shift <= shift_left(c_39_25_0_False_resize, 0);
  c_39_10_1_False_resize <= resize(c_10, 24);
  c_39_10_1_False_shift <= shift_left(c_39_10_1_False_resize, 1);
  with config_select_11 select c_39_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_39_sel select c_39 <=
    c_39_25_0_False_shift when "0",
    c_39_10_1_False_shift when others;
  -- node of type 'output' in stage 11 with id 40 and associated fundamentals [[95], [182], [162]]
  c_40_resize <= c_39;
  c_40 <= shift_left(c_40_resize, 0);
  -- node of type 'output' in stage 6 with id 41 and associated fundamentals [[98], [186], [228]]
  c_41_resize <= c_13;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'mux' in stage 9 with id 42 and associated fundamentals [[128], [243], [67]]
  c_42_23_0_False_resize <= c_23;
  c_42_23_0_False_shift <= shift_left(c_42_23_0_False_resize, 0);
  c_42_0_7_False_resize <= resize(c_0, 24);
  c_42_0_7_False_shift <= shift_left(c_42_0_7_False_resize, 7);
  c_42_7_0_False_resize <= resize(c_7, 24);
  c_42_7_0_False_shift <= shift_left(c_42_7_0_False_resize, 0);
  with config_select_9 select c_42_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_42_sel select c_42 <=
    c_42_23_0_False_shift when "00",
    c_42_0_7_False_shift when "01",
    c_42_7_0_False_shift when others;
  -- node of type 'output' in stage 9 with id 43 and associated fundamentals [[128], [243], [67]]
  c_43_resize <= c_42;
  c_43 <= shift_left(c_43_resize, 0);
end architecture;
