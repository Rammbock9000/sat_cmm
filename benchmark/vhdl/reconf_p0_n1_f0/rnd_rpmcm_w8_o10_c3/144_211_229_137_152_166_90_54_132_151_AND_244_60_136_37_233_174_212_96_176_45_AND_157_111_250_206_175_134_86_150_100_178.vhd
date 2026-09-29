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
  signal c_1: signed(17 downto 0);
  signal c_1_0_0_False_resize: signed(17 downto 0);
  signal c_1_0_0_False_shift: signed(17 downto 0);
  signal c_1_0_2_False_resize: signed(17 downto 0);
  signal c_1_0_2_False_shift: signed(17 downto 0);
  signal c_1_0_1_False_resize: signed(17 downto 0);
  signal c_1_0_1_False_shift: signed(17 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(19 downto 0);
  signal c_2_i0_resize: signed(19 downto 0);
  signal c_2_i1_resize: signed(19 downto 0);
  signal c_2_i0_shift: signed(19 downto 0);
  signal c_2_i1_shift: signed(19 downto 0);
  signal c_2_arith: signed(19 downto 0);
  signal c_2_oshift: signed(19 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(18 downto 0);
  signal c_3_0_3_False_resize: signed(18 downto 0);
  signal c_3_0_3_False_shift: signed(18 downto 0);
  signal c_3_2_0_False_resize: signed(18 downto 0);
  signal c_3_2_0_False_shift: signed(18 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(23 downto 0);
  signal c_4_i0_resize: signed(23 downto 0);
  signal c_4_i1_resize: signed(23 downto 0);
  signal c_4_i0_shift: signed(23 downto 0);
  signal c_4_i1_shift: signed(23 downto 0);
  signal c_4_arith: signed(23 downto 0);
  signal c_4_oshift: signed(23 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(19 downto 0);
  signal c_5_0_3_False_resize: signed(19 downto 0);
  signal c_5_0_3_False_shift: signed(19 downto 0);
  signal c_5_2_0_False_resize: signed(19 downto 0);
  signal c_5_2_0_False_shift: signed(19 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_0_1_False_resize: signed(22 downto 0);
  signal c_6_0_1_False_shift: signed(22 downto 0);
  signal c_6_4_0_False_resize: signed(22 downto 0);
  signal c_6_4_0_False_shift: signed(22 downto 0);
  signal c_6_2_0_False_resize: signed(22 downto 0);
  signal c_6_2_0_False_shift: signed(22 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_i0_resize: signed(23 downto 0);
  signal c_7_i1_resize: signed(23 downto 0);
  signal c_7_i0_shift: signed(23 downto 0);
  signal c_7_i1_shift: signed(23 downto 0);
  signal c_7_arith: signed(23 downto 0);
  signal c_7_oshift: signed(23 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(21 downto 0);
  signal c_8_0_0_False_resize: signed(21 downto 0);
  signal c_8_0_0_False_shift: signed(21 downto 0);
  signal c_8_0_6_False_resize: signed(21 downto 0);
  signal c_8_0_6_False_shift: signed(21 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(19 downto 0);
  signal c_9_2_2_False_resize: signed(19 downto 0);
  signal c_9_2_2_False_shift: signed(19 downto 0);
  signal c_9_0_0_False_resize: signed(19 downto 0);
  signal c_9_0_0_False_shift: signed(19 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_i0_resize: signed(22 downto 0);
  signal c_10_i1_resize: signed(22 downto 0);
  signal c_10_i0_shift: signed(22 downto 0);
  signal c_10_i1_shift: signed(22 downto 0);
  signal c_10_arith: signed(22 downto 0);
  signal c_10_oshift: signed(22 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(22 downto 0);
  signal c_11_4_0_False_resize: signed(22 downto 0);
  signal c_11_4_0_False_shift: signed(22 downto 0);
  signal c_11_7_0_False_resize: signed(22 downto 0);
  signal c_11_7_0_False_shift: signed(22 downto 0);
  signal c_11_2_5_False_resize: signed(22 downto 0);
  signal c_11_2_5_False_shift: signed(22 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_4_0_False_resize: signed(23 downto 0);
  signal c_12_4_0_False_shift: signed(23 downto 0);
  signal c_12_2_0_False_resize: signed(23 downto 0);
  signal c_12_2_0_False_shift: signed(23 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(22 downto 0);
  signal c_13_i0_resize: signed(22 downto 0);
  signal c_13_i1_resize: signed(22 downto 0);
  signal c_13_i0_shift: signed(22 downto 0);
  signal c_13_i1_shift: signed(22 downto 0);
  signal c_13_arith: signed(22 downto 0);
  signal c_13_oshift: signed(22 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(23 downto 0);
  signal c_14_0_8_False_resize: signed(23 downto 0);
  signal c_14_0_8_False_shift: signed(23 downto 0);
  signal c_14_2_0_False_resize: signed(23 downto 0);
  signal c_14_2_0_False_shift: signed(23 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(21 downto 0);
  signal c_15_7_0_False_resize: signed(21 downto 0);
  signal c_15_7_0_False_shift: signed(21 downto 0);
  signal c_15_10_1_False_resize: signed(21 downto 0);
  signal c_15_10_1_False_shift: signed(21 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_i0_resize: signed(23 downto 0);
  signal c_16_i1_resize: signed(23 downto 0);
  signal c_16_i0_shift: signed(23 downto 0);
  signal c_16_i1_shift: signed(23 downto 0);
  signal c_16_arith: signed(23 downto 0);
  signal c_16_oshift: signed(23 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(22 downto 0);
  signal c_17_7_1_False_resize: signed(22 downto 0);
  signal c_17_7_1_False_shift: signed(22 downto 0);
  signal c_17_10_0_False_resize: signed(22 downto 0);
  signal c_17_10_0_False_shift: signed(22 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_i0_resize: signed(23 downto 0);
  signal c_18_i1_resize: signed(23 downto 0);
  signal c_18_i0_shift: signed(23 downto 0);
  signal c_18_i1_shift: signed(23 downto 0);
  signal c_18_arith: signed(23 downto 0);
  signal c_18_oshift: signed(23 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(24 downto 0);
  signal c_19_2_7_False_resize: signed(24 downto 0);
  signal c_19_2_7_False_shift: signed(24 downto 0);
  signal c_19_18_0_False_resize: signed(24 downto 0);
  signal c_19_18_0_False_shift: signed(24 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_16_0_False_resize: signed(23 downto 0);
  signal c_20_16_0_False_shift: signed(23 downto 0);
  signal c_20_2_2_False_resize: signed(23 downto 0);
  signal c_20_2_2_False_shift: signed(23 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_i0_resize: signed(23 downto 0);
  signal c_21_i1_resize: signed(23 downto 0);
  signal c_21_i0_shift: signed(23 downto 0);
  signal c_21_i1_shift: signed(23 downto 0);
  signal c_21_arith: signed(23 downto 0);
  signal c_21_oshift: signed(23 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(24 downto 0);
  signal c_22_7_1_False_resize: signed(24 downto 0);
  signal c_22_7_1_False_shift: signed(24 downto 0);
  signal c_22_13_0_False_resize: signed(24 downto 0);
  signal c_22_13_0_False_shift: signed(24 downto 0);
  signal c_22_13_2_False_resize: signed(24 downto 0);
  signal c_22_13_2_False_shift: signed(24 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_0_7_False_resize: signed(23 downto 0);
  signal c_23_0_7_False_shift: signed(23 downto 0);
  signal c_23_7_0_False_resize: signed(23 downto 0);
  signal c_23_7_0_False_shift: signed(23 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_i0_resize: signed(23 downto 0);
  signal c_24_i1_resize: signed(23 downto 0);
  signal c_24_i0_shift: signed(23 downto 0);
  signal c_24_i1_shift: signed(23 downto 0);
  signal c_24_arith: signed(23 downto 0);
  signal c_24_oshift: signed(23 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(22 downto 0);
  signal c_25_18_0_False_resize: signed(22 downto 0);
  signal c_25_18_0_False_shift: signed(22 downto 0);
  signal c_25_16_1_False_resize: signed(22 downto 0);
  signal c_25_16_1_False_shift: signed(22 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(22 downto 0);
  signal c_26_10_0_False_resize: signed(22 downto 0);
  signal c_26_10_0_False_shift: signed(22 downto 0);
  signal c_26_0_6_False_resize: signed(22 downto 0);
  signal c_26_0_6_False_shift: signed(22 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_i0_resize: signed(23 downto 0);
  signal c_27_i1_resize: signed(23 downto 0);
  signal c_27_i0_shift: signed(23 downto 0);
  signal c_27_i1_shift: signed(23 downto 0);
  signal c_27_arith: signed(23 downto 0);
  signal c_27_oshift: signed(23 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(17 downto 0);
  signal c_28_0_0_False_resize: signed(17 downto 0);
  signal c_28_0_0_False_shift: signed(17 downto 0);
  signal c_28_2_0_False_resize: signed(17 downto 0);
  signal c_28_2_0_False_shift: signed(17 downto 0);
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
  signal c_30_2_4_False_resize: signed(23 downto 0);
  signal c_30_2_4_False_shift: signed(23 downto 0);
  signal c_30_7_0_False_resize: signed(23 downto 0);
  signal c_30_7_0_False_shift: signed(23 downto 0);
  signal c_30_18_0_False_resize: signed(23 downto 0);
  signal c_30_18_0_False_shift: signed(23 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_resize: signed(23 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_32_resize: signed(23 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_7_2_False_resize: signed(23 downto 0);
  signal c_33_7_2_False_shift: signed(23 downto 0);
  signal c_33_4_1_False_resize: signed(23 downto 0);
  signal c_33_4_1_False_shift: signed(23 downto 0);
  signal c_33_16_0_False_resize: signed(23 downto 0);
  signal c_33_16_0_False_shift: signed(23 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_resize: signed(23 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_4_0_False_resize: signed(23 downto 0);
  signal c_35_4_0_False_shift: signed(23 downto 0);
  signal c_35_16_0_False_resize: signed(23 downto 0);
  signal c_35_16_0_False_shift: signed(23 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_resize: signed(23 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_resize: signed(23 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_resize: signed(23 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_resize: signed(23 downto 0);
  signal c_40: signed(22 downto 0);
  signal c_40_18_0_False_resize: signed(22 downto 0);
  signal c_40_18_0_False_shift: signed(22 downto 0);
  signal c_40_2_4_False_resize: signed(22 downto 0);
  signal c_40_2_4_False_shift: signed(22 downto 0);
  signal c_40_7_0_False_resize: signed(22 downto 0);
  signal c_40_7_0_False_shift: signed(22 downto 0);
  signal c_40_sel: std_logic_vector(1 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_resize: signed(23 downto 0);
  signal c_42: signed(22 downto 0);
  signal c_42_10_1_False_resize: signed(22 downto 0);
  signal c_42_10_1_False_shift: signed(22 downto 0);
  signal c_42_10_0_False_resize: signed(22 downto 0);
  signal c_42_10_0_False_shift: signed(22 downto 0);
  signal c_42_sel: std_logic_vector(0 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_resize: signed(23 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_21_0_False_resize: signed(23 downto 0);
  signal c_44_21_0_False_shift: signed(23 downto 0);
  signal c_44_4_0_False_resize: signed(23 downto 0);
  signal c_44_4_0_False_shift: signed(23 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_resize: signed(23 downto 0);
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
  -- output node 0 with id 31
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_31);
    end if;
  end process;
  -- output node 1 with id 32
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_32);
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
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[4], [1], [2]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  c_1_0_1_False_resize <= resize(c_0, 18);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "00",
    c_1_0_2_False_shift when "01",
    c_1_0_1_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 2 and associated fundamentals [[9], [3], [-3]]
  with config_select_2 select c_2_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 18,
      w_o => 20,
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
      sub_i => c_2_sub_sel,
      x_i => c_0,
      y_i => c_1,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(19 downto 0);
  -- node of type 'mux' in stage 3 with id 3 and associated fundamentals [[8], [3], [8]]
  c_3_0_3_False_resize <= resize(c_0, 19);
  c_3_0_3_False_shift <= shift_left(c_3_0_3_False_resize, 3);
  c_3_2_0_False_resize <= c_2(18 downto 0);
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  with config_select_3 select c_3_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_0_3_False_shift when "0",
    c_3_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 4 and associated fundamentals [[137], [-45], [125]]
  with config_select_4 select c_4_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 19,
      w_o => 24,
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
      sub_i => c_4_sub_sel,
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[9], [8], [8]]
  c_5_0_3_False_resize <= resize(c_0, 20);
  c_5_0_3_False_shift <= shift_left(c_5_0_3_False_resize, 3);
  c_5_2_0_False_resize <= c_2;
  c_5_2_0_False_shift <= shift_left(c_5_2_0_False_resize, 0);
  with config_select_3 select c_5_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_0_3_False_shift when "0",
    c_5_2_0_False_shift when others;
  -- node of type 'mux' in stage 5 with id 6 and associated fundamentals [[9], [2], [125]]
  c_6_0_1_False_resize <= resize(c_0, 23);
  c_6_0_1_False_shift <= shift_left(c_6_0_1_False_resize, 1);
  c_6_4_0_False_resize <= c_4(22 downto 0);
  c_6_4_0_False_shift <= shift_left(c_6_4_0_False_resize, 0);
  c_6_2_0_False_resize <= resize(c_2, 23);
  c_6_2_0_False_shift <= shift_left(c_6_2_0_False_resize, 0);
  with config_select_5 select c_6_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_6_sel select c_6 <=
    c_6_0_1_False_shift when "00",
    c_6_4_0_False_shift when "01",
    c_6_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 7 and associated fundamentals [[27], [34], [157]]
  with config_select_6 select c_7_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 20,
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
      sub_i => c_7_sub_sel,
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(23 downto 0);
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[64], [64], [1]]
  c_8_0_0_False_resize <= resize(c_0, 22);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  c_8_0_6_False_resize <= resize(c_0, 22);
  c_8_0_6_False_shift <= shift_left(c_8_0_6_False_resize, 6);
  with config_select_1 select c_8_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_0_0_False_shift when "0",
    c_8_0_6_False_shift when others;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[1], [12], [-12]]
  c_9_2_2_False_resize <= c_2;
  c_9_2_2_False_shift <= shift_left(c_9_2_2_False_resize, 2);
  c_9_0_0_False_resize <= resize(c_0, 20);
  c_9_0_0_False_shift <= shift_left(c_9_0_0_False_resize, 0);
  with config_select_3 select c_9_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_2_2_False_shift when "0",
    c_9_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 10 and associated fundamentals [[66], [88], [25]]
  with config_select_4 select c_10_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_10_sub_sel,
      x_i => c_8,
      y_i => c_9,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(22 downto 0);
  -- node of type 'mux' in stage 7 with id 11 and associated fundamentals [[27], [-45], [-96]]
  c_11_4_0_False_resize <= c_4(22 downto 0);
  c_11_4_0_False_shift <= shift_left(c_11_4_0_False_resize, 0);
  c_11_7_0_False_resize <= c_7(22 downto 0);
  c_11_7_0_False_shift <= shift_left(c_11_7_0_False_resize, 0);
  c_11_2_5_False_resize <= resize(c_2, 23);
  c_11_2_5_False_shift <= shift_left(c_11_2_5_False_resize, 5);
  with config_select_7 select c_11_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_11_sel select c_11 <=
    c_11_4_0_False_shift when "00",
    c_11_7_0_False_shift when "01",
    c_11_2_5_False_shift when others;
  -- node of type 'mux' in stage 5 with id 12 and associated fundamentals [[137], [3], [125]]
  c_12_4_0_False_resize <= c_4;
  c_12_4_0_False_shift <= shift_left(c_12_4_0_False_resize, 0);
  c_12_2_0_False_resize <= resize(c_2, 24);
  c_12_2_0_False_shift <= shift_left(c_12_2_0_False_resize, 0);
  with config_select_5 select c_12_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_12_sel select c_12 <=
    c_12_4_0_False_shift when "0",
    c_12_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 13 and associated fundamentals [[-83], [-87], [-67]]
  with config_select_8 select c_13_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
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
      sub_i => c_13_sub_sel,
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(22 downto 0);
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[256], [3], [256]]
  c_14_0_8_False_resize <= resize(c_0, 24);
  c_14_0_8_False_shift <= shift_left(c_14_0_8_False_resize, 8);
  c_14_2_0_False_resize <= resize(c_2, 24);
  c_14_2_0_False_shift <= shift_left(c_14_2_0_False_resize, 0);
  with config_select_3 select c_14_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_0_8_False_shift when "0",
    c_14_2_0_False_shift when others;
  -- node of type 'mux' in stage 7 with id 15 and associated fundamentals [[27], [34], [50]]
  c_15_7_0_False_resize <= c_7(21 downto 0);
  c_15_7_0_False_shift <= shift_left(c_15_7_0_False_resize, 0);
  c_15_10_1_False_resize <= c_10(21 downto 0);
  c_15_10_1_False_shift <= shift_left(c_15_10_1_False_resize, 1);
  with config_select_7 select c_15_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_15_sel select c_15 <=
    c_15_7_0_False_shift when "0",
    c_15_10_1_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 16 and associated fundamentals [[229], [37], [206]]
  with config_select_8 select c_16_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
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
      sub_i => c_16_sub_sel,
      x_i => c_14,
      y_i => c_15,
      z_o => c_16_oshift
    );
  c_16 <= c_16_oshift(23 downto 0);
  -- node of type 'mux' in stage 7 with id 17 and associated fundamentals [[54], [68], [25]]
  c_17_7_1_False_resize <= c_7(22 downto 0);
  c_17_7_1_False_shift <= shift_left(c_17_7_1_False_resize, 1);
  c_17_10_0_False_resize <= c_10;
  c_17_10_0_False_shift <= shift_left(c_17_10_0_False_resize, 0);
  with config_select_7 select c_17_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_17_sel select c_17 <=
    c_17_7_1_False_shift when "0",
    c_17_10_0_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 18 and associated fundamentals [[78], [244], [75]]
  with config_select_8 select c_18_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
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
      sub_i => c_18_sub_sel,
      x_i => c_10,
      y_i => c_17,
      z_o => c_18_oshift
    );
  c_18 <= c_18_oshift(23 downto 0);
  -- node of type 'mux' in stage 9 with id 19 and associated fundamentals [[78], [244], [-384]]
  c_19_2_7_False_resize <= resize(c_2, 25);
  c_19_2_7_False_shift <= shift_left(c_19_2_7_False_resize, 7);
  c_19_18_0_False_resize <= resize(c_18, 25);
  c_19_18_0_False_shift <= shift_left(c_19_18_0_False_resize, 0);
  with config_select_9 select c_19_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_19_sel select c_19 <=
    c_19_2_7_False_shift when "0",
    c_19_18_0_False_shift when others;
  -- node of type 'mux' in stage 9 with id 20 and associated fundamentals [[229], [12], [206]]
  c_20_16_0_False_resize <= c_16;
  c_20_16_0_False_shift <= shift_left(c_20_16_0_False_resize, 0);
  c_20_2_2_False_resize <= resize(c_2, 24);
  c_20_2_2_False_shift <= shift_left(c_20_2_2_False_resize, 2);
  with config_select_9 select c_20_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_20_sel select c_20 <=
    c_20_16_0_False_shift when "0",
    c_20_2_2_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 21 and associated fundamentals [[-151], [232], [-178]]
  with config_select_10 select c_21_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_21_sub_sel,
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  c_21 <= c_21_oshift(23 downto 0);
  -- node of type 'mux' in stage 9 with id 22 and associated fundamentals [[-83], [68], [-268]]
  c_22_7_1_False_resize <= resize(c_7, 25);
  c_22_7_1_False_shift <= shift_left(c_22_7_1_False_resize, 1);
  c_22_13_0_False_resize <= resize(c_13, 25);
  c_22_13_0_False_shift <= shift_left(c_22_13_0_False_resize, 0);
  c_22_13_2_False_resize <= resize(c_13, 25);
  c_22_13_2_False_shift <= shift_left(c_22_13_2_False_resize, 2);
  with config_select_9 select c_22_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_22_sel select c_22 <=
    c_22_7_1_False_shift when "00",
    c_22_13_0_False_shift when "01",
    c_22_13_2_False_shift when others;
  -- node of type 'mux' in stage 7 with id 23 and associated fundamentals [[128], [128], [157]]
  c_23_0_7_False_resize <= resize(c_0, 24);
  c_23_0_7_False_shift <= shift_left(c_23_0_7_False_resize, 7);
  c_23_7_0_False_resize <= c_7;
  c_23_7_0_False_shift <= shift_left(c_23_7_0_False_resize, 0);
  with config_select_7 select c_23_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_23_sel select c_23 <=
    c_23_0_7_False_shift when "0",
    c_23_7_0_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 24 and associated fundamentals [[-211], [-60], [-111]]
  with config_select_10 select c_24_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_24_sub_sel,
      x_i => c_22,
      y_i => c_23,
      z_o => c_24_oshift
    );
  c_24 <= c_24_oshift(23 downto 0);
  -- node of type 'mux' in stage 9 with id 25 and associated fundamentals [[78], [74], [75]]
  c_25_18_0_False_resize <= c_18(22 downto 0);
  c_25_18_0_False_shift <= shift_left(c_25_18_0_False_resize, 0);
  c_25_16_1_False_resize <= c_16(22 downto 0);
  c_25_16_1_False_shift <= shift_left(c_25_16_1_False_resize, 1);
  with config_select_9 select c_25_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_25_sel select c_25 <=
    c_25_18_0_False_shift when "0",
    c_25_16_1_False_shift when others;
  -- node of type 'mux' in stage 5 with id 26 and associated fundamentals [[66], [64], [64]]
  c_26_10_0_False_resize <= c_10;
  c_26_10_0_False_shift <= shift_left(c_26_10_0_False_resize, 0);
  c_26_0_6_False_resize <= resize(c_0, 23);
  c_26_0_6_False_shift <= shift_left(c_26_0_6_False_resize, 6);
  with config_select_5 select c_26_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_26_sel select c_26 <=
    c_26_10_0_False_shift when "0",
    c_26_0_6_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 27 and associated fundamentals [[90], [212], [86]]
  with config_select_10 select c_27_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
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
      sub_i => c_27_sub_sel,
      x_i => c_25,
      y_i => c_26,
      z_o => c_27_oshift
    );
  c_27 <= c_27_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 28 and associated fundamentals [[1], [1], [-3]]
  c_28_0_0_False_resize <= resize(c_0, 18);
  c_28_0_0_False_shift <= shift_left(c_28_0_0_False_resize, 0);
  c_28_2_0_False_resize <= c_2(17 downto 0);
  c_28_2_0_False_shift <= shift_left(c_28_2_0_False_resize, 0);
  with config_select_3 select c_28_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_28_sel select c_28 <=
    c_28_0_0_False_shift when "0",
    c_28_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 11 with id 29 and associated fundamentals [[152], [233], [175]]
  with config_select_11 select c_29_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 18,
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
      sub_i => c_29_sub_sel,
      x_i => c_28,
      y_i => c_21,
      z_o => c_29_oshift
    );
  c_29 <= c_29_oshift(23 downto 0);
  -- node of type 'mux' in stage 9 with id 30 and associated fundamentals [[144], [244], [157]]
  c_30_2_4_False_resize <= resize(c_2, 24);
  c_30_2_4_False_shift <= shift_left(c_30_2_4_False_resize, 4);
  c_30_7_0_False_resize <= c_7;
  c_30_7_0_False_shift <= shift_left(c_30_7_0_False_resize, 0);
  c_30_18_0_False_resize <= c_18;
  c_30_18_0_False_shift <= shift_left(c_30_18_0_False_resize, 0);
  with config_select_9 select c_30_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_30_sel select c_30 <=
    c_30_2_4_False_shift when "00",
    c_30_7_0_False_shift when "01",
    c_30_18_0_False_shift when others;
  -- node of type 'output' in stage 9 with id 31 and associated fundamentals [[144], [244], [157]]
  c_31_resize <= c_30;
  c_31 <= shift_left(c_31_resize, 0);
  -- node of type 'output' in stage 10 with id 32 and associated fundamentals [[211], [60], [111]]
  c_32_resize <= c_24;
  c_32 <= -shift_left(c_32_resize, 0);
  -- node of type 'mux' in stage 9 with id 33 and associated fundamentals [[229], [136], [250]]
  c_33_7_2_False_resize <= c_7;
  c_33_7_2_False_shift <= shift_left(c_33_7_2_False_resize, 2);
  c_33_4_1_False_resize <= c_4;
  c_33_4_1_False_shift <= shift_left(c_33_4_1_False_resize, 1);
  c_33_16_0_False_resize <= c_16;
  c_33_16_0_False_shift <= shift_left(c_33_16_0_False_resize, 0);
  with config_select_9 select c_33_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_33_sel select c_33 <=
    c_33_7_2_False_shift when "00",
    c_33_4_1_False_shift when "01",
    c_33_16_0_False_shift when others;
  -- node of type 'output' in stage 9 with id 34 and associated fundamentals [[229], [136], [250]]
  c_34_resize <= c_33;
  c_34 <= shift_left(c_34_resize, 0);
  -- node of type 'mux' in stage 9 with id 35 and associated fundamentals [[137], [37], [206]]
  c_35_4_0_False_resize <= c_4;
  c_35_4_0_False_shift <= shift_left(c_35_4_0_False_resize, 0);
  c_35_16_0_False_resize <= c_16;
  c_35_16_0_False_shift <= shift_left(c_35_16_0_False_resize, 0);
  with config_select_9 select c_35_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_35_sel select c_35 <=
    c_35_4_0_False_shift when "0",
    c_35_16_0_False_shift when others;
  -- node of type 'output' in stage 9 with id 36 and associated fundamentals [[137], [37], [206]]
  c_36_resize <= c_35;
  c_36 <= shift_left(c_36_resize, 0);
  -- node of type 'output' in stage 11 with id 37 and associated fundamentals [[152], [233], [175]]
  c_37_resize <= c_29;
  c_37 <= shift_left(c_37_resize, 0);
  -- node of type 'output' in stage 8 with id 38 and associated fundamentals [[166], [174], [134]]
  c_38_resize <= resize(c_13, 24);
  c_38 <= -shift_left(c_38_resize, 1);
  -- node of type 'output' in stage 10 with id 39 and associated fundamentals [[90], [212], [86]]
  c_39_resize <= c_27;
  c_39 <= shift_left(c_39_resize, 0);
  -- node of type 'mux' in stage 9 with id 40 and associated fundamentals [[27], [48], [75]]
  c_40_18_0_False_resize <= c_18(22 downto 0);
  c_40_18_0_False_shift <= shift_left(c_40_18_0_False_resize, 0);
  c_40_2_4_False_resize <= resize(c_2, 23);
  c_40_2_4_False_shift <= shift_left(c_40_2_4_False_resize, 4);
  c_40_7_0_False_resize <= c_7(22 downto 0);
  c_40_7_0_False_shift <= shift_left(c_40_7_0_False_resize, 0);
  with config_select_9 select c_40_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_40_sel select c_40 <=
    c_40_18_0_False_shift when "00",
    c_40_2_4_False_shift when "01",
    c_40_7_0_False_shift when others;
  -- node of type 'output' in stage 9 with id 41 and associated fundamentals [[54], [96], [150]]
  c_41_resize <= resize(c_40, 24);
  c_41 <= shift_left(c_41_resize, 1);
  -- node of type 'mux' in stage 5 with id 42 and associated fundamentals [[66], [88], [50]]
  c_42_10_1_False_resize <= c_10;
  c_42_10_1_False_shift <= shift_left(c_42_10_1_False_resize, 1);
  c_42_10_0_False_resize <= c_10;
  c_42_10_0_False_shift <= shift_left(c_42_10_0_False_resize, 0);
  with config_select_5 select c_42_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_42_sel select c_42 <=
    c_42_10_1_False_shift when "0",
    c_42_10_0_False_shift when others;
  -- node of type 'output' in stage 5 with id 43 and associated fundamentals [[132], [176], [100]]
  c_43_resize <= resize(c_42, 24);
  c_43 <= shift_left(c_43_resize, 1);
  -- node of type 'mux' in stage 11 with id 44 and associated fundamentals [[-151], [-45], [-178]]
  c_44_21_0_False_resize <= c_21;
  c_44_21_0_False_shift <= shift_left(c_44_21_0_False_resize, 0);
  c_44_4_0_False_resize <= c_4;
  c_44_4_0_False_shift <= shift_left(c_44_4_0_False_resize, 0);
  with config_select_11 select c_44_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_44_sel select c_44 <=
    c_44_21_0_False_shift when "0",
    c_44_4_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 45 and associated fundamentals [[151], [45], [178]]
  c_45_resize <= c_44;
  c_45 <= -shift_left(c_45_resize, 0);
end architecture;
