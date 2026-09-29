library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(24 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(24 downto 0);
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
  signal c_1: signed(19 downto 0);
  signal c_1_i0_resize: signed(19 downto 0);
  signal c_1_i1_resize: signed(19 downto 0);
  signal c_1_i0_shift: signed(19 downto 0);
  signal c_1_i1_shift: signed(19 downto 0);
  signal c_1_arith: signed(19 downto 0);
  signal c_1_oshift: signed(19 downto 0);
  signal c_2: signed(19 downto 0);
  signal c_2_0_4_False_resize: signed(19 downto 0);
  signal c_2_0_4_False_shift: signed(19 downto 0);
  signal c_2_1_0_False_resize: signed(19 downto 0);
  signal c_2_1_0_False_shift: signed(19 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(24 downto 0);
  signal c_3_1_5_False_resize: signed(24 downto 0);
  signal c_3_1_5_False_shift: signed(24 downto 0);
  signal c_3_1_0_False_resize: signed(24 downto 0);
  signal c_3_1_0_False_shift: signed(24 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(24 downto 0);
  signal c_4_i0_resize: signed(24 downto 0);
  signal c_4_i1_resize: signed(24 downto 0);
  signal c_4_i0_shift: signed(24 downto 0);
  signal c_4_i1_shift: signed(24 downto 0);
  signal c_4_arith: signed(24 downto 0);
  signal c_4_oshift: signed(24 downto 0);
  signal c_5: signed(24 downto 0);
  signal c_5_i0_resize: signed(24 downto 0);
  signal c_5_i1_resize: signed(24 downto 0);
  signal c_5_i0_shift: signed(24 downto 0);
  signal c_5_i1_shift: signed(24 downto 0);
  signal c_5_arith: signed(24 downto 0);
  signal c_5_oshift: signed(24 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(24 downto 0);
  signal c_6_i0_resize: signed(24 downto 0);
  signal c_6_i1_resize: signed(24 downto 0);
  signal c_6_i0_shift: signed(24 downto 0);
  signal c_6_i1_shift: signed(24 downto 0);
  signal c_6_arith: signed(24 downto 0);
  signal c_6_oshift: signed(24 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_1_0_False_resize: signed(22 downto 0);
  signal c_7_1_0_False_shift: signed(22 downto 0);
  signal c_7_5_0_False_resize: signed(22 downto 0);
  signal c_7_5_0_False_shift: signed(22 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(24 downto 0);
  signal c_8_4_0_False_resize: signed(24 downto 0);
  signal c_8_4_0_False_shift: signed(24 downto 0);
  signal c_8_4_2_False_resize: signed(24 downto 0);
  signal c_8_4_2_False_shift: signed(24 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(24 downto 0);
  signal c_9_i0_resize: signed(24 downto 0);
  signal c_9_i1_resize: signed(24 downto 0);
  signal c_9_i0_shift: signed(24 downto 0);
  signal c_9_i1_shift: signed(24 downto 0);
  signal c_9_arith: signed(24 downto 0);
  signal c_9_oshift: signed(24 downto 0);
  signal c_10: signed(24 downto 0);
  signal c_10_resize: signed(24 downto 0);
  signal c_11: signed(25 downto 0);
  signal c_11_resize: signed(25 downto 0);
  signal c_12: signed(24 downto 0);
  signal c_12_resize: signed(24 downto 0);
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
  -- output node 0 with id 10
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_10);
    end if;
  end process;
  -- output node 1 with id 11
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_11);
    end if;
  end process;
  -- output node 2 with id 12
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_12);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 1 and associated fundamentals [[-15], [-15]]
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
      s_x_i => 0,
      s_y_i => 4,
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
      z_o => c_1_oshift
    );
  c_1 <= c_1_oshift(19 downto 0);
  -- node of type 'mux' in stage 2 with id 2 and associated fundamentals [[-15], [16]]
  c_2_0_4_False_resize <= resize(c_0, 20);
  c_2_0_4_False_shift <= shift_left(c_2_0_4_False_resize, 4);
  c_2_1_0_False_resize <= c_1;
  c_2_1_0_False_shift <= shift_left(c_2_1_0_False_resize, 0);
  with config_select_2 select c_2_sel <= 
    "0" when "1",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_0_4_False_shift when "0",
    c_2_1_0_False_shift when others;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[-480], [-15]]
  c_3_1_5_False_resize <= resize(c_1, 25);
  c_3_1_5_False_shift <= shift_left(c_3_1_5_False_resize, 5);
  c_3_1_0_False_resize <= resize(c_1, 25);
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  with config_select_2 select c_3_sel <= 
    "0" when "0",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_1_5_False_shift when "0",
    c_3_1_0_False_shift when others;
  -- node of type 'sub' in stage 3 with id 4 and associated fundamentals [[450], [47]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 25,
      w_o => 25,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(24 downto 0);
  -- node of type 'add_sub' in stage 4 with id 5 and associated fundamentals [[390], [107]]
  with config_select_4 select c_5_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 20,
      w_o => 25,
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
      sub_i => c_5_sub_sel,
      x_i => c_4,
      y_i => c_1,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(24 downto 0);
  -- node of type 'add' in stage 4 with id 6 and associated fundamentals [[454], [51]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 16,
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
      x_i => c_4,
      y_i => c_0,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(24 downto 0);
  -- node of type 'mux' in stage 5 with id 7 and associated fundamentals [[-15], [107]]
  c_7_1_0_False_resize <= resize(c_1, 23);
  c_7_1_0_False_shift <= shift_left(c_7_1_0_False_resize, 0);
  c_7_5_0_False_resize <= c_5(22 downto 0);
  c_7_5_0_False_shift <= shift_left(c_7_5_0_False_resize, 0);
  with config_select_5 select c_7_sel <= 
    "0" when "0",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_1_0_False_shift when "0",
    c_7_5_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 8 and associated fundamentals [[450], [188]]
  c_8_4_0_False_resize <= c_4;
  c_8_4_0_False_shift <= shift_left(c_8_4_0_False_resize, 0);
  c_8_4_2_False_resize <= c_4;
  c_8_4_2_False_shift <= shift_left(c_8_4_2_False_resize, 2);
  with config_select_4 select c_8_sel <= 
    "0" when "0",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_4_0_False_shift when "0",
    c_8_4_2_False_shift when others;
  -- node of type 'add' in stage 6 with id 9 and associated fundamentals [[435], [295]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 25,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(24 downto 0);
  -- node of type 'output' in stage 6 with id 10 and associated fundamentals [[435], [295]]
  c_10_resize <= c_9;
  c_10 <= shift_left(c_10_resize, 0);
  -- node of type 'output' in stage 4 with id 11 and associated fundamentals [[780], [214]]
  c_11_resize <= resize(c_5, 26);
  c_11 <= shift_left(c_11_resize, 1);
  -- node of type 'output' in stage 4 with id 12 and associated fundamentals [[454], [51]]
  c_12_resize <= c_6;
  c_12 <= shift_left(c_12_resize, 0);
end architecture;
