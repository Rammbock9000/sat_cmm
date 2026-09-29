library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    x_1: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    clk: in std_logic
);
end entity;
architecture const_mul of const_mul is
  signal config_select_0: std_logic_vector(0 downto 0);
  signal config_select_1: std_logic_vector(0 downto 0);
  signal config_select_2: std_logic_vector(0 downto 0);
  signal config_select_3: std_logic_vector(0 downto 0);
  signal config_select_4: std_logic_vector(0 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(19 downto 0);
  signal c_2_1_4_False_resize: signed(19 downto 0);
  signal c_2_1_4_False_shift: signed(19 downto 0);
  signal c_2_0_0_False_resize: signed(19 downto 0);
  signal c_2_0_0_False_shift: signed(19 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(23 downto 0);
  signal c_3_i0_resize: signed(23 downto 0);
  signal c_3_i1_resize: signed(23 downto 0);
  signal c_3_i0_shift: signed(23 downto 0);
  signal c_3_i1_shift: signed(23 downto 0);
  signal c_3_arith: signed(23 downto 0);
  signal c_3_oshift: signed(23 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(19 downto 0);
  signal c_4_0_4_False_resize: signed(19 downto 0);
  signal c_4_0_4_False_shift: signed(19 downto 0);
  signal c_4_1_0_False_resize: signed(19 downto 0);
  signal c_4_1_0_False_shift: signed(19 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(23 downto 0);
  signal c_5_i0_resize: signed(23 downto 0);
  signal c_5_i1_resize: signed(23 downto 0);
  signal c_5_i0_shift: signed(23 downto 0);
  signal c_5_i1_shift: signed(23 downto 0);
  signal c_5_arith: signed(23 downto 0);
  signal c_5_oshift: signed(23 downto 0);
  signal c_6: signed(23 downto 0);
  signal c_6_resize: signed(23 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_resize: signed(23 downto 0);
begin
  config_select_0 <= config_select;
  process(clk)
  begin
    if rising_edge(clk) then
      config_select_1 <= config_select;
      config_select_2 <= config_select;
      config_select_3 <= config_select;
      config_select_4 <= config_select;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- input node 1 with id 1
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= signed(x_1);
    end if;
  end process;
  -- output node 0 with id 6
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_6);
    end if;
  end process;
  -- output node 1 with id 7
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_7);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1, 0], [0, 16]]
  c_2_1_4_False_resize <= resize(c_1, 20);
  c_2_1_4_False_shift <= shift_left(c_2_1_4_False_resize, 4);
  c_2_0_0_False_resize <= resize(c_0, 20);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "0" when "1",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_1_4_False_shift when "0",
    c_2_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[129, 0], [128, -16]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 20,
      w_o => 24,
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
      sub_i => c_3_sub_sel,
      x_i => c_0,
      y_i => c_2,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(23 downto 0);
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[0, 1], [16, 0]]
  c_4_0_4_False_resize <= resize(c_0, 20);
  c_4_0_4_False_shift <= shift_left(c_4_0_4_False_resize, 4);
  c_4_1_0_False_resize <= resize(c_1, 20);
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  with config_select_1 select c_4_sel <= 
    "0" when "1",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_0_4_False_shift when "0",
    c_4_1_0_False_shift when others;
  -- node of type 'add' in stage 2 with id 5 and associated fundamentals [[0, 129], [16, 128]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 16,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 7,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_4,
      y_i => c_1,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(23 downto 0);
  -- node of type 'output' in stage 2 with id 6 and associated fundamentals [[129, 0], [128, -16]]
  c_6_resize <= c_3;
  c_6 <= shift_left(c_6_resize, 0);
  -- node of type 'output' in stage 2 with id 7 and associated fundamentals [[0, 129], [16, 128]]
  c_7_resize <= c_5;
  c_7 <= shift_left(c_7_resize, 0);
end architecture;
