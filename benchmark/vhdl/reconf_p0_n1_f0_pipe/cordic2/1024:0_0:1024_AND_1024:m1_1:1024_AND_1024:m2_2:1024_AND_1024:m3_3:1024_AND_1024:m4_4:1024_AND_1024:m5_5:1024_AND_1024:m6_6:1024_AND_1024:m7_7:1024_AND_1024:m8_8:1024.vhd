library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    x_1: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(3 downto 0);
    y_0: out std_logic_vector(26 downto 0);
    y_1: out std_logic_vector(26 downto 0);
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
  signal c_1: signed(15 downto 0);
  signal c_2: signed(17 downto 0);
  signal c_2_1_0_False_resize: signed(17 downto 0);
  signal c_2_1_0_False_shift: signed(17 downto 0);
  signal c_2_1_1_False_resize: signed(17 downto 0);
  signal c_2_1_1_False_shift: signed(17 downto 0);
  signal c_2_1_2_False_resize: signed(17 downto 0);
  signal c_2_1_2_False_shift: signed(17 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(15 downto 0);
  signal c_4: signed(26 downto 0);
  signal c_4_i0_resize: signed(26 downto 0);
  signal c_4_i1_resize: signed(26 downto 0);
  signal c_4_i0_shift: signed(26 downto 0);
  signal c_4_i1_shift: signed(26 downto 0);
  signal c_4_arith: signed(26 downto 0);
  signal c_4_oshift: signed(26 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(17 downto 0);
  signal c_5_1_2_False_resize: signed(17 downto 0);
  signal c_5_1_2_False_shift: signed(17 downto 0);
  signal c_5_1_0_False_resize: signed(17 downto 0);
  signal c_5_1_0_False_shift: signed(17 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(17 downto 0);
  signal c_7: signed(26 downto 0);
  signal c_7_i0_resize: signed(26 downto 0);
  signal c_7_i1_resize: signed(26 downto 0);
  signal c_7_i0_shift: signed(26 downto 0);
  signal c_7_i1_shift: signed(26 downto 0);
  signal c_7_arith: signed(26 downto 0);
  signal c_7_oshift: signed(26 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(17 downto 0);
  signal c_8_0_0_False_resize: signed(17 downto 0);
  signal c_8_0_0_False_shift: signed(17 downto 0);
  signal c_8_0_1_False_resize: signed(17 downto 0);
  signal c_8_0_1_False_shift: signed(17 downto 0);
  signal c_8_0_2_False_resize: signed(17 downto 0);
  signal c_8_0_2_False_shift: signed(17 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(15 downto 0);
  signal c_10: signed(26 downto 0);
  signal c_10_i0_resize: signed(26 downto 0);
  signal c_10_i1_resize: signed(26 downto 0);
  signal c_10_i0_shift: signed(26 downto 0);
  signal c_10_i1_shift: signed(26 downto 0);
  signal c_10_arith: signed(26 downto 0);
  signal c_10_oshift: signed(26 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(17 downto 0);
  signal c_11_0_0_False_resize: signed(17 downto 0);
  signal c_11_0_0_False_shift: signed(17 downto 0);
  signal c_11_0_2_False_resize: signed(17 downto 0);
  signal c_11_0_2_False_shift: signed(17 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(17 downto 0);
  signal c_13: signed(26 downto 0);
  signal c_13_i0_resize: signed(26 downto 0);
  signal c_13_i1_resize: signed(26 downto 0);
  signal c_13_i0_shift: signed(26 downto 0);
  signal c_13_i1_shift: signed(26 downto 0);
  signal c_13_arith: signed(26 downto 0);
  signal c_13_oshift: signed(26 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(26 downto 0);
  signal c_14_resize: signed(26 downto 0);
  signal c_15: signed(26 downto 0);
  signal c_15_resize: signed(26 downto 0);
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
  -- output node 0 with id 14
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_14);
    end if;
  end process;
  -- output node 1 with id 15
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_15);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[0, 2], [0, 1], [0, 1], [0, 1], [0, 4], [0, 2], [0, 1], [0, 4], [0, 2]]
  c_2_1_0_False_resize <= resize(c_1, 18);
  c_2_1_0_False_shift <= shift_left(c_2_1_0_False_resize, 0);
  c_2_1_1_False_resize <= resize(c_1, 18);
  c_2_1_1_False_shift <= shift_left(c_2_1_1_False_resize, 1);
  c_2_1_2_False_resize <= resize(c_1, 18);
  c_2_1_2_False_shift <= shift_left(c_2_1_2_False_resize, 2);
  with config_select_1 select c_2_sel <= 
    "00" when "0110",
    "00" when "0010",
    "00" when "0001",
    "00" when "0011",
    "01" when "0000",
    "01" when "0101",
    "01" when "1000",
    "10" when "0100",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_1_0_False_shift;
        when "01" => c_2 <= c_2_1_1_False_shift;
        when others => c_2 <= c_2_1_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 3 and associated fundamentals [[1, 0], [1, 0], [1, 0], [1, 0], [1, 0], [1, 0], [1, 0], [1, 0], [1, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 4 and associated fundamentals [[1024, -4], [1024, -2], [1024, 2], [1024, -2], [1024, -8], [1024, -4], [1024, -2], [1024, -8], [1024, -4]]
  with config_select_2 select c_4_sub_sel <= 
    '1' when "0000",
    '1' when "0001",
    '0' when "0010",
    '1' when "0011",
    '1' when "0100",
    '1' when "0101",
    '1' when "0110",
    '1' when "0111",
    '1' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 18,
      w_o => 27,
      s_x_i => 10,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_4_sub_sel,
      x_i => c_3,
      y_i => c_2,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[0, 4], [0, 1], [0, 4], [0, 1], [0, 4], [0, 1], [0, 4], [0, 1], [0, 4]]
  c_5_1_2_False_resize <= resize(c_1, 18);
  c_5_1_2_False_shift <= shift_left(c_5_1_2_False_resize, 2);
  c_5_1_0_False_resize <= resize(c_1, 18);
  c_5_1_0_False_shift <= shift_left(c_5_1_0_False_resize, 0);
  with config_select_1 select c_5_sel <= 
    "0" when "1000",
    "0" when "0100",
    "0" when "0000",
    "0" when "0110",
    "0" when "0010",
    "1" when "0101",
    "1" when "0001",
    "1" when "0111",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_1_2_False_shift;
        when others => c_5 <= c_5_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[0, 4], [0, 1], [0, 4], [0, 1], [0, 4], [0, 1], [0, 4], [0, 1], [0, 4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_5 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 7 and associated fundamentals [[1024, 0], [1024, -1], [1024, -2], [1024, -3], [1024, -4], [1024, -5], [1024, -6], [1024, -7], [1024, -8]]
  with config_select_3 select c_7_sub_sel <= 
    '0' when "0000",
    '0' when "0001",
    '1' when "0010",
    '1' when "0011",
    '0' when "0100",
    '1' when "0101",
    '1' when "0110",
    '0' when "0111",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 18,
      w_o => 27,
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
      sub_i => c_7_sub_sel,
      x_i => c_4,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[2, 0], [1, 0], [1, 0], [1, 0], [4, 0], [2, 0], [1, 0], [4, 0], [2, 0]]
  c_8_0_0_False_resize <= resize(c_0, 18);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  c_8_0_1_False_resize <= resize(c_0, 18);
  c_8_0_1_False_shift <= shift_left(c_8_0_1_False_resize, 1);
  c_8_0_2_False_resize <= resize(c_0, 18);
  c_8_0_2_False_shift <= shift_left(c_8_0_2_False_resize, 2);
  with config_select_1 select c_8_sel <= 
    "00" when "0001",
    "00" when "0011",
    "00" when "0110",
    "00" when "0010",
    "01" when "0000",
    "01" when "0101",
    "01" when "1000",
    "10" when "0100",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "00" => c_8 <= c_8_0_0_False_shift;
        when "01" => c_8 <= c_8_0_1_False_shift;
        when others => c_8 <= c_8_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 9 and associated fundamentals [[0, 1], [0, 1], [0, 1], [0, 1], [0, 1], [0, 1], [0, 1], [0, 1], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_1 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 10 and associated fundamentals [[4, 1024], [2, 1024], [-2, 1024], [2, 1024], [8, 1024], [4, 1024], [2, 1024], [8, 1024], [4, 1024]]
  with config_select_2 select c_10_sub_sel <= 
    '0' when "0000",
    '0' when "0001",
    '1' when "0010",
    '0' when "0011",
    '0' when "0100",
    '0' when "0101",
    '0' when "0110",
    '0' when "0111",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 18,
      w_o => 27,
      s_x_i => 10,
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
      y_i => c_8,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 11 and associated fundamentals [[4, 0], [1, 0], [4, 0], [1, 0], [4, 0], [1, 0], [4, 0], [1, 0], [4, 0]]
  c_11_0_0_False_resize <= resize(c_0, 18);
  c_11_0_0_False_shift <= shift_left(c_11_0_0_False_resize, 0);
  c_11_0_2_False_resize <= resize(c_0, 18);
  c_11_0_2_False_shift <= shift_left(c_11_0_2_False_resize, 2);
  with config_select_1 select c_11_sel <= 
    "0" when "0001",
    "0" when "0111",
    "0" when "0011",
    "0" when "0101",
    "1" when "0100",
    "1" when "0000",
    "1" when "0110",
    "1" when "0010",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_0_0_False_shift;
        when others => c_11 <= c_11_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 12 and associated fundamentals [[4, 0], [1, 0], [4, 0], [1, 0], [4, 0], [1, 0], [4, 0], [1, 0], [4, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 13 and associated fundamentals [[0, 1024], [1, 1024], [2, 1024], [3, 1024], [4, 1024], [5, 1024], [6, 1024], [7, 1024], [8, 1024]]
  with config_select_3 select c_13_sub_sel <= 
    '1' when "0000",
    '1' when "0001",
    '0' when "0010",
    '0' when "0011",
    '1' when "0100",
    '0' when "0101",
    '0' when "0110",
    '1' when "0111",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 18,
      w_o => 27,
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
      sub_i => c_13_sub_sel,
      x_i => c_10,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 3 with id 14 and associated fundamentals [[1024, 0], [1024, -1], [1024, -2], [1024, -3], [1024, -4], [1024, -5], [1024, -6], [1024, -7], [1024, -8]]
  c_14_resize <= c_7;
  c_14 <= shift_left(c_14_resize, 0);
  -- node of type 'output' in stage 3 with id 15 and associated fundamentals [[0, 1024], [1, 1024], [2, 1024], [3, 1024], [4, 1024], [5, 1024], [6, 1024], [7, 1024], [8, 1024]]
  c_15_resize <= c_13;
  c_15 <= shift_left(c_15_resize, 0);
end architecture;
