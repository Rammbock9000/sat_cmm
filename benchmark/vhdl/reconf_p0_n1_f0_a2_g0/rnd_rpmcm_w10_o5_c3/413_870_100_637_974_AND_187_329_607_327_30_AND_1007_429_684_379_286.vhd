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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_0_2_False_resize: signed(17 downto 0);
  signal c_1_0_2_False_shift: signed(17 downto 0);
  signal c_1_0_0_False_resize: signed(17 downto 0);
  signal c_1_0_0_False_shift: signed(17 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(22 downto 0);
  signal c_2_i0_resize: signed(22 downto 0);
  signal c_2_i1_resize: signed(22 downto 0);
  signal c_2_i0_shift: signed(22 downto 0);
  signal c_2_i1_shift: signed(22 downto 0);
  signal c_2_arith: signed(22 downto 0);
  signal c_2_oshift: signed(22 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(20 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(20 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(23 downto 0);
  signal c_4_3_3_False_resize: signed(23 downto 0);
  signal c_4_3_3_False_shift: signed(23 downto 0);
  signal c_4_2_0_False_resize: signed(23 downto 0);
  signal c_4_2_0_False_shift: signed(23 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_2_0_False_resize: signed(22 downto 0);
  signal c_5_2_0_False_shift: signed(22 downto 0);
  signal c_5_0_0_False_resize: signed(22 downto 0);
  signal c_5_0_0_False_shift: signed(22 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(25 downto 0);
  signal c_6_i0_resize: signed(25 downto 0);
  signal c_6_i1_resize: signed(25 downto 0);
  signal c_6_i0_shift: signed(25 downto 0);
  signal c_6_i1_shift: signed(25 downto 0);
  signal c_6_arith: signed(25 downto 0);
  signal c_6_oshift: signed(25 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(22 downto 0);
  signal c_7_i0_resize: signed(22 downto 0);
  signal c_7_i1_resize: signed(22 downto 0);
  signal c_7_i0_shift: signed(22 downto 0);
  signal c_7_i1_shift: signed(22 downto 0);
  signal c_7_arith: signed(22 downto 0);
  signal c_7_oshift: signed(22 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(25 downto 0);
  signal c_8_7_0_False_resize: signed(25 downto 0);
  signal c_8_7_0_False_shift: signed(25 downto 0);
  signal c_8_3_5_False_resize: signed(25 downto 0);
  signal c_8_3_5_False_shift: signed(25 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(27 downto 0);
  signal c_9_i0_resize: signed(27 downto 0);
  signal c_9_i1_resize: signed(27 downto 0);
  signal c_9_i0_shift: signed(27 downto 0);
  signal c_9_i1_shift: signed(27 downto 0);
  signal c_9_arith: signed(27 downto 0);
  signal c_9_oshift: signed(27 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(23 downto 0);
  signal c_10_7_1_False_resize: signed(23 downto 0);
  signal c_10_7_1_False_shift: signed(23 downto 0);
  signal c_10_0_8_False_resize: signed(23 downto 0);
  signal c_10_0_8_False_shift: signed(23 downto 0);
  signal c_10_2_0_False_resize: signed(23 downto 0);
  signal c_10_2_0_False_shift: signed(23 downto 0);
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
  signal c_12_i0_resize: signed(27 downto 0);
  signal c_12_i1_resize: signed(27 downto 0);
  signal c_12_i0_shift: signed(27 downto 0);
  signal c_12_i1_shift: signed(27 downto 0);
  signal c_12_arith: signed(27 downto 0);
  signal c_12_oshift: signed(25 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_13_3_1_False_resize: signed(21 downto 0);
  signal c_13_3_1_False_shift: signed(21 downto 0);
  signal c_13_7_0_False_resize: signed(21 downto 0);
  signal c_13_7_0_False_shift: signed(21 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(24 downto 0);
  signal c_14_2_0_False_resize: signed(24 downto 0);
  signal c_14_2_0_False_shift: signed(24 downto 0);
  signal c_14_6_0_False_resize: signed(24 downto 0);
  signal c_14_6_0_False_shift: signed(24 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(24 downto 0);
  signal c_15_i0_resize: signed(24 downto 0);
  signal c_15_i1_resize: signed(24 downto 0);
  signal c_15_i0_shift: signed(24 downto 0);
  signal c_15_i1_shift: signed(24 downto 0);
  signal c_15_arith: signed(24 downto 0);
  signal c_15_oshift: signed(24 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(23 downto 0);
  signal c_16_7_1_False_resize: signed(23 downto 0);
  signal c_16_7_1_False_shift: signed(23 downto 0);
  signal c_16_3_0_False_resize: signed(23 downto 0);
  signal c_16_3_0_False_shift: signed(23 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(22 downto 0);
  signal c_17_0_0_False_resize: signed(22 downto 0);
  signal c_17_0_0_False_shift: signed(22 downto 0);
  signal c_17_7_0_False_resize: signed(22 downto 0);
  signal c_17_7_0_False_shift: signed(22 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_i0_resize: signed(25 downto 0);
  signal c_18_i1_resize: signed(25 downto 0);
  signal c_18_i0_shift: signed(25 downto 0);
  signal c_18_i1_shift: signed(25 downto 0);
  signal c_18_arith: signed(25 downto 0);
  signal c_18_oshift: signed(25 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(24 downto 0);
  signal c_19_15_0_False_resize: signed(24 downto 0);
  signal c_19_15_0_False_shift: signed(24 downto 0);
  signal c_19_0_2_False_resize: signed(24 downto 0);
  signal c_19_0_2_False_shift: signed(24 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(24 downto 0);
  signal c_20_15_1_False_resize: signed(24 downto 0);
  signal c_20_15_1_False_shift: signed(24 downto 0);
  signal c_20_6_0_False_resize: signed(24 downto 0);
  signal c_20_6_0_False_shift: signed(24 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_i0_resize: signed(25 downto 0);
  signal c_21_i1_resize: signed(25 downto 0);
  signal c_21_i0_shift: signed(25 downto 0);
  signal c_21_i1_shift: signed(25 downto 0);
  signal c_21_arith: signed(25 downto 0);
  signal c_21_oshift: signed(25 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_resize: signed(25 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_resize: signed(25 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_resize: signed(25 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_resize: signed(25 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_resize: signed(25 downto 0);
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
  -- output node 1 with id 23
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_23);
    end if;
  end process;
  -- output node 2 with id 24
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_24);
    end if;
  end process;
  -- output node 3 with id 25
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_25);
    end if;
  end process;
  -- output node 4 with id 26
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_26);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [4], [4]]
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  with config_select_1 select c_1_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_2_False_shift when "0",
    c_1_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 2 and associated fundamentals [[15], [65], [63]]
  with config_select_2 select c_2_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
      w_o => 23,
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
      x_i => c_1,
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(22 downto 0);
  -- node of type 'add_sub' in stage 1 with id 3 and associated fundamentals [[12], [20], [20]]
  with config_select_1 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 21,
      s_x_i => 4,
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(20 downto 0);
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[96], [65], [160]]
  c_4_3_3_False_resize <= resize(c_3, 24);
  c_4_3_3_False_shift <= shift_left(c_4_3_3_False_resize, 3);
  c_4_2_0_False_resize <= resize(c_2, 24);
  c_4_2_0_False_shift <= shift_left(c_4_2_0_False_resize, 0);
  with config_select_3 select c_4_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_3_3_False_shift when "0",
    c_4_2_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[1], [65], [63]]
  c_5_2_0_False_resize <= c_2;
  c_5_2_0_False_shift <= shift_left(c_5_2_0_False_resize, 0);
  c_5_0_0_False_resize <= resize(c_0, 23);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  with config_select_3 select c_5_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_2_0_False_shift when "0",
    c_5_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 6 and associated fundamentals [[383], [325], [703]]
  with config_select_4 select c_6_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
      w_o => 26,
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
      sub_i => c_6_sub_sel,
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(25 downto 0);
  -- node of type 'add_sub' in stage 2 with id 7 and associated fundamentals [[52], [76], [76]]
  with config_select_2 select c_7_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 16,
      w_o => 23,
      s_x_i => 2,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_7_sub_sel,
      x_i => c_3,
      y_i => c_0,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(22 downto 0);
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[384], [76], [640]]
  c_8_7_0_False_resize <= resize(c_7, 26);
  c_8_7_0_False_shift <= shift_left(c_8_7_0_False_resize, 0);
  c_8_3_5_False_resize <= resize(c_3, 26);
  c_8_3_5_False_shift <= shift_left(c_8_3_5_False_resize, 5);
  with config_select_3 select c_8_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_7_0_False_shift when "0",
    c_8_3_5_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 9 and associated fundamentals [[2560], [1328], [1536]]
  with config_select_4 select c_9_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 16,
      w_o => 28,
      s_x_i => 2,
      s_y_i => 10,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_9_sub_sel,
      x_i => c_8,
      y_i => c_0,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(27 downto 0);
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[15], [256], [152]]
  c_10_7_1_False_resize <= resize(c_7, 24);
  c_10_7_1_False_shift <= shift_left(c_10_7_1_False_resize, 1);
  c_10_0_8_False_resize <= resize(c_0, 24);
  c_10_0_8_False_shift <= shift_left(c_10_0_8_False_resize, 8);
  c_10_2_0_False_resize <= resize(c_2, 24);
  c_10_2_0_False_shift <= shift_left(c_10_2_0_False_resize, 0);
  with config_select_3 select c_10_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_10_sel select c_10 <=
    c_10_7_1_False_shift when "00",
    c_10_0_8_False_shift when "01",
    c_10_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 11 and associated fundamentals [[413], [187], [1007]]
  with config_select_5 select c_11_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_11_sub_sel,
      x_i => c_10,
      y_i => c_6,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(25 downto 0);
  -- node of type 'sub' in stage 5 with id 12 and associated fundamentals [[637], [327], [379]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 21,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 2,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_9,
      y_i => c_3,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(25 downto 0);
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[52], [40], [40]]
  c_13_3_1_False_resize <= resize(c_3, 22);
  c_13_3_1_False_shift <= shift_left(c_13_3_1_False_resize, 1);
  c_13_7_0_False_resize <= c_7(21 downto 0);
  c_13_7_0_False_shift <= shift_left(c_13_7_0_False_resize, 0);
  with config_select_3 select c_13_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_3_1_False_shift when "0",
    c_13_7_0_False_shift when others;
  -- node of type 'mux' in stage 5 with id 14 and associated fundamentals [[383], [65], [63]]
  c_14_2_0_False_resize <= resize(c_2, 25);
  c_14_2_0_False_shift <= shift_left(c_14_2_0_False_resize, 0);
  c_14_6_0_False_resize <= c_6(24 downto 0);
  c_14_6_0_False_shift <= shift_left(c_14_6_0_False_resize, 0);
  with config_select_5 select c_14_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_2_0_False_shift when "0",
    c_14_6_0_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 15 and associated fundamentals [[487], [15], [143]]
  with config_select_6 select c_15_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 25,
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
      sub_i => c_15_sub_sel,
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(24 downto 0);
  -- node of type 'mux' in stage 3 with id 16 and associated fundamentals [[12], [152], [152]]
  c_16_7_1_False_resize <= resize(c_7, 24);
  c_16_7_1_False_shift <= shift_left(c_16_7_1_False_resize, 1);
  c_16_3_0_False_resize <= resize(c_3, 24);
  c_16_3_0_False_shift <= shift_left(c_16_3_0_False_resize, 0);
  with config_select_3 select c_16_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_7_1_False_shift when "0",
    c_16_3_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 17 and associated fundamentals [[52], [1], [76]]
  c_17_0_0_False_resize <= resize(c_0, 23);
  c_17_0_0_False_shift <= shift_left(c_17_0_0_False_resize, 0);
  c_17_7_0_False_resize <= c_7;
  c_17_7_0_False_shift <= shift_left(c_17_7_0_False_resize, 0);
  with config_select_3 select c_17_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when others;
  with c_17_sel select c_17 <=
    c_17_0_0_False_shift when "0",
    c_17_7_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 18 and associated fundamentals [[100], [607], [684]]
  with config_select_4 select c_18_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
      w_o => 26,
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
      sub_i => c_18_sub_sel,
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  c_18 <= c_18_oshift(25 downto 0);
  -- node of type 'mux' in stage 7 with id 19 and associated fundamentals [[487], [4], [143]]
  c_19_15_0_False_resize <= c_15;
  c_19_15_0_False_shift <= shift_left(c_19_15_0_False_resize, 0);
  c_19_0_2_False_resize <= resize(c_0, 25);
  c_19_0_2_False_shift <= shift_left(c_19_0_2_False_resize, 2);
  with config_select_7 select c_19_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_19_sel select c_19 <=
    c_19_15_0_False_shift when "0",
    c_19_0_2_False_shift when others;
  -- node of type 'mux' in stage 7 with id 20 and associated fundamentals [[383], [325], [286]]
  c_20_15_1_False_resize <= c_15;
  c_20_15_1_False_shift <= shift_left(c_20_15_1_False_resize, 1);
  c_20_6_0_False_resize <= c_6(24 downto 0);
  c_20_6_0_False_shift <= shift_left(c_20_6_0_False_resize, 0);
  with config_select_7 select c_20_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_20_sel select c_20 <=
    c_20_15_1_False_shift when "0",
    c_20_6_0_False_shift when others;
  -- node of type 'add' in stage 8 with id 21 and associated fundamentals [[870], [329], [429]]
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  c_21 <= c_21_oshift(25 downto 0);
  -- node of type 'output' in stage 5 with id 22 and associated fundamentals [[413], [187], [1007]]
  c_22_resize <= c_11;
  c_22 <= shift_left(c_22_resize, 0);
  -- node of type 'output' in stage 8 with id 23 and associated fundamentals [[870], [329], [429]]
  c_23_resize <= c_21;
  c_23 <= shift_left(c_23_resize, 0);
  -- node of type 'output' in stage 4 with id 24 and associated fundamentals [[100], [607], [684]]
  c_24_resize <= c_18;
  c_24 <= shift_left(c_24_resize, 0);
  -- node of type 'output' in stage 5 with id 25 and associated fundamentals [[637], [327], [379]]
  c_25_resize <= c_12;
  c_25 <= shift_left(c_25_resize, 0);
  -- node of type 'output' in stage 6 with id 26 and associated fundamentals [[974], [30], [286]]
  c_26_resize <= resize(c_15, 26);
  c_26 <= shift_left(c_26_resize, 1);
end architecture;
