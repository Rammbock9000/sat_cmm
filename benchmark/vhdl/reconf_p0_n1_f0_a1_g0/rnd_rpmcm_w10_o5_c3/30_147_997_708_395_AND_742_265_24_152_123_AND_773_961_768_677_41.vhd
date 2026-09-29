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
    y_4: out std_logic_vector(24 downto 0);
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
  signal c_1: signed(19 downto 0);
  signal c_1_0_4_False_resize: signed(19 downto 0);
  signal c_1_0_4_False_shift: signed(19 downto 0);
  signal c_1_0_0_False_resize: signed(19 downto 0);
  signal c_1_0_0_False_shift: signed(19 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(21 downto 0);
  signal c_2_i0_resize: signed(21 downto 0);
  signal c_2_i1_resize: signed(21 downto 0);
  signal c_2_i0_shift: signed(21 downto 0);
  signal c_2_i1_shift: signed(21 downto 0);
  signal c_2_arith: signed(21 downto 0);
  signal c_2_oshift: signed(21 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(21 downto 0);
  signal c_3_2_0_False_resize: signed(21 downto 0);
  signal c_3_2_0_False_shift: signed(21 downto 0);
  signal c_3_2_1_False_resize: signed(21 downto 0);
  signal c_3_2_1_False_shift: signed(21 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(22 downto 0);
  signal c_4_i0_resize: signed(22 downto 0);
  signal c_4_i1_resize: signed(22 downto 0);
  signal c_4_i0_shift: signed(22 downto 0);
  signal c_4_i1_shift: signed(22 downto 0);
  signal c_4_arith: signed(22 downto 0);
  signal c_4_oshift: signed(22 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(24 downto 0);
  signal c_5_i0_resize: signed(24 downto 0);
  signal c_5_i1_resize: signed(24 downto 0);
  signal c_5_i0_shift: signed(24 downto 0);
  signal c_5_i1_shift: signed(24 downto 0);
  signal c_5_arith: signed(24 downto 0);
  signal c_5_oshift: signed(24 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(19 downto 0);
  signal c_6_i0_resize: signed(19 downto 0);
  signal c_6_i1_resize: signed(19 downto 0);
  signal c_6_i0_shift: signed(19 downto 0);
  signal c_6_i1_shift: signed(19 downto 0);
  signal c_6_arith: signed(19 downto 0);
  signal c_6_oshift: signed(19 downto 0);
  signal c_7: signed(21 downto 0);
  signal c_7_5_1_False_resize: signed(21 downto 0);
  signal c_7_5_1_False_shift: signed(21 downto 0);
  signal c_7_2_0_False_resize: signed(21 downto 0);
  signal c_7_2_0_False_shift: signed(21 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_8_i0_resize: signed(23 downto 0);
  signal c_8_i1_resize: signed(23 downto 0);
  signal c_8_i0_shift: signed(23 downto 0);
  signal c_8_i1_shift: signed(23 downto 0);
  signal c_8_arith: signed(23 downto 0);
  signal c_8_oshift: signed(23 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(21 downto 0);
  signal c_9_2_4_False_resize: signed(21 downto 0);
  signal c_9_2_4_False_shift: signed(21 downto 0);
  signal c_9_2_0_False_resize: signed(21 downto 0);
  signal c_9_2_0_False_shift: signed(21 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_8_1_False_resize: signed(23 downto 0);
  signal c_10_8_1_False_shift: signed(23 downto 0);
  signal c_10_8_0_False_resize: signed(23 downto 0);
  signal c_10_8_0_False_shift: signed(23 downto 0);
  signal c_10_5_0_False_resize: signed(23 downto 0);
  signal c_10_5_0_False_shift: signed(23 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(25 downto 0);
  signal c_11_i0_resize: signed(25 downto 0);
  signal c_11_i1_resize: signed(25 downto 0);
  signal c_11_i0_shift: signed(25 downto 0);
  signal c_11_i1_shift: signed(25 downto 0);
  signal c_11_arith: signed(25 downto 0);
  signal c_11_oshift: signed(25 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(25 downto 0);
  signal c_12_4_0_False_resize: signed(25 downto 0);
  signal c_12_4_0_False_shift: signed(25 downto 0);
  signal c_12_8_3_False_resize: signed(25 downto 0);
  signal c_12_8_3_False_shift: signed(25 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(25 downto 0);
  signal c_13_i0_resize: signed(25 downto 0);
  signal c_13_i1_resize: signed(25 downto 0);
  signal c_13_i0_shift: signed(25 downto 0);
  signal c_13_i1_shift: signed(25 downto 0);
  signal c_13_arith: signed(25 downto 0);
  signal c_13_oshift: signed(25 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(25 downto 0);
  signal c_14_5_2_False_resize: signed(25 downto 0);
  signal c_14_5_2_False_shift: signed(25 downto 0);
  signal c_14_11_0_False_resize: signed(25 downto 0);
  signal c_14_11_0_False_shift: signed(25 downto 0);
  signal c_14_0_5_False_resize: signed(25 downto 0);
  signal c_14_0_5_False_shift: signed(25 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(19 downto 0);
  signal c_15_2_2_False_resize: signed(19 downto 0);
  signal c_15_2_2_False_shift: signed(19 downto 0);
  signal c_15_6_0_False_resize: signed(19 downto 0);
  signal c_15_6_0_False_shift: signed(19 downto 0);
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
  signal c_17_6_1_False_resize: signed(25 downto 0);
  signal c_17_6_1_False_shift: signed(25 downto 0);
  signal c_17_11_0_False_resize: signed(25 downto 0);
  signal c_17_11_0_False_shift: signed(25 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_resize: signed(25 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_5_0_False_resize: signed(25 downto 0);
  signal c_19_5_0_False_shift: signed(25 downto 0);
  signal c_19_13_0_False_resize: signed(25 downto 0);
  signal c_19_13_0_False_shift: signed(25 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_resize: signed(25 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_13_0_False_resize: signed(25 downto 0);
  signal c_21_13_0_False_shift: signed(25 downto 0);
  signal c_21_2_8_False_resize: signed(25 downto 0);
  signal c_21_2_8_False_shift: signed(25 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_resize: signed(25 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_resize: signed(25 downto 0);
  signal c_24: signed(24 downto 0);
  signal c_24_11_0_False_resize: signed(24 downto 0);
  signal c_24_11_0_False_shift: signed(24 downto 0);
  signal c_24_8_0_False_resize: signed(24 downto 0);
  signal c_24_8_0_False_shift: signed(24 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(24 downto 0);
  signal c_25_resize: signed(24 downto 0);
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
  -- output node 0 with id 18
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_18);
    end if;
  end process;
  -- output node 1 with id 20
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_20);
    end if;
  end process;
  -- output node 2 with id 22
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_22);
    end if;
  end process;
  -- output node 3 with id 23
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_23);
    end if;
  end process;
  -- output node 4 with id 25
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_25);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[16], [16], [1]]
  c_1_0_4_False_resize <= resize(c_0, 20);
  c_1_0_4_False_shift <= shift_left(c_1_0_4_False_resize, 4);
  c_1_0_0_False_resize <= resize(c_0, 20);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_4_False_shift when "0",
    c_1_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 2 and associated fundamentals [[33], [31], [3]]
  with config_select_2 select c_2_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 16,
      w_o => 22,
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
      sub_i => c_2_sub_sel,
      x_i => c_1,
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(21 downto 0);
  -- node of type 'mux' in stage 3 with id 3 and associated fundamentals [[33], [62], [3]]
  c_3_2_0_False_resize <= c_2;
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  c_3_2_1_False_resize <= c_2;
  c_3_2_1_False_shift <= shift_left(c_3_2_1_False_resize, 1);
  with config_select_3 select c_3_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_2_0_False_shift when "0",
    c_3_2_1_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 4 and associated fundamentals [[37], [66], [1]]
  with config_select_4 select c_4_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 22,
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
      sub_i => c_4_sub_sel,
      x_i => c_0,
      y_i => c_3,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(22 downto 0);
  -- node of type 'add_sub' in stage 5 with id 5 and associated fundamentals [[147], [265], [5]]
  with config_select_5 select c_5_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 16,
      w_o => 25,
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
      sub_i => c_5_sub_sel,
      x_i => c_4,
      y_i => c_0,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(24 downto 0);
  -- node of type 'sub' in stage 1 with id 6 and associated fundamentals [[15], [15], [15]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
      s_x_i => 4,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_0,
      y_i => c_0,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(19 downto 0);
  -- node of type 'mux' in stage 6 with id 7 and associated fundamentals [[33], [31], [10]]
  c_7_5_1_False_resize <= c_5(21 downto 0);
  c_7_5_1_False_shift <= shift_left(c_7_5_1_False_resize, 1);
  c_7_2_0_False_resize <= c_2;
  c_7_2_0_False_shift <= shift_left(c_7_2_0_False_resize, 0);
  with config_select_6 select c_7_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_5_1_False_shift when "0",
    c_7_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 7 with id 8 and associated fundamentals [[133], [123], [41]]
  with config_select_7 select c_8_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 16,
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
      sub_i => c_8_sub_sel,
      x_i => c_7,
      y_i => c_0,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[33], [31], [48]]
  c_9_2_4_False_resize <= c_2;
  c_9_2_4_False_shift <= shift_left(c_9_2_4_False_resize, 4);
  c_9_2_0_False_resize <= c_2;
  c_9_2_0_False_shift <= shift_left(c_9_2_0_False_resize, 0);
  with config_select_3 select c_9_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_2_4_False_shift when "0",
    c_9_2_0_False_shift when others;
  -- node of type 'mux' in stage 8 with id 10 and associated fundamentals [[133], [246], [5]]
  c_10_8_1_False_resize <= c_8;
  c_10_8_1_False_shift <= shift_left(c_10_8_1_False_resize, 1);
  c_10_8_0_False_resize <= c_8;
  c_10_8_0_False_shift <= shift_left(c_10_8_0_False_resize, 0);
  c_10_5_0_False_resize <= c_5(23 downto 0);
  c_10_5_0_False_shift <= shift_left(c_10_5_0_False_resize, 0);
  with config_select_8 select c_10_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_10_sel select c_10 <=
    c_10_8_1_False_shift when "00",
    c_10_8_0_False_shift when "01",
    c_10_5_0_False_shift when others;
  -- node of type 'add_sub' in stage 9 with id 11 and associated fundamentals [[395], [742], [773]]
  with config_select_9 select c_11_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 24,
      w_o => 26,
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
      sub_i => c_11_sub_sel,
      x_i => c_9,
      y_i => c_10,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(25 downto 0);
  -- node of type 'mux' in stage 8 with id 12 and associated fundamentals [[37], [984], [1]]
  c_12_4_0_False_resize <= resize(c_4, 26);
  c_12_4_0_False_shift <= shift_left(c_12_4_0_False_resize, 0);
  c_12_8_3_False_resize <= resize(c_8, 26);
  c_12_8_3_False_shift <= shift_left(c_12_8_3_False_resize, 3);
  with config_select_8 select c_12_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_12_sel select c_12 <=
    c_12_4_0_False_shift when "0",
    c_12_8_3_False_shift when others;
  -- node of type 'add_sub' in stage 9 with id 13 and associated fundamentals [[997], [24], [961]]
  with config_select_9 select c_13_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 20,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 6,
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
      y_i => c_6,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(25 downto 0);
  -- node of type 'mux' in stage 10 with id 14 and associated fundamentals [[588], [32], [773]]
  c_14_5_2_False_resize <= resize(c_5, 26);
  c_14_5_2_False_shift <= shift_left(c_14_5_2_False_resize, 2);
  c_14_11_0_False_resize <= c_11;
  c_14_11_0_False_shift <= shift_left(c_14_11_0_False_resize, 0);
  c_14_0_5_False_resize <= resize(c_0, 26);
  c_14_0_5_False_shift <= shift_left(c_14_0_5_False_resize, 5);
  with config_select_10 select c_14_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_14_sel select c_14 <=
    c_14_5_2_False_shift when "00",
    c_14_11_0_False_shift when "01",
    c_14_0_5_False_shift when others;
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[15], [15], [12]]
  c_15_2_2_False_resize <= c_2(19 downto 0);
  c_15_2_2_False_shift <= shift_left(c_15_2_2_False_resize, 2);
  c_15_6_0_False_resize <= c_6;
  c_15_6_0_False_shift <= shift_left(c_15_6_0_False_resize, 0);
  with config_select_3 select c_15_sel <= 
    "0" when "10",
    "1" when "01",
    "1" when others;
  with c_15_sel select c_15 <=
    c_15_2_2_False_shift when "0",
    c_15_6_0_False_shift when others;
  -- node of type 'add_sub' in stage 11 with id 16 and associated fundamentals [[708], [152], [677]]
  with config_select_11 select c_16_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 20,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 3,
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
  -- node of type 'mux' in stage 10 with id 17 and associated fundamentals [[30], [742], [773]]
  c_17_6_1_False_resize <= resize(c_6, 26);
  c_17_6_1_False_shift <= shift_left(c_17_6_1_False_resize, 1);
  c_17_11_0_False_resize <= c_11;
  c_17_11_0_False_shift <= shift_left(c_17_11_0_False_resize, 0);
  with config_select_10 select c_17_sel <= 
    "0" when "00",
    "1" when "10",
    "1" when others;
  with c_17_sel select c_17 <=
    c_17_6_1_False_shift when "0",
    c_17_11_0_False_shift when others;
  -- node of type 'output' in stage 10 with id 18 and associated fundamentals [[30], [742], [773]]
  c_18_resize <= c_17;
  c_18 <= shift_left(c_18_resize, 0);
  -- node of type 'mux' in stage 10 with id 19 and associated fundamentals [[147], [265], [961]]
  c_19_5_0_False_resize <= resize(c_5, 26);
  c_19_5_0_False_shift <= shift_left(c_19_5_0_False_resize, 0);
  c_19_13_0_False_resize <= c_13;
  c_19_13_0_False_shift <= shift_left(c_19_13_0_False_resize, 0);
  with config_select_10 select c_19_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_19_sel select c_19 <=
    c_19_5_0_False_shift when "0",
    c_19_13_0_False_shift when others;
  -- node of type 'output' in stage 10 with id 20 and associated fundamentals [[147], [265], [961]]
  c_20_resize <= c_19;
  c_20 <= shift_left(c_20_resize, 0);
  -- node of type 'mux' in stage 10 with id 21 and associated fundamentals [[997], [24], [768]]
  c_21_13_0_False_resize <= c_13;
  c_21_13_0_False_shift <= shift_left(c_21_13_0_False_resize, 0);
  c_21_2_8_False_resize <= resize(c_2, 26);
  c_21_2_8_False_shift <= shift_left(c_21_2_8_False_resize, 8);
  with config_select_10 select c_21_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_21_sel select c_21 <=
    c_21_13_0_False_shift when "0",
    c_21_2_8_False_shift when others;
  -- node of type 'output' in stage 10 with id 22 and associated fundamentals [[997], [24], [768]]
  c_22_resize <= c_21;
  c_22 <= shift_left(c_22_resize, 0);
  -- node of type 'output' in stage 11 with id 23 and associated fundamentals [[708], [152], [677]]
  c_23_resize <= c_16;
  c_23 <= shift_left(c_23_resize, 0);
  -- node of type 'mux' in stage 10 with id 24 and associated fundamentals [[395], [123], [41]]
  c_24_11_0_False_resize <= c_11(24 downto 0);
  c_24_11_0_False_shift <= shift_left(c_24_11_0_False_resize, 0);
  c_24_8_0_False_resize <= resize(c_8, 25);
  c_24_8_0_False_shift <= shift_left(c_24_8_0_False_resize, 0);
  with config_select_10 select c_24_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_24_sel select c_24 <=
    c_24_11_0_False_shift when "0",
    c_24_8_0_False_shift when others;
  -- node of type 'output' in stage 10 with id 25 and associated fundamentals [[395], [123], [41]]
  c_25_resize <= c_24;
  c_25 <= shift_left(c_25_resize, 0);
end architecture;
