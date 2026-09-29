library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    x_1: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(16 downto 0);
    y_1: out std_logic_vector(16 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_2_0_0_False_resize: signed(15 downto 0);
  signal c_2_0_0_False_shift: signed(15 downto 0);
  signal c_2_1_0_False_resize: signed(15 downto 0);
  signal c_2_1_0_False_shift: signed(15 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(15 downto 0);
  signal c_4: signed(16 downto 0);
  signal c_4_i0_resize: signed(16 downto 0);
  signal c_4_i1_resize: signed(16 downto 0);
  signal c_4_i0_shift: signed(16 downto 0);
  signal c_4_i1_shift: signed(16 downto 0);
  signal c_4_arith: signed(16 downto 0);
  signal c_4_oshift: signed(16 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(15 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_7: signed(16 downto 0);
  signal c_7_i0_resize: signed(16 downto 0);
  signal c_7_i1_resize: signed(16 downto 0);
  signal c_7_i0_shift: signed(16 downto 0);
  signal c_7_i1_shift: signed(16 downto 0);
  signal c_7_arith: signed(16 downto 0);
  signal c_7_oshift: signed(16 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(15 downto 0);
  signal c_9: signed(16 downto 0);
  signal c_9_4_0_False_resize: signed(16 downto 0);
  signal c_9_4_0_False_shift: signed(16 downto 0);
  signal c_9_8_1_False_resize: signed(16 downto 0);
  signal c_9_8_1_False_shift: signed(16 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(15 downto 0);
  signal c_11: signed(16 downto 0);
  signal c_11_i0_resize: signed(16 downto 0);
  signal c_11_i1_resize: signed(16 downto 0);
  signal c_11_i0_shift: signed(16 downto 0);
  signal c_11_i1_shift: signed(16 downto 0);
  signal c_11_arith: signed(16 downto 0);
  signal c_11_oshift: signed(16 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(16 downto 0);
  signal c_13: signed(16 downto 0);
  signal c_13_resize: signed(16 downto 0);
  signal c_14: signed(16 downto 0);
  signal c_14_resize: signed(16 downto 0);
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
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[0, 1], [1, 0], [0, 1], [1, 0]]
  c_2_0_0_False_resize <= c_0;
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_1_0_False_resize <= c_1;
  c_2_1_0_False_shift <= shift_left(c_2_1_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "0" when "11",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 3 and associated fundamentals [[1, 0], [1, 0], [1, 0], [1, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 4 and associated fundamentals [[1, 1], [0, 0], [-1, 1], [0, 0]]
  with config_select_2 select c_4_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 17,
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
      sub_i => c_4_sub_sel,
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(16 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 5 and associated fundamentals [[0, 1], [0, 1], [0, 1], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[0, 1], [0, 1], [0, 1], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_5 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 7 and associated fundamentals [[1, 0], [0, -1], [-1, 0], [0, 1]]
  with config_select_3 select c_7_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 16,
      w_o => 17,
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
      c_7 <= c_7_oshift(16 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[1, 0], [1, 0], [1, 0], [1, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_3 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[1, 1], [2, 0], [-1, 1], [0, 0]]
  c_9_4_0_False_resize <= c_4;
  c_9_4_0_False_shift <= shift_left(c_9_4_0_False_resize, 0);
  c_9_8_1_False_resize <= resize(c_8, 17);
  c_9_8_1_False_shift <= shift_left(c_9_8_1_False_resize, 1);
  with config_select_3 select c_9_sel <= 
    "0" when "00",
    "0" when "10",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_4_0_False_shift;
        when others => c_9 <= c_9_8_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[1, 0], [1, 0], [1, 0], [1, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_8 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 11 and associated fundamentals [[0, -1], [-1, 0], [0, 1], [1, 0]]
  with config_select_4 select c_11_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 17,
      w_o => 17,
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
      sub_i => c_11_sub_sel,
      x_i => c_10,
      y_i => c_9,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(16 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[1, 0], [0, -1], [-1, 0], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_7 & "";
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 13 and associated fundamentals [[1, 0], [0, -1], [-1, 0], [0, 1]]
  c_13_resize <= c_12;
  c_13 <= shift_left(c_13_resize, 0);
  -- node of type 'output' in stage 4 with id 14 and associated fundamentals [[0, 1], [1, 0], [0, -1], [-1, 0]]
  c_14_resize <= c_11;
  c_14 <= -shift_left(c_14_resize, 0);
end architecture;
