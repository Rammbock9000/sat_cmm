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
  signal c_0: signed(18 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_2: signed(25 downto 0);
  signal c_2_0_0_False_resize: signed(25 downto 0);
  signal c_2_0_0_False_shift: signed(25 downto 0);
  signal c_2_0_7_False_resize: signed(25 downto 0);
  signal c_2_0_7_False_shift: signed(25 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(25 downto 0);
  signal c_3_i0_resize: signed(25 downto 0);
  signal c_3_i1_resize: signed(25 downto 0);
  signal c_3_i0_shift: signed(25 downto 0);
  signal c_3_i1_shift: signed(25 downto 0);
  signal c_3_arith: signed(25 downto 0);
  signal c_3_oshift: signed(25 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(20 downto 0);
  signal c_4_1_2_False_resize: signed(20 downto 0);
  signal c_4_1_2_False_shift: signed(20 downto 0);
  signal c_4_1_0_False_resize: signed(20 downto 0);
  signal c_4_1_0_False_shift: signed(20 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(26 downto 0);
  signal c_5_i0_resize: signed(26 downto 0);
  signal c_5_i1_resize: signed(26 downto 0);
  signal c_5_i0_shift: signed(26 downto 0);
  signal c_5_i1_shift: signed(26 downto 0);
  signal c_5_arith: signed(26 downto 0);
  signal c_5_oshift: signed(26 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(26 downto 0);
  signal c_6_0_7_False_resize: signed(26 downto 0);
  signal c_6_0_7_False_shift: signed(26 downto 0);
  signal c_6_5_0_False_resize: signed(26 downto 0);
  signal c_6_5_0_False_shift: signed(26 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(26 downto 0);
  signal c_7_1_6_False_resize: signed(26 downto 0);
  signal c_7_1_6_False_shift: signed(26 downto 0);
  signal c_7_5_0_False_resize: signed(26 downto 0);
  signal c_7_5_0_False_shift: signed(26 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(29 downto 0);
  signal c_8_i0_resize: signed(29 downto 0);
  signal c_8_i1_resize: signed(29 downto 0);
  signal c_8_i0_shift: signed(29 downto 0);
  signal c_8_i1_shift: signed(29 downto 0);
  signal c_8_arith: signed(29 downto 0);
  signal c_8_oshift: signed(29 downto 0);
  signal c_9: signed(29 downto 0);
  signal c_9_i0_resize: signed(29 downto 0);
  signal c_9_i1_resize: signed(29 downto 0);
  signal c_9_i0_shift: signed(29 downto 0);
  signal c_9_i1_shift: signed(29 downto 0);
  signal c_9_arith: signed(29 downto 0);
  signal c_9_oshift: signed(29 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(31 downto 0);
  signal c_10_0_0_False_resize: signed(31 downto 0);
  signal c_10_0_0_False_shift: signed(31 downto 0);
  signal c_10_0_13_False_resize: signed(31 downto 0);
  signal c_10_0_13_False_shift: signed(31 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(26 downto 0);
  signal c_11_3_1_False_resize: signed(26 downto 0);
  signal c_11_3_1_False_shift: signed(26 downto 0);
  signal c_11_3_0_False_resize: signed(26 downto 0);
  signal c_11_3_0_False_shift: signed(26 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(32 downto 0);
  signal c_12_i0_resize: signed(32 downto 0);
  signal c_12_i1_resize: signed(32 downto 0);
  signal c_12_i0_shift: signed(32 downto 0);
  signal c_12_i1_shift: signed(32 downto 0);
  signal c_12_arith: signed(32 downto 0);
  signal c_12_oshift: signed(32 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(29 downto 0);
  signal c_13_9_0_False_resize: signed(29 downto 0);
  signal c_13_9_0_False_shift: signed(29 downto 0);
  signal c_13_1_10_False_resize: signed(29 downto 0);
  signal c_13_1_10_False_shift: signed(29 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(28 downto 0);
  signal c_14_12_5_False_resize: signed(28 downto 0);
  signal c_14_12_5_False_shift: signed(28 downto 0);
  signal c_14_8_0_False_resize: signed(28 downto 0);
  signal c_14_8_0_False_shift: signed(28 downto 0);
  signal c_14_1_4_False_resize: signed(28 downto 0);
  signal c_14_1_4_False_shift: signed(28 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(30 downto 0);
  signal c_15_i0_resize: signed(30 downto 0);
  signal c_15_i1_resize: signed(30 downto 0);
  signal c_15_i0_shift: signed(30 downto 0);
  signal c_15_i1_shift: signed(30 downto 0);
  signal c_15_arith: signed(30 downto 0);
  signal c_15_oshift: signed(30 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(30 downto 0);
  signal c_16_15_0_False_resize: signed(30 downto 0);
  signal c_16_15_0_False_shift: signed(30 downto 0);
  signal c_16_3_5_False_resize: signed(30 downto 0);
  signal c_16_3_5_False_shift: signed(30 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(32 downto 0);
  signal c_17_i0_resize: signed(32 downto 0);
  signal c_17_i1_resize: signed(32 downto 0);
  signal c_17_i0_shift: signed(32 downto 0);
  signal c_17_i1_shift: signed(32 downto 0);
  signal c_17_arith: signed(32 downto 0);
  signal c_17_oshift: signed(32 downto 0);
  signal c_18: signed(32 downto 0);
  signal c_18_17_2_False_resize: signed(32 downto 0);
  signal c_18_17_2_False_shift: signed(32 downto 0);
  signal c_18_15_0_False_resize: signed(32 downto 0);
  signal c_18_15_0_False_shift: signed(32 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(32 downto 0);
  signal c_19_i0_resize: signed(32 downto 0);
  signal c_19_i1_resize: signed(32 downto 0);
  signal c_19_i0_shift: signed(32 downto 0);
  signal c_19_i1_shift: signed(32 downto 0);
  signal c_19_arith: signed(32 downto 0);
  signal c_19_oshift: signed(32 downto 0);
  signal c_20: signed(32 downto 0);
  signal c_20_17_2_False_resize: signed(32 downto 0);
  signal c_20_17_2_False_shift: signed(32 downto 0);
  signal c_20_17_0_False_resize: signed(32 downto 0);
  signal c_20_17_0_False_shift: signed(32 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(32 downto 0);
  signal c_21_resize: signed(32 downto 0);
  signal c_22: signed(32 downto 0);
  signal c_22_resize: signed(32 downto 0);
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
  -- output node 0 with id 21
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_21(32 downto 3));
    end if;
  end process;
  -- output node 1 with id 22
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_22(32 downto 3));
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[8, 0], [1024, 0], [8, 0]]
  c_2_0_0_False_resize <= resize(c_0, 26);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_7_False_resize <= resize(c_0, 26);
  c_2_0_7_False_shift <= shift_left(c_2_0_7_False_resize, 7);
  with config_select_1 select c_2_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_0_0_False_shift when "0",
    c_2_0_7_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[40, 0], [992, 0], [40, 0]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 19,
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
      sub_i => c_3_sub_sel,
      x_i => c_2,
      y_i => c_0,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(25 downto 0);
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[0, 32], [0, 8], [0, 32]]
  c_4_1_2_False_resize <= resize(c_1, 21);
  c_4_1_2_False_shift <= shift_left(c_4_1_2_False_resize, 2);
  c_4_1_0_False_resize <= resize(c_1, 21);
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  with config_select_1 select c_4_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_1_2_False_shift when "0",
    c_4_1_0_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 5 and associated fundamentals [[0, 1032], [0, -248], [0, 1032]]
  with config_select_2 select c_5_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 21,
      w_o => 27,
      s_x_i => 0,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_5_sub_sel,
      x_i => c_1,
      y_i => c_4,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(26 downto 0);
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[0, 1032], [1024, 0], [0, 1032]]
  c_6_0_7_False_resize <= resize(c_0, 27);
  c_6_0_7_False_shift <= shift_left(c_6_0_7_False_resize, 7);
  c_6_5_0_False_resize <= c_5;
  c_6_5_0_False_shift <= shift_left(c_6_5_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_0_7_False_shift when "0",
    c_6_5_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[0, 512], [0, 512], [0, 1032]]
  c_7_1_6_False_resize <= resize(c_1, 27);
  c_7_1_6_False_shift <= shift_left(c_7_1_6_False_resize, 6);
  c_7_5_0_False_resize <= c_5;
  c_7_5_0_False_shift <= shift_left(c_7_5_0_False_resize, 0);
  with config_select_3 select c_7_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_1_6_False_shift when "0",
    c_7_5_0_False_shift when others;
  -- node of type 'add' in stage 4 with id 8 and associated fundamentals [[0, 6160], [2048, 4096], [0, 10320]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 27,
      w_o => 30,
      s_x_i => 1,
      s_y_i => 3,
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
  c_8 <= c_8_oshift(29 downto 0);
  -- node of type 'add_sub' in stage 5 with id 9 and associated fundamentals [[0, 7192], [2048, 4344], [0, 11352]]
  with config_select_5 select c_9_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 27,
      w_o => 30,
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
      x_i => c_8,
      y_i => c_5,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(29 downto 0);
  -- node of type 'mux' in stage 1 with id 10 and associated fundamentals [[65536, 0], [65536, 0], [8, 0]]
  c_10_0_0_False_resize <= resize(c_0, 32);
  c_10_0_0_False_shift <= shift_left(c_10_0_0_False_resize, 0);
  c_10_0_13_False_resize <= resize(c_0, 32);
  c_10_0_13_False_shift <= shift_left(c_10_0_13_False_resize, 13);
  with config_select_1 select c_10_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_10_sel select c_10 <=
    c_10_0_0_False_shift when "0",
    c_10_0_13_False_shift when others;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[40, 0], [1984, 0], [80, 0]]
  c_11_3_1_False_resize <= resize(c_3, 27);
  c_11_3_1_False_shift <= shift_left(c_11_3_1_False_resize, 1);
  c_11_3_0_False_resize <= resize(c_3, 27);
  c_11_3_0_False_shift <= shift_left(c_11_3_0_False_resize, 0);
  with config_select_3 select c_11_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_3_1_False_shift when "0",
    c_11_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 12 and associated fundamentals [[65496, 0], [67520, 0], [88, 0]]
  with config_select_4 select c_12_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 32,
      w_y_i => 27,
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
      sub_i => c_12_sub_sel,
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(32 downto 0);
  -- node of type 'mux' in stage 6 with id 13 and associated fundamentals [[0, 7192], [0, 8192], [0, 11352]]
  c_13_9_0_False_resize <= c_9;
  c_13_9_0_False_shift <= shift_left(c_13_9_0_False_resize, 0);
  c_13_1_10_False_resize <= resize(c_1, 30);
  c_13_1_10_False_shift <= shift_left(c_13_1_10_False_resize, 10);
  with config_select_6 select c_13_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_9_0_False_shift when "0",
    c_13_1_10_False_shift when others;
  -- node of type 'mux' in stage 5 with id 14 and associated fundamentals [[0, 128], [2048, 4096], [2816, 0]]
  c_14_12_5_False_resize <= c_12(28 downto 0);
  c_14_12_5_False_shift <= shift_left(c_14_12_5_False_resize, 5);
  c_14_8_0_False_resize <= c_8(28 downto 0);
  c_14_8_0_False_shift <= shift_left(c_14_8_0_False_resize, 0);
  c_14_1_4_False_resize <= resize(c_1, 29);
  c_14_1_4_False_shift <= shift_left(c_14_1_4_False_resize, 4);
  with config_select_5 select c_14_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_14_sel select c_14 <=
    c_14_12_5_False_shift when "00",
    c_14_8_0_False_shift when "01",
    c_14_1_4_False_shift when others;
  -- node of type 'add_sub' in stage 7 with id 15 and associated fundamentals [[0, 6680], [8192, 24576], [-11264, 11352]]
  with config_select_7 select c_15_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 29,
      w_o => 31,
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
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(30 downto 0);
  -- node of type 'mux' in stage 8 with id 16 and associated fundamentals [[1280, 0], [8192, 24576], [-11264, 11352]]
  c_16_15_0_False_resize <= c_15;
  c_16_15_0_False_shift <= shift_left(c_16_15_0_False_resize, 0);
  c_16_3_5_False_resize <= resize(c_3, 31);
  c_16_3_5_False_shift <= shift_left(c_16_3_5_False_resize, 5);
  with config_select_8 select c_16_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_15_0_False_shift when "0",
    c_16_3_5_False_shift when others;
  -- node of type 'sub' in stage 9 with id 17 and associated fundamentals [[64216, 0], [59328, -24576], [11352, -11352]]
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 33,
      w_y_i => 31,
      w_o => 33,
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
      x_i => c_12,
      y_i => c_16,
      z_o => c_17_oshift
    );
  c_17 <= c_17_oshift(32 downto 0);
  -- node of type 'mux' in stage 10 with id 18 and associated fundamentals [[0, 6680], [8192, 24576], [45408, -45408]]
  c_18_17_2_False_resize <= c_17;
  c_18_17_2_False_shift <= shift_left(c_18_17_2_False_resize, 2);
  c_18_15_0_False_resize <= resize(c_15, 33);
  c_18_15_0_False_shift <= shift_left(c_18_15_0_False_resize, 0);
  with config_select_10 select c_18_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_18_sel select c_18 <=
    c_18_17_2_False_shift when "0",
    c_18_15_0_False_shift when others;
  -- node of type 'add' in stage 11 with id 19 and associated fundamentals [[0, 64216], [24576, 59328], [45408, 45408]]
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 33,
      w_y_i => 30,
      w_o => 33,
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
      x_i => c_18,
      y_i => c_9,
      z_o => c_19_oshift
    );
  c_19 <= c_19_oshift(32 downto 0);
  -- node of type 'mux' in stage 10 with id 20 and associated fundamentals [[64216, 0], [59328, -24576], [45408, -45408]]
  c_20_17_2_False_resize <= c_17;
  c_20_17_2_False_shift <= shift_left(c_20_17_2_False_resize, 2);
  c_20_17_0_False_resize <= c_17;
  c_20_17_0_False_shift <= shift_left(c_20_17_0_False_resize, 0);
  with config_select_10 select c_20_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_20_sel select c_20 <=
    c_20_17_2_False_shift when "0",
    c_20_17_0_False_shift when others;
  -- node of type 'output' in stage 10 with id 21 and associated fundamentals [[64216, 0], [59328, -24576], [45408, -45408]]
  c_21_resize <= c_20;
  c_21 <= shift_left(c_21_resize, 0);
  -- node of type 'output' in stage 11 with id 22 and associated fundamentals [[0, 64216], [24576, 59328], [45408, 45408]]
  c_22_resize <= c_19;
  c_22 <= shift_left(c_22_resize, 0);
end architecture;
