library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(23 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_2_0_0_False_resize: signed(15 downto 0);
  signal c_2_0_0_False_shift: signed(15 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(17 downto 0);
  signal c_3_i0_resize: signed(17 downto 0);
  signal c_3_i1_resize: signed(17 downto 0);
  signal c_3_i0_shift: signed(17 downto 0);
  signal c_3_i1_shift: signed(17 downto 0);
  signal c_3_arith: signed(17 downto 0);
  signal c_3_oshift: signed(17 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_4_0_0_False_resize: signed(15 downto 0);
  signal c_4_0_0_False_shift: signed(15 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(18 downto 0);
  signal c_5_i0_resize: signed(18 downto 0);
  signal c_5_i1_resize: signed(18 downto 0);
  signal c_5_i0_shift: signed(18 downto 0);
  signal c_5_i1_shift: signed(18 downto 0);
  signal c_5_arith: signed(18 downto 0);
  signal c_5_oshift: signed(18 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_7: signed(18 downto 0);
  signal c_7_i0_resize: signed(18 downto 0);
  signal c_7_i1_resize: signed(18 downto 0);
  signal c_7_i0_shift: signed(18 downto 0);
  signal c_7_i1_shift: signed(18 downto 0);
  signal c_7_arith: signed(18 downto 0);
  signal c_7_oshift: signed(18 downto 0);
  signal c_8: signed(21 downto 0);
  signal c_8_5_4_False_resize: signed(21 downto 0);
  signal c_8_5_4_False_shift: signed(21 downto 0);
  signal c_8_3_0_False_resize: signed(21 downto 0);
  signal c_8_3_0_False_shift: signed(21 downto 0);
  signal c_8_7_3_False_resize: signed(21 downto 0);
  signal c_8_7_3_False_shift: signed(21 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_5_4_False_resize: signed(22 downto 0);
  signal c_9_5_4_False_shift: signed(22 downto 0);
  signal c_9_3_1_False_resize: signed(22 downto 0);
  signal c_9_3_1_False_shift: signed(22 downto 0);
  signal c_9_3_0_False_resize: signed(22 downto 0);
  signal c_9_3_0_False_shift: signed(22 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_i0_resize: signed(23 downto 0);
  signal c_10_i1_resize: signed(23 downto 0);
  signal c_10_i0_shift: signed(23 downto 0);
  signal c_10_i1_shift: signed(23 downto 0);
  signal c_10_arith: signed(23 downto 0);
  signal c_10_oshift: signed(23 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(19 downto 0);
  signal c_11_7_0_False_resize: signed(19 downto 0);
  signal c_11_7_0_False_shift: signed(19 downto 0);
  signal c_11_5_1_False_resize: signed(19 downto 0);
  signal c_11_5_1_False_shift: signed(19 downto 0);
  signal c_11_3_2_False_resize: signed(19 downto 0);
  signal c_11_3_2_False_shift: signed(19 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(18 downto 0);
  signal c_12_5_0_False_resize: signed(18 downto 0);
  signal c_12_5_0_False_shift: signed(18 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(18 downto 0);
  signal c_14_3_3_False_resize: signed(18 downto 0);
  signal c_14_3_3_False_shift: signed(18 downto 0);
  signal c_14_3_0_False_resize: signed(18 downto 0);
  signal c_14_3_0_False_shift: signed(18 downto 0);
  signal c_14_6_2_False_resize: signed(18 downto 0);
  signal c_14_6_2_False_shift: signed(18 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(18 downto 0);
  signal c_15_5_0_False_resize: signed(18 downto 0);
  signal c_15_5_0_False_shift: signed(18 downto 0);
  signal c_15_6_3_False_resize: signed(18 downto 0);
  signal c_15_6_3_False_shift: signed(18 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_i0_resize: signed(23 downto 0);
  signal c_16_i1_resize: signed(23 downto 0);
  signal c_16_i0_shift: signed(23 downto 0);
  signal c_16_i1_shift: signed(23 downto 0);
  signal c_16_arith: signed(23 downto 0);
  signal c_16_oshift: signed(23 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_resize: signed(23 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_resize: signed(23 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_resize: signed(23 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 17
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_17);
    end if;
  end process;
  -- output node 1 with id 18
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_18);
    end if;
  end process;
  -- output node 2 with id 19
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_19);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1], [1]]
  c_1 <= c_0 & "";
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[0], [1], [1]]
  c_2_0_0_False_resize <= c_0;
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_0_0_False_shift when "0",
    to_signed(0, 16) when others;
  -- node of type 'add' in stage 2 with id 3 and associated fundamentals [[1], [3], [3]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 18,
      s_x_i => 0,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(17 downto 0);
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[1], [0], [1]]
  c_4_0_0_False_resize <= c_0;
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  with config_select_1 select c_4_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_0_0_False_shift when "0",
    to_signed(0, 16) when others;
  -- node of type 'add' in stage 2 with id 5 and associated fundamentals [[5], [1], [5]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
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
      x_i => c_1,
      y_i => c_4,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(18 downto 0);
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[1], [1], [1]]
  c_6 <= c_1 & "";
  -- node of type 'sub' in stage 2 with id 7 and associated fundamentals [[7], [7], [7]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
      s_x_i => 3,
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
      y_i => c_1,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(18 downto 0);
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[1], [16], [56]]
  c_8_5_4_False_resize <= resize(c_5, 22);
  c_8_5_4_False_shift <= shift_left(c_8_5_4_False_resize, 4);
  c_8_3_0_False_resize <= resize(c_3, 22);
  c_8_3_0_False_shift <= shift_left(c_8_3_0_False_resize, 0);
  c_8_7_3_False_resize <= resize(c_7, 22);
  c_8_7_3_False_shift <= shift_left(c_8_7_3_False_resize, 3);
  with config_select_3 select c_8_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_8_sel select c_8 <=
    c_8_5_4_False_shift when "00",
    c_8_3_0_False_shift when "01",
    c_8_7_3_False_shift when others;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[80], [3], [6]]
  c_9_5_4_False_resize <= resize(c_5, 23);
  c_9_5_4_False_shift <= shift_left(c_9_5_4_False_resize, 4);
  c_9_3_1_False_resize <= resize(c_3, 23);
  c_9_3_1_False_shift <= shift_left(c_9_3_1_False_resize, 1);
  c_9_3_0_False_resize <= resize(c_3, 23);
  c_9_3_0_False_shift <= shift_left(c_9_3_0_False_resize, 0);
  with config_select_3 select c_9_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_9_sel select c_9 <=
    c_9_5_4_False_shift when "00",
    c_9_3_1_False_shift when "01",
    c_9_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 10 and associated fundamentals [[84], [67], [218]]
  with config_select_4 select c_10_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
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
      sub_i => c_10_sub_sel,
      x_i => c_8,
      y_i => c_9,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[4], [7], [10]]
  c_11_7_0_False_resize <= resize(c_7, 20);
  c_11_7_0_False_shift <= shift_left(c_11_7_0_False_resize, 0);
  c_11_5_1_False_resize <= resize(c_5, 20);
  c_11_5_1_False_shift <= shift_left(c_11_5_1_False_resize, 1);
  c_11_3_2_False_resize <= resize(c_3, 20);
  c_11_3_2_False_shift <= shift_left(c_11_3_2_False_resize, 2);
  with config_select_3 select c_11_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_11_sel select c_11 <=
    c_11_7_0_False_shift when "00",
    c_11_5_1_False_shift when "01",
    c_11_3_2_False_shift when others;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[5], [0], [5]]
  c_12_5_0_False_resize <= c_5;
  c_12_5_0_False_shift <= shift_left(c_12_5_0_False_resize, 0);
  with config_select_3 select c_12_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_12_sel select c_12 <=
    c_12_5_0_False_shift when "0",
    to_signed(0, 19) when others;
  -- node of type 'add_sub' in stage 4 with id 13 and associated fundamentals [[164], [7], [150]]
  with config_select_4 select c_13_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 20,
      w_o => 24,
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
      sub_i => c_13_sub_sel,
      x_i => c_12,
      y_i => c_11,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[8], [3], [4]]
  c_14_3_3_False_resize <= resize(c_3, 19);
  c_14_3_3_False_shift <= shift_left(c_14_3_3_False_resize, 3);
  c_14_3_0_False_resize <= resize(c_3, 19);
  c_14_3_0_False_shift <= shift_left(c_14_3_0_False_resize, 0);
  c_14_6_2_False_resize <= resize(c_6, 19);
  c_14_6_2_False_shift <= shift_left(c_14_6_2_False_resize, 2);
  with config_select_3 select c_14_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_14_sel select c_14 <=
    c_14_3_3_False_shift when "00",
    c_14_3_0_False_shift when "01",
    c_14_6_2_False_shift when others;
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[5], [1], [8]]
  c_15_5_0_False_resize <= c_5;
  c_15_5_0_False_shift <= shift_left(c_15_5_0_False_resize, 0);
  c_15_6_3_False_resize <= resize(c_6, 19);
  c_15_6_3_False_shift <= shift_left(c_15_6_3_False_resize, 3);
  with config_select_3 select c_15_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_15_sel select c_15 <=
    c_15_5_0_False_shift when "0",
    c_15_6_3_False_shift when others;
  -- node of type 'sub' in stage 4 with id 16 and associated fundamentals [[251], [95], [120]]
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
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
      x_i => c_14,
      y_i => c_15,
      z_o => c_16_oshift
    );
  c_16 <= c_16_oshift(23 downto 0);
  -- node of type 'output' in stage 4 with id 17 and associated fundamentals [[251], [95], [120]]
  c_17_resize <= c_16;
  c_17 <= shift_left(c_17_resize, 0);
  -- node of type 'output' in stage 4 with id 18 and associated fundamentals [[164], [7], [150]]
  c_18_resize <= c_13;
  c_18 <= shift_left(c_18_resize, 0);
  -- node of type 'output' in stage 4 with id 19 and associated fundamentals [[84], [67], [218]]
  c_19_resize <= c_10;
  c_19 <= shift_left(c_19_resize, 0);
end architecture;
