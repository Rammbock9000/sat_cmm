library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(30 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(23 downto 0);
  signal c_1_0_8_False_resize: signed(23 downto 0);
  signal c_1_0_8_False_shift: signed(23 downto 0);
  signal c_1_0_0_False_resize: signed(23 downto 0);
  signal c_1_0_0_False_shift: signed(23 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(17 downto 0);
  signal c_2_0_1_False_resize: signed(17 downto 0);
  signal c_2_0_1_False_shift: signed(17 downto 0);
  signal c_2_0_2_False_resize: signed(17 downto 0);
  signal c_2_0_2_False_shift: signed(17 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(18 downto 0);
  signal c_3_i0_resize: signed(18 downto 0);
  signal c_3_i1_resize: signed(18 downto 0);
  signal c_3_i0_shift: signed(18 downto 0);
  signal c_3_i1_shift: signed(18 downto 0);
  signal c_3_arith: signed(18 downto 0);
  signal c_3_oshift: signed(18 downto 0);
  signal c_4: signed(18 downto 0);
  signal c_4_3_0_False_resize: signed(18 downto 0);
  signal c_4_3_0_False_shift: signed(18 downto 0);
  signal c_4_0_3_False_resize: signed(18 downto 0);
  signal c_4_0_3_False_shift: signed(18 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(29 downto 0);
  signal c_5_i0_resize: signed(29 downto 0);
  signal c_5_i1_resize: signed(29 downto 0);
  signal c_5_i0_shift: signed(29 downto 0);
  signal c_5_i1_shift: signed(29 downto 0);
  signal c_5_arith: signed(29 downto 0);
  signal c_5_oshift: signed(29 downto 0);
  signal c_6: signed(30 downto 0);
  signal c_6_i0_resize: signed(30 downto 0);
  signal c_6_i1_resize: signed(30 downto 0);
  signal c_6_i0_shift: signed(30 downto 0);
  signal c_6_i1_shift: signed(30 downto 0);
  signal c_6_arith: signed(30 downto 0);
  signal c_6_oshift: signed(30 downto 0);
  signal c_7: signed(30 downto 0);
  signal c_7_resize: signed(30 downto 0);
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
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [256]]
  c_1_0_8_False_resize <= resize(c_0, 24);
  c_1_0_8_False_shift <= shift_left(c_1_0_8_False_resize, 8);
  c_1_0_0_False_resize <= resize(c_0, 24);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  with config_select_1 select c_1_sel <= 
    "0" when "1",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_8_False_shift when "0",
    c_1_0_0_False_shift when others;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[2], [4]]
  c_2_0_1_False_resize <= resize(c_0, 18);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  c_2_0_2_False_resize <= resize(c_0, 18);
  c_2_0_2_False_shift <= shift_left(c_2_0_2_False_resize, 2);
  with config_select_1 select c_2_sel <= 
    "0" when "0",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_0_1_False_shift when "0",
    c_2_0_2_False_shift when others;
  -- node of type 'add' in stage 2 with id 3 and associated fundamentals [[3], [5]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 18,
      w_o => 19,
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
      x_i => c_0,
      y_i => c_2,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(18 downto 0);
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[8], [5]]
  c_4_3_0_False_resize <= c_3;
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  c_4_0_3_False_resize <= resize(c_0, 19);
  c_4_0_3_False_shift <= shift_left(c_4_0_3_False_resize, 3);
  with config_select_3 select c_4_sel <= 
    "0" when "1",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_3_0_False_shift when "0",
    c_4_0_3_False_shift when others;
  -- node of type 'add' in stage 4 with id 5 and associated fundamentals [[6152], [10245]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 30,
      s_x_i => 11,
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
      y_i => c_4,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(29 downto 0);
  -- node of type 'add' in stage 5 with id 6 and associated fundamentals [[12305], [20746]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 30,
      w_o => 31,
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
      x_i => c_1,
      y_i => c_5,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(30 downto 0);
  -- node of type 'output' in stage 5 with id 7 and associated fundamentals [[12305], [20746]]
  c_7_resize <= c_6;
  c_7 <= shift_left(c_7_resize, 0);
end architecture;
