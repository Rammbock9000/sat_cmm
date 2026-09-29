library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(26 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(22 downto 0);
  signal c_1_i0_resize: signed(22 downto 0);
  signal c_1_i1_resize: signed(22 downto 0);
  signal c_1_i0_shift: signed(22 downto 0);
  signal c_1_i1_shift: signed(22 downto 0);
  signal c_1_arith: signed(22 downto 0);
  signal c_1_oshift: signed(22 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(15 downto 0);
  signal c_3: signed(25 downto 0);
  signal c_3_1_0_False_resize: signed(25 downto 0);
  signal c_3_1_0_False_shift: signed(25 downto 0);
  signal c_3_2_10_False_resize: signed(25 downto 0);
  signal c_3_2_10_False_shift: signed(25 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(22 downto 0);
  signal c_5: signed(26 downto 0);
  signal c_5_i0_resize: signed(26 downto 0);
  signal c_5_i1_resize: signed(26 downto 0);
  signal c_5_i0_shift: signed(26 downto 0);
  signal c_5_i1_shift: signed(26 downto 0);
  signal c_5_arith: signed(26 downto 0);
  signal c_5_oshift: signed(26 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(15 downto 0);
  signal c_7: signed(15 downto 0);
  signal c_8: signed(26 downto 0);
  signal c_8_i0_resize: signed(26 downto 0);
  signal c_8_i1_resize: signed(26 downto 0);
  signal c_8_i0_shift: signed(26 downto 0);
  signal c_8_i1_shift: signed(26 downto 0);
  signal c_8_arith: signed(26 downto 0);
  signal c_8_oshift: signed(26 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(21 downto 0);
  signal c_9_1_0_False_resize: signed(21 downto 0);
  signal c_9_1_0_False_shift: signed(21 downto 0);
  signal c_9_2_5_False_resize: signed(21 downto 0);
  signal c_9_2_5_False_shift: signed(21 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(21 downto 0);
  signal c_11: signed(21 downto 0);
  signal c_12: signed(26 downto 0);
  signal c_12_i0_resize: signed(26 downto 0);
  signal c_12_i1_resize: signed(26 downto 0);
  signal c_12_i0_shift: signed(26 downto 0);
  signal c_12_i1_shift: signed(26 downto 0);
  signal c_12_arith: signed(26 downto 0);
  signal c_12_oshift: signed(26 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(26 downto 0);
  signal c_13_resize: signed(26 downto 0);
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
      config_select_6 <= config_select_5;
      config_select_7 <= config_select_6;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 13
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_13);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[-63], [65], [-63]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 6,
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
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[1024], [65], [-63]]
  c_3_1_0_False_resize <= resize(c_1, 26);
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  c_3_2_10_False_resize <= resize(c_2, 26);
  c_3_2_10_False_shift <= shift_left(c_3_2_10_False_resize, 10);
  with config_select_2 select c_3_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_1_0_False_shift;
        when others => c_3 <= c_3_2_10_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[-63], [65], [-63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_1 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[-2032], [975], [-1071]]
  with config_select_3 select c_5_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 26,
      w_o => 27,
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
      sub_i => c_5_sub_sel,
      x_i => c_4,
      y_i => c_3,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 7 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_6 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 8 and associated fundamentals [[2040], [983], [1079]]
  with config_select_4 select c_8_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 27,
      w_o => 27,
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
      sub_i => c_8_sub_sel,
      x_i => c_7,
      y_i => c_5,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 9 and associated fundamentals [[32], [32], [-63]]
  c_9_1_0_False_resize <= c_1(21 downto 0);
  c_9_1_0_False_shift <= shift_left(c_9_1_0_False_resize, 0);
  c_9_2_5_False_resize <= resize(c_2, 22);
  c_9_2_5_False_shift <= shift_left(c_9_2_5_False_resize, 5);
  with config_select_2 select c_9_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_1_0_False_shift;
        when others => c_9 <= c_9_2_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[32], [32], [-63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[32], [32], [-63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 12 and associated fundamentals [[1912], [1111], [1331]]
  with config_select_5 select c_12_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 22,
      w_o => 27,
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
      sub_i => c_12_sub_sel,
      x_i => c_8,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 13 and associated fundamentals [[1912], [1111], [1331]]
  c_13_resize <= c_12;
  c_13 <= shift_left(c_13_resize, 0);
end architecture;
