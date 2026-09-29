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
  signal c_0: signed(17 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_2: signed(2 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(23 downto 0);
  signal c_4_3_4_False_resize: signed(23 downto 0);
  signal c_4_3_4_False_shift: signed(23 downto 0);
  signal c_4_3_0_False_resize: signed(23 downto 0);
  signal c_4_3_0_False_shift: signed(23 downto 0);
  signal c_4_3_3_False_resize: signed(23 downto 0);
  signal c_4_3_3_False_shift: signed(23 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(23 downto 0);
  signal c_5_i0_resize: signed(24 downto 0);
  signal c_5_i1_resize: signed(24 downto 0);
  signal c_5_i0_shift: signed(24 downto 0);
  signal c_5_i1_shift: signed(24 downto 0);
  signal c_5_arith: signed(24 downto 0);
  signal c_5_oshift: signed(23 downto 0);
  signal c_6: signed(23 downto 0);
  signal c_6_5_0_False_resize: signed(23 downto 0);
  signal c_6_5_0_False_shift: signed(23 downto 0);
  signal c_6_0_3_False_resize: signed(23 downto 0);
  signal c_6_0_3_False_shift: signed(23 downto 0);
  signal c_6_3_1_False_resize: signed(23 downto 0);
  signal c_6_3_1_False_shift: signed(23 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(30 downto 0);
  signal c_7_i0_resize: signed(30 downto 0);
  signal c_7_i1_resize: signed(30 downto 0);
  signal c_7_i0_shift: signed(30 downto 0);
  signal c_7_i1_shift: signed(30 downto 0);
  signal c_7_arith: signed(30 downto 0);
  signal c_7_oshift: signed(30 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(30 downto 0);
  signal c_8_7_0_False_resize: signed(30 downto 0);
  signal c_8_7_0_False_shift: signed(30 downto 0);
  signal c_8_3_11_False_resize: signed(30 downto 0);
  signal c_8_3_11_False_shift: signed(30 downto 0);
  signal c_8_2_0_False_resize: signed(30 downto 0);
  signal c_8_2_0_False_shift: signed(30 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(19 downto 0);
  signal c_9_i0_resize: signed(20 downto 0);
  signal c_9_i1_resize: signed(20 downto 0);
  signal c_9_i0_shift: signed(20 downto 0);
  signal c_9_i1_shift: signed(20 downto 0);
  signal c_9_arith: signed(20 downto 0);
  signal c_9_oshift: signed(19 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(23 downto 0);
  signal c_10_9_0_False_resize: signed(23 downto 0);
  signal c_10_9_0_False_shift: signed(23 downto 0);
  signal c_10_9_4_False_resize: signed(23 downto 0);
  signal c_10_9_4_False_shift: signed(23 downto 0);
  signal c_10_9_3_False_resize: signed(23 downto 0);
  signal c_10_9_3_False_shift: signed(23 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_i0_resize: signed(24 downto 0);
  signal c_11_i1_resize: signed(24 downto 0);
  signal c_11_i0_shift: signed(24 downto 0);
  signal c_11_i1_shift: signed(24 downto 0);
  signal c_11_arith: signed(24 downto 0);
  signal c_11_oshift: signed(23 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_1_3_False_resize: signed(23 downto 0);
  signal c_12_1_3_False_shift: signed(23 downto 0);
  signal c_12_9_1_False_resize: signed(23 downto 0);
  signal c_12_9_1_False_shift: signed(23 downto 0);
  signal c_12_11_0_False_resize: signed(23 downto 0);
  signal c_12_11_0_False_shift: signed(23 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(30 downto 0);
  signal c_13_i0_resize: signed(30 downto 0);
  signal c_13_i1_resize: signed(30 downto 0);
  signal c_13_i0_shift: signed(30 downto 0);
  signal c_13_i1_shift: signed(30 downto 0);
  signal c_13_arith: signed(30 downto 0);
  signal c_13_oshift: signed(30 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(30 downto 0);
  signal c_14_13_0_False_resize: signed(30 downto 0);
  signal c_14_13_0_False_shift: signed(30 downto 0);
  signal c_14_9_11_False_resize: signed(30 downto 0);
  signal c_14_9_11_False_shift: signed(30 downto 0);
  signal c_14_2_0_False_resize: signed(30 downto 0);
  signal c_14_2_0_False_shift: signed(30 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(31 downto 0);
  signal c_15_i0_resize: signed(31 downto 0);
  signal c_15_i1_resize: signed(31 downto 0);
  signal c_15_i0_shift: signed(31 downto 0);
  signal c_15_i1_shift: signed(31 downto 0);
  signal c_15_arith: signed(31 downto 0);
  signal c_15_oshift: signed(31 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(31 downto 0);
  signal c_16_i0_resize: signed(31 downto 0);
  signal c_16_i1_resize: signed(31 downto 0);
  signal c_16_i0_shift: signed(31 downto 0);
  signal c_16_i1_shift: signed(31 downto 0);
  signal c_16_arith: signed(31 downto 0);
  signal c_16_oshift: signed(31 downto 0);
  signal c_17: signed(31 downto 0);
  signal c_17_resize: signed(31 downto 0);
  signal c_18: signed(31 downto 0);
  signal c_18_resize: signed(31 downto 0);
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
  -- output node 0 with id 17
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_17(31 downto 2));
    end if;
  end process;
  -- output node 1 with id 18
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_18(31 downto 2));
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 2 and associated fundamentals [[0, 0], [0, 0], [0, 0]]
  c_2 <= (others => '0');
  -- node of type 'add_sub' in stage 1 with id 3 and associated fundamentals [[10, 0], [6, 0], [10, 0]]
  with config_select_1 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
      w_o => 20,
      s_x_i => 2,
      s_y_i => 0,
      s_o => 1,
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
  c_3 <= c_3_oshift(19 downto 0);
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[10, 0], [48, 0], [160, 0]]
  c_4_3_4_False_resize <= resize(c_3, 24);
  c_4_3_4_False_shift <= shift_left(c_4_3_4_False_resize, 4);
  c_4_3_0_False_resize <= resize(c_3, 24);
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  c_4_3_3_False_resize <= resize(c_3, 24);
  c_4_3_3_False_shift <= shift_left(c_4_3_3_False_resize, 3);
  with config_select_2 select c_4_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_4_sel select c_4 <=
    c_4_3_4_False_shift when "00",
    c_4_3_0_False_shift when "01",
    c_4_3_3_False_shift when others;
  -- node of type 'sub' in stage 3 with id 5 and associated fundamentals [[251, 0], [232, 0], [176, 0]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 24,
      w_o => 24,
      s_x_i => 7,
      s_y_i => 0,
      s_o => 1,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_0,
      y_i => c_4,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(23 downto 0);
  -- node of type 'mux' in stage 4 with id 6 and associated fundamentals [[20, 0], [32, 0], [176, 0]]
  c_6_5_0_False_resize <= c_5;
  c_6_5_0_False_shift <= shift_left(c_6_5_0_False_resize, 0);
  c_6_0_3_False_resize <= resize(c_0, 24);
  c_6_0_3_False_shift <= shift_left(c_6_0_3_False_resize, 3);
  c_6_3_1_False_resize <= resize(c_3, 24);
  c_6_3_1_False_shift <= shift_left(c_6_3_1_False_resize, 1);
  with config_select_4 select c_6_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_6_sel select c_6 <=
    c_6_5_0_False_shift when "00",
    c_6_0_3_False_shift when "01",
    c_6_3_1_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 7 and associated fundamentals [[32108, 0], [29664, 0], [22704, 0]]
  with config_select_5 select c_7_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
      w_o => 31,
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
      sub_i => c_7_sub_sel,
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(30 downto 0);
  -- node of type 'mux' in stage 6 with id 8 and associated fundamentals [[0, 0], [12288, 0], [22704, 0]]
  c_8_7_0_False_resize <= c_7;
  c_8_7_0_False_shift <= shift_left(c_8_7_0_False_resize, 0);
  c_8_3_11_False_resize <= resize(c_3, 31);
  c_8_3_11_False_shift <= shift_left(c_8_3_11_False_resize, 11);
  c_8_2_0_False_resize <= resize(c_2, 31);
  c_8_2_0_False_shift <= shift_left(c_8_2_0_False_resize, 0);
  with config_select_6 select c_8_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_8_sel select c_8 <=
    c_8_7_0_False_shift when "00",
    c_8_3_11_False_shift when "01",
    c_8_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 1 with id 9 and associated fundamentals [[0, 10], [0, 6], [0, 10]]
  with config_select_1 select c_9_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
      w_o => 20,
      s_x_i => 2,
      s_y_i => 0,
      s_o => 1,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_9_sub_sel,
      x_i => c_1,
      y_i => c_1,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(19 downto 0);
  -- node of type 'mux' in stage 2 with id 10 and associated fundamentals [[0, 10], [0, 48], [0, 160]]
  c_10_9_0_False_resize <= resize(c_9, 24);
  c_10_9_0_False_shift <= shift_left(c_10_9_0_False_resize, 0);
  c_10_9_4_False_resize <= resize(c_9, 24);
  c_10_9_4_False_shift <= shift_left(c_10_9_4_False_resize, 4);
  c_10_9_3_False_resize <= resize(c_9, 24);
  c_10_9_3_False_shift <= shift_left(c_10_9_3_False_resize, 3);
  with config_select_2 select c_10_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_10_sel select c_10 <=
    c_10_9_0_False_shift when "00",
    c_10_9_4_False_shift when "01",
    c_10_9_3_False_shift when others;
  -- node of type 'sub' in stage 3 with id 11 and associated fundamentals [[0, 251], [0, 232], [0, 176]]
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 24,
      w_o => 24,
      s_x_i => 7,
      s_y_i => 0,
      s_o => 1,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_1,
      y_i => c_10,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(23 downto 0);
  -- node of type 'mux' in stage 4 with id 12 and associated fundamentals [[0, 20], [0, 32], [0, 176]]
  c_12_1_3_False_resize <= resize(c_1, 24);
  c_12_1_3_False_shift <= shift_left(c_12_1_3_False_resize, 3);
  c_12_9_1_False_resize <= resize(c_9, 24);
  c_12_9_1_False_shift <= shift_left(c_12_9_1_False_resize, 1);
  c_12_11_0_False_resize <= c_11;
  c_12_11_0_False_shift <= shift_left(c_12_11_0_False_resize, 0);
  with config_select_4 select c_12_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_12_sel select c_12 <=
    c_12_1_3_False_shift when "00",
    c_12_9_1_False_shift when "01",
    c_12_11_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 13 and associated fundamentals [[0, 32108], [0, 29664], [0, 22704]]
  with config_select_5 select c_13_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
      w_o => 31,
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
      sub_i => c_13_sub_sel,
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(30 downto 0);
  -- node of type 'mux' in stage 6 with id 14 and associated fundamentals [[0, 0], [0, 12288], [0, 22704]]
  c_14_13_0_False_resize <= c_13;
  c_14_13_0_False_shift <= shift_left(c_14_13_0_False_resize, 0);
  c_14_9_11_False_resize <= resize(c_9, 31);
  c_14_9_11_False_shift <= shift_left(c_14_9_11_False_resize, 11);
  c_14_2_0_False_resize <= resize(c_2, 31);
  c_14_2_0_False_shift <= shift_left(c_14_2_0_False_resize, 0);
  with config_select_6 select c_14_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_14_sel select c_14 <=
    c_14_13_0_False_shift when "00",
    c_14_9_11_False_shift when "01",
    c_14_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 7 with id 15 and associated fundamentals [[32108, 0], [29664, -12288], [22704, -22704]]
  with config_select_7 select c_15_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 31,
      w_y_i => 31,
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
      sub_i => c_15_sub_sel,
      x_i => c_7,
      y_i => c_14,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(31 downto 0);
  -- node of type 'add' in stage 7 with id 16 and associated fundamentals [[0, 32108], [12288, 29664], [22704, 22704]]
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 31,
      w_y_i => 31,
      w_o => 32,
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
      x_i => c_13,
      y_i => c_8,
      z_o => c_16_oshift
    );
  c_16 <= c_16_oshift(31 downto 0);
  -- node of type 'output' in stage 7 with id 17 and associated fundamentals [[32108, 0], [29664, -12288], [22704, -22704]]
  c_17_resize <= c_15;
  c_17 <= shift_left(c_17_resize, 0);
  -- node of type 'output' in stage 7 with id 18 and associated fundamentals [[0, 32108], [12288, 29664], [22704, 22704]]
  c_18_resize <= c_16;
  c_18 <= shift_left(c_18_resize, 0);
end architecture;
