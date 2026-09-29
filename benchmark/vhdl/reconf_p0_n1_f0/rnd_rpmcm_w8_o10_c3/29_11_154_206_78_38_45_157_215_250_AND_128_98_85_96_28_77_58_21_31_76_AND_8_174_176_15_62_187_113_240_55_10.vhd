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
    y_4: out std_logic_vector(22 downto 0);
    y_5: out std_logic_vector(23 downto 0);
    y_6: out std_logic_vector(22 downto 0);
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
  signal c_3: signed(20 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(20 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(19 downto 0);
  signal c_4_0_1_False_resize: signed(19 downto 0);
  signal c_4_0_1_False_shift: signed(19 downto 0);
  signal c_4_3_0_False_resize: signed(19 downto 0);
  signal c_4_3_0_False_shift: signed(19 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_5_3_1_False_resize: signed(21 downto 0);
  signal c_5_3_1_False_shift: signed(21 downto 0);
  signal c_5_3_0_False_resize: signed(21 downto 0);
  signal c_5_3_0_False_shift: signed(21 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_i0_resize: signed(22 downto 0);
  signal c_6_i1_resize: signed(22 downto 0);
  signal c_6_i0_shift: signed(22 downto 0);
  signal c_6_i1_shift: signed(22 downto 0);
  signal c_6_arith: signed(22 downto 0);
  signal c_6_oshift: signed(22 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(22 downto 0);
  signal c_7_6_1_False_resize: signed(22 downto 0);
  signal c_7_6_1_False_shift: signed(22 downto 0);
  signal c_7_3_0_False_resize: signed(22 downto 0);
  signal c_7_3_0_False_shift: signed(22 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(21 downto 0);
  signal c_8_i0_resize: signed(21 downto 0);
  signal c_8_i1_resize: signed(21 downto 0);
  signal c_8_i0_shift: signed(21 downto 0);
  signal c_8_i1_shift: signed(21 downto 0);
  signal c_8_arith: signed(21 downto 0);
  signal c_8_oshift: signed(21 downto 0);
  signal c_9: signed(19 downto 0);
  signal c_9_0_0_False_resize: signed(19 downto 0);
  signal c_9_0_0_False_shift: signed(19 downto 0);
  signal c_9_0_4_False_resize: signed(19 downto 0);
  signal c_9_0_4_False_shift: signed(19 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(21 downto 0);
  signal c_10_i0_resize: signed(21 downto 0);
  signal c_10_i1_resize: signed(21 downto 0);
  signal c_10_i0_shift: signed(21 downto 0);
  signal c_10_i1_shift: signed(21 downto 0);
  signal c_10_arith: signed(21 downto 0);
  signal c_10_oshift: signed(21 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(20 downto 0);
  signal c_11_3_1_False_resize: signed(20 downto 0);
  signal c_11_3_1_False_shift: signed(20 downto 0);
  signal c_11_3_0_False_resize: signed(20 downto 0);
  signal c_11_3_0_False_shift: signed(20 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_i0_resize: signed(22 downto 0);
  signal c_12_i1_resize: signed(22 downto 0);
  signal c_12_i0_shift: signed(22 downto 0);
  signal c_12_i1_shift: signed(22 downto 0);
  signal c_12_arith: signed(22 downto 0);
  signal c_12_oshift: signed(22 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(21 downto 0);
  signal c_13_8_0_False_resize: signed(21 downto 0);
  signal c_13_8_0_False_shift: signed(21 downto 0);
  signal c_13_2_1_False_resize: signed(21 downto 0);
  signal c_13_2_1_False_shift: signed(21 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(19 downto 0);
  signal c_14_0_0_False_resize: signed(19 downto 0);
  signal c_14_0_0_False_shift: signed(19 downto 0);
  signal c_14_0_4_False_resize: signed(19 downto 0);
  signal c_14_0_4_False_shift: signed(19 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_15_i0_resize: signed(22 downto 0);
  signal c_15_i1_resize: signed(22 downto 0);
  signal c_15_i0_shift: signed(22 downto 0);
  signal c_15_i1_shift: signed(22 downto 0);
  signal c_15_arith: signed(22 downto 0);
  signal c_15_oshift: signed(22 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(20 downto 0);
  signal c_16_2_2_False_resize: signed(20 downto 0);
  signal c_16_2_2_False_shift: signed(20 downto 0);
  signal c_16_3_0_False_resize: signed(20 downto 0);
  signal c_16_3_0_False_shift: signed(20 downto 0);
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
  signal c_18_6_0_False_resize: signed(22 downto 0);
  signal c_18_6_0_False_shift: signed(22 downto 0);
  signal c_18_0_2_False_resize: signed(22 downto 0);
  signal c_18_0_2_False_shift: signed(22 downto 0);
  signal c_18_3_5_False_resize: signed(22 downto 0);
  signal c_18_3_5_False_shift: signed(22 downto 0);
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
  signal c_20_2_0_False_resize: signed(18 downto 0);
  signal c_20_2_0_False_shift: signed(18 downto 0);
  signal c_20_0_3_False_resize: signed(18 downto 0);
  signal c_20_0_3_False_shift: signed(18 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_21_8_1_False_resize: signed(22 downto 0);
  signal c_21_8_1_False_shift: signed(22 downto 0);
  signal c_21_17_0_False_resize: signed(22 downto 0);
  signal c_21_17_0_False_shift: signed(22 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_i0_resize: signed(23 downto 0);
  signal c_22_i1_resize: signed(23 downto 0);
  signal c_22_i0_shift: signed(23 downto 0);
  signal c_22_i1_shift: signed(23 downto 0);
  signal c_22_arith: signed(23 downto 0);
  signal c_22_oshift: signed(23 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(22 downto 0);
  signal c_23_3_2_False_resize: signed(22 downto 0);
  signal c_23_3_2_False_shift: signed(22 downto 0);
  signal c_23_3_3_False_resize: signed(22 downto 0);
  signal c_23_3_3_False_shift: signed(22 downto 0);
  signal c_23_2_0_False_resize: signed(22 downto 0);
  signal c_23_2_0_False_shift: signed(22 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_i0_resize: signed(23 downto 0);
  signal c_24_i1_resize: signed(23 downto 0);
  signal c_24_i0_shift: signed(23 downto 0);
  signal c_24_i1_shift: signed(23 downto 0);
  signal c_24_arith: signed(23 downto 0);
  signal c_24_oshift: signed(23 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(22 downto 0);
  signal c_25_0_3_False_resize: signed(22 downto 0);
  signal c_25_0_3_False_shift: signed(22 downto 0);
  signal c_25_0_7_False_resize: signed(22 downto 0);
  signal c_25_0_7_False_shift: signed(22 downto 0);
  signal c_25_12_0_False_resize: signed(22 downto 0);
  signal c_25_12_0_False_shift: signed(22 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(22 downto 0);
  signal c_26_resize: signed(22 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_10_1_False_resize: signed(23 downto 0);
  signal c_27_10_1_False_shift: signed(23 downto 0);
  signal c_27_22_0_False_resize: signed(23 downto 0);
  signal c_27_22_0_False_shift: signed(23 downto 0);
  signal c_27_3_0_False_resize: signed(23 downto 0);
  signal c_27_3_0_False_shift: signed(23 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_resize: signed(23 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_6_1_False_resize: signed(23 downto 0);
  signal c_29_6_1_False_shift: signed(23 downto 0);
  signal c_29_12_0_False_resize: signed(23 downto 0);
  signal c_29_12_0_False_shift: signed(23 downto 0);
  signal c_29_6_3_False_resize: signed(23 downto 0);
  signal c_29_6_3_False_shift: signed(23 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_resize: signed(23 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_8_1_False_resize: signed(23 downto 0);
  signal c_31_8_1_False_shift: signed(23 downto 0);
  signal c_31_15_1_False_resize: signed(23 downto 0);
  signal c_31_15_1_False_shift: signed(23 downto 0);
  signal c_31_10_0_False_resize: signed(23 downto 0);
  signal c_31_10_0_False_shift: signed(23 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_32_resize: signed(23 downto 0);
  signal c_33: signed(21 downto 0);
  signal c_33_8_0_False_resize: signed(21 downto 0);
  signal c_33_8_0_False_shift: signed(21 downto 0);
  signal c_33_24_0_False_resize: signed(21 downto 0);
  signal c_33_24_0_False_shift: signed(21 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(22 downto 0);
  signal c_34_resize: signed(22 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_19_0_False_resize: signed(23 downto 0);
  signal c_35_19_0_False_shift: signed(23 downto 0);
  signal c_35_10_0_False_resize: signed(23 downto 0);
  signal c_35_10_0_False_shift: signed(23 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_resize: signed(23 downto 0);
  signal c_37: signed(22 downto 0);
  signal c_37_17_0_False_resize: signed(22 downto 0);
  signal c_37_17_0_False_shift: signed(22 downto 0);
  signal c_37_15_0_False_resize: signed(22 downto 0);
  signal c_37_15_0_False_shift: signed(22 downto 0);
  signal c_37_sel: std_logic_vector(0 downto 0);
  signal c_38: signed(22 downto 0);
  signal c_38_resize: signed(22 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_22_0_False_resize: signed(23 downto 0);
  signal c_39_22_0_False_shift: signed(23 downto 0);
  signal c_39_10_4_False_resize: signed(23 downto 0);
  signal c_39_10_4_False_shift: signed(23 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_resize: signed(23 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_24_0_False_resize: signed(23 downto 0);
  signal c_41_24_0_False_shift: signed(23 downto 0);
  signal c_41_2_0_False_resize: signed(23 downto 0);
  signal c_41_2_0_False_shift: signed(23 downto 0);
  signal c_41_sel: std_logic_vector(0 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_resize: signed(23 downto 0);
  signal c_43: signed(22 downto 0);
  signal c_43_12_0_False_resize: signed(22 downto 0);
  signal c_43_12_0_False_shift: signed(22 downto 0);
  signal c_43_6_0_False_resize: signed(22 downto 0);
  signal c_43_6_0_False_shift: signed(22 downto 0);
  signal c_43_19_0_False_resize: signed(22 downto 0);
  signal c_43_19_0_False_shift: signed(22 downto 0);
  signal c_43_sel: std_logic_vector(1 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_resize: signed(23 downto 0);
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
  -- output node 8 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_42);
    end if;
  end process;
  -- output node 9 with id 44
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_44);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [4], [1]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "0",
    c_1_0_2_False_shift when others;
  -- node of type 'sub' in stage 2 with id 2 and associated fundamentals [[7], [31], [7]]
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
      w_o => 21,
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
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(20 downto 0);
  -- node of type 'add_sub' in stage 3 with id 3 and associated fundamentals [[11], [27], [3]]
  with config_select_3 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 21,
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
  -- node of type 'mux' in stage 4 with id 4 and associated fundamentals [[11], [2], [2]]
  c_4_0_1_False_resize <= resize(c_0, 20);
  c_4_0_1_False_shift <= shift_left(c_4_0_1_False_resize, 1);
  c_4_3_0_False_resize <= c_3(19 downto 0);
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  with config_select_4 select c_4_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_0_1_False_shift when "0",
    c_4_3_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 5 and associated fundamentals [[11], [54], [6]]
  c_5_3_1_False_resize <= resize(c_3, 22);
  c_5_3_1_False_shift <= shift_left(c_5_3_1_False_resize, 1);
  c_5_3_0_False_resize <= resize(c_3, 22);
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  with config_select_4 select c_5_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_3_1_False_shift when "0",
    c_5_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 6 and associated fundamentals [[77], [-38], [22]]
  with config_select_5 select c_6_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 22,
      w_o => 23,
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
      sub_i => c_6_sub_sel,
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(22 downto 0);
  -- node of type 'mux' in stage 6 with id 7 and associated fundamentals [[11], [-76], [3]]
  c_7_6_1_False_resize <= c_6;
  c_7_6_1_False_shift <= shift_left(c_7_6_1_False_resize, 1);
  c_7_3_0_False_resize <= resize(c_3, 23);
  c_7_3_0_False_shift <= shift_left(c_7_3_0_False_resize, 0);
  with config_select_6 select c_7_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_6_1_False_shift when "0",
    c_7_3_0_False_shift when others;
  -- node of type 'add' in stage 7 with id 8 and associated fundamentals [[39], [48], [31]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
      w_o => 22,
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
      x_i => c_7,
      y_i => c_2,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(21 downto 0);
  -- node of type 'mux' in stage 1 with id 9 and associated fundamentals [[1], [1], [16]]
  c_9_0_0_False_resize <= resize(c_0, 20);
  c_9_0_0_False_shift <= shift_left(c_9_0_0_False_resize, 0);
  c_9_0_4_False_resize <= resize(c_0, 20);
  c_9_0_4_False_shift <= shift_left(c_9_0_4_False_resize, 4);
  with config_select_1 select c_9_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_0_0_False_shift when "0",
    c_9_0_4_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 10 and associated fundamentals [[38], [49], [15]]
  with config_select_8 select c_10_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
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
      sub_i => c_10_sub_sel,
      x_i => c_8,
      y_i => c_9,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(21 downto 0);
  -- node of type 'mux' in stage 4 with id 11 and associated fundamentals [[11], [27], [6]]
  c_11_3_1_False_resize <= c_3;
  c_11_3_1_False_shift <= shift_left(c_11_3_1_False_resize, 1);
  c_11_3_0_False_resize <= c_3;
  c_11_3_0_False_shift <= shift_left(c_11_3_0_False_resize, 0);
  with config_select_4 select c_11_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_3_1_False_shift when "0",
    c_11_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 12 and associated fundamentals [[29], [85], [-5]]
  with config_select_5 select c_12_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 21,
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
      sub_i => c_12_sub_sel,
      x_i => c_2,
      y_i => c_11,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(22 downto 0);
  -- node of type 'mux' in stage 8 with id 13 and associated fundamentals [[39], [62], [31]]
  c_13_8_0_False_resize <= c_8;
  c_13_8_0_False_shift <= shift_left(c_13_8_0_False_resize, 0);
  c_13_2_1_False_resize <= resize(c_2, 22);
  c_13_2_1_False_shift <= shift_left(c_13_2_1_False_resize, 1);
  with config_select_8 select c_13_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_8_0_False_shift when "0",
    c_13_2_1_False_shift when others;
  -- node of type 'mux' in stage 1 with id 14 and associated fundamentals [[16], [1], [1]]
  c_14_0_0_False_resize <= resize(c_0, 20);
  c_14_0_0_False_shift <= shift_left(c_14_0_0_False_resize, 0);
  c_14_0_4_False_resize <= resize(c_0, 20);
  c_14_0_4_False_shift <= shift_left(c_14_0_4_False_resize, 4);
  with config_select_1 select c_14_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_0_0_False_shift when "0",
    c_14_0_4_False_shift when others;
  -- node of type 'add_sub' in stage 9 with id 15 and associated fundamentals [[103], [58], [35]]
  with config_select_9 select c_15_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
      w_o => 23,
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
      sub_i => c_15_sub_sel,
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(22 downto 0);
  -- node of type 'mux' in stage 4 with id 16 and associated fundamentals [[11], [27], [28]]
  c_16_2_2_False_resize <= c_2;
  c_16_2_2_False_shift <= shift_left(c_16_2_2_False_resize, 2);
  c_16_3_0_False_resize <= c_3;
  c_16_3_0_False_shift <= shift_left(c_16_3_0_False_resize, 0);
  with config_select_4 select c_16_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_2_2_False_shift when "0",
    c_16_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 17 and associated fundamentals [[45], [107], [113]]
  with config_select_5 select c_17_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 16,
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
      sub_i => c_17_sub_sel,
      x_i => c_16,
      y_i => c_0,
      z_o => c_17_oshift
    );
  c_17 <= c_17_oshift(22 downto 0);
  -- node of type 'mux' in stage 6 with id 18 and associated fundamentals [[77], [4], [96]]
  c_18_6_0_False_resize <= c_6;
  c_18_6_0_False_shift <= shift_left(c_18_6_0_False_resize, 0);
  c_18_0_2_False_resize <= resize(c_0, 23);
  c_18_0_2_False_shift <= shift_left(c_18_0_2_False_resize, 2);
  c_18_3_5_False_resize <= resize(c_3, 23);
  c_18_3_5_False_shift <= shift_left(c_18_3_5_False_resize, 5);
  with config_select_6 select c_18_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_18_sel select c_18 <=
    c_18_6_0_False_shift when "00",
    c_18_0_2_False_shift when "01",
    c_18_3_5_False_shift when others;
  -- node of type 'add_sub' in stage 7 with id 19 and associated fundamentals [[-125], [77], [187]]
  with config_select_7 select c_19_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_19_sub_sel,
      x_i => c_12,
      y_i => c_18,
      z_o => c_19_oshift
    );
  c_19 <= c_19_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 20 and associated fundamentals [[7], [8], [7]]
  c_20_2_0_False_resize <= c_2(18 downto 0);
  c_20_2_0_False_shift <= shift_left(c_20_2_0_False_resize, 0);
  c_20_0_3_False_resize <= resize(c_0, 19);
  c_20_0_3_False_shift <= shift_left(c_20_0_3_False_resize, 3);
  with config_select_3 select c_20_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_20_sel select c_20 <=
    c_20_2_0_False_shift when "0",
    c_20_0_3_False_shift when others;
  -- node of type 'mux' in stage 8 with id 21 and associated fundamentals [[45], [107], [62]]
  c_21_8_1_False_resize <= resize(c_8, 23);
  c_21_8_1_False_shift <= shift_left(c_21_8_1_False_resize, 1);
  c_21_17_0_False_resize <= c_17;
  c_21_17_0_False_shift <= shift_left(c_21_17_0_False_resize, 0);
  with config_select_8 select c_21_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_21_sel select c_21 <=
    c_21_8_1_False_shift when "0",
    c_21_17_0_False_shift when others;
  -- node of type 'add_sub' in stage 9 with id 22 and associated fundamentals [[157], [21], [174]]
  with config_select_9 select c_22_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 23,
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
      sub_i => c_22_sub_sel,
      x_i => c_20,
      y_i => c_21,
      z_o => c_22_oshift
    );
  c_22 <= c_22_oshift(23 downto 0);
  -- node of type 'mux' in stage 4 with id 23 and associated fundamentals [[88], [31], [12]]
  c_23_3_2_False_resize <= resize(c_3, 23);
  c_23_3_2_False_shift <= shift_left(c_23_3_2_False_resize, 2);
  c_23_3_3_False_resize <= resize(c_3, 23);
  c_23_3_3_False_shift <= shift_left(c_23_3_3_False_resize, 3);
  c_23_2_0_False_resize <= resize(c_2, 23);
  c_23_2_0_False_shift <= shift_left(c_23_2_0_False_resize, 0);
  with config_select_4 select c_23_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_23_sel select c_23 <=
    c_23_3_2_False_shift when "00",
    c_23_3_3_False_shift when "01",
    c_23_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 24 and associated fundamentals [[215], [14], [55]]
  with config_select_8 select c_24_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_24: entity work.adder_node
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
      sub_i => c_24_sub_sel,
      x_i => c_23,
      y_i => c_8,
      z_o => c_24_oshift
    );
  c_24 <= c_24_oshift(23 downto 0);
  -- node of type 'mux' in stage 6 with id 25 and associated fundamentals [[29], [128], [8]]
  c_25_0_3_False_resize <= resize(c_0, 23);
  c_25_0_3_False_shift <= shift_left(c_25_0_3_False_resize, 3);
  c_25_0_7_False_resize <= resize(c_0, 23);
  c_25_0_7_False_shift <= shift_left(c_25_0_7_False_resize, 7);
  c_25_12_0_False_resize <= c_12;
  c_25_12_0_False_shift <= shift_left(c_25_12_0_False_resize, 0);
  with config_select_6 select c_25_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_25_sel select c_25 <=
    c_25_0_3_False_shift when "00",
    c_25_0_7_False_shift when "01",
    c_25_12_0_False_shift when others;
  -- node of type 'output' in stage 6 with id 26 and associated fundamentals [[29], [128], [8]]
  c_26_resize <= c_25;
  c_26 <= shift_left(c_26_resize, 0);
  -- node of type 'mux' in stage 10 with id 27 and associated fundamentals [[11], [98], [174]]
  c_27_10_1_False_resize <= resize(c_10, 24);
  c_27_10_1_False_shift <= shift_left(c_27_10_1_False_resize, 1);
  c_27_22_0_False_resize <= c_22;
  c_27_22_0_False_shift <= shift_left(c_27_22_0_False_resize, 0);
  c_27_3_0_False_resize <= resize(c_3, 24);
  c_27_3_0_False_shift <= shift_left(c_27_3_0_False_resize, 0);
  with config_select_10 select c_27_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_27_sel select c_27 <=
    c_27_10_1_False_shift when "00",
    c_27_22_0_False_shift when "01",
    c_27_3_0_False_shift when others;
  -- node of type 'output' in stage 10 with id 28 and associated fundamentals [[11], [98], [174]]
  c_28_resize <= c_27;
  c_28 <= shift_left(c_28_resize, 0);
  -- node of type 'mux' in stage 6 with id 29 and associated fundamentals [[154], [85], [176]]
  c_29_6_1_False_resize <= resize(c_6, 24);
  c_29_6_1_False_shift <= shift_left(c_29_6_1_False_resize, 1);
  c_29_12_0_False_resize <= resize(c_12, 24);
  c_29_12_0_False_shift <= shift_left(c_29_12_0_False_resize, 0);
  c_29_6_3_False_resize <= resize(c_6, 24);
  c_29_6_3_False_shift <= shift_left(c_29_6_3_False_resize, 3);
  with config_select_6 select c_29_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_29_sel select c_29 <=
    c_29_6_1_False_shift when "00",
    c_29_12_0_False_shift when "01",
    c_29_6_3_False_shift when others;
  -- node of type 'output' in stage 6 with id 30 and associated fundamentals [[154], [85], [176]]
  c_30_resize <= c_29;
  c_30 <= shift_left(c_30_resize, 0);
  -- node of type 'mux' in stage 10 with id 31 and associated fundamentals [[206], [96], [15]]
  c_31_8_1_False_resize <= resize(c_8, 24);
  c_31_8_1_False_shift <= shift_left(c_31_8_1_False_resize, 1);
  c_31_15_1_False_resize <= resize(c_15, 24);
  c_31_15_1_False_shift <= shift_left(c_31_15_1_False_resize, 1);
  c_31_10_0_False_resize <= resize(c_10, 24);
  c_31_10_0_False_shift <= shift_left(c_31_10_0_False_resize, 0);
  with config_select_10 select c_31_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_31_sel select c_31 <=
    c_31_8_1_False_shift when "00",
    c_31_15_1_False_shift when "01",
    c_31_10_0_False_shift when others;
  -- node of type 'output' in stage 10 with id 32 and associated fundamentals [[206], [96], [15]]
  c_32_resize <= c_31;
  c_32 <= shift_left(c_32_resize, 0);
  -- node of type 'mux' in stage 9 with id 33 and associated fundamentals [[39], [14], [31]]
  c_33_8_0_False_resize <= c_8;
  c_33_8_0_False_shift <= shift_left(c_33_8_0_False_resize, 0);
  c_33_24_0_False_resize <= c_24(21 downto 0);
  c_33_24_0_False_shift <= shift_left(c_33_24_0_False_resize, 0);
  with config_select_9 select c_33_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_33_sel select c_33 <=
    c_33_8_0_False_shift when "0",
    c_33_24_0_False_shift when others;
  -- node of type 'output' in stage 9 with id 34 and associated fundamentals [[78], [28], [62]]
  c_34_resize <= resize(c_33, 23);
  c_34 <= shift_left(c_34_resize, 1);
  -- node of type 'mux' in stage 9 with id 35 and associated fundamentals [[38], [77], [187]]
  c_35_19_0_False_resize <= c_19;
  c_35_19_0_False_shift <= shift_left(c_35_19_0_False_resize, 0);
  c_35_10_0_False_resize <= resize(c_10, 24);
  c_35_10_0_False_shift <= shift_left(c_35_10_0_False_resize, 0);
  with config_select_9 select c_35_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  with c_35_sel select c_35 <=
    c_35_19_0_False_shift when "0",
    c_35_10_0_False_shift when others;
  -- node of type 'output' in stage 9 with id 36 and associated fundamentals [[38], [77], [187]]
  c_36_resize <= c_35;
  c_36 <= shift_left(c_36_resize, 0);
  -- node of type 'mux' in stage 10 with id 37 and associated fundamentals [[45], [58], [113]]
  c_37_17_0_False_resize <= c_17;
  c_37_17_0_False_shift <= shift_left(c_37_17_0_False_resize, 0);
  c_37_15_0_False_resize <= c_15;
  c_37_15_0_False_shift <= shift_left(c_37_15_0_False_resize, 0);
  with config_select_10 select c_37_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_37_sel select c_37 <=
    c_37_17_0_False_shift when "0",
    c_37_15_0_False_shift when others;
  -- node of type 'output' in stage 10 with id 38 and associated fundamentals [[45], [58], [113]]
  c_38_resize <= c_37;
  c_38 <= shift_left(c_38_resize, 0);
  -- node of type 'mux' in stage 10 with id 39 and associated fundamentals [[157], [21], [240]]
  c_39_22_0_False_resize <= c_22;
  c_39_22_0_False_shift <= shift_left(c_39_22_0_False_resize, 0);
  c_39_10_4_False_resize <= resize(c_10, 24);
  c_39_10_4_False_shift <= shift_left(c_39_10_4_False_resize, 4);
  with config_select_10 select c_39_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_39_sel select c_39 <=
    c_39_22_0_False_shift when "0",
    c_39_10_4_False_shift when others;
  -- node of type 'output' in stage 10 with id 40 and associated fundamentals [[157], [21], [240]]
  c_40_resize <= c_39;
  c_40 <= shift_left(c_40_resize, 0);
  -- node of type 'mux' in stage 9 with id 41 and associated fundamentals [[215], [31], [55]]
  c_41_24_0_False_resize <= c_24;
  c_41_24_0_False_shift <= shift_left(c_41_24_0_False_resize, 0);
  c_41_2_0_False_resize <= resize(c_2, 24);
  c_41_2_0_False_shift <= shift_left(c_41_2_0_False_resize, 0);
  with config_select_9 select c_41_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_41_sel select c_41 <=
    c_41_24_0_False_shift when "0",
    c_41_2_0_False_shift when others;
  -- node of type 'output' in stage 9 with id 42 and associated fundamentals [[215], [31], [55]]
  c_42_resize <= c_41;
  c_42 <= shift_left(c_42_resize, 0);
  -- node of type 'mux' in stage 8 with id 43 and associated fundamentals [[-125], [-38], [-5]]
  c_43_12_0_False_resize <= c_12;
  c_43_12_0_False_shift <= shift_left(c_43_12_0_False_resize, 0);
  c_43_6_0_False_resize <= c_6;
  c_43_6_0_False_shift <= shift_left(c_43_6_0_False_resize, 0);
  c_43_19_0_False_resize <= c_19(22 downto 0);
  c_43_19_0_False_shift <= shift_left(c_43_19_0_False_resize, 0);
  with config_select_8 select c_43_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_43_sel select c_43 <=
    c_43_12_0_False_shift when "00",
    c_43_6_0_False_shift when "01",
    c_43_19_0_False_shift when others;
  -- node of type 'output' in stage 8 with id 44 and associated fundamentals [[250], [76], [10]]
  c_44_resize <= resize(c_43, 24);
  c_44 <= -shift_left(c_44_resize, 1);
end architecture;
