library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(21 downto 0);
    y_1: out std_logic_vector(22 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_0_0_False_resize: signed(18 downto 0);
  signal c_1_0_0_False_shift: signed(18 downto 0);
  signal c_1_0_3_False_resize: signed(18 downto 0);
  signal c_1_0_3_False_shift: signed(18 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(20 downto 0);
  signal c_2_i0_resize: signed(20 downto 0);
  signal c_2_i1_resize: signed(20 downto 0);
  signal c_2_i0_shift: signed(20 downto 0);
  signal c_2_i1_shift: signed(20 downto 0);
  signal c_2_arith: signed(20 downto 0);
  signal c_2_oshift: signed(20 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(20 downto 0);
  signal c_3_2_0_False_resize: signed(20 downto 0);
  signal c_3_2_0_False_shift: signed(20 downto 0);
  signal c_3_0_5_False_resize: signed(20 downto 0);
  signal c_3_0_5_False_shift: signed(20 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(17 downto 0);
  signal c_4_0_1_False_resize: signed(17 downto 0);
  signal c_4_0_1_False_shift: signed(17 downto 0);
  signal c_4_2_0_False_resize: signed(17 downto 0);
  signal c_4_2_0_False_shift: signed(17 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_5_i0_resize: signed(21 downto 0);
  signal c_5_i1_resize: signed(21 downto 0);
  signal c_5_i0_shift: signed(21 downto 0);
  signal c_5_i1_shift: signed(21 downto 0);
  signal c_5_arith: signed(21 downto 0);
  signal c_5_oshift: signed(21 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(21 downto 0);
  signal c_6_2_0_False_resize: signed(21 downto 0);
  signal c_6_2_0_False_shift: signed(21 downto 0);
  signal c_6_0_5_False_resize: signed(21 downto 0);
  signal c_6_0_5_False_shift: signed(21 downto 0);
  signal c_6_0_6_False_resize: signed(21 downto 0);
  signal c_6_0_6_False_shift: signed(21 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_i0_resize: signed(22 downto 0);
  signal c_7_i1_resize: signed(22 downto 0);
  signal c_7_i0_shift: signed(22 downto 0);
  signal c_7_i1_shift: signed(22 downto 0);
  signal c_7_arith: signed(22 downto 0);
  signal c_7_oshift: signed(22 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(21 downto 0);
  signal c_8_2_1_False_resize: signed(21 downto 0);
  signal c_8_2_1_False_shift: signed(21 downto 0);
  signal c_8_5_0_False_resize: signed(21 downto 0);
  signal c_8_5_0_False_shift: signed(21 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_9_resize: signed(21 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_resize: signed(22 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 9
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_9);
    end if;
  end process;
  -- output node 1 with id 10
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_10);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [8], [1], [8]]
  c_1_0_0_False_resize <= resize(c_0, 19);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_3_False_resize <= resize(c_0, 19);
  c_1_0_3_False_shift <= shift_left(c_1_0_3_False_resize, 3);
  with config_select_1 select c_1_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "0",
    c_1_0_3_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 2 and associated fundamentals [[5], [31], [3], [31]]
  with config_select_2 select c_2_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
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
      sub_i => c_2_sub_sel,
      x_i => c_1,
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(20 downto 0);
  -- node of type 'mux' in stage 3 with id 3 and associated fundamentals [[32], [31], [3], [31]]
  c_3_2_0_False_resize <= c_2;
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  c_3_0_5_False_resize <= resize(c_0, 21);
  c_3_0_5_False_shift <= shift_left(c_3_0_5_False_resize, 5);
  with config_select_3 select c_3_sel <= 
    "0" when "10",
    "0" when "11",
    "0" when "01",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_2_0_False_shift when "0",
    c_3_0_5_False_shift when others;
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[2], [2], [3], [2]]
  c_4_0_1_False_resize <= resize(c_0, 18);
  c_4_0_1_False_shift <= shift_left(c_4_0_1_False_resize, 1);
  c_4_2_0_False_resize <= c_2(17 downto 0);
  c_4_2_0_False_shift <= shift_left(c_4_2_0_False_resize, 0);
  with config_select_3 select c_4_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "11",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_0_1_False_shift when "0",
    c_4_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 5 and associated fundamentals [[16], [15], [27], [47]]
  with config_select_4 select c_5_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 18,
      w_o => 22,
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
      sub_i => c_5_sub_sel,
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(21 downto 0);
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[5], [32], [3], [64]]
  c_6_2_0_False_resize <= resize(c_2, 22);
  c_6_2_0_False_shift <= shift_left(c_6_2_0_False_resize, 0);
  c_6_0_5_False_resize <= resize(c_0, 22);
  c_6_0_5_False_shift <= shift_left(c_6_0_5_False_resize, 5);
  c_6_0_6_False_resize <= resize(c_0, 22);
  c_6_0_6_False_shift <= shift_left(c_6_0_6_False_resize, 6);
  with config_select_3 select c_6_sel <= 
    "00" when "00",
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_6_sel select c_6 <=
    c_6_2_0_False_shift when "00",
    c_6_0_5_False_shift when "01",
    c_6_0_6_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 7 and associated fundamentals [[69], [92], [111], [124]]
  with config_select_5 select c_7_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_7_sub_sel,
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(22 downto 0);
  -- node of type 'mux' in stage 5 with id 8 and associated fundamentals [[10], [15], [27], [47]]
  c_8_2_1_False_resize <= resize(c_2, 22);
  c_8_2_1_False_shift <= shift_left(c_8_2_1_False_resize, 1);
  c_8_5_0_False_resize <= c_5;
  c_8_5_0_False_shift <= shift_left(c_8_5_0_False_resize, 0);
  with config_select_5 select c_8_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when "10",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_2_1_False_shift when "0",
    c_8_5_0_False_shift when others;
  -- node of type 'output' in stage 5 with id 9 and associated fundamentals [[10], [15], [27], [47]]
  c_9_resize <= c_8;
  c_9 <= shift_left(c_9_resize, 0);
  -- node of type 'output' in stage 5 with id 10 and associated fundamentals [[69], [92], [111], [124]]
  c_10_resize <= c_7;
  c_10 <= shift_left(c_10_resize, 0);
end architecture;
