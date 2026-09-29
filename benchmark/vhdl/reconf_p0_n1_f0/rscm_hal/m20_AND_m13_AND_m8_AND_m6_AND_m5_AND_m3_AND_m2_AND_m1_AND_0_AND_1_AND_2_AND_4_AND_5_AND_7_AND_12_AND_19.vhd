library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(3 downto 0);
    y_0: out std_logic_vector(20 downto 0);
    clk: in std_logic
);
end entity;
architecture const_mul of const_mul is
  signal config_select_0: std_logic_vector(3 downto 0);
  signal config_select_1: std_logic_vector(3 downto 0);
  signal config_select_2: std_logic_vector(3 downto 0);
  signal config_select_3: std_logic_vector(3 downto 0);
  signal config_select_4: std_logic_vector(3 downto 0);
  signal config_select_5: std_logic_vector(3 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_0_2_False_resize: signed(18 downto 0);
  signal c_1_0_2_False_shift: signed(18 downto 0);
  signal c_1_0_3_False_resize: signed(18 downto 0);
  signal c_1_0_3_False_shift: signed(18 downto 0);
  signal c_1_0_0_False_resize: signed(18 downto 0);
  signal c_1_0_0_False_shift: signed(18 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(16 downto 0);
  signal c_2_0_0_False_resize: signed(16 downto 0);
  signal c_2_0_0_False_shift: signed(16 downto 0);
  signal c_2_0_1_False_resize: signed(16 downto 0);
  signal c_2_0_1_False_shift: signed(16 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(20 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(17 downto 0);
  signal c_4_0_0_False_resize: signed(17 downto 0);
  signal c_4_0_0_False_shift: signed(17 downto 0);
  signal c_4_0_2_False_resize: signed(17 downto 0);
  signal c_4_0_2_False_shift: signed(17 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(20 downto 0);
  signal c_5_i0_resize: signed(20 downto 0);
  signal c_5_i1_resize: signed(20 downto 0);
  signal c_5_i0_shift: signed(20 downto 0);
  signal c_5_i1_shift: signed(20 downto 0);
  signal c_5_arith: signed(20 downto 0);
  signal c_5_oshift: signed(20 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(20 downto 0);
  signal c_6_resize: signed(20 downto 0);
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
  -- output node 0 with id 6
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_6);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[4], [8], [4], [1], [4], [1], [1], [4], [4], [1], [1], [8], [1], [8], [4], [8]]
  c_1_0_2_False_resize <= resize(c_0, 19);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  c_1_0_3_False_resize <= resize(c_0, 19);
  c_1_0_3_False_shift <= shift_left(c_1_0_3_False_resize, 3);
  c_1_0_0_False_resize <= resize(c_0, 19);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  with config_select_1 select c_1_sel <= 
    "00" when "1110",
    "00" when "0100",
    "00" when "0111",
    "00" when "0000",
    "00" when "0010",
    "00" when "1000",
    "01" when "1111",
    "01" when "1101",
    "01" when "1011",
    "01" when "0001",
    "10" when "0011",
    "10" when "1010",
    "10" when "0110",
    "10" when "1001",
    "10" when "1100",
    "10" when others;
  with c_1_sel select c_1 <=
    c_1_0_2_False_shift when "00",
    c_1_0_3_False_shift when "01",
    c_1_0_0_False_shift when others;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[2], [1], [1], [1], [1], [1], [1], [2], [1], [1], [1], [2], [1], [2], [2], [1]]
  c_2_0_0_False_resize <= resize(c_0, 17);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_1_False_resize <= resize(c_0, 17);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  with config_select_1 select c_2_sel <= 
    "0" when "0001",
    "0" when "0100",
    "0" when "0011",
    "0" when "1010",
    "0" when "0110",
    "0" when "1001",
    "0" when "1111",
    "0" when "1100",
    "0" when "0010",
    "0" when "1000",
    "0" when "0101",
    "1" when "1011",
    "1" when "0111",
    "1" when "1110",
    "1" when "0000",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_0_0_False_shift when "0",
    c_2_0_1_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[16], [12], [4], [-2], [4], [-2], [-2], [0], [4], [-2], [6], [8], [6], [8], [16], [20]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "0000",
    '1' when "0001",
    '1' when "0010",
    '1' when "0011",
    '1' when "0100",
    '1' when "0101",
    '1' when "0110",
    '1' when "0111",
    '1' when "1000",
    '1' when "1001",
    '0' when "1010",
    '1' when "1011",
    '0' when "1100",
    '1' when "1101",
    '0' when "1110",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 17,
      w_o => 21,
      s_x_i => 1,
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
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(20 downto 0);
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[4], [1], [4], [4], [1], [1], [4], [1], [4], [1], [4], [4], [1], [1], [4], [1]]
  c_4_0_0_False_resize <= resize(c_0, 18);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_2_False_resize <= resize(c_0, 18);
  c_4_0_2_False_shift <= shift_left(c_4_0_2_False_resize, 2);
  with config_select_1 select c_4_sel <= 
    "0" when "0001",
    "0" when "0100",
    "0" when "0111",
    "0" when "1101",
    "0" when "1001",
    "0" when "1111",
    "0" when "1100",
    "0" when "0101",
    "1" when "1011",
    "1" when "1110",
    "1" when "1010",
    "1" when "0011",
    "1" when "0000",
    "1" when "0110",
    "1" when "0010",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_0_0_False_shift when "0",
    c_4_0_2_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[20], [13], [8], [6], [5], [3], [2], [1], [0], [-1], [-2], [-4], [-5], [-7], [-12], [-19]]
  with config_select_3 select c_5_sub_sel <= 
    '0' when "0000",
    '0' when "0001",
    '0' when "0010",
    '1' when "0011",
    '0' when "0100",
    '1' when "0101",
    '0' when "0110",
    '0' when "0111",
    '1' when "1000",
    '0' when "1001",
    '1' when "1010",
    '1' when "1011",
    '1' when "1100",
    '1' when "1101",
    '1' when "1110",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 21,
      w_o => 21,
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
      sub_i => c_5_sub_sel,
      x_i => c_4,
      y_i => c_3,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(20 downto 0);
  -- node of type 'output' in stage 3 with id 6 and associated fundamentals [[-20], [-13], [-8], [-6], [-5], [-3], [-2], [-1], [0], [1], [2], [4], [5], [7], [12], [19]]
  c_6_resize <= c_5;
  c_6 <= -shift_left(c_6_resize, 0);
end architecture;
