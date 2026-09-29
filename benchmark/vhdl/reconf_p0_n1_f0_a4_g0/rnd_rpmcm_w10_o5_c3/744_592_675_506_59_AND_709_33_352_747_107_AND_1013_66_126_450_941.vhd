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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_i0_resize: signed(18 downto 0);
  signal c_1_i1_resize: signed(18 downto 0);
  signal c_1_i0_shift: signed(18 downto 0);
  signal c_1_i1_shift: signed(18 downto 0);
  signal c_1_arith: signed(18 downto 0);
  signal c_1_oshift: signed(18 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(18 downto 0);
  signal c_2_i0_resize: signed(18 downto 0);
  signal c_2_i1_resize: signed(18 downto 0);
  signal c_2_i0_shift: signed(18 downto 0);
  signal c_2_i1_shift: signed(18 downto 0);
  signal c_2_arith: signed(18 downto 0);
  signal c_2_oshift: signed(18 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(23 downto 0);
  signal c_3_i0_resize: signed(23 downto 0);
  signal c_3_i1_resize: signed(23 downto 0);
  signal c_3_i0_shift: signed(23 downto 0);
  signal c_3_i1_shift: signed(23 downto 0);
  signal c_3_arith: signed(23 downto 0);
  signal c_3_oshift: signed(23 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(20 downto 0);
  signal c_4_i0_resize: signed(20 downto 0);
  signal c_4_i1_resize: signed(20 downto 0);
  signal c_4_i0_shift: signed(20 downto 0);
  signal c_4_i1_shift: signed(20 downto 0);
  signal c_4_arith: signed(20 downto 0);
  signal c_4_oshift: signed(20 downto 0);
  signal c_5: signed(17 downto 0);
  signal c_5_0_0_False_resize: signed(17 downto 0);
  signal c_5_0_0_False_shift: signed(17 downto 0);
  signal c_5_0_2_False_resize: signed(17 downto 0);
  signal c_5_0_2_False_shift: signed(17 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(21 downto 0);
  signal c_6_i0_resize: signed(21 downto 0);
  signal c_6_i1_resize: signed(21 downto 0);
  signal c_6_i0_shift: signed(21 downto 0);
  signal c_6_i1_shift: signed(21 downto 0);
  signal c_6_arith: signed(21 downto 0);
  signal c_6_oshift: signed(21 downto 0);
  signal c_7: signed(21 downto 0);
  signal c_7_1_4_False_resize: signed(21 downto 0);
  signal c_7_1_4_False_shift: signed(21 downto 0);
  signal c_7_6_0_False_resize: signed(21 downto 0);
  signal c_7_6_0_False_shift: signed(21 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_i0_resize: signed(22 downto 0);
  signal c_8_i1_resize: signed(22 downto 0);
  signal c_8_i0_shift: signed(22 downto 0);
  signal c_8_i1_shift: signed(22 downto 0);
  signal c_8_arith: signed(22 downto 0);
  signal c_8_oshift: signed(22 downto 0);
  signal c_9: signed(19 downto 0);
  signal c_9_1_1_False_resize: signed(19 downto 0);
  signal c_9_1_1_False_shift: signed(19 downto 0);
  signal c_9_2_0_False_resize: signed(19 downto 0);
  signal c_9_2_0_False_shift: signed(19 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(25 downto 0);
  signal c_10_i0_resize: signed(25 downto 0);
  signal c_10_i1_resize: signed(25 downto 0);
  signal c_10_i0_shift: signed(25 downto 0);
  signal c_10_i1_shift: signed(25 downto 0);
  signal c_10_arith: signed(25 downto 0);
  signal c_10_oshift: signed(25 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(22 downto 0);
  signal c_11_0_4_False_resize: signed(22 downto 0);
  signal c_11_0_4_False_shift: signed(22 downto 0);
  signal c_11_3_2_False_resize: signed(22 downto 0);
  signal c_11_3_2_False_shift: signed(22 downto 0);
  signal c_11_2_0_False_resize: signed(22 downto 0);
  signal c_11_2_0_False_shift: signed(22 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(25 downto 0);
  signal c_12_i0_resize: signed(25 downto 0);
  signal c_12_i1_resize: signed(25 downto 0);
  signal c_12_i0_shift: signed(25 downto 0);
  signal c_12_i1_shift: signed(25 downto 0);
  signal c_12_arith: signed(25 downto 0);
  signal c_12_oshift: signed(25 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(22 downto 0);
  signal c_13_12_0_False_resize: signed(22 downto 0);
  signal c_13_12_0_False_shift: signed(22 downto 0);
  signal c_13_8_0_False_resize: signed(22 downto 0);
  signal c_13_8_0_False_shift: signed(22 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(25 downto 0);
  signal c_14_i0_resize: signed(25 downto 0);
  signal c_14_i1_resize: signed(25 downto 0);
  signal c_14_i0_shift: signed(25 downto 0);
  signal c_14_i1_shift: signed(25 downto 0);
  signal c_14_arith: signed(25 downto 0);
  signal c_14_oshift: signed(25 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_i0_resize: signed(25 downto 0);
  signal c_15_i1_resize: signed(25 downto 0);
  signal c_15_i0_shift: signed(25 downto 0);
  signal c_15_i1_shift: signed(25 downto 0);
  signal c_15_arith: signed(25 downto 0);
  signal c_15_oshift: signed(25 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(23 downto 0);
  signal c_16_1_4_False_resize: signed(23 downto 0);
  signal c_16_1_4_False_shift: signed(23 downto 0);
  signal c_16_3_0_False_resize: signed(23 downto 0);
  signal c_16_3_0_False_shift: signed(23 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_15_0_False_resize: signed(25 downto 0);
  signal c_17_15_0_False_shift: signed(25 downto 0);
  signal c_17_0_6_False_resize: signed(25 downto 0);
  signal c_17_0_6_False_shift: signed(25 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_i0_resize: signed(25 downto 0);
  signal c_18_i1_resize: signed(25 downto 0);
  signal c_18_i0_shift: signed(25 downto 0);
  signal c_18_i1_shift: signed(25 downto 0);
  signal c_18_arith: signed(25 downto 0);
  signal c_18_oshift: signed(25 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(25 downto 0);
  signal c_19_resize: signed(25 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_8_0_False_resize: signed(25 downto 0);
  signal c_20_8_0_False_shift: signed(25 downto 0);
  signal c_20_6_4_False_resize: signed(25 downto 0);
  signal c_20_6_4_False_shift: signed(25 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_resize: signed(25 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_6_5_False_resize: signed(25 downto 0);
  signal c_22_6_5_False_shift: signed(25 downto 0);
  signal c_22_10_0_False_resize: signed(25 downto 0);
  signal c_22_10_0_False_shift: signed(25 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_resize: signed(25 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_resize: signed(25 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_resize: signed(25 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 19
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_19);
    end if;
  end process;
  -- output node 1 with id 21
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_21);
    end if;
  end process;
  -- output node 2 with id 23
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_23);
    end if;
  end process;
  -- output node 3 with id 24
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_24);
    end if;
  end process;
  -- output node 4 with id 25
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_25);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[3], [5], [3]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
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
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  c_1 <= c_1_oshift(18 downto 0);
  -- node of type 'add_sub' in stage 2 with id 2 and associated fundamentals [[5], [3], [1]]
  with config_select_2 select c_2_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
      w_o => 19,
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
      sub_i => c_2_sub_sel,
      x_i => c_1,
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(18 downto 0);
  -- node of type 'add_sub' in stage 3 with id 3 and associated fundamentals [[170], [102], [30]]
  with config_select_3 select c_3_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 24,
      s_x_i => 5,
      s_y_i => 1,
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
      y_i => c_2,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(23 downto 0);
  -- node of type 'add' in stage 2 with id 4 and associated fundamentals [[19], [21], [19]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
      w_o => 21,
      s_x_i => 0,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_1,
      y_i => c_0,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(20 downto 0);
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[4], [1], [1]]
  c_5_0_0_False_resize <= resize(c_0, 18);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_0_2_False_resize <= resize(c_0, 18);
  c_5_0_2_False_shift <= shift_left(c_5_0_2_False_resize, 2);
  with config_select_1 select c_5_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_0_0_False_shift when "0",
    c_5_0_2_False_shift when others;
  -- node of type 'add' in stage 3 with id 6 and associated fundamentals [[37], [11], [9]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 18,
      w_o => 22,
      s_x_i => 0,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_2,
      y_i => c_5,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(21 downto 0);
  -- node of type 'mux' in stage 4 with id 7 and associated fundamentals [[48], [11], [48]]
  c_7_1_4_False_resize <= resize(c_1, 22);
  c_7_1_4_False_shift <= shift_left(c_7_1_4_False_resize, 4);
  c_7_6_0_False_resize <= c_6;
  c_7_6_0_False_shift <= shift_left(c_7_6_0_False_resize, 0);
  with config_select_4 select c_7_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_1_4_False_shift when "0",
    c_7_6_0_False_shift when others;
  -- node of type 'add' in stage 5 with id 8 and associated fundamentals [[122], [33], [66]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 23,
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
      x_i => c_7,
      y_i => c_6,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(22 downto 0);
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[5], [10], [6]]
  c_9_1_1_False_resize <= resize(c_1, 20);
  c_9_1_1_False_shift <= shift_left(c_9_1_1_False_resize, 1);
  c_9_2_0_False_resize <= resize(c_2, 20);
  c_9_2_0_False_shift <= shift_left(c_9_2_0_False_resize, 0);
  with config_select_3 select c_9_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_1_1_False_shift when "0",
    c_9_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 10 and associated fundamentals [[675], [418], [126]]
  with config_select_4 select c_10_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 20,
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
      sub_i => c_10_sub_sel,
      x_i => c_3,
      y_i => c_9,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 11 and associated fundamentals [[5], [16], [120]]
  c_11_0_4_False_resize <= resize(c_0, 23);
  c_11_0_4_False_shift <= shift_left(c_11_0_4_False_resize, 4);
  c_11_3_2_False_resize <= c_3(22 downto 0);
  c_11_3_2_False_shift <= shift_left(c_11_3_2_False_resize, 2);
  c_11_2_0_False_resize <= resize(c_2, 23);
  c_11_2_0_False_shift <= shift_left(c_11_2_0_False_resize, 0);
  with config_select_4 select c_11_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_11_sel select c_11 <=
    c_11_0_4_False_shift when "00",
    c_11_3_2_False_shift when "01",
    c_11_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 12 and associated fundamentals [[59], [107], [941]]
  with config_select_5 select c_12_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
      w_o => 26,
      s_x_i => 3,
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
      x_i => c_11,
      y_i => c_4,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(25 downto 0);
  -- node of type 'mux' in stage 6 with id 13 and associated fundamentals [[122], [107], [66]]
  c_13_12_0_False_resize <= c_12(22 downto 0);
  c_13_12_0_False_shift <= shift_left(c_13_12_0_False_resize, 0);
  c_13_8_0_False_resize <= c_8;
  c_13_8_0_False_shift <= shift_left(c_13_8_0_False_resize, 0);
  with config_select_6 select c_13_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_12_0_False_shift when "0",
    c_13_8_0_False_shift when others;
  -- node of type 'add' in stage 7 with id 14 and associated fundamentals [[506], [747], [450]]
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 23,
      w_o => 26,
      s_x_i => 7,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_1,
      y_i => c_13,
      z_o => c_14_oshift
    );
  c_14 <= c_14_oshift(25 downto 0);
  -- node of type 'add_sub' in stage 6 with id 15 and associated fundamentals [[739], [-301], [821]]
  with config_select_6 select c_15_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
      w_o => 26,
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
      sub_i => c_15_sub_sel,
      x_i => c_12,
      y_i => c_3,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 16 and associated fundamentals [[170], [102], [48]]
  c_16_1_4_False_resize <= resize(c_1, 24);
  c_16_1_4_False_shift <= shift_left(c_16_1_4_False_resize, 4);
  c_16_3_0_False_resize <= c_3;
  c_16_3_0_False_shift <= shift_left(c_16_3_0_False_resize, 0);
  with config_select_4 select c_16_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_1_4_False_shift when "0",
    c_16_3_0_False_shift when others;
  -- node of type 'mux' in stage 7 with id 17 and associated fundamentals [[64], [-301], [821]]
  c_17_15_0_False_resize <= c_15;
  c_17_15_0_False_shift <= shift_left(c_17_15_0_False_resize, 0);
  c_17_0_6_False_resize <= resize(c_0, 26);
  c_17_0_6_False_shift <= shift_left(c_17_0_6_False_resize, 6);
  with config_select_7 select c_17_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  with c_17_sel select c_17 <=
    c_17_15_0_False_shift when "0",
    c_17_0_6_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 18 and associated fundamentals [[744], [709], [1013]]
  with config_select_8 select c_18_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 26,
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
  -- node of type 'output' in stage 8 with id 19 and associated fundamentals [[744], [709], [1013]]
  c_19_resize <= c_18;
  c_19 <= shift_left(c_19_resize, 0);
  -- node of type 'mux' in stage 6 with id 20 and associated fundamentals [[592], [33], [66]]
  c_20_8_0_False_resize <= resize(c_8, 26);
  c_20_8_0_False_shift <= shift_left(c_20_8_0_False_resize, 0);
  c_20_6_4_False_resize <= resize(c_6, 26);
  c_20_6_4_False_shift <= shift_left(c_20_6_4_False_resize, 4);
  with config_select_6 select c_20_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  with c_20_sel select c_20 <=
    c_20_8_0_False_shift when "0",
    c_20_6_4_False_shift when others;
  -- node of type 'output' in stage 6 with id 21 and associated fundamentals [[592], [33], [66]]
  c_21_resize <= c_20;
  c_21 <= shift_left(c_21_resize, 0);
  -- node of type 'mux' in stage 5 with id 22 and associated fundamentals [[675], [352], [126]]
  c_22_6_5_False_resize <= resize(c_6, 26);
  c_22_6_5_False_shift <= shift_left(c_22_6_5_False_resize, 5);
  c_22_10_0_False_resize <= c_10;
  c_22_10_0_False_shift <= shift_left(c_22_10_0_False_resize, 0);
  with config_select_5 select c_22_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_22_sel select c_22 <=
    c_22_6_5_False_shift when "0",
    c_22_10_0_False_shift when others;
  -- node of type 'output' in stage 5 with id 23 and associated fundamentals [[675], [352], [126]]
  c_23_resize <= c_22;
  c_23 <= shift_left(c_23_resize, 0);
  -- node of type 'output' in stage 7 with id 24 and associated fundamentals [[506], [747], [450]]
  c_24_resize <= c_14;
  c_24 <= shift_left(c_24_resize, 0);
  -- node of type 'output' in stage 5 with id 25 and associated fundamentals [[59], [107], [941]]
  c_25_resize <= c_12;
  c_25 <= shift_left(c_25_resize, 0);
end architecture;
