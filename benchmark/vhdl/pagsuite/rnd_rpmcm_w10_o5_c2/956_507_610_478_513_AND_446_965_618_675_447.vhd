library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(25 downto 0);
    y_3: out std_logic_vector(25 downto 0);
    y_4: out std_logic_vector(25 downto 0);
    clk: in std_logic
);
end entity;
architecture const_mul of const_mul is
  signal config_select_0: std_logic_vector(0 downto 0);
  signal config_select_1: std_logic_vector(0 downto 0);
  signal config_select_2: std_logic_vector(0 downto 0);
  signal config_select_3: std_logic_vector(0 downto 0);
  signal config_select_4: std_logic_vector(0 downto 0);
  signal config_select_5: std_logic_vector(0 downto 0);
  signal config_select_6: std_logic_vector(0 downto 0);
  signal config_select_7: std_logic_vector(0 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(24 downto 0);
  signal c_2_i0_resize: signed(24 downto 0);
  signal c_2_i1_resize: signed(24 downto 0);
  signal c_2_i0_shift: signed(24 downto 0);
  signal c_2_i1_shift: signed(24 downto 0);
  signal c_2_arith: signed(24 downto 0);
  signal c_2_oshift: signed(24 downto 0);
  signal c_3: signed(24 downto 0);
  signal c_3_1_0_False_resize: signed(24 downto 0);
  signal c_3_1_0_False_shift: signed(24 downto 0);
  signal c_3_2_0_False_resize: signed(24 downto 0);
  signal c_3_2_0_False_shift: signed(24 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_4_1_0_False_resize: signed(15 downto 0);
  signal c_4_1_0_False_shift: signed(15 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(23 downto 0);
  signal c_5_i0_resize: signed(23 downto 0);
  signal c_5_i1_resize: signed(23 downto 0);
  signal c_5_i0_shift: signed(23 downto 0);
  signal c_5_i1_shift: signed(23 downto 0);
  signal c_5_arith: signed(23 downto 0);
  signal c_5_oshift: signed(23 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(15 downto 0);
  signal c_7: signed(18 downto 0);
  signal c_7_i0_resize: signed(18 downto 0);
  signal c_7_i1_resize: signed(18 downto 0);
  signal c_7_i0_shift: signed(18 downto 0);
  signal c_7_i1_shift: signed(18 downto 0);
  signal c_7_arith: signed(18 downto 0);
  signal c_7_oshift: signed(18 downto 0);
  signal c_8: signed(15 downto 0);
  signal c_8_1_0_False_resize: signed(15 downto 0);
  signal c_8_1_0_False_shift: signed(15 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(19 downto 0);
  signal c_9_i0_resize: signed(19 downto 0);
  signal c_9_i1_resize: signed(19 downto 0);
  signal c_9_i0_shift: signed(19 downto 0);
  signal c_9_i1_shift: signed(19 downto 0);
  signal c_9_arith: signed(19 downto 0);
  signal c_9_oshift: signed(19 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(24 downto 0);
  signal c_11: signed(24 downto 0);
  signal c_11_i0_resize: signed(24 downto 0);
  signal c_11_i1_resize: signed(24 downto 0);
  signal c_11_i0_shift: signed(24 downto 0);
  signal c_11_i1_shift: signed(24 downto 0);
  signal c_11_arith: signed(24 downto 0);
  signal c_11_oshift: signed(24 downto 0);
  signal c_12: signed(19 downto 0);
  signal c_12_i0_resize: signed(19 downto 0);
  signal c_12_i1_resize: signed(19 downto 0);
  signal c_12_i0_shift: signed(19 downto 0);
  signal c_12_i1_shift: signed(19 downto 0);
  signal c_12_arith: signed(19 downto 0);
  signal c_12_oshift: signed(19 downto 0);
  signal c_13: signed(24 downto 0);
  signal c_13_11_0_False_resize: signed(24 downto 0);
  signal c_13_11_0_False_shift: signed(24 downto 0);
  signal c_13_9_5_False_resize: signed(24 downto 0);
  signal c_13_9_5_False_shift: signed(24 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_i0_resize: signed(25 downto 0);
  signal c_15_i1_resize: signed(25 downto 0);
  signal c_15_i0_shift: signed(25 downto 0);
  signal c_15_i1_shift: signed(25 downto 0);
  signal c_15_arith: signed(25 downto 0);
  signal c_15_oshift: signed(25 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(18 downto 0);
  signal c_16_5_2_False_resize: signed(18 downto 0);
  signal c_16_5_2_False_shift: signed(18 downto 0);
  signal c_16_7_0_False_resize: signed(18 downto 0);
  signal c_16_7_0_False_shift: signed(18 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_i0_resize: signed(25 downto 0);
  signal c_18_i1_resize: signed(25 downto 0);
  signal c_18_i0_shift: signed(25 downto 0);
  signal c_18_i1_shift: signed(25 downto 0);
  signal c_18_arith: signed(25 downto 0);
  signal c_18_oshift: signed(25 downto 0);
  signal c_19: signed(19 downto 0);
  signal c_19_5_3_False_resize: signed(19 downto 0);
  signal c_19_5_3_False_shift: signed(19 downto 0);
  signal c_19_12_0_False_resize: signed(19 downto 0);
  signal c_19_12_0_False_shift: signed(19 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(18 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_i0_resize: signed(25 downto 0);
  signal c_21_i1_resize: signed(25 downto 0);
  signal c_21_i0_shift: signed(25 downto 0);
  signal c_21_i1_shift: signed(25 downto 0);
  signal c_21_arith: signed(25 downto 0);
  signal c_21_oshift: signed(25 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(25 downto 0);
  signal c_22_i0_resize: signed(25 downto 0);
  signal c_22_i1_resize: signed(25 downto 0);
  signal c_22_i0_shift: signed(25 downto 0);
  signal c_22_i1_shift: signed(25 downto 0);
  signal c_22_arith: signed(25 downto 0);
  signal c_22_oshift: signed(25 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(19 downto 0);
  signal c_23_9_0_False_resize: signed(19 downto 0);
  signal c_23_9_0_False_shift: signed(19 downto 0);
  signal c_23_9_4_False_resize: signed(19 downto 0);
  signal c_23_9_4_False_shift: signed(19 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(24 downto 0);
  signal c_24_11_0_False_resize: signed(24 downto 0);
  signal c_24_11_0_False_shift: signed(24 downto 0);
  signal c_24_5_1_False_resize: signed(24 downto 0);
  signal c_24_5_1_False_shift: signed(24 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_i0_resize: signed(25 downto 0);
  signal c_25_i1_resize: signed(25 downto 0);
  signal c_25_i0_shift: signed(25 downto 0);
  signal c_25_i1_shift: signed(25 downto 0);
  signal c_25_arith: signed(25 downto 0);
  signal c_25_oshift: signed(25 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_resize: signed(25 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_resize: signed(25 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_resize: signed(25 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_resize: signed(25 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_resize: signed(25 downto 0);
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
  -- output node 0 with id 26
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_26);
    end if;
  end process;
  -- output node 1 with id 27
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_27);
    end if;
  end process;
  -- output node 2 with id 28
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_28);
    end if;
  end process;
  -- output node 3 with id 29
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_29);
    end if;
  end process;
  -- output node 4 with id 30
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_30);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1]]
  c_1 <= c_0 & "";
  -- node of type 'add' in stage 1 with id 2 and associated fundamentals [[257], [257]]
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 8,
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
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(24 downto 0);
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[1], [257]]
  c_3_1_0_False_resize <= resize(c_1, 25);
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  c_3_2_0_False_resize <= c_2;
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  with config_select_2 select c_3_sel <= 
    "0" when "0",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_1_0_False_shift when "0",
    c_3_2_0_False_shift when others;
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[0], [1]]
  c_4_1_0_False_resize <= c_1;
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  with config_select_2 select c_4_sel <= 
    "0" when "1",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_1_0_False_shift when "0",
    to_signed(0, 16) when others;
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[1], [193]]
  with config_select_3 select c_5_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 16,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 6,
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
  c_5 <= c_5_oshift(23 downto 0);
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[1], [1]]
  c_6 <= c_1 & "";
  -- node of type 'add' in stage 3 with id 7 and associated fundamentals [[5], [5]]
  inst_adder_node_7: entity work.adder_node
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
      x_i => c_6,
      y_i => c_6,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(18 downto 0);
  -- node of type 'mux' in stage 2 with id 8 and associated fundamentals [[1], [0]]
  c_8_1_0_False_resize <= c_1;
  c_8_1_0_False_shift <= shift_left(c_8_1_0_False_resize, 0);
  with config_select_2 select c_8_sel <= 
    "0" when "0",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_1_0_False_shift when "0",
    to_signed(0, 16) when others;
  -- node of type 'add_sub' in stage 3 with id 9 and associated fundamentals [[15], [1]]
  with config_select_3 select c_9_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
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
      sub_i => c_9_sub_sel,
      x_i => c_8,
      y_i => c_6,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(19 downto 0);
  -- node of type 'register' in stage 2 with id 10 and associated fundamentals [[257], [257]]
  c_10 <= c_2 & "";
  -- node of type 'add' in stage 3 with id 11 and associated fundamentals [[289], [289]]
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 25,
      w_o => 25,
      s_x_i => 5,
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
      y_i => c_10,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(24 downto 0);
  -- node of type 'sub' in stage 3 with id 12 and associated fundamentals [[15], [15]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
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
      x_i => c_6,
      y_i => c_6,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(19 downto 0);
  -- node of type 'mux' in stage 4 with id 13 and associated fundamentals [[480], [289]]
  c_13_11_0_False_resize <= c_11;
  c_13_11_0_False_shift <= shift_left(c_13_11_0_False_resize, 0);
  c_13_9_5_False_resize <= resize(c_9, 25);
  c_13_9_5_False_shift <= shift_left(c_13_9_5_False_resize, 5);
  with config_select_4 select c_13_sel <= 
    "0" when "1",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_11_0_False_shift when "0",
    c_13_9_5_False_shift when others;
  -- node of type 'register' in stage 4 with id 14 and associated fundamentals [[1], [193]]
  c_14 <= c_5 & "";
  -- node of type 'add_sub' in stage 5 with id 15 and associated fundamentals [[478], [675]]
  with config_select_5 select c_15_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 24,
      w_o => 26,
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
      sub_i => c_15_sub_sel,
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 16 and associated fundamentals [[4], [5]]
  c_16_5_2_False_resize <= c_5(18 downto 0);
  c_16_5_2_False_shift <= shift_left(c_16_5_2_False_resize, 2);
  c_16_7_0_False_resize <= c_7;
  c_16_7_0_False_shift <= shift_left(c_16_7_0_False_resize, 0);
  with config_select_4 select c_16_sel <= 
    "0" when "0",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_5_2_False_shift when "0",
    c_16_7_0_False_shift when others;
  -- node of type 'register' in stage 4 with id 17 and associated fundamentals [[289], [289]]
  c_17 <= c_11 & "";
  -- node of type 'add' in stage 5 with id 18 and associated fundamentals [[610], [618]]
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 25,
      w_o => 26,
      s_x_i => 3,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  c_18 <= c_18_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 19 and associated fundamentals [[8], [15]]
  c_19_5_3_False_resize <= c_5(19 downto 0);
  c_19_5_3_False_shift <= shift_left(c_19_5_3_False_resize, 3);
  c_19_12_0_False_resize <= c_12;
  c_19_12_0_False_shift <= shift_left(c_19_12_0_False_resize, 0);
  with config_select_4 select c_19_sel <= 
    "0" when "0",
    "1" when others;
  with c_19_sel select c_19 <=
    c_19_5_3_False_shift when "0",
    c_19_12_0_False_shift when others;
  -- node of type 'register' in stage 4 with id 20 and associated fundamentals [[5], [5]]
  c_20 <= c_7 & "";
  -- node of type 'add_sub' in stage 5 with id 21 and associated fundamentals [[507], [965]]
  with config_select_5 select c_21_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 19,
      w_o => 26,
      s_x_i => 6,
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
  c_21 <= c_21_oshift(25 downto 0);
  -- node of type 'add_sub' in stage 5 with id 22 and associated fundamentals [[513], [447]]
  with config_select_5 select c_22_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 24,
      w_o => 26,
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
      sub_i => c_22_sub_sel,
      x_i => c_16,
      y_i => c_14,
      z_o => c_22_oshift
    );
  c_22 <= c_22_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 23 and associated fundamentals [[15], [16]]
  c_23_9_0_False_resize <= c_9;
  c_23_9_0_False_shift <= shift_left(c_23_9_0_False_resize, 0);
  c_23_9_4_False_resize <= c_9;
  c_23_9_4_False_shift <= shift_left(c_23_9_4_False_resize, 4);
  with config_select_4 select c_23_sel <= 
    "0" when "0",
    "1" when others;
  with c_23_sel select c_23 <=
    c_23_9_0_False_shift when "0",
    c_23_9_4_False_shift when others;
  -- node of type 'mux' in stage 4 with id 24 and associated fundamentals [[2], [289]]
  c_24_11_0_False_resize <= c_11;
  c_24_11_0_False_shift <= shift_left(c_24_11_0_False_resize, 0);
  c_24_5_1_False_resize <= resize(c_5, 25);
  c_24_5_1_False_shift <= shift_left(c_24_5_1_False_resize, 1);
  with config_select_4 select c_24_sel <= 
    "0" when "1",
    "1" when others;
  with c_24_sel select c_24 <=
    c_24_11_0_False_shift when "0",
    c_24_5_1_False_shift when others;
  -- node of type 'sub' in stage 5 with id 25 and associated fundamentals [[956], [446]]
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 25,
      w_o => 26,
      s_x_i => 6,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_23,
      y_i => c_24,
      z_o => c_25_oshift
    );
  c_25 <= c_25_oshift(25 downto 0);
  -- node of type 'output' in stage 5 with id 26 and associated fundamentals [[956], [446]]
  c_26_resize <= c_25;
  c_26 <= shift_left(c_26_resize, 0);
  -- node of type 'output' in stage 5 with id 27 and associated fundamentals [[507], [965]]
  c_27_resize <= c_21;
  c_27 <= shift_left(c_27_resize, 0);
  -- node of type 'output' in stage 5 with id 28 and associated fundamentals [[610], [618]]
  c_28_resize <= c_18;
  c_28 <= shift_left(c_28_resize, 0);
  -- node of type 'output' in stage 5 with id 29 and associated fundamentals [[478], [675]]
  c_29_resize <= c_15;
  c_29 <= shift_left(c_29_resize, 0);
  -- node of type 'output' in stage 5 with id 30 and associated fundamentals [[513], [447]]
  c_30_resize <= c_22;
  c_30 <= shift_left(c_30_resize, 0);
end architecture;
