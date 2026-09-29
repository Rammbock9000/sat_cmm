library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    x_1: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(23 downto 0);
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
  signal c_1: signed(15 downto 0);
  signal c_2: signed(19 downto 0);
  signal c_2_i0_resize: signed(19 downto 0);
  signal c_2_i1_resize: signed(19 downto 0);
  signal c_2_i0_shift: signed(19 downto 0);
  signal c_2_i1_shift: signed(19 downto 0);
  signal c_2_arith: signed(19 downto 0);
  signal c_2_oshift: signed(19 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(20 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(20 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(23 downto 0);
  signal c_4_i0_resize: signed(23 downto 0);
  signal c_4_i1_resize: signed(23 downto 0);
  signal c_4_i0_shift: signed(23 downto 0);
  signal c_4_i1_shift: signed(23 downto 0);
  signal c_4_arith: signed(23 downto 0);
  signal c_4_oshift: signed(23 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(15 downto 0);
  signal c_6: signed(20 downto 0);
  signal c_6_i0_resize: signed(20 downto 0);
  signal c_6_i1_resize: signed(20 downto 0);
  signal c_6_i0_shift: signed(20 downto 0);
  signal c_6_i1_shift: signed(20 downto 0);
  signal c_6_arith: signed(20 downto 0);
  signal c_6_oshift: signed(20 downto 0);
  signal c_7: signed(15 downto 0);
  signal c_8: signed(15 downto 0);
  signal c_9: signed(20 downto 0);
  signal c_9_6_0_False_resize: signed(20 downto 0);
  signal c_9_6_0_False_shift: signed(20 downto 0);
  signal c_9_8_5_False_resize: signed(20 downto 0);
  signal c_9_8_5_False_shift: signed(20 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(19 downto 0);
  signal c_11: signed(19 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_i0_resize: signed(23 downto 0);
  signal c_12_i1_resize: signed(23 downto 0);
  signal c_12_i0_shift: signed(23 downto 0);
  signal c_12_i1_shift: signed(23 downto 0);
  signal c_12_arith: signed(23 downto 0);
  signal c_12_oshift: signed(23 downto 0);
  signal c_13: signed(20 downto 0);
  signal c_13_7_0_False_resize: signed(20 downto 0);
  signal c_13_7_0_False_shift: signed(20 downto 0);
  signal c_13_2_1_False_resize: signed(20 downto 0);
  signal c_13_2_1_False_shift: signed(20 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_i0_resize: signed(23 downto 0);
  signal c_14_i1_resize: signed(23 downto 0);
  signal c_14_i0_shift: signed(23 downto 0);
  signal c_14_i1_shift: signed(23 downto 0);
  signal c_14_arith: signed(23 downto 0);
  signal c_14_oshift: signed(23 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(23 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_resize: signed(23 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_resize: signed(23 downto 0);
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
  -- input node 1 with id 1
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= signed(x_1);
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
  -- node of type 'add_sub' in stage 1 with id 2 and associated fundamentals [[-1, 8], [-1, 8], [1, 8]]
  with config_select_1 select c_2_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_2: entity work.adder_node
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
      sub_i => c_2_sub_sel,
      x_i => c_1,
      y_i => c_0,
      z_o => c_2_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_2_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 3 and associated fundamentals [[16, 2], [16, -2], [16, -2]]
  with config_select_1 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 21,
      s_x_i => 4,
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
      x_i => c_0,
      y_i => c_1,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 4 and associated fundamentals [[-130, 0], [126, 0], [-126, 32]]
  with config_select_2 select c_4_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 21,
      w_o => 24,
      s_x_i => 1,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_4_sub_sel,
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 5 and associated fundamentals [[0, 1], [0, 1], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_1 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 6 and associated fundamentals [[16, 1], [16, -3], [16, -3]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 16,
      w_o => 21,
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
      x_i => c_3,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 7 and associated fundamentals [[1, 0], [1, 0], [1, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_0 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[1, 0], [1, 0], [1, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_7 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[16, 1], [32, 0], [16, -3]]
  c_9_6_0_False_resize <= c_6;
  c_9_6_0_False_shift <= shift_left(c_9_6_0_False_resize, 0);
  c_9_8_5_False_resize <= resize(c_8, 21);
  c_9_8_5_False_shift <= shift_left(c_9_8_5_False_resize, 5);
  with config_select_3 select c_9_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_6_0_False_shift;
        when others => c_9 <= c_9_8_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 10 and associated fundamentals [[-1, 8], [-1, 8], [1, 8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[-1, 8], [-1, 8], [1, 8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 12 and associated fundamentals [[0, 129], [16, 128], [32, 125]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 20,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_9,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 13 and associated fundamentals [[1, 0], [-2, 16], [1, 0]]
  c_13_7_0_False_resize <= resize(c_7, 21);
  c_13_7_0_False_shift <= shift_left(c_13_7_0_False_resize, 0);
  c_13_2_1_False_resize <= resize(c_2, 21);
  c_13_2_1_False_shift <= shift_left(c_13_2_1_False_resize, 1);
  with config_select_2 select c_13_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_7_0_False_shift;
        when others => c_13 <= c_13_2_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 14 and associated fundamentals [[-129, 0], [-128, 16], [-125, 32]]
  with config_select_3 select c_14_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 24,
      w_o => 24,
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
      sub_i => c_14_sub_sel,
      x_i => c_13,
      y_i => c_4,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[-129, 0], [-128, 16], [-125, 32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 16 and associated fundamentals [[129, 0], [128, -16], [125, -32]]
  c_16_resize <= c_15;
  c_16 <= -shift_left(c_16_resize, 0);
  -- node of type 'output' in stage 4 with id 17 and associated fundamentals [[0, 129], [16, 128], [32, 125]]
  c_17_resize <= c_12;
  c_17 <= shift_left(c_17_resize, 0);
end architecture;
