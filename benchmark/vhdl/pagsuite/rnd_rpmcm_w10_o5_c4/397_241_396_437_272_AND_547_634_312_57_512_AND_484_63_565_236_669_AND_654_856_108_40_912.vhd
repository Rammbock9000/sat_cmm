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
  signal c_1: signed(15 downto 0);
  signal c_2: signed(18 downto 0);
  signal c_2_i0_resize: signed(18 downto 0);
  signal c_2_i1_resize: signed(18 downto 0);
  signal c_2_i0_shift: signed(18 downto 0);
  signal c_2_i1_shift: signed(18 downto 0);
  signal c_2_arith: signed(18 downto 0);
  signal c_2_oshift: signed(18 downto 0);
  signal c_3: signed(15 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_4_1_0_False_resize: signed(15 downto 0);
  signal c_4_1_0_False_shift: signed(15 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(18 downto 0);
  signal c_5_i0_resize: signed(18 downto 0);
  signal c_5_i1_resize: signed(18 downto 0);
  signal c_5_i0_shift: signed(18 downto 0);
  signal c_5_i1_shift: signed(18 downto 0);
  signal c_5_arith: signed(18 downto 0);
  signal c_5_oshift: signed(18 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_6_1_0_False_resize: signed(15 downto 0);
  signal c_6_1_0_False_shift: signed(15 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(19 downto 0);
  signal c_7_i0_resize: signed(19 downto 0);
  signal c_7_i1_resize: signed(19 downto 0);
  signal c_7_i0_shift: signed(19 downto 0);
  signal c_7_i1_shift: signed(19 downto 0);
  signal c_7_arith: signed(19 downto 0);
  signal c_7_oshift: signed(19 downto 0);
  signal c_8: signed(18 downto 0);
  signal c_9: signed(20 downto 0);
  signal c_9_i0_resize: signed(20 downto 0);
  signal c_9_i1_resize: signed(20 downto 0);
  signal c_9_i0_shift: signed(20 downto 0);
  signal c_9_i1_shift: signed(20 downto 0);
  signal c_9_arith: signed(20 downto 0);
  signal c_9_oshift: signed(20 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_2_4_False_resize: signed(22 downto 0);
  signal c_10_2_4_False_shift: signed(22 downto 0);
  signal c_10_1_0_False_resize: signed(22 downto 0);
  signal c_10_1_0_False_shift: signed(22 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(24 downto 0);
  signal c_11_i0_resize: signed(24 downto 0);
  signal c_11_i1_resize: signed(24 downto 0);
  signal c_11_i0_shift: signed(24 downto 0);
  signal c_11_i1_shift: signed(24 downto 0);
  signal c_11_arith: signed(24 downto 0);
  signal c_11_oshift: signed(24 downto 0);
  signal c_12: signed(16 downto 0);
  signal c_12_1_0_False_resize: signed(16 downto 0);
  signal c_12_1_0_False_shift: signed(16 downto 0);
  signal c_12_1_1_False_resize: signed(16 downto 0);
  signal c_12_1_1_False_shift: signed(16 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(19 downto 0);
  signal c_13_i0_resize: signed(19 downto 0);
  signal c_13_i1_resize: signed(19 downto 0);
  signal c_13_i0_shift: signed(19 downto 0);
  signal c_13_i1_shift: signed(19 downto 0);
  signal c_13_arith: signed(19 downto 0);
  signal c_13_oshift: signed(19 downto 0);
  signal c_14: signed(21 downto 0);
  signal c_14_5_5_False_resize: signed(21 downto 0);
  signal c_14_5_5_False_shift: signed(21 downto 0);
  signal c_14_5_0_False_resize: signed(21 downto 0);
  signal c_14_5_0_False_shift: signed(21 downto 0);
  signal c_14_5_3_False_resize: signed(21 downto 0);
  signal c_14_5_3_False_shift: signed(21 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_5_8_False_resize: signed(25 downto 0);
  signal c_15_5_8_False_shift: signed(25 downto 0);
  signal c_15_9_0_False_resize: signed(25 downto 0);
  signal c_15_9_0_False_shift: signed(25 downto 0);
  signal c_15_9_5_False_resize: signed(25 downto 0);
  signal c_15_9_5_False_shift: signed(25 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(25 downto 0);
  signal c_16_i1_resize: signed(25 downto 0);
  signal c_16_i0_shift: signed(25 downto 0);
  signal c_16_i1_shift: signed(25 downto 0);
  signal c_16_arith: signed(25 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(19 downto 0);
  signal c_17_5_3_False_resize: signed(19 downto 0);
  signal c_17_5_3_False_shift: signed(19 downto 0);
  signal c_17_5_1_False_resize: signed(19 downto 0);
  signal c_17_5_1_False_shift: signed(19 downto 0);
  signal c_17_13_0_False_resize: signed(19 downto 0);
  signal c_17_13_0_False_shift: signed(19 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(22 downto 0);
  signal c_18_9_2_False_resize: signed(22 downto 0);
  signal c_18_9_2_False_shift: signed(22 downto 0);
  signal c_18_5_3_False_resize: signed(22 downto 0);
  signal c_18_5_3_False_shift: signed(22 downto 0);
  signal c_18_11_0_False_resize: signed(22 downto 0);
  signal c_18_11_0_False_shift: signed(22 downto 0);
  signal c_18_13_2_False_resize: signed(22 downto 0);
  signal c_18_13_2_False_shift: signed(22 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_i0_resize: signed(25 downto 0);
  signal c_19_i1_resize: signed(25 downto 0);
  signal c_19_i0_shift: signed(25 downto 0);
  signal c_19_i1_shift: signed(25 downto 0);
  signal c_19_arith: signed(25 downto 0);
  signal c_19_oshift: signed(25 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_7_0_False_resize: signed(25 downto 0);
  signal c_20_7_0_False_shift: signed(25 downto 0);
  signal c_20_9_1_False_resize: signed(25 downto 0);
  signal c_20_9_1_False_shift: signed(25 downto 0);
  signal c_20_9_5_False_resize: signed(25 downto 0);
  signal c_20_9_5_False_shift: signed(25 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_21_9_0_False_resize: signed(22 downto 0);
  signal c_21_9_0_False_shift: signed(22 downto 0);
  signal c_21_7_0_False_resize: signed(22 downto 0);
  signal c_21_7_0_False_shift: signed(22 downto 0);
  signal c_21_7_3_False_resize: signed(22 downto 0);
  signal c_21_7_3_False_shift: signed(22 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_i0_resize: signed(25 downto 0);
  signal c_22_i1_resize: signed(25 downto 0);
  signal c_22_i0_shift: signed(25 downto 0);
  signal c_22_i1_shift: signed(25 downto 0);
  signal c_22_arith: signed(25 downto 0);
  signal c_22_oshift: signed(25 downto 0);
  signal c_22_sub_sel_left: std_logic;
  signal c_22_sub_sel_right: std_logic;
  signal c_23: signed(24 downto 0);
  signal c_23_5_2_False_resize: signed(24 downto 0);
  signal c_23_5_2_False_shift: signed(24 downto 0);
  signal c_23_9_0_False_resize: signed(24 downto 0);
  signal c_23_9_0_False_shift: signed(24 downto 0);
  signal c_23_5_8_False_resize: signed(24 downto 0);
  signal c_23_5_8_False_shift: signed(24 downto 0);
  signal c_23_11_0_False_resize: signed(24 downto 0);
  signal c_23_11_0_False_shift: signed(24 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(24 downto 0);
  signal c_24_9_0_False_resize: signed(24 downto 0);
  signal c_24_9_0_False_shift: signed(24 downto 0);
  signal c_24_9_3_False_resize: signed(24 downto 0);
  signal c_24_9_3_False_shift: signed(24 downto 0);
  signal c_24_11_0_False_resize: signed(24 downto 0);
  signal c_24_11_0_False_shift: signed(24 downto 0);
  signal c_24_7_5_False_resize: signed(24 downto 0);
  signal c_24_7_5_False_shift: signed(24 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_i0_resize: signed(25 downto 0);
  signal c_25_i1_resize: signed(25 downto 0);
  signal c_25_i0_shift: signed(25 downto 0);
  signal c_25_i1_shift: signed(25 downto 0);
  signal c_25_arith: signed(25 downto 0);
  signal c_25_oshift: signed(25 downto 0);
  signal c_25_sub_sel_left: std_logic;
  signal c_25_sub_sel_right: std_logic;
  signal c_26: signed(24 downto 0);
  signal c_26_13_3_False_resize: signed(24 downto 0);
  signal c_26_13_3_False_shift: signed(24 downto 0);
  signal c_26_5_0_False_resize: signed(24 downto 0);
  signal c_26_5_0_False_shift: signed(24 downto 0);
  signal c_26_7_8_False_resize: signed(24 downto 0);
  signal c_26_7_8_False_shift: signed(24 downto 0);
  signal c_26_11_0_False_resize: signed(24 downto 0);
  signal c_26_11_0_False_shift: signed(24 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(20 downto 0);
  signal c_27_5_1_False_resize: signed(20 downto 0);
  signal c_27_5_1_False_shift: signed(20 downto 0);
  signal c_27_9_0_False_resize: signed(20 downto 0);
  signal c_27_9_0_False_shift: signed(20 downto 0);
  signal c_27_7_0_False_resize: signed(20 downto 0);
  signal c_27_7_0_False_shift: signed(20 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(24 downto 0);
  signal c_28_i0_resize: signed(24 downto 0);
  signal c_28_i1_resize: signed(24 downto 0);
  signal c_28_i0_shift: signed(24 downto 0);
  signal c_28_i1_shift: signed(24 downto 0);
  signal c_28_arith: signed(24 downto 0);
  signal c_28_oshift: signed(24 downto 0);
  signal c_28_sub_sel_left: std_logic;
  signal c_28_sub_sel_right: std_logic;
  signal c_29: signed(25 downto 0);
  signal c_29_resize: signed(25 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_resize: signed(25 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_resize: signed(25 downto 0);
  signal c_32: signed(24 downto 0);
  signal c_32_resize: signed(24 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_resize: signed(25 downto 0);
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
  -- output node 0 with id 29
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_29);
    end if;
  end process;
  -- output node 1 with id 30
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_30);
    end if;
  end process;
  -- output node 2 with id 31
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_31);
    end if;
  end process;
  -- output node 3 with id 32
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_32);
    end if;
  end process;
  -- output node 4 with id 33
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_33);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1], [1], [1]]
  c_1 <= c_0 & "";
  -- node of type 'sub' in stage 1 with id 2 and associated fundamentals [[7], [7], [7], [7]]
  inst_adder_node_2: entity work.adder_node
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(18 downto 0);
  -- node of type 'register' in stage 2 with id 3 and associated fundamentals [[1], [1], [1], [1]]
  c_3 <= c_1 & "";
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[0], [0], [1], [0]]
  c_4_1_0_False_resize <= c_1;
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  with config_select_2 select c_4_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when "01",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_1_0_False_shift when "0",
    to_signed(0, 16) when others;
  -- node of type 'add' in stage 3 with id 5 and associated fundamentals [[1], [1], [5], [1]]
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
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(18 downto 0);
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[1], [1], [0], [1]]
  c_6_1_0_False_resize <= c_1;
  c_6_1_0_False_shift <= shift_left(c_6_1_0_False_resize, 0);
  with config_select_2 select c_6_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "11",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_1_0_False_shift when "0",
    to_signed(0, 16) when others;
  -- node of type 'add' in stage 3 with id 7 and associated fundamentals [[9], [9], [1], [9]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
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
      x_i => c_3,
      y_i => c_6,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(19 downto 0);
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[7], [7], [7], [7]]
  c_8 <= c_2 & "";
  -- node of type 'add' in stage 3 with id 9 and associated fundamentals [[29], [29], [29], [29]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 19,
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
      x_i => c_3,
      y_i => c_8,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(20 downto 0);
  -- node of type 'mux' in stage 2 with id 10 and associated fundamentals [[112], [112], [1], [112]]
  c_10_2_4_False_resize <= resize(c_2, 23);
  c_10_2_4_False_shift <= shift_left(c_10_2_4_False_resize, 4);
  c_10_1_0_False_resize <= resize(c_1, 23);
  c_10_1_0_False_shift <= shift_left(c_10_1_0_False_resize, 0);
  with config_select_2 select c_10_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "10",
    "10" when others;
  with c_10_sel select c_10 <=
    c_10_2_4_False_shift when "00",
    c_10_1_0_False_shift when "01",
    to_signed(0, 23) when others;
  -- node of type 'add' in stage 3 with id 11 and associated fundamentals [[455], [455], [11], [455]]
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 23,
      w_o => 25,
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
      x_i => c_8,
      y_i => c_10,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(24 downto 0);
  -- node of type 'mux' in stage 2 with id 12 and associated fundamentals [[1], [1], [2], [1]]
  c_12_1_0_False_resize <= resize(c_1, 17);
  c_12_1_0_False_shift <= shift_left(c_12_1_0_False_resize, 0);
  c_12_1_1_False_resize <= resize(c_1, 17);
  c_12_1_1_False_shift <= shift_left(c_12_1_1_False_resize, 1);
  with config_select_2 select c_12_sel <= 
    "00" when "01",
    "00" when "11",
    "01" when "10",
    "10" when others;
  with c_12_sel select c_12 <=
    c_12_1_0_False_shift when "00",
    c_12_1_1_False_shift when "01",
    to_signed(0, 17) when others;
  -- node of type 'add' in stage 3 with id 13 and associated fundamentals [[5], [5], [9], [5]]
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 17,
      w_o => 20,
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
      x_i => c_3,
      y_i => c_12,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(19 downto 0);
  -- node of type 'mux' in stage 4 with id 14 and associated fundamentals [[1], [32], [40], [1]]
  c_14_5_5_False_resize <= resize(c_5, 22);
  c_14_5_5_False_shift <= shift_left(c_14_5_5_False_resize, 5);
  c_14_5_0_False_resize <= resize(c_5, 22);
  c_14_5_0_False_shift <= shift_left(c_14_5_0_False_resize, 0);
  c_14_5_3_False_resize <= resize(c_5, 22);
  c_14_5_3_False_shift <= shift_left(c_14_5_3_False_resize, 3);
  with config_select_4 select c_14_sel <= 
    "00" when "01",
    "01" when "00",
    "01" when "11",
    "10" when others;
  with c_14_sel select c_14 <=
    c_14_5_5_False_shift when "00",
    c_14_5_0_False_shift when "01",
    c_14_5_3_False_shift when others;
  -- node of type 'mux' in stage 4 with id 15 and associated fundamentals [[256], [0], [29], [928]]
  c_15_5_8_False_resize <= resize(c_5, 26);
  c_15_5_8_False_shift <= shift_left(c_15_5_8_False_resize, 8);
  c_15_9_0_False_resize <= resize(c_9, 26);
  c_15_9_0_False_shift <= shift_left(c_15_9_0_False_resize, 0);
  c_15_9_5_False_resize <= resize(c_9, 26);
  c_15_9_5_False_shift <= shift_left(c_15_9_5_False_resize, 5);
  with config_select_4 select c_15_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "11" when others;
  with c_15_sel select c_15 <=
    c_15_5_8_False_shift when "00",
    c_15_9_0_False_shift when "01",
    c_15_9_5_False_shift when "10",
    to_signed(0, 26) when others;
  -- node of type 'add_sub' in stage 5 with id 16 and associated fundamentals [[272], [512], [669], [912]]
  with config_select_5 select c_16_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 22,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_16_sub_sel,
      x_i => c_15,
      y_i => c_14,
      z_o => c_16_oshift
    );
  c_16 <= c_16_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 17 and associated fundamentals [[8], [5], [9], [2]]
  c_17_5_3_False_resize <= resize(c_5, 20);
  c_17_5_3_False_shift <= shift_left(c_17_5_3_False_resize, 3);
  c_17_5_1_False_resize <= resize(c_5, 20);
  c_17_5_1_False_shift <= shift_left(c_17_5_1_False_resize, 1);
  c_17_13_0_False_resize <= c_13;
  c_17_13_0_False_shift <= shift_left(c_17_13_0_False_resize, 0);
  with config_select_4 select c_17_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "10" when others;
  with c_17_sel select c_17 <=
    c_17_5_3_False_shift when "00",
    c_17_5_1_False_shift when "01",
    c_17_13_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 18 and associated fundamentals [[116], [8], [11], [20]]
  c_18_9_2_False_resize <= resize(c_9, 23);
  c_18_9_2_False_shift <= shift_left(c_18_9_2_False_resize, 2);
  c_18_5_3_False_resize <= resize(c_5, 23);
  c_18_5_3_False_shift <= shift_left(c_18_5_3_False_resize, 3);
  c_18_11_0_False_resize <= c_11(22 downto 0);
  c_18_11_0_False_shift <= shift_left(c_18_11_0_False_resize, 0);
  c_18_13_2_False_resize <= resize(c_13, 23);
  c_18_13_2_False_shift <= shift_left(c_18_13_2_False_resize, 2);
  with config_select_4 select c_18_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "11" when others;
  with c_18_sel select c_18 <=
    c_18_9_2_False_shift when "00",
    c_18_5_3_False_shift when "01",
    c_18_11_0_False_shift when "10",
    c_18_13_2_False_shift when others;
  -- node of type 'sub' in stage 5 with id 19 and associated fundamentals [[396], [312], [565], [108]]
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 23,
      w_o => 26,
      s_x_i => 6,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  c_19 <= c_19_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 20 and associated fundamentals [[9], [58], [1], [928]]
  c_20_7_0_False_resize <= resize(c_7, 26);
  c_20_7_0_False_shift <= shift_left(c_20_7_0_False_resize, 0);
  c_20_9_1_False_resize <= resize(c_9, 26);
  c_20_9_1_False_shift <= shift_left(c_20_9_1_False_resize, 1);
  c_20_9_5_False_resize <= resize(c_9, 26);
  c_20_9_5_False_shift <= shift_left(c_20_9_5_False_resize, 5);
  with config_select_4 select c_20_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_20_sel select c_20 <=
    c_20_7_0_False_shift when "00",
    c_20_9_1_False_shift when "01",
    c_20_9_5_False_shift when others;
  -- node of type 'mux' in stage 4 with id 21 and associated fundamentals [[29], [72], [8], [9]]
  c_21_9_0_False_resize <= resize(c_9, 23);
  c_21_9_0_False_shift <= shift_left(c_21_9_0_False_resize, 0);
  c_21_7_0_False_resize <= resize(c_7, 23);
  c_21_7_0_False_shift <= shift_left(c_21_7_0_False_resize, 0);
  c_21_7_3_False_resize <= resize(c_7, 23);
  c_21_7_3_False_shift <= shift_left(c_21_7_3_False_resize, 3);
  with config_select_4 select c_21_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "10" when others;
  with c_21_sel select c_21 <=
    c_21_9_0_False_shift when "00",
    c_21_7_0_False_shift when "01",
    c_21_7_3_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 22 and associated fundamentals [[241], [634], [63], [856]]
  with config_select_5 select c_22_sub_sel_left <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  with config_select_5 select c_22_sub_sel_right <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 23,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => True,
      sub => False
    )
    port map (
      sub_a_i => c_22_sub_sel_left,
      sub_b_i => c_22_sub_sel_right,
      x_i => c_20,
      y_i => c_21,
      z_o => c_22_oshift
    );
  c_22 <= c_22_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 23 and associated fundamentals [[455], [29], [20], [256]]
  c_23_5_2_False_resize <= resize(c_5, 25);
  c_23_5_2_False_shift <= shift_left(c_23_5_2_False_resize, 2);
  c_23_9_0_False_resize <= resize(c_9, 25);
  c_23_9_0_False_shift <= shift_left(c_23_9_0_False_resize, 0);
  c_23_5_8_False_resize <= resize(c_5, 25);
  c_23_5_8_False_shift <= shift_left(c_23_5_8_False_resize, 8);
  c_23_11_0_False_resize <= c_11;
  c_23_11_0_False_shift <= shift_left(c_23_11_0_False_resize, 0);
  with config_select_4 select c_23_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  with c_23_sel select c_23 <=
    c_23_5_2_False_shift when "00",
    c_23_9_0_False_shift when "01",
    c_23_5_8_False_shift when "10",
    c_23_11_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 24 and associated fundamentals [[29], [288], [232], [455]]
  c_24_9_0_False_resize <= resize(c_9, 25);
  c_24_9_0_False_shift <= shift_left(c_24_9_0_False_resize, 0);
  c_24_9_3_False_resize <= resize(c_9, 25);
  c_24_9_3_False_shift <= shift_left(c_24_9_3_False_resize, 3);
  c_24_11_0_False_resize <= c_11;
  c_24_11_0_False_shift <= shift_left(c_24_11_0_False_resize, 0);
  c_24_7_5_False_resize <= resize(c_7, 25);
  c_24_7_5_False_shift <= shift_left(c_24_7_5_False_resize, 5);
  with config_select_4 select c_24_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "11" when others;
  with c_24_sel select c_24 <=
    c_24_9_0_False_shift when "00",
    c_24_9_3_False_shift when "01",
    c_24_11_0_False_shift when "10",
    c_24_7_5_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 25 and associated fundamentals [[397], [547], [484], [654]]
  with config_select_5 select c_25_sub_sel_left <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  with config_select_5 select c_25_sub_sel_right <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => True,
      sub => False
    )
    port map (
      sub_a_i => c_25_sub_sel_left,
      sub_b_i => c_25_sub_sel_right,
      x_i => c_23,
      y_i => c_24,
      z_o => c_25_oshift
    );
  c_25 <= c_25_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 26 and associated fundamentals [[455], [1], [256], [40]]
  c_26_13_3_False_resize <= resize(c_13, 25);
  c_26_13_3_False_shift <= shift_left(c_26_13_3_False_resize, 3);
  c_26_5_0_False_resize <= resize(c_5, 25);
  c_26_5_0_False_shift <= shift_left(c_26_5_0_False_resize, 0);
  c_26_7_8_False_resize <= resize(c_7, 25);
  c_26_7_8_False_shift <= shift_left(c_26_7_8_False_resize, 8);
  c_26_11_0_False_resize <= c_11;
  c_26_11_0_False_shift <= shift_left(c_26_11_0_False_resize, 0);
  with config_select_4 select c_26_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  with c_26_sel select c_26 <=
    c_26_13_3_False_shift when "00",
    c_26_5_0_False_shift when "01",
    c_26_7_8_False_shift when "10",
    c_26_11_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 27 and associated fundamentals [[9], [29], [10], [0]]
  c_27_5_1_False_resize <= resize(c_5, 21);
  c_27_5_1_False_shift <= shift_left(c_27_5_1_False_resize, 1);
  c_27_9_0_False_resize <= c_9;
  c_27_9_0_False_shift <= shift_left(c_27_9_0_False_resize, 0);
  c_27_7_0_False_resize <= resize(c_7, 21);
  c_27_7_0_False_shift <= shift_left(c_27_7_0_False_resize, 0);
  with config_select_4 select c_27_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  with c_27_sel select c_27 <=
    c_27_5_1_False_shift when "00",
    c_27_9_0_False_shift when "01",
    c_27_7_0_False_shift when "10",
    to_signed(0, 21) when others;
  -- node of type 'add_sub' in stage 5 with id 28 and associated fundamentals [[437], [57], [236], [40]]
  with config_select_5 select c_28_sub_sel_left <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  with config_select_5 select c_28_sub_sel_right <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 21,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => True,
      sub => False
    )
    port map (
      sub_a_i => c_28_sub_sel_left,
      sub_b_i => c_28_sub_sel_right,
      x_i => c_26,
      y_i => c_27,
      z_o => c_28_oshift
    );
  c_28 <= c_28_oshift(24 downto 0);
  -- node of type 'output' in stage 5 with id 29 and associated fundamentals [[397], [547], [484], [654]]
  c_29_resize <= c_25;
  c_29 <= shift_left(c_29_resize, 0);
  -- node of type 'output' in stage 5 with id 30 and associated fundamentals [[241], [634], [63], [856]]
  c_30_resize <= c_22;
  c_30 <= shift_left(c_30_resize, 0);
  -- node of type 'output' in stage 5 with id 31 and associated fundamentals [[396], [312], [565], [108]]
  c_31_resize <= c_19;
  c_31 <= shift_left(c_31_resize, 0);
  -- node of type 'output' in stage 5 with id 32 and associated fundamentals [[437], [57], [236], [40]]
  c_32_resize <= c_28;
  c_32 <= shift_left(c_32_resize, 0);
  -- node of type 'output' in stage 5 with id 33 and associated fundamentals [[272], [512], [669], [912]]
  c_33_resize <= c_16;
  c_33 <= shift_left(c_33_resize, 0);
end architecture;
