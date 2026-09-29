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
  signal c_0: signed(17 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_2: signed(22 downto 0);
  signal c_2_1_0_False_resize: signed(22 downto 0);
  signal c_2_1_0_False_shift: signed(22 downto 0);
  signal c_2_1_1_False_resize: signed(22 downto 0);
  signal c_2_1_1_False_shift: signed(22 downto 0);
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
  signal c_4: signed(24 downto 0);
  signal c_4_i0_resize: signed(24 downto 0);
  signal c_4_i1_resize: signed(24 downto 0);
  signal c_4_i0_shift: signed(24 downto 0);
  signal c_4_i1_shift: signed(24 downto 0);
  signal c_4_arith: signed(24 downto 0);
  signal c_4_oshift: signed(24 downto 0);
  signal c_5: signed(17 downto 0);
  signal c_5_0_0_False_resize: signed(17 downto 0);
  signal c_5_0_0_False_shift: signed(17 downto 0);
  signal c_5_1_0_False_resize: signed(17 downto 0);
  signal c_5_1_0_False_shift: signed(17 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(20 downto 0);
  signal c_6_i0_resize: signed(20 downto 0);
  signal c_6_i1_resize: signed(20 downto 0);
  signal c_6_i0_shift: signed(20 downto 0);
  signal c_6_i1_shift: signed(20 downto 0);
  signal c_6_arith: signed(20 downto 0);
  signal c_6_oshift: signed(20 downto 0);
  signal c_7: signed(25 downto 0);
  signal c_7_6_5_False_resize: signed(25 downto 0);
  signal c_7_6_5_False_shift: signed(25 downto 0);
  signal c_7_4_0_False_resize: signed(25 downto 0);
  signal c_7_4_0_False_shift: signed(25 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_8_0_0_False_resize: signed(23 downto 0);
  signal c_8_0_0_False_shift: signed(23 downto 0);
  signal c_8_6_3_False_resize: signed(23 downto 0);
  signal c_8_6_3_False_shift: signed(23 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(25 downto 0);
  signal c_9_i0_resize: signed(25 downto 0);
  signal c_9_i1_resize: signed(25 downto 0);
  signal c_9_i0_shift: signed(25 downto 0);
  signal c_9_i1_shift: signed(25 downto 0);
  signal c_9_arith: signed(25 downto 0);
  signal c_9_oshift: signed(25 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(31 downto 0);
  signal c_10_1_0_False_resize: signed(31 downto 0);
  signal c_10_1_0_False_shift: signed(31 downto 0);
  signal c_10_4_8_False_resize: signed(31 downto 0);
  signal c_10_4_8_False_shift: signed(31 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(31 downto 0);
  signal c_11_i0_resize: signed(31 downto 0);
  signal c_11_i1_resize: signed(31 downto 0);
  signal c_11_i0_shift: signed(31 downto 0);
  signal c_11_i1_shift: signed(31 downto 0);
  signal c_11_arith: signed(31 downto 0);
  signal c_11_oshift: signed(31 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(25 downto 0);
  signal c_12_0_0_False_resize: signed(25 downto 0);
  signal c_12_0_0_False_shift: signed(25 downto 0);
  signal c_12_6_5_False_resize: signed(25 downto 0);
  signal c_12_6_5_False_shift: signed(25 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(26 downto 0);
  signal c_13_i0_resize: signed(26 downto 0);
  signal c_13_i1_resize: signed(26 downto 0);
  signal c_13_i0_shift: signed(26 downto 0);
  signal c_13_i1_shift: signed(26 downto 0);
  signal c_13_arith: signed(26 downto 0);
  signal c_13_oshift: signed(26 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(24 downto 0);
  signal c_14_0_6_False_resize: signed(24 downto 0);
  signal c_14_0_6_False_shift: signed(24 downto 0);
  signal c_14_13_0_False_resize: signed(24 downto 0);
  signal c_14_13_0_False_shift: signed(24 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(29 downto 0);
  signal c_15_13_3_False_resize: signed(29 downto 0);
  signal c_15_13_3_False_shift: signed(29 downto 0);
  signal c_15_13_0_False_resize: signed(29 downto 0);
  signal c_15_13_0_False_shift: signed(29 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(31 downto 0);
  signal c_16_i0_resize: signed(31 downto 0);
  signal c_16_i1_resize: signed(31 downto 0);
  signal c_16_i0_shift: signed(31 downto 0);
  signal c_16_i1_shift: signed(31 downto 0);
  signal c_16_arith: signed(31 downto 0);
  signal c_16_oshift: signed(31 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(31 downto 0);
  signal c_17_3_8_False_resize: signed(31 downto 0);
  signal c_17_3_8_False_shift: signed(31 downto 0);
  signal c_17_16_0_False_resize: signed(31 downto 0);
  signal c_17_16_0_False_shift: signed(31 downto 0);
  signal c_17_11_3_False_resize: signed(31 downto 0);
  signal c_17_11_3_False_shift: signed(31 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(31 downto 0);
  signal c_18_11_0_False_resize: signed(31 downto 0);
  signal c_18_11_0_False_shift: signed(31 downto 0);
  signal c_18_6_11_False_resize: signed(31 downto 0);
  signal c_18_6_11_False_shift: signed(31 downto 0);
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
  signal c_20_resize: signed(31 downto 0);
  signal c_21: signed(31 downto 0);
  signal c_21_resize: signed(31 downto 0);
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
  -- output node 0 with id 20
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_20(31 downto 2));
    end if;
  end process;
  -- output node 1 with id 21
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_21(31 downto 2));
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[0, 4], [128, 0], [0, 8]]
  c_2_1_0_False_resize <= resize(c_1, 23);
  c_2_1_0_False_shift <= shift_left(c_2_1_0_False_resize, 0);
  c_2_1_1_False_resize <= resize(c_1, 23);
  c_2_1_1_False_shift <= shift_left(c_2_1_1_False_resize, 1);
  c_2_0_5_False_resize <= resize(c_0, 23);
  c_2_0_5_False_shift <= shift_left(c_2_0_5_False_resize, 5);
  with config_select_1 select c_2_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_2_sel select c_2 <=
    c_2_1_0_False_shift when "00",
    c_2_1_1_False_shift when "01",
    c_2_0_5_False_shift when others;
  -- node of type 'sub' in stage 2 with id 3 and associated fundamentals [[0, 124], [-128, 128], [0, 120]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 23,
      w_o => 24,
      s_x_i => 5,
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
      y_i => c_2,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(23 downto 0);
  -- node of type 'sub' in stage 3 with id 4 and associated fundamentals [[0, -184], [256, -192], [0, -176]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 24,
      w_o => 25,
      s_x_i => 4,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_1,
      y_i => c_3,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(24 downto 0);
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[4, 0], [0, 4], [4, 0]]
  c_5_0_0_False_resize <= c_0;
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_1_0_False_resize <= c_1;
  c_5_1_0_False_shift <= shift_left(c_5_1_0_False_resize, 0);
  with config_select_1 select c_5_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_0_0_False_shift when "0",
    c_5_1_0_False_shift when others;
  -- node of type 'add' in stage 2 with id 6 and associated fundamentals [[20, 0], [4, 16], [20, 0]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
      w_o => 21,
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
      x_i => c_0,
      y_i => c_5,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(20 downto 0);
  -- node of type 'mux' in stage 4 with id 7 and associated fundamentals [[640, 0], [128, 512], [0, -176]]
  c_7_6_5_False_resize <= resize(c_6, 26);
  c_7_6_5_False_shift <= shift_left(c_7_6_5_False_resize, 5);
  c_7_4_0_False_resize <= resize(c_4, 26);
  c_7_4_0_False_shift <= shift_left(c_7_4_0_False_resize, 0);
  with config_select_4 select c_7_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_6_5_False_shift when "0",
    c_7_4_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[4, 0], [4, 0], [160, 0]]
  c_8_0_0_False_resize <= resize(c_0, 24);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  c_8_6_3_False_resize <= resize(c_6, 24);
  c_8_6_3_False_shift <= shift_left(c_8_6_3_False_resize, 3);
  with config_select_3 select c_8_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_0_0_False_shift when "0",
    c_8_6_3_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 9 and associated fundamentals [[644, 0], [124, 512], [160, -176]]
  with config_select_5 select c_9_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
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
      sub_i => c_9_sub_sel,
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 10 and associated fundamentals [[0, 4], [0, 4], [0, -45056]]
  c_10_1_0_False_resize <= resize(c_1, 32);
  c_10_1_0_False_shift <= shift_left(c_10_1_0_False_resize, 0);
  c_10_4_8_False_resize <= resize(c_4, 32);
  c_10_4_8_False_shift <= shift_left(c_10_4_8_False_resize, 8);
  with config_select_4 select c_10_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_10_sel select c_10 <=
    c_10_1_0_False_shift when "0",
    c_10_4_8_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 11 and associated fundamentals [[0, -364], [512, -388], [0, -45408]]
  with config_select_5 select c_11_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 32,
      w_o => 32,
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
      x_i => c_4,
      y_i => c_10,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(31 downto 0);
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[4, 0], [128, 512], [4, 0]]
  c_12_0_0_False_resize <= resize(c_0, 26);
  c_12_0_0_False_shift <= shift_left(c_12_0_0_False_resize, 0);
  c_12_6_5_False_resize <= resize(c_6, 26);
  c_12_6_5_False_shift <= shift_left(c_12_6_5_False_resize, 5);
  with config_select_3 select c_12_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_12_sel select c_12 <=
    c_12_0_0_False_shift when "0",
    c_12_6_5_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 13 and associated fundamentals [[660, 0], [388, 1536], [176, -176]]
  with config_select_6 select c_13_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 26,
      w_o => 27,
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
      x_i => c_12,
      y_i => c_9,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(26 downto 0);
  -- node of type 'mux' in stage 7 with id 14 and associated fundamentals [[256, 0], [256, 0], [176, -176]]
  c_14_0_6_False_resize <= resize(c_0, 25);
  c_14_0_6_False_shift <= shift_left(c_14_0_6_False_resize, 6);
  c_14_13_0_False_resize <= c_13(24 downto 0);
  c_14_13_0_False_shift <= shift_left(c_14_13_0_False_resize, 0);
  with config_select_7 select c_14_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_0_6_False_shift when "0",
    c_14_13_0_False_shift when others;
  -- node of type 'mux' in stage 7 with id 15 and associated fundamentals [[660, 0], [3104, 12288], [176, -176]]
  c_15_13_3_False_resize <= resize(c_13, 30);
  c_15_13_3_False_shift <= shift_left(c_15_13_3_False_resize, 3);
  c_15_13_0_False_resize <= resize(c_13, 30);
  c_15_13_0_False_shift <= shift_left(c_15_13_0_False_resize, 0);
  with config_select_7 select c_15_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_15_sel select c_15 <=
    c_15_13_3_False_shift when "0",
    c_15_13_0_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 16 and associated fundamentals [[32108, 0], [29664, -12288], [22704, -22704]]
  with config_select_8 select c_16_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 30,
      w_o => 32,
      s_x_i => 7,
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
  c_16 <= c_16_oshift(31 downto 0);
  -- node of type 'mux' in stage 9 with id 17 and associated fundamentals [[0, 31744], [4096, -3104], [22704, -22704]]
  c_17_3_8_False_resize <= resize(c_3, 32);
  c_17_3_8_False_shift <= shift_left(c_17_3_8_False_resize, 8);
  c_17_16_0_False_resize <= c_16;
  c_17_16_0_False_shift <= shift_left(c_17_16_0_False_resize, 0);
  c_17_11_3_False_resize <= c_11;
  c_17_11_3_False_shift <= shift_left(c_17_11_3_False_resize, 3);
  with config_select_9 select c_17_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_17_sel select c_17 <=
    c_17_3_8_False_shift when "00",
    c_17_16_0_False_shift when "01",
    c_17_11_3_False_shift when others;
  -- node of type 'mux' in stage 6 with id 18 and associated fundamentals [[0, -364], [8192, 32768], [0, -45408]]
  c_18_11_0_False_resize <= c_11;
  c_18_11_0_False_shift <= shift_left(c_18_11_0_False_resize, 0);
  c_18_6_11_False_resize <= resize(c_6, 32);
  c_18_6_11_False_shift <= shift_left(c_18_6_11_False_resize, 11);
  with config_select_6 select c_18_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_18_sel select c_18 <=
    c_18_11_0_False_shift when "0",
    c_18_6_11_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 19 and associated fundamentals [[0, 32108], [12288, 29664], [22704, 22704]]
  with config_select_10 select c_19_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 32,
      w_y_i => 32,
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
      sub_i => c_19_sub_sel,
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  c_19 <= c_19_oshift(31 downto 0);
  -- node of type 'output' in stage 8 with id 20 and associated fundamentals [[32108, 0], [29664, -12288], [22704, -22704]]
  c_20_resize <= c_16;
  c_20 <= shift_left(c_20_resize, 0);
  -- node of type 'output' in stage 10 with id 21 and associated fundamentals [[0, 32108], [12288, 29664], [22704, 22704]]
  c_21_resize <= c_19;
  c_21 <= shift_left(c_21_resize, 0);
end architecture;
