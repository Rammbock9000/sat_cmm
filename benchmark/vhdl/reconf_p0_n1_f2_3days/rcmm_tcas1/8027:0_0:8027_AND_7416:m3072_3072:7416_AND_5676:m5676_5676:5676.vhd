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
  signal c_0: signed(17 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_2: signed(23 downto 0);
  signal c_2_1_6_False_resize: signed(23 downto 0);
  signal c_2_1_6_False_shift: signed(23 downto 0);
  signal c_2_1_0_False_resize: signed(23 downto 0);
  signal c_2_1_0_False_shift: signed(23 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(23 downto 0);
  signal c_3_i0_resize: signed(23 downto 0);
  signal c_3_i1_resize: signed(23 downto 0);
  signal c_3_i0_shift: signed(23 downto 0);
  signal c_3_i1_shift: signed(23 downto 0);
  signal c_3_arith: signed(23 downto 0);
  signal c_3_oshift: signed(23 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(30 downto 0);
  signal c_4_1_13_False_resize: signed(30 downto 0);
  signal c_4_1_13_False_shift: signed(30 downto 0);
  signal c_4_1_4_False_resize: signed(30 downto 0);
  signal c_4_1_4_False_shift: signed(30 downto 0);
  signal c_4_1_0_False_resize: signed(30 downto 0);
  signal c_4_1_0_False_shift: signed(30 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(27 downto 0);
  signal c_5_1_10_False_resize: signed(27 downto 0);
  signal c_5_1_10_False_shift: signed(27 downto 0);
  signal c_5_3_0_False_resize: signed(27 downto 0);
  signal c_5_3_0_False_shift: signed(27 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(30 downto 0);
  signal c_6_i0_resize: signed(30 downto 0);
  signal c_6_i1_resize: signed(30 downto 0);
  signal c_6_i0_shift: signed(30 downto 0);
  signal c_6_i1_shift: signed(30 downto 0);
  signal c_6_arith: signed(30 downto 0);
  signal c_6_oshift: signed(30 downto 0);
  signal c_7: signed(25 downto 0);
  signal c_7_3_0_False_resize: signed(25 downto 0);
  signal c_7_3_0_False_shift: signed(25 downto 0);
  signal c_7_6_2_False_resize: signed(25 downto 0);
  signal c_7_6_2_False_shift: signed(25 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(30 downto 0);
  signal c_8_i0_resize: signed(30 downto 0);
  signal c_8_i1_resize: signed(30 downto 0);
  signal c_8_i0_shift: signed(30 downto 0);
  signal c_8_i1_shift: signed(30 downto 0);
  signal c_8_arith: signed(30 downto 0);
  signal c_8_oshift: signed(30 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(18 downto 0);
  signal c_9_0_0_False_resize: signed(18 downto 0);
  signal c_9_0_0_False_shift: signed(18 downto 0);
  signal c_9_0_1_False_resize: signed(18 downto 0);
  signal c_9_0_1_False_shift: signed(18 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(29 downto 0);
  signal c_10_3_10_False_resize: signed(29 downto 0);
  signal c_10_3_10_False_shift: signed(29 downto 0);
  signal c_10_6_0_False_resize: signed(29 downto 0);
  signal c_10_6_0_False_shift: signed(29 downto 0);
  signal c_10_0_0_False_resize: signed(29 downto 0);
  signal c_10_0_0_False_shift: signed(29 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(29 downto 0);
  signal c_11_i0_resize: signed(29 downto 0);
  signal c_11_i1_resize: signed(29 downto 0);
  signal c_11_i0_shift: signed(29 downto 0);
  signal c_11_i1_shift: signed(29 downto 0);
  signal c_11_arith: signed(29 downto 0);
  signal c_11_oshift: signed(29 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(20 downto 0);
  signal c_12_0_0_False_resize: signed(20 downto 0);
  signal c_12_0_0_False_shift: signed(20 downto 0);
  signal c_12_0_3_False_resize: signed(20 downto 0);
  signal c_12_0_3_False_shift: signed(20 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_13_i0_resize: signed(21 downto 0);
  signal c_13_i1_resize: signed(21 downto 0);
  signal c_13_i0_shift: signed(21 downto 0);
  signal c_13_i1_shift: signed(21 downto 0);
  signal c_13_arith: signed(21 downto 0);
  signal c_13_oshift: signed(21 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(21 downto 0);
  signal c_14_0_4_False_resize: signed(21 downto 0);
  signal c_14_0_4_False_shift: signed(21 downto 0);
  signal c_14_13_0_False_resize: signed(21 downto 0);
  signal c_14_13_0_False_shift: signed(21 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_11_0_False_resize: signed(23 downto 0);
  signal c_15_11_0_False_shift: signed(23 downto 0);
  signal c_15_13_1_False_resize: signed(23 downto 0);
  signal c_15_13_1_False_shift: signed(23 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(25 downto 0);
  signal c_16_i1_resize: signed(25 downto 0);
  signal c_16_i0_shift: signed(25 downto 0);
  signal c_16_i1_shift: signed(25 downto 0);
  signal c_16_arith: signed(25 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_17: signed(26 downto 0);
  signal c_17_16_0_False_resize: signed(26 downto 0);
  signal c_17_16_0_False_shift: signed(26 downto 0);
  signal c_17_16_2_False_resize: signed(26 downto 0);
  signal c_17_16_2_False_shift: signed(26 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(29 downto 0);
  signal c_18_11_0_False_resize: signed(29 downto 0);
  signal c_18_11_0_False_shift: signed(29 downto 0);
  signal c_18_16_0_False_resize: signed(29 downto 0);
  signal c_18_16_0_False_shift: signed(29 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(31 downto 0);
  signal c_19_i0_resize: signed(31 downto 0);
  signal c_19_i1_resize: signed(31 downto 0);
  signal c_19_i0_shift: signed(31 downto 0);
  signal c_19_i1_shift: signed(31 downto 0);
  signal c_19_arith: signed(31 downto 0);
  signal c_19_oshift: signed(31 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(31 downto 0);
  signal c_20_13_6_False_resize: signed(31 downto 0);
  signal c_20_13_6_False_shift: signed(31 downto 0);
  signal c_20_19_0_False_resize: signed(31 downto 0);
  signal c_20_19_0_False_shift: signed(31 downto 0);
  signal c_20_8_0_False_resize: signed(31 downto 0);
  signal c_20_8_0_False_shift: signed(31 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(31 downto 0);
  signal c_21_i0_resize: signed(31 downto 0);
  signal c_21_i1_resize: signed(31 downto 0);
  signal c_21_i0_shift: signed(31 downto 0);
  signal c_21_i1_shift: signed(31 downto 0);
  signal c_21_arith: signed(31 downto 0);
  signal c_21_oshift: signed(31 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(31 downto 0);
  signal c_22_resize: signed(31 downto 0);
  signal c_23: signed(31 downto 0);
  signal c_23_21_0_False_resize: signed(31 downto 0);
  signal c_23_21_0_False_shift: signed(31 downto 0);
  signal c_23_21_2_False_resize: signed(31 downto 0);
  signal c_23_21_2_False_shift: signed(31 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(31 downto 0);
  signal c_24_resize: signed(31 downto 0);
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
      c_0 <= signed(x_0 & "00");
    end if;
  end process;
  -- input node 1 with id 1
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= signed(x_1 & "00");
    end if;
  end process;
  -- output node 0 with id 22
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_22(31 downto 2));
    end if;
  end process;
  -- output node 1 with id 24
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_24(31 downto 2));
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[0, 4], [0, 4], [0, 256]]
  c_2_1_6_False_resize <= resize(c_1, 24);
  c_2_1_6_False_shift <= shift_left(c_2_1_6_False_resize, 6);
  c_2_1_0_False_resize <= resize(c_1, 24);
  c_2_1_0_False_shift <= shift_left(c_2_1_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_1_6_False_shift when "0",
    c_2_1_0_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[0, 20], [0, -12], [0, 240]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 18,
      w_o => 24,
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
      y_i => c_1,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(23 downto 0);
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[0, 32768], [0, 4], [0, 64]]
  c_4_1_13_False_resize <= resize(c_1, 31);
  c_4_1_13_False_shift <= shift_left(c_4_1_13_False_resize, 13);
  c_4_1_4_False_resize <= resize(c_1, 31);
  c_4_1_4_False_shift <= shift_left(c_4_1_4_False_resize, 4);
  c_4_1_0_False_resize <= resize(c_1, 31);
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  with config_select_1 select c_4_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_4_sel select c_4 <=
    c_4_1_13_False_shift when "00",
    c_4_1_4_False_shift when "01",
    c_4_1_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[0, 20], [0, 4096], [0, 240]]
  c_5_1_10_False_resize <= resize(c_1, 28);
  c_5_1_10_False_shift <= shift_left(c_5_1_10_False_resize, 10);
  c_5_3_0_False_resize <= resize(c_3, 28);
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  with config_select_3 select c_5_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_1_10_False_shift when "0",
    c_5_3_0_False_shift when others;
  -- node of type 'sub' in stage 4 with id 6 and associated fundamentals [[0, 32748], [0, -4092], [0, -176]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 31,
      w_y_i => 28,
      w_o => 31,
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
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(30 downto 0);
  -- node of type 'mux' in stage 5 with id 7 and associated fundamentals [[0, 20], [0, -12], [0, -704]]
  c_7_3_0_False_resize <= resize(c_3, 26);
  c_7_3_0_False_shift <= shift_left(c_7_3_0_False_resize, 0);
  c_7_6_2_False_resize <= c_6(25 downto 0);
  c_7_6_2_False_shift <= shift_left(c_7_6_2_False_resize, 2);
  with config_select_5 select c_7_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_3_0_False_shift when "0",
    c_7_6_2_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 8 and associated fundamentals [[0, -32108], [0, 3708], [0, -22704]]
  with config_select_6 select c_8_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 31,
      w_o => 31,
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
      sub_i => c_8_sub_sel,
      x_i => c_7,
      y_i => c_6,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(30 downto 0);
  -- node of type 'mux' in stage 1 with id 9 and associated fundamentals [[4, 0], [8, 0], [4, 0]]
  c_9_0_0_False_resize <= resize(c_0, 19);
  c_9_0_0_False_shift <= shift_left(c_9_0_0_False_resize, 0);
  c_9_0_1_False_resize <= resize(c_0, 19);
  c_9_0_1_False_shift <= shift_left(c_9_0_1_False_resize, 1);
  with config_select_1 select c_9_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_0_0_False_shift when "0",
    c_9_0_1_False_shift when others;
  -- node of type 'mux' in stage 5 with id 10 and associated fundamentals [[4, 0], [0, -12288], [0, -176]]
  c_10_3_10_False_resize <= resize(c_3, 30);
  c_10_3_10_False_shift <= shift_left(c_10_3_10_False_resize, 10);
  c_10_6_0_False_resize <= c_6(29 downto 0);
  c_10_6_0_False_shift <= shift_left(c_10_6_0_False_resize, 0);
  c_10_0_0_False_resize <= resize(c_0, 30);
  c_10_0_0_False_shift <= shift_left(c_10_0_0_False_resize, 0);
  with config_select_5 select c_10_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_10_sel select c_10 <=
    c_10_3_10_False_shift when "00",
    c_10_6_0_False_shift when "01",
    c_10_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 11 and associated fundamentals [[20, 0], [32, 12288], [16, 176]]
  with config_select_6 select c_11_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 30,
      w_o => 30,
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
      sub_i => c_11_sub_sel,
      x_i => c_9,
      y_i => c_10,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(29 downto 0);
  -- node of type 'mux' in stage 1 with id 12 and associated fundamentals [[4, 0], [32, 0], [4, 0]]
  c_12_0_0_False_resize <= resize(c_0, 21);
  c_12_0_0_False_shift <= shift_left(c_12_0_0_False_resize, 0);
  c_12_0_3_False_resize <= resize(c_0, 21);
  c_12_0_3_False_shift <= shift_left(c_12_0_3_False_resize, 3);
  with config_select_1 select c_12_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_12_sel select c_12 <=
    c_12_0_0_False_shift when "0",
    c_12_0_3_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 13 and associated fundamentals [[12, 0], [48, 0], [12, 0]]
  with config_select_2 select c_13_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 21,
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
      sub_i => c_13_sub_sel,
      x_i => c_0,
      y_i => c_12,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(21 downto 0);
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[64, 0], [64, 0], [12, 0]]
  c_14_0_4_False_resize <= resize(c_0, 22);
  c_14_0_4_False_shift <= shift_left(c_14_0_4_False_resize, 4);
  c_14_13_0_False_resize <= c_13;
  c_14_13_0_False_shift <= shift_left(c_14_13_0_False_resize, 0);
  with config_select_3 select c_14_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_0_4_False_shift when "0",
    c_14_13_0_False_shift when others;
  -- node of type 'mux' in stage 7 with id 15 and associated fundamentals [[20, 0], [96, 0], [16, 176]]
  c_15_11_0_False_resize <= c_11(23 downto 0);
  c_15_11_0_False_shift <= shift_left(c_15_11_0_False_resize, 0);
  c_15_13_1_False_resize <= resize(c_13, 24);
  c_15_13_1_False_shift <= shift_left(c_15_13_1_False_resize, 1);
  with config_select_7 select c_15_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_15_sel select c_15 <=
    c_15_11_0_False_shift when "0",
    c_15_13_1_False_shift when others;
  -- node of type 'sub' in stage 8 with id 16 and associated fundamentals [[1004, 0], [928, 0], [176, -176]]
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 24,
      w_o => 26,
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
      x_i => c_14,
      y_i => c_15,
      z_o => c_16_oshift
    );
  c_16 <= c_16_oshift(25 downto 0);
  -- node of type 'mux' in stage 9 with id 17 and associated fundamentals [[1004, 0], [928, 0], [704, -704]]
  c_17_16_0_False_resize <= resize(c_16, 27);
  c_17_16_0_False_shift <= shift_left(c_17_16_0_False_resize, 0);
  c_17_16_2_False_resize <= resize(c_16, 27);
  c_17_16_2_False_shift <= shift_left(c_17_16_2_False_resize, 2);
  with config_select_9 select c_17_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_17_sel select c_17 <=
    c_17_16_0_False_shift when "0",
    c_17_16_2_False_shift when others;
  -- node of type 'mux' in stage 9 with id 18 and associated fundamentals [[20, 0], [32, 12288], [176, -176]]
  c_18_11_0_False_resize <= c_11;
  c_18_11_0_False_shift <= shift_left(c_18_11_0_False_resize, 0);
  c_18_16_0_False_resize <= resize(c_16, 30);
  c_18_16_0_False_shift <= shift_left(c_18_16_0_False_resize, 0);
  with config_select_9 select c_18_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_18_sel select c_18 <=
    c_18_11_0_False_shift when "0",
    c_18_16_0_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 19 and associated fundamentals [[32108, 0], [29664, -12288], [22704, -22704]]
  with config_select_10 select c_19_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 30,
      w_o => 32,
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
      sub_i => c_19_sub_sel,
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  c_19 <= c_19_oshift(31 downto 0);
  -- node of type 'mux' in stage 11 with id 20 and associated fundamentals [[0, -32108], [3072, 0], [22704, -22704]]
  c_20_13_6_False_resize <= resize(c_13, 32);
  c_20_13_6_False_shift <= shift_left(c_20_13_6_False_resize, 6);
  c_20_19_0_False_resize <= c_19;
  c_20_19_0_False_shift <= shift_left(c_20_19_0_False_resize, 0);
  c_20_8_0_False_resize <= resize(c_8, 32);
  c_20_8_0_False_shift <= shift_left(c_20_8_0_False_resize, 0);
  with config_select_11 select c_20_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_20_sel select c_20 <=
    c_20_13_6_False_shift when "00",
    c_20_19_0_False_shift when "01",
    c_20_8_0_False_shift when others;
  -- node of type 'add_sub' in stage 12 with id 21 and associated fundamentals [[0, 32108], [3072, 7416], [22704, 22704]]
  with config_select_12 select c_21_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 32,
      w_y_i => 31,
      w_o => 32,
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
      x_i => c_20,
      y_i => c_8,
      z_o => c_21_oshift
    );
  c_21 <= c_21_oshift(31 downto 0);
  -- node of type 'output' in stage 10 with id 22 and associated fundamentals [[32108, 0], [29664, -12288], [22704, -22704]]
  c_22_resize <= c_19;
  c_22 <= shift_left(c_22_resize, 0);
  -- node of type 'mux' in stage 13 with id 23 and associated fundamentals [[0, 32108], [12288, 29664], [22704, 22704]]
  c_23_21_0_False_resize <= c_21;
  c_23_21_0_False_shift <= shift_left(c_23_21_0_False_resize, 0);
  c_23_21_2_False_resize <= c_21;
  c_23_21_2_False_shift <= shift_left(c_23_21_2_False_resize, 2);
  with config_select_13 select c_23_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_23_sel select c_23 <=
    c_23_21_0_False_shift when "0",
    c_23_21_2_False_shift when others;
  -- node of type 'output' in stage 13 with id 24 and associated fundamentals [[0, 32108], [12288, 29664], [22704, 22704]]
  c_24_resize <= c_23;
  c_24 <= shift_left(c_24_resize, 0);
end architecture;
