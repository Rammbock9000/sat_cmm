library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    x_1: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(3 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(25 downto 0);
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
  signal c_2: signed(16 downto 0);
  signal c_2_i0_resize: signed(16 downto 0);
  signal c_2_i1_resize: signed(16 downto 0);
  signal c_2_i0_shift: signed(16 downto 0);
  signal c_2_i1_shift: signed(16 downto 0);
  signal c_2_arith: signed(16 downto 0);
  signal c_2_oshift: signed(16 downto 0);
  signal c_3: signed(17 downto 0);
  signal c_3_1_0_False_resize: signed(17 downto 0);
  signal c_3_1_0_False_shift: signed(17 downto 0);
  signal c_3_1_1_False_resize: signed(17 downto 0);
  signal c_3_1_1_False_shift: signed(17 downto 0);
  signal c_3_1_2_False_resize: signed(17 downto 0);
  signal c_3_1_2_False_shift: signed(17 downto 0);
  signal c_3_sel: std_logic_vector(1 downto 0);
  signal c_4: signed(17 downto 0);
  signal c_4_1_2_False_resize: signed(17 downto 0);
  signal c_4_1_2_False_shift: signed(17 downto 0);
  signal c_4_1_0_False_resize: signed(17 downto 0);
  signal c_4_1_0_False_shift: signed(17 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(18 downto 0);
  signal c_5_i0_resize: signed(18 downto 0);
  signal c_5_i1_resize: signed(18 downto 0);
  signal c_5_i0_shift: signed(18 downto 0);
  signal c_5_i1_shift: signed(18 downto 0);
  signal c_5_arith: signed(18 downto 0);
  signal c_5_oshift: signed(18 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(15 downto 0);
  signal c_7: signed(17 downto 0);
  signal c_7_0_0_False_resize: signed(17 downto 0);
  signal c_7_0_0_False_shift: signed(17 downto 0);
  signal c_7_0_2_False_resize: signed(17 downto 0);
  signal c_7_0_2_False_shift: signed(17 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(25 downto 0);
  signal c_8_i0_resize: signed(25 downto 0);
  signal c_8_i1_resize: signed(25 downto 0);
  signal c_8_i0_shift: signed(25 downto 0);
  signal c_8_i1_shift: signed(25 downto 0);
  signal c_8_arith: signed(25 downto 0);
  signal c_8_oshift: signed(25 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(16 downto 0);
  signal c_10: signed(25 downto 0);
  signal c_10_i0_resize: signed(25 downto 0);
  signal c_10_i1_resize: signed(25 downto 0);
  signal c_10_i0_shift: signed(25 downto 0);
  signal c_10_i1_shift: signed(25 downto 0);
  signal c_10_arith: signed(25 downto 0);
  signal c_10_oshift: signed(25 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(18 downto 0);
  signal c_11_2_1_False_resize: signed(18 downto 0);
  signal c_11_2_1_False_shift: signed(18 downto 0);
  signal c_11_2_2_False_resize: signed(18 downto 0);
  signal c_11_2_2_False_shift: signed(18 downto 0);
  signal c_11_2_0_False_resize: signed(18 downto 0);
  signal c_11_2_0_False_shift: signed(18 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(25 downto 0);
  signal c_12_i0_resize: signed(25 downto 0);
  signal c_12_i1_resize: signed(25 downto 0);
  signal c_12_i0_shift: signed(25 downto 0);
  signal c_12_i1_shift: signed(25 downto 0);
  signal c_12_arith: signed(25 downto 0);
  signal c_12_oshift: signed(25 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(25 downto 0);
  signal c_13_resize: signed(25 downto 0);
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
  -- input node 1 with id 1
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= signed(x_1);
    end if;
  end process;
  -- output node 0 with id 13
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_13);
    end if;
  end process;
  -- output node 1 with id 14
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_14);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 2 and associated fundamentals [[-1, 0], [-1, 0], [-1, 0], [-1, 0], [-1, 0], [-1, 0], [-1, 0], [-1, 0], [-1, 0]]
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 17,
      s_x_i => 0,
      s_y_i => 1,
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
      z_o => c_2_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_2_oshift(16 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 3 and associated fundamentals [[0, 2], [0, 1], [0, 1], [0, 2], [0, 4], [0, 2], [0, 1], [0, 4], [0, 2]]
  c_3_1_0_False_resize <= resize(c_1, 18);
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  c_3_1_1_False_resize <= resize(c_1, 18);
  c_3_1_1_False_shift <= shift_left(c_3_1_1_False_resize, 1);
  c_3_1_2_False_resize <= resize(c_1, 18);
  c_3_1_2_False_shift <= shift_left(c_3_1_2_False_resize, 2);
  with config_select_1 select c_3_sel <= 
    "00" when "0110",
    "00" when "0010",
    "00" when "0001",
    "01" when "0011",
    "01" when "0000",
    "01" when "0101",
    "01" when "1000",
    "10" when "0100",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "00" => c_3 <= c_3_1_0_False_shift;
        when "01" => c_3 <= c_3_1_1_False_shift;
        when others => c_3 <= c_3_1_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[0, 4], [0, 1], [0, 4], [0, 1], [0, 4], [0, 1], [0, 4], [0, 1], [0, 4]]
  c_4_1_2_False_resize <= resize(c_1, 18);
  c_4_1_2_False_shift <= shift_left(c_4_1_2_False_resize, 2);
  c_4_1_0_False_resize <= resize(c_1, 18);
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  with config_select_1 select c_4_sel <= 
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
      case c_4_sel is
        when "0" => c_4 <= c_4_1_2_False_shift;
        when others => c_4 <= c_4_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 5 and associated fundamentals [[0, 0], [0, 1], [0, -2], [0, 3], [0, 4], [0, 5], [0, 6], [0, 7], [0, 8]]
  with config_select_2 select c_5_sub_sel <= 
    '1' when "0000",
    '1' when "0001",
    '1' when "0010",
    '1' when "0011",
    '1' when "0100",
    '0' when "0101",
    '0' when "0110",
    '1' when "0111",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
      w_o => 19,
      s_x_i => 1,
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
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 6 and associated fundamentals [[0, 1], [0, 1], [0, 1], [0, 1], [0, 1], [0, 1], [0, 1], [0, 1], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_1 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[4, 0], [1, 0], [4, 0], [1, 0], [4, 0], [1, 0], [4, 0], [1, 0], [4, 0]]
  c_7_0_0_False_resize <= resize(c_0, 18);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  c_7_0_2_False_resize <= resize(c_0, 18);
  c_7_0_2_False_shift <= shift_left(c_7_0_2_False_resize, 2);
  with config_select_1 select c_7_sel <= 
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
      case c_7_sel is
        when "0" => c_7 <= c_7_0_0_False_shift;
        when others => c_7 <= c_7_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 8 and associated fundamentals [[-4, 512], [-1, 512], [4, 512], [-1, 512], [-4, 512], [1, 512], [4, 512], [-1, 512], [4, 512]]
  with config_select_2 select c_8_sub_sel <= 
    '1' when "0000",
    '1' when "0001",
    '0' when "0010",
    '1' when "0011",
    '1' when "0100",
    '0' when "0101",
    '0' when "0110",
    '1' when "0111",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 18,
      w_o => 26,
      s_x_i => 9,
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
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 9 and associated fundamentals [[-1, 0], [-1, 0], [-1, 0], [-1, 0], [-1, 0], [-1, 0], [-1, 0], [-1, 0], [-1, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_2 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 10 and associated fundamentals [[-512, 0], [-512, 1], [-512, 2], [-512, 3], [-512, 4], [-512, 5], [-512, 6], [-512, 7], [-512, 8]]
  with config_select_3 select c_10_sub_sel <= 
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
      w_x_i => 17,
      w_y_i => 19,
      w_o => 26,
      s_x_i => 9,
      s_y_i => 0,
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
      y_i => c_5,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 11 and associated fundamentals [[-2, 0], [-1, 0], [-1, 0], [-2, 0], [-4, 0], [-2, 0], [-1, 0], [-4, 0], [-2, 0]]
  c_11_2_1_False_resize <= resize(c_2, 19);
  c_11_2_1_False_shift <= shift_left(c_11_2_1_False_resize, 1);
  c_11_2_2_False_resize <= resize(c_2, 19);
  c_11_2_2_False_shift <= shift_left(c_11_2_2_False_resize, 2);
  c_11_2_0_False_resize <= resize(c_2, 19);
  c_11_2_0_False_shift <= shift_left(c_11_2_0_False_resize, 0);
  with config_select_2 select c_11_sel <= 
    "00" when "0101",
    "00" when "1000",
    "00" when "0000",
    "00" when "0011",
    "01" when "0100",
    "01" when "0111",
    "10" when "0001",
    "10" when "0110",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_2_1_False_shift;
        when "01" => c_11 <= c_11_2_2_False_shift;
        when others => c_11 <= c_11_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 12 and associated fundamentals [[0, 512], [1, 512], [2, 512], [3, 512], [4, 512], [5, 512], [6, 512], [7, 512], [8, 512]]
  with config_select_3 select c_12_sub_sel <= 
    '1' when "0000",
    '1' when "0001",
    '0' when "0010",
    '1' when "0011",
    '1' when "0100",
    '1' when "0101",
    '1' when "0110",
    '1' when "0111",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 19,
      w_o => 26,
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
      sub_i => c_12_sub_sel,
      x_i => c_8,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 3 with id 13 and associated fundamentals [[512, 0], [512, -1], [512, -2], [512, -3], [512, -4], [512, -5], [512, -6], [512, -7], [512, -8]]
  c_13_resize <= c_10;
  c_13 <= -shift_left(c_13_resize, 0);
  -- node of type 'output' in stage 3 with id 14 and associated fundamentals [[0, 512], [1, 512], [2, 512], [3, 512], [4, 512], [5, 512], [6, 512], [7, 512], [8, 512]]
  c_14_resize <= c_12;
  c_14 <= shift_left(c_14_resize, 0);
end architecture;
