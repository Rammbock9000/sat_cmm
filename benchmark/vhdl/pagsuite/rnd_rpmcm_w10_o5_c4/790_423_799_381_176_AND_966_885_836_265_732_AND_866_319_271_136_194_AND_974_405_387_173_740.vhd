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
    y_3: out std_logic_vector(24 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_i0_resize: signed(17 downto 0);
  signal c_1_i1_resize: signed(17 downto 0);
  signal c_1_i0_shift: signed(17 downto 0);
  signal c_1_i1_shift: signed(17 downto 0);
  signal c_1_arith: signed(17 downto 0);
  signal c_1_oshift: signed(17 downto 0);
  signal c_2: signed(20 downto 0);
  signal c_2_i0_resize: signed(20 downto 0);
  signal c_2_i1_resize: signed(20 downto 0);
  signal c_2_i0_shift: signed(20 downto 0);
  signal c_2_i1_shift: signed(20 downto 0);
  signal c_2_arith: signed(20 downto 0);
  signal c_2_oshift: signed(20 downto 0);
  signal c_3: signed(17 downto 0);
  signal c_4: signed(19 downto 0);
  signal c_4_1_0_False_resize: signed(19 downto 0);
  signal c_4_1_0_False_shift: signed(19 downto 0);
  signal c_4_1_2_False_resize: signed(19 downto 0);
  signal c_4_1_2_False_shift: signed(19 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_i0_resize: signed(22 downto 0);
  signal c_5_i1_resize: signed(22 downto 0);
  signal c_5_i0_shift: signed(22 downto 0);
  signal c_5_i1_shift: signed(22 downto 0);
  signal c_5_arith: signed(22 downto 0);
  signal c_5_oshift: signed(22 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(18 downto 0);
  signal c_6_1_0_False_resize: signed(18 downto 0);
  signal c_6_1_0_False_shift: signed(18 downto 0);
  signal c_6_1_1_False_resize: signed(18 downto 0);
  signal c_6_1_1_False_shift: signed(18 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(20 downto 0);
  signal c_8: signed(21 downto 0);
  signal c_8_i0_resize: signed(21 downto 0);
  signal c_8_i1_resize: signed(21 downto 0);
  signal c_8_i0_shift: signed(21 downto 0);
  signal c_8_i1_shift: signed(21 downto 0);
  signal c_8_arith: signed(21 downto 0);
  signal c_8_oshift: signed(21 downto 0);
  signal c_9: signed(18 downto 0);
  signal c_9_1_1_False_resize: signed(18 downto 0);
  signal c_9_1_1_False_shift: signed(18 downto 0);
  signal c_9_1_0_False_resize: signed(18 downto 0);
  signal c_9_1_0_False_shift: signed(18 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(21 downto 0);
  signal c_10_i0_resize: signed(21 downto 0);
  signal c_10_i1_resize: signed(21 downto 0);
  signal c_10_i0_shift: signed(21 downto 0);
  signal c_10_i1_shift: signed(21 downto 0);
  signal c_10_arith: signed(21 downto 0);
  signal c_10_oshift: signed(21 downto 0);
  signal c_11: signed(21 downto 0);
  signal c_11_i0_resize: signed(21 downto 0);
  signal c_11_i1_resize: signed(21 downto 0);
  signal c_11_i0_shift: signed(21 downto 0);
  signal c_11_i1_shift: signed(21 downto 0);
  signal c_11_arith: signed(21 downto 0);
  signal c_11_oshift: signed(21 downto 0);
  signal c_12: signed(19 downto 0);
  signal c_12_1_2_False_resize: signed(19 downto 0);
  signal c_12_1_2_False_shift: signed(19 downto 0);
  signal c_12_1_0_False_resize: signed(19 downto 0);
  signal c_12_1_0_False_shift: signed(19 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(22 downto 0);
  signal c_13_i0_resize: signed(22 downto 0);
  signal c_13_i1_resize: signed(22 downto 0);
  signal c_13_i0_shift: signed(22 downto 0);
  signal c_13_i1_shift: signed(22 downto 0);
  signal c_13_arith: signed(22 downto 0);
  signal c_13_oshift: signed(22 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(22 downto 0);
  signal c_14_i0_resize: signed(22 downto 0);
  signal c_14_i1_resize: signed(22 downto 0);
  signal c_14_i0_shift: signed(22 downto 0);
  signal c_14_i1_shift: signed(22 downto 0);
  signal c_14_arith: signed(22 downto 0);
  signal c_14_oshift: signed(22 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_10_0_False_resize: signed(23 downto 0);
  signal c_15_10_0_False_shift: signed(23 downto 0);
  signal c_15_5_3_False_resize: signed(23 downto 0);
  signal c_15_5_3_False_shift: signed(23 downto 0);
  signal c_15_13_0_False_resize: signed(23 downto 0);
  signal c_15_13_0_False_shift: signed(23 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(24 downto 0);
  signal c_16_11_3_False_resize: signed(24 downto 0);
  signal c_16_11_3_False_shift: signed(24 downto 0);
  signal c_16_10_3_False_resize: signed(24 downto 0);
  signal c_16_10_3_False_shift: signed(24 downto 0);
  signal c_16_10_0_False_resize: signed(24 downto 0);
  signal c_16_10_0_False_shift: signed(24 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_i0_resize: signed(25 downto 0);
  signal c_17_i1_resize: signed(25 downto 0);
  signal c_17_i0_shift: signed(25 downto 0);
  signal c_17_i1_shift: signed(25 downto 0);
  signal c_17_arith: signed(25 downto 0);
  signal c_17_oshift: signed(25 downto 0);
  signal c_17_sub_sel_left: std_logic;
  signal c_17_sub_sel_right: std_logic;
  signal c_18: signed(24 downto 0);
  signal c_18_8_0_False_resize: signed(24 downto 0);
  signal c_18_8_0_False_shift: signed(24 downto 0);
  signal c_18_13_4_False_resize: signed(24 downto 0);
  signal c_18_13_4_False_shift: signed(24 downto 0);
  signal c_18_5_0_False_resize: signed(24 downto 0);
  signal c_18_5_0_False_shift: signed(24 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(22 downto 0);
  signal c_19_8_1_False_resize: signed(22 downto 0);
  signal c_19_8_1_False_shift: signed(22 downto 0);
  signal c_19_5_1_False_resize: signed(22 downto 0);
  signal c_19_5_1_False_shift: signed(22 downto 0);
  signal c_19_8_0_False_resize: signed(22 downto 0);
  signal c_19_8_0_False_shift: signed(22 downto 0);
  signal c_19_10_1_False_resize: signed(22 downto 0);
  signal c_19_10_1_False_shift: signed(22 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(24 downto 0);
  signal c_20_i0_resize: signed(24 downto 0);
  signal c_20_i1_resize: signed(24 downto 0);
  signal c_20_i0_shift: signed(24 downto 0);
  signal c_20_i1_shift: signed(24 downto 0);
  signal c_20_arith: signed(24 downto 0);
  signal c_20_oshift: signed(24 downto 0);
  signal c_20_sub_sel_left: std_logic;
  signal c_20_sub_sel_right: std_logic;
  signal c_21: signed(22 downto 0);
  signal c_21_5_2_False_resize: signed(22 downto 0);
  signal c_21_5_2_False_shift: signed(22 downto 0);
  signal c_21_11_1_False_resize: signed(22 downto 0);
  signal c_21_11_1_False_shift: signed(22 downto 0);
  signal c_21_5_0_False_resize: signed(22 downto 0);
  signal c_21_5_0_False_shift: signed(22 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(21 downto 0);
  signal c_22_11_0_False_resize: signed(21 downto 0);
  signal c_22_11_0_False_shift: signed(21 downto 0);
  signal c_22_8_0_False_resize: signed(21 downto 0);
  signal c_22_8_0_False_shift: signed(21 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_i0_resize: signed(25 downto 0);
  signal c_23_i1_resize: signed(25 downto 0);
  signal c_23_i0_shift: signed(25 downto 0);
  signal c_23_i1_shift: signed(25 downto 0);
  signal c_23_arith: signed(25 downto 0);
  signal c_23_oshift: signed(25 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(22 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_14_1_False_resize: signed(23 downto 0);
  signal c_25_14_1_False_shift: signed(23 downto 0);
  signal c_25_11_0_False_resize: signed(23 downto 0);
  signal c_25_11_0_False_shift: signed(23 downto 0);
  signal c_25_5_2_False_resize: signed(23 downto 0);
  signal c_25_5_2_False_shift: signed(23 downto 0);
  signal c_25_14_0_False_resize: signed(23 downto 0);
  signal c_25_14_0_False_shift: signed(23 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_i0_resize: signed(25 downto 0);
  signal c_26_i1_resize: signed(25 downto 0);
  signal c_26_i0_shift: signed(25 downto 0);
  signal c_26_i1_shift: signed(25 downto 0);
  signal c_26_arith: signed(25 downto 0);
  signal c_26_oshift: signed(25 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(23 downto 0);
  signal c_27_8_0_False_resize: signed(23 downto 0);
  signal c_27_8_0_False_shift: signed(23 downto 0);
  signal c_27_11_0_False_resize: signed(23 downto 0);
  signal c_27_11_0_False_shift: signed(23 downto 0);
  signal c_27_10_2_False_resize: signed(23 downto 0);
  signal c_27_10_2_False_shift: signed(23 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_28_8_1_False_resize: signed(22 downto 0);
  signal c_28_8_1_False_shift: signed(22 downto 0);
  signal c_28_8_0_False_resize: signed(22 downto 0);
  signal c_28_8_0_False_shift: signed(22 downto 0);
  signal c_28_13_0_False_resize: signed(22 downto 0);
  signal c_28_13_0_False_shift: signed(22 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_i0_resize: signed(25 downto 0);
  signal c_29_i1_resize: signed(25 downto 0);
  signal c_29_i0_shift: signed(25 downto 0);
  signal c_29_i1_shift: signed(25 downto 0);
  signal c_29_arith: signed(25 downto 0);
  signal c_29_oshift: signed(25 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_resize: signed(25 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_resize: signed(25 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_resize: signed(25 downto 0);
  signal c_33: signed(24 downto 0);
  signal c_33_resize: signed(24 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_34_resize: signed(25 downto 0);
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
  -- output node 0 with id 30
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_30);
    end if;
  end process;
  -- output node 1 with id 31
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_31);
    end if;
  end process;
  -- output node 2 with id 32
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_32);
    end if;
  end process;
  -- output node 3 with id 33
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_33);
    end if;
  end process;
  -- output node 4 with id 34
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_34);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 1 and associated fundamentals [[3], [3], [3], [3]]
  inst_adder_node_1: entity work.adder_node
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  c_1 <= c_1_oshift(17 downto 0);
  -- node of type 'sub' in stage 1 with id 2 and associated fundamentals [[31], [31], [31], [31]]
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 21,
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(20 downto 0);
  -- node of type 'register' in stage 2 with id 3 and associated fundamentals [[3], [3], [3], [3]]
  c_3 <= c_1 & "";
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[3], [12], [12], [3]]
  c_4_1_0_False_resize <= resize(c_1, 20);
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  c_4_1_2_False_resize <= resize(c_1, 20);
  c_4_1_2_False_shift <= shift_left(c_4_1_2_False_resize, 2);
  with config_select_2 select c_4_sel <= 
    "0" when "00",
    "0" when "11",
    "1" when "01",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_1_0_False_shift when "0",
    c_4_1_2_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[27], [93], [99], [27]]
  with config_select_3 select c_5_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 18,
      w_o => 23,
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
      sub_i => c_5_sub_sel,
      x_i => c_4,
      y_i => c_3,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(22 downto 0);
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[3], [6], [3], [6]]
  c_6_1_0_False_resize <= resize(c_1, 19);
  c_6_1_0_False_shift <= shift_left(c_6_1_0_False_resize, 0);
  c_6_1_1_False_resize <= resize(c_1, 19);
  c_6_1_1_False_shift <= shift_left(c_6_1_1_False_resize, 1);
  with config_select_2 select c_6_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when "01",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_1_0_False_shift when "0",
    c_6_1_1_False_shift when others;
  -- node of type 'register' in stage 2 with id 7 and associated fundamentals [[31], [31], [31], [31]]
  c_7 <= c_2 & "";
  -- node of type 'add' in stage 3 with id 8 and associated fundamentals [[37], [43], [37], [43]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 21,
      w_o => 22,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(21 downto 0);
  -- node of type 'mux' in stage 2 with id 9 and associated fundamentals [[6], [3], [6], [3]]
  c_9_1_1_False_resize <= resize(c_1, 19);
  c_9_1_1_False_shift <= shift_left(c_9_1_1_False_resize, 1);
  c_9_1_0_False_resize <= resize(c_1, 19);
  c_9_1_0_False_shift <= shift_left(c_9_1_0_False_resize, 0);
  with config_select_2 select c_9_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when "01",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_1_1_False_shift when "0",
    c_9_1_0_False_shift when others;
  -- node of type 'add' in stage 3 with id 10 and associated fundamentals [[43], [37], [43], [37]]
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 21,
      w_o => 22,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_9,
      y_i => c_7,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(21 downto 0);
  -- node of type 'add' in stage 3 with id 11 and associated fundamentals [[55], [55], [55], [55]]
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 21,
      w_o => 22,
      s_x_i => 3,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_3,
      y_i => c_7,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(21 downto 0);
  -- node of type 'mux' in stage 2 with id 12 and associated fundamentals [[12], [12], [3], [3]]
  c_12_1_2_False_resize <= resize(c_1, 20);
  c_12_1_2_False_shift <= shift_left(c_12_1_2_False_resize, 2);
  c_12_1_0_False_resize <= resize(c_1, 20);
  c_12_1_0_False_shift <= shift_left(c_12_1_0_False_resize, 0);
  with config_select_2 select c_12_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "10" when others;
  with c_12_sel select c_12 <=
    c_12_1_2_False_shift when "00",
    c_12_1_0_False_shift when "01",
    to_signed(0, 20) when others;
  -- node of type 'add_sub' in stage 3 with id 13 and associated fundamentals [[93], [93], [27], [27]]
  with config_select_3 select c_13_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 18,
      w_o => 23,
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
      sub_i => c_13_sub_sel,
      x_i => c_12,
      y_i => c_3,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(22 downto 0);
  -- node of type 'add' in stage 3 with id 14 and associated fundamentals [[99], [99], [99], [99]]
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_3,
      y_i => c_3,
      z_o => c_14_oshift
    );
  c_14 <= c_14_oshift(22 downto 0);
  -- node of type 'mux' in stage 4 with id 15 and associated fundamentals [[216], [37], [27], [37]]
  c_15_10_0_False_resize <= resize(c_10, 24);
  c_15_10_0_False_shift <= shift_left(c_15_10_0_False_resize, 0);
  c_15_5_3_False_resize <= resize(c_5, 24);
  c_15_5_3_False_shift <= shift_left(c_15_5_3_False_resize, 3);
  c_15_13_0_False_resize <= resize(c_13, 24);
  c_15_13_0_False_shift <= shift_left(c_15_13_0_False_resize, 0);
  with config_select_4 select c_15_sel <= 
    "00" when "11",
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_15_sel select c_15 <=
    c_15_10_0_False_shift when "00",
    c_15_5_3_False_shift when "01",
    c_15_13_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 16 and associated fundamentals [[344], [440], [43], [296]]
  c_16_11_3_False_resize <= resize(c_11, 25);
  c_16_11_3_False_shift <= shift_left(c_16_11_3_False_resize, 3);
  c_16_10_3_False_resize <= resize(c_10, 25);
  c_16_10_3_False_shift <= shift_left(c_16_10_3_False_resize, 3);
  c_16_10_0_False_resize <= resize(c_10, 25);
  c_16_10_0_False_shift <= shift_left(c_16_10_0_False_resize, 0);
  with config_select_4 select c_16_sel <= 
    "00" when "01",
    "01" when "00",
    "01" when "11",
    "10" when others;
  with c_16_sel select c_16 <=
    c_16_11_3_False_shift when "00",
    c_16_10_3_False_shift when "01",
    c_16_10_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 17 and associated fundamentals [[176], [732], [194], [740]]
  with config_select_5 select c_17_sub_sel_left <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  with config_select_5 select c_17_sub_sel_right <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 25,
      w_o => 26,
      s_x_i => 2,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => True,
      sub => False
    )
    port map (
      sub_a_i => c_17_sub_sel_left,
      sub_b_i => c_17_sub_sel_right,
      x_i => c_15,
      y_i => c_16,
      z_o => c_17_oshift
    );
  c_17 <= c_17_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 18 and associated fundamentals [[37], [93], [432], [43]]
  c_18_8_0_False_resize <= resize(c_8, 25);
  c_18_8_0_False_shift <= shift_left(c_18_8_0_False_resize, 0);
  c_18_13_4_False_resize <= resize(c_13, 25);
  c_18_13_4_False_shift <= shift_left(c_18_13_4_False_resize, 4);
  c_18_5_0_False_resize <= resize(c_5, 25);
  c_18_5_0_False_shift <= shift_left(c_18_5_0_False_resize, 0);
  with config_select_4 select c_18_sel <= 
    "00" when "11",
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_18_sel select c_18 <=
    c_18_8_0_False_shift when "00",
    c_18_13_4_False_shift when "01",
    c_18_5_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 19 and associated fundamentals [[86], [43], [74], [54]]
  c_19_8_1_False_resize <= resize(c_8, 23);
  c_19_8_1_False_shift <= shift_left(c_19_8_1_False_resize, 1);
  c_19_5_1_False_resize <= c_5;
  c_19_5_1_False_shift <= shift_left(c_19_5_1_False_resize, 1);
  c_19_8_0_False_resize <= resize(c_8, 23);
  c_19_8_0_False_shift <= shift_left(c_19_8_0_False_resize, 0);
  c_19_10_1_False_resize <= resize(c_10, 23);
  c_19_10_1_False_shift <= shift_left(c_19_10_1_False_resize, 1);
  with config_select_4 select c_19_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  with c_19_sel select c_19 <=
    c_19_8_1_False_shift when "00",
    c_19_5_1_False_shift when "01",
    c_19_8_0_False_shift when "10",
    c_19_10_1_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 20 and associated fundamentals [[381], [265], [136], [173]]
  with config_select_5 select c_20_sub_sel_left <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  with config_select_5 select c_20_sub_sel_right <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => True,
      sub => False
    )
    port map (
      sub_a_i => c_20_sub_sel_left,
      sub_b_i => c_20_sub_sel_right,
      x_i => c_18,
      y_i => c_19,
      z_o => c_20_oshift
    );
  c_20 <= c_20_oshift(24 downto 0);
  -- node of type 'mux' in stage 4 with id 21 and associated fundamentals [[108], [110], [99], [108]]
  c_21_5_2_False_resize <= c_5;
  c_21_5_2_False_shift <= shift_left(c_21_5_2_False_resize, 2);
  c_21_11_1_False_resize <= resize(c_11, 23);
  c_21_11_1_False_shift <= shift_left(c_21_11_1_False_resize, 1);
  c_21_5_0_False_resize <= c_5;
  c_21_5_0_False_shift <= shift_left(c_21_5_0_False_resize, 0);
  with config_select_4 select c_21_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "01",
    "10" when others;
  with c_21_sel select c_21 <=
    c_21_5_2_False_shift when "00",
    c_21_11_1_False_shift when "01",
    c_21_5_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 22 and associated fundamentals [[37], [43], [37], [55]]
  c_22_11_0_False_resize <= c_11;
  c_22_11_0_False_shift <= shift_left(c_22_11_0_False_resize, 0);
  c_22_8_0_False_resize <= c_8;
  c_22_8_0_False_shift <= shift_left(c_22_8_0_False_resize, 0);
  with config_select_4 select c_22_sel <= 
    "0" when "11",
    "1" when "00",
    "1" when "01",
    "1" when others;
  with c_22_sel select c_22 <=
    c_22_11_0_False_shift when "0",
    c_22_8_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 23 and associated fundamentals [[790], [966], [866], [974]]
  with config_select_5 select c_23_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
      w_o => 26,
      s_x_i => 3,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_23_sub_sel,
      x_i => c_21,
      y_i => c_22,
      z_o => c_23_oshift
    );
  c_23 <= c_23_oshift(25 downto 0);
  -- node of type 'register' in stage 4 with id 24 and associated fundamentals [[27], [93], [99], [27]]
  c_24 <= c_5 & "";
  -- node of type 'mux' in stage 4 with id 25 and associated fundamentals [[99], [198], [55], [108]]
  c_25_14_1_False_resize <= resize(c_14, 24);
  c_25_14_1_False_shift <= shift_left(c_25_14_1_False_resize, 1);
  c_25_11_0_False_resize <= resize(c_11, 24);
  c_25_11_0_False_shift <= shift_left(c_25_11_0_False_resize, 0);
  c_25_5_2_False_resize <= resize(c_5, 24);
  c_25_5_2_False_shift <= shift_left(c_25_5_2_False_resize, 2);
  c_25_14_0_False_resize <= resize(c_14, 24);
  c_25_14_0_False_shift <= shift_left(c_25_14_0_False_resize, 0);
  with config_select_4 select c_25_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "11" when others;
  with c_25_sel select c_25 <=
    c_25_14_1_False_shift when "00",
    c_25_11_0_False_shift when "01",
    c_25_5_2_False_shift when "10",
    c_25_14_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 26 and associated fundamentals [[423], [885], [319], [405]]
  with config_select_5 select c_26_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_26: entity work.adder_node
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
      sub_i => c_26_sub_sel,
      x_i => c_25,
      y_i => c_24,
      z_o => c_26_oshift
    );
  c_26 <= c_26_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 27 and associated fundamentals [[55], [148], [55], [43]]
  c_27_8_0_False_resize <= resize(c_8, 24);
  c_27_8_0_False_shift <= shift_left(c_27_8_0_False_resize, 0);
  c_27_11_0_False_resize <= resize(c_11, 24);
  c_27_11_0_False_shift <= shift_left(c_27_11_0_False_resize, 0);
  c_27_10_2_False_resize <= resize(c_10, 24);
  c_27_10_2_False_shift <= shift_left(c_27_10_2_False_resize, 2);
  with config_select_4 select c_27_sel <= 
    "00" when "11",
    "01" when "10",
    "01" when "00",
    "10" when others;
  with c_27_sel select c_27 <=
    c_27_8_0_False_shift when "00",
    c_27_11_0_False_shift when "01",
    c_27_10_2_False_shift when others;
  -- node of type 'mux' in stage 4 with id 28 and associated fundamentals [[93], [86], [27], [43]]
  c_28_8_1_False_resize <= resize(c_8, 23);
  c_28_8_1_False_shift <= shift_left(c_28_8_1_False_resize, 1);
  c_28_8_0_False_resize <= resize(c_8, 23);
  c_28_8_0_False_shift <= shift_left(c_28_8_0_False_resize, 0);
  c_28_13_0_False_resize <= c_13;
  c_28_13_0_False_shift <= shift_left(c_28_13_0_False_resize, 0);
  with config_select_4 select c_28_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "10" when others;
  with c_28_sel select c_28 <=
    c_28_8_1_False_shift when "00",
    c_28_8_0_False_shift when "01",
    c_28_13_0_False_shift when others;
  -- node of type 'add' in stage 5 with id 29 and associated fundamentals [[799], [836], [271], [387]]
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
      w_o => 26,
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
      x_i => c_27,
      y_i => c_28,
      z_o => c_29_oshift
    );
  c_29 <= c_29_oshift(25 downto 0);
  -- node of type 'output' in stage 5 with id 30 and associated fundamentals [[790], [966], [866], [974]]
  c_30_resize <= c_23;
  c_30 <= shift_left(c_30_resize, 0);
  -- node of type 'output' in stage 5 with id 31 and associated fundamentals [[423], [885], [319], [405]]
  c_31_resize <= c_26;
  c_31 <= shift_left(c_31_resize, 0);
  -- node of type 'output' in stage 5 with id 32 and associated fundamentals [[799], [836], [271], [387]]
  c_32_resize <= c_29;
  c_32 <= shift_left(c_32_resize, 0);
  -- node of type 'output' in stage 5 with id 33 and associated fundamentals [[381], [265], [136], [173]]
  c_33_resize <= c_20;
  c_33 <= shift_left(c_33_resize, 0);
  -- node of type 'output' in stage 5 with id 34 and associated fundamentals [[176], [732], [194], [740]]
  c_34_resize <= c_17;
  c_34 <= shift_left(c_34_resize, 0);
end architecture;
