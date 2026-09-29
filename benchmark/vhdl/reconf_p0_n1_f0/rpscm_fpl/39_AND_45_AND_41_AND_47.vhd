library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(21 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(16 downto 0);
  signal c_1_0_0_False_resize: signed(16 downto 0);
  signal c_1_0_0_False_shift: signed(16 downto 0);
  signal c_1_0_1_False_resize: signed(16 downto 0);
  signal c_1_0_1_False_shift: signed(16 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(19 downto 0);
  signal c_2_i0_resize: signed(19 downto 0);
  signal c_2_i1_resize: signed(19 downto 0);
  signal c_2_i0_shift: signed(19 downto 0);
  signal c_2_i1_shift: signed(19 downto 0);
  signal c_2_arith: signed(19 downto 0);
  signal c_2_oshift: signed(19 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(19 downto 0);
  signal c_3_0_4_False_resize: signed(19 downto 0);
  signal c_3_0_4_False_shift: signed(19 downto 0);
  signal c_3_2_0_False_resize: signed(19 downto 0);
  signal c_3_2_0_False_shift: signed(19 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(21 downto 0);
  signal c_4_i0_resize: signed(21 downto 0);
  signal c_4_i1_resize: signed(21 downto 0);
  signal c_4_i0_shift: signed(21 downto 0);
  signal c_4_i1_shift: signed(21 downto 0);
  signal c_4_arith: signed(21 downto 0);
  signal c_4_oshift: signed(21 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_5_resize: signed(21 downto 0);
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
  -- output node 0 with id 5
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_5);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [2], [1], [2]]
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "0",
    c_1_0_1_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 2 and associated fundamentals [[7], [15], [9], [15]]
  with config_select_2 select c_2_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 17,
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
      sub_i => c_2_sub_sel,
      x_i => c_1,
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(19 downto 0);
  -- node of type 'mux' in stage 3 with id 3 and associated fundamentals [[16], [15], [16], [16]]
  c_3_0_4_False_resize <= resize(c_0, 20);
  c_3_0_4_False_shift <= shift_left(c_3_0_4_False_resize, 4);
  c_3_2_0_False_resize <= c_2;
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  with config_select_3 select c_3_sel <= 
    "0" when "10",
    "0" when "11",
    "0" when "00",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_0_4_False_shift when "0",
    c_3_2_0_False_shift when others;
  -- node of type 'add' in stage 4 with id 4 and associated fundamentals [[39], [45], [41], [47]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
      w_o => 22,
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
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(21 downto 0);
  -- node of type 'output' in stage 4 with id 5 and associated fundamentals [[39], [45], [41], [47]]
  c_5_resize <= c_4;
  c_5 <= shift_left(c_5_resize, 0);
end architecture;
