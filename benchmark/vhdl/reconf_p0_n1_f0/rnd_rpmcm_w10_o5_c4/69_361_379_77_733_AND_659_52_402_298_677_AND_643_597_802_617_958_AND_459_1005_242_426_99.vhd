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
  signal c_2: signed(18 downto 0);
  signal c_2_0_0_False_resize: signed(18 downto 0);
  signal c_2_0_0_False_shift: signed(18 downto 0);
  signal c_2_0_3_False_resize: signed(18 downto 0);
  signal c_2_0_3_False_shift: signed(18 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(19 downto 0);
  signal c_3_i1_resize: signed(19 downto 0);
  signal c_3_i0_shift: signed(19 downto 0);
  signal c_3_i1_shift: signed(19 downto 0);
  signal c_3_arith: signed(19 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(21 downto 0);
  signal c_4_0_0_False_resize: signed(21 downto 0);
  signal c_4_0_0_False_shift: signed(21 downto 0);
  signal c_4_3_2_False_resize: signed(21 downto 0);
  signal c_4_3_2_False_shift: signed(21 downto 0);
  signal c_4_3_0_False_resize: signed(21 downto 0);
  signal c_4_3_0_False_shift: signed(21 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_3_4_False_resize: signed(22 downto 0);
  signal c_5_3_4_False_shift: signed(22 downto 0);
  signal c_5_3_0_False_resize: signed(22 downto 0);
  signal c_5_3_0_False_shift: signed(22 downto 0);
  signal c_5_0_5_False_resize: signed(22 downto 0);
  signal c_5_0_5_False_shift: signed(22 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_i0_resize: signed(22 downto 0);
  signal c_6_i1_resize: signed(22 downto 0);
  signal c_6_i0_shift: signed(22 downto 0);
  signal c_6_i1_shift: signed(22 downto 0);
  signal c_6_arith: signed(22 downto 0);
  signal c_6_oshift: signed(22 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(23 downto 0);
  signal c_7_6_1_False_resize: signed(23 downto 0);
  signal c_7_6_1_False_shift: signed(23 downto 0);
  signal c_7_3_5_False_resize: signed(23 downto 0);
  signal c_7_3_5_False_shift: signed(23 downto 0);
  signal c_7_0_5_False_resize: signed(23 downto 0);
  signal c_7_0_5_False_shift: signed(23 downto 0);
  signal c_7_6_0_False_resize: signed(23 downto 0);
  signal c_7_6_0_False_shift: signed(23 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(19 downto 0);
  signal c_8_3_1_False_resize: signed(19 downto 0);
  signal c_8_3_1_False_shift: signed(19 downto 0);
  signal c_8_0_0_False_resize: signed(19 downto 0);
  signal c_8_0_0_False_shift: signed(19 downto 0);
  signal c_8_0_2_False_resize: signed(19 downto 0);
  signal c_8_0_2_False_shift: signed(19 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(21 downto 0);
  signal c_10_3_0_False_resize: signed(21 downto 0);
  signal c_10_3_0_False_shift: signed(21 downto 0);
  signal c_10_6_0_False_resize: signed(21 downto 0);
  signal c_10_6_0_False_shift: signed(21 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_3_4_False_resize: signed(23 downto 0);
  signal c_11_3_4_False_shift: signed(23 downto 0);
  signal c_11_9_0_False_resize: signed(23 downto 0);
  signal c_11_9_0_False_shift: signed(23 downto 0);
  signal c_11_0_3_False_resize: signed(23 downto 0);
  signal c_11_0_3_False_shift: signed(23 downto 0);
  signal c_11_6_0_False_resize: signed(23 downto 0);
  signal c_11_6_0_False_shift: signed(23 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(25 downto 0);
  signal c_12_i0_resize: signed(25 downto 0);
  signal c_12_i1_resize: signed(25 downto 0);
  signal c_12_i0_shift: signed(25 downto 0);
  signal c_12_i1_shift: signed(25 downto 0);
  signal c_12_arith: signed(25 downto 0);
  signal c_12_oshift: signed(25 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(25 downto 0);
  signal c_13_12_0_False_resize: signed(25 downto 0);
  signal c_13_12_0_False_shift: signed(25 downto 0);
  signal c_13_6_3_False_resize: signed(25 downto 0);
  signal c_13_6_3_False_shift: signed(25 downto 0);
  signal c_13_6_1_False_resize: signed(25 downto 0);
  signal c_13_6_1_False_shift: signed(25 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(24 downto 0);
  signal c_14_3_2_False_resize: signed(24 downto 0);
  signal c_14_3_2_False_shift: signed(24 downto 0);
  signal c_14_12_1_False_resize: signed(24 downto 0);
  signal c_14_12_1_False_shift: signed(24 downto 0);
  signal c_14_0_4_False_resize: signed(24 downto 0);
  signal c_14_0_4_False_shift: signed(24 downto 0);
  signal c_14_0_0_False_resize: signed(24 downto 0);
  signal c_14_0_0_False_shift: signed(24 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_i0_resize: signed(25 downto 0);
  signal c_15_i1_resize: signed(25 downto 0);
  signal c_15_i0_shift: signed(25 downto 0);
  signal c_15_i1_shift: signed(25 downto 0);
  signal c_15_arith: signed(25 downto 0);
  signal c_15_oshift: signed(25 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(18 downto 0);
  signal c_16_0_0_False_resize: signed(18 downto 0);
  signal c_16_0_0_False_shift: signed(18 downto 0);
  signal c_16_0_3_False_resize: signed(18 downto 0);
  signal c_16_0_3_False_shift: signed(18 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(26 downto 0);
  signal c_17_12_0_False_resize: signed(26 downto 0);
  signal c_17_12_0_False_shift: signed(26 downto 0);
  signal c_17_15_1_False_resize: signed(26 downto 0);
  signal c_17_15_1_False_shift: signed(26 downto 0);
  signal c_17_12_2_False_resize: signed(26 downto 0);
  signal c_17_12_2_False_shift: signed(26 downto 0);
  signal c_17_9_2_False_resize: signed(26 downto 0);
  signal c_17_9_2_False_shift: signed(26 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(26 downto 0);
  signal c_18_i0_resize: signed(26 downto 0);
  signal c_18_i1_resize: signed(26 downto 0);
  signal c_18_i0_shift: signed(26 downto 0);
  signal c_18_i1_shift: signed(26 downto 0);
  signal c_18_arith: signed(26 downto 0);
  signal c_18_oshift: signed(26 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(26 downto 0);
  signal c_19_18_0_False_resize: signed(26 downto 0);
  signal c_19_18_0_False_shift: signed(26 downto 0);
  signal c_19_12_1_False_resize: signed(26 downto 0);
  signal c_19_12_1_False_shift: signed(26 downto 0);
  signal c_19_15_0_False_resize: signed(26 downto 0);
  signal c_19_15_0_False_shift: signed(26 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_9_1_False_resize: signed(25 downto 0);
  signal c_20_9_1_False_shift: signed(25 downto 0);
  signal c_20_0_10_False_resize: signed(25 downto 0);
  signal c_20_0_10_False_shift: signed(25 downto 0);
  signal c_20_3_0_False_resize: signed(25 downto 0);
  signal c_20_3_0_False_shift: signed(25 downto 0);
  signal c_20_6_3_False_resize: signed(25 downto 0);
  signal c_20_6_3_False_shift: signed(25 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_i0_resize: signed(25 downto 0);
  signal c_21_i1_resize: signed(25 downto 0);
  signal c_21_i0_shift: signed(25 downto 0);
  signal c_21_i1_shift: signed(25 downto 0);
  signal c_21_arith: signed(25 downto 0);
  signal c_21_oshift: signed(25 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(25 downto 0);
  signal c_22_21_0_False_resize: signed(25 downto 0);
  signal c_22_21_0_False_shift: signed(25 downto 0);
  signal c_22_3_7_False_resize: signed(25 downto 0);
  signal c_22_3_7_False_shift: signed(25 downto 0);
  signal c_22_6_0_False_resize: signed(25 downto 0);
  signal c_22_6_0_False_shift: signed(25 downto 0);
  signal c_22_6_1_False_resize: signed(25 downto 0);
  signal c_22_6_1_False_shift: signed(25 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_18_0_False_resize: signed(25 downto 0);
  signal c_23_18_0_False_shift: signed(25 downto 0);
  signal c_23_9_0_False_resize: signed(25 downto 0);
  signal c_23_9_0_False_shift: signed(25 downto 0);
  signal c_23_9_3_False_resize: signed(25 downto 0);
  signal c_23_9_3_False_shift: signed(25 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_i0_resize: signed(25 downto 0);
  signal c_24_i1_resize: signed(25 downto 0);
  signal c_24_i0_shift: signed(25 downto 0);
  signal c_24_i1_shift: signed(25 downto 0);
  signal c_24_arith: signed(25 downto 0);
  signal c_24_oshift: signed(25 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(25 downto 0);
  signal c_25_18_0_False_resize: signed(25 downto 0);
  signal c_25_18_0_False_shift: signed(25 downto 0);
  signal c_25_12_0_False_resize: signed(25 downto 0);
  signal c_25_12_0_False_shift: signed(25 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_resize: signed(25 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_15_0_False_resize: signed(25 downto 0);
  signal c_27_15_0_False_shift: signed(25 downto 0);
  signal c_27_9_1_False_resize: signed(25 downto 0);
  signal c_27_9_1_False_shift: signed(25 downto 0);
  signal c_27_24_0_False_resize: signed(25 downto 0);
  signal c_27_24_0_False_shift: signed(25 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_resize: signed(25 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_21_0_False_resize: signed(25 downto 0);
  signal c_29_21_0_False_shift: signed(25 downto 0);
  signal c_29_15_0_False_resize: signed(25 downto 0);
  signal c_29_15_0_False_shift: signed(25 downto 0);
  signal c_29_12_1_False_resize: signed(25 downto 0);
  signal c_29_12_1_False_shift: signed(25 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_resize: signed(25 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_12_0_False_resize: signed(25 downto 0);
  signal c_31_12_0_False_shift: signed(25 downto 0);
  signal c_31_21_0_False_resize: signed(25 downto 0);
  signal c_31_21_0_False_shift: signed(25 downto 0);
  signal c_31_21_1_False_resize: signed(25 downto 0);
  signal c_31_21_1_False_shift: signed(25 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_resize: signed(25 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_24_1_False_resize: signed(25 downto 0);
  signal c_33_24_1_False_shift: signed(25 downto 0);
  signal c_33_24_0_False_resize: signed(25 downto 0);
  signal c_33_24_0_False_shift: signed(25 downto 0);
  signal c_33_9_0_False_resize: signed(25 downto 0);
  signal c_33_9_0_False_shift: signed(25 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_34_resize: signed(25 downto 0);
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
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [4], [4], [1]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "0" when "11",
    "0" when "00",
    "1" when "10",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "0",
    c_1_0_2_False_shift when others;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[8], [1], [1], [8]]
  c_2_0_0_False_resize <= resize(c_0, 19);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_3_False_resize <= resize(c_0, 19);
  c_2_0_3_False_shift <= shift_left(c_2_0_3_False_resize, 3);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_0_0_False_shift when "0",
    c_2_0_3_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[9], [3], [5], [-7]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 19,
      w_o => 20,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(19 downto 0);
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[36], [12], [5], [1]]
  c_4_0_0_False_resize <= resize(c_0, 22);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_3_2_False_resize <= resize(c_3, 22);
  c_4_3_2_False_shift <= shift_left(c_4_3_2_False_resize, 2);
  c_4_3_0_False_resize <= resize(c_3, 22);
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  with config_select_3 select c_4_sel <= 
    "00" when "11",
    "01" when "00",
    "01" when "01",
    "10" when others;
  with c_4_sel select c_4 <=
    c_4_0_0_False_shift when "00",
    c_4_3_2_False_shift when "01",
    c_4_3_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[9], [3], [32], [-112]]
  c_5_3_4_False_resize <= resize(c_3, 23);
  c_5_3_4_False_shift <= shift_left(c_5_3_4_False_resize, 4);
  c_5_3_0_False_resize <= resize(c_3, 23);
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  c_5_0_5_False_resize <= resize(c_0, 23);
  c_5_0_5_False_shift <= shift_left(c_5_0_5_False_resize, 5);
  with config_select_3 select c_5_sel <= 
    "00" when "11",
    "01" when "00",
    "01" when "01",
    "10" when others;
  with c_5_sel select c_5 <=
    c_5_3_4_False_shift when "00",
    c_5_3_0_False_shift when "01",
    c_5_0_5_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 6 and associated fundamentals [[45], [9], [-27], [113]]
  with config_select_4 select c_6_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
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
      sub_i => c_6_sub_sel,
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(22 downto 0);
  -- node of type 'mux' in stage 5 with id 7 and associated fundamentals [[90], [32], [160], [113]]
  c_7_6_1_False_resize <= resize(c_6, 24);
  c_7_6_1_False_shift <= shift_left(c_7_6_1_False_resize, 1);
  c_7_3_5_False_resize <= resize(c_3, 24);
  c_7_3_5_False_shift <= shift_left(c_7_3_5_False_resize, 5);
  c_7_0_5_False_resize <= resize(c_0, 24);
  c_7_0_5_False_shift <= shift_left(c_7_0_5_False_resize, 5);
  c_7_6_0_False_resize <= resize(c_6, 24);
  c_7_6_0_False_shift <= shift_left(c_7_6_0_False_resize, 0);
  with config_select_5 select c_7_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "11" when others;
  with c_7_sel select c_7 <=
    c_7_6_1_False_shift when "00",
    c_7_3_5_False_shift when "01",
    c_7_0_5_False_shift when "10",
    c_7_6_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[4], [6], [1], [-14]]
  c_8_3_1_False_resize <= c_3;
  c_8_3_1_False_shift <= shift_left(c_8_3_1_False_resize, 1);
  c_8_0_0_False_resize <= resize(c_0, 20);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  c_8_0_2_False_resize <= resize(c_0, 20);
  c_8_0_2_False_shift <= shift_left(c_8_0_2_False_resize, 2);
  with config_select_3 select c_8_sel <= 
    "00" when "01",
    "00" when "11",
    "01" when "10",
    "10" when others;
  with c_8_sel select c_8 <=
    c_8_3_1_False_shift when "00",
    c_8_0_0_False_shift when "01",
    c_8_0_2_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 9 and associated fundamentals [[86], [26], [161], [99]]
  with config_select_6 select c_9_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 20,
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
      sub_i => c_9_sub_sel,
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(23 downto 0);
  -- node of type 'mux' in stage 5 with id 10 and associated fundamentals [[45], [9], [-27], [-7]]
  c_10_3_0_False_resize <= resize(c_3, 22);
  c_10_3_0_False_shift <= shift_left(c_10_3_0_False_resize, 0);
  c_10_6_0_False_resize <= c_6(21 downto 0);
  c_10_6_0_False_shift <= shift_left(c_10_6_0_False_resize, 0);
  with config_select_5 select c_10_sel <= 
    "0" when "11",
    "1" when "00",
    "1" when "01",
    "1" when others;
  with c_10_sel select c_10 <=
    c_10_3_0_False_shift when "0",
    c_10_6_0_False_shift when others;
  -- node of type 'mux' in stage 7 with id 11 and associated fundamentals [[8], [48], [161], [113]]
  c_11_3_4_False_resize <= resize(c_3, 24);
  c_11_3_4_False_shift <= shift_left(c_11_3_4_False_resize, 4);
  c_11_9_0_False_resize <= c_9;
  c_11_9_0_False_shift <= shift_left(c_11_9_0_False_resize, 0);
  c_11_0_3_False_resize <= resize(c_0, 24);
  c_11_0_3_False_shift <= shift_left(c_11_0_3_False_resize, 3);
  c_11_6_0_False_resize <= resize(c_6, 24);
  c_11_6_0_False_shift <= shift_left(c_11_6_0_False_resize, 0);
  with config_select_7 select c_11_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  with c_11_sel select c_11 <=
    c_11_3_4_False_shift when "00",
    c_11_9_0_False_shift when "01",
    c_11_0_3_False_shift when "10",
    c_11_6_0_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 12 and associated fundamentals [[77], [201], [617], [-459]]
  with config_select_8 select c_12_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 24,
      w_o => 26,
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
      sub_i => c_12_sub_sel,
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(25 downto 0);
  -- node of type 'mux' in stage 9 with id 13 and associated fundamentals [[360], [72], [617], [226]]
  c_13_12_0_False_resize <= c_12;
  c_13_12_0_False_shift <= shift_left(c_13_12_0_False_resize, 0);
  c_13_6_3_False_resize <= resize(c_6, 26);
  c_13_6_3_False_shift <= shift_left(c_13_6_3_False_resize, 3);
  c_13_6_1_False_resize <= resize(c_6, 26);
  c_13_6_1_False_shift <= shift_left(c_13_6_1_False_resize, 1);
  with config_select_9 select c_13_sel <= 
    "00" when "10",
    "01" when "00",
    "01" when "01",
    "10" when others;
  with c_13_sel select c_13 <=
    c_13_12_0_False_shift when "00",
    c_13_6_3_False_shift when "01",
    c_13_6_1_False_shift when others;
  -- node of type 'mux' in stage 9 with id 14 and associated fundamentals [[1], [402], [20], [16]]
  c_14_3_2_False_resize <= resize(c_3, 25);
  c_14_3_2_False_shift <= shift_left(c_14_3_2_False_resize, 2);
  c_14_12_1_False_resize <= c_12(24 downto 0);
  c_14_12_1_False_shift <= shift_left(c_14_12_1_False_resize, 1);
  c_14_0_4_False_resize <= resize(c_0, 25);
  c_14_0_4_False_shift <= shift_left(c_14_0_4_False_resize, 4);
  c_14_0_0_False_resize <= resize(c_0, 25);
  c_14_0_0_False_shift <= shift_left(c_14_0_0_False_resize, 0);
  with config_select_9 select c_14_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  with c_14_sel select c_14 <=
    c_14_3_2_False_shift when "00",
    c_14_12_1_False_shift when "01",
    c_14_0_4_False_shift when "10",
    c_14_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 15 and associated fundamentals [[361], [-330], [597], [242]]
  with config_select_10 select c_15_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
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
      sub_i => c_15_sub_sel,
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(25 downto 0);
  -- node of type 'mux' in stage 1 with id 16 and associated fundamentals [[8], [1], [1], [1]]
  c_16_0_0_False_resize <= resize(c_0, 19);
  c_16_0_0_False_shift <= shift_left(c_16_0_0_False_resize, 0);
  c_16_0_3_False_resize <= resize(c_0, 19);
  c_16_0_3_False_shift <= shift_left(c_16_0_3_False_resize, 3);
  with config_select_1 select c_16_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "11",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_0_0_False_shift when "0",
    c_16_0_3_False_shift when others;
  -- node of type 'mux' in stage 11 with id 17 and associated fundamentals [[77], [-660], [644], [-1836]]
  c_17_12_0_False_resize <= resize(c_12, 27);
  c_17_12_0_False_shift <= shift_left(c_17_12_0_False_resize, 0);
  c_17_15_1_False_resize <= resize(c_15, 27);
  c_17_15_1_False_shift <= shift_left(c_17_15_1_False_resize, 1);
  c_17_12_2_False_resize <= resize(c_12, 27);
  c_17_12_2_False_shift <= shift_left(c_17_12_2_False_resize, 2);
  c_17_9_2_False_resize <= resize(c_9, 27);
  c_17_9_2_False_shift <= shift_left(c_17_9_2_False_resize, 2);
  with config_select_11 select c_17_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  with c_17_sel select c_17 <=
    c_17_12_0_False_shift when "00",
    c_17_15_1_False_shift when "01",
    c_17_12_2_False_shift when "10",
    c_17_9_2_False_shift when others;
  -- node of type 'add_sub' in stage 12 with id 18 and associated fundamentals [[-69], [-659], [-643], [-1835]]
  with config_select_12 select c_18_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 27,
      w_o => 27,
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
  c_18 <= c_18_oshift(26 downto 0);
  -- node of type 'mux' in stage 13 with id 19 and associated fundamentals [[361], [402], [1234], [-1835]]
  c_19_18_0_False_resize <= c_18;
  c_19_18_0_False_shift <= shift_left(c_19_18_0_False_resize, 0);
  c_19_12_1_False_resize <= resize(c_12, 27);
  c_19_12_1_False_shift <= shift_left(c_19_12_1_False_resize, 1);
  c_19_15_0_False_resize <= resize(c_15, 27);
  c_19_15_0_False_shift <= shift_left(c_19_15_0_False_resize, 0);
  with config_select_13 select c_19_sel <= 
    "00" when "11",
    "01" when "01",
    "01" when "10",
    "10" when others;
  with c_19_sel select c_19 <=
    c_19_18_0_False_shift when "00",
    c_19_12_1_False_shift when "01",
    c_19_15_0_False_shift when others;
  -- node of type 'mux' in stage 7 with id 20 and associated fundamentals [[9], [52], [-216], [1024]]
  c_20_9_1_False_resize <= resize(c_9, 26);
  c_20_9_1_False_shift <= shift_left(c_20_9_1_False_resize, 1);
  c_20_0_10_False_resize <= resize(c_0, 26);
  c_20_0_10_False_shift <= shift_left(c_20_0_10_False_resize, 10);
  c_20_3_0_False_resize <= resize(c_3, 26);
  c_20_3_0_False_shift <= shift_left(c_20_3_0_False_resize, 0);
  c_20_6_3_False_resize <= resize(c_6, 26);
  c_20_6_3_False_shift <= shift_left(c_20_6_3_False_resize, 3);
  with config_select_7 select c_20_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "11" when others;
  with c_20_sel select c_20 <=
    c_20_9_1_False_shift when "00",
    c_20_0_10_False_shift when "01",
    c_20_3_0_False_shift when "10",
    c_20_6_3_False_shift when others;
  -- node of type 'add_sub' in stage 14 with id 21 and associated fundamentals [[379], [298], [802], [213]]
  with config_select_14 select c_21_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 26,
      w_o => 26,
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
      sub_i => c_21_sub_sel,
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  c_21 <= c_21_oshift(25 downto 0);
  -- node of type 'mux' in stage 15 with id 22 and associated fundamentals [[45], [18], [640], [213]]
  c_22_21_0_False_resize <= c_21;
  c_22_21_0_False_shift <= shift_left(c_22_21_0_False_resize, 0);
  c_22_3_7_False_resize <= resize(c_3, 26);
  c_22_3_7_False_shift <= shift_left(c_22_3_7_False_resize, 7);
  c_22_6_0_False_resize <= resize(c_6, 26);
  c_22_6_0_False_shift <= shift_left(c_22_6_0_False_resize, 0);
  c_22_6_1_False_resize <= resize(c_6, 26);
  c_22_6_1_False_shift <= shift_left(c_22_6_1_False_resize, 1);
  with config_select_15 select c_22_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  with c_22_sel select c_22 <=
    c_22_21_0_False_shift when "00",
    c_22_3_7_False_shift when "01",
    c_22_6_0_False_shift when "10",
    c_22_6_1_False_shift when others;
  -- node of type 'mux' in stage 13 with id 23 and associated fundamentals [[688], [-659], [161], [792]]
  c_23_18_0_False_resize <= c_18(25 downto 0);
  c_23_18_0_False_shift <= shift_left(c_23_18_0_False_resize, 0);
  c_23_9_0_False_resize <= resize(c_9, 26);
  c_23_9_0_False_shift <= shift_left(c_23_9_0_False_resize, 0);
  c_23_9_3_False_resize <= resize(c_9, 26);
  c_23_9_3_False_shift <= shift_left(c_23_9_3_False_resize, 3);
  with config_select_13 select c_23_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "10" when others;
  with c_23_sel select c_23 <=
    c_23_18_0_False_shift when "00",
    c_23_9_0_False_shift when "01",
    c_23_9_3_False_shift when others;
  -- node of type 'add_sub' in stage 16 with id 24 and associated fundamentals [[733], [677], [479], [1005]]
  with config_select_16 select c_24_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_24_sub_sel,
      x_i => c_22,
      y_i => c_23,
      z_o => c_24_oshift
    );
  c_24 <= c_24_oshift(25 downto 0);
  -- node of type 'mux' in stage 13 with id 25 and associated fundamentals [[-69], [-659], [-643], [-459]]
  c_25_18_0_False_resize <= c_18(25 downto 0);
  c_25_18_0_False_shift <= shift_left(c_25_18_0_False_resize, 0);
  c_25_12_0_False_resize <= c_12;
  c_25_12_0_False_shift <= shift_left(c_25_12_0_False_resize, 0);
  with config_select_13 select c_25_sel <= 
    "0" when "10",
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_25_sel select c_25 <=
    c_25_18_0_False_shift when "0",
    c_25_12_0_False_shift when others;
  -- node of type 'output' in stage 13 with id 26 and associated fundamentals [[69], [659], [643], [459]]
  c_26_resize <= c_25;
  c_26 <= -shift_left(c_26_resize, 0);
  -- node of type 'mux' in stage 17 with id 27 and associated fundamentals [[361], [52], [597], [1005]]
  c_27_15_0_False_resize <= c_15;
  c_27_15_0_False_shift <= shift_left(c_27_15_0_False_resize, 0);
  c_27_9_1_False_resize <= resize(c_9, 26);
  c_27_9_1_False_shift <= shift_left(c_27_9_1_False_resize, 1);
  c_27_24_0_False_resize <= c_24;
  c_27_24_0_False_shift <= shift_left(c_27_24_0_False_resize, 0);
  with config_select_17 select c_27_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_27_sel select c_27 <=
    c_27_15_0_False_shift when "00",
    c_27_9_1_False_shift when "01",
    c_27_24_0_False_shift when others;
  -- node of type 'output' in stage 17 with id 28 and associated fundamentals [[361], [52], [597], [1005]]
  c_28_resize <= c_27;
  c_28 <= shift_left(c_28_resize, 0);
  -- node of type 'mux' in stage 15 with id 29 and associated fundamentals [[379], [402], [802], [242]]
  c_29_21_0_False_resize <= c_21;
  c_29_21_0_False_shift <= shift_left(c_29_21_0_False_resize, 0);
  c_29_15_0_False_resize <= c_15;
  c_29_15_0_False_shift <= shift_left(c_29_15_0_False_resize, 0);
  c_29_12_1_False_resize <= c_12;
  c_29_12_1_False_shift <= shift_left(c_29_12_1_False_resize, 1);
  with config_select_15 select c_29_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "11",
    "10" when others;
  with c_29_sel select c_29 <=
    c_29_21_0_False_shift when "00",
    c_29_15_0_False_shift when "01",
    c_29_12_1_False_shift when others;
  -- node of type 'output' in stage 15 with id 30 and associated fundamentals [[379], [402], [802], [242]]
  c_30_resize <= c_29;
  c_30 <= shift_left(c_30_resize, 0);
  -- node of type 'mux' in stage 15 with id 31 and associated fundamentals [[77], [298], [617], [426]]
  c_31_12_0_False_resize <= c_12;
  c_31_12_0_False_shift <= shift_left(c_31_12_0_False_resize, 0);
  c_31_21_0_False_resize <= c_21;
  c_31_21_0_False_shift <= shift_left(c_31_21_0_False_resize, 0);
  c_31_21_1_False_resize <= c_21;
  c_31_21_1_False_shift <= shift_left(c_31_21_1_False_resize, 1);
  with config_select_15 select c_31_sel <= 
    "00" when "00",
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_31_sel select c_31 <=
    c_31_12_0_False_shift when "00",
    c_31_21_0_False_shift when "01",
    c_31_21_1_False_shift when others;
  -- node of type 'output' in stage 15 with id 32 and associated fundamentals [[77], [298], [617], [426]]
  c_32_resize <= c_31;
  c_32 <= shift_left(c_32_resize, 0);
  -- node of type 'mux' in stage 17 with id 33 and associated fundamentals [[733], [677], [958], [99]]
  c_33_24_1_False_resize <= c_24;
  c_33_24_1_False_shift <= shift_left(c_33_24_1_False_resize, 1);
  c_33_24_0_False_resize <= c_24;
  c_33_24_0_False_shift <= shift_left(c_33_24_0_False_resize, 0);
  c_33_9_0_False_resize <= resize(c_9, 26);
  c_33_9_0_False_shift <= shift_left(c_33_9_0_False_resize, 0);
  with config_select_17 select c_33_sel <= 
    "00" when "10",
    "01" when "00",
    "01" when "01",
    "10" when others;
  with c_33_sel select c_33 <=
    c_33_24_1_False_shift when "00",
    c_33_24_0_False_shift when "01",
    c_33_9_0_False_shift when others;
  -- node of type 'output' in stage 17 with id 34 and associated fundamentals [[733], [677], [958], [99]]
  c_34_resize <= c_33;
  c_34 <= shift_left(c_34_resize, 0);
end architecture;
