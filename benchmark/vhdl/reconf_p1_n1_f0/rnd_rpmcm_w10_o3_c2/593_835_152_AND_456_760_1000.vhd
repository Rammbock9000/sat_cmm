library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(25 downto 0);
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
  signal c_1: signed(17 downto 0);
  signal c_1_i0_resize: signed(17 downto 0);
  signal c_1_i1_resize: signed(17 downto 0);
  signal c_1_i0_shift: signed(17 downto 0);
  signal c_1_i1_shift: signed(17 downto 0);
  signal c_1_arith: signed(17 downto 0);
  signal c_1_oshift: signed(17 downto 0);
  signal c_2: signed(16 downto 0);
  signal c_2_0_0_False_resize: signed(16 downto 0);
  signal c_2_0_0_False_shift: signed(16 downto 0);
  signal c_2_0_1_False_resize: signed(16 downto 0);
  signal c_2_0_1_False_shift: signed(16 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(25 downto 0);
  signal c_3_i0_resize: signed(25 downto 0);
  signal c_3_i1_resize: signed(25 downto 0);
  signal c_3_i0_shift: signed(25 downto 0);
  signal c_3_i1_shift: signed(25 downto 0);
  signal c_3_arith: signed(25 downto 0);
  signal c_3_oshift: signed(25 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(20 downto 0);
  signal c_4_1_3_False_resize: signed(20 downto 0);
  signal c_4_1_3_False_shift: signed(20 downto 0);
  signal c_4_1_0_False_resize: signed(20 downto 0);
  signal c_4_1_0_False_shift: signed(20 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(25 downto 0);
  signal c_5_i0_resize: signed(25 downto 0);
  signal c_5_i1_resize: signed(25 downto 0);
  signal c_5_i0_shift: signed(25 downto 0);
  signal c_5_i1_shift: signed(25 downto 0);
  signal c_5_arith: signed(25 downto 0);
  signal c_5_oshift: signed(25 downto 0);
  signal c_6: signed(23 downto 0);
  signal c_6_0_8_False_resize: signed(23 downto 0);
  signal c_6_0_8_False_shift: signed(23 downto 0);
  signal c_6_0_0_False_resize: signed(23 downto 0);
  signal c_6_0_0_False_shift: signed(23 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(27 downto 0);
  signal c_7_i0_resize: signed(27 downto 0);
  signal c_7_i1_resize: signed(27 downto 0);
  signal c_7_i0_shift: signed(27 downto 0);
  signal c_7_i1_shift: signed(27 downto 0);
  signal c_7_arith: signed(27 downto 0);
  signal c_7_oshift: signed(27 downto 0);
  signal c_8: signed(25 downto 0);
  signal c_8_i0_resize: signed(27 downto 0);
  signal c_8_i1_resize: signed(27 downto 0);
  signal c_8_i0_shift: signed(27 downto 0);
  signal c_8_i1_shift: signed(27 downto 0);
  signal c_8_arith: signed(27 downto 0);
  signal c_8_oshift: signed(25 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(18 downto 0);
  signal c_9_0_3_False_resize: signed(18 downto 0);
  signal c_9_0_3_False_shift: signed(18 downto 0);
  signal c_9_0_0_False_resize: signed(18 downto 0);
  signal c_9_0_0_False_shift: signed(18 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_i0_resize: signed(23 downto 0);
  signal c_10_i1_resize: signed(23 downto 0);
  signal c_10_i0_shift: signed(23 downto 0);
  signal c_10_i1_shift: signed(23 downto 0);
  signal c_10_arith: signed(23 downto 0);
  signal c_10_oshift: signed(23 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(25 downto 0);
  signal c_11_resize: signed(25 downto 0);
  signal c_12: signed(25 downto 0);
  signal c_12_resize: signed(25 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_14: signed(25 downto 0);
  signal c_14_resize: signed(25 downto 0);
begin
  config_select_0 <= config_select;
  process(clk)
  begin
    if rising_edge(clk) then
      config_select_1 <= config_select_0;
      config_select_2 <= config_select_1;
      config_select_3 <= config_select_2;
      config_select_4 <= config_select_3;
      config_select_5 <= config_select_4;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 11
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_11);
    end if;
  end process;
  -- output node 1 with id 12
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_12);
    end if;
  end process;
  -- output node 2 with id 14
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_14);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 1 and associated fundamentals [[3], [3]]
  inst_adder_node_1: entity work.adder_node
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
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(17 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[2], [1]]
  c_2_0_0_False_resize <= resize(c_0, 17);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_1_False_resize <= resize(c_0, 17);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  with config_select_1 select c_2_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[832], [736]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 17,
      w_o => 26,
      s_x_i => 8,
      s_y_i => 5,
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
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[3], [24]]
  c_4_1_3_False_resize <= resize(c_1, 21);
  c_4_1_3_False_shift <= shift_left(c_4_1_3_False_resize, 3);
  c_4_1_0_False_resize <= resize(c_1, 21);
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  with config_select_2 select c_4_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_1_3_False_shift;
        when others => c_4 <= c_4_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 5 and associated fundamentals [[835], [760]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 21,
      w_o => 26,
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
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 6 and associated fundamentals [[1], [256]]
  c_6_0_8_False_resize <= resize(c_0, 24);
  c_6_0_8_False_shift <= shift_left(c_6_0_8_False_resize, 8);
  c_6_0_0_False_resize <= resize(c_0, 24);
  c_6_0_0_False_shift <= shift_left(c_6_0_0_False_resize, 0);
  with config_select_1 select c_6_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_0_8_False_shift;
        when others => c_6 <= c_6_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 7 and associated fundamentals [[1540], [2560]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 18,
      w_o => 28,
      s_x_i => 2,
      s_y_i => 9,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_6,
      y_i => c_1,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(27 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 8 and associated fundamentals [[593], [456]]
  with config_select_3 select c_8_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 26,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 2,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_8_sub_sel,
      x_i => c_7,
      y_i => c_3,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 9 and associated fundamentals [[1], [8]]
  c_9_0_3_False_resize <= resize(c_0, 19);
  c_9_0_3_False_shift <= shift_left(c_9_0_3_False_resize, 3);
  c_9_0_0_False_resize <= resize(c_0, 19);
  c_9_0_0_False_shift <= shift_left(c_9_0_0_False_resize, 0);
  with config_select_1 select c_9_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_0_3_False_shift;
        when others => c_9 <= c_9_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 10 and associated fundamentals [[38], [250]]
  with config_select_2 select c_10_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 18,
      w_o => 24,
      s_x_i => 5,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_10_sub_sel,
      x_i => c_9,
      y_i => c_1,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 3 with id 11 and associated fundamentals [[593], [456]]
  c_11_resize <= c_8;
  c_11 <= shift_left(c_11_resize, 0);
  -- node of type 'output' in stage 3 with id 12 and associated fundamentals [[835], [760]]
  c_12_resize <= c_5;
  c_12 <= shift_left(c_12_resize, 0);
  -- node of type 'register' in stage 3 with id 13 and associated fundamentals [[38], [250]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_10 & "";
    end if;
  end process;
  -- node of type 'output' in stage 3 with id 14 and associated fundamentals [[152], [1000]]
  c_14_resize <= resize(c_13, 26);
  c_14 <= shift_left(c_14_resize, 2);
end architecture;
