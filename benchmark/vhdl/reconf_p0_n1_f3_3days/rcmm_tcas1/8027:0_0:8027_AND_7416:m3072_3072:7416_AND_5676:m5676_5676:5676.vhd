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
  signal c_0: signed(18 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_2: signed(21 downto 0);
  signal c_2_i0_resize: signed(21 downto 0);
  signal c_2_i1_resize: signed(21 downto 0);
  signal c_2_i0_shift: signed(21 downto 0);
  signal c_2_i1_shift: signed(21 downto 0);
  signal c_2_arith: signed(21 downto 0);
  signal c_2_oshift: signed(21 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(24 downto 0);
  signal c_3_0_0_False_resize: signed(24 downto 0);
  signal c_3_0_0_False_shift: signed(24 downto 0);
  signal c_3_0_6_False_resize: signed(24 downto 0);
  signal c_3_0_6_False_shift: signed(24 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(26 downto 0);
  signal c_4_2_0_False_resize: signed(26 downto 0);
  signal c_4_2_0_False_shift: signed(26 downto 0);
  signal c_4_0_8_False_resize: signed(26 downto 0);
  signal c_4_0_8_False_shift: signed(26 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(28 downto 0);
  signal c_5_i0_resize: signed(28 downto 0);
  signal c_5_i1_resize: signed(28 downto 0);
  signal c_5_i0_shift: signed(28 downto 0);
  signal c_5_i1_shift: signed(28 downto 0);
  signal c_5_arith: signed(28 downto 0);
  signal c_5_oshift: signed(28 downto 0);
  signal c_6: signed(27 downto 0);
  signal c_6_5_0_False_resize: signed(27 downto 0);
  signal c_6_5_0_False_shift: signed(27 downto 0);
  signal c_6_5_3_False_resize: signed(27 downto 0);
  signal c_6_5_3_False_shift: signed(27 downto 0);
  signal c_6_2_1_False_resize: signed(27 downto 0);
  signal c_6_2_1_False_shift: signed(27 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(31 downto 0);
  signal c_7_i0_resize: signed(31 downto 0);
  signal c_7_i1_resize: signed(31 downto 0);
  signal c_7_i0_shift: signed(31 downto 0);
  signal c_7_i1_shift: signed(31 downto 0);
  signal c_7_arith: signed(31 downto 0);
  signal c_7_oshift: signed(31 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(28 downto 0);
  signal c_8_2_8_False_resize: signed(28 downto 0);
  signal c_8_2_8_False_shift: signed(28 downto 0);
  signal c_8_1_0_False_resize: signed(28 downto 0);
  signal c_8_1_0_False_shift: signed(28 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(29 downto 0);
  signal c_9_i0_resize: signed(29 downto 0);
  signal c_9_i1_resize: signed(29 downto 0);
  signal c_9_i0_shift: signed(29 downto 0);
  signal c_9_i1_shift: signed(29 downto 0);
  signal c_9_arith: signed(29 downto 0);
  signal c_9_oshift: signed(29 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(21 downto 0);
  signal c_10_1_3_False_resize: signed(21 downto 0);
  signal c_10_1_3_False_shift: signed(21 downto 0);
  signal c_10_1_0_False_resize: signed(21 downto 0);
  signal c_10_1_0_False_shift: signed(21 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(28 downto 0);
  signal c_11_1_10_False_resize: signed(28 downto 0);
  signal c_11_1_10_False_shift: signed(28 downto 0);
  signal c_11_1_0_False_resize: signed(28 downto 0);
  signal c_11_1_0_False_shift: signed(28 downto 0);
  signal c_11_9_1_False_resize: signed(28 downto 0);
  signal c_11_9_1_False_shift: signed(28 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(28 downto 0);
  signal c_12_i0_resize: signed(28 downto 0);
  signal c_12_i1_resize: signed(28 downto 0);
  signal c_12_i0_shift: signed(28 downto 0);
  signal c_12_i1_shift: signed(28 downto 0);
  signal c_12_arith: signed(28 downto 0);
  signal c_12_oshift: signed(28 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(29 downto 0);
  signal c_13_12_0_False_resize: signed(29 downto 0);
  signal c_13_12_0_False_shift: signed(29 downto 0);
  signal c_13_12_5_False_resize: signed(29 downto 0);
  signal c_13_12_5_False_shift: signed(29 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(31 downto 0);
  signal c_14_12_0_False_resize: signed(31 downto 0);
  signal c_14_12_0_False_shift: signed(31 downto 0);
  signal c_14_7_3_False_resize: signed(31 downto 0);
  signal c_14_7_3_False_shift: signed(31 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(32 downto 0);
  signal c_15_i0_resize: signed(32 downto 0);
  signal c_15_i1_resize: signed(32 downto 0);
  signal c_15_i0_shift: signed(32 downto 0);
  signal c_15_i1_shift: signed(32 downto 0);
  signal c_15_arith: signed(32 downto 0);
  signal c_15_oshift: signed(32 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(31 downto 0);
  signal c_16_1_13_False_resize: signed(31 downto 0);
  signal c_16_1_13_False_shift: signed(31 downto 0);
  signal c_16_7_0_False_resize: signed(31 downto 0);
  signal c_16_7_0_False_shift: signed(31 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(31 downto 0);
  signal c_17_15_0_False_resize: signed(31 downto 0);
  signal c_17_15_0_False_shift: signed(31 downto 0);
  signal c_17_12_0_False_resize: signed(31 downto 0);
  signal c_17_12_0_False_shift: signed(31 downto 0);
  signal c_17_0_13_False_resize: signed(31 downto 0);
  signal c_17_0_13_False_shift: signed(31 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(32 downto 0);
  signal c_18_i0_resize: signed(32 downto 0);
  signal c_18_i1_resize: signed(32 downto 0);
  signal c_18_i0_shift: signed(32 downto 0);
  signal c_18_i1_shift: signed(32 downto 0);
  signal c_18_arith: signed(32 downto 0);
  signal c_18_oshift: signed(32 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(31 downto 0);
  signal c_19_1_13_False_resize: signed(31 downto 0);
  signal c_19_1_13_False_shift: signed(31 downto 0);
  signal c_19_7_0_False_resize: signed(31 downto 0);
  signal c_19_7_0_False_shift: signed(31 downto 0);
  signal c_19_18_0_False_resize: signed(31 downto 0);
  signal c_19_18_0_False_shift: signed(31 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(31 downto 0);
  signal c_20_15_0_False_resize: signed(31 downto 0);
  signal c_20_15_0_False_shift: signed(31 downto 0);
  signal c_20_9_1_False_resize: signed(31 downto 0);
  signal c_20_9_1_False_shift: signed(31 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(32 downto 0);
  signal c_21_i0_resize: signed(32 downto 0);
  signal c_21_i1_resize: signed(32 downto 0);
  signal c_21_i0_shift: signed(32 downto 0);
  signal c_21_i1_shift: signed(32 downto 0);
  signal c_21_arith: signed(32 downto 0);
  signal c_21_oshift: signed(32 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(32 downto 0);
  signal c_22_18_0_False_resize: signed(32 downto 0);
  signal c_22_18_0_False_shift: signed(32 downto 0);
  signal c_22_15_0_False_resize: signed(32 downto 0);
  signal c_22_15_0_False_shift: signed(32 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(32 downto 0);
  signal c_23_resize: signed(32 downto 0);
  signal c_24: signed(32 downto 0);
  signal c_24_resize: signed(32 downto 0);
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
      c_0 <= signed(x_0 & "000");
    end if;
  end process;
  -- input node 1 with id 1
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= signed(x_1 & "000");
    end if;
  end process;
  -- output node 0 with id 23
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_23(32 downto 3));
    end if;
  end process;
  -- output node 1 with id 24
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_24(32 downto 3));
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 2 and associated fundamentals [[24, 0], [24, 0], [40, 0]]
  with config_select_1 select c_2_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 22,
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
      sub_i => c_2_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(21 downto 0);
  -- node of type 'mux' in stage 1 with id 3 and associated fundamentals [[8, 0], [8, 0], [512, 0]]
  c_3_0_0_False_resize <= resize(c_0, 25);
  c_3_0_0_False_shift <= shift_left(c_3_0_0_False_resize, 0);
  c_3_0_6_False_resize <= resize(c_0, 25);
  c_3_0_6_False_shift <= shift_left(c_3_0_6_False_resize, 6);
  with config_select_1 select c_3_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_0_0_False_shift when "0",
    c_3_0_6_False_shift when others;
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[24, 0], [2048, 0], [40, 0]]
  c_4_2_0_False_resize <= resize(c_2, 27);
  c_4_2_0_False_shift <= shift_left(c_4_2_0_False_resize, 0);
  c_4_0_8_False_resize <= resize(c_0, 27);
  c_4_0_8_False_shift <= shift_left(c_4_0_8_False_resize, 8);
  with config_select_2 select c_4_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_2_0_False_shift when "0",
    c_4_0_8_False_shift when others;
  -- node of type 'sub' in stage 3 with id 5 and associated fundamentals [[-88, 0], [-8184, 0], [352, 0]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 27,
      w_o => 29,
      s_x_i => 0,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(28 downto 0);
  -- node of type 'mux' in stage 4 with id 6 and associated fundamentals [[-88, 0], [48, 0], [2816, 0]]
  c_6_5_0_False_resize <= c_5(27 downto 0);
  c_6_5_0_False_shift <= shift_left(c_6_5_0_False_resize, 0);
  c_6_5_3_False_resize <= c_5(27 downto 0);
  c_6_5_3_False_shift <= shift_left(c_6_5_3_False_resize, 3);
  c_6_2_1_False_resize <= resize(c_2, 28);
  c_6_2_1_False_shift <= shift_left(c_6_2_1_False_resize, 1);
  with config_select_4 select c_6_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_6_sel select c_6 <=
    c_6_5_0_False_shift when "00",
    c_6_5_3_False_shift when "01",
    c_6_2_1_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 7 and associated fundamentals [[-1320, 0], [-7416, 0], [45408, 0]]
  with config_select_5 select c_7_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 29,
      w_o => 32,
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
      sub_i => c_7_sub_sel,
      x_i => c_6,
      y_i => c_5,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(31 downto 0);
  -- node of type 'mux' in stage 2 with id 8 and associated fundamentals [[6144, 0], [6144, 0], [0, 8]]
  c_8_2_8_False_resize <= resize(c_2, 29);
  c_8_2_8_False_shift <= shift_left(c_8_2_8_False_resize, 8);
  c_8_1_0_False_resize <= resize(c_1, 29);
  c_8_1_0_False_shift <= shift_left(c_8_1_0_False_resize, 0);
  with config_select_2 select c_8_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_2_8_False_shift when "0",
    c_8_1_0_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 9 and associated fundamentals [[12288, 32], [-12288, 32], [0, 48]]
  with config_select_3 select c_9_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 29,
      w_o => 30,
      s_x_i => 2,
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
      x_i => c_1,
      y_i => c_8,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(29 downto 0);
  -- node of type 'mux' in stage 1 with id 10 and associated fundamentals [[0, 8], [0, 64], [0, 8]]
  c_10_1_3_False_resize <= resize(c_1, 22);
  c_10_1_3_False_shift <= shift_left(c_10_1_3_False_resize, 3);
  c_10_1_0_False_resize <= resize(c_1, 22);
  c_10_1_0_False_shift <= shift_left(c_10_1_0_False_resize, 0);
  with config_select_1 select c_10_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_10_sel select c_10 <=
    c_10_1_3_False_shift when "0",
    c_10_1_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 11 and associated fundamentals [[0, 8], [0, 8192], [0, 96]]
  c_11_1_10_False_resize <= resize(c_1, 29);
  c_11_1_10_False_shift <= shift_left(c_11_1_10_False_resize, 10);
  c_11_1_0_False_resize <= resize(c_1, 29);
  c_11_1_0_False_shift <= shift_left(c_11_1_0_False_resize, 0);
  c_11_9_1_False_resize <= c_9(28 downto 0);
  c_11_9_1_False_shift <= shift_left(c_11_9_1_False_resize, 1);
  with config_select_4 select c_11_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_11_sel select c_11 <=
    c_11_1_10_False_shift when "00",
    c_11_1_0_False_shift when "01",
    c_11_9_1_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 12 and associated fundamentals [[0, 264], [0, -6144], [0, 352]]
  with config_select_5 select c_12_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 29,
      w_o => 29,
      s_x_i => 5,
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
  c_12 <= c_12_oshift(28 downto 0);
  -- node of type 'mux' in stage 6 with id 13 and associated fundamentals [[0, 264], [0, -6144], [0, 11264]]
  c_13_12_0_False_resize <= resize(c_12, 30);
  c_13_12_0_False_shift <= shift_left(c_13_12_0_False_resize, 0);
  c_13_12_5_False_resize <= resize(c_12, 30);
  c_13_12_5_False_shift <= shift_left(c_13_12_5_False_resize, 5);
  with config_select_6 select c_13_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_12_0_False_shift when "0",
    c_13_12_5_False_shift when others;
  -- node of type 'mux' in stage 6 with id 14 and associated fundamentals [[0, 264], [-59328, 0], [0, 352]]
  c_14_12_0_False_resize <= resize(c_12, 32);
  c_14_12_0_False_shift <= shift_left(c_14_12_0_False_resize, 0);
  c_14_7_3_False_resize <= c_7;
  c_14_7_3_False_shift <= shift_left(c_14_7_3_False_resize, 3);
  with config_select_6 select c_14_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_12_0_False_shift when "0",
    c_14_7_3_False_shift when others;
  -- node of type 'add_sub' in stage 7 with id 15 and associated fundamentals [[0, 1320], [59328, -24576], [0, 45408]]
  with config_select_7 select c_15_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 32,
      w_o => 33,
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
      sub_i => c_15_sub_sel,
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(32 downto 0);
  -- node of type 'mux' in stage 6 with id 16 and associated fundamentals [[-1320, 0], [0, 65536], [45408, 0]]
  c_16_1_13_False_resize <= resize(c_1, 32);
  c_16_1_13_False_shift <= shift_left(c_16_1_13_False_resize, 13);
  c_16_7_0_False_resize <= c_7;
  c_16_7_0_False_shift <= shift_left(c_16_7_0_False_resize, 0);
  with config_select_6 select c_16_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_1_13_False_shift when "0",
    c_16_7_0_False_shift when others;
  -- node of type 'mux' in stage 8 with id 17 and associated fundamentals [[65536, 0], [0, -6144], [0, 45408]]
  c_17_15_0_False_resize <= c_15(31 downto 0);
  c_17_15_0_False_shift <= shift_left(c_17_15_0_False_resize, 0);
  c_17_12_0_False_resize <= resize(c_12, 32);
  c_17_12_0_False_shift <= shift_left(c_17_12_0_False_resize, 0);
  c_17_0_13_False_resize <= resize(c_0, 32);
  c_17_0_13_False_shift <= shift_left(c_17_0_13_False_resize, 13);
  with config_select_8 select c_17_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_17_sel select c_17 <=
    c_17_15_0_False_shift when "00",
    c_17_12_0_False_shift when "01",
    c_17_0_13_False_shift when others;
  -- node of type 'add_sub' in stage 9 with id 18 and associated fundamentals [[64216, 0], [0, 59392], [45408, -45408]]
  with config_select_9 select c_18_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 32,
      w_y_i => 32,
      w_o => 33,
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
  c_18 <= c_18_oshift(32 downto 0);
  -- node of type 'mux' in stage 10 with id 19 and associated fundamentals [[0, 65536], [0, 59392], [45408, 0]]
  c_19_1_13_False_resize <= resize(c_1, 32);
  c_19_1_13_False_shift <= shift_left(c_19_1_13_False_resize, 13);
  c_19_7_0_False_resize <= c_7;
  c_19_7_0_False_shift <= shift_left(c_19_7_0_False_resize, 0);
  c_19_18_0_False_resize <= c_18(31 downto 0);
  c_19_18_0_False_shift <= shift_left(c_19_18_0_False_resize, 0);
  with config_select_10 select c_19_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_19_sel select c_19 <=
    c_19_1_13_False_shift when "00",
    c_19_7_0_False_shift when "01",
    c_19_18_0_False_shift when others;
  -- node of type 'mux' in stage 8 with id 20 and associated fundamentals [[0, 1320], [-24576, 64], [0, 45408]]
  c_20_15_0_False_resize <= c_15(31 downto 0);
  c_20_15_0_False_shift <= shift_left(c_20_15_0_False_resize, 0);
  c_20_9_1_False_resize <= resize(c_9, 32);
  c_20_9_1_False_shift <= shift_left(c_20_9_1_False_resize, 1);
  with config_select_8 select c_20_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_20_sel select c_20 <=
    c_20_15_0_False_shift when "0",
    c_20_9_1_False_shift when others;
  -- node of type 'add_sub' in stage 11 with id 21 and associated fundamentals [[0, 64216], [24576, 59328], [45408, 45408]]
  with config_select_11 select c_21_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 32,
      w_y_i => 32,
      w_o => 33,
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
  c_21 <= c_21_oshift(32 downto 0);
  -- node of type 'mux' in stage 10 with id 22 and associated fundamentals [[64216, 0], [59328, -24576], [45408, -45408]]
  c_22_18_0_False_resize <= c_18;
  c_22_18_0_False_shift <= shift_left(c_22_18_0_False_resize, 0);
  c_22_15_0_False_resize <= c_15;
  c_22_15_0_False_shift <= shift_left(c_22_15_0_False_resize, 0);
  with config_select_10 select c_22_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_22_sel select c_22 <=
    c_22_18_0_False_shift when "0",
    c_22_15_0_False_shift when others;
  -- node of type 'output' in stage 10 with id 23 and associated fundamentals [[64216, 0], [59328, -24576], [45408, -45408]]
  c_23_resize <= c_22;
  c_23 <= shift_left(c_23_resize, 0);
  -- node of type 'output' in stage 11 with id 24 and associated fundamentals [[0, 64216], [24576, 59328], [45408, 45408]]
  c_24_resize <= c_21;
  c_24 <= shift_left(c_24_resize, 0);
end architecture;
