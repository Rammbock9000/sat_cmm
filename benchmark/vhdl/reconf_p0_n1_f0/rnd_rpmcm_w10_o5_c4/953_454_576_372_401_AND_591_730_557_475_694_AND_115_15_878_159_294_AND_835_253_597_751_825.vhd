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
  signal config_select_12: std_logic_vector(1 downto 0);
  signal config_select_13: std_logic_vector(1 downto 0);
  signal config_select_14: std_logic_vector(1 downto 0);
  signal config_select_15: std_logic_vector(1 downto 0);
  signal config_select_16: std_logic_vector(1 downto 0);
  signal config_select_17: std_logic_vector(1 downto 0);
  signal config_select_18: std_logic_vector(1 downto 0);
  signal config_select_19: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_0_0_False_resize: signed(17 downto 0);
  signal c_1_0_0_False_shift: signed(17 downto 0);
  signal c_1_0_2_False_resize: signed(17 downto 0);
  signal c_1_0_2_False_shift: signed(17 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(22 downto 0);
  signal c_2_0_7_False_resize: signed(22 downto 0);
  signal c_2_0_7_False_shift: signed(22 downto 0);
  signal c_2_0_0_False_resize: signed(22 downto 0);
  signal c_2_0_0_False_shift: signed(22 downto 0);
  signal c_2_0_5_False_resize: signed(22 downto 0);
  signal c_2_0_5_False_shift: signed(22 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(23 downto 0);
  signal c_3_i0_resize: signed(23 downto 0);
  signal c_3_i1_resize: signed(23 downto 0);
  signal c_3_i0_shift: signed(23 downto 0);
  signal c_3_i1_shift: signed(23 downto 0);
  signal c_3_arith: signed(23 downto 0);
  signal c_3_oshift: signed(23 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(18 downto 0);
  signal c_4_0_0_False_resize: signed(18 downto 0);
  signal c_4_0_0_False_shift: signed(18 downto 0);
  signal c_4_0_1_False_resize: signed(18 downto 0);
  signal c_4_0_1_False_shift: signed(18 downto 0);
  signal c_4_3_0_False_resize: signed(18 downto 0);
  signal c_4_3_0_False_shift: signed(18 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(18 downto 0);
  signal c_5_0_0_False_resize: signed(18 downto 0);
  signal c_5_0_0_False_shift: signed(18 downto 0);
  signal c_5_3_0_False_resize: signed(18 downto 0);
  signal c_5_3_0_False_shift: signed(18 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_i0_resize: signed(22 downto 0);
  signal c_6_i1_resize: signed(22 downto 0);
  signal c_6_i0_shift: signed(22 downto 0);
  signal c_6_i1_shift: signed(22 downto 0);
  signal c_6_arith: signed(22 downto 0);
  signal c_6_oshift: signed(22 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(24 downto 0);
  signal c_7_3_4_False_resize: signed(24 downto 0);
  signal c_7_3_4_False_shift: signed(24 downto 0);
  signal c_7_3_3_False_resize: signed(24 downto 0);
  signal c_7_3_3_False_shift: signed(24 downto 0);
  signal c_7_0_0_False_resize: signed(24 downto 0);
  signal c_7_0_0_False_shift: signed(24 downto 0);
  signal c_7_0_8_False_resize: signed(24 downto 0);
  signal c_7_0_8_False_shift: signed(24 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_0_0_False_resize: signed(22 downto 0);
  signal c_8_0_0_False_shift: signed(22 downto 0);
  signal c_8_6_0_False_resize: signed(22 downto 0);
  signal c_8_6_0_False_shift: signed(22 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(25 downto 0);
  signal c_9_i0_resize: signed(25 downto 0);
  signal c_9_i1_resize: signed(25 downto 0);
  signal c_9_i0_shift: signed(25 downto 0);
  signal c_9_i1_shift: signed(25 downto 0);
  signal c_9_arith: signed(25 downto 0);
  signal c_9_oshift: signed(25 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(23 downto 0);
  signal c_10_0_7_False_resize: signed(23 downto 0);
  signal c_10_0_7_False_shift: signed(23 downto 0);
  signal c_10_6_0_False_resize: signed(23 downto 0);
  signal c_10_6_0_False_shift: signed(23 downto 0);
  signal c_10_0_2_False_resize: signed(23 downto 0);
  signal c_10_0_2_False_shift: signed(23 downto 0);
  signal c_10_0_8_False_resize: signed(23 downto 0);
  signal c_10_0_8_False_shift: signed(23 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(25 downto 0);
  signal c_11_0_2_False_resize: signed(25 downto 0);
  signal c_11_0_2_False_shift: signed(25 downto 0);
  signal c_11_9_0_False_resize: signed(25 downto 0);
  signal c_11_9_0_False_shift: signed(25 downto 0);
  signal c_11_9_5_False_resize: signed(25 downto 0);
  signal c_11_9_5_False_shift: signed(25 downto 0);
  signal c_11_3_3_False_resize: signed(25 downto 0);
  signal c_11_3_3_False_shift: signed(25 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(25 downto 0);
  signal c_12_i0_resize: signed(25 downto 0);
  signal c_12_i1_resize: signed(25 downto 0);
  signal c_12_i0_shift: signed(25 downto 0);
  signal c_12_i1_shift: signed(25 downto 0);
  signal c_12_arith: signed(25 downto 0);
  signal c_12_oshift: signed(25 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(24 downto 0);
  signal c_13_6_4_False_resize: signed(24 downto 0);
  signal c_13_6_4_False_shift: signed(24 downto 0);
  signal c_13_6_5_False_resize: signed(24 downto 0);
  signal c_13_6_5_False_shift: signed(24 downto 0);
  signal c_13_12_0_False_resize: signed(24 downto 0);
  signal c_13_12_0_False_shift: signed(24 downto 0);
  signal c_13_3_0_False_resize: signed(24 downto 0);
  signal c_13_3_0_False_shift: signed(24 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(25 downto 0);
  signal c_14_3_2_False_resize: signed(25 downto 0);
  signal c_14_3_2_False_shift: signed(25 downto 0);
  signal c_14_12_0_False_resize: signed(25 downto 0);
  signal c_14_12_0_False_shift: signed(25 downto 0);
  signal c_14_0_4_False_resize: signed(25 downto 0);
  signal c_14_0_4_False_shift: signed(25 downto 0);
  signal c_14_6_0_False_resize: signed(25 downto 0);
  signal c_14_6_0_False_shift: signed(25 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(24 downto 0);
  signal c_15_i0_resize: signed(24 downto 0);
  signal c_15_i1_resize: signed(24 downto 0);
  signal c_15_i0_shift: signed(24 downto 0);
  signal c_15_i1_shift: signed(24 downto 0);
  signal c_15_arith: signed(24 downto 0);
  signal c_15_oshift: signed(24 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(26 downto 0);
  signal c_16_9_0_False_resize: signed(26 downto 0);
  signal c_16_9_0_False_shift: signed(26 downto 0);
  signal c_16_15_2_False_resize: signed(26 downto 0);
  signal c_16_15_2_False_shift: signed(26 downto 0);
  signal c_16_6_1_False_resize: signed(26 downto 0);
  signal c_16_6_1_False_shift: signed(26 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_15_0_False_resize: signed(25 downto 0);
  signal c_17_15_0_False_shift: signed(25 downto 0);
  signal c_17_0_10_False_resize: signed(25 downto 0);
  signal c_17_0_10_False_shift: signed(25 downto 0);
  signal c_17_0_0_False_resize: signed(25 downto 0);
  signal c_17_0_0_False_shift: signed(25 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_i0_resize: signed(25 downto 0);
  signal c_18_i1_resize: signed(25 downto 0);
  signal c_18_i0_shift: signed(25 downto 0);
  signal c_18_i1_shift: signed(25 downto 0);
  signal c_18_arith: signed(25 downto 0);
  signal c_18_oshift: signed(25 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(27 downto 0);
  signal c_19_3_4_False_resize: signed(27 downto 0);
  signal c_19_3_4_False_shift: signed(27 downto 0);
  signal c_19_18_0_False_resize: signed(27 downto 0);
  signal c_19_18_0_False_shift: signed(27 downto 0);
  signal c_19_6_1_False_resize: signed(27 downto 0);
  signal c_19_6_1_False_shift: signed(27 downto 0);
  signal c_19_0_8_False_resize: signed(27 downto 0);
  signal c_19_0_8_False_shift: signed(27 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(26 downto 0);
  signal c_20_9_0_False_resize: signed(26 downto 0);
  signal c_20_9_0_False_shift: signed(26 downto 0);
  signal c_20_3_1_False_resize: signed(26 downto 0);
  signal c_20_3_1_False_shift: signed(26 downto 0);
  signal c_20_12_0_False_resize: signed(26 downto 0);
  signal c_20_12_0_False_shift: signed(26 downto 0);
  signal c_20_18_2_False_resize: signed(26 downto 0);
  signal c_20_18_2_False_shift: signed(26 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_i0_resize: signed(25 downto 0);
  signal c_21_i1_resize: signed(25 downto 0);
  signal c_21_i0_shift: signed(25 downto 0);
  signal c_21_i1_shift: signed(25 downto 0);
  signal c_21_arith: signed(25 downto 0);
  signal c_21_oshift: signed(25 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_9_0_False_resize: signed(25 downto 0);
  signal c_22_9_0_False_shift: signed(25 downto 0);
  signal c_22_0_7_False_resize: signed(25 downto 0);
  signal c_22_0_7_False_shift: signed(25 downto 0);
  signal c_22_21_0_False_resize: signed(25 downto 0);
  signal c_22_21_0_False_shift: signed(25 downto 0);
  signal c_22_15_2_False_resize: signed(25 downto 0);
  signal c_22_15_2_False_shift: signed(25 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(24 downto 0);
  signal c_23_15_0_False_resize: signed(24 downto 0);
  signal c_23_15_0_False_shift: signed(24 downto 0);
  signal c_23_12_0_False_resize: signed(24 downto 0);
  signal c_23_12_0_False_shift: signed(24 downto 0);
  signal c_23_6_0_False_resize: signed(24 downto 0);
  signal c_23_6_0_False_shift: signed(24 downto 0);
  signal c_23_6_4_False_resize: signed(24 downto 0);
  signal c_23_6_4_False_shift: signed(24 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_i0_resize: signed(25 downto 0);
  signal c_24_i1_resize: signed(25 downto 0);
  signal c_24_i0_shift: signed(25 downto 0);
  signal c_24_i1_shift: signed(25 downto 0);
  signal c_24_arith: signed(25 downto 0);
  signal c_24_oshift: signed(25 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(24 downto 0);
  signal c_25_18_0_False_resize: signed(24 downto 0);
  signal c_25_18_0_False_shift: signed(24 downto 0);
  signal c_25_12_0_False_resize: signed(24 downto 0);
  signal c_25_12_0_False_shift: signed(24 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(21 downto 0);
  signal c_26_3_0_False_resize: signed(21 downto 0);
  signal c_26_3_0_False_shift: signed(21 downto 0);
  signal c_26_9_0_False_resize: signed(21 downto 0);
  signal c_26_9_0_False_shift: signed(21 downto 0);
  signal c_26_0_1_False_resize: signed(21 downto 0);
  signal c_26_0_1_False_shift: signed(21 downto 0);
  signal c_26_0_6_False_resize: signed(21 downto 0);
  signal c_26_0_6_False_shift: signed(21 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_i0_resize: signed(25 downto 0);
  signal c_27_i1_resize: signed(25 downto 0);
  signal c_27_i0_shift: signed(25 downto 0);
  signal c_27_i1_shift: signed(25 downto 0);
  signal c_27_arith: signed(25 downto 0);
  signal c_27_oshift: signed(25 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_18_0_False_resize: signed(25 downto 0);
  signal c_28_18_0_False_shift: signed(25 downto 0);
  signal c_28_9_0_False_resize: signed(25 downto 0);
  signal c_28_9_0_False_shift: signed(25 downto 0);
  signal c_28_27_0_False_resize: signed(25 downto 0);
  signal c_28_27_0_False_shift: signed(25 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_resize: signed(25 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_15_0_False_resize: signed(25 downto 0);
  signal c_30_15_0_False_shift: signed(25 downto 0);
  signal c_30_24_1_False_resize: signed(25 downto 0);
  signal c_30_24_1_False_shift: signed(25 downto 0);
  signal c_30_27_0_False_resize: signed(25 downto 0);
  signal c_30_27_0_False_shift: signed(25 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_resize: signed(25 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_9_0_False_resize: signed(25 downto 0);
  signal c_32_9_0_False_shift: signed(25 downto 0);
  signal c_32_24_1_False_resize: signed(25 downto 0);
  signal c_32_24_1_False_shift: signed(25 downto 0);
  signal c_32_3_2_False_resize: signed(25 downto 0);
  signal c_32_3_2_False_shift: signed(25 downto 0);
  signal c_32_21_0_False_resize: signed(25 downto 0);
  signal c_32_21_0_False_shift: signed(25 downto 0);
  signal c_32_sel: std_logic_vector(1 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_resize: signed(25 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_34_21_0_False_resize: signed(25 downto 0);
  signal c_34_21_0_False_shift: signed(25 downto 0);
  signal c_34_24_0_False_resize: signed(25 downto 0);
  signal c_34_24_0_False_shift: signed(25 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_resize: signed(25 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_36_12_0_False_resize: signed(25 downto 0);
  signal c_36_12_0_False_shift: signed(25 downto 0);
  signal c_36_15_1_False_resize: signed(25 downto 0);
  signal c_36_15_1_False_shift: signed(25 downto 0);
  signal c_36_27_0_False_resize: signed(25 downto 0);
  signal c_36_27_0_False_shift: signed(25 downto 0);
  signal c_36_21_0_False_resize: signed(25 downto 0);
  signal c_36_21_0_False_shift: signed(25 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_resize: signed(25 downto 0);
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
      config_select_17 <= config_select;
      config_select_18 <= config_select;
      config_select_19 <= config_select;
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
  -- output node 2 with id 33
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_33);
    end if;
  end process;
  -- output node 3 with id 35
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_35);
    end if;
  end process;
  -- output node 4 with id 37
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_37);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[4], [1], [1], [1]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "11",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "0",
    c_1_0_2_False_shift when others;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[128], [32], [1], [1]]
  c_2_0_7_False_resize <= resize(c_0, 23);
  c_2_0_7_False_shift <= shift_left(c_2_0_7_False_resize, 7);
  c_2_0_0_False_resize <= resize(c_0, 23);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_5_False_resize <= resize(c_0, 23);
  c_2_0_5_False_shift <= shift_left(c_2_0_5_False_resize, 5);
  with config_select_1 select c_2_sel <= 
    "00" when "00",
    "01" when "11",
    "01" when "10",
    "10" when others;
  with c_2_sel select c_2 <=
    c_2_0_7_False_shift when "00",
    c_2_0_0_False_shift when "01",
    c_2_0_5_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[144], [36], [3], [5]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[1], [1], [2], [5]]
  c_4_0_0_False_resize <= resize(c_0, 19);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_1_False_resize <= resize(c_0, 19);
  c_4_0_1_False_shift <= shift_left(c_4_0_1_False_resize, 1);
  c_4_3_0_False_resize <= c_3(18 downto 0);
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  with config_select_3 select c_4_sel <= 
    "00" when "01",
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_4_sel select c_4 <=
    c_4_0_0_False_shift when "00",
    c_4_0_1_False_shift when "01",
    c_4_3_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[1], [1], [3], [5]]
  c_5_0_0_False_resize <= resize(c_0, 19);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_3_0_False_resize <= c_3(18 downto 0);
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  with config_select_3 select c_5_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when "10",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_0_0_False_shift when "0",
    c_5_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 6 and associated fundamentals [[-15], [-15], [50], [85]]
  with config_select_4 select c_6_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 23,
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
      sub_i => c_6_sub_sel,
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(22 downto 0);
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[1], [288], [48], [256]]
  c_7_3_4_False_resize <= resize(c_3, 25);
  c_7_3_4_False_shift <= shift_left(c_7_3_4_False_resize, 4);
  c_7_3_3_False_resize <= resize(c_3, 25);
  c_7_3_3_False_shift <= shift_left(c_7_3_3_False_resize, 3);
  c_7_0_0_False_resize <= resize(c_0, 25);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  c_7_0_8_False_resize <= resize(c_0, 25);
  c_7_0_8_False_shift <= shift_left(c_7_0_8_False_resize, 8);
  with config_select_3 select c_7_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  with c_7_sel select c_7 <=
    c_7_3_4_False_shift when "00",
    c_7_3_3_False_shift when "01",
    c_7_0_0_False_shift when "10",
    c_7_0_8_False_shift when others;
  -- node of type 'mux' in stage 5 with id 8 and associated fundamentals [[-15], [-15], [1], [85]]
  c_8_0_0_False_resize <= resize(c_0, 23);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  c_8_6_0_False_resize <= c_6;
  c_8_6_0_False_shift <= shift_left(c_8_6_0_False_resize, 0);
  with config_select_5 select c_8_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when "01",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_0_0_False_shift when "0",
    c_8_6_0_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 9 and associated fundamentals [[-13], [591], [97], [597]]
  with config_select_6 select c_9_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
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
      sub_i => c_9_sub_sel,
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(25 downto 0);
  -- node of type 'mux' in stage 5 with id 10 and associated fundamentals [[-15], [4], [256], [128]]
  c_10_0_7_False_resize <= resize(c_0, 24);
  c_10_0_7_False_shift <= shift_left(c_10_0_7_False_resize, 7);
  c_10_6_0_False_resize <= resize(c_6, 24);
  c_10_6_0_False_shift <= shift_left(c_10_6_0_False_resize, 0);
  c_10_0_2_False_resize <= resize(c_0, 24);
  c_10_0_2_False_shift <= shift_left(c_10_0_2_False_resize, 2);
  c_10_0_8_False_resize <= resize(c_0, 24);
  c_10_0_8_False_shift <= shift_left(c_10_0_8_False_resize, 8);
  with config_select_5 select c_10_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  with c_10_sel select c_10 <=
    c_10_0_7_False_shift when "00",
    c_10_6_0_False_shift when "01",
    c_10_0_2_False_shift when "10",
    c_10_0_8_False_shift when others;
  -- node of type 'mux' in stage 7 with id 11 and associated fundamentals [[-416], [591], [24], [4]]
  c_11_0_2_False_resize <= resize(c_0, 26);
  c_11_0_2_False_shift <= shift_left(c_11_0_2_False_resize, 2);
  c_11_9_0_False_resize <= c_9;
  c_11_9_0_False_shift <= shift_left(c_11_9_0_False_resize, 0);
  c_11_9_5_False_resize <= c_9;
  c_11_9_5_False_shift <= shift_left(c_11_9_5_False_resize, 5);
  c_11_3_3_False_resize <= resize(c_3, 26);
  c_11_3_3_False_shift <= shift_left(c_11_3_3_False_resize, 3);
  with config_select_7 select c_11_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  with c_11_sel select c_11 <=
    c_11_0_2_False_shift when "00",
    c_11_9_0_False_shift when "01",
    c_11_9_5_False_shift when "10",
    c_11_3_3_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 12 and associated fundamentals [[401], [-587], [280], [124]]
  with config_select_8 select c_12_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_12_sub_sel,
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(25 downto 0);
  -- node of type 'mux' in stage 9 with id 13 and associated fundamentals [[-480], [-240], [3], [124]]
  c_13_6_4_False_resize <= resize(c_6, 25);
  c_13_6_4_False_shift <= shift_left(c_13_6_4_False_resize, 4);
  c_13_6_5_False_resize <= resize(c_6, 25);
  c_13_6_5_False_shift <= shift_left(c_13_6_5_False_resize, 5);
  c_13_12_0_False_resize <= c_12(24 downto 0);
  c_13_12_0_False_shift <= shift_left(c_13_12_0_False_resize, 0);
  c_13_3_0_False_resize <= resize(c_3, 25);
  c_13_3_0_False_shift <= shift_left(c_13_3_0_False_resize, 0);
  with config_select_9 select c_13_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  with c_13_sel select c_13 <=
    c_13_6_4_False_shift when "00",
    c_13_6_5_False_shift when "01",
    c_13_12_0_False_shift when "10",
    c_13_3_0_False_shift when others;
  -- node of type 'mux' in stage 9 with id 14 and associated fundamentals [[16], [-587], [12], [85]]
  c_14_3_2_False_resize <= resize(c_3, 26);
  c_14_3_2_False_shift <= shift_left(c_14_3_2_False_resize, 2);
  c_14_12_0_False_resize <= c_12;
  c_14_12_0_False_shift <= shift_left(c_14_12_0_False_resize, 0);
  c_14_0_4_False_resize <= resize(c_0, 26);
  c_14_0_4_False_shift <= shift_left(c_14_0_4_False_resize, 4);
  c_14_6_0_False_resize <= resize(c_6, 26);
  c_14_6_0_False_shift <= shift_left(c_14_6_0_False_resize, 0);
  with config_select_9 select c_14_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  with c_14_sel select c_14 <=
    c_14_3_2_False_shift when "00",
    c_14_12_0_False_shift when "01",
    c_14_0_4_False_shift when "10",
    c_14_6_0_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 15 and associated fundamentals [[-496], [347], [15], [209]]
  with config_select_10 select c_15_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 26,
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
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(24 downto 0);
  -- node of type 'mux' in stage 11 with id 16 and associated fundamentals [[-13], [1388], [100], [836]]
  c_16_9_0_False_resize <= resize(c_9, 27);
  c_16_9_0_False_shift <= shift_left(c_16_9_0_False_resize, 0);
  c_16_15_2_False_resize <= resize(c_15, 27);
  c_16_15_2_False_shift <= shift_left(c_16_15_2_False_resize, 2);
  c_16_6_1_False_resize <= resize(c_6, 27);
  c_16_6_1_False_shift <= shift_left(c_16_6_1_False_resize, 1);
  with config_select_11 select c_16_sel <= 
    "00" when "00",
    "01" when "11",
    "01" when "01",
    "10" when others;
  with c_16_sel select c_16 <=
    c_16_9_0_False_shift when "00",
    c_16_15_2_False_shift when "01",
    c_16_6_1_False_shift when others;
  -- node of type 'mux' in stage 11 with id 17 and associated fundamentals [[-496], [1024], [15], [1]]
  c_17_15_0_False_resize <= resize(c_15, 26);
  c_17_15_0_False_shift <= shift_left(c_17_15_0_False_resize, 0);
  c_17_0_10_False_resize <= resize(c_0, 26);
  c_17_0_10_False_shift <= shift_left(c_17_0_10_False_resize, 10);
  c_17_0_0_False_resize <= resize(c_0, 26);
  c_17_0_0_False_shift <= shift_left(c_17_0_0_False_resize, 0);
  with config_select_11 select c_17_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_17_sel select c_17 <=
    c_17_15_0_False_shift when "00",
    c_17_0_10_False_shift when "01",
    c_17_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 12 with id 18 and associated fundamentals [[483], [364], [115], [835]]
  with config_select_12 select c_18_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 27,
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
      sub_i => c_18_sub_sel,
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  c_18 <= c_18_oshift(25 downto 0);
  -- node of type 'mux' in stage 13 with id 19 and associated fundamentals [[2304], [-30], [256], [835]]
  c_19_3_4_False_resize <= resize(c_3, 28);
  c_19_3_4_False_shift <= shift_left(c_19_3_4_False_resize, 4);
  c_19_18_0_False_resize <= resize(c_18, 28);
  c_19_18_0_False_shift <= shift_left(c_19_18_0_False_resize, 0);
  c_19_6_1_False_resize <= resize(c_6, 28);
  c_19_6_1_False_shift <= shift_left(c_19_6_1_False_resize, 1);
  c_19_0_8_False_resize <= resize(c_0, 28);
  c_19_0_8_False_shift <= shift_left(c_19_0_8_False_resize, 8);
  with config_select_13 select c_19_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "11" when others;
  with c_19_sel select c_19 <=
    c_19_3_4_False_shift when "00",
    c_19_18_0_False_shift when "01",
    c_19_6_1_False_shift when "10",
    c_19_0_8_False_shift when others;
  -- node of type 'mux' in stage 13 with id 20 and associated fundamentals [[1932], [-587], [97], [10]]
  c_20_9_0_False_resize <= resize(c_9, 27);
  c_20_9_0_False_shift <= shift_left(c_20_9_0_False_resize, 0);
  c_20_3_1_False_resize <= resize(c_3, 27);
  c_20_3_1_False_shift <= shift_left(c_20_3_1_False_resize, 1);
  c_20_12_0_False_resize <= resize(c_12, 27);
  c_20_12_0_False_shift <= shift_left(c_20_12_0_False_resize, 0);
  c_20_18_2_False_resize <= resize(c_18, 27);
  c_20_18_2_False_shift <= shift_left(c_20_18_2_False_resize, 2);
  with config_select_13 select c_20_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  with c_20_sel select c_20 <=
    c_20_9_0_False_shift when "00",
    c_20_3_1_False_shift when "01",
    c_20_12_0_False_shift when "10",
    c_20_18_2_False_shift when others;
  -- node of type 'sub' in stage 14 with id 21 and associated fundamentals [[372], [557], [159], [825]]
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 27,
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
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  c_21 <= c_21_oshift(25 downto 0);
  -- node of type 'mux' in stage 15 with id 22 and associated fundamentals [[-13], [128], [159], [836]]
  c_22_9_0_False_resize <= c_9;
  c_22_9_0_False_shift <= shift_left(c_22_9_0_False_resize, 0);
  c_22_0_7_False_resize <= resize(c_0, 26);
  c_22_0_7_False_shift <= shift_left(c_22_0_7_False_resize, 7);
  c_22_21_0_False_resize <= c_21;
  c_22_21_0_False_shift <= shift_left(c_22_21_0_False_resize, 0);
  c_22_15_2_False_resize <= resize(c_15, 26);
  c_22_15_2_False_shift <= shift_left(c_22_15_2_False_resize, 2);
  with config_select_15 select c_22_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "11" when others;
  with c_22_sel select c_22 <=
    c_22_9_0_False_shift when "00",
    c_22_0_7_False_shift when "01",
    c_22_21_0_False_shift when "10",
    c_22_15_2_False_shift when others;
  -- node of type 'mux' in stage 11 with id 23 and associated fundamentals [[-240], [347], [280], [85]]
  c_23_15_0_False_resize <= c_15;
  c_23_15_0_False_shift <= shift_left(c_23_15_0_False_resize, 0);
  c_23_12_0_False_resize <= c_12(24 downto 0);
  c_23_12_0_False_shift <= shift_left(c_23_12_0_False_resize, 0);
  c_23_6_0_False_resize <= resize(c_6, 25);
  c_23_6_0_False_shift <= shift_left(c_23_6_0_False_resize, 0);
  c_23_6_4_False_resize <= resize(c_6, 25);
  c_23_6_4_False_shift <= shift_left(c_23_6_4_False_resize, 4);
  with config_select_11 select c_23_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "11" when others;
  with c_23_sel select c_23 <=
    c_23_15_0_False_shift when "00",
    c_23_12_0_False_shift when "01",
    c_23_6_0_False_shift when "10",
    c_23_6_4_False_shift when others;
  -- node of type 'add_sub' in stage 16 with id 24 and associated fundamentals [[227], [475], [439], [751]]
  with config_select_16 select c_24_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_24_sub_sel,
      x_i => c_22,
      y_i => c_23,
      z_o => c_24_oshift
    );
  c_24 <= c_24_oshift(25 downto 0);
  -- node of type 'mux' in stage 13 with id 25 and associated fundamentals [[483], [364], [115], [124]]
  c_25_18_0_False_resize <= c_18(24 downto 0);
  c_25_18_0_False_shift <= shift_left(c_25_18_0_False_resize, 0);
  c_25_12_0_False_resize <= c_12(24 downto 0);
  c_25_12_0_False_shift <= shift_left(c_25_12_0_False_resize, 0);
  with config_select_13 select c_25_sel <= 
    "0" when "10",
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_25_sel select c_25 <=
    c_25_18_0_False_shift when "0",
    c_25_12_0_False_shift when others;
  -- node of type 'mux' in stage 7 with id 26 and associated fundamentals [[-13], [2], [64], [5]]
  c_26_3_0_False_resize <= c_3(21 downto 0);
  c_26_3_0_False_shift <= shift_left(c_26_3_0_False_resize, 0);
  c_26_9_0_False_resize <= c_9(21 downto 0);
  c_26_9_0_False_shift <= shift_left(c_26_9_0_False_resize, 0);
  c_26_0_1_False_resize <= resize(c_0, 22);
  c_26_0_1_False_shift <= shift_left(c_26_0_1_False_resize, 1);
  c_26_0_6_False_resize <= resize(c_0, 22);
  c_26_0_6_False_shift <= shift_left(c_26_0_6_False_resize, 6);
  with config_select_7 select c_26_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  with c_26_sel select c_26 <=
    c_26_3_0_False_shift when "00",
    c_26_9_0_False_shift when "01",
    c_26_0_1_False_shift when "10",
    c_26_0_6_False_shift when others;
  -- node of type 'add' in stage 14 with id 27 and associated fundamentals [[953], [730], [294], [253]]
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 22,
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
      x_i => c_25,
      y_i => c_26,
      z_o => c_27_oshift
    );
  c_27 <= c_27_oshift(25 downto 0);
  -- node of type 'mux' in stage 15 with id 28 and associated fundamentals [[953], [591], [115], [835]]
  c_28_18_0_False_resize <= c_18;
  c_28_18_0_False_shift <= shift_left(c_28_18_0_False_resize, 0);
  c_28_9_0_False_resize <= c_9;
  c_28_9_0_False_shift <= shift_left(c_28_9_0_False_resize, 0);
  c_28_27_0_False_resize <= c_27;
  c_28_27_0_False_shift <= shift_left(c_28_27_0_False_resize, 0);
  with config_select_15 select c_28_sel <= 
    "00" when "10",
    "00" when "11",
    "01" when "01",
    "10" when others;
  with c_28_sel select c_28 <=
    c_28_18_0_False_shift when "00",
    c_28_9_0_False_shift when "01",
    c_28_27_0_False_shift when others;
  -- node of type 'output' in stage 15 with id 29 and associated fundamentals [[953], [591], [115], [835]]
  c_29_resize <= c_28;
  c_29 <= shift_left(c_29_resize, 0);
  -- node of type 'mux' in stage 17 with id 30 and associated fundamentals [[454], [730], [15], [253]]
  c_30_15_0_False_resize <= resize(c_15, 26);
  c_30_15_0_False_shift <= shift_left(c_30_15_0_False_resize, 0);
  c_30_24_1_False_resize <= c_24;
  c_30_24_1_False_shift <= shift_left(c_30_24_1_False_resize, 1);
  c_30_27_0_False_resize <= c_27;
  c_30_27_0_False_shift <= shift_left(c_30_27_0_False_resize, 0);
  with config_select_17 select c_30_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "10" when others;
  with c_30_sel select c_30 <=
    c_30_15_0_False_shift when "00",
    c_30_24_1_False_shift when "01",
    c_30_27_0_False_shift when others;
  -- node of type 'output' in stage 17 with id 31 and associated fundamentals [[454], [730], [15], [253]]
  c_31_resize <= c_30;
  c_31 <= shift_left(c_31_resize, 0);
  -- node of type 'mux' in stage 17 with id 32 and associated fundamentals [[576], [557], [878], [597]]
  c_32_9_0_False_resize <= c_9;
  c_32_9_0_False_shift <= shift_left(c_32_9_0_False_resize, 0);
  c_32_24_1_False_resize <= c_24;
  c_32_24_1_False_shift <= shift_left(c_32_24_1_False_resize, 1);
  c_32_3_2_False_resize <= resize(c_3, 26);
  c_32_3_2_False_shift <= shift_left(c_32_3_2_False_resize, 2);
  c_32_21_0_False_resize <= c_21;
  c_32_21_0_False_shift <= shift_left(c_32_21_0_False_resize, 0);
  with config_select_17 select c_32_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  with c_32_sel select c_32 <=
    c_32_9_0_False_shift when "00",
    c_32_24_1_False_shift when "01",
    c_32_3_2_False_shift when "10",
    c_32_21_0_False_shift when others;
  -- node of type 'output' in stage 17 with id 33 and associated fundamentals [[576], [557], [878], [597]]
  c_33_resize <= c_32;
  c_33 <= shift_left(c_33_resize, 0);
  -- node of type 'mux' in stage 17 with id 34 and associated fundamentals [[372], [475], [159], [751]]
  c_34_21_0_False_resize <= c_21;
  c_34_21_0_False_shift <= shift_left(c_34_21_0_False_resize, 0);
  c_34_24_0_False_resize <= c_24;
  c_34_24_0_False_shift <= shift_left(c_34_24_0_False_resize, 0);
  with config_select_17 select c_34_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_34_sel select c_34 <=
    c_34_21_0_False_shift when "0",
    c_34_24_0_False_shift when others;
  -- node of type 'output' in stage 17 with id 35 and associated fundamentals [[372], [475], [159], [751]]
  c_35_resize <= c_34;
  c_35 <= shift_left(c_35_resize, 0);
  -- node of type 'mux' in stage 15 with id 36 and associated fundamentals [[401], [694], [294], [825]]
  c_36_12_0_False_resize <= c_12;
  c_36_12_0_False_shift <= shift_left(c_36_12_0_False_resize, 0);
  c_36_15_1_False_resize <= resize(c_15, 26);
  c_36_15_1_False_shift <= shift_left(c_36_15_1_False_resize, 1);
  c_36_27_0_False_resize <= c_27;
  c_36_27_0_False_shift <= shift_left(c_36_27_0_False_resize, 0);
  c_36_21_0_False_resize <= c_21;
  c_36_21_0_False_shift <= shift_left(c_36_21_0_False_resize, 0);
  with config_select_15 select c_36_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "11" when others;
  with c_36_sel select c_36 <=
    c_36_12_0_False_shift when "00",
    c_36_15_1_False_shift when "01",
    c_36_27_0_False_shift when "10",
    c_36_21_0_False_shift when others;
  -- node of type 'output' in stage 15 with id 37 and associated fundamentals [[401], [694], [294], [825]]
  c_37_resize <= c_36;
  c_37 <= shift_left(c_37_resize, 0);
end architecture;
