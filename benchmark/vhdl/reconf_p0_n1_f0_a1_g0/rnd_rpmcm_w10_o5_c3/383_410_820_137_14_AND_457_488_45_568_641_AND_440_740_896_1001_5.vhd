library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(24 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_i0_resize: signed(19 downto 0);
  signal c_1_i1_resize: signed(19 downto 0);
  signal c_1_i0_shift: signed(19 downto 0);
  signal c_1_i1_shift: signed(19 downto 0);
  signal c_1_arith: signed(19 downto 0);
  signal c_1_oshift: signed(19 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(23 downto 0);
  signal c_2_i0_resize: signed(23 downto 0);
  signal c_2_i1_resize: signed(23 downto 0);
  signal c_2_i0_shift: signed(23 downto 0);
  signal c_2_i1_shift: signed(23 downto 0);
  signal c_2_arith: signed(23 downto 0);
  signal c_2_oshift: signed(23 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_4: signed(22 downto 0);
  signal c_4_i0_resize: signed(22 downto 0);
  signal c_4_i1_resize: signed(22 downto 0);
  signal c_4_i0_shift: signed(22 downto 0);
  signal c_4_i1_shift: signed(22 downto 0);
  signal c_4_arith: signed(22 downto 0);
  signal c_4_oshift: signed(22 downto 0);
  signal c_5: signed(23 downto 0);
  signal c_5_2_1_False_resize: signed(23 downto 0);
  signal c_5_2_1_False_shift: signed(23 downto 0);
  signal c_5_0_5_False_resize: signed(23 downto 0);
  signal c_5_0_5_False_shift: signed(23 downto 0);
  signal c_5_2_0_False_resize: signed(23 downto 0);
  signal c_5_2_0_False_shift: signed(23 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(25 downto 0);
  signal c_6_i0_resize: signed(25 downto 0);
  signal c_6_i1_resize: signed(25 downto 0);
  signal c_6_i0_shift: signed(25 downto 0);
  signal c_6_i1_shift: signed(25 downto 0);
  signal c_6_arith: signed(25 downto 0);
  signal c_6_oshift: signed(25 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(24 downto 0);
  signal c_7_1_5_False_resize: signed(24 downto 0);
  signal c_7_1_5_False_shift: signed(24 downto 0);
  signal c_7_3_0_False_resize: signed(24 downto 0);
  signal c_7_3_0_False_shift: signed(24 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(25 downto 0);
  signal c_8_i0_resize: signed(25 downto 0);
  signal c_8_i1_resize: signed(25 downto 0);
  signal c_8_i0_shift: signed(25 downto 0);
  signal c_8_i1_shift: signed(25 downto 0);
  signal c_8_arith: signed(25 downto 0);
  signal c_8_oshift: signed(25 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(22 downto 0);
  signal c_9_0_4_False_resize: signed(22 downto 0);
  signal c_9_0_4_False_shift: signed(22 downto 0);
  signal c_9_2_0_False_resize: signed(22 downto 0);
  signal c_9_2_0_False_shift: signed(22 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_4_0_False_resize: signed(22 downto 0);
  signal c_10_4_0_False_shift: signed(22 downto 0);
  signal c_10_1_0_False_resize: signed(22 downto 0);
  signal c_10_1_0_False_shift: signed(22 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(22 downto 0);
  signal c_11_i0_resize: signed(22 downto 0);
  signal c_11_i1_resize: signed(22 downto 0);
  signal c_11_i0_shift: signed(22 downto 0);
  signal c_11_i1_shift: signed(22 downto 0);
  signal c_11_arith: signed(22 downto 0);
  signal c_11_oshift: signed(22 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(25 downto 0);
  signal c_12_i0_resize: signed(25 downto 0);
  signal c_12_i1_resize: signed(25 downto 0);
  signal c_12_i0_shift: signed(25 downto 0);
  signal c_12_i1_shift: signed(25 downto 0);
  signal c_12_arith: signed(25 downto 0);
  signal c_12_oshift: signed(25 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(24 downto 0);
  signal c_13_12_0_False_resize: signed(24 downto 0);
  signal c_13_12_0_False_shift: signed(24 downto 0);
  signal c_13_2_2_False_resize: signed(24 downto 0);
  signal c_13_2_2_False_shift: signed(24 downto 0);
  signal c_13_8_0_False_resize: signed(24 downto 0);
  signal c_13_8_0_False_shift: signed(24 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(24 downto 0);
  signal c_14_resize: signed(24 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_resize: signed(25 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_6_1_False_resize: signed(25 downto 0);
  signal c_16_6_1_False_shift: signed(25 downto 0);
  signal c_16_3_0_False_resize: signed(25 downto 0);
  signal c_16_3_0_False_shift: signed(25 downto 0);
  signal c_16_1_7_False_resize: signed(25 downto 0);
  signal c_16_1_7_False_shift: signed(25 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_resize: signed(25 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_12_0_False_resize: signed(25 downto 0);
  signal c_18_12_0_False_shift: signed(25 downto 0);
  signal c_18_2_2_False_resize: signed(25 downto 0);
  signal c_18_2_2_False_shift: signed(25 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_resize: signed(25 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_1_1_False_resize: signed(25 downto 0);
  signal c_20_1_1_False_shift: signed(25 downto 0);
  signal c_20_8_0_False_resize: signed(25 downto 0);
  signal c_20_8_0_False_shift: signed(25 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_resize: signed(25 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 14
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_14);
    end if;
  end process;
  -- output node 1 with id 15
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_15);
    end if;
  end process;
  -- output node 2 with id 17
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_17);
    end if;
  end process;
  -- output node 3 with id 19
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_19);
    end if;
  end process;
  -- output node 4 with id 21
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_21);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[7], [9], [7]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
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
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  c_1 <= c_1_oshift(19 downto 0);
  -- node of type 'sub' in stage 2 with id 2 and associated fundamentals [[110], [142], [110]]
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 16,
      w_o => 24,
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
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(23 downto 0);
  -- node of type 'add' in stage 2 with id 3 and associated fundamentals [[35], [45], [35]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
      w_o => 22,
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
      y_i => c_1,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(21 downto 0);
  -- node of type 'add' in stage 1 with id 4 and associated fundamentals [[65], [65], [65]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 23,
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(22 downto 0);
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[110], [32], [220]]
  c_5_2_1_False_resize <= c_2;
  c_5_2_1_False_shift <= shift_left(c_5_2_1_False_resize, 1);
  c_5_0_5_False_resize <= resize(c_0, 24);
  c_5_0_5_False_shift <= shift_left(c_5_0_5_False_resize, 5);
  c_5_2_0_False_resize <= c_2;
  c_5_2_0_False_shift <= shift_left(c_5_2_0_False_resize, 0);
  with config_select_3 select c_5_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_5_sel select c_5 <=
    c_5_2_1_False_shift when "00",
    c_5_0_5_False_shift when "01",
    c_5_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 6 and associated fundamentals [[410], [488], [740]]
  with config_select_4 select c_6_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
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
      sub_i => c_6_sub_sel,
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(25 downto 0);
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[224], [288], [35]]
  c_7_1_5_False_resize <= resize(c_1, 25);
  c_7_1_5_False_shift <= shift_left(c_7_1_5_False_resize, 5);
  c_7_3_0_False_resize <= resize(c_3, 25);
  c_7_3_0_False_shift <= shift_left(c_7_3_0_False_resize, 0);
  with config_select_3 select c_7_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_1_5_False_shift when "0",
    c_7_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 8 and associated fundamentals [[383], [641], [5]]
  with config_select_4 select c_8_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
      w_o => 26,
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
      sub_i => c_8_sub_sel,
      x_i => c_7,
      y_i => c_4,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(25 downto 0);
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[16], [16], [110]]
  c_9_0_4_False_resize <= resize(c_0, 23);
  c_9_0_4_False_shift <= shift_left(c_9_0_4_False_resize, 4);
  c_9_2_0_False_resize <= c_2(22 downto 0);
  c_9_2_0_False_shift <= shift_left(c_9_2_0_False_resize, 0);
  with config_select_3 select c_9_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_0_4_False_shift when "0",
    c_9_2_0_False_shift when others;
  -- node of type 'mux' in stage 2 with id 10 and associated fundamentals [[7], [65], [7]]
  c_10_4_0_False_resize <= c_4;
  c_10_4_0_False_shift <= shift_left(c_10_4_0_False_resize, 0);
  c_10_1_0_False_resize <= resize(c_1, 23);
  c_10_1_0_False_shift <= shift_left(c_10_1_0_False_resize, 0);
  with config_select_2 select c_10_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_10_sel select c_10 <=
    c_10_4_0_False_shift when "0",
    c_10_1_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 11 and associated fundamentals [[9], [-49], [117]]
  with config_select_4 select c_11_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 23,
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
      sub_i => c_11_sub_sel,
      x_i => c_9,
      y_i => c_10,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(22 downto 0);
  -- node of type 'add_sub' in stage 5 with id 12 and associated fundamentals [[137], [457], [1001]]
  with config_select_5 select c_12_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 26,
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
      sub_i => c_12_sub_sel,
      x_i => c_4,
      y_i => c_11,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(25 downto 0);
  -- node of type 'mux' in stage 6 with id 13 and associated fundamentals [[383], [457], [440]]
  c_13_12_0_False_resize <= c_12(24 downto 0);
  c_13_12_0_False_shift <= shift_left(c_13_12_0_False_resize, 0);
  c_13_2_2_False_resize <= resize(c_2, 25);
  c_13_2_2_False_shift <= shift_left(c_13_2_2_False_resize, 2);
  c_13_8_0_False_resize <= c_8(24 downto 0);
  c_13_8_0_False_shift <= shift_left(c_13_8_0_False_resize, 0);
  with config_select_6 select c_13_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_13_sel select c_13 <=
    c_13_12_0_False_shift when "00",
    c_13_2_2_False_shift when "01",
    c_13_8_0_False_shift when others;
  -- node of type 'output' in stage 6 with id 14 and associated fundamentals [[383], [457], [440]]
  c_14_resize <= c_13;
  c_14 <= shift_left(c_14_resize, 0);
  -- node of type 'output' in stage 4 with id 15 and associated fundamentals [[410], [488], [740]]
  c_15_resize <= c_6;
  c_15 <= shift_left(c_15_resize, 0);
  -- node of type 'mux' in stage 5 with id 16 and associated fundamentals [[820], [45], [896]]
  c_16_6_1_False_resize <= c_6;
  c_16_6_1_False_shift <= shift_left(c_16_6_1_False_resize, 1);
  c_16_3_0_False_resize <= resize(c_3, 26);
  c_16_3_0_False_shift <= shift_left(c_16_3_0_False_resize, 0);
  c_16_1_7_False_resize <= resize(c_1, 26);
  c_16_1_7_False_shift <= shift_left(c_16_1_7_False_resize, 7);
  with config_select_5 select c_16_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_16_sel select c_16 <=
    c_16_6_1_False_shift when "00",
    c_16_3_0_False_shift when "01",
    c_16_1_7_False_shift when others;
  -- node of type 'output' in stage 5 with id 17 and associated fundamentals [[820], [45], [896]]
  c_17_resize <= c_16;
  c_17 <= shift_left(c_17_resize, 0);
  -- node of type 'mux' in stage 6 with id 18 and associated fundamentals [[137], [568], [1001]]
  c_18_12_0_False_resize <= c_12;
  c_18_12_0_False_shift <= shift_left(c_18_12_0_False_resize, 0);
  c_18_2_2_False_resize <= resize(c_2, 26);
  c_18_2_2_False_shift <= shift_left(c_18_2_2_False_resize, 2);
  with config_select_6 select c_18_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_18_sel select c_18 <=
    c_18_12_0_False_shift when "0",
    c_18_2_2_False_shift when others;
  -- node of type 'output' in stage 6 with id 19 and associated fundamentals [[137], [568], [1001]]
  c_19_resize <= c_18;
  c_19 <= shift_left(c_19_resize, 0);
  -- node of type 'mux' in stage 5 with id 20 and associated fundamentals [[14], [641], [5]]
  c_20_1_1_False_resize <= resize(c_1, 26);
  c_20_1_1_False_shift <= shift_left(c_20_1_1_False_resize, 1);
  c_20_8_0_False_resize <= c_8;
  c_20_8_0_False_shift <= shift_left(c_20_8_0_False_resize, 0);
  with config_select_5 select c_20_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_20_sel select c_20 <=
    c_20_1_1_False_shift when "0",
    c_20_8_0_False_shift when others;
  -- node of type 'output' in stage 5 with id 21 and associated fundamentals [[14], [641], [5]]
  c_21_resize <= c_20;
  c_21 <= shift_left(c_21_resize, 0);
end architecture;
