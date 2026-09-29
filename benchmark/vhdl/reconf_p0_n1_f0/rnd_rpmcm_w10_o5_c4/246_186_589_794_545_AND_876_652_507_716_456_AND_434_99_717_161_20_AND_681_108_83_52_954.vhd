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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_0_0_False_resize: signed(18 downto 0);
  signal c_1_0_0_False_shift: signed(18 downto 0);
  signal c_1_0_3_False_resize: signed(18 downto 0);
  signal c_1_0_3_False_shift: signed(18 downto 0);
  signal c_1_0_2_False_resize: signed(18 downto 0);
  signal c_1_0_2_False_shift: signed(18 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(16 downto 0);
  signal c_2_0_0_False_resize: signed(16 downto 0);
  signal c_2_0_0_False_shift: signed(16 downto 0);
  signal c_2_0_1_False_resize: signed(16 downto 0);
  signal c_2_0_1_False_shift: signed(16 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(20 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(22 downto 0);
  signal c_4_0_3_False_resize: signed(22 downto 0);
  signal c_4_0_3_False_shift: signed(22 downto 0);
  signal c_4_0_7_False_resize: signed(22 downto 0);
  signal c_4_0_7_False_shift: signed(22 downto 0);
  signal c_4_3_1_False_resize: signed(22 downto 0);
  signal c_4_3_1_False_shift: signed(22 downto 0);
  signal c_4_3_0_False_resize: signed(22 downto 0);
  signal c_4_3_0_False_shift: signed(22 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(24 downto 0);
  signal c_5_i0_resize: signed(24 downto 0);
  signal c_5_i1_resize: signed(24 downto 0);
  signal c_5_i0_shift: signed(24 downto 0);
  signal c_5_i1_shift: signed(24 downto 0);
  signal c_5_arith: signed(24 downto 0);
  signal c_5_oshift: signed(24 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(22 downto 0);
  signal c_6_3_0_False_resize: signed(22 downto 0);
  signal c_6_3_0_False_shift: signed(22 downto 0);
  signal c_6_0_7_False_resize: signed(22 downto 0);
  signal c_6_0_7_False_shift: signed(22 downto 0);
  signal c_6_0_1_False_resize: signed(22 downto 0);
  signal c_6_0_1_False_shift: signed(22 downto 0);
  signal c_6_5_2_False_resize: signed(22 downto 0);
  signal c_6_5_2_False_shift: signed(22 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(24 downto 0);
  signal c_7_i0_resize: signed(24 downto 0);
  signal c_7_i1_resize: signed(24 downto 0);
  signal c_7_i0_shift: signed(24 downto 0);
  signal c_7_i1_shift: signed(24 downto 0);
  signal c_7_arith: signed(24 downto 0);
  signal c_7_oshift: signed(24 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(24 downto 0);
  signal c_8_7_1_False_resize: signed(24 downto 0);
  signal c_8_7_1_False_shift: signed(24 downto 0);
  signal c_8_3_0_False_resize: signed(24 downto 0);
  signal c_8_3_0_False_shift: signed(24 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_3_5_False_resize: signed(23 downto 0);
  signal c_9_3_5_False_shift: signed(23 downto 0);
  signal c_9_3_0_False_resize: signed(23 downto 0);
  signal c_9_3_0_False_shift: signed(23 downto 0);
  signal c_9_0_1_False_resize: signed(23 downto 0);
  signal c_9_0_1_False_shift: signed(23 downto 0);
  signal c_9_0_5_False_resize: signed(23 downto 0);
  signal c_9_0_5_False_shift: signed(23 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(24 downto 0);
  signal c_10_i0_resize: signed(24 downto 0);
  signal c_10_i1_resize: signed(24 downto 0);
  signal c_10_i0_shift: signed(24 downto 0);
  signal c_10_i1_shift: signed(24 downto 0);
  signal c_10_arith: signed(24 downto 0);
  signal c_10_oshift: signed(24 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(25 downto 0);
  signal c_11_10_1_False_resize: signed(25 downto 0);
  signal c_11_10_1_False_shift: signed(25 downto 0);
  signal c_11_10_0_False_resize: signed(25 downto 0);
  signal c_11_10_0_False_shift: signed(25 downto 0);
  signal c_11_3_2_False_resize: signed(25 downto 0);
  signal c_11_3_2_False_shift: signed(25 downto 0);
  signal c_11_7_4_False_resize: signed(25 downto 0);
  signal c_11_7_4_False_shift: signed(25 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(21 downto 0);
  signal c_12_5_0_False_resize: signed(21 downto 0);
  signal c_12_5_0_False_shift: signed(21 downto 0);
  signal c_12_0_0_False_resize: signed(21 downto 0);
  signal c_12_0_0_False_shift: signed(21 downto 0);
  signal c_12_0_6_False_resize: signed(21 downto 0);
  signal c_12_0_6_False_shift: signed(21 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(25 downto 0);
  signal c_13_i0_resize: signed(25 downto 0);
  signal c_13_i1_resize: signed(25 downto 0);
  signal c_13_i0_shift: signed(25 downto 0);
  signal c_13_i1_shift: signed(25 downto 0);
  signal c_13_arith: signed(25 downto 0);
  signal c_13_oshift: signed(25 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(25 downto 0);
  signal c_14_10_2_False_resize: signed(25 downto 0);
  signal c_14_10_2_False_shift: signed(25 downto 0);
  signal c_14_7_0_False_resize: signed(25 downto 0);
  signal c_14_7_0_False_shift: signed(25 downto 0);
  signal c_14_3_5_False_resize: signed(25 downto 0);
  signal c_14_3_5_False_shift: signed(25 downto 0);
  signal c_14_5_1_False_resize: signed(25 downto 0);
  signal c_14_5_1_False_shift: signed(25 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_3_1_False_resize: signed(25 downto 0);
  signal c_15_3_1_False_shift: signed(25 downto 0);
  signal c_15_13_0_False_resize: signed(25 downto 0);
  signal c_15_13_0_False_shift: signed(25 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(25 downto 0);
  signal c_16_i1_resize: signed(25 downto 0);
  signal c_16_i0_shift: signed(25 downto 0);
  signal c_16_i1_shift: signed(25 downto 0);
  signal c_16_arith: signed(25 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(25 downto 0);
  signal c_17_10_0_False_resize: signed(25 downto 0);
  signal c_17_10_0_False_shift: signed(25 downto 0);
  signal c_17_13_1_False_resize: signed(25 downto 0);
  signal c_17_13_1_False_shift: signed(25 downto 0);
  signal c_17_0_2_False_resize: signed(25 downto 0);
  signal c_17_0_2_False_shift: signed(25 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_18_3_4_False_resize: signed(24 downto 0);
  signal c_18_3_4_False_shift: signed(24 downto 0);
  signal c_18_5_4_False_resize: signed(24 downto 0);
  signal c_18_5_4_False_shift: signed(24 downto 0);
  signal c_18_7_0_False_resize: signed(24 downto 0);
  signal c_18_7_0_False_shift: signed(24 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_i0_resize: signed(25 downto 0);
  signal c_19_i1_resize: signed(25 downto 0);
  signal c_19_i0_shift: signed(25 downto 0);
  signal c_19_i1_shift: signed(25 downto 0);
  signal c_19_arith: signed(25 downto 0);
  signal c_19_oshift: signed(25 downto 0);
  signal c_20: signed(24 downto 0);
  signal c_20_3_2_False_resize: signed(24 downto 0);
  signal c_20_3_2_False_shift: signed(24 downto 0);
  signal c_20_7_0_False_resize: signed(24 downto 0);
  signal c_20_7_0_False_shift: signed(24 downto 0);
  signal c_20_0_8_False_resize: signed(24 downto 0);
  signal c_20_0_8_False_shift: signed(24 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_3_6_False_resize: signed(25 downto 0);
  signal c_21_3_6_False_shift: signed(25 downto 0);
  signal c_21_3_0_False_resize: signed(25 downto 0);
  signal c_21_3_0_False_shift: signed(25 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_i0_resize: signed(25 downto 0);
  signal c_22_i1_resize: signed(25 downto 0);
  signal c_22_i0_shift: signed(25 downto 0);
  signal c_22_i1_shift: signed(25 downto 0);
  signal c_22_arith: signed(25 downto 0);
  signal c_22_oshift: signed(25 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(25 downto 0);
  signal c_23_13_1_False_resize: signed(25 downto 0);
  signal c_23_13_1_False_shift: signed(25 downto 0);
  signal c_23_16_0_False_resize: signed(25 downto 0);
  signal c_23_16_0_False_shift: signed(25 downto 0);
  signal c_23_22_1_False_resize: signed(25 downto 0);
  signal c_23_22_1_False_shift: signed(25 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_resize: signed(25 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_10_1_False_resize: signed(25 downto 0);
  signal c_25_10_1_False_shift: signed(25 downto 0);
  signal c_25_16_0_False_resize: signed(25 downto 0);
  signal c_25_16_0_False_shift: signed(25 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_resize: signed(25 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_19_0_False_resize: signed(25 downto 0);
  signal c_27_19_0_False_shift: signed(25 downto 0);
  signal c_27_22_0_False_resize: signed(25 downto 0);
  signal c_27_22_0_False_shift: signed(25 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_resize: signed(25 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_7_0_False_resize: signed(25 downto 0);
  signal c_29_7_0_False_shift: signed(25 downto 0);
  signal c_29_13_0_False_resize: signed(25 downto 0);
  signal c_29_13_0_False_shift: signed(25 downto 0);
  signal c_29_16_1_False_resize: signed(25 downto 0);
  signal c_29_16_1_False_shift: signed(25 downto 0);
  signal c_29_5_0_False_resize: signed(25 downto 0);
  signal c_29_5_0_False_shift: signed(25 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_resize: signed(25 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_22_0_False_resize: signed(25 downto 0);
  signal c_31_22_0_False_shift: signed(25 downto 0);
  signal c_31_19_1_False_resize: signed(25 downto 0);
  signal c_31_19_1_False_shift: signed(25 downto 0);
  signal c_31_5_0_False_resize: signed(25 downto 0);
  signal c_31_5_0_False_shift: signed(25 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_resize: signed(25 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 24
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_24);
    end if;
  end process;
  -- output node 1 with id 26
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_26);
    end if;
  end process;
  -- output node 2 with id 28
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_28);
    end if;
  end process;
  -- output node 3 with id 30
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_30);
    end if;
  end process;
  -- output node 4 with id 32
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_32);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[8], [1], [8], [4]]
  c_1_0_0_False_resize <= resize(c_0, 19);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_3_False_resize <= resize(c_0, 19);
  c_1_0_3_False_shift <= shift_left(c_1_0_3_False_resize, 3);
  c_1_0_2_False_resize <= resize(c_0, 19);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "00" when "01",
    "01" when "10",
    "01" when "00",
    "10" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "00",
    c_1_0_3_False_shift when "01",
    c_1_0_2_False_shift when others;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [1], [1], [2]]
  c_2_0_0_False_resize <= resize(c_0, 17);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_1_False_resize <= resize(c_0, 17);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_0_0_False_shift when "0",
    c_2_0_1_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[31], [5], [31], [14]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 17,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(20 downto 0);
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[128], [5], [8], [28]]
  c_4_0_3_False_resize <= resize(c_0, 23);
  c_4_0_3_False_shift <= shift_left(c_4_0_3_False_resize, 3);
  c_4_0_7_False_resize <= resize(c_0, 23);
  c_4_0_7_False_shift <= shift_left(c_4_0_7_False_resize, 7);
  c_4_3_1_False_resize <= resize(c_3, 23);
  c_4_3_1_False_shift <= shift_left(c_4_3_1_False_resize, 1);
  c_4_3_0_False_resize <= resize(c_3, 23);
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  with config_select_3 select c_4_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  with c_4_sel select c_4 <=
    c_4_0_3_False_shift when "00",
    c_4_0_7_False_shift when "01",
    c_4_3_1_False_shift when "10",
    c_4_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 5 and associated fundamentals [[260], [14], [20], [52]]
  with config_select_4 select c_5_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 16,
      w_o => 25,
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
      sub_i => c_5_sub_sel,
      x_i => c_4,
      y_i => c_0,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(24 downto 0);
  -- node of type 'mux' in stage 5 with id 6 and associated fundamentals [[128], [2], [80], [14]]
  c_6_3_0_False_resize <= resize(c_3, 23);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  c_6_0_7_False_resize <= resize(c_0, 23);
  c_6_0_7_False_shift <= shift_left(c_6_0_7_False_resize, 7);
  c_6_0_1_False_resize <= resize(c_0, 23);
  c_6_0_1_False_shift <= shift_left(c_6_0_1_False_resize, 1);
  c_6_5_2_False_resize <= c_5(22 downto 0);
  c_6_5_2_False_shift <= shift_left(c_6_5_2_False_resize, 2);
  with config_select_5 select c_6_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  with c_6_sel select c_6 <=
    c_6_3_0_False_shift when "00",
    c_6_0_7_False_shift when "01",
    c_6_0_1_False_shift when "10",
    c_6_5_2_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 7 and associated fundamentals [[257], [3], [161], [29]]
  with config_select_6 select c_7_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 16,
      w_o => 25,
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
      y_i => c_0,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(24 downto 0);
  -- node of type 'mux' in stage 7 with id 8 and associated fundamentals [[31], [6], [322], [58]]
  c_8_7_1_False_resize <= c_7;
  c_8_7_1_False_shift <= shift_left(c_8_7_1_False_resize, 1);
  c_8_3_0_False_resize <= resize(c_3, 25);
  c_8_3_0_False_shift <= shift_left(c_8_3_0_False_resize, 0);
  with config_select_7 select c_8_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "11",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_7_1_False_shift when "0",
    c_8_3_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[31], [160], [32], [2]]
  c_9_3_5_False_resize <= resize(c_3, 24);
  c_9_3_5_False_shift <= shift_left(c_9_3_5_False_resize, 5);
  c_9_3_0_False_resize <= resize(c_3, 24);
  c_9_3_0_False_shift <= shift_left(c_9_3_0_False_resize, 0);
  c_9_0_1_False_resize <= resize(c_0, 24);
  c_9_0_1_False_shift <= shift_left(c_9_0_1_False_resize, 1);
  c_9_0_5_False_resize <= resize(c_0, 24);
  c_9_0_5_False_shift <= shift_left(c_9_0_5_False_resize, 5);
  with config_select_3 select c_9_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  with c_9_sel select c_9 <=
    c_9_3_5_False_shift when "00",
    c_9_3_0_False_shift when "01",
    c_9_0_1_False_shift when "10",
    c_9_0_5_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 10 and associated fundamentals [[93], [326], [258], [54]]
  with config_select_8 select c_10_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 24,
      w_o => 25,
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
  c_10 <= c_10_oshift(24 downto 0);
  -- node of type 'mux' in stage 9 with id 11 and associated fundamentals [[124], [652], [258], [464]]
  c_11_10_1_False_resize <= resize(c_10, 26);
  c_11_10_1_False_shift <= shift_left(c_11_10_1_False_resize, 1);
  c_11_10_0_False_resize <= resize(c_10, 26);
  c_11_10_0_False_shift <= shift_left(c_11_10_0_False_resize, 0);
  c_11_3_2_False_resize <= resize(c_3, 26);
  c_11_3_2_False_shift <= shift_left(c_11_3_2_False_resize, 2);
  c_11_7_4_False_resize <= resize(c_7, 26);
  c_11_7_4_False_shift <= shift_left(c_11_7_4_False_resize, 4);
  with config_select_9 select c_11_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  with c_11_sel select c_11 <=
    c_11_10_1_False_shift when "00",
    c_11_10_0_False_shift when "01",
    c_11_3_2_False_shift when "10",
    c_11_7_4_False_shift when others;
  -- node of type 'mux' in stage 5 with id 12 and associated fundamentals [[1], [64], [20], [1]]
  c_12_5_0_False_resize <= c_5(21 downto 0);
  c_12_5_0_False_shift <= shift_left(c_12_5_0_False_resize, 0);
  c_12_0_0_False_resize <= resize(c_0, 22);
  c_12_0_0_False_shift <= shift_left(c_12_0_0_False_resize, 0);
  c_12_0_6_False_resize <= resize(c_0, 22);
  c_12_0_6_False_shift <= shift_left(c_12_0_6_False_resize, 6);
  with config_select_5 select c_12_sel <= 
    "00" when "10",
    "01" when "11",
    "01" when "00",
    "10" when others;
  with c_12_sel select c_12 <=
    c_12_5_0_False_shift when "00",
    c_12_0_0_False_shift when "01",
    c_12_0_6_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 13 and associated fundamentals [[123], [716], [278], [465]]
  with config_select_10 select c_13_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 22,
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
      sub_i => c_13_sub_sel,
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(25 downto 0);
  -- node of type 'mux' in stage 9 with id 14 and associated fundamentals [[520], [160], [161], [216]]
  c_14_10_2_False_resize <= resize(c_10, 26);
  c_14_10_2_False_shift <= shift_left(c_14_10_2_False_resize, 2);
  c_14_7_0_False_resize <= resize(c_7, 26);
  c_14_7_0_False_shift <= shift_left(c_14_7_0_False_resize, 0);
  c_14_3_5_False_resize <= resize(c_3, 26);
  c_14_3_5_False_shift <= shift_left(c_14_3_5_False_resize, 5);
  c_14_5_1_False_resize <= resize(c_5, 26);
  c_14_5_1_False_shift <= shift_left(c_14_5_1_False_resize, 1);
  with config_select_9 select c_14_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  with c_14_sel select c_14 <=
    c_14_10_2_False_shift when "00",
    c_14_7_0_False_shift when "01",
    c_14_3_5_False_shift when "10",
    c_14_5_1_False_shift when others;
  -- node of type 'mux' in stage 11 with id 15 and associated fundamentals [[123], [716], [62], [465]]
  c_15_3_1_False_resize <= resize(c_3, 26);
  c_15_3_1_False_shift <= shift_left(c_15_3_1_False_resize, 1);
  c_15_13_0_False_resize <= c_13;
  c_15_13_0_False_shift <= shift_left(c_15_13_0_False_resize, 0);
  with config_select_11 select c_15_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when "01",
    "1" when others;
  with c_15_sel select c_15 <=
    c_15_3_1_False_shift when "0",
    c_15_13_0_False_shift when others;
  -- node of type 'add_sub' in stage 12 with id 16 and associated fundamentals [[397], [876], [99], [681]]
  with config_select_12 select c_16_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_16: entity work.adder_node
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
      sub_i => c_16_sub_sel,
      x_i => c_14,
      y_i => c_15,
      z_o => c_16_oshift
    );
  c_16 <= c_16_oshift(25 downto 0);
  -- node of type 'mux' in stage 11 with id 17 and associated fundamentals [[93], [4], [556], [54]]
  c_17_10_0_False_resize <= resize(c_10, 26);
  c_17_10_0_False_shift <= shift_left(c_17_10_0_False_resize, 0);
  c_17_13_1_False_resize <= c_13;
  c_17_13_1_False_shift <= shift_left(c_17_13_1_False_resize, 1);
  c_17_0_2_False_resize <= resize(c_0, 26);
  c_17_0_2_False_shift <= shift_left(c_17_0_2_False_resize, 2);
  with config_select_11 select c_17_sel <= 
    "00" when "11",
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_17_sel select c_17 <=
    c_17_10_0_False_shift when "00",
    c_17_13_1_False_shift when "01",
    c_17_0_2_False_shift when others;
  -- node of type 'mux' in stage 7 with id 18 and associated fundamentals [[496], [224], [161], [29]]
  c_18_3_4_False_resize <= resize(c_3, 25);
  c_18_3_4_False_shift <= shift_left(c_18_3_4_False_resize, 4);
  c_18_5_4_False_resize <= c_5;
  c_18_5_4_False_shift <= shift_left(c_18_5_4_False_resize, 4);
  c_18_7_0_False_resize <= c_7;
  c_18_7_0_False_shift <= shift_left(c_18_7_0_False_resize, 0);
  with config_select_7 select c_18_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "10" when others;
  with c_18_sel select c_18 <=
    c_18_3_4_False_shift when "00",
    c_18_5_4_False_shift when "01",
    c_18_7_0_False_shift when others;
  -- node of type 'add' in stage 12 with id 19 and associated fundamentals [[589], [228], [717], [83]]
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
      w_o => 26,
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
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  c_19 <= c_19_oshift(25 downto 0);
  -- node of type 'mux' in stage 7 with id 20 and associated fundamentals [[257], [256], [124], [29]]
  c_20_3_2_False_resize <= resize(c_3, 25);
  c_20_3_2_False_shift <= shift_left(c_20_3_2_False_resize, 2);
  c_20_7_0_False_resize <= c_7;
  c_20_7_0_False_shift <= shift_left(c_20_7_0_False_resize, 0);
  c_20_0_8_False_resize <= resize(c_0, 25);
  c_20_0_8_False_shift <= shift_left(c_20_0_8_False_resize, 8);
  with config_select_7 select c_20_sel <= 
    "00" when "10",
    "01" when "11",
    "01" when "00",
    "10" when others;
  with c_20_sel select c_20 <=
    c_20_3_2_False_shift when "00",
    c_20_7_0_False_shift when "01",
    c_20_0_8_False_shift when others;
  -- node of type 'mux' in stage 3 with id 21 and associated fundamentals [[31], [5], [31], [896]]
  c_21_3_6_False_resize <= resize(c_3, 26);
  c_21_3_6_False_shift <= shift_left(c_21_3_6_False_resize, 6);
  c_21_3_0_False_resize <= resize(c_3, 26);
  c_21_3_0_False_shift <= shift_left(c_21_3_0_False_resize, 0);
  with config_select_3 select c_21_sel <= 
    "0" when "11",
    "1" when "00",
    "1" when "01",
    "1" when others;
  with c_21_sel select c_21 <=
    c_21_3_6_False_shift when "0",
    c_21_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 22 and associated fundamentals [[545], [507], [217], [954]]
  with config_select_8 select c_22_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 26,
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
      sub_i => c_22_sub_sel,
      x_i => c_20,
      y_i => c_21,
      z_o => c_22_oshift
    );
  c_22 <= c_22_oshift(25 downto 0);
  -- node of type 'mux' in stage 13 with id 23 and associated fundamentals [[246], [876], [434], [681]]
  c_23_13_1_False_resize <= c_13;
  c_23_13_1_False_shift <= shift_left(c_23_13_1_False_resize, 1);
  c_23_16_0_False_resize <= c_16;
  c_23_16_0_False_shift <= shift_left(c_23_16_0_False_resize, 0);
  c_23_22_1_False_resize <= c_22;
  c_23_22_1_False_shift <= shift_left(c_23_22_1_False_resize, 1);
  with config_select_13 select c_23_sel <= 
    "00" when "00",
    "01" when "01",
    "01" when "11",
    "10" when others;
  with c_23_sel select c_23 <=
    c_23_13_1_False_shift when "00",
    c_23_16_0_False_shift when "01",
    c_23_22_1_False_shift when others;
  -- node of type 'output' in stage 13 with id 24 and associated fundamentals [[246], [876], [434], [681]]
  c_24_resize <= c_23;
  c_24 <= shift_left(c_24_resize, 0);
  -- node of type 'mux' in stage 13 with id 25 and associated fundamentals [[186], [652], [99], [108]]
  c_25_10_1_False_resize <= resize(c_10, 26);
  c_25_10_1_False_shift <= shift_left(c_25_10_1_False_resize, 1);
  c_25_16_0_False_resize <= c_16;
  c_25_16_0_False_shift <= shift_left(c_25_16_0_False_resize, 0);
  with config_select_13 select c_25_sel <= 
    "0" when "01",
    "0" when "11",
    "0" when "00",
    "1" when others;
  with c_25_sel select c_25 <=
    c_25_10_1_False_shift when "0",
    c_25_16_0_False_shift when others;
  -- node of type 'output' in stage 13 with id 26 and associated fundamentals [[186], [652], [99], [108]]
  c_26_resize <= c_25;
  c_26 <= shift_left(c_26_resize, 0);
  -- node of type 'mux' in stage 13 with id 27 and associated fundamentals [[589], [507], [717], [83]]
  c_27_19_0_False_resize <= c_19;
  c_27_19_0_False_shift <= shift_left(c_27_19_0_False_resize, 0);
  c_27_22_0_False_resize <= c_22;
  c_27_22_0_False_shift <= shift_left(c_27_22_0_False_resize, 0);
  with config_select_13 select c_27_sel <= 
    "0" when "10",
    "0" when "11",
    "0" when "00",
    "1" when others;
  with c_27_sel select c_27 <=
    c_27_19_0_False_shift when "0",
    c_27_22_0_False_shift when others;
  -- node of type 'output' in stage 13 with id 28 and associated fundamentals [[589], [507], [717], [83]]
  c_28_resize <= c_27;
  c_28 <= shift_left(c_28_resize, 0);
  -- node of type 'mux' in stage 13 with id 29 and associated fundamentals [[794], [716], [161], [52]]
  c_29_7_0_False_resize <= resize(c_7, 26);
  c_29_7_0_False_shift <= shift_left(c_29_7_0_False_resize, 0);
  c_29_13_0_False_resize <= c_13;
  c_29_13_0_False_shift <= shift_left(c_29_13_0_False_resize, 0);
  c_29_16_1_False_resize <= c_16;
  c_29_16_1_False_shift <= shift_left(c_29_16_1_False_resize, 1);
  c_29_5_0_False_resize <= resize(c_5, 26);
  c_29_5_0_False_shift <= shift_left(c_29_5_0_False_resize, 0);
  with config_select_13 select c_29_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  with c_29_sel select c_29 <=
    c_29_7_0_False_shift when "00",
    c_29_13_0_False_shift when "01",
    c_29_16_1_False_shift when "10",
    c_29_5_0_False_shift when others;
  -- node of type 'output' in stage 13 with id 30 and associated fundamentals [[794], [716], [161], [52]]
  c_30_resize <= c_29;
  c_30 <= shift_left(c_30_resize, 0);
  -- node of type 'mux' in stage 13 with id 31 and associated fundamentals [[545], [456], [20], [954]]
  c_31_22_0_False_resize <= c_22;
  c_31_22_0_False_shift <= shift_left(c_31_22_0_False_resize, 0);
  c_31_19_1_False_resize <= c_19;
  c_31_19_1_False_shift <= shift_left(c_31_19_1_False_resize, 1);
  c_31_5_0_False_resize <= resize(c_5, 26);
  c_31_5_0_False_shift <= shift_left(c_31_5_0_False_resize, 0);
  with config_select_13 select c_31_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "01",
    "10" when others;
  with c_31_sel select c_31 <=
    c_31_22_0_False_shift when "00",
    c_31_19_1_False_shift when "01",
    c_31_5_0_False_shift when others;
  -- node of type 'output' in stage 13 with id 32 and associated fundamentals [[545], [456], [20], [954]]
  c_32_resize <= c_31;
  c_32 <= shift_left(c_32_resize, 0);
end architecture;
