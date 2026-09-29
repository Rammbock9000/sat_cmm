library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    x_1: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(29 downto 0);
    y_1: out std_logic_vector(29 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(21 downto 0);
  signal c_2_0_0_False_resize: signed(21 downto 0);
  signal c_2_0_0_False_shift: signed(21 downto 0);
  signal c_2_0_6_False_resize: signed(21 downto 0);
  signal c_2_0_6_False_shift: signed(21 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(17 downto 0);
  signal c_3_0_0_False_resize: signed(17 downto 0);
  signal c_3_0_0_False_shift: signed(17 downto 0);
  signal c_3_1_2_False_resize: signed(17 downto 0);
  signal c_3_1_2_False_shift: signed(17 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(23 downto 0);
  signal c_4_i0_resize: signed(23 downto 0);
  signal c_4_i1_resize: signed(23 downto 0);
  signal c_4_i0_shift: signed(23 downto 0);
  signal c_4_i1_shift: signed(23 downto 0);
  signal c_4_arith: signed(23 downto 0);
  signal c_4_oshift: signed(23 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(26 downto 0);
  signal c_5_0_8_False_resize: signed(26 downto 0);
  signal c_5_0_8_False_shift: signed(26 downto 0);
  signal c_5_1_0_False_resize: signed(26 downto 0);
  signal c_5_1_0_False_shift: signed(26 downto 0);
  signal c_5_4_3_False_resize: signed(26 downto 0);
  signal c_5_4_3_False_shift: signed(26 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(23 downto 0);
  signal c_6_4_0_False_resize: signed(23 downto 0);
  signal c_6_4_0_False_shift: signed(23 downto 0);
  signal c_6_1_3_False_resize: signed(23 downto 0);
  signal c_6_1_3_False_shift: signed(23 downto 0);
  signal c_6_1_6_False_resize: signed(23 downto 0);
  signal c_6_1_6_False_shift: signed(23 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(25 downto 0);
  signal c_7_i0_resize: signed(25 downto 0);
  signal c_7_i1_resize: signed(25 downto 0);
  signal c_7_i0_shift: signed(25 downto 0);
  signal c_7_i1_shift: signed(25 downto 0);
  signal c_7_arith: signed(25 downto 0);
  signal c_7_oshift: signed(25 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(23 downto 0);
  signal c_8_1_6_False_resize: signed(23 downto 0);
  signal c_8_1_6_False_shift: signed(23 downto 0);
  signal c_8_1_0_False_resize: signed(23 downto 0);
  signal c_8_1_0_False_shift: signed(23 downto 0);
  signal c_8_4_6_False_resize: signed(23 downto 0);
  signal c_8_4_6_False_shift: signed(23 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(20 downto 0);
  signal c_9_1_5_False_resize: signed(20 downto 0);
  signal c_9_1_5_False_shift: signed(20 downto 0);
  signal c_9_0_0_False_resize: signed(20 downto 0);
  signal c_9_0_0_False_shift: signed(20 downto 0);
  signal c_9_4_0_False_resize: signed(20 downto 0);
  signal c_9_4_0_False_shift: signed(20 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_i0_resize: signed(23 downto 0);
  signal c_10_i1_resize: signed(23 downto 0);
  signal c_10_i0_shift: signed(23 downto 0);
  signal c_10_i1_shift: signed(23 downto 0);
  signal c_10_arith: signed(23 downto 0);
  signal c_10_oshift: signed(23 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(24 downto 0);
  signal c_11_1_3_False_resize: signed(24 downto 0);
  signal c_11_1_3_False_shift: signed(24 downto 0);
  signal c_11_4_1_False_resize: signed(24 downto 0);
  signal c_11_4_1_False_shift: signed(24 downto 0);
  signal c_11_7_0_False_resize: signed(24 downto 0);
  signal c_11_7_0_False_shift: signed(24 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(30 downto 0);
  signal c_12_4_3_False_resize: signed(30 downto 0);
  signal c_12_4_3_False_shift: signed(30 downto 0);
  signal c_12_10_0_False_resize: signed(30 downto 0);
  signal c_12_10_0_False_shift: signed(30 downto 0);
  signal c_12_0_15_False_resize: signed(30 downto 0);
  signal c_12_0_15_False_shift: signed(30 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(31 downto 0);
  signal c_13_i0_resize: signed(31 downto 0);
  signal c_13_i1_resize: signed(31 downto 0);
  signal c_13_i0_shift: signed(31 downto 0);
  signal c_13_i1_shift: signed(31 downto 0);
  signal c_13_arith: signed(31 downto 0);
  signal c_13_oshift: signed(31 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(26 downto 0);
  signal c_14_13_1_False_resize: signed(26 downto 0);
  signal c_14_13_1_False_shift: signed(26 downto 0);
  signal c_14_10_0_False_resize: signed(26 downto 0);
  signal c_14_10_0_False_shift: signed(26 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(26 downto 0);
  signal c_15_1_6_False_resize: signed(26 downto 0);
  signal c_15_1_6_False_shift: signed(26 downto 0);
  signal c_15_13_1_False_resize: signed(26 downto 0);
  signal c_15_13_1_False_shift: signed(26 downto 0);
  signal c_15_10_0_False_resize: signed(26 downto 0);
  signal c_15_10_0_False_shift: signed(26 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(28 downto 0);
  signal c_16_i0_resize: signed(28 downto 0);
  signal c_16_i1_resize: signed(28 downto 0);
  signal c_16_i0_shift: signed(28 downto 0);
  signal c_16_i1_shift: signed(28 downto 0);
  signal c_16_arith: signed(28 downto 0);
  signal c_16_oshift: signed(28 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_1_5_False_resize: signed(23 downto 0);
  signal c_17_1_5_False_shift: signed(23 downto 0);
  signal c_17_7_0_False_resize: signed(23 downto 0);
  signal c_17_7_0_False_shift: signed(23 downto 0);
  signal c_17_0_6_False_resize: signed(23 downto 0);
  signal c_17_0_6_False_shift: signed(23 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(32 downto 0);
  signal c_18_16_0_False_resize: signed(32 downto 0);
  signal c_18_16_0_False_shift: signed(32 downto 0);
  signal c_18_10_9_False_resize: signed(32 downto 0);
  signal c_18_10_9_False_shift: signed(32 downto 0);
  signal c_18_16_3_False_resize: signed(32 downto 0);
  signal c_18_16_3_False_shift: signed(32 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(32 downto 0);
  signal c_19_i0_resize: signed(32 downto 0);
  signal c_19_i1_resize: signed(32 downto 0);
  signal c_19_i0_shift: signed(32 downto 0);
  signal c_19_i1_shift: signed(32 downto 0);
  signal c_19_arith: signed(32 downto 0);
  signal c_19_oshift: signed(32 downto 0);
  signal c_20: signed(31 downto 0);
  signal c_20_19_0_False_resize: signed(31 downto 0);
  signal c_20_19_0_False_shift: signed(31 downto 0);
  signal c_20_16_3_False_resize: signed(31 downto 0);
  signal c_20_16_3_False_shift: signed(31 downto 0);
  signal c_20_7_3_False_resize: signed(31 downto 0);
  signal c_20_7_3_False_shift: signed(31 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(29 downto 0);
  signal c_21_16_0_False_resize: signed(29 downto 0);
  signal c_21_16_0_False_shift: signed(29 downto 0);
  signal c_21_7_6_False_resize: signed(29 downto 0);
  signal c_21_7_6_False_shift: signed(29 downto 0);
  signal c_21_13_4_False_resize: signed(29 downto 0);
  signal c_21_13_4_False_shift: signed(29 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(31 downto 0);
  signal c_22_i0_resize: signed(31 downto 0);
  signal c_22_i1_resize: signed(31 downto 0);
  signal c_22_i0_shift: signed(31 downto 0);
  signal c_22_i1_shift: signed(31 downto 0);
  signal c_22_arith: signed(31 downto 0);
  signal c_22_oshift: signed(31 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(29 downto 0);
  signal c_23_22_1_False_resize: signed(29 downto 0);
  signal c_23_22_1_False_shift: signed(29 downto 0);
  signal c_23_13_0_False_resize: signed(29 downto 0);
  signal c_23_13_0_False_shift: signed(29 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(33 downto 0);
  signal c_24_1_3_False_resize: signed(33 downto 0);
  signal c_24_1_3_False_shift: signed(33 downto 0);
  signal c_24_16_0_False_resize: signed(33 downto 0);
  signal c_24_16_0_False_shift: signed(33 downto 0);
  signal c_24_13_2_False_resize: signed(33 downto 0);
  signal c_24_13_2_False_shift: signed(33 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(29 downto 0);
  signal c_25_i0_resize: signed(29 downto 0);
  signal c_25_i1_resize: signed(29 downto 0);
  signal c_25_i0_shift: signed(29 downto 0);
  signal c_25_i1_shift: signed(29 downto 0);
  signal c_25_arith: signed(29 downto 0);
  signal c_25_oshift: signed(29 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(32 downto 0);
  signal c_26_19_0_False_resize: signed(32 downto 0);
  signal c_26_19_0_False_shift: signed(32 downto 0);
  signal c_26_22_0_False_resize: signed(32 downto 0);
  signal c_26_22_0_False_shift: signed(32 downto 0);
  signal c_26_7_0_False_resize: signed(32 downto 0);
  signal c_26_7_0_False_shift: signed(32 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(31 downto 0);
  signal c_27_22_0_False_resize: signed(31 downto 0);
  signal c_27_22_0_False_shift: signed(31 downto 0);
  signal c_27_13_0_False_resize: signed(31 downto 0);
  signal c_27_13_0_False_shift: signed(31 downto 0);
  signal c_27_19_0_False_resize: signed(31 downto 0);
  signal c_27_19_0_False_shift: signed(31 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(29 downto 0);
  signal c_28_i0_resize: signed(32 downto 0);
  signal c_28_i1_resize: signed(32 downto 0);
  signal c_28_i0_shift: signed(32 downto 0);
  signal c_28_i1_shift: signed(32 downto 0);
  signal c_28_arith: signed(32 downto 0);
  signal c_28_oshift: signed(29 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(29 downto 0);
  signal c_29_28_2_False_resize: signed(29 downto 0);
  signal c_29_28_2_False_shift: signed(29 downto 0);
  signal c_29_28_0_False_resize: signed(29 downto 0);
  signal c_29_28_0_False_shift: signed(29 downto 0);
  signal c_29_25_1_False_resize: signed(29 downto 0);
  signal c_29_25_1_False_shift: signed(29 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(29 downto 0);
  signal c_30_resize: signed(29 downto 0);
  signal c_31: signed(29 downto 0);
  signal c_31_25_0_False_resize: signed(29 downto 0);
  signal c_31_25_0_False_shift: signed(29 downto 0);
  signal c_31_19_0_False_resize: signed(29 downto 0);
  signal c_31_19_0_False_shift: signed(29 downto 0);
  signal c_31_28_0_False_resize: signed(29 downto 0);
  signal c_31_28_0_False_shift: signed(29 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(29 downto 0);
  signal c_32_resize: signed(29 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- input node 1 with id 1
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= signed(x_1);
    end if;
  end process;
  -- output node 0 with id 30
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_30);
    end if;
  end process;
  -- output node 1 with id 32
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_32);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[64, 0], [1, 0], [1, 0]]
  c_2_0_0_False_resize <= resize(c_0, 22);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_6_False_resize <= resize(c_0, 22);
  c_2_0_6_False_shift <= shift_left(c_2_0_6_False_resize, 6);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_0_0_False_shift when "0",
    c_2_0_6_False_shift when others;
  -- node of type 'mux' in stage 1 with id 3 and associated fundamentals [[1, 0], [0, 4], [1, 0]]
  c_3_0_0_False_resize <= resize(c_0, 18);
  c_3_0_0_False_shift <= shift_left(c_3_0_0_False_resize, 0);
  c_3_1_2_False_resize <= resize(c_1, 18);
  c_3_1_2_False_shift <= shift_left(c_3_1_2_False_resize, 2);
  with config_select_1 select c_3_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_0_0_False_shift when "0",
    c_3_1_2_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 4 and associated fundamentals [[132, 0], [2, -16], [-2, 0]]
  with config_select_2 select c_4_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 18,
      w_o => 24,
      s_x_i => 1,
      s_y_i => 2,
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
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[1056, 0], [256, 0], [0, 1]]
  c_5_0_8_False_resize <= resize(c_0, 27);
  c_5_0_8_False_shift <= shift_left(c_5_0_8_False_resize, 8);
  c_5_1_0_False_resize <= resize(c_1, 27);
  c_5_1_0_False_shift <= shift_left(c_5_1_0_False_resize, 0);
  c_5_4_3_False_resize <= resize(c_4, 27);
  c_5_4_3_False_shift <= shift_left(c_5_4_3_False_resize, 3);
  with config_select_3 select c_5_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_5_sel select c_5 <=
    c_5_0_8_False_shift when "00",
    c_5_1_0_False_shift when "01",
    c_5_4_3_False_shift when others;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[132, 0], [0, 8], [0, 64]]
  c_6_4_0_False_resize <= c_4;
  c_6_4_0_False_shift <= shift_left(c_6_4_0_False_resize, 0);
  c_6_1_3_False_resize <= resize(c_1, 24);
  c_6_1_3_False_shift <= shift_left(c_6_1_3_False_resize, 3);
  c_6_1_6_False_resize <= resize(c_1, 24);
  c_6_1_6_False_shift <= shift_left(c_6_1_6_False_resize, 6);
  with config_select_3 select c_6_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_6_sel select c_6 <=
    c_6_4_0_False_shift when "00",
    c_6_1_3_False_shift when "01",
    c_6_1_6_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[792, 0], [256, -16], [0, 129]]
  with config_select_4 select c_7_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 24,
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
      sub_i => c_7_sub_sel,
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(25 downto 0);
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[0, 1], [0, 64], [-128, 0]]
  c_8_1_6_False_resize <= resize(c_1, 24);
  c_8_1_6_False_shift <= shift_left(c_8_1_6_False_resize, 6);
  c_8_1_0_False_resize <= resize(c_1, 24);
  c_8_1_0_False_shift <= shift_left(c_8_1_0_False_resize, 0);
  c_8_4_6_False_resize <= c_4;
  c_8_4_6_False_shift <= shift_left(c_8_4_6_False_resize, 6);
  with config_select_3 select c_8_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_8_sel select c_8 <=
    c_8_1_6_False_shift when "00",
    c_8_1_0_False_shift when "01",
    c_8_4_6_False_shift when others;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[0, 32], [2, -16], [1, 0]]
  c_9_1_5_False_resize <= resize(c_1, 21);
  c_9_1_5_False_shift <= shift_left(c_9_1_5_False_resize, 5);
  c_9_0_0_False_resize <= resize(c_0, 21);
  c_9_0_0_False_shift <= shift_left(c_9_0_0_False_resize, 0);
  c_9_4_0_False_resize <= c_4(20 downto 0);
  c_9_4_0_False_shift <= shift_left(c_9_4_0_False_resize, 0);
  with config_select_3 select c_9_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_9_sel select c_9 <=
    c_9_1_5_False_shift when "00",
    c_9_0_0_False_shift when "01",
    c_9_4_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 10 and associated fundamentals [[0, 33], [2, 48], [-129, 0]]
  with config_select_4 select c_10_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 21,
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
      sub_i => c_10_sub_sel,
      x_i => c_8,
      y_i => c_9,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(23 downto 0);
  -- node of type 'mux' in stage 5 with id 11 and associated fundamentals [[264, 0], [0, 8], [0, 129]]
  c_11_1_3_False_resize <= resize(c_1, 25);
  c_11_1_3_False_shift <= shift_left(c_11_1_3_False_resize, 3);
  c_11_4_1_False_resize <= resize(c_4, 25);
  c_11_4_1_False_shift <= shift_left(c_11_4_1_False_resize, 1);
  c_11_7_0_False_resize <= c_7(24 downto 0);
  c_11_7_0_False_shift <= shift_left(c_11_7_0_False_resize, 0);
  with config_select_5 select c_11_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_11_sel select c_11 <=
    c_11_1_3_False_shift when "00",
    c_11_4_1_False_shift when "01",
    c_11_7_0_False_shift when others;
  -- node of type 'mux' in stage 5 with id 12 and associated fundamentals [[32768, 0], [16, -128], [-129, 0]]
  c_12_4_3_False_resize <= resize(c_4, 31);
  c_12_4_3_False_shift <= shift_left(c_12_4_3_False_resize, 3);
  c_12_10_0_False_resize <= resize(c_10, 31);
  c_12_10_0_False_shift <= shift_left(c_12_10_0_False_resize, 0);
  c_12_0_15_False_resize <= resize(c_0, 31);
  c_12_0_15_False_shift <= shift_left(c_12_0_15_False_resize, 15);
  with config_select_5 select c_12_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_12_sel select c_12 <=
    c_12_4_3_False_shift when "00",
    c_12_10_0_False_shift when "01",
    c_12_0_15_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 13 and associated fundamentals [[-65008, 0], [32, -240], [-258, 258]]
  with config_select_6 select c_13_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 31,
      w_o => 32,
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
  c_13 <= c_13_oshift(31 downto 0);
  -- node of type 'mux' in stage 7 with id 14 and associated fundamentals [[0, 33], [2, 48], [-516, 516]]
  c_14_13_1_False_resize <= c_13(26 downto 0);
  c_14_13_1_False_shift <= shift_left(c_14_13_1_False_resize, 1);
  c_14_10_0_False_resize <= resize(c_10, 27);
  c_14_10_0_False_shift <= shift_left(c_14_10_0_False_resize, 0);
  with config_select_7 select c_14_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_13_1_False_shift when "0",
    c_14_10_0_False_shift when others;
  -- node of type 'mux' in stage 7 with id 15 and associated fundamentals [[0, 33], [0, 64], [-516, 516]]
  c_15_1_6_False_resize <= resize(c_1, 27);
  c_15_1_6_False_shift <= shift_left(c_15_1_6_False_resize, 6);
  c_15_13_1_False_resize <= c_13(26 downto 0);
  c_15_13_1_False_shift <= shift_left(c_15_13_1_False_resize, 1);
  c_15_10_0_False_resize <= resize(c_10, 27);
  c_15_10_0_False_shift <= shift_left(c_15_10_0_False_resize, 0);
  with config_select_7 select c_15_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_15_sel select c_15 <=
    c_15_1_6_False_shift when "00",
    c_15_13_1_False_shift when "01",
    c_15_10_0_False_shift when others;
  -- node of type 'add' in stage 8 with id 16 and associated fundamentals [[0, 165], [2, 304], [-2580, 2580]]
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 27,
      w_o => 29,
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
  c_16 <= c_16_oshift(28 downto 0);
  -- node of type 'mux' in stage 5 with id 17 and associated fundamentals [[0, 32], [64, 0], [0, 129]]
  c_17_1_5_False_resize <= resize(c_1, 24);
  c_17_1_5_False_shift <= shift_left(c_17_1_5_False_resize, 5);
  c_17_7_0_False_resize <= c_7(23 downto 0);
  c_17_7_0_False_shift <= shift_left(c_17_7_0_False_resize, 0);
  c_17_0_6_False_resize <= resize(c_0, 24);
  c_17_0_6_False_shift <= shift_left(c_17_0_6_False_resize, 6);
  with config_select_5 select c_17_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_17_sel select c_17 <=
    c_17_1_5_False_shift when "00",
    c_17_7_0_False_shift when "01",
    c_17_0_6_False_shift when others;
  -- node of type 'mux' in stage 9 with id 18 and associated fundamentals [[0, 165], [16, 2432], [-66048, 0]]
  c_18_16_0_False_resize <= resize(c_16, 33);
  c_18_16_0_False_shift <= shift_left(c_18_16_0_False_resize, 0);
  c_18_10_9_False_resize <= resize(c_10, 33);
  c_18_10_9_False_shift <= shift_left(c_18_10_9_False_resize, 9);
  c_18_16_3_False_resize <= resize(c_16, 33);
  c_18_16_3_False_shift <= shift_left(c_18_16_3_False_resize, 3);
  with config_select_9 select c_18_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_18_sel select c_18 <=
    c_18_16_0_False_shift when "00",
    c_18_10_9_False_shift when "01",
    c_18_16_3_False_shift when others;
  -- node of type 'sub' in stage 10 with id 19 and associated fundamentals [[0, 8027], [16368, -2432], [66048, 33024]]
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 33,
      w_o => 33,
      s_x_i => 8,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  c_19 <= c_19_oshift(32 downto 0);
  -- node of type 'mux' in stage 11 with id 20 and associated fundamentals [[0, 8027], [2048, -128], [-20640, 20640]]
  c_20_19_0_False_resize <= c_19(31 downto 0);
  c_20_19_0_False_shift <= shift_left(c_20_19_0_False_resize, 0);
  c_20_16_3_False_resize <= resize(c_16, 32);
  c_20_16_3_False_shift <= shift_left(c_20_16_3_False_resize, 3);
  c_20_7_3_False_resize <= resize(c_7, 32);
  c_20_7_3_False_shift <= shift_left(c_20_7_3_False_resize, 3);
  with config_select_11 select c_20_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_20_sel select c_20 <=
    c_20_19_0_False_shift when "00",
    c_20_16_3_False_shift when "01",
    c_20_7_3_False_shift when others;
  -- node of type 'mux' in stage 9 with id 21 and associated fundamentals [[0, 165], [512, -3840], [0, 8256]]
  c_21_16_0_False_resize <= resize(c_16, 30);
  c_21_16_0_False_shift <= shift_left(c_21_16_0_False_resize, 0);
  c_21_7_6_False_resize <= resize(c_7, 30);
  c_21_7_6_False_shift <= shift_left(c_21_7_6_False_resize, 6);
  c_21_13_4_False_resize <= c_13(29 downto 0);
  c_21_13_4_False_shift <= shift_left(c_21_13_4_False_resize, 4);
  with config_select_9 select c_21_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_21_sel select c_21 <=
    c_21_16_0_False_shift when "00",
    c_21_7_6_False_shift when "01",
    c_21_13_4_False_shift when others;
  -- node of type 'add_sub' in stage 12 with id 22 and associated fundamentals [[0, 8192], [1536, 3712], [-20640, 12384]]
  with config_select_12 select c_22_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 32,
      w_y_i => 30,
      w_o => 32,
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
      sub_i => c_22_sub_sel,
      x_i => c_20,
      y_i => c_21,
      z_o => c_22_oshift
    );
  c_22 <= c_22_oshift(31 downto 0);
  -- node of type 'mux' in stage 13 with id 23 and associated fundamentals [[0, 16384], [3072, 7424], [-258, 258]]
  c_23_22_1_False_resize <= c_22(29 downto 0);
  c_23_22_1_False_shift <= shift_left(c_23_22_1_False_resize, 1);
  c_23_13_0_False_resize <= c_13(29 downto 0);
  c_23_13_0_False_shift <= shift_left(c_23_13_0_False_resize, 0);
  with config_select_13 select c_23_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_23_sel select c_23 <=
    c_23_22_1_False_shift when "0",
    c_23_13_0_False_shift when others;
  -- node of type 'mux' in stage 9 with id 24 and associated fundamentals [[-260032, 0], [0, 8], [-2580, 2580]]
  c_24_1_3_False_resize <= resize(c_1, 34);
  c_24_1_3_False_shift <= shift_left(c_24_1_3_False_resize, 3);
  c_24_16_0_False_resize <= resize(c_16, 34);
  c_24_16_0_False_shift <= shift_left(c_24_16_0_False_resize, 0);
  c_24_13_2_False_resize <= resize(c_13, 34);
  c_24_13_2_False_shift <= shift_left(c_24_13_2_False_resize, 2);
  with config_select_9 select c_24_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_24_sel select c_24 <=
    c_24_1_3_False_shift when "00",
    c_24_16_0_False_shift when "01",
    c_24_13_2_False_shift when others;
  -- node of type 'add_sub' in stage 14 with id 25 and associated fundamentals [[-260032, 16384], [3072, 7416], [-2838, 2838]]
  with config_select_14 select c_25_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 34,
      w_o => 30,
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
      sub_i => c_25_sub_sel,
      x_i => c_23,
      y_i => c_24,
      z_o => c_25_oshift
    );
  c_25 <= c_25_oshift(29 downto 0);
  -- node of type 'mux' in stage 13 with id 26 and associated fundamentals [[792, 0], [1536, 3712], [66048, 33024]]
  c_26_19_0_False_resize <= c_19;
  c_26_19_0_False_shift <= shift_left(c_26_19_0_False_resize, 0);
  c_26_22_0_False_resize <= resize(c_22, 33);
  c_26_22_0_False_shift <= shift_left(c_26_22_0_False_resize, 0);
  c_26_7_0_False_resize <= resize(c_7, 33);
  c_26_7_0_False_shift <= shift_left(c_26_7_0_False_resize, 0);
  with config_select_13 select c_26_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_26_sel select c_26 <=
    c_26_19_0_False_shift when "00",
    c_26_22_0_False_shift when "01",
    c_26_7_0_False_shift when others;
  -- node of type 'mux' in stage 13 with id 27 and associated fundamentals [[-65008, 0], [16368, -2432], [-20640, 12384]]
  c_27_22_0_False_resize <= c_22;
  c_27_22_0_False_shift <= shift_left(c_27_22_0_False_resize, 0);
  c_27_13_0_False_resize <= c_13;
  c_27_13_0_False_shift <= shift_left(c_27_13_0_False_resize, 0);
  c_27_19_0_False_resize <= c_19(31 downto 0);
  c_27_19_0_False_shift <= shift_left(c_27_19_0_False_resize, 0);
  with config_select_13 select c_27_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_27_sel select c_27 <=
    c_27_22_0_False_shift when "00",
    c_27_13_0_False_shift when "01",
    c_27_19_0_False_shift when others;
  -- node of type 'add_sub' in stage 14 with id 28 and associated fundamentals [[-8027, 0], [-1854, 768], [5676, 5676]]
  with config_select_14 select c_28_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 33,
      w_y_i => 32,
      w_o => 30,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 3,
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
  c_28 <= c_28_oshift(29 downto 0);
  -- node of type 'mux' in stage 15 with id 29 and associated fundamentals [[-8027, 0], [-7416, 3072], [-5676, 5676]]
  c_29_28_2_False_resize <= c_28;
  c_29_28_2_False_shift <= shift_left(c_29_28_2_False_resize, 2);
  c_29_28_0_False_resize <= c_28;
  c_29_28_0_False_shift <= shift_left(c_29_28_0_False_resize, 0);
  c_29_25_1_False_resize <= c_25;
  c_29_25_1_False_shift <= shift_left(c_29_25_1_False_resize, 1);
  with config_select_15 select c_29_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_29_sel select c_29 <=
    c_29_28_2_False_shift when "00",
    c_29_28_0_False_shift when "01",
    c_29_25_1_False_shift when others;
  -- node of type 'output' in stage 15 with id 30 and associated fundamentals [[8027, 0], [7416, -3072], [5676, -5676]]
  c_30_resize <= c_29;
  c_30 <= -shift_left(c_30_resize, 0);
  -- node of type 'mux' in stage 15 with id 31 and associated fundamentals [[0, 8027], [3072, 7416], [5676, 5676]]
  c_31_25_0_False_resize <= c_25;
  c_31_25_0_False_shift <= shift_left(c_31_25_0_False_resize, 0);
  c_31_19_0_False_resize <= c_19(29 downto 0);
  c_31_19_0_False_shift <= shift_left(c_31_19_0_False_resize, 0);
  c_31_28_0_False_resize <= c_28;
  c_31_28_0_False_shift <= shift_left(c_31_28_0_False_resize, 0);
  with config_select_15 select c_31_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_31_sel select c_31 <=
    c_31_25_0_False_shift when "00",
    c_31_19_0_False_shift when "01",
    c_31_28_0_False_shift when others;
  -- node of type 'output' in stage 15 with id 32 and associated fundamentals [[0, 8027], [3072, 7416], [5676, 5676]]
  c_32_resize <= c_31;
  c_32 <= shift_left(c_32_resize, 0);
end architecture;
