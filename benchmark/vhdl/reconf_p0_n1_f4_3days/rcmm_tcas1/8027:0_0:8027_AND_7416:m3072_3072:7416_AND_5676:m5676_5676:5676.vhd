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
  signal c_0: signed(19 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_2: signed(24 downto 0);
  signal c_2_0_4_False_resize: signed(24 downto 0);
  signal c_2_0_4_False_shift: signed(24 downto 0);
  signal c_2_0_0_False_resize: signed(24 downto 0);
  signal c_2_0_0_False_shift: signed(24 downto 0);
  signal c_2_1_5_False_resize: signed(24 downto 0);
  signal c_2_1_5_False_shift: signed(24 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_1_0_False_resize: signed(20 downto 0);
  signal c_3_1_0_False_shift: signed(20 downto 0);
  signal c_3_0_1_False_resize: signed(20 downto 0);
  signal c_3_0_1_False_shift: signed(20 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(27 downto 0);
  signal c_4_i0_resize: signed(27 downto 0);
  signal c_4_i1_resize: signed(27 downto 0);
  signal c_4_i0_shift: signed(27 downto 0);
  signal c_4_i1_shift: signed(27 downto 0);
  signal c_4_arith: signed(27 downto 0);
  signal c_4_oshift: signed(27 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_1_3_False_resize: signed(22 downto 0);
  signal c_5_1_3_False_shift: signed(22 downto 0);
  signal c_5_1_0_False_resize: signed(22 downto 0);
  signal c_5_1_0_False_shift: signed(22 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(29 downto 0);
  signal c_6_i0_resize: signed(29 downto 0);
  signal c_6_i1_resize: signed(29 downto 0);
  signal c_6_i0_shift: signed(29 downto 0);
  signal c_6_i1_shift: signed(29 downto 0);
  signal c_6_arith: signed(29 downto 0);
  signal c_6_oshift: signed(29 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(27 downto 0);
  signal c_7_1_6_False_resize: signed(27 downto 0);
  signal c_7_1_6_False_shift: signed(27 downto 0);
  signal c_7_6_0_False_resize: signed(27 downto 0);
  signal c_7_6_0_False_shift: signed(27 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(27 downto 0);
  signal c_8_4_0_False_resize: signed(27 downto 0);
  signal c_8_4_0_False_shift: signed(27 downto 0);
  signal c_8_0_8_False_resize: signed(27 downto 0);
  signal c_8_0_8_False_shift: signed(27 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(30 downto 0);
  signal c_9_i0_resize: signed(30 downto 0);
  signal c_9_i1_resize: signed(30 downto 0);
  signal c_9_i0_shift: signed(30 downto 0);
  signal c_9_i1_shift: signed(30 downto 0);
  signal c_9_arith: signed(30 downto 0);
  signal c_9_oshift: signed(30 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(32 downto 0);
  signal c_10_9_0_False_resize: signed(32 downto 0);
  signal c_10_9_0_False_shift: signed(32 downto 0);
  signal c_10_6_3_False_resize: signed(32 downto 0);
  signal c_10_6_3_False_shift: signed(32 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(31 downto 0);
  signal c_11_1_0_False_resize: signed(31 downto 0);
  signal c_11_1_0_False_shift: signed(31 downto 0);
  signal c_11_9_1_False_resize: signed(31 downto 0);
  signal c_11_9_1_False_shift: signed(31 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(33 downto 0);
  signal c_12_i0_resize: signed(33 downto 0);
  signal c_12_i1_resize: signed(33 downto 0);
  signal c_12_i0_shift: signed(33 downto 0);
  signal c_12_i1_shift: signed(33 downto 0);
  signal c_12_arith: signed(33 downto 0);
  signal c_12_oshift: signed(33 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(27 downto 0);
  signal c_13_0_1_False_resize: signed(27 downto 0);
  signal c_13_0_1_False_shift: signed(27 downto 0);
  signal c_13_4_0_False_resize: signed(27 downto 0);
  signal c_13_4_0_False_shift: signed(27 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(29 downto 0);
  signal c_14_4_2_False_resize: signed(29 downto 0);
  signal c_14_4_2_False_shift: signed(29 downto 0);
  signal c_14_0_0_False_resize: signed(29 downto 0);
  signal c_14_0_0_False_shift: signed(29 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(31 downto 0);
  signal c_15_i0_resize: signed(31 downto 0);
  signal c_15_i1_resize: signed(31 downto 0);
  signal c_15_i0_shift: signed(31 downto 0);
  signal c_15_i1_shift: signed(31 downto 0);
  signal c_15_arith: signed(31 downto 0);
  signal c_15_oshift: signed(31 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(29 downto 0);
  signal c_16_0_10_False_resize: signed(29 downto 0);
  signal c_16_0_10_False_shift: signed(29 downto 0);
  signal c_16_4_0_False_resize: signed(29 downto 0);
  signal c_16_4_0_False_shift: signed(29 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(33 downto 0);
  signal c_17_i0_resize: signed(33 downto 0);
  signal c_17_i1_resize: signed(33 downto 0);
  signal c_17_i0_shift: signed(33 downto 0);
  signal c_17_i1_shift: signed(33 downto 0);
  signal c_17_arith: signed(33 downto 0);
  signal c_17_oshift: signed(33 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(33 downto 0);
  signal c_18_9_3_False_resize: signed(33 downto 0);
  signal c_18_9_3_False_shift: signed(33 downto 0);
  signal c_18_9_0_False_resize: signed(33 downto 0);
  signal c_18_9_0_False_shift: signed(33 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(33 downto 0);
  signal c_19_i0_resize: signed(33 downto 0);
  signal c_19_i1_resize: signed(33 downto 0);
  signal c_19_i0_shift: signed(33 downto 0);
  signal c_19_i1_shift: signed(33 downto 0);
  signal c_19_arith: signed(33 downto 0);
  signal c_19_oshift: signed(33 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(33 downto 0);
  signal c_20_19_0_False_resize: signed(33 downto 0);
  signal c_20_19_0_False_shift: signed(33 downto 0);
  signal c_20_15_0_False_resize: signed(33 downto 0);
  signal c_20_15_0_False_shift: signed(33 downto 0);
  signal c_20_0_3_False_resize: signed(33 downto 0);
  signal c_20_0_3_False_shift: signed(33 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(33 downto 0);
  signal c_21_i0_resize: signed(33 downto 0);
  signal c_21_i1_resize: signed(33 downto 0);
  signal c_21_i0_shift: signed(33 downto 0);
  signal c_21_i1_shift: signed(33 downto 0);
  signal c_21_arith: signed(33 downto 0);
  signal c_21_oshift: signed(33 downto 0);
  signal c_22: signed(33 downto 0);
  signal c_22_resize: signed(33 downto 0);
  signal c_23: signed(33 downto 0);
  signal c_23_resize: signed(33 downto 0);
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
      c_0 <= signed(x_0 & "0000");
    end if;
  end process;
  -- input node 1 with id 1
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= signed(x_1 & "0000");
    end if;
  end process;
  -- output node 0 with id 22
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_22(33 downto 4));
    end if;
  end process;
  -- output node 1 with id 23
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_23(33 downto 4));
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[0, 512], [256, 0], [16, 0]]
  c_2_0_4_False_resize <= resize(c_0, 25);
  c_2_0_4_False_shift <= shift_left(c_2_0_4_False_resize, 4);
  c_2_0_0_False_resize <= resize(c_0, 25);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_1_5_False_resize <= resize(c_1, 25);
  c_2_1_5_False_shift <= shift_left(c_2_1_5_False_resize, 5);
  with config_select_1 select c_2_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_2_sel select c_2 <=
    c_2_0_4_False_shift when "00",
    c_2_0_0_False_shift when "01",
    c_2_1_5_False_shift when others;
  -- node of type 'mux' in stage 1 with id 3 and associated fundamentals [[0, 16], [0, 16], [32, 0]]
  c_3_1_0_False_resize <= resize(c_1, 21);
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  c_3_0_1_False_resize <= resize(c_0, 21);
  c_3_0_1_False_shift <= shift_left(c_3_0_1_False_resize, 1);
  with config_select_1 select c_3_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_1_0_False_shift when "0",
    c_3_0_1_False_shift when others;
  -- node of type 'add' in stage 2 with id 4 and associated fundamentals [[0, 1536], [256, 1024], [2064, 0]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 21,
      w_o => 28,
      s_x_i => 0,
      s_y_i => 6,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(27 downto 0);
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[0, 16], [0, 128], [0, 16]]
  c_5_1_3_False_resize <= resize(c_1, 23);
  c_5_1_3_False_shift <= shift_left(c_5_1_3_False_resize, 3);
  c_5_1_0_False_resize <= resize(c_1, 23);
  c_5_1_0_False_shift <= shift_left(c_5_1_0_False_resize, 0);
  with config_select_1 select c_5_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_1_3_False_shift when "0",
    c_5_1_0_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 6 and associated fundamentals [[0, 2032], [0, 16368], [0, 2064]]
  with config_select_2 select c_6_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 20,
      w_o => 30,
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
      sub_i => c_6_sub_sel,
      x_i => c_5,
      y_i => c_1,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(29 downto 0);
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[0, 2032], [0, 1024], [0, 2064]]
  c_7_1_6_False_resize <= resize(c_1, 28);
  c_7_1_6_False_shift <= shift_left(c_7_1_6_False_resize, 6);
  c_7_6_0_False_resize <= c_6(27 downto 0);
  c_7_6_0_False_shift <= shift_left(c_7_6_0_False_resize, 0);
  with config_select_3 select c_7_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_1_6_False_shift when "0",
    c_7_6_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[0, 1536], [4096, 0], [2064, 0]]
  c_8_4_0_False_resize <= c_4;
  c_8_4_0_False_shift <= shift_left(c_8_4_0_False_resize, 0);
  c_8_0_8_False_resize <= resize(c_0, 28);
  c_8_0_8_False_shift <= shift_left(c_8_0_8_False_resize, 8);
  with config_select_3 select c_8_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_4_0_False_shift when "0",
    c_8_0_8_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 9 and associated fundamentals [[0, 14272], [-16384, 4096], [8256, 8256]]
  with config_select_4 select c_9_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 28,
      w_o => 31,
      s_x_i => 2,
      s_y_i => 2,
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
  c_9 <= c_9_oshift(30 downto 0);
  -- node of type 'mux' in stage 5 with id 10 and associated fundamentals [[0, 14272], [0, 130944], [8256, 8256]]
  c_10_9_0_False_resize <= resize(c_9, 33);
  c_10_9_0_False_shift <= shift_left(c_10_9_0_False_resize, 0);
  c_10_6_3_False_resize <= resize(c_6, 33);
  c_10_6_3_False_shift <= shift_left(c_10_6_3_False_resize, 3);
  with config_select_5 select c_10_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_10_sel select c_10 <=
    c_10_9_0_False_shift when "0",
    c_10_6_3_False_shift when others;
  -- node of type 'mux' in stage 5 with id 11 and associated fundamentals [[0, 16], [-32768, 8192], [16512, 16512]]
  c_11_1_0_False_resize <= resize(c_1, 32);
  c_11_1_0_False_shift <= shift_left(c_11_1_0_False_resize, 0);
  c_11_9_1_False_resize <= resize(c_9, 32);
  c_11_9_1_False_shift <= shift_left(c_11_9_1_False_resize, 1);
  with config_select_5 select c_11_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_1_0_False_shift when "0",
    c_11_9_1_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 12 and associated fundamentals [[0, 14256], [32768, 122752], [24768, 24768]]
  with config_select_6 select c_12_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 33,
      w_y_i => 32,
      w_o => 34,
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
  c_12 <= c_12_oshift(33 downto 0);
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[32, 0], [256, 1024], [2064, 0]]
  c_13_0_1_False_resize <= resize(c_0, 28);
  c_13_0_1_False_shift <= shift_left(c_13_0_1_False_resize, 1);
  c_13_4_0_False_resize <= c_4;
  c_13_4_0_False_shift <= shift_left(c_13_4_0_False_resize, 0);
  with config_select_3 select c_13_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_0_1_False_shift when "0",
    c_13_4_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[16, 0], [1024, 4096], [8256, 0]]
  c_14_4_2_False_resize <= resize(c_4, 30);
  c_14_4_2_False_shift <= shift_left(c_14_4_2_False_resize, 2);
  c_14_0_0_False_resize <= resize(c_0, 30);
  c_14_0_0_False_shift <= shift_left(c_14_0_0_False_resize, 0);
  with config_select_3 select c_14_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_4_2_False_shift when "0",
    c_14_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 15 and associated fundamentals [[528, 0], [3072, 12288], [41280, 0]]
  with config_select_4 select c_15_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 30,
      w_o => 32,
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
      sub_i => c_15_sub_sel,
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(31 downto 0);
  -- node of type 'mux' in stage 3 with id 16 and associated fundamentals [[16384, 0], [16384, 0], [2064, 0]]
  c_16_0_10_False_resize <= resize(c_0, 30);
  c_16_0_10_False_shift <= shift_left(c_16_0_10_False_resize, 10);
  c_16_4_0_False_resize <= resize(c_4, 30);
  c_16_4_0_False_shift <= shift_left(c_16_4_0_False_resize, 0);
  with config_select_3 select c_16_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_0_10_False_shift when "0",
    c_16_4_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 17 and associated fundamentals [[128960, 0], [118784, -49152], [181632, 0]]
  with config_select_5 select c_17_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 32,
      w_o => 34,
      s_x_i => 3,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_17_sub_sel,
      x_i => c_16,
      y_i => c_15,
      z_o => c_17_oshift
    );
  c_17 <= c_17_oshift(33 downto 0);
  -- node of type 'mux' in stage 5 with id 18 and associated fundamentals [[0, 114176], [-16384, 4096], [66048, 66048]]
  c_18_9_3_False_resize <= resize(c_9, 34);
  c_18_9_3_False_shift <= shift_left(c_18_9_3_False_resize, 3);
  c_18_9_0_False_resize <= resize(c_9, 34);
  c_18_9_0_False_shift <= shift_left(c_18_9_0_False_resize, 0);
  with config_select_5 select c_18_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_18_sel select c_18 <=
    c_18_9_3_False_shift when "0",
    c_18_9_0_False_shift when others;
  -- node of type 'add_sub' in stage 7 with id 19 and associated fundamentals [[0, 128432], [49152, 118656], [90816, 90816]]
  with config_select_7 select c_19_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 34,
      w_y_i => 34,
      w_o => 34,
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
      x_i => c_12,
      y_i => c_18,
      z_o => c_19_oshift
    );
  c_19 <= c_19_oshift(33 downto 0);
  -- node of type 'mux' in stage 8 with id 20 and associated fundamentals [[528, 0], [128, 0], [90816, 90816]]
  c_20_19_0_False_resize <= c_19;
  c_20_19_0_False_shift <= shift_left(c_20_19_0_False_resize, 0);
  c_20_15_0_False_resize <= resize(c_15, 34);
  c_20_15_0_False_shift <= shift_left(c_20_15_0_False_resize, 0);
  c_20_0_3_False_resize <= resize(c_0, 34);
  c_20_0_3_False_shift <= shift_left(c_20_0_3_False_resize, 3);
  with config_select_8 select c_20_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_20_sel select c_20 <=
    c_20_19_0_False_shift when "00",
    c_20_15_0_False_shift when "01",
    c_20_0_3_False_shift when others;
  -- node of type 'sub' in stage 9 with id 21 and associated fundamentals [[128432, 0], [118656, -49152], [90816, -90816]]
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 34,
      w_y_i => 34,
      w_o => 34,
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
      x_i => c_17,
      y_i => c_20,
      z_o => c_21_oshift
    );
  c_21 <= c_21_oshift(33 downto 0);
  -- node of type 'output' in stage 9 with id 22 and associated fundamentals [[128432, 0], [118656, -49152], [90816, -90816]]
  c_22_resize <= c_21;
  c_22 <= shift_left(c_22_resize, 0);
  -- node of type 'output' in stage 7 with id 23 and associated fundamentals [[0, 128432], [49152, 118656], [90816, 90816]]
  c_23_resize <= c_19;
  c_23 <= shift_left(c_23_resize, 0);
end architecture;
