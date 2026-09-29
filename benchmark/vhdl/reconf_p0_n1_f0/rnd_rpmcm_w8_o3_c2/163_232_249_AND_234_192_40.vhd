library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(23 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_0_3_False_resize: signed(18 downto 0);
  signal c_1_0_3_False_shift: signed(18 downto 0);
  signal c_1_0_0_False_resize: signed(18 downto 0);
  signal c_1_0_0_False_shift: signed(18 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(21 downto 0);
  signal c_2_i0_resize: signed(21 downto 0);
  signal c_2_i1_resize: signed(21 downto 0);
  signal c_2_i0_shift: signed(21 downto 0);
  signal c_2_i1_shift: signed(21 downto 0);
  signal c_2_arith: signed(21 downto 0);
  signal c_2_oshift: signed(21 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(17 downto 0);
  signal c_4_i0_resize: signed(17 downto 0);
  signal c_4_i1_resize: signed(17 downto 0);
  signal c_4_i0_shift: signed(17 downto 0);
  signal c_4_i1_shift: signed(17 downto 0);
  signal c_4_arith: signed(17 downto 0);
  signal c_4_oshift: signed(17 downto 0);
  signal c_5: signed(23 downto 0);
  signal c_5_i0_resize: signed(23 downto 0);
  signal c_5_i1_resize: signed(23 downto 0);
  signal c_5_i0_shift: signed(23 downto 0);
  signal c_5_i1_shift: signed(23 downto 0);
  signal c_5_arith: signed(23 downto 0);
  signal c_5_oshift: signed(23 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(23 downto 0);
  signal c_6_i0_resize: signed(23 downto 0);
  signal c_6_i1_resize: signed(23 downto 0);
  signal c_6_i0_shift: signed(23 downto 0);
  signal c_6_i1_shift: signed(23 downto 0);
  signal c_6_arith: signed(23 downto 0);
  signal c_6_oshift: signed(23 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_resize: signed(23 downto 0);
  signal c_8: signed(20 downto 0);
  signal c_8_3_0_False_resize: signed(20 downto 0);
  signal c_8_3_0_False_shift: signed(20 downto 0);
  signal c_8_4_3_False_resize: signed(20 downto 0);
  signal c_8_4_3_False_shift: signed(20 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_resize: signed(23 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_6_0_False_resize: signed(23 downto 0);
  signal c_10_6_0_False_shift: signed(23 downto 0);
  signal c_10_2_0_False_resize: signed(23 downto 0);
  signal c_10_2_0_False_shift: signed(23 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_resize: signed(23 downto 0);
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
  -- output node 0 with id 7
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_7);
    end if;
  end process;
  -- output node 1 with id 9
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_9);
    end if;
  end process;
  -- output node 2 with id 11
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_11);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [8]]
  c_1_0_3_False_resize <= resize(c_0, 19);
  c_1_0_3_False_shift <= shift_left(c_1_0_3_False_resize, 3);
  c_1_0_0_False_resize <= resize(c_0, 19);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  with config_select_1 select c_1_sel <= 
    "0" when "1",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_3_False_shift when "0",
    c_1_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 2 and associated fundamentals [[31], [40]]
  with config_select_2 select c_2_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 19,
      w_o => 22,
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
      sub_i => c_2_sub_sel,
      x_i => c_0,
      y_i => c_1,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(21 downto 0);
  -- node of type 'add_sub' in stage 3 with id 3 and associated fundamentals [[29], [42]]
  with config_select_3 select c_3_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 16,
      w_o => 22,
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
      sub_i => c_3_sub_sel,
      x_i => c_2,
      y_i => c_0,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(21 downto 0);
  -- node of type 'sub' in stage 1 with id 4 and associated fundamentals [[3], [3]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 18,
      s_x_i => 2,
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
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(17 downto 0);
  -- node of type 'add_sub' in stage 4 with id 5 and associated fundamentals [[163], [234]]
  with config_select_4 select c_5_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 22,
      w_o => 24,
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
      sub_i => c_5_sub_sel,
      x_i => c_4,
      y_i => c_3,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(23 downto 0);
  -- node of type 'add' in stage 3 with id 6 and associated fundamentals [[249], [321]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 22,
      w_o => 24,
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
      x_i => c_0,
      y_i => c_2,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(23 downto 0);
  -- node of type 'output' in stage 4 with id 7 and associated fundamentals [[163], [234]]
  c_7_resize <= c_5;
  c_7 <= shift_left(c_7_resize, 0);
  -- node of type 'mux' in stage 4 with id 8 and associated fundamentals [[29], [24]]
  c_8_3_0_False_resize <= c_3(20 downto 0);
  c_8_3_0_False_shift <= shift_left(c_8_3_0_False_resize, 0);
  c_8_4_3_False_resize <= resize(c_4, 21);
  c_8_4_3_False_shift <= shift_left(c_8_4_3_False_resize, 3);
  with config_select_4 select c_8_sel <= 
    "0" when "0",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_3_0_False_shift when "0",
    c_8_4_3_False_shift when others;
  -- node of type 'output' in stage 4 with id 9 and associated fundamentals [[232], [192]]
  c_9_resize <= resize(c_8, 24);
  c_9 <= shift_left(c_9_resize, 3);
  -- node of type 'mux' in stage 4 with id 10 and associated fundamentals [[249], [40]]
  c_10_6_0_False_resize <= c_6;
  c_10_6_0_False_shift <= shift_left(c_10_6_0_False_resize, 0);
  c_10_2_0_False_resize <= resize(c_2, 24);
  c_10_2_0_False_shift <= shift_left(c_10_2_0_False_resize, 0);
  with config_select_4 select c_10_sel <= 
    "0" when "0",
    "1" when others;
  with c_10_sel select c_10 <=
    c_10_6_0_False_shift when "0",
    c_10_2_0_False_shift when others;
  -- node of type 'output' in stage 4 with id 11 and associated fundamentals [[249], [40]]
  c_11_resize <= c_10;
  c_11 <= shift_left(c_11_resize, 0);
end architecture;
