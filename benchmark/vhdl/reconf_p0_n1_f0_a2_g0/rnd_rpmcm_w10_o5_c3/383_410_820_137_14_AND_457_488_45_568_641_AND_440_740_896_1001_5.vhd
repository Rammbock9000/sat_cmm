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
  signal c_1: signed(25 downto 0);
  signal c_1_i0_resize: signed(25 downto 0);
  signal c_1_i1_resize: signed(25 downto 0);
  signal c_1_i0_shift: signed(25 downto 0);
  signal c_1_i1_shift: signed(25 downto 0);
  signal c_1_arith: signed(25 downto 0);
  signal c_1_oshift: signed(25 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(25 downto 0);
  signal c_2_1_0_False_resize: signed(25 downto 0);
  signal c_2_1_0_False_shift: signed(25 downto 0);
  signal c_2_0_2_False_resize: signed(25 downto 0);
  signal c_2_0_2_False_shift: signed(25 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(25 downto 0);
  signal c_3_i0_resize: signed(25 downto 0);
  signal c_3_i1_resize: signed(25 downto 0);
  signal c_3_i0_shift: signed(25 downto 0);
  signal c_3_i1_shift: signed(25 downto 0);
  signal c_3_arith: signed(25 downto 0);
  signal c_3_oshift: signed(25 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(19 downto 0);
  signal c_4_i0_resize: signed(19 downto 0);
  signal c_4_i1_resize: signed(19 downto 0);
  signal c_4_i0_shift: signed(19 downto 0);
  signal c_4_i1_shift: signed(19 downto 0);
  signal c_4_arith: signed(19 downto 0);
  signal c_4_oshift: signed(19 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(18 downto 0);
  signal c_5_i0_resize: signed(18 downto 0);
  signal c_5_i1_resize: signed(18 downto 0);
  signal c_5_i0_shift: signed(18 downto 0);
  signal c_5_i1_shift: signed(18 downto 0);
  signal c_5_arith: signed(18 downto 0);
  signal c_5_oshift: signed(18 downto 0);
  signal c_6: signed(24 downto 0);
  signal c_6_i0_resize: signed(24 downto 0);
  signal c_6_i1_resize: signed(24 downto 0);
  signal c_6_i0_shift: signed(24 downto 0);
  signal c_6_i1_shift: signed(24 downto 0);
  signal c_6_arith: signed(24 downto 0);
  signal c_6_oshift: signed(24 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(21 downto 0);
  signal c_7_i0_resize: signed(21 downto 0);
  signal c_7_i1_resize: signed(21 downto 0);
  signal c_7_i0_shift: signed(21 downto 0);
  signal c_7_i1_shift: signed(21 downto 0);
  signal c_7_arith: signed(21 downto 0);
  signal c_7_oshift: signed(21 downto 0);
  signal c_8: signed(21 downto 0);
  signal c_8_7_0_False_resize: signed(21 downto 0);
  signal c_8_7_0_False_shift: signed(21 downto 0);
  signal c_8_4_2_False_resize: signed(21 downto 0);
  signal c_8_4_2_False_shift: signed(21 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(24 downto 0);
  signal c_9_6_0_False_resize: signed(24 downto 0);
  signal c_9_6_0_False_shift: signed(24 downto 0);
  signal c_9_0_3_False_resize: signed(24 downto 0);
  signal c_9_0_3_False_shift: signed(24 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(25 downto 0);
  signal c_10_i0_resize: signed(25 downto 0);
  signal c_10_i1_resize: signed(25 downto 0);
  signal c_10_i0_shift: signed(25 downto 0);
  signal c_10_i1_shift: signed(25 downto 0);
  signal c_10_arith: signed(25 downto 0);
  signal c_10_oshift: signed(25 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(24 downto 0);
  signal c_11_i0_resize: signed(24 downto 0);
  signal c_11_i1_resize: signed(24 downto 0);
  signal c_11_i0_shift: signed(24 downto 0);
  signal c_11_i1_shift: signed(24 downto 0);
  signal c_11_arith: signed(24 downto 0);
  signal c_11_oshift: signed(24 downto 0);
  signal c_12: signed(25 downto 0);
  signal c_12_11_0_False_resize: signed(25 downto 0);
  signal c_12_11_0_False_shift: signed(25 downto 0);
  signal c_12_1_1_False_resize: signed(25 downto 0);
  signal c_12_1_1_False_shift: signed(25 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(18 downto 0);
  signal c_13_5_0_False_resize: signed(18 downto 0);
  signal c_13_5_0_False_shift: signed(18 downto 0);
  signal c_13_0_3_False_resize: signed(18 downto 0);
  signal c_13_0_3_False_shift: signed(18 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(25 downto 0);
  signal c_14_i0_resize: signed(25 downto 0);
  signal c_14_i1_resize: signed(25 downto 0);
  signal c_14_i0_shift: signed(25 downto 0);
  signal c_14_i1_shift: signed(25 downto 0);
  signal c_14_arith: signed(25 downto 0);
  signal c_14_oshift: signed(25 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(24 downto 0);
  signal c_15_11_0_False_resize: signed(24 downto 0);
  signal c_15_11_0_False_shift: signed(24 downto 0);
  signal c_15_3_0_False_resize: signed(24 downto 0);
  signal c_15_3_0_False_shift: signed(24 downto 0);
  signal c_15_6_0_False_resize: signed(24 downto 0);
  signal c_15_6_0_False_shift: signed(24 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(24 downto 0);
  signal c_16_resize: signed(24 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_resize: signed(25 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_7_0_False_resize: signed(25 downto 0);
  signal c_18_7_0_False_shift: signed(25 downto 0);
  signal c_18_14_1_False_resize: signed(25 downto 0);
  signal c_18_14_1_False_shift: signed(25 downto 0);
  signal c_18_4_7_False_resize: signed(25 downto 0);
  signal c_18_4_7_False_shift: signed(25 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_resize: signed(25 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_resize: signed(25 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_3_0_False_resize: signed(25 downto 0);
  signal c_21_3_0_False_shift: signed(25 downto 0);
  signal c_21_5_1_False_resize: signed(25 downto 0);
  signal c_21_5_1_False_shift: signed(25 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_resize: signed(25 downto 0);
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
  -- output node 0 with id 16
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_16);
    end if;
  end process;
  -- output node 1 with id 17
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_17);
    end if;
  end process;
  -- output node 2 with id 19
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_19);
    end if;
  end process;
  -- output node 3 with id 20
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_20);
    end if;
  end process;
  -- output node 4 with id 22
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_22);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[384], [640], [384]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 26,
      s_x_i => 9,
      s_y_i => 7,
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
  c_1 <= c_1_oshift(25 downto 0);
  -- node of type 'mux' in stage 2 with id 2 and associated fundamentals [[384], [640], [4]]
  c_2_1_0_False_resize <= c_1;
  c_2_1_0_False_shift <= shift_left(c_2_1_0_False_resize, 0);
  c_2_0_2_False_resize <= resize(c_0, 26);
  c_2_0_2_False_shift <= shift_left(c_2_0_2_False_resize, 2);
  with config_select_2 select c_2_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_1_0_False_shift when "0",
    c_2_0_2_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 3 and associated fundamentals [[383], [641], [5]]
  with config_select_3 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 16,
      w_o => 26,
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
      sub_i => c_3_sub_sel,
      x_i => c_2,
      y_i => c_0,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(25 downto 0);
  -- node of type 'add_sub' in stage 1 with id 4 and associated fundamentals [[9], [9], [7]]
  with config_select_1 select c_4_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_4: entity work.adder_node
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
      sub_i => c_4_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(19 downto 0);
  -- node of type 'sub' in stage 1 with id 5 and associated fundamentals [[7], [7], [7]]
  inst_adder_node_5: entity work.adder_node
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
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(18 downto 0);
  -- node of type 'add_sub' in stage 2 with id 6 and associated fundamentals [[439], [457], [441]]
  with config_select_2 select c_6_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 20,
      w_o => 25,
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
      sub_i => c_6_sub_sel,
      x_i => c_5,
      y_i => c_4,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(24 downto 0);
  -- node of type 'add' in stage 2 with id 7 and associated fundamentals [[45], [45], [35]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
      w_o => 22,
      s_x_i => 2,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_4,
      y_i => c_4,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(21 downto 0);
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[36], [36], [35]]
  c_8_7_0_False_resize <= c_7;
  c_8_7_0_False_shift <= shift_left(c_8_7_0_False_resize, 0);
  c_8_4_2_False_resize <= resize(c_4, 22);
  c_8_4_2_False_shift <= shift_left(c_8_4_2_False_resize, 2);
  with config_select_3 select c_8_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_7_0_False_shift when "0",
    c_8_4_2_False_shift when others;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[439], [8], [441]]
  c_9_6_0_False_resize <= c_6;
  c_9_6_0_False_shift <= shift_left(c_9_6_0_False_resize, 0);
  c_9_0_3_False_resize <= resize(c_0, 25);
  c_9_0_3_False_shift <= shift_left(c_9_0_3_False_resize, 3);
  with config_select_3 select c_9_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_6_0_False_shift when "0",
    c_9_0_3_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 10 and associated fundamentals [[137], [568], [1001]]
  with config_select_4 select c_10_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 25,
      w_o => 26,
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
      sub_i => c_10_sub_sel,
      x_i => c_8,
      y_i => c_9,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(25 downto 0);
  -- node of type 'sub' in stage 3 with id 11 and associated fundamentals [[438], [456], [440]]
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 16,
      w_o => 25,
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
      x_i => c_6,
      y_i => c_0,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(24 downto 0);
  -- node of type 'mux' in stage 4 with id 12 and associated fundamentals [[438], [456], [768]]
  c_12_11_0_False_resize <= resize(c_11, 26);
  c_12_11_0_False_shift <= shift_left(c_12_11_0_False_resize, 0);
  c_12_1_1_False_resize <= c_1;
  c_12_1_1_False_shift <= shift_left(c_12_1_1_False_resize, 1);
  with config_select_4 select c_12_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_12_sel select c_12 <=
    c_12_11_0_False_shift when "0",
    c_12_1_1_False_shift when others;
  -- node of type 'mux' in stage 2 with id 13 and associated fundamentals [[7], [8], [7]]
  c_13_5_0_False_resize <= c_5;
  c_13_5_0_False_shift <= shift_left(c_13_5_0_False_resize, 0);
  c_13_0_3_False_resize <= resize(c_0, 19);
  c_13_0_3_False_shift <= shift_left(c_13_0_3_False_resize, 3);
  with config_select_2 select c_13_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_5_0_False_shift when "0",
    c_13_0_3_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 14 and associated fundamentals [[410], [488], [740]]
  with config_select_5 select c_14_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_14: entity work.adder_node
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
      sub_i => c_14_sub_sel,
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  c_14 <= c_14_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 15 and associated fundamentals [[383], [457], [440]]
  c_15_11_0_False_resize <= c_11;
  c_15_11_0_False_shift <= shift_left(c_15_11_0_False_resize, 0);
  c_15_3_0_False_resize <= c_3(24 downto 0);
  c_15_3_0_False_shift <= shift_left(c_15_3_0_False_resize, 0);
  c_15_6_0_False_resize <= c_6;
  c_15_6_0_False_shift <= shift_left(c_15_6_0_False_resize, 0);
  with config_select_4 select c_15_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_15_sel select c_15 <=
    c_15_11_0_False_shift when "00",
    c_15_3_0_False_shift when "01",
    c_15_6_0_False_shift when others;
  -- node of type 'output' in stage 4 with id 16 and associated fundamentals [[383], [457], [440]]
  c_16_resize <= c_15;
  c_16 <= shift_left(c_16_resize, 0);
  -- node of type 'output' in stage 5 with id 17 and associated fundamentals [[410], [488], [740]]
  c_17_resize <= c_14;
  c_17 <= shift_left(c_17_resize, 0);
  -- node of type 'mux' in stage 6 with id 18 and associated fundamentals [[820], [45], [896]]
  c_18_7_0_False_resize <= resize(c_7, 26);
  c_18_7_0_False_shift <= shift_left(c_18_7_0_False_resize, 0);
  c_18_14_1_False_resize <= c_14;
  c_18_14_1_False_shift <= shift_left(c_18_14_1_False_resize, 1);
  c_18_4_7_False_resize <= resize(c_4, 26);
  c_18_4_7_False_shift <= shift_left(c_18_4_7_False_resize, 7);
  with config_select_6 select c_18_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_18_sel select c_18 <=
    c_18_7_0_False_shift when "00",
    c_18_14_1_False_shift when "01",
    c_18_4_7_False_shift when others;
  -- node of type 'output' in stage 6 with id 19 and associated fundamentals [[820], [45], [896]]
  c_19_resize <= c_18;
  c_19 <= shift_left(c_19_resize, 0);
  -- node of type 'output' in stage 4 with id 20 and associated fundamentals [[137], [568], [1001]]
  c_20_resize <= c_10;
  c_20 <= shift_left(c_20_resize, 0);
  -- node of type 'mux' in stage 4 with id 21 and associated fundamentals [[14], [641], [5]]
  c_21_3_0_False_resize <= c_3;
  c_21_3_0_False_shift <= shift_left(c_21_3_0_False_resize, 0);
  c_21_5_1_False_resize <= resize(c_5, 26);
  c_21_5_1_False_shift <= shift_left(c_21_5_1_False_resize, 1);
  with config_select_4 select c_21_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_21_sel select c_21 <=
    c_21_3_0_False_shift when "0",
    c_21_5_1_False_shift when others;
  -- node of type 'output' in stage 4 with id 22 and associated fundamentals [[14], [641], [5]]
  c_22_resize <= c_21;
  c_22 <= shift_left(c_22_resize, 0);
end architecture;
