library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(24 downto 0);
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
  signal c_0: signed(16 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_0_3_False_resize: signed(19 downto 0);
  signal c_1_0_3_False_shift: signed(19 downto 0);
  signal c_1_0_1_False_resize: signed(19 downto 0);
  signal c_1_0_1_False_shift: signed(19 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(20 downto 0);
  signal c_2_i0_resize: signed(21 downto 0);
  signal c_2_i1_resize: signed(21 downto 0);
  signal c_2_i0_shift: signed(21 downto 0);
  signal c_2_i1_shift: signed(21 downto 0);
  signal c_2_arith: signed(21 downto 0);
  signal c_2_oshift: signed(20 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_4: signed(21 downto 0);
  signal c_4_0_3_False_resize: signed(21 downto 0);
  signal c_4_0_3_False_shift: signed(21 downto 0);
  signal c_4_3_0_False_resize: signed(21 downto 0);
  signal c_4_3_0_False_shift: signed(21 downto 0);
  signal c_4_3_2_False_resize: signed(21 downto 0);
  signal c_4_3_2_False_shift: signed(21 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(25 downto 0);
  signal c_5_i0_resize: signed(25 downto 0);
  signal c_5_i1_resize: signed(25 downto 0);
  signal c_5_i0_shift: signed(25 downto 0);
  signal c_5_i1_shift: signed(25 downto 0);
  signal c_5_arith: signed(25 downto 0);
  signal c_5_oshift: signed(25 downto 0);
  signal c_6: signed(25 downto 0);
  signal c_6_resize: signed(25 downto 0);
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
      c_0 <= signed(x_0 & "0");
    end if;
  end process;
  -- output node 0 with id 6
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_6(25 downto 1));
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[4], [16], [16]]
  c_1_0_3_False_resize <= resize(c_0, 20);
  c_1_0_3_False_shift <= shift_left(c_1_0_3_False_resize, 3);
  c_1_0_1_False_resize <= resize(c_0, 20);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_3_False_shift when "0",
    c_1_0_1_False_shift when others;
  -- node of type 'sub' in stage 2 with id 2 and associated fundamentals [[-30], [-24], [-24]]
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 17,
      w_o => 21,
      s_x_i => 0,
      s_y_i => 5,
      s_o => 1,
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
  c_2 <= c_2_oshift(20 downto 0);
  -- node of type 'add' in stage 3 with id 3 and associated fundamentals [[-14], [-11], [-11]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 21,
      w_o => 20,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 1,
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
  c_3 <= c_3_oshift(19 downto 0);
  -- node of type 'mux' in stage 4 with id 4 and associated fundamentals [[-14], [-44], [16]]
  c_4_0_3_False_resize <= resize(c_0, 22);
  c_4_0_3_False_shift <= shift_left(c_4_0_3_False_resize, 3);
  c_4_3_0_False_resize <= resize(c_3, 22);
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  c_4_3_2_False_resize <= resize(c_3, 22);
  c_4_3_2_False_shift <= shift_left(c_4_3_2_False_resize, 2);
  with config_select_4 select c_4_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_4_sel select c_4 <=
    c_4_0_3_False_shift when "00",
    c_4_3_0_False_shift when "01",
    c_4_3_2_False_shift when others;
  -- node of type 'sub' in stage 5 with id 5 and associated fundamentals [[946], [724], [784]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 21,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_4,
      y_i => c_2,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(25 downto 0);
  -- node of type 'output' in stage 5 with id 6 and associated fundamentals [[946], [724], [784]]
  c_6_resize <= c_5;
  c_6 <= shift_left(c_6_resize, 0);
end architecture;
